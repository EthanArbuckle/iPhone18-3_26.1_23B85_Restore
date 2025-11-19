uint64_t sub_1CF7E4514(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t, __int128 *, void *), uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v103 = a6;
  v104 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v96 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v96 - v23;
  v102 = sub_1CF9E6118();
  v101 = *(v102 - 8);
  v24 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v102);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v96 - v27;
  v113 = a8;
  v114 = a9;
  if (a2)
  {
    v29 = a1;
    v30 = a2;
    v31 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v32 = a2;

    sub_1CEFD09A0(a3);
    v33 = sub_1CF9E6108();
    v34 = sub_1CF9E72A8();

    if (os_log_type_enabled(v33, v34))
    {
      LODWORD(v99) = v34;
      v35 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&v107 = v98;
      *v35 = 136315650;
      v36 = sub_1CEFD11AC(a3);
      v38 = v37;
      sub_1CEFD0A98(a3);
      v39 = sub_1CEFD0DF0(v36, v38, &v107);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = swift_beginAccess();
      v42 = *(a4 + 32);
      v43 = *(a4 + 40);
      if (*(a4 + 41))
      {
        v44 = v42;
        v45 = NSFileProviderItemIdentifier.description.getter();
        v47 = v46;
        sub_1CEFD0994(v42, v43, 1);
      }

      else
      {
        *&v110 = *(a4 + 32);
        BYTE8(v110) = v43;
        v45 = VFSItemID.description.getter(v40, v41);
        v47 = v53;
      }

      v54 = sub_1CEFD0DF0(v45, v47, &v107);

      *(v35 + 14) = v54;
      *(v35 + 22) = 2112;
      swift_getErrorValue();
      v55 = Error.prettyDescription.getter(v105);
      *(v35 + 24) = v55;
      v56 = v97;
      *v97 = v55;
      _os_log_impl(&dword_1CEFC7000, v33, v99, "🥄 ❌ Failed force ingestion for %s with item ID %s. error: %@", v35, 0x20u);
      sub_1CEFCCC44(v56, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v56, -1, -1);
      v57 = v98;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v57, -1, -1);
      MEMORY[0x1D386CDC0](v35, -1, -1);
    }

    else
    {

      sub_1CEFD0A98(a3);
    }

    (*(v101 + 8))(v28, v102);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    v59 = v100;
    (*(*(v58 - 8) + 56))(v100, 1, 1, v58);
    sub_1CEFCCBDC(v29, &v107, &unk_1EC4C1B30, &qword_1CFA05300);
    v60 = v108;
    if (v108)
    {
      v61 = v109;
      v62 = __swift_project_boxed_opaque_existential_1(&v107, v108);
      *(&v111 + 1) = v60;
      v112 = *(v61 + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v110);
      (*(*(v60 - 8) + 16))(boxed_opaque_existential_0, v62, v60);
      __swift_destroy_boxed_opaque_existential_1(&v107);
    }

    else
    {
      sub_1CEFCCC44(&v107, &unk_1EC4C1B30, &qword_1CFA05300);
      v110 = 0u;
      v111 = 0u;
      v112 = 0;
    }

    v64 = a2;
    v104(v59, &v110, a2);

    sub_1CEFCCC44(v59, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v65 = &qword_1EC4C0700;
    v66 = &qword_1CFA05B10;
    v67 = &v110;
  }

  else
  {
    v100 = v26;
    sub_1CEFCCBDC(a1, &v107, &unk_1EC4C1B30, &qword_1CFA05300);
    if (v108)
    {
      sub_1CF054EA0(&v107, &v110);
      v48 = *(&v111 + 1);
      v49 = v112;
      v50 = __swift_project_boxed_opaque_existential_1(&v110, *(&v111 + 1));
      v51 = *(**(*(a7 + 16) + 32) + 240);
      v52 = *(v49 + 8);

      v51(&v113, 1, v50, v48, v52);

      v85 = *(&v111 + 1);
      v86 = v112;
      v87 = __swift_project_boxed_opaque_existential_1(&v110, *(&v111 + 1));
      v108 = v85;
      v109 = *(v86 + 8);
      v88 = __swift_allocate_boxed_opaque_existential_0(&v107);
      (*(*(v85 - 8) + 16))(v88, v87, v85);
      v104(v21, &v107, 0);
      sub_1CEFCCC44(v21, &qword_1EC4C1B40, &unk_1CF9FCB70);
      sub_1CEFCCC44(&v107, &qword_1EC4C0700, &qword_1CFA05B10);
      return __swift_destroy_boxed_opaque_existential_1(&v110);
    }

    sub_1CEFCCC44(&v107, &unk_1EC4C1B30, &qword_1CFA05300);
    v68 = fpfs_current_or_default_log();
    v69 = v100;
    sub_1CF9E6128();
    swift_retain_n();
    sub_1CEFD09A0(a3);
    v70 = sub_1CF9E6108();
    v71 = sub_1CF9E72A8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v106[0] = v99;
      *v72 = 136315394;
      v73 = sub_1CEFD11AC(a3);
      v75 = v74;
      sub_1CEFD0A98(a3);
      v76 = sub_1CEFD0DF0(v73, v75, v106);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2080;
      v77 = swift_beginAccess();
      v79 = *(a4 + 32);
      v80 = *(a4 + 40);
      if (*(a4 + 41))
      {
        v81 = v79;
        v82 = NSFileProviderItemIdentifier.description.getter();
        v84 = v83;
        sub_1CEFD0994(v79, v80, 1);
      }

      else
      {
        *&v110 = *(a4 + 32);
        BYTE8(v110) = v80;
        v82 = VFSItemID.description.getter(v77, v78);
        v84 = v90;
      }

      v91 = sub_1CEFD0DF0(v82, v84, v106);

      *(v72 + 14) = v91;
      _os_log_impl(&dword_1CEFC7000, v70, v71, "🥄 ❌ Failed force ingestion for %s with item ID %s. error: no connection", v72, 0x16u);
      v92 = v99;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v92, -1, -1);
      MEMORY[0x1D386CDC0](v72, -1, -1);

      (*(v101 + 8))(v100, v102);
    }

    else
    {

      sub_1CEFD0A98(a3);

      (*(v101 + 8))(v69, v102);
    }

    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    (*(*(v93 - 8) + 56))(v18, 1, 1, v93);
    sub_1CF24CD3C();
    v110 = 0u;
    v111 = 0u;
    v112 = 0;
    v94 = swift_allocError();
    *v95 = 4;
    *(v95 + 8) = 0u;
    *(v95 + 24) = 0u;
    *(v95 + 40) = 0;
    *(v95 + 48) = 9;
    v104(v18, &v110, v94);

    sub_1CEFCCC44(&v110, &qword_1EC4C0700, &qword_1CFA05B10);
    v65 = &qword_1EC4C1B40;
    v66 = &unk_1CF9FCB70;
    v67 = v18;
  }

  return sub_1CEFCCC44(v67, v65, v66);
}

void sub_1CF7E5024(void *a1, uint64_t a2, char *a3, void (*a4)(uint64_t a1), uint64_t a5, unint64_t a6)
{
  v191 = a3;
  v186 = a6;
  v187 = a4;
  v188 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v181 = &v173 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v182 = *(v11 - 8);
  v12 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v178 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v183 = (&v173 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v184 = &v173 - v16;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  v17 = *(*(v179 - 1) + 64);
  MEMORY[0x1EEE9AC00](v179);
  v180 = &v173 - v18;
  v190 = sub_1CF9E6118();
  v185 = *(v190 - 8);
  v19 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v21 = &v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v173 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v173 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v189 = a1;
  v30 = __swift_project_boxed_opaque_existential_1(a1, v29);
  v31 = v192;
  v32 = *(v191 + 2);
  sub_1CF554678(v32, 0, v30, v29, v28, &v199);
  if (!v31)
  {
    v176 = v12;
    v177 = v27;
    v33 = v24;
    v191 = v21;
    v192 = a2;
    v34 = v190;
    v35 = v189[3];
    v36 = v189[4];
    v37 = __swift_project_boxed_opaque_existential_1(v189, v35);
    v38 = v32[2];

    sub_1CF68DB40(&v199, v37, v35, v36, v198);
    v189 = v32;

    memcpy(v197, v198, sizeof(v197));
    if (sub_1CF08B99C(v197) == 1)
    {
      memcpy(v196, v198, sizeof(v196));
      sub_1CEFCCC44(v196, &unk_1EC4BFC20, &unk_1CFA0A290);
      v39 = v192;
LABEL_9:
      (v187)((*(v39 + 25) & 1) != 0, 0);
LABEL_10:
      sub_1CEFD0994(v199, v200, v201);
      return;
    }

    memcpy(v196, v198, sizeof(v196));
    v39 = v192;
    if (LOBYTE(v196[1]) == 255 || !v196[31] || v196[24] >> 60 == 11 || LOBYTE(v196[43]))
    {
      sub_1CEFCCC44(v196, &unk_1EC4BFC20, &unk_1CFA0A290);
      goto LABEL_9;
    }

    v40 = fpfs_current_or_default_log();
    v41 = v177;
    sub_1CF9E6128();
    v42 = v186;
    sub_1CEFD09A0(v186);
    sub_1CEFD09A0(v42);

    v43 = sub_1CF9E6108();
    LODWORD(v175) = sub_1CF9E7298();
    if (os_log_type_enabled(v43, v175))
    {
      v174 = v43;
      v44 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v193[0] = v173;
      v45 = v44;
      *v44 = 136315394;
      v46 = swift_beginAccess();
      v48 = *(v39 + 32);
      v49 = *(v39 + 40);
      if (*(v39 + 41))
      {
        v50 = v48;
        v51 = NSFileProviderItemIdentifier.description.getter();
        v53 = v52;
        v54 = v48;
        v55 = v51;
        sub_1CEFD0994(v54, v49, 1);
      }

      else
      {
        v194 = *(v39 + 32);
        v195 = v49;
        v55 = VFSItemID.description.getter(v46, v47);
        v53 = v57;
      }

      v56 = v33;
      v58 = sub_1CEFD0DF0(v55, v53, v193);

      v59 = v45;
      *(v45 + 1) = v58;
      *(v45 + 6) = 2080;
      v42 = v186;
      v60 = sub_1CEFD11AC(v186);
      v62 = v61;
      sub_1CEFD0A98(v42);
      sub_1CEFD0A98(v42);
      v63 = sub_1CEFD0DF0(v60, v62, v193);

      *(v45 + 14) = v63;
      v64 = v174;
      _os_log_impl(&dword_1CEFC7000, v174, v175, "🥄 Materializing datalessWClone item %s for %s", v45, 0x16u);
      v65 = v173;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v65, -1, -1);
      MEMORY[0x1D386CDC0](v59, -1, -1);

      v66 = v177;
      v177 = *(v185 + 8);
      v177(v66, v190);
    }

    else
    {
      sub_1CEFD0A98(v42);
      sub_1CEFD0A98(v42);

      v177 = *(v185 + 8);
      v177(v41, v34);
      v56 = v33;
    }

    v175 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
    v67 = swift_allocObject();
    v68 = v188;
    *(v67 + 16) = v187;
    *(v67 + 24) = v68;
    v187 = v67;

    v69 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFD09A0(v42);
    sub_1CEFD09A0(v42);

    v70 = sub_1CF9E6108();
    v71 = sub_1CF9E7298();
    if (os_log_type_enabled(v70, v71))
    {
      LODWORD(v188) = v71;
      v72 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v193[0] = v174;
      *v72 = 136315394;
      v73 = swift_beginAccess();
      v75 = *(v39 + 32);
      v76 = *(v39 + 40);
      if (*(v39 + 41))
      {
        v77 = v75;
        v78 = NSFileProviderItemIdentifier.description.getter();
        v80 = v79;
        v81 = v76;
        v82 = v78;
        sub_1CEFD0994(v75, v81, 1);
      }

      else
      {
        v194 = *(v39 + 32);
        v195 = v76;
        v82 = VFSItemID.description.getter(v73, v74);
        v80 = v83;
      }

      v84 = sub_1CEFD0DF0(v82, v80, v193);

      *(v72 + 4) = v84;
      *(v72 + 12) = 2080;
      v42 = v186;
      v85 = sub_1CEFD11AC(v186);
      v87 = v86;
      sub_1CEFD0A98(v42);
      sub_1CEFD0A98(v42);
      v88 = sub_1CEFD0DF0(v85, v87, v193);

      *(v72 + 14) = v88;
      _os_log_impl(&dword_1CEFC7000, v70, v188, "Request to materialize content of itemID %s reason %s", v72, 0x16u);
      v89 = v174;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v89, -1, -1);
      MEMORY[0x1D386CDC0](v72, -1, -1);
    }

    else
    {
      sub_1CEFD0A98(v42);
      sub_1CEFD0A98(v42);
    }

    v177(v56, v190);
    v91 = v179;
    v90 = v180;
    LODWORD(v174) = (v42 >> 58) & 0x3C | (v42 >> 1) & 3;
    if (v174 == 2)
    {
      v92 = swift_projectBox();
      sub_1CEFCCBDC(v92, v90, &unk_1EC4C4F40, qword_1CFA0F4C0);
      v93 = *(v90 + 1);

      v94 = v91[12];

      v95 = *&v90[v91[20]];
      v96 = sub_1CF9E5A58();
      (*(*(v96 - 8) + 8))(&v90[v94], v96);
    }

    else
    {
      v95 = 0;
    }

    v98 = v183;
    v97 = v184;
    v99 = v181;
    v100 = v182;
    sub_1CEFCCBDC(v189 + qword_1EDEBBC18, v181, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v101 = type metadata accessor for TelemetrySignposter(0);
    if ((*(*(v101 - 8) + 48))(v99, 1, v101) == 1)
    {
      sub_1CEFCCC44(v99, &qword_1EC4BFB10, &unk_1CFA12AD0);
      v102 = 1;
    }

    else
    {
      sub_1CF519DE8(v95, v97);
      sub_1CEFD5338(v99, type metadata accessor for TelemetrySignposter);
      v102 = 0;
    }

    v103 = type metadata accessor for TelemetrySignpost(0);
    (*(*(v103 - 8) + 56))(v97, v102, 1, v103);
    sub_1CEFCCBDC(v97, v98, qword_1EC4C1588, &unk_1CFA0A260);
    v104 = v98;
    v105 = *(v100 + 80);
    v106 = (v105 + 16) & ~v105;
    v107 = v176;
    v108 = (v176 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
    v109 = swift_allocObject();
    v110 = v109 + v106;
    v111 = v109;
    v188 = v109;
    sub_1CEFE55D0(v104, v110, qword_1EC4C1588, &unk_1CFA0A260);
    v112 = (v111 + v108);
    v183 = sub_1CF8FE7A8;
    v113 = v187;
    *v112 = sub_1CF8FE7A8;
    v112[1] = v113;
    v114 = v97;
    v115 = v178;
    sub_1CEFCCBDC(v114, v178, qword_1EC4C1588, &unk_1CFA0A260);
    v116 = (v105 + 24) & ~v105;
    v117 = ((v116 + v107 + 7) & 0xFFFFFFFFFFFFFFF8);
    v118 = (v116 + v107 + 31) & 0xFFFFFFFFFFFFFFF8;
    v180 = v117;
    v181 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
    v182 = (v118 + 31) & 0xFFFFFFFFFFFFFFF8;
    v119 = (v182 + 15) & 0xFFFFFFFFFFFFFFF8;
    v120 = swift_allocObject();
    v121 = v186;
    *(v120 + 16) = v186;
    sub_1CEFE55D0(v115, v120 + v116, qword_1EC4C1588, &unk_1CFA0A260);
    v122 = &v180[v120];
    v123 = v182;
    v124 = v121;
    v125 = v187;
    *v122 = v183;
    *(v122 + 1) = v125;
    v122[16] = 1;
    *(v120 + v118) = v189;
    v126 = v120 + v181;
    v127 = v192;
    *v126 = v192;
    *(v126 + 8) = 0;
    *(v120 + v123) = 2;
    v128 = v175;
    *(v120 + v119) = v175;
    v129 = v120 + ((v119 + 15) & 0xFFFFFFFFFFFFFFF8);
    v130 = v188;
    *v129 = sub_1CF903314;
    *(v129 + 8) = v130;
    *(v129 + 16) = 1;
    v131 = objc_allocWithZone(MEMORY[0x1E696AE38]);

    sub_1CEFD09A0(v124);

    v132 = v124;

    v180 = v128;

    v183 = [v131 init];
    v133 = swift_allocObject();
    v133[2] = sub_1CF903318;
    v133[3] = v120;
    v182 = v133;
    v133[4] = v124;
    sub_1CEFD09A0(v124);

    sub_1CEFD09A0(v124);
    v181 = v120;

    v134 = fpfs_current_or_default_log();
    v135 = v191;
    sub_1CF9E6128();
    sub_1CEFD09A0(v124);
    sub_1CEFD09A0(v124);

    v136 = sub_1CF9E6108();
    v137 = sub_1CF9E7298();
    if (os_log_type_enabled(v136, v137))
    {
      LODWORD(v178) = v137;
      v179 = v136;
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v202 = v139;
      *v138 = 136315906;
      v140 = swift_beginAccess();
      v142 = *(v127 + 32);
      v143 = *(v127 + 40);
      if (*(v127 + 41))
      {
        v144 = v142;
        v145 = NSFileProviderItemIdentifier.description.getter();
        v147 = v146;
        sub_1CEFD0994(v142, v143, 1);
      }

      else
      {
        v194 = *(v127 + 32);
        v195 = v143;
        v145 = VFSItemID.description.getter(v140, v141);
        v147 = v148;
      }

      v149 = sub_1CEFD0DF0(v145, v147, &v202);

      *(v138 + 4) = v149;
      *(v138 + 12) = 2080;
      *(v138 + 14) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA2C3C0, &v202);
      *(v138 + 22) = 2080;
      v132 = v186;
      v150 = sub_1CEFD11AC(v186);
      v152 = v151;
      sub_1CEFD0A98(v132);
      sub_1CEFD0A98(v132);
      v153 = sub_1CEFD0DF0(v150, v152, &v202);

      *(v138 + 24) = v153;
      *(v138 + 32) = 2048;
      *(v138 + 34) = 0;
      v154 = v179;
      _os_log_impl(&dword_1CEFC7000, v179, v178, "Lookup itemID %s with behavior %s request %s iteration %ld", v138, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v139, -1, -1);
      MEMORY[0x1D386CDC0](v138, -1, -1);

      v177(v191, v190);
      v127 = v192;
    }

    else
    {
      sub_1CEFD0A98(v132);
      sub_1CEFD0A98(v132);

      v177(v135, v190);
    }

    swift_beginAccess();
    v155 = *(v127 + 32);
    v156 = *(v127 + 40);
    if (*(v127 + 41))
    {
      v157 = qword_1EDEA34B0;
      v158 = v155;
      if (v157 != -1)
      {
        swift_once();
      }

      v159 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v161 = v160;
      if (v159 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v161 == v162)
      {

        sub_1CEFD0994(v155, v156, 1);
        v132 = v186;
LABEL_44:
        sub_1CF90CAC8(v132, sub_1CF796A0C, v182);
LABEL_50:

        sub_1CEFCCC44(v196, &unk_1EC4BFC20, &unk_1CFA0A290);

        sub_1CEFD0A98(v132);

        sub_1CEFCCC44(v184, qword_1EC4C1588, &unk_1CFA0A260);
        goto LABEL_10;
      }

      v163 = sub_1CF9E8048();

      sub_1CEFD0994(v155, v156, 1);
      v132 = v186;
      if (v163)
      {
        goto LABEL_44;
      }
    }

    else if (!v155 && v156 == 2)
    {
      goto LABEL_44;
    }

    if (v174 == 30)
    {
      v164 = *((v132 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v165 = v164;
    }

    else
    {
      v166 = swift_allocObject();
      *(v166 + 16) = v132;
      v165 = v166 | 0x7000000000000004;
      v164 = v132;
    }

    v167 = v189;
    sub_1CEFD09A0(v164);
    v168 = swift_allocObject();
    v169 = v182;
    *(v168 + 16) = sub_1CF796A0C;
    *(v168 + 24) = v169;
    *(v168 + 32) = v167;
    *(v168 + 40) = 2;
    *(v168 + 48) = v132;
    *(v168 + 56) = v127;
    *(v168 + 64) = 0;
    *(v168 + 72) = v183;
    *(v168 + 80) = 0;
    v170 = swift_allocObject();
    *(v170 + 16) = v127;
    *(v170 + 24) = v167;
    *(v170 + 32) = 0;
    *(v170 + 40) = sub_1CF796A90;
    *(v170 + 48) = v168;
    *(v170 + 56) = v165;
    v171 = swift_allocObject();
    *(v171 + 16) = sub_1CF796A90;
    *(v171 + 24) = v168;

    sub_1CEFD09A0(v132);

    v172 = v183;
    sub_1CEFD09A0(v165);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v171, sub_1CF796A9C, v170);

    sub_1CEFD0A98(v165);
    goto LABEL_50;
  }
}

void sub_1CF7E627C(uint64_t a1, void (*a2)(void *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v10 - v6);
  sub_1CEFCCBDC(a1, &v10 - v6, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v9 = v8;
    a2(v8, 1);
  }

  else
  {
    a2(0, 0);
    sub_1CEFCCC44(v7, &unk_1EC4BF300, &unk_1CFA006B0);
  }
}

uint64_t sub_1CF7E639C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, __n128), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v47 - v10;
  v12 = sub_1CF9E5A58();
  v55 = *(v12 - 8);
  v56 = v12;
  v13 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v47 - v18;
  v20 = type metadata accessor for VFSItem(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v26 = MEMORY[0x1EEE9AC00](v23);
  if ((a2 & 1) == 0)
  {
    return a3(0xFFFFFFFFLL, 0, v26);
  }

  v50 = v25;
  v51 = a3;
  v27 = &v47 - v24;
  v28 = a4;
  sub_1CEFCCBDC(a1, v19, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1CEFCCC44(v19, &unk_1EC4BEC00, &unk_1CF9FCB60);
LABEL_9:
    a3 = v51;
    return a3(0xFFFFFFFFLL, 0, v26);
  }

  sub_1CEFDA0C4(v19, v27, type metadata accessor for VFSItem);
  v29 = &v27[*(v20 + 28)];
  if (*v29 == 1)
  {
    v30 = v27;
LABEL_8:
    sub_1CEFD5338(v30, type metadata accessor for VFSItem);
    goto LABEL_9;
  }

  if (v29[*(type metadata accessor for ItemMetadata() + 80)])
  {
    v30 = v27;
    goto LABEL_8;
  }

  v32 = v53;
  v33 = v50;
  sub_1CEFDA34C(v27, v50, type metadata accessor for VFSItem);
  sub_1CF25116C(v11);
  v34 = v55;
  v35 = v56;
  if ((*(v55 + 48))(v11, 1, v56) == 1)
  {
    sub_1CEFCCC44(v11, &unk_1EC4BE310, qword_1CF9FCBE0);
    (v51)(0xFFFFFFFFLL, 0);
    sub_1CEFD5338(v33, type metadata accessor for VFSItem);
    v36 = v27;
  }

  else
  {
    v49 = v27;
    v37 = v34;
    v38 = *(v34 + 32);
    v39 = v54;
    v38(v54, v11, v35);
    v53 = *(*(*(v32 + 16) + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    v48 = *(swift_dynamicCastClassUnconditional() + 216);
    v40 = v28;
    v41 = v52;
    (*(v34 + 16))(v52, v39, v35);
    v42 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v43 = (v13 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v38((v44 + v42), v41, v35);
    v45 = (v44 + v43);
    *v45 = v51;
    v45[1] = v40;

    v46 = v48;

    sub_1CF01001C(0, "openFD(for:completion:)", 23, 2, sub_1CF8FE800, v44);

    (*(v37 + 8))(v54, v35);
    sub_1CEFD5338(v50, type metadata accessor for VFSItem);
    v36 = v49;
  }

  return sub_1CEFD5338(v36, type metadata accessor for VFSItem);
}

uint64_t sub_1CF7E6910@<X0>(_BYTE *a1@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t sub_1CF7E6950@<X0>(_BYTE *a1@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t sub_1CF7E69F0(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v48 = a5;
  LODWORD(v9) = a2;
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  swift_retain_n();
  sub_1CEFD09A0(a3);
  v17 = sub_1CF9E6108();
  v18 = sub_1CF9E7298();
  if (os_log_type_enabled(v17, v18))
  {
    v43 = v18;
    v44 = v12;
    v45 = v11;
    v46 = a4;
    v47 = v9;
    v9 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v51 = v42;
    *v9 = 136315394;
    v19 = sub_1CEFD11AC(a3);
    v21 = v20;
    sub_1CEFD0A98(a3);
    v22 = sub_1CEFD0DF0(v19, v21, &v51);

    *(v9 + 4) = v22;
    *(v9 + 12) = 2080;
    v23 = swift_beginAccess();
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v27 = v25;
      v28 = NSFileProviderItemIdentifier.description.getter();
      v30 = v29;
      sub_1CEFD0994(v25, v26, 1);
    }

    else
    {
      v49 = *(a1 + 32);
      v50 = v26;
      v28 = VFSItemID.description.getter(v23, v24);
      v30 = v31;
    }

    v32 = sub_1CEFD0DF0(v28, v30, &v51);

    *(v9 + 14) = v32;
    _os_log_impl(&dword_1CEFC7000, v17, v43, "🥄 Forcing ingestion for %s with item ID %s", v9, 0x16u);
    v33 = v42;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v33, -1, -1);
    MEMORY[0x1D386CDC0](v9, -1, -1);

    (*(v44 + 8))(v15, v45);
    LOBYTE(v9) = v47;
    a4 = v46;
  }

  else
  {

    sub_1CEFD0A98(a3);

    (*(v12 + 8))(v15, v11);
  }

  v34 = swift_allocObject();
  v35 = v48;
  *(v34 + 16) = a4;
  *(v34 + 24) = v35;
  *(v34 + 32) = a1;
  *(v34 + 40) = v6;
  *(v34 + 48) = a3;
  *(v34 + 56) = v9 & 1;
  v36 = *(v6 + 16);
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1CF8FE75C;
  *(v37 + 24) = v34;
  v38 = swift_allocObject();
  v38[2] = a1;
  v38[3] = v6;
  v38[4] = sub_1CF8FE75C;
  v38[5] = v34;
  v38[6] = a3;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1CF8FE774;
  *(v39 + 24) = v37;
  sub_1CEFD09A0(a3);
  swift_retain_n();

  sub_1CEFD09A0(a3);

  sub_1CF7AAF88("checkIfDatalessWCloneMaterializationNeeded(itemID:userRequest:completionHandler:)", 81, 2, 2, sub_1CF8FC294, v39, sub_1CF8FE77C, v38);
}

uint64_t sub_1CF7E6E40(void *a1, char a2, void (*a3)(__int128 *, void *), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, char a8)
{
  v16 = sub_1CF9E6118();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    v22 = a1;
    a3(&v78, a1);
    sub_1CF0BA6EC(a1, 1);
    return sub_1CEFCCC44(&v78, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  if ((a1 & 1) == 0 || *(a5 + 25) != 1)
  {
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    a3(&v78, 0);
    return sub_1CEFCCC44(&v78, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v69 = v19;
  v75 = v18;
  v23 = *(a5 + 16);
  v24 = *(a5 + 24);
  v72 = *(a6 + 16);
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  *(v25 + 32) = a6;
  *(v25 + 40) = a8 & 1;
  *(v25 + 48) = a7;
  *(v25 + 56) = a5;
  *(v25 + 64) = v23;
  v26 = objc_allocWithZone(MEMORY[0x1E696AE38]);
  sub_1CEFD0988(v23, v24, 1);
  v73 = v23;
  v74 = v24;
  sub_1CEFD0988(v23, v24, 1);

  sub_1CEFD09A0(a7);

  v76 = [v26 init];
  v27 = swift_allocObject();
  v27[2] = sub_1CF8FE7B0;
  v27[3] = v25;
  v71 = v27;
  v27[4] = a7;
  sub_1CEFD09A0(a7);

  sub_1CEFD09A0(a7);
  v70 = v25;

  v28 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a7);
  sub_1CEFD09A0(a7);

  v29 = sub_1CF9E6108();
  v30 = sub_1CF9E7298();
  if (os_log_type_enabled(v29, v30))
  {
    v68 = v30;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v77 = v32;
    *v31 = 136315906;
    v33 = swift_beginAccess();
    v35 = *(a5 + 32);
    v36 = *(a5 + 40);
    if (*(a5 + 41))
    {
      v37 = v35;
      v38 = NSFileProviderItemIdentifier.description.getter();
      v40 = v39;
      sub_1CEFD0994(v35, v36, 1);
    }

    else
    {
      *&v78 = *(a5 + 32);
      BYTE8(v78) = v36;
      v38 = VFSItemID.description.getter(v33, v34);
      v40 = v42;
    }

    v43 = sub_1CEFD0DF0(v38, v40, &v77);

    *(v31 + 4) = v43;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, &v77);
    *(v31 + 22) = 2080;
    v44 = sub_1CEFD11AC(a7);
    v46 = v45;
    sub_1CEFD0A98(a7);
    sub_1CEFD0A98(a7);
    v47 = sub_1CEFD0DF0(v44, v46, &v77);

    *(v31 + 24) = v47;
    *(v31 + 32) = 2048;
    *(v31 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v29, v68, "Lookup itemID %s with behavior %s request %s iteration %ld", v31, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v32, -1, -1);
    MEMORY[0x1D386CDC0](v31, -1, -1);
  }

  else
  {
    sub_1CEFD0A98(a7);
    sub_1CEFD0A98(a7);
  }

  (*(v69 + 8))(v21, v75);
  swift_beginAccess();
  v48 = *(a5 + 32);
  v49 = *(a5 + 40);
  if ((*(a5 + 41) & 1) == 0)
  {
    if (!v48 && v49 == 2)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  v50 = qword_1EDEA34B0;
  v51 = v48;
  if (v50 != -1)
  {
    swift_once();
  }

  v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v54 = v53;
  if (v52 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v54 != v55)
  {
    v56 = sub_1CF9E8048();

    sub_1CEFD0994(v48, v49, 1);
    if (v56)
    {
      goto LABEL_21;
    }

LABEL_23:
    v57 = v76;
    if (((a7 >> 58) & 0x3C | (a7 >> 1) & 3) == 0x1E)
    {
      v58 = *((a7 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v59 = v58;
    }

    else
    {
      v60 = swift_allocObject();
      *(v60 + 16) = a7;
      v59 = v60 | 0x7000000000000004;
      v58 = a7;
    }

    sub_1CEFD09A0(v58);
    v61 = swift_allocObject();
    v62 = v71;
    v63 = v72;
    *(v61 + 16) = sub_1CF796A0C;
    *(v61 + 24) = v62;
    *(v61 + 32) = v63;
    *(v61 + 40) = 1;
    *(v61 + 48) = a7;
    *(v61 + 56) = a5;
    *(v61 + 64) = 1;
    *(v61 + 72) = v57;
    *(v61 + 80) = 0;
    v64 = swift_allocObject();
    *(v64 + 16) = a5;
    *(v64 + 24) = v63;
    *(v64 + 32) = 1;
    *(v64 + 40) = sub_1CF796A90;
    *(v64 + 48) = v61;
    *(v64 + 56) = v59;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1CF796A90;
    *(v65 + 24) = v61;

    sub_1CEFD09A0(a7);

    v66 = v57;
    sub_1CEFD09A0(v59);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v65, sub_1CF796A9C, v64);

    sub_1CEFD0A98(v59);
    goto LABEL_27;
  }

  sub_1CEFD0994(v48, v49, 1);
LABEL_21:
  sub_1CF90CAC8(a7, sub_1CF796A0C, v71);
LABEL_27:

  sub_1CEFD0A98(a7);

  sub_1CEFD0994(v73, v74, 1);
}

uint64_t sub_1CF7E75E4(uint64_t a1, void (*a2)(_OWORD *, void *), uint64_t a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7, void *a8)
{
  v32 = a8;
  v33 = a2;
  v31 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v30[-v19];
  sub_1CEFCCBDC(a1, v16, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v16;
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    v22 = v21;
    v33(v34, v21);

    return sub_1CEFCCC44(v34, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  else
  {
    sub_1CEFDA0C4(v16, v20, type metadata accessor for VFSItem);
    v23 = type metadata accessor for VFSItem(0);
    (*(*(v23 - 8) + 56))(v20, 0, 1, v23);
    v24 = swift_allocObject();
    *(v24 + 16) = a6;
    *(v24 + 24) = a7;
    v25 = v32;
    v26 = v33;
    *(v24 + 32) = a4;
    *(v24 + 40) = v25;
    v27 = v31 & 1;
    *(v24 + 48) = v31 & 1;
    *(v24 + 56) = v26;
    *(v24 + 64) = a3;
    sub_1CEFD09A0(a6);

    v28 = v25;

    sub_1CF7E639C(v20, v27, sub_1CF8FE7C8, v24);
    sub_1CEFCCC44(v20, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }
}

uint64_t sub_1CF7E78E4(NSObject *a1, char a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v152 = a8;
  LODWORD(v148) = a7;
  v139 = a6;
  v133 = sub_1CF9E63D8();
  v132 = *(v133 - 8);
  v14 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v131 = v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v146 = v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v129 - v20;
  v134 = sub_1CF9E6068();
  v22 = *(v134 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v141 = v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v136 = v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v129 - v29;
  v137 = type metadata accessor for Signpost(0);
  v142 = *(v137 - 8);
  v31 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v145 = v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v144 = v129 - v34;
  v143 = v35;
  MEMORY[0x1EEE9AC00](v36);
  v149 = v129 - v37;
  v38 = sub_1CF9E6118();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v43 = v129 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = v21;
  v147 = v30;
  v140 = v22;
  if (a2)
  {
    v138 = v41;
    v151 = v40;
    v44 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    swift_retain_n();
    sub_1CEFD09A0(a3);
    sub_1CF480F78(a1, 1);
    v45 = sub_1CF9E6108();
    v46 = sub_1CF9E72A8();
    sub_1CF0BA6EC(a1, 1);
    LODWORD(v135) = v46;
    if (os_log_type_enabled(v45, v46))
    {
      v129[0] = v45;
      v129[1] = a1;
      v130 = a5;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v154 = v49;
      *v47 = 136315650;
      v50 = sub_1CEFD11AC(a3);
      v52 = v51;
      sub_1CEFD0A98(a3);
      v53 = sub_1CEFD0DF0(v50, v52, &v154);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2080;
      v54 = swift_beginAccess();
      v56 = *(a4 + 32);
      v57 = *(a4 + 40);
      if (*(a4 + 41))
      {
        v58 = v56;
        v59 = NSFileProviderItemIdentifier.description.getter();
        v61 = v60;
        sub_1CEFD0994(v56, v57, 1);
      }

      else
      {
        *&aBlock = *(a4 + 32);
        BYTE8(aBlock) = v57;
        v59 = VFSItemID.description.getter(v54, v55);
        v61 = v62;
      }

      v63 = sub_1CEFD0DF0(v59, v61, &v154);

      *(v47 + 14) = v63;
      *(v47 + 22) = 2112;
      swift_getErrorValue();
      v64 = Error.prettyDescription.getter(v153);
      *(v47 + 24) = v64;
      *v48 = v64;
      v65 = v129[0];
      _os_log_impl(&dword_1CEFC7000, v129[0], v135, "🥄 ❌ Failed to open FD for %s with itemID:%s. error: %@", v47, 0x20u);
      sub_1CEFCCC44(v48, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v48, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v49, -1, -1);
      MEMORY[0x1D386CDC0](v47, -1, -1);

      (*(v138 + 8))(v43, v151);
      LODWORD(a1) = -1;
      v30 = v147;
      a5 = v130;
    }

    else
    {

      sub_1CEFD0A98(a3);

      (*(v138 + 8))(v43, v151);
      LODWORD(a1) = -1;
    }
  }

  v151 = *(a5 + 16);
  v66 = v134;
  if (((a3 >> 58) & 0x3C | (a3 >> 1) & 3) == 0x1E)
  {
    v69 = *((a3 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v68 = v69;
  }

  else
  {
    v67 = swift_allocObject();
    *(v67 + 16) = a3;
    v68 = v67 | 0x7000000000000004;
    v69 = a3;
  }

  sub_1CEFD09A0(v69);
  v70 = swift_allocObject();
  *(v70 + 16) = v148 & 1;
  *(v70 + 20) = a1;
  *(v70 + 24) = a3;
  *(v70 + 32) = a4;
  *(v70 + 40) = v152;
  *(v70 + 48) = a9;
  v71 = swift_allocObject();
  v72 = v139;
  v71[2] = v139;
  v71[3] = v68;
  v73 = v151;
  v71[4] = v151;
  v71[5] = sub_1CF8FE890;
  v148 = v71;
  v71[6] = v70;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1CF8FE890;
  *(v74 + 24) = v70;
  v152 = v74;
  v75 = *(v73 + qword_1EDEBBC38);

  sub_1CEFD09A0(a3);
  v138 = v70;

  v76 = v72;
  sub_1CEFD09A0(v68);

  v135 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v139 = v68;
  v77 = qword_1EDEBBE40;
  v78 = v140;
  (*(v140 + 56))(v30, 1, 1, v66);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v79 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v79);

  v80 = aBlock;
  v81 = v136;
  sub_1CEFCCBDC(v30, v136, &unk_1EC4BED20, &unk_1CFA00700);
  v82 = *(v78 + 48);
  v83 = v82(v81, 1, v66);
  v84 = v141;
  if (v83 == 1)
  {
    v85 = v77;
    sub_1CF9E6048();
    v86 = v82(v81, 1, v66) == 1;
    v87 = v81;
    v88 = v66;
    if (!v86)
    {
      sub_1CEFCCC44(v87, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v78 + 32))(v141, v81, v66);
    v88 = v66;
  }

  v89 = v149;
  (*(v78 + 16))(v149, v84, v88);
  v90 = v137;
  *(v89 + *(v137 + 20)) = v77;
  v91 = v89 + *(v90 + 24);
  *v91 = "DB queue wait";
  *(v91 + 8) = 13;
  *(v91 + 16) = 2;
  v92 = v77;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v93 = v84;
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1CF9FA450;
  *(v94 + 56) = MEMORY[0x1E69E6158];
  *(v94 + 64) = sub_1CEFD51C4();
  *(v94 + 32) = v80;
  sub_1CF9E6028();

  (*(v78 + 8))(v93, v88);
  sub_1CEFCCC44(v147, &unk_1EC4BED20, &unk_1CFA00700);
  v141 = *(v151 + 168);
  v147 = *(v151 + 64);
  v140 = sub_1CF9E6448();
  v137 = *(v140 - 8);
  (*(v137 + 56))(v150, 1, 1, v140);
  v95 = v144;
  sub_1CEFDA34C(v89, v144, type metadata accessor for Signpost);
  v96 = (*(v142 + 80) + 16) & ~*(v142 + 80);
  v97 = (v143 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  v143 = type metadata accessor for Signpost;
  sub_1CEFDA0C4(v95, v98 + v96, type metadata accessor for Signpost);
  v99 = (v98 + v97);
  v100 = v152;
  *v99 = sub_1CF902CD4;
  v99[1] = v100;
  v101 = v145;
  sub_1CEFDA34C(v89, v145, type metadata accessor for Signpost);
  v102 = (v97 + 23) & 0xFFFFFFFFFFFFFFF8;
  v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
  v104 = (v103 + 25) & 0xFFFFFFFFFFFFFFF8;
  v105 = (v104 + 23) & 0xFFFFFFFFFFFFFFF8;
  v106 = swift_allocObject();
  sub_1CEFDA0C4(v101, v106 + v96, v143);
  v107 = (v106 + v97);
  *v107 = sub_1CF045408;
  v107[1] = 0;
  *(v106 + v102) = v151;
  v108 = v106 + v103;
  v109 = v137;
  *v108 = "propagateToFS(itemID:request:completion:)";
  *(v108 + 8) = 41;
  *(v108 + 16) = 2;
  v110 = (v106 + v104);
  v111 = v140;
  v112 = v152;
  *v110 = sub_1CF902CD4;
  v110[1] = v112;
  v113 = (v106 + v105);
  v114 = v148;
  *v113 = sub_1CF8FE8A4;
  v113[1] = v114;
  v115 = swift_allocObject();
  v115[2] = sub_1CF903308;
  v115[3] = v98;
  v116 = v141;
  v115[4] = v141;
  swift_retain_n();

  v151 = v98;
  v117 = v150;

  v118 = fpfs_current_log();
  v145 = *(v116 + 2);
  v119 = v146;
  sub_1CEFCCBDC(v117, v146, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v109 + 48))(v119, 1, v111) == 1)
  {
    sub_1CEFCCC44(v119, &unk_1EC4BE370, qword_1CFA01B30);
    v120 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v121 = v131;
    sub_1CF9E6438();
    (*(v109 + 8))(v119, v111);
    v120 = sub_1CF9E63C8();
    (*(v132 + 8))(v121, v133);
  }

  v122 = swift_allocObject();
  v122[2] = v118;
  v122[3] = sub_1CF4858EC;
  v122[4] = v106;
  v158 = sub_1CF2BA17C;
  v159 = v122;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v156 = sub_1CEFCA444;
  v157 = &block_descriptor_4501;
  v123 = _Block_copy(&aBlock);
  v124 = v118;

  v158 = sub_1CF2BA180;
  v159 = v115;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v156 = sub_1CEFCA444;
  v157 = &block_descriptor_4504;
  v125 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v145, v147, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v120, v123, v125);
  _Block_release(v125);
  _Block_release(v123);

  sub_1CEFCCC44(v117, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v149, type metadata accessor for Signpost);
  v126 = v135;
  v127 = fpfs_adopt_log();

  sub_1CEFD0A98(v139);
}

uint64_t sub_1CF7E88E8(uint64_t a1, void *a2, char a3, int a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void *), uint64_t a8)
{
  v16 = sub_1CF9E6118();
  v72 = *(v16 - 8);
  v73 = v16;
  v17 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  if ((a3 & 1) != 0 && a4 >= 1)
  {
    close(a4);
  }

  if (a2)
  {
    v71 = a1;
    v23 = a2;
    v24 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v25 = a2;

    sub_1CEFD09A0(a5);
    v26 = sub_1CF9E6108();
    v27 = sub_1CF9E72A8();

    if (!os_log_type_enabled(v26, v27))
    {

      sub_1CEFD0A98(a5);

      (*(v72 + 8))(v22, v73);
LABEL_18:
      a1 = v71;
      return a7(a1, a2);
    }

    v69 = a7;
    v70 = a8;
    v28 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v77 = v68;
    *v28 = 136315650;
    v29 = sub_1CEFD11AC(a5);
    v31 = v30;
    sub_1CEFD0A98(a5);
    v32 = sub_1CEFD0DF0(v29, v31, &v77);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    v33 = swift_beginAccess();
    v35 = *(a6 + 32);
    v36 = *(a6 + 40);
    if (*(a6 + 41))
    {
      v37 = v35;
      v38 = NSFileProviderItemIdentifier.description.getter();
      v40 = v39;
      sub_1CEFD0994(v35, v36, 1);
    }

    else
    {
      v75 = *(a6 + 32);
      v76 = v36;
      v38 = VFSItemID.description.getter(v33, v34);
      v40 = v57;
    }

    v58 = sub_1CEFD0DF0(v38, v40, &v77);

    *(v28 + 14) = v58;
    *(v28 + 22) = 2112;
    swift_getErrorValue();
    v59 = Error.prettyDescription.getter(v74);
    *(v28 + 24) = v59;
    v60 = v67;
    *v67 = v59;
    _os_log_impl(&dword_1CEFC7000, v26, v27, "🥄 ❌ Failed force ingestion for %s with itemID %s. error: %@", v28, 0x20u);
    sub_1CEFCCC44(v60, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v60, -1, -1);
    v61 = v68;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v61, -1, -1);
    MEMORY[0x1D386CDC0](v28, -1, -1);

    (*(v72 + 8))(v22, v73);
LABEL_17:
    a7 = v69;
    goto LABEL_18;
  }

  v70 = a8;
  v41 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  swift_retain_n();
  sub_1CEFD09A0(a5);
  v42 = sub_1CF9E6108();
  v43 = sub_1CF9E7298();
  if (os_log_type_enabled(v42, v43))
  {
    v71 = a1;
    v69 = a7;
    v44 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v77 = v68;
    *v44 = 136315394;
    v45 = sub_1CEFD11AC(a5);
    v47 = v46;
    sub_1CEFD0A98(a5);
    v48 = sub_1CEFD0DF0(v45, v47, &v77);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v49 = swift_beginAccess();
    v51 = *(a6 + 32);
    v52 = *(a6 + 40);
    if (*(a6 + 41))
    {
      v53 = v51;
      v54 = NSFileProviderItemIdentifier.description.getter();
      v56 = v55;
      sub_1CEFD0994(v51, v52, 1);
    }

    else
    {
      v75 = *(a6 + 32);
      v76 = v52;
      v54 = VFSItemID.description.getter(v49, v50);
      v56 = v62;
    }

    v63 = sub_1CEFD0DF0(v54, v56, &v77);

    *(v44 + 14) = v63;
    _os_log_impl(&dword_1CEFC7000, v42, v43, "🥄 ✅ Finished force ingestion for %s with itemID %s", v44, 0x16u);
    v64 = v68;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v64, -1, -1);
    MEMORY[0x1D386CDC0](v44, -1, -1);

    (*(v72 + 8))(v19, v73);
    goto LABEL_17;
  }

  sub_1CEFD0A98(a5);

  (*(v72 + 8))(v19, v73);
  return a7(a1, a2);
}

void sub_1CF7E8ED8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v151 = a7;
  v162 = a6;
  v164 = a5;
  v160 = a4;
  v166 = a2;
  v149 = sub_1CF9E63D8();
  v148 = *(v149 - 8);
  v9 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v159 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v165 = &v135 - v15;
  v161 = sub_1CF9E6068();
  v157 = *(v161 - 8);
  v16 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v154 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v152 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v163 = &v135 - v22;
  v153 = type metadata accessor for Signpost(0);
  v155 = *(v153 - 8);
  v23 = *(v155 + 8);
  MEMORY[0x1EEE9AC00](v153);
  v158 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v156 = &v135 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v135 - v27;
  v29 = sub_1CF9E6118();
  v150 = *(v29 - 8);
  v30 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1[3];
  v33 = a1[4];
  v35 = __swift_project_boxed_opaque_existential_1(a1, v34);
  v36 = a3;
  v37 = *(a3 + 16);
  v38 = v166;
  v39 = v167;
  sub_1CF554678(v37, 0, v35, v34, v33, &v174);
  if (!v39)
  {
    v144 = v32;
    v141 = v29;
    v142 = v36;
    v40 = v164;
    v41 = v162;
    v143 = v23;
    v42 = v161;
    v146 = v28;
    v167 = 0;
    v43 = v174;
    v44 = v175;
    if (v176)
    {
      v45 = FPItemNotFoundError();
      v40();
      sub_1CEFD0994(v43, v44, 1);
    }

    else
    {
      v46 = v37;
      v139 = v174;
      v140 = v175;
      v47 = fpfs_current_or_default_log();
      v48 = v144;
      sub_1CF9E6128();
      v49 = v38;
      swift_retain_n();
      v50 = v160;
      sub_1CEFD09A0(v160);
      v51 = sub_1CF9E6108();
      v52 = sub_1CF9E7298();
      v53 = os_log_type_enabled(v51, v52);
      v54 = v41;
      v145 = v46;
      if (v53)
      {
        v137 = v52;
        v138 = v51;
        v55 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v168 = v136;
        *v55 = 136315394;
        v56 = sub_1CEFD11AC(v50);
        v58 = v57;
        sub_1CEFD0A98(v50);
        v59 = sub_1CEFD0DF0(v56, v58, &v168);

        *(v55 + 4) = v59;
        v60 = v55;
        *(v55 + 12) = 2080;
        v61 = swift_beginAccess();
        v63 = *(v49 + 32);
        v64 = *(v49 + 40);
        v65 = *(v49 + 41);
        v66 = v154;
        v67 = v163;
        if (v65)
        {
          v68 = v63;
          v69 = NSFileProviderItemIdentifier.description.getter();
          v71 = v70;
          v72 = v63;
          v73 = v69;
          sub_1CEFD0994(v72, v64, 1);
        }

        else
        {
          *&aBlock = v63;
          BYTE8(aBlock) = v64;
          v73 = VFSItemID.description.getter(v61, v62);
          v71 = v78;
        }

        v75 = v42;
        v79 = sub_1CEFD0DF0(v73, v71, &v168);

        v80 = v60;
        *(v60 + 14) = v79;
        v81 = v138;
        _os_log_impl(&dword_1CEFC7000, v138, v137, "🥄 Forcing upload for %s with item ID %s", v60, 0x16u);
        v82 = v136;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v82, -1, -1);
        MEMORY[0x1D386CDC0](v80, -1, -1);

        (*(v150 + 8))(v144, v141);
        v76 = v157;
        v77 = v142;
        v50 = v160;
        v74 = v145;
      }

      else
      {

        sub_1CEFD0A98(v50);

        (*(v150 + 8))(v48, v141);
        v74 = v46;
        v75 = v42;
        v76 = v157;
        v66 = v154;
        v67 = v163;
        v77 = v142;
      }

      v83 = swift_allocObject();
      v84 = v139;
      *(v83 + 16) = v77;
      *(v83 + 24) = v84;
      *(v83 + 32) = v140;
      v85 = v164;
      *(v83 + 40) = v50;
      *(v83 + 48) = v85;
      v161 = v83;
      v86 = v151;
      *(v83 + 56) = v54;
      *(v83 + 64) = v86;
      v87 = swift_allocObject();
      *(v87 + 16) = v85;
      *(v87 + 24) = v54;
      v166 = v87;
      v88 = *(v74 + qword_1EDEBBC38);

      sub_1CEFD09A0(v50);

      v164 = fpfs_adopt_log();
      v89 = v146;
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v90 = qword_1EDEBBE40;
      (*(v76 + 56))(v67, 1, 1, v75);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v91 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v91);

      v92 = *(&aBlock + 1);
      v162 = aBlock;
      v93 = v67;
      v94 = v152;
      sub_1CEFCCBDC(v93, v152, &unk_1EC4BED20, &unk_1CFA00700);
      v95 = *(v76 + 48);
      if (v95(v94, 1, v75) == 1)
      {
        v96 = v90;
        sub_1CF9E6048();
        v97 = v95(v94, 1, v75);
        v98 = v153;
        if (v97 != 1)
        {
          sub_1CEFCCC44(v94, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        (*(v76 + 32))(v66, v94, v75);
        v98 = v153;
      }

      (*(v76 + 16))(v89, v66, v75);
      *(v89 + *(v98 + 20)) = v90;
      v99 = v89 + *(v98 + 24);
      *v99 = "DB queue wait";
      *(v99 + 8) = 13;
      *(v99 + 16) = 2;
      v100 = v90;
      sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v101 = v66;
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_1CF9FA450;
      *(v102 + 56) = MEMORY[0x1E69E6158];
      *(v102 + 64) = sub_1CEFD51C4();
      *(v102 + 32) = v162;
      *(v102 + 40) = v92;
      sub_1CF9E6028();

      (*(v76 + 8))(v101, v75);
      sub_1CEFCCC44(v163, &unk_1EC4BED20, &unk_1CFA00700);
      v160 = *(v145 + 168);
      v163 = *(v145 + 64);
      v154 = sub_1CF9E6448();
      v157 = *(v154 - 1);
      (*(v157 + 56))(v165, 1, 1, v154);
      v103 = v156;
      sub_1CEFDA34C(v89, v156, type metadata accessor for Signpost);
      v104 = (*(v155 + 80) + 16) & ~*(v155 + 80);
      v105 = v89;
      v106 = (v143 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
      v107 = swift_allocObject();
      v155 = type metadata accessor for Signpost;
      sub_1CEFDA0C4(v103, v107 + v104, type metadata accessor for Signpost);
      v108 = (v107 + v106);
      v162 = sub_1CF5543A4;
      v109 = v166;
      *v108 = sub_1CF5543A4;
      v108[1] = v109;
      v110 = v158;
      sub_1CEFDA34C(v105, v158, type metadata accessor for Signpost);
      v111 = (v106 + 23) & 0xFFFFFFFFFFFFFFF8;
      v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
      v113 = (v112 + 25) & 0xFFFFFFFFFFFFFFF8;
      v114 = (v113 + 23) & 0xFFFFFFFFFFFFFFF8;
      v115 = swift_allocObject();
      sub_1CEFDA0C4(v110, v115 + v104, v155);
      v116 = (v115 + v106);
      *v116 = sub_1CF045408;
      v116[1] = 0;
      *(v115 + v111) = v145;
      v117 = v115 + v112;
      v118 = v154;
      *v117 = "forceUpload(for:policy:userRequest:completionHandler:)";
      *(v117 + 8) = 54;
      *(v117 + 16) = 2;
      v119 = (v115 + v113);
      v120 = v161;
      v121 = v166;
      *v119 = v162;
      v119[1] = v121;
      v122 = (v115 + v114);
      v123 = v157;
      *v122 = sub_1CF8F9F08;
      v122[1] = v120;
      v124 = swift_allocObject();
      v124[2] = sub_1CF903308;
      v124[3] = v107;
      v125 = v160;
      v124[4] = v160;
      swift_retain_n();

      v162 = v107;

      v126 = fpfs_current_log();
      v160 = v125[2];
      v127 = v159;
      sub_1CEFCCBDC(v165, v159, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v123 + 48))(v127, 1, v118) == 1)
      {
        sub_1CEFCCC44(v127, &unk_1EC4BE370, qword_1CFA01B30);
        v128 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v129 = v147;
        sub_1CF9E6438();
        (*(v123 + 8))(v127, v118);
        v128 = sub_1CF9E63C8();
        (*(v148 + 8))(v129, v149);
      }

      v130 = swift_allocObject();
      v130[2] = v126;
      v130[3] = sub_1CF4858EC;
      v130[4] = v115;
      v172 = sub_1CF2BA17C;
      v173 = v130;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v170 = sub_1CEFCA444;
      v171 = &block_descriptor_2337;
      v131 = _Block_copy(&aBlock);
      v132 = v126;

      v172 = sub_1CF2BA180;
      v173 = v124;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v170 = sub_1CEFCA444;
      v171 = &block_descriptor_2340;
      v133 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v160, v163, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v128, v131, v133);
      _Block_release(v133);
      _Block_release(v131);

      sub_1CEFCCC44(v165, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CEFD5338(v146, type metadata accessor for Signpost);
      v134 = v164;
      v45 = fpfs_adopt_log();
    }
  }
}

void sub_1CF7E9E6C(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8)
{
  v37 = sub_1CF9E5CF8();
  v35 = *(v37 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  sub_1CF9042A4(a5);
  v21 = v20;

  v36 = a3;
  sub_1CF5DA534(a3, a4, a5, v21, v19, a6, a7);

  if (a8)
  {
    if (a8 != 1)
    {
      v32 = FPNotSupportedError();
      a6();

      return;
    }

    v34 = v19;
    v22 = 0x1000000000000;
  }

  else
  {
    v34 = v19;
    v22 = 0x800000000000;
  }

  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = sub_1CF9042A4(a5);
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
  v27 = swift_allocObject();
  *(v27 + 152) = a4;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 1;
  *(v27 + 56) = 0u;
  *(v27 + 72) = 0u;
  *(v27 + 88) = 0;
  *(v27 + 120) = v24;
  *(v27 + 128) = v26;
  v28 = v36;
  *(v27 + 136) = v22;
  *(v27 + 144) = v28;
  *(v27 + 96) = xmmword_1CFA04E20;
  *(v27 + 112) = 0;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v30 = v29;
  (*(v35 + 8))(v18, v37);
  v31 = v30 * 1000000000.0;
  if (COERCE__INT64(fabs(v30 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v31 > -9.22337204e18)
  {
    if (v31 < 9.22337204e18)
    {
      sub_1CF5215C0(v27);

      return;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_1CF7EA114(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = sub_1CF9E6118();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 112);
  v34 = v15;
  v16 = !v14 || v14 == 4 && *(a1 + 96) == 0;
  v17 = *(v4 + 24);
  v32 = a3;
  v33 = a4;
  result = (*(*v17 + 136))(a1, a2, &v32, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
  if (!v5)
  {
    if (result < 0)
    {

      result = sub_1CF9E7B68();
      __break(1u);
    }

    else
    {

      if (v16)
      {
        v19 = fpfs_current_or_default_log();
        v20 = sub_1CF9E6128();
        v21 = (*(*a1 + 424))(v20);

        v22 = sub_1CF9E6108();
        if (os_log_type_enabled(v22, v21))
        {
          v23 = swift_slowAlloc();
          v31 = v21;
          v24 = v23;
          v25 = swift_slowAlloc();
          v32 = v25;
          *v24 = 136446210;

          v26 = sub_1CF059424();
          v28 = v27;

          v29 = sub_1CEFD0DF0(v26, v28, &v32);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_1CEFC7000, v22, v31, " ✍️  persist job: %{public}s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v25);
          MEMORY[0x1D386CDC0](v25, -1, -1);
          MEMORY[0x1D386CDC0](v24, -1, -1);
        }

        else
        {
        }

        return (*(v34 + 8))(v13, v10);
      }
    }
  }

  return result;
}

uint64_t sub_1CF7EA444(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v4;
  v9 = sub_1CF9E64A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a2;
  v19 = a3;
  v14 = *(v3 + 64);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v15 = v14;
  LOBYTE(v14) = sub_1CF9E64D8();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v17 = (*(**(v3 + 16) + 576))(0, 1, a1, &v18, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (!v4)
    {
      v5 = sub_1CF8E43C8(v17);
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF7EA5EC(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v124 = a2;
  v126 = a1;
  v144 = *MEMORY[0x1E69E9840];
  v121 = sub_1CF9E6118();
  v125 = *(v121 - 8);
  v7 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5CF8();
  v123 = *(v9 - 8);
  v10 = v123[8];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v103 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v103 - v20;
  v131 = a3;
  v132 = a4;
  v22 = v126;
  v23 = v127;
  v128 = a3;
  LODWORD(v126) = a4;
  result = sub_1CF7EA444(v22, a3, a4);
  if (v23)
  {
    goto LABEL_54;
  }

  v117 = v21;
  v115 = v18;
  v127 = v17;
  v118 = v16;
  v113 = v12;
  v114 = v9;
  v130 = result;
  v129 = MEMORY[0x1E69E7CD0];
  v25 = *(v4 + 24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  v27 = swift_dynamicCastClassUnconditional();
  v28 = *(v27 + 32);
  MEMORY[0x1EEE9AC00](v27);
  *(&v103 - 4) = v4;
  *(&v103 - 3) = &v131;
  *(&v103 - 2) = &v129;
  *(&v103 - 1) = &v130;

  sub_1CF8E4B7C(128, v128, v126, sub_1CF8F9108);
  v119 = v26;
  v120 = v25;
  v111 = v4;

  v29 = v129;
  v30 = v129 + 56;
  v31 = 1 << *(v129 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v129 + 56);
  v34 = (v31 + 63) >> 6;

  for (i = 0; ; i = v37)
  {
    v36 = v125;
    if (!v33)
    {
      break;
    }

    v37 = i;
LABEL_10:
    v38 = *(v29 + 48) + ((v37 << 10) | (16 * __clz(__rbit64(v33))));
    v39 = *v38;
    v40 = *(v38 + 8);
    v41 = *(swift_dynamicCastClassUnconditional() + 32);

    sub_1CF7FEF8C(v39, v40, 128, v128, v126);
    v33 &= v33 - 1;
  }

  while (1)
  {
    v37 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
    }

    if (v37 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v37);
    ++i;
    if (v33)
    {
      goto LABEL_10;
    }
  }

  v109 = v29;

  v42 = v130;
  v43 = v130 + 56;
  v44 = 1 << *(v130 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v130 + 56);
  v47 = (v44 + 63) >> 6;
  v115 += 6;
  v107 = (v123 + 1);
  v106 = (v36 + 8);
  v123 = &v136;

  v125 = 0;
  v48 = 0;
  *&v49 = 136446466;
  v105 = v49;
  v50 = v111;
  v51 = v118;
  v116 = v42;
  v112 = v43;
  while (2)
  {
    if (v46)
    {
      goto LABEL_22;
    }

    do
    {
      v52 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_59;
      }

      if (v52 >= v47)
      {

        result = v125;
        goto LABEL_54;
      }

      v46 = *(v43 + 8 * v52);
      ++v48;
    }

    while (!v46);
    v48 = v52;
LABEL_22:
    v53 = *(v42 + 48) + ((v48 << 10) | (16 * __clz(__rbit64(v46))));
    v54 = *v53;
    LOBYTE(v53) = *(v53 + 8);
    v142 = v54;
    v143 = v53;
    (*(**(v50 + 32) + 240))(&v142, 1, &v131, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v55 = v127;
    if ((*v115)(v51, 1, v127) == 1)
    {
      sub_1CEFCCC44(v51, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_15:
      v42 = v116;
LABEL_16:
      v46 &= v46 - 1;
      continue;
    }

    break;
  }

  v56 = v51;
  v57 = v117;
  sub_1CEFE55D0(v56, v117, &unk_1EC4BE360, &qword_1CF9FE650);
  v58 = v57 + *(v55 + 48);
  if ((*(v58 + *(type metadata accessor for ItemMetadata() + 80)) & 1) == 0)
  {
    sub_1CEFCCC44(v57, &unk_1EC4BE360, &qword_1CF9FE650);
    v51 = v118;
    v42 = v116;
LABEL_33:
    v43 = v112;
    goto LABEL_16;
  }

  if (v124 <= 0)
  {
    sub_1CEFCCC44(v117, &unk_1EC4BE360, &qword_1CF9FE650);
    v83 = __OFADD__(v125++, 1);
    v51 = v118;
    if (v83)
    {
      goto LABEL_64;
    }

    v42 = v116;
    goto LABEL_33;
  }

  v59 = *(swift_dynamicCastClassUnconditional() + 32);

  v60 = v113;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v62 = v61;
  (*v107)(v60, v114);
  v63 = v62 * 1000000000.0;
  if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_60;
  }

  v64 = v122;
  if (v63 <= -9.22337204e18)
  {
    goto LABEL_61;
  }

  v43 = v112;
  if (v63 >= 9.22337204e18)
  {
    goto LABEL_62;
  }

  v140 = v142;
  v141 = v143;
  v65 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v66 = v140;
  LODWORD(v104) = v141;
  v67 = sub_1CF9E6108();
  LODWORD(v110) = sub_1CF9E7288();
  v68 = os_log_type_enabled(v67, v110);
  v108 = v59;
  if (v68)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v103 = v70;
    v133 = v70;
    aBlock = v66;
    *v69 = v105;
    LOBYTE(v135) = v104;
    v104 = v67;
    v72 = VFSItemID.description.getter(v70, v71);
    v74 = sub_1CEFD0DF0(v72, v73, &v133);

    *(v69 + 4) = v74;
    *(v69 + 12) = 2082;
    v75 = sub_1CF7F5068(128);
    v77 = sub_1CEFD0DF0(v75, v76, &v133);

    *(v69 + 14) = v77;
    v78 = v104;
    _os_log_impl(&dword_1CEFC7000, v104, v110, "⏰  scheduling background download <i:%{public}s reason:%{public}s>", v69, 0x16u);
    v79 = v103;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v79, -1, -1);
    v80 = v69;
    v59 = v108;
    v81 = v64;
    v82 = v128;
    MEMORY[0x1D386CDC0](v80, -1, -1);

    (*v106)(v81, v121);
  }

  else
  {

    (*v106)(v64, v121);
    v82 = v128;
  }

  v84 = sub_1CF9E5278();
  v110 = &v103;
  MEMORY[0x1EEE9AC00](v84);
  *(&v103 - 6) = &v140;
  *(&v103 - 5) = v59;
  *(&v103 - 4) = 0;
  *(&v103 - 24) = 1;
  *(&v103 - 2) = 0;
  *(&v103 - 8) = 1;
  v85 = swift_allocObject();
  *(v85 + 16) = sub_1CF8F9134;
  *(v85 + 24) = &v103 - 8;
  v138 = sub_1CEFE75C0;
  v139 = v85;
  aBlock = MEMORY[0x1E69E9820];
  v135 = 1107296256;
  v136 = sub_1CEFE7548;
  v137 = &block_descriptor_1910;
  v86 = _Block_copy(&aBlock);

  aBlock = 0;
  v87 = [v82 fetchSwift:v86 error:&aBlock];
  _Block_release(v86);
  v88 = aBlock;
  LOBYTE(v86) = swift_isEscapingClosureAtFileLocation();

  if (v86)
  {
    goto LABEL_63;
  }

  if (!v87)
  {
    sub_1CF9E57F8();

    swift_willThrow();

    goto LABEL_57;
  }

  --v124;
  v104 = v87;
  v89 = [v87 next];
  v110 = &v103;
  if ((v89 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v89);
    *(&v103 - 8) = &v140;
    *(&v103 - 7) = 0;
    *(&v103 - 48) = 1;
    *(&v103 - 5) = 0;
    *(&v103 - 32) = 1;
    *(&v103 - 3) = v94;
    *(&v103 - 2) = 128;
    v95 = swift_allocObject();
    *(v95 + 16) = sub_1CF8F9138;
    *(v95 + 24) = &v103 - 10;
    v138 = sub_1CF9034B4;
    v139 = v95;
    aBlock = MEMORY[0x1E69E9820];
    v135 = 1107296256;
    v136 = sub_1CEFE7548;
    v137 = &block_descriptor_1917;
    v96 = _Block_copy(&aBlock);

    aBlock = 0;
    v97 = [v128 executeSwift:v96 error:&aBlock];
    _Block_release(v96);
    v93 = aBlock;
    LOBYTE(v96) = swift_isEscapingClosureAtFileLocation();

    if (v96)
    {
      goto LABEL_65;
    }

    if (!v97)
    {
      goto LABEL_56;
    }

    v98 = v108;
    sub_1CF800340(v128, v126);
    if (*(v98 + qword_1EDEBBAE8))
    {
      if (qword_1EDEAD4D8 != -1)
      {
        swift_once();
      }

      v110 = qword_1EDEBBC10;
      LOBYTE(v133) = 1;
      v99 = swift_allocObject();
      v99[2] = &v133;
      v99[3] = sub_1CF480F64;
      v99[4] = v98;
      v100 = swift_allocObject();
      *(v100 + 16) = sub_1CF8F913C;
      *(v100 + 24) = v99;
      v138 = sub_1CF1C0B54;
      v139 = v100;
      aBlock = MEMORY[0x1E69E9820];
      v135 = 1107296256;
      v136 = sub_1CEFFD02C;
      v137 = &block_descriptor_1927;
      v101 = _Block_copy(&aBlock);

      [v110 runIfPossible_];
      _Block_release(v101);
      LOBYTE(v101) = swift_isEscapingClosureAtFileLocation();

      if (v101)
      {
        goto LABEL_67;
      }
    }

    else
    {
      *(v98 + qword_1EDEBBAE8) = 1;
      if (qword_1EDEAD4D8 != -1)
      {
        swift_once();
      }

      [qword_1EDEBBC10 addWatcher_];
LABEL_51:
    }

    sub_1CEFCCC44(v117, &unk_1EC4BE360, &qword_1CF9FE650);
    v50 = v111;
    v51 = v118;
    goto LABEL_15;
  }

  MEMORY[0x1EEE9AC00](v89);
  *(&v103 - 8) = 128;
  *(&v103 - 7) = &v140;
  *(&v103 - 6) = v108;
  *(&v103 - 5) = 0;
  *(&v103 - 32) = 1;
  *(&v103 - 3) = 0;
  *(&v103 - 16) = 1;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_1CF8F9148;
  *(v90 + 24) = &v103 - 10;
  v138 = sub_1CF9034B4;
  v139 = v90;
  aBlock = MEMORY[0x1E69E9820];
  v135 = 1107296256;
  v136 = sub_1CEFE7548;
  v137 = &block_descriptor_1934;
  v91 = _Block_copy(&aBlock);

  aBlock = 0;
  v92 = [v128 executeSwift:v91 error:&aBlock];
  _Block_release(v91);
  v93 = aBlock;
  LOBYTE(v91) = swift_isEscapingClosureAtFileLocation();

  if (v91)
  {
    goto LABEL_66;
  }

  if (v92)
  {
    sub_1CF800340(v128, v126);
    goto LABEL_51;
  }

LABEL_56:
  sub_1CF9E57F8();

  swift_willThrow();

LABEL_57:
  sub_1CEFCCC44(v117, &unk_1EC4BE360, &qword_1CF9FE650);

LABEL_54:
  v102 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF7EB7F4(void *a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t *a7)
{
  v11 = *(a3 + 16);
  sub_1CF7EB934(a1, a2, a4, a5, __src);
  if (!v7)
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v13, __src, sizeof(v13));
      sub_1CEFCCC44(v13, &unk_1EC4BFC20, &unk_1CFA0A290);
      sub_1CF6E9500(v12, a1, a2);
    }

    else
    {
      memcpy(v13, __src, sizeof(v13));
      if (v13[344] != 2)
      {
        if (sub_1CF7DC52C(a1, a2, *a7))
        {
          sub_1CF8DD3D8(a1, a2, v12);
        }

        else
        {
          sub_1CF6E9500(v12, a1, a2);
        }
      }

      sub_1CEFCCC44(v13, &unk_1EC4BFC20, &unk_1CFA0A290);
    }
  }
}

void sub_1CF7EB934(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v15 = a3;
  v16 = a4;
  v11 = a1;
  v12 = a2;
  v13 = 0;
  (*(*v5 + 168))(__src, &v11, a4 == 2, &v15, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v6)
  {
    sub_1CEFD0994(v11, v12, v13);
  }

  else
  {
    sub_1CEFD0994(v11, v12, v13);
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v8, __src, sizeof(v8));
      sub_1CEFCCC44(v8, &unk_1EC4BFD20, &unk_1CFA05440);
      sub_1CF095754(v9);
      memcpy(a5, v9, 0x208uLL);
    }

    else
    {
      memcpy(a5, __src, 0x208uLL);
      nullsub_1(a5);
    }
  }
}

void sub_1CF7EBA74(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v16 = a2;
  v17 = a3;
  v7 = a3 == 2;
  v13 = a1;
  v14 = 0;
  v8 = *(*v4 + 168);
  v9 = a1;
  v8(__src, &v13, v7, &v16, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v5)
  {
    sub_1CF1E53F8(v13, v14, SHIBYTE(v14));
  }

  else
  {
    sub_1CF1E53F8(v13, v14, SHIBYTE(v14));
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v10, __src, sizeof(v10));
      sub_1CEFCCC44(v10, &qword_1EC4BFDC8, &unk_1CFA054A0);
      sub_1CF095754(v11);
      memcpy(a4, v11, 0x208uLL);
    }

    else
    {
      memcpy(a4, __src, 0x208uLL);
      nullsub_1(a4);
    }
  }
}

uint64_t sub_1CF7EBBCC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    v6 = (a3 + 32);
    while (1)
    {
      v7 = *v6++;
      v8 = v7;

      v5(&v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1CF7EBC5C(uint64_t *a1, uint64_t *a2, int a3)
{
  v38 = a2;
  v4 = v3;
  v30 = a3;
  v6 = sub_1CF9E7388();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_1CF9E74C8();
  v9 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1CF9E6448();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v31 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_defaultActor_initialize();
  *(v4 + 161) = 0;
  v41 = a1;
  sub_1CF1A91AC(a1, v40);
  sub_1CF1A91AC(v40, v39);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C06E0, &unk_1CFA05AF0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + 72) = 0;
  sub_1CF1A91AC(v39, v17 + 16);
  v18 = v17 + *(*v17 + 136);
  v19 = sub_1CF9E5CF8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = type metadata accessor for FPFeedbackManagerState();
  v21 = *(v20 + 20);
  v22 = MEMORY[0x1E69E7CC0];
  v23 = sub_1CF4E06FC(MEMORY[0x1E69E7CC0]);
  __swift_destroy_boxed_opaque_existential_1(v39);
  *(v18 + v21) = v23;
  v24 = v18 + *(v20 + 24);
  *v24 = 0;
  *(v24 + 8) = 1;
  *(v17 + 56) = 0xD000000000000016;
  *(v17 + 64) = 0x80000001CFA46EE0;
  v25 = v37;
  sub_1CF1A6E34();
  __swift_destroy_boxed_opaque_existential_1(v40);
  if (v25)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DB0, &qword_1CFA17F98);
    swift_defaultActor_destroy();
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v41);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 112) = v17;
    v26 = v38;
    sub_1CF1A91AC(v38, v4 + 120);
    *(v4 + 160) = v30 & 1;
    sub_1CEFD57E0(0, &qword_1EDEA3510, 0x1E69E9620);
    sub_1CF9E63F8();
    v40[0] = v22;
    sub_1CEFCCCA4(&unk_1EDEA3518, MEMORY[0x1E69E8120]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DC0, &qword_1CFA046D0);
    sub_1CEFCCCEC(&qword_1EDEA3770, &unk_1EC4C4DC0, &qword_1CFA046D0);
    sub_1CF9E77B8();
    (*(v35 + 104))(v34, *MEMORY[0x1E69E8098], v36);
    v27 = sub_1CF9E74D8();
    __swift_destroy_boxed_opaque_existential_1(v26);
    __swift_destroy_boxed_opaque_existential_1(v41);
    *(v4 + 168) = v27;
  }

  return v4;
}

uint64_t sub_1CF7EC0A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  *(v6 + 2240) = v5;
  *(v6 + 2232) = a5;
  *(v6 + 1705) = a4;
  *(v6 + 2224) = a3;
  *(v6 + 2216) = a2;
  *(v6 + 2208) = a1;
  v7 = sub_1CF9E5E28();
  *(v6 + 2248) = v7;
  v8 = *(v7 - 8);
  *(v6 + 2256) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 2264) = swift_task_alloc();
  v10 = sub_1CF9E5E38();
  *(v6 + 2272) = v10;
  v11 = *(v10 - 8);
  *(v6 + 2280) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 2288) = swift_task_alloc();
  v13 = sub_1CF9E6388();
  *(v6 + 2296) = v13;
  v14 = *(v13 - 8);
  *(v6 + 2304) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 2312) = swift_task_alloc();
  *(v6 + 2320) = swift_task_alloc();
  v16 = sub_1CF9E6498();
  *(v6 + 2328) = v16;
  v17 = *(v16 - 8);
  *(v6 + 2336) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 2344) = swift_task_alloc();
  *(v6 + 2352) = swift_task_alloc();
  v19 = sub_1CF9E6448();
  *(v6 + 2360) = v19;
  v20 = *(v19 - 8);
  *(v6 + 2368) = v20;
  v21 = *(v20 + 64) + 15;
  *(v6 + 2376) = swift_task_alloc();
  v22 = sub_1CF9E73D8();
  *(v6 + 2384) = v22;
  v23 = *(v22 - 8);
  *(v6 + 2392) = v23;
  v24 = *(v23 + 64) + 15;
  *(v6 + 2400) = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8) + 64) + 15;
  *(v6 + 2408) = swift_task_alloc();
  *(v6 + 2416) = swift_task_alloc();
  *(v6 + 2424) = swift_task_alloc();
  v26 = sub_1CF9E5A58();
  *(v6 + 2432) = v26;
  v27 = *(v26 - 8);
  *(v6 + 2440) = v27;
  *(v6 + 2448) = *(v27 + 64);
  *(v6 + 2456) = swift_task_alloc();
  *(v6 + 2464) = swift_task_alloc();
  *(v6 + 2472) = swift_task_alloc();
  *(v6 + 2480) = swift_task_alloc();
  v28 = type metadata accessor for FPFeedbackManagerState();
  *(v6 + 2488) = v28;
  v29 = *(*(v28 - 8) + 64) + 15;
  *(v6 + 2496) = swift_task_alloc();
  *(v6 + 2504) = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0) - 8) + 64) + 15;
  *(v6 + 2512) = swift_task_alloc();
  *(v6 + 2520) = swift_task_alloc();
  *(v6 + 2528) = swift_task_alloc();
  *(v6 + 2536) = swift_task_alloc();
  v31 = sub_1CF9E5CF8();
  *(v6 + 2544) = v31;
  v32 = *(v31 - 8);
  *(v6 + 2552) = v32;
  v33 = *(v32 + 64) + 15;
  *(v6 + 2560) = swift_task_alloc();
  *(v6 + 2568) = swift_task_alloc();
  *(v6 + 2576) = swift_task_alloc();
  *(v6 + 2584) = swift_task_alloc();
  *(v6 + 2592) = swift_task_alloc();
  *(v6 + 2600) = swift_task_alloc();
  v34 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1CF7EC59C, v5, 0);
}

uint64_t sub_1CF7EC59C()
{
  v309 = *MEMORY[0x1E69E9840];
  if (!fpfs_supports_tap_to_feedback())
  {
    v2 = *(v0 + 2208);
    v3 = *(v2 + 16);
    v4 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v304 = MEMORY[0x1E69E7CC0];
      sub_1CEFFA19C(0, v3, 0);
      v4 = v304;
      v5 = (v2 + 32);
      do
      {
        v6 = v5[2];
        v7 = v5[3];
        v8 = v5[4];
        *(v0 + 192) = v5[5];
        v9 = v5[1];
        *(v0 + 112) = *v5;
        *(v0 + 128) = v9;
        *(v0 + 160) = v7;
        *(v0 + 176) = v8;
        *(v0 + 144) = v6;
        v10 = *(v0 + 200);
        sub_1CEFCCBDC(v0 + 112, v0 + 208, &qword_1EC4C2298, &qword_1CFA107F0);
        sub_1CF1A8950(v0 + 128);

        v12 = v304[2];
        v11 = v304[3];
        if (v12 >= v11 >> 1)
        {
          sub_1CEFFA19C((v11 > 1), v12 + 1, 1);
        }

        v13 = *(v0 + 112);
        v14 = *(v0 + 120);
        v15 = *(v0 + 121);
        v304[2] = v12 + 1;
        v16 = &v304[2 * v12];
        v16[4] = v13;
        *(v16 + 40) = v14;
        *(v16 + 41) = v15;
        v5 += 6;
        --v3;
      }

      while (v3);
    }

    v17 = 10;
    goto LABEL_9;
  }

  v1 = *(*(v0 + 2240) + 112);
  *(v0 + 2608) = v1;
  sub_1CF1A6E34();
  v30 = v1;
  v31 = *(v0 + 2552);
  v32 = *(v0 + 2544);
  v33 = *(v0 + 2536);
  v258 = v30;
  v34 = v30 + *(*v30 + 136);
  swift_beginAccess();
  sub_1CEFCCBDC(v34, v33, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v35 = *(v31 + 48);
  *(v0 + 2616) = v35;
  *(v0 + 2624) = (v31 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v36 = v35(v33, 1, v32);
  if (v36 == 1)
  {
    sub_1CEFCCC44(*(v0 + 2536), &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  else
  {
    v37 = *(v0 + 2600);
    v38 = *(v0 + 2592);
    v39 = *(v0 + 2552);
    v40 = *(v0 + 2544);
    (*(v39 + 32))(v37, *(v0 + 2536), v40);
    sub_1CF9E5CC8();
    v41 = sub_1CF9E5C58();
    v42 = *(v39 + 8);
    v42(v38, v40);
    v42(v37, v40);
    if ((v41 & 1) == 0)
    {
      v131 = *(v0 + 2208);
      v132 = *(v131 + 16);
      v4 = MEMORY[0x1E69E7CC0];
      if (v132)
      {
        v305 = MEMORY[0x1E69E7CC0];
        sub_1CEFFA19C(0, v132, 0);
        v4 = v305;
        v133 = (v131 + 32);
        do
        {
          v134 = v133[2];
          v135 = v133[3];
          v136 = v133[4];
          *(v0 + 1344) = v133[5];
          v137 = v133[1];
          *(v0 + 1264) = *v133;
          *(v0 + 1280) = v137;
          *(v0 + 1312) = v135;
          *(v0 + 1328) = v136;
          *(v0 + 1296) = v134;
          v138 = *(v0 + 1352);
          sub_1CEFCCBDC(v0 + 1264, v0 + 16, &qword_1EC4C2298, &qword_1CFA107F0);
          sub_1CF1A8950(v0 + 1280);

          v140 = v305[2];
          v139 = v305[3];
          if (v140 >= v139 >> 1)
          {
            sub_1CEFFA19C((v139 > 1), v140 + 1, 1);
          }

          v141 = *(v0 + 1264);
          v142 = *(v0 + 1272);
          v143 = *(v0 + 1273);
          v305[2] = v140 + 1;
          v144 = &v305[2 * v140];
          v144[4] = v141;
          *(v144 + 40) = v142;
          *(v144 + 41) = v143;
          v133 += 6;
          --v132;
        }

        while (v132);
      }

      v240 = 0;
      goto LABEL_10;
    }
  }

  v43 = *(v0 + 2208);
  v44 = *(v43 + 16);
  v45 = MEMORY[0x1E69E7CC0];
  if (!v44)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_68;
  }

  v46 = 0;
  v255 = (v0 + 1904);
  v238 = (v0 + 1808);
  v263 = (v0 + 1712);
  v266 = *(v0 + 2488);
  v4 = MEMORY[0x1E69E7CC0];
  v252 = v43 + 32;
  v47 = v258;
  v273 = *(v43 + 16);
  v260 = v34;
  do
  {
    while (1)
    {
      if (v46 >= v44)
      {
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
      }

      v48 = (v252 + 96 * v46);
      v49 = v48[1];
      *(v0 + 304) = *v48;
      *(v0 + 320) = v49;
      v50 = v48[2];
      v51 = v48[3];
      v52 = v48[5];
      *(v0 + 368) = v48[4];
      *(v0 + 384) = v52;
      *(v0 + 336) = v50;
      *(v0 + 352) = v51;
      v53 = __OFADD__(v46++, 1);
      if (v53)
      {
        goto LABEL_134;
      }

      v249 = *(v0 + 304);
      v246 = *(v0 + 312);
      v243 = *(v0 + 313);
      v54 = *(v0 + 368);
      v55 = *(v0 + 376);
      if (v55 != 2 && (v55 & 1) != 0)
      {
        break;
      }

      v296 = *(v0 + 360);
      v300 = *(v0 + 352);
      v269 = v46;
      v288 = *(v0 + 328);
      v292 = *(v0 + 320);
      v56 = *(v0 + 336);
      v284 = *(v0 + 344);
      v281 = *(v0 + 345);
      v277 = *(v0 + 346);
      v57 = v47;
      v59 = *(v47 + 40);
      v58 = *(v47 + 48);
      __swift_project_boxed_opaque_existential_1(v57 + 2, v59);
      v60 = v57[7];
      v61 = v57[8];
      v62 = *(v58 + 16);
      sub_1CEFCCBDC(v0 + 304, v0 + 400, &qword_1EC4C2298, &qword_1CFA107F0);
      v63 = v62(v60, v61, v59, v58);
      v65 = v64;
      if (v64 >> 60 == 15)
      {
        v66 = v260;
      }

      else
      {
        v67 = v63;
        v68 = *(v0 + 2504);
        v69 = *(v0 + 2488);
        v70 = sub_1CF9E5688();
        v71 = *(v70 + 48);
        v72 = *(v70 + 52);
        swift_allocObject();
        sub_1CEFE42D4(v67, v65);
        sub_1CF9E5678();
        sub_1CEFCCCA4(&qword_1EC4C4D70, type metadata accessor for FPFeedbackManagerState);
        sub_1CF9E5668();
        v73 = *(v0 + 2504);

        sub_1CEFE48D8(v67, v65);
        sub_1CEFE48D8(v67, v65);
        v66 = v260;
        swift_beginAccess();
        sub_1CF8F9B10(v73, v260, type metadata accessor for FPFeedbackManagerState);
        swift_endAccess();
        v63 = sub_1CEFD5338(v73, type metadata accessor for FPFeedbackManagerState);
      }

      v47 = v258;
      *(v258 + 72) = 0;
      *(v0 + 1904) = v292;
      *(v0 + 1912) = v288;
      *(v0 + 1920) = v56;
      *(v0 + 1928) = v284;
      *(v0 + 1929) = v281;
      *(v0 + 1930) = v277;
      *(v0 + 1936) = v300;
      *(v0 + 1944) = v296;
      v74 = *(v0 + 1920);
      *v263 = *v255;
      *(v0 + 1728) = v74;
      *(v0 + 1744) = *(v0 + 1936);
      v75 = *(v66 + *(v266 + 20));
      if (*(v75 + 16))
      {
        v63 = sub_1CF7BF13C(v263);
        if (v76)
        {
          v77 = *(*(v75 + 56) + 8 * v63);
          goto LABEL_38;
        }
      }

      sub_1CF8DEF70(v63, 0.0, 1.0);
      v77 = v78;
      swift_beginAccess();
      v79 = *(v266 + 20);
      v80 = *(v66 + v79);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v303 = *(v66 + v79);
      *(v66 + v79) = 0x8000000000000000;
      v83 = sub_1CF7BF13C(v263);
      v84 = *(*v303 + 16);
      v85 = (v82 & 1) == 0;
      v86 = v84 + v85;
      if (__OFADD__(v84, v85))
      {
        goto LABEL_137;
      }

      v87 = v82;
      if (*(*v303 + 24) >= v86)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v88 = *v303;
          if ((v82 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4D60, &qword_1CFA079B0);
          v110 = sub_1CF9E7BC8();
          v88 = v110;
          v111 = *(*v303 + 16);
          if (v111)
          {
            v112 = (v110 + 64);
            v113 = ((1 << *(v88 + 32)) + 63) >> 6;
            if (v88 != *v303 || v112 >= *v303 + 64 + 8 * v113)
            {
              memmove(v112, (*v303 + 64), 8 * v113);
              v111 = *(*v303 + 16);
            }

            v114 = 0;
            *(v88 + 16) = v111;
            v115 = 1 << *(*v303 + 32);
            v116 = *(*v303 + 64);
            if (v115 < 64)
            {
              v117 = ~(-1 << v115);
            }

            else
            {
              v117 = -1;
            }

            v118 = v117 & v116;
            v119 = (v115 + 63) >> 6;
            if ((v117 & v116) == 0)
            {
              goto LABEL_58;
            }

            while (1)
            {
              v120 = __clz(__rbit64(v118));
              for (v118 &= v118 - 1; ; v118 = (v122 - 1) & v122)
              {
                v123 = v120 | (v114 << 6);
                v124 = (*(*v303 + 48) + 48 * v123);
                v125 = *v124;
                v126 = v124[2];
                *(v0 + 1824) = v124[1];
                *(v0 + 1840) = v126;
                *v238 = v125;
                *&v125 = *(*(*v303 + 56) + 8 * v123);
                v127 = (*(v88 + 48) + 48 * v123);
                v128 = *v124;
                v129 = v124[2];
                v127[1] = v124[1];
                v127[2] = v129;
                *v127 = v128;
                *(*(v88 + 56) + 8 * v123) = v125;
                sub_1CF1A8F60(v238, v0 + 1760);
                if (v118)
                {
                  break;
                }

LABEL_58:
                v121 = v114;
                do
                {
                  v114 = v121 + 1;
                  if (__OFADD__(v121, 1))
                  {
                    goto LABEL_139;
                  }

                  if (v114 >= v119)
                  {
                    goto LABEL_65;
                  }

                  v122 = *(*v303 + 64 + 8 * v114);
                  ++v121;
                }

                while (!v122);
                v120 = __clz(__rbit64(v122));
              }
            }
          }

LABEL_65:

          v47 = v258;
          if ((v87 & 1) == 0)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        sub_1CF7C37F4(v86, isUniquelyReferenced_nonNull_native);
        v88 = *v303;
        v89 = sub_1CF7BF13C(v263);
        if ((v87 & 1) != (v90 & 1))
        {
          v212 = *MEMORY[0x1E69E9840];

          return sub_1CF9E8108();
        }

        v83 = v89;
        if ((v87 & 1) == 0)
        {
LABEL_32:
          *(v88 + 8 * (v83 >> 6) + 64) |= 1 << v83;
          v91 = (*(v88 + 48) + 48 * v83);
          v92 = *v263;
          v93 = *(v0 + 1744);
          v91[1] = *(v0 + 1728);
          v91[2] = v93;
          *v91 = v92;
          *(*(v88 + 56) + 8 * v83) = v77;
          v94 = *(v88 + 16);
          v53 = __OFADD__(v94, 1);
          v95 = v94 + 1;
          if (v53)
          {
            goto LABEL_138;
          }

          *(v88 + 16) = v95;
          sub_1CF1A8F60(v255, v0 + 1856);
          goto LABEL_37;
        }
      }

      *(*(v88 + 56) + 8 * v83) = v77;
LABEL_37:
      v96 = *(v0 + 2496);
      v97 = *(v0 + 2488);
      v98 = *(v260 + v79);
      *(v260 + v79) = v88;

      swift_endAccess();
      *(v47 + 72) = 0;
      v99 = sub_1CF9E56C8();
      v100 = *(v99 + 48);
      v101 = *(v99 + 52);
      swift_allocObject();
      sub_1CF9E56B8();
      sub_1CF9E5698();
      sub_1CEFDA34C(v260, v96, type metadata accessor for FPFeedbackManagerState);
      sub_1CEFCCCA4(&qword_1EC4C4D68, type metadata accessor for FPFeedbackManagerState);
      v102 = sub_1CF9E56A8();
      v104 = v103;
      sub_1CEFD5338(*(v0 + 2496), type metadata accessor for FPFeedbackManagerState);
      v106 = *(v47 + 40);
      v105 = *(v47 + 48);
      __swift_project_boxed_opaque_existential_1((v47 + 16), v106);
      (*(v105 + 8))(*(v47 + 56), *(v47 + 64), v102, v104, v106, v105);
      sub_1CEFE4714(v102, v104);

LABEL_38:
      v46 = v269;
      v44 = v273;
      if (v77 > v54)
      {
        sub_1CEFD0988(v249, v246, v243);
        sub_1CEFCCC44(v0 + 304, &qword_1EC4C2298, &qword_1CFA107F0);
        goto LABEL_43;
      }

      sub_1CEFCCC44(v0 + 304, &qword_1EC4C2298, &qword_1CFA107F0);
      if (v269 == v273)
      {
        goto LABEL_75;
      }
    }

    sub_1CEFD0988(v249, *(v0 + 312), v243);
LABEL_43:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1CF1F77F0(0, v4[2] + 1, 1, v4);
    }

    v108 = v4[2];
    v107 = v4[3];
    if (v108 >= v107 >> 1)
    {
      v4 = sub_1CF1F77F0((v107 > 1), v108 + 1, 1, v4);
    }

    v4[2] = v108 + 1;
    v109 = &v4[2 * v108];
    v109[4] = v249;
    *(v109 + 40) = v246;
    *(v109 + 41) = v243;
  }

  while (v46 != v44);
LABEL_75:
  v145 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  v146 = *(v0 + 2208) + 32;
  v278 = (v0 + 512);
  v270 = v146;
  do
  {
    v147 = (v146 + 96 * v145);
    while (1)
    {
      if (v145 >= v44)
      {
        goto LABEL_135;
      }

      v148 = v147[1];
      *(v0 + 496) = *v147;
      *(v0 + 512) = v148;
      v149 = v147[2];
      v150 = v147[3];
      v151 = v147[5];
      *(v0 + 560) = v147[4];
      *(v0 + 576) = v151;
      *(v0 + 528) = v149;
      *(v0 + 544) = v150;
      if (__OFADD__(v145, 1))
      {
        goto LABEL_136;
      }

      v301 = v145 + 1;
      v285 = *(v0 + 576);
      v293 = *(v0 + 584);
      v152 = *(v0 + 504);
      v153 = *(v0 + 505);
      v154 = *(v0 + 496);
      *(v0 + 2168) = v154;
      v297 = v152;
      *(v0 + 2176) = v152;
      v289 = v153;
      *(v0 + 2177) = v153;
      v155 = swift_task_alloc();
      *(v155 + 16) = v0 + 2168;
      sub_1CEFCCBDC(v0 + 496, v0 + 592, &qword_1EC4C2298, &qword_1CFA107F0);
      v156 = sub_1CF7F74E4(sub_1CF902DE4, v155, v4);

      if ((v156 & 1) == 0)
      {
        break;
      }

      sub_1CEFCCC44(v0 + 496, &qword_1EC4C2298, &qword_1CFA107F0);
      ++v145;
      v147 += 6;
      v44 = v273;
      if (v301 == v273)
      {
        v130 = v258;
        goto LABEL_88;
      }
    }

    sub_1CEFD0988(v154, v297, v289);
    sub_1CF1A8918(v278, v0 + 1648);

    sub_1CEFCCC44(v0 + 496, &qword_1EC4C2298, &qword_1CFA107F0);
    v157 = swift_isUniquelyReferenced_nonNull_native();
    v158 = v293;
    if ((v157 & 1) == 0)
    {
      v164 = sub_1CF1F796C(0, v45[2] + 1, 1, v45);
      v158 = v293;
      v45 = v164;
    }

    v159 = v285;
    v161 = v45[2];
    v160 = v45[3];
    v162 = v161 + 1;
    v44 = v273;
    if (v161 >= v160 >> 1)
    {
      v165 = sub_1CF1F796C((v160 > 1), v161 + 1, 1, v45);
      v162 = v161 + 1;
      v158 = v293;
      v159 = v285;
      v45 = v165;
    }

    *&v303[6] = *v278;
    *&v303[22] = *(v0 + 528);
    *&v303[38] = *(v0 + 544);
    *&v303[47] = *(v0 + 553);
    v45[2] = v162;
    v163 = &v45[12 * v161];
    v163[4] = v154;
    *(v163 + 40) = v297;
    *(v163 + 41) = v289;
    *(v163 + 74) = *&v303[32];
    *(v163 + 58) = *&v303[16];
    *(v163 + 42) = *v303;
    *(v163 + 89) = *&v303[47];
    *(v163 + 105) = *v308;
    *(v163 + 27) = *&v308[3];
    v163[14] = v159;
    v163[15] = v158;
    v145 = v301;
    v146 = v270;
  }

  while (v301 != v273);
LABEL_68:
  v130 = v258;
LABEL_88:
  *(v0 + 2640) = v4;
  *(v0 + 2632) = 0;
  if (!v45[2])
  {

    v17 = 3;
    goto LABEL_9;
  }

  v166 = *(v0 + 2240);
  v167 = *(v45 + 3);
  *(v0 + 688) = *(v45 + 2);
  *(v0 + 704) = v167;
  v168 = *(v45 + 7);
  v170 = *(v45 + 4);
  v169 = *(v45 + 5);
  *(v0 + 752) = *(v45 + 6);
  *(v0 + 768) = v168;
  *(v0 + 720) = v170;
  *(v0 + 736) = v169;
  sub_1CEFCCBDC(v0 + 688, v0 + 784, &qword_1EC4BE6B0, &unk_1CF9FE520);

  if ((*(v166 + 160) & 1) == 0 && !fp_shouldObfuscateFilenames())
  {

    if (v44)
    {
      v189 = *(v0 + 2208);
      v307 = MEMORY[0x1E69E7CC0];
      sub_1CEFFA19C(0, v44, 0);
      v4 = v307;
      v190 = (v189 + 32);
      for (i = v44 - 1; ; --i)
      {
        v192 = v190[2];
        v193 = v190[3];
        v194 = v190[4];
        *(v0 + 960) = v190[5];
        v195 = v190[1];
        *(v0 + 880) = *v190;
        *(v0 + 896) = v195;
        *(v0 + 928) = v193;
        *(v0 + 944) = v194;
        *(v0 + 912) = v192;
        v196 = *(v0 + 968);
        sub_1CEFCCBDC(v0 + 880, v0 + 976, &qword_1EC4C2298, &qword_1CFA107F0);
        sub_1CF1A8950(v0 + 896);

        v198 = v307[2];
        v197 = v307[3];
        if (v198 >= v197 >> 1)
        {
          sub_1CEFFA19C((v197 > 1), v198 + 1, 1);
        }

        v199 = *(v0 + 880);
        v200 = *(v0 + 888);
        v201 = *(v0 + 889);
        v307[2] = v198 + 1;
        v202 = &v307[2 * v198];
        v202[4] = v199;
        *(v202 + 40) = v200;
        *(v202 + 41) = v201;
        if (!i)
        {
          break;
        }

        v190 += 6;
      }

      sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
    }

    else
    {
      sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
      v4 = MEMORY[0x1E69E7CC0];
    }

    v17 = 11;
LABEL_9:
    v240 = v17;
LABEL_10:
    v18 = *(v0 + 2600);
    v19 = *(v0 + 2592);
    v20 = *(v0 + 2584);
    v21 = *(v0 + 2576);
    v22 = *(v0 + 2568);
    v23 = *(v0 + 2560);
    v24 = *(v0 + 2536);
    v25 = *(v0 + 2528);
    v26 = *(v0 + 2520);
    v242 = *(v0 + 2512);
    v245 = *(v0 + 2504);
    v248 = *(v0 + 2496);
    v251 = *(v0 + 2480);
    v254 = *(v0 + 2472);
    v257 = *(v0 + 2464);
    v259 = *(v0 + 2456);
    v262 = *(v0 + 2424);
    v265 = *(v0 + 2416);
    v268 = *(v0 + 2408);
    v272 = *(v0 + 2400);
    v276 = *(v0 + 2376);
    v280 = *(v0 + 2352);
    v283 = *(v0 + 2344);
    v287 = *(v0 + 2320);
    v291 = *(v0 + 2312);
    v295 = *(v0 + 2288);
    v299 = *(v0 + 2264);

    v27 = *(v0 + 8);
    v28 = *MEMORY[0x1E69E9840];

    return v27(v240, v4);
  }

  v171 = *(v0 + 2240);
  if (*(v171 + 161) == 1)
  {

    if (v44)
    {
      v172 = *(v0 + 2208);
      v306 = MEMORY[0x1E69E7CC0];
      sub_1CEFFA19C(0, v44, 0);
      v4 = v306;
      v173 = (v172 + 32);
      for (j = v44 - 1; ; --j)
      {
        v175 = v173[2];
        v176 = v173[3];
        v177 = v173[4];
        *(v0 + 1536) = v173[5];
        v178 = v173[1];
        *(v0 + 1456) = *v173;
        *(v0 + 1472) = v178;
        *(v0 + 1504) = v176;
        *(v0 + 1520) = v177;
        *(v0 + 1488) = v175;
        v179 = *(v0 + 1544);
        sub_1CEFCCBDC(v0 + 1456, v0 + 1360, &qword_1EC4C2298, &qword_1CFA107F0);
        sub_1CF1A8950(v0 + 1472);

        v181 = v306[2];
        v180 = v306[3];
        if (v181 >= v180 >> 1)
        {
          sub_1CEFFA19C((v180 > 1), v181 + 1, 1);
        }

        v182 = *(v0 + 1456);
        v183 = *(v0 + 1464);
        v184 = *(v0 + 1465);
        v306[2] = v181 + 1;
        v185 = &v306[2 * v181];
        v185[4] = v182;
        *(v185 + 40) = v183;
        *(v185 + 41) = v184;
        if (!j)
        {
          break;
        }

        v173 += 6;
      }

      sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
    }

    else
    {
      sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
      v4 = MEMORY[0x1E69E7CC0];
    }

    v17 = 5;
    goto LABEL_9;
  }

  v186 = *(v0 + 2488);
  v187 = *(*v130 + 136);
  *(v0 + 2648) = v187;
  v188 = v130 + v187 + *(v186 + 24);
  v302 = (*(v188 + 8) & 1) == 0 && *v188 > 2uLL;
  if (!fpfs_is_internal_build())
  {
    goto LABEL_126;
  }

  v203 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v204 = sub_1CF9E6888();
  v205 = [v203 initWithSuiteName_];

  if (!v205)
  {
    goto LABEL_126;
  }

  v206 = sub_1CF9E6888();
  v207 = [v205 objectForKey_];

  if (!v207)
  {

    *(v0 + 1992) = 0u;
    *(v0 + 2008) = 0u;
    sub_1CEFCCC44(v0 + 1992, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_126:
    v211 = 300;
    goto LABEL_127;
  }

  sub_1CF9E7728();
  swift_unknownObjectRelease();
  sub_1CEFCCC44(v0 + 1992, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  v208 = sub_1CF9E6888();
  v209 = [v205 integerForKey_];

  v210 = 5;
  if (v209 > 5)
  {
    v210 = v209;
  }

  if (v210 >= 600)
  {
    v211 = 600;
  }

  else
  {
    v211 = v210;
  }

LABEL_127:
  v213 = *(v0 + 2440);
  v214 = *(v0 + 2432);
  v215 = *(v0 + 2424);
  v216 = *(v0 + 2224);
  *(v171 + 161) = 1;
  v217 = swift_allocObject();
  *(v0 + 2656) = v217;
  *(v217 + 16) = 0;
  sub_1CEFCCBDC(v216, v215, &unk_1EC4BE310, qword_1CF9FCBE0);
  v218 = *(v213 + 48);
  *(v0 + 2664) = v218;
  *(v0 + 2672) = (v213 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v218(v215, 1, v214) == 1)
  {
    sub_1CEFCCC44(*(v0 + 2424), &unk_1EC4BE310, qword_1CF9FCBE0);
    v219 = 0;
  }

  else
  {
    v298 = *(v0 + 2480);
    v241 = *(v0 + 2472);
    v220 = *(v0 + 2432);
    v286 = v220;
    v290 = *(v0 + 2440);
    v221 = *(v0 + 2424);
    v222 = *(v0 + 2400);
    v223 = *(v0 + 2392);
    v224 = *(v0 + 2384);
    v247 = *(v0 + 2448);
    v250 = *(v0 + 2376);
    v253 = *(v0 + 2368);
    v256 = *(v0 + 2360);
    v271 = *(v0 + 2352);
    v274 = *(v0 + 2336);
    v261 = *(v0 + 2344);
    v264 = *(v0 + 2320);
    v279 = *(v0 + 2328);
    v282 = *(v0 + 2312);
    v267 = *(v0 + 2304);
    v294 = *(v0 + 2296);
    v225 = *(v0 + 2240);
    v239 = *(v0 + 2232);
    v244 = *(v290 + 32);
    v244();
    sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
    v236 = *(v225 + 168);
    *(v0 + 2200) = MEMORY[0x1E69E7CC0];
    sub_1CEFCCCA4(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CF9E77B8();
    v219 = sub_1CF9E73E8();
    (*(v223 + 8))(v222, v224);
    ObjectType = swift_getObjectType();
    v226 = swift_allocObject();
    swift_weakInit();
    sub_1CF1A91AC(v239, v0 + 1952);
    (*(v290 + 16))(v241, v298, v286);
    v227 = (*(v290 + 80) + 64) & ~*(v290 + 80);
    v228 = swift_allocObject();
    *(v228 + 16) = v226;
    sub_1CF054EA0((v0 + 1952), v228 + 24);
    (v244)(v228 + v227, v241, v286);
    *(v228 + ((v247 + v227 + 7) & 0xFFFFFFFFFFFFFFF8)) = v217;

    sub_1CF042F9C();
    sub_1CEFD5828(0, v250, sub_1CF8F8F44, v228);

    (*(v253 + 8))(v250, v256);

    sub_1CF9E6478();
    *v264 = v211;
    (*(v267 + 104))(v264, *MEMORY[0x1E69E7F48], v294);
    MEMORY[0x1D3868740](v261, v264);
    v229 = *(v267 + 8);
    v229(v264, v294);
    v275 = *(v274 + 8);
    v275(v261, v279);
    sub_1CEFD5B64(v264);
    sub_1CEFD5BD8(v282);
    MEMORY[0x1D3869770](v271, v264, v282, ObjectType);
    v229(v282, v294);
    v229(v264, v294);
    v275(v271, v279);
    sub_1CF9E7428();
    sub_1CF9E7448();
    (*(v290 + 8))(v298, v286);
    swift_unknownObjectRetain();
  }

  *(v0 + 2680) = v219;
  v230 = *(v0 + 2232);
  v231 = *(v0 + 768);
  v232 = *(v0 + 776);
  *(v0 + 2688) = v232;
  v233 = *__swift_project_boxed_opaque_existential_1(v230, v230[3]);
  v234 = swift_task_alloc();
  *(v0 + 2696) = v234;
  *v234 = v0;
  v234[1] = sub_1CF7EE1B4;
  v235 = *MEMORY[0x1E69E9840];

  return sub_1CF36E168(v231, v232, v302);
}

uint64_t sub_1CF7EE1B4(char a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 2696);
  v3 = *(*v1 + 2240);
  v7 = *v1;
  *(*v1 + 1706) = a1;

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1CF7EE2F8, v3, 0);
}

uint64_t sub_1CF7EE2F8()
{
  v206 = *MEMORY[0x1E69E9840];
  if (*(v0 + 2680))
  {
    v1 = *(v0 + 2680);
    swift_getObjectType();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 1706);
  v3 = *(v0 + 2488);
  *(*(v0 + 2240) + 161) = 0;
  v4 = *(v3 + 24);
  v5 = *(v0 + 2648);
  v6 = *(v0 + 2608);
  if (v2 == 1)
  {
    v7 = (v6 + v5 + v4);
    if (v7[1])
    {
      v8 = 1;
    }

    else
    {
      v9 = *v7;
      v10 = __CFADD__(v9, 1);
      v8 = v9 + 1;
      if (v10)
      {
        __break(1u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *(v0 + 2632);
  v12 = v6 + v5 + v4;
  *v12 = v8;
  *(v12 + 8) = 0;
  *(v6 + 72) = 1;
  sub_1CF7F1D28();
  if (v11)
  {
    v13 = *(v0 + 2680);
    v14 = *(v0 + 2656);
    v15 = *(v0 + 2640);

    swift_unknownObjectRelease();
LABEL_10:
    sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
    v16 = *(v0 + 2600);
    v17 = *(v0 + 2592);
    v18 = *(v0 + 2584);
    v19 = *(v0 + 2576);
    v20 = *(v0 + 2568);
    v21 = *(v0 + 2560);
    v22 = *(v0 + 2536);
    v23 = *(v0 + 2528);
    v24 = *(v0 + 2520);
    v25 = *(v0 + 2512);
    v156 = *(v0 + 2504);
    v158 = *(v0 + 2496);
    v160 = *(v0 + 2480);
    v162 = *(v0 + 2472);
    v164 = *(v0 + 2464);
    v166 = *(v0 + 2456);
    v168 = *(v0 + 2424);
    v170 = *(v0 + 2416);
    v172 = *(v0 + 2408);
    v174 = *(v0 + 2400);
    v176 = *(v0 + 2376);
    v178 = *(v0 + 2352);
    v180 = *(v0 + 2344);
    v184 = *(v0 + 2320);
    v188 = *(v0 + 2312);
    v192 = *(v0 + 2288);
    v198 = *(v0 + 2264);

    v26 = *(v0 + 8);
    v27 = *MEMORY[0x1E69E9840];

    return v26();
  }

  if (*(v0 + 1706) > 2u)
  {
    goto LABEL_16;
  }

  if (*(v0 + 1706))
  {
    if (*(v0 + 1706) != 1)
    {
      v79 = *(v0 + 2640);
      v80 = *(v0 + 2608);
      v81 = *(v0 + 2584);

      sub_1CF9E5C18();
      sub_1CF1A6E34();
      v82 = *(v0 + 2648);
      v83 = *(v0 + 2608);
      v84 = *(v0 + 2552);
      v85 = *(v0 + 2544);
      v86 = *(v0 + 2528);
      (*(v84 + 16))(v86, *(v0 + 2584), v85);
      (*(v84 + 56))(v86, 0, 1, v85);
      swift_beginAccess();
      sub_1CEFDA9E0(v86, v83 + v82, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      swift_endAccess();
      *(v83 + 72) = 1;
      sub_1CF7F1D28();
      v111 = *(v0 + 2672);
      v112 = *(v0 + 2664);
      v113 = *(v0 + 2432);
      v114 = *(v0 + 2416);
      v115 = *(v0 + 2224);
      (*(*(v0 + 2552) + 8))(*(v0 + 2584), *(v0 + 2544));
      sub_1CEFCCBDC(v115, v114, &unk_1EC4BE310, qword_1CF9FCBE0);
      v116 = v112(v114, 1, v113);
      v117 = *(v0 + 2680);
      if (v116 == 1)
      {
        v118 = *(v0 + 2656);
        sub_1CEFCCC44(*(v0 + 2416), &unk_1EC4BE310, qword_1CF9FCBE0);
      }

      else
      {
        (*(*(v0 + 2440) + 32))(*(v0 + 2464), *(v0 + 2416), *(v0 + 2432));
        v144 = [objc_opt_self() defaultManager];
        v145 = sub_1CF9E5928();
        *(v0 + 2192) = 0;
        v146 = [v144 removeItemAtURL:v145 error:v0 + 2192];

        v147 = *(v0 + 2192);
        v148 = *(v0 + 2656);
        v149 = *(v0 + 2464);
        v150 = *(v0 + 2440);
        v151 = *(v0 + 2432);
        if ((v146 & 1) == 0)
        {
          v154 = v147;
          sub_1CF9E57F8();

          swift_willThrow();
          swift_unknownObjectRelease();
          (*(v150 + 8))(v149, v151);
          goto LABEL_44;
        }

        v152 = *(v150 + 8);
        v153 = v147;
        v152(v149, v151);
      }

      swift_unknownObjectRelease();
      sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
      v155 = MEMORY[0x1E69E7CC0];
      v48 = 8;
      goto LABEL_21;
    }

LABEL_16:
    v193 = *(v0 + 2616);
    v199 = *(v0 + 2624);
    v29 = *(v0 + 2568);
    v30 = *(v0 + 2552);
    v185 = *(v0 + 2544);
    v31 = *(v0 + 2512);
    v32 = *(v0 + 2288);
    v181 = *(v0 + 2280);
    v189 = *(v0 + 2272);
    v33 = *(v0 + 2264);
    v34 = *(v0 + 2256);
    v35 = *(v0 + 2248);
    v36 = *(v0 + 2608) + *(v0 + 2648) + *(*(v0 + 2488) + 24);
    v37 = *(v36 + 8) | (*v36 != 1);
    v38 = [objc_opt_self() defaultStore];
    v39 = v38;
    v40 = &selRef_spsFeedbackBackoffAfterOtherResponses_MultipleAttempts_InSeconds;
    if ((v37 & 1) == 0)
    {
      v40 = &selRef_spsFeedbackBackoffAfterOtherResponsesInSeconds;
    }

    [v38 *v40];

    sub_1CF9E5E08();
    (*(v34 + 104))(v33, *MEMORY[0x1E6969A98], v35);
    sub_1CF9E5CC8();
    sub_1CF9E5DF8();
    v41 = *(v30 + 8);
    v41(v29, v185);
    (*(v34 + 8))(v33, v35);
    (*(v181 + 8))(v32, v189);
    v42 = v193(v31, 1, v185);
    v43 = *(v0 + 2512);
    if (v42 == 1)
    {
      v44 = *(v0 + 2680);
      v45 = *(v0 + 2656);
      v46 = *(v0 + 2640);

      sub_1CEFCCC44(v43, &unk_1EC4BEDC0, &unk_1CF9FEEA0);

      swift_unknownObjectRelease();
      sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
      v47 = MEMORY[0x1E69E7CC0];
LABEL_20:
      v155 = v47;
      v48 = 4;
LABEL_21:
      v157 = v48;
      v49 = *(v0 + 2600);
      v50 = *(v0 + 2592);
      v51 = *(v0 + 2584);
      v52 = *(v0 + 2576);
      v53 = *(v0 + 2568);
      v54 = *(v0 + 2560);
      v55 = *(v0 + 2536);
      v56 = *(v0 + 2528);
      v57 = *(v0 + 2520);
      v58 = *(v0 + 2512);
      v159 = *(v0 + 2504);
      v161 = *(v0 + 2496);
      v163 = *(v0 + 2480);
      v165 = *(v0 + 2472);
      v167 = *(v0 + 2464);
      v169 = *(v0 + 2456);
      v171 = *(v0 + 2424);
      v173 = *(v0 + 2416);
      v175 = *(v0 + 2408);
      v177 = *(v0 + 2400);
      v179 = *(v0 + 2376);
      v182 = *(v0 + 2352);
      v186 = *(v0 + 2344);
      v190 = *(v0 + 2320);
      v194 = *(v0 + 2312);
      v200 = *(v0 + 2288);
      v204 = *(v0 + 2264);

      v59 = *(v0 + 8);
      v60 = *MEMORY[0x1E69E9840];

      return v59(v157, v155);
    }

    v61 = *(v0 + 2608);
    (*(*(v0 + 2552) + 32))(*(v0 + 2560), *(v0 + 2512), *(v0 + 2544));
    sub_1CF1A6E34();
    v62 = *(v0 + 2648);
    v63 = *(v0 + 2608);
    v64 = *(v0 + 2552);
    v65 = *(v0 + 2544);
    v66 = *(v0 + 2528);
    (*(v64 + 16))(v66, *(v0 + 2560), v65);
    (*(v64 + 56))(v66, 0, 1, v65);
    swift_beginAccess();
    sub_1CEFDA9E0(v66, v63 + v62, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    swift_endAccess();
    *(v63 + 72) = 1;
    sub_1CF7F1D28();
    v93 = *(v0 + 2672);
    v94 = *(v0 + 2664);
    v95 = *(v0 + 2432);
    v96 = *(v0 + 2408);
    sub_1CEFCCBDC(*(v0 + 2224), v96, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v94(v96, 1, v95) == 1)
    {
      v97 = *(v0 + 2680);
      v98 = *(v0 + 2408);
      v41(*(v0 + 2560), *(v0 + 2544));
      swift_unknownObjectRelease();
      sub_1CEFCCC44(v98, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_33:
      v110 = *(v0 + 2656);

      sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
      v155 = *(v0 + 2640);
      v48 = 7;
      goto LABEL_21;
    }

    (*(*(v0 + 2440) + 32))(*(v0 + 2456), *(v0 + 2408), *(v0 + 2432));
    v99 = [objc_opt_self() defaultManager];
    v100 = sub_1CF9E5928();
    *(v0 + 2184) = 0;
    v101 = [v99 removeItemAtURL:v100 error:v0 + 2184];

    v102 = *(v0 + 2184);
    v103 = *(v0 + 2680);
    if (v101)
    {
      v104 = *(v0 + 2560);
      v105 = *(v0 + 2544);
      v106 = *(v0 + 2456);
      v107 = *(v0 + 2440);
      v108 = *(v0 + 2432);
      v109 = *(v0 + 2680);
      swift_unknownObjectRelease();
      (*(v107 + 8))(v106, v108);
      v41(v104, v105);
      goto LABEL_33;
    }

    v138 = v102;
    v139 = *(v0 + 2640);
    v197 = *(v0 + 2560);
    v203 = *(v0 + 2656);
    v140 = *(v0 + 2544);
    v141 = *(v0 + 2456);
    v142 = *(v0 + 2440);
    v143 = *(v0 + 2432);

    sub_1CF9E57F8();

    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v142 + 8))(v141, v143);
    v41(v197, v140);
LABEL_44:

    goto LABEL_10;
  }

  v195 = *(v0 + 2616);
  v201 = *(v0 + 2624);
  v67 = *(v0 + 2568);
  v183 = *(v0 + 2552);
  v187 = *(v0 + 2544);
  v68 = *(v0 + 2520);
  v69 = *(v0 + 2288);
  v70 = *(v0 + 2280);
  v191 = *(v0 + 2272);
  v71 = *(v0 + 2264);
  v72 = *(v0 + 2256);
  v73 = *(v0 + 2248);
  v74 = [objc_opt_self() defaultStore];
  [v74 spsFeedbackBackoffAfterSayingYesInSeconds];

  sub_1CF9E5E08();
  (*(v72 + 104))(v71, *MEMORY[0x1E6969A98], v73);
  sub_1CF9E5CC8();
  sub_1CF9E5DF8();
  v75 = *(v183 + 8);
  *(v0 + 2704) = v75;
  *(v0 + 2712) = (v183 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v75(v67, v187);
  (*(v72 + 8))(v71, v73);
  (*(v70 + 8))(v69, v191);
  if (v195(v68, 1, v187) == 1)
  {
    v76 = *(v0 + 2680);
    v77 = *(v0 + 2656);
    v78 = *(v0 + 2520);
    swift_unknownObjectRelease();
    sub_1CEFCCC44(v78, &unk_1EC4BEDC0, &unk_1CF9FEEA0);

    sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
    v47 = *(v0 + 2640);
    goto LABEL_20;
  }

  v87 = *(v0 + 2608);
  (*(*(v0 + 2552) + 32))(*(v0 + 2576), *(v0 + 2520), *(v0 + 2544));
  sub_1CF1A6E34();
  v88 = *(v0 + 2648);
  v89 = *(v0 + 2608);
  v90 = *(v0 + 2552);
  v91 = *(v0 + 2544);
  v92 = *(v0 + 2528);
  (*(v90 + 16))(v92, *(v0 + 2576), v91);
  (*(v90 + 56))(v92, 0, 1, v91);
  swift_beginAccess();
  sub_1CEFDA9E0(v92, v89 + v88, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  swift_endAccess();
  *(v89 + 72) = 1;
  sub_1CF7F1D28();
  v119 = *(v0 + 2688);
  v120 = *(v0 + 2232);
  v121 = *(v0 + 688);
  v122 = *(v0 + 696);
  v123 = *(v0 + 697);
  v124 = *(v0 + 704);
  v125 = *(v0 + 712);
  v202 = *(v0 + 720);
  v205 = *(v0 + 2656);
  v196 = *(v0 + 1705);
  sub_1CEFCCBDC(v0 + 688, v0 + 1072, &qword_1EC4BE6B0, &unk_1CF9FE520);

  sub_1CF1A8950(v0 + 704);
  sub_1CEFCCBDC(v0 + 688, v0 + 1168, &qword_1EC4BE6B0, &unk_1CF9FE520);

  sub_1CF1A8950(v0 + 704);
  v126 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v127 = sub_1CF9E6888();

  v128 = [v126 initWithDomain:v127 code:v202 userInfo:0];
  *(v0 + 2720) = v128;

  sub_1CEFD0994(v121, v122, v123);
  sub_1CEFD0994(v121, v122, v123);
  v129 = __swift_project_boxed_opaque_existential_1(v120, v120[3]);
  sub_1CEFCCBDC(v0 + 688, v0 + 1552, &qword_1EC4BE6B0, &unk_1CF9FE520);
  sub_1CF1A8950(v0 + 704);

  v130 = sub_1CF9051CC(v121, v122 | (v123 << 8));
  v132 = v131;
  *(v0 + 2728) = v131;
  sub_1CEFD0994(v121, v122, v123);
  v133 = *(v205 + 16);
  v134 = *v129;
  v135 = swift_task_alloc();
  *(v0 + 2736) = v135;
  *v135 = v0;
  v135[1] = sub_1CF7EF3EC;
  v136 = *(v0 + 2216);
  v137 = *MEMORY[0x1E69E9840];

  return sub_1CF36F790(v130, v132, v128, v136, v133 & 1, v196 & 1);
}

uint64_t sub_1CF7EF3EC()
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 2736);
  v4 = *v1;
  v2[343] = v0;

  v5 = v2[341];
  if (v0)
  {
    v6 = v2[330];
    v7 = v2[280];

    v8 = sub_1CF7EF7DC;
  }

  else
  {
    v7 = v2[280];

    v8 = sub_1CF7EF56C;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1CF7EF56C()
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 2712);
  v2 = *(v0 + 2704);
  v3 = *(v0 + 2680);
  v4 = *(v0 + 2656);
  v5 = *(v0 + 2576);
  v6 = *(v0 + 2544);

  swift_unknownObjectRelease();
  v2(v5, v6);

  sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
  v7 = *(v0 + 2600);
  v8 = *(v0 + 2592);
  v9 = *(v0 + 2584);
  v10 = *(v0 + 2576);
  v11 = *(v0 + 2568);
  v12 = *(v0 + 2560);
  v13 = *(v0 + 2536);
  v14 = *(v0 + 2528);
  v15 = *(v0 + 2520);
  v16 = *(v0 + 2512);
  v20 = *(v0 + 2640);
  v21 = *(v0 + 2504);
  v22 = *(v0 + 2496);
  v23 = *(v0 + 2480);
  v24 = *(v0 + 2472);
  v25 = *(v0 + 2464);
  v26 = *(v0 + 2456);
  v27 = *(v0 + 2424);
  v28 = *(v0 + 2416);
  v29 = *(v0 + 2408);
  v30 = *(v0 + 2400);
  v31 = *(v0 + 2376);
  v32 = *(v0 + 2352);
  v33 = *(v0 + 2344);
  v34 = *(v0 + 2320);
  v35 = *(v0 + 2312);
  v36 = *(v0 + 2288);
  v37 = *(v0 + 2264);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x1E69E9840];

  return v17(6, v20);
}

uint64_t sub_1CF7EF7DC()
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 2712);
  v2 = *(v0 + 2704);
  v3 = *(v0 + 2680);
  v4 = *(v0 + 2656);
  v5 = *(v0 + 2576);
  v6 = *(v0 + 2544);

  swift_unknownObjectRelease();
  v2(v5, v6);

  sub_1CEFCCC44(v0 + 688, &qword_1EC4BE6B0, &unk_1CF9FE520);
  v7 = *(v0 + 2600);
  v8 = *(v0 + 2592);
  v9 = *(v0 + 2584);
  v10 = *(v0 + 2576);
  v11 = *(v0 + 2568);
  v12 = *(v0 + 2560);
  v13 = *(v0 + 2536);
  v14 = *(v0 + 2528);
  v15 = *(v0 + 2520);
  v16 = *(v0 + 2512);
  v20 = *(v0 + 2744);
  v21 = *(v0 + 2504);
  v22 = *(v0 + 2496);
  v23 = *(v0 + 2480);
  v24 = *(v0 + 2472);
  v25 = *(v0 + 2464);
  v26 = *(v0 + 2456);
  v27 = *(v0 + 2424);
  v28 = *(v0 + 2416);
  v29 = *(v0 + 2408);
  v30 = *(v0 + 2400);
  v31 = *(v0 + 2376);
  v32 = *(v0 + 2352);
  v33 = *(v0 + 2344);
  v34 = *(v0 + 2320);
  v35 = *(v0 + 2312);
  v36 = *(v0 + 2288);
  v37 = *(v0 + 2264);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x1E69E9840];

  return v17();
}

uint64_t sub_1CF7EFA44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v46 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, v1, 0);
  v2 = v46;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_1CF9E77C8();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v35 = v3 + 72;
  v36 = v1;
  v38 = v3 + 64;
  v39 = v3;
  v37 = v9;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v12 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_36;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_37;
    }

    v40 = v8;
    v41 = v2;
    v13 = *(v3 + 56);
    v14 = *(v3 + 48) + 16 * v7;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 9);
    v18 = (v13 + 16 * v7);
    v19 = *v18;
    v20 = v18[1];
    swift_bridgeObjectRetain_n();
    sub_1CEFD0988(v15, v16, v17);
    sub_1CEFD0988(v15, v16, v17);
    sub_1CEFD0994(v15, v16, v17);

    sub_1CEFD0988(v15, v16, v17);
    if (v17)
    {
      v44 = 0x28726568746F2ELL;
      v45 = 0xE700000000000000;
      v21 = NSFileProviderItemIdentifier.description.getter();
      MEMORY[0x1D3868CC0](v21);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      sub_1CEFD0994(v15, v16, 1);
      goto LABEL_23;
    }

    v44 = 0x286E69616D2ELL;
    v45 = 0xE600000000000000;
    if (v16)
    {
      if (v16 != 1)
      {
        if (v15)
        {
          v23 = 0x6873617274;
        }

        else
        {
          v23 = 1953460082;
        }

        if (v15)
        {
          v24 = 0xE500000000000000;
        }

        else
        {
          v24 = 0xE400000000000000;
        }

        goto LABEL_22;
      }

      v42 = 0x284449656C6966;
      v43 = 0xE700000000000000;
    }

    else
    {
      v42 = 0x284449636F64;
      v43 = 0xE600000000000000;
    }

    v22 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v22);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v23 = v42;
    v24 = v43;
LABEL_22:
    MEMORY[0x1D3868CC0](v23, v24);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
LABEL_23:
    MEMORY[0x1D3868CC0](2108704, 0xE300000000000000);
    MEMORY[0x1D3868CC0](v19, v20);
    sub_1CEFD0994(v15, v16, v17);

    v2 = v41;
    v26 = *(v41 + 16);
    v25 = *(v41 + 24);
    if (v26 >= v25 >> 1)
    {
      result = sub_1CEFE95CC((v25 > 1), v26 + 1, 1);
      v2 = v41;
    }

    *(v2 + 16) = v26 + 1;
    v27 = v2 + 16 * v26;
    *(v27 + 32) = v44;
    *(v27 + 40) = v45;
    v3 = v39;
    v10 = 1 << *(v39 + 32);
    if (v7 >= v10)
    {
      goto LABEL_38;
    }

    v4 = v38;
    v28 = *(v38 + 8 * v12);
    if ((v28 & (1 << v7)) == 0)
    {
      goto LABEL_39;
    }

    v9 = v37;
    if (v37 != *(v39 + 36))
    {
      goto LABEL_40;
    }

    v29 = v28 & (-2 << (v7 & 0x3F));
    if (v29)
    {
      v10 = __clz(__rbit64(v29)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v11 = v36;
    }

    else
    {
      v30 = v12 << 6;
      v31 = v12 + 1;
      v11 = v36;
      v32 = (v35 + 8 * v12);
      while (v31 < (v10 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_1CF0663D8(v7, v37, 0);
          v10 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_1CF0663D8(v7, v37, 0);
    }

LABEL_4:
    v8 = v40 + 1;
    v7 = v10;
    if (v40 + 1 == v11)
    {
      return v2;
    }
  }

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
  return result;
}

uint64_t sub_1CF7EFEA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x1E69E7CC0];
  v28 = *(a1 + 16);
  sub_1CEFFA19C(0, v1, 0);
  v2 = v30;
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_1CF9E77C8();
  v6 = v28;
  v7 = a1;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v7 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(v7 + 36);
    v13 = *(v7 + 48) + 16 * result;
    v14 = *v13;
    v15 = *(v13 + 8);
    v17 = *(v30 + 16);
    v16 = *(v30 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = *(v7 + 36);
      v27 = result;
      sub_1CEFFA19C((v16 > 1), v17 + 1, 1);
      v6 = v28;
      v7 = a1;
      v12 = v26;
      result = v27;
    }

    *(v30 + 16) = v17 + 1;
    v18 = v30 + 16 * v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;
    *(v18 + 41) = 0;
    v9 = 1 << *(v7 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v19 = *(v3 + 8 * v10);
    if ((v19 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(v7 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (result & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (a1 + 64 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          sub_1CF0663D8(result, v12, 0);
          v6 = v28;
          v7 = a1;
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      sub_1CF0663D8(result, v12, 0);
      v6 = v28;
      v7 = a1;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1CF7F00D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v55 = MEMORY[0x1E69E7CC0];
  sub_1CEFFA19C(0, v1, 0);
  v2 = v55;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_1CF9E77C8();
  if (result < 0 || (v7 = result, result >= 1 << *(v3 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v33 = v3 + 72;
    v34 = v1;
    v8 = *(v3 + 36);
    v9 = 1;
    v35 = v8;
    v36 = v3 + 64;
    v37 = v3;
    while ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) != 0)
    {
      if (v8 != *(v3 + 36))
      {
        goto LABEL_26;
      }

      v56 = v7 >> 6;
      v38 = v9;
      v10 = *(v3 + 56);
      v11 = (*(v3 + 48) + 48 * v7);
      v12 = *(v11 + 27);
      v13 = v11[1];
      v42 = *v11;
      v43[0] = v13;
      *(v43 + 11) = v12;
      v14 = v11[1];
      v40 = *v11;
      *v41 = v14;
      *&v41[11] = *(v11 + 27);
      v15 = (v10 + 24 * v7);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      memmove(&__dst, v11, 0x2BuLL);
      v46[0] = v40;
      v46[1] = *v41;
      v46[2] = *&v41[16];
      v47 = v16;
      v48 = v17;
      v49 = v18;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1CEFCCBDC(&v42, v39, &qword_1EC4BE1A0, &unk_1CFA17130);
      sub_1CEFCCBDC(&__dst, v39, &qword_1EC4BE1A0, &unk_1CFA17130);
      sub_1CEFCCC44(v46, &qword_1EC4C4D88, &qword_1CFA17F78);
      v50 = __dst;
      v51[0] = v45[0];
      *(v51 + 11) = *(v45 + 11);
      v52 = v16;
      v53 = v17;
      v54 = v18;
      v19 = __dst;
      v20 = BYTE8(__dst);
      v21 = BYTE9(__dst);
      sub_1CEFD0988(__dst, BYTE8(__dst), SBYTE9(__dst));
      result = sub_1CEFCCC44(&v50, &qword_1EC4C4D88, &qword_1CFA17F78);
      v55 = v2;
      v23 = *(v2 + 16);
      v22 = *(v2 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_1CEFFA19C((v22 > 1), v23 + 1, 1);
        v2 = v55;
      }

      *(v2 + 16) = v23 + 1;
      v24 = v2 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v20;
      *(v24 + 41) = v21;
      v3 = v37;
      v25 = 1 << *(v37 + 32);
      if (v7 >= v25)
      {
        goto LABEL_27;
      }

      v4 = v36;
      v26 = *(v36 + 8 * v56);
      if ((v26 & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      v8 = v35;
      if (v35 != *(v37 + 36))
      {
        goto LABEL_29;
      }

      v27 = v26 & (-2 << (v7 & 0x3F));
      if (v27)
      {
        v7 = __clz(__rbit64(v27)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v56 << 6;
        v29 = v56 + 1;
        v30 = (v33 + 8 * v56);
        while (v29 < (v25 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1CF0663D8(v7, v35, 0);
            v7 = __clz(__rbit64(v31)) + v28;
            goto LABEL_19;
          }
        }

        result = sub_1CF0663D8(v7, v35, 0);
        v7 = v25;
      }

LABEL_19:
      if (v38 == v34)
      {
        return v2;
      }

      if ((v7 & 0x8000000000000000) == 0)
      {
        v9 = v38 + 1;
        if (v7 < 1 << *(v37 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void *sub_1CF7F0454(void (*a1)(__int128 *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  for (i = (a3 + 41); ; i += 16)
  {
    v8 = *i;
    v9 = *(i - 1);
    v32 = *(i - 9);
    v33 = v9;
    v34 = v8;
    sub_1CEFD0988(v32, v9, v8);
    a1(&v26, &v32);
    if (v3)
    {
      break;
    }

    sub_1CEFD0994(v32, v33, v34);
    if (*(&v27 + 1))
    {
      v22 = v28;
      v23 = v29;
      v24 = v30;
      v25 = v31;
      v20 = v26;
      v21 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1CF1F7AB4(0, v6[2] + 1, 1, v6);
      }

      v11 = v6[2];
      v10 = v6[3];
      if (v11 >= v10 >> 1)
      {
        v6 = sub_1CF1F7AB4((v10 > 1), v11 + 1, 1, v6);
      }

      v16 = v22;
      v17 = v23;
      v18 = v24;
      v19 = v25;
      v12 = v20;
      v15 = v21;
      v6[2] = v11 + 1;
      v13 = &v6[12 * v11];
      v13[3] = v15;
      v13[6] = v18;
      v13[7] = v19;
      v13[4] = v16;
      v13[5] = v17;
      v13[2] = v12;
    }

    else
    {
      v22 = v28;
      v23 = v29;
      v24 = v30;
      v25 = v31;
      v20 = v26;
      v21 = v27;
      sub_1CEFCCC44(&v20, &qword_1EC4C4D78, &qword_1CFA17F68);
    }

    if (!--v4)
    {
      return v6;
    }
  }

  sub_1CEFD0994(v32, v33, v34);

  return v6;
}

uint64_t sub_1CF7F0654(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2)
{
  v4 = v3;
  v55 = a1;
  v56 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48B8, &unk_1CFA180E0);
  v5 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v52 = (&v47 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v47 - v10;
  v12 = *v2;
  v11 = *(v2 + 8);
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  v15 = *(v2 + 40);
  v16 = *(v2 + 48);
  v66 = MEMORY[0x1E69E7CC0];
  v67[0] = v13;
  v67[1] = v14;
  v68 = v15;
  v69 = v16;
  v17 = *(v2 + 16);
  sub_1CF0BA900(v12, v11, v17 & 1);
  v58 = v12;
  v59 = v11;
  sub_1CF0BA900(v12, v11, v17 & 1);
  sub_1CEFCCBDC(v67, v65, &qword_1EC4C48A0, &unk_1CFA16E40);
  result = sub_1CEFCCBDC(&v69, v65, &qword_1EC4C48A8, &qword_1CFA180F0);
  if (v17 & 1) != 0 || (v15)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  if (v59 != v14)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v57 = v16 + 64;
  v48 = v16 + 72;
  v47 = MEMORY[0x1E69E7CC0];
  v19 = v58;
  v20 = v59;
  v51 = v13;
  v50 = v16;
  v49 = v14;
  while (1)
  {
    if (v19 == v13)
    {
      sub_1CF0663D8(v58, v59, 0);
      sub_1CF0663D8(v13, v14, 0);

      sub_1CF0663D8(v13, v20, 0);
      return v47;
    }

    if (v19 < v58)
    {
      goto LABEL_32;
    }

    if (v14 != v59)
    {
      goto LABEL_33;
    }

    if (v19 >= v13)
    {
      goto LABEL_34;
    }

    if (v19 < 0)
    {
      goto LABEL_35;
    }

    v21 = 1 << *(v16 + 32);
    if (v19 >= v21)
    {
      goto LABEL_35;
    }

    v61 = v20;
    v22 = v19 >> 6;
    v23 = *(v57 + 8 * (v19 >> 6));
    if (((v23 >> v19) & 1) == 0)
    {
      goto LABEL_36;
    }

    if (*(v16 + 36) != v14)
    {
      goto LABEL_37;
    }

    v60 = v21;
    v24 = v53;
    v25 = v54;
    v26 = *(v54 + 48);
    v62 = v19 & 0x3F;
    v63 = v4;
    v27 = *(v16 + 48);
    v28 = *(v16 + 56);
    v29 = (v27 + 16 * v19);
    v30 = *v29;
    LOBYTE(v29) = *(v29 + 8);
    *v53 = v30;
    *(v24 + 8) = v29;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFCCBDC(v28 + *(*(v31 - 8) + 72) * v19, v24 + v26, &unk_1EC4BE360, &qword_1CF9FE650);
    v32 = *(v24 + 8);
    v33 = v52;
    *v52 = *v24;
    *(v33 + 8) = v32;
    sub_1CEFE55D0(v24 + v26, v33 + *(v25 + 48), &unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFE55D0(v33, v64, &qword_1EC4C48B8, &unk_1CFA180E0);
    v34 = v23 & (-2 << v62);
    if (v34)
    {
      v19 = __clz(__rbit64(v34)) | v19 & 0x7FFFFFFFFFFFFFC0;
      v35 = v63;
      v13 = v51;
      v16 = v50;
      v14 = v49;
    }

    else
    {
      v36 = v60;
      v37 = v22 << 6;
      v38 = v22 + 1;
      v39 = (v48 + 8 * v22);
      v13 = v51;
      v16 = v50;
      v14 = v49;
      while (v38 < (v60 + 63) >> 6)
      {
        v41 = *v39++;
        v40 = v41;
        v37 += 64;
        ++v38;
        if (v41)
        {
          v42 = v63;
          sub_1CF0BA900(v51, v49, 0);
          sub_1CF0663D8(v19, v61, 0);
          v35 = v42;
          v19 = __clz(__rbit64(v40)) + v37;
          goto LABEL_20;
        }
      }

      v43 = v63;
      sub_1CF0BA900(v51, v49, 0);
      sub_1CF0663D8(v19, v61, 0);
      v35 = v43;
      v19 = v36;
    }

LABEL_20:
    v20 = *(v16 + 36);
    v44 = v64;
    v55(v65, v64);
    v4 = v35;
    result = sub_1CEFCCC44(v44, &qword_1EC4C48B8, &unk_1CFA180E0);
    if (v35)
    {
      break;
    }

    if (v65[0])
    {
      MEMORY[0x1D3868FA0](result);
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v45 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1CF9E6D88();
      }

      result = sub_1CF9E6DE8();
      v47 = v66;
      if (v20 != v14)
      {
        goto LABEL_31;
      }
    }

    else if (v20 != v14)
    {
      goto LABEL_31;
    }
  }

  sub_1CF0663D8(v58, v59, 0);
  sub_1CF0663D8(v13, v14, 0);

  sub_1CF0663D8(v19, v20, 0);
  v46 = v47;

  return v46;
}

uint64_t sub_1CF7F0B84(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1CF9E7808();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC30, &qword_1CFA17EC0);
    sub_1CEFCCCEC(&qword_1EC4C4CE8, &qword_1EC4BFC30, &qword_1CFA17EC0);
    result = sub_1CF9E7038();
    v3 = v23;
    v5 = v24;
    v7 = v25;
    v6 = v26;
    v8 = v27;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v6 = 0;
  }

  v22 = MEMORY[0x1E69E7CC0];
  while (v3 < 0)
  {
    if (!sub_1CF9E7838() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC30, &qword_1CFA17EC0), swift_dynamicCast(), (v14 = v28) == 0))
    {
LABEL_24:
      sub_1CEFCB59C();
      return v22;
    }

LABEL_17:
    if (*(v14 + 24) < a2)
    {
      v15 = *(v14 + 32);
      v16 = *(v14 + 40);
      v20 = *(v14 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      v21 = v16;
      if ((result & 1) == 0)
      {
        result = sub_1CF1F7EA8(0, v22[2] + 1, 1, v22);
        v22 = result;
      }

      v18 = v22[2];
      v17 = v22[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_1CF1F7EA8((v17 > 1), v18 + 1, 1, v22);
        v22 = result;
      }

      v22[2] = v18 + 1;
      v19 = &v22[3 * v18];
      v19[4] = v20;
      v19[5] = v15;
      *(v19 + 48) = v21;
    }

    else
    {
    }
  }

  v12 = v6;
  v13 = v8;
  if (v8)
  {
LABEL_13:
    v8 = (v13 - 1) & v13;
    v14 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= ((v7 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v13 = *(v5 + 8 * v6);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF7F0E4C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v16 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CF9E7818())
  {
    v6 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3869C30](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v15 = v7;
      a1(&v14, &v15);
      if (v3)
      {

        return v11;
      }

      if (v14)
      {
        MEMORY[0x1D3868FA0]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1CF9E6D88();
        }

        sub_1CF9E6DE8();
        v11 = v16;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1CF7F0FF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = [objc_opt_self() sharedManager];
    v7 = *(*__swift_project_boxed_opaque_existential_1(a2, a2[3]) + 32);
    v8 = sub_1CF9E5928();
    aBlock[4] = sub_1CF1A92F8;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF0892D0;
    aBlock[3] = &block_descriptor_1896;
    v9 = _Block_copy(aBlock);

    [v6 triggerDiagnosticsFor:v7 persistingAt:v8 completionHandler:v9];
    _Block_release(v9);
  }
}

uint64_t sub_1CF7F1160(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    v3 = fpfs_dirsize();
    return v3 & ~(v3 >> 63);
  }

  else
  {
    result = sub_1CF9E7938();
    if (!v2)
    {
      return v5;
    }
  }

  return result;
}

unint64_t sub_1CF7F1200(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  aBlock[4] = sub_1CF9034B4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_6193;
  v6 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v7 = [v2 fetchSwift:v6 error:aBlock];
  _Block_release(v6);
  v8 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v7)
  {
    if (([v7 next] & 1) != 0 && (objc_msgSend(v7, sel_isNullAtIndex_, 0) & 1) == 0)
    {
      if ([v7 isNullAtIndex_])
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      if (swift_dynamicCastMetatype())
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v13 = [v7 unsignedIntAtIndex_];

      v11 = 0;
      v10 = v13;
    }

    else
    {

      v10 = 0;
      v11 = 1;
    }

    LOBYTE(aBlock[0]) = v11;
    result = v10 | (v11 << 32);
  }

  else
  {
    sub_1CF9E57F8();

    result = swift_willThrow();
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1CF7F145C(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  aBlock[4] = sub_1CF9034B4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_6200;
  v6 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v7 = [v2 fetchSwift:v6 error:aBlock];
  _Block_release(v6);
  v8 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v7)
  {
    if (([v7 next] & 1) != 0 && (objc_msgSend(v7, sel_isNullAtIndex_, 0) & 1) == 0)
    {
      if ([v7 isNullAtIndex_])
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      if (swift_dynamicCastMetatype())
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v5 = [v7 unsignedLongLongAtIndex_];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_1CF9E57F8();

    swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

void *sub_1CF7F16AC(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  aBlock[4] = sub_1CF9034B4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_4867;
  v6 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v7 = [v2 fetchSwift:v6 error:aBlock];
  _Block_release(v6);
  v8 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v7)
  {
    if (([v7 next] & 1) != 0 && (objc_msgSend(v7, sel_isNullAtIndex_, 0) & 1) == 0)
    {
      if ([v7 isNullAtIndex_])
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      if (swift_dynamicCastMetatype())
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v5 = [v7 longLongAtIndex_];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_1CF9E57F8();

    swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

void *sub_1CF7F18FC(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  aBlock[4] = sub_1CF9034B4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_2048;
  v6 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v7 = [v2 fetchSwift:v6 error:aBlock];
  _Block_release(v6);
  v8 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v7)
  {
    if (([v7 next] & 1) != 0 && (objc_msgSend(v7, sel_isNullAtIndex_, 0) & 1) == 0)
    {
      if ([v7 isNullAtIndex_])
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      if (swift_dynamicCastMetatype())
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v5 = [v7 longAtIndex_];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_1CF9E57F8();

    swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1CF7F1B4C(void *a1, void (*a2)(uint64_t *__return_ptr))
{
  if (objc_sync_enter(a1))
  {
    swift_unknownObjectRetain();
    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a1);
  }

  a2(&v7);
  if (v2)
  {
    if (!objc_sync_exit(a1))
    {
      return v5 & 1;
    }

LABEL_9:
    swift_unknownObjectRetain();
    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a1);
  }

  if (objc_sync_exit(a1))
  {
    goto LABEL_9;
  }

  v5 = v7;
  return v5 & 1;
}

uint64_t sub_1CF7F1C1C(uint64_t a1, void *a2)
{
  v4 = (a1 + qword_1EDEBB708);
  if (*(a1 + qword_1EDEBB708 + 8))
  {
    goto LABEL_7;
  }

  v5 = *v4;
  v6 = qword_1EDEA4990;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_7;
  }

  v8 = sub_1CEFE863C(a2);
  if ((v9 & 1) == 0)
  {

    goto LABEL_7;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  if (!__OFSUB__(v5, v10))
  {
    *v4 = v5 - v10;
    *(v4 + 8) = 0;
LABEL_7:
    swift_beginAccess();
    sub_1CF1C9DE8(0, 1, a2);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF7F1D28()
{
  v2 = v0;
  v3 = type metadata accessor for FPFeedbackManagerState();
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[72] == 1)
  {
    v0[72] = 0;
    v8 = sub_1CF9E56C8();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    v11 = *(*v0 + 136);
    swift_beginAccess();
    sub_1CEFDA34C(v2 + v11, v7, type metadata accessor for FPFeedbackManagerState);
    sub_1CEFCCCA4(&qword_1EC4C4D68, type metadata accessor for FPFeedbackManagerState);
    v12 = sub_1CF9E56A8();
    v14 = v13;
    sub_1CEFD5338(v7, type metadata accessor for FPFeedbackManagerState);
    if (!v1)
    {
      v15 = v2[5];
      v16 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v15);
      (*(v16 + 8))(v2[7], v2[8], v12, v14, v15, v16);
      sub_1CEFE4714(v12, v14);
    }
  }

  return result;
}

void sub_1CF7F1F10()
{
  if (*(v0 + 72) == 1)
  {
    *(v0 + 72) = 0;
    v2 = sub_1CF9E56C8();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    swift_beginAccess();
    v11 = *(v0 + 80);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE08, &qword_1CF9FB1C8);
    sub_1CEFCCCEC(&unk_1EC4C4D20, &qword_1EC4BDE08, &qword_1CF9FB1C8);
    v5 = sub_1CF9E56A8();
    if (v1)
    {
    }

    else
    {
      v7 = v5;
      v8 = v6;

      v9 = *(v0 + 40);
      v10 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
      (*(v10 + 8))(*(v0 + 56), *(v0 + 64), v7, v8, v9, v10);
      sub_1CEFE4714(v7, v8);
    }
  }
}

uint64_t sub_1CF7F20A0()
{
  v1 = sub_1CF9E6118();
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v1);
  if (*(v0 + 72) == 1)
  {
    *(v0 + 72) = 0;
    v4 = sub_1CF9E56C8();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    swift_beginAccess();
    v12 = *(v0 + 80);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v16 = *(v0 + 112);
    sub_1CF8F95C4();
    v7 = sub_1CF9E56A8();
    v9 = v8;
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
    (*(v11 + 8))(*(v0 + 56), *(v0 + 64), v7, v9, v10, v11);
    sub_1CEFE4714(v7, v9);
  }

  return result;
}

uint64_t sub_1CF7F241C()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = type metadata accessor for FPDownloadSchedulerFastPassState();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[72] == 1)
  {
    v0[72] = 0;
    v9 = sub_1CF9E56C8();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    v12 = *(*v0 + 136);
    swift_beginAccess();
    sub_1CEFDA34C(v1 + v12, v8, type metadata accessor for FPDownloadSchedulerFastPassState);
    sub_1CEFCCCA4(&qword_1EC4C4ED0, type metadata accessor for FPDownloadSchedulerFastPassState);
    v13 = sub_1CF9E56A8();
    v15 = v14;
    v18 = v2;
    sub_1CEFD5338(v8, type metadata accessor for FPDownloadSchedulerFastPassState);
    v16 = v1[5];
    v17 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v16);
    (*(v17 + 8))(v1[7], v1[8], v13, v15, v16, v17);
    sub_1CEFE4714(v13, v15);
  }

  return result;
}

void sub_1CF7F2850()
{
  v1 = sub_1CF9E6118();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  if (*(v0 + 72) == 1)
  {
    *(v0 + 72) = 0;
    v3 = sub_1CF9E56C8();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    swift_beginAccess();
    v11 = *(v0 + 80);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE08, &qword_1CF9FB1C8);
    sub_1CEFCCCEC(&unk_1EC4C4D20, &qword_1EC4BDE08, &qword_1CF9FB1C8);
    v6 = sub_1CF9E56A8();
    v8 = v7;

    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
    (*(v10 + 8))(*(v0 + 56), *(v0 + 64), v6, v8, v9, v10);
    sub_1CEFE4714(v6, v8);
  }
}

void sub_1CF7F2C08()
{
  v1 = sub_1CF9E6118();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  if (*(v0 + 72) == 1)
  {
    *(v0 + 72) = 0;
    v3 = sub_1CF9E56C8();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    swift_beginAccess();
    v12 = *(v0 + 80);
    type metadata accessor for FPCKReport();
    sub_1CEFCCCA4(&unk_1EC4C50E0, type metadata accessor for FPCKReport);
    v6 = v12;
    v7 = sub_1CF9E56A8();
    v9 = v8;

    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
    (*(v11 + 8))(*(v0 + 56), *(v0 + 64), v7, v9, v10, v11);
    sub_1CEFE4714(v7, v9);
  }
}

uint64_t sub_1CF7F2FB4()
{
  v1 = sub_1CF9E6118();
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v1);
  if (*(v0 + 72) == 1)
  {
    *(v0 + 72) = 0;
    v4 = sub_1CF9E56C8();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    swift_beginAccess();
    v12 = *(v0 + 80);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v16 = *(v0 + 112);
    v17 = *(v0 + 120);
    v18 = *(v0 + 121);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4EC0, &qword_1CFA05AE8);
    sub_1CEFCCCEC(&qword_1EC4C4EC8, &qword_1EC4C4EC0, &qword_1CFA05AE8);
    v7 = sub_1CF9E56A8();
    v9 = v8;

    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
    (*(v11 + 8))(*(v0 + 56), *(v0 + 64), v7, v9, v10, v11);
    sub_1CEFE4714(v7, v9);
  }

  return result;
}

uint64_t sub_1CF7F33F0()
{
  v1 = sub_1CF9E6118();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  result = (*(v4 + 16))(*(v0 + 56), *(v0 + 64), v3, v4);
  if (v6 >> 60 != 15)
  {
    v7 = result;
    v8 = v6;
    v9 = sub_1CF9E5688();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_1CEFE42D4(v7, v8);
    sub_1CF9E5678();
    sub_1CF8F9B78();
    sub_1CF9E5668();

    sub_1CEFE48D8(v7, v8);
    sub_1CEFE48D8(v7, v8);
    result = swift_beginAccess();
    *(v0 + 80) = v12;
    *(v0 + 88) = v13;
    *(v0 + 96) = v14;
    *(v0 + 104) = v15;
    *(v0 + 112) = v16;
  }

  *(v0 + 72) = 0;
  return result;
}

uint64_t sub_1CF7F3788()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = type metadata accessor for BackgroundDownloaderPacerState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  result = (*(v9 + 16))(v1[7], v1[8], v8, v9);
  if (v11 >> 60 != 15)
  {
    v12 = result;
    v13 = v11;
    v14 = sub_1CF9E5688();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_1CEFE42D4(v12, v13);
    sub_1CF9E5678();
    sub_1CEFCCCA4(&unk_1EDEA4F28, type metadata accessor for BackgroundDownloaderPacerState);
    v20 = v12;
    v21 = v13;
    sub_1CF9E5668();

    v17 = v20;
    v18 = v21;
    sub_1CEFE48D8(v20, v21);
    sub_1CEFE48D8(v17, v18);
    v19 = *(*v1 + 136);
    swift_beginAccess();
    sub_1CF8F9B10(v7, v1 + v19, type metadata accessor for BackgroundDownloaderPacerState);
    swift_endAccess();
    result = sub_1CEFD5338(v7, type metadata accessor for BackgroundDownloaderPacerState);
  }

  *(v1 + 72) = 0;
  return result;
}

uint64_t sub_1CF7F3BA8()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = type metadata accessor for FPDownloadSchedulerFastPassState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  result = (*(v9 + 16))(v1[7], v1[8], v8, v9);
  if (v11 >> 60 != 15)
  {
    v12 = result;
    v13 = v11;
    v14 = sub_1CF9E5688();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_1CEFE42D4(v12, v13);
    sub_1CF9E5678();
    sub_1CEFCCCA4(&qword_1EC4BDF90, type metadata accessor for FPDownloadSchedulerFastPassState);
    v20 = v12;
    v21 = v13;
    sub_1CF9E5668();

    v17 = v20;
    v18 = v21;
    sub_1CEFE48D8(v20, v21);
    sub_1CEFE48D8(v17, v18);
    v19 = *(*v1 + 136);
    swift_beginAccess();
    sub_1CF8F9B10(v7, v1 + v19, type metadata accessor for FPDownloadSchedulerFastPassState);
    swift_endAccess();
    result = sub_1CEFD5338(v7, type metadata accessor for FPDownloadSchedulerFastPassState);
  }

  *(v1 + 72) = 0;
  return result;
}

uint64_t sub_1CF7F3FE0(uint64_t (*a1)(__n128))
{
  v2 = sub_1CF9E6118();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  return a1(v4);
}

uint64_t sub_1CF7F4240()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v5 + 24))(v1[7], v1[8], v4, v5);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1CF4E2054(MEMORY[0x1E69E7CC0]);
  v8 = sub_1CF4E2168(v6);
  swift_beginAccess();
  v9 = v1[10];
  v10 = v1[11];
  v11 = v1[12];
  v12 = v1[13];
  v13 = v1[14];
  v1[10] = v7;
  v1[11] = v8;
  v14 = MEMORY[0x1E69E7CD0];
  v1[12] = MEMORY[0x1E69E7CD0];
  v1[13] = v14;
  v1[14] = v14;
  *(v1 + 60) = 0;

  *(v1 + 72) = 1;
  return result;
}

uint64_t sub_1CF7F4564(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 32;
    v21 = result;
    while (v7 < *(a3 + 16))
    {
      v10 = *(a3 + v9 + 48);
      v29 = *(a3 + v9 + 32);
      v30 = v10;
      v11 = *(a3 + v9 + 80);
      v31 = *(a3 + v9 + 64);
      v32 = v11;
      v12 = *(a3 + v9 + 16);
      v28[0] = *(a3 + v9);
      v28[1] = v12;
      v35 = v29;
      v36 = v10;
      v37 = v31;
      v38 = v11;
      v33 = v28[0];
      v34 = v12;
      sub_1CEFCCBDC(v28, &v22, &qword_1EC4BE6B8, &unk_1CF9FE530);
      v13 = v6(&v33);
      if (v3)
      {
        v24 = v35;
        v25 = v36;
        v26 = v37;
        v27 = v38;
        v22 = v33;
        v23 = v34;
        sub_1CEFCCC44(&v22, &qword_1EC4BE6B8, &unk_1CF9FE530);

        goto LABEL_15;
      }

      if (v13)
      {
        v24 = v35;
        v25 = v36;
        v26 = v37;
        v27 = v38;
        v22 = v33;
        v23 = v34;
        result = swift_isUniquelyReferenced_nonNull_native();
        v39 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1CF680E44(0, *(v8 + 16) + 1, 1);
          v8 = v39;
        }

        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_1CF680E44((v14 > 1), v15 + 1, 1);
          v8 = v39;
        }

        *(v8 + 16) = v15 + 1;
        v16 = (v8 + 96 * v15);
        v17 = v23;
        v16[2] = v22;
        v16[3] = v17;
        v18 = v24;
        v19 = v25;
        v20 = v27;
        v16[6] = v26;
        v16[7] = v20;
        v16[4] = v18;
        v16[5] = v19;
        v6 = v21;
      }

      else
      {
        v24 = v35;
        v25 = v36;
        v26 = v37;
        v27 = v38;
        v22 = v33;
        v23 = v34;
        result = sub_1CEFCCC44(&v22, &qword_1EC4BE6B8, &unk_1CF9FE530);
      }

      ++v7;
      v9 += 96;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_1CF7F4784(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = MEMORY[0x1E69E7CC0];
    v8 = 32;
    while (v8 - 32 < v5)
    {
      v12 = *(a3 + v8);
      v13 = v12;
      result = v6(&v13);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v14 = v7;
        if ((result & 1) == 0)
        {
          result = sub_1CF680C3C(0, *(v7 + 16) + 1, 1);
          v7 = v14;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_1CF680C3C((v9 > 1), v10 + 1, 1);
          v7 = v14;
        }

        *(v7 + 16) = v10 + 1;
        *(v7 + v10 + 32) = v12;
      }

      v5 = *(a3 + 16);
      v11 = v8 - 31;
      ++v8;
      if (v11 == v5)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v7;
  }

  return result;
}

uint64_t sub_1CF7F48D8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v12 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 0, 0);
  do
  {
    v2 = v1 & -v1;
    switch(v2)
    {
      case 1:
        v3 = 0x61705F7463697665;
        v4 = 0xEE00736567616B63;
        break;
      case 4:
        v3 = 0xD00000000000001ALL;
        v4 = 0x80000001CFA5D060;
        break;
      case 2:
        v3 = 0xD000000000000015;
        v4 = 0x80000001CFA5D080;
        break;
      default:
        sub_1CF056E98();
        v5 = sub_1CF9E6B28();
        MEMORY[0x1D3868CC0](v5);

        v3 = 30768;
        v4 = 0xE200000000000000;
        break;
    }

    v7 = *(v12 + 16);
    v6 = *(v12 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1CEFE95CC((v6 > 1), v7 + 1, 1);
    }

    *(v12 + 16) = v7 + 1;
    v8 = v12 + 16 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = v4;
    v9 = v1 == v2;
    v1 ^= v2;
  }

  while (!v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v10 = sub_1CF9E67D8();

  return v10;
}

uint64_t sub_1CF7F4AF4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v12 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 0, 0);
  do
  {
    v2 = v1 & -v1;
    if (v2 > 15)
    {
      if (v2 > 63)
      {
        if (v2 == 64)
        {
          v3 = 0xE800000000000000;
          v4 = 0x64657463656A6572;
          goto LABEL_23;
        }

        if (v2 == 128)
        {
          v4 = 0x75636552797A616CLL;
          v3 = 0xED00006576697372;
          goto LABEL_23;
        }
      }

      else
      {
        if (v2 == 16)
        {
          v3 = 0xE700000000000000;
          v4 = 0x6465726F6E6769;
          goto LABEL_23;
        }

        if (v2 == 32)
        {
          v4 = 0x6544746E65726170;
          v3 = 0xED0000646574656CLL;
          goto LABEL_23;
        }
      }
    }

    else if (v2 > 3)
    {
      if (v2 == 4)
      {
        v3 = 0xE800000000000000;
        v4 = 0x7974706D45746F6ELL;
        goto LABEL_23;
      }

      if (v2 == 8)
      {
        v3 = 0xE700000000000000;
        v4 = 0x676E696E6E7572;
        goto LABEL_23;
      }
    }

    else
    {
      if (v2 == 1)
      {
        v3 = 0xE500000000000000;
        v4 = 0x7964616572;
        goto LABEL_23;
      }

      if (v2 == 2)
      {
        v3 = 0xE900000000000065;
        v4 = 0x7669737275636572;
        goto LABEL_23;
      }
    }

    sub_1CF056E98();
    v5 = sub_1CF9E6B28();
    MEMORY[0x1D3868CC0](v5);

    v4 = 30768;
    v3 = 0xE200000000000000;
LABEL_23:
    v7 = *(v12 + 16);
    v6 = *(v12 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1CEFE95CC((v6 > 1), v7 + 1, 1);
    }

    *(v12 + 16) = v7 + 1;
    v8 = v12 + 16 * v7;
    *(v8 + 32) = v4;
    *(v8 + 40) = v3;
    v9 = v1 == v2;
    v1 ^= v2;
  }

  while (!v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v10 = sub_1CF9E67D8();

  return v10;
}

uint64_t sub_1CF7F4DC8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v12 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 0, 0);
  do
  {
    v2 = v1 & -v1;
    if (v2 > 7)
    {
      if (v2 == 8)
      {
        v4 = 0xD000000000000020;
        v3 = 0x80000001CFA5D030;
        goto LABEL_17;
      }

      if (v2 != 16)
      {
        if (v2 == 32)
        {
          v4 = 0xD000000000000027;
          v3 = 0x80000001CFA5CFE0;
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      v4 = 0xD000000000000015;
      v3 = 0x80000001CFA5D010;
    }

    else
    {
      if (v2 == 1)
      {
        v4 = 0x6C46646572616873;
        v3 = 0xEB000000006B636FLL;
        goto LABEL_17;
      }

      if (v2 != 2)
      {
        if (v2 == 4)
        {
          v3 = 0xEA00000000006465;
          v4 = 0x73756150636E7973;
          goto LABEL_17;
        }

LABEL_14:
        sub_1CF056E98();
        v5 = sub_1CF9E6B28();
        MEMORY[0x1D3868CC0](v5);

        v4 = 30768;
        v3 = 0xE200000000000000;
        goto LABEL_17;
      }

      v4 = 0x766973756C637865;
      v3 = 0xEE006B636F6C4665;
    }

LABEL_17:
    v7 = *(v12 + 16);
    v6 = *(v12 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1CEFE95CC((v6 > 1), v7 + 1, 1);
    }

    *(v12 + 16) = v7 + 1;
    v8 = v12 + 16 * v7;
    *(v8 + 32) = v4;
    *(v8 + 40) = v3;
    v9 = v1 == v2;
    v1 ^= v2;
  }

  while (!v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v10 = sub_1CF9E67D8();

  return v10;
}

uint64_t sub_1CF7F5068(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v12 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 0, 0);
  do
  {
    v2 = v1 & -v1;
    if (v2 <= 15)
    {
      if (v2 > 3)
      {
        if (v2 == 4)
        {
          v3 = 0x20746E65746E6F63;
          v4 = 0xEE007963696C6F70;
          goto LABEL_25;
        }

        if (v2 == 8)
        {
          v3 = 0x7220746365726964;
          v4 = 0xEE00747365757165;
          goto LABEL_25;
        }
      }

      else
      {
        if (v2 == 1)
        {
          v4 = 0xE700000000000000;
          v3 = 0x676E696E6E6970;
          goto LABEL_25;
        }

        if (v2 == 2)
        {
          v3 = 0x74616C7563657073;
          v4 = 0xEB00000000657669;
          goto LABEL_25;
        }
      }
    }

    else if (v2 <= 63)
    {
      if (v2 == 16)
      {
        v3 = 0xD00000000000001ALL;
        v4 = 0x80000001CFA41CB0;
        goto LABEL_25;
      }

      if (v2 == 32)
      {
        v3 = 0xD000000000000027;
        v4 = 0x80000001CFA41C80;
        goto LABEL_25;
      }
    }

    else
    {
      switch(v2)
      {
        case 64:
          v3 = 0x74616C7563657073;
          v4 = 0xEF74657320657669;
          goto LABEL_25;
        case 128:
          v3 = 0xD00000000000001ALL;
          v4 = 0x80000001CFA41C60;
          goto LABEL_25;
        case 256:
          v3 = 0xD000000000000013;
          v4 = 0x80000001CFA41C40;
          goto LABEL_25;
      }
    }

    sub_1CF056E98();
    v5 = sub_1CF9E6B28();
    MEMORY[0x1D3868CC0](v5);

    v3 = 30768;
    v4 = 0xE200000000000000;
LABEL_25:
    v7 = *(v12 + 16);
    v6 = *(v12 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1CEFE95CC((v6 > 1), v7 + 1, 1);
    }

    *(v12 + 16) = v7 + 1;
    v8 = v12 + 16 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = v4;
    v9 = v1 == v2;
    v1 ^= v2;
  }

  while (!v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v10 = sub_1CF9E67D8();

  return v10;
}

uint64_t sub_1CF7F53C8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v12 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 0, 0);
  do
  {
    v2 = v1 & -v1;
    if (v2 == 1)
    {
      v3 = 0x74616C7563657073;
      v4 = 0xEF74657320657669;
    }

    else if (v2 == 2)
    {
      v3 = 0xD00000000000001ALL;
      v4 = 0x80000001CFA41C60;
    }

    else
    {
      sub_1CF056E98();
      v5 = sub_1CF9E6B28();
      MEMORY[0x1D3868CC0](v5);

      v3 = 30768;
      v4 = 0xE200000000000000;
    }

    v7 = *(v12 + 16);
    v6 = *(v12 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1CEFE95CC((v6 > 1), v7 + 1, 1);
    }

    *(v12 + 16) = v7 + 1;
    v8 = v12 + 16 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = v4;
    v9 = v1 == v2;
    v1 ^= v2;
  }

  while (!v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v10 = sub_1CF9E67D8();

  return v10;
}

uint64_t sub_1CF7F55BC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v12 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 0, 0);
  do
  {
    v2 = v1 & -v1;
    switch(v2)
    {
      case 1:
        v3 = 0xD000000000000025;
        v4 = 0x80000001CFA57FA0;
        break;
      case 4:
        v3 = 0xD000000000000028;
        v4 = 0x80000001CFA57F50;
        break;
      case 2:
        v3 = 0xD000000000000012;
        v4 = 0x80000001CFA57F80;
        break;
      default:
        sub_1CEFFD0A8();
        v5 = sub_1CF9E6B28();
        MEMORY[0x1D3868CC0](v5);

        v3 = 30768;
        v4 = 0xE200000000000000;
        break;
    }

    v7 = *(v12 + 16);
    v6 = *(v12 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1CEFE95CC((v6 > 1), v7 + 1, 1);
    }

    *(v12 + 16) = v7 + 1;
    v8 = v12 + 16 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = v4;
    v9 = v1 == v2;
    v1 ^= v2;
  }

  while (!v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v10 = sub_1CF9E67D8();

  return v10;
}

uint64_t sub_1CF7F5844(unint64_t a1)
{
  type metadata accessor for NSFileProviderItemFields(0);
  sub_1CEFCCCA4(&qword_1EC4BD1B8, type metadata accessor for NSFileProviderItemFields);
  if (sub_1CF9E7798())
  {
    return 0;
  }

  v15 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 0, 0);
  for (i = v15; (sub_1CF9E7798() & 1) == 0; *(v12 + 40) = v8)
  {
    v5 = __clz(__rbit64(a1));
    if (v5 >= 0x40)
    {
      v6 = 0;
    }

    else
    {
      v6 = 1 << v5;
    }

    if ((sub_1CF9E7798() & 1) == 0)
    {
      a1 &= ~v6;
    }

    v7 = NSFileProviderItemFields.bitDescription.getter(v6);
    if (!v8)
    {
      sub_1CF66DD74();
      v9 = sub_1CF9E6B28();
      MEMORY[0x1D3868CC0](v9);

      v7 = 30768;
      v8 = 0xE200000000000000;
    }

    v16 = i;
    v11 = *(i + 16);
    v10 = *(i + 24);
    if (v11 >= v10 >> 1)
    {
      v14 = v7;
      v13 = v8;
      sub_1CEFE95CC((v10 > 1), v11 + 1, 1);
      v8 = v13;
      v7 = v14;
      i = v16;
    }

    *(i + 16) = v11 + 1;
    v12 = i + 16 * v11;
    *(v12 + 32) = v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v4 = sub_1CF9E67D8();

  return v4;
}

uint64_t sub_1CF7F5AAC(unint64_t a1)
{
  type metadata accessor for BrokenInvariants(0);
  sub_1CEFCCCA4(&qword_1EDEA36C0, type metadata accessor for BrokenInvariants);
  if (sub_1CF9E7798())
  {
    return 0;
  }

  v15 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 0, 0);
  for (i = v15; (sub_1CF9E7798() & 1) == 0; *(v12 + 40) = v8)
  {
    v5 = __clz(__rbit64(a1));
    if (v5 >= 0x40)
    {
      v6 = 0;
    }

    else
    {
      v6 = 1 << v5;
    }

    if ((sub_1CF9E7798() & 1) == 0)
    {
      a1 &= ~v6;
    }

    v7 = BrokenInvariants.bitDescription.getter(v6);
    if (!v8)
    {
      sub_1CF66DD74();
      v9 = sub_1CF9E6B28();
      MEMORY[0x1D3868CC0](v9);

      v7 = 30768;
      v8 = 0xE200000000000000;
    }

    v16 = i;
    v11 = *(i + 16);
    v10 = *(i + 24);
    if (v11 >= v10 >> 1)
    {
      v14 = v7;
      v13 = v8;
      sub_1CEFE95CC((v10 > 1), v11 + 1, 1);
      v8 = v13;
      v7 = v14;
      i = v16;
    }

    *(i + 16) = v11 + 1;
    v12 = i + 16 * v11;
    *(v12 + 32) = v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v4 = sub_1CF9E67D8();

  return v4;
}

uint64_t sub_1CF7F5D14@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

void sub_1CF7F5D3C(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v15 = a3;
  v16 = a4;
  v11 = a1;
  v12 = a2;
  v13 = 1;
  (*(*v5 + 168))(__src, &v11, 1, &v15, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v6)
  {
    sub_1CF1E53F8(v11, v12, v13);
  }

  else
  {
    sub_1CF1E53F8(v11, v12, v13);
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v8, __src, sizeof(v8));
      sub_1CEFCCC44(v8, &qword_1EC4BFDC8, &unk_1CFA054A0);
      sub_1CF095754(v9);
      memcpy(a5, v9, 0x208uLL);
    }

    else
    {
      memcpy(v17, __src, sizeof(v17));
      sub_1CF7F6024(a5);
      memcpy(v8, __src, 0x208uLL);
      sub_1CEFCCC44(v8, &unk_1EC4BFC90, &unk_1CFA053E0);
      nullsub_1(a5);
    }
  }
}

void sub_1CF7F5EA8(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v15 = a2;
  v16 = a3;
  v12 = a1;
  v13 = 256;
  v7 = *(*v4 + 168);
  v8 = a1;
  v7(__src, &v12, 1, &v15, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v5)
  {
    sub_1CEFD0994(v12, v13, SHIBYTE(v13));
  }

  else
  {
    sub_1CEFD0994(v12, v13, SHIBYTE(v13));
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v9, __src, sizeof(v9));
      sub_1CEFCCC44(v9, &unk_1EC4BFD20, &unk_1CFA05440);
      sub_1CF095754(v10);
      memcpy(a4, v10, 0x208uLL);
    }

    else
    {
      memcpy(v17, __src, sizeof(v17));
      sub_1CF7F62D0(a4);
      memcpy(v9, __src, 0x208uLL);
      sub_1CEFCCC44(v9, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      nullsub_1(a4);
    }
  }
}

__n128 sub_1CF7F6024@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = a1;
  v4 = v1[27];
  v84 = v1[26];
  v85 = v4;
  v86 = *(v1 + 56);
  v5 = v1[23];
  v80 = v1[22];
  v81 = v5;
  v6 = v1[25];
  v82 = v1[24];
  v83 = v6;
  v7 = v1[19];
  v76 = v1[18];
  v77 = v7;
  v8 = v1[21];
  v78 = v1[20];
  v79 = v8;
  v9 = v1[15];
  v72 = v1[14];
  v73 = v9;
  v10 = v1[17];
  v74 = v1[16];
  v75 = v10;
  v11 = v1[3];
  v60 = v1[2];
  v61 = v11;
  v12 = v1[7];
  v64 = v1[6];
  v65 = v12;
  v13 = v1[5];
  v62 = v1[4];
  v63 = v13;
  v14 = v1[13];
  v70 = v1[12];
  v71 = v14;
  v15 = v1[11];
  v68 = v1[10];
  v69 = v15;
  v16 = v1[9];
  v66 = v1[8];
  v67 = v16;
  v17 = v1[1];
  v58 = *v1;
  v59 = v17;
  v18 = *(v1 + 58);
  v19 = *(v18 + 16);
  if (v19)
  {
    sub_1CEFCCBDC(&v71, v57, &unk_1EC4BFE00, &unk_1CF9FEF00);
    sub_1CEFCCBDC(&v58, v57, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    v57[0] = MEMORY[0x1E69E7CC0];
    sub_1CEFFA19C(0, v19, 0);
    v20 = v57[0];
    v21 = (v18 + 41);
    do
    {
      v22 = *(v21 - 9);
      v23 = *v21;
      if (*v21)
      {
        v24 = *(v21 - 1);
      }

      else
      {
        v25 = v22;
        v24 = 0;
      }

      v57[0] = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1CEFFA19C((v26 > 1), v27 + 1, 1);
        v20 = v57[0];
      }

      *(v20 + 16) = v27 + 1;
      v28 = v20 + 16 * v27;
      *(v28 + 32) = v22;
      *(v28 + 40) = v24;
      *(v28 + 41) = v23 ^ 1;
      v21 += 16;
      --v19;
    }

    while (v19);
    v3 = a1;
  }

  else
  {
    sub_1CEFCCBDC(&v71, v57, &unk_1EC4BFE00, &unk_1CF9FEF00);
    sub_1CEFCCBDC(&v58, v57, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    v20 = MEMORY[0x1E69E7CC0];
  }

  v29 = v84;
  v30 = v85;
  v31 = v82;
  *(v3 + 192) = v83;
  *(v3 + 208) = v29;
  *(v3 + 224) = v30;
  v32 = v80;
  v33 = v81;
  v34 = v78;
  *(v3 + 128) = v79;
  *(v3 + 144) = v32;
  *(v3 + 160) = v33;
  *(v3 + 176) = v31;
  v35 = v76;
  v36 = v77;
  v37 = v74;
  *(v3 + 64) = v75;
  *(v3 + 80) = v35;
  *(v3 + 96) = v36;
  *(v3 + 112) = v34;
  v38 = v72;
  v39 = v73;
  v40 = v70;
  *v3 = v71;
  *(v3 + 16) = v38;
  *(v3 + 32) = v39;
  *(v3 + 48) = v37;
  v41 = v68;
  v42 = v69;
  v43 = v66;
  *(v3 + 392) = v67;
  *(v3 + 408) = v41;
  *(v3 + 424) = v42;
  *(v3 + 440) = v40;
  v44 = v64;
  v45 = v65;
  v46 = v62;
  *(v3 + 328) = v63;
  *(v3 + 344) = v44;
  *(v3 + 360) = v45;
  *(v3 + 376) = v43;
  v47 = v60;
  v48 = v61;
  v49 = v58;
  *(v3 + 264) = v59;
  *(v3 + 280) = v47;
  *(v3 + 296) = v48;
  *(v3 + 312) = v46;
  v50 = *(v2 + 456);
  v51 = *(v2 + 61);
  v52 = *(v2 + 62);
  v53 = *(v2 + 504);
  v54 = *(v2 + 64);
  *(v3 + 240) = v86;
  *(v3 + 248) = v49;
  *(v3 + 456) = v50;
  *(v3 + 464) = v20;
  result = *(v2 + 472);
  *(v3 + 472) = result;
  *(v3 + 488) = v51;
  *(v3 + 496) = v52;
  *(v3 + 504) = v53;
  *(v3 + 512) = v54;
  return result;
}

__n128 sub_1CF7F62D0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 392);
  v4 = *(v1 + 424);
  v5 = *(v1 + 440);
  v83 = *(v1 + 408);
  v84 = v4;
  v85 = v5;
  v6 = *(v1 + 328);
  v7 = *(v1 + 360);
  v8 = *(v1 + 376);
  v79 = *(v1 + 344);
  v80 = v7;
  v81 = v8;
  v82 = v3;
  v9 = *(v1 + 264);
  v10 = *(v1 + 296);
  v11 = *(v1 + 312);
  v75 = *(v1 + 280);
  v76 = v10;
  v77 = v11;
  v78 = v6;
  v73 = *(v1 + 248);
  v74 = v9;
  v12 = v1[3];
  v59 = v1[2];
  v60 = v12;
  v13 = v1[7];
  v63 = v1[6];
  v64 = v13;
  v14 = v1[5];
  v61 = v1[4];
  v62 = v14;
  v15 = v1[11];
  v67 = v1[10];
  v68 = v15;
  v16 = v1[9];
  v65 = v1[8];
  v66 = v16;
  v72 = *(v1 + 30);
  v17 = v1[14];
  v70 = v1[13];
  v71 = v17;
  v69 = v1[12];
  v18 = v1[1];
  v57 = *v1;
  v58 = v18;
  v19 = *(v1 + 58);
  v20 = *(v19 + 16);
  if (v20)
  {
    sub_1CEFCCBDC(&v73, v56, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    sub_1CEFCCBDC(&v57, v56, &unk_1EC4BFE00, &unk_1CF9FEF00);
    v56[0] = MEMORY[0x1E69E7CC0];
    sub_1CF680FA8(0, v20, 0);
    v21 = v56[0];
    v22 = (v19 + 41);
    do
    {
      v23 = *(v22 - 9);
      v24 = *v22;
      if (v24 == 1)
      {
        v25 = v23;
        v26 = 0;
      }

      else
      {
        v26 = *(v22 - 1);
      }

      v56[0] = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1CF680FA8((v27 > 1), v28 + 1, 1);
        v21 = v56[0];
      }

      *(v21 + 16) = v28 + 1;
      v29 = v21 + 16 * v28;
      *(v29 + 32) = v23;
      *(v29 + 40) = v26;
      *(v29 + 41) = v24 ^ 1;
      v22 += 16;
      --v20;
    }

    while (v20);
    v1 = v55;
  }

  else
  {
    sub_1CEFCCBDC(&v73, v56, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    sub_1CEFCCBDC(&v57, v56, &unk_1EC4BFE00, &unk_1CF9FEF00);
    v21 = MEMORY[0x1E69E7CC0];
  }

  v30 = v84;
  *(a1 + 160) = v83;
  *(a1 + 176) = v30;
  v31 = v80;
  *(a1 + 96) = v79;
  *(a1 + 112) = v31;
  v32 = v82;
  *(a1 + 128) = v81;
  *(a1 + 144) = v32;
  v33 = v76;
  *(a1 + 32) = v75;
  *(a1 + 48) = v33;
  v34 = v78;
  *(a1 + 64) = v77;
  *(a1 + 80) = v34;
  v35 = v74;
  *a1 = v73;
  *(a1 + 16) = v35;
  v36 = v69;
  v37 = v71;
  *(a1 + 416) = v70;
  *(a1 + 432) = v37;
  v38 = v65;
  v39 = v67;
  v40 = v68;
  *(a1 + 352) = v66;
  *(a1 + 368) = v39;
  *(a1 + 384) = v40;
  *(a1 + 400) = v36;
  v41 = v61;
  v42 = v63;
  v43 = v64;
  *(a1 + 288) = v62;
  *(a1 + 304) = v42;
  v44 = v85;
  *(a1 + 320) = v43;
  *(a1 + 336) = v38;
  v45 = v57;
  v46 = v58;
  *(a1 + 192) = v44;
  *(a1 + 208) = v45;
  v47 = v59;
  v48 = v60;
  *(a1 + 224) = v46;
  *(a1 + 240) = v47;
  v49 = *(v1 + 456);
  v50 = *(v1 + 61);
  v51 = *(v1 + 62);
  v52 = *(v1 + 504);
  v53 = *(v1 + 64);
  *(a1 + 448) = v72;
  *(a1 + 256) = v48;
  *(a1 + 272) = v41;
  *(a1 + 456) = v49;
  *(a1 + 464) = v21;
  result = *(v1 + 472);
  *(a1 + 472) = result;
  *(a1 + 488) = v50;
  *(a1 + 496) = v51;
  *(a1 + 504) = v52;
  *(a1 + 512) = v53;
  return result;
}

uint64_t sub_1CF7F6588(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = v5;
  v52 = a2;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SyncState();
  v14 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v45 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = a3;
  v59 = a4;
  swift_beginAccess();
  v16 = *(a1[2] + 16);
  if (v16)
  {
    v47 = v5;
    v48 = a1;
    v49 = a3;
    v50 = a4;
    v51 = v4;
    v17 = (v11 + 8);

    v18 = (v46 + 40);
    *&v19 = 136315138;
    v53 = v19;
    v20 = v60;
    v54 = (v11 + 8);
    do
    {
      v28 = *(v18 - 1);
      v27 = *v18;

      v29 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v30 = sub_1CF9E6108();
      v31 = sub_1CF9E7288();

      if (os_log_type_enabled(v30, v31))
      {
        v21 = swift_slowAlloc();
        v22 = v10;
        v23 = swift_slowAlloc();
        v57 = v23;
        *v21 = v53;
        v24 = sub_1CEFD0DF0(v28, v27, &v57);

        *(v21 + 4) = v24;
        _os_log_impl(&dword_1CEFC7000, v30, v31, "%s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        v25 = v23;
        v10 = v22;
        MEMORY[0x1D386CDC0](v25, -1, -1);
        v26 = v21;
        v17 = v54;
        v20 = v60;
        MEMORY[0x1D386CDC0](v26, -1, -1);
      }

      else
      {
      }

      (*v17)(v20, v10);
      v18 += 2;
      --v16;
    }

    while (v16);

    v4 = v51;
    a4 = v50;
    a3 = v49;
    a1 = v48;
    v6 = v47;
  }

  v32 = swift_beginAccess();
  v33 = a1[5];
  v55 = a3;
  v56 = a4;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v52;
  *(&v43 - 4) = v4;
  *(&v43 - 3) = v34;
  *(&v43 - 2) = &v55;

  sub_1CF7EBBCC(sub_1CF8F9190, (&v43 - 6), v33);

  if (!v6)
  {
    swift_beginAccess();
    v36 = a1[3];
    swift_beginAccess();
    v37 = a1[4];

    sub_1CF808014(v36, v37, a3, a4);

    v38 = v4[6];
    v39 = v4[7];
    ObjectType = swift_getObjectType();
    v41 = (*(*v4 + 272))();
    v42 = v45;
    *v45 = v41;
    swift_storeEnumTagMultiPayload();
    (*(v39 + 8))(v42, &v58, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938, ObjectType, v39);
    return sub_1CEFD5338(v42, type metadata accessor for SyncState);
  }

  return result;
}

uint64_t sub_1CF7F6A3C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = v5;
  v7 = v4;
  v55 = a2;
  v61 = sub_1CF9E6118();
  v11 = *(v61 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v56 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SyncState();
  v14 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v52 = (&v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = a3;
  v59 = a3;
  v60 = a4;
  swift_beginAccess();
  v53 = a1;
  v16 = *(*(a1 + 16) + 16);
  if (v16)
  {
    v48 = a4;
    v49 = v4;
    v50 = v5;
    v17 = (v11 + 8);

    v18 = (v47 + 40);
    *&v19 = 136315138;
    v54 = v19;
    v20 = v56;
    do
    {
      v26 = *(v18 - 1);
      v27 = *v18;

      v28 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v29 = sub_1CF9E6108();
      v30 = sub_1CF9E7288();

      if (os_log_type_enabled(v29, v30))
      {
        v21 = swift_slowAlloc();
        v22 = v17;
        v23 = swift_slowAlloc();
        v58 = v23;
        *v21 = v54;
        v24 = sub_1CEFD0DF0(v26, v27, &v58);

        *(v21 + 4) = v24;
        _os_log_impl(&dword_1CEFC7000, v29, v30, "%s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        v25 = v23;
        v17 = v22;
        MEMORY[0x1D386CDC0](v25, -1, -1);
        v20 = v56;
        MEMORY[0x1D386CDC0](v21, -1, -1);
      }

      else
      {
      }

      (*v17)(v20, v61);
      v18 += 2;
      --v16;
    }

    while (v16);

    v6 = v50;
    v7 = v49;
    a4 = v48;
  }

  v31 = v53;
  swift_beginAccess();
  v32 = *(v31 + 40);
  v33 = *(v32 + 16);
  swift_bridgeObjectRetain_n();
  if (!v33)
  {
LABEL_15:
    swift_bridgeObjectRelease_n();
    v37 = v53;
    swift_beginAccess();
    v38 = *(v37 + 24);
    swift_beginAccess();
    v39 = *(v37 + 32);

    sub_1CF808364(v38, v39, v57, a4);

    if (!v6)
    {
      v41 = v7[6];
      v42 = v7[7];
      ObjectType = swift_getObjectType();
      v44 = (*(*v7 + 272))();
      v45 = v52;
      *v52 = v44;
      swift_storeEnumTagMultiPayload();
      (*(v42 + 8))(v45, &v59, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938, ObjectType, v42);
      return sub_1CEFD5338(v45, type metadata accessor for SyncState);
    }

    return result;
  }

  v34 = 32;
  while (1)
  {
    v35 = *(v32 + v34);

    v36 = objc_autoreleasePoolPush();
    if (v35 < 0)
    {
      break;
    }

    sub_1CF7EA114(v35, v55, v57, a4);
    if (v6)
    {
      goto LABEL_18;
    }

LABEL_11:
    objc_autoreleasePoolPop(v36);

    v34 += 8;
    if (!--v33)
    {
      goto LABEL_15;
    }
  }

  (*(*v7 + 176))();
  sub_1CF7EA114(v35 & 0x7FFFFFFFFFFFFFFFLL, v55, v57, a4);
  if (!v6)
  {

    goto LABEL_11;
  }

LABEL_18:
  objc_autoreleasePoolPop(v36);
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1CF7F6F74()
{
  v1 = v0;
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultStore];
  [v7 pendingSetRefreshInterval];

  sub_1CF9E5C38();
  sub_1CF9E5C98();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  v11 = v9 * 1000000000.0;
  if (COERCE__INT64(fabs(v9 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v11 < 9.22337204e18)
  {
    v12 = v11;
    swift_beginAccess();
    v13 = *(v1 + 88);

    v15 = sub_1CF7F0B84(v14, v12);

    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1CF7F7140(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, __int128 *))
{
  v5 = a3 + 64;
  v6 = -1 << *(a3 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 64);
  v22 = -1 << *(a3 + 32);
  v9 = (63 - v6) >> 6;

  v11 = 0;
  while (v8)
  {
    v16 = v11;
    v17 = v11;
LABEL_20:
    v19 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v27 = *(*(a3 + 56) + ((v17 << 10) | (16 * v19)));

    a4(&v33, &v27);

    v20 = v33;

    v11 = v16;
    if (v20)
    {
      v24 = v16;
      v12 = *(v20 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = v20 + 32;
        while (v13 < v12)
        {
          sub_1CF1A91AC(v14, &v27);
          v30 = v27;
          v31 = v28;
          v32 = v29;
          if (!*(&v28 + 1))
          {
            goto LABEL_23;
          }

          sub_1CF054EA0(&v30, &v27);
          v15 = a1(&v27);
          result = __swift_destroy_boxed_opaque_existential_1(&v27);
          if (v4)
          {
            sub_1CEFCB59C();

            return v21 & 1;
          }

          if (v15)
          {
            sub_1CEFCB59C();

            v21 = 1;
            return v21 & 1;
          }

          ++v13;
          v12 = *(v20 + 16);
          v14 += 40;
          if (v13 == v12)
          {
            goto LABEL_12;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

LABEL_12:
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      result = sub_1CEFCCC44(&v27, &unk_1EC4C1BE0, &unk_1CF9FD400);
      v11 = v24;
    }
  }

  v18 = v11;
  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v17 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v17);
    ++v18;
    if (v8)
    {
      v16 = v17;
      goto LABEL_20;
    }
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
LABEL_23:
  sub_1CEFCB59C();

  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1CF7F7438(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1CF7F74E4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 41);
    do
    {
      v8 = v6;
      v9 = *v7;
      v10 = *(v7 - 1);
      v13 = *(v7 - 9);
      v14 = v10;
      v15 = v9;
      sub_1CEFD0988(v13, v10, v9);
      v11 = a1(&v13);
      sub_1CEFD0994(v13, v14, v15);
      LOBYTE(v4) = (v3 != 0) | v11;
      if ((v3 != 0) | v11 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 16;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1CF7F75A8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1CF7F7650(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (HIBYTE(a4))
  {
    if (HIBYTE(a4) == 1)
    {
      return 0xD000000000000015;
    }

    else
    {
      v7 = a4 & 0xFFFFFF;
      if (a3 | a2 | a1 || v7)
      {
        if (a1 != 1 || a3 | a2 || v7)
        {
          return 0xD000000000000010;
        }

        else
        {
          return 0x6564206B63757473;
        }
      }

      else
      {
        return 0xD000000000000011;
      }
    }
  }

  else
  {
    v6 = a2;
    sub_1CF9E7948();

    sub_1CF8DC2D4(a1, v6 & 0xFF01FF);
    MEMORY[0x1D3868CC0]();

    return 0xD000000000000011;
  }
}

uint64_t sub_1CF7F7808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unint64_t a7)
{
  v60 = a3;
  v61 = a4;
  LODWORD(v63) = HIBYTE(a5);
  v14 = sub_1CF9E6118();
  v66 = *(v14 - 8);
  v67 = v14;
  v15 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1CF7EFA44(a1);
  if (a7)
  {
    v17 = a6;
  }

  else
  {
    v17 = 0;
  }

  if (a7)
  {
    v18 = a7;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v19 = sub_1CF7F7650(a2, a3, a4, a5);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v69[0] = 0;
  v69[1] = 0xE000000000000000;
  sub_1CF9E7948();

  strcpy(v69, "FileProvider ");
  HIWORD(v69[1]) = -4864;
  MEMORY[0x1D3868CC0](v19, v21);

  MEMORY[0x1D3868CC0](0x6574636574656420, 0xE900000000000064);
  MEMORY[0x1D3868CC0](v17, v18);

  v27 = v69[0];
  v26 = v69[1];
  v69[0] = 0;
  v69[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v73 = v69[0];
  v74 = v69[1];
  MEMORY[0x1D3868CC0](v23, v25);

  MEMORY[0x1D3868CC0](0x6D6F6420726F6620, 0xED0000203A6E6961);
  v65 = *(v68 + 24);
  v28 = [v65 fp_obfuscatedProviderDomainID];
  v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v31 = v30;

  MEMORY[0x1D3868CC0](v29, v31);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA3DCC0);
  v69[0] = a2;
  v32 = v62;
  v69[1] = v60;
  v69[2] = v61;
  v71 = BYTE2(a5);
  v70 = a5;
  v72 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4D48, &qword_1CFA17F58);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v69[0] = *(v32 + 16);
  v33 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v33);

  MEMORY[0x1D3868CC0](0xA3A736D65744920, 0xE800000000000000);
  v69[0] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90);
  v34 = sub_1CF9E67D8();
  MEMORY[0x1D3868CC0](v34);

  v63 = v73;
  v35 = fpfs_current_or_default_log();
  v36 = v64;
  sub_1CF9E6128();

  v37 = v36;
  v38 = sub_1CF9E6108();
  v39 = sub_1CF9E72A8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v60 = v27;
    v41 = v40;
    v42 = swift_slowAlloc();
    v61 = v26;
    v43 = v42;
    v69[0] = v42;
    *v41 = 136315138;
    v73 = v32;
    v44 = sub_1CF9E67D8();
    v46 = v45;

    v47 = sub_1CEFD0DF0(v44, v46, v69);

    *(v41 + 4) = v47;
    _os_log_impl(&dword_1CEFC7000, v38, v39, "DiagnosticsManager: TTR-ing stuck deletion:\n%s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x1D386CDC0](v43, -1, -1);
    MEMORY[0x1D386CDC0](v41, -1, -1);
  }

  else
  {
  }

  (*(v66 + 8))(v37, v67);
  v48 = *(v68 + 16);
  v49 = sub_1CF9E6888();

  v50 = sub_1CF9E6888();

  sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  v51 = sub_1CF9E6D28();
  sub_1CF9E5A58();
  v52 = sub_1CF9E6D28();
  v53 = sub_1CF9E6888();
  v54 = v65;
  v55 = [v54 pathComponents];
  v56 = sub_1CF9E6D48();

  v57 = *(v56 + 16);

  if (v57 >= 2)
  {
    v58 = [v54 stringByDeletingLastPathComponent];
    if (!v58)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v58 = sub_1CF9E6888();
    }

    v54 = v58;
  }

  [v48 requestTapToRadarWithTitle:v49 description:v50 keywords:v51 attachments:v52 displayReason:v53 providerID:{v54, v60}];

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1CF7F7E74(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 32);
  v7 = *(v2 + 24);
  swift_getObjectType();
  sub_1CF9E6F38();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1CF8F9070;
    *(v9 + 24) = v8;

    v14 = v2;
    sub_1CF8F90B4(&v14, v13);

    if (v3)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v9;
      }

      __break(1u);
    }

    v9 = v13[0];
    v11 = swift_isEscapingClosureAtFileLocation();

    if ((v11 & 1) == 0)
    {
      return v9;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA46EA0);
  v14 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF8, &unk_1CFA05340);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

void *sub_1CF7F8098(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v40 = a4;
  v44 = a6;
  v48 = a3;
  v39 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v39 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4D90, &qword_1CFA17F80);
  swift_allocObject();
  v12 = sub_1CF8E5C8C();
  v13 = *(a1 + 64);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClassUnconditional();
  v15 = *(*(*(a1 + 32) + 16) + 136);
  v16 = sub_1CF2B1654(&qword_1EDEA35D8, &unk_1EDEAB5C0, 0x1E69E9638);
  v47[3] = type metadata accessor for DocumentWharf();
  v47[4] = &off_1F4C2E638;
  v47[0] = v15;
  v42 = a5;
  v43 = v11;
  sub_1CEFCCBDC(a5, v11, &unk_1EC4BE310, qword_1CF9FCBE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4DA0, &qword_1CFA17F88);
  v17 = swift_allocObject();
  v18 = objc_allocWithZone(FPDTapToRadarManager);
  v19 = v13;

  v20 = v40;
  *(v17 + 16) = [v18 init];
  *(v17 + 24) = v20;
  v40 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF8, &unk_1CFA05340);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  *(v24 + 72) = 1;
  v25 = (v24 + *(*v24 + 208));
  *v25 = 0;
  v25[1] = 0;
  v24[2] = v12;
  v24[3] = v14;
  v24[4] = v16;
  sub_1CF1A91AC(v47, v46);
  sub_1CF1A91AC(v46, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4DA8, &qword_1CFA17F90);
  v26 = swift_allocObject();
  *(v26 + 72) = 0;
  sub_1CF1A91AC(v45, v26 + 16);
  v27 = v19;
  v28 = sub_1CF4E3F84(MEMORY[0x1E69E7CC0]);
  __swift_destroy_boxed_opaque_existential_1(v45);
  *(v26 + 80) = v28;
  *(v26 + 56) = 0xD000000000000014;
  *(v26 + 64) = 0x80000001CFA5D2C0;
  v29 = v41;
  sub_1CF1A722C();

  if (v29)
  {

    sub_1CEFCCC44(v42, &unk_1EC4BE310, qword_1CF9FCBE0);
    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_1CEFCCC44(v43, &unk_1EC4BE310, qword_1CF9FCBE0);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v30 = v24[2];

    v31 = v24[3];
    swift_unknownObjectRelease();
    v32 = (v24 + *(*v24 + 208));
    v33 = v32[1];
    sub_1CEFF7124(*v32);
    v34 = *(*v24 + 48);
    v35 = *(*v24 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {

    sub_1CEFCCC44(v42, &unk_1EC4BE310, qword_1CF9FCBE0);
    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v24[5] = v26;
    sub_1CEFE55D0(v43, v24 + *(*v24 + 200), &unk_1EC4BE310, qword_1CF9FCBE0);
    v24[6] = v44;
    type metadata accessor for FPFeedbackUIManager();
    v36 = swift_allocObject();
    v37 = v48;
    v36[2] = v39;
    v36[3] = v37;
    v36[4] = v40;
    v24[7] = v36;
    v24[8] = v17;
  }

  return v24;
}

uint64_t sub_1CF7F8508(void *a1, uint64_t a2, _OWORD *a3)
{
  *v30 = *a3;
  v7 = *v30;
  *&v30[11] = *(a3 + 11);
  v8 = (a2 >> 8) & 1;
  v29 = BYTE1(a2) & 1;
  *&v28[6] = v7;
  *&v28[17] = *&v30[11];
  v9 = *(v3 + 40);
  swift_beginAccess();
  v10 = *(v9 + 80);
  v31 = a1;
  v32 = a2;
  v11 = v29;
  v33 = v29;
  v34 = *v28;
  v35 = *&v28[16];
  v36 = v30[26];
  if (!*(v10 + 16))
  {
    sub_1CF8F9014(v30, &v22);
    sub_1CEFD0988(a1, a2, v8);
LABEL_6:
    v22 = a1;
    v23 = a2;
    v24 = v11;
    v25 = *v28;
    v26 = *&v28[16];
    v27 = v28[32];
    sub_1CEFCCC44(&v22, &qword_1EC4BE1A0, &unk_1CFA17130);
    v18 = 0;
    return v18 & 1;
  }

  sub_1CF8F9014(v30, &v22);
  sub_1CEFD0988(a1, a2, v8);

  v12 = sub_1CF7BFC48(&v31);
  if ((v13 & 1) == 0)
  {

    goto LABEL_6;
  }

  v14 = (*(v10 + 56) + 24 * v12);
  v15 = *v14;
  v16 = v14[2];

  v21 = a3[2];
  MEMORY[0x1EEE9AC00](v17);
  v20[2] = &v21;
  v18 = sub_1CF7F7438(sub_1CF2A93F0, v20, v15);

  v22 = a1;
  v23 = a2;
  v24 = v11;
  v25 = *v28;
  v26 = *&v28[16];
  v27 = v28[32];
  sub_1CEFCCC44(&v22, &qword_1EC4BE1A0, &unk_1CFA17130);
  return v18 & 1;
}

uint64_t sub_1CF7F8760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v6 + 88) = a4;
  *(v6 + 96) = v5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 44) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF8, &unk_1CFA05340);
  sub_1CEFCCCEC(&unk_1EC4BFC00, &qword_1EC4BFBF8, &unk_1CFA05340);
  v8 = sub_1CF9E6EC8();
  *(v6 + 104) = v8;
  *(v6 + 112) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1CF7F883C, v8, v7);
}

uint64_t sub_1CF7F883C()
{
  if (!fpfs_is_seed_build() || fpfs_supports_tap_to_feedback()) && (sub_1CF8E5D7C(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 44)))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 64);
    *(v0 + 48) = sub_1CF4E3750(MEMORY[0x1E69E7CC0]);
    v3 = swift_task_alloc();
    v3[2] = v0 + 16;
    v3[3] = v1;
    v3[4] = v2;
    v3[5] = v0 + 48;
    v4 = *(v1 + 16);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = *(*Strong + 432);
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4D00, &qword_1CFA17F10);
      v6(2, sub_1CF8F8EB4, v3, v7);

      v8 = *(v0 + 56);
      *(v0 + 120) = v8;

      v9 = *(v0 + 48);
      *(v0 + 128) = v9;
      v10 = *(v0 + 16);
      v11 = *(v0 + 24);
      v12 = *(v0 + 32);
      v13 = *(v0 + 40);
      v14 = swift_task_alloc();
      *(v0 + 136) = v14;
      *v14 = v0;
      v14[1] = sub_1CF7F8A8C;
      v15 = *(v0 + 96);

      return sub_1CF7F9A60(v8, v9, v10, v11, v12, v13);
    }

    sub_1CF2CA194();
    swift_allocError();
    swift_willThrow();

    v18 = *(v0 + 48);

    v17 = *(v0 + 8);
  }

  else
  {
    v17 = *(v0 + 8);
  }

  return v17();
}

uint64_t sub_1CF7F8A8C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = v2[15];

  v6 = v2[14];
  v7 = v2[13];
  if (v0)
  {
    v8 = sub_1CF7F8C44;
  }

  else
  {
    v8 = sub_1CF7F8BE0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1CF7F8BE0()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CF7F8C44()
{
  v1 = v0[18];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

void sub_1CF7F8CA8(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41[0] = a2;
  v41[1] = a3;
  v41[2] = a4;
  v42 = a5;
  v15 = sub_1CF9E6118();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HIBYTE(a5))
  {
    goto LABEL_9;
  }

  v38 = a2;
  v39 = a3 & 0x1FF;
  v40 = BYTE2(a3);
  if (*(a6 + 72) != 1)
  {
    sub_1CEFD0988(a2, a3, BYTE1(a3) & 1);
    v25 = a2;
    v27 = a3;
    v26 = (a3 >> 8) & 1;
    goto LABEL_8;
  }

  v32 = v18;
  v33 = v17;
  v36 = &v32;
  MEMORY[0x1EEE9AC00](v17);
  *(&v32 - 2) = a6;
  *(&v32 - 1) = &v38;
  v21 = *(a6 + 16);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1CF2CA194();
    v37 = swift_allocError();
    swift_willThrow();
    sub_1CEFD0988(a2, a3, BYTE1(a3) & 1);
    goto LABEL_11;
  }

  v23 = *(*Strong + 432);
  v34 = *Strong + 432;
  v35 = v23;
  sub_1CEFD0988(a2, a3, BYTE1(a3) & 1);
  v24 = v37;
  v35(&v43, 2, sub_1CF8F8FF8, &v32 - 4, MEMORY[0x1E69E6370]);

  v37 = v24;
  if (v24)
  {
LABEL_11:
    sub_1CEFD0994(v38, v39, SHIBYTE(v39));
    return;
  }

  if (v43)
  {
    v25 = v38;
    LOBYTE(v26) = HIBYTE(v39);
    v27 = v39;
LABEL_8:
    sub_1CEFD0994(v25, v27, v26);
LABEL_9:
    MEMORY[0x1EEE9AC00](v17);
    *(&v32 - 4) = a1;
    *(&v32 - 3) = a6;
    *(&v32 - 2) = v41;
    *(&v32 - 1) = a8;
    sub_1CF7F0454(sub_1CF8F8FD8, (&v32 - 6), a7);
    return;
  }

  v28 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v29 = sub_1CF9E6108();
  v30 = sub_1CF9E7298();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1CEFC7000, v29, v30, "Item not yet throttled - giving up", v31, 2u);
    MEMORY[0x1D386CDC0](v31, -1, -1);
  }

  (*(v32 + 8))(v20, v33);
  sub_1CEFD0994(v38, v39, SHIBYTE(v39));
}

uint64_t sub_1CF7F9038@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v38[0] = a5;
  v38[1] = a6;
  v38[2] = a7;
  v39 = a8;
  v40 = a1;
  v41 = a2 & 0x1FF;
  v14 = a3[3];
  v13 = a3[4];
  v15 = __swift_project_boxed_opaque_existential_1(a3, v14);
  v16 = *(a4 + 16);
  result = sub_1CF2BD2CC(&v40, v38, v15, v14, v13, &v32);
  if (!v10)
  {
    v47 = 0;
    if (!*(&v33 + 1))
    {
      v31[4] = v35[1];
      v31[5] = v36;
      v31[6] = v37;
      v31[0] = v32;
      v31[1] = v33;
      v31[2] = v34;
      v31[3] = v35[0];
      result = sub_1CEFCCC44(v31, &qword_1EC4C4D80, &qword_1CFA17F70);
      goto LABEL_6;
    }

    v42[0] = v33;
    v42[1] = v34;
    *v43 = v35[0];
    *&v43[9] = *(v35 + 9);
    v26 = v36;
    v27 = v37;
    v28 = *(&v36 + 1);
    v29 = *(&v37 + 1);
    v18 = BYTE8(v32);
    v19 = BYTE9(v32);
    v20 = BYTE8(v32) | (BYTE9(v32) << 8);
    v21 = v32;
    if (sub_1CF7F8508(v32, v20, v42))
    {
      sub_1CEFD0994(v21, v18, v19);

      result = sub_1CF1A8950(v42);
LABEL_6:
      *a9 = 0u;
      *(a9 + 16) = 0u;
      *(a9 + 32) = 0u;
      *(a9 + 48) = 0u;
      *(a9 + 64) = 0u;
      *(a9 + 80) = 0u;
      return result;
    }

    v44[0] = v42[0];
    *(v44 + 11) = *(v42 + 11);
    *&v30[6] = v42[0];
    *&v30[17] = *(v42 + 11);
    sub_1CEFD0988(v21, v18, v19);
    sub_1CF8F9014(v44, v31);
    v22 = *a10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[0] = *a10;
    *a10 = 0x8000000000000000;
    sub_1CF1D3180(v26, v28, v21, v20, isUniquelyReferenced_nonNull_native);
    sub_1CEFD0994(v21, v18, v19);
    *(a9 + 10) = *v30;
    *a10 = *&v31[0];
    *a9 = v21;
    *(a9 + 8) = v18;
    *(a9 + 9) = v19;
    *(a9 + 26) = *&v30[16];
    *(a9 + 42) = v30[32];
    v25 = *v43;
    v24 = *&v43[8];
    v46 = v43[24];
    v45 = *&v43[16];

    result = sub_1CF1A8950(v42);
    *(a9 + 48) = v25;
    *(a9 + 56) = v24;
    *(a9 + 64) = v45;
    *(a9 + 72) = v46;
    *(a9 + 80) = v27;
    *(a9 + 88) = v29;
  }

  return result;
}

uint64_t sub_1CF7F92B0(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 488) = a5;
  *(v6 + 496) = v5;
  *(v6 + 472) = a3;
  *(v6 + 480) = a4;
  *(v6 + 266) = a2;
  *(v6 + 464) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF8, &unk_1CFA05340);
  sub_1CEFCCCEC(&unk_1EC4BFC00, &qword_1EC4BFBF8, &unk_1CFA05340);
  v8 = sub_1CF9E6EC8();
  *(v6 + 504) = v8;
  *(v6 + 512) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1CF7F9384, v8, v7);
}

uint64_t sub_1CF7F9384()
{
  if (fpfs_is_seed_build() && !fpfs_supports_tap_to_feedback() || (sub_1CF8E5D7C(2, 0, 0, 0x2000000u) & 1) == 0)
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 496);
  v2 = *(v0 + 266);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = sub_1CF9E57E8();
  *(v0 + 520) = v5;
  v6 = [v5 domain];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  *(v0 + 528) = v7;
  *(v0 + 536) = v9;
  v10 = [v5 code];
  *(v0 + 544) = v10;
  *(v0 + 208) = v7;
  *(v0 + 216) = v9;
  *(v0 + 224) = v10;
  *(v0 + 232) = 22789;
  *(v0 + 234) = 2;
  *(v0 + 240) = 49;
  *(v0 + 248) = 0xE100000000000000;
  *(v0 + 256) = 0x3FF0000000000000;
  *(v0 + 264) = 2;
  v11 = *(v0 + 224);
  *(v0 + 144) = *(v0 + 208);
  *(v0 + 160) = v11;
  *(v0 + 176) = *(v0 + 240);
  *(v0 + 185) = *(v0 + 249);

  LOBYTE(v1) = sub_1CF7F8508(v4, v2 & 0x1FF, (v0 + 144));
  sub_1CF1A8950(v0 + 208);
  if (v1)
  {

LABEL_6:
    v12 = *(v0 + 8);

    return v12();
  }

  v14 = v2;
  v15 = *(v0 + 488);
  v29 = *(v0 + 480);
  v16 = *(v0 + 464);
  v17 = *(v0 + 266);
  *(v0 + 201) = BYTE1(v17) & 1;

  sub_1CEFD0988(v16, v17, BYTE1(v17) & 1);
  v18 = sub_1CF4E3750(MEMORY[0x1E69E7CC0]);
  sub_1CEFD0988(v16, v17, BYTE1(v17) & 1);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D3180(v29, v15, v16, v14 | (((v17 >> 8) & 1) << 8), isUniquelyReferenced_nonNull_native);
  sub_1CEFD0994(v16, v17, BYTE1(v17) & 1);
  v20 = v18;
  *(v0 + 552) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F20, &unk_1CFA18130);
  inited = swift_initStackObject();
  *(v0 + 560) = inited;
  *(inited + 16) = xmmword_1CF9FA450;
  *(v0 + 272) = v16;
  *(v0 + 280) = v17;
  *(v0 + 281) = *(v0 + 201);
  *(v0 + 288) = v7;
  *(v0 + 296) = v9;
  *(v0 + 304) = v10;
  *(v0 + 312) = 22789;
  *(v0 + 314) = 2;
  v22 = *(v0 + 299);
  v23 = *(v0 + 288);
  *(inited + 32) = *(v0 + 272);
  *(inited + 48) = v23;
  *(inited + 59) = v22;
  *(inited + 80) = 49;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = 0x3FF0000000000000;
  *(inited + 104) = 2;
  sub_1CEFCCBDC(v0 + 272, v0 + 320, &qword_1EC4BE1A0, &unk_1CFA17130);
  v24 = sub_1CF19F0C0(v7, v9, v10, 153861);
  v26 = v25;

  *(inited + 112) = v24;
  *(inited + 120) = v26;
  v27 = swift_task_alloc();
  *(v0 + 568) = v27;
  *v27 = v0;
  v27[1] = sub_1CF7F96FC;
  v28 = *(v0 + 496);

  return sub_1CF7F9A60(inited, v20, 2, 0, 0, 0x2000000);
}

uint64_t sub_1CF7F96FC()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v4 = *v1;
  v2[72] = v0;

  v5 = v2[70];
  v6 = v2[69];

  swift_setDeallocating();
  if (v0)
  {
    v7 = *(v5 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6B8, &unk_1CF9FE530);
    swift_arrayDestroy();
    v8 = v2[63];
    v9 = v2[64];
    v10 = sub_1CF7F9988;
  }

  else
  {
    v11 = *(v5 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6B8, &unk_1CF9FE530);
    swift_arrayDestroy();
    v8 = v2[63];
    v9 = v2[64];
    v10 = sub_1CF7F98B0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1CF7F98B0()
{
  v1 = *(v0 + 544);
  v6 = *(v0 + 528);
  v2 = *(v0 + 266);
  v3 = *(v0 + 464);

  *(v0 + 416) = v3;
  *(v0 + 424) = v2;
  *(v0 + 425) = *(v0 + 201);
  *(v0 + 426) = *(v0 + 202);
  *(v0 + 430) = *(v0 + 206);
  *(v0 + 432) = v6;
  *(v0 + 448) = v1;
  *(v0 + 456) = 22789;
  *(v0 + 458) = 2;
  sub_1CEFCCC44(v0 + 416, &qword_1EC4BE1A0, &unk_1CFA17130);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CF7F9988()
{
  v1 = *(v0 + 544);
  v7 = *(v0 + 528);
  v2 = *(v0 + 266);
  v3 = *(v0 + 464);

  *(v0 + 368) = v3;
  *(v0 + 376) = v2;
  *(v0 + 377) = *(v0 + 201);
  *(v0 + 378) = *(v0 + 202);
  *(v0 + 382) = *(v0 + 206);
  *(v0 + 384) = v7;
  *(v0 + 400) = v1;
  *(v0 + 408) = 22789;
  *(v0 + 410) = 2;
  sub_1CEFCCC44(v0 + 368, &qword_1EC4BE1A0, &unk_1CFA17130);
  v4 = *(v0 + 8);
  v5 = *(v0 + 576);

  return v4();
}

uint64_t sub_1CF7F9A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v7 + 368) = a6;
  *(v7 + 248) = a5;
  *(v7 + 256) = v6;
  *(v7 + 232) = a3;
  *(v7 + 240) = a4;
  *(v7 + 216) = a1;
  *(v7 + 224) = a2;
  v8 = sub_1CF9E5CF8();
  *(v7 + 264) = v8;
  v9 = *(v8 - 8);
  *(v7 + 272) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 280) = swift_task_alloc();
  v11 = sub_1CF9E6118();
  *(v7 + 288) = v11;
  v12 = *(v11 - 8);
  *(v7 + 296) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF8, &unk_1CFA05340);
  sub_1CEFCCCEC(&unk_1EC4BFC00, &qword_1EC4BFBF8, &unk_1CFA05340);
  v15 = sub_1CF9E6EC8();
  *(v7 + 312) = v15;
  *(v7 + 320) = v14;

  return MEMORY[0x1EEE6DFA0](sub_1CF7F9BEC, v15, v14);
}

uint64_t sub_1CF7F9BEC()
{
  v95 = v0;
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v0 + 372);
    v4 = (v1 + 32);
    v5 = *(v1 + 16);
    do
    {
      v6 = *(v0 + 256);
      v7 = v4[1];
      *(v0 + 16) = *v4;
      *(v0 + 32) = v7;
      v8 = v4[5];
      v10 = v4[2];
      v9 = v4[3];
      *(v0 + 80) = v4[4];
      *(v0 + 96) = v8;
      *(v0 + 48) = v10;
      *(v0 + 64) = v9;
      sub_1CEFCCBDC(v0 + 16, v0 + 112, &qword_1EC4BE6B8, &unk_1CF9FE530);
      v11 = *(v0 + 24);
      v12 = *(v0 + 25);
      v13 = *(v0 + 32);
      v14 = *(v0 + 48);
      v15 = *(v0 + 56);
      v16 = *(v0 + 58);
      v17 = *(v0 + 64);
      v18 = *(v0 + 72);
      v19 = *(v0 + 80);
      v20 = *(v0 + 88);
      v22 = *(v0 + 96);
      v21 = *(v0 + 104);
      v80 = *(v0 + 16);
      v81 = v11;
      v82 = v12;
      v83 = v13;
      v84 = v14;
      v85 = v15;
      v86 = v16;
      v87 = v17;
      v88 = v18;
      v89 = v19;
      v90 = v20;
      v91 = v22;
      v92 = v21;
      sub_1CF7FA4B8(&v80, v6);
      sub_1CEFCCC44(v0 + 16, &qword_1EC4BE6B8, &unk_1CF9FE530);
      v4 += 6;
      --v5;
    }

    while (v5);
    *(v0 + 328) = *(*(v0 + 256) + 40);
    sub_1CF7F1F10();
    *(v0 + 208) = MEMORY[0x1E69E7CC0];
    sub_1CF680E64(0, v2, 0);
    v27 = *(v0 + 208);
    v78 = v2 - 1;
    v28 = (v1 + 104);
    v76 = (v0 + 378);
    while (1)
    {
      v29 = *(v28 - 9);
      v30 = *(v28 - 64);
      v32 = *(v28 - 6);
      v72 = *(v28 - 5);
      v73 = *(v28 - 7);
      v70 = *(v28 - 31);
      v71 = *(v28 - 32);
      v69 = *(v28 - 30);
      v33 = *(v28 - 2);
      v75 = *(v28 - 3);
      v34 = *(v28 - 1);
      v74 = *v28;
      v93 = *(v28 - 63);
      v31 = v93;
      *v76 = *(v0 + 383);
      *(v0 + 382) = *(v0 + 387);
      *v3 = v94;
      *(v3 + 2) = WORD2(v94);
      v68 = v29;
      v66 = v31;
      v67 = v30;
      sub_1CEFD0988(v29, v30, v31);
      *(v0 + 208) = v27;
      v35 = v3;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);

      if (v37 >= v36 >> 1)
      {
        sub_1CF680E64((v36 > 1), v37 + 1, 1);
        v27 = *(v0 + 208);
      }

      *(v0 + 336) = v27;
      *(v27 + 16) = v37 + 1;
      v38 = v27 + 80 * v37;
      *(v38 + 32) = v68;
      *(v38 + 40) = v67;
      *(v38 + 41) = v66;
      v39 = *v35;
      *(v38 + 46) = *(v35 + 2);
      *(v38 + 42) = v39;
      *(v38 + 48) = v73;
      *(v38 + 56) = v32;
      *(v38 + 64) = v72;
      *(v38 + 72) = v71;
      *(v38 + 73) = v70;
      *(v38 + 74) = v69;
      v40 = *v76;
      *(v38 + 79) = *(v0 + 382);
      *(v38 + 75) = v40;
      *(v38 + 80) = v75;
      *(v38 + 88) = v33;
      *(v38 + 96) = v34;
      *(v38 + 104) = v74;
      if (!v78)
      {
        break;
      }

      v3 = v35;
      v28 += 96;
      --v78;
    }

    v41 = v27;
    v42 = *(v0 + 368);
    if (HIBYTE(v42) == 2 && (v42 & 0xFFFFFF) == 0 && *(v0 + 232) == 2 && *(v0 + 240) == 0)
    {
      v43 = *(v0 + 304);
      v44 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v45 = sub_1CF9E6108();
      v46 = sub_1CF9E7288();
      v47 = os_log_type_enabled(v45, v46);
      v48 = *(v0 + 296);
      v79 = *(v0 + 304);
      v49 = *(v0 + 288);
      if (v47)
      {
        v77 = *(v0 + 288);
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v94 = v51;
        *v50 = 136315138;
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4D10, &qword_1CFA10800);
        v53 = MEMORY[0x1D3868FE0](v41, v52);
        v55 = v54;

        v56 = sub_1CEFD0DF0(v53, v55, &v94);

        *(v50 + 4) = v56;
        _os_log_impl(&dword_1CEFC7000, v45, v46, "A provider triggered diagnostics on %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x1D386CDC0](v51, -1, -1);
        MEMORY[0x1D386CDC0](v50, -1, -1);

        (*(v48 + 8))(v79, v77);
      }

      else
      {

        (*(v48 + 8))(v79, v49);
      }
    }

    v57 = *(v0 + 280);
    sub_1CF9E5CE8();
    v58 = swift_task_alloc();
    *(v0 + 344) = v58;
    *v58 = v0;
    v58[1] = sub_1CF7FA158;
    v59 = *(v0 + 280);
    v60 = *(v0 + 248);
    v61 = *(v0 + 256);
    v62 = *(v0 + 368);
    v63 = *(v0 + 232);
    v64 = *(v0 + 240);
    v65 = *(v0 + 224);

    return sub_1CF7FAD6C(v41, v65, v59, v63, v64, v60, v62);
  }

  else
  {
    v23 = *(v0 + 304);
    v24 = *(v0 + 280);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1CF7FA158(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  v4[44] = a1;
  v4[45] = v1;

  v7 = v3[42];
  (*(v3[34] + 8))(v3[35], v3[33]);

  v8 = v3[40];
  v9 = v3[39];
  if (v1)
  {
    v10 = sub_1CF7FA448;
  }

  else
  {
    v10 = sub_1CF7FA304;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

void sub_1CF7FA304()
{
  v1 = v0[44];
  v2 = v0[41];
  sub_1CF7F3FE0(sub_1CF1A722C);
  v17 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0[45];
    v6 = (v0[44] + 41);
    while (v4 < *(v17 + 16))
    {
      v7 = v0[32];
      v8 = v0[27];
      ++v4;
      v9 = *v6;
      v10 = *(v6 - 1);
      v11 = *(v6 - 9);
      sub_1CEFD0988(v11, v10, *v6);
      sub_1CF7FA82C(v11, v10 | (v9 << 8), v8, v7);
      sub_1CEFD0994(v11, v10, v9);
      v6 += 16;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v0[44];
    v13 = v0[41];

    sub_1CF7F2850();
    v14 = v0[38];
    v15 = v0[35];

    v16 = v0[1];

    v16();
  }
}

uint64_t sub_1CF7FA448()
{
  v1 = v0[45];
  v2 = v0[38];
  v3 = v0[35];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1CF7FA4B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 42);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  *&v41 = *a1;
  BYTE8(v41) = v2;
  BYTE9(v41) = v3;
  *v42 = v4;
  *&v42[16] = v5;
  *&v42[24] = v6;
  v42[26] = v7;
  v43 = v9;
  v44 = v8;
  v45 = v10;
  v46 = v11;
  v47 = v12;
  v48 = v13;
  v38 = MEMORY[0x1E69E7CC0];
  v14 = *(a2 + 40);
  sub_1CEFCCBDC(&v41, &v36, &qword_1EC4BE6B8, &unk_1CF9FE530);

  v15 = v48;
  v29 = v47;

  swift_beginAccess();
  v16 = *(v14 + 80);
  v39 = v41;
  v40[0] = *v42;
  *(v40 + 11) = *&v42[11];
  if (*(v16 + 16))
  {

    v17 = sub_1CF7BFC48(&v39);
    if (v18)
    {
      v19 = (*(v16 + 56) + 24 * v17);
      v20 = *v19;
      v21 = v19[2];

      sub_1CEFCCC44(&v41, &qword_1EC4BE1A0, &unk_1CFA17130);

      sub_1CF1E8CF8(v20);
      v22 = v38;
      goto LABEL_6;
    }
  }

  sub_1CEFCCC44(&v41, &qword_1EC4BE1A0, &unk_1CFA17130);
  v22 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v36 = v39;
  v37[0] = v40[0];
  *(v37 + 11) = *(v40 + 11);
  sub_1CEFCCBDC(&v41, &v30, &qword_1EC4BE1A0, &unk_1CFA17130);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_1CF0710C0(0, *(v22 + 2) + 1, 1, v22);
  }

  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_1CF0710C0((v23 > 1), v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  v25 = &v22[16 * v24];
  *(v25 + 4) = v9;
  *(v25 + 5) = v8;
  v32 = v36;
  v33[0] = v37[0];
  *(v33 + 11) = *(v37 + 11);

  sub_1CEFCCC44(&v32, &qword_1EC4BE1A0, &unk_1CFA17130);
  sub_1CEFCCBDC(&v41, &v30, &qword_1EC4BE6B8, &unk_1CF9FE530);

  v30 = v39;
  v31[0] = v40[0];
  *(v31 + 11) = *(v40 + 11);
  swift_beginAccess();
  sub_1CEFCCBDC(&v41, &v34, &qword_1EC4BE1A0, &unk_1CFA17130);

  v26 = *(v14 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v34 = *(v14 + 80);
  *(v14 + 80) = 0x8000000000000000;
  sub_1CF1D2FB8(v22, v29, v15, &v39, isUniquelyReferenced_nonNull_native);
  sub_1CEFCCC44(&v41, &qword_1EC4BE1A0, &unk_1CFA17130);
  *(v14 + 80) = v34;
  swift_endAccess();
  *(v14 + 72) = 1;
  v34 = v30;
  v35[0] = v31[0];
  *(v35 + 11) = *(v31 + 11);
  return sub_1CEFCCC44(&v34, &qword_1EC4BE1A0, &unk_1CFA17130);
}

uint64_t sub_1CF7FA82C(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v66 = a2 & 0x1FF;
  v40[2] = &v65;

  v13 = sub_1CF7F4564(sub_1CF8F8ED4, v40, a3);
  if (*(v13 + 16))
  {
    v14 = *(v13 + 80);
    v53 = *(v13 + 64);
    v54 = v14;
    v15 = *(v13 + 112);
    v55 = *(v13 + 96);
    v56 = v15;
    v16 = *(v13 + 48);
    v51 = *(v13 + 32);
    v52 = v16;
    sub_1CEFCCBDC(&v51, &v45, &qword_1EC4BE6B8, &unk_1CF9FE530);

    v61 = v53;
    v62 = v54;
    v63 = v55;
    v64 = v56;
    v59 = v51;
    v60 = v52;
    v17 = *(a4 + 40);
    v58[3] = v55;
    v58[4] = v56;
    v58[1] = v53;
    v58[2] = v54;
    v57 = v51;
    v58[0] = v52;
    sub_1CEFCCBDC(&v57, &v45, &qword_1EC4BE6B8, &unk_1CF9FE530);

    swift_beginAccess();
    v18 = *(v17 + 80);
    v69 = v57;
    v70[0] = v58[0];
    *(v70 + 11) = *(v58 + 11);
    if (*(v18 + 16))
    {

      v19 = sub_1CF7BFC48(&v69);
      if (v20)
      {
        v21 = (*(v18 + 56) + 24 * v19);
        v22 = *v21;
        v39 = v21[1];
        v23 = v21[2];

        v24 = sub_1CEFCCC44(&v57, &qword_1EC4BE1A0, &unk_1CFA17130);
        v71 = &v38;
        v44 = v22;
        MEMORY[0x1EEE9AC00](v24);
        *(&v38 - 2) = &v59;

        result = sub_1CF8DF4CC(sub_1CF8F8EF4, (&v38 - 4));
        v26 = v44;
        v27 = *(v44 + 2);
        if (result > v27)
        {
          __break(1u);
        }

        else
        {
          v28 = result;
          if ((result & 0x8000000000000000) == 0)
          {
            v29 = result;
            if (!__OFADD__(v27, result - v27))
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v29 > *(v26 + 3) >> 1)
              {
                if (v27 <= v29)
                {
                  v31 = v29;
                }

                else
                {
                  v31 = v27;
                }

                v26 = sub_1CF0710C0(isUniquelyReferenced_nonNull_native, v31, 1, v26);
                v44 = v26;
              }

              sub_1CF8E6498(v28, v27, 0);
              v43[1] = v61;
              v43[2] = v62;
              v43[3] = v63;
              v43[4] = v64;
              v42 = v59;
              v43[0] = v60;
              sub_1CEFCCBDC(&v42, &v45, &qword_1EC4BE6B8, &unk_1CF9FE530);

              swift_beginAccess();
              v67 = v42;
              v68[0] = v43[0];
              *(v68 + 11) = *(v43 + 11);
              v32 = *(v17 + 80);
              v33 = swift_isUniquelyReferenced_nonNull_native();
              v41 = *(v17 + 80);
              *(v17 + 80) = 0x8000000000000000;
              sub_1CF1D2FB8(v26, v39, v23, &v67, v33);
              sub_1CEFCCC44(&v42, &qword_1EC4BE1A0, &unk_1CFA17130);
              *(v17 + 80) = v41;
              swift_endAccess();

              *(v17 + 72) = 1;
              v47 = v61;
              v48 = v62;
              v45 = v59;
              v46 = v60;
              v49 = v63;
              v50 = v64;
              return sub_1CEFCCC44(&v45, &qword_1EC4BE6B8, &unk_1CF9FE530);
            }

LABEL_22:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_22;
      }
    }

    sub_1CEFCCC44(&v57, &qword_1EC4BE1A0, &unk_1CFA17130);
    v47 = v61;
    v48 = v62;
    v49 = v63;
    v50 = v64;
    v45 = v59;
    v46 = v60;
    return sub_1CEFCCC44(&v45, &qword_1EC4BE6B8, &unk_1CF9FE530);
  }

  v34 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v35 = sub_1CF9E6108();
  v36 = sub_1CF9E72A8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1CEFC7000, v35, v36, "Cannot add back unsentItem, couldn't find matching item", v37, 2u);
    MEMORY[0x1D386CDC0](v37, -1, -1);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1CF7FAD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *(v8 + 728) = v7;
  *(v8 + 284) = a7;
  *(v8 + 720) = a6;
  *(v8 + 712) = a5;
  *(v8 + 704) = a4;
  *(v8 + 696) = a3;
  *(v8 + 688) = a2;
  *(v8 + 680) = a1;
  v9 = sub_1CF9E6118();
  *(v8 + 736) = v9;
  v10 = *(v9 - 8);
  *(v8 + 744) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 752) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF8, &unk_1CFA05340);
  sub_1CEFCCCEC(&unk_1EC4BFC00, &qword_1EC4BFBF8, &unk_1CFA05340);
  v13 = sub_1CF9E6EC8();
  *(v8 + 760) = v13;
  *(v8 + 768) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1CF7FAEB0, v13, v12);
}

void sub_1CF7FAEB0()
{
  v1 = *(v0 + 728);
  v2 = v1 + *(*v1 + 208);
  v3 = *v2;
  v4 = *(v0 + 680);
  if (*v2)
  {
    v5 = *(v2 + 1);

    v3(v4);
    sub_1CEFF7124(v3);
LABEL_47:
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_48;
  }

  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  v7 = v1[2];
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(*Strong + 432);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4D40, &qword_1CFA17F50);
    v9(2, sub_1CF8F8F14, v6, v10);

    v11 = *(v0 + 664);
  }

  else
  {
    sub_1CF2CA194();
    v12 = swift_allocError();
    swift_willThrow();
    v13 = *(v0 + 752);

    v14 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v15 = sub_1CF9E6108();
    v16 = sub_1CF9E72A8();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 752);
    v19 = *(v0 + 744);
    v20 = *(v0 + 736);
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1CEFC7000, v15, v16, "Cannot access db", v21, 2u);
      MEMORY[0x1D386CDC0](v21, -1, -1);
    }

    (*(v19 + 8))(v18, v20);
    v11 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v0 + 284);
  if (HIBYTE(v22) != 2)
  {
    v26 = 0;
    goto LABEL_14;
  }

  v23 = *(v0 + 704);
  v24 = *(v0 + 712) | *(v0 + 720);
  v25 = v22 & 0xFFFFFF;
  if (!v25 && v23 == 2 && *(v0 + 712) == 0)
  {
    v26 = 1;
LABEL_14:
    v27 = *(v0 + 728);
    v28 = sub_1CF7FC230(v11);
    *(v0 + 776) = v28;

    v29 = *(*v27 + 200);
    v30 = v27[7];
    *(v0 + 632) = type metadata accessor for FPFeedbackUIManager();
    *(v0 + 640) = &off_1F4BFD800;
    *(v0 + 608) = v30;
    v31 = v27[6];

    v32 = swift_task_alloc();
    *(v0 + 784) = v32;
    *v32 = v0;
    v32[1] = sub_1CF7FB814;
    v33 = *(v0 + 696);

    sub_1CF7EC0A8(v28, v33, v27 + v29, v26, v0 + 608);
    return;
  }

  v26 = 0;
  if (v25 || v23 != 1 || *(v0 + 712) != 0)
  {
    goto LABEL_14;
  }

  v99 = *(v11 + 16);
  if (v99)
  {
    v34 = 0;
    v35 = (v11 + 32);
    v36 = MEMORY[0x1E69E7CC0];
    while (v34 < *(v11 + 16))
    {
      v37 = v35[2];
      v38 = v35[3];
      v39 = v35[4];
      *(v0 + 96) = v35[5];
      v40 = *v35;
      v41 = v35[1];
      *(v0 + 64) = v38;
      *(v0 + 80) = v39;
      *(v0 + 32) = v41;
      *(v0 + 48) = v37;
      *(v0 + 16) = v40;
      v42 = *(v0 + 104);
      v43 = *(v0 + 40);
      v44 = *(v0 + 72);
      sub_1CEFCCBDC(v0 + 16, v0 + 112, &qword_1EC4BE6B0, &unk_1CF9FE520);

      v45 = *(v0 + 16);
      v46 = *(v0 + 24);
      v47 = *(v0 + 25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1CF1F77F0(0, v36[2] + 1, 1, v36);
      }

      v49 = v36[2];
      v48 = v36[3];
      if (v49 >= v48 >> 1)
      {
        v36 = sub_1CF1F77F0((v48 > 1), v49 + 1, 1, v36);
      }

      v36[2] = v49 + 1;
      v50 = &v36[2 * v49];
      v50[4] = v45;
      ++v34;
      *(v50 + 40) = v46;
      *(v50 + 41) = v47;
      v35 += 6;
      if (v99 == v34)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_30:

  if (!v36[2])
  {

    goto LABEL_47;
  }

  if (!fpfs_is_internal_build())
  {
LABEL_48:
    v75 = *(v0 + 752);

    v76 = *(v0 + 8);

    v76(v36);
    return;
  }

  v51 = (v0 + 378);
  v52 = *(v0 + 688);
  v53 = *(v0 + 680);

  v96 = sub_1CF8E62D8(v52, v36);

  v54 = *(v53 + 16);
  if (!v54)
  {
    v57 = MEMORY[0x1E69E7CC0];
LABEL_52:

    if (*(v57 + 16))
    {
      *(v0 + 368) = *(v57 + 32);
      v77 = *(v57 + 48);
      v78 = *(v57 + 64);
      v79 = *(v57 + 80);
      *(v0 + 425) = *(v57 + 89);
      *(v0 + 400) = v78;
      *(v0 + 416) = v79;
      *(v0 + 384) = v77;
      sub_1CEFCCBDC(v0 + 368, v0 + 448, &unk_1EC4C4D10, &qword_1CFA10800);

      v80 = *(v0 + 368);
      v81 = *(v0 + 376);
      v82 = *(v0 + 377);
      v83 = *(v0 + 384);
      v84 = *(v0 + 392);
      v85 = *(v0 + 400);
      v86 = *(v0 + 424);
      if (v84)
      {
        v101 = *(v0 + 400);
        sub_1CEFD0994(v80, v81, v82 & 1);

        MEMORY[0x1D3868CC0](v83, v84);

        MEMORY[0x1D3868CC0](58, 0xE100000000000000);
        *(v0 + 672) = v101;
        v87 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v87);

        v88 = 8250;
        v89 = 0xE200000000000000;
LABEL_58:
        v94 = *(*(v0 + 728) + 64);
        v36 = sub_1CF7F7808(v96, *(v0 + 704), *(v0 + 712), *(v0 + 720), *(v0 + 284), v88, v89);

        goto LABEL_48;
      }

      v93 = *v51 | (*(v51 + 2) << 32);
      v92 = *(v0 + 416);
      v91 = *(v0 + 432);
      v90 = *(v0 + 440);
    }

    else
    {

      v82 = 0;
      v90 = 0;
      v91 = 0;
      v86 = 0;
      v92 = 0;
      v83 = 0;
      v93 = 0;
      LOBYTE(v81) = 0;
      v80 = 0;
      v85 = 0uLL;
    }

    *(v0 + 528) = v80;
    *(v0 + 536) = v81;
    *(v0 + 537) = v82;
    v51[40] = v93;
    *(v51 + 82) = WORD2(v93);
    *(v0 + 544) = v83;
    *(v0 + 552) = 0;
    *(v0 + 560) = v85;
    *(v0 + 576) = v92;
    *(v0 + 584) = v86;
    *(v0 + 592) = v91;
    *(v0 + 600) = v90;
    sub_1CEFCCC44(v0 + 528, &unk_1EC4C4D30, &unk_1CFA17F40);
    v88 = 0;
    v89 = 0;
    goto LABEL_58;
  }

  v55 = 0;
  v56 = (v0 + 208);
  v57 = MEMORY[0x1E69E7CC0];
  v58 = *(v0 + 680) + 32;
  v95 = v58;
  v98 = v36;
LABEL_34:
  v97 = v57;
  v59 = (v58 + 80 * v55);
  v60 = v55;
  while (v60 < v54)
  {
    *v56 = *v59;
    v61 = v59[1];
    v62 = v59[2];
    v63 = v59[3];
    *(v0 + 265) = *(v59 + 57);
    *(v0 + 240) = v62;
    *(v0 + 256) = v63;
    *(v0 + 224) = v61;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_61;
    }

    v100 = v60 + 1;
    v64 = *(v0 + 216);
    v65 = *(v0 + 217);
    *(v0 + 648) = *(v0 + 208);
    *(v0 + 656) = v64;
    *(v51 + 279) = v65;
    v66 = swift_task_alloc();
    *(v66 + 16) = v0 + 648;
    sub_1CEFCCBDC(v0 + 208, v0 + 288, &unk_1EC4C4D10, &qword_1CFA10800);
    v67 = sub_1CF7F74E4(sub_1CF480978, v66, v36);

    if (v67)
    {
      v57 = v97;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CF680E64(0, *(v97 + 16) + 1, 1);
        v57 = v97;
      }

      v36 = v98;
      v51 = (v0 + 378);
      v55 = v60 + 1;
      v69 = *(v57 + 16);
      v68 = *(v57 + 24);
      v70 = v69 + 1;
      if (v69 >= v68 >> 1)
      {
        sub_1CF680E64((v68 > 1), v69 + 1, 1);
        v55 = v100;
        v70 = v69 + 1;
        v57 = v97;
      }

      *(v57 + 16) = v70;
      v71 = (v57 + 80 * v69);
      v71[2] = *v56;
      v72 = *(v0 + 224);
      v73 = *(v0 + 240);
      v74 = *(v0 + 256);
      *(v71 + 89) = *(v0 + 265);
      v71[4] = v73;
      v71[5] = v74;
      v71[3] = v72;
      v58 = v95;
      if (v55 != v54)
      {
        goto LABEL_34;
      }

      goto LABEL_52;
    }

    sub_1CEFCCC44(v0 + 208, &unk_1EC4C4D10, &qword_1CFA10800);
    ++v60;
    v59 += 5;
    v36 = v98;
    v51 = (v0 + 378);
    if (v100 == v54)
    {
      v57 = v97;
      goto LABEL_52;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}