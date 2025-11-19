uint64_t sub_1CF52EC50(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[2] = a3;
  v21 = a2;
  v20[1] = a1;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  _s20ParentIDLookupResultVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v20 - v16;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a4;
  sub_1CF9E75D8();
  v18 = sub_1CF9E8238();
  sub_1CF52CEEC(sub_1CF54FA24, v18, v17);
  v21(v17);
  return (*(v14 + 8))(v17, v13);
}

void sub_1CF52EDE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v44 = a2;
  v49 = a1;
  v51 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v45 = &v40 - v14;
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v52 = v15;
  v53 = AssociatedTypeWitness;
  v48 = AssociatedConformanceWitness;
  v54 = AssociatedConformanceWitness;
  v55 = v17;
  v40 = v17;
  v42 = type metadata accessor for ReconciliationID();
  v18 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v20 = &v40 - v19;
  v52 = a3;
  v53 = a4;
  v46 = a4;
  v47 = a6;
  v54 = a5;
  v55 = a6;
  v50 = _s20ParentIDLookupResultVMa();
  v43 = *(v50 - 8);
  v21 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v41 = &v40 - v22;
  v23 = sub_1CF9E75D8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v40 - v26;
  v28 = *(a3 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v49, v23, v31);
  if ((*(v28 + 48))(v27, 1, a3) != 1)
  {
    (*(v28 + 32))(v33, v27, a3);
    v52 = v15;
    v53 = AssociatedTypeWitness;
    v54 = v48;
    v55 = v40;
    type metadata accessor for FPFSID();
    (*(a5 + 72))(a3, a5);
    (*(v28 + 8))(v33, a3);
    swift_storeEnumTagMultiPayload();
    v37 = sub_1CF554514(v20);
    v38 = v45;
    (*(*(AssociatedTypeWitness - 8) + 56))(v45, 1, 1, AssociatedTypeWitness);
    v39 = v41;
    sub_1CF52D5BC(v37, v38, v41);
    (*(v43 + 32))(v51, v39, v50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E8238();
    goto LABEL_5;
  }

  v34 = v51;
  (*(v24 + 8))(v27, v23);
  v35 = sub_1CF2CB460(v44, 1, v15, v48);
  v36 = FPItemNotFoundError();

  if (v36)
  {
    *v34 = v36;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E8238();
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return;
  }

  __break(1u);
}

uint64_t sub_1CF52F30C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[2] = a3;
  v21 = a2;
  v20[1] = a1;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  _s20ParentIDLookupResultVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v20 - v16;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a4;
  sub_1CF9E75D8();
  v18 = sub_1CF9E8238();
  sub_1CF52CEEC(sub_1CF54FA3C, v18, v17);
  v21(v17);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1CF52F4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v60 = a2;
  v63 = a1;
  v65 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v59 = &v49 - v14;
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v56 = v15;
  v66 = v15;
  v67 = AssociatedTypeWitness;
  v54 = AssociatedConformanceWitness;
  v68 = AssociatedConformanceWitness;
  v69 = v17;
  v52 = v17;
  v55 = type metadata accessor for ReconciliationID();
  v18 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v49 - v19;
  v61 = a3;
  v62 = a5;
  v66 = a3;
  v67 = a4;
  v68 = a5;
  v69 = a6;
  v64 = _s20ParentIDLookupResultVMa();
  v58 = *(v64 - 8);
  v20 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v57 = &v49 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v66 = v22;
  v67 = v23;
  v68 = v24;
  v69 = v25;
  v26 = type metadata accessor for FileItemVersion();
  v27 = sub_1CF9E75D8();
  v50 = *(v27 - 8);
  v51 = v27;
  v28 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v49 - v29;
  v31 = sub_1CF9E75D8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v49 - v34;
  v36 = *(a4 - 8);
  v37 = *(v36 + 64);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v49 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v35, v63, v31, v39);
  if ((*(v36 + 48))(v35, 1, a4) == 1)
  {
    (*(v32 + 8))(v35, v31);
    (*(*(v26 - 8) + 56))(v30, 1, 1, v26);
    type metadata accessor for FileTreeError();
    swift_getWitnessTable();
    v42 = swift_allocError();
    sub_1CF72C4D8(v60, v30, 0, v43);
    (*(v50 + 8))(v30, v51);
    *v65 = v42;
  }

  else
  {
    (*(v36 + 32))(v41, v35, a4);
    v66 = v56;
    v67 = AssociatedTypeWitness;
    v68 = v54;
    v69 = v52;
    type metadata accessor for FPFSID();
    v44 = v53;
    (*(a6 + 72))(a4, a6);
    swift_storeEnumTagMultiPayload();
    v45 = sub_1CF554514(v44);
    v46 = v59;
    (*(a6 + 64))(a4, a6);
    (*(v36 + 8))(v41, a4);
    (*(*(AssociatedTypeWitness - 8) + 56))(v46, 0, 1, AssociatedTypeWitness);
    v47 = v57;
    sub_1CF52D5BC(v45, v46, v57);
    (*(v58 + 32))(v65, v47, v64);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CF9E8238();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF52FB88(uint64_t a1, char a2, char a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *v6;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v6;
  *(v14 + 32) = a3;
  *(v14 + 33) = a2;
  *(v14 + 40) = a5;
  *(v14 + 48) = a6;
  *(v14 + 56) = a4;

  sub_1CEFD09A0(a4);
  v17 = *(v13 + 616);
  v18 = *(v13 + 632);
  type metadata accessor for ItemLookupResult();
  v15 = sub_1CF9E75D8();
  sub_1CF92DB1C("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, a5, a6, sub_1CF54EC10, v14, v15);
}

uint64_t sub_1CF52FCCC(NSObject *a1, void *a2, void *a3, int a4, int a5, void (*a6)(char *), uint64_t a7, unint64_t a8)
{
  v187 = a8;
  v184 = a6;
  v185 = a7;
  v153 = a5;
  v163 = a4;
  v195 = a1;
  v191 = *a2;
  v8 = v191;
  v192 = a2;
  v193 = v191;
  v198 = a3;
  v10 = *(*a3 + 624);
  v11 = *(*a3 + 632);
  v12 = *(*a3 + 640);
  *&v196 = *(*a3 + 616);
  v9 = v196;
  *(&v196 + 1) = v10;
  *&v197 = v11;
  *(&v197 + 1) = v12;
  v183 = type metadata accessor for ItemLookupResult();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v181 = *(v13 - 8);
  v182 = v13;
  v14 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v180 = &v150 - v15;
  v179 = sub_1CF9E6118();
  v178 = *(v179 - 8);
  v16 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v190 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v8 + 88);
  v186 = *(v18 - 8);
  v19 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v168 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v177 = &v150 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v188 = &v150 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = swift_getAssociatedConformanceWitness();
  *&v196 = AssociatedTypeWitness;
  *(&v196 + 1) = v27;
  *&v197 = AssociatedConformanceWitness;
  *(&v197 + 1) = v29;
  v157 = type metadata accessor for FileItemVersion();
  v159 = sub_1CF9E75D8();
  v158 = *(v159 - 8);
  v30 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v169 = &v150 - v31;
  v175 = v9;
  *&v196 = v9;
  *(&v196 + 1) = v10;
  v173 = v10;
  v174 = v11;
  *&v197 = v11;
  *(&v197 + 1) = v12;
  v172 = v12;
  v32 = type metadata accessor for ItemReconciliation();
  v155 = sub_1CF9E75D8();
  v154 = *(v155 - 8);
  v33 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v167 = &v150 - v34;
  v162 = v32;
  v161 = *(v32 - 8);
  v35 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v156 = &v150 - v37;
  v189 = sub_1CF9E75D8();
  v171 = *(v189 - 8);
  v38 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v165 = &v150 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v160 = &v150 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v166 = &v150 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v176 = &v150 - v44;
  v45 = *(v191 + 80);
  v191 = *(v45 - 1);
  v46 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v164 = &v150 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v150 - v49;
  v51 = *(v193 + 96);
  *&v52 = v45;
  v193 = v18;
  *(&v52 + 1) = v18;
  v170 = v51;
  v197 = v51;
  v196 = v52;
  v53 = type metadata accessor for ReconciliationID();
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v150 - v55;
  isa = v195[3].isa;
  v58 = v195[4].isa;
  v59 = __swift_project_boxed_opaque_existential_1(v195, isa);
  v60 = v194;
  result = sub_1CF554678(v198, 0, v59, isa, v58, v56);
  if (v60)
  {
    return result;
  }

  v150 = v46;
  v151 = v38;
  v152 = v50;
  v62 = v190;
  v63 = v191;
  v192 = v45;
  v64 = v189;
  v65 = v187;
  v66 = v193;
  v194 = 0;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = v186;
    v68 = v188;
    v69 = v66;
    (*(v186 + 32))(v188, v56, v66);
    v70 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v71 = *(v67 + 16);
    v72 = v177;
    v71(v177, v68, v69);
    v73 = v65;
    sub_1CEFD09A0(v65);
    sub_1CEFD09A0(v65);
    v74 = sub_1CF9E6108();
    v75 = sub_1CF9E7298();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v198 = v77;
      *v76 = 136315394;
      v195 = v74;
      *&v196 = v77;
      v78 = v168;
      v71(v168, v72, v69);
      v79 = *(v67 + 8);
      v79(v72, v69);
      v80 = *(*(&v170 + 1) + 16);
      v81 = sub_1CF9E7F98();
      LODWORD(v192) = v75;
      v82 = v81;
      v84 = v83;
      v79(v78, v69);
      v85 = sub_1CEFD0DF0(v82, v84, &v196);

      *(v76 + 4) = v85;
      *(v76 + 12) = 2080;
      v86 = sub_1CF665B0C(v73, v173, v175, v172, v174);
      v88 = v87;
      sub_1CF540FDC(v73);
      sub_1CF540FDC(v73);
      v89 = sub_1CEFD0DF0(v86, v88, &v196);

      *(v76 + 14) = v89;
      v90 = v195;
      _os_log_impl(&dword_1CEFC7000, v195, v192, "no vfsItemID found for item %s, request %s", v76, 0x16u);
      v91 = v198;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v91, -1, -1);
      MEMORY[0x1D386CDC0](v76, -1, -1);

      (*(v178 + 8))(v190, v179);
    }

    else
    {
      sub_1CF540FDC(v73);
      v79 = *(v67 + 8);
      v79(v72, v69);
      sub_1CF540FDC(v73);

      (*(v178 + 8))(v62, v179);
    }

    v108 = v184;
    v109 = v182;
    v111 = v180;
    v110 = v181;
    (*(*(v183 - 8) + 56))(v180, 1, 1);
    swift_storeEnumTagMultiPayload();
    v108(v111);
    (*(v110 + 8))(v111, v109);
    return (v79)(v188, v69);
  }

  v92 = v152;
  v190 = *(v63 + 32);
  (v190)(v152, v56, v192);
  v93 = v198;
  v94 = sub_1CF04590C();
  v96 = v195[3].isa;
  v95 = v195[4].isa;
  v97 = __swift_project_boxed_opaque_existential_1(v195, v96);
  v98 = v93[2];
  if ((v94 & 1) == 0)
  {
    v112 = v166;
    v113 = v194;
    (*(*v98 + 160))(v92, v97, v96, v95);
    v194 = v113;
    if (!v113)
    {
      v115 = v171;
      v116 = v112;
      v117 = v176;
      v104 = v64;
      (*(v171 + 32))(v176, v116, v64);
      v118 = v160;
      (*(v115 + 16))(v160, v117, v104);
      LODWORD(v193) = (*(v186 + 48))(v118, 1, v66) != 1;
      (*(v115 + 8))(v118, v104);
      LODWORD(v188) = 0;
      v103 = v198;
LABEL_21:
      v126 = v195;
      v127 = v169;
      goto LABEL_24;
    }

LABEL_13:
    v114 = v192;
    return (*(v63 + 8))(v92, v114);
  }

  v99 = v167;
  v100 = v194;
  sub_1CF68DDB0(v92, v97, v96, v95, v167);
  v194 = v100;
  if (v100)
  {
    goto LABEL_13;
  }

  v101 = v161;
  v102 = v162;
  if ((*(v161 + 48))(v99, 1, v162) == 1)
  {
    (*(v154 + 8))(v99, v155);
    v103 = v198;
    v104 = v64;
    if (v163)
    {
      v105 = 0;
      v106 = v186;
      v107 = v176;
    }

    else
    {
      v125 = (*(v170 + 64))(v192);
      v105 = 0;
      v106 = v186;
      v107 = v176;
      if ((v125 & 1) == 0 && (v153 & 1) == 0)
      {
        v105 = sub_1CF04590C();
      }
    }

    LODWORD(v188) = v105;
    (*(v106 + 56))(v107, 1, 1, v66);
    LODWORD(v193) = 0;
    goto LABEL_21;
  }

  v119 = v156;
  (*(v101 + 32))(v156, v99, v102);
  v120 = type metadata accessor for ItemReconciliationHalf();
  v121 = v119;
  v122 = v119[*(v120 + 56)];
  LODWORD(v193) = v122 == 6;
  v123 = v173;
  v124 = v198;
  v104 = v64;
  if (v163)
  {
    LODWORD(v188) = 0;
  }

  else
  {
    LODWORD(v188) = sub_1CF54EDA0(v152, v122);
    v121 = v156;
  }

  v128 = v195;
  v127 = v169;
  v129 = v121;
  (*(v171 + 16))(v176, &v121[*(v102 + 52)], v104, v123);
  (*(v101 + 8))(v129, v102);
  v126 = v128;
  v103 = v124;
LABEL_24:
  v130 = v126[3].isa;
  v131 = v126[4].isa;
  v132 = __swift_project_boxed_opaque_existential_1(v126, v130);
  v133 = v103[4];
  v134 = v152;
  v135 = v194;
  (*(*v133 + 656))(v152, v132, v130, v131);
  v194 = v135;
  if (v135)
  {
    (*(v171 + 8))(v176, v104);
    v114 = v192;
    v92 = v134;
    return (*(v63 + 8))(v92, v114);
  }

  v136 = (*(*(v157 - 8) + 48))(v127, 1);
  v137 = 3;
  if (v136 == 1)
  {
    v137 = 515;
  }

  v195 = v137;
  v187 = v133[2];

  v198 = sub_1CF04F1A0();
  (*(v63 + 16))(v164, v134, v192);
  v138 = v171;
  (*(v171 + 16))(v165, v176, v104);
  v139 = (*(v63 + 80) + 64) & ~*(v63 + 80);
  v140 = (v150 + *(v138 + 80) + v139) & ~*(v138 + 80);
  v141 = v140 + v151;
  v142 = swift_allocObject();
  v143 = v173;
  *(v142 + 2) = v175;
  *(v142 + 3) = v143;
  v144 = v172;
  *(v142 + 4) = v174;
  *(v142 + 5) = v144;
  v145 = v185;
  *(v142 + 6) = v184;
  *(v142 + 7) = v145;
  (v190)(&v142[v139], v164, v192);
  (*(v138 + 32))(&v142[v140], v165, v189);
  v146 = &v142[v141];
  *v146 = v188 & 1;
  v146[1] = v193;
  v147 = *(*v187 + 136);

  v148 = v169;
  v149 = v198;
  v147(v134, v169, v198, v195, sub_1CF54EC3C, v142);

  (*(v138 + 8))(v176, v189);
  (*(v63 + 8))(v134, v192);
  return (*(v158 + 8))(v148, v159);
}

uint64_t sub_1CF530E9C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a6;
  v23 = a7;
  v21 = a5;
  v25 = a3;
  v26 = a2;
  v24 = a1;
  v35 = a8;
  v36 = a9;
  v37 = a10;
  v38 = a11;
  type metadata accessor for ItemLookupResult();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  v27 = a8;
  v28 = a9;
  v29 = a10;
  v30 = a11;
  v31 = a4;
  v32 = v21;
  v33 = v22;
  v34 = v23;
  sub_1CF9E75D8();
  v18 = sub_1CF9E8238();
  sub_1CF52CEEC(sub_1CF54EE78, v18, v17);
  v26(v17);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1CF531054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v70 = a5;
  v68 = a4;
  v67 = a3;
  v69 = a2;
  v71 = a1;
  v73 = a9;
  v61 = type metadata accessor for ItemMetadata();
  v13 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v58 - v16;
  v74 = a10;
  v72 = a7;
  swift_getAssociatedTypeWitness();
  v17 = sub_1CF9E75D8();
  v65 = *(v17 - 8);
  v66 = v17;
  v18 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v58 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v75 = AssociatedTypeWitness;
  v76 = v21;
  v77 = AssociatedConformanceWitness;
  v78 = v23;
  v24 = type metadata accessor for FileItemVersion();
  v25 = sub_1CF9E75D8();
  v62 = *(v25 - 8);
  v63 = v25;
  v26 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v58 - v27;
  v29 = sub_1CF9E75D8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v58 - v32;
  v34 = *(a6 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v58 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v58 - v41;
  (*(v30 + 16))(v33, v71, v29, v40);
  if ((*(v34 + 48))(v33, 1, a6) == 1)
  {
    (*(v30 + 8))(v33, v29);
    (*(*(v24 - 8) + 56))(v28, 1, 1, v24);
    type metadata accessor for FileTreeError();
    swift_getWitnessTable();
    v43 = swift_allocError();
    sub_1CF72C4D8(v69, v28, 0, v44);
    (*(v62 + 8))(v28, v63);
    v45 = v72;
    *v73 = v43;
    v75 = a6;
    v76 = v45;
    v77 = a8;
    v78 = v74;
    type metadata accessor for ItemLookupResult();
    sub_1CF9E75D8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E8238();
  }

  else
  {
    (*(v34 + 32))(v42, v33, a6);
    (*(v34 + 16))(v38, v42, a6);
    v46 = v64;
    (*(v65 + 16))();
    if ((v68 & 1) != 0 && (v47 = *(a8 + 104), v48 = v60, v47(a6, a8), v49 = *(v48 + *(v61 + 64)), sub_1CF007C58(v48, type metadata accessor for ItemMetadata), (v49 & 1) == 0))
    {
      v51 = v59;
      v47(a6, a8);
      (*(v34 + 8))(v42, a6);
      v52 = *(v51 + *(v61 + 68));
      sub_1CF007C58(v51, type metadata accessor for ItemMetadata);
      if (v52 == 2)
      {
        v50 = 1;
      }

      else
      {
        v50 = v52 ^ 1;
      }
    }

    else
    {
      (*(v34 + 8))(v42, a6);
      v50 = 0;
    }

    v53 = v72;
    v54 = v73;
    v55 = v74;
    sub_1CF52D49C(v38, v46, v50 & 1, v70 & 1, a6, v73);
    v75 = a6;
    v76 = v53;
    v77 = a8;
    v78 = v55;
    v56 = type metadata accessor for ItemLookupResult();
    (*(*(v56 - 8) + 56))(v54, 0, 1, v56);
    sub_1CF9E75D8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E8238();
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1CF531774(void *a1, _BYTE *a2, unint64_t a3, void **a4, uint64_t a5, void (*a6)(_BYTE *, uint64_t))
{
  v106 = a5;
  v107 = a6;
  v108 = a1;
  v116 = *a4;
  v9 = sub_1CF9E5CF8();
  v112 = *(v9 - 8);
  v113 = v9;
  v10 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v92[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v116[80];
  v109 = a4;
  v13 = v116[78];
  v105 = v12;
  v114 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v98 = &v92[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v92[-v19];
  v115 = sub_1CF9E6118();
  v103 = *(v115 - 8);
  v21 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v99 = &v92[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v97 = &v92[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v104 = &v92[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v92[-v28];
  v30 = [objc_allocWithZone(FPLoggerScope) init];
  v31 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v32 = v15[2];
  v111 = a2;
  v32(v20, a2, AssociatedTypeWitness);
  sub_1CEFD09A0(a3);
  v117 = a3;
  sub_1CEFD09A0(a3);
  v33 = v30;
  v102 = v29;
  v34 = sub_1CF9E6108();
  v35 = sub_1CF9E7298();

  v36 = os_log_type_enabled(v34, v35);
  v100 = v33;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v95 = v34;
    v38 = v37;
    v39 = swift_slowAlloc();
    v94 = v39;
    v96 = swift_slowAlloc();
    v118[0] = v96;
    *v38 = 138412802;
    v40 = [v33 enter];
    *(v38 + 4) = v40;
    *v39 = v40;
    *(v38 + 12) = 2080;
    v93 = v35;
    v41 = v98;
    v32(v98, v20, AssociatedTypeWitness);
    v42 = v15[1];
    v42(v20, AssociatedTypeWitness);
    v43 = v105;
    v44 = v114;
    v45 = *(swift_getAssociatedConformanceWitness() + 16);
    v46 = sub_1CF9E7F98();
    v48 = v47;
    v42(v41, AssociatedTypeWitness);
    v49 = sub_1CEFD0DF0(v46, v48, v118);

    *(v38 + 14) = v49;
    *(v38 + 22) = 2080;
    v50 = v117;
    v51 = v116[77];
    v52 = v44;
    v53 = v51;
    v116 = v116[79];
    v54 = sub_1CF665B0C(v117, v52, v51, v43, v116);
    v56 = v55;
    sub_1CF540FDC(v50);
    sub_1CF540FDC(v50);
    v57 = sub_1CEFD0DF0(v54, v56, v118);

    *(v38 + 24) = v57;
    v58 = v95;
    _os_log_impl(&dword_1CEFC7000, v95, v93, "%@ 🥄 Request to propagate item with ID %s for %s", v38, 0x20u);
    v59 = v94;
    sub_1CEFCCC44(v94, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v59, -1, -1);
    v60 = v96;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v60, -1, -1);
    MEMORY[0x1D386CDC0](v38, -1, -1);

    v61 = *(v103 + 8);
    v62 = (v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63 = v115;
    v61(v102, v115);
    v64 = v43;
  }

  else
  {
    v50 = v117;
    sub_1CF540FDC(v117);
    (v15[1])(v20, AssociatedTypeWitness);
    sub_1CF540FDC(v50);

    v61 = *(v103 + 8);
    v62 = (v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63 = v115;
    v61(v102, v115);
    v53 = v116[77];
    v116 = v116[79];
    v64 = v105;
  }

  v65 = v114;
  v105 = sub_1CF66523C(v50, v114, v53, v64, v116);
  v103 = v66;
  v67 = fpfs_current_or_default_log();
  v68 = v104;
  sub_1CF9E6128();
  v69 = sub_1CF9E7298();
  v70 = sub_1CF19C478(v69, "propagation to FS", 17, 2, v106, v107);
  v72 = v71;
  v106 = v62;
  v107 = v61;
  v61(v68, v63);
  v73 = v64;
  v74 = v111;
  v75 = v103;
  sub_1CF5A9774(v111, v117, v103, v70, v72);

  v76 = v108[3];
  v117 = v108[4];
  __swift_project_boxed_opaque_existential_1(v108, v76);
  sub_1CF0537A0();
  v118[0] = v65;
  v118[1] = v53;
  v118[2] = v73;
  v118[3] = v116;
  type metadata accessor for Ingestion.FetchItemMetadata();
  v77 = sub_1CF656F5C(v74, v105, v75, 0x800000);
  v78 = v110;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v80 = v79;
  (*(v112 + 8))(v78, v113);
  v81 = v80 * 1000000000.0;
  if (COERCE__INT64(fabs(v80 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v81 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v81 < 9.22337204e18)
  {
    v82 = v101;
    sub_1CF5215C0(v77);
    if (v82)
    {

      v83 = fpfs_current_or_default_log();
      v84 = v99;
      sub_1CF9E6128();
      v85 = v100;
      v86 = sub_1CF9E6108();
      v87 = sub_1CF9E7298();

      if (os_log_type_enabled(v86, v87))
      {
        goto LABEL_11;
      }
    }

    else
    {

      v88 = fpfs_current_or_default_log();
      v84 = v97;
      sub_1CF9E6128();
      v85 = v100;
      v86 = sub_1CF9E6108();
      v87 = sub_1CF9E7298();

      if (os_log_type_enabled(v86, v87))
      {
LABEL_11:
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *v89 = 138412290;
        v91 = [v85 leave];
        *(v89 + 4) = v91;
        *v90 = v91;
        _os_log_impl(&dword_1CEFC7000, v86, v87, "%@", v89, 0xCu);
        sub_1CEFCCC44(v90, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v90, -1, -1);
        MEMORY[0x1D386CDC0](v89, -1, -1);
      }
    }

    v107(v84, v115);
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1CF532130(void *a1, void (*a2)(void, void, void), unint64_t a3, void **a4, uint64_t a5, uint64_t a6)
{
  v111 = a5;
  v112 = a6;
  v113 = a1;
  v108 = *a4;
  v9 = sub_1CF9E5CF8();
  v116 = *(v9 - 8);
  v117 = v9;
  v10 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v114 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v108[79];
  v118 = a4;
  v13 = v108[77];
  v120 = v12;
  v122 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v103 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v98 - v19;
  v119 = sub_1CF9E6118();
  v109 = *(v119 - 8);
  v21 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v104 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v102 = &v98 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v110 = &v98 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v98 - v28;
  v30 = [objc_allocWithZone(FPLoggerScope) init];
  v31 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v32 = v15[2];
  v115 = a2;
  (v32)(v20, a2, AssociatedTypeWitness);
  sub_1CEFD09A0(a3);
  v121 = a3;
  sub_1CEFD09A0(a3);
  v33 = v30;
  v107 = v29;
  v34 = sub_1CF9E6108();
  v35 = sub_1CF9E7298();

  v36 = os_log_type_enabled(v34, v35);
  v105 = v33;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v98 = v32;
    v39 = v38;
    v100 = v38;
    v101 = swift_slowAlloc();
    v123[0] = v101;
    *v37 = 138412802;
    v40 = [v33 enter];
    *(v37 + 4) = v40;
    *v39 = v40;
    *(v37 + 12) = 2080;
    v99 = v35;
    v41 = v103;
    (v98)(v103, v20, AssociatedTypeWitness);
    v42 = v15[1];
    v42(v20, AssociatedTypeWitness);
    v98 = v34;
    v43 = v120;
    v44 = v122;
    v45 = *(swift_getAssociatedConformanceWitness() + 16);
    v46 = sub_1CF9E7F98();
    v48 = v47;
    v42(v41, AssociatedTypeWitness);
    v49 = sub_1CEFD0DF0(v46, v48, v123);

    *(v37 + 14) = v49;
    *(v37 + 22) = 2080;
    v50 = v108[78];
    v51 = v121;
    v52 = v44;
    v53 = v50;
    v54 = v43;
    v108 = v108[80];
    v55 = sub_1CF665B0C(v121, v52, v50, v43, v108);
    v57 = v56;
    sub_1CF540FDC(v51);
    sub_1CF540FDC(v51);
    v58 = sub_1CEFD0DF0(v55, v57, v123);

    *(v37 + 24) = v58;
    v59 = v98;
    _os_log_impl(&dword_1CEFC7000, v98, v99, "%@ 🥄 Request to propagate item with ID %s for %s", v37, 0x20u);
    v60 = v100;
    sub_1CEFCCC44(v100, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v60, -1, -1);
    v61 = v101;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v61, -1, -1);
    MEMORY[0x1D386CDC0](v37, -1, -1);

    v62 = *(v109 + 8);
    v63 = (v109 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v64 = v119;
    v62(v107, v119);
    v65 = v54;
  }

  else
  {
    v66 = v121;
    sub_1CF540FDC(v121);
    (v15[1])(v20, AssociatedTypeWitness);
    sub_1CF540FDC(v66);

    v62 = *(v109 + 8);
    v63 = (v109 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v64 = v119;
    v62(v107, v119);
    v53 = v108[78];
    v108 = v108[80];
    v65 = v120;
  }

  v67 = v121;
  v68 = v108;
  v109 = sub_1CF66523C(v121, v122, v53, v65, v108);
  v107 = v69;
  v70 = fpfs_current_or_default_log();
  v71 = v110;
  sub_1CF9E6128();
  v72 = sub_1CF9E7298();
  v73 = sub_1CF19C478(v72, "propagation to FP", 17, 2, v111, v112);
  v75 = v74;
  v111 = v63;
  v112 = v62;
  v62(v71, v64);
  v76 = v115;
  v77 = v67;
  v78 = v107;
  sub_1CF5978E4(v115, v77, v107, v73, v75);

  v79 = v113[4];
  __swift_project_boxed_opaque_existential_1(v113, v113[3]);
  v123[0] = v122;
  v123[1] = v53;
  v123[2] = v120;
  v123[3] = v68;
  type metadata accessor for Ingestion.FetchItemMetadata();
  v80 = sub_1CF656F5C(v76, v109, v78, 0x800000);
  v81 = v114;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v83 = v82;
  (*(v116 + 8))(v81, v117);
  v84 = v83 * 1000000000.0;
  if (COERCE__INT64(fabs(v83 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v84 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v84 < 9.22337204e18)
  {
    v85 = v106;
    sub_1CF5215C0(v80);
    if (v85)
    {

      v86 = fpfs_current_or_default_log();
      v87 = v104;
      sub_1CF9E6128();
      v88 = v105;
      v89 = sub_1CF9E6108();
      v90 = sub_1CF9E7298();

      v91 = os_log_type_enabled(v89, v90);
      v92 = v112;
      if (v91)
      {
        goto LABEL_11;
      }
    }

    else
    {

      v93 = fpfs_current_or_default_log();
      v87 = v102;
      sub_1CF9E6128();
      v88 = v105;
      v89 = sub_1CF9E6108();
      v90 = sub_1CF9E7298();

      v94 = os_log_type_enabled(v89, v90);
      v92 = v112;
      if (v94)
      {
LABEL_11:
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *v95 = 138412290;
        v97 = [v88 leave];
        *(v95 + 4) = v97;
        *v96 = v97;
        _os_log_impl(&dword_1CEFC7000, v89, v90, "%@", v95, 0xCu);
        sub_1CEFCCC44(v96, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v96, -1, -1);
        MEMORY[0x1D386CDC0](v95, -1, -1);
      }
    }

    v92(v87, v119);
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1CF532AE0(uint64_t a1, int a2, int a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v45 = a6;
  v44 = a3;
  LODWORD(v12) = a2;
  v41 = *v7;
  v14 = sub_1CF9E6118();
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a5);
  sub_1CEFD09A0(a5);

  v19 = sub_1CF9E6108();
  v20 = sub_1CF9E7298();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = a7;
    v22 = v21;
    v23 = swift_slowAlloc();
    v38 = v23;
    v46 = v23;
    *v22 = 136315394;
    v24 = sub_1CF554E8C(v23);
    v39 = v12;
    v25 = v8;
    v26 = a4;
    v28 = v27;

    v29 = sub_1CEFD0DF0(v24, v28, &v46);
    a4 = v26;
    v8 = v25;

    *(v22 + 4) = v29;
    *(v22 + 12) = 2080;
    v30 = sub_1CF665B0C(a5, v41[78], v41[77], v41[80], v41[79]);
    v12 = v31;
    sub_1CF540FDC(a5);
    sub_1CF540FDC(a5);
    v32 = sub_1CEFD0DF0(v30, v12, &v46);
    LOBYTE(v12) = v39;

    *(v22 + 14) = v32;
    _os_log_impl(&dword_1CEFC7000, v19, v20, "looking up VFS item for %s request %s", v22, 0x16u);
    v33 = v38;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v33, -1, -1);
    v34 = v22;
    a7 = v40;
    MEMORY[0x1D386CDC0](v34, -1, -1);
  }

  else
  {
    sub_1CF540FDC(a5);
    sub_1CF540FDC(a5);
  }

  (*(v42 + 8))(v17, v43);
  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = a5;
  *(v35 + 32) = v45;
  *(v35 + 40) = a7;
  *(v35 + 48) = v44 & 1;
  *(v35 + 56) = v8;
  *(v35 + 64) = v12 & 1;
  *(v35 + 65) = a4 & 1;
  sub_1CEFD09A0(a5);

  sub_1CF52FB88(a1, v12 & 1, a4 & 1, a5, sub_1CF54FEFC, v35);
}

uint64_t sub_1CF532E4C(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, int a6, void *a7, int a8, unsigned __int8 a9)
{
  v111 = a8;
  v9 = a7;
  v103 = a6;
  v127 = a4;
  v128 = a5;
  v13 = *a7;
  v117 = *(*(*a2 + 88) - 8);
  v14 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v104 = &v98[-v15];
  v107 = *(v16 + 80);
  v106 = *(v107 - 8);
  v17 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v105 = &v98[-v19];
  v112 = v20;
  v109 = sub_1CF9E75D8();
  v108 = *(v109 - 8);
  v21 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v98[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v102 = &v98[-v24];
  v25 = v13[77];
  v26 = v13[79];
  v27 = v13[80];
  v121 = v13[78];
  v122 = v25;
  v131[0] = v25;
  v131[1] = v121;
  v119 = v27;
  v120 = v26;
  v131[2] = v26;
  v131[3] = v27;
  v28 = type metadata accessor for ItemLookupResult();
  v115 = *(v28 - 8);
  v29 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v129 = &v98[-v30];
  v116 = v31;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v32 = sub_1CF9E8238();
  v33 = *(v32 - 8);
  v34 = v33[8];
  MEMORY[0x1EEE9AC00](v32);
  v125 = &v98[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36);
  v114 = &v98[-v37];
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v98[-v39];
  v41 = sub_1CF9E6118();
  v123 = *(v41 - 8);
  v124 = v41;
  v42 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v98[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v46 = v33[2];
  v126 = a1;
  v130 = v46;
  v46(v40, a1, v32);
  sub_1CEFD09A0(a3);
  sub_1CEFD09A0(a3);

  v47 = sub_1CF9E6108();
  v48 = sub_1CF9E7298();
  v49 = os_log_type_enabled(v47, v48);
  v118 = a3;
  v113 = a2;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v101 = v9;
    v51 = v50;
    v52 = swift_slowAlloc();
    v100 = v52;
    v131[0] = v52;
    *v51 = 136315650;
    v99 = v48;
    v53 = sub_1CF554E8C(v52);
    v55 = v54;

    v56 = sub_1CEFD0DF0(v53, v55, v131);

    *(v51 + 4) = v56;
    *(v51 + 12) = 2080;
    v57 = sub_1CF665B0C(a3, v121, v122, v119, v120);
    v59 = v58;
    sub_1CF540FDC(a3);
    sub_1CF540FDC(a3);
    v60 = sub_1CEFD0DF0(v57, v59, v131);

    *(v51 + 14) = v60;
    *(v51 + 22) = 2080;
    v130(v114, v40, v32);
    v61 = sub_1CF9E6948();
    v63 = v62;
    v64 = v33[1];
    v64(v40, v32);
    v65 = sub_1CEFD0DF0(v61, v63, v131);

    *(v51 + 24) = v65;
    _os_log_impl(&dword_1CEFC7000, v47, v99, "finished VFS item lookup for %s request %s: %s", v51, 0x20u);
    v66 = v100;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v66, -1, -1);
    v67 = v51;
    v9 = v101;
    MEMORY[0x1D386CDC0](v67, -1, -1);
  }

  else
  {
    sub_1CF540FDC(a3);

    sub_1CF540FDC(a3);

    v64 = v33[1];
    v64(v40, v32);
  }

  (*(v123 + 8))(v44, v124);
  v68 = v125;
  v69 = v126;
  v130(v125, v126, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v71 = v129;
  if (EnumCaseMultiPayload == 1)
  {
    v64(v68, v32);
    return v127(v69);
  }

  v73 = a9;
  v74 = v115;
  v75 = v116;
  if ((*(v115 + 48))(v68, 1, v116) == 1)
  {
    v76 = v110;
    v77 = v113;
    sub_1CF5557D8(v110);
    v78 = v117;
    v79 = v112;
    v80 = (*(v117 + 48))(v76, 1, v112);
    v81 = v118;
    if (v80 != 1)
    {
      v88 = v104;
      (*(v78 + 32))(v104, v76, v79);
      v89 = swift_allocObject();
      *(v89 + 16) = v77;
      *(v89 + 24) = v81;
      v90 = v128;
      *(v89 + 32) = v127;
      *(v89 + 40) = v90;
      *(v89 + 48) = v9;
      *(v89 + 56) = v111 & 1;
      *(v89 + 57) = a9 & 1;
      sub_1CEFD09A0(v81);

      sub_1CF52C93C(v88, v81, sub_1CF54FF38, v89);

      return (*(v78 + 8))(v88, v79);
    }

    (*(v108 + 8))(v76, v109);
    return v127(v69);
  }

  (*(v74 + 32))(v71, v68, v75);
  v82 = v117;
  v83 = v118;
  if (v71[*(v75 + 56)])
  {
    goto LABEL_12;
  }

  if ((v103 & 1) == 0)
  {
    goto LABEL_16;
  }

  v91 = v108;
  v92 = *(v108 + 16);
  v93 = &v71[*(v75 + 52)];
  LODWORD(v130) = a9;
  v94 = v102;
  v95 = v109;
  v92(v102, v93, v109);
  v96 = (*(v82 + 48))(v94, 1, v112);
  v97 = v94;
  v73 = v130;
  (*(v91 + 8))(v97, v95);
  if (v96 == 1)
  {
LABEL_12:
    v84 = v105;
    (*(v120 + 64))(v122, v120);
    v85 = sub_1CF6651BC(v83);
    v86 = swift_allocObject();
    *(v86 + 16) = v113;
    *(v86 + 24) = v83;
    v87 = v128;
    *(v86 + 32) = v127;
    *(v86 + 40) = v87;
    *(v86 + 48) = v9;
    *(v86 + 56) = v111 & 1;
    *(v86 + 57) = v73 & 1;
    sub_1CEFD09A0(v83);

    sub_1CF52BEB4(v84, v85, sub_1CF54FFA0, v86);

    sub_1CF540FDC(v85);
    (*(v106 + 8))(v84, v107);
    return (*(v74 + 8))(v129, v75);
  }

  else
  {
LABEL_16:
    v127(v69);
    return (*(v74 + 8))(v71, v75);
  }
}

uint64_t sub_1CF533960(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t *a7, int a8, char a9)
{
  v63 = a8;
  v71 = a5;
  v72 = a6;
  v12 = *(*a7 + 616);
  v13 = *(*a7 + 624);
  v14 = *a7;
  v15 = *(*a7 + 632);
  v60 = a7;
  v16 = *(v14 + 640);
  v74[0] = v12;
  v74[1] = v13;
  v69 = v16;
  v70 = v15;
  v74[2] = v15;
  v74[3] = v16;
  type metadata accessor for ItemLookupResult();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v17 = sub_1CF9E8238();
  v65 = *(v17 - 8);
  v66 = v17;
  v18 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v64 = (&v57 - v19);
  v20 = sub_1CF9E6118();
  v67 = *(v20 - 8);
  v68 = v20;
  v21 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);
  v25 = a3;

  v26 = a2;
  v27 = sub_1CF9E6108();
  v28 = sub_1CF9E7298();

  v29 = os_log_type_enabled(v27, v28);
  v61 = v13;
  v62 = v12;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v58 = v28;
    v31 = v30;
    v32 = swift_slowAlloc();
    v59 = v32;
    v74[0] = v32;
    *v31 = 136315650;
    v57 = a3;
    v33 = sub_1CF554E8C(v32);
    v35 = v34;

    v36 = sub_1CEFD0DF0(v33, v35, v74);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v37 = v13;
    v38 = v12;
    v40 = v69;
    v39 = v70;
    v41 = sub_1CF665B0C(a4, v37, v38, v69, v70);
    v43 = v42;
    sub_1CF540FDC(a4);
    sub_1CF540FDC(a4);
    v44 = sub_1CEFD0DF0(v41, v43, v74);

    *(v31 + 14) = v44;
    *(v31 + 22) = 2080;
    v73 = a2;
    v45 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v46 = sub_1CF9E6948();
    v48 = sub_1CEFD0DF0(v46, v47, v74);

    *(v31 + 24) = v48;
    _os_log_impl(&dword_1CEFC7000, v27, v58, "finished propagating to FP %s request %s: %s", v31, 0x20u);
    v49 = v59;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v49, -1, -1);
    MEMORY[0x1D386CDC0](v31, -1, -1);

    (*(v67 + 8))(v23, v68);
    v25 = v57;
    if (a2)
    {
LABEL_3:
      v50 = v64;
      *v64 = a2;
      v51 = v66;
      swift_storeEnumTagMultiPayload();
      v52 = a2;
      v71(v50);
      return (*(v65 + 8))(v50, v51);
    }
  }

  else
  {
    sub_1CF540FDC(a4);
    sub_1CF540FDC(a4);

    (*(v67 + 8))(v23, v68);
    v40 = v69;
    v39 = v70;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v54 = swift_allocObject();
  v55 = v61;
  v54[2] = v62;
  v54[3] = v55;
  v54[4] = v39;
  v54[5] = v40;
  v54[6] = v25;
  v54[7] = a4;
  v56 = v72;
  v54[8] = v71;
  v54[9] = v56;
  sub_1CEFD09A0(a4);

  sub_1CF52FB88(v25, v63 & 1, a9 & 1, a4, sub_1CF54FFF8, v54);
}

uint64_t sub_1CF533E68(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t *a7, int a8, char a9)
{
  v65 = a8;
  v72 = a5;
  v13 = *(*a7 + 616);
  v14 = *(*a7 + 624);
  v15 = *a7;
  v16 = *(*a7 + 632);
  v62 = a7;
  v17 = *(v15 + 640);
  v74[0] = v13;
  v74[1] = v14;
  v70 = v17;
  v71 = v16;
  v74[2] = v16;
  v74[3] = v17;
  type metadata accessor for ItemLookupResult();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v18 = sub_1CF9E8238();
  v67 = *(v18 - 8);
  v19 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v57[-v20];
  v21 = sub_1CF9E6118();
  v68 = *(v21 - 8);
  v69 = v21;
  v22 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v57[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);
  v26 = a3;

  v27 = a2;
  v28 = sub_1CF9E6108();
  v29 = sub_1CF9E7298();

  v30 = os_log_type_enabled(v28, v29);
  v63 = v14;
  v64 = v13;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v60 = v18;
    v32 = v31;
    v33 = swift_slowAlloc();
    v59 = v33;
    v74[0] = v33;
    *v32 = 136315650;
    v58 = v29;
    v34 = sub_1CF554E8C(v33);
    v61 = a6;
    v36 = v35;

    v37 = sub_1CEFD0DF0(v34, v36, v74);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    v38 = v14;
    v39 = v13;
    v41 = v70;
    v40 = v71;
    v42 = sub_1CF665B0C(a4, v38, v39, v70, v71);
    v44 = v43;
    sub_1CF540FDC(a4);
    sub_1CF540FDC(a4);
    v45 = sub_1CEFD0DF0(v42, v44, v74);

    *(v32 + 14) = v45;
    *(v32 + 22) = 2080;
    v73 = a2;
    v46 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v47 = sub_1CF9E6948();
    v49 = sub_1CEFD0DF0(v47, v48, v74);

    *(v32 + 24) = v49;
    a6 = v61;
    _os_log_impl(&dword_1CEFC7000, v28, v58, "finished propagating to FS %s request %s: %s", v32, 0x20u);
    v50 = v59;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v50, -1, -1);
    v51 = v32;
    v18 = v60;
    MEMORY[0x1D386CDC0](v51, -1, -1);

    (*(v68 + 8))(v24, v69);
    if (a2)
    {
LABEL_3:
      v52 = v66;
      *v66 = a2;
      swift_storeEnumTagMultiPayload();
      v53 = a2;
      v72(v52);
      return (*(v67 + 8))(v52, v18);
    }
  }

  else
  {
    sub_1CF540FDC(a4);
    sub_1CF540FDC(a4);

    (*(v68 + 8))(v24, v69);
    v41 = v70;
    v40 = v71;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  *(v26 + *(*v26 + 128)) = 0;
  v55 = swift_allocObject();
  v56 = v63;
  v55[2] = v64;
  v55[3] = v56;
  v55[4] = v40;
  v55[5] = v41;
  v55[6] = v26;
  v55[7] = a4;
  v55[8] = v72;
  v55[9] = a6;
  sub_1CEFD09A0(a4);

  sub_1CF52FB88(v26, v65 & 1, a9 & 1, a4, sub_1CF550118, v55);
}

uint64_t sub_1CF534398(char *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const char *a10)
{
  v55 = a7;
  v56 = a6;
  v61[0] = a6;
  v61[1] = a7;
  v57 = a8;
  v61[2] = a8;
  v61[3] = a9;
  v54 = a9;
  type metadata accessor for ItemLookupResult();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v14 = sub_1CF9E8238();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v21 = sub_1CF9E6118();
  v58 = *(v21 - 8);
  v59 = v21;
  v22 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v26 = *(v15 + 16);
  v60 = a1;
  v51 = v26;
  v26(v20, a1, v14);
  sub_1CEFD09A0(a3);
  sub_1CEFD09A0(a3);

  v27 = sub_1CF9E6108();
  v52 = sub_1CF9E7298();
  if (os_log_type_enabled(v27, v52))
  {
    v48 = a10;
    v28 = swift_slowAlloc();
    v49 = a5;
    v29 = v28;
    v30 = swift_slowAlloc();
    v47 = v30;
    v61[0] = v30;
    *v29 = 136315650;
    v46 = v27;
    v31 = sub_1CF554E8C(v30);
    v50 = a4;
    v33 = v32;

    v34 = sub_1CEFD0DF0(v31, v33, v61);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = sub_1CF665B0C(a3, v55, v56, v54, v57);
    v37 = v36;
    sub_1CF540FDC(a3);
    sub_1CF540FDC(a3);
    v38 = sub_1CEFD0DF0(v35, v37, v61);

    *(v29 + 14) = v38;
    *(v29 + 22) = 2080;
    a4 = v50;
    v51(v53, v20, v14);
    v39 = sub_1CF9E6948();
    v41 = v40;
    (*(v15 + 8))(v20, v14);
    v42 = sub_1CEFD0DF0(v39, v41, v61);

    *(v29 + 24) = v42;
    v43 = v46;
    _os_log_impl(&dword_1CEFC7000, v46, v52, v48, v29, 0x20u);
    v44 = v47;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v44, -1, -1);
    MEMORY[0x1D386CDC0](v29, -1, -1);
  }

  else
  {
    sub_1CF540FDC(a3);

    sub_1CF540FDC(a3);

    (*(v15 + 8))(v20, v14);
  }

  (*(v58 + 8))(v24, v59);
  return a4(v60);
}

uint64_t sub_1CF5347DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1CF9E63D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  qos_class_self();
  sub_1CF9E63B8();
  v9 = *(v5 + 48);
  if (v9(v3, 1, v4) == 1)
  {
    (*(v5 + 104))(v8, *MEMORY[0x1E69E7FA0], v4);
    if (v9(v3, 1, v4) != 1)
    {
      sub_1CEFCCC44(v3, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
  }

  return sub_1CF9E6428();
}

id sub_1CF53499C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v60 = a4;
  v61 = a6;
  v70 = a5;
  v62 = a2;
  v63 = a3;
  v49 = a1;
  v9 = *v6;
  v58 = sub_1CF9E6448();
  v68 = *(v58 - 8);
  v59 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v67 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v9;
  v56 = v72;
  v69 = v9[79];
  v65 = v9[77];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v64 = *(v12 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - v15;
  v66 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  [v66 setCancellable_];
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = *(v12 + 16);
  v19 = AssociatedTypeWitness;
  v48(v16, a1, AssociatedTypeWitness);
  v20 = *(v12 + 80);
  v21 = v12;
  v54 = v20 | 7;
  v22 = swift_allocObject();
  v23 = v53;
  v22[2] = v65;
  v55 = v7;
  v52 = v23[78];
  v22[3] = v52;
  v22[4] = v69;
  v50 = v23[80];
  v22[5] = v50;
  v22[6] = v17;
  v22[7] = v18;
  v24 = *(v21 + 32);
  v51 = v21 + 32;
  v53 = v24;
  v25 = v16;
  v26 = v19;
  v47 = v19;
  (v24)(v22 + ((v20 + 64) & ~v20), v25, v19);
  v72[2] = sub_1CF54FC38;
  v72[3] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  v72[0] = sub_1CEFCA444;
  v72[1] = &block_descriptor_28;
  v27 = _Block_copy(aBlock);

  sub_1CF03C63C(sub_1CF54FC38);

  [v66 setCancellationHandler_];
  _Block_release(v27);

  v28 = v57;
  v48(v57, v49, v26);
  v29 = v68;
  v30 = v58;
  (*(v68 + 16))(v67, v60, v58);
  v31 = (v20 + 72) & ~v20;
  v32 = (v64 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + *(v29 + 80) + 8) & ~*(v29 + 80);
  v36 = swift_allocObject();
  *&v37 = v65;
  *(&v37 + 1) = v52;
  *&v38 = v69;
  *(&v38 + 1) = v50;
  *(v36 + 16) = v37;
  *(v36 + 32) = v38;
  v39 = v61;
  *(v36 + 48) = v70;
  *(v36 + 56) = v39;
  *(v36 + 64) = v55;
  (v53)(v36 + v31, v28, v47);
  v41 = v62;
  v40 = v63;
  *(v36 + v32) = v62;
  *(v36 + v33) = v40;
  v43 = v66;
  v42 = v67;
  *(v36 + v34) = v66;
  (*(v68 + 32))(v36 + v35, v42, v30);

  sub_1CEFD09A0(v41);
  v44 = v43;
  sub_1CF92DC74("materialize(_:request:options:qos:completion:)", 46, 2u, sub_1CF045408, 0, v70, v39, sub_1CF54FCE4, v36);

  return v44;
}

void sub_1CF534F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v26 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      (*(v12 + 16))(v15, a3, AssociatedTypeWitness);
      v20 = *(v12 + 80);
      v26 = a7;
      v21 = (v20 + 56) & ~v20;
      v22 = swift_allocObject();
      v23 = v26;
      v24 = v27;
      *(v22 + 2) = a4;
      *(v22 + 3) = v24;
      *(v22 + 4) = a6;
      *(v22 + 5) = v23;
      *(v22 + 6) = v17;
      (*(v12 + 32))(&v22[v21], v15, AssociatedTypeWitness);
      *&v22[(v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = v19;

      v25 = v19;
      sub_1CF92DE44("materialize(_:request:options:qos:completion:)", 46, 2u, sub_1CF045408, 0, nullsub_1, 0, sub_1CF54FE10, v22);
    }

    else
    {
    }
  }
}

uint64_t sub_1CF5351C0(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void, void), unint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v76 = a8;
  v78 = a1;
  v74 = a7;
  v75 = a9;
  v71 = *a4;
  v14 = sub_1CF9E5CF8();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E6118();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v23 = sub_1CF9E7298();
  v24 = sub_1CF19C010(v23, "materialization waiter", 22, 2, a2, a3);
  v26 = v25;
  v27 = v17;
  v28 = v78;
  (*(v18 + 8))(v21, v27);
  v29 = v74;
  v30 = v28[3];
  v31 = v28[4];
  v32 = __swift_project_boxed_opaque_existential_1(v28, v30);
  v66 = *(v31 + 8);
  v72 = a6;
  v73 = a5;
  v33 = v76;
  v76 = a4;
  if ((sub_1CF599234(a5, a6, v29, v33, v75, v32, v24, v26, v30, v66) - 1) > 1u)
  {
  }

  v67 = v26;
  v34 = v71[77];
  v35 = v71[78];
  v36 = v71[79];
  v37 = v71[80];
  v79 = v34;
  v80 = v35;
  v81 = v36;
  v82 = v37;
  type metadata accessor for ConcreteJobResult();
  v38 = sub_1CF056580();
  v75 = sub_1CF056580();
  if ((v29 & 2) != 0)
  {
    v39 = 0x400000800000;
  }

  else
  {
    v39 = 0x800000;
  }

  v40 = v28[3];
  v41 = v28[4];
  v42 = __swift_project_boxed_opaque_existential_1(v28, v40);
  v43 = sub_1CF66523C(v72, v34, v35, v36, v37);
  v45 = v44;
  v46 = *(v41 + 8);

  v47 = v43;
  v48 = v77;
  sub_1CF5666D4(v73, v47, v45, v39, v76, v38, v75, v42, v40, v46);
  if (v48)
  {

LABEL_15:
  }

  v77 = v38;

  v49 = v78[3];
  v50 = v78[4];
  v51 = __swift_project_boxed_opaque_existential_1(v78, v49);
  v52 = v70;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v54 = v53;
  v55 = v69;
  v56 = *(v68 + 8);
  result = v56(v52, v69);
  v58 = v54 * 1000000000.0;
  if (COERCE__INT64(fabs(v54 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v58 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1CF521850(v77, v58, v51, v49, v50);
  v59 = v78[3];
  v60 = v78[4];
  v61 = __swift_project_boxed_opaque_existential_1(v78, v59);
  v62 = v70;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v64 = v63;
  result = v56(v62, v55);
  v65 = v64 * 1000000000.0;
  if (COERCE__INT64(fabs(v64 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v65 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v65 < 9.22337204e18)
  {
    sub_1CF521850(v75, v65, v61, v59, v60);
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1CF5356C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a7;
  v36 = a4;
  v37 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v17 = sub_1CF9E8238();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - v20;
  v22 = *(a5 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17, v25);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v22 + 32))(v27, v21, a5);
    sub_1CEFCCBDC(a2, v13, qword_1EC4C1588, &unk_1CFA0A260);
    v29 = type metadata accessor for TelemetrySignpost(0);
    if ((*(*(v29 - 8) + 48))(v13, 1, v29) == 1)
    {
      (*(v22 + 8))(v27, a5);
      sub_1CEFCCC44(v13, qword_1EC4C1588, &unk_1CFA0A260);
      return v37(a1);
    }

    v31 = sub_1CF51A3B0(a5, v35);
    sub_1CF51A508(v31, v32 & 1 | 0x40);
    (*(v22 + 8))(v27, a5);
    v30 = v13;
LABEL_8:
    sub_1CF007C58(v30, type metadata accessor for TelemetrySignpost);
    return v37(a1);
  }

  (*(v18 + 8))(v21, v17);
  sub_1CEFCCBDC(a2, v16, qword_1EC4C1588, &unk_1CFA0A260);
  v28 = type metadata accessor for TelemetrySignpost(0);
  if ((*(*(v28 - 8) + 48))(v16, 1, v28) != 1)
  {
    sub_1CF51A508(0, 128);
    v30 = v16;
    goto LABEL_8;
  }

  sub_1CEFCCC44(v16, qword_1EC4C1588, &unk_1CFA0A260);
  return v37(a1);
}

char *sub_1CF535AA0(char *a1, unint64_t a2, unint64_t a3, void (*a4)(void *), unint64_t a5, int a6, uint64_t **a7, void *a8, unsigned __int8 a9, char *a10, void *a11, uint64_t a12, uint64_t a13, unsigned __int8 a14)
{
  v133 = a6;
  v129 = a5;
  v130 = a4;
  v128 = a3;
  v140 = *a7;
  v18 = v140;
  v19 = *a8;
  v121 = sub_1CF9E6448();
  v120 = *(v121 - 8);
  v20 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v118 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a8;
  v119 = *(v19 + 80);
  v117 = *(v119 - 8);
  v22 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v123 = a7;
  v124 = &v112 - v24;
  v25 = v18[77];
  v139 = *(v25 - 8);
  v26 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v116 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v112 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v114 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v127 = &v112 - v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v37 = sub_1CF9E8238();
  v38 = *(v37 - 8);
  v39 = v38[8];
  MEMORY[0x1EEE9AC00](v37);
  v137 = (&v112 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v112 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v112 - v45;
  v47 = sub_1CF9E6118();
  v135 = *(v47 - 8);
  v136 = v47;
  v48 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v112 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v52 = v38[2];
  v138 = a1;
  v53 = a1;
  v54 = v52;
  v52(v46, v53, v37);
  sub_1CEFD09A0(a2);
  sub_1CEFD09A0(a2);
  v134 = v50;
  v55 = sub_1CF9E6108();
  v126 = sub_1CF9E7298();
  v56 = os_log_type_enabled(v55, v126);
  v132 = v43;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v125 = v31;
    v58 = v57;
    v113 = swift_slowAlloc();
    v141 = v113;
    *v58 = 136315394;
    v54(v43, v46, v37);
    v59 = sub_1CF9E6948();
    v112 = v55;
    v60 = v54;
    v61 = a2;
    v62 = v25;
    v63 = v59;
    v65 = v64;
    v131 = v38[1];
    v131(v46, v37);
    v66 = v63;
    v25 = v62;
    a2 = v61;
    v54 = v60;
    v67 = v140;
    v68 = sub_1CEFD0DF0(v66, v65, &v141);

    *(v58 + 4) = v68;
    *(v58 + 12) = 2080;
    v69 = sub_1CF665B0C(a2, v25, v67[78], v67[79], v67[80]);
    v71 = v70;
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);
    v72 = sub_1CEFD0DF0(v69, v71, &v141);

    *(v58 + 14) = v72;
    v73 = v112;
    _os_log_impl(&dword_1CEFC7000, v112, v126, "create fault completed with result %s request %s", v58, 0x16u);
    v74 = v113;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v74, -1, -1);
    v75 = v58;
    v31 = v125;
    MEMORY[0x1D386CDC0](v75, -1, -1);

    (*(v135 + 8))(v134, v136);
  }

  else
  {
    sub_1CF540FDC(a2);

    sub_1CF540FDC(a2);
    v131 = v38[1];
    v131(v46, v37);
    (*(v135 + 8))(v134, v136);
    v67 = v140;
  }

  v76 = v137;
  v54(v137, v138, v37);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    LODWORD(v138) = a9;
    v135 = a12;
    v136 = a13;
    v134 = a10;
    v137 = *(v139 + 32);
    (v137)(v31, v76, v25);
    v80 = v67[79];
    if (sub_1CF937C7C(v25, v80))
    {
      if (v133 & 1) == 0 && (sub_1CF937C7C(v25, v80))
      {
        sub_1CF52C114(v122, 1, v138 & 1, 1, a2, v134, a11, v135, v81, v136);
        return (*(v139 + 8))(v31, v25);
      }
    }

    else if ((v133 & 1) == 0)
    {
      v106 = v114;
      sub_1CEFCCBDC(v128, v114, qword_1EC4C1588, &unk_1CFA0A260);
      v107 = type metadata accessor for TelemetrySignpost(0);
      if ((*(*(v107 - 8) + 48))(v106, 1, v107) == 1)
      {
        sub_1CEFCCC44(v106, qword_1EC4C1588, &unk_1CFA0A260);
      }

      else
      {
        v110 = sub_1CF51A3B0(v25, v80);
        sub_1CF51A508(v110, v111 & 1);
        sub_1CF007C58(v106, type metadata accessor for TelemetrySignpost);
      }

      v109 = v132;
      v108 = v139;
      (*(v139 + 16))(v132, v31, v25);
      swift_storeEnumTagMultiPayload();
      v130(v109);
      goto LABEL_24;
    }

    if ((v138 & 1) == 0 || (sub_1CF06D940(v25, v80, v142), v142[0] == 1))
    {
      v132 = a2;
      result = [a11 totalUnitCount];
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        LODWORD(v131) = a14;
        [a11 setTotalUnitCount_];
        (*(v80 + 64))(v25, v80);
        v130 = a11;
        v85 = v139;
        v86 = v116;
        (*(v139 + 16))(v116, v31, v25);
        v87 = (*(v85 + 80) + 48) & ~*(v85 + 80);
        v88 = (v115 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
        v125 = v31;
        v89 = (v88 + 23) & 0xFFFFFFFFFFFFFFF8;
        v90 = (v89 + 31) & 0xFFFFFFFFFFFFFFF8;
        v128 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
        v129 = (v90 + 17) & 0xFFFFFFFFFFFFFFF8;
        v91 = (v129 + 15) & 0xFFFFFFFFFFFFFFF8;
        v92 = swift_allocObject();
        v92[2] = v25;
        v93 = v140;
        v92[3] = v140[78];
        v92[4] = v80;
        v92[5] = v93[80];
        (v137)(v92 + v87, v86, v25);
        v94 = (v92 + v88);
        v95 = v136;
        *v94 = v135;
        v94[1] = v95;
        v96 = v122;
        *(v92 + v89) = v123;
        v97 = v92 + v128;
        v98 = v132;
        *v97 = v132;
        v97[8] = v131 & 1;
        v99 = v92 + v90;
        *v99 = v96;
        v99[8] = v133 & 1;
        v99[9] = v138 & 1;
        v100 = v134;
        v101 = v130;
        *(v92 + v129) = v134;
        *(v92 + v91) = v101;
        sub_1CEFD09A0(v98);

        v102 = v101;
        v103 = v118;
        sub_1CF5347DC();
        v104 = v124;
        v105 = sub_1CF53499C(v124, v98, v100, v103, sub_1CF550CE4, v92);

        (*(v120 + 8))(v103, v121);
        (*(v117 + 8))(v104, v119);
        [v102 addChild:v105 withPendingUnitCount:1];

        return (*(v139 + 8))(v125, v25);
      }

      return result;
    }

    v108 = v139;
    v109 = v132;
    (*(v139 + 16))(v132, v31, v25);
    swift_storeEnumTagMultiPayload();
    (v135)(v109);
LABEL_24:
    v131(v109, v37);
    return (*(v108 + 8))(v31, v25);
  }

  v77 = *v76;
  v78 = v127;
  sub_1CEFCCBDC(v128, v127, qword_1EC4C1588, &unk_1CFA0A260);
  v79 = type metadata accessor for TelemetrySignpost(0);
  if ((*(*(v79 - 8) + 48))(v78, 1, v79) == 1)
  {
    sub_1CEFCCC44(v78, qword_1EC4C1588, &unk_1CFA0A260);
  }

  else
  {
    sub_1CF51A508(0, 128);
    sub_1CF007C58(v78, type metadata accessor for TelemetrySignpost);
  }

  v83 = v132;
  *v132 = v77;
  swift_storeEnumTagMultiPayload();
  v84 = v77;
  v130(v83);

  return (v131)(v83, v37);
}

uint64_t sub_1CF536744(void *a1, uint64_t *a2, void (*a3)(void *), uint64_t a4, void *a5, unint64_t a6, int a7, void *a8, unsigned __int8 a9, unsigned __int8 a10, void *a11, uint64_t a12)
{
  v120 = a7;
  v121 = a6;
  v132 = a3;
  v133 = a4;
  v136 = a2;
  v129 = a1;
  v118 = *a5;
  v14 = *a8;
  v15 = v118[77];
  v126 = v118[79];
  v137[0] = swift_getAssociatedTypeWitness();
  v137[1] = swift_getAssociatedTypeWitness();
  v137[2] = swift_getAssociatedConformanceWitness();
  v137[3] = swift_getAssociatedConformanceWitness();
  v117 = type metadata accessor for FileItemVersion();
  v16 = sub_1CF9E75D8();
  v119 = *(v16 - 8);
  v17 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v107 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v20 = sub_1CF9E8238();
  v124 = *(v20 - 8);
  v125 = v20;
  v21 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v122 = a8;
  v123 = (&v107 - v22);
  v128 = *(v14 + 80);
  v127 = *(v128 - 8);
  v23 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v134 = &v107 - v25;
  v135 = *(v15 - 8);
  v26 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v107 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v107 - v32;
  v34 = sub_1CF9E6118();
  v130 = *(v34 - 8);
  v131 = v34;
  v35 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v107 - v39;
  if (v129)
  {
    v41 = v129;
    v42 = v129;
    v43 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v44 = v135;
    (*(v135 + 16))(v30, v136, v15);
    v45 = v41;
    v46 = sub_1CF9E6108();
    v47 = sub_1CF9E72A8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v137[0] = v136;
      *v48 = 136315394;
      v49 = *(v126 + 64);
      v50 = v134;
      LODWORD(v121) = v47;
      v49(v15, v126);
      (*(v44 + 8))(v30, v15);
      v51 = v128;
      v52 = *(swift_getAssociatedConformanceWitness() + 16);
      v53 = sub_1CF9E7F98();
      v55 = v54;
      (*(v127 + 8))(v50, v51);
      v56 = sub_1CEFD0DF0(v53, v55, v137);

      *(v48 + 4) = v56;
      *(v48 + 12) = 2112;
      v57 = sub_1CF9E57E8();
      v58 = [v57 fp_prettyDescription];

      *(v48 + 14) = v58;
      v59 = v122;
      *v122 = v58;
      _os_log_impl(&dword_1CEFC7000, v46, v121, "requestMaterialization(%s) failed for vfsItemID: %@", v48, 0x16u);
      sub_1CEFCCC44(v59, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v59, -1, -1);
      v60 = v136;
      __swift_destroy_boxed_opaque_existential_1(v136);
      MEMORY[0x1D386CDC0](v60, -1, -1);
      MEMORY[0x1D386CDC0](v48, -1, -1);
    }

    else
    {
      (*(v44 + 8))(v30, v15);
    }

    (*(v130 + 8))(v37, v131);
    v80 = v123;
    *v123 = v41;
    v81 = v125;
    swift_storeEnumTagMultiPayload();
    v82 = v41;
    v132(v80);

    return (*(v124 + 8))(v80, v81);
  }

  else
  {
    v115 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v129 = v19;
    v125 = v16;
    v116 = a5;
    v123 = a11;
    v124 = a12;
    v114 = a10;
    v113 = a9;
    v61 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v62 = v135;
    v63 = *(v135 + 16);
    v112 = v135 + 16;
    v111 = v63;
    v63(v33, v136, v15);
    v64 = sub_1CF9E6108();
    v65 = sub_1CF9E7298();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v109 = v66;
      v110 = swift_slowAlloc();
      v137[0] = v110;
      *v66 = 136315138;
      v67 = v126;
      v107 = v64;
      v68 = *(v126 + 64);
      v69 = v134;
      v108 = v65;
      v68(v15, v126);
      (*(v62 + 8))(v33, v15);
      v70 = v128;
      v71 = *(swift_getAssociatedConformanceWitness() + 16);
      v72 = sub_1CF9E7F98();
      v74 = v73;
      (*(v127 + 8))(v69, v70);
      v75 = sub_1CEFD0DF0(v72, v74, v137);
      v76 = v68;

      v77 = v109;
      *(v109 + 1) = v75;
      v78 = v107;
      _os_log_impl(&dword_1CEFC7000, v107, v108, "requestMaterialization completed for vfsItemID %s", v77, 0xCu);
      v79 = v110;
      __swift_destroy_boxed_opaque_existential_1(v110);
      MEMORY[0x1D386CDC0](v79, -1, -1);
      MEMORY[0x1D386CDC0](v77, -1, -1);

      (*(v130 + 8))(v40, v131);
    }

    else
    {
      (*(v62 + 8))(v33, v15);

      (*(v130 + 8))(v40, v131);
      v67 = v126;
      v76 = *(v126 + 64);
    }

    v84 = v117;
    v85 = v115;
    v130 = *(v116[4] + 16);

    v86 = v136;
    v76(v15, v67);
    (*(*(v84 - 8) + 56))(v129, 1, 1, v84);
    v131 = sub_1CF04F1A0();
    v111(v85, v86, v15);
    v87 = v135;
    v88 = (*(v135 + 80) + 48) & ~*(v135 + 80);
    v89 = (v26 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
    v90 = (v89 + 23) & 0xFFFFFFFFFFFFFFF8;
    v136 = ((v90 + 15) & 0xFFFFFFFFFFFFFFF8);
    v91 = (v90 + 31) & 0xFFFFFFFFFFFFFFF8;
    v92 = (v91 + 17) & 0xFFFFFFFFFFFFFFF8;
    v93 = swift_allocObject();
    *(v93 + 2) = v15;
    v94 = v118;
    *(v93 + 3) = v118[78];
    *(v93 + 4) = v67;
    *(v93 + 5) = v94[80];
    (*(v87 + 32))(&v93[v88], v115, v15);
    v95 = &v93[v89];
    v96 = v133;
    *v95 = v132;
    *(v95 + 1) = v96;
    v98 = v121;
    v97 = v122;
    *&v93[v90] = v121;
    v99 = v136 + v93;
    *v99 = v116;
    v99[8] = v120 & 1;
    v100 = &v93[v91];
    *v100 = v97;
    v100[8] = v113 & 1;
    v100[9] = v114 & 1;
    v101 = v124;
    *&v93[v92] = v123;
    *&v93[(v92 + 15) & 0xFFFFFFFFFFFFFFF8] = v101;
    v102 = *(*v130 + 136);

    sub_1CEFD09A0(v98);

    v103 = v101;
    v104 = v134;
    v105 = v129;
    v106 = v131;
    v102(v134, v129, v131, 0, sub_1CF550DC8, v93);

    (*(v119 + 8))(v105, v125);
    return (*(v127 + 8))(v104, v128);
  }
}

void sub_1CF53733C(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *), uint64_t a4, unint64_t a5, uint64_t *a6, int a7, void *a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t *a11, uint64_t *a12)
{
  v188 = a7;
  v194 = a5;
  v207 = a3;
  v208 = a4;
  v211 = a2;
  v206 = *a6;
  v196 = *a8;
  v15 = v196;
  v198 = type metadata accessor for ItemMetadata();
  v16 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  v197 = (&v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v190 = a6;
  v18 = *(v206 + 616);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v19 = sub_1CF9E8238();
  v204 = *(v19 - 8);
  v205 = v19;
  v20 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v195 = (&v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v200 = (&v182 - v23);
  v189 = a8;
  v203 = *(v15 + 80);
  v202 = *(v203 - 8);
  v24 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v201 = &v182 - v26;
  v27 = *(v18 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v191 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v187 = &v182 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v186 = &v182 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v199 = (&v182 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v182 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v182 - v40;
  v42 = sub_1CF9E6118();
  v43 = *(v42 - 8);
  v209 = v42;
  v210 = v43;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v193 = &v182 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v192 = &v182 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v182 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v182 - v52;
  sub_1CF9E75D8();
  v54 = sub_1CF9E8238();
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v58 = (&v182 - v57);
  (*(v59 + 16))(&v182 - v57, a1, v54, v56);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = *v58;
    v61 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v27 + 16))(v41, v211, v18);
    v62 = v60;
    v63 = sub_1CF9E6108();
    v64 = sub_1CF9E7298();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v213 = v211;
      *v65 = 136315394;
      v66 = *(v206 + 632);
      v67 = *(v66 + 64);
      v68 = v201;
      LODWORD(v206) = v64;
      v67(v18, v66);
      (*(v27 + 8))(v41, v18);
      v69 = v203;
      v70 = *(swift_getAssociatedConformanceWitness() + 16);
      v71 = sub_1CF9E7F98();
      v73 = v72;
      (*(v202 + 8))(v68, v69);
      v74 = sub_1CEFD0DF0(v71, v73, &v213);

      *(v65 + 4) = v74;
      *(v65 + 12) = 2112;
      swift_getErrorValue();
      v75 = Error.prettyDescription.getter(v212);
      *(v65 + 14) = v75;
      v76 = v199;
      *v199 = v75;
      _os_log_impl(&dword_1CEFC7000, v63, v206, "requestMaterialization(%s) post-materialization lookup returned an error %@", v65, 0x16u);
      sub_1CEFCCC44(v76, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v76, -1, -1);
      v77 = v211;
      __swift_destroy_boxed_opaque_existential_1(v211);
      MEMORY[0x1D386CDC0](v77, -1, -1);
      MEMORY[0x1D386CDC0](v65, -1, -1);
    }

    else
    {
      (*(v27 + 8))(v41, v18);
    }

    (*(v210 + 8))(v53, v209);
    v97 = v200;
    *v200 = v60;
    v98 = v205;
    swift_storeEnumTagMultiPayload();
    v99 = v60;
    v207(v97);

    (*(v204 + 8))(v97, v98);
  }

  else
  {
    v78 = v27;
    v79 = v18;
    if ((*(v27 + 48))(v58, 1, v18) == 1)
    {
      v80 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      (*(v27 + 16))(v38, v211, v18);
      v81 = sub_1CF9E6108();
      v82 = sub_1CF9E7298();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v199 = v83;
        v200 = swift_slowAlloc();
        v213 = v200;
        *v83 = 136315138;
        v84 = *(v206 + 632);
        v206 = *(v84 + 64);
        v85 = v18;
        v86 = v201;
        LODWORD(v198) = v82;
        (v206)(v85, v84);
        (*(v78 + 8))(v38, v85);
        v87 = v203;
        v88 = *(swift_getAssociatedConformanceWitness() + 16);
        v89 = sub_1CF9E7F98();
        v91 = v90;
        v92 = v202;
        (*(v202 + 8))(v86, v87);
        v93 = sub_1CEFD0DF0(v89, v91, &v213);

        v94 = v199;
        *(v199 + 4) = v93;
        v95 = v94;
        _os_log_impl(&dword_1CEFC7000, v81, v198, "requestMaterialization(%s) post-materialization lookup returned no item", v94, 0xCu);
        v96 = v200;
        __swift_destroy_boxed_opaque_existential_1(v200);
        MEMORY[0x1D386CDC0](v96, -1, -1);
        MEMORY[0x1D386CDC0](v95, -1, -1);

        (*(v210 + 8))(v50, v209);
        (v206)(v85, v84);
      }

      else
      {
        (*(v27 + 8))(v38, v18);

        (*(v210 + 8))(v50, v209);
        v159 = v18;
        v92 = v202;
        v87 = v203;
        v86 = v201;
        (*(*(v206 + 632) + 64))(v159, *(v206 + 632));
      }

      v160 = sub_1CF2CB460(v86, 1, v87, *(v196 + 96));
      (*(v92 + 8))(v86, v87);
      v161 = FPItemNotFoundError();

      if (v161)
      {
        v162 = v195;
        *v195 = v161;
        v163 = v205;
        swift_storeEnumTagMultiPayload();
        v207(v162);
        (*(v204 + 8))(v162, v163);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v100 = v199;
      v196 = *(v27 + 32);
      v195 = (v27 + 32);
      (v196)(v199, v58, v79);
      v101 = *(v206 + 632);
      v102 = *(v101 + 104);
      v103 = v197;
      v102(v79, v101);
      v104 = *(v103 + *(v198 + 112));
      sub_1CF007C58(v103, type metadata accessor for ItemMetadata);
      if ((v104 & 1) == 0)
      {
        v105 = *(v206 + 624);
        v106 = *(v206 + 640);
        v107 = sub_1CF6656D8(v194);
        if (v107)
        {
          v108 = v79;
          v109 = v107;
          v110 = [v107 requestedExtent];
          v112 = v111;

          v79 = v108;
          v100 = v199;
          if (v112 != -1)
          {
            if (v110 > 0)
            {
              goto LABEL_17;
            }

            v113 = v197;
            v102(v79, v101);
            v114 = *(v113 + *(v198 + 104));
            sub_1CF007C58(v113, type metadata accessor for ItemMetadata);
            if (v112 < v114)
            {
              goto LABEL_17;
            }
          }
        }
      }

      if (sub_1CF937C7C(v79, v101))
      {
        v197 = a12;
        v211 = a11;
        LODWORD(v205) = a10;
        LODWORD(v204) = a9;
        v115 = fpfs_current_or_default_log();
        v116 = v192;
        sub_1CF9E6128();
        v117 = v186;
        v193 = *(v27 + 16);
        (v193)(v186, v100, v79);
        v118 = sub_1CF9E6108();
        v119 = sub_1CF9E7298();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v182 = v120;
          v184 = swift_slowAlloc();
          v213 = v184;
          *v120 = 136315138;
          v185 = *(v101 + 64);
          v183 = v119;
          v121 = v79;
          v191 = (v27 + 16);
          v122 = v201;
          v185(v79, v101);
          v123 = *(v27 + 8);
          v198 = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v200 = v123;
          (v123)(v117, v79);
          v124 = v203;
          v125 = *(swift_getAssociatedConformanceWitness() + 16);
          v126 = sub_1CF9E7F98();
          v127 = v118;
          v129 = v128;
          v130 = v124;
          v131 = v27;
          (*(v202 + 8))(v122, v130);
          v132 = sub_1CEFD0DF0(v126, v129, &v213);
          v133 = v122;

          v134 = v182;
          *(v182 + 1) = v132;
          v135 = v134;
          _os_log_impl(&dword_1CEFC7000, v127, v183, "requestMaterialization(%s) post-materialization lookup returned a dataless item - force ingestion", v134, 0xCu);
          v136 = v184;
          __swift_destroy_boxed_opaque_existential_1(v184);
          MEMORY[0x1D386CDC0](v136, -1, -1);
          MEMORY[0x1D386CDC0](v135, -1, -1);

          (*(v210 + 8))(v192, v209);
          v137 = v185;
        }

        else
        {
          v166 = *(v27 + 8);
          v198 = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v200 = v166;
          (v166)(v117, v79);

          (*(v210 + 8))(v116, v209);
          v121 = v79;
          v137 = *(v101 + 64);
          v131 = v27;
          v133 = v201;
        }

        v167 = v199;
        v137(v121, v101);
        v168 = v187;
        (v193)(v187, v167, v121);
        v169 = (*(v131 + 80) + 120) & ~*(v131 + 80);
        v170 = swift_allocObject();
        *(v170 + 16) = v121;
        v171 = v206;
        *(v170 + 24) = *(v206 + 624);
        *(v170 + 32) = v101;
        v172 = v207;
        v173 = v208;
        *(v170 + 40) = *(v171 + 640);
        *(v170 + 48) = v172;
        *(v170 + 56) = v173;
        *(v170 + 64) = v188 & 1;
        v174 = v121;
        v175 = v133;
        v176 = v189;
        *(v170 + 72) = v190;
        *(v170 + 80) = v176;
        *(v170 + 88) = v204 & 1;
        *(v170 + 89) = v205 & 1;
        v177 = v194;
        v178 = v211;
        *(v170 + 96) = v194;
        *(v170 + 104) = v178;
        v179 = v196;
        v180 = v197;
        *(v170 + 112) = v197;
        v179(v170 + v169, v168, v174);

        sub_1CEFD09A0(v177);
        v181 = v180;
        sub_1CF52BEB4(v175, v177, sub_1CF550EAC, v170);

        (*(v202 + 8))(v175, v203);
        (v200)(v199, v174);
      }

      else
      {
LABEL_17:
        v138 = fpfs_current_or_default_log();
        v139 = v193;
        sub_1CF9E6128();
        v140 = v191;
        v198 = *(v27 + 16);
        (v198)(v191, v100, v79);
        v141 = sub_1CF9E6108();
        v142 = sub_1CF9E7298();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          v206 = v79;
          v144 = v143;
          v197 = swift_slowAlloc();
          v213 = v197;
          *v144 = 136315138;
          v145 = v201;
          (*(v101 + 64))(v206, v101);
          v146 = *(v27 + 8);
          v146(v140, v206);
          v147 = v146;
          v148 = v203;
          v149 = *(swift_getAssociatedConformanceWitness() + 16);
          v150 = sub_1CF9E7F98();
          v152 = v151;
          v153 = v145;
          v100 = v199;
          (*(v202 + 8))(v153, v148);
          v154 = sub_1CEFD0DF0(v150, v152, &v213);

          *(v144 + 4) = v154;
          v155 = v142;
          v156 = v147;
          _os_log_impl(&dword_1CEFC7000, v141, v155, "requestMaterialization(%s) post-materialization lookup succeeded", v144, 0xCu);
          v157 = v197;
          __swift_destroy_boxed_opaque_existential_1(v197);
          MEMORY[0x1D386CDC0](v157, -1, -1);
          v158 = v144;
          v79 = v206;
          MEMORY[0x1D386CDC0](v158, -1, -1);

          (*(v210 + 8))(v193, v209);
        }

        else
        {
          v156 = *(v27 + 8);
          v156(v140, v79);

          (*(v210 + 8))(v139, v209);
        }

        v164 = v200;
        (v198)(v200, v211, v79);
        v165 = v205;
        swift_storeEnumTagMultiPayload();
        v207(v164);
        (*(v204 + 8))(v164, v165);
        v156(v100, v79);
      }
    }
  }
}

uint64_t sub_1CF538654(uint64_t a1, char *a2, void (*a3)(uint64_t *), uint64_t a4, int a5, uint64_t *a6, uint64_t *a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  LODWORD(v95) = a8;
  LODWORD(v94) = a5;
  v97 = a4;
  v98 = a3;
  v96 = a2;
  v93 = *a6;
  v14 = v93;
  v15 = *a7;
  v16 = sub_1CF9E5248();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v89 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E5268();
  v90 = *(v19 - 8);
  v91 = v19;
  v20 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v15 + 80);
  v88 = *(v23 - 8);
  v24 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v79 - v26;
  v28 = *(v14 + 616);
  v92 = *(v28 - 8);
  v29 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v79 - v31;
  v33 = sub_1CF9E6118();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v79 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v38 = sub_1CF9E8238();
  v39 = *(*(v38 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v38);
  v44 = (&v79 - v43);
  if (v96)
  {
    v45 = v96;
    *v44 = v96;
    v46 = v40;
    v47 = v41;
    v48 = v44;
    swift_storeEnumTagMultiPayload();
    v49 = v45;
    v98(v48);
    return (*(v47 + 8))(v48, v46);
  }

  else
  {
    v84 = v23;
    v85 = v32;
    v83 = v27;
    v51 = v92;
    v52 = v93;
    v86 = v34;
    v87 = v33;
    v96 = v22;
    if (v94)
    {
      return sub_1CF52C114(a7, v95 & 1, a9 & 1, 0, a10, a11, a12, v98, v42, v97);
    }

    else
    {
      v82 = v44;
      v94 = v40;
      v95 = v41;
      v53 = fpfs_current_or_default_log();
      v54 = v37;
      sub_1CF9E6128();
      v55 = v51;
      v56 = v85;
      (*(v51 + 16))(v85, a13, v28);
      v57 = sub_1CF9E6108();
      v58 = sub_1CF9E7298();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v80 = v59;
        v81 = swift_slowAlloc();
        v99 = v81;
        *v59 = 136315138;
        v60 = *(v52 + 632);
        v61 = v83;
        v62 = v58;
        (*(v60 + 64))(v28, v60);
        (*(v55 + 8))(v56, v28);
        v63 = v84;
        v64 = *(swift_getAssociatedConformanceWitness() + 16);
        v65 = sub_1CF9E7F98();
        v67 = v66;
        (*(v88 + 8))(v61, v63);
        v68 = sub_1CEFD0DF0(v65, v67, &v99);

        v69 = v80;
        *(v80 + 1) = v68;
        v70 = v69;
        _os_log_impl(&dword_1CEFC7000, v57, v62, "requestMaterialization(%s) post-materialization retry failed", v69, 0xCu);
        v71 = v81;
        __swift_destroy_boxed_opaque_existential_1(v81);
        MEMORY[0x1D386CDC0](v71, -1, -1);
        MEMORY[0x1D386CDC0](v70, -1, -1);
      }

      else
      {
        (*(v51 + 8))(v56, v28);
      }

      (*(v86 + 8))(v54, v87);
      v72 = v98;
      v74 = v90;
      v73 = v91;
      v75 = v96;
      sub_1CF9E5198();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00E8B4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      sub_1CF9E57D8();
      v76 = sub_1CF9E50D8();
      (*(v74 + 8))(v75, v73);
      v77 = v82;
      *v82 = v76;
      v78 = v94;
      swift_storeEnumTagMultiPayload();
      v72(v77);
      return (*(v95 + 8))(v77, v78);
    }
  }
}

uint64_t sub_1CF538D30(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = v12[77];
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v14 = sub_1CF9E8238();
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v50[-v16];
  v17 = sub_1CF9E6118();
  v57 = *(v17 - 8);
  v58 = v17;
  v18 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = swift_allocObject();
  v61 = v13;
  v21[2] = v13;
  v22 = v12[78];
  v21[3] = v22;
  v60 = v12[79];
  v21[4] = v60;
  v62 = v12[80];
  v21[5] = v62;
  v21[6] = a4;
  v59 = a4;
  v21[7] = a5;

  if (a3 < 51)
  {
    if (sub_1CF5551A8(v23))
    {
      v40 = swift_allocObject();
      *&v42 = v60;
      *&v41 = v61;
      *(&v41 + 1) = v22;
      *(&v42 + 1) = v62;
      *(v40 + 16) = v41;
      *(v40 + 32) = v42;
      *(v40 + 48) = sub_1CF5507F4;
      *(v40 + 56) = v21;

      sub_1CF539D9C(a2, sub_1CF550840, v40);
    }

    else
    {
      v48 = sub_1CF6651BC(a2);
      v49 = swift_allocObject();
      v49[2] = sub_1CF5507F4;
      v49[3] = v21;
      v49[4] = v6;
      v49[5] = a2;
      v49[6] = a1;
      v49[7] = a3;
      v49[8] = v59;
      v49[9] = a5;

      sub_1CEFD09A0(a2);

      sub_1CF52FB88(a1, 0, 0, v48, sub_1CF55080C, v49);

      sub_1CF540FDC(v48);
    }
  }

  else
  {

    v24 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFD09A0(a2);
    sub_1CEFD09A0(a2);

    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E72B8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v53 = v28;
      v63 = v28;
      *v27 = 136446466;
      v52 = v25;
      v29 = sub_1CF554E8C(v28);
      v51 = v26;
      v31 = v30;

      v32 = sub_1CEFD0DF0(v29, v31, &v63);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2082;
      v33 = v61;
      v34 = sub_1CF665B0C(a2, v61, v22, v60, v62);
      v36 = v35;
      sub_1CF540FDC(a2);
      sub_1CF540FDC(a2);
      v37 = sub_1CEFD0DF0(v34, v36, &v63);

      *(v27 + 14) = v37;
      v38 = v52;
      _os_log_impl(&dword_1CEFC7000, v52, v51, "Recursion too deep for backgroundLookup of itemID %{public}s request %{public}s", v27, 0x16u);
      v39 = v53;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v39, -1, -1);
      MEMORY[0x1D386CDC0](v27, -1, -1);

      (*(v57 + 8))(v20, v58);
    }

    else
    {
      sub_1CF540FDC(a2);
      sub_1CF540FDC(a2);

      (*(v57 + 8))(v20, v58);
      v33 = v61;
    }

    v43 = sub_1CF9E6888();
    v44 = FPInvalidParameterError();

    if (v44)
    {
      v45 = v54;
      *v54 = v44;
      v46 = v56;
      swift_storeEnumTagMultiPayload();
      sub_1CF53934C(v45, v59, a5, v33);

      return (*(v55 + 8))(v45, v46);
    }

    else
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1CF53934C(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v40 = a2;
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E75D8();
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v35 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v16 = sub_1CF9E8238();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = (&v35 - v23);
  (*(v17 + 16))(&v35 - v23, a1, v16, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    *v20 = v25;
    swift_storeEnumTagMultiPayload();
    v26 = v25;
    v40(v20);

    return (*(v17 + 8))(v20, v16);
  }

  else
  {
    v36 = v17;
    v28 = v9;
    v29 = v6;
    v30 = v39;
    v31 = a4;
    v32 = v10;
    v33 = v38;
    (*(v39 + 32))(v38, v24, v32);
    (*(v30 + 16))(v13, v33, v32);
    if ((*(v29 + 48))(v13, 1, v31) == 1)
    {
      v34 = *(v39 + 8);
      v34(v13, v32);
      (*(v29 + 56))(v20, 1, 1, v31);
      swift_storeEnumTagMultiPayload();
      v40(v20);
      (*(v36 + 8))(v20, v16);
      return (v34)(v38, v32);
    }

    else
    {
      (*(v29 + 32))(v28, v13, v31);
      (*(v29 + 16))(v20, v28, v31);
      (*(v29 + 56))(v20, 0, 1, v31);
      swift_storeEnumTagMultiPayload();
      v40(v20);
      (*(v36 + 8))(v20, v16);
      (*(v29 + 8))(v28, v31);
      return (*(v39 + 8))(v38, v32);
    }
  }
}

uint64_t sub_1CF5397EC(uint64_t a1, void (*a2)(void **), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a3;
  v47 = a2;
  v12 = sub_1CF9E75D8();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v41 - v14;
  v46 = *(a4 - 1);
  v15 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a4;
  v52 = a5;
  v53 = a6;
  v54 = a7;
  v18 = type metadata accessor for ItemLookupResult();
  v48 = *(v18 - 8);
  v19 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v45 = &v41 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v21 = sub_1CF9E8238();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v41 - v24);
  sub_1CF9E75D8();
  v26 = sub_1CF9E8238();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = (&v41 - v29);
  (*(v31 + 16))(&v41 - v29, a1, v26, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v30;
    *v25 = *v30;
    swift_storeEnumTagMultiPayload();
    v33 = v32;
    v47(v25);

    return (*(v22 + 8))(v25, v21);
  }

  v34 = v47;
  if ((*(v48 + 48))(v30, 1, v18) == 1)
  {
    v50 = sub_1CF9E5328();
    swift_dynamicCast();
    *v25 = v51;
    swift_storeEnumTagMultiPayload();
    v34(v25);
    return (*(v22 + 8))(v25, v21);
  }

  v36 = v45;
  (*(v48 + 32))();
  v37 = v44;
  sub_1CF52D0F8(v18, v44);
  v38 = v37;
  v39 = v46;
  if ((*(v46 + 48))(v38, 1, a4) == 1)
  {
    (*(v42 + 8))(v38, v12);
    (*(v39 + 56))(v25, 1, 1, a4);
    swift_storeEnumTagMultiPayload();
    v34(v25);
    (*(v22 + 8))(v25, v21);
  }

  else
  {
    v40 = v43;
    (*(v39 + 32))(v43, v38, a4);
    (*(v39 + 16))(v25, v40, a4);
    (*(v39 + 56))(v25, 0, 1, a4);
    swift_storeEnumTagMultiPayload();
    v34(v25);
    (*(v22 + 8))(v25, v21);
    (*(v39 + 8))(v40, a4);
  }

  return (*(v48 + 8))(v36, v18);
}

uint64_t sub_1CF539D9C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a2;
  v23 = a3;
  v21 = a1;
  v5 = *v3;
  v6 = *(*v3 + 616);
  v20 = *(*v3 + 632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(v5 + 640);
  v9 = *(v5 + 624);
  v24 = AssociatedTypeWitness;
  v25 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ReconciliationID();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v24 = AssociatedTypeWitness;
  v14 = type metadata accessor for FPFSID();
  (*(**(v4[5] + 16) + 96))(v14);
  swift_storeEnumTagMultiPayload();
  v15 = sub_1CF554514(v13);
  v16 = v21;
  v17 = sub_1CF6651BC(v21);
  v18 = swift_allocObject();
  v18[2] = v22;
  v18[3] = v23;
  v18[4] = v16;
  v18[5] = v4;

  sub_1CEFD09A0(v16);

  sub_1CF52FB88(v15, 1, 0, v17, sub_1CF54EA68, v18);

  sub_1CF540FDC(v17);
}

uint64_t sub_1CF53A02C(uint64_t a1, void (*a2)(void **), uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v79 = a7;
  v80 = a8;
  v81 = a6;
  v82 = a5;
  v84 = a2;
  v85 = a3;
  v83 = a1;
  v10 = *a4;
  v11 = *a4;
  v12 = sub_1CF9E6118();
  v74 = *(v12 - 8);
  v75 = v12;
  v13 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v10 + 616);
  v16 = sub_1CF9E75D8();
  v69 = *(v16 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v68 - v18;
  v72 = *(v15 - 8);
  v19 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v68 - v21;
  v22 = *(v11 + 632);
  *&v23 = v15;
  v77 = *(v10 + 624);
  *(&v23 + 1) = v77;
  v76 = v22;
  v86[1] = v22;
  v86[0] = v23;
  v24 = type metadata accessor for ItemLookupResult();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v73 = &v68 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v28 = sub_1CF9E8238();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = (&v68 - v31);
  sub_1CF9E75D8();
  v33 = sub_1CF9E8238();
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = (&v68 - v36);
  (*(v38 + 16))(&v68 - v36, v83, v33, v35);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *v37;
    *v32 = *v37;
    swift_storeEnumTagMultiPayload();
    v40 = v39;
    v84(v32);

    return (*(v29 + 8))(v32, v28);
  }

  if ((*(v25 + 48))(v37, 1, v24) == 1)
  {
    v42 = fpfs_current_or_default_log();
    v43 = v78;
    sub_1CF9E6128();
    v44 = v82;
    sub_1CEFD09A0(v82);
    sub_1CEFD09A0(v44);
    v45 = v81;

    v46 = sub_1CF9E6108();
    v47 = sub_1CF9E7298();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v86[0] = v49;
      *v48 = 136315394;
      v50 = sub_1CF554E8C(v49);
      v52 = v51;

      v53 = sub_1CEFD0DF0(v50, v52, v86);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2080;
      v54 = sub_1CF665B0C(v44, v15, v77, v76, *(&v76 + 1));
      v56 = v55;
      sub_1CF540FDC(v44);
      sub_1CF540FDC(v44);
      v57 = sub_1CEFD0DF0(v54, v56, v86);

      *(v48 + 14) = v57;
      _os_log_impl(&dword_1CEFC7000, v46, v47, "Item cannot be found on disk, looking for parent for %s request %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v49, -1, -1);
      MEMORY[0x1D386CDC0](v48, -1, -1);

      (*(v74 + 8))(v78, v75);
    }

    else
    {
      sub_1CF540FDC(v44);
      sub_1CF540FDC(v44);

      (*(v74 + 8))(v43, v75);
    }

    v64 = v84;
    v63 = v85;
    goto LABEL_12;
  }

  v58 = v73;
  (*(v25 + 32))(v73, v37, v24);
  v44 = v82;
  if ((sub_1CF54EF04(v58, 1, v82, v15, v77, v76, *(&v76 + 1)) & 1) == 0)
  {
    (*(v25 + 8))(v58, v24);
    v64 = v84;
    v63 = v85;
    v45 = v81;
LABEL_12:
    v65 = swift_allocObject();
    v65[2] = v64;
    v65[3] = v63;
    v65[4] = a4;
    v65[5] = v44;
    v66 = v80;
    v65[6] = v79;
    v65[7] = v66;
    v65[8] = a9;
    sub_1CEFD09A0(v44);

    sub_1CF52D66C(v45, sub_1CF550870, v65);
  }

  v59 = v71;
  v60 = v58;
  sub_1CF52D0F8(v24, v71);
  v61 = v59;
  v62 = v72;
  if ((*(v72 + 48))(v61, 1, v15) == 1)
  {
    (*(v69 + 8))(v61, v16);
    (*(v62 + 56))(v32, 1, 1, v15);
    swift_storeEnumTagMultiPayload();
    v84(v32);
    (*(v29 + 8))(v32, v28);
  }

  else
  {
    v67 = v70;
    (*(v62 + 32))(v70, v61, v15);
    (*(v62 + 16))(v32, v67, v15);
    (*(v62 + 56))(v32, 0, 1, v15);
    swift_storeEnumTagMultiPayload();
    v84(v32);
    (*(v29 + 8))(v32, v28);
    (*(v62 + 8))(v67, v15);
  }

  return (*(v25 + 8))(v60, v24);
}

uint64_t sub_1CF53A8FC(uint64_t a1, void (*a2)(void **), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v31 = a8;
  v32 = a6;
  v33 = a3;
  v29 = a5;
  v34 = a2;
  v9 = *a4;
  v35 = *(*a4 + 616);
  v36 = v35;
  v37 = *(v9 + 632);
  v10 = _s20ParentIDLookupResultVMa();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v29 - v13);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v15 = sub_1CF9E8238();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v29 - v18);
  v20 = sub_1CF9E8238();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = (&v29 - v23);
  (*(v25 + 16))(&v29 - v23, a1, v20, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v24;
    *v19 = *v24;
    swift_storeEnumTagMultiPayload();
    v27 = v26;
    v34(v19);

    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    result = (*(v11 + 32))(v14, v24, v10);
    if (__OFADD__(v32, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1CF538D30(*v14, v29, v32 + 1, v30, v31);
      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

uint64_t sub_1CF53AC20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CF9E6118();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a2);
  sub_1CEFD09A0(a2);

  v16 = sub_1CF9E6108();
  v17 = sub_1CF9E7298();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = a4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v33 = v20;
    v38 = v20;
    *v19 = 136315394;
    v21 = sub_1CF554E8C(v20);
    v34 = a3;
    v23 = v22;

    v24 = sub_1CEFD0DF0(v21, v23, &v38);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = sub_1CF665B0C(a2, v10[77], v10[78], v10[79], v10[80]);
    v27 = v26;
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);
    v28 = sub_1CEFD0DF0(v25, v27, &v38);
    a3 = v34;

    *(v19 + 14) = v28;
    _os_log_impl(&dword_1CEFC7000, v16, v17, "Request to background materialize content of itemID %s reason %s", v19, 0x16u);
    v29 = v33;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v29, -1, -1);
    v30 = v19;
    a4 = v35;
    MEMORY[0x1D386CDC0](v30, -1, -1);
  }

  else
  {
    sub_1CF540FDC(a2);
    sub_1CF540FDC(a2);
  }

  (*(v36 + 8))(v14, v37);
  v31 = swift_allocObject();
  v31[2] = a3;
  v31[3] = a4;
  v31[4] = a2;
  v31[5] = a1;
  v31[6] = v5;
  sub_1CEFD09A0(a2);

  sub_1CF538D30(a1, a2, 0, sub_1CF5507E4, v31);
}

uint64_t sub_1CF53AF48(uint64_t a1, void (*a2)(void *), uint64_t a3, unint64_t a4, void *a5, void **a6)
{
  v156 = a2;
  v157 = a3;
  v9 = *a5;
  v153 = *a6;
  v10 = v153;
  v154 = a4;
  v11 = sub_1CF9E5248();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v141 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5268();
  v142 = *(v14 - 8);
  v143 = v14;
  v15 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v140 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E6118();
  v151 = *(v17 - 8);
  v152 = v17;
  v18 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v145 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v147 = &v127 - v21;
  v150 = a6;
  v22 = v10[77];
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v149 = &v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v127 - v28;
  v146 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v155 = &v127 - v32;
  v148 = a5;
  v33 = *(v9 + 80);
  v34 = sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v144 = v34;
  v35 = sub_1CF9E8238();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = (&v127 - v38);
  sub_1CF9E75D8();
  v40 = sub_1CF9E8238();
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = (&v127 - v43);
  (*(v45 + 16))(&v127 - v43, a1, v40, v42);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = *v44;
    *v39 = *v44;
    swift_storeEnumTagMultiPayload();
    v47 = v46;
    v156(v39);

    return (*(v36 + 8))(v39, v35);
  }

  else
  {
    v139 = v36;
    if ((*(v23 + 48))(v44, 1, v22) == 1)
    {
      (*(*(v33 - 8) + 56))(v39, 1, 1, v33);
      swift_storeEnumTagMultiPayload();
      v156(v39);
      return (*(v139 + 8))(v39, v35);
    }

    else
    {
      v49 = *(v23 + 32);
      v50 = v155;
      v136 = v23 + 32;
      v135 = v49;
      (v49)(v155, v44, v22);
      v51 = fpfs_current_or_default_log();
      v52 = v147;
      sub_1CF9E6128();
      v53 = *(v23 + 16);
      v53(v29, v50, v22);
      v54 = v154;
      sub_1CEFD09A0(v154);
      sub_1CEFD09A0(v54);
      v55 = sub_1CF9E6108();
      v132 = sub_1CF9E7298();
      v56 = os_log_type_enabled(v55, v132);
      v131 = v35;
      v138 = v23;
      v134 = v23 + 16;
      v133 = v53;
      if (v56)
      {
        v57 = swift_slowAlloc();
        v128 = v57;
        v130 = swift_slowAlloc();
        v158[0] = v130;
        *v57 = 136315394;
        v129 = v55;
        v58 = v149;
        v53(v149, v29, v22);
        v59 = *(v23 + 8);
        v59(v29, v22);
        v60 = v153;
        v61 = v153[79];
        v62 = *(v61 + 8);
        v63 = sub_1CF9E7F98();
        v65 = v64;
        v137 = v59;
        v59(v58, v22);
        v54 = v154;
        v66 = sub_1CEFD0DF0(v63, v65, v158);

        v67 = v128;
        *(v128 + 1) = v66;
        *(v67 + 6) = 2080;
        v68 = v60[78];
        v69 = v60[80];
        v70 = v61;
        v71 = sub_1CF665B0C(v54, v22, v68, v61, v69);
        v73 = v72;
        sub_1CF540FDC(v54);
        sub_1CF540FDC(v54);
        v74 = sub_1CEFD0DF0(v71, v73, v158);

        *(v67 + 14) = v74;
        v75 = v129;
        _os_log_impl(&dword_1CEFC7000, v129, v132, "Found item %s, request %s", v67, 0x16u);
        v76 = v130;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v76, -1, -1);
        MEMORY[0x1D386CDC0](v67, -1, -1);

        v77 = *(v151 + 8);
        v77(v52, v152);
      }

      else
      {
        sub_1CF540FDC(v54);
        v137 = *(v23 + 8);
        v137(v29, v22);
        sub_1CF540FDC(v54);

        v77 = *(v151 + 8);
        v77(v52, v152);
        v70 = v153[79];
      }

      v78 = sub_1CF937C7C(v22, v70);
      v79 = v139;
      if (v78)
      {
        v80 = v150[3];
        v81 = v153[78];
        v82 = v153[80];
        v158[0] = v22;
        v158[1] = v81;
        v158[2] = v70;
        v158[3] = v82;
        type metadata accessor for SQLJobRegistry();
        v83 = swift_dynamicCastClass();
        if (v83)
        {
          v84 = v83;
          v147 = v70;
          v85 = v149;
          v133(v149, v155, v22);
          v86 = (*(v138 + 80) + 56) & ~*(v138 + 80);
          v87 = (v146 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          *(v89 + 2) = v22;
          *(v89 + 3) = v81;
          *(v89 + 4) = v147;
          *(v89 + 5) = v82;
          *(v89 + 6) = v84;
          v135(&v89[v86], v85);
          *&v89[v87] = v150;
          v90 = v154;
          *&v89[v88] = v154;
          v91 = &v89[(v88 + 15) & 0xFFFFFFFFFFFFFFF8];
          v93 = v156;
          v92 = v157;
          *v91 = v156;
          *(v91 + 1) = v92;

          sub_1CEFD09A0(v90);

          sub_1CF92E4B0("backgroundMaterialize(_:request:completionHandler:)", 51, 2u, sub_1CF045408, 0, v93, v92, sub_1CF5508C8, v89, v144);
        }

        else
        {
          sub_1CF9E5108();
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF00E8B4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v123 = v140;
          v124 = v143;
          sub_1CF9E57D8();
          v125 = sub_1CF9E50D8();
          (*(v142 + 8))(v123, v124);
          *v39 = v125;
          v126 = v131;
          swift_storeEnumTagMultiPayload();
          v156(v39);
          (*(v79 + 8))(v39, v126);
        }

        v94 = v155;
        v95 = v22;
      }

      else
      {
        v96 = v22;
        v97 = fpfs_current_or_default_log();
        v98 = v145;
        sub_1CF9E6128();
        sub_1CEFD09A0(v54);
        sub_1CEFD09A0(v54);

        v99 = sub_1CF9E6108();
        v100 = sub_1CF9E7298();
        v101 = os_log_type_enabled(v99, v100);
        v147 = v70;
        if (v101)
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v158[0] = v103;
          *v102 = 136315394;
          v104 = sub_1CF554E8C(v103);
          v144 = v77;
          v106 = v105;

          v107 = sub_1CEFD0DF0(v104, v106, v158);

          *(v102 + 4) = v107;
          *(v102 + 12) = 2080;
          v108 = v153[78];
          v109 = v108;
          v153 = v153[80];
          v110 = sub_1CF665B0C(v154, v96, v108, v70, v153);
          v112 = v111;
          sub_1CF540FDC(v154);
          sub_1CF540FDC(v154);
          v113 = sub_1CEFD0DF0(v110, v112, v158);

          *(v102 + 14) = v113;
          _os_log_impl(&dword_1CEFC7000, v99, v100, "Item is not dataless, lookup and propagate %s request %s", v102, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v103, -1, -1);
          v114 = v102;
          v54 = v154;
          MEMORY[0x1D386CDC0](v114, -1, -1);

          v144(v98, v152);
        }

        else
        {
          sub_1CF540FDC(v54);
          sub_1CF540FDC(v54);

          v77(v98, v152);
          v109 = v153[78];
          v153 = v153[80];
        }

        v115 = v157;
        v116 = v133;
        v117 = v147;
        v118 = v153;
        v119 = sub_1CF6651BC(v54);
        v120 = v149;
        v116(v149, v155, v96);
        v121 = (*(v138 + 80) + 64) & ~*(v138 + 80);
        v122 = swift_allocObject();
        v122[2] = v96;
        v122[3] = v109;
        v122[4] = v117;
        v122[5] = v118;
        v122[6] = v156;
        v122[7] = v115;
        (v135)(v122 + v121, v120, v96);

        sub_1CF532AE0(v148, 1, 1, 0, v119, sub_1CF550884, v122);

        sub_1CF540FDC(v119);
        v94 = v155;
        v95 = v96;
      }

      return (v137)(v94, v95);
    }
  }
}

uint64_t sub_1CF53BD68(uint64_t a1, void (*a2)(void **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a4;
  v45 = a3;
  v43 = a2;
  v13 = sub_1CF9E75D8();
  v40 = *(v13 - 8);
  v41 = v13;
  v14 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  v46 = a5;
  v47 = a6;
  v48 = a7;
  v49 = a8;
  v17 = type metadata accessor for ItemLookupResult();
  v44 = *(v17 - 8);
  v18 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v38 - v19;
  v39 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v21 = sub_1CF9E8238();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v38 - v24);
  sub_1CF9E75D8();
  v26 = sub_1CF9E8238();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = (&v38 - v29);
  (*(v31 + 16))(&v38 - v29, a1, v26, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v30;
    *v25 = *v30;
    swift_storeEnumTagMultiPayload();
    v33 = v32;
    v43(v25);

    return (*(v22 + 8))(v25, v21);
  }

  v34 = v43;
  if ((*(v44 + 48))(v30, 1, v17) == 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v25, 1, 1, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    v34(v25);
    return (*(v22 + 8))(v25, v21);
  }

  v36 = v42;
  (*(v44 + 32))(v42);
  sub_1CF52D0F8(v17, v16);
  v37 = (*(*(a5 - 8) + 48))(v16, 1, a5);
  (*(v40 + 8))(v16, v41);
  if (v37 == 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v25, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(v39 + 64))(a5);
    (*(*(AssociatedTypeWitness - 8) + 56))(v25, 0, 1, AssociatedTypeWitness);
  }

  swift_storeEnumTagMultiPayload();
  v34(v25);
  (*(v22 + 8))(v25, v21);
  return (*(v44 + 8))(v36, v17);
}

uint64_t sub_1CF53C294(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a7;
  v63 = a5;
  v59 = a6;
  v64 = a4;
  v71 = a3;
  v55 = *a2;
  v9 = v55;
  v10 = *(v55 + 632);
  v56 = *(v10 - 8);
  v53 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v54 = &v48 - v11;
  v12 = sub_1CF9E6448();
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1CF9E5CF8();
  v15 = *(v69 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v9 + 648);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = *(AssociatedTypeWitness - 8);
  v20 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = (&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - v23;
  v25 = a1[3];
  v67 = a1[4];
  v52 = a1;
  v26 = __swift_project_boxed_opaque_existential_1(a1, v25);
  v66 = a2[4];
  v27 = *(v19 + 64);
  v58 = v10;
  v51 = v19;
  v50 = v27;
  v27(v10, v19);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v29 = v28;
  result = (*(v15 + 8))(v18, v69);
  v31 = v29 * 1000000000.0;
  if (COERCE__INT64(fabs(v29 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v32 = v68;
  sub_1CF347AC0(v24, 32, v31, v26, v25, v67);
  if (v32)
  {
    return (*(v72 + 8))(v24, AssociatedTypeWitness);
  }

  v33 = *(v72 + 8);
  v72 += 8;
  v69 = v33;
  (v33)(v24, AssociatedTypeWitness);
  v68 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  v34 = v52[4];
  v66 = v52[3];
  v49 = v34;
  v67 = __swift_project_boxed_opaque_existential_1(v52, v66);
  v35 = v71;
  v36 = v58;
  v37 = v51;
  v50(v58, v51);
  v38 = v57;
  sub_1CF9E63E8();
  v39 = v56;
  v40 = v54;
  (*(v56 + 16))(v54, v35, v36);
  v41 = (*(v39 + 80) + 64) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v42 + 2) = v36;
  v43 = v55;
  *(v42 + 3) = *(v55 + 640);
  *(v42 + 4) = v37;
  v44 = v59;
  *(v42 + 5) = *(v43 + 656);
  *(v42 + 6) = v44;
  *(v42 + 7) = v62;
  (*(v39 + 32))(&v42[v41], v40, v36);
  v45 = *(v49 + 8);

  v46 = v65;
  v47 = v68;
  sub_1CF599234(v65, v63, 0, v68, v38, v67, sub_1CF550A20, v42, v66, v45);

  (*(v60 + 8))(v38, v61);
  return (v69)(v46, AssociatedTypeWitness);
}

uint64_t sub_1CF53C850(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v12 = sub_1CF9E8238();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v20 - v16);
  if (a1)
  {
    *v17 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
  }

  else
  {
    (*(a7 + 64))(a5, a7, v15);
    (*(*(AssociatedTypeWitness - 8) + 56))(v17, 0, 1, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
  }

  a2(v17);
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_1CF53CA2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v5 = *a1;
  v6 = *(*a1 + 632);
  v7 = *(*a1 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for FileItemVersion();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = swift_getAssociatedTypeWitness();
  v21 = *(v12 - 8);
  v22 = v12;
  v13 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  v16 = *(a1[4] + 16);
  v17 = *(v6 + 64);

  v17(v7, v6);
  (*(v6 + 112))(v7, v6);
  AssociatedTypeWitness = 0;
  v28 = 0;
  AssociatedConformanceWitness = 0;
  v30 = 0xB000000000000000;
  v31 = 0u;
  v32 = 0u;
  v18 = swift_allocObject();
  v18[2] = v7;
  v18[3] = *(v5 + 624);
  v18[4] = v6;
  v18[5] = *(v5 + 640);
  v18[6] = v25;
  v18[7] = v26;
  v19 = *(*v16 + 664);

  v19(v15, 0, v11, 0, &AssociatedTypeWitness, sub_1CF5507C4, v18);

  (*(v23 + 8))(v11, v24);
  return (*(v21 + 8))(v15, v22);
}

void sub_1CF53CD98(uint64_t a1, void (*a2)(void *, void))
{
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v3 = sub_1CF9E8238();
  sub_1CF52CCD8(sub_1CF089FF4, v3, &v6);
  v4 = v6;
  v5 = v7;
  a2(v6, v7);
  sub_1CF0BA6EC(v4, v5);
}

uint64_t sub_1CF53CEA0(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void), uint64_t a5)
{
  v47 = a4;
  v48 = a5;
  v57 = a3;
  v7 = (*a2 + 624);
  v8 = *(*a2 + 632);
  v9 = *(*a2 + 616);
  v10 = (*a2 + 640);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness;
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v41 - v13;
  *&v14 = v9;
  *(&v14 + 1) = *v7;
  *&v15 = v8;
  *(&v15 + 1) = *v10;
  v55 = v14;
  v56 = v15;
  v16 = type metadata accessor for ItemReconciliation();
  v17 = sub_1CF9E75D8();
  v42 = *(v17 - 8);
  v43 = v17;
  v18 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - v19;
  v45 = v16;
  v50 = *(v16 - 8);
  v21 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v27 = __swift_project_boxed_opaque_existential_1(a1, v26);
  v44 = a2;
  v28 = a2[2];
  v29 = *(v8 + 64);
  v30 = v51;
  v46 = v9;
  v29(v9, v8);
  v49 = v20;
  v31 = v54;
  sub_1CF68DDB0(v30, v27, v26, v25, v20);
  if (v31)
  {
    return (*(v52 + 8))(v30, v53);
  }

  v34 = v42;
  v33 = v43;
  v54 = 0;
  v35 = v47;
  v36 = v44;
  v37 = v48;
  (*(v52 + 8))(v30, v53);
  v38 = v45;
  if ((*(v50 + 48))(v49, 1, v45) == 1)
  {
    (*(v34 + 8))(v49, v33);
    return v35(0, 0);
  }

  else
  {
    (*(v50 + 32))(v24, v49, v38);
    if (sub_1CF07CD80(v38))
    {
      v35(0, 0);
      return (*(v50 + 8))(v24, v38);
    }

    else
    {
      v39 = type metadata accessor for ItemReconciliationHalf();
      v40 = (v50 + 8);
      if (v24[*(v39 + 64) + 16])
      {
        v35(0, 0);
      }

      else
      {
        sub_1CF53CA2C(v36, v57, v35, v37);
      }

      return (*v40)(v24, v38);
    }
  }
}

void sub_1CF53D2D0(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v80 = a5;
  v81 = a6;
  v90 = a4;
  LODWORD(v91) = a3;
  v79 = a2;
  v70 = a1;
  v12 = *v8;
  v86 = sub_1CF9E63A8();
  v88 = *(v86 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1CF9E6448();
  v85 = *(v87 - 8);
  v15 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v83 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *(a7 - 8);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v12;
  isa = v12[79].isa;
  v72 = v12[77].isa;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = *(AssociatedTypeWitness - 8);
  v19 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v67 = &v65 - v20;
  v21 = swift_allocObject();
  v92 = v21;
  *(v21 + 16) = 0;
  *(v21 + 24) = -1;
  v22 = dispatch_group_create();
  dispatch_group_enter(v22);
  v23 = *(v8[4] + 16);
  v24 = *(a8 + 64);

  v68 = a7;
  v25 = a8;
  v69 = a8;
  v24(a7, a8);
  v71 = v82[78].isa;
  v73 = v82[80].isa;
  v26 = v90;
  v66 = sub_1CF6656D8(v90);
  v27 = swift_allocObject();
  *(v27 + 16) = a7;
  *(v27 + 24) = v25;
  v28 = v92;
  *(v27 + 32) = v22;
  *(v27 + 40) = v28;
  *(v27 + 48) = v8;
  *(v27 + 56) = v91;
  *(v27 + 64) = v26;
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v28;
  v30 = *(*v23 + 144);
  v31 = v22;
  swift_retain_n();
  v82 = v31;

  sub_1CEFD09A0(v26);
  v32 = v67;
  v33 = v66;
  v30(v67, v79, 0, v66, sub_1CF550324, v27, sub_1CF55033C, v29);

  (*(v74 + 8))(v32, AssociatedTypeWitness);
  v34 = sub_1CF042F4C();
  v35 = v77;
  v36 = v76;
  v37 = v68;
  (*(v77 + 16))(v76, v70, v68);
  v38 = v35;
  v39 = (*(v35 + 80) + 96) & ~*(v35 + 80);
  v40 = v39 + v78;
  v41 = (v39 + v78) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v71;
  *(v42 + 2) = v72;
  *(v42 + 3) = v43;
  v44 = isa;
  *(v42 + 4) = v37;
  *(v42 + 5) = v44;
  v45 = v69;
  *(v42 + 6) = v73;
  *(v42 + 7) = v45;
  v46 = v80;
  v47 = v81;
  *(v42 + 8) = v92;
  *(v42 + 9) = v46;
  *(v42 + 10) = v47;
  *(v42 + 11) = v9;
  (*(v38 + 32))(&v42[v39], v36, v37);
  v42[v40] = v91;
  v48 = v90;
  *&v42[v41 + 8] = v90;

  sub_1CEFD09A0(v48);
  v49 = v34;

  v50 = fpfs_current_log();
  v91 = fpfs_adopt_log();
  v51 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v95 = v52;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v53 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v53);

  sub_1CF9E6978();

  v54 = __fp_log_fork();

  *(v51 + 16) = v54;
  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  *(v55 + 24) = v51;
  *(v55 + 32) = v49;
  *(v55 + 40) = "materializeIgnoredItem(_:continuation:duringDiskImport:request:completionHandler:)";
  *(v55 + 48) = 82;
  *(v55 + 56) = 2;
  *(v55 + 64) = sub_1CF550348;
  *(v55 + 72) = v42;
  v98 = sub_1CEFD504C;
  v99 = v55;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = sub_1CEFCA444;
  v97 = &block_descriptor_96;
  v56 = _Block_copy(&aBlock);
  v57 = v49;
  v58 = v50;

  v59 = v83;
  sub_1CF9E63F8();
  v93 = MEMORY[0x1E69E7CC0];
  sub_1CF00E8B4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF01049C();
  v60 = v84;
  v61 = v86;
  sub_1CF9E77B8();
  v62 = v82;
  sub_1CF9E7308();
  _Block_release(v56);
  (*(v88 + 8))(v60, v61);
  (*(v85 + 8))(v59, v87);

  v63 = v91;
  v64 = fpfs_adopt_log();
}

uint64_t sub_1CF53DB4C(uint64_t a1, NSObject *a2, uint64_t a3, void *a4, int a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = a7;
  v61 = a8;
  v58 = a4;
  v59 = a6;
  v64 = a5;
  v10 = a1;
  v63 = *a4;
  v11 = v63[77];
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v66 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50[-v16];
  v62 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50[-v20];
  if (objc_sync_enter(v22))
  {
LABEL_24:
    swift_unknownObjectRetain();
    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a2);
  }

  swift_beginAccess();
  v23 = *(a3 + 24);
  v52 = *(a3 + 16);
  sub_1CF5503E0(v52, v23);
  if (objc_sync_exit(a2))
  {
    swift_unknownObjectRetain();
    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a2);
  }

  if (v23 != 255 && (v23 & 1) != 0)
  {
    v24 = 1;
    goto LABEL_22;
  }

  if (!sub_1CF9E6DF8())
  {
    v24 = 0;
    goto LABEL_22;
  }

  v51 = v23;
  v57 = a3;
  v25 = 0;
  v72 = v63[79];
  v26 = *(v72 + 144);
  v69 = v72 + 144;
  v70 = v21;
  v73 = (v12 + 16);
  v71 = (v12 + 32);
  v67 = (v12 + 8);
  v68 = v26;
  v53 = v64 & 1;
  v65 = a2;
  v56 = v10;
  v55 = v12;
  v54 = v17;
  while (1)
  {
    v27 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v27)
    {
      v28 = *(v12 + 16);
      v29 = v70;
      v28(v70, v10 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v25, v11);
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      goto LABEL_12;
    }

    v47 = sub_1CF9E7998();
    if (v62 != 8)
    {
      __break(1u);
      goto LABEL_24;
    }

    v74 = v47;
    v28 = *v73;
    v48 = v70;
    (*v73)(v70, &v74, v11);
    v29 = v48;
    swift_unknownObjectRelease();
    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

LABEL_12:
    v31 = *v71;
    (*v71)(v17, v29, v11);
    v32 = v68(v11, v72);
    if (v33 >> 62 == 2 && !v32 && v33 == 0x8000000000000000)
    {
      dispatch_group_enter(a2);
      v28(v66, v17, v11);
      v34 = (*(v12 + 80) + 88) & ~*(v12 + 80);
      v35 = v34 + v62;
      v36 = (v34 + v62) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      *(v37 + 2) = v11;
      v38 = v63;
      v39 = v60;
      *(v37 + 3) = v63[78];
      *(v37 + 4) = v39;
      *(v37 + 5) = v72;
      v40 = v61;
      *(v37 + 6) = v38[80];
      *(v37 + 7) = v40;
      v41 = v66;
      v43 = v57;
      v42 = v58;
      *(v37 + 8) = v65;
      *(v37 + 9) = v43;
      *(v37 + 10) = v42;
      v31(&v37[v34], v41, v11);
      v37[v35] = v53;
      v10 = v56;
      v44 = &v37[v36];
      a2 = v65;
      v45 = v59;
      *(v44 + 1) = v59;
      v46 = a2;
      v17 = v54;

      sub_1CEFD09A0(v45);
      v12 = v55;
      sub_1CF550490(v17, v64 & 1, sub_1CF5503F8, v37);
    }

    else
    {
      sub_1CF07638C(v32, v33);
    }

    (*v67)(v17, v11);
    ++v25;
    if (v30 == sub_1CF9E6DF8())
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_20:
  v24 = 0;
  LOBYTE(v23) = v51;
LABEL_22:
  sub_1CF518C0C(v52, v23);
  return v24;
}

void sub_1CF53E070(void *a1, char a2, NSObject *a3, uint64_t a4, uint64_t *a5, uint64_t a6, char a7, uint64_t a8)
{
  if (a2)
  {
    v11 = a1;
    sub_1CF516D6C(a3, a4 + 16, a1);
LABEL_4:

    dispatch_group_leave(a3);
    return;
  }

  if (a1)
  {
    goto LABEL_4;
  }

  v15 = *a5;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = *(v15 + 616);
  v18 = *(v15 + 632);
  v19 = a3;

  sub_1CF53E22C(a6, 0, a7 & 1, a8, sub_1CF5507DC, v16, v17, v18);
}

void sub_1CF53E1C8(void *a1, NSObject *a2, uint64_t a3)
{
  v6 = a1;
  sub_1CF516E64(a2, a1, a3 + 16);

  dispatch_group_leave(a2);
}

uint64_t sub_1CF53E22C(uint64_t a1, int a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v45 = a6;
  v43 = a5;
  v47 = a4;
  v46 = a3;
  v44 = a2;
  v13 = *v9;
  v14 = sub_1CF9E6448();
  v48 = *(v14 - 8);
  v49 = v14;
  v15 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a7 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v20 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v13;
  v39 = *(v13 + 632);
  v37 = *(v13 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v21 = *(v40 + 64);
  v22 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v36 - v23;
  v36 = a8;
  (*(a8 + 64))(a7, a8, v22);
  (*(v17 + 16))(v20, a1, a7);
  v25 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v26 = (v18 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v38;
  *(v28 + 2) = v37;
  *(v28 + 3) = *(v29 + 624);
  *(v28 + 4) = a7;
  *(v28 + 5) = v39;
  *(v28 + 6) = *(v29 + 640);
  *(v28 + 7) = v36;
  (*(v17 + 32))(&v28[v25], v20, a7);
  v30 = &v28[v26];
  v31 = v45;
  *v30 = v43;
  *(v30 + 1) = v31;
  v32 = &v28[v27];
  *v32 = v9;
  v32[8] = v44;
  v32[9] = v46;
  v33 = v47;
  *&v28[(v27 + 17) & 0xFFFFFFFFFFFFFFF8] = v47;

  sub_1CEFD09A0(v33);
  v34 = v41;
  sub_1CF5347DC();

  (*(v48 + 8))(v34, v49);
  return (*(v40 + 8))(v24, AssociatedTypeWitness);
}

void sub_1CF53E5DC(void *a1, char a2, NSObject *a3, uint64_t a4)
{
  sub_1CF2B1868(a1, a2 & 1);
  sub_1CF516F70(a3, a4 + 16, a1, a2 & 1);

  dispatch_group_leave(a3);
}

void sub_1CF53E64C(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  v16 = *(a1 + 24);
  if (v16 != 255)
  {
    v17 = *(a1 + 16);
    if (v16)
    {
      sub_1CF2B1868(v17, 1);
      a2(v17);
LABEL_6:
      sub_1CF518C0C(v17, v16);
      return;
    }

    if (v17)
    {
      sub_1CF2B1868(v17, 0);
      sub_1CF53D2D0(a5, v17, a6 & 1, a7, a2, a3, a8, a9);
      goto LABEL_6;
    }
  }

  a2(0);
}

void sub_1CF53E74C(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t *a5, _BOOL4 a6, int a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v52 = a8;
  v53 = a3;
  v51 = a7;
  v44 = a6;
  v54 = a4;
  v48 = *a5;
  v13 = *(a9 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v46 = v15;
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 616);
  v47 = *(v17 + 632);
  v45 = v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v50 = AssociatedTypeWitness;
  v20 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v55 = &v43 - v21;
  v22 = type metadata accessor for ItemMetadata();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v43 = v16;
    v26 = *(a10 + 104);
    v27 = a1;
    v26(a9, a10);
    v28 = v25[*(v22 + 80)];
    sub_1CF007C58(v25, type metadata accessor for ItemMetadata);
    if (v28 == 1)
    {
      v29 = a1;
      v53(a1);

      return;
    }

    v16 = v43;
  }

  v30 = *(a5[4] + 16);
  v31 = *(a10 + 64);

  v31(a9, a10);
  if (v44)
  {
    sub_1CF06D940(a9, a10, &v56);
    v44 = v56 == 1;
  }

  else
  {
    v44 = 0;
  }

  (*(v13 + 16))(v16, a2, a9);
  v32 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v33 = (v32 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = v16;
  v35 = (v32 + v46 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 2) = v45;
  v37 = v48;
  *(v36 + 3) = *(v48 + 624);
  *(v36 + 4) = a9;
  *(v36 + 5) = v47;
  *(v36 + 6) = *(v37 + 640);
  *(v36 + 7) = a10;
  v38 = v54;
  *(v36 + 8) = v53;
  *(v36 + 9) = v38;
  (*(v13 + 32))(&v36[v32], v34, a9);
  v39 = &v36[v33];
  *v39 = a5;
  v39[8] = v51 & 1;
  v40 = v52;
  *&v36[v35] = v52;
  v41 = *(*v30 + 864);

  sub_1CEFD09A0(v40);
  v42 = v55;
  v41(v55, v44, sub_1CF550280, v36);

  (*(v49 + 8))(v42, v50);
}

void sub_1CF53EBA4(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, char a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v12 = a1;
    a2(a1);
  }

  else
  {
    sub_1CF06D940(a8, a9, &v17);
    if (v17 == 1)
    {
      sub_1CF53D2D0(a4, 0, a6 & 1, a7, a2, a3, a8, a9);
    }

    else
    {
      a2(0);
    }
  }
}

uint64_t sub_1CF53ECA4(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v40 = a3;
  v41 = a4;
  v38 = a2;
  v39 = v6;
  v36 = *v7;
  v37 = *(a5 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ItemMetadata();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  v20 = *(a6 + 104);
  v20(a5, a6, v17);
  v21 = v19[*(v12 + 64)];
  sub_1CF007C58(v19, type metadata accessor for ItemMetadata);
  if (v21)
  {
    return v40(1, 0);
  }

  (v20)(a5, a6);
  v23 = v15[*(v12 + 68)];
  sub_1CF007C58(v15, type metadata accessor for ItemMetadata);
  if (v23 != 2 && (v23 & 1) != 0)
  {
    return v40(1, 0);
  }

  v24 = v37;
  v25 = v35;
  (*(v37 + 16))(v35, a1, a5);
  v26 = (*(v24 + 80) + 72) & ~*(v24 + 80);
  v27 = (v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v36;
  *(v29 + 2) = v36[77];
  *(v29 + 3) = v30[78];
  *(v29 + 4) = a5;
  *(v29 + 5) = v30[79];
  *(v29 + 6) = v30[80];
  *(v29 + 7) = a6;
  *(v29 + 8) = v39;
  (*(v24 + 32))(&v29[v26], v25, a5);
  v31 = &v29[v27];
  v32 = v41;
  *v31 = v40;
  *(v31 + 1) = v32;
  v33 = v38;
  *&v29[v28] = v38;

  sub_1CEFD09A0(v33);
  sub_1CF92DFCC("checkIsInIgnoredHierarchy(_:request:completion:)", 48, 2, 2, nullsub_1, 0, sub_1CF550A64, v29);
}

uint64_t sub_1CF53EFD0(void *a1, void *a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5, unint64_t a6, void (*a7)(void, void), uint64_t a8)
{
  v86 = a8;
  v90 = a7;
  v70 = a6;
  v79 = a4;
  v80 = a5;
  v87 = a3;
  v10 = *a2;
  v11 = *a2;
  v84 = (*a2 + 624);
  v12 = *(v10 + 632);
  v13 = *(v10 + 616);
  v14 = (v11 + 640);
  *&v88 = swift_getAssociatedTypeWitness();
  *(&v88 + 1) = swift_getAssociatedTypeWitness();
  *&v89 = swift_getAssociatedConformanceWitness();
  *(&v89 + 1) = swift_getAssociatedConformanceWitness();
  v65 = type metadata accessor for FileItemVersion();
  v68 = sub_1CF9E75D8();
  v67 = *(v68 - 8);
  v15 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v65 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = *(AssociatedTypeWitness - 8);
  v17 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v75 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v65 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  v81 = v13;
  v82 = v12;
  *&v24 = v13;
  *(&v24 + 1) = *v84;
  *&v25 = v12;
  *(&v25 + 1) = *v14;
  v89 = v25;
  v88 = v24;
  v26 = type metadata accessor for ItemReconciliation();
  v27 = sub_1CF9E75D8();
  v71 = *(v27 - 8);
  v72 = v27;
  v28 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v65 - v29;
  v84 = v26;
  v83 = *(v26 - 8);
  v31 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v65 - v33;
  v36 = a1[3];
  v35 = a1[4];
  v37 = __swift_project_boxed_opaque_existential_1(a1, v36);
  v69 = a2;
  v38 = a2[2];
  v74 = *(v86 + 64);
  v74(v90);
  v39 = v78;
  sub_1CF68DDB0(v23, v37, v36, v35, v30);
  if (v39)
  {

    v40 = v23;
    v41 = AssociatedTypeWitness;
    v73 = *(v85 + 8);
    v73(v40, AssociatedTypeWitness);
    (*(v83 + 56))(v30, 1, 1, v84);
LABEL_5:
    v44 = v90;
    v78 = 0;
    (*(v71 + 8))(v30, v72);
    goto LABEL_6;
  }

  v42 = *(v85 + 8);
  v43 = v23;
  v41 = AssociatedTypeWitness;
  v42(v43, AssociatedTypeWitness);
  if ((*(v83 + 48))(v30, 1, v84) == 1)
  {
    v73 = v42;
    goto LABEL_5;
  }

  (*(v83 + 32))(v34, v30, v84);
  v64 = type metadata accessor for ItemReconciliationHalf();
  v44 = v90;
  if ((v34[*(v64 + 36)] & 0x10) != 0)
  {
    v79(1, 0);
    return (*(v83 + 8))(v34, v84);
  }

  v73 = v42;
  v78 = 0;
  (*(v83 + 8))(v34, v84);
LABEL_6:
  v45 = v86;
  v46 = v76;
  v90 = *(v86 + 72);
  v90(v44, v86);
  v47 = v75;
  (v74)(v44, v45);
  v48 = v46;
  v49 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
  v50 = v41;
  v51 = sub_1CF9E6868();
  v52 = v85 + 8;
  v53 = v47;
  v54 = v73;
  v73(v53, v50);
  v54(v48, v50);
  if (v51)
  {
    return (v79)(0, 0);
  }

  v87 = v52;
  v56 = v44;
  v57 = v69;
  v58 = *(v69[4] + 16);

  v90(v56, v45);
  v59 = v66;
  (*(*(v65 - 8) + 56))(v66, 1, 1);
  v60 = v48;
  v61 = swift_allocObject();
  v61[2] = v56;
  v61[3] = v45;
  v61[4] = v79;
  v61[5] = v80;
  v61[6] = v57;
  v62 = v70;
  v61[7] = v70;
  v63 = *(*v58 + 136);

  sub_1CEFD09A0(v62);
  v63(v60, v59, 0, 2, sub_1CF550AF4, v61);

  (*(v67 + 8))(v59, v68);
  return (v54)(v60, v50);
}

void sub_1CF53F7B0(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v23 = a5;
  v8 = *a4;
  v9 = *(*a4 + 616);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - v12;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v14 = sub_1CF9E8238();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v22 - v17);
  (*(v19 + 16))(&v22 - v17, a1, v14, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    v21 = *v18;
    a2(v20, 1);
  }

  else if ((*(v10 + 48))(v18, 1, v9) == 1)
  {
    a2(0, 0);
  }

  else
  {
    (*(v10 + 32))(v13, v18, v9);
    sub_1CF53ECA4(v13, v23, a2, a3, v9, *(v8 + 632));
    (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_1CF53FA4C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, unint64_t a4, void *a5)
{
  v53 = a4;
  v54 = a2;
  v55 = a3;
  v7 = *a5;
  v8 = *(*a5 + 632);
  v9 = *(*a5 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  v52 = AssociatedTypeWitness;
  v11 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v46 - v12;
  v13 = sub_1CF9E6118();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = v9;
  v46 = *(v7 + 624);
  *(&v16 + 1) = v46;
  v17 = *(v7 + 640);
  *&v18 = v8;
  *(&v18 + 1) = v17;
  v56[0] = v16;
  v56[1] = v18;
  v19 = type metadata accessor for ItemLookupResult();
  v20 = sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v21 = sub_1CF9E8238();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v46 - v25;
  (*(v22 + 16))(&v46 - v25, a1, v21, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v22 + 8))(v26, v21);
    return v54(a1);
  }

  if ((*(*(v19 - 8) + 48))(v26, 1, v19) != 1)
  {
    (*(*(v20 - 8) + 8))(v26, v20);
    return v54(a1);
  }

  v27 = fpfs_current_or_default_log();
  v28 = v47;
  sub_1CF9E6128();
  v29 = v53;
  sub_1CEFD09A0(v53);
  v30 = sub_1CF9E6108();
  v31 = sub_1CF9E7298();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v56[0] = v33;
    *v32 = 136315138;
    sub_1CEFD09A0(v29);
    v34 = sub_1CF665B0C(v29, v9, v46, v8, v17);
    v35 = v28;
    v36 = v31;
    v37 = v34;
    v39 = v38;
    sub_1CF540FDC(v29);
    sub_1CF540FDC(v29);
    v40 = sub_1CEFD0DF0(v37, v39, v56);

    *(v32 + 4) = v40;
    _os_log_impl(&dword_1CEFC7000, v30, v36, "Waiting for propagation of root to the FP request %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1D386CDC0](v33, -1, -1);
    MEMORY[0x1D386CDC0](v32, -1, -1);

    v41 = (*(v48 + 8))(v35, v49);
  }

  else
  {
    sub_1CF540FDC(v29);

    v41 = (*(v48 + 8))(v28, v49);
  }

  v43 = v50;
  (*(**(a5[4] + 16) + 96))(v41);
  v44 = swift_allocObject();
  v45 = v55;
  v44[2] = v54;
  v44[3] = v45;
  v44[4] = v29;
  v44[5] = a5;
  sub_1CEFD09A0(v29);

  sub_1CF52BEB4(v43, v29, sub_1CF54EABC, v44);

  return (*(v51 + 8))(v43, v52);
}

uint64_t sub_1CF53FFAC(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, unint64_t a5, void *a6)
{
  v60 = a3;
  v61 = a5;
  v58 = a2;
  v59 = a4;
  v7 = *a6;
  v8 = *(*a6 + 632);
  v9 = *(*a6 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(v7 + 640);
  v12 = *(v7 + 624);
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = AssociatedTypeWitness;
  v54 = swift_getAssociatedConformanceWitness();
  v62 = AssociatedTypeWitness;
  v63 = v13;
  v56 = AssociatedConformanceWitness;
  v64 = AssociatedConformanceWitness;
  v65 = v54;
  v57 = type metadata accessor for ReconciliationID();
  v15 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v47[-v16];
  v62 = v9;
  v63 = v12;
  v64 = v8;
  v65 = v11;
  type metadata accessor for ItemLookupResult();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v17 = sub_1CF9E8238();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v47[-v20];
  v22 = sub_1CF9E6118();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v47[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v58)
  {
    v28 = v58;
    *v21 = v58;
    swift_storeEnumTagMultiPayload();
    v29 = v28;
    v60(v21);
    return (*(v18 + 8))(v21, v17);
  }

  else
  {
    v31 = v27;
    v50 = v25;
    v51 = v24;
    v52 = v13;
    v58 = a6;
    v32 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFD09A0(v61);
    v33 = sub_1CF9E6108();
    v34 = sub_1CF9E7298();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v62 = v49;
      *v35 = 136315138;
      v48 = v34;
      v36 = v61;
      sub_1CEFD09A0(v61);
      v37 = sub_1CF665B0C(v36, v9, v12, v8, v11);
      v39 = v38;
      sub_1CF540FDC(v36);
      sub_1CF540FDC(v36);
      v40 = sub_1CEFD0DF0(v37, v39, &v62);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1CEFC7000, v33, v48, "Root propagated, retry lookup request %s", v35, 0xCu);
      v41 = v49;
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1D386CDC0](v41, -1, -1);
      MEMORY[0x1D386CDC0](v35, -1, -1);
    }

    else
    {
      sub_1CF540FDC(v61);
    }

    (*(v50 + 8))(v31, v51);
    v42 = v59;
    v43 = v60;
    v44 = v55;
    v62 = v53;
    v63 = v52;
    v64 = v56;
    v65 = v54;
    type metadata accessor for FPFSID();
    (*(**(v58[5] + 16) + 96))();
    swift_storeEnumTagMultiPayload();
    v45 = sub_1CF554514(v44);
    v46 = sub_1CF6651BC(v61);
    sub_1CF52FB88(v45, 1, 0, v46, v43, v42);
    sub_1CF540FDC(v46);
  }
}

uint64_t sub_1CF5404E0()
{
  _s14LookupBehaviorOMa();
  swift_getWitnessTable();
  return sub_1CF9E8088() & 1;
}

uint64_t sub_1CF540564()
{
  v0 = sub_1CF9E7C78();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1CF5405B0()
{
  swift_getWitnessTable();

  return sub_1CF9E8088();
}

uint64_t sub_1CF540624(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1CF540690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1CF540700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1CF540770@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  result = sub_1CF540564();
  *a3 = result;
  return result;
}

uint64_t sub_1CF5407AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  result = sub_1CF09919C(*v2);
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_1CF5407E0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1CF09919C(*v1);
}

void sub_1CF5407F0(uint64_t a1, int a2, int a3, unint64_t a4, void *a5, uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v9 = v8;
  v87 = a7;
  v93 = a6;
  v81 = a5;
  v80 = a3;
  v14 = *(*v8 + 616);
  v15 = *(*v8 + 632);
  v16 = *(*v8 + 640);
  v90 = *(*v8 + 624);
  v91 = v14;
  v94[0] = v14;
  v94[1] = v90;
  v88 = v16;
  v89 = v15;
  v94[2] = v15;
  v94[3] = v16;
  type metadata accessor for ItemLookupResult();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v17 = sub_1CF9E8238();
  v83 = *(v17 - 8);
  v84 = v17;
  v18 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v75[-v19];
  v20 = sub_1CF9E6118();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v75[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v75[-v25];
  v27 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);

  v28 = sub_1CF9E6108();
  v29 = sub_1CF9E7298();
  v30 = os_log_type_enabled(v28, v29);
  v92 = v20;
  v79 = a2;
  if (v30)
  {
    v76 = v29;
    v85 = v21;
    v78 = a8;
    v31 = a2;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v94[0] = v33;
    *v32 = 136315906;
    v34 = sub_1CF554E8C(v33);
    v36 = v35;
    v77 = a1;

    v37 = sub_1CEFD0DF0(v34, v36, v94);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    if (v31)
    {
      if (v31 == 1)
      {
        v38 = 0x74616761706F7270;
      }

      else
      {
        v38 = 0xD000000000000010;
      }

      if (v31 == 1)
      {
        v39 = 0xED000053466F5465;
      }

      else
      {
        v39 = 0x80000001CFA2C3C0;
      }
    }

    else
    {
      v39 = 0x80000001CFA2C390;
      v38 = 0xD000000000000013;
    }

    v49 = sub_1CEFD0DF0(v38, v39, v94);

    *(v32 + 14) = v49;
    *(v32 + 22) = 2080;
    v50 = sub_1CF665B0C(a4, v91, v90, v89, v88);
    v52 = v51;
    sub_1CF540FDC(a4);
    sub_1CF540FDC(a4);
    v53 = sub_1CEFD0DF0(v50, v52, v94);

    *(v32 + 24) = v53;
    *(v32 + 32) = 2048;
    v54 = v93;
    *(v32 + 34) = v93;
    _os_log_impl(&dword_1CEFC7000, v28, v76, "Lookup itemID %s with behavior %s request %s iteration %ld", v32, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v33, -1, -1);
    MEMORY[0x1D386CDC0](v32, -1, -1);

    v21 = v85;
    v40 = *(v85 + 8);
    v41 = v40(v26, v92);
    a1 = v77;
    a8 = v78;
    if (v54 >= 51)
    {
      goto LABEL_15;
    }

LABEL_10:
    if (sub_1CF5551A8(v41))
    {
      sub_1CF539D9C(a4, v87, a8);
    }

    else
    {
      v42 = sub_1CF6651BC(a4);
      v43 = swift_allocObject();
      *(v43 + 16) = v87;
      *(v43 + 24) = a8;
      *(v43 + 32) = v9;
      v44 = v80;
      *(v43 + 40) = v79;
      *(v43 + 48) = a4;
      *(v43 + 56) = a1;
      v45 = v44 & 1;
      *(v43 + 64) = v44 & 1;
      v46 = v81;
      v47 = v93;
      *(v43 + 72) = v81;
      *(v43 + 80) = v47;
      sub_1CEFD09A0(a4);

      v48 = v46;
      sub_1CF52FB88(a1, 0, v45, v42, sub_1CF54E964, v43);

      sub_1CF540FDC(v42);
    }

    return;
  }

  sub_1CF540FDC(a4);
  sub_1CF540FDC(a4);

  v40 = *(v21 + 8);
  v41 = v40(v26, v20);
  if (v93 < 51)
  {
    goto LABEL_10;
  }

LABEL_15:
  v55 = fpfs_current_or_default_log();
  v56 = v86;
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);

  v57 = sub_1CF9E6108();
  v58 = sub_1CF9E72B8();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v85 = v21;
    v61 = v60;
    v94[0] = v60;
    *v59 = 136446466;
    v62 = sub_1CF554E8C(v60);
    v64 = v63;

    v65 = sub_1CEFD0DF0(v62, v64, v94);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2082;
    v66 = sub_1CF665B0C(a4, v91, v90, v89, v88);
    v68 = v67;
    sub_1CF540FDC(a4);
    sub_1CF540FDC(a4);
    v69 = sub_1CEFD0DF0(v66, v68, v94);

    *(v59 + 14) = v69;
    _os_log_impl(&dword_1CEFC7000, v57, v58, "Recursion too deep for lookup of itemID %{public}s request %{public}s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v61, -1, -1);
    MEMORY[0x1D386CDC0](v59, -1, -1);

    v70 = v86;
  }

  else
  {
    sub_1CF540FDC(a4);
    sub_1CF540FDC(a4);

    v70 = v56;
  }

  v40(v70, v92);
  v71 = sub_1CF9E6888();
  v72 = FPInvalidParameterError();

  if (v72)
  {
    v73 = v82;
    *v82 = v72;
    v74 = v84;
    swift_storeEnumTagMultiPayload();
    v87(v73);
    (*(v83 + 8))(v73, v74);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1CF540FDC(unint64_t result)
{
  switch((result >> 58) & 0x3C | (result >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CF541020(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void *a4, int a5, unint64_t a6, uint64_t *a7, int a8, void *a9, uint64_t a10)
{
  LODWORD(v88) = a8;
  v91 = a7;
  v92 = a6;
  LODWORD(v97) = a5;
  v14 = *a4;
  v15 = sub_1CF9E6118();
  v89 = *(v15 - 8);
  v90 = v15;
  v16 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v82 - v19;
  v20 = v14[78];
  v21 = v14[79];
  v22 = v14[80];
  v93 = v14[77];
  v94 = v20;
  v100 = v93;
  v101 = v20;
  v95 = v21;
  v96 = v22;
  v102 = v21;
  v103 = v22;
  v23 = type metadata accessor for ItemLookupResult();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v82 - v26;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v28 = sub_1CF9E8238();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v82 - v34;
  (*(v29 + 16))(&v82 - v34, a1, v28, v33);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v29 + 8))(v35, v28);
    return a2(a1);
  }

  v83 = a2;
  v84 = a3;
  if ((*(v24 + 48))(v35, 1, v23) != 1)
  {
    (*(v24 + 32))(v27, v35, v23);
    v57 = v93;
    v56 = v94;
    v59 = v95;
    v58 = v96;
    v60 = sub_1CF5404E0();
    v61 = v92;
    if (sub_1CF54EF04(v27, v60 & 1, v92, v57, v56, v59, v58))
    {
      v83(a1);
      return (*(v24 + 8))(v27, v23);
    }

    (*(v24 + 8))(v27, v23);
    v63 = v91;
    v37 = v97;
    goto LABEL_16;
  }

  v37 = v97;
  v99 = v97;
  v98 = 0;
  v100 = v93;
  v101 = v94;
  v102 = v95;
  v103 = v96;
  _s14LookupBehaviorOMa();
  swift_getWitnessTable();
  v38 = sub_1CF9E8088();
  v39 = fpfs_current_or_default_log();
  if ((v38 & 1) == 0)
  {
    v62 = v86;
    sub_1CF9E6128();
    v61 = v92;
    sub_1CEFD09A0(v92);
    sub_1CEFD09A0(v61);
    v63 = v91;

    v64 = sub_1CF9E6108();
    v65 = sub_1CF9E7298();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v100 = v67;
      *v66 = 136315394;
      v68 = sub_1CF554E8C(v67);
      v70 = v69;

      v71 = sub_1CEFD0DF0(v68, v70, &v100);
      v61 = v92;

      *(v66 + 4) = v71;
      *(v66 + 12) = 2080;
      v72 = sub_1CF665B0C(v61, v93, v94, v95, v96);
      v74 = v73;
      sub_1CF540FDC(v61);
      sub_1CF540FDC(v61);
      v75 = sub_1CEFD0DF0(v72, v74, &v100);

      *(v66 + 14) = v75;
      _os_log_impl(&dword_1CEFC7000, v64, v65, "Item cannot be found on disk, looking for parent for %s request %s", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v67, -1, -1);
      v76 = v66;
      v63 = v91;
      MEMORY[0x1D386CDC0](v76, -1, -1);
    }

    else
    {
      sub_1CF540FDC(v61);
      sub_1CF540FDC(v61);
    }

    (*(v89 + 8))(v62, v90);
LABEL_16:
    v79 = swift_allocObject();
    v80 = v84;
    *(v79 + 16) = v83;
    *(v79 + 24) = v80;
    *(v79 + 32) = v63;
    *(v79 + 40) = a4;
    *(v79 + 48) = v37;
    *(v79 + 49) = v88 & 1;
    *(v79 + 56) = v61;
    *(v79 + 64) = a9;
    *(v79 + 72) = a10;
    sub_1CEFD09A0(v61);

    v81 = a9;
    sub_1CF52D66C(v63, sub_1CF54EEC8, v79);
  }

  v97 = v24;
  v40 = v87;
  sub_1CF9E6128();
  v41 = v92;
  sub_1CEFD09A0(v92);
  sub_1CEFD09A0(v41);

  v42 = sub_1CF9E6108();
  v43 = sub_1CF9E7298();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v88 = v42;
    v45 = v44;
    v46 = swift_slowAlloc();
    v100 = v46;
    *v45 = 136315394;
    v47 = sub_1CF554E8C(v46);
    v49 = v48;

    v50 = sub_1CEFD0DF0(v47, v49, &v100);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2080;
    v51 = sub_1CF665B0C(v41, v93, v94, v95, v96);
    v53 = v52;
    sub_1CF540FDC(v41);
    sub_1CF540FDC(v41);
    v54 = sub_1CEFD0DF0(v51, v53, &v100);

    *(v45 + 14) = v54;
    v55 = v88;
    _os_log_impl(&dword_1CEFC7000, v88, v43, "Item cannot be found on disk, only looking for existing item %s, request %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v46, -1, -1);
    MEMORY[0x1D386CDC0](v45, -1, -1);

    (*(v89 + 8))(v87, v90);
  }

  else
  {
    sub_1CF540FDC(v41);
    sub_1CF540FDC(v41);

    (*(v89 + 8))(v40, v90);
  }

  v77 = v83;
  v78 = v85;
  (*(v97 + 56))(v85, 1, 1, v23);
  swift_storeEnumTagMultiPayload();
  v77(v78);
  return (*(v29 + 8))(v78, v28);
}

uint64_t sub_1CF5418DC(char *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, void *a5, unsigned int a6, int a7, unint64_t a8, void (**a9)(void), uint64_t a10)
{
  v91 = a8;
  v89 = a7;
  v90 = a6;
  v102 = a3;
  v103 = a2;
  v104 = a1;
  v11 = *a5;
  v12 = *(*a4 + 80);
  v13 = *(*a4 + 88);
  v14 = *a4;
  v15 = *(*a4 + 96);
  v101 = a4;
  v16 = *(v14 + 104);
  v84 = v12;
  v105 = v12;
  v106 = v13;
  v83 = v15;
  v107 = v15;
  v108 = v16;
  v82 = v16;
  v85 = type metadata accessor for ReconciliationID();
  v17 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v77 - v18;
  v19 = sub_1CF9E75D8();
  v96 = *(v19 - 8);
  v97 = v19;
  v20 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v95 = &v77 - v21;
  v98 = v13;
  v99 = *(v13 - 1);
  v22 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v80 = &v77 - v24;
  v25 = v11[77];
  v26 = v11[78];
  v27 = v11[79];
  v88 = a5;
  v28 = v11[80];
  v105 = v25;
  v106 = v26;
  v107 = v27;
  v108 = v28;
  v29 = _s20ParentIDLookupResultVMa();
  v100 = *(v29 - 8);
  v30 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v87 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v77 - v33;
  v105 = v25;
  v106 = v26;
  v107 = v27;
  v108 = v28;
  type metadata accessor for ItemLookupResult();
  v35 = sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v94 = v35;
  v36 = sub_1CF9E8238();
  v92 = *(v36 - 8);
  v93 = v36;
  v37 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v77 - v38;
  v40 = sub_1CF9E8238();
  v41 = *(v40 - 1);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v77 - v44;
  (*(v41 + 16))(&v77 - v44, v104, v40, v43);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = (*(v41 + 8))(v45, v40);
    MEMORY[0x1EEE9AC00](v46);
    *(&v77 - 4) = v25;
    *(&v77 - 3) = v26;
    *(&v77 - 2) = v27;
    *(&v77 - 1) = v28;
    sub_1CF52CCD8(sub_1CF54FB28, v40, v39);
    v103(v39);
    return (*(v92 + 8))(v39, v93);
  }

  else
  {
    v92 = v28;
    v93 = v27;
    v104 = v26;
    v94 = v25;
    v48 = a10;
    v49 = v100;
    v50 = *(v100 + 32);
    v79 = v100 + 32;
    v78 = v50;
    v50(v34, v45, v29);
    v52 = v95;
    v51 = v96;
    v53 = v97;
    (*(v96 + 16))(v95, &v34[*(v29 + 52)], v97);
    v54 = v98;
    if ((*(v99 + 48))(v52, 1, v98) == 1)
    {
      (*(v51 + 8))(v52, v53);
    }

    else
    {
      v55 = *(v99 + 32);
      v56 = v80;
      v55(v80, v52, v54);
      v105 = v84;
      v106 = v54;
      v107 = v83;
      v108 = v82;
      type metadata accessor for FPFSID();
      v57 = v81;
      v58 = v56;
      v48 = a10;
      v55(v81, v58, v54);
      swift_storeEnumTagMultiPayload();
      result = sub_1CF554514(v57);
      v101 = result;
    }

    v60 = v103;
    v59 = v104;
    v61 = v94;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
    }

    else
    {
      v98 = a9;
      v99 = v48 + 1;
      v103 = *v34;
      v62 = v87;
      (*(v49 + 16))(v87, v34, v29);
      v63 = *(v49 + 80);
      v97 = v29;
      v104 = v34;
      v64 = (v63 + 97) & ~v63;
      v65 = (v86 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      *(v66 + 16) = v61;
      *(v66 + 24) = v59;
      v67 = v92;
      *(v66 + 32) = v93;
      *(v66 + 40) = v67;
      v69 = v101;
      v68 = v102;
      *(v66 + 48) = v60;
      *(v66 + 56) = v68;
      LOBYTE(v67) = v89;
      v70 = v90;
      *(v66 + 64) = v90;
      v71 = v91;
      *(v66 + 72) = v69;
      *(v66 + 80) = v71;
      *(v66 + 88) = v88;
      v72 = v67 & 1;
      *(v66 + 96) = v67 & 1;
      v73 = v62;
      v74 = v97;
      v78(v66 + v64, v73, v97);
      v75 = v98;
      *(v66 + v65) = v98;

      sub_1CEFD09A0(v71);

      v76 = v75;
      sub_1CF5407F0(v103, v70, v72, v71, v76, v99, sub_1CF54FA6C, v66);

      return (*(v100 + 8))(v104, v74);
    }
  }

  return result;
}

char *sub_1CF5420D4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, int a4, void *a5, unint64_t a6, void *a7, int a8, uint64_t a9, char *a10)
{
  v216 = a8;
  v225 = a6;
  v226 = a4;
  v234 = a2;
  v235 = a3;
  v13 = *a5;
  v14 = *a7;
  v211 = sub_1CF9E6448();
  v210 = *(v211 - 8);
  v15 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v211);
  v209 = &v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = a5;
  v17 = *(v13 + 80);
  v213 = *(v17 - 8);
  v18 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v208 = &v193 - v20;
  v21 = v14[77];
  v22 = v14[78];
  v23 = v14[79];
  v217 = a7;
  v24 = v14[80];
  v236 = v21;
  v237 = v22;
  v238 = v23;
  v239 = v24;
  v212 = _s20ParentIDLookupResultVMa();
  v220 = *(v212 - 8);
  v25 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v203 = &v193 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v202 = &v193 - v28;
  v29 = sub_1CF9E6118();
  v223 = *(v29 - 8);
  v224 = v29;
  v30 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v205 = &v193 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v204 = &v193 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v215 = &v193 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v221 = &v193 - v37;
  v214 = v17;
  v201 = sub_1CF9E75D8();
  v200 = *(v201 - 1);
  v38 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v199 = &v193 - v39;
  v40 = sub_1CF9E75D8();
  v218 = *(v40 - 8);
  v41 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v193 - v42;
  v230 = *(v21 - 8);
  v44 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v207 = &v193 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = v46;
  MEMORY[0x1EEE9AC00](v47);
  v227 = v22;
  v228 = &v193 - v48;
  v231 = v21;
  v232 = v23;
  v236 = v21;
  v237 = v22;
  v238 = v23;
  v239 = v24;
  v229 = v24;
  v49 = type metadata accessor for ItemLookupResult();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v193 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v219 = &v193 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v233 = &v193 - v57;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v58 = sub_1CF9E8238();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v193 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v63);
  v66 = &v193 - v65;
  (*(v59 + 16))(&v193 - v65, a1, v58, v64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v59 + 8))(v66, v58);
    return v234(a1);
  }

  if ((*(v50 + 48))(v66, 1, v49) == 1)
  {
    return v234(a1);
  }

  v197 = v53;
  v68 = v233;
  (*(v50 + 32))(v233, v66, v49);
  sub_1CF52D0F8(v49, v43);
  v70 = v230;
  v69 = v231;
  if ((*(v230 + 48))(v43, 1, v231) == 1)
  {
    (*(v218 + 8))(v43, v40);
    (*(v50 + 56))(v62, 1, 1, v49);
    swift_storeEnumTagMultiPayload();
    v234(v62);
    (*(v59 + 8))(v62, v58);
    return (*(v50 + 8))(v68, v49);
  }

  v198 = v50;
  v71 = *(v70 + 32);
  v195 = v70 + 32;
  v194 = v71;
  v71(v228, v43, v69);
  v72 = sub_1CF5404E0();
  v218 = v49;
  if (v72)
  {
    v196 = 1;
    v73 = v198;
    v74 = v233;
    v75 = v221;
    v76 = v219;
  }

  else
  {
    v74 = v233;
    v73 = v198;
    v76 = v219;
    if (v233[*(v49 + 60)] == 1)
    {
      v77 = v199;
      sub_1CF5559E4(v199);
      v196 = (*(v213 + 48))(v77, 1, v214) == 1;
      (*(v200 + 8))(v77, v201);
    }

    else
    {
      v196 = 1;
    }

    v75 = v221;
  }

  v78 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v79 = *(v73 + 16);
  v80 = v218;
  v79(v76, v74, v218);
  v81 = v225;
  sub_1CEFD09A0(v225);
  sub_1CEFD09A0(v81);
  v82 = sub_1CF9E6108();
  v83 = sub_1CF9E7298();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v201 = swift_slowAlloc();
    v236 = v201;
    *v84 = 136315906;
    v85 = v197;
    v79(v197, v76, v80);
    v86 = *(v73 + 8);
    v86(v76, v80);
    v87 = sub_1CF52D1B4(v80);
    v89 = v88;
    v219 = v86;
    v86(v85, v80);
    v90 = sub_1CEFD0DF0(v87, v89, &v236);

    *(v84 + 4) = v90;
    *(v84 + 12) = 2080;
    if (v226)
    {
      if (v226 == 1)
      {
        v91 = 0x74616761706F7270;
      }

      else
      {
        v91 = 0xD000000000000010;
      }

      if (v226 == 1)
      {
        v92 = 0xED000053466F5465;
      }

      else
      {
        v92 = 0x80000001CFA2C3C0;
      }
    }

    else
    {
      v92 = 0x80000001CFA2C390;
      v91 = 0xD000000000000013;
    }

    v94 = v225;
    v95 = v232;
    v97 = v196;
    v98 = sub_1CEFD0DF0(v91, v92, &v236);

    *(v84 + 14) = v98;
    *(v84 + 22) = 1024;
    *(v84 + 24) = v97;
    *(v84 + 28) = 2080;
    v99 = v231;
    v100 = sub_1CF665B0C(v94, v231, v227, v95, v229);
    v102 = v101;
    sub_1CF540FDC(v94);
    sub_1CF540FDC(v94);
    v103 = sub_1CEFD0DF0(v100, v102, &v236);

    *(v84 + 30) = v103;
    _os_log_impl(&dword_1CEFC7000, v82, v83, "Found parent %s, behavior: %s, shouldReconcile: %{BOOL}d request %s", v84, 0x26u);
    v104 = v201;
    swift_arrayDestroy();
    v96 = v99;
    MEMORY[0x1D386CDC0](v104, -1, -1);
    MEMORY[0x1D386CDC0](v84, -1, -1);

    v93 = *(v223 + 8);
    v93(v221, v224);
  }

  else
  {
    sub_1CF540FDC(v81);
    v219 = *(v73 + 8);
    (v219)(v76, v80);
    sub_1CF540FDC(v81);

    v93 = *(v223 + 8);
    v93(v75, v224);
    v94 = v81;
    v96 = v231;
    v95 = v232;
    v97 = v196;
  }

  if (((sub_1CF937C7C(v96, v95) | v97) & 1) == 0)
  {
    v134 = fpfs_current_or_default_log();
    v135 = v215;
    sub_1CF9E6128();
    sub_1CEFD09A0(v94);
    sub_1CEFD09A0(v94);

    v136 = sub_1CF9E6108();
    v137 = sub_1CF9E7298();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v221 = v139;
      v236 = v139;
      *v138 = 136315394;
      v140 = sub_1CF554E8C(v139);
      v142 = v141;

      v143 = sub_1CEFD0DF0(v140, v142, &v236);

      *(v138 + 4) = v143;
      *(v138 + 12) = 2080;
      v144 = v94;
      v201 = v93;
      v145 = v94;
      v146 = v96;
      v147 = sub_1CF665B0C(v144, v96, v227, v232, v229);
      v149 = v148;
      sub_1CF540FDC(v145);
      sub_1CF540FDC(v145);
      v150 = sub_1CEFD0DF0(v147, v149, &v236);

      *(v138 + 14) = v150;
      _os_log_impl(&dword_1CEFC7000, v136, v137, "Parent item is not dataless, lookup and propagate %s request %s", v138, 0x16u);
      v151 = v221;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v151, -1, -1);
      MEMORY[0x1D386CDC0](v138, -1, -1);

      (v201)(v215, v224);
      v152 = v218;
    }

    else
    {
      sub_1CF540FDC(v94);
      sub_1CF540FDC(v94);

      v93(v135, v224);
      v152 = v218;
      v145 = v94;
      v146 = v96;
    }

    v173 = sub_1CF5404E0();
    v174 = sub_1CF6651BC(v145);
    sub_1CF532AE0(v222, 1, v173 & 1, v216 & 1, v174, v234, v235);
    sub_1CF540FDC(v174);
    (*(v230 + 8))(v228, v146);
    v175 = v233;
    v176 = v152;
    return (v219)(v175, v176);
  }

  v105 = a10;
  v106 = sub_1CF937C7C(v96, v95);
  v107 = fpfs_current_or_default_log();
  v108 = (v220 + 16);
  v221 = a10;
  if (v106)
  {
    v109 = v204;
    sub_1CF9E6128();
    v110 = v202;
    v111 = v212;
    (*v108)(v202, a9, v212);
    sub_1CEFD09A0(v94);
    sub_1CEFD09A0(v94);
    v112 = sub_1CF9E6108();
    v113 = sub_1CF9E7298();
    v114 = os_log_type_enabled(v112, v113);
    v115 = v229;
    if (v114)
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v201 = v93;
      v118 = v111;
      v215 = v117;
      v236 = v117;
      *v116 = 136315394;
      v119 = *v110;
      v120 = *(v220 + 8);

      v121 = v120(v110, v118);
      v122 = sub_1CF554E8C(v121);
      v124 = v123;

      v125 = sub_1CEFD0DF0(v122, v124, &v236);
      v126 = v225;

      *(v116 + 4) = v125;
      *(v116 + 12) = 2080;
      v127 = sub_1CF665B0C(v126, v96, v227, v232, v115);
      v129 = v128;
      sub_1CF540FDC(v126);
      sub_1CF540FDC(v126);
      v130 = sub_1CEFD0DF0(v127, v129, &v236);

      *(v116 + 14) = v130;
      _os_log_impl(&dword_1CEFC7000, v112, v113, "Parent item is dataless, materializing %s request %s", v116, 0x16u);
      v131 = v215;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v131, -1, -1);
      v132 = v116;
      v105 = v221;
      MEMORY[0x1D386CDC0](v132, -1, -1);

      v133 = &v236;
LABEL_32:
      (v201)(*(v133 - 32), v224);
      goto LABEL_36;
    }
  }

  else
  {
    v109 = v205;
    sub_1CF9E6128();
    v110 = v203;
    v111 = v212;
    (*v108)(v203, a9, v212);
    sub_1CEFD09A0(v94);
    sub_1CEFD09A0(v94);
    v112 = sub_1CF9E6108();
    v153 = sub_1CF9E7298();
    v154 = os_log_type_enabled(v112, v153);
    v155 = v229;
    if (v154)
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v201 = v93;
      v158 = v111;
      v215 = v157;
      v236 = v157;
      *v156 = 136315394;
      v159 = *v110;
      v160 = *(v220 + 8);

      v161 = v160(v110, v158);
      v162 = sub_1CF554E8C(v161);
      v164 = v163;

      v165 = sub_1CEFD0DF0(v162, v164, &v236);
      v166 = v225;

      *(v156 + 4) = v165;
      *(v156 + 12) = 2080;
      v167 = sub_1CF665B0C(v166, v96, v227, v232, v155);
      v169 = v168;
      sub_1CF540FDC(v166);
      sub_1CF540FDC(v166);
      v170 = sub_1CEFD0DF0(v167, v169, &v236);

      *(v156 + 14) = v170;
      _os_log_impl(&dword_1CEFC7000, v112, v153, "Parent item must be imported, materializing %s request %s", v156, 0x16u);
      v171 = v215;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v171, -1, -1);
      v172 = v156;
      v105 = v221;
      MEMORY[0x1D386CDC0](v172, -1, -1);

      v133 = &v237;
      goto LABEL_32;
    }
  }

  sub_1CF540FDC(v94);
  (*(v220 + 8))(v110, v111);
  sub_1CF540FDC(v94);

  v93(v109, v224);
LABEL_36:
  v177 = v230;
  result = [v105 totalUnitCount];
  if (!__OFADD__(result, 1))
  {
    [v105 setTotalUnitCount_];
    v178 = v232;
    v179 = v208;
    v180 = v228;
    v181 = v96;
    (*(v232 + 64))(v96, v232);
    v182 = v207;
    (*(v177 + 16))(v207, v180, v96);
    v183 = (*(v177 + 80) + 80) & ~*(v177 + 80);
    v184 = (v206 + v183 + 7) & 0xFFFFFFFFFFFFFFF8;
    v185 = swift_allocObject();
    v186 = v227;
    *(v185 + 2) = v96;
    *(v185 + 3) = v186;
    v187 = v229;
    *(v185 + 4) = v178;
    *(v185 + 5) = v187;
    v188 = v235;
    *(v185 + 6) = v234;
    *(v185 + 7) = v188;
    v189 = v225;
    *(v185 + 8) = v222;
    *(v185 + 9) = v189;
    v194(&v185[v183], v182, v181);
    v190 = &v185[v184];
    *v190 = v217;
    v190[8] = v216 & 1;
    v190[9] = v226;
    sub_1CEFD09A0(v189);

    v191 = v209;
    sub_1CF5347DC();
    v192 = sub_1CF53499C(v179, v189, 1, v191, sub_1CF54FB9C, v185);

    (*(v210 + 8))(v191, v211);
    (*(v213 + 8))(v179, v214);
    [v221 addChild:v192 withPendingUnitCount:1];

    (*(v177 + 8))(v228, v181);
    v175 = v233;
    v176 = v218;
    return (v219)(v175, v176);
  }

  __break(1u);
  return result;
}

unint64_t sub_1CF5436E8(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, int a8)
{
  v55 = a8;
  v58 = a6;
  v59 = a4;
  v60 = a5;
  v62 = a2;
  v63 = a3;
  v10 = *a7;
  v11 = sub_1CF9E6118();
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v61 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v10[77];
  v15 = v10[78];
  v16 = v10[79];
  v17 = v10[80];
  v64[0] = v14;
  v64[1] = v15;
  v64[2] = v16;
  v64[3] = v17;
  type metadata accessor for ItemLookupResult();
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v18 = sub_1CF9E8238();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (v51 - v21);
  if (a1)
  {
    *v22 = a1;
    swift_storeEnumTagMultiPayload();
    v23 = a1;
    v62(v22);
    return (*(v19 + 8))(v22, v18);
  }

  else
  {
    v51[1] = a7;
    v52 = v14;
    v53 = v17;
    v54 = v15;
    v25 = v16;
    v26 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v27 = v60;
    sub_1CEFD09A0(v60);
    sub_1CEFD09A0(v27);
    v28 = v59;

    v29 = sub_1CF9E6108();
    v30 = sub_1CF9E7298();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v64[0] = v32;
      *v31 = 136315394;
      v33 = sub_1CF554E8C(v32);
      v35 = v34;

      v36 = sub_1CEFD0DF0(v33, v35, v64);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      v37 = v52;
      v38 = sub_1CF665B0C(v27, v52, v54, v25, v53);
      v40 = v39;
      sub_1CF540FDC(v27);
      sub_1CF540FDC(v27);
      v41 = sub_1CEFD0DF0(v38, v40, v64);

      *(v31 + 14) = v41;
      _os_log_impl(&dword_1CEFC7000, v29, v30, "Parent is materialized, lookup %s again request %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v32, -1, -1);
      MEMORY[0x1D386CDC0](v31, -1, -1);

      (*(v56 + 8))(v61, v57);
      v43 = v62;
      v42 = v63;
      v44 = v55;
    }

    else
    {
      sub_1CF540FDC(v27);
      sub_1CF540FDC(v27);

      (*(v56 + 8))(v61, v57);
      v43 = v62;
      v42 = v63;
      v44 = v55;
      v37 = v52;
    }

    *(v28 + *(*v28 + 128)) = 0;
    if (sub_1CF937C7C(v37, v25))
    {
      v45 = sub_1CF6651BC(v60);
      sub_1CF52FB88(v28, 1, v44 & 1, v45, v43, v42);
      v46 = v45;
    }

    else
    {
      v47 = sub_1CF5404E0();
      v48 = sub_1CF6651BC(v60);
      v49 = v42;
      v50 = v48;
      sub_1CF532AE0(v28, 1, v47 & 1, v44 & 1, v48, v43, v49);
      v46 = v50;
    }

    return sub_1CF540FDC(v46);
  }
}

uint64_t sub_1CF543BDC(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a3;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  type metadata accessor for ItemLookupResult();
  sub_1CF9E75D8();
  v18 = sub_1CF9E8238();
  sub_1CF52CEEC(sub_1CF550170, v18, v17);
  v21(v17);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1CF543D70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v101 = a2;
  v102 = a7;
  v12 = sub_1CF9E5248();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v96 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E5268();
  v97 = *(v15 - 8);
  v98 = v15;
  v16 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v95 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1CF9E6118();
  v75 = *(v76 - 8);
  v18 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for ItemMetadata();
  v20 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1CF550180();
  v93 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v88 = *(TupleTypeMetadata2 - 8);
  v23 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v89 = &v75 - v24;
  v104 = a3;
  v105 = a4;
  v84 = a5;
  v106 = a5;
  v107 = a6;
  v25 = type metadata accessor for ItemLookupResult();
  v26 = sub_1CF9E75D8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v90 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v75 - v31;
  v33 = sub_1CF9E75D8();
  v99 = *(v33 - 8);
  v100 = v33;
  v34 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v75 - v35;
  v103 = a3;
  v37 = *(a3 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v79 = &v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v81 = &v75 - v42;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = &v75 - v45;
  v47 = *(v27 + 16);
  v94 = a1;
  v86 = v47;
  (v47)(v32, a1, v26, v44);
  v48 = *(v25 - 8);
  v85 = *(v48 + 48);
  v49 = v85(v32, 1, v25);
  v92 = v26;
  v80 = v27;
  v78 = v48;
  v87 = v25;
  if (v49 == 1)
  {
    (*(v27 + 8))(v32, v26);
    v50 = v103;
    (*(v37 + 56))(v36, 1, 1);
  }

  else
  {
    sub_1CF52D0F8(v25, v36);
    (*(v48 + 8))(v32, v25);
    v50 = v103;
    if ((*(v37 + 48))(v36, 1) != 1)
    {
      v57 = *(v37 + 32);
      v57(v46, v36, v50);
      v57(v102, v46, v50);
      goto LABEL_15;
    }
  }

  (*(v99 + 8))(v36, v100);
  if (((v101 >> 58) & 0x3C | (v101 >> 1) & 3) != 3)
  {
LABEL_17:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00E8B4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v72 = v95;
    v73 = v98;
    sub_1CF9E57D8();
    v74 = sub_1CF9E50D8();
    (*(v97 + 8))(v72, v73);
    *v102 = v74;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E8238();
    return swift_storeEnumTagMultiPayload();
  }

  v51 = swift_projectBox();
  v52 = v89;
  v53 = TupleTypeMetadata2;
  (*(v88 + 16))(v89, v51, TupleTypeMetadata2);

  (*(*(v93 - 8) + 8))(v52);
  v54 = v90;
  v55 = v92;
  v86(v90, v94, v92);
  v56 = v87;
  if (v85(v54, 1, v87) == 1)
  {
    (*(v80 + 8))(v54, v55);
    goto LABEL_17;
  }

  v58 = v79;
  (*(v37 + 16))(v79, v54, v50);
  (*(v78 + 8))(v54, v56);
  v59 = v37;
  v60 = *(v37 + 32);
  v61 = v81;
  v60(v81, v58, v50);
  v62 = v83;
  (*(v84 + 104))(v50);
  v63 = v62 + *(v82 + 28);
  result = sub_1CF9E5C98();
  if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v65 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v65 < 9.22337204e18)
  {
    v66 = v59;
    is_busy_date = fpfs_is_busy_date();
    sub_1CF007C58(v62, type metadata accessor for ItemMetadata);
    if (!is_busy_date)
    {
      (*(v66 + 8))(v61, v50);
      goto LABEL_17;
    }

    v68 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v69 = sub_1CF9E6108();
    v70 = sub_1CF9E7298();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_1CEFC7000, v69, v70, "🏗 Forcing busy item return for URL resolution", v71, 2u);
      MEMORY[0x1D386CDC0](v71, -1, -1);
    }

    (*(v75 + 8))(v77, v76);
    v60(v102, v61, v50);
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E8238();
    return swift_storeEnumTagMultiPayload();
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1CF5447C4(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  LODWORD(v87) = a4;
  v86 = a3;
  v4 = sub_1CF9E63D8();
  v85 = *(v4 - 8);
  v5 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v78 - v11;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v78 - v22;
  v24 = type metadata accessor for Signpost(0);
  v88 = *(v24 - 8);
  v25 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v90 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v89 = (&v78 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v93 = &v78 - v29;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      v33 = v32;
      v78 = v4;
      v34 = swift_allocObject();
      v35 = v86;
      *(v34 + 16) = v31;
      *(v34 + 24) = v35;
      *(v34 + 32) = v87;
      v87 = v34;
      *(v34 + 40) = v33;
      v36 = *(v31 + qword_1EDEBBC38);
      v92 = v31;

      v86 = v33;
      v83 = fpfs_adopt_log();
      if (qword_1EDEAE980 != -1)
      {
        swift_once();
      }

      v37 = qword_1EDEBBE40;
      (*(v13 + 56))(v23, 1, 1, v12);
      strcpy(&aBlock, "async batch ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v38 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v38);

      v81 = *(&aBlock + 1);
      v82 = aBlock;
      sub_1CEFCCBDC(v23, v20, &unk_1EC4BED20, &unk_1CFA00700);
      v39 = *(v13 + 48);
      if (v39(v20, 1, v12) == 1)
      {
        v40 = v37;
        sub_1CF9E6048();
        v41 = v16;
        if (v39(v20, 1, v12) != 1)
        {
          sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        (*(v13 + 32))(v16, v20, v12);
        v41 = v16;
      }

      v42 = v93;
      (*(v13 + 16))(v93, v41, v12);
      *(v42 + *(v24 + 20)) = v37;
      v43 = v42 + *(v24 + 24);
      *v43 = "DB queue wait";
      *(v43 + 8) = 13;
      *(v43 + 16) = 2;
      v44 = v37;
      sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1CF9FA450;
      *(v45 + 56) = MEMORY[0x1E69E6158];
      *(v45 + 64) = sub_1CEFD51C4();
      v46 = v81;
      *(v45 + 32) = v82;
      *(v45 + 40) = v46;
      sub_1CF9E6028();

      (*(v13 + 8))(v41, v12);
      sub_1CEFCCC44(v23, &unk_1EC4BED20, &unk_1CFA00700);
      v81 = *(v92 + 168);
      v82 = *(v92 + 64);
      v79 = sub_1CF9E6448();
      v80 = *(v79 - 8);
      (*(v80 + 56))(v94, 1, 1, v79);
      v47 = v89;
      sub_1CEFE4F8C(v42, v89, type metadata accessor for Signpost);
      v48 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v49 = (v25 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      sub_1CEFE4D98(v47, v50 + v48, type metadata accessor for Signpost);
      v51 = (v50 + v49);
      v89 = nullsub_1;
      *v51 = nullsub_1;
      v51[1] = 0;
      v52 = v90;
      sub_1CEFE4F8C(v42, v90, type metadata accessor for Signpost);
      v53 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
      v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
      v55 = (v54 + 25) & 0xFFFFFFFFFFFFFFF8;
      v88 = (v55 + 23) & 0xFFFFFFFFFFFFFFF8;
      v56 = v92;
      v57 = swift_allocObject();
      sub_1CEFE4D98(v52, v57 + v48, type metadata accessor for Signpost);
      v58 = (v57 + v49);
      *v58 = sub_1CF045408;
      v58[1] = 0;
      *(v57 + v53) = v56;
      v59 = v57 + v54;
      *v59 = "evict(_:request:qos:evictionReason:completion:)";
      *(v59 + 8) = 47;
      *(v59 + 16) = 2;
      v60 = (v57 + v55);
      v61 = v80;
      *v60 = v89;
      v60[1] = 0;
      v62 = v57;
      v63 = (v57 + v88);
      v64 = v79;
      v65 = v87;
      *v63 = sub_1CF552D20;
      v63[1] = v65;
      v66 = swift_allocObject();
      v66[2] = sub_1CF554408;
      v66[3] = v50;
      v67 = v81;
      v66[4] = v81;

      v68 = fpfs_current_log();
      v90 = *(v67 + 16);
      v69 = v91;
      sub_1CEFCCBDC(v94, v91, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v61 + 48))(v69, 1, v64) == 1)
      {
        sub_1CEFCCC44(v69, &unk_1EC4BE370, qword_1CFA01B30);
        v70 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v71 = v84;
        sub_1CF9E6438();
        (*(v61 + 8))(v69, v64);
        v70 = sub_1CF9E63C8();
        (*(v85 + 8))(v71, v78);
      }

      v72 = swift_allocObject();
      v72[2] = v68;
      v72[3] = sub_1CF4858EC;
      v72[4] = v62;
      v98 = sub_1CF2BA17C;
      v99 = v72;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v96 = sub_1CEFCA444;
      v97 = &block_descriptor_388_0;
      v73 = _Block_copy(&aBlock);
      v74 = v68;

      v98 = sub_1CF2BA180;
      v99 = v66;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v96 = sub_1CEFCA444;
      v97 = &block_descriptor_391;
      v75 = _Block_copy(&aBlock);

      fp_task_tracker_async_and_qos(v90, v82, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v70, v73, v75);
      _Block_release(v75);
      _Block_release(v73);

      sub_1CEFCCC44(v94, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CF007C58(v93, type metadata accessor for Signpost);
      v76 = v83;
      v77 = fpfs_adopt_log();
    }

    else
    {
    }
  }
}

void sub_1CF545334(void *a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5, char a6, unint64_t a7, void *a8, uint64_t a9, unsigned __int8 a10)
{
  v68 = a4;
  v64 = a8;
  v65 = a7;
  v66 = a1;
  v67 = a3;
  v13 = sub_1CF9E5CF8();
  v62 = *(v13 - 8);
  v63 = v13;
  v14 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6118();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E53C8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a5;
  v73 = a6;
  v26 = objc_sync_enter(a2);
  if (v26)
  {
LABEL_16:
    MEMORY[0x1EEE9AC00](v26);
    v60 = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, &v59, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v27 = *(a2 + qword_1EDEADAA8);
  v28 = objc_sync_exit(a2);
  if (v28)
  {
    MEMORY[0x1EEE9AC00](v28);
    v60 = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, &v59, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (v27)
  {
    v70 = 35;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00E8B4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    v29 = sub_1CF9E53A8();
    (*(v22 + 8))(v25, v21);
    v67(v29);

    return;
  }

  v30 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v31 = sub_1CF9E7298();
  v32 = sub_1CF19C010(v31, "eviction waiter", 15, 2, v67, v68);
  v34 = v33;
  (*(v17 + 8))(v20, v16);
  v35 = v66;
  v36 = v66[3];
  v37 = v66[4];
  v38 = __swift_project_boxed_opaque_existential_1(v66, v36);
  v39 = v65;
  if (sub_1CF5AD73C(&v72, v65, v64, a9, v38, v32, v34, v36, *(v37 + 8)) != 1)
  {

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
  inited = swift_initStackObject();
  v41 = MEMORY[0x1E69E7CC0];
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  *(inited + 24) = v41;
  *(inited + 32) = v41;
  *(inited + 40) = v41;
  *(inited + 48) = 0;
  v42 = v35[3];
  v43 = v35[4];
  v44 = __swift_project_boxed_opaque_existential_1(v35, v42);
  LOBYTE(v70) = 4;
  v45 = sub_1CF9042A4(v39);
  v71 = a10;
  v46 = v69;
  sub_1CF5673DC(&v72, &v70, v45, v47, 0x800000, a2, &v71, inited, v44, v42, *(v43 + 8));
  if (v46)
  {

    return;
  }

  v48 = v35[3];
  v49 = v35[4];
  v50 = __swift_project_boxed_opaque_existential_1(v35, v48);
  v51 = v61;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v53 = v52;
  v26 = (*(v62 + 8))(v51, v63);
  v54 = v53 * 1000000000.0;
  if (COERCE__INT64(fabs(v53 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v54 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v54 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1CF521850(inited, v54, v50, v48, v49);

  swift_setDeallocating();
  v55 = *(inited + 16);

  v56 = *(inited + 24);

  v57 = *(inited + 32);

  v58 = *(inited + 40);
}

void sub_1CF545900(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, unint64_t a5, int a6, void *a7)
{
  v657 = a7;
  LODWORD(v654) = a6;
  v659 = a5;
  v661 = a4;
  v665 = a3;
  v664 = a2;
  v663 = a1;
  v8 = sub_1CF9E5248();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v590 = &v569 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5268();
  v591 = *(v11 - 8);
  v592 = v11;
  v12 = *(v591 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v589 = &v569 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E63A8();
  v597 = *(v14 - 8);
  v598 = v14;
  v15 = *(v597 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v596 = &v569 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E6118();
  v618 = *(v17 - 8);
  v619 = v17;
  v18 = *(v618 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v617 = &v569 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v580 = &v569 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v600 = &v569 - v24;
  v653 = sub_1CF9E6448();
  v652 = *(v653 - 8);
  v25 = *(v652 + 64);
  MEMORY[0x1EEE9AC00](v653);
  v595 = &v569 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v582 = &v569 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v594 = &v569 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v602 = &v569 - v32;
  v607 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v621 = &v569 - v35;
  v36 = sub_1CF9E63D8();
  v631 = *(v36 - 8);
  v632 = v36;
  v37 = *(v631 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v579 = &v569 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v599 = &v569 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v622 = &v569 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v586 = &v569 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v593 = &v569 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v616 = &v569 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v633 = &v569 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v606 = &v569 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v620 = &v569 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v629 = &v569 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v645 = (&v569 - v59);
  v639 = sub_1CF9E6068();
  v644 = *(v639 - 8);
  v60 = *(v644 + 8);
  MEMORY[0x1EEE9AC00](v639);
  v585 = &v569 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v615 = &v569 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v605 = &v569 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v627 = &v569 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v581 = &v569 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v587 = &v569 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v612 = &v569 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v628 = &v569 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v601 = &v569 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v609 = &v569 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v624 = &v569 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v642 = &v569 - v84;
  v638 = type metadata accessor for Signpost(0);
  v640 = *(v638 - 8);
  v85 = *(v640 + 64);
  MEMORY[0x1EEE9AC00](v638);
  v584 = &v569 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v583 = &v569 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v588 = &v569 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v614 = &v569 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v613 = &v569 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v630 = &v569 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v604 = &v569 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v603 = &v569 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v610 = &v569 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v626 = &v569 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v625 = &v569 - v106;
  v641 = v107;
  MEMORY[0x1EEE9AC00](v108);
  v643 = &v569 - v109;
  v637 = type metadata accessor for VFSItem(0);
  v647 = *(v637 - 8);
  v110 = *(v647 + 64);
  MEMORY[0x1EEE9AC00](v637);
  v651 = &v569 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v111);
  v636 = &v569 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v608 = &v569 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v650 = &v569 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v635 = &v569 - v118;
  MEMORY[0x1EEE9AC00](v119);
  v655 = &v569 - v120;
  MEMORY[0x1EEE9AC00](v121);
  v648 = &v569 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v658 = &v569 - v124;
  MEMORY[0x1EEE9AC00](v125);
  v646 = &v569 - v126;
  MEMORY[0x1EEE9AC00](v127);
  v660 = &v569 - v128;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v130 = *(v129 - 8);
  v131 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v611 = &v569 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v132);
  v578 = &v569 - v133;
  MEMORY[0x1EEE9AC00](v134);
  v623 = &v569 - v135;
  MEMORY[0x1EEE9AC00](v136);
  v649 = (&v569 - v137);
  MEMORY[0x1EEE9AC00](v138);
  v634 = &v569 - v139;
  MEMORY[0x1EEE9AC00](v140);
  v656 = &v569 - v141;
  MEMORY[0x1EEE9AC00](v142);
  v144 = &v569 - v143;
  MEMORY[0x1EEE9AC00](v145);
  v662 = &v569 - v146;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5020, &qword_1CFA0A278);
  v148 = *(*(v147 - 8) + 64);
  MEMORY[0x1EEE9AC00](v147);
  v150 = (&v569 - v149);
  sub_1CEFCCBDC(v663, &v569 - v149, &qword_1EC4C5020, &qword_1CFA0A278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v151 = *v150;
    v152 = *v150;
    (v664)(v151);

    return;
  }

  if ((*(v130 + 48))(v150, 1, v129) == 1)
  {
    (v664)(0);
    return;
  }

  v153 = v662;
  sub_1CEFE55D0(v150, v662, &qword_1EC4C5220, &qword_1CFA0A270);
  if (*(v153 + *(v129 + 56)))
  {
    sub_1CF4810BC();
    v154 = swift_allocError();
    *v155 = 1;
    v664();

    sub_1CEFCCC44(v153, &qword_1EC4C5220, &qword_1CFA0A270);
    return;
  }

  v571 = v129;
  v577 = type metadata accessor for VFSItem;
  v156 = v660;
  sub_1CEFE4F8C(v153, v660, type metadata accessor for VFSItem);
  v157 = v646;
  sub_1CEFE4F8C(v156, v646, type metadata accessor for VFSItem);
  sub_1CEFE4F8C(v157, v658, type metadata accessor for VFSItem);
  v158 = *(v647 + 80);
  v575 = ~v158;
  v576 = v158;
  v159 = (v158 + 24) & ~v158;
  v573 = v130;
  v574 = v159;
  v663 = v158 | 7;
  v572 = (v159 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
  v160 = (v159 + v110 + 23) & 0xFFFFFFFFFFFFFFF8;
  v161 = swift_allocObject();
  *(v161 + 16) = v661;
  v162 = v157;
  v163 = v577;
  sub_1CEFE4D98(v162, v161 + v159, v577);
  v164 = v572;
  v165 = v161 + v572;
  *v165 = v659;
  *(v165 + 8) = v654;
  v166 = (v161 + v160);
  v167 = v665;
  *v166 = v664;
  v166[1] = v167;
  v647 = v161;
  *(v161 + ((v160 + 23) & 0xFFFFFFFFFFFFFFF8)) = v657;
  v168 = v648;
  sub_1CEFE4F8C(v156, v648, v163);
  sub_1CEFCCBDC(v662, v144, &qword_1EC4C5220, &qword_1CFA0A270);
  sub_1CEFE4F8C(v168, v655, v163);
  sub_1CEFCCBDC(v144, v656, &qword_1EC4C5220, &qword_1CFA0A270);
  v169 = *(v573 + 80);
  v573 = ~v169;
  v569 = v169 + 16;
  v170 = swift_allocObject();
  *(v170 + 16) = v661;
  sub_1CEFE4D98(v168, v170 + v574, v577);
  v171 = (v170 + v164);
  v172 = v665;
  *v171 = v664;
  v171[1] = v172;
  sub_1CEFE55D0(v144, v170 + ((v169 + 16 + v164) & ~v169), &qword_1EC4C5220, &qword_1CFA0A270);
  v646 = v170;
  v570 = v169;
  if (((v659 >> 58) & 0x3C | (v659 >> 1) & 3) != 0x1B)
  {
    LODWORD(v643) = (v659 >> 58) & 0x3C | (v659 >> 1) & 3;
    v675[0] = 1;
    v211 = swift_allocObject();
    v650 = v211;
    *(v211 + 16) = 1;
    v212 = (v211 + 16);
    v213 = *(v662 + *(v571 + 52));
    v645 = v212;
    if (v213)
    {
      *v671 = v213;
      MEMORY[0x1EEE9AC00](v212);
      v214 = v661;
      *(&v569 - 8) = v661;
      *(&v569 - 7) = v671;
      *(&v569 - 6) = v660;
      *(&v569 - 5) = sub_1CF552504;
      v565 = v170;
      v566 = v654;
      v567 = v215;
      v568 = v675;
      v216 = *(*v214 + 464);
      swift_retain_n();
      swift_retain_n();
      v217 = v657;
      sub_1CEFD09A0(v659);
      v218 = v213;
      v216(0, "evict(_:request:evictionReason:progress:completionHandler:)", 59, 2, 2, sub_1CF552718, &v569 - 10, MEMORY[0x1E69E7CA8] + 8);
    }

    else
    {
      swift_retain_n();
      swift_retain_n();
      v230 = v657;
      sub_1CEFD09A0(v659);
    }

    v271 = v575;
    v270 = v576;
    LODWORD(v648) = v675[0];
    v272 = v636;
    sub_1CEFE4F8C(v660, v636, type metadata accessor for VFSItem);
    sub_1CEFE4F8C(v272, v651, type metadata accessor for VFSItem);
    v273 = (v270 + 16) & v271;
    v642 = v110 + 7;
    v274 = (v110 + 7 + v273) & 0xFFFFFFFFFFFFFFF8;
    v275 = (v274 + 23) & 0xFFFFFFFFFFFFFFF8;
    v276 = (v275 + 15) & 0xFFFFFFFFFFFFFFF8;
    v277 = swift_allocObject();
    sub_1CEFE4D98(v272, v277 + v273, type metadata accessor for VFSItem);
    v278 = (v277 + v274);
    v279 = v665;
    *v278 = v664;
    v278[1] = v279;
    *(v277 + v275) = v650;
    v280 = v661;
    *(v277 + v276) = v661;
    v649 = v277;
    v281 = (v277 + ((v276 + 15) & 0xFFFFFFFFFFFFFFF8));
    v282 = v647;
    *v281 = sub_1CF552450;
    v281[1] = v282;
    if (v648 == 1)
    {
      v283 = v280[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
      v284 = swift_dynamicCastClass();
      if (v284)
      {
        v285 = v284;
        v286 = v611;
        sub_1CEFCCBDC(v662, v611, &qword_1EC4C5220, &qword_1CFA0A270);
        v287 = v569 & v573;
        v288 = (v131 + (v569 & v573) + 7) & 0xFFFFFFFFFFFFFFF8;
        v289 = swift_allocObject();
        v290 = v661;
        sub_1CEFE55D0(v286, v289 + v287, &qword_1EC4C5220, &qword_1CFA0A270);
        *(v289 + v288) = v285;
        v663 = v289;
        v291 = (v289 + ((v288 + 15) & 0xFFFFFFFFFFFFFFF8));
        v292 = v649;
        *v291 = sub_1CF5525F4;
        v291[1] = v292;
        v293 = swift_allocObject();
        *(v293 + 16) = v664;
        v664 = v293;
        *(v293 + 24) = v665;
        v294 = *(v290 + qword_1EDEBBC38);
        swift_retain_n();
        v659 = v283;
        swift_retain_n();

        v657 = fpfs_adopt_log();
        if (qword_1EDEAE980 != -1)
        {
          swift_once();
        }

        v295 = qword_1EDEBBE40;
        v296 = v644;
        v297 = v628;
        v298 = v639;
        (*(v644 + 7))(v628, 1, 1, v639);
        strcpy(v671, "async batch ");
        v671[13] = 0;
        *&v671[14] = -5120;
        v299 = sub_1CF9E7988();
        MEMORY[0x1D3868CC0](v299);

        v665 = *v671;
        v300 = *&v671[8];
        v301 = v612;
        sub_1CEFCCBDC(v297, v612, &unk_1EC4BED20, &unk_1CFA00700);
        v302 = *(v296 + 6);
        if (v302(v301, 1, v298) == 1)
        {
          v303 = v295;
          v304 = v615;
          sub_1CF9E6048();
          if (v302(v301, 1, v298) != 1)
          {
            sub_1CEFCCC44(v301, &unk_1EC4BED20, &unk_1CFA00700);
          }
        }

        else
        {
          v304 = v615;
          (*(v296 + 4))(v615, v301, v298);
        }

        v330 = v630;
        (*(v296 + 2))(v630, v304, v298);
        v331 = v638;
        *(v330 + *(v638 + 20)) = v295;
        v332 = v330 + *(v331 + 24);
        *v332 = "DB queue wait";
        *(v332 + 8) = 13;
        *(v332 + 16) = 2;
        v333 = v295;
        sub_1CF9E7468();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v334 = swift_allocObject();
        *(v334 + 16) = xmmword_1CF9FA450;
        *(v334 + 56) = MEMORY[0x1E69E6158];
        *(v334 + 64) = sub_1CEFD51C4();
        *(v334 + 32) = v665;
        *(v334 + 40) = v300;
        v567 = v334;
        v566 = 2;
        v565 = 2;
        sub_1CF9E6028();

        (*(v296 + 1))(v304, v298);
        sub_1CEFCCC44(v628, &unk_1EC4BED20, &unk_1CFA00700);
        v648 = v661[21];
        v654 = v661[8];
        (*(v652 + 56))(v633, 1, 1, v653);
        v335 = v613;
        sub_1CEFE4F8C(v330, v613, type metadata accessor for Signpost);
        v336 = (*(v640 + 80) + 16) & ~*(v640 + 80);
        v337 = (v641 + v336 + 7) & 0xFFFFFFFFFFFFFFF8;
        v338 = swift_allocObject();
        v665 = v338;
        sub_1CEFE4D98(v335, v338 + v336, type metadata accessor for Signpost);
        v339 = (v338 + v337);
        v645 = sub_1CF5543A4;
        v340 = v664;
        *v339 = sub_1CF5543A4;
        v339[1] = v340;
        v341 = v614;
        sub_1CEFE4F8C(v330, v614, type metadata accessor for Signpost);
        v342 = (v337 + 23) & 0xFFFFFFFFFFFFFFF8;
        v343 = (v342 + 15) & 0xFFFFFFFFFFFFFFF8;
        v344 = (v343 + 25) & 0xFFFFFFFFFFFFFFF8;
        v345 = swift_allocObject();
        sub_1CEFE4D98(v341, v345 + v336, type metadata accessor for Signpost);
        v346 = (v345 + v337);
        *v346 = sub_1CF045408;
        v346[1] = 0;
        *(v345 + v342) = v661;
        v347 = v345 + v343;
        v348 = v653;
        v349 = v652;
        *v347 = "removeDownload(_:_:)";
        *(v347 + 8) = 20;
        *(v347 + 16) = 2;
        v350 = (v345 + v344);
        v351 = v664;
        *v350 = v645;
        v350[1] = v351;
        v352 = (v345 + ((v344 + 23) & 0xFFFFFFFFFFFFFFF8));
        v353 = v663;
        *v352 = sub_1CF5526EC;
        v352[1] = v353;
        v354 = swift_allocObject();
        v355 = v665;
        v354[2] = sub_1CF554408;
        v354[3] = v355;
        v356 = v648;
        v354[4] = v648;
        swift_retain_n();

        v357 = fpfs_current_log();
        v661 = *(v356 + 2);
        v358 = v616;
        sub_1CEFCCBDC(v633, v616, &unk_1EC4BE370, qword_1CFA01B30);
        if ((*(v349 + 48))(v358, 1, v348) == 1)
        {
          sub_1CEFCCC44(v358, &unk_1EC4BE370, qword_1CFA01B30);
          v359 = QOS_CLASS_UNSPECIFIED;
        }

        else
        {
          v360 = v622;
          sub_1CF9E6438();
          (*(v349 + 8))(v358, v348);
          v359 = sub_1CF9E63C8();
          (*(v631 + 8))(v360, v632);
        }

        v361 = swift_allocObject();
        v361[2] = v357;
        v361[3] = sub_1CF4858EC;
        v361[4] = v345;
        *&v671[32] = sub_1CF2BA17C;
        *&v671[40] = v361;
        *v671 = MEMORY[0x1E69E9820];
        *&v671[8] = 1107296256;
        *&v671[16] = sub_1CEFCA444;
        *&v671[24] = &block_descriptor_255;
        v362 = _Block_copy(v671);
        v363 = v357;

        *&v671[32] = sub_1CF2BA180;
        *&v671[40] = v354;
        *v671 = MEMORY[0x1E69E9820];
        *&v671[8] = 1107296256;
        *&v671[16] = sub_1CEFCA444;
        *&v671[24] = &block_descriptor_258_1;
        v364 = _Block_copy(v671);

        fp_task_tracker_async_and_qos(v661, v654, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v359, v362, v364);
        _Block_release(v364);
        _Block_release(v362);

        sub_1CEFCCC44(v633, &unk_1EC4BE370, qword_1CFA01B30);
        sub_1CF007C58(v630, type metadata accessor for Signpost);
        v365 = v657;
        v366 = fpfs_adopt_log();

        sub_1CF007C58(v651, type metadata accessor for VFSItem);
        sub_1CEFCCC44(v656, &qword_1EC4C5220, &qword_1CFA0A270);
        sub_1CF007C58(v655, type metadata accessor for VFSItem);
        sub_1CF007C58(v658, type metadata accessor for VFSItem);
        sub_1CEFCCC44(v662, &qword_1EC4C5220, &qword_1CFA0A270);

        goto LABEL_100;
      }
    }

    v305 = v637;
    v306 = v651;
    v307 = (v651 + *(v637 + 28));
    v308 = type metadata accessor for ItemMetadata();
    v309 = v308;
    v310 = v658;
    if (v307[*(v308 + 80)] == 1)
    {
      if (*v307 == 1 || v307[*(v308 + 112)] == 1)
      {
        swift_retain_n();

        (v664)(0);

        sub_1CF007C58(v306, type metadata accessor for VFSItem);
        sub_1CEFCCC44(v656, &qword_1EC4C5220, &qword_1CFA0A270);
        sub_1CF007C58(v655, type metadata accessor for VFSItem);
        sub_1CF007C58(v310, type metadata accessor for VFSItem);
        sub_1CEFCCC44(v662, &qword_1EC4C5220, &qword_1CFA0A270);
LABEL_99:

        goto LABEL_100;
      }

      swift_retain_n();

      if (!fpfs_supports_partial_materialization() || !*&v307[*(v309 + 108)])
      {
        (v664)(0);

LABEL_98:
        sub_1CF007C58(v306, type metadata accessor for VFSItem);
        sub_1CEFCCC44(v656, &qword_1EC4C5220, &qword_1CFA0A270);
        sub_1CF007C58(v655, type metadata accessor for VFSItem);
        sub_1CF007C58(v310, type metadata accessor for VFSItem);
        sub_1CEFCCC44(v662, &qword_1EC4C5220, &qword_1CFA0A270);
        goto LABEL_99;
      }
    }

    else
    {
      swift_retain_n();
    }

    v311 = v645;
    swift_beginAccess();
    if (*v311 == 1 && (*v307 == 1 || v307[*(v309 + 84)]))
    {
      if (*(v310 + *(v305 + 28)) - 1 > 1 || v643 == 6 || v643 == 9 && ![*((v659 & 0xFFFFFFFFFFFFFF9) + 0x18) isProviderInitiated])
      {
        v369 = *(v280[4] + 16);
        v671[0] = v654;
        v370 = v608;
        sub_1CEFE4F8C(v310, v608, type metadata accessor for VFSItem);
        v371 = (v576 + 40) & v575;
        v372 = v280;
        v373 = (v642 + v371) & 0xFFFFFFFFFFFFFFF8;
        v374 = swift_allocObject();
        v375 = v665;
        v374[2] = v664;
        v374[3] = v375;
        v374[4] = v372;
        sub_1CEFE4D98(v370, v374 + v371, type metadata accessor for VFSItem);
        v376 = v659;
        *(v374 + v373) = v659;
        v377 = (*v369 + 744);
        v378 = *v377;
        v306 = v651;

        v310 = v658;

        sub_1CEFD09A0(v376);

        v379 = v378(v310, v671, sub_1CF5526C8, v374);
      }

      else
      {
        v312 = *v310;
        v313 = *(v310 + 8);
        qos_class_self();
        v314 = v580;
        sub_1CF9E63B8();
        v316 = v631;
        v315 = v632;
        v317 = *(v631 + 48);
        if (v317(v314, 1, v632) == 1)
        {
          (*(v316 + 104))(v579, *MEMORY[0x1E69E7FA0], v315);
          if (v317(v314, 1, v315) != 1)
          {
            sub_1CEFCCC44(v314, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v316 + 32))(v579, v314, v315);
        }

        sub_1CF9E6428();
        v477 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
        [v477 setCancellable_];
        v478 = swift_allocObject();
        swift_weakInit();
        v479 = swift_allocObject();
        v648 = v477;
        swift_unknownObjectWeakInit();
        v480 = swift_allocObject();
        *(v480 + 16) = v478;
        *(v480 + 24) = v479;
        *(v480 + 32) = v312;
        *(v480 + 40) = v313;
        *&v671[32] = sub_1CF5526CC;
        *&v671[40] = v480;
        *v671 = MEMORY[0x1E69E9820];
        v7 = 1107296256;
        *&v671[8] = 1107296256;
        *&v671[16] = sub_1CEFCA444;
        *&v671[24] = &block_descriptor_229;
        v481 = _Block_copy(v671);
        v663 = v312;

        sub_1CF03C63C(sub_1CF5526CC);

        [v477 setCancellationHandler_];
        _Block_release(v481);

        v482 = v652;
        v483 = v582;
        v484 = v653;
        (*(v652 + 16))(v582, v594, v653);
        v485 = (*(v482 + 80) + 72) & ~*(v482 + 80);
        v486 = v485 + v607;
        v487 = swift_allocObject();
        v488 = v313;
        v489 = v487;
        v490 = v664;
        *(v487 + 16) = v661;
        *(v487 + 24) = v490;
        v491 = v665;
        v492 = v663;
        *(v487 + 32) = v665;
        *(v487 + 40) = v492;
        *(v487 + 48) = v488;
        v493 = v659;
        v494 = v648;
        *(v487 + 56) = v659;
        *(v487 + 64) = v494;
        v495 = v482;
        v496 = v661;
        (*(v495 + 32))(v487 + v485, v483, v484);
        v663 = v489;
        *(v489 + v486) = v654;
        v497 = swift_allocObject();
        *(v497 + 16) = v490;
        *(v497 + 24) = v491;
        v664 = v497;
        v498 = *(v496 + qword_1EDEBBC38);
        swift_retain_n();

        sub_1CEFD09A0(v493);
        v499 = v648;
        v654 = fpfs_adopt_log();
        if (qword_1EDEAE980 != -1)
        {
          swift_once();
        }

        v500 = qword_1EDEBBE40;
        v501 = v644;
        v502 = v587;
        v503 = v639;
        (*(v644 + 7))(v587, 1, 1, v639);
        strcpy(v671, "async batch ");
        v671[13] = 0;
        *&v671[14] = -5120;
        v504 = sub_1CF9E7988();
        MEMORY[0x1D3868CC0](v504);

        v665 = *v671;
        v505 = *&v671[8];
        v506 = v502;
        v507 = v581;
        sub_1CEFCCBDC(v506, v581, &unk_1EC4BED20, &unk_1CFA00700);
        v508 = *(v501 + 6);
        v509 = v508(v507, 1, v503);
        v510 = v585;
        v659 = v499;
        if (v509 == 1)
        {
          v511 = v500;
          sub_1CF9E6048();
          if (v508(v507, 1, v503) != 1)
          {
            sub_1CEFCCC44(v507, &unk_1EC4BED20, &unk_1CFA00700);
          }
        }

        else
        {
          (*(v501 + 4))(v585, v507, v503);
        }

        v512 = v644;
        v513 = v588;
        (*(v644 + 2))(v588, v510, v503);
        v514 = v638;
        *(v513 + *(v638 + 20)) = v500;
        v515 = v513 + *(v514 + 24);
        *v515 = "DB queue wait";
        *(v515 + 8) = 13;
        *(v515 + 16) = 2;
        v516 = v500;
        sub_1CF9E7468();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v517 = v510;
        v518 = swift_allocObject();
        *(v518 + 16) = xmmword_1CF9FA450;
        *(v518 + 56) = MEMORY[0x1E69E6158];
        *(v518 + 64) = sub_1CEFD51C4();
        *(v518 + 32) = v665;
        *(v518 + 40) = v505;
        v567 = v518;
        v566 = 2;
        v565 = 2;
        sub_1CF9E6028();

        (*(v512 + 1))(v517, v503);
        sub_1CEFCCC44(v587, &unk_1EC4BED20, &unk_1CFA00700);
        v645 = v661[21];
        v648 = v661[8];
        (*(v652 + 56))(v593, 1, 1, v653);
        v519 = v583;
        sub_1CEFE4F8C(v513, v583, type metadata accessor for Signpost);
        v520 = (*(v640 + 80) + 16) & ~*(v640 + 80);
        v521 = (v641 + v520 + 7) & 0xFFFFFFFFFFFFFFF8;
        v522 = swift_allocObject();
        v665 = v522;
        sub_1CEFE4D98(v519, v522 + v520, type metadata accessor for Signpost);
        v523 = (v522 + v521);
        v644 = sub_1CF4814BC;
        v524 = v664;
        *v523 = sub_1CF4814BC;
        v523[1] = v524;
        v525 = v584;
        sub_1CEFE4F8C(v513, v584, type metadata accessor for Signpost);
        v526 = (v521 + 23) & 0xFFFFFFFFFFFFFFF8;
        v527 = (v526 + 15) & 0xFFFFFFFFFFFFFFF8;
        v528 = (v527 + 25) & 0xFFFFFFFFFFFFFFF8;
        v529 = swift_allocObject();
        sub_1CEFE4D98(v525, v529 + v520, type metadata accessor for Signpost);
        v530 = (v529 + v521);
        *v530 = sub_1CF045408;
        v530[1] = 0;
        *(v529 + v526) = v661;
        v531 = v653;
        v532 = v529 + v527;
        *v532 = "evict(_:request:qos:evictionReason:completion:)";
        *(v532 + 8) = 47;
        *(v532 + 16) = 2;
        v533 = (v529 + v528);
        v534 = v652;
        v535 = v664;
        *v533 = v644;
        v533[1] = v535;
        v536 = (v529 + ((v528 + 23) & 0xFFFFFFFFFFFFFFF8));
        v537 = v663;
        *v536 = sub_1CF5526D0;
        v536[1] = v537;
        v538 = swift_allocObject();
        v539 = v665;
        v538[2] = sub_1CF5526E8;
        v538[3] = v539;
        v540 = v645;
        v538[4] = v645;
        swift_retain_n();

        v541 = fpfs_current_log();
        v542 = *(v540 + 2);
        v543 = v586;
        sub_1CEFCCBDC(v593, v586, &unk_1EC4BE370, qword_1CFA01B30);
        v544 = (*(v534 + 48))(v543, 1, v531);
        v661 = v542;
        if (v544 == 1)
        {
          sub_1CEFCCC44(v543, &unk_1EC4BE370, qword_1CFA01B30);
          v545 = QOS_CLASS_UNSPECIFIED;
        }

        else
        {
          v546 = v622;
          sub_1CF9E6438();
          (*(v534 + 8))(v543, v531);
          v545 = sub_1CF9E63C8();
          (*(v631 + 8))(v546, v632);
        }

        v547 = swift_allocObject();
        v547[2] = v541;
        v547[3] = sub_1CF48100C;
        v547[4] = v529;
        *&v671[32] = sub_1CEFCA438;
        *&v671[40] = v547;
        *v671 = MEMORY[0x1E69E9820];
        *&v671[8] = 1107296256;
        *&v671[16] = sub_1CEFCA444;
        *&v671[24] = &block_descriptor_223_0;
        v548 = _Block_copy(v671);
        v549 = v541;

        *&v671[32] = sub_1CF2AF9E8;
        *&v671[40] = v538;
        *v671 = MEMORY[0x1E69E9820];
        *&v671[8] = 1107296256;
        *&v671[16] = sub_1CEFCA444;
        *&v671[24] = &block_descriptor_226;
        v550 = _Block_copy(v671);
        v377 = *&v671[40];

        fp_task_tracker_async_and_qos(v661, v648, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v545, v548, v550);
        _Block_release(v550);
        _Block_release(v548);

        sub_1CEFCCC44(v593, &unk_1EC4BE370, qword_1CFA01B30);
        sub_1CF007C58(v588, type metadata accessor for Signpost);
        v551 = v654;
        v552 = fpfs_adopt_log();

        (*(v652 + 8))(v594, v653);
        v310 = v658;
        v306 = v651;
        v379 = v659;
      }

      v553 = v379;
      v554 = v657;
      v555 = [v657 totalUnitCount];
      if (__OFADD__(v555, 1))
      {
        goto LABEL_103;
      }

      [v554 setTotalUnitCount_];
      [v554 addChild:v553 withPendingUnitCount:1];
    }

    else
    {
      v318 = swift_allocBox();
      sub_1CEFE4F8C(v306, v319, type metadata accessor for VFSItem);
      v320 = *(v280[4] + 16);
      type metadata accessor for VFSFileTree(0);
      v321 = swift_dynamicCastClass();
      if (v321)
      {
        v322 = *(v321 + 216);
        v323 = swift_allocObject();
        v324 = v664;
        v323[2] = v318;
        v323[3] = v324;
        v663 = v318;
        v323[4] = v665;
        *&v671[32] = sub_1CF5526BC;
        *&v671[40] = v323;
        *v671 = MEMORY[0x1E69E9820];
        *&v671[8] = 1107296256;
        *&v671[16] = sub_1CEFCA444;
        *&v671[24] = &block_descriptor_192;
        v325 = _Block_copy(v671);

        v326 = v322;

        v327 = v595;
        sub_1CF9E63F8();
        v667[0] = MEMORY[0x1E69E7CC0];
        sub_1CF00E8B4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
        sub_1CF01049C();
        v328 = v596;
        v329 = v598;
        sub_1CF9E77B8();
        MEMORY[0x1D3869630](0, v327, v328, v325);
        _Block_release(v325);

        (*(v597 + 8))(v328, v329);
        (*(v652 + 8))(v327, v653);
        sub_1CF007C58(v651, type metadata accessor for VFSItem);
        sub_1CEFCCC44(v656, &qword_1EC4C5220, &qword_1CFA0A270);
        sub_1CF007C58(v655, type metadata accessor for VFSItem);
        sub_1CF007C58(v658, type metadata accessor for VFSItem);
        sub_1CEFCCC44(v662, &qword_1EC4C5220, &qword_1CFA0A270);

        goto LABEL_100;
      }

      sub_1CF9E50F8();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00E8B4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      v380 = v589;
      v381 = v592;
      sub_1CF9E57D8();
      v382 = sub_1CF9E50D8();
      (*(v591 + 8))(v380, v381);
      (v664)(v382);
    }

    goto LABEL_98;
  }

  v173 = v635;
  sub_1CEFE4F8C(v660, v635, type metadata accessor for VFSItem);
  v174 = v634;
  sub_1CEFCCBDC(v662, v634, &qword_1EC4C5220, &qword_1CFA0A270);
  sub_1CEFE4F8C(v173, v650, type metadata accessor for VFSItem);
  sub_1CEFCCBDC(v174, v649, &qword_1EC4C5220, &qword_1CFA0A270);
  v175 = (v576 + 16) & v575;
  v630 = v110 + 7;
  v176 = v169;
  v177 = (v110 + 7 + v175) & 0xFFFFFFFFFFFFFFF8;
  v178 = (v177 + v176 + 8) & v573;
  v633 = v131 + 7;
  v179 = (v131 + 7 + v178) & 0xFFFFFFFFFFFFFFF8;
  v648 = ((v179 + 23) & 0xFFFFFFFFFFFFFFF8);
  v636 = (v648 + 23) & 0xFFFFFFFFFFFFFFF8;
  v180 = swift_allocObject();
  sub_1CEFE4D98(v173, v180 + v175, type metadata accessor for VFSItem);
  v181 = v661;
  *(v180 + v177) = v661;
  v182 = v646;
  sub_1CEFE55D0(v174, v180 + v178, &qword_1EC4C5220, &qword_1CFA0A270);
  v183 = (v180 + v179);
  *v183 = sub_1CF552504;
  v183[1] = v182;
  v184 = &v648[v180];
  v185 = v665;
  *v184 = v664;
  *(v184 + 1) = v185;
  v186 = (v180 + v636);
  v187 = v647;
  *v186 = sub_1CF552450;
  v186[1] = v187;
  v188 = v181[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  v189 = swift_dynamicCastClass();
  v190 = v185;
  v651 = v180;
  if (v189)
  {
    v191 = v189;
    v192 = v623;
    sub_1CEFCCBDC(v662, v623, &qword_1EC4C5220, &qword_1CFA0A270);
    v193 = v569 & v573;
    v194 = (v633 + (v569 & v573)) & 0xFFFFFFFFFFFFFFF8;
    v195 = swift_allocObject();
    sub_1CEFE55D0(v192, v195 + v193, &qword_1EC4C5220, &qword_1CFA0A270);
    *(v195 + v194) = v191;
    v663 = v195;
    v196 = (v195 + ((v194 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v196 = sub_1CF552754;
    v196[1] = v180;
    v197 = swift_allocObject();
    *(v197 + 16) = v664;
    *(v197 + 24) = v190;
    v664 = v197;
    v198 = *(v661 + qword_1EDEBBC38);
    swift_retain_n();
    swift_retain_n();
    v654 = v188;
    swift_retain_n();
    v199 = v657;
    sub_1CEFD09A0(v659);

    v659 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v200 = qword_1EDEBBE40;
    v201 = v644;
    v202 = v642;
    v203 = v639;
    (*(v644 + 7))(v642, 1, 1, v639);
    strcpy(v671, "async batch ");
    v671[13] = 0;
    *&v671[14] = -5120;
    v204 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v204);

    v665 = *v671;
    v205 = *&v671[8];
    v206 = v624;
    sub_1CEFCCBDC(v202, v624, &unk_1EC4BED20, &unk_1CFA00700);
    v207 = *(v201 + 6);
    v208 = v207(v206, 1, v203);
    v209 = v627;
    if (v208 == 1)
    {
      v210 = v200;
      sub_1CF9E6048();
      if (v207(v206, 1, v203) != 1)
      {
        sub_1CEFCCC44(v206, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v201 + 4))(v627, v206, v203);
    }

    v231 = v643;
    (*(v201 + 2))(v643, v209, v203);
    v232 = v638;
    *(v231 + *(v638 + 20)) = v200;
    v233 = v231 + *(v232 + 24);
    *v233 = "DB queue wait";
    *(v233 + 8) = 13;
    *(v233 + 16) = 2;
    v234 = v200;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v235 = swift_allocObject();
    *(v235 + 16) = xmmword_1CF9FA450;
    *(v235 + 56) = MEMORY[0x1E69E6158];
    *(v235 + 64) = sub_1CEFD51C4();
    *(v235 + 32) = v665;
    *(v235 + 40) = v205;
    v567 = v235;
    v566 = 2;
    v565 = 2;
    sub_1CF9E6028();

    (*(v201 + 1))(v209, v203);
    sub_1CEFCCC44(v642, &unk_1EC4BED20, &unk_1CFA00700);
    v648 = v661[21];
    v657 = v661[8];
    (*(v652 + 56))(v645, 1, 1, v653);
    v236 = v625;
    sub_1CEFE4F8C(v231, v625, type metadata accessor for Signpost);
    v237 = (*(v640 + 80) + 16) & ~*(v640 + 80);
    v238 = (v641 + v237 + 7) & 0xFFFFFFFFFFFFFFF8;
    v239 = swift_allocObject();
    v665 = v239;
    sub_1CEFE4D98(v236, v239 + v237, type metadata accessor for Signpost);
    v240 = (v239 + v238);
    v644 = sub_1CF5543A4;
    v241 = v664;
    *v240 = sub_1CF5543A4;
    v240[1] = v241;
    v242 = v626;
    sub_1CEFE4F8C(v231, v626, type metadata accessor for Signpost);
    v243 = (v238 + 23) & 0xFFFFFFFFFFFFFFF8;
    v244 = (v243 + 15) & 0xFFFFFFFFFFFFFFF8;
    v245 = (v244 + 25) & 0xFFFFFFFFFFFFFFF8;
    v246 = swift_allocObject();
    sub_1CEFE4D98(v242, v246 + v237, type metadata accessor for Signpost);
    v247 = (v246 + v238);
    *v247 = sub_1CF045408;
    v247[1] = 0;
    *(v246 + v243) = v661;
    v248 = v246 + v244;
    v249 = v652;
    *v248 = "removeDownload(_:_:)";
    *(v248 + 8) = 20;
    *(v248 + 16) = 2;
    v250 = (v246 + v245);
    v251 = v664;
    *v250 = v644;
    v250[1] = v251;
    v252 = v246;
    v253 = (v246 + ((v245 + 23) & 0xFFFFFFFFFFFFFFF8));
    v254 = v653;
    v255 = v663;
    *v253 = sub_1CF554434;
    v253[1] = v255;
    v256 = swift_allocObject();
    v257 = v665;
    v256[2] = sub_1CF554408;
    v256[3] = v257;
    v258 = v648;
    v256[4] = v648;
    swift_retain_n();

    v259 = fpfs_current_log();
    v661 = *(v258 + 2);
    v260 = v629;
    sub_1CEFCCBDC(v645, v629, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v249 + 48))(v260, 1, v254) == 1)
    {
      sub_1CEFCCC44(v260, &unk_1EC4BE370, qword_1CFA01B30);
      v261 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v262 = v622;
      sub_1CF9E6438();
      (*(v249 + 8))(v260, v254);
      v261 = sub_1CF9E63C8();
      (*(v631 + 8))(v262, v632);
    }

    v263 = swift_allocObject();
    v263[2] = v259;
    v263[3] = sub_1CF4858EC;
    v263[4] = v252;
    *&v671[32] = sub_1CF2BA17C;
    *&v671[40] = v263;
    *v671 = MEMORY[0x1E69E9820];
    *&v671[8] = 1107296256;
    *&v671[16] = sub_1CEFCA444;
    *&v671[24] = &block_descriptor_334_0;
    v264 = _Block_copy(v671);
    v265 = v259;

    *&v671[32] = sub_1CF2BA180;
    *&v671[40] = v256;
    *v671 = MEMORY[0x1E69E9820];
    *&v671[8] = 1107296256;
    *&v671[16] = sub_1CEFCA444;
    *&v671[24] = &block_descriptor_337;
    v266 = _Block_copy(v671);

    fp_task_tracker_async_and_qos(v661, v657, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v261, v264, v266);
    _Block_release(v266);
    _Block_release(v264);

    sub_1CEFCCC44(v645, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007C58(v643, type metadata accessor for Signpost);
    v267 = v659;
    v268 = fpfs_adopt_log();

    sub_1CEFCCC44(v649, &qword_1EC4C5220, &qword_1CFA0A270);
    sub_1CF007C58(v650, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v656, &qword_1EC4C5220, &qword_1CFA0A270);
    sub_1CF007C58(v655, type metadata accessor for VFSItem);
    v269 = v658;
  }

  else
  {

    v219 = v661;

    v676 = 0;
    memset(v675, 0, sizeof(v675));
    sub_1CEFCCBDC(v675, v671, &qword_1EC4C0700, &qword_1CFA05B10);
    v220 = v658;
    if (*&v671[24])
    {
      sub_1CF054EA0(v671, v672);
      v221 = v637;
      v222 = v650 + *(v637 + 28);
      if (*(v222 + *(type metadata accessor for ItemMetadata() + 80)))
      {
        v223 = v219;
        v224 = v673;
        v648 = v674;
        v225 = __swift_project_boxed_opaque_existential_1(v672, v673);
        v226 = v223[2];
        v227 = *(v649 + 8);
        v669 = *v649;
        v228 = v665;
        v670 = v227;
        swift_retain_n();
        swift_retain_n();
        v229 = v657;
        sub_1CEFD09A0(v659);

        sub_1CF68DDB0(&v669, v225, v224, v648, v671);
        memcpy(v668, v671, sizeof(v668));
        v383 = sub_1CF08B99C(v668);
        v220 = v658;
        if (v383 == 1)
        {
          memcpy(v667, v671, sizeof(v667));
          sub_1CEFCCC44(v667, &unk_1EC4BFC20, &unk_1CFA0A290);
          __swift_destroy_boxed_opaque_existential_1(v672);
          v219 = v661;
          v221 = v637;
        }

        else
        {
          memcpy(v667, v671, sizeof(v667));
          v219 = v661;
          v221 = v637;
          if (v667[24] >> 60 != 11)
          {
            v556 = *(v661[4] + 16);
            v666 = 2;
            v557 = v578;
            sub_1CEFCCBDC(v656, v578, &qword_1EC4C5220, &qword_1CFA0A270);
            v558 = v219;
            v559 = (v570 + 40) & v573;
            v560 = swift_allocObject();
            v561 = v664;
            v560[2] = v558;
            v560[3] = v561;
            v560[4] = v228;
            sub_1CEFE55D0(v557, v560 + v559, &qword_1EC4C5220, &qword_1CFA0A270);
            v562 = v220;
            v563 = *(*v556 + 824);

            v564 = v655;
            v563(v655, &v666, sub_1CF552894, v560);

            sub_1CEFCCC44(v675, &qword_1EC4C0700, &qword_1CFA05B10);
            sub_1CEFCCC44(v649, &qword_1EC4C5220, &qword_1CFA0A270);
            sub_1CF007C58(v650, type metadata accessor for VFSItem);
            sub_1CEFCCC44(v656, &qword_1EC4C5220, &qword_1CFA0A270);
            sub_1CF007C58(v564, type metadata accessor for VFSItem);
            sub_1CF007C58(v562, type metadata accessor for VFSItem);
            sub_1CEFCCC44(v662, &qword_1EC4C5220, &qword_1CFA0A270);
            sub_1CEFCCC44(v667, &unk_1EC4BFC20, &unk_1CFA0A290);
            __swift_destroy_boxed_opaque_existential_1(v672);
            goto LABEL_100;
          }

          sub_1CEFCCC44(v667, &unk_1EC4BFC20, &unk_1CFA0A290);
          __swift_destroy_boxed_opaque_existential_1(v672);
        }

        v190 = v228;
      }

      else
      {
        swift_retain_n();
        swift_retain_n();
        v368 = v657;
        sub_1CEFD09A0(v659);

        __swift_destroy_boxed_opaque_existential_1(v672);
      }
    }

    else
    {
      swift_retain_n();
      swift_retain_n();
      v367 = v657;
      sub_1CEFD09A0(v659);

      sub_1CEFCCC44(v671, &qword_1EC4C0700, &qword_1CFA05B10);
      v221 = v637;
    }

    v384 = v630;
    if (*(v220 + *(v221 + 28)) - 1 > 1)
    {
      v391 = *(v219[4] + 16);
      v671[0] = v654;
      v392 = v608;
      sub_1CEFE4F8C(v220, v608, type metadata accessor for VFSItem);
      v393 = v190;
      v394 = (v576 + 40) & v575;
      v395 = v219;
      v396 = (v384 + v394) & 0xFFFFFFFFFFFFFFF8;
      v397 = swift_allocObject();
      v397[2] = v664;
      v397[3] = v393;
      v397[4] = v395;
      sub_1CEFE4D98(v392, v397 + v394, type metadata accessor for VFSItem);
      v398 = v659;
      *(v397 + v396) = v659;
      v377 = *(*v391 + 744);

      v399 = v658;

      sub_1CEFD09A0(v398);

      v400 = (v377)(v399, v671, sub_1CF55440C, v397);

      goto LABEL_82;
    }

    v385 = *v220;
    v386 = *(v220 + 8);
    qos_class_self();
    v387 = v600;
    sub_1CF9E63B8();
    v389 = v631;
    v388 = v632;
    v390 = *(v631 + 48);
    if (v390(v387, 1, v632) == 1)
    {
      (*(v389 + 104))(v599, *MEMORY[0x1E69E7FA0], v388);
      if (v390(v387, 1, v388) != 1)
      {
        sub_1CEFCCC44(v387, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v389 + 32))(v599, v387, v388);
    }

    sub_1CF9E6428();
    v401 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
    [v401 setCancellable_];
    v402 = swift_allocObject();
    swift_weakInit();
    v403 = swift_allocObject();
    v648 = v401;
    swift_unknownObjectWeakInit();
    v404 = swift_allocObject();
    *(v404 + 16) = v402;
    *(v404 + 24) = v403;
    *(v404 + 32) = v385;
    *(v404 + 40) = v386;
    *&v671[32] = sub_1CF5543A8;
    *&v671[40] = v404;
    *v671 = MEMORY[0x1E69E9820];
    v7 = 1107296256;
    *&v671[8] = 1107296256;
    *&v671[16] = sub_1CEFCA444;
    *&v671[24] = &block_descriptor_304;
    v405 = _Block_copy(v671);
    v663 = v385;

    sub_1CF03C63C(sub_1CF5543A8);

    [v401 setCancellationHandler_];
    _Block_release(v405);

    v406 = v652;
    v407 = v602;
    v408 = v653;
    (*(v652 + 16))(v602, v621, v653);
    v409 = (*(v406 + 80) + 72) & ~*(v406 + 80);
    v410 = v409 + v607;
    v411 = swift_allocObject();
    v412 = v386;
    v413 = v411;
    v414 = v664;
    *(v411 + 16) = v661;
    *(v411 + 24) = v414;
    v415 = v665;
    v416 = v663;
    *(v411 + 32) = v665;
    *(v411 + 40) = v416;
    *(v411 + 48) = v412;
    v417 = v659;
    v418 = v648;
    *(v411 + 56) = v659;
    *(v411 + 64) = v418;
    v419 = v406;
    v377 = v661;
    (*(v419 + 32))(v411 + v409, v407, v408);
    v663 = v413;
    *(v413 + v410) = v654;
    v420 = swift_allocObject();
    *(v420 + 16) = v414;
    *(v420 + 24) = v415;
    v664 = v420;
    v421 = *(v377 + qword_1EDEBBC38);
    swift_retain_n();

    sub_1CEFD09A0(v417);
    v659 = v648;
    v654 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      goto LABEL_104;
    }

    while (1)
    {
      v422 = qword_1EDEBBE40;
      v423 = v644;
      v424 = v609;
      v425 = v639;
      (*(v644 + 7))(v609, 1, 1, v639);
      strcpy(v671, "async batch ");
      v671[13] = 0;
      *&v671[14] = -5120;
      v426 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v426);

      v665 = *v671;
      v648 = *&v671[8];
      v427 = v424;
      v428 = v601;
      sub_1CEFCCBDC(v427, v601, &unk_1EC4BED20, &unk_1CFA00700);
      v429 = *(v423 + 6);
      if (v429(v428, 1, v425) == 1)
      {
        v430 = v422;
        v431 = v605;
        sub_1CF9E6048();
        if (v429(v428, 1, v425) != 1)
        {
          sub_1CEFCCC44(v428, &unk_1EC4BED20, &unk_1CFA00700);
        }
      }

      else
      {
        v432 = *(v423 + 4);
        v431 = v605;
        v432(v605, v428, v425);
      }

      v433 = v644;
      v434 = v610;
      (*(v644 + 2))(v610, v431, v425);
      v435 = v638;
      *(v434 + *(v638 + 20)) = v422;
      v436 = v434 + *(v435 + 24);
      *v436 = "DB queue wait";
      *(v436 + 8) = 13;
      *(v436 + 16) = 2;
      v437 = v422;
      sub_1CF9E7468();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v438 = v431;
      v439 = swift_allocObject();
      *(v439 + 16) = xmmword_1CF9FA450;
      *(v439 + 56) = MEMORY[0x1E69E6158];
      *(v439 + 64) = sub_1CEFD51C4();
      v440 = v648;
      *(v439 + 32) = v665;
      *(v439 + 40) = v440;
      v567 = v439;
      v566 = 2;
      v565 = 2;
      sub_1CF9E6028();

      (*(v433 + 1))(v438, v425);
      sub_1CEFCCC44(v609, &unk_1EC4BED20, &unk_1CFA00700);
      v645 = v377[21];
      v648 = v377[8];
      (*(v652 + 56))(v620, 1, 1, v653);
      v441 = v603;
      sub_1CEFE4F8C(v434, v603, type metadata accessor for Signpost);
      v442 = (*(v640 + 80) + 16) & ~*(v640 + 80);
      v443 = (v641 + v442 + 7) & 0xFFFFFFFFFFFFFFF8;
      v444 = swift_allocObject();
      v665 = v444;
      sub_1CEFE4D98(v441, v444 + v442, type metadata accessor for Signpost);
      v445 = (v444 + v443);
      v644 = sub_1CF5543A4;
      v446 = v664;
      *v445 = sub_1CF5543A4;
      v445[1] = v446;
      v447 = v604;
      sub_1CEFE4F8C(v434, v604, type metadata accessor for Signpost);
      v448 = (v443 + 23) & 0xFFFFFFFFFFFFFFF8;
      v449 = (v448 + 15) & 0xFFFFFFFFFFFFFFF8;
      v450 = (v449 + 25) & 0xFFFFFFFFFFFFFFF8;
      v451 = swift_allocObject();
      sub_1CEFE4D98(v447, v451 + v442, type metadata accessor for Signpost);
      v452 = (v451 + v443);
      v453 = v653;
      *v452 = sub_1CF045408;
      v452[1] = 0;
      *(v451 + v448) = v661;
      v454 = v451 + v449;
      v455 = v652;
      *v454 = "evict(_:request:qos:evictionReason:completion:)";
      *(v454 + 8) = 47;
      *(v454 + 16) = 2;
      v456 = (v451 + v450);
      v457 = v664;
      *v456 = v644;
      v456[1] = v457;
      v458 = (v451 + ((v450 + 23) & 0xFFFFFFFFFFFFFFF8));
      v459 = v663;
      *v458 = sub_1CF55441C;
      v458[1] = v459;
      v460 = swift_allocObject();
      v461 = v665;
      v460[2] = sub_1CF554408;
      v460[3] = v461;
      v462 = v645;
      v460[4] = v645;
      swift_retain_n();

      v463 = v462;

      v464 = fpfs_current_log();
      v661 = *(v463 + 2);
      v465 = v606;
      sub_1CEFCCBDC(v620, v606, &unk_1EC4BE370, qword_1CFA01B30);
      if ((*(v455 + 48))(v465, 1, v453) == 1)
      {
        sub_1CEFCCC44(v465, &unk_1EC4BE370, qword_1CFA01B30);
        LODWORD(v645) = 0;
      }

      else
      {
        v466 = v622;
        sub_1CF9E6438();
        (*(v455 + 8))(v465, v453);
        LODWORD(v645) = sub_1CF9E63C8();
        (*(v631 + 8))(v466, v632);
      }

      v467 = v455;
      v468 = swift_allocObject();
      v468[2] = v464;
      v468[3] = sub_1CF4858EC;
      v468[4] = v451;
      *&v671[32] = sub_1CF2BA17C;
      *&v671[40] = v468;
      *v671 = MEMORY[0x1E69E9820];
      *&v671[8] = v7;
      *&v671[16] = sub_1CEFCA444;
      *&v671[24] = &block_descriptor_298;
      v469 = _Block_copy(v671);
      v470 = v464;

      *&v671[32] = sub_1CF2BA180;
      *&v671[40] = v460;
      *v671 = MEMORY[0x1E69E9820];
      *&v671[8] = v7;
      *&v671[16] = sub_1CEFCA444;
      *&v671[24] = &block_descriptor_301;
      v377 = _Block_copy(v671);

      fp_task_tracker_async_and_qos(v661, v648, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v645, v469, v377);
      _Block_release(v377);
      _Block_release(v469);

      sub_1CEFCCC44(v620, &unk_1EC4BE370, qword_1CFA01B30);
      sub_1CF007C58(v610, type metadata accessor for Signpost);
      v471 = v654;
      v472 = fpfs_adopt_log();

      (*(v467 + 8))(v621, v653);
      v399 = v658;
      v400 = v659;
LABEL_82:
      v473 = v400;
      v474 = v657;
      v475 = [v657 totalUnitCount];
      v476 = v649;
      if (!__OFADD__(v475, 1))
      {
        break;
      }

      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      swift_once();
    }

    [v474 setTotalUnitCount_];
    [v474 addChild:v473 withPendingUnitCount:1];

    sub_1CEFCCC44(v675, &qword_1EC4C0700, &qword_1CFA05B10);
    sub_1CEFCCC44(v476, &qword_1EC4C5220, &qword_1CFA0A270);
    sub_1CF007C58(v650, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v656, &qword_1EC4C5220, &qword_1CFA0A270);
    sub_1CF007C58(v655, type metadata accessor for VFSItem);
    v269 = v399;
  }

  sub_1CF007C58(v269, type metadata accessor for VFSItem);
  sub_1CEFCCC44(v662, &qword_1EC4C5220, &qword_1CFA0A270);
LABEL_100:
  sub_1CF007C58(v660, type metadata accessor for VFSItem);
}

uint64_t sub_1CF54A5AC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v39 = a5;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 8);
  v41 = *a2;
  v42 = v15;
  v16 = a1[3];
  v17 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  v19 = *(a3 + 32);
  sub_1CF348CFC(&v41, 8, v18, v16, v17);
  if (v5)
  {
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v21 = v5;
    v22 = sub_1CF9E6108();
    v23 = sub_1CF9E72A8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v38 = a4;
      v25 = v24;
      v26 = swift_slowAlloc();
      v37 = v10;
      v27 = v26;
      *v25 = 138412290;
      swift_getErrorValue();
      v28 = Error.prettyDescription.getter(v40);
      *(v25 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_1CEFC7000, v22, v23, "⏰ Failed to remove pending downloads %@", v25, 0xCu);
      sub_1CEFCCC44(v27, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v29 = v27;
      v10 = v37;
      MEMORY[0x1D386CDC0](v29, -1, -1);
      v30 = v25;
      a4 = v38;
      MEMORY[0x1D386CDC0](v30, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v14, v10);
  }

  v31 = a1[3];
  v32 = a1[4];
  v33 = __swift_project_boxed_opaque_existential_1(a1, v31);
  v43 = v31;
  v44 = *(v32 + 8);
  v34 = __swift_allocate_boxed_opaque_existential_0(&v41);
  (*(*(v31 - 8) + 16))(v34, v33, v31);
  a4(&v41);
  return sub_1CEFCCC44(&v41, &qword_1EC4C0700, &qword_1CFA05B10);
}

void sub_1CF54A888(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, void *a6, void *a7)
{
  v162 = a7;
  v163 = a1;
  v159 = a5;
  v160 = a6;
  LODWORD(v158) = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v150 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v157 = &v135 - v14;
  v148 = sub_1CF9E6068();
  v147 = *(v148 - 8);
  v15 = *(v147 + 8);
  MEMORY[0x1EEE9AC00](v148);
  v146 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v142 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v153 = &v135 - v21;
  v143 = type metadata accessor for Signpost(0);
  v144 = *(v143 - 8);
  v22 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v149 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v145 = &v135 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v154 = &v135 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v135 - v29;
  v31 = sub_1CF9E63D8();
  v151 = *(v31 - 8);
  v152 = v31;
  v32 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v140 = &v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v135 - v35;
  v161 = sub_1CF9E6448();
  v156 = *(v161 - 8);
  v37 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v141 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v155 = &v135 - v39;
  v40 = type metadata accessor for VFSItem(0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  *&v43 = MEMORY[0x1EEE9AC00](v40 - 8).n128_u64[0];
  v44 = &v135 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a2;
  if (*(a2 + *(v45 + 36)) - 1 > 1 || (v47 = (a3 >> 58) & 0x3C | (a3 >> 1) & 3, v47 == 6) || v47 == 9 && ([*((a3 & 0xFFFFFFFFFFFFFF9) + 0x18) isProviderInitiated] & 1) == 0)
  {
    v53 = v163;
    v54 = *(v163[4] + 16);
    LOBYTE(aBlock) = v158;
    sub_1CEFE4F8C(a2, &v135 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VFSItem);
    v55 = (*(v41 + 80) + 40) & ~*(v41 + 80);
    v56 = (v42 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    v58 = v160;
    v57[2] = v159;
    v57[3] = v58;
    v57[4] = v53;
    sub_1CEFE4D98(v44, v57 + v55, type metadata accessor for VFSItem);
    *(v57 + v56) = a3;
    v59 = *(*v54 + 744);

    sub_1CEFD09A0(a3);
    v60 = v59(v46, &aBlock, sub_1CF55440C, v57);

    goto LABEL_19;
  }

  v136 = a3;
  v138 = *a2;
  v48 = *(a2 + 8);
  qos_class_self();
  sub_1CF9E63B8();
  v50 = v151;
  v49 = v152;
  v51 = *(v151 + 48);
  v52 = v51(v30, 1, v152);
  v135 = v22;
  if (v52 == 1)
  {
    (*(v50 + 104))(v36, *MEMORY[0x1E69E7FA0], v49);
    if (v51(v30, 1, v49) != 1)
    {
      sub_1CEFCCC44(v30, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v50 + 32))(v36, v30, v49);
  }

  sub_1CF9E6428();
  v61 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  [v61 setCancellable_];
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = swift_allocObject();
  v137 = v61;
  swift_unknownObjectWeakInit();
  v64 = swift_allocObject();
  *(v64 + 16) = v62;
  *(v64 + 24) = v63;
  *(v64 + 32) = v138;
  *(v64 + 40) = v48;
  v167 = sub_1CF5543A8;
  v168 = v64;
  *&aBlock = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  *(&aBlock + 1) = 1107296256;
  v165 = sub_1CEFCA444;
  v166 = &block_descriptor_465;
  v65 = _Block_copy(&aBlock);

  sub_1CF03C63C(sub_1CF5543A8);

  [v61 setCancellationHandler_];
  _Block_release(v65);

  v66 = v156;
  v67 = v141;
  v68 = v161;
  (*(v156 + 16))(v141, v155, v161);
  v69 = (*(v66 + 80) + 72) & ~*(v66 + 80);
  v70 = v69 + v37;
  v71 = swift_allocObject();
  v72 = v163;
  v73 = v48;
  v75 = v159;
  v74 = v160;
  *(v71 + 16) = v163;
  *(v71 + 24) = v75;
  v76 = v138;
  *(v71 + 32) = v74;
  *(v71 + 40) = v76;
  *(v71 + 48) = v73;
  v77 = v136;
  v78 = v137;
  *(v71 + 56) = v136;
  *(v71 + 64) = v78;
  (*(v66 + 32))(v71 + v69, v67, v68);
  v139 = v71;
  *(v71 + v70) = v158;
  v79 = swift_allocObject();
  *(v79 + 16) = v75;
  *(v79 + 24) = v74;
  v159 = v79;
  v80 = *(v72 + qword_1EDEBBC38);
  swift_retain_n();

  sub_1CEFD09A0(v77);
  v160 = v137;
  v158 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v81 = qword_1EDEBBE40;
    v82 = v147;
    v83 = v153;
    v84 = v148;
    (*(v147 + 7))(v153, 1, 1, v148);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v85 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v85);

    v86 = aBlock;
    v87 = v142;
    sub_1CEFCCBDC(v83, v142, &unk_1EC4BED20, &unk_1CFA00700);
    v88 = *(v82 + 6);
    v89 = v88(v87, 1, v84);
    v90 = v146;
    if (v89 == 1)
    {
      v91 = v81;
      sub_1CF9E6048();
      if (v88(v87, 1, v84) != 1)
      {
        sub_1CEFCCC44(v87, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v82 + 4))(v146, v87, v84);
    }

    v92 = v154;
    (*(v82 + 2))(v154, v90, v84);
    v93 = v143;
    *(v92 + *(v143 + 20)) = v81;
    v94 = v92 + *(v93 + 24);
    *v94 = "DB queue wait";
    *(v94 + 8) = 13;
    *(v94 + 16) = 2;
    v95 = v81;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v96 = v90;
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1CF9FA450;
    *(v97 + 56) = MEMORY[0x1E69E6158];
    *(v97 + 64) = sub_1CEFD51C4();
    *(v97 + 32) = v86;
    sub_1CF9E6028();

    (*(v82 + 1))(v96, v84);
    sub_1CEFCCC44(v153, &unk_1EC4BED20, &unk_1CFA00700);
    v148 = v163[21];
    v153 = v163[8];
    (*(v156 + 56))(v157, 1, 1, v161);
    v98 = v145;
    sub_1CEFE4F8C(v92, v145, type metadata accessor for Signpost);
    v99 = (*(v144 + 80) + 16) & ~*(v144 + 80);
    v100 = (v135 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
    v101 = swift_allocObject();
    sub_1CEFE4D98(v98, v101 + v99, type metadata accessor for Signpost);
    v102 = (v101 + v100);
    v147 = sub_1CF5543A4;
    v103 = v159;
    *v102 = sub_1CF5543A4;
    v102[1] = v103;
    v104 = v149;
    sub_1CEFE4F8C(v92, v149, type metadata accessor for Signpost);
    v105 = (v100 + 23) & 0xFFFFFFFFFFFFFFF8;
    v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
    v107 = (v106 + 25) & 0xFFFFFFFFFFFFFFF8;
    v108 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
    v109 = swift_allocObject();
    sub_1CEFE4D98(v104, v109 + v99, type metadata accessor for Signpost);
    v110 = (v109 + v100);
    *v110 = sub_1CF045408;
    v110[1] = 0;
    *(v109 + v105) = v163;
    v111 = v109 + v106;
    *v111 = "evict(_:request:qos:evictionReason:completion:)";
    *(v111 + 8) = 47;
    *(v111 + 16) = 2;
    v112 = (v109 + v107);
    v113 = v156;
    v114 = v159;
    *v112 = v147;
    v112[1] = v114;
    v115 = v109;
    v116 = (v109 + v108);
    v117 = v161;
    v118 = v139;
    *v116 = sub_1CF55441C;
    v116[1] = v118;
    v119 = swift_allocObject();
    v119[2] = sub_1CF554408;
    v119[3] = v101;
    v120 = v148;
    v119[4] = v148;
    swift_retain_n();

    v163 = v101;

    v121 = fpfs_current_log();
    v149 = *(v120 + 16);
    v122 = v150;
    sub_1CEFCCBDC(v157, v150, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v113 + 48))(v122, 1, v117) == 1)
    {
      sub_1CEFCCC44(v122, &unk_1EC4BE370, qword_1CFA01B30);
      v123 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v124 = v140;
      sub_1CF9E6438();
      (*(v113 + 8))(v122, v117);
      v123 = sub_1CF9E63C8();
      (*(v151 + 8))(v124, v152);
    }

    v125 = v113;
    v126 = swift_allocObject();
    v126[2] = v121;
    v126[3] = sub_1CF4858EC;
    v126[4] = v115;
    v167 = sub_1CF2BA17C;
    v168 = v126;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = v7;
    v165 = sub_1CEFCA444;
    v166 = &block_descriptor_459;
    v127 = _Block_copy(&aBlock);
    v128 = v121;

    v167 = sub_1CF2BA180;
    v168 = v119;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = v7;
    v165 = sub_1CEFCA444;
    v166 = &block_descriptor_462;
    v129 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v149, v153, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v123, v127, v129);
    _Block_release(v129);
    _Block_release(v127);

    sub_1CEFCCC44(v157, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007C58(v154, type metadata accessor for Signpost);
    v130 = v158;
    v131 = fpfs_adopt_log();

    (*(v125 + 8))(v155, v161);
    v60 = v160;
LABEL_19:
    v132 = v60;
    v133 = v162;
    v134 = [v162 totalUnitCount];
    if (!__OFADD__(v134, 1))
    {
      break;
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  [v133 setTotalUnitCount_];
  [v133 addChild:v132 withPendingUnitCount:1];
}

void sub_1CF54B9FC(void *a1, uint64_t (*a2)(uint64_t a1, uint64_t a2), void *a3, void *a4, uint64_t a5, unint64_t a6)
{
  v114 = a5;
  v115 = a6;
  v118 = a4;
  v119 = a2;
  v120 = a3;
  v7 = sub_1CF9E63D8();
  v113 = *(v7 - 8);
  v8 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v98 - v16;
  v18 = sub_1CF9E6068();
  v116 = *(v18 - 8);
  v19 = v116[8];
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v98 - v27);
  v29 = type metadata accessor for Signpost(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  if (a1)
  {
    v38 = a1;
    (v119)(a1);
  }

  else
  {
    v102 = v25;
    v103 = v33;
    v111 = v28;
    v104 = v21;
    v105 = v37;
    v106 = v36;
    v107 = v18;
    v108 = v35;
    v109 = v14;
    v99 = v10;
    v100 = v7;
    v112 = &v98 - v34;
    v117 = v17;
    v39 = *v114;
    v40 = *(v114 + 8);
    v41 = swift_allocObject();
    v42 = v120;
    *(v41 + 16) = v119;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    *(v43 + 16) = v39;
    *(v43 + 24) = v40;
    v44 = v115;
    v45 = v118;
    *(v43 + 32) = v115;
    *(v43 + 40) = v45;
    *(v43 + 48) = sub_1CF552D44;
    *(v43 + 56) = v41;
    v114 = v43;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1CF552D44;
    *(v46 + 24) = v41;
    v119 = v46;
    v47 = *(v45 + qword_1EDEBBC38);
    v110 = v41;
    swift_retain_n();

    sub_1CEFD09A0(v44);

    v120 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v48 = qword_1EDEBBE40;
    v49 = v116;
    v50 = v111;
    v51 = v107;
    (v116[7])(v111, 1, 1, v107);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v52 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v52);

    v101 = *(&aBlock + 1);
    v115 = aBlock;
    v53 = v102;
    sub_1CEFCCBDC(v50, v102, &unk_1EC4BED20, &unk_1CFA00700);
    v54 = v49[6];
    v55 = v54(v53, 1, v51);
    v56 = v104;
    if (v55 == 1)
    {
      v57 = v48;
      sub_1CF9E6048();
      if (v54(v53, 1, v51) != 1)
      {
        sub_1CEFCCC44(v53, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (v49[4])(v104, v53, v51);
    }

    v58 = v112;
    (v49[2])(v112, v56, v51);
    v59 = v103;
    *(v58 + *(v103 + 20)) = v48;
    v60 = v58 + *(v59 + 24);
    *v60 = "DB queue wait";
    *(v60 + 8) = 13;
    *(v60 + 16) = 2;
    v61 = v48;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1CF9FA450;
    *(v62 + 56) = MEMORY[0x1E69E6158];
    *(v62 + 64) = sub_1CEFD51C4();
    v63 = v101;
    *(v62 + 32) = v115;
    *(v62 + 40) = v63;
    sub_1CF9E6028();

    (v49[1])(v56, v51);
    sub_1CEFCCC44(v111, &unk_1EC4BED20, &unk_1CFA00700);
    v64 = v45[8];
    v115 = v45[21];
    v116 = v64;
    v107 = sub_1CF9E6448();
    v111 = *(v107 - 8);
    v111[7](v117, 1, 1, v107);
    v65 = v106;
    sub_1CEFE4F8C(v58, v106, type metadata accessor for Signpost);
    v66 = (*(v105 + 80) + 16) & ~*(v105 + 80);
    v67 = (v30 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    sub_1CEFE4D98(v65, v68 + v66, type metadata accessor for Signpost);
    v69 = (v68 + v67);
    v106 = sub_1CF552D94;
    v70 = v119;
    *v69 = sub_1CF552D94;
    v69[1] = v70;
    v71 = v108;
    sub_1CEFE4F8C(v58, v108, type metadata accessor for Signpost);
    v72 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
    v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
    v74 = (v73 + 25) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    sub_1CEFE4D98(v71, v75 + v66, type metadata accessor for Signpost);
    v76 = (v75 + v67);
    *v76 = sub_1CF045408;
    v76[1] = 0;
    v77 = v119;
    *(v75 + v72) = v118;
    v78 = v107;
    v79 = v75 + v73;
    v80 = v111;
    *v79 = "propagateToFP(itemID:request:completion:)";
    *(v79 + 8) = 41;
    *(v79 + 16) = 2;
    v81 = (v75 + v74);
    *v81 = v106;
    v81[1] = v77;
    v82 = v75;
    v83 = (v75 + ((v74 + 23) & 0xFFFFFFFFFFFFFFF8));
    v84 = v114;
    *v83 = sub_1CF552D70;
    v83[1] = v84;
    v85 = swift_allocObject();
    v85[2] = sub_1CF554408;
    v85[3] = v68;
    v86 = v115;
    v85[4] = v115;
    swift_retain_n();

    v87 = v86;

    v88 = fpfs_current_log();
    v118 = *(v87 + 16);
    v89 = v109;
    sub_1CEFCCBDC(v117, v109, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v80 + 48))(v89, 1, v78) == 1)
    {
      sub_1CEFCCC44(v89, &unk_1EC4BE370, qword_1CFA01B30);
      v90 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v91 = v99;
      sub_1CF9E6438();
      (*(v80 + 8))(v89, v78);
      v90 = sub_1CF9E63C8();
      (*(v113 + 8))(v91, v100);
    }

    v92 = swift_allocObject();
    v92[2] = v88;
    v92[3] = sub_1CF4858EC;
    v92[4] = v82;
    v124 = sub_1CF2BA17C;
    v125 = v92;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v122 = sub_1CEFCA444;
    v123 = &block_descriptor_419;
    v93 = _Block_copy(&aBlock);
    v94 = v88;

    v124 = sub_1CF2BA180;
    v125 = v85;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v122 = sub_1CEFCA444;
    v123 = &block_descriptor_422;
    v95 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v118, v116, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v90, v93, v95);
    _Block_release(v95);
    _Block_release(v93);

    sub_1CEFCCC44(v117, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007C58(v112, type metadata accessor for Signpost);
    v96 = v120;
    v97 = fpfs_adopt_log();
  }
}

uint64_t sub_1CF54C5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5220, &qword_1CFA0A270);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v19 - v12;
  v14 = *(*(a1 + 32) + 16);
  v20 = 2;
  sub_1CEFCCBDC(a5, &v19 - v12, &qword_1EC4C5220, &qword_1CFA0A270);
  v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a3;
  v16[4] = a4;
  sub_1CEFE55D0(v13, v16 + v15, &qword_1EC4C5220, &qword_1CFA0A270);
  v17 = *(*v14 + 824);

  v17(v19, &v20, sub_1CF554410, v16);
}