uint64_t sub_1CF56512C(void (*a1)(uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v187 = a5;
  v188 = a6;
  v186 = a4;
  v173 = a3;
  v189 = a1;
  v8 = *(*a2 + 88);
  v9 = *(*a2 + 96);
  v10 = *(*a2 + 104);
  v191 = *(*a2 + 80);
  v7 = v191;
  v192 = v8;
  v193 = v9;
  v194 = v10;
  v167 = type metadata accessor for ReconciliationMutation();
  v165 = *(v167 - 8);
  v11 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v160 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v185 = sub_1CF9E75D8();
  v182 = *(v185 - 8);
  v14 = *(v182 + 64);
  v15 = MEMORY[0x1EEE9AC00](v185);
  v162 = &v160 - v16;
  v176 = AssociatedTypeWitness;
  v163 = *(AssociatedTypeWitness - 8);
  v17 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v164 = &v160 - v18;
  v191 = v7;
  v192 = v8;
  v193 = v9;
  v194 = v10;
  v19 = type metadata accessor for ItemReconciliation();
  v20 = sub_1CF9E75D8();
  v180 = *(v20 - 8);
  v181 = v20;
  v21 = *(v180 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v179 = (&v160 - v23);
  v172 = v19;
  v171 = *(v19 - 8);
  v24 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v168 = &v160 - v25;
  v26 = sub_1CF9E6118();
  v177 = *(v26 - 8);
  v178 = v26;
  v27 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v183 = &v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2[3];
  v191 = v7;
  v192 = v8;
  v193 = v9;
  v194 = v10;
  v184 = type metadata accessor for ItemJob();
  MetatypeMetadata = swift_getMetatypeMetadata();
  v31 = sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
  v32 = *(v31 + 52);
  v33 = (*(v31 + 48) + 7) & 0x1FFFFFFF8;
  swift_allocObject();
  v34 = sub_1CF9E6D68();
  v169 = v7;
  v191 = v7;
  v192 = v8;
  v175 = v8;
  v170 = v9;
  v193 = v9;
  v194 = v10;
  v174 = v10;
  *v35 = type metadata accessor for Materialization.MaterializeItem();
  v36 = sub_1CF045898(v34);
  v37 = v190;
  v38 = (*(*v29 + 312))(v189, v36, v186, v187, v188);

  v190 = v37;
  if (v37)
  {
    return result;
  }

  v40 = v183;
  v161 = a2;
  v41 = v185;
  v160 = v29;
  v191 = v38;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E7118();
  v42 = v195;

  if (!v42)
  {
    return result;
  }

  v43 = *(v42 + 136);
  if ((v43 & 0x10000) != 0 || (v43 & 0x20000) != 0)
  {
  }

  v44 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v45 = sub_1CF9E6108();
  v46 = sub_1CF9E72C8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v191 = v48;
    *v47 = 136446210;
    v49 = sub_1CF044BA4();
    v51 = v50;

    v52 = sub_1CEFD0DF0(v49, v51, &v191);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_1CEFC7000, v45, v46, "✴️  cancelling materialization %{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x1D386CDC0](v48, -1, -1);
    MEMORY[0x1D386CDC0](v47, -1, -1);
  }

  else
  {
  }

  (*(v177 + 8))(v40, v178);
  v53 = v41;
  v54 = v182;
  v55 = v161[2];
  v56 = v179;
  v57 = v190;
  sub_1CF68DDB0(v189, v186, v187, v188, v179);
  v59 = v180;
  v58 = v181;
  v190 = v57;
  if (v57)
  {
  }

  v184 = v42;
  v60 = v171;
  v61 = v172;
  if ((*(v171 + 48))(v56, 1, v172) == 1)
  {
    (*(v59 + 8))(v56, v58);
LABEL_16:
    v191 = v169;
    v192 = v175;
    v193 = v170;
    v194 = v174;
    type metadata accessor for JobResult();
    v68 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v70 = v176;
    v71 = swift_getAssociatedConformanceWitness();
    v191 = v68;
    v192 = v70;
    v193 = AssociatedConformanceWitness;
    v194 = v71;
    type metadata accessor for ReconciliationID();
    type metadata accessor for ReconciliationSideMutation();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v73 = v166;
    v74 = &v166[*(TupleTypeMetadata2 + 48)];
    (*(*(v68 - 8) + 16))(v166, v189, v68);
    swift_storeEnumTagMultiPayload();
    v75 = *(v184 + 120);
    v76 = *(v184 + 128);

    *v74 = 1280;
    *(v74 + 1) = v75;
    *(v74 + 2) = v76;
    swift_storeEnumTagMultiPayload();
    v77 = v167;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v173, v73);

    return (*(v165 + 8))(v73, v77);
  }

  v62 = v168;
  (*(v60 + 32))(v168, v56, v61);
  v63 = v60;
  v64 = &v62[*(v61 + 52)];
  v65 = v162;
  (*(v54 + 16))(v162, v64, v53);
  v66 = v163;
  v67 = v176;
  if ((*(v163 + 48))(v65, 1, v176) == 1)
  {
    (*(v63 + 8))(v62, v61);
    (*(v54 + 8))(v65, v53);
    goto LABEL_16;
  }

  v78 = v164;
  (*(v66 + 32))(v164, v65, v67);
  v80 = v174;
  v79 = v175;
  result = type metadata accessor for ItemReconciliationHalf();
  v81 = v173;
  if (v64[*(result + 52)] != 1)
  {

    v191 = v169;
    v192 = v79;
    v193 = v170;
    v194 = v80;
    type metadata accessor for JobResult();
    v100 = sub_1CF67DD2C();

    sub_1CF803A0C(v81, v100);

    (*(v66 + 8))(v78, v67);
    return (*(v171 + 8))(v168, v172);
  }

  v82 = v172;
  v83 = v168[*(v172 + 56)];
  if (v83 == 1)
  {
    v101 = v175;
    v102 = v169;
    v191 = v175;
    v192 = v169;
    v103 = v170;
    v193 = v80;
    v194 = v170;
    type metadata accessor for ItemJob();
    v104 = swift_getMetatypeMetadata();
    v105 = sub_1CF656CD8(v104, v104);
    v106 = *(v105 + 52);
    v107 = (*(v105 + 48) + 7) & 0x1FFFFFFF8;
    swift_allocObject();
    v108 = sub_1CF9E6D68();
    v191 = v101;
    v192 = v102;
    v193 = v80;
    v194 = v103;
    *v109 = type metadata accessor for Ingestion.FetchChildrenMetadata();
    v110 = sub_1CF045898(v108);
    v111 = v164;
    v112 = v190;
    v113 = (*(*v160 + 304))(v164, v110, v186, v187, v188);
    v190 = v112;
    if (v112)
    {

LABEL_25:

      (*(v163 + 8))(v111, v176);
      return (*(v171 + 8))(v168, v172);
    }

    v114 = v113;

    v191 = v114;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7118();
    v115 = v195;
    if (!v195)
    {

      (*(v163 + 8))(v111, v176);
      (*(v171 + 8))(v168, v172);
    }

    v116 = *(v115 + 112);
    if (*(v115 + 112))
    {
      v117 = v174;
      if (v116 == 1)
      {
        if (!*(v115 + 96))
        {
          goto LABEL_30;
        }
      }

      else if (v116 != 2)
      {
LABEL_30:
        v191 = v102;
        v192 = v175;
        v193 = v170;
        v194 = v117;
        v188 = type metadata accessor for JobResult();
        v118 = swift_getAssociatedTypeWitness();
        v119 = swift_getAssociatedConformanceWitness();
        v120 = v176;
        v121 = swift_getAssociatedConformanceWitness();
        v191 = v118;
        v192 = v120;
        v193 = v119;
        v194 = v121;
        type metadata accessor for ReconciliationID();
        type metadata accessor for ReconciliationSideMutation();
        v122 = swift_getTupleTypeMetadata2();
        v123 = v166;
        v124 = &v166[*(v122 + 48)];
        (*(*(v118 - 8) + 16))(v166, v189, v118);
        swift_storeEnumTagMultiPayload();
        v125 = *(v184 + 120);
        v126 = *(v184 + 128);

        *v124 = 1280;
        *(v124 + 1) = v125;
        *(v124 + 2) = v126;
        swift_storeEnumTagMultiPayload();
        v127 = v167;
        swift_storeEnumTagMultiPayload();
        v128 = v173;
        sub_1CF06EB44(v173, v123);
        v189 = *(v165 + 8);
        v189(v123, v127);
        type metadata accessor for ReconciliationSideMutation();
        v129 = *(swift_getTupleTypeMetadata2() + 48);
        v130 = v163;
        (*(v163 + 16))(v123, v164, v176);
        swift_storeEnumTagMultiPayload();
        *(v123 + v129) = 0;
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v128, v123);
        v189(v123, v127);
        v131 = sub_1CF67DD2C();

        sub_1CF8039C4(v128, v131);

        v132 = sub_1CF67DD2C();

        sub_1CF803A0C(v128, v132);

        (*(v130 + 8))(v164, v176);
        return (*(v171 + 8))(v168, v172);
      }
    }

    else
    {
      v117 = v174;
      if (!*(v115 + 104))
      {
        goto LABEL_30;
      }
    }

    goto LABEL_25;
  }

  v84 = v169;
  v85 = v170;
  if (v83 == 4)
  {
    __break(1u);
    return result;
  }

  v86 = v175;
  v191 = v175;
  v192 = v169;
  v193 = v80;
  v194 = v170;
  v185 = type metadata accessor for ItemJob();
  v87 = swift_getMetatypeMetadata();
  v88 = sub_1CF656CD8(v87, v87);
  v89 = *(v88 + 52);
  v90 = (*(v88 + 48) + 7) & 0x1FFFFFFF8;
  swift_allocObject();
  v91 = sub_1CF9E6D68();
  v92 = v80;
  v93 = v91;
  v95 = v94;
  v191 = v86;
  v192 = v84;
  v193 = v92;
  v194 = v85;
  Content = type metadata accessor for Ingestion.FetchContent();
  *v95 = Content;
  v97 = sub_1CF045898(v93);
  v98 = v190;
  v99 = (*(*v160 + 304))(v164, v97, v186, v187, v188);
  v190 = v98;
  if (v98)
  {

    (*(v163 + 8))(v164, v176);
    return (*(v171 + 8))(v168, v82);
  }

  v133 = v99;

  if (!sub_1CF9E6DF8())
  {
    goto LABEL_45;
  }

  v180 = v165 + 8;
  v179 = (v163 + 16);
  v134 = 4;
  v183 = Content;
  v187 = v133;
  while (1)
  {
    v135 = v134 - 4;
    v136 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v136 & 1) == 0)
    {
      break;
    }

    v137 = *(v133 + 8 * v134);

    v138 = v134 - 3;
    if (__OFADD__(v135, 1))
    {
      goto LABEL_44;
    }

LABEL_37:
    if (*(v137 + 136))
    {
      v139 = swift_dynamicCastClassUnconditional();
      if (*(v139 + 112) == 2)
      {
        v140 = *(v139 + 96);
        v141 = *(v139 + 104);
        v142 = v169;
        v144 = v174;
        v143 = v175;
        v191 = v169;
        v192 = v175;
        v145 = v170;
        v193 = v170;
        v194 = v174;
        v188 = type metadata accessor for JobResult();
        v191 = v143;
        v192 = v142;
        v193 = v144;
        v194 = v145;
        type metadata accessor for Ingestion.CancelFetchFileContent();
        v146 = sub_1CF65A050(v164, *(v137 + 120), *(v137 + 128), 0x80000);
        sub_1CF03C530(v140, v141, 2u);
        sub_1CF8039C4(v173, v146);

        sub_1CF03D7A8(v140, v141, 2u);
      }

      else
      {
        v191 = v169;
        v192 = v175;
        v182 = v138;
        v193 = v170;
        v194 = v174;
        v186 = v139;
        v188 = type metadata accessor for JobResult();
        v147 = swift_getAssociatedTypeWitness();
        v148 = swift_getAssociatedConformanceWitness();
        v138 = v182;
        v149 = v176;
        v150 = swift_getAssociatedConformanceWitness();
        v191 = v147;
        v192 = v149;
        v193 = v148;
        v194 = v150;
        type metadata accessor for ReconciliationID();
        type metadata accessor for ReconciliationSideMutation();
        v151 = swift_getTupleTypeMetadata2();
        v152 = v166;
        v153 = &v166[*(v151 + 48)];
        (*(*(v147 - 8) + 16))(v166, v189, v147);
        swift_storeEnumTagMultiPayload();
        v154 = *(v184 + 120);
        *v153 = 1280;
        *(v153 + 8) = v154;
        swift_storeEnumTagMultiPayload();
        v155 = v167;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v173, v152);
        v181 = *v180;
        v181(v152, v155);
        type metadata accessor for ReconciliationSideMutation();
        v156 = *(swift_getTupleTypeMetadata2() + 48);
        (*v179)(v152, v164, v176);
        swift_storeEnumTagMultiPayload();
        *(v152 + v156) = 0;
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v157 = v173;
        sub_1CF06EB44(v173, v152);
        v181(v152, v155);
        v158 = sub_1CF67DD2C();

        sub_1CF8039C4(v157, v158);

        v159 = sub_1CF67DD2C();

        sub_1CF803A0C(v157, v159);
      }

      v133 = v187;
    }

    else
    {
    }

    ++v134;
    if (v138 == sub_1CF9E6DF8())
    {
      goto LABEL_45;
    }
  }

  v137 = sub_1CF9E7998();
  v138 = v134 - 3;
  if (!__OFADD__(v135, 1))
  {
    goto LABEL_37;
  }

LABEL_44:
  __break(1u);
LABEL_45:

  (*(v163 + 8))(v164, v176);
  return (*(v171 + 8))(v168, v172);
}

uint64_t sub_1CF5666D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v127 = a7;
  v131 = a8;
  v126 = a6;
  v120 = a2;
  v121 = a4;
  v119 = a3;
  v156 = a1;
  v11 = *a5;
  v12 = *(*a5 + 104);
  v13 = *(*a5 + 88);
  v130 = a10;
  v129 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  v115 = *(v15 - 8);
  v116 = v15;
  v16 = *(v115 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v114 = v103 - v18;
  v125 = AssociatedTypeWitness;
  v117 = *(AssociatedTypeWitness - 8);
  v19 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v110 = v103 - v20;
  v118 = *(v11 + 80);
  v21.i64[0] = v118;
  v122 = v13;
  v21.i64[1] = v13;
  v133 = v21;
  v22 = *(v11 + 96);
  v123 = v12;
  v124 = v22;
  v23.i64[0] = v22;
  v23.i64[1] = v12;
  v132 = v23;
  v140 = v21;
  v141 = v23;
  v24 = type metadata accessor for ReconciliationMutation();
  v112 = *(v24 - 8);
  v113 = v24;
  v25 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v111 = v103 - v26;
  v140 = v133;
  v141 = v132;
  v27 = type metadata accessor for ItemReconciliation();
  v28 = sub_1CF9E75D8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = v103 - v32;
  v34 = *(v27 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v37 = v103 - v36;
  v38 = a5[2];
  v39 = v128;
  result = sub_1CF68DDB0(v156, v131, v129, v130, v33);
  if (!v39)
  {
    v107 = a5;
    v108 = 0;
    v128 = v37;
    v41 = v126;
    v42 = v127;
    v43 = (*(v34 + 48))(v33, 1, v27);
    v109 = v27;
    if (v43 == 1)
    {
      return (*(v29 + 8))(v33, v28);
    }

    (*(v34 + 32))(v128, v33, v109);
    if (v41)
    {
      v44 = v41;
    }

    else
    {

      v44 = v42;
    }

    v45 = type metadata accessor for ItemReconciliationHalf();
    v46 = v128;
    v47 = v128[*(v45 + 56)];
    v104 = v34;
    v105 = v45;
    if (v47 == 2)
    {
      v140 = v133;
      v141 = v132;
      type metadata accessor for JobResult();
      v50 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v52 = v44;
      v53 = v125;
      v54 = swift_getAssociatedConformanceWitness();
      v140.i64[0] = v50;
      v140.i64[1] = v53;
      v44 = v52;
      v141.i64[0] = AssociatedConformanceWitness;
      v141.i64[1] = v54;
      type metadata accessor for ReconciliationID();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v56 = *(TupleTypeMetadata3 + 48);
      v57 = *(TupleTypeMetadata3 + 64);
      v58 = *(*(v50 - 8) + 16);
      v59 = v111;
      v60 = v50;
      v46 = v128;
      v58(v111, v156, v60);
      swift_storeEnumTagMultiPayload();
      *(v59 + v56) = 3;
      *(v59 + v57) = 0;
      v48 = v105;
      v61 = v113;
      swift_storeEnumTagMultiPayload();

      sub_1CF06EB44(v127, v59);
      v49 = (*(v112 + 8))(v59, v61);
    }

    else
    {
      v48 = v45;
    }

    v62 = v121;
    v63 = (*v107 + 19);
    v118 = *v63;
    v103[1] = v63;
    v64 = (v118)(v49);
    v106 = v44;
    if ((v64 & 0x20000) == 0 || *&v46[*(v48 + 68) + 24] >> 60 == 11 || (v62 & 0x400001000000) != 0)
    {
      v65 = v46[*(v48 + 44)];
      v67 = v132;
      v66 = v133;
      v68 = v119;
      if (v65 == 4)
      {
        goto LABEL_17;
      }

      v140 = v133;
      v141 = v132;
      v126 = type metadata accessor for JobResult();
      v69 = swift_getAssociatedTypeWitness();
      v70 = swift_getAssociatedConformanceWitness();
      v71 = v125;
      v72 = swift_getAssociatedConformanceWitness();
      v140.i64[0] = v69;
      v140.i64[1] = v71;
      v141.i64[0] = v70;
      v141.i64[1] = v72;
      type metadata accessor for ReconciliationID();
      v73 = 0;
    }

    else
    {
      v140 = v133;
      v141 = v132;
      v126 = type metadata accessor for JobResult();
      v69 = swift_getAssociatedTypeWitness();
      v74 = swift_getAssociatedConformanceWitness();
      v75 = v125;
      v76 = swift_getAssociatedConformanceWitness();
      v140.i64[0] = v69;
      v140.i64[1] = v75;
      v141.i64[0] = v74;
      v141.i64[1] = v76;
      type metadata accessor for ReconciliationID();
      v73 = 4;
    }

    type metadata accessor for ReconciliationSideMutation();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v78 = v111;
    v79 = &v111[*(TupleTypeMetadata2 + 48)];
    (*(*(v69 - 8) + 16))(v111, v156, v69);
    swift_storeEnumTagMultiPayload();
    *v79 = 5;
    v79[1] = v73;
    v68 = v119;
    *(v79 + 1) = v120;
    *(v79 + 2) = v68;
    swift_storeEnumTagMultiPayload();
    v80 = v113;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v106, v78);
    (*(v112 + 8))(v78, v80);
    v62 = v121;
    v67 = v132;
    v66 = v133;
    v48 = v105;
LABEL_17:
    v140 = v66;
    v141 = v67;
    v81 = type metadata accessor for JobResult();
    v140 = v133;
    v141 = v132;
    type metadata accessor for Materialization.MaterializeItem();
    v82 = v62;
    v83 = sub_1CF57488C(v156, v120, v68, v62 | 1, 32);
    v124 = v81;
    sub_1CF803A0C(v127, v83);

    v84 = v128;
    v86 = v114;
    v85 = v115;
    v87 = *(v115 + 16);
    v126 = &v128[v109[13]];
    v88 = v116;
    v87(v114);
    v89 = v117;
    v90 = v125;
    if ((*(v117 + 48))(v86, 1, v125) == 1)
    {
      (*(v85 + 8))(v86, v88);
LABEL_19:
      v91 = 0;
      goto LABEL_20;
    }

    v94 = v110;
    (*(v89 + 32))(v110, v86, v90);
    v95 = v108;
    (*(*v107[5] + 264))(&v140, v94, v131, v129, v130);
    v108 = v95;
    if (v95)
    {
      (*(v89 + 8))(v94, v90);
LABEL_29:

      return (*(v104 + 8))(v84, v109);
    }

    v134[12] = v152;
    v134[13] = v153;
    v134[14] = v154;
    v134[8] = v148;
    v134[9] = v149;
    v134[10] = v150;
    v134[11] = v151;
    v134[4] = v144;
    v134[5] = v145;
    v134[6] = v146;
    v134[7] = v147;
    v134[0] = v140;
    v134[1] = v141;
    v134[2] = v142;
    v134[3] = v143;
    v136[12] = v152;
    v137 = v153;
    v138 = v154;
    v136[8] = v148;
    v136[9] = v149;
    v136[10] = v150;
    v136[11] = v151;
    v136[4] = v144;
    v136[5] = v145;
    v136[6] = v146;
    v136[7] = v147;
    v136[0] = v140;
    v136[1] = v141;
    v135 = v155;
    v139 = v155;
    v136[2] = v142;
    v136[3] = v143;
    enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v136);
    v48 = v105;
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
    {
      (*(v117 + 8))(v110, v125);
      goto LABEL_19;
    }

    v97 = ((*v107)[75])();
    v98 = sub_1CEFF8538(v137, *(&v137 + 1), 0, v97, v84[v109[14]] == 1, *&v84[v109[20]] & 1);
    v99 = v110;
    if (v98 == 500 || v98 == 3)
    {
      sub_1CEFCCC44(v134, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      (*(v117 + 8))(v99, v125);
LABEL_36:
      v91 = 1;
      goto LABEL_20;
    }

    v100 = v98;
    v101 = v118();
    sub_1CEFCCC44(v134, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    (*(v117 + 8))(v99, v125);
    if ((v101 & 0x40000) != 0)
    {
      v91 = 0;
      v84 = v128;
    }

    else
    {
      v102 = v100 == 501;
      v84 = v128;
      if (v102)
      {
        goto LABEL_36;
      }

      v91 = 0;
    }

LABEL_20:
    if (v84[*(v48 + 44)])
    {
      if (*(v126 + *(type metadata accessor for ItemReconciliationHalf() + 64) + 16) == 2)
      {
        v92 = v91;
      }

      else
      {
        v92 = 1;
      }

      if ((v92 & 1) == 0)
      {
        v140 = vextq_s8(v133, v133, 8uLL);
        v141 = vextq_s8(v132, v132, 8uLL);
        type metadata accessor for Propagation.CancelUpdate();
        v93 = sub_1CF559420(v156, *&v84[v109[16]], *&v84[v109[16] + 8], v82 | 1);
        sub_1CF803A0C(v127, v93);

        v84 = v128;
      }
    }

    goto LABEL_29;
  }

  return result;
}

uint64_t sub_1CF5673DC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v158 = a7;
  v142 = a5;
  v143 = a8;
  v141 = a4;
  v132 = a3;
  v161 = a1;
  v189 = a11;
  v162 = a10;
  v160 = a9;
  v14 = (*a6)[11];
  v15 = (*a6)[12];
  v16 = (*a6)[13];
  *&v173 = (*a6)[10];
  v13 = v173;
  *(&v173 + 1) = v14;
  *&v174 = v15;
  *(&v174 + 1) = v16;
  v17 = type metadata accessor for ReconciliationMutation();
  v134 = *(v17 - 8);
  v135 = v17;
  v18 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v133 = &v127 - v19;
  *(&v173 + 1) = v14;
  *&v174 = v15;
  *(&v174 + 1) = v16;
  v20 = type metadata accessor for PersistenceTrigger();
  v130 = *(v20 - 8);
  v131 = v20;
  v21 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v129 = &v127 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v140 = sub_1CF9E75D8();
  v138 = *(v140 - 8);
  v24 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v137 = &v127 - v25;
  v144 = AssociatedTypeWitness;
  v139 = *(AssociatedTypeWitness - 8);
  v26 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v136 = &v127 - v28;
  *&v173 = v13;
  v145 = v16;
  v146 = v14;
  *(&v173 + 1) = v14;
  *&v174 = v15;
  *(&v174 + 1) = v16;
  v29 = type metadata accessor for ItemReconciliation();
  v30 = sub_1CF9E75D8();
  v147 = *(v30 - 8);
  v148 = v30;
  v31 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v154 = &v127 - v32;
  v152 = v29;
  v153 = *(v29 - 8);
  v33 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v149 = &v127 - v35;
  v150 = v13;
  v151 = v15;
  v36 = type metadata accessor for SnapshotItem();
  v37 = sub_1CF9E75D8();
  v156 = *(v37 - 8);
  v38 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v127 - v39;
  v157 = *(v36 - 8);
  v41 = *(v157 + 64);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v127 - v44;
  v46 = *a2;
  v47 = v159;
  v48 = *v158;
  v155 = a6;
  result = (*(*a6[4] + 240))(v161, 1, v160, v162, v189, v43);
  if (!v47)
  {
    LODWORD(v158) = v48;
    v50 = v46;
    v159 = v45;
    v52 = v156;
    v51 = v157;
    if ((*(v157 + 48))(v40, 1, v36) == 1)
    {
      return (*(v52 + 8))(v40, v37);
    }

    v53 = v51;
    v54 = v159;
    (*(v51 + 32))(v159, v40, v36);
    if (v50 == 4)
    {
      WitnessTable = swift_getWitnessTable();
      sub_1CF06D940(v36, WitnessTable, &v173);
      v50 = v173;
    }

    v56 = v189;
    v57 = v162;
    if (v50 != 2)
    {
      LODWORD(v156) = v50;
      v58 = &v54[*(v36 + 48)];
      v59 = type metadata accessor for ItemMetadata();
      if ((v58[*(v59 + 64)] & 1) == 0)
      {
        v60 = v58[*(v59 + 68)];
        if (v60 == 2 || (v60 & 1) == 0)
        {
          v127 = v36;
          v61 = v154;
          v62 = *(v155 + 16);
          sub_1CF68DDB0(v161, v160, v57, v56, v154);
          v128 = 0;
          v64 = v152;
          v63 = v153;
          if ((*(v153 + 48))(v61, 1, v152) == 1)
          {
            (*(v53 + 8))(v54, v127);
            return (*(v147 + 8))(v61, v148);
          }

          v65 = v149;
          (*(v63 + 32))(v149, v61, v64);
          v66 = type metadata accessor for ItemReconciliationHalf();
          if ((v65[*(v66 + 36)] & 0x10) != 0 || (v67 = &v65[*(v66 + 64)], !v67[16]) && (v67[2] & 4) != 0)
          {
            (*(v53 + 8))(v54, v127);
            return (*(v63 + 8))(v65, v64);
          }

          if (v158 == 2)
          {
            v158 = (v142 | 0x20000000002);
            v68 = v150;
            v69 = v146;
            v70 = v155;
            goto LABEL_24;
          }

          v71 = v137;
          v72 = v138;
          (*(v138 + 16))(v137, &v65[*(v64 + 52)], v140);
          v73 = v139;
          v74 = v144;
          if ((*(v139 + 48))(v71, 1, v144) == 1)
          {
            (*(v72 + 8))(v71, v140);
LABEL_22:
            v70 = v155;
            v75 = (v142 | 2);
LABEL_23:
            v158 = v75;
            v68 = v150;
            v69 = v146;
LABEL_24:
            v76 = *(v70 + 24);
            *&v173 = v68;
            *(&v173 + 1) = v69;
            v77 = v151;
            *&v174 = v151;
            v78 = v145;
            *(&v174 + 1) = v145;
            v155 = type metadata accessor for ItemJob();
            MetatypeMetadata = swift_getMetatypeMetadata();
            v80 = sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
            v81 = *(v80 + 52);
            v82 = (*(v80 + 48) + 7) & 0x1FFFFFFF8;
            swift_allocObject();
            v83 = sub_1CF9E6D68();
            *&v173 = v68;
            *(&v173 + 1) = v69;
            *&v174 = v77;
            *(&v174 + 1) = v78;
            *v84 = type metadata accessor for Materialization.EvictItem();
            v85 = sub_1CF045898(v83);
            v86 = v128;
            v87 = (*(*v76 + 312))(v161, v85, v160, v162, v189);
            v128 = v86;
            if (v86)
            {
              (*(v157 + 8))(v159, v127);

              return (*(v153 + 8))(v149, v152);
            }

            v88 = v87;

            *&v173 = v88;
            sub_1CF9E6E58();
            swift_getWitnessTable();
            sub_1CF9E7118();
            v89 = *&v169[0];

            if (v89)
            {
              v90 = v151;
              if (*(v89 + 112) == 1)
              {
                *&v173 = v150;
                v91 = v146;
                *(&v173 + 1) = v146;
                *&v174 = v151;
                *(&v174 + 1) = v78;
                type metadata accessor for JobResult();
                v92 = sub_1CF67DD2C();

                sub_1CF803A0C(v143, v92);
                v90 = v151;

                v93 = v91;
                v94 = v161;
                v95 = v132;
LABEL_35:
                v98 = v150;
                *&v173 = v150;
                *(&v173 + 1) = v93;
                *&v174 = v90;
                v99 = v145;
                *(&v174 + 1) = v145;
                v100 = type metadata accessor for JobResult();
                v101 = sub_1CF57488C(v94, v95, v141, v158, 64);
                v189 = v100;
                v102 = v95;
                sub_1CF803A0C(v143, v101);

                if (v156 == 1)
                {
                  *&v173 = v98;
                  *(&v173 + 1) = v146;
                  *&v174 = v90;
                  *(&v174 + 1) = v99;
                  type metadata accessor for Materialization.EvictChildren();
                  v103 = sub_1CF55900C(v94, v95, v141, v158);
                  sub_1CF803A0C(v143, v103);
                }

                v104 = swift_getAssociatedTypeWitness();
                AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
                v106 = v144;
                v107 = swift_getAssociatedConformanceWitness();
                *&v173 = v104;
                *(&v173 + 1) = v106;
                *&v174 = AssociatedConformanceWitness;
                *(&v174 + 1) = v107;
                type metadata accessor for ReconciliationID();
                type metadata accessor for ReconciliationSideMutation();
                TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
                v109 = v133;
                v110 = &v133[*(TupleTypeMetadata2 + 48)];
                (*(*(v104 - 8) + 16))(v133, v161, v104);
                swift_storeEnumTagMultiPayload();
                *v110 = 261;
                v111 = v141;
                *(v110 + 1) = v102;
                *(v110 + 2) = v111;
                swift_storeEnumTagMultiPayload();
                v112 = v135;
                swift_storeEnumTagMultiPayload();
                sub_1CF06EB44(v143, v109);
                (*(v134 + 8))(v109, v112);
                goto LABEL_38;
              }

              v94 = v161;
            }

            else
            {
              v94 = v161;
              v90 = v151;
            }

            v95 = v132;
            v93 = v146;
            goto LABEL_35;
          }

          v96 = v136;
          (*(v73 + 32))(v136, v71, v74);
          v97 = v128;
          (*(**(v155 + 40) + 264))(&v173, v96, v160, v162, v189);
          v128 = v97;
          if (v97)
          {
            (*(v73 + 8))(v96, v144);
            (*(v53 + 8))(v54, v127);
            return (*(v153 + 8))(v65, v64);
          }

          v167[12] = v185;
          v167[13] = v186;
          v167[14] = v187;
          v167[8] = v181;
          v167[9] = v182;
          v167[10] = v183;
          v167[11] = v184;
          v167[4] = v177;
          v167[5] = v178;
          v167[6] = v179;
          v167[7] = v180;
          v167[0] = v173;
          v167[1] = v174;
          v167[2] = v175;
          v167[3] = v176;
          v169[12] = v185;
          v170 = v186;
          v171 = v187;
          v169[8] = v181;
          v169[9] = v182;
          v169[10] = v183;
          v169[11] = v184;
          v169[4] = v177;
          v169[5] = v178;
          v169[6] = v179;
          v169[7] = v180;
          v169[0] = v173;
          v169[1] = v174;
          v168 = v188;
          v172 = v188;
          v169[2] = v175;
          v169[3] = v176;
          if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v169) == 1)
          {
            (*(v139 + 8))(v136, v144);
            goto LABEL_22;
          }

          v113 = v64;
          v114 = *&v149[*(v64 + 80)];
          v70 = v155;
          v115 = (*(*v155 + 600))();
          v116 = 0;
          v117 = v149[*(v113 + 56)];
          v118 = v142;
          if (v117 > 1)
          {
            v117 -= 2;
            if (v117 < 2)
            {
LABEL_47:
              if (sub_1CEFF8538(v170, *(&v170 + 1), 0, v115, v116, v114 & 1) == 3)
              {
                v119 = swift_getAssociatedTypeWitness();
                v120 = swift_getAssociatedConformanceWitness();
                v121 = v144;
                v122 = swift_getAssociatedConformanceWitness();
                v163 = v119;
                v164 = v121;
                v165 = v120;
                v166 = v122;
                type metadata accessor for ReconciliationID();
                __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
                TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
                v124 = *(TupleTypeMetadata3 + 48);
                v189 = *(TupleTypeMetadata3 + 64);
                v125 = v129;
                (*(*(v119 - 8) + 16))(v129, v161, v119);
                swift_storeEnumTagMultiPayload();
                type metadata accessor for FileTreeError();
                swift_getWitnessTable();
                *&v125[v124] = swift_allocError();
                swift_storeEnumTagMultiPayload();
                v125[v189] = 0;
                v126 = v131;
                swift_storeEnumTagMultiPayload();
                (*(*v155 + 312))(v125);
                sub_1CEFCCC44(v167, &qword_1EC4BECF0, &unk_1CF9FEEB0);
                (*(v130 + 8))(v125, v126);
                (*(v139 + 8))(v136, v121);
LABEL_38:
                (*(v157 + 8))(v159, v127);
                return (*(v153 + 8))(v149, v152);
              }

              (*(v139 + 8))(v136, v144);
              sub_1CEFCCC44(v167, &qword_1EC4BECF0, &unk_1CF9FEEB0);
              v75 = (v118 | 2);
              goto LABEL_23;
            }

            __break(1u);
          }

          if (v117)
          {
            v116 = 1;
          }

          goto LABEL_47;
        }
      }
    }

    return (*(v53 + 8))(v54, v36);
  }

  return result;
}

uint64_t sub_1CF56852C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1CF57488C(a1, a2, a3, a4, a5);
  v8 = *(v5 + 616);
  v9 = *(v5 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v7;
}

uint64_t sub_1CF5685B4(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, void, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v307 = a8;
  v308 = a7;
  v305 = a5;
  v306 = a6;
  v312 = a4;
  v293 = a3;
  v309 = a1;
  v10 = *v8;
  v11 = *(*v8 + 77);
  v12 = *(*v8 + 75);
  *&v313 = swift_getAssociatedTypeWitness();
  *(&v313 + 1) = swift_getAssociatedTypeWitness();
  *&v314 = swift_getAssociatedConformanceWitness();
  *(&v314 + 1) = swift_getAssociatedConformanceWitness();
  v289 = type metadata accessor for FileItemVersion();
  v292 = sub_1CF9E75D8();
  v291 = *(v292 - 8);
  v13 = *(v291 + 64);
  MEMORY[0x1EEE9AC00](v292);
  v290 = &v239 - v14;
  v304 = v10;
  v15 = *(v10 + 76);
  *&v16 = v12;
  *(&v16 + 1) = v15;
  v311 = v16;
  v17 = *(v10 + 78);
  *&v18 = v11;
  *(&v18 + 1) = v17;
  v310 = v18;
  v314 = v18;
  v313 = v16;
  v267 = type metadata accessor for PersistenceTrigger();
  v266 = *(v267 - 8);
  v19 = *(v266 + 64);
  MEMORY[0x1EEE9AC00](v267);
  v265 = &v239 - v20;
  v314 = v310;
  v313 = v311;
  v275 = type metadata accessor for ReconciliationMutation();
  v278 = *(v275 - 8);
  v21 = *(v278 + 64);
  MEMORY[0x1EEE9AC00](v275);
  v276 = &v239 - v22;
  v264 = sub_1CF9E5CF8();
  v263 = *(v264 - 8);
  v23 = *(v263 + 64);
  MEMORY[0x1EEE9AC00](v264);
  v262 = &v239 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_1CF9E5248();
  v247 = *(v248 - 8);
  v25 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v248);
  v246 = &v239 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedConformanceWitness();
  *&v313 = AssociatedTypeWitness;
  *(&v313 + 1) = v28;
  v280 = v28;
  *(&v279 + 1) = AssociatedConformanceWitness;
  *&v314 = AssociatedConformanceWitness;
  *(&v314 + 1) = v30;
  *&v279 = v30;
  v251 = type metadata accessor for ThrottlingKey();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v250 = sub_1CF9E75D8();
  v249 = *(v250 - 8);
  v31 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v250);
  v253 = &v239 - v32;
  v272 = sub_1CF9E75D8();
  v274 = *(v272 - 8);
  v33 = *(v274 + 64);
  MEMORY[0x1EEE9AC00](v272);
  v269 = &v239 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v259 = &v239 - v36;
  v277 = AssociatedTypeWitness;
  v273 = *(AssociatedTypeWitness - 8);
  v37 = *(v273 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v260 = &v239 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v254 = &v239 - v41;
  v257 = v15;
  v256 = v17;
  v282 = type metadata accessor for ItemReconciliationHalf();
  v285 = *(v282 - 8);
  v42 = *(v285 + 64);
  MEMORY[0x1EEE9AC00](v282);
  v281 = &v239 - v43;
  v288 = type metadata accessor for ItemReconciliationHalf();
  v284 = *(v288 - 8);
  v44 = *(v284 + 64);
  MEMORY[0x1EEE9AC00](v288);
  v283 = &v239 - v45;
  v296 = v12;
  v295 = v11;
  v46 = type metadata accessor for SnapshotItem();
  v287 = sub_1CF9E75D8();
  v286 = *(v287 - 1);
  v47 = *(v286 + 64);
  MEMORY[0x1EEE9AC00](v287);
  v300 = &v239 - v48;
  v299 = v46;
  v297 = *(v46 - 8);
  v49 = *(v297 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v298 = &v239 - v51;
  v314 = v310;
  v313 = v311;
  v294 = type metadata accessor for ItemReconciliation();
  v303 = sub_1CF9E75D8();
  v301 = *(v303 - 8);
  v52 = *(v301 + 64);
  MEMORY[0x1EEE9AC00](v303);
  v255 = &v239 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v268 = &v239 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v258 = &v239 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v261 = &v239 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v271 = &v239 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v270 = &v239 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v239 - v65;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v239 - v68;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v239 - v71;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v239 - v74;
  v76 = *(v309 + 2);
  v77 = *(v304 + 72);
  v78 = *(v307 + 8);
  v302 = v9;
  v79 = v9 + v77;
  v80 = v308;
  sub_1CF68DDB0(v79, v312, v308, v78, &v239 - v74);
  v245 = v72;
  v243 = v69;
  v244 = v66;
  v304 = v75;
  v81 = v300;
  (*(**(v309 + 4) + 240))(v302 + v77, 1, v312, v80, v78);
  v239 = v78;
  v242 = v77;
  v83 = v297;
  v84 = v299;
  v85 = (*(v297 + 48))(v81, 1, v299);
  if (v85 == 1)
  {
    (*(v286 + 8))(v81, v287);
LABEL_5:
    v86 = v301;
    v87 = v302;
    v89 = v307;
    v88 = v308;
    if ((*(v302 + 138) & 2) != 0)
    {
      v313 = v311;
      v314 = v310;
      type metadata accessor for JobResult();
      v314 = v310;
      v313 = v311;
      type metadata accessor for DiskImport.MarkDirectorDiskImportAsDone();
      v90 = sub_1CF559420(v87 + v242, *(v87 + 120), *(v87 + 128), 0x20000);
      sub_1CF803A0C(v293, v90);
    }

    *(&v314 + 1) = v88;
    v315 = v89;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v313);
    (*(*(v88 - 8) + 16))(boxed_opaque_existential_0, v312, v88);
    v92 = v290;
    (*(*(v289 - 8) + 56))(v290, 1, 1);
    type metadata accessor for FileTreeError();
    swift_getWitnessTable();
    v93 = swift_allocError();
    sub_1CF72C4D8(v87 + v242, v92, 0, v94);
    (*(v291 + 8))(v92, v292);
    v305(&v313, 0, 0, 0, v93);

    goto LABEL_38;
  }

  (*(v83 + 32))(v298, v81, v84);
  v95 = v301;
  v96 = *(v301 + 16);
  v97 = v245;
  v300 = (v301 + 16);
  v287 = v96;
  v96(v245, v304, v303);
  v98 = v294;
  v99 = *(v294 - 8);
  v100 = *(v99 + 48);
  v286 = v99 + 48;
  v241 = v100;
  v101 = v100(v97, 1, v294);
  v240 = v99;
  if (v101 == 1)
  {
    (*(v95 + 8))(v97, v303);
    v102 = v288;
  }

  else
  {
    v103 = v284;
    v104 = v283;
    v102 = v288;
    (*(v284 + 16))(v283, v97, v288);
    (*(v99 + 8))(v97, v98);
    v105 = *&v104[*(v102 + 36)];
    (*(v103 + 8))(v104, v102);
    if (v105)
    {
      (*(v83 + 8))(v298, v84);
      goto LABEL_5;
    }
  }

  v106 = v243;
  v287(v243, v304, v303);
  v107 = v241(v106, 1, v98);
  v86 = v301;
  v108 = v98;
  if (v107 == 1)
  {
    (*(v301 + 8))(v106, v303);
    v109 = 6;
    v110 = v240;
  }

  else
  {
    v111 = v284;
    v112 = v283;
    (*(v284 + 16))(v283, v106, v102);
    v110 = v240;
    (*(v240 + 8))(v106, v108);
    v109 = v112[*(v102 + 56)];
    (*(v111 + 8))(v112, v102);
  }

  v113 = v244;
  v287(v244, v304, v303);
  v114 = v241(v113, 1, v108);
  v115 = v302;
  if (v114 == 1)
  {
    (*(v86 + 8))(v113, v303);
    v116 = 0;
    v117 = v285;
  }

  else
  {
    v117 = v285;
    v118 = v302;
    v119 = v281;
    v120 = v282;
    (*(v285 + 16))(v281, &v113[*(v108 + 52)], v282);
    (*(v110 + 8))(v113, v108);
    v121 = v119[*(v120 + 52)];
    v122 = v119;
    v115 = v118;
    (*(v117 + 8))(v122, v120);
    v116 = v121 == 4;
  }

  if (v109 == 6)
  {
LABEL_27:
    v131 = 0;
    goto LABEL_29;
  }

  if (v109 == 4)
  {
    v123 = v270;
    v287(v270, v304, v303);
    if (v241(v123, 1, v108) == 1)
    {
      (*(v86 + 8))(v123, v303);
      v124 = v271;
LABEL_25:
      v287(v124, v304, v303);
      if (v241(v124, 1, v108) != 1)
      {
        v132 = v115;
        v133 = v281;
        v134 = v282;
        (*(v117 + 16))(v281, &v124[*(v108 + 52)], v282);
        (*(v240 + 8))(v124, v108);
        v135 = v133[*(v134 + 52)];
        v136 = v133;
        v115 = v132;
        (*(v117 + 8))(v136, v134);
        v131 = v135 == 1;
        goto LABEL_29;
      }

      (*(v86 + 8))(v124, v303);
      goto LABEL_27;
    }

    v125 = v115;
    v126 = v281;
    v127 = v282;
    (*(v117 + 16))(v281, &v123[*(v108 + 52)], v282);
    (*(v240 + 8))(v123, v108);
    v128 = v126[*(v127 + 52)];
    v129 = v126;
    v115 = v125;
    (*(v117 + 8))(v129, v127);
    v130 = v128 == 3;
    v124 = v271;
    if (!v130)
    {
      goto LABEL_25;
    }
  }

  v131 = 1;
LABEL_29:
  v137 = v299;
  WitnessTable = swift_getWitnessTable();
  if (v116 | (((sub_1CF937C7C(v137, WitnessTable) | v131) & 1) == 0))
  {
    v313 = v311;
    v314 = v310;
    v139 = type metadata accessor for JobResult();
    v140 = v280;
    *&v313 = v280;
    *(&v313 + 1) = v277;
    v314 = v279;
    type metadata accessor for ReconciliationID();
    type metadata accessor for ReconciliationSideMutation();
    v141 = swift_getTupleTypeMetadata2();
    v142 = v276;
    v143 = &v276[*(v141 + 48)];
    v144 = *(v140 - 8);
    v145 = v242;
    v296 = *(v144 + 16);
    v295 = v144 + 16;
    v296(v276, v115 + v242, v140);
    swift_storeEnumTagMultiPayload();
    *v143 = 1280;
    *(v143 + 8) = *(v115 + 120);
    swift_storeEnumTagMultiPayload();
    v146 = v115;
    v147 = v142;
    v148 = v275;
    swift_storeEnumTagMultiPayload();
    v149 = v293;
    v300 = v139;
    sub_1CF06EB44(v293, v147);
    (*(v278 + 8))(v147, v148);
    if ((*(v146 + 138) & 2) != 0)
    {
      v313 = v311;
      v314 = v310;
      type metadata accessor for DiskImport.MarkDirectorDiskImportAsDone();
      v170 = sub_1CF559420(v146 + v145, *(v146 + 120), *(v146 + 128), 0x20000);
      sub_1CF803A0C(v149, v170);
    }

    else
    {
      v150 = *(swift_getTupleTypeMetadata2() + 48);
      v151 = v265;
      v296(v265, v146 + v145, v140);
      swift_storeEnumTagMultiPayload();
      v151[v150] = 0;
      v152 = v267;
      swift_storeEnumTagMultiPayload();
      (*(*v309 + 312))(v151);
      (*(v266 + 8))(v151, v152);
    }

    v171 = v308;
    *(&v314 + 1) = v308;
    v315 = v307;
    v172 = __swift_allocate_boxed_opaque_existential_0(&v313);
    (*(*(v171 - 8) + 16))(v172, v312, v171);
    v305(&v313, 0, 0, 0, 0);
    goto LABEL_37;
  }

  v153 = v280;
  v154 = *(&v279 + 1);
  if ((*(v115 + 138) & 2) == 0)
  {
    goto LABEL_33;
  }

  v173 = (*(v279 + 72))(v280);
  v174 = v294;
  if ((v173 & 1) == 0)
  {
    goto LABEL_54;
  }

  v175 = v261;
  v287(v261, v304, v303);
  if (v241(v175, 1, v174) == 1)
  {
    (*(v86 + 8))(v175, v303);
    v176 = v174;
    v177 = v277;
    v178 = v274;
  }

  else
  {
    v201 = v285;
    v202 = v281;
    v203 = v282;
    (*(v285 + 16))(v281, &v175[*(v174 + 52)], v282);
    (*(v240 + 8))(v175, v174);
    v204 = v202[*(v203 + 52)];
    (*(v201 + 8))(v202, v203);
    v176 = v174;
    v177 = v277;
    v178 = v274;
    if (v204 == 2)
    {
LABEL_53:
      v115 = v302;
      goto LABEL_54;
    }
  }

  v205 = v258;
  v287(v258, v304, v303);
  if (v241(v205, 1, v176) == 1)
  {
    (*(v86 + 8))(v205, v303);
    v206 = v259;
    (*(v273 + 56))(v259, 1, 1, v177);
LABEL_52:
    (*(v274 + 8))(v206, v272);
    goto LABEL_53;
  }

  v207 = v285;
  v208 = v281;
  v209 = v282;
  (*(v285 + 16))(v281, &v205[*(v176 + 52)], v282);
  (*(v240 + 8))(v205, v176);
  v206 = v259;
  (*(v178 + 16))(v259, v208, v272);
  (*(v207 + 8))(v208, v209);
  v210 = v273;
  if ((*(v273 + 48))(v206, 1, v177) == 1)
  {
    goto LABEL_52;
  }

  v227 = v254;
  (*(v210 + 32))(v254, v206, v177);
  *&v313 = (*(**(v309 + 3) + 376))(v227, 6, 0, 1, v312, v308, v239);
  v228 = TupleTypeMetadata2;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  v229 = v253;
  sub_1CF9E7118();

  v230 = (*(*(v228 - 8) + 48))(v229, 1, v228);
  if (v230 == 1)
  {
    (*(v273 + 8))(v227, v277);
    (*(v249 + 8))(v229, v250);
    goto LABEL_53;
  }

  v231 = &v229[*(v228 + 48)];
  v232 = *(v231 + 5);
  v233 = *(v231 + 8);
  (*(*(v251 - 8) + 8))(v229);
  if (!v232)
  {

    (*(v273 + 8))(v227, v277);
    goto LABEL_53;
  }

  v234 = v232;
  v235 = v246;
  sub_1CF9E5108();
  sub_1CF574EBC();
  v236 = v227;
  v237 = v248;
  v238 = sub_1CF9E5658();

  (*(v247 + 8))(v235, v237);
  (*(v273 + 8))(v236, v277);
  v153 = v280;
  v154 = *(&v279 + 1);
  v115 = v302;
  if ((v238 & 1) == 0)
  {
LABEL_54:
    v211 = v262;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v213 = v212;
    result = (*(v263 + 8))(v211, v264);
    v214 = v213 * 1000000000.0;
    if (COERCE__INT64(fabs(v213 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v216 = v307;
      v215 = v308;
      if (v214 > -9.22337204e18)
      {
        if (v214 < 9.22337204e18)
        {
          v217 = v312;
          sub_1CF5666D4(v115 + v242, 0x2000000000000000, v214, 0x20000, v309, 0, v293, v312, v308, v239);
          *(&v314 + 1) = v215;
          v315 = v216;
          v218 = __swift_allocate_boxed_opaque_existential_0(&v313);
          (*(*(v215 - 8) + 16))(v218, v217, v215);
          sub_1CF4810BC();
          v219 = swift_allocError();
          *v220 = 5;
          v305(&v313, 0, 0, 0, v219);

LABEL_37:
          (*(v297 + 8))(v298, v299);
LABEL_38:
          (*(v86 + 8))(v304, v303);
          return sub_1CEFCCC44(&v313, &unk_1EC4C1B30, &qword_1CFA05300);
        }

        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_33:
  v313 = v311;
  v314 = v310;
  v155 = type metadata accessor for JobResult();
  v156 = v277;
  *&v313 = v153;
  *(&v313 + 1) = v277;
  *&v314 = v279;
  *(&v314 + 1) = v154;
  type metadata accessor for ReconciliationID();
  type metadata accessor for ReconciliationSideMutation();
  v157 = swift_getTupleTypeMetadata2();
  v158 = v276;
  v159 = &v276[*(v157 + 48)];
  (*(*(v153 - 8) + 16))(v276, v115 + v242, v153);
  swift_storeEnumTagMultiPayload();
  *v159 = 1280;
  *(v159 + 8) = *(v115 + 120);
  swift_storeEnumTagMultiPayload();
  v160 = v275;
  swift_storeEnumTagMultiPayload();
  *&v311 = v155;
  sub_1CF06EB44(v293, v158);
  v161 = v303;
  v163 = v278 + 8;
  v162 = *(v278 + 8);
  v162(v158, v160);
  v164 = v268;
  v287(v268, v304, v161);
  v165 = v294;
  if (v241(v164, 1, v294) == 1)
  {
    (*(v86 + 8))(v164, v161);
    v166 = v269;
    (*(v273 + 56))(v269, 1, 1, v156);
    v167 = v305;
    v168 = v272;
    v169 = v274;
LABEL_43:
    (*(v169 + 8))(v166, v168);
LABEL_44:
    v185 = v307;
    v186 = v308;
    v187 = v303;
    v188 = v301;
LABEL_45:
    *(&v314 + 1) = v186;
    v315 = v185;
    v189 = __swift_allocate_boxed_opaque_existential_0(&v313);
    (*(*(v186 - 8) + 16))(v189, v312, v186);
    sub_1CF4810BC();
    v190 = swift_allocError();
    *v191 = 3;
    v167(&v313, 0, 0, 0, v190);

    (*(v297 + 8))(v298, v299);
    (*(v188 + 8))(v304, v187);
    return sub_1CEFCCC44(&v313, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  *&v310 = v162;
  v278 = v163;
  v179 = v285;
  v180 = v281;
  v181 = v282;
  (*(v285 + 16))(v281, &v164[*(v165 + 52)], v282);
  v182 = *(v240 + 8);
  v240 += 8;
  v309 = v182;
  v182(v164, v165);
  v169 = v274;
  v166 = v269;
  v168 = v272;
  (*(v274 + 16))(v269, v180, v272);
  (*(v179 + 8))(v180, v181);
  v183 = v273;
  v184 = (*(v273 + 48))(v166, 1, v156);
  v167 = v305;
  if (v184 == 1)
  {
    goto LABEL_43;
  }

  v192 = v260;
  (*(v183 + 32))(v260, v166, v156);
  v193 = type metadata accessor for ReconciliationSideMutation();
  v194 = v160;
  v295 = swift_getTupleTypeMetadata2();
  v195 = *(v295 + 48);
  v196 = *(v183 + 16);
  v197 = v276;
  v296 = v196;
  v196(v276, v192, v156);
  swift_storeEnumTagMultiPayload();
  *(v197 + v195) = 0;
  v302 = v193;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v293, v197);
  v198 = v310;
  (v310)(v197, v194);
  v199 = v255;
  v187 = v303;
  v287(v255, v304, v303);
  v200 = v294;
  if (v241(v199, 1, v294) == 1)
  {
    v188 = v301;
    (*(v301 + 8))(v199, v187);
    (*(v273 + 8))(v192, v156);
    v167 = v305;
    v185 = v307;
    v186 = v308;
    goto LABEL_45;
  }

  v221 = v199[*(v200 + 56)];
  result = v309(v199, v200);
  if (v221 == 1)
  {
    (*(v273 + 8))(v260, v277);
    goto LABEL_63;
  }

  v130 = v221 == 4;
  v222 = v260;
  if (!v130)
  {
    v223 = v276;
    v224 = &v276[*(v295 + 48)];
    v225 = v277;
    v296(v276, v260, v277);
    swift_storeEnumTagMultiPayload();
    *v224 = 0;
    *(v224 + 1) = 0;
    *(v224 + 2) = 0;
    *(v224 + 3) = 0xB000000000000000;
    *(v224 + 2) = 0u;
    *(v224 + 3) = 0u;
    *(v224 + 32) = 0;
    swift_storeEnumTagMultiPayload();
    v226 = v275;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v293, v223);
    v198(v223, v226);
    (*(v273 + 8))(v222, v225);
LABEL_63:
    v167 = v305;
    goto LABEL_44;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1CF56ACB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 616);
  v5 = *(*v1 + 600);
  swift_getAssociatedTypeWitness();
  v6 = *(v3 + 624);
  v7 = *(v3 + 608);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ThrottlingKey();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t sub_1CF56AE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v54 = a8;
  v56 = a7;
  v61 = a6;
  v62 = a5;
  v58 = a3;
  v59 = a4;
  v60 = a1;
  v10 = *v8;
  v11 = v10[75];
  v12 = v10[77];
  v48 = type metadata accessor for SnapshotItem();
  v47 = sub_1CF9E75D8();
  v46 = *(v47 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v45 - v14;
  v52 = v10;
  *&v15 = v11;
  *(&v15 + 1) = v10[76];
  v53 = v15;
  *&v16 = v12;
  *(&v16 + 1) = v10[78];
  v49 = v16;
  v64 = v16;
  v63 = v15;
  v55 = type metadata accessor for ReconciliationMutation();
  v57 = *(v55 - 8);
  v17 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v19 = &v45 - v18;
  v64 = v49;
  v63 = v53;
  *&v53 = type metadata accessor for JobResult();
  v50 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = v54;
  v24 = swift_getAssociatedConformanceWitness();
  *&v63 = AssociatedTypeWitness;
  *(&v63 + 1) = v21;
  v25 = v56;
  *&v64 = AssociatedConformanceWitness;
  *(&v64 + 1) = v24;
  v26 = v51;
  type metadata accessor for ReconciliationID();
  type metadata accessor for ReconciliationSideMutation();
  v27 = &v19[*(swift_getTupleTypeMetadata2() + 48)];
  v28 = v52[72];
  (*(*(AssociatedTypeWitness - 8) + 16))(v19, v9 + v28, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *v27 = 1281;
  *(v27 + 8) = *(v9 + 15);
  swift_storeEnumTagMultiPayload();
  v29 = v55;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v58, v19);
  v30 = v19;
  v31 = v59;
  (*(v57 + 8))(v30, v29);
  (*(**(v60 + 32) + 240))(v9 + v28, 1, v31, v25, *(v23 + 8));
  v32 = v46;
  v33 = v47;
  v34 = v62;
  v35 = v48;
  v36 = *(v48 - 8);
  if ((*(v36 + 48))(v26, 1, v48) == 1)
  {
    (*(v32 + 8))(v26, v33);
    v37 = v34;
  }

  else
  {
    WitnessTable = swift_getWitnessTable();
    v39 = sub_1CF937C7C(v35, WitnessTable);
    (*(v36 + 8))(v26, v35);
    v37 = v34;
    if ((v39 & 1) == 0)
    {
      *(&v64 + 1) = v25;
      v65 = v23;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v63);
      (*(*(v25 - 8) + 16))(boxed_opaque_existential_0, v31, v25);
      sub_1CF4810BC();
      v43 = swift_allocError();
      *v44 = 4;
      v34(&v63, 0, 0, 0, v43);

      return sub_1CEFCCC44(&v63, &unk_1EC4C1B30, &qword_1CFA05300);
    }
  }

  *(&v64 + 1) = v25;
  v65 = v23;
  v40 = __swift_allocate_boxed_opaque_existential_0(&v63);
  (*(*(v25 - 8) + 16))(v40, v31, v25);
  v37(&v63, 0, 0, 0, 0);
  return sub_1CEFCCC44(&v63, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF56B4A4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v56 = a5;
  v57 = a6;
  v62 = a3;
  v15 = *v9;
  v16 = *(*v9 + 600);
  v17 = *(*v9 + 616);
  v18 = type metadata accessor for SnapshotItem();
  v68 = *(v18 - 8);
  v19 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v67 = &v53 - v23;
  v61 = a1;
  v24 = *(v15 + 576);
  v25 = *(*a1[4] + 496);
  v26 = *(a8 + 8);
  v63 = a4;
  v27 = a4;
  v28 = a7;
  v29 = v25(&v9[v24], a2, v27, a7, v26, v22);
  v30 = a8;
  v31 = v29;
  v59 = v26;
  v60 = v28;
  v54 = v19;
  v55 = v32;
  if ((*(v9 + 17) & 0x20000000000) != 0)
  {
    v33 = 2;
  }

  else
  {
    v33 = 4;
  }

  v58 = v33;
  if (!sub_1CF9E6DF8())
  {
LABEL_15:

    v48 = v56;
    v49 = v60;
    v50 = v63;
    v70[3] = v60;
    v70[4] = v30;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v70);
    (*(*(v49 - 8) + 16))(boxed_opaque_existential_0, v50, v49);
    v52 = v55;

    v48(v70, v52, 0, 0, 0);

    return sub_1CEFCCC44(v70, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v34 = v9;
  v35 = 0;
  v36 = v68;
  v64 = (v68 + 32);
  v65 = (v68 + 8);
  v66 = (v68 + 16);
  while (1)
  {
    v38 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v38)
    {
      v39 = v31 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35;
      v40 = *(v36 + 16);
      v41 = v67;
      v40(v67, v39, v18);
      v42 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    result = sub_1CF9E7998();
    if (v54 != 8)
    {
      break;
    }

    v70[0] = result;
    v41 = v67;
    (*v66)(v67, v70, v18);
    swift_unknownObjectRelease();
    v42 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_9:
    (*v64)(v20, v41, v18);
    WitnessTable = swift_getWitnessTable();
    sub_1CF06D940(v18, WitnessTable, v70);
    if (LOBYTE(v70[0]) != 2)
    {
      sub_1CF06D940(v18, WitnessTable, v70);
      v44 = *(v34 + 15);
      v45 = *(v34 + 16);
      v46 = *(v34 + 17);
      v69 = v58;
      sub_1CF5673DC(v20, v70, v44, v45, v46, v61, &v69, v62, v63, v60, v59);
    }

    (*v65)(v20, v18);
    v37 = sub_1CF9E6DF8();
    ++v35;
    v36 = v68;
    if (v42 == v37)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF56B9CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a6;
  v63 = a4;
  v64 = a5;
  v54 = a3;
  v9 = *(*a2 + 88);
  v10 = *(*a2 + 96);
  v11 = *(*a2 + 104);
  v67 = *(*a2 + 80);
  v8 = v67;
  v68 = v9;
  v69 = v10;
  v70 = v11;
  v56 = type metadata accessor for ReconciliationMutation();
  v58 = *(v56 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v53 - v13;
  v14 = sub_1CF9E6118();
  v60 = *(v14 - 8);
  v61 = v14;
  v15 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[3];
  v67 = v8;
  v68 = v9;
  v69 = v10;
  v70 = v11;
  v59 = type metadata accessor for ItemJob();
  MetatypeMetadata = swift_getMetatypeMetadata();
  v19 = sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
  v20 = *(v19 + 52);
  v21 = (*(v19 + 48) + 7) & 0x1FFFFFFF8;
  swift_allocObject();
  v22 = sub_1CF9E6D68();
  v55 = v8;
  v67 = v8;
  v68 = v9;
  v69 = v10;
  v70 = v11;
  *v23 = type metadata accessor for Materialization.EvictItem();
  v24 = sub_1CF045898(v22);
  v25 = v66;
  v26 = (*(*v17 + 312))(a1, v24, v63, v64, v65);

  if (!v25)
  {
    v28 = v61;
    v29 = v62;
    v30 = v60;
    v65 = a1;
    v66 = 0;
    v53 = v11;
    v63 = v9;
    v64 = v10;
    v67 = v26;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7118();
    v31 = v71;

    if (v31)
    {
      v32 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v33 = sub_1CF9E6108();
      v34 = sub_1CF9E72C8();
      v35 = os_log_type_enabled(v33, v34);
      v59 = v31;
      if (v35)
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v67 = v37;
        *v36 = 136446210;
        v38 = sub_1CF044BA4();
        v40 = v39;

        v41 = sub_1CEFD0DF0(v38, v40, &v67);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_1CEFC7000, v33, v34, "✴️  cancelling eviction %{public}s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x1D386CDC0](v37, -1, -1);
        MEMORY[0x1D386CDC0](v36, -1, -1);

        (*(v30 + 8))(v62, v28);
      }

      else
      {

        (*(v30 + 8))(v29, v28);
      }

      v67 = v55;
      v68 = v63;
      v69 = v64;
      v70 = v53;
      v64 = type metadata accessor for JobResult();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v43 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v45 = swift_getAssociatedConformanceWitness();
      v67 = AssociatedTypeWitness;
      v68 = v43;
      v69 = AssociatedConformanceWitness;
      v70 = v45;
      type metadata accessor for ReconciliationID();
      type metadata accessor for ReconciliationSideMutation();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v47 = v57;
      v48 = &v57[*(TupleTypeMetadata2 + 48)];
      (*(*(AssociatedTypeWitness - 8) + 16))(v57, v65, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      v49 = *(v59 + 120);
      *v48 = 1281;
      *(v48 + 8) = v49;
      swift_storeEnumTagMultiPayload();
      v50 = v56;
      swift_storeEnumTagMultiPayload();
      v51 = v54;
      sub_1CF06EB44(v54, v47);
      (*(v58 + 8))(v47, v50);
      v52 = sub_1CF67DD2C();

      sub_1CF803A0C(v51, v52);
    }
  }

  return result;
}

uint64_t sub_1CF56BFE0(char a1, uint64_t a2, void *a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = v3;
  *(v7 + 40) = a3;

  v8 = a3;
  sub_1CF92DE44("requestCompleted(isIgnored:db:error:)", 37, 2u, sub_1CF045408, 0, nullsub_1, 0, sub_1CF574E98, v7);
}

uint64_t sub_1CF56C0D0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v35 = a5;
  v8 = *(*a3 + 88);
  v9 = *(*a3 + 96);
  v10 = *(*a3 + 104);
  v37 = *(*a3 + 80);
  v38 = v8;
  v39 = v9;
  v40 = v10;
  v11 = type metadata accessor for PersistenceTrigger();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v36 = v15;
  v34 = v37;
  if (a2)
  {
    v16 = *(*a4 + 576);
    v33 = a4;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 16))(v14, v33 + v16, AssociatedTypeWitness);
    v18 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    a4 = v33;
    v20 = swift_getAssociatedConformanceWitness();
    v37 = AssociatedTypeWitness;
    v38 = v18;
    v39 = AssociatedConformanceWitness;
    v40 = v20;
    type metadata accessor for ReconciliationID();
    swift_storeEnumTagMultiPayload();
    v21 = v36;
    swift_storeEnumTagMultiPayload();
    (*(*a3 + 312))(v14);
    (*(v41 + 8))(v14, v21);
  }

  else
  {
    v18 = swift_getAssociatedTypeWitness();
    v20 = swift_getAssociatedConformanceWitness();
  }

  v22 = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v37 = v22;
  v38 = v18;
  v39 = v23;
  v40 = v20;
  type metadata accessor for ReconciliationID();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v25 = *(TupleTypeMetadata3 + 48);
  v26 = *(TupleTypeMetadata3 + 64);
  *v14 = sub_1CF03D760();
  (*(*(v22 - 8) + 16))(&v14[v25], a4 + *(*a4 + 576), v22);
  swift_storeEnumTagMultiPayload();
  v27 = v35;
  *&v14[v26] = v35;
  v28 = v36;
  swift_storeEnumTagMultiPayload();
  v29 = *(*a3 + 312);
  v30 = v27;
  v29(v14);
  return (*(v41 + 8))(v14, v28);
}

uint64_t sub_1CF56C544(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, unint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v148 = a8;
  v149 = a4;
  v150 = a7;
  v144 = a6;
  v145 = a5;
  v133 = a3;
  v140 = a2;
  v147 = a1;
  v10 = *v8;
  v128 = v10;
  v11 = v10[76];
  v146 = v10[78];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = v10[77];
  v14 = v10[75];
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v151 = AssociatedTypeWitness;
  v152 = v15;
  v153 = AssociatedConformanceWitness;
  v154 = swift_getAssociatedConformanceWitness();
  v132 = type metadata accessor for ReconciliationID();
  v17 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v122 - v18;
  v141 = v15;
  v151 = v15;
  v152 = AssociatedTypeWitness;
  v134 = AssociatedTypeWitness;
  v135 = v154;
  v153 = v154;
  v154 = AssociatedConformanceWitness;
  v136 = AssociatedConformanceWitness;
  v131 = type metadata accessor for ReconciliationID();
  v19 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v122 - v20;
  v127 = type metadata accessor for ItemReconciliationHalf();
  v142 = *(v127 - 8);
  v21 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v23 = &v122 - v22;
  v151 = v14;
  v152 = v11;
  v138 = v11;
  v139 = v13;
  v153 = v13;
  v154 = v146;
  v24 = type metadata accessor for ItemReconciliation();
  v25 = sub_1CF9E75D8();
  v137 = *(v25 - 8);
  v26 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v122 - v31;
  v33 = v10;
  v34 = v147[4];
  v35 = *(*v34 + 440);
  v36 = *(v148 + 8);
  v143 = v33[72];
  v37 = v35(&v9[v143], v149, v150, v36, v30);
  v123 = v28;
  v122 = v23;
  v125 = v32;
  v126 = v9;
  v124 = v25;
  v39 = v141;
  v40 = v147;
  if (v37)
  {
    v41 = v149;
    v42 = v126;
    v43 = v142;
  }

  else
  {
    v42 = v126;
    v41 = v149;
    v59 = (*(*v34 + 448))(&v126[v143], v149, v150, v36);
    v43 = v142;
    if ((v59 & 1) == 0)
    {
      v75 = v150;
      v154 = v150;
      v155 = v148;
      v76 = __swift_allocate_boxed_opaque_existential_0(&v151);
      (*(*(v75 - 8) + 16))(v76, v41, v75);
      v145(&v151, 0, 0xD000000000000017, 0x80000001CFA52F80, 0);
      return sub_1CEFCCC44(&v151, &unk_1EC4C1B30, &qword_1CFA05300);
    }
  }

  if (v140)
  {
    v44 = v40[2];
    v45 = v125;
    v46 = v150;
    sub_1CF68DDB0(&v42[v143], v41, v150, v36, v125);
    v47 = v137;
    v48 = v123;
    v49 = v45;
    v50 = v124;
    (*(v137 + 16))(v123, v49, v124);
    v51 = v24;
    v52 = v48;
    v53 = *(v51 - 8);
    if ((*(v53 + 48))(v52, 1, v51) == 1)
    {
      (*(v47 + 8))(v52, v50);
      v54 = v50;
      v55 = v133;
      v56 = v146;
      v57 = v138;
      v58 = v139;
LABEL_18:
      v151 = v14;
      v152 = v57;
      v153 = v58;
      v154 = v56;
      type metadata accessor for JobResult();
      v151 = v14;
      v152 = v57;
      v153 = v58;
      v154 = v56;
      type metadata accessor for Ingestion.ReSnapshotChildren();
      v105 = *(v42 + 15);
      v106 = *(v42 + 16);
      v107 = *(v42 + 17);
      v108 = v42;
      v109 = v143;
      v110 = sub_1CF656FE0(v108 + v143, v105, v106, v107);
      v111 = v54;
      sub_1CF803A0C(v55, v110);

      v112 = v108[15];
      v113 = v108[16];
      v114 = v41;
      v115 = v108[17];
      v116 = *(v128 + 12);
      v117 = *(v128 + 26);
      swift_allocObject();
      v118 = sub_1CF052464(v108 + v109, v112, v113, v115);
      sub_1CF803A0C(v55, v118);

      v154 = v46;
      v155 = v148;
      v119 = __swift_allocate_boxed_opaque_existential_0(&v151);
      (*(*(v46 - 8) + 16))(v119, v114, v46);
      sub_1CF4810BC();
      v120 = swift_allocError();
      *v121 = 3;
      v145(&v151, 0, 0, 0, v120);

      (*(v137 + 8))(v125, v111);
      return sub_1CEFCCC44(&v151, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    v95 = *(v43 + 16);
    v149 = v51;
    v96 = v122;
    v97 = v52;
    v98 = v43;
    v99 = v52;
    v100 = v127;
    v95(v122, v97, v127);
    (*(v53 + 8))(v99, v149);
    v101 = v96[*(v100 + 52)];
    (*(v98 + 8))(v96, v100);
    v102 = v101 == 2;
    v55 = v133;
    v103 = v47;
    v56 = v146;
    v57 = v138;
    v58 = v139;
    v54 = v124;
    if (!v102)
    {
      goto LABEL_18;
    }

    v154 = v46;
    v155 = v148;
    v104 = __swift_allocate_boxed_opaque_existential_0(&v151);
    (*(*(v46 - 8) + 16))(v104, v41, v46);
    v145(&v151, 0, 0, 0, 0);
    (*(v103 + 8))(v125, v54);
  }

  else
  {
    if (sub_1CF056558())
    {
      v151 = v14;
      v152 = v138;
      v153 = v139;
      v154 = v146;
      type metadata accessor for ConcreteDatabase();
      v146 = swift_dynamicCastClassUnconditional();
      v60 = v39;
      v151 = v39;
      v152 = v134;
      v153 = v135;
      v154 = v136;
      type metadata accessor for FPFSID();
      v61 = *(*(v39 - 8) + 16);
      v62 = v143;
      v63 = v126;
      v64 = v129;
      v61(v129, &v126[v143], v60);
      swift_storeEnumTagMultiPayload();
      v65 = sub_1CF554514(v64);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v67 = swift_allocBox();
      v69 = v68;
      v70 = *(TupleTypeMetadata2 + 48);
      v61(v68, &v63[v62], v60);
      swift_storeEnumTagMultiPayload();
      *&v69[v70] = *(v63 + 15);
      v71 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
      v72 = swift_allocObject();
      v73 = v150;
      v74 = v148;
      *(v72 + 16) = v150;
      *(v72 + 24) = v74;
      *(v72 + 32) = v146;
      *(v72 + 40) = v63;
      *(v72 + 48) = v147;
      swift_retain_n();

      sub_1CF52C114(v65, 0, 0, 1, v67 | 0x5000000000000002, 0, v71, sub_1CF574E78, v72);
    }

    else
    {
      (*(*v40 + 176))();
      v151 = v138;
      v152 = v14;
      v153 = v146;
      v154 = v139;
      type metadata accessor for ConcreteDatabase();
      v146 = swift_dynamicCastClassUnconditional();
      v151 = v134;
      v152 = v39;
      v77 = v39;
      v153 = v136;
      v154 = v135;
      type metadata accessor for FPFSID();
      v78 = *(*(v39 - 8) + 16);
      v79 = v143;
      v80 = v126;
      v81 = v130;
      v78(v130, &v126[v143], v39);
      swift_storeEnumTagMultiPayload();
      v82 = sub_1CF554514(v81);
      v83 = swift_getTupleTypeMetadata2();
      v84 = swift_allocBox();
      v86 = v85;
      v87 = *(v83 + 48);
      v88 = v77;
      v89 = v82;
      v90 = v84;
      v78(v85, &v80[v79], v88);
      swift_storeEnumTagMultiPayload();
      *&v86[v87] = *(v80 + 15);
      v91 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
      v92 = swift_allocObject();
      v73 = v150;
      v74 = v148;
      *(v92 + 16) = v150;
      *(v92 + 24) = v74;
      *(v92 + 32) = v80;
      *(v92 + 40) = v147;

      sub_1CF52C114(v89, 0, 0, 1, v90 | 0x5000000000000002, 0, v91, sub_1CF574E24, v92);
    }

    v154 = v73;
    v155 = v74;
    v93 = __swift_allocate_boxed_opaque_existential_0(&v151);
    (*(*(v73 - 8) + 16))(v93, v149, v73);
    type metadata accessor for RequestContinuation();
    v94 = swift_allocObject();
    v145(&v151, v94, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v151, &unk_1EC4C1B30, &qword_1CFA05300);
}

void sub_1CF56D30C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v42 = a6;
  v43 = a4;
  v8 = *a2;
  v9 = *(*a2 + 616);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v38 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v14 = sub_1CF9E8238();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v38 - v17);
  (*(v19 + 16))(&v38 - v17, a1, v14, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    v21 = *v18;
    sub_1CF56BFE0(0, v43, v20);
  }

  else
  {
    (*(v10 + 32))(v13, v18, v9);
    v22 = v8[79];
    v39 = v13;
    v38 = v22;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v40 = v10;
    v24 = v8[80];
    v25 = v8[78];
    v26 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v28 = swift_getAssociatedConformanceWitness();
    v44 = AssociatedTypeWitness;
    v45 = v26;
    v46 = AssociatedConformanceWitness;
    v47 = v28;
    type metadata accessor for ReconciliationID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v30 = swift_allocBox();
    v32 = v31;
    v33 = *(TupleTypeMetadata2 + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(v31, &a3[*(*a3 + 576)], AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    *(v32 + v33) = *(a3 + 15);
    v34 = swift_allocObject();
    v35 = v42;
    v34[2] = v41;
    v34[3] = v35;
    v36 = v43;
    v34[4] = a3;
    v34[5] = v36;

    v37 = v39;
    sub_1CF53ECA4(v39, v30 | 0x5000000000000002, sub_1CF574E88, v34, v9, v38);

    (*(v40 + 8))(v37, v9);
  }
}

uint64_t sub_1CF56D708(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();
    a1 = 0;
  }

  return sub_1CF56BFE0(a1 & 1, a4, 0);
}

void sub_1CF56D778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a2 + 608);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v6 = sub_1CF9E8238();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v14 - v10);
  (*(v7 + 16))(&v14 - v10, a1, v6, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = *v11;
    sub_1CF56BFE0(0, a3, v12);
  }

  else
  {
    (*(v7 + 8))(v11, v6);
    sub_1CF56BFE0(0, a3, 0);
  }
}

uint64_t sub_1CF56D908(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v29 = a5;
  v30 = a6;
  v31 = a4;
  v11 = *v7;
  v12 = *a1;
  v13 = *(*a3 + 80);
  v28 = sub_1CF9E75D8();
  v14 = *(v28 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v28);
  v18 = &v26 - v17;
  (*(v14 + 16))(&v26 - v17, a2, v16);
  v19 = (*(v14 + 80) + 112) & ~*(v14 + 80);
  v27 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = v11[75];
  *(v21 + 3) = v11[76];
  *(v21 + 4) = v12[77];
  *(v21 + 5) = v12[78];
  *(v21 + 6) = v11[77];
  *(v21 + 7) = v11[78];
  *(v21 + 8) = v12[79];
  *(v21 + 9) = v12[80];
  *(v21 + 10) = a1;
  v22 = v29;
  v23 = v30;
  *(v21 + 11) = a3;
  *(v21 + 12) = v22;
  *(v21 + 13) = v23;
  (*(v14 + 32))(&v21[v19], v18, v28);
  *&v21[v27] = v7;
  v24 = v31;
  *&v21[v20] = v31;

  sub_1CEFD09A0(v24);
  sub_1CF53AC20(a3, v24, sub_1CF574BC8, v21);
}

uint64_t sub_1CF56DBA0(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, unint64_t a8)
{
  v46 = a5;
  v47 = a8;
  v44 = a3;
  v45 = a4;
  v38 = a1;
  v11 = *a2;
  v12 = *a3;
  v42 = *a7;
  v43 = v11;
  v13 = *(v12 + 80);
  v14 = sub_1CF9E75D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  v41 = &v36 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v40 = v14;
  v39 = sub_1CF9E8238();
  v19 = *(v39 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v39);
  v23 = &v36 - v22;
  (*(v19 + 16))(&v36 - v22, v38, v21);
  (*(v15 + 16))(v18, a6, v14);
  v24 = (*(v19 + 80) + 80) & ~*(v19 + 80);
  v38 = (v20 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (*(v15 + 80) + v26 + 16) & ~*(v15 + 80);
  v37 = (v16 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v30 = v42;
  v29 = v43;
  *(v28 + 2) = v42[75];
  *(v28 + 3) = v30[76];
  *(v28 + 4) = v29[77];
  *(v28 + 5) = v29[78];
  *(v28 + 6) = v30[77];
  *(v28 + 7) = v30[78];
  *(v28 + 8) = v29[79];
  *(v28 + 9) = v29[80];
  (*(v19 + 32))(&v28[v24], v23, v39);
  v31 = v45;
  *&v28[v38] = v44;
  *&v28[v25] = a2;
  v32 = &v28[v26];
  v33 = v46;
  *v32 = v31;
  *(v32 + 1) = v33;
  (*(v15 + 32))(&v28[v36], v41, v40);
  *&v28[v37] = a7;
  v34 = v47;
  *&v28[v27] = v47;

  sub_1CEFD09A0(v34);
  sub_1CF92DE44("backgroundMaterialize(concreteDB:lastMaterializedLevel:id:request:requestCompleted:)", 84, 2u, sub_1CF045408, 0, nullsub_1, 0, sub_1CF574C9C, v28);
}

void sub_1CF56DFA0(void *a1, void *a2, uint64_t *a3, uint64_t a4, void (*a5)(id), uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v89 = a8;
  v91 = a7;
  v101 = a6;
  v102 = a5;
  v96 = a4;
  v100 = a2;
  v93 = a1;
  v10 = *a3;
  v11 = *a3;
  v12 = *(*a3 + 80);
  v13 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = *(TupleTypeMetadata2 - 8);
  v14 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v92 = v78 - v15;
  v99 = *(v13 - 8);
  v16 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v88 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v86 = v78 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v94 = v78 - v22;
  v97 = a3;
  v23 = *(v10 + 88);
  v103 = v12;
  v104 = v23;
  v85 = *(v11 + 96);
  v105 = v85;
  v24 = type metadata accessor for ReconciliationID();
  v25 = sub_1CF9E75D8();
  v90 = *(v25 - 8);
  v26 = v90[8];
  MEMORY[0x1EEE9AC00](v25);
  v28 = v78 - v27;
  v29 = *(v12 - 8);
  v30 = v29[8];
  MEMORY[0x1EEE9AC00](v31);
  v84 = v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v78 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v98 = v78 - v37;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v38 = sub_1CF9E8238();
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = (v78 - v41);
  (*(v43 + 16))(v78 - v41, v100, v38, v40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = *v42;
    v45 = *v42;
    v102(v44);

    return;
  }

  v83 = v29[6];
  if (v83(v42, 1, v12) == 1)
  {
    v102(0);
    return;
  }

  v82 = v29 + 6;
  v100 = v29;
  v46 = v29 + 4;
  v47 = v29[4];
  v48 = v98;
  v78[1] = v46;
  v78[0] = v47;
  v47(v98, v42, v12);
  v49 = v93[3];
  v50 = v93[4];
  v51 = __swift_project_boxed_opaque_existential_1(v93, v49);
  v52 = v106;
  sub_1CF554678(v96, 1, v51, v49, *(v50 + 8), v28);
  if (v52)
  {

    (*(*(v24 - 8) + 56))(v28, 1, 1, v24);
    v106 = 0;
    v24 = v25;
    v53 = v99;
    v54 = v90;
LABEL_9:
    (v54[1])(v28, v24);
    goto LABEL_10;
  }

  v106 = 0;
  v54 = *(v24 - 8);
  (v54[7])(v28, 0, 1, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = v99;
    goto LABEL_9;
  }

  (v78[0])(v35, v28, v12);
  v75 = *(*(v85 + 40) + 8);
  v76 = sub_1CF9E6868();
  v77 = v100[1];
  v77(v35, v12);
  if (v76)
  {
    v102(0);
    v77(v48, v12);
    return;
  }

  v53 = v99;
LABEL_10:
  v55 = v100;
  v56 = v100[2];
  v57 = v94;
  v90 = v100 + 2;
  v80 = v56;
  v56(v94, v48, v12);
  v58 = v55[7];
  v81 = v55 + 7;
  v79 = v58;
  v58(v57, 0, 1, v12);
  v59 = *(TupleTypeMetadata2 + 48);
  v60 = v53;
  v61 = *(v53 + 16);
  v62 = v92;
  v61(v92, v57, v13);
  v93 = v59;
  v61(v59 + v62, v91, v13);
  v63 = v83;
  if (v83(v62, 1, v12) != 1)
  {
    v65 = v86;
    v61(v86, v62, v13);
    v66 = v93;
    if (v63(v93 + v62, 1, v12) != 1)
    {
      v71 = v84;
      (v78[0])(v84, v66 + v62, v12);
      v72 = *(*(v85 + 40) + 8);
      v73 = sub_1CF9E6868();
      v74 = v100[1];
      v74(v71, v12);
      v64 = *(v99 + 8);
      v64(v94, v13);
      v74(v65, v12);
      v64(v62, v13);
      v68 = v101;
      v67 = v102;
      if (v73)
      {
        v102(0);
        goto LABEL_19;
      }

LABEL_16:
      v69 = v88;
      v70 = v98;
      v80(v88, v98, v12);
      v79(v69, 0, 1, v12);
      sub_1CF56D908(v96, v69, v97, a9, v67, v68);
      v64(v69, v13);
      (v100[1])(v70, v12);
      return;
    }

    v64 = *(v99 + 8);
    v64(v94, v13);
    (v100[1])(v65, v12);
LABEL_15:
    v67 = v102;
    (*(v87 + 8))(v62, TupleTypeMetadata2);
    v68 = v101;
    goto LABEL_16;
  }

  v64 = *(v60 + 8);
  v64(v57, v13);
  if (v63(v93 + v62, 1, v12) != 1)
  {
    goto LABEL_15;
  }

  v64(v62, v13);
  v102(0);
LABEL_19:
  (v100[1])(v98, v12);
}

uint64_t sub_1CF56E9AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, unint64_t, unint64_t, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v136 = a8;
  v137 = a4;
  v130 = a7;
  v132 = a6;
  v133 = a5;
  v116 = a3;
  v129 = a2;
  v135 = a1;
  v10 = *v8;
  v117 = v10;
  v11 = v10[76];
  v134 = v10[78];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = v10[77];
  v14 = v10[75];
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v138 = AssociatedTypeWitness;
  v139 = v15;
  v140 = AssociatedConformanceWitness;
  v141 = v17;
  v112 = type metadata accessor for ReconciliationID();
  v18 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v101 - v19;
  v114 = sub_1CF9E75D8();
  v113 = *(v114 - 8);
  v20 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v121 = &v101 - v21;
  v138 = v15;
  v139 = AssociatedTypeWitness;
  v123 = AssociatedTypeWitness;
  v120 = v17;
  v140 = v17;
  v141 = AssociatedConformanceWitness;
  v122 = AssociatedConformanceWitness;
  v108 = type metadata accessor for ReconciliationID();
  v22 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v101 - v23;
  v128 = v15;
  v110 = sub_1CF9E75D8();
  v109 = *(v110 - 8);
  v24 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v119 = &v101 - v25;
  v106 = type metadata accessor for ItemReconciliationHalf();
  v105 = *(v106 - 8);
  v26 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v101 - v27;
  v126 = v14;
  v127 = v11;
  v138 = v14;
  v139 = v11;
  v125 = v13;
  v140 = v13;
  v141 = v134;
  v118 = type metadata accessor for ItemReconciliation();
  v124 = sub_1CF9E75D8();
  v115 = *(v124 - 8);
  v28 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v30 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v101 - v32;
  v34 = swift_allocObject();
  v35 = v10;
  v36 = v130;
  v38 = v135;
  v37 = v136;
  v34[2] = v130;
  v34[3] = v37;
  v34[4] = v38;
  v34[5] = v9;
  v131 = v34;
  v39 = v38[4];
  v40 = v35[72];
  v41 = *(*v39 + 440);
  v42 = *(v37 + 8);

  v43 = v36;
  v44 = v41(v9 + v40, v137, v36, v42);
  v46 = v42;
  v101 = v30;
  v47 = v129;
  v102 = v33;
  v48 = v135;
  v103 = v40;
  v49 = v128;
  if (v44)
  {
    v50 = v137;
    v51 = v9;
    v52 = v46;
  }

  else
  {
    v51 = v9;
    v50 = v137;
    v52 = v46;
    if (((*(*v39 + 448))(v9 + v103, v137, v36, v46) & 1) == 0 && (*(v9 + 140) & 0x40) == 0)
    {
      v141 = v36;
      v142 = v136;
      v66 = __swift_allocate_boxed_opaque_existential_0(&v138);
      (*(*(v36 - 8) + 16))(v66, v50, v36);
      v133(&v138, 0, 0xD000000000000017, 0x80000001CFA52F80, 0);
      goto LABEL_15;
    }
  }

  if (v47)
  {
    v53 = v48[2];
    v54 = v103;
    v55 = v102;
    sub_1CF68DDB0(v51 + v103, v50, v36, v52, v102);
    v56 = v115;
    v57 = v101;
    v58 = v55;
    v59 = v124;
    (*(v115 + 16))(v101, v58, v124);
    v60 = *(v118 - 8);
    if ((*(v60 + 48))(v57, 1, v118) == 1)
    {
      (*(v56 + 8))(v57, v59);
      v61 = v134;
      v62 = v116;
      v63 = v56;
      v65 = v126;
      v64 = v127;
    }

    else
    {
      v92 = v105;
      v93 = v104;
      v94 = v106;
      (*(v105 + 16))(v104, v57, v106);
      (*(v60 + 8))(v57, v118);
      v95 = v93[*(v94 + 52)];
      (*(v92 + 8))(v93, v94);
      v61 = v134;
      v62 = v116;
      v63 = v56;
      v65 = v126;
      v64 = v127;
      if (v95 == 2)
      {
        v141 = v43;
        v142 = v136;
        v96 = __swift_allocate_boxed_opaque_existential_0(&v138);
        (*(*(v43 - 1) + 16))(v96, v50, v43);
        v133(&v138, 0, 0, 0, 0);

LABEL_19:
        (*(v63 + 8))(v102, v124);
        return sub_1CEFCCC44(&v138, &unk_1EC4C1B30, &qword_1CFA05300);
      }
    }

    v138 = v65;
    v139 = v64;
    v140 = v125;
    v141 = v61;
    type metadata accessor for JobResult();
    v97 = sub_1CF57488C(v51 + v54, v51[15], v51[16], v51[17], 0x400000);
    sub_1CF803A0C(v62, v97);

    v141 = v43;
    v142 = v136;
    v98 = __swift_allocate_boxed_opaque_existential_0(&v138);
    (*(*(v43 - 1) + 16))(v98, v50, v43);
    sub_1CF4810BC();
    v99 = swift_allocError();
    *v100 = 3;
    v133(&v138, 0, 0, 0, v99);

    goto LABEL_19;
  }

  if (sub_1CF056558())
  {
    v138 = v126;
    v139 = v127;
    v140 = v125;
    v141 = v134;
    type metadata accessor for ConcreteDatabase();
    v135 = swift_dynamicCastClassUnconditional();
    v67 = *(v49 - 8);
    (*(v67 + 56))(v119, 1, 1, v49);
    v138 = v49;
    v139 = v123;
    v140 = v120;
    v141 = v122;
    type metadata accessor for FPFSID();
    v68 = *(v67 + 16);
    v69 = v103;
    v70 = v9;
    v71 = v107;
    v68(v107, v9 + v103, v49);
    swift_storeEnumTagMultiPayload();
    v134 = sub_1CF554514(v71);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v73 = swift_allocBox();
    v75 = v74;
    v76 = *(TupleTypeMetadata2 + 48);
    v68(v74, v70 + v69, v49);
    swift_storeEnumTagMultiPayload();
    *&v75[v76] = v70[15];
    v77 = v119;
    sub_1CF56D908(v135, v119, v134, v73 | 0x8000000000000004, sub_1CF574B78, v131);

    (*(v109 + 8))(v77, v110);
  }

  else
  {
    v135 = (*(*v48 + 176))();
    v138 = v127;
    v139 = v126;
    v140 = v134;
    v141 = v125;
    type metadata accessor for ConcreteDatabase();
    v134 = swift_dynamicCastClassUnconditional();
    v78 = v123;
    (*(*(v123 - 8) + 56))(v121, 1, 1, v123);
    v138 = v78;
    v139 = v49;
    v140 = v122;
    v141 = v120;
    type metadata accessor for FPFSID();
    v79 = *(*(v49 - 8) + 16);
    v80 = v103;
    v81 = v9;
    v82 = v9 + v103;
    v83 = v111;
    v79(v111, v82, v49);
    swift_storeEnumTagMultiPayload();
    v130 = sub_1CF554514(v83);
    v84 = swift_getTupleTypeMetadata2();
    v85 = swift_allocBox();
    v87 = v86;
    v88 = *(v84 + 48);
    v79(v86, v81 + v80, v49);
    swift_storeEnumTagMultiPayload();
    *&v87[v88] = v81[15];
    v89 = v121;
    sub_1CF56D908(v134, v121, v130, v85 | 0x8000000000000004, sub_1CF574B78, v131);

    (*(v113 + 8))(v89, v114);
  }

  v141 = v43;
  v142 = v136;
  v90 = __swift_allocate_boxed_opaque_existential_0(&v138);
  (*(*(v43 - 1) + 16))(v90, v137, v43);
  type metadata accessor for RequestContinuation();
  v91 = swift_allocObject();
  v133(&v138, v91, 0, 0, 0);

LABEL_15:

  return sub_1CEFCCC44(&v138, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF56F844(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v28 = a1;
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 96);
  v6 = *(*a2 + 104);
  v29 = *(*a2 + 80);
  v30 = v4;
  v31 = v5;
  v32 = v6;
  v7 = type metadata accessor for PersistenceTrigger();
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v29 = AssociatedTypeWitness;
  v30 = v13;
  v31 = AssociatedConformanceWitness;
  v32 = v15;
  type metadata accessor for ReconciliationID();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v17 = *(TupleTypeMetadata3 + 48);
  v18 = *(TupleTypeMetadata3 + 64);
  v19 = v25;
  *v11 = sub_1CF03D760();
  (*(*(AssociatedTypeWitness - 8) + 16))(&v11[v17], v19 + *(*v19 + 576), AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v20 = v28;
  *&v11[v18] = v28;
  v21 = v26;
  swift_storeEnumTagMultiPayload();
  v22 = *(*a2 + 312);
  v23 = v20;
  v22(v11);
  return (*(v27 + 8))(v11, v21);
}

uint64_t sub_1CF56FB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, void, unint64_t, unint64_t, id), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v246 = a8;
  v244 = a7;
  v243 = a6;
  v242 = a5;
  v247 = a4;
  v230 = a3;
  v225 = a2;
  v245 = a1;
  v240 = *v8;
  v9 = *(v240 + 77);
  v10 = *(v240 + 75);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(v240 + 78);
  v241 = v8;
  v13 = *(v240 + 76);
  v14 = v12;
  *&v254 = AssociatedTypeWitness;
  *(&v254 + 1) = swift_getAssociatedTypeWitness();
  v222 = *(&v254 + 1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v255 = AssociatedConformanceWitness;
  *(&v255 + 1) = swift_getAssociatedConformanceWitness();
  v220 = *(&v255 + 1);
  v207 = type metadata accessor for ThrottlingKey();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v206 = sub_1CF9E75D8();
  v209 = *(v206 - 8);
  v15 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v205 = &v198 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v208 = &v198 - v18;
  v227 = AssociatedTypeWitness;
  v226 = *(AssociatedTypeWitness - 8);
  v19 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v211 = &v198 - v21;
  v224 = sub_1CF9E5CF8();
  v218 = *(v224 - 8);
  v22 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v223 = &v198 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for SnapshotMutation();
  v216 = *(v217 - 8);
  v24 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v217);
  v215 = &v198 - v25;
  *&v254 = v10;
  *(&v254 + 1) = v13;
  *&v255 = v9;
  *(&v255 + 1) = v14;
  v214 = type metadata accessor for ReconciliationMutation();
  v213 = *(v214 - 8);
  v26 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v212 = &v198 - v27;
  v28 = type metadata accessor for SnapshotItem();
  v229 = sub_1CF9E75D8();
  v228 = *(v229 - 8);
  v29 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v229);
  v31 = &v198 - v30;
  *&v254 = v10;
  *(&v254 + 1) = v13;
  *&v255 = v9;
  *(&v255 + 1) = v14;
  v32 = type metadata accessor for ItemReconciliation();
  v33 = sub_1CF9E75D8();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v198 - v36;
  v239 = v32;
  v38 = *(v32 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v238 = &v198 - v41;
  v235 = *(v28 - 8);
  v42 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v219 = &v198 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  *&v233 = &v198 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v234 = &v198 - v48;
  *&v236 = v10;
  *&v254 = v10;
  *(&v254 + 1) = v13;
  *&v232 = v13;
  *&v237 = v9;
  v49 = v14;
  v50 = v245;
  v231 = v49;
  *&v255 = v9;
  *(&v255 + 1) = v49;
  type metadata accessor for ConcreteDatabase();
  v51 = swift_dynamicCastClass();
  if (!v51)
  {
    v56 = v244;
    *(&v255 + 1) = v244;
    *&v256 = v246;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v254);
    (*(*(v56 - 8) + 16))(boxed_opaque_existential_0, v247, v56);
    v58 = FPNotSupportedError();
    v242(&v254, 0, 0xD000000000000013, 0x80000001CFA52E30, v58);

LABEL_8:
    v69 = &v254;
    return sub_1CEFCCC44(v69, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v203 = v31;
  v52 = v51;
  v204 = v38;
  v202 = v28;
  v53 = *(v50 + 16);
  v54 = *(v240 + 72);
  v55 = *(v246 + 8);

  sub_1CF68DDB0(v241 + v54, v247, v244, v55, v37);
  v201 = v55;
  v59 = v204;
  v60 = v239;
  v61 = (*(v204 + 48))(v37, 1, v239);
  if (v61 == 1)
  {
    (*(v34 + 8))(v37, v33);
    v62 = v244;
    *(&v255 + 1) = v244;
    *&v256 = v246;
    v63 = __swift_allocate_boxed_opaque_existential_0(&v254);
    (*(*(v62 - 8) + 16))(v63, v247, v62);
    v242(&v254, 0, 0xD00000000000001BLL, 0x80000001CFA52E50, 0);

    goto LABEL_8;
  }

  v200 = v52;
  v64 = v238;
  (*(v59 + 32))(v238, v37, v60);
  v65 = type metadata accessor for ItemReconciliationHalf();
  v66 = v247;
  if ((v64[*(v65 + 36)] & 0x10) == 0)
  {
    v67 = v244;
    *(&v255 + 1) = v244;
    *&v256 = v246;
    v68 = __swift_allocate_boxed_opaque_existential_0(&v254);
    (*(*(v67 - 8) + 16))(v68, v66, v67);
    v242(&v254, 0, 0xD00000000000001BLL, 0x80000001CFA52E70, 0);

    (*(v59 + 8))(v64, v60);
    goto LABEL_8;
  }

  v71 = *(v245 + 32);
  v72 = v241;
  v73 = v244;
  v74 = v201;
  (*(*v71 + 328))(&v259, v241 + v54, v247, v244, v201);
  if (v260)
  {
LABEL_11:
    *(&v255 + 1) = v73;
    *&v256 = v246;
    v75 = __swift_allocate_boxed_opaque_existential_0(&v254);
    (*(*(v73 - 8) + 16))(v75, v66, v73);
    v242(&v254, 0, 0xD00000000000001BLL, 0x80000001CFA52E50, 0);

    (*(v204 + 8))(v238, v239);
    goto LABEL_8;
  }

  v76 = v259;
  v77 = v203;
  (*(*v71 + 240))(v72 + v54, 1, v66, v73, v74);
  v78 = v235;
  v79 = v202;
  if ((*(v235 + 48))(v77, 1, v202) == 1)
  {
    (*(v228 + 8))(v77, v229);
    goto LABEL_11;
  }

  v229 = v71;
  v80 = v233;
  (*(v78 + 32))(v233, v77, v79);
  v81 = *(v78 + 16);
  v81(v234, v80, v79);
  v82 = v80 + *(v79 + 48);
  v83 = type metadata accessor for ItemMetadata();
  v84 = v238;
  if (*(v82 + *(v83 + 60)) == 1 && !sub_1CF07CD80(v239) && !v76)
  {
    *&v254 = v236;
    *(&v254 + 1) = v232;
    *&v255 = v237;
    *(&v255 + 1) = v231;
    type metadata accessor for JobResult();
    v85 = v227;
    *&v254 = v227;
    *(&v254 + 1) = v222;
    *&v255 = AssociatedConformanceWitness;
    *(&v255 + 1) = v220;
    type metadata accessor for ReconciliationID();
    v86 = *(swift_getTupleTypeMetadata2() + 48);
    v87 = *(v226 + 16);
    v199 = v54;
    v88 = v212;
    v87(v212, v241 + v54, v85);
    swift_storeEnumTagMultiPayload();
    *(v88 + v86) = 3;
    v89 = v214;
    swift_storeEnumTagMultiPayload();
    v90 = v230;
    sub_1CF06EB44(v230, v88);
    (*(v213 + 8))(v88, v89);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v92 = *(TupleTypeMetadata3 + 48);
    v93 = v215;
    v94 = &v215[*(TupleTypeMetadata3 + 64)];
    v87(v215, v241 + v199, v85);
    *(v93 + v92) = 1;
    *v94 = 0xD000000000000029;
    *(v94 + 1) = 0x80000001CFA52F30;
    v95 = v217;
    swift_storeEnumTagMultiPayload();
    sub_1CF9491AC(v90, v93);
    (*(v216 + 8))(v93, v95);
    *&v254 = v236;
    *(&v254 + 1) = v232;
    *&v255 = v237;
    *(&v255 + 1) = v231;
    type metadata accessor for Maintenance.IgnoreChildrenOfIgnoredHierarchy();
    v96 = v223;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v98 = v97;
    v99 = *(v218 + 8);
    result = v99(v96, v224);
    v100 = v98 * 1000000000.0;
    if (COERCE__INT64(fabs(v98 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v101 = v247;
      v102 = v235;
      if (v100 > -9.22337204e18)
      {
        if (v100 < 9.22337204e18)
        {
          v103 = v241;
          v104 = sub_1CF559420(v241 + v54, 0, v100, 0);
          sub_1CF803A0C(v230, v104);

          v105 = v103[17];
          if ((v105 & 0x4000) == 0)
          {
            v103[17] = v105 | 0x4000;
          }

          v106 = v101;
          *&v254 = v236;
          *(&v254 + 1) = v232;
          *&v255 = v237;
          *(&v255 + 1) = v231;
          type metadata accessor for DiskImport.ContinueDiskImport();
          v107 = v211;
          sub_1CF046AB4();
          v108 = v223;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v110 = v109;
          result = v99(v108, v224);
          v111 = v110 * 1000000000.0;
          if (COERCE__INT64(fabs(v110 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v112 = v242;
            v113 = v246;
            if (v111 > -9.22337204e18)
            {
              if (v111 < 9.22337204e18)
              {
                v114 = sub_1CF559420(v107, 0x2000000000000000, v111, 0x4000);
                (*(v226 + 8))(v107, v227);
                sub_1CF803A0C(v230, v114);

                *(&v255 + 1) = v73;
                *&v256 = v113;
                v115 = __swift_allocate_boxed_opaque_existential_0(&v254);
                (*(*(v73 - 8) + 16))(v115, v106, v73);
                v112(&v254, 0, 0x6C6169726574616DLL, 0xEC00000064657A69, 0);

                v116 = *(v102 + 8);
                v117 = v202;
                v116(v233, v202);
                (*(v204 + 8))(v238, v239);
                v116(v234, v117);
                goto LABEL_8;
              }

              goto LABEL_60;
            }

LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    __break(1u);
    goto LABEL_57;
  }

  if (!v225)
  {
    v124 = *(v235 + 8);
    v235 += 8;
    v240 = v124;
    v124(v233, v202);
    (*(v204 + 8))(v84, v239);
    v125 = v227;
    *&v254 = v227;
    *(&v254 + 1) = v222;
    *&v255 = AssociatedConformanceWitness;
    *(&v255 + 1) = v220;
    type metadata accessor for ReconciliationID();
    sub_1CF550180();
    v126 = swift_getTupleTypeMetadata2();
    v239 = swift_allocBox();
    v128 = v127;
    v129 = *(v126 + 48);
    (*(v226 + 16))(v127, v241 + v54, v125);
    swift_storeEnumTagMultiPayload();
    *(v128 + v129) = [objc_opt_self() requestForSelf];
    v130 = v73;
    v131 = *(**(v245 + 24) + 384);
    v132 = v131(v234, 1, 0, 1, v247, v130, v201);
    v238 = v83;
    v253 = v132;
    *&v237 = v132;
    v162 = TupleTypeMetadata2;
    v163 = sub_1CF9E6E58();
    WitnessTable = swift_getWitnessTable();
    v165 = v208;
    *&v236 = v163;
    *&v233 = WitnessTable;
    sub_1CF9E7118();

    v166 = (*(v162 - 8) + 48);
    v167 = v162;
    v168 = *v166;
    v169 = (*v166)(v165, 1, v167);
    if (v169 == 1)
    {
      v170 = *(v209 + 8);
      v171 = v165;
      v209 += 8;
      v172 = v170;
      v170(v171, v206);
      *&v254 = v131(v234, 0, 0, 1, v247, v244, v201);
      v176 = v205;
      sub_1CF9E7118();

      v177 = v168(v176, 1, TupleTypeMetadata2);
      if (v177 == 1)
      {
        v172(v205, v206);
        v178 = 0;
        v237 = xmmword_1CF9FC980;
        v236 = 0u;
        v233 = 0u;
        v232 = 0u;
      }

      else
      {
        v179 = &v205[*(TupleTypeMetadata2 + 48)];
        v180 = *(v179 + 1);
        v236 = *v179;
        v233 = v180;
        v181 = *(v179 + 3);
        v237 = *(v179 + 2);
        v232 = v181;
        v178 = *(v179 + 8);
        (*(*(v207 - 8) + 8))();
      }

      v254 = v236;
      v255 = v233;
      v256 = v237;
      v257 = v232;
      v258 = v178;
    }

    else
    {
      v173 = &v165[*(TupleTypeMetadata2 + 48)];
      v174 = *(v173 + 3);
      v250 = *(v173 + 2);
      v251 = v174;
      v252 = *(v173 + 8);
      v175 = *v173;
      v249 = *(v173 + 1);
      v248 = v175;
      (*(*(v207 - 8) + 8))(v165);
      v256 = v250;
      v257 = v251;
      v258 = v252;
      v254 = v248;
      v255 = v249;
    }

    v182 = v244;
    v183 = v246;
    v184 = v202;
    v185 = v238;
    v186 = v234;
    v81(v219, v234, v202);
    if (v186[*(v184 + 48) + *(v185 + 16)])
    {
      v187 = 1;
      v188 = v241;
    }

    else
    {
      v188 = v241;
      v187 = *(&v256 + 1) != 1 && v257 == 6;
    }

    v189 = v188[17] == 0x40000000;
    v190 = swift_allocObject();
    v190[2] = v182;
    v190[3] = v183;
    v191 = v245;
    v190[4] = v200;
    v190[5] = v191;
    v190[6] = v188;
    swift_retain_n();

    v192 = v202;
    v193 = swift_getWitnessTable();
    v194 = v219;
    sub_1CF53E22C(v219, v187, v189, v239 | 0x4000000000000000, sub_1CF574AC4, v190, v192, v193);

    v195 = v240;
    v240(v194, v192);
    *(&v249 + 1) = v182;
    *&v250 = v183;
    v196 = __swift_allocate_boxed_opaque_existential_0(&v248);
    (*(*(v182 - 8) + 16))(v196, v247, v182);
    type metadata accessor for RequestContinuation();
    v197 = swift_allocObject();
    v242(&v248, v197, 0, 0, 0);

    sub_1CEFCCC44(&v254, qword_1EC4C17A0, "4\r\n");

    v195(v234, v192);
    v69 = &v248;
    return sub_1CEFCCC44(v69, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  if (v76)
  {
    *&v254 = v236;
    *(&v254 + 1) = v232;
    *&v255 = v237;
    *(&v255 + 1) = v231;
    type metadata accessor for JobResult();
    v118 = sub_1CF57488C(v241 + v54, v241[15], v241[16], v241[17], 0x10000);
    sub_1CF803A0C(v230, v118);

    *(&v255 + 1) = v73;
    *&v256 = v246;
    v119 = __swift_allocate_boxed_opaque_existential_0(&v254);
    (*(*(v73 - 8) + 16))(v119, v247, v73);
    sub_1CF4810BC();
    v120 = swift_allocError();
    *v121 = 3;
    v242(&v254, 0, 0xD000000000000023, 0x80000001CFA52EA0, v120);

    v122 = *(v235 + 8);
    v123 = v202;
    v122(v233, v202);
    (*(v204 + 8))(v84, v239);
LABEL_41:
    v122(v234, v123);
    goto LABEL_8;
  }

  v133 = v239;
  v134 = sub_1CF07CD80(v239);
  v135 = v247;
  if (v134)
  {
LABEL_40:
    *(&v255 + 1) = v73;
    *&v256 = v246;
    v161 = __swift_allocate_boxed_opaque_existential_0(&v254);
    (*(*(v73 - 8) + 16))(v161, v135, v73);
    v242(&v254, 0, 0x6C6169726574616DuLL, 0xEC00000064657A69, 0);

    v122 = *(v235 + 8);
    v123 = v202;
    v122(v233, v202);
    (*(v204 + 8))(v84, v133);
    goto LABEL_41;
  }

  *&v254 = v236;
  *(&v254 + 1) = v232;
  *&v255 = v237;
  *(&v255 + 1) = v231;
  type metadata accessor for JobResult();
  v136 = v227;
  *&v254 = v227;
  *(&v254 + 1) = v222;
  *&v255 = AssociatedConformanceWitness;
  *(&v255 + 1) = v220;
  type metadata accessor for ReconciliationID();
  v137 = *(swift_getTupleTypeMetadata2() + 48);
  v138 = *(v226 + 16);
  v199 = v54;
  v139 = v212;
  v138(v212, v241 + v54, v136);
  swift_storeEnumTagMultiPayload();
  *(v139 + v137) = 3;
  v140 = v214;
  swift_storeEnumTagMultiPayload();
  v141 = v230;
  sub_1CF06EB44(v230, v139);
  (*(v213 + 8))(v139, v140);
  v142 = swift_getTupleTypeMetadata3();
  v143 = *(v142 + 48);
  v144 = v215;
  v145 = &v215[*(v142 + 64)];
  v138(v215, v241 + v199, v136);
  *(v144 + v143) = 1;
  *v145 = 0xD000000000000036;
  *(v145 + 1) = 0x80000001CFA52EF0;
  v146 = v217;
  swift_storeEnumTagMultiPayload();
  sub_1CF9491AC(v141, v144);
  (*(v216 + 8))(v144, v146);
  *&v254 = v236;
  *(&v254 + 1) = v232;
  *&v255 = v237;
  *(&v255 + 1) = v231;
  type metadata accessor for Maintenance.IgnoreChildrenOfIgnoredHierarchy();
  v147 = v223;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v149 = v148;
  v150 = *(v218 + 8);
  result = v150(v147, v224);
  v151 = v149 * 1000000000.0;
  if (COERCE__INT64(fabs(v149 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v151 <= -9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v133 = v239;
  if (v151 >= 9.22337204e18)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v152 = v241;
  v153 = sub_1CF559420(v241 + v54, 0, v151, 0);
  sub_1CF803A0C(v230, v153);

  v154 = v152[17];
  if ((v154 & 0x4000) == 0)
  {
    v152[17] = v154 | 0x4000;
  }

  *&v254 = v236;
  *(&v254 + 1) = v232;
  *&v255 = v237;
  *(&v255 + 1) = v231;
  type metadata accessor for DiskImport.ContinueDiskImport();
  v155 = v211;
  sub_1CF046AB4();
  v156 = v223;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v158 = v157;
  result = v150(v156, v224);
  v159 = v158 * 1000000000.0;
  if (COERCE__INT64(fabs(v158 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_64;
  }

  v84 = v238;
  if (v159 <= -9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v159 < 9.22337204e18)
  {
    v160 = sub_1CF559420(v155, 0x2000000000000000, v159, 0x4000);
    (*(v226 + 8))(v155, v227);
    sub_1CF803A0C(v230, v160);

    v135 = v247;
    goto LABEL_40;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1CF571D24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*(a2 + 32) + 16);
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a3;
  v13[5] = a2;
  v13[6] = a1;
  v13[7] = a4;
  v14 = *(*v12 + 704);

  v15 = a1;

  v14(sub_1CF574AD4, v13);
}

uint64_t sub_1CF571E3C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a1;

  v13 = a3;

  sub_1CF92DE44("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, nullsub_1, 0, sub_1CF574B54, v12);
}

void sub_1CF571F44(void *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v84 = a5;
  v88 = a4;
  v89 = a3;
  v6 = *(*a2 + 624);
  v7 = *(*a2 + 632);
  v8 = *(*a2 + 640);
  v90 = *(*a2 + 616);
  v93 = v90;
  v94 = v6;
  v86 = v8;
  v87 = v6;
  v85 = v7;
  v95 = v7;
  v96 = v8;
  v9 = type metadata accessor for PersistenceTrigger();
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v71 - v11;
  v13 = sub_1CF9E5CF8();
  v83 = *(v13 - 8);
  v14 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E6118();
  v82 = *(v17 - 8);
  v18 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v22 = a1[4];
  v23 = __swift_project_boxed_opaque_existential_1(a1, v21);
  v24 = v91;
  sub_1CF5AD9F8(v23, v21, v22);
  if (!v24)
  {
    v76 = v17;
    v77 = v16;
    v78 = a1;
    v79 = v13;
    v75 = v12;
    v25 = v89;
    v91 = 0;
    if (!v89)
    {
      v49 = v84;
LABEL_12:
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v58 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v60 = swift_getAssociatedConformanceWitness();
      v93 = AssociatedTypeWitness;
      v94 = v58;
      v95 = AssociatedConformanceWitness;
      v96 = v60;
      type metadata accessor for ReconciliationID();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v62 = *(TupleTypeMetadata3 + 48);
      v63 = *(TupleTypeMetadata3 + 64);
      v64 = v88;
      v65 = sub_1CF03D760();
      v66 = v75;
      *v75 = v65;
      (*(*(AssociatedTypeWitness - 8) + 16))(&v66[v62], v64 + *(*v64 + 576), AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      v67 = v89;
      *&v66[v63] = v89;
      v68 = v81;
      swift_storeEnumTagMultiPayload();
      v69 = *(*v49 + 312);
      v70 = v67;
      v69(v66);
      (*(v80 + 8))(v66, v68);
      return;
    }

    v26 = v89;
    v27 = fpfs_current_or_default_log();
    v28 = v20;
    sub_1CF9E6128();
    v29 = v25;
    v30 = v88;

    v31 = sub_1CF9E6108();
    v32 = sub_1CF9E72A8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v71 = v33;
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v93 = v74;
      *v33 = 136446466;
      v34 = *(*v30 + 576);
      v72 = v32;
      v35 = v85;
      v36 = v90;
      swift_getAssociatedTypeWitness();
      v37 = *(swift_getAssociatedConformanceWitness() + 16);
      v38 = sub_1CF9E7F98();
      v40 = v39;

      v41 = sub_1CEFD0DF0(v38, v40, &v93);

      v42 = v71;
      *(v71 + 1) = v41;
      *(v42 + 6) = 2112;
      v43 = v42;
      swift_getErrorValue();
      v44 = Error.prettyDescription.getter(v92);
      *(v43 + 14) = v44;
      v45 = v73;
      *v73 = v44;
      _os_log_impl(&dword_1CEFC7000, v31, v72, "ignored item %{public}s materialization failed asynchronously: %@", v43, 0x16u);
      sub_1CEFCCC44(v45, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v45, -1, -1);
      v46 = v74;
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x1D386CDC0](v46, -1, -1);
      MEMORY[0x1D386CDC0](v43, -1, -1);

      (*(v82 + 8))(v28, v76);
      v48 = v86;
      v47 = v87;
    }

    else
    {

      (*(v82 + 8))(v28, v76);
      v48 = v86;
      v47 = v87;
      v36 = v90;
      v35 = v85;
    }

    v50 = v78[4];
    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    v93 = v36;
    v94 = v47;
    v95 = v35;
    v96 = v48;
    type metadata accessor for Materialization.MaterializeIgnoredItem();
    v51 = sub_1CF57488C(v30 + *(*v30 + 576), v30[15], v30[16], v30[17], 0x10000);
    v52 = v77;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v54 = v53;
    (*(v83 + 8))(v52, v79);
    v55 = v54 * 1000000000.0;
    if (COERCE__INT64(fabs(v54 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v56 = v91;
      if (v55 > -9.22337204e18)
      {
        if (v55 < 9.22337204e18)
        {
          v49 = v84;
          sub_1CF5215C0(v51);

          if (v56)
          {
            return;
          }

          v91 = 0;
          goto LABEL_12;
        }

LABEL_16:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_1CF572770(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v52 = a4;
  v53 = a5;
  v51 = a3;
  v49 = a1;
  v8 = *v6;
  v9 = *(*v6 + 600);
  v10 = *(*v6 + 616);
  v11 = type metadata accessor for JobLockRule();
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v44 - v13;
  v50 = type metadata accessor for SnapshotItem();
  v14 = sub_1CF9E75D8();
  v45 = *(v14 - 8);
  v15 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v44 - v25;
  v27 = *(a2 + 32);
  v28 = *(v8 + 576);
  v29 = v55;
  (*(*v27 + 240))(&v6[v28], 1, v51, v52, v53, v24);
  if (!v29)
  {
    v52 = v26;
    v53 = AssociatedTypeWitness;
    v55 = 0;
    v30 = *(v50 - 8);
    if ((*(v30 + 48))(v17, 1) == 1)
    {
      (*(v45 + 8))(v17, v14);
      return 0;
    }

    else
    {
      v31 = v50;
      v32 = *(v50 + 36);
      v44 = v19;
      v33 = *(v19 + 16);
      v34 = v53;
      v33(v22, &v17[v32], v53);
      (*(v30 + 8))(v17, v31);
      v35 = v52;
      (*(v44 + 32))(v52, v22, v34);
      swift_beginAccess();
      sub_1CEFCCBDC((v6 + 56), v54, &unk_1EC4C1BE0, &unk_1CF9FD400);
      v36 = *(v6 + 15);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v38 = *(TupleTypeMetadata3 + 48);
      v39 = *(TupleTypeMetadata3 + 64);
      v40 = &v6[v28];
      v41 = v46;
      v33(v46, v40, v34);
      v33((v41 + v38), v35, v34);
      v33((v41 + v39), v35, v34);
      v42 = v48;
      swift_storeEnumTagMultiPayload();
      v27 = sub_1CF052B3C(v54, v36, v41);
      (*(v47 + 8))(v41, v42);
      sub_1CEFCCC44(v54, &unk_1EC4C1BE0, &unk_1CF9FD400);
      (*(v44 + 8))(v35, v34);
    }
  }

  return v27;
}

uint64_t sub_1CF572C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v90 = a7;
  v89 = a6;
  v88 = a5;
  v86 = a3;
  v13 = *v8;
  v14 = *(*v8 + 600);
  v15 = v13[76];
  v16 = v13[77];
  v17 = v13[78];
  *&v100 = v14;
  *(&v100 + 1) = v15;
  *&v101 = v16;
  *(&v101 + 1) = v17;
  v79 = type metadata accessor for ReconciliationMutation();
  v78 = *(v79 - 8);
  v18 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v75 = &v69 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  v20 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v73 = &v69 - v21;
  v81 = v14;
  *&v100 = v14;
  *(&v100 + 1) = v15;
  v77 = v15;
  v82 = v16;
  *&v101 = v16;
  *(&v101 + 1) = v17;
  v76 = v17;
  v22 = type metadata accessor for ItemReconciliation();
  v23 = sub_1CF9E75D8();
  v80 = *(v23 - 8);
  v24 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v69 - v25;
  v87 = v22;
  v83 = *(v22 - 8);
  v27 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v69 - v29;
  v74 = a1;
  v31 = *(a1 + 16);
  v32 = v13[72];
  v33 = a8;
  sub_1CF68DDB0(v9 + v32, a4, v90, *(a8 + 8), v26);
  v34 = v80;
  v70 = v32;
  v71 = v9;
  v35 = v81;
  v69 = a4;
  v72 = v33;
  v36 = v83;
  v37 = v87;
  if ((*(v83 + 48))(v26, 1, v87) == 1)
  {
    (*(v34 + 8))(v26, v23);
    v38 = AssociatedTypeWitness;
    v39 = v35;
    v40 = v82;
    v41 = v71;
  }

  else
  {
    (*(v36 + 32))(v30, v26, v37);
    v39 = v35;
    v40 = v82;
    v42 = type metadata accessor for ItemReconciliationHalf();
    v43 = v30;
    v44 = &v30[*(v42 + 68)];
    v45 = *(v44 + 1);
    v100 = *v44;
    v101 = v45;
    v46 = *(v44 + 3);
    v102 = *(v44 + 2);
    v103 = v46;
    v47 = v71;
    if (*(&v45 + 1) >> 60 != 11)
    {
      v58 = v42;
      v59 = v74;
      v60 = *(*(v74 + 32) + 16);
      v82 = v43;
      (*(v84 + 16))(v73, v71 + v70, AssociatedTypeWitness);
      sub_1CEFCCBDC(&v100, v99, &unk_1EC4BF260, &unk_1CFA01B60);

      swift_dynamicCast();
      v95 = v97;
      v96 = v98;
      v91 = v100;
      v92 = v101;
      v94 = v103;
      v93 = v102;
      AssociatedTypeWitness = *(v58 + 48);
      v61 = swift_allocObject();
      v62 = v72;
      v61[2] = v90;
      v61[3] = v62;
      v63 = v88;
      v61[4] = v59;
      v61[5] = v63;
      v64 = v86;
      v61[6] = v89;
      v61[7] = v64;
      v61[8] = v47;
      v65 = v36;
      v66 = *(*v60 + 808);
      sub_1CEFCCBDC(&v100, v99, &unk_1EC4BF260, &unk_1CFA01B60);

      v67 = v82;
      v66(&v95, &v91, &v82[AssociatedTypeWitness], 0, sub_1CF574904, v61);

      sub_1CEFCCC44(&v100, &unk_1EC4BF260, &unk_1CFA01B60);
      v99[0] = v91;
      v99[1] = v92;
      v99[2] = v93;
      v99[3] = v94;
      sub_1CEFCCC44(v99, &unk_1EC4BF260, &unk_1CFA01B60);
      return (*(v65 + 8))(v67, v87);
    }

    (*(v36 + 8))(v30, v37);
    v38 = AssociatedTypeWitness;
    v41 = v47;
  }

  *&v100 = v39;
  *(&v100 + 1) = v77;
  *&v101 = v40;
  *(&v101 + 1) = v76;
  v87 = type metadata accessor for JobResult();
  v48 = swift_getAssociatedTypeWitness();
  v49 = v38;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = swift_getAssociatedConformanceWitness();
  *&v100 = v49;
  *(&v100 + 1) = v48;
  *&v101 = AssociatedConformanceWitness;
  *(&v101 + 1) = v51;
  type metadata accessor for ReconciliationID();
  type metadata accessor for ReconciliationSideMutation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = v75;
  v54 = &v75[*(TupleTypeMetadata2 + 48)];
  (*(v84 + 16))(v75, v41 + v70, v49);
  swift_storeEnumTagMultiPayload();
  *v54 = 4;
  *(v54 + 8) = *(v41 + 120);
  swift_storeEnumTagMultiPayload();
  v55 = v79;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v86, v53);
  (*(v78 + 8))(v53, v55);
  v56 = v90;
  *(&v101 + 1) = v90;
  *&v102 = v72;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v100);
  (*(*(v56 - 8) + 16))(boxed_opaque_existential_0, v69, v56);
  v88(&v100, 0, 0, 0, 0);
  return sub_1CEFCCC44(&v100, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF5735F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v32 = a8;
  v33 = a5;
  v34 = a6;
  v29 = a4;
  v30 = a3;
  v12 = *a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v29 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  sub_1CEFCCBDC(a1, v17, &unk_1EC4BF310, &unk_1CF9FDB30);
  v19 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v23[2] = v12[10];
  v23[3] = v12[11];
  v23[4] = v31;
  v23[5] = v12[12];
  v23[6] = v12[13];
  v23[7] = v32;
  sub_1CEFE55D0(v17, v23 + v19, &unk_1EC4BF310, &unk_1CF9FDB30);
  v24 = v34;
  *(v23 + v20) = v33;
  *(v23 + v21) = v24;
  v25 = (v23 + v22);
  v26 = v29;
  *v25 = v30;
  v25[1] = v26;
  *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v27 = type metadata accessor for Continuation();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559088, v18, sub_1CF574918, v23, v27, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF5738A8(void *a1, void *a2, uint64_t a3, void *a4, void (*a5)(uint64_t *, void, void, void, id), uint64_t a6, uint64_t *a7)
{
  v120 = a7;
  v127 = a6;
  v128 = a5;
  v129 = a2;
  v130 = a4;
  v132 = a1;
  v7 = *(*a3 + 80);
  v8 = *(*a3 + 88);
  v9 = *(*a3 + 96);
  v10 = *a3;
  v124 = a3;
  v11 = *(v10 + 104);
  v134 = v7;
  v135 = v8;
  v136 = v9;
  v137 = v11;
  v109 = type metadata accessor for PersistenceTrigger();
  v108 = *(v109 - 8);
  v12 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v98 - v13;
  v14 = (*(*(v7 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v98 - v16;
  v116 = type metadata accessor for SnapshotItem();
  v17 = sub_1CF9E75D8();
  v118 = *(v17 - 8);
  v119 = v17;
  v18 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v117 = &v98 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v134 = AssociatedTypeWitness;
  v135 = v21;
  v136 = AssociatedConformanceWitness;
  v137 = v23;
  v110 = type metadata accessor for FileItemVersion();
  v113 = sub_1CF9E75D8();
  v112 = *(v113 - 8);
  v24 = *(v112 + 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v98 - v25;
  v26 = type metadata accessor for VFSItem(0);
  v121 = *(v26 - 8);
  v122 = v26;
  v27 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v114 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v123 = &v98 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = (&v98 - v36);
  v134 = v7;
  v135 = v8;
  v131 = v8;
  v136 = v9;
  v137 = v11;
  v126 = v11;
  v125 = type metadata accessor for ReconciliationMutation();
  v133 = *(v125 - 8);
  v38 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v40 = &v98 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = (&v98 - v43);
  sub_1CEFCCBDC(v129, &v98 - v43, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v129 = *v44;
    v134 = v7;
    v135 = v131;
    v136 = v9;
    v137 = v126;
    v123 = type metadata accessor for JobResult();
    v45 = swift_getAssociatedTypeWitness();
    v46 = swift_getAssociatedTypeWitness();
    v47 = swift_getAssociatedConformanceWitness();
    v48 = swift_getAssociatedConformanceWitness();
    v134 = v45;
    v135 = v46;
    v136 = v47;
    v137 = v48;
    type metadata accessor for ReconciliationID();
    type metadata accessor for ReconciliationSideMutation();
    v49 = &v40[*(swift_getTupleTypeMetadata2() + 48)];
    v50 = v130;
    (*(*(v45 - 8) + 16))(v40, v130 + *(*v130 + 576), v45);
    swift_storeEnumTagMultiPayload();
    *v49 = 4;
    *(v49 + 8) = *(v50 + 15);
    swift_storeEnumTagMultiPayload();
    v51 = v125;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v124, v40);
    (*(v133 + 8))(v40, v51);
    sub_1CF1A91AC(v132, &v134);
    v52 = v129;
    v53 = v129;
    v128(&v134, 0, 0, 0, v52);

    v54 = &unk_1EC4C1B30;
    v55 = &qword_1CFA05300;
    v56 = &v134;
  }

  else
  {
    v129 = v7;
    v106 = v40;
    v57 = v131;
    sub_1CEFE55D0(v44, v37, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCBDC(v37, v34, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v58 = v37;
    if ((*(v121 + 48))(v34, 1, v122) == 1)
    {
      sub_1CEFCCC44(v34, &unk_1EC4BEC00, &unk_1CF9FCB60);
      sub_1CF1A91AC(v132, &v134);
      v59 = v130;
      v60 = *(*v130 + 576);
      v61 = v111;
      (*(*(v110 - 8) + 56))(v111, 1, 1);
      type metadata accessor for FileTreeError();
      swift_getWitnessTable();
      v62 = swift_allocError();
      sub_1CF72C4D8(v59 + v60, v61, 0, v63);
      (*(v112 + 1))(v61, v113);
      v128(&v134, 0, 0, 0, v62);

      sub_1CEFCCC44(&v134, &unk_1EC4C1B30, &qword_1CFA05300);
      v56 = v58;
      v54 = &unk_1EC4BEC00;
      v55 = &unk_1CF9FCB60;
    }

    else
    {
      v110 = v37;
      sub_1CF5634F4(v34, v123);
      v64 = v129;
      v134 = v129;
      v135 = v57;
      v136 = v9;
      v137 = v126;
      v121 = type metadata accessor for JobResult();
      v65 = swift_getAssociatedTypeWitness();
      v66 = swift_getAssociatedTypeWitness();
      v67 = swift_getAssociatedConformanceWitness();
      v68 = swift_getAssociatedConformanceWitness();
      v134 = v65;
      v135 = v66;
      v136 = v67;
      v137 = v68;
      v69 = type metadata accessor for ReconciliationID();
      v70 = type metadata accessor for ReconciliationSideMutation();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v71 = v106;
      v72 = &v106[*(TupleTypeMetadata2 + 48)];
      v73 = v130;
      v74 = *(*v130 + 576);
      v75 = *(v65 - 8);
      v76 = *(v75 + 16);
      v113 = v65;
      v112 = v76;
      v111 = (v75 + 16);
      v76(v106, v130 + v74, v65);
      v102 = v69;
      swift_storeEnumTagMultiPayload();
      *v72 = 0;
      *(v72 + 1) = 0;
      *(v72 + 2) = 0;
      *(v72 + 3) = 0xB000000000000000;
      *(v72 + 2) = 0u;
      *(v72 + 3) = 0u;
      *(v72 + 32) = 257;
      v101 = v70;
      swift_storeEnumTagMultiPayload();
      v77 = v125;
      swift_storeEnumTagMultiPayload();
      v78 = v124;
      sub_1CF06EB44(v124, v71);
      v79 = *(v133 + 8);
      v133 += 8;
      v103 = v79;
      v79(v71, v77);
      v80 = v132[3];
      v104 = v132[4];
      v105 = __swift_project_boxed_opaque_existential_1(v132, v80);
      sub_1CF574A04(v123, v114);
      v81 = v115;
      swift_dynamicCast();
      v82 = v117;
      v83 = v64;
      v84 = v73;
      sub_1CF06B77C(v81, v83, v9, v117);
      (*(*(v116 - 8) + 56))(v82, 0, 1);
      v85 = v73[15];
      v86 = v73[16];
      v87 = v73 + v74;
      v97 = v73[17];
      v88 = v120;
      v89 = v138;
      sub_1CF611904(v82, v87, 5u, 0, 0, v120, v85, v86, v97, v78, v105, v80, v104);
      v138 = v89;
      (*(v118 + 8))(v82, v119);
      if (!v89)
      {
        v90 = v71 + *(TupleTypeMetadata2 + 48);
        v99 = v74;
        v112(v71, v84 + v74, v113);
        swift_storeEnumTagMultiPayload();
        *v90 = 1284;
        *(v90 + 8) = *(v84 + 15);
        swift_storeEnumTagMultiPayload();
        v91 = v125;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v78, v71);
        v103(v71, v91);
        type metadata accessor for ReconciliationSideMutation();
        v92 = v71 + *(swift_getTupleTypeMetadata2() + 48);
        v112(v71, v84 + v99, v113);
        swift_storeEnumTagMultiPayload();
        *v92 = 8;
        *(v92 + 8) = *(v84 + 15);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v78, v71);
        v103(v71, v91);
        v93 = *(swift_getTupleTypeMetadata2() + 48);
        v94 = v107;
        v112(v107, v84 + v99, v113);
        swift_storeEnumTagMultiPayload();
        v94[v93] = 1;
        v95 = v109;
        swift_storeEnumTagMultiPayload();
        (*(*v88 + 312))(v94);
        (*(v108 + 8))(v94, v95);
        sub_1CF1A91AC(v132, &v134);
        v128(&v134, 0, 0, 0, 0);
        sub_1CEFCCC44(&v134, &unk_1EC4C1B30, &qword_1CFA05300);
      }

      sub_1CF574A68(v123);
      v54 = &unk_1EC4BEC00;
      v55 = &unk_1CF9FCB60;
      v56 = v110;
    }
  }

  return sub_1CEFCCC44(v56, v54, v55);
}

uint64_t sub_1CF57484C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  result = sub_1CF572770(a1, a2, a3, a4, *(a5 + 8));
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1CF57488C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  v13 = sub_1CF052464(a1, a2, a3, a4);
  sub_1CF052548(a5);
  return v13;
}

uint64_t sub_1CF574918(void *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF5738A8(a1, (v1 + v6), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF574A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VFSItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF574A68(uint64_t a1)
{
  v2 = type metadata accessor for VFSItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_17Tm(void (*a1)(void), void (*a2)(void))
{
  v5 = v2[4];

  a1(v2[5]);
  a2(v2[6]);
  v6 = v2[7];

  return swift_deallocObject();
}

void sub_1CF574B54(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1CF571F44(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
}

uint64_t sub_1CF574B78(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF56F844(a1, v1[4], v1[5]);
}

unint64_t sub_1CF574B84(unint64_t result)
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

uint64_t sub_1CF574BC8(unint64_t a1)
{
  v3 = v1[4];
  v4 = v1[8];
  swift_getAssociatedTypeWitness();
  v5 = *(sub_1CF9E75D8() - 8);
  v6 = (*(v5 + 80) + 112) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[10];
  v9 = v1[11];
  v10 = v1[12];
  v11 = v1[13];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF56DBA0(a1, v8, v9, v10, v11, v1 + v6, v12, v13);
}

void sub_1CF574C9C(void *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  swift_getAssociatedTypeWitness();
  v5 = sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v6 = *(sub_1CF9E8238() - 8);
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (*(*(v5 - 8) + 80) + v10 + 16) & ~*(*(v5 - 8) + 80);
  v12 = (*(*(v5 - 8) + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF56DFA0(a1, (v1 + v7), *(v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + v10 + 8), (v1 + v11), *(v1 + v12), *(v1 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF574E24(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  sub_1CF56D778(a1, v1[4], v1[5]);
}

uint64_t objectdestroy_14Tm()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1CF574E88(char a1, char a2)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1CF56D708(a1, a2 & 1, v2[4], v2[5]);
}

unint64_t sub_1CF574EBC()
{
  result = qword_1EDEAB460;
  if (!qword_1EDEAB460)
  {
    sub_1CF9E5248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB460);
  }

  return result;
}

uint64_t sub_1CF574F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  swift_allocObject();
  v12 = sub_1CF052464(a1, a2, a3, a4);
  v13 = *(v5 + 656);
  v14 = *(v5 + 640);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v12;
}

void sub_1CF574FF8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698E478]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setResourceIntensive_];
  [v3 setResources_];
  [v3 setRequiresExternalPower_];
  [v3 setScheduleAfter_];
  [v3 setTrySchedulingBefore_];
  v4 = [objc_allocWithZone(FPDSharedSystemScheduler) initWithTaskRequest:v3 options:0];

  qword_1EDEBB818 = v4;
}

uint64_t sub_1CF575118()
{
  if (*v0)
  {
    return 0x6573616870;
  }

  else
  {
    return 0x4449776F72;
  }
}

uint64_t sub_1CF575144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v6 || (sub_1CF9E8048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6573616870 && a2 == 0xE500000000000000)
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

uint64_t sub_1CF575218(uint64_t a1)
{
  v2 = sub_1CF597590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF575254(uint64_t a1)
{
  v2 = sub_1CF597590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF575290(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_1CF5752E0(a1);
  return v2;
}

uint64_t sub_1CF5752E0(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C19A8, &unk_1CFA0C188);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-1] - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF597590();
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for MaintenanceContinuation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v14[0]) = 0;
    *(v1 + 16) = sub_1CF9E7CD8();
    *(v1 + 24) = v10 & 1;
    LOBYTE(v14[0]) = 1;
    *(v1 + 32) = sub_1CF9E7CD8();
    *(v1 + 40) = v12 & 1;
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v5 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_1CF5754EC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1F0, &qword_1CF9FCCD0);
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C19B8, &unk_1CFA0C198);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF597590();
  sub_1CF9E82A8();
  v14 = *(v2 + 24);
  v23 = *(v2 + 16);
  v24 = v14;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2B0, &unk_1CF9FD410);
  sub_1CF1E13A4();
  v15 = v22;
  sub_1CF9E7F08();
  if (v15)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v16 = *(v2 + 32);
  v17 = *(v2 + 40);
  v22 = v7;
  v23 = v16;
  v24 = v17;
  v26 = 1;
  sub_1CF9E7F08();
  sub_1CF9E7E28();
  __swift_project_boxed_opaque_existential_1(&v23, v25);
  sub_1CF1D6D18();
  v18 = v22;
  sub_1CF9E82A8();
  (*(v21 + 8))(v18, v4);
  (*(v9 + 8))(v12, v8);
  return __swift_destroy_boxed_opaque_existential_1(&v23);
}

uint64_t sub_1CF5757B8()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    v5 = *(v0 + 16);
    v2 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v2);

    MEMORY[0x1D3868CC0](0x3A4449776F72, 0xE600000000000000);

    result = 0;
    if (*(v0 + 40))
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((*(v0 + 40) & 1) == 0)
  {
LABEL_5:
    v3 = *(v0 + 32);
    v4 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v4);

    MEMORY[0x1D3868CC0](0x3A6573616870, 0xE600000000000000);

    return 0;
  }

  return result;
}

uint64_t sub_1CF575970(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_1CF1A91AC(a1, v4);
  sub_1CF5752E0(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1CF575A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = a8;
  v68 = a4;
  v69 = a7;
  v12 = *(*v8 + 608);
  v13 = *(*v8 + 616);
  v14 = *(*v8 + 624);
  v74 = *(*v8 + 600);
  v75 = v12;
  v63 = v14;
  v64 = v12;
  v76 = v13;
  v77 = v14;
  v15 = type metadata accessor for PersistenceTrigger();
  v62 = *(v15 - 8);
  v16 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50[-v17];
  v65 = v74;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  v60 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v70 = &v50[-v20];
  v21 = *(a1 + 32);
  if (*(v21 + 33) != 1 || (v22 = *(**(v21 + 16) + 848), v23 = , v24 = v22(v23), , (v24 & 1) != 0))
  {
    v25 = v69;
    v77 = v69;
    v78 = v67;
    v26 = __swift_allocate_boxed_opaque_existential_0(&v74);
    (*(*(v25 - 8) + 16))(v26, v68, v25);
    a5(&v74, 0, 0xD00000000000001ALL, 0x80000001CFA53B30, 0);
    return sub_1CEFCCC44(&v74, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v52 = a6;
  v53 = a5;
  v28 = *(**(a1 + 16) + 288);
  v61 = a1;
  v29 = v28(v68, v69, *(v67 + 8));
  v51 = v30;
  v74 = v29;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  if (sub_1CF9E7128())
  {

    v31 = v68;
    if ((v51 & 1) == 0)
    {
      v32 = v69;
      v77 = v69;
      v78 = v67;
      v33 = __swift_allocate_boxed_opaque_existential_0(&v74);
      (*(*(v32 - 8) + 16))(v33, v31, v32);
      v53(&v74, 0, 0, 0, 0);
      return sub_1CEFCCC44(&v74, &unk_1EC4C1B30, &qword_1CFA05300);
    }

LABEL_23:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/Maintenance.swift", 101, 2, 104);
  }

  v59 = v13;

  if (!sub_1CF9E6DF8())
  {
    goto LABEL_18;
  }

  v34 = 0;
  v35 = (*v61 + 312);
  v57 = *v35;
  v56 = v35;
  v58 = (v66 + 16);
  v55 = (v66 + 32);
  v54 = (v62 + 8);
  while (1)
  {
    v36 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v36)
    {
      (*(v66 + 16))(v70, v29 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v34, AssociatedTypeWitness);
      v37 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      goto LABEL_12;
    }

    v41 = sub_1CF9E7998();
    if (v60 != 8)
    {
      __break(1u);
      goto LABEL_23;
    }

    v74 = v41;
    (*v58)(v70, &v74, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

LABEL_12:
    v62 = v37;
    (*v55)(v18, v70, AssociatedTypeWitness);
    v38 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v40 = swift_getAssociatedConformanceWitness();
    v74 = AssociatedTypeWitness;
    v75 = v38;
    v76 = AssociatedConformanceWitness;
    v77 = v40;
    type metadata accessor for ReconciliationID();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v57(v18);
    (*v54)(v18, v15);
    ++v34;
    if (v62 == sub_1CF9E6DF8())
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_18:

  v42 = v69;
  v77 = v69;
  v78 = v67;
  if (v51)
  {
    v43 = __swift_allocate_boxed_opaque_existential_0(&v74);
    (*(*(v42 - 8) + 16))(v43, v68, v42);
    type metadata accessor for MaintenanceContinuation();
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    *(v44 + 24) = 1;
    *(v44 + 32) = 0;
    *(v44 + 40) = 1;
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_1CF9E7948();

    v72 = 0x2064657461647075;
    v73 = 0xE800000000000000;
    v45 = sub_1CF9E6DF8();

    v71 = v45;
    v46 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v46);

    MEMORY[0x1D3868CC0](0x736D65746920, 0xE600000000000000);
    v53(&v74, v44, v72, v73, 0);
  }

  else
  {
    v47 = __swift_allocate_boxed_opaque_existential_0(&v74);
    (*(*(v42 - 8) + 16))(v47, v68, v42);
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_1CF9E7948();

    v72 = 0x2064657461647075;
    v73 = 0xE800000000000000;
    v48 = sub_1CF9E6DF8();

    v71 = v48;
    v49 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v49);

    MEMORY[0x1D3868CC0](0x736D65746920, 0xE600000000000000);
    v53(&v74, 0, v72, v73, 0);
  }

  return sub_1CEFCCC44(&v74, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF57639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, unint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = a6;
  v14 = *(*v8 + 608);
  v15 = *(*v8 + 616);
  v16 = *(*v8 + 624);
  v77 = *(*v8 + 600);
  v78 = v14;
  v70 = v14;
  v79 = v15;
  v80 = v16;
  v68 = v16;
  v67 = type metadata accessor for PersistenceTrigger();
  v73 = *(v67 - 8);
  v17 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v52 - v18;
  v69 = v15;
  v71 = v77;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = *(AssociatedTypeWitness - 8);
  v57 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v52 - v20;
  v22 = *(**(*(a1 + 32) + 16) + 848);

  LOBYTE(v15) = v22(v23);

  if (v15)
  {
    v80 = a7;
    v81 = a8;
    v24 = __swift_allocate_boxed_opaque_existential_0(&v77);
    (*(*(a7 - 8) + 16))(v24, a4, a7);
    a5(&v77, 0, 0xD000000000000017, 0x80000001CFA53AF0, 0);
    return sub_1CEFCCC44(&v77, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v56 = a5;
  v25 = a4;
  v26 = (*(**(a1 + 24) + 544))(a4, a7, *(a8 + 8));
  v27 = a1;
  v53 = v28;
  v54 = a8;
  v55 = v25;
  v77 = v26;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  if (sub_1CF9E7128())
  {

    v29 = v56;
    if ((v53 & 1) == 0)
    {
      v80 = a7;
      v81 = v54;
      v30 = __swift_allocate_boxed_opaque_existential_0(&v77);
      (*(*(a7 - 8) + 16))(v30, v55, a7);
      v29(&v77, 0, 0, 0, 0);
      return sub_1CEFCCC44(&v77, &unk_1EC4C1B30, &qword_1CFA05300);
    }

LABEL_22:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/Maintenance.swift", 101, 2, 141);
  }

  v52 = a7;

  if (!sub_1CF9E6DF8())
  {
    goto LABEL_16;
  }

  v31 = 0;
  v32 = (*a1 + 312);
  v62 = *v32;
  v61 = v32;
  v64 = (v72 + 16);
  v60 = (v72 + 32);
  v58 = (v73 + 8);
  v63 = v26;
  v59 = v21;
  while (1)
  {
    v33 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v33)
    {
      (*(v72 + 16))(v21, v26 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v31, AssociatedTypeWitness);
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      goto LABEL_10;
    }

    v42 = sub_1CF9E7998();
    if (v57 != 8)
    {
      __break(1u);
      goto LABEL_22;
    }

    v77 = v42;
    (*v64)(v21, &v77, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

LABEL_10:
    v73 = v34;
    v35 = v66;
    (*v60)(v66, v21, AssociatedTypeWitness);
    v36 = swift_getAssociatedTypeWitness();
    v37 = v27;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v39 = swift_getAssociatedConformanceWitness();
    v77 = AssociatedTypeWitness;
    v78 = v36;
    v79 = AssociatedConformanceWitness;
    v80 = v39;
    v27 = v37;
    type metadata accessor for ReconciliationID();
    swift_storeEnumTagMultiPayload();
    v40 = v67;
    swift_storeEnumTagMultiPayload();
    v62(v35);
    v41 = v40;
    v21 = v59;
    v26 = v63;
    (*v58)(v35, v41);
    ++v31;
    if (v73 == sub_1CF9E6DF8())
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:

  v43 = v52;
  v80 = v52;
  v81 = v54;
  if (v53)
  {
    v44 = __swift_allocate_boxed_opaque_existential_0(&v77);
    (*(*(v43 - 8) + 16))(v44, v55, v43);
    type metadata accessor for MaintenanceContinuation();
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *(v45 + 24) = 1;
    *(v45 + 32) = 0;
    *(v45 + 40) = 1;
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_1CF9E7948();

    v75 = 0x2064657461647075;
    v76 = 0xE800000000000000;
    v46 = sub_1CF9E6DF8();

    v74 = v46;
    v47 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v47);

    MEMORY[0x1D3868CC0](0x736D65746920, 0xE600000000000000);
    v56(&v77, v45, v75, v76, 0);
  }

  else
  {
    v48 = __swift_allocate_boxed_opaque_existential_0(&v77);
    (*(*(v43 - 8) + 16))(v48, v55, v43);
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_1CF9E7948();

    v75 = 0x2064657461647075;
    v76 = 0xE800000000000000;
    v49 = sub_1CF9E6DF8();

    v74 = v49;
    v50 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v50);

    MEMORY[0x1D3868CC0](0x736D65746920, 0xE600000000000000);
    v56(&v77, 0, v75, v76, 0);
  }

  return sub_1CEFCCC44(&v77, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF576D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a5;
  v66 = a3;
  v15 = *(*v8 + 608);
  v16 = *(*v8 + 616);
  v17 = *(*v8 + 624);
  v79 = *(*v8 + 600);
  v80 = v15;
  v70 = v15;
  v81 = v16;
  v82 = v17;
  v68 = v17;
  v65 = type metadata accessor for ReconciliationMutation();
  v18 = *(v65 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v52 - v20;
  v69 = v16;
  v71 = v79;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = *(AssociatedTypeWitness - 8);
  v57 = *(v72 + 64);
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v52 - v22;
  v58 = a6;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v24 = swift_dynamicCastClass()) != 0) && *(v24 + 24) != 1)
  {
    v25 = v18;
    v26 = *(v24 + 16);
  }

  else
  {
    v25 = v18;
    v26 = 0;
  }

  v27 = (*(**(a1 + 16) + 504))(v26, a4, a7, *(a8 + 8), v21);
  v53 = v28;
  v52 = v29;
  v54 = a8;
  v55 = a4;
  v56 = a7;

  v30 = AssociatedTypeWitness;
  if (sub_1CF9E6DF8())
  {
    v79 = v71;
    v80 = v70;
    v81 = v69;
    v82 = v68;
    v60 = type metadata accessor for JobResult();
    v31 = 0;
    v63 = (v72 + 16);
    v62 = (v72 + 32);
    v61 = (v25 + 8);
    do
    {
      v32 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v32)
      {
        (*(v72 + 16))(v23, v27 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v31, v30);
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v57 != 8)
        {
          __break(1u);
          return result;
        }

        v79 = result;
        (*v63)(v23, &v79, v30);
        swift_unknownObjectRelease();
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      v73 = v33;
      v34 = swift_getAssociatedTypeWitness();
      v74 = v31;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v36 = swift_getAssociatedConformanceWitness();
      v79 = AssociatedTypeWitness;
      v80 = v34;
      v81 = AssociatedConformanceWitness;
      v82 = v36;
      type metadata accessor for ReconciliationID();
      type metadata accessor for ReconciliationSideMutation();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v38 = v64;
      v39 = &v64[*(TupleTypeMetadata2 + 48)];
      (*v62)(v64, v23, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      *v39 = 1028;
      *(v39 + 8) = *(v67 + 120);
      v30 = AssociatedTypeWitness;
      swift_storeEnumTagMultiPayload();
      v40 = v65;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v66, v38);
      v41 = v40;
      v42 = v74;
      (*v61)(v38, v41);
      v31 = v42 + 1;
    }

    while (v73 != sub_1CF9E6DF8());
  }

  v44 = v56;
  v82 = v56;
  v83 = v54;
  if (v53)
  {
    v45 = __swift_allocate_boxed_opaque_existential_0(&v79);
    (*(*(v44 - 8) + 16))(v45, v55, v44);
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_1CF9E7948();

    v77 = 0x2064657461647075;
    v78 = 0xE800000000000000;
    v46 = sub_1CF9E6DF8();

    v76 = v46;
    v47 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v47);

    MEMORY[0x1D3868CC0](0x736D65746920, 0xE600000000000000);
    v59(&v79, 0, v77, v78, 0);
  }

  else
  {
    v48 = __swift_allocate_boxed_opaque_existential_0(&v79);
    (*(*(v44 - 8) + 16))(v48, v55, v44);
    type metadata accessor for MaintenanceContinuation();
    v49 = swift_allocObject();
    *(v49 + 16) = v52;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0;
    *(v49 + 40) = 1;
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_1CF9E7948();

    v77 = 0x2064657461647075;
    v78 = 0xE800000000000000;
    v50 = sub_1CF9E6DF8();

    v76 = v50;
    v51 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v51);

    MEMORY[0x1D3868CC0](0x736D65746920, 0xE600000000000000);
    v59(&v79, v49, v77, v78, 0);
  }

  return sub_1CEFCCC44(&v79, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF5775F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;
  v14 = swift_allocObject();
  v15 = v13[75];
  *(v14 + 16) = sub_1CF9E6DA8();
  v16 = *(*(a1 + 32) + 16);
  v23 = *(*v8 + 576);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v13[76];
  v17[4] = a7;
  v17[5] = v13[77];
  v17[6] = v13[78];
  v17[7] = a8;
  v17[8] = v14;
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a1;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = v14;
  v18[8] = a3;
  v18[9] = v8;
  v19 = *(*v16 + 144);
  swift_retain_n();

  v19(v8 + v23, a2, 0, 0, sub_1CF597504, v17, sub_1CF597518, v18);
}

uint64_t sub_1CF577808()
{
  swift_beginAccess();
  sub_1CF9E6E58();

  swift_getWitnessTable();
  sub_1CF9E6E08();
  swift_endAccess();
  return 0;
}

uint64_t sub_1CF5778B0(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a9;
  *(v17 + 24) = a10;
  *(v17 + 32) = a1;
  a2 &= 1u;
  *(v17 + 40) = a2;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  *(v17 + 64) = a8;
  *(v17 + 72) = a4;
  *(v17 + 80) = a5;
  *(v17 + 88) = a3;
  swift_retain_n();
  sub_1CF2B1868(a1, a2);
  v18 = type metadata accessor for Continuation();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559418, v16, sub_1CF597550, v17, v18, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF577A30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(__int128 *, uint64_t, void, void, uint64_t), uint64_t a8, uint64_t a9)
{
  v73 = a8;
  v74 = a7;
  v76 = a6;
  v75 = a2;
  v13 = *a5;
  v78 = sub_1CF9E5CF8();
  v98 = *(v78 - 8);
  v14 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v13[12];
  v17 = v13[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v96 = *(AssociatedTypeWitness - 8);
  v18 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v81 = &v69 - v19;
  *&v20 = v17;
  v85 = v13[11];
  *(&v20 + 1) = v85;
  v21 = v13;
  v22 = v16;
  v91 = a5;
  *&v23 = v16;
  v84 = v21[13];
  *(&v23 + 1) = v84;
  v92 = v23;
  v104 = v20;
  v105 = v23;
  v93 = v20;
  v83 = type metadata accessor for ReconciliationMutation();
  v24 = *(v83 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v69 - v26;
  v27 = *(v17 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v87 = &v69 - v34;
  if (a3)
  {
    sub_1CF1A91AC(a1, &v104);
    v74(&v104, 0, 0, 0, v75);
    return sub_1CEFCCC44(&v104, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v70 = v33;
  swift_beginAccess();
  v36 = *(a4 + 16);

  v37 = sub_1CF9E6DF8();
  v38 = v87;
  if (!v37)
  {
LABEL_21:

    sub_1CF1A91AC(a1, &v104);
    v74(&v104, v75, 0, 0, 0);
    sub_1CEFCCC44(&v104, &unk_1EC4C1B30, &qword_1CFA05300);
    v67 = *(**(*(a9 + 32) + 16) + 920);

    v67(v68);
  }

  v39 = 0;
  v40 = *(v22 + 144);
  v102 = v22 + 144;
  v103 = (v27 + 16);
  v100 = (v27 + 32);
  v101 = v40;
  v89 = v22 + 64;
  v79 = (v24 + 8);
  v72 = (v98 + 8);
  v71 = (v96 + 8);
  v98 = v27 + 8;
  v88 = a1;
  v97 = v22;
  v80 = v27;
  v95 = v31;
  v99 = v36;
  while (1)
  {
    v43 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v43)
    {
      (*(v27 + 16))(v38, v36 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v39, v17);
      v44 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1CF9E7998();
      if (v70 != 8)
      {
        goto LABEL_25;
      }

      *&v104 = result;
      (*v103)(v38, &v104, v17);
      swift_unknownObjectRelease();
      v44 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    (*v100)(v31, v38, v17);
    v45 = v101(v17, v22);
    if (v46 >> 62 != 2 || v45 || v46 != 0x8000000000000000)
    {
      sub_1CF07638C(v45, v46);
      goto LABEL_6;
    }

    v104 = v93;
    v105 = v92;
    v96 = type metadata accessor for JobResult();
    v94 = v44;
    v47 = swift_getAssociatedTypeWitness();
    v48 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v50 = swift_getAssociatedConformanceWitness();
    *&v104 = v48;
    *(&v104 + 1) = v47;
    *&v105 = AssociatedConformanceWitness;
    *(&v105 + 1) = v50;
    type metadata accessor for ReconciliationID();
    type metadata accessor for ReconciliationSideMutation();
    v44 = v94;
    v51 = *(swift_getTupleTypeMetadata2() + 48);
    v52 = v82;
    v86 = *(v97 + 64);
    v86(v17, v97);
    a1 = v88;
    swift_storeEnumTagMultiPayload();
    *(v52 + v51) = 1;
    v27 = v80;
    v22 = v97;
    swift_storeEnumTagMultiPayload();
    v53 = v83;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v91, v52);
    v54 = v52;
    v31 = v95;
    v55 = v53;
    v38 = v87;
    (*v79)(v54, v55);
    sub_1CF06D940(v17, v22, &v104);
    if (v104 != 1)
    {
      goto LABEL_6;
    }

    v104 = v93;
    v105 = v92;
    v56 = type metadata accessor for Maintenance.IgnoreChildrenOfIgnoredHierarchy();
    v86(v17, v22);
    v57 = v77;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v59 = v58;
    result = (*v72)(v57, v78);
    v60 = v59 * 1000000000.0;
    if (COERCE__INT64(fabs(v59 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v60 <= -9.22337204e18)
    {
      goto LABEL_23;
    }

    if (v60 >= 9.22337204e18)
    {
      goto LABEL_24;
    }

    v61 = v60;
    v62 = *(v76 + 136);
    v63 = *(v56 + 48);
    v64 = *(v56 + 52);
    swift_allocObject();
    v65 = v81;
    v66 = sub_1CF052464(v81, 0, v61, v62);
    (*v71)(v65, AssociatedTypeWitness);
    sub_1CF803A0C(v91, v66);
    v22 = v97;

    a1 = v88;
LABEL_6:
    (*v98)(v31, v17);
    v41 = v99;
    ++v39;
    v42 = v44 == sub_1CF9E6DF8();
    v36 = v41;
    if (v42)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1CF57842C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v129 = a5;
  v121 = a3;
  v143 = a1;
  v14 = *(*v8 + 600);
  v15 = *(*v8 + 608);
  v16 = *(*v8 + 616);
  v17 = *(*v8 + 624);
  v153 = v14;
  v154 = v15;
  v155 = v16;
  v156 = v17;
  v120 = type metadata accessor for ReconciliationMutation();
  v147 = *(v120 - 8);
  v18 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v117 = &v100 - v19;
  v20 = type metadata accessor for SnapshotItem();
  v126 = *(v20 - 8);
  v21 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v130 = &v100 - v22;
  v137 = v23;
  v131 = sub_1CF9E75D8();
  v125 = *(v131 - 8);
  v24 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v134 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v144 = &v100 - v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v149 = sub_1CF9E75D8();
  v116 = *(v149 - 8);
  v29 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v135 = &v100 - v30;
  v145 = AssociatedTypeWitness;
  v115 = *(AssociatedTypeWitness - 8);
  v31 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v100 - v33;
  v150 = v14;
  v153 = v14;
  v154 = v15;
  v119 = v15;
  v151 = v16;
  v155 = v16;
  v156 = v17;
  v118 = v17;
  v35 = type metadata accessor for ItemReconciliation();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v138 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v38;
  MEMORY[0x1EEE9AC00](v39);
  v152 = &v100 - v40;
  if (!a2)
  {
    v41 = 0;
    goto LABEL_5;
  }

  type metadata accessor for MaintenanceContinuation();
  v41 = swift_dynamicCastClass();
  if (!v41)
  {
LABEL_5:
    v43 = 1;
    goto LABEL_6;
  }

  v42 = v41;
  v41 = *(v41 + 16);
  v43 = *(v42 + 24);
LABEL_6:
  v44 = a6;
  v45 = *(a8 + 8);
  v46 = (*(**(v143 + 16) + 184))(v41, v43, a4, a7, v45);
  v47 = a8;
  v50 = v46;
  v106 = v51;
  v128 = v45;
  v102 = v52;
  v142 = 0;
  v107 = v47;
  v132 = a4;
  v133 = a7;
  v108 = v44;
  v53 = sub_1CF9E6DF8();
  v54 = v131;
  v55 = v135;
  v56 = v138;
  if (!v53)
  {
LABEL_29:

    if (v106)
    {
      v93 = 0;
    }

    else
    {
      type metadata accessor for MaintenanceContinuation();
      v93 = swift_allocObject();
      *(v93 + 16) = v102;
      *(v93 + 24) = 0;
      *(v93 + 32) = 0;
      *(v93 + 40) = 1;
    }

    v94 = v129;
    v95 = v133;
    v96 = v132;
    v156 = v133;
    v157 = v107;
    v97 = __swift_allocate_boxed_opaque_existential_0(&v153);
    (*(*(v95 - 8) + 16))(v97, v96, v95);

    v94(&v153, v93, 0, 0, 0);

    return sub_1CEFCCC44(&v153, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v57 = 0;
  v148 = (v36 + 16);
  v146 = (v36 + 32);
  v141 = (v116 + 16);
  v140 = (v115 + 48);
  v127 = (v115 + 32);
  v124 = (v125 + 16);
  v123 = (v126 + 48);
  v112 = (v126 + 32);
  v110 = (v115 + 16);
  v109 = (v147 + 8);
  v111 = (v126 + 8);
  v122 = (v125 + 8);
  v126 = v115 + 8;
  v147 = v36 + 8;
  v125 = v116 + 8;
  v139 = v36;
  v136 = v34;
  while (1)
  {
    v58 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v58)
    {
      result = (*(v36 + 16))(v152, v50 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v57, v35);
    }

    else
    {
      result = sub_1CF9E7998();
      if (v113 != 8)
      {
        goto LABEL_36;
      }

      v153 = result;
      (*v148)(v152, &v153, v35);
      result = swift_unknownObjectRelease();
    }

    v60 = v57 + 1;
    v61 = v149;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    (*v146)(v56, v152, v35);
    if ((v56[*(type metadata accessor for ItemReconciliationHalf() + 36)] & 0x10) != 0)
    {
      (*v141)(v55, v56, v61);
      v62 = v61;
      v63 = v145;
      if ((*v140)(v55, 1, v145) == 1)
      {
        (*v147)(v56, v35);
        (*v125)(v55, v62);
      }

      else
      {
        v64 = v136;
        (*v127)(v136, v55, v63);
        v65 = v144;
        v66 = v142;
        (*(**(v143 + 32) + 240))(v64, 1, v132, v133, v128);
        if (v66)
        {

          (*v126)(v64, v145);
          (*v147)(v138, v35);
          v98 = v133;
          v99 = v132;
          v156 = v133;
          v157 = v107;
          v48 = __swift_allocate_boxed_opaque_existential_0(&v153);
          (*(*(v98 - 8) + 16))(v48, v99, v98);
          v49 = v66;
          v129(&v153, 0, 0, 0, v66);

          return sub_1CEFCCC44(&v153, &unk_1EC4C1B30, &qword_1CFA05300);
        }

        v142 = 0;
        v67 = v134;
        (*v124)(v134, v65, v54);
        v68 = v137;
        if ((*v123)(v67, 1, v137) == 1)
        {
          v69 = v67;
          v70 = *v122;
          (*v122)(v144, v54);
          (*v126)(v64, v145);
          v56 = v138;
          (*v147)(v138, v35);
          v71 = v69;
          v55 = v135;
          v70(v71, v54);
          v36 = v139;
          goto LABEL_9;
        }

        v72 = v130;
        (*v112)(v130, v67, v68);
        v73 = &v72[*(v68 + 48)];
        if ((v73[*(type metadata accessor for ItemMetadata() + 64)] & 1) == 0)
        {
          v153 = v150;
          v154 = v119;
          v155 = v151;
          v156 = v118;
          v116 = type metadata accessor for JobResult();
          v74 = swift_getAssociatedTypeWitness();
          v75 = v145;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v77 = swift_getAssociatedConformanceWitness();
          v153 = v75;
          v154 = v74;
          v155 = AssociatedConformanceWitness;
          v156 = v77;
          v78 = type metadata accessor for ReconciliationID();
          v79 = type metadata accessor for ReconciliationSideMutation();
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          v80 = *(TupleTypeMetadata2 + 48);
          v81 = v117;
          v82 = v136;
          v104 = *v110;
          v104(v117, v136, v75);
          v105 = v78;
          swift_storeEnumTagMultiPayload();
          *(v81 + v80) = 0;
          v115 = v79;
          swift_storeEnumTagMultiPayload();
          v83 = v120;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v121, v81);
          v84 = *v109;
          (*v109)(v81, v83);
          v85 = v138;
          if (sub_1CF07CD80(v35))
          {
            (*v111)(v130, v137);
            v86 = v131;
            (*v122)(v144, v131);
            v87 = v82;
            v54 = v86;
            (*v126)(v87, v75);
            (*v147)(v85, v35);
            v55 = v135;
            v36 = v139;
            v56 = v85;
          }

          else
          {
            v101 = v84;
            v88 = *(TupleTypeMetadata2 + 48);
            v104(v81, v82, v75);
            swift_storeEnumTagMultiPayload();
            v89 = v81;
            v90 = v144;
            v36 = v139;
            if (qword_1EDEABDE0 != -1)
            {
              swift_once();
            }

            v91 = v81 + v88;
            *v91 = qword_1EDEABDE8;
            *(v91 + 8) = *(v114 + 120);
            swift_storeEnumTagMultiPayload();
            v92 = v120;
            swift_storeEnumTagMultiPayload();
            sub_1CF06EB44(v121, v89);
            v101(v89, v92);
            (*v111)(v130, v137);
            v54 = v131;
            (*v122)(v90, v131);
            (*v126)(v136, v145);
            v56 = v138;
            (*v147)(v138, v35);
            v55 = v135;
          }

          goto LABEL_9;
        }

        (*v111)(v72, v68);
        v54 = v131;
        (*v122)(v144, v131);
        (*v126)(v136, v145);
        v56 = v138;
        (*v147)(v138, v35);
      }

      v36 = v139;
    }

    else
    {
      (*v147)(v56, v35);
    }

LABEL_9:
    ++v57;
    if (v60 == sub_1CF9E6DF8())
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1CF57947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, unint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a6;
  v64 = a5;
  v65 = a4;
  v56 = a2;
  v62 = a1;
  v11 = *v8;
  v12 = *(*v8 + 600);
  v13 = *(*v8 + 616);
  v14 = type metadata accessor for SnapshotItem();
  v15 = sub_1CF9E75D8();
  v57 = *(v15 - 8);
  v58 = v15;
  v16 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v54 - v17;
  v61 = v14;
  v60 = *(v14 - 8);
  v19 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v54 - v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v54 - v29;
  v31 = *(v23 + 16);
  v31(&v54 - v29, &v8[*(v11 + 576)], AssociatedTypeWitness, v28);
  (v31)(v26, v30, AssociatedTypeWitness);
  if (swift_dynamicCast())
  {
    v55 = v23;
    if (v67 != 1)
    {
      v68 = a7;
      v69 = a8;
      v35 = __swift_allocate_boxed_opaque_existential_0(&v66);
      (*(*(a7 - 8) + 16))(v35, v65, a7);
      v36 = 0xD000000000000039;
      v37 = 0x80000001CFA539D0;
LABEL_6:
      v64(&v66, 0, v36, v37, 0);
LABEL_7:
      v23 = v55;
      goto LABEL_8;
    }

    v32 = v66;
    v33 = *(v62 + 32);
    (*(*v33 + 240))(v30, 1, v65, a7, *(a8 + 8));
    v62 = v32;
    v40 = v60;
    v39 = v61;
    v41 = (*(v60 + 48))(v18, 1, v61);
    if (v41 == 1)
    {
      (*(v57 + 8))(v18, v58);
      v68 = a7;
      v69 = a8;
      v42 = __swift_allocate_boxed_opaque_existential_0(&v66);
      (*(*(a7 - 8) + 16))(v42, v65, a7);
      v37 = 0x80000001CFA53960;
      v36 = 0xD000000000000022;
      goto LABEL_6;
    }

    v43 = v59;
    (*(v40 + 32))();
    v44 = &v43[*(v39 + 48)];
    v45 = type metadata accessor for ItemMetadata();
    if (v44[*(v45 + 60)])
    {
      v68 = a7;
      v69 = a8;
      v46 = __swift_allocate_boxed_opaque_existential_0(&v66);
      (*(*(a7 - 8) + 16))(v46, v65, a7);
      v64(&v66, 0, 0xD000000000000033, 0x80000001CFA53990, 0);
      (*(v40 + 8))(v43, v39);
      goto LABEL_7;
    }

    v47 = *&v44[*(v45 + 76)];
    if (v56 && (type metadata accessor for MaintenanceContinuation(), (v48 = swift_dynamicCastClass()) != 0))
    {
      v49 = *(v48 + 16);
      v50 = *(v48 + 24);
    }

    else
    {
      v49 = 0;
      v50 = 1;
    }

    if ((*(*v33 + 648))(v62, v47, v65, a7, a8))
    {
      type metadata accessor for MaintenanceContinuation();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      *(v51 + 32) = 0;
      *(v51 + 40) = 1;
    }

    else
    {
      v51 = 0;
    }

    v52 = v64;
    v23 = v55;
    v68 = a7;
    v69 = a8;
    v53 = __swift_allocate_boxed_opaque_existential_0(&v66);
    (*(*(a7 - 8) + 16))(v53, v65, a7);

    v52(&v66, v51, 0, 0, 0);

    (*(v40 + 8))(v59, v61);
  }

  else
  {
    v68 = a7;
    v69 = a8;
    v34 = __swift_allocate_boxed_opaque_existential_0(&v66);
    (*(*(a7 - 8) + 16))(v34, v65, a7);
    v64(&v66, 0, 0xD00000000000003BLL, 0x80000001CFA53920, 0);
  }

LABEL_8:
  (*(v23 + 8))(v30, AssociatedTypeWitness);
  return sub_1CEFCCC44(&v66, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF579C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v91 = a5;
  v68 = a6;
  v11 = *(*v6 + 600);
  v12 = *(*v6 + 616);
  v13 = type metadata accessor for SnapshotItem();
  v14 = sub_1CF9E75D8();
  v66 = *(v14 - 8);
  v67 = v14;
  v15 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - v16;
  v69 = *(v13 - 8);
  v18 = *(v69 + 64);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v65 - v21;
  v23 = *(a2 + 32);
  v24 = v70;
  result = (*(*v23 + 240))(a1, 1, a3, a4, v91, v20);
  if (!v24)
  {
    v26 = a1;
    v70 = 0;
    if ((*(v69 + 48))(v17, 1, v13) == 1)
    {
      (*(v66 + 8))(v17, v67);
      return (*(v69 + 56))(v68, 1, 1, v13);
    }

    v27 = v69;
    (*(v69 + 32))(v22, v17, v13);
    v28 = v70;
    (*(*v23 + 264))(&v75, v26, a3, a4, v91);
    if (v28)
    {
      return (*(v27 + 8))(v22, v13);
    }

    v29 = &v22[*(v13 + 52)];
    v30 = *(v29 + 13);
    v71[12] = *(v29 + 12);
    v71[13] = v30;
    v71[14] = *(v29 + 14);
    v72 = *(v29 + 30);
    v31 = *(v29 + 9);
    v71[8] = *(v29 + 8);
    v71[9] = v31;
    v32 = *(v29 + 11);
    v71[10] = *(v29 + 10);
    v71[11] = v32;
    v33 = *(v29 + 5);
    v71[4] = *(v29 + 4);
    v71[5] = v33;
    v34 = *(v29 + 7);
    v71[6] = *(v29 + 6);
    v71[7] = v34;
    v35 = *(v29 + 1);
    v71[0] = *v29;
    v71[1] = v35;
    v36 = *(v29 + 3);
    v71[2] = *(v29 + 2);
    v71[3] = v36;
    sub_1CEFCCC44(v71, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v37 = v87;
    v38 = v88;
    v39 = v86;
    *(v29 + 12) = v87;
    *(v29 + 13) = v38;
    v40 = v88;
    *(v29 + 14) = v89;
    v42 = v83;
    v41 = v84;
    v43 = v82;
    *(v29 + 8) = v83;
    *(v29 + 9) = v41;
    v44 = v84;
    v46 = v85;
    v45 = v86;
    *(v29 + 10) = v85;
    *(v29 + 11) = v45;
    v48 = v79;
    v47 = v80;
    v49 = v78;
    *(v29 + 4) = v79;
    *(v29 + 5) = v47;
    v50 = v80;
    v52 = v81;
    v51 = v82;
    *(v29 + 6) = v81;
    *(v29 + 7) = v51;
    v53 = v76;
    *v29 = v75;
    *(v29 + 1) = v53;
    v54 = v78;
    v56 = v75;
    v55 = v76;
    v57 = v77;
    *(v29 + 2) = v77;
    *(v29 + 3) = v54;
    v73[12] = v37;
    v73[13] = v40;
    v73[14] = v89;
    v73[8] = v42;
    v73[9] = v44;
    v73[10] = v46;
    v73[11] = v39;
    v73[4] = v48;
    v73[5] = v50;
    v73[6] = v52;
    v73[7] = v43;
    v73[0] = v56;
    v73[1] = v55;
    v58 = v90;
    *(v29 + 30) = v90;
    v74 = v58;
    v73[2] = v57;
    v73[3] = v49;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v73) == 1)
    {
      v59 = *(v27 + 56);
      v60 = v68;
    }

    else
    {
      v61 = v68;
      if (BYTE9(v73[0]) == 1 && (v73[0] & 0x40) != 0)
      {
        v62 = &v22[*(v13 + 48)];
        v63 = type metadata accessor for ItemMetadata();
        if (v62[*(v63 + 48)])
        {
          v64 = 5;
        }

        else
        {
          v64 = 4;
        }

        v62[*(v63 + 84)] = v64;
        (*(v27 + 16))(v61, v22, v13);
        (*(v27 + 56))(v61, 0, 1, v13);
        return (*(v27 + 8))(v22, v13);
      }

      v59 = *(v27 + 56);
      v60 = v68;
    }

    v59(v60, 1, 1, v13);
    return (*(v27 + 8))(v22, v13);
  }

  return result;
}

uint64_t sub_1CF57A0C8(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v78 = a8;
  v67 = a6;
  v66 = a5;
  v84 = a4;
  v70 = a3;
  v12 = *(*v8 + 600);
  v13 = *(*v8 + 616);
  v14 = type metadata accessor for SnapshotItem();
  v79 = sub_1CF9E75D8();
  v75 = *(v79 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v69 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v65 = *(v14 - 8);
  v20 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v68 = &v57 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v85 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v71 = &v57 - v27;
  v61 = v14;
  if (!a2)
  {
    v28 = 0;
    goto LABEL_5;
  }

  type metadata accessor for MaintenanceContinuation();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
LABEL_5:
    v30 = 1;
    goto LABEL_6;
  }

  v29 = v28;
  v28 = *(v28 + 16);
  v30 = *(v29 + 24);
LABEL_6:
  v31 = *(v78 + 8);
  v33 = (*(**(a1 + 32) + 360))(v28, v30, v84, a7, v31);
  v59 = v34;
  v77 = v31;
  v58 = v35;
  v81 = a1;
  v82 = a7;
  v36 = AssociatedTypeWitness;
  v37 = sub_1CF9E6DF8();
  v38 = v61;
  v39 = v71;
  if (v37)
  {
    v40 = 0;
    v76 = (v23 + 16);
    v74 = (v23 + 32);
    v72 = (v65 + 48);
    v64 = (v65 + 32);
    v63 = (v65 + 16);
    v62 = (v65 + 56);
    v73 = (v75 + 8);
    v65 += 8;
    v75 = v23 + 8;
    while (1)
    {
      v41 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v41)
      {
        result = (*(v23 + 16))(v39, v33 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v40, v36);
      }

      else
      {
        result = sub_1CF9E7998();
        if (v60 != 8)
        {
          goto LABEL_23;
        }

        v86[0] = result;
        (*v76)(v39, v86, v36);
        result = swift_unknownObjectRelease();
      }

      v42 = v40 + 1;
      v43 = v77;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v44 = v36;
      v45 = v85;
      (*v74)(v85, v39, v44);
      sub_1CF579C48(v45, v81, v84, v82, v43, v19);
      if ((*v72)(v19, 1, v38) == 1)
      {
        v36 = AssociatedTypeWitness;
        (*v75)(v85, AssociatedTypeWitness);
        (*v73)(v19, v79);
      }

      else
      {
        v46 = v23;
        v47 = v19;
        v48 = v68;
        v49 = v47;
        (*v64)(v68);
        v50 = v69;
        (*v63)(v69, v48, v38);
        (*v62)(v50, 0, 1, v38);
        v51 = v85;
        sub_1CF611904(v50, v85, 0, 0, 0, v81, *(v83 + 120), *(v83 + 128), 4096, v70, v84, v82, v78);
        (*v73)(v50, v79);
        (*v65)(v48, v38);
        v52 = v51;
        v36 = AssociatedTypeWitness;
        (*v75)(v52, AssociatedTypeWitness);
        v19 = v49;
        v23 = v46;
        v39 = v71;
      }

      ++v40;
      if (v42 == sub_1CF9E6DF8())
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_19:

    v53 = v82;
    v86[3] = v82;
    v86[4] = v78;
    if (v59)
    {
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v86);
      (*(*(v53 - 8) + 16))(boxed_opaque_existential_0, v84, v53);
      v66(v86, 0, 0, 0, 0);
    }

    else
    {
      v55 = __swift_allocate_boxed_opaque_existential_0(v86);
      (*(*(v53 - 8) + 16))(v55, v84, v53);
      type metadata accessor for MaintenanceContinuation();
      v56 = swift_allocObject();
      *(v56 + 16) = v58;
      *(v56 + 24) = 0;
      *(v56 + 32) = 0;
      *(v56 + 40) = 1;
      v66(v86, v56, 0, 0, 0);
    }

    return sub_1CEFCCC44(v86, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return result;
}

uint64_t sub_1CF57A9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, unint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = a4;
  v97 = a7;
  v84 = a5;
  v80 = a3;
  v93 = a1;
  v12 = *(*v8 + 600);
  v13 = *(*v8 + 608);
  v14 = *(*v8 + 616);
  v15 = *(*v8 + 624);
  v99 = v12;
  v100 = v13;
  v101 = v14;
  v102 = v15;
  v75 = type metadata accessor for ReconciliationMutation();
  v94 = *(v75 - 8);
  v16 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v66 - v17;
  v76 = v15;
  v78 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_1CF9E75D8();
  v89 = *(v18 - 8);
  v90 = v18;
  v19 = *(v89 + 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v66 - v20;
  v77 = v14;
  v79 = v12;
  v22 = swift_getAssociatedTypeWitness();
  v92 = *(v22 - 8);
  v23 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v98 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v88 = &v66 - v25;
  if (!fpfs_supports_pkg_dataless_escape_prevention())
  {
    v30 = v97;
    v102 = v97;
    v103 = a8;
    v31 = __swift_allocate_boxed_opaque_existential_0(&v99);
    (*(*(v30 - 8) + 16))(v31, v96, v30);
    v32 = 0x80000001CFA538C0;
    v33 = 0xD000000000000018;
    goto LABEL_6;
  }

  v87 = v21;
  v71 = v23;
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v26 = swift_dynamicCastClass();
    v27 = v88;
    if (v26)
    {
      v28 = v26;
      v26 = *(v26 + 16);
      v29 = *(v28 + 24);
    }

    else
    {
      v29 = 1;
    }

    v34 = v93;
    v35 = AssociatedTypeWitness;
  }

  else
  {
    v26 = 0;
    v29 = 1;
    v34 = v93;
    v35 = AssociatedTypeWitness;
    v27 = v88;
  }

  v36 = *(a8 + 8);
  v38 = (*(**(v34 + 32) + 368))(v26, v29, v96, v97, v36);
  v68 = v39;
  v67 = v40;
  v69 = a8;
  v70 = a6;
  if (!sub_1CF9E6DF8())
  {
LABEL_24:

    if ((v68 & 1) == 0)
    {
      v63 = v97;
      v102 = v97;
      v103 = v69;
      v64 = __swift_allocate_boxed_opaque_existential_0(&v99);
      (*(*(v63 - 8) + 16))(v64, v96, v63);
      type metadata accessor for MaintenanceContinuation();
      v65 = swift_allocObject();
      *(v65 + 16) = v67;
      *(v65 + 24) = 0;
      *(v65 + 32) = 0;
      *(v65 + 40) = 1;
      v84(&v99, v65, 0, 0, 0);

      return sub_1CEFCCC44(&v99, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    v61 = v97;
    v102 = v97;
    v103 = v69;
    v62 = __swift_allocate_boxed_opaque_existential_0(&v99);
    (*(*(v61 - 8) + 16))(v62, v96, v61);
    v33 = 0;
    v32 = 0;
LABEL_6:
    v84(&v99, 0, v33, v32, 0);
    return sub_1CEFCCC44(&v99, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v41 = 0;
  v91 = (v92 + 16);
  v86 = (v92 + 32);
  v83 = v35 - 8;
  v82 = (v89 + 8);
  v72 = (v94 + 8);
  v85 = (v92 + 8);
  while (1)
  {
    v43 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v43)
    {
      v44 = *(v92 + 16);
      v44(v27, (v38 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v41), v22);
      v45 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    result = sub_1CF9E7998();
    if (v71 != 8)
    {
      break;
    }

    v99 = result;
    v44 = *v91;
    (*v91)(v27, &v99, v22);
    swift_unknownObjectRelease();
    v45 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_18:
    v89 = v44;
    v94 = v45;
    v46 = v36;
    v47 = v98;
    v48 = v22;
    (*v86)(v98, v27, v22);
    v49 = v87;
    v50 = v47;
    v36 = v46;
    (*(**(v93 + 16) + 160))(v50, v96, v97, v46);
    if ((*(*(v35 - 8) + 48))(v49, 1, v35) == 1)
    {
      (*v85)(v98, v48);
      v42 = v49;
      v22 = v48;
      (*v82)(v42, v90);
    }

    else
    {
      (*v82)(v49, v90);
      v99 = v79;
      v100 = v78;
      v101 = v77;
      v102 = v76;
      v73 = type metadata accessor for JobResult();
      v51 = v48;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v53 = swift_getAssociatedConformanceWitness();
      v99 = v51;
      v100 = AssociatedTypeWitness;
      v101 = AssociatedConformanceWitness;
      v102 = v53;
      type metadata accessor for ReconciliationID();
      type metadata accessor for ReconciliationSideMutation();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v55 = v74;
      v56 = &v74[*(TupleTypeMetadata2 + 48)];
      v57 = v98;
      v89(v74, v98, v51);
      swift_storeEnumTagMultiPayload();
      *v56 = 0x100000000000;
      *(v56 + 8) = *(v81 + 120);
      v36 = v46;
      v22 = v51;
      v58 = v75;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v80, v55);
      v59 = v55;
      v35 = AssociatedTypeWitness;
      (*v72)(v59, v58);
      v60 = v57;
      v27 = v88;
      (*v85)(v60, v51);
    }

    ++v41;
    if (v94 == sub_1CF9E6DF8())
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF57B420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a5;
  v66 = a6;
  v11 = *(*v6 + 600);
  v12 = *(*v6 + 616);
  v13 = type metadata accessor for SnapshotItem();
  v14 = sub_1CF9E75D8();
  v64 = *(v14 - 8);
  v65 = v14;
  v15 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v63 - v16;
  v67 = *(v13 - 8);
  v18 = *(v67 + 64);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v63 - v21;
  v23 = *(a2 + 32);
  v24 = v68;
  result = (*(*v23 + 240))(a1, 1, a3, a4, v89, v20);
  if (!v24)
  {
    v26 = a1;
    v68 = 0;
    if ((*(v67 + 48))(v17, 1, v13) == 1)
    {
      (*(v64 + 8))(v17, v65);
      return (*(v67 + 56))(v66, 1, 1, v13);
    }

    v27 = v67;
    (*(v67 + 32))(v22, v17, v13);
    v28 = v68;
    (*(*v23 + 264))(&v73, v26, a3, a4, v89);
    if (v28)
    {
      return (*(v27 + 8))(v22, v13);
    }

    v29 = &v22[*(v13 + 52)];
    v30 = *(v29 + 13);
    v69[12] = *(v29 + 12);
    v69[13] = v30;
    v69[14] = *(v29 + 14);
    v70 = *(v29 + 30);
    v31 = *(v29 + 9);
    v69[8] = *(v29 + 8);
    v69[9] = v31;
    v32 = *(v29 + 11);
    v69[10] = *(v29 + 10);
    v69[11] = v32;
    v33 = *(v29 + 5);
    v69[4] = *(v29 + 4);
    v69[5] = v33;
    v34 = *(v29 + 7);
    v69[6] = *(v29 + 6);
    v69[7] = v34;
    v35 = *(v29 + 1);
    v69[0] = *v29;
    v69[1] = v35;
    v36 = *(v29 + 3);
    v69[2] = *(v29 + 2);
    v69[3] = v36;
    sub_1CEFCCC44(v69, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v37 = v85;
    v38 = v86;
    v39 = v84;
    *(v29 + 12) = v85;
    *(v29 + 13) = v38;
    v40 = v86;
    *(v29 + 14) = v87;
    v42 = v81;
    v41 = v82;
    v43 = v80;
    *(v29 + 8) = v81;
    *(v29 + 9) = v41;
    v44 = v82;
    v46 = v83;
    v45 = v84;
    *(v29 + 10) = v83;
    *(v29 + 11) = v45;
    v48 = v77;
    v47 = v78;
    v49 = v76;
    *(v29 + 4) = v77;
    *(v29 + 5) = v47;
    v50 = v78;
    v52 = v79;
    v51 = v80;
    *(v29 + 6) = v79;
    *(v29 + 7) = v51;
    v53 = v74;
    *v29 = v73;
    *(v29 + 1) = v53;
    v54 = v76;
    v56 = v73;
    v55 = v74;
    v57 = v75;
    *(v29 + 2) = v75;
    *(v29 + 3) = v54;
    v71[12] = v37;
    v71[13] = v40;
    v71[14] = v87;
    v71[8] = v42;
    v71[9] = v44;
    v71[10] = v46;
    v71[11] = v39;
    v71[4] = v48;
    v71[5] = v50;
    v71[6] = v52;
    v71[7] = v43;
    v71[0] = v56;
    v71[1] = v55;
    v58 = v88;
    *(v29 + 30) = v88;
    v72 = v58;
    v71[2] = v57;
    v71[3] = v49;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v71) == 1)
    {
      v59 = *(v27 + 56);
      v60 = v66;
    }

    else
    {
      v61 = v66;
      if ((v71[0] & 0xE) == 0)
      {
        v62 = &v22[*(v13 + 48)];
        v62[*(type metadata accessor for ItemMetadata() + 36)] = 1;
        (*(v27 + 16))(v61, v22, v13);
        (*(v27 + 56))(v61, 0, 1, v13);
        return (*(v27 + 8))(v22, v13);
      }

      v59 = *(v27 + 56);
      v60 = v66;
    }

    v59(v60, 1, 1, v13);
    return (*(v27 + 8))(v22, v13);
  }

  return result;
}

uint64_t sub_1CF57B888(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v78 = a8;
  v67 = a6;
  v66 = a5;
  v84 = a4;
  v70 = a3;
  v12 = *(*v8 + 600);
  v13 = *(*v8 + 616);
  v14 = type metadata accessor for SnapshotItem();
  v79 = sub_1CF9E75D8();
  v75 = *(v79 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v69 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v65 = *(v14 - 8);
  v20 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v68 = &v57 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v85 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v71 = &v57 - v27;
  v61 = v14;
  if (!a2)
  {
    v28 = 0;
    goto LABEL_5;
  }

  type metadata accessor for MaintenanceContinuation();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
LABEL_5:
    v30 = 1;
    goto LABEL_6;
  }

  v29 = v28;
  v28 = *(v28 + 16);
  v30 = *(v29 + 24);
LABEL_6:
  v31 = *(v78 + 8);
  v33 = (*(**(a1 + 32) + 376))(v28, v30, v84, a7, v31);
  v59 = v34;
  v77 = v31;
  v58 = v35;
  v81 = a1;
  v82 = a7;
  v36 = AssociatedTypeWitness;
  v37 = sub_1CF9E6DF8();
  v38 = v61;
  v39 = v71;
  if (v37)
  {
    v40 = 0;
    v76 = (v23 + 16);
    v74 = (v23 + 32);
    v72 = (v65 + 48);
    v64 = (v65 + 32);
    v63 = (v65 + 16);
    v62 = (v65 + 56);
    v73 = (v75 + 8);
    v65 += 8;
    v75 = v23 + 8;
    while (1)
    {
      v41 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v41)
      {
        result = (*(v23 + 16))(v39, v33 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v40, v36);
      }

      else
      {
        result = sub_1CF9E7998();
        if (v60 != 8)
        {
          goto LABEL_23;
        }

        v86[0] = result;
        (*v76)(v39, v86, v36);
        result = swift_unknownObjectRelease();
      }

      v42 = v40 + 1;
      v43 = v77;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v44 = v36;
      v45 = v85;
      (*v74)(v85, v39, v44);
      sub_1CF57B420(v45, v81, v84, v82, v43, v19);
      if ((*v72)(v19, 1, v38) == 1)
      {
        v36 = AssociatedTypeWitness;
        (*v75)(v85, AssociatedTypeWitness);
        (*v73)(v19, v79);
      }

      else
      {
        v46 = v23;
        v47 = v19;
        v48 = v68;
        v49 = v47;
        (*v64)(v68);
        v50 = v69;
        (*v63)(v69, v48, v38);
        (*v62)(v50, 0, 1, v38);
        v51 = v85;
        sub_1CF611904(v50, v85, 0, 0, 0, v81, *(v83 + 120), *(v83 + 128), 4096, v70, v84, v82, v78);
        (*v73)(v50, v79);
        (*v65)(v48, v38);
        v52 = v51;
        v36 = AssociatedTypeWitness;
        (*v75)(v52, AssociatedTypeWitness);
        v19 = v49;
        v23 = v46;
        v39 = v71;
      }

      ++v40;
      if (v42 == sub_1CF9E6DF8())
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_19:

    v53 = v82;
    v86[3] = v82;
    v86[4] = v78;
    if (v59)
    {
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v86);
      (*(*(v53 - 8) + 16))(boxed_opaque_existential_0, v84, v53);
      v66(v86, 0, 0, 0, 0);
    }

    else
    {
      v55 = __swift_allocate_boxed_opaque_existential_0(v86);
      (*(*(v53 - 8) + 16))(v55, v84, v53);
      type metadata accessor for MaintenanceContinuation();
      v56 = swift_allocObject();
      *(v56 + 16) = v58;
      *(v56 + 24) = 0;
      *(v56 + 32) = 0;
      *(v56 + 40) = 1;
      v66(v86, v56, 0, 0, 0);
    }

    return sub_1CEFCCC44(v86, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return result;
}

uint64_t sub_1CF57C1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, unint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = a6;
  v57 = a8;
  v54 = a4;
  v55 = a7;
  v53 = a5;
  v58 = a2;
  v10 = *v8;
  v11 = *(*v8 + 616);
  v12 = *(*v8 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(v10 + 624);
  v15 = *(v10 + 608);
  v63 = AssociatedTypeWitness;
  v64 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for ReconciliationID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v48 - v19;
  v63 = v12;
  v64 = v15;
  AssociatedConformanceWitness = v11;
  v66 = v14;
  v20 = type metadata accessor for PersistenceTrigger();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v48 - v24;
  if ((*(*a1 + 160))(v23))
  {
    v30 = v55;
    v66 = v55;
    v67 = v57;
    v31 = __swift_allocate_boxed_opaque_existential_0(&v63);
    (*(*(v30 - 8) + 16))(v31, v54, v30);
    v32 = 0xD000000000000018;
    v33 = 0x80000001CFA53840;
LABEL_6:
    v53(&v63, 0, v32, v33, 0);
    return sub_1CEFCCC44(&v63, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v48 = v18;
  if (!v58)
  {
    v26 = *(a1 + 40);
    sub_1CF046AB4();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    (*(*a1 + 312))(v25);
    (*(v21 + 8))(v25, v20);
  }

  v49 = v21;
  v27 = *(**(a1 + 16) + 312);
  v58 = a1;
  v29 = v54;
  v28 = v55;
  v35 = v27(v54, v55, *(v57 + 8));
  v63 = v35;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  v36 = sub_1CF9E7128();
  if (v36)
  {

    v66 = v28;
    v67 = v57;
    v37 = __swift_allocate_boxed_opaque_existential_0(&v63);
    (*(*(v28 - 8) + 16))(v37, v29, v28);
    v33 = 0x80000001CFA53860;
    v32 = 0xD000000000000012;
    goto LABEL_6;
  }

  if (!sub_1CF9E6DF8())
  {
LABEL_20:

    v43 = v55;
    v66 = v55;
    v67 = v57;
    v44 = __swift_allocate_boxed_opaque_existential_0(&v63);
    (*(*(v43 - 8) + 16))(v44, v54, v43);
    type metadata accessor for MaintenanceContinuation();
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *(v45 + 24) = 1;
    *(v45 + 32) = 0;
    *(v45 + 40) = 1;
    v61 = 0x6465737561706E75;
    v62 = 0xE900000000000020;
    v46 = sub_1CF9E6DF8();

    v60 = v46;
    v47 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v47);

    v53(&v63, v45, v61, v62, 0);

    return sub_1CEFCCC44(&v63, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v38 = 0;
  v39 = *(*v58 + 312);
  v50 = *v58 + 312;
  v51 = v39;
  v52 = (v17 + 16);
  v40 = (v49 + 8);
  while (1)
  {
    v41 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v41)
    {
      (*(v17 + 16))(v59, v35 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v38, v16);
      v42 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    result = sub_1CF9E7998();
    if (v48 != 8)
    {
      break;
    }

    v63 = result;
    (*v52)(v59, &v63, v16);
    swift_unknownObjectRelease();
    v42 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_14:
    (*(v17 + 32))(v25, v59, v16);
    swift_storeEnumTagMultiPayload();
    v51(v25);
    (*v40)(v25, v20);
    ++v38;
    if (v42 == sub_1CF9E6DF8())
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF57C99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, uint64_t, uint64_t, unint64_t, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v169 = a8;
  v170 = a7;
  v166 = a6;
  v167 = a5;
  v171 = a4;
  v150 = a3;
  *&v140 = a2;
  v168 = a1;
  v146 = *v8;
  v10 = v146;
  v148 = sub_1CF9E5CF8();
  *&v141 = *(v148 - 8);
  v11 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v146 + 600);
  v138 = *(v146 + 616);
  v139 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v153 = sub_1CF9E75D8();
  v137 = *(v153 - 8);
  v15 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v157 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v152 = &v126 - v18;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = v19;
  v21 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v151 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v156 = &v126 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v142 = &v126 - v27;
  v28 = *(v10 + 608);
  v29 = *(v10 + 624);
  v30 = type metadata accessor for SnapshotItem();
  v144 = sub_1CF9E75D8();
  v143 = *(v144 - 8);
  v31 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v163 = &v126 - v32;
  v155 = v30;
  v149 = *(v30 - 8);
  v33 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v145 = &v126 - v35;
  v135 = v29;
  v136 = v28;
  v36 = swift_getAssociatedTypeWitness();
  v159 = sub_1CF9E75D8();
  v161 = *(v159 - 1);
  v37 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v39 = &v126 - v38;
  v164 = v36;
  v165 = *(v36 - 8);
  v40 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v160 = &v126 - v42;
  v43 = sub_1CF656CD8(AssociatedTypeWitness, AssociatedTypeWitness);
  v44 = *(v43 + 52);
  v45 = *(v19 + 72);
  v46 = (*(v20 + 80) + *(v43 + 48)) & ~*(v20 + 80);
  swift_allocObject();
  v47 = sub_1CF9E6D68();
  v48 = *(*v9 + 576);
  v154 = v20;
  v49 = *(v20 + 16);
  v49(v50, v9 + v48, AssociatedTypeWitness);
  v51 = sub_1CF045898(v47);
  v175 = v51;
  v52 = *(**(v168 + 16) + 160);
  v53 = *(v169 + 8);
  v162 = v39;
  v52(v9 + v48, v171, v170, v53);
  v57 = v161;
  v127 = v48;
  v132 = 0;
  v58 = v163;
  v134 = v51;
  v129 = v49;
  v130 = v20 + 16;
  v133 = v53;
  v128 = v45;
  v131 = AssociatedTypeWitness;
  v59 = v164;
  v60 = v165;
  v61 = v162;
  v62 = (*(v165 + 48))(v162, 1, v164);
  if (v62 == 1)
  {

    (*(v57 + 8))(v61, v159);
    v63 = v170;
    *(&v173 + 1) = v170;
    v174 = v169;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v172);
    (*(*(v63 - 8) + 16))(boxed_opaque_existential_0, v171, v63);
    v167(&v172, 0, 0x746F6E206D657469, 0xEE00646E756F6220, 0);
    return sub_1CEFCCC44(&v172, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v65 = v160;
  (*(v60 + 32))(v160, v61, v59);
  v66 = v168;
  v67 = v170;
  v68 = v132;
  (*(**(v168 + 40) + 240))(v65, 1, v171, v170, v133);
  if (v68)
  {
    (*(v60 + 8))(v65, v59);

    v69 = v171;
    *(&v173 + 1) = v67;
    v174 = v169;
    v54 = __swift_allocate_boxed_opaque_existential_0(&v172);
    (*(*(v67 - 8) + 16))(v54, v69, v67);
    v55 = v68;
    v167(&v172, 0, 0, 0, v68);

    return sub_1CEFCCC44(&v172, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v70 = v149;
  v71 = v155;
  if ((*(v149 + 48))(v58, 1, v155) == 1)
  {

    (*(v143 + 8))(v58, v144);
    *(&v173 + 1) = v67;
    v174 = v169;
    v72 = __swift_allocate_boxed_opaque_existential_0(&v172);
    (*(*(v67 - 8) + 16))(v72, v171, v67);
    v167(&v172, 0, 0xD000000000000013, 0x80000001CFA53800, 0);
    (*(v165 + 8))(v160, v59);
    return sub_1CEFCCC44(&v172, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v73 = v145;
  (*(v70 + 32))(v145, v58, v71);
  v74 = *(v66 + 32);
  if (!sub_1CF056558())
  {
    v83 = 0;
    v84 = 1;
    v85 = v150;
    v77 = v168;
    v76 = v171;
LABEL_42:
    sub_1CF595E40(v175, v85, v77, v76, v67, v133);
    v123 = v160;

    *(&v173 + 1) = v67;
    v174 = v169;
    v124 = __swift_allocate_boxed_opaque_existential_0(&v172);
    (*(*(v67 - 8) + 16))(v124, v76, v67);
    if (v84)
    {
      v167(&v172, 0, 0, 0, 0);
    }

    else
    {
      type metadata accessor for MaintenanceContinuation();
      v125 = swift_allocObject();
      *(v125 + 16) = v83;
      *(v125 + 24) = 0;
      *(v125 + 32) = 0;
      *(v125 + 40) = 1;
      v167(&v172, v125, 0, 0, 0);
    }

    (*(v70 + 8))(v73, v155);
    (*(v165 + 8))(v123, v164);
    return sub_1CEFCCC44(&v172, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  WitnessTable = swift_getWitnessTable();
  sub_1CF06D940(v71, WitnessTable, &v172);
  v76 = v171;
  if (v172 != 1)
  {
    v83 = 0;
    v84 = 1;
    v85 = v150;
    v77 = v168;
    goto LABEL_42;
  }

  v129(v142, v9 + v127, v131);
  v77 = v168;
  if (v140)
  {
    type metadata accessor for MaintenanceContinuation();
    v78 = swift_dynamicCastClass();
    v79 = v133;
    v80 = v141;
    if (v78)
    {
      v81 = *(v78 + 16);
      v82 = *(v78 + 24);
    }

    else
    {
      v81 = 0;
      v82 = 1;
    }
  }

  else
  {
    v81 = 0;
    v82 = 1;
    v79 = v133;
    v80 = v141;
  }

  v86 = v142;
  v87 = (*(*v74 + 392))(v142, v81, v82, v76, v67, v79);
  LODWORD(v132) = v88;
  v134 = v89;
  v91 = v154 + 8;
  v90 = *(v154 + 8);
  v154 += 8;
  v159 = v90;
  result = v90(v86, v131);
  v92 = 0;
  v144 = v87;
  v93 = v87 + 64;
  v94 = 1 << *(v87 + 32);
  v95 = -1;
  if (v94 < 64)
  {
    v95 = ~(-1 << v94);
  }

  v96 = v95 & *(v87 + 64);
  v97 = (v94 + 63) >> 6;
  v98 = TupleTypeMetadata2;
  v162 = (TupleTypeMetadata2 - 8);
  v163 = (v91 + 24);
  v161 = v137 + 32;
  v142 = (v80 + 8);
  *&v99 = v138;
  *(&v99 + 1) = v135;
  v141 = v99;
  *&v99 = v139;
  *(&v99 + 1) = v136;
  v140 = v99;
  v143 = v93;
  while (1)
  {
    v100 = v157;
    if (!v96)
    {
      break;
    }

    v101 = v92;
LABEL_33:
    v104 = __clz(__rbit64(v96));
    v96 &= v96 - 1;
    v105 = v104 | (v101 << 6);
    v106 = v144;
    v107 = v156;
    v108 = v131;
    v129(v156, (*(v144 + 48) + v105 * v128), v131);
    LOBYTE(v105) = *(*(v106 + 56) + v105);
    v98 = TupleTypeMetadata2;
    v109 = *(TupleTypeMetadata2 + 48);
    v100 = v157;
    (*v163)(v157, v107, v108);
    v110 = 0;
    v100[v109] = v105;
    v77 = v168;
    v93 = v143;
LABEL_34:
    v111 = *(v98 - 8);
    (*(v111 + 56))(v100, v110, 1, v98);
    v112 = v152;
    (*v161)();
    if ((*(v111 + 48))(v112, 1, v98) == 1)
    {

      v67 = v170;
      v76 = v171;
      v70 = v149;
      v73 = v145;
      v83 = v134;
      v84 = v132;
      v85 = v150;
      goto LABEL_42;
    }

    v113 = v112[*(v98 + 48)];
    v114 = v151;
    (*v163)(v151, v112, v108);
    if (v113 == 1)
    {
      v172 = v140;
      v173 = v141;
      type metadata accessor for JobResult();
      v115 = v147;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v117 = v116;
      result = (*v142)(v115, v148);
      v118 = v117 * 1000000000.0;
      if (COERCE__INT64(fabs(v117 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_47;
      }

      result = v146;
      if (v118 <= -9.22337204e18)
      {
        goto LABEL_48;
      }

      if (v118 >= 9.22337204e18)
      {
        goto LABEL_49;
      }

      v119 = v118;
      v120 = *(v146 + 48);
      v121 = *(v146 + 52);
      swift_allocObject();
      v122 = sub_1CF052464(v114, 0, v119, 0);
      sub_1CF803A0C(v150, v122);

      v77 = v168;
      v108 = v131;
    }

    else
    {
      v129(v156, v114, v108);
      sub_1CF9E6E58();
      sub_1CF9E6E18();
    }

    result = v159(v114, v108);
    v98 = TupleTypeMetadata2;
  }

  if (v97 <= v92 + 1)
  {
    v102 = v92 + 1;
  }

  else
  {
    v102 = v97;
  }

  v103 = v102 - 1;
  while (1)
  {
    v101 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      break;
    }

    if (v101 >= v97)
    {
      v96 = 0;
      v110 = 1;
      v92 = v103;
      v108 = v131;
      goto LABEL_34;
    }

    v96 = *(v93 + 8 * v101);
    ++v92;
    if (v96)
    {
      v92 = v101;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1CF57DC58(uint64_t *a1)
{
  sub_1CF1A91AC(a1, v4);
  v2 = sub_1CF487C6C(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1CF57DCEC(uint64_t a1, int **a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v171 = a8;
  v166 = a2;
  v167 = a7;
  v162 = a6;
  v163 = a5;
  v165 = a3;
  v12 = *v8;
  v150 = v12;
  v13 = sub_1CF9E5CF8();
  v139 = *(v13 - 8);
  v140 = v13;
  v14 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v138 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 + 616);
  v17 = *(v12 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v146 = *(AssociatedTypeWitness - 8);
  v147 = AssociatedTypeWitness;
  v19 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v144 = &v129 - v20;
  v149 = type metadata accessor for SnapshotMutation();
  v156 = *(v149 - 8);
  v21 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v129 - v22;
  v151 = v16;
  v152 = v17;
  v23 = type metadata accessor for SnapshotItem();
  v158 = sub_1CF9E75D8();
  v155 = *(v158 - 8);
  v24 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v159 = &v129 - v25;
  v164 = v23;
  v161 = *(v23 - 8);
  v26 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v169 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v129 - v29;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v129 - v33;
  v35 = v12;
  v160 = a1;
  v36 = *(a1 + 32);
  v37 = *(v35 + 576);
  v38 = *(*v36 + 352);
  v39 = *(v171 + 8);
  v40 = v9;
  v41 = v9 + v37;
  v170 = a4;
  v42 = v167;
  v43 = v38(v41, a4, v32);
  v143 = v37;
  v157 = v40;
  v145 = v34;
  v131 = v26;
  v168 = v30;
  v44 = v164;
  v153 = v36;
  v154 = v39;
  if (v43 == 501)
  {
    v45 = fpfs_supports_indexAllRemoteItems() ^ 1;
    v47 = v146;
    v46 = v147;
    v49 = v154;
    v48 = v157;
    goto LABEL_6;
  }

  v45 = 1;
  v47 = v146;
  v46 = v147;
  v48 = v157;
  if (v43 == 502)
  {
    v49 = v154;
LABEL_6:
    v50 = v166;
    v51 = v143;
    goto LABEL_7;
  }

  v49 = v154;
  v50 = v166;
  v51 = v143;
  v45 = v43 == 1003;
LABEL_7:
  v132 = v45;
  v52 = v153;
  v53 = (*(*v153 + 496))(v48 + v51, v50, v170, v42, v49);
  v56 = v55;
  v57 = v53;
  v58 = sub_1CF9E6DF8();
  v130 = v56;
  if (v58)
  {
    v59 = 0;
    LODWORD(v157) = 0;
    v60 = v161;
    v166 = (v161 + 16);
    v136 = (v161 + 56);
    v137 = (v155 + 8);
    v133 = (v156 + 8);
    v134 = 0x80000001CFA537B0;
    v141 = (v161 + 32);
    v142 = (v161 + 8);
    v61 = v57;
    v143 = v57;
    do
    {
      v64 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      v156 = v59;
      if (v64)
      {
        v65 = v61 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v59;
        v66 = v145;
        v164 = *(v60 + 16);
        result = (v164)(v145, v65, v44);
      }

      else
      {
        result = sub_1CF9E7998();
        if (v131 != 8)
        {
          goto LABEL_43;
        }

        *&v177 = result;
        v101 = v145;
        v164 = *v166;
        (v164)(v145, &v177, v44);
        v66 = v101;
        result = swift_unknownObjectRelease();
        v59 = v156;
      }

      v67 = v170;
      if (__OFADD__(v59, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      v155 = v59 + 1;
      v68 = v168;
      (*v141)(v168, v66, v44);
      (*(*v52 + 264))(v193, v68, v67, v42, v154);
      v69 = &v68[v44[13]];
      v70 = *(v69 + 13);
      v189 = *(v69 + 12);
      v190 = v70;
      v191 = *(v69 + 14);
      v192 = *(v69 + 30);
      v71 = *(v69 + 9);
      v185 = *(v69 + 8);
      v186 = v71;
      v72 = *(v69 + 11);
      v187 = *(v69 + 10);
      v188 = v72;
      v73 = *(v69 + 5);
      v181 = *(v69 + 4);
      v182 = v73;
      v74 = *(v69 + 7);
      v183 = *(v69 + 6);
      v184 = v74;
      v75 = *(v69 + 1);
      v177 = *v69;
      v178 = v75;
      v76 = *(v69 + 3);
      v179 = *(v69 + 2);
      v180 = v76;
      sub_1CEFCCC44(&v177, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v77 = v193[13];
      *(v69 + 12) = v193[12];
      *(v69 + 13) = v77;
      *(v69 + 14) = v193[14];
      *(v69 + 30) = v194;
      v78 = v193[9];
      *(v69 + 8) = v193[8];
      *(v69 + 9) = v78;
      v79 = v193[11];
      *(v69 + 10) = v193[10];
      *(v69 + 11) = v79;
      v80 = v193[5];
      *(v69 + 4) = v193[4];
      *(v69 + 5) = v80;
      v81 = v193[7];
      *(v69 + 6) = v193[6];
      *(v69 + 7) = v81;
      v82 = v193[1];
      *v69 = v193[0];
      *(v69 + 1) = v82;
      v83 = v193[3];
      *(v69 + 2) = v193[2];
      *(v69 + 3) = v83;
      v84 = v169;
      v85 = v42;
      v86 = v164;
      (v164)(v169, v68, v44);
      v176 = 2;
      v87 = v159;
      v88 = v68;
      v89 = v84;
      (v86)(v159, v88, v44);
      v42 = v85;
      (*v136)(v87, 0, 1, v44);
      v90 = sub_1CF6129E4(v87, v84, &v176, v160, v165, 0, v67, v85, v171);
      (*v137)(v87, v158);
      if ((v176 & 0x400000000000000) != 0)
      {
        v91 = *(v150 + 608);
        v92 = *(v150 + 624);
        v172 = v152;
        v173 = v91;
        v174 = v151;
        v175 = v92;
        v93 = type metadata accessor for JobResult();
        MEMORY[0x1EEE9AC00](v93);
        qmemcpy(&v129 - 4, "from to  reason ", 16);
        LOBYTE(v128) = 0;
        v172 = v44;
        v173 = v44;
        v174 = &type metadata for Fields;
        v175 = MEMORY[0x1E69E6158];
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v95 = TupleTypeMetadata[12];
        v135 = TupleTypeMetadata[16];
        v96 = v148;
        v97 = &v148[TupleTypeMetadata[20]];
        v98 = v164;
        (v164)(v148, v168, v44);
        (v98)(v96 + v95, v169, v44);
        *(v96 + v135) = 0x400000000000000;
        *v97 = 0xD000000000000018;
        *(v97 + 1) = v134;
        v42 = v167;
        v99 = v149;
        swift_storeEnumTagMultiPayload();
        sub_1CF9491AC(v165, v96);
        v100 = v96;
        v89 = v169;
        (*v133)(v100, v99);
      }

      LODWORD(v157) = v90 | v157;
      v62 = *v142;
      (*v142)(v89, v44);
      v62(v168, v44);
      v61 = v143;
      v63 = sub_1CF9E6DF8();
      v59 = v156 + 1;
      v52 = v153;
      v60 = v161;
    }

    while (v155 != v63);

    v105 = v151;
    v47 = v146;
    v46 = v147;
    if (v130)
    {
      v102 = v152;
      v104 = v150;
      v103 = v157;
      goto LABEL_23;
    }

    v106 = 1;
    v102 = v152;
    v104 = v150;
    if (v157)
    {
      v107 = 0;
      goto LABEL_30;
    }
  }

  else
  {

    v102 = v152;
    if (v56)
    {
      v103 = 0;
      v104 = v150;
      v105 = v151;
LABEL_23:
      v106 = 0;
      v107 = v132;
      if ((v132 | v103))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v106 = 1;
      v105 = v151;
    }
  }

  (*(*v160[3] + 168))(66, 0x800000, 0, 1, v170, v42, v154);
  v108 = sub_1CF9E6DF8();

  if (v108 <= 0)
  {
    ((*v160)[74])(v109);
    if (v106)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  v107 = 0;
  v102 = v152;
  v104 = v150;
LABEL_30:
  LODWORD(v169) = v106;
  v132 = v107;
  v110 = *(v104 + 608);
  v111 = *(v104 + 624);
  *&v177 = v102;
  *(&v177 + 1) = v110;
  *&v178 = v105;
  *(&v178 + 1) = v111;
  type metadata accessor for JobResult();
  *&v177 = v102;
  *(&v177 + 1) = v110;
  *&v178 = v105;
  *(&v178 + 1) = v111;
  refreshed = type metadata accessor for Maintenance.PaceRefreshInheritedContentPolicy();
  sub_1CF046AB4();
  v113 = v138;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v115 = v114;
  result = (*(v139 + 8))(v113, v140);
  v116 = v115 * 1000000000.0;
  if (COERCE__INT64(fabs(v115 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v116 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v116 < 9.22337204e18)
  {
    v117 = v116;
    v118 = *(refreshed + 48);
    v119 = *(refreshed + 52);
    swift_allocObject();
    v120 = v144;
    sub_1CF052464(v144, 0, v117, 0);
    (*(v47 + 8))(v120, v46);
    v121 = sub_1CF052548(0x1000000);

    sub_1CF803A0C(v165, v121);

    v42 = v167;
    if (v169)
    {
LABEL_34:
      *(&v178 + 1) = v42;
      *&v179 = v171;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v177);
      (*(*(v42 - 8) + 16))(boxed_opaque_existential_0, v170, v42);
      v163(&v177, 0, 0, 0, 0);
      return sub_1CEFCCC44(&v177, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    if (v132)
    {
      *&v177 = v152;
      *(&v177 + 1) = v110;
      *&v178 = v105;
      *(&v178 + 1) = v111;
      type metadata accessor for Maintenance.InheritedContentPolicyContinuation();
      v123 = *(v130 + 16);
      v124 = swift_allocObject();
      *(v124 + 16) = v123;
      *(&v178 + 1) = v42;
      *&v179 = v171;
      v125 = __swift_allocate_boxed_opaque_existential_0(&v177);
      (*(*(v42 - 8) + 16))(v125, v170, v42);
      v163(&v177, v124, 0, 0, 0);

      return sub_1CEFCCC44(&v177, &unk_1EC4C1B30, &qword_1CFA05300);
    }

LABEL_38:
    *(&v178 + 1) = v42;
    *&v179 = v171;
    v126 = __swift_allocate_boxed_opaque_existential_0(&v177);
    (*(*(v42 - 8) + 16))(v126, v170, v42);
    v127 = v130;

    v163(&v177, v127, 0, 0, 0);

    return sub_1CEFCCC44(&v177, &unk_1EC4C1B30, &qword_1CFA05300);
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1CF57EC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a4;
  v70 = a7;
  v60 = a6;
  v61 = a5;
  v12 = *(*v8 + 608);
  v13 = *(*v8 + 616);
  v14 = *(*v8 + 624);
  v71 = *(*v8 + 600);
  v11 = v71;
  v72 = v12;
  v64 = v14;
  v65 = v12;
  v73 = v13;
  v74 = v14;
  v63 = type metadata accessor for PersistenceTrigger();
  v68 = *(v63 - 8);
  v15 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v17 = &v50 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  v19 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v50 - v20;
  v67 = a1;
  v22 = *(a1 + 24);
  v23 = [objc_opt_self() defaultStore];
  v24 = [v23 speculativeSetRefreshInheritedContentPolicyMaximumJobs];

  v25 = *(*v22 + 160);
  v62 = a8;
  v26 = *(a8 + 8);
  result = v25(1, 66, v24, 0, v69, v70, v26);
  v57 = v21;
  v58 = v19;
  v56 = v13;
  v59 = v11;
  if (result >= v24)
  {
    v43 = v70;
    v74 = v70;
    v75 = v62;
    v44 = __swift_allocate_boxed_opaque_existential_0(&v71);
    (*(*(v43 - 8) + 16))(v44, v69, v43);
    v61(&v71, 0, 0, 0, 0);
    return sub_1CEFCCC44(&v71, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v50 = result;
  if (!__OFSUB__(v24, result))
  {
    v28 = (*(*v22 + 168))(66, 0x800000, 0, &v24[-result], v69, v70, v26);
    v29 = v67;
    v30 = v68;
    v31 = v58;
    v32 = v57;
    v33 = v28;

    if (sub_1CF9E6DF8())
    {
      v34 = 0;
      v35 = (*v29 + 312);
      v54 = *v35;
      v53 = v35;
      v55 = (v66 + 16);
      v52 = (v66 + 32);
      v51 = (v30 + 8);
      while (1)
      {
        v36 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v36)
        {
          result = (*(v66 + 16))(v32, v33 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v34, AssociatedTypeWitness);
        }

        else
        {
          result = sub_1CF9E7998();
          if (v31 != 8)
          {
            goto LABEL_21;
          }

          v71 = result;
          (*v55)(v32, &v71, AssociatedTypeWitness);
          result = swift_unknownObjectRelease();
        }

        if (__OFADD__(v34, 1))
        {
          break;
        }

        v68 = v34 + 1;
        v37 = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v39 = swift_getAssociatedConformanceWitness();
        v71 = AssociatedTypeWitness;
        v72 = v37;
        v73 = AssociatedConformanceWitness;
        v74 = v39;
        type metadata accessor for ReconciliationID();
        v40 = *(swift_getTupleTypeMetadata2() + 48);
        v32 = v57;
        (*v52)(v17, v57, AssociatedTypeWitness);
        swift_storeEnumTagMultiPayload();
        v17[v40] = 66;
        v29 = v67;
        v41 = v63;
        swift_storeEnumTagMultiPayload();
        v54(v17);
        (*v51)(v17, v41);
        v42 = sub_1CF9E6DF8();
        ++v34;
        v31 = v58;
        if (v68 == v42)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_20;
    }

LABEL_13:

    if (v50)
    {

      v45 = v61;
    }

    else
    {
      v46 = sub_1CF9E6DF8();

      v45 = v61;
      if (!v46)
      {
        (*(*v29 + 592))(v47);
      }
    }

    v48 = v70;
    v74 = v70;
    v75 = v62;
    v49 = __swift_allocate_boxed_opaque_existential_0(&v71);
    (*(*(v48 - 8) + 16))(v49, v69, v48);
    v45(&v71, 0, 0, 0, 0);
    return sub_1CEFCCC44(&v71, &unk_1EC4C1B30, &qword_1CFA05300);
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1CF57F3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a5;
  v52 = a8;
  v50 = a6;
  v53 = a4;
  v56 = a3;
  v12 = *v8;
  v13 = *v8;
  v14 = *(*v8 + 616);
  v57 = v8;
  v15 = *(v12 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  v49 = *(v58 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v46 - v18;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v20 = swift_dynamicCastClass()) != 0) && *(v20 + 24) != 1)
  {
    v21 = *(v20 + 16);
  }

  else
  {
    v21 = 0;
  }

  v22 = a7;
  v23 = (*(**(a1 + 32) + 632))(v21, v53, a7, *(v52 + 8), v17);
  v47 = v24;
  v46 = v25;
  v48 = v22;
  if (sub_1CF9E6DF8())
  {
    v26 = v13;
    v27 = *(v13 + 608);
    v28 = *(v26 + 624);
    v59 = v15;
    v60 = v27;
    v61 = v14;
    v62 = v28;
    v54 = type metadata accessor for JobResult();
    v59 = v15;
    v60 = v27;
    v61 = v14;
    v62 = v28;
    refreshed = type metadata accessor for Maintenance.RefreshInheritedContentPolicy();
    v30 = 0;
    v55 = (v58 + 16);
    v31 = (v58 + 8);
    do
    {
      v32 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v32)
      {
        (*(v58 + 16))(v19, v23 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v30, AssociatedTypeWitness);
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v49 != 8)
        {
          __break(1u);
          return result;
        }

        v59 = result;
        (*v55)(v19, &v59, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      v34 = v57[15];
      v35 = v57[16];
      v36 = v57[17];
      v37 = *(refreshed + 48);
      v38 = *(refreshed + 52);
      swift_allocObject();
      v39 = sub_1CF052464(v19, v34, v35, v36);
      (*v31)(v19, AssociatedTypeWitness);
      sub_1CF803A0C(v56, v39);

      ++v30;
    }

    while (v33 != sub_1CF9E6DF8());
  }

  v41 = v48;
  v42 = v53;
  v62 = v48;
  v63 = v52;
  if (v47)
  {
    v43 = __swift_allocate_boxed_opaque_existential_0(&v59);
    (*(*(v41 - 8) + 16))(v43, v42, v41);
    v51(&v59, 0, 0, 0, 0);
  }

  else
  {
    v44 = __swift_allocate_boxed_opaque_existential_0(&v59);
    (*(*(v41 - 8) + 16))(v44, v42, v41);
    type metadata accessor for MaintenanceContinuation();
    v45 = swift_allocObject();
    *(v45 + 16) = v46;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0;
    *(v45 + 40) = 1;
    v51(&v59, v45, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v59, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF57F90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v66 = a8;
  v68 = a7;
  v64 = a6;
  v65 = a5;
  v67 = a4;
  v81 = a3;
  v11 = *v8;
  v12 = *(*v8 + 616);
  v13 = *(*v8 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = *(AssociatedTypeWitness - 8);
  v15 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v60 - v18;
  v19 = *(v11 + 624);
  v82 = v8;
  v20 = *(v11 + 608);
  v21 = swift_getAssociatedTypeWitness();
  *&v85 = v12;
  *&v84 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v63 = v19;
  v23 = swift_getAssociatedConformanceWitness();
  v80 = AssociatedTypeWitness;
  *&v87 = AssociatedTypeWitness;
  *(&v87 + 1) = v21;
  *&v88 = AssociatedConformanceWitness;
  *(&v88 + 1) = v23;
  v24 = type metadata accessor for ReconciliationID();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v60 - v30;
  v69 = v20;
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      v33 = v32;
      v32 = *(v32 + 16);
      v34 = *(v33 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v32 = 0;
  }

  v34 = 1;
LABEL_6:
  v35 = (*(**(a1 + 16) + 320))(v32, v34, v67, v68, *(v66 + 8));
  v61 = v36;
  v60 = v37;
  if (sub_1CF9E6DF8())
  {
    v38 = 0;
    v39 = (v25 + 16);
    v86 = (v25 + 32);
    v72 = (v83 + 32);
    v71 = (v83 + 16);
    v70 = v83 + 8;
    *&v40 = v85;
    *(&v40 + 1) = v63;
    v85 = v40;
    *&v40 = v84;
    *(&v40 + 1) = v69;
    v84 = v40;
    v69 = (v25 + 8);
    v76 = v28;
    v77 = v25;
    v74 = v35;
    v75 = v31;
    v73 = (v25 + 16);
    v41 = (v83 + 8);
    do
    {
      v42 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v42)
      {
        (*(v25 + 16))(v31, v35 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v38, v24);
        v43 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v62 != 8)
        {
          __break(1u);
          return result;
        }

        *&v87 = result;
        (*v39)(v31, &v87, v24);
        swift_unknownObjectRelease();
        v43 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      (*v86)(v28, v31, v24);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v69)(v28, v24);
      }

      else
      {
        v44 = v78;
        v45 = v80;
        (*v72)(v78, v28, v80);
        v46 = v79;
        (*v71)(v79, v44, v45);
        v47 = v82[15];
        v48 = v82[16];
        v49 = v82[17];
        v88 = v85;
        v87 = v84;
        v83 = type metadata accessor for JobResult();
        v88 = v85;
        v87 = v84;
        type metadata accessor for Ingestion.FetchChildrenMetadata();
        v50 = sub_1CF65707C(v46, v47, v48, v49 | 0x80000000);
        v51 = *v41;
        v52 = v46;
        v28 = v76;
        (*v41)(v52, v45);
        sub_1CF803A0C(v81, v50);
        v39 = v73;

        v53 = v44;
        v35 = v74;
        v54 = v45;
        v25 = v77;
        v51(v53, v54);
        v31 = v75;
      }

      ++v38;
    }

    while (v43 != sub_1CF9E6DF8());
  }

  v56 = v68;
  *(&v88 + 1) = v68;
  v89 = v66;
  if (v61)
  {
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v87);
    (*(*(v56 - 8) + 16))(boxed_opaque_existential_0, v67, v56);
    v65(&v87, 0, 0, 0, 0);
  }

  else
  {
    v58 = __swift_allocate_boxed_opaque_existential_0(&v87);
    (*(*(v56 - 8) + 16))(v58, v67, v56);
    type metadata accessor for MaintenanceContinuation();
    v59 = swift_allocObject();
    *(v59 + 16) = v60;
    *(v59 + 24) = 0;
    *(v59 + 32) = 0;
    *(v59 + 40) = 1;
    v65(&v87, v59, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v87, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58013C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v63 = a8;
  v61 = a6;
  v62 = a5;
  v64 = a4;
  v72 = a3;
  v69 = a1;
  v12 = *v8;
  v13 = v12[76];
  v14 = v12[77];
  v15 = v12[78];
  v78 = v12[75];
  v79 = v13;
  v73 = v15;
  v74 = v13;
  v80 = v14;
  v81 = v15;
  v71 = type metadata accessor for ReconciliationMutation();
  v16 = *(v71 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v19 = &v55 - v18;
  v75 = v14;
  v76 = v78;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v77 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v55 - v25;
  v60 = sub_1CF9E75D8();
  v59 = *(v60 - 8);
  v27 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v29 = &v55 - v28;
  v65 = a7;
  v66 = v16;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v30 = swift_dynamicCastClass()) != 0))
  {
    v68 = *(v30 + 16);
    v31 = *(v30 + 24);
  }

  else
  {
    v68 = 0;
    v31 = 1;
  }

  v32 = v12[72];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v70 = AssociatedConformanceWitness;
  v34 = *(*(AssociatedConformanceWitness + 40) + 8);
  v35 = sub_1CF9E6868();
  (*(v21 + 8))(v26, AssociatedTypeWitness);
  if (v35)
  {
    v36 = 1;
  }

  else
  {
    (*(v21 + 16))(v29, &v9[v32], AssociatedTypeWitness);
    v36 = 0;
  }

  v37 = v64;
  v38 = v69;
  (*(v21 + 56))(v29, v36, 1, AssociatedTypeWitness);
  v39 = (*(**(v38 + 16) + 328))(v29, v68, v31, v37, v65, *(v63 + 8));
  v56 = v40;
  v55 = v41;
  v69 = v21;
  v57 = v29;
  if (sub_1CF9E6DF8())
  {
    v78 = v76;
    v79 = v74;
    v80 = v75;
    v81 = v73;
    type metadata accessor for JobResult();
    v42 = 0;
    v67 = (v69 + 32);
    v68 = (v69 + 16);
    ++v66;
    do
    {
      v43 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v43)
      {
        (*(v69 + 16))(v77, v39 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v42, AssociatedTypeWitness);
        v44 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v58 != 8)
        {
          __break(1u);
          return result;
        }

        v78 = result;
        (*v68)(v77, &v78, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v44 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      v45 = swift_getAssociatedTypeWitness();
      v46 = swift_getAssociatedConformanceWitness();
      v78 = AssociatedTypeWitness;
      v79 = v45;
      v80 = v70;
      v81 = v46;
      type metadata accessor for ReconciliationID();
      type metadata accessor for ReconciliationSideMutation();
      v47 = *(swift_getTupleTypeMetadata2() + 48);
      (*v67)(v19, v77, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      v19[v47] = 0;
      swift_storeEnumTagMultiPayload();
      v48 = v71;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v72, v19);
      (*v66)(v19, v48);
      ++v42;
    }

    while (v44 != sub_1CF9E6DF8());
  }

  v50 = v65;
  v51 = v57;
  v81 = v65;
  v82 = v63;
  if (v56)
  {
    v52 = __swift_allocate_boxed_opaque_existential_0(&v78);
    (*(*(v50 - 8) + 16))(v52, v64, v50);
    v62(&v78, 0, 0, 0, 0);
  }

  else
  {
    v53 = __swift_allocate_boxed_opaque_existential_0(&v78);
    (*(*(v50 - 8) + 16))(v53, v64, v50);
    type metadata accessor for MaintenanceContinuation();
    v54 = swift_allocObject();
    *(v54 + 16) = v55;
    *(v54 + 24) = 0;
    *(v54 + 32) = 0;
    *(v54 + 40) = 1;
    v62(&v78, v54, 0, 0, 0);
  }

  (*(v59 + 8))(v51, v60);
  return sub_1CEFCCC44(&v78, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF580A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v345 = a8;
  v290 = a7;
  v263 = a6;
  v264 = a5;
  v289 = a4;
  v279 = a3;
  v12 = *(*v8 + 608);
  v13 = *(*v8 + 616);
  v14 = *(*v8 + 624);
  v353 = *(*v8 + 600);
  v11 = v353;
  v354 = v12;
  v355 = v13;
  v356 = v14;
  v278 = type metadata accessor for ReconciliationMutation();
  v340 = *(v278 - 8);
  v15 = *(v340 + 64);
  MEMORY[0x1EEE9AC00](v278);
  v277 = &v250 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedTypeWitness();
  v291 = v14;
  v293 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v292 = v13;
  v294 = v11;
  v350 = AssociatedTypeWitness;
  v20 = swift_getAssociatedConformanceWitness();
  v353 = AssociatedTypeWitness;
  v354 = v18;
  v355 = AssociatedConformanceWitness;
  v356 = v20;
  v326 = type metadata accessor for ReconciliationID();
  v21 = v326[-1].i64[1];
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v326);
  v314 = &v250 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v325 = &v250 - v25;
  v26 = *(AssociatedTypeWitness - 8);
  v27 = *(v26 + 8);
  MEMORY[0x1EEE9AC00](v28);
  v304 = &v250 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v283 = &v250 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v303 = &v250 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v268 = &v250 - v35;
  v353 = v18;
  v354 = AssociatedTypeWitness;
  v335 = v20;
  v355 = v20;
  v356 = AssociatedConformanceWitness;
  v336 = AssociatedConformanceWitness;
  v36 = type metadata accessor for ReconciliationID();
  v299 = *(v36 - 8);
  v37 = *(v299 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v276 = &v250 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v313 = &v250 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v288 = &v250 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v323 = &v250 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v287 = &v250 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v281 = &v250 - v48;
  v254 = v49;
  MEMORY[0x1EEE9AC00](v50);
  v328 = &v250 - v51;
  v342 = *(v18 - 8);
  v52 = v342[8];
  MEMORY[0x1EEE9AC00](v53);
  v306 = &v250 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v302 = &v250 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v282 = &v250 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v270 = &v250 - v60;
  v331 = sub_1CF9E75D8();
  v337 = *(v331 - 8);
  v61 = *(v337 + 64);
  MEMORY[0x1EEE9AC00](v331);
  v267 = &v250 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v329 = &v250 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v284 = &v250 - v66;
  v67 = sub_1CF9E75D8();
  v334 = *(v67 - 8);
  v68 = *(v334 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v312 = &v250 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v311 = &v250 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v269 = &v250 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v347 = &v250 - v75;
  v351 = v18;
  v76 = sub_1CF9E75D8();
  v77 = *(v76 - 8);
  v78 = v77[8];
  MEMORY[0x1EEE9AC00](v76);
  v310 = &v250 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80);
  v309 = &v250 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v272 = &v250 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v346 = &v250 - v85;
  v327 = v36;
  v86 = v76;
  v271 = sub_1CF9E6E58();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v275 = *(TupleTypeMetadata3 - 8);
  v253 = *(v275 + 64);
  v87 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v280 = &v250 - v88;
  v338 = v26;
  v339 = v21;
  v341 = v77;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v89 = swift_dynamicCastClass()) != 0) && *(v89 + 24) != 1)
  {
    v90 = *(v89 + 16);
  }

  else
  {
    v90 = 0;
  }

  v91 = *(v345 + 8);
  v92 = (*(**(a1 + 16) + 488))(v90, v289, v290, v91, v87);
  v252 = v96;
  v285 = v91;
  v251 = v97;
  v297 = 0;
  v286 = a1;
  v98 = v92;
  v99 = TupleTypeMetadata3;
  v100 = sub_1CF9E6DF8();
  v101 = v350;
  v102 = v327;
  if (!v100)
  {
LABEL_108:

    v242 = v290;
    v356 = v290;
    v357 = v345;
    if (v252)
    {
      v243 = __swift_allocate_boxed_opaque_existential_0(&v353);
      (*(*(v242 - 8) + 16))(v243, v289, v242);
      v264(&v353, 0, 0, 0, 0);
    }

    else
    {
      v244 = __swift_allocate_boxed_opaque_existential_0(&v353);
      (*(*(v242 - 8) + 16))(v244, v289, v242);
      type metadata accessor for MaintenanceContinuation();
      v245 = swift_allocObject();
      *(v245 + 16) = v251;
      *(v245 + 24) = 0;
      *(v245 + 32) = 0;
      *(v245 + 40) = 1;
      v264(&v353, v245, 0, 0, 0);
    }

    return sub_1CEFCCC44(&v353, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v103 = v67;
  v104 = 0;
  v262 = (v275 + 16);
  v261 = *(v99 + 48);
  v260 = (v341 + 4);
  v259 = (v334 + 32);
  v258 = *(v99 + 64);
  v265 = (v299 + 56);
  v343 = (v342 + 6);
  v344 = v341 + 2;
  v330 = (v337 + 8);
  v322 = (v342 + 4);
  v308 = (v342 + 2);
  v332 = (v299 + 8);
  v320 = (v342 + 1);
  v318 = (v341 + 1);
  v341 = (v338 + 48);
  v342 = (v334 + 16);
  v321 = (v338 + 32);
  v307 = (v338 + 16);
  v324 = (v339 + 8);
  v319 = (v338 + 8);
  v317 = (v334 + 8);
  v257 = (v337 + 16);
  v256 = (v299 + 48);
  v298 = (v299 + 32);
  v300 = (v299 + 16);
  v266 = (v340 + 8);
  v348 = v67;
  v349 = v86;
  v255 = v98;
  while (1)
  {
    v107 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v107)
    {
      result = (*(v275 + 16))(v280, v98 + ((*(v275 + 80) + 32) & ~*(v275 + 80)) + *(v275 + 72) * v104, v99);
      v108 = v272;
    }

    else
    {
      result = sub_1CF9E7998();
      v108 = v272;
      if (v253 != 8)
      {
        goto LABEL_126;
      }

      v353 = result;
      (*v262)(v280, &v353, v99);
      result = swift_unknownObjectRelease();
    }

    v109 = v265;
    v110 = __OFADD__(v104, 1);
    v111 = v104 + 1;
    if (v110)
    {
      goto LABEL_124;
    }

    v112 = v280;
    v113 = *&v280[v258];
    v114 = v346;
    v115 = v349;
    (*v260)(v346, v280, v349);
    (*v259)(v347, &v112[v261], v103);
    v116 = v284;
    v334 = *v109;
    (v334)(v284, 1, 1, v102);
    v353 = v113;
    v295 = v113;

    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    v333 = WitnessTable;
    v352 = sub_1CF9E7078();
    v340 = *v344;
    (v340)(v108, v114, v115);
    v339 = *v343;
    v118 = (v339)(v108, 1, v351);
    v273 = v111;
    if (v118 == 1)
    {
      (*v318)(v108, v115);
    }

    else
    {
      v338 = *v330;
      v338(v116, v331);
      v119 = v270;
      v120 = v351;
      (*v322)(v270, v108, v351);
      (*v308)(v116, v119, v120);
      swift_storeEnumTagMultiPayload();
      (v334)(v116, 0, 1, v102);
      v121 = v297;
      v122 = (*(**(v286 + 24) + 280))(v119, v289, v290, v285);
      if (v121)
      {

        (*v320)(v270, v351);
        v338(v284, v331);
        (*v317)(v347, v348);
        (*v318)(v346, v349);
LABEL_116:

        v247 = v290;
        v248 = v345;
        goto LABEL_117;
      }

      v123 = v122;
      v124 = v102;
      v297 = 0;
      v353 = v294;
      v354 = v293;
      v355 = v292;
      v356 = v291;
      type metadata accessor for Bouncing.BounceItem();
      if (sub_1CF9E6DF8())
      {
        v125 = 4;
        while (1)
        {
          v126 = sub_1CF9E6DC8();
          sub_1CF9E6D78();
          if (v126)
          {
            v127 = *(v123 + 8 * v125);
          }

          else
          {
            result = sub_1CF9E7998();
          }

          v128 = v125 - 3;
          if (__OFADD__(v125 - 4, 1))
          {
            break;
          }

          v129 = v328;
          sub_1CF9AD28C(v328);
          sub_1CF9E7068();
          v130 = v329;
          sub_1CF9E7008();

          (*v332)(v129, v124);
          v338(v130, v331);
          ++v125;
          if (v128 == sub_1CF9E6DF8())
          {
            goto LABEL_25;
          }
        }

LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
        return result;
      }

LABEL_25:

      (*v320)(v270, v351);
      v101 = v350;
      v102 = v124;
    }

    v131 = v348;
    v132 = v269;
    v338 = *v342;
    (v338)(v269, v347, v348);
    v337 = *v341;
    v133 = (v337)(v132, 1, v101);
    v134 = v323;
    v135 = v288;
    v136 = v287;
    if (v133 == 1)
    {
      (*v317)(v132, v131);
      goto LABEL_39;
    }

    v137 = v284;
    v138 = v331;
    v139 = *v330;
    (*v330)(v284, v331);
    v140 = v268;
    (*v321)(v268, v132, v101);
    (*v307)(v137, v140, v101);
    swift_storeEnumTagMultiPayload();
    (v334)(v137, 0, 1, v102);
    v121 = v297;
    v141 = (*(**(v286 + 24) + 272))(v140, v289, v290, v285);
    if (v121)
    {

      (*v319)(v268, v350);
      v139(v284, v138);
      (*v317)(v347, v348);
      (*v318)(v346, v349);
      goto LABEL_116;
    }

    v142 = v141;
    v297 = 0;
    v353 = v293;
    v354 = v294;
    v355 = v291;
    v356 = v292;
    type metadata accessor for Bouncing.BounceItem();
    if (sub_1CF9E6DF8())
    {
      v143 = 4;
      do
      {
        v144 = v143 - 4;
        v145 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v145)
        {
          v146 = *(v142 + 8 * v143);

          v147 = v143 - 3;
          if (__OFADD__(v144, 1))
          {
            goto LABEL_122;
          }
        }

        else
        {
          result = sub_1CF9E7998();
          v147 = v143 - 3;
          if (__OFADD__(v144, 1))
          {
            goto LABEL_122;
          }
        }

        v148 = v325;
        sub_1CF9AD28C(v325);
        v149 = v328;
        v150 = v326;
        sub_1CF050768(v326, v328);
        v151 = v148;
        v152 = v327;
        (*v324)(v151, v150);
        sub_1CF9E7068();
        v153 = v329;
        sub_1CF9E7008();

        v154 = v149;
        v102 = v152;
        (*v332)(v154, v152);
        v139(v153, v331);
        ++v143;
      }

      while (v147 != sub_1CF9E6DF8());
    }

    v101 = v350;
    (*v319)(v268, v350);
    v134 = v323;
    v135 = v288;
    v136 = v287;
LABEL_39:
    v155 = v267;
    v156 = v284;
    v157 = v331;
    (*v257)(v267, v284, v331);
    if ((*v256)(v155, 1, v102) != 1)
    {
      break;
    }

    v105 = *v330;
    (*v330)(v156, v157);
    v103 = v348;
    (*v317)(v347, v348);
    (*v318)(v346, v349);

    v105(v155, v157);
LABEL_10:
    v98 = v255;
    v99 = TupleTypeMetadata3;
    v106 = sub_1CF9E6DF8();
    v104 = v273;
    if (v273 == v106)
    {
      goto LABEL_108;
    }
  }

  v296 = *v298;
  v296(v281, v155, v102);
  v158 = v295;
  if (!sub_1CF9E6DF8())
  {
LABEL_93:

    v227 = 0;
    v229 = v352 + 56;
    v228 = *(v352 + 56);
    v339 = v352;
    v230 = 1 << *(v352 + 32);
    if (v230 < 64)
    {
      v231 = ~(-1 << v230);
    }

    else
    {
      v231 = -1;
    }

    v232 = v231 & v228;
    v233 = (v230 + 63) >> 6;
    v103 = v348;
    v234 = v349;
    if ((v231 & v228) != 0)
    {
      do
      {
        v235 = v227;
LABEL_102:
        v236 = __clz(__rbit64(v232));
        v232 &= v232 - 1;
        v237 = *(v299 + 16);
        v238 = v276;
        v102 = v327;
        v237(v276, *(v339 + 48) + *(v299 + 72) * (v236 | (v235 << 6)), v327);
        v353 = v294;
        v354 = v293;
        v355 = v292;
        v356 = v291;
        v340 = type metadata accessor for JobResult();
        v239 = *(swift_getTupleTypeMetadata2() + 48);
        v240 = v277;
        v237(v277, v281, v102);
        v296((v240 + v239), v238, v102);
        v241 = v278;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v279, v240);
        result = (*v266)(v240, v241);
        v101 = v350;
        v103 = v348;
        v234 = v349;
      }

      while (v232);
    }

    while (1)
    {
      v235 = v227 + 1;
      if (__OFADD__(v227, 1))
      {
        break;
      }

      if (v235 >= v233)
      {
        (*v332)(v281, v102);
        (*v330)(v284, v331);
        (*v317)(v347, v103);
        (*v318)(v346, v234);

        goto LABEL_10;
      }

      v232 = *(v229 + 8 * v235);
      ++v227;
      if (v232)
      {
        v227 = v235;
        goto LABEL_102;
      }
    }

LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v159 = 0;
  v160 = v306;
  v161 = v345;
  while (1)
  {
    v163 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v163)
    {
      v164 = v158 + ((*(v299 + 80) + 32) & ~*(v299 + 80)) + *(v299 + 72) * v159;
      v165 = *(v299 + 16);
      result = (v165)(v136, v164, v102);
    }

    else
    {
      result = sub_1CF9E7998();
      if (v254 != 8)
      {
        goto LABEL_125;
      }

      v353 = result;
      v165 = *v300;
      (*v300)(v136, &v353, v102);
      result = swift_unknownObjectRelease();
    }

    v110 = __OFADD__(v159, 1);
    v166 = v159 + 1;
    v101 = v350;
    if (v110)
    {
      goto LABEL_123;
    }

    v301 = v166;
    v296(v134, v136, v102);
    if ((sub_1CF9E7048() & 1) == 0)
    {
      goto LABEL_42;
    }

    v165(v135, v134, v102);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v167 = v283;
    v315 = *v321;
    v315(v283, v135, v101);
    v121 = v297;
    v168 = (*(**(v286 + 24) + 272))(v167, v289, v290, v285);
    v170 = v348;
    v169 = v349;
    if (v121)
    {

      (*v319)(v283, v350);
      goto LABEL_113;
    }

    v171 = v168;
    v297 = 0;
    v353 = v293;
    v354 = v294;
    v355 = v291;
    v356 = v292;
    v172 = type metadata accessor for Bouncing.BounceItem();
    v173 = v171;
    if (sub_1CF9E6DF8())
    {
      v174 = 4;
      v305 = v173;
      v316 = v172;
      do
      {
        v175 = v174 - 4;
        v176 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v176)
        {
          v177 = *(v173 + v174);

          v178 = v174 - 3;
          if (__OFADD__(v175, 1))
          {
            goto LABEL_118;
          }
        }

        else
        {
          result = sub_1CF9E7998();
          v178 = v174 - 3;
          if (__OFADD__(v175, 1))
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }
        }

        v334 = v178;
        v179 = v310;
        (v340)(v310, v346, v169);
        if ((v339)(v179, 1, v351) == 1)
        {
          (*v318)(v179, v169);
        }

        else
        {
          v180 = v160;
          v181 = v160;
          v182 = v351;
          (*v322)(v180, v179, v351);
          v183 = v325;
          sub_1CF9AD28C(v325);
          v184 = v314;
          (*v308)(v314, v181, v182);
          v185 = v326;
          swift_storeEnumTagMultiPayload();
          v186 = sub_1CF024490(v183, v184, v350, v182);
          v187 = *v324;
          (*v324)(v184, v185);
          v187(v183, v185);
          if (v186)
          {
            v102 = v327;
            sub_1CF9E7068();
            v188 = v329;
            sub_1CF9E7008();
            (*v330)(v188, v331);
            (*v320)(v181, v351);
            v161 = v345;
          }

          else
          {
            (*v320)(v181, v351);
            v161 = v345;
            v102 = v327;
          }

          v160 = v181;
          v170 = v348;
          v169 = v349;
        }

        v189 = v312;
        (v338)(v312, v347, v170);
        v190 = v350;
        if ((v337)(v189, 1, v350) == 1)
        {

          (*v317)(v189, v170);
        }

        else
        {
          v191 = v304;
          v315(v304, v189, v190);
          v192 = v325;
          sub_1CF9AD28C(v325);
          v193 = v314;
          (*v307)(v314, v191, v190);
          v194 = v326;
          swift_storeEnumTagMultiPayload();
          v195 = sub_1CF024490(v192, v193, v190, v351);
          v196 = *v324;
          (*v324)(v193, v194);
          v196(v192, v194);
          if (v195)
          {
            v102 = v327;
            sub_1CF9E7068();
            v197 = v329;
            sub_1CF9E7008();

            (*v330)(v197, v331);
            (*v319)(v191, v190);
            v161 = v345;
          }

          else
          {
            (*v319)(v191, v190);

            v161 = v345;
            v102 = v327;
          }

          v170 = v348;
          v169 = v349;
          v160 = v306;
          v173 = v305;
        }

        ++v174;
      }

      while (v334 != sub_1CF9E6DF8());
    }

    v101 = v350;
    (*v319)(v283, v350);
    v134 = v323;
    v135 = v288;
    v136 = v287;
LABEL_42:
    (*v332)(v134, v102);
    v158 = v295;
    v162 = sub_1CF9E6DF8();
    v159 = v301;
    if (v301 == v162)
    {
      goto LABEL_93;
    }
  }

  v198 = v282;
  v305 = *v322;
  v305(v282, v135, v351);
  v121 = v297;
  v199 = (*(**(v286 + 24) + 280))(v198, v289, v290, v285);
  v170 = v348;
  v169 = v349;
  if (!v121)
  {
    v200 = v199;
    v297 = 0;
    v353 = v294;
    v354 = v293;
    v355 = v292;
    v356 = v291;
    v201 = type metadata accessor for Bouncing.BounceItem();
    v202 = sub_1CF9E6DF8();
    v203 = v331;
    if (v202)
    {
      v204 = 4;
      v316 = v200;
      v315 = v201;
      do
      {
        v205 = v204 - 4;
        v206 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v206)
        {
          v207 = *(v200 + 8 * v204);

          v208 = v204 - 3;
          if (__OFADD__(v205, 1))
          {
            goto LABEL_119;
          }
        }

        else
        {
          result = sub_1CF9E7998();
          v208 = v204 - 3;
          if (__OFADD__(v205, 1))
          {
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }
        }

        v334 = v208;
        v209 = v309;
        (v340)(v309, v346, v169);
        if ((v339)(v209, 1, v351) == 1)
        {
          (*v318)(v209, v169);
        }

        else
        {
          v210 = v302;
          v211 = v351;
          v305(v302, v209, v351);
          v212 = v328;
          sub_1CF9AD28C(v328);
          v213 = v313;
          (*v308)(v313, v210, v211);
          swift_storeEnumTagMultiPayload();
          v214 = sub_1CF024490(v212, v213, v211, v350);
          v215 = v102;
          v216 = *v332;
          (*v332)(v213, v215);
          v216(v212, v215);
          if (v214)
          {
            sub_1CF9E7068();
            v217 = v329;
            sub_1CF9E7008();
            (*v330)(v217, v203);
          }

          (*v320)(v210, v351);
          v161 = v345;
          v170 = v348;
          v169 = v349;
          v102 = v215;
          v200 = v316;
        }

        v218 = v311;
        (v338)(v311, v347, v170);
        v219 = v350;
        if ((v337)(v218, 1, v350) == 1)
        {

          (*v317)(v218, v170);
        }

        else
        {
          v220 = v303;
          (*v321)(v303, v218, v219);
          v221 = v328;
          sub_1CF9AD28C(v328);
          v222 = v313;
          (*v307)(v313, v220, v219);
          swift_storeEnumTagMultiPayload();
          v223 = sub_1CF024490(v221, v222, v351, v219);
          v224 = v102;
          v225 = *v332;
          (*v332)(v222, v224);
          v225(v221, v224);
          if (v223)
          {
            sub_1CF9E7068();
            v226 = v329;
            sub_1CF9E7008();

            v203 = v331;
            (*v330)(v226, v331);
            (*v319)(v220, v219);
            v161 = v345;
          }

          else
          {
            (*v319)(v220, v219);

            v161 = v345;
            v203 = v331;
          }

          v170 = v348;
          v169 = v349;
          v102 = v224;
          v200 = v316;
        }

        ++v204;
      }

      while (v334 != sub_1CF9E6DF8());
    }

    (*v320)(v282, v351);
    v101 = v350;
    v134 = v323;
    v135 = v288;
    v136 = v287;
    v160 = v306;
    goto LABEL_42;
  }

  (*v320)(v282, v351);
LABEL_113:
  v246 = *v332;
  (*v332)(v134, v102);
  v246(v281, v102);
  (*v330)(v284, v331);
  (*v317)(v347, v170);
  (*v318)(v346, v169);

  v247 = v290;
  v248 = v161;
LABEL_117:
  v249 = v289;
  v356 = v247;
  v357 = v248;
  v93 = __swift_allocate_boxed_opaque_existential_0(&v353);
  (*(*(v247 - 8) + 16))(v93, v249, v247);
  v94 = v121;
  v264(&v353, 0, 0, 0, v121);

  return sub_1CEFCCC44(&v353, &unk_1EC4C1B30, &qword_1CFA05300);
}