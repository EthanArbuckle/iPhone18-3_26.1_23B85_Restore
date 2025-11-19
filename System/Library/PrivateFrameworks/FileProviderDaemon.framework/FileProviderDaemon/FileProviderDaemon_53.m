uint64_t sub_1CF58359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = a8;
  v66 = a7;
  v67 = a6;
  v64 = a5;
  v76 = a3;
  *&v80 = a1;
  v11 = *v8;
  v12 = *(*v8 + 616);
  v13 = *(*v8 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = *(AssociatedTypeWitness - 8);
  v15 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v74 = &v57 - v16;
  v17 = *(v11 + 624);
  v77 = v8;
  v18 = *(v11 + 608);
  v19 = swift_getAssociatedTypeWitness();
  v63 = v12;
  *&v79 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v61 = v17;
  v21 = swift_getAssociatedConformanceWitness();
  v75 = AssociatedTypeWitness;
  *&v81 = AssociatedTypeWitness;
  *(&v81 + 1) = v19;
  *&v82 = AssociatedConformanceWitness;
  *(&v82 + 1) = v21;
  v22 = type metadata accessor for ReconciliationID();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v25;
  MEMORY[0x1EEE9AC00](v27);
  v78 = &v57 - v28;
  v62 = v18;
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v29 = swift_dynamicCastClass();
    if (v29)
    {
      v30 = v29;
      v29 = *(v29 + 16);
      v31 = *(v30 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v29 = 0;
  }

  v31 = 1;
LABEL_6:
  v32 = *(v65 + 8);
  v33 = (*(**(v80 + 16) + 336))(v29, v31, a4);
  v58 = v34;
  v57 = v35;
  v59 = a4;
  v36 = sub_1CF9E6DF8();
  v37 = v78;
  if (v36)
  {
    v38 = v26;
    v39 = 0;
    v40 = (v23 + 16);
    v41 = (v23 + 32);
    v42 = v69;
    v69 += 8;
    v70 = (v42 + 32);
    v68 = (v23 + 8);
    *&v43 = v63;
    *(&v43 + 1) = v61;
    v80 = v43;
    *&v43 = v79;
    *(&v43 + 1) = v62;
    v79 = v43;
    v72 = v33;
    v73 = v23;
    v71 = (v23 + 32);
    do
    {
      v44 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v44)
      {
        (*(v23 + 16))(v37, v33 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v39, v22);
        v45 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v60 != 8)
        {
          __break(1u);
          return result;
        }

        *&v81 = result;
        (*v40)(v37, &v81, v22);
        swift_unknownObjectRelease();
        v45 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      (*v41)(v38, v37, v22);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v68)(v38, v22);
      }

      else
      {
        v46 = v74;
        v47 = v75;
        (*v70)(v74, v38, v75);
        v82 = v80;
        v81 = v79;
        type metadata accessor for JobResult();
        v82 = v80;
        v81 = v79;
        type metadata accessor for Ingestion.FetchItemMetadata();
        v48 = sub_1CF656F5C(v46, v77[15], v77[16], v77[17]);
        v33 = v72;
        sub_1CF803A0C(v76, v48);
        v37 = v78;

        v49 = v46;
        v23 = v73;
        v50 = v47;
        v41 = v71;
        (*v69)(v49, v50);
      }

      ++v39;
    }

    while (v45 != sub_1CF9E6DF8());
  }

  v52 = v66;
  v53 = v59;
  *(&v82 + 1) = v66;
  v83 = v65;
  if (v58)
  {
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v81);
    (*(*(v52 - 8) + 16))(boxed_opaque_existential_0, v53, v52);
    v64(&v81, 0, 0, 0, 0);
  }

  else
  {
    v55 = __swift_allocate_boxed_opaque_existential_0(&v81);
    (*(*(v52 - 8) + 16))(v55, v53, v52);
    type metadata accessor for MaintenanceContinuation();
    v56 = swift_allocObject();
    *(v56 + 16) = v57;
    *(v56 + 24) = 0;
    *(v56 + 32) = 0;
    *(v56 + 40) = 1;
    v64(&v81, v56, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v81, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF583D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v131 = a8;
  v167 = a7;
  v129 = a6;
  v130 = a5;
  v162 = a4;
  v134 = a3;
  v12 = *(*v8 + 608);
  v13 = *(*v8 + 616);
  v14 = *(*v8 + 624);
  v170 = *(*v8 + 600);
  v11 = v170;
  v171 = v12;
  v172 = v13;
  v173 = v14;
  v133 = type metadata accessor for ReconciliationMutation();
  v157 = *(v133 - 8);
  v15 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v111 - v16;
  v17 = type metadata accessor for SnapshotItem();
  v121 = sub_1CF9E75D8();
  v147 = *(v121 - 8);
  v18 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v127 = &v111 - v19;
  v128 = v17;
  v140 = *(v17 - 8);
  v20 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v111 - v22;
  v148 = v14;
  v150 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v137 = *(AssociatedTypeWitness - 8);
  v24 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v135 = &v111 - v25;
  v149 = v13;
  v151 = v11;
  v26 = swift_getAssociatedTypeWitness();
  v27 = sub_1CF9E75D8();
  v120 = *(v27 - 8);
  v28 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v111 - v29;
  v124 = *(v26 - 8);
  v31 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v111 - v33;
  v141 = AssociatedTypeWitness;
  v35 = sub_1CF9E75D8();
  v126 = *(v35 - 8);
  v36 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v136 = &v111 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v160 = &v111 - v39;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v164 = *(TupleTypeMetadata3 - 8);
  v165 = TupleTypeMetadata3;
  v119 = *(v164 + 64);
  v41 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v168 = &v111 - v42;
  v159 = v34;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v43 = swift_dynamicCastClass()) != 0) && *(v43 + 24) != 1)
  {
    v44 = *(v43 + 16);
  }

  else
  {
    v44 = 0;
  }

  v45 = *(v131 + 8);
  v50 = (*(**(a1 + 16) + 344))(0, v44, v162, v167, v45, v41);
  v144 = a1;
  v115 = v51;
  v143 = v45;
  v111 = v52;
  v166 = 0;
  v53 = v165;
  v54 = sub_1CF9E6DF8();
  v56 = v159;
  v55 = v160;
  if (v54)
  {
    v57 = 0;
    v158 = (v164 + 16);
    v58 = *(v53 + 48);
    v155 = *(v53 + 64);
    v156 = v58;
    v154 = (v126 + 32);
    v153 = (v120 + 32);
    v152 = (v124 + 48);
    v138 = (v124 + 32);
    v139 = (v124 + 8);
    v163 = (v126 + 8);
    v126 += 16;
    v125 = (v137 + 48);
    v118 = (v137 + 32);
    v116 = (v140 + 48);
    v114 = (v140 + 32);
    v124 += 16;
    v123 = (v157 + 8);
    v113 = (v140 + 8);
    v117 = (v137 + 8);
    v112 = (v147 + 8);
    v137 = v120 + 8;
    v157 = v50;
    v161 = v26;
    v146 = v35;
    v145 = v27;
    v142 = v30;
    while (1)
    {
      v59 = v50;
      v60 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v60)
      {
        (*(v164 + 16))(v168, v59 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v57, v53);
        v61 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_40;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v119 != 8)
        {
          __break(1u);
          return result;
        }

        v170 = result;
        (*v158)(v168, &v170, v53);
        swift_unknownObjectRelease();
        v61 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      v62 = v168;
      v63 = v168[v155];
      (*v154)(v55, &v168[v156], v35);
      (*v153)(v30, v62, v27);
      if ((*v152)(v30, 1, v26) != 1)
      {
        break;
      }

      (*v163)(v55, v35);
      (*v137)(v30, v27);
LABEL_10:
      v50 = v157;
      v53 = v165;
      ++v57;
      if (v61 == sub_1CF9E6DF8())
      {
        goto LABEL_41;
      }
    }

    v147 = v61;
    (*v138)(v56, v30, v26);
    v64 = *(v144 + 24);
    v65 = v151;
    v66 = v150;
    v170 = v151;
    v171 = v150;
    v67 = v149;
    v68 = v148;
    v172 = v149;
    v173 = v148;
    type metadata accessor for ItemJob();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v70 = sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
    v71 = *(v70 + 52);
    v72 = (*(v70 + 48) + 7) & 0x1FFFFFFF8;
    swift_allocObject();
    v73 = sub_1CF9E6D68();
    v75 = v74;
    v170 = v65;
    v171 = v66;
    v172 = v67;
    v173 = v68;
    if (v63 == 1)
    {
      ChildrenMetadata = type metadata accessor for Ingestion.FetchChildrenMetadata();
    }

    else
    {
      ChildrenMetadata = type metadata accessor for Ingestion.FetchContent();
    }

    *v75 = ChildrenMetadata;
    v77 = sub_1CF045898(v73);
    v56 = v159;
    v78 = v166;
    v79 = (*(*v64 + 312))(v159, v77, v162, v167, v143);
    if (v78)
    {

      v26 = v161;
      v35 = v146;
LABEL_47:
      v108 = v160;
      v109 = v163;
      (*v139)(v56, v26);
      (*v109)(v108, v35);
      v110 = v162;
      v46 = v167;
      v173 = v167;
      v174 = v131;
      v47 = __swift_allocate_boxed_opaque_existential_0(&v170);
      (*(*(v46 - 8) + 16))(v47, v110, v46);
      v48 = v78;
      v130(&v170, 0, 0, 0, v78);

      return sub_1CEFCCC44(&v170, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    v80 = v79;
    v166 = 0;

    v170 = v80;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7118();

    v35 = v146;
    v55 = v160;
    if (v169)
    {
      v82 = *(v169 + 96);
      v81 = *(v169 + 104);
      v83 = *(v169 + 112);
      sub_1CF03C530(v82, v81, *(v169 + 112));

      v27 = v145;
      v30 = v142;
      if (v83 != 4)
      {
        v26 = v161;
        if (v83 == 3)
        {
          sub_1CF03D7A8(v82, v81, 3u);
          goto LABEL_23;
        }

        sub_1CF03D7A8(v82, v81, v83);
LABEL_30:
        (*v139)(v56, v26);
        (*v163)(v55, v35);
LABEL_35:
        v61 = v147;
        goto LABEL_10;
      }

      sub_1CF03D7A8(v82, v81, 4u);
      v26 = v161;
      if (v82 & 0xFFFFFFFFFFFFFFFELL | v81)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v26 = v161;
      v27 = v145;
    }

LABEL_23:
    v84 = v136;
    (*v126)(v136, v55, v35);
    v85 = v141;
    if ((*v125)(v84, 1, v141) == 1)
    {
      (*v163)(v84, v35);
    }

    else
    {
      v86 = v135;
      (*v118)(v135, v84, v85);
      v87 = v127;
      v88 = v86;
      v78 = v166;
      (*(**(v144 + 40) + 240))(v88, 1, v162, v167, v143);
      if (v78)
      {

        (*v117)(v135, v85);
        goto LABEL_47;
      }

      v166 = 0;
      v89 = v128;
      if ((*v116)(v87, 1, v128) == 1)
      {
        (*v117)(v135, v85);
        (*v112)(v87, v121);
      }

      else
      {
        v90 = v122;
        (*v114)(v122, v87, v89);
        WitnessTable = swift_getWitnessTable();
        if ((sub_1CF937C7C(v89, WitnessTable) & 1) == 0)
        {
          v170 = v151;
          v171 = v150;
          v172 = v149;
          v173 = v148;
          v140 = type metadata accessor for JobResult();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v35 = v146;
          v99 = v141;
          v100 = swift_getAssociatedConformanceWitness();
          v170 = v26;
          v171 = v99;
          v172 = AssociatedConformanceWitness;
          v173 = v100;
          type metadata accessor for ReconciliationID();
          type metadata accessor for ReconciliationSideMutation();
          v101 = *(swift_getTupleTypeMetadata2() + 48);
          v102 = v132;
          (*v124)(v132, v56, v161);
          swift_storeEnumTagMultiPayload();
          *(v102 + v101) = 2;
          v26 = v161;
          swift_storeEnumTagMultiPayload();
          v103 = v133;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v134, v102);
          (*v123)(v102, v103);
          (*v113)(v122, v128);
          (*v117)(v135, v141);
          (*v139)(v56, v26);
          v55 = v160;
          (*v163)(v160, v35);
          goto LABEL_34;
        }

        (*v113)(v90, v89);
        (*v117)(v135, v85);
      }
    }

    v92 = v85;
    v170 = v151;
    v171 = v150;
    v172 = v149;
    v173 = v148;
    v140 = type metadata accessor for JobResult();
    v93 = swift_getAssociatedConformanceWitness();
    v94 = swift_getAssociatedConformanceWitness();
    v170 = v26;
    v171 = v92;
    v172 = v93;
    v173 = v94;
    type metadata accessor for ReconciliationID();
    type metadata accessor for ReconciliationSideMutation();
    v95 = *(swift_getTupleTypeMetadata2() + 48);
    v96 = v132;
    v56 = v159;
    (*v124)(v132, v159, v161);
    swift_storeEnumTagMultiPayload();
    *(v96 + v95) = 0;
    v26 = v161;
    swift_storeEnumTagMultiPayload();
    v97 = v133;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v134, v96);
    (*v123)(v96, v97);
    (*v139)(v56, v26);
    v55 = v160;
    v35 = v146;
    (*v163)(v160, v146);
    v27 = v145;
LABEL_34:
    v30 = v142;
    goto LABEL_35;
  }

LABEL_41:

  v104 = v167;
  v173 = v167;
  v174 = v131;
  if (v115)
  {
    v105 = __swift_allocate_boxed_opaque_existential_0(&v170);
    (*(*(v104 - 8) + 16))(v105, v162, v104);
    v130(&v170, 0, 0, 0, 0);
  }

  else
  {
    v106 = __swift_allocate_boxed_opaque_existential_0(&v170);
    (*(*(v104 - 8) + 16))(v106, v162, v104);
    type metadata accessor for MaintenanceContinuation();
    v107 = swift_allocObject();
    *(v107 + 16) = v111;
    *(v107 + 24) = 0;
    *(v107 + 32) = 0;
    *(v107 + 40) = 1;
    v130(&v170, v107, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v170, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF5851F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v91 = a8;
  v96 = a7;
  v106 = a3;
  v95 = a1;
  v14 = *(*v9 + 608);
  v15 = *(*v9 + 616);
  v16 = *(*v9 + 624);
  v114 = *(*v9 + 600);
  v120 = v114;
  v121 = v14;
  v112 = v15;
  v122 = v15;
  v123 = v16;
  v101 = type metadata accessor for ReconciliationMutation();
  v17 = *(v101 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v87 - v19;
  v111 = v16;
  v113 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v115 = &v87 - v23;
  v118 = v24;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v107 = sub_1CF9E75D8();
  v109 = *(v107 - 8);
  v26 = *(v109 + 8);
  MEMORY[0x1EEE9AC00](v107);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v87 - v30;
  v90 = a5;
  v89 = a6;
  v116 = v17;
  v110 = v21;
  if (!a2)
  {
    v32 = 0;
    goto LABEL_5;
  }

  type metadata accessor for MaintenanceContinuation();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
LABEL_5:
    v34 = 1;
    goto LABEL_6;
  }

  v33 = v32;
  v32 = *(v32 + 16);
  v34 = *(v33 + 24);
LABEL_6:
  v35 = *(v91 + 8);
  v36 = 0;
  v37 = (*(**(v95 + 16) + 352))(v32, v34, a4, v96, v35);
  v88 = v41;
  v93 = v35;
  v87 = v42;
  v97 = 0;
  v94 = a4;
  v117 = TupleTypeMetadata3 - 8;
  v105 = (v109 + 32);
  v103 = (v110 + 32);
  v104 = (v110 + 8);
  v99 = (v110 + 16);
  v98 = (v116 + 8);
  v43 = v115;
  v102 = v28;
  v108 = v37;
  v109 = v31;
  v44 = v37;
  v92 = v9;
  while (1)
  {
    if (v36 == sub_1CF9E6DF8())
    {
      v51 = *(TupleTypeMetadata3 - 8);
      (*(v51 + 56))(v28, 1, 1, TupleTypeMetadata3);
      goto LABEL_15;
    }

    v52 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v52 & 1) == 0)
    {
      break;
    }

    v53 = *(TupleTypeMetadata3 - 8);
    (*(v53 + 16))(v28, v44 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v36, TupleTypeMetadata3);
    v54 = __OFADD__(v36++, 1);
    if (v54)
    {
      goto LABEL_34;
    }

LABEL_14:
    v51 = v53;
    (*(v53 + 56))(v28, 0, 1, TupleTypeMetadata3);
LABEL_15:
    (*v105)(v31, v28, v107);
    if ((*(v51 + 48))(v31, 1, TupleTypeMetadata3) == 1)
    {
      goto LABEL_35;
    }

    v55 = v31[*(TupleTypeMetadata3 + 48)];
    v56 = *&v31[*(TupleTypeMetadata3 + 64)];
    (*v103)(v43, v31, v118);
    if (v55)
    {
      v57 = v55 == 2;
    }

    else
    {
      v57 = 1;
    }

    if (v57)
    {
      v110 = v56;
      v116 = v36;
      goto LABEL_22;
    }

    if (v55 == 1)
    {
      v110 = v56;
      v116 = v36;
      v65 = *(v95 + 24);
      v66 = v113;
      v67 = v114;
      v120 = v113;
      v121 = v114;
      v68 = v111;
      v69 = v112;
      v122 = v111;
      v123 = v112;
      type metadata accessor for ItemJob();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v71 = sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
      v72 = *(v71 + 52);
      v73 = (*(v71 + 48) + 7) & 0x1FFFFFFF8;
      swift_allocObject();
      v74 = sub_1CF9E6D68();
      v120 = v66;
      v121 = v67;
      v122 = v68;
      v123 = v69;
      v43 = v115;
      *v75 = type metadata accessor for Ingestion.FetchChildrenMetadata();
      v76 = sub_1CF045898(v74);
      v77 = *v65;
      v78 = v97;
      v79 = (*(v77 + 304))(v43, v76, v94, v96, v93);
      if (v78)
      {
        (*v104)(v43, v118);

        v85 = v96;
        v86 = v94;
        v123 = v96;
        v124 = v91;
        v38 = __swift_allocate_boxed_opaque_existential_0(&v120);
        (*(*(v85 - 8) + 16))(v38, v86, v85);
        v39 = v78;
        v90(&v120, 0, 0, 0, v78);

        return sub_1CEFCCC44(&v120, &unk_1EC4C1B30, &qword_1CFA05300);
      }

      v80 = v79;

      v120 = v80;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      sub_1CF9E7118();

      v44 = v108;
      v97 = 0;
      if (!v119)
      {
        v9 = v92;
LABEL_22:
        v120 = v114;
        v121 = v113;
        v122 = v112;
        v123 = v111;
        type metadata accessor for JobResult();
        v58 = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v60 = v118;
        v61 = swift_getAssociatedConformanceWitness();
        v120 = v58;
        v121 = v60;
        v122 = AssociatedConformanceWitness;
        v123 = v61;
        type metadata accessor for ReconciliationID();
        type metadata accessor for ReconciliationSideMutation();
        v62 = *(swift_getTupleTypeMetadata2() + 48);
        v63 = v100;
        v43 = v115;
        (*v99)(v100, v115, v60);
        swift_storeEnumTagMultiPayload();
        *(v63 + v62) = 3;
        swift_storeEnumTagMultiPayload();
        v64 = v101;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v106, v63);
        (*v98)(v63, v64);
        v28 = v102;
        v44 = v108;
        v31 = v109;
        v36 = v116;
        if ((v110 & 4) != 0)
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }

      (*v104)(v43, v118);
      v9 = v92;
      v28 = v102;
      v31 = v109;
      v36 = v116;
    }

    else
    {
      v44 = v108;
      if ((v56 & 4) != 0)
      {
LABEL_8:
        v45 = v113;
        v46 = v114;
        v120 = v114;
        v121 = v113;
        v47 = v112;
        v48 = v36;
        v49 = v111;
        v122 = v112;
        v123 = v111;
        type metadata accessor for JobResult();
        v120 = v45;
        v121 = v46;
        v31 = v109;
        v122 = v49;
        v123 = v47;
        v36 = v48;
        v43 = v115;
        type metadata accessor for Ingestion.FetchItemMetadata();
        v50 = sub_1CF656F5C(v43, v9[15], v9[16], v9[17]);
        sub_1CF8039C4(v106, v50);
      }

LABEL_9:
      (*v104)(v43, v118);
    }
  }

  result = sub_1CF9E7998();
  v53 = *(TupleTypeMetadata3 - 8);
  if (*(v53 + 64) == 8)
  {
    v120 = result;
    (*(v53 + 16))(v28, &v120, TupleTypeMetadata3);
    swift_unknownObjectRelease();
    v54 = __OFADD__(v36++, 1);
    if (v54)
    {
LABEL_34:
      __break(1u);
LABEL_35:

      v81 = v96;
      v123 = v96;
      v124 = v91;
      if (v88)
      {
        v82 = __swift_allocate_boxed_opaque_existential_0(&v120);
        (*(*(v81 - 8) + 16))(v82, v94, v81);
        v90(&v120, 0, 0, 0, 0);
      }

      else
      {
        v83 = __swift_allocate_boxed_opaque_existential_0(&v120);
        (*(*(v81 - 8) + 16))(v83, v94, v81);
        type metadata accessor for MaintenanceContinuation();
        v84 = swift_allocObject();
        *(v84 + 16) = v87;
        *(v84 + 24) = 0;
        *(v84 + 32) = 0;
        *(v84 + 40) = 1;
        v90(&v120, v84, 0, 0, 0);
      }

      return sub_1CEFCCC44(&v120, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF585EA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v134 = a8;
  v138 = a7;
  v108 = a6;
  v109 = a5;
  v137 = a4;
  v139 = a1;
  v11 = *(*v8 + 608);
  v12 = *(*v8 + 616);
  v13 = *(*v8 + 624);
  v141 = *(*v8 + 600);
  v10 = v141;
  v142 = v11;
  v143 = v12;
  v144 = v13;
  v14 = type metadata accessor for ItemReconciliation();
  v15 = sub_1CF9E75D8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v118 = &v94 - v17;
  v142 = v11;
  v143 = v12;
  v144 = v13;
  v117 = type metadata accessor for ReconciliationTable.CachedEntry();
  v136 = *(v117 - 8);
  v18 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v94 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  v120 = v12;
  v122 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v119 = v13;
  v121 = v11;
  v23 = swift_getAssociatedConformanceWitness();
  v141 = AssociatedTypeWitness;
  v142 = v21;
  v143 = AssociatedConformanceWitness;
  v144 = v23;
  v24 = type metadata accessor for ReconciliationID();
  v128 = *(v24 - 8);
  v25 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v94 - v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v115 = sub_1CF9E75D8();
  v124 = *(v115 - 8);
  v29 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v123 = &v94 - v30;
  v31 = a2;
  v114 = swift_getTupleTypeMetadata2();
  v32 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v94 - v33;
  v133 = v14;
  v106 = *(v14 - 8);
  v34 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v112 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v111 = &v94 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v94 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v110 = &v94 - v43;
  v44 = *(v21 - 8);
  v96 = *(v44 + 64);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = &v94 - v47;
  if (v31 && (type metadata accessor for MaintenanceContinuation(), (v49 = swift_dynamicCastClass()) != 0) && *(v49 + 24) != 1)
  {
    v50 = *(v49 + 16);
  }

  else
  {
    v50 = 0;
  }

  v51 = v139[2];
  v52 = *(v134 + 8);
  v53 = (*(*v51 + 360))(v50, v137, v138, v52, v46);
  v95 = v58;
  v132 = v52;
  v139 = 0;
  v135 = v51;
  v94 = v59;
  v107 = v41;
  v60 = v53;
  v61 = sub_1CF9E6DF8();
  v62 = v123;
  if (v61)
  {
    v63 = 0;
    v130 = (v44 + 16);
    v127 = (v44 + 32);
    v128 += 8;
    v126 = TupleTypeMetadata2 - 8;
    v104 = (v106 + 32);
    v103 = (v106 + 16);
    v102 = (v106 + 56);
    v105 = (v136 + 8);
    v106 += 8;
    v101 = (v124 + 8);
    v100 = v21;
    v99 = v24;
    v98 = v27;
    v131 = TupleTypeMetadata2;
    v97 = v44;
    v125 = v48;
    v129 = v60;
    while (1)
    {
      v65 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v65)
      {
        result = (*(v44 + 16))(v48, v60 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v63, v21);
      }

      else
      {
        result = sub_1CF9E7998();
        if (v96 != 8)
        {
          goto LABEL_28;
        }

        v141 = result;
        (*v130)(v48, &v141, v21);
        result = swift_unknownObjectRelease();
      }

      v66 = v135;
      v68 = v131;
      v67 = v132;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      v136 = v63 + 1;
      (*v127)(v27, v48, v21);
      swift_storeEnumTagMultiPayload();
      v69 = v62;
      v70 = v139;
      (*(*v66 + 168))(v27, 1, v137, v138, v67);
      if (v70)
      {
        (*v128)(v27, v24);

LABEL_6:
        v54 = v138;
        v144 = v138;
        v145 = v134;
        v55 = __swift_allocate_boxed_opaque_existential_0(&v141);
        (*(*(v54 - 8) + 16))(v55, v137, v54);
        v56 = v70;
        v109(&v141, 0, 0, 0, v70);

        return sub_1CEFCCC44(&v141, &unk_1EC4C1B30, &qword_1CFA05300);
      }

      v139 = 0;
      (*v128)(v27, v24);
      v62 = v69;
      if ((*(*(v68 - 8) + 48))(v69, 1, v68) == 1)
      {
        (*v101)(v69, v115);
      }

      else
      {
        v71 = *&v69[*(v68 + 48)];
        v72 = v133;
        v73 = v114;
        v74 = *(v114 + 48);
        v75 = *v104;
        v76 = v113;
        (*v104)(v113, v62, v133);
        *&v76[v74] = v71;
        v124 = *&v76[*(v73 + 48)];
        v77 = v110;
        v75(v110, v76, v72);
        v78 = *v103;
        v79 = v107;
        (*v103)(v107, v77, v72);
        v80 = &v79[*(v72 + 52)];
        v80[*(type metadata accessor for ItemReconciliationHalf() + 56)] = 6;
        v81 = v111;
        v78(v111, v77, v72);
        v82 = v112;
        v78(v112, v79, v72);
        v140 = 0;
        v141 = 0;
        v83 = v118;
        (*v102)(v118, 1, 1, v72);
        v93 = v83;
        v84 = v116;
        sub_1CF079694(v124, 0, v81, v82, &v141, &v140, 0, 2, v116, v93);
        v70 = v139;
        sub_1CF695580(v84, v137, v138, v134);
        if (v70)
        {

          (*v105)(v84, v117);
          v91 = *v106;
          v92 = v133;
          (*v106)(v79, v133);
          v91(v77, v92);
          goto LABEL_6;
        }

        v139 = 0;
        (*v105)(v84, v117);
        v85 = *v106;
        v86 = v133;
        (*v106)(v79, v133);
        v85(v77, v86);
        v21 = v100;
        v24 = v99;
        v27 = v98;
        v62 = v123;
        v44 = v97;
      }

      v60 = v129;
      v64 = sub_1CF9E6DF8();
      ++v63;
      v48 = v125;
      if (v136 == v64)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_21:

    v87 = v138;
    v144 = v138;
    v145 = v134;
    if (v95)
    {
      v88 = __swift_allocate_boxed_opaque_existential_0(&v141);
      (*(*(v87 - 8) + 16))(v88, v137, v87);
      v109(&v141, 0, 0, 0, 0);
    }

    else
    {
      v89 = __swift_allocate_boxed_opaque_existential_0(&v141);
      (*(*(v87 - 8) + 16))(v89, v137, v87);
      type metadata accessor for MaintenanceContinuation();
      v90 = swift_allocObject();
      *(v90 + 16) = v94;
      *(v90 + 24) = 0;
      *(v90 + 32) = 0;
      *(v90 + 40) = 1;
      v109(&v141, v90, 0, 0, 0);
    }

    return sub_1CEFCCC44(&v141, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return result;
}

uint64_t sub_1CF586C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v13 = *(v13 + 16);
      v15 = *(v14 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = 1;
LABEL_6:
  v16 = (*(**(a1 + 16) + 376))(v13, v15, a4, a7, a8);
  v23[3] = a7;
  v23[4] = a8;
  if (v17)
  {
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
    a5(v23, 0, 0, 0, 0);
  }

  else
  {
    v19 = v16;
    v20 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(a7 - 8) + 16))(v20, a4, a7);
    type metadata accessor for MaintenanceContinuation();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    a5(v23, v21, 0, 0, 0);
  }

  return sub_1CEFCCC44(v23, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF586E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v13 = *(v13 + 16);
      v15 = *(v14 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = 1;
LABEL_6:
  v16 = (*(**(a1 + 16) + 368))(v13, v15, a4, a7, a8);
  v23[3] = a7;
  v23[4] = a8;
  if (v17)
  {
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
    a5(v23, 0, 0, 0, 0);
  }

  else
  {
    v19 = v16;
    v20 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(a7 - 8) + 16))(v20, a4, a7);
    type metadata accessor for MaintenanceContinuation();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    a5(v23, v21, 0, 0, 0);
  }

  return sub_1CEFCCC44(v23, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58711C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v13 = *(v13 + 16);
      v15 = *(v14 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = 1;
LABEL_6:
  v16 = (*(**(a1 + 16) + 384))(v13, v15, a4, a7, a8);
  v23[3] = a7;
  v23[4] = a8;
  if (v17)
  {
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
    a5(v23, 0, 0, 0, 0);
  }

  else
  {
    v19 = v16;
    v20 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(a7 - 8) + 16))(v20, a4, a7);
    type metadata accessor for MaintenanceContinuation();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    a5(v23, v21, 0, 0, 0);
  }

  return sub_1CEFCCC44(v23, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58739C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v50 = a4;
  v51 = a7;
  v52 = a5;
  v47 = a6;
  v48 = a2;
  v55 = a3;
  v53 = a1;
  v10 = *(*v8 + 608);
  v11 = *(*v8 + 616);
  v12 = *(*v8 + 624);
  v61 = *(*v8 + 600);
  v9 = v61;
  v62 = v10;
  v63 = v11;
  v64 = v12;
  v54 = type metadata accessor for ReconciliationMutation();
  v44 = *(v54 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v15 = &v42 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedTypeWitness();
  v45 = v11;
  v46 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = v12;
  v58 = v10;
  v19 = swift_getAssociatedConformanceWitness();
  v61 = AssociatedTypeWitness;
  v62 = v17;
  v63 = AssociatedConformanceWitness;
  v64 = v19;
  v20 = v48;
  v21 = type metadata accessor for ReconciliationID();
  v59 = *(v21 - 8);
  v22 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v60 = &v42 - v23;
  if (v20)
  {
    type metadata accessor for MaintenanceContinuation();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = v24;
      v24 = *(v24 + 16);
      v26 = *(v25 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = 1;
LABEL_6:
  v27 = (*(**(v53 + 16) + 392))(v24, v26, v50, v51, *(v49 + 8));
  LODWORD(v48) = v28;
  v43 = v29;
  v42 = v22;
  if (sub_1CF9E6DF8())
  {
    v61 = v46;
    v62 = v58;
    v63 = v45;
    v64 = v57;
    type metadata accessor for JobResult();
    v30 = 0;
    v53 = v59 + 16;
    v31 = (v59 + 32);
    v32 = (v44 + 8);
    do
    {
      v33 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v33)
      {
        (*(v59 + 16))(v60, v27 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v30, v21);
        v34 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v42 != 8)
        {
          __break(1u);
          return result;
        }

        v61 = result;
        (*v53)(v60, &v61, v21);
        swift_unknownObjectRelease();
        v34 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      type metadata accessor for ReconciliationSideMutation();
      v35 = *(swift_getTupleTypeMetadata2() + 48);
      (*v31)(v15, v60, v21);
      *&v15[v35] = *(v56 + 120);
      swift_storeEnumTagMultiPayload();
      v36 = v54;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v55, v15);
      (*v32)(v15, v36);
      ++v30;
    }

    while (v34 != sub_1CF9E6DF8());
  }

  v38 = v51;
  v64 = v51;
  v65 = v49;
  if (v48)
  {
    v39 = __swift_allocate_boxed_opaque_existential_0(&v61);
    (*(*(v38 - 8) + 16))(v39, v50, v38);
    v52(&v61, 0, 0, 0, 0);
  }

  else
  {
    v40 = __swift_allocate_boxed_opaque_existential_0(&v61);
    (*(*(v38 - 8) + 16))(v40, v50, v38);
    type metadata accessor for MaintenanceContinuation();
    v41 = swift_allocObject();
    *(v41 + 16) = v43;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0;
    *(v41 + 40) = 1;
    v52(&v61, v41, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v61, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF587A38(void **a1, _BYTE *a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v185 = a8;
  v210 = a7;
  v171 = a6;
  v172 = a5;
  v209 = a4;
  v192 = a3;
  v223 = a2;
  v187 = a1;
  v9 = *v8;
  v10 = *(*v8 + 624);
  v11 = *(*v8 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  v13 = *(v9 + 616);
  v199 = v8;
  v14 = *(v9 + 600);
  v193 = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v181 = *(TupleTypeMetadata2 - 8);
  v17 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v180 = &v157[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v183 = &v157[-v20];
  v161 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v194 = &v157[-v23];
  v169 = sub_1CF9E5CF8();
  v221 = *(v169 - 8);
  v24 = *(v221 + 8);
  MEMORY[0x1EEE9AC00](v169);
  v168 = &v157[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v195 = v14;
  *&v26 = v14;
  v197 = v11;
  *(&v26 + 1) = v11;
  v27 = v223;
  v196 = v13;
  *&v28 = v13;
  v198 = v10;
  *(&v28 + 1) = v10;
  v190 = v28;
  v227 = v28;
  v191 = v26;
  v226 = v26;
  v189 = type metadata accessor for ReconciliationMutation();
  v166 = *(v189 - 8);
  v29 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v188 = &v157[-v30];
  v165 = *(AssociatedTypeWitness - 8);
  v31 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v157[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v157[-v36];
  v164 = *(v12 - 8);
  v38 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v179 = &v157[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v41);
  v182 = &v157[-v42];
  MEMORY[0x1EEE9AC00](v43);
  v213 = &v157[-v44];
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v157[-v46];
  v163 = *(v15 - 8);
  v48 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v157[-v50];
  v218 = v12;
  v52 = swift_getTupleTypeMetadata2();
  v214 = *(v52 - 8);
  v53 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v212 = &v157[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v55);
  v216 = &v157[-v56];
  v162 = v57;
  MEMORY[0x1EEE9AC00](v58);
  v224 = &v157[-v59];
  v184 = TupleTypeMetadata2;
  v217 = v15;
  v170 = v34;
  if (v27 && (type metadata accessor for MaintenanceContinuation(), (v60 = swift_dynamicCastClass()) != 0))
  {
    v61 = *(v60 + 16);
    v62 = *(v60 + 24);
    if ((*(v60 + 40) & 1) == 0 && *(v60 + 32))
    {
      v160 = *(v60 + 16);
      v63 = 0;
LABEL_31:
      v111 = *(((*v187)[22])() + 16);

      *&v226 = 2;
      BYTE8(v226) = 0;
      v112 = (*(*v111 + 408))(2, 0, &v226, v160, v62, v209, v210, *(v185 + 8));
      v114 = v113;
      v116 = v115;

      v117 = v218;
      if (!v63)
      {
        LODWORD(v211) = v116;
        v204 = v114;
        if (!sub_1CF9E6DF8())
        {
LABEL_47:

          v147 = v210;
          *(&v227 + 1) = v210;
          v228 = v185;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v226);
          (*(*(v147 - 8) + 16))(boxed_opaque_existential_0, v209, v147);
          v172(&v226, 0, 0, 0, 0);
          return sub_1CEFCCC44(&v226, &unk_1EC4C1B30, &qword_1CFA05300);
        }

        v121 = 0;
        v219 = *(TupleTypeMetadata2 + 48);
        v224 = (v181 + 16);
        v216 = (v164 + 32);
        v214 = v163 + 8;
        v215 = (v163 + 32);
        v213 = (v164 + 16);
        v212 = (v165 + 48);
        v207 = v165 + 32;
        v206 = (v165 + 16);
        v205 = (v166 + 8);
        v208 = (v165 + 8);
        v221 = (v164 + 8);
        v222 = (v181 + 8);
        v220 = v112;
        while (1)
        {
          v124 = sub_1CF9E6DC8();
          sub_1CF9E6D78();
          if (v124)
          {
            v125 = TupleTypeMetadata2;
            v126 = *(v181 + 16);
            v126(v194, v112 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v121, v125);
            v127 = (v121 + 1);
            if (__OFADD__(v121, 1))
            {
              goto LABEL_46;
            }
          }

          else
          {
            result = sub_1CF9E7998();
            if (v161 != 8)
            {
              goto LABEL_58;
            }

            v146 = TupleTypeMetadata2;
            *&v226 = result;
            v126 = *v224;
            (*v224)(v194, &v226, v146);
            swift_unknownObjectRelease();
            v127 = (v121 + 1);
            if (__OFADD__(v121, 1))
            {
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }
          }

          v223 = v127;
          v128 = v184;
          v129 = *(v184 + 48);
          v130 = *v216;
          v131 = v183;
          v132 = v194;
          (*v216)(v183, v194, v117);
          (*v215)(&v131[v129], &v132[v219], v217);
          v133 = v180;
          v126(v180, v131, v128);
          TupleTypeMetadata2 = v128;
          v134 = *(v128 + 48);
          v135 = v182;
          v130(v182, v133, v117);
          v136 = AssociatedTypeWitness;
          (*v214)(&v133[v134], v217);
          v137 = v179;
          (*v213)(v179, v135, v117);
          if ((*v212)(v137, 1, v136) == 1)
          {
            v122 = v137;
            v123 = *v221;
            (*v221)(v135, v117);
            (*v222)(v131, TupleTypeMetadata2);
            v123(v122, v117);
          }

          else
          {
            v138 = v170;
            (*v207)(v170, v137, v136);
            v227 = v190;
            v226 = v191;
            type metadata accessor for JobResult();
            v139 = v193;
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            v141 = swift_getAssociatedConformanceWitness();
            *&v226 = v139;
            *(&v226 + 1) = v136;
            *&v227 = AssociatedConformanceWitness;
            *(&v227 + 1) = v141;
            type metadata accessor for ReconciliationID();
            type metadata accessor for ReconciliationSideMutation();
            v142 = swift_getTupleTypeMetadata2();
            v143 = v188;
            v144 = &v188[*(v142 + 48)];
            (*v206)(v188, v138, v136);
            swift_storeEnumTagMultiPayload();
            *v144 = 0;
            *(v144 + 8) = *(v199 + 15);
            swift_storeEnumTagMultiPayload();
            v145 = v189;
            swift_storeEnumTagMultiPayload();
            sub_1CF06EB44(v192, v143);
            (*v205)(v143, v145);
            if ((v211 & 1) == 0)
            {

              v150 = v210;
              *(&v227 + 1) = v210;
              v228 = v185;
              v151 = __swift_allocate_boxed_opaque_existential_0(&v226);
              (*(*(v150 - 8) + 16))(v151, v209, v150);
              type metadata accessor for MaintenanceContinuation();
              v152 = swift_allocObject();
              *(v152 + 16) = v204;
              *(v152 + 24) = 0;
              *(v152 + 32) = 1;
              *(v152 + 40) = 0;
              v172(&v226, v152, 0, 0, 0);

              (*v208)(v138, v136);
              (*v221)(v182, v218);
              (*v222)(v183, v184);
              return sub_1CEFCCC44(&v226, &unk_1EC4C1B30, &qword_1CFA05300);
            }

            (*v208)(v138, v136);
            v117 = v218;
            (*v221)(v182, v218);
            TupleTypeMetadata2 = v184;
            (*v222)(v183, v184);
          }

          v112 = v220;
          ++v121;
          if (v223 == sub_1CF9E6DF8())
          {
            goto LABEL_47;
          }
        }
      }

LABEL_52:
      v154 = v210;
      *(&v227 + 1) = v210;
      v228 = v185;
      v155 = __swift_allocate_boxed_opaque_existential_0(&v226);
      (*(*(v154 - 8) + 16))(v155, v209, v154);
      v156 = v63;
      v172(&v226, 0, 0, 0, v63);

      return sub_1CEFCCC44(&v226, &unk_1EC4C1B30, &qword_1CFA05300);
    }
  }

  else
  {
    v61 = 0;
    v62 = 1;
  }

  v64 = *(v185 + 8);
  v65 = (*(*v187[2] + 400))(0, v61, v62, v209, v210, v64);
  v158 = v66;
  v186 = 0;
  v160 = v67;
  if (!sub_1CF9E6DF8())
  {
LABEL_29:

    if ((v158 & 1) == 0)
    {
      v118 = v210;
      *(&v227 + 1) = v210;
      v228 = v185;
      v119 = __swift_allocate_boxed_opaque_existential_0(&v226);
      (*(*(v118 - 8) + 16))(v119, v209, v118);
      type metadata accessor for MaintenanceContinuation();
      v120 = swift_allocObject();
      *(v120 + 16) = v160;
      *(v120 + 24) = 0;
      *(v120 + 32) = 0;
      *(v120 + 40) = 0;
      v172(&v226, v120, 0, 0, 0);

      return sub_1CEFCCC44(&v226, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    v62 = 1;
    TupleTypeMetadata2 = v184;
    v63 = v186;
    goto LABEL_31;
  }

  v167 = v64;
  v68 = 0;
  v207 = *(v52 + 48);
  v222 = (v214 + 16);
  v206 = (v163 + 32);
  v205 = (v164 + 32);
  v204 = (v164 + 16);
  v203 = (v165 + 48);
  v177 = (v165 + 32);
  v176 = (v165 + 16);
  v175 = (v166 + 8);
  v174 = v193 - 8;
  v159 = (v221 + 8);
  v173 = (v165 + 8);
  v200 = (v164 + 8);
  v201 = (v214 + 8);
  v202 = (v163 + 8);
  v223 = v51;
  v215 = v47;
  v211 = v52;
  v208 = v65;
  v178 = v37;
  while (1)
  {
    v72 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v72)
    {
      v73 = *(v214 + 16);
      (v73)(v224, v65 + ((*(v214 + 80) + 32) & ~*(v214 + 80)) + *(v214 + 72) * v68, v52);
      v74 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_28;
      }
    }

    else
    {
      result = sub_1CF9E7998();
      if (v162 != 8)
      {
        goto LABEL_57;
      }

      *&v226 = result;
      v73 = *v222;
      (*v222)(v224, &v226, v52);
      swift_unknownObjectRelease();
      v74 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    v219 = v74;
    v220 = v68;
    v75 = *(v52 + 48);
    v221 = v73;
    v76 = *v206;
    v77 = v216;
    v78 = v224;
    (*v206)(v216, v224, v15);
    v79 = *v205;
    v80 = &v78[v207];
    v81 = v218;
    (*v205)(&v77[v75], v80, v218);
    v82 = v212;
    (v221)(v212, v77, v52);
    v83 = *(v52 + 48);
    v76(v223, v82, v15);
    v84 = &v82[v83];
    v85 = v215;
    (v79)(v215, v84, v81);
    v86 = AssociatedTypeWitness;
    v87 = v213;
    (*v204)(v213, v85, v81);
    if ((*v203)(v87, 1, v86) != 1)
    {
      break;
    }

    v69 = *v200;
    (*v200)(v85, v81);
    v70 = v211;
    (*v201)(v77, v211);
    v15 = v217;
    (*v202)(v223, v217);
    v69(v87, v81);
    v52 = v70;
    v65 = v208;
LABEL_10:
    v71 = sub_1CF9E6DF8();
    v68 = v220 + 1;
    if (v219 == v71)
    {
      goto LABEL_29;
    }
  }

  v88 = v178;
  (*v177)(v178, v87, v86);
  v227 = v190;
  v226 = v191;
  type metadata accessor for JobResult();
  v89 = v193;
  v90 = swift_getAssociatedConformanceWitness();
  v91 = swift_getAssociatedConformanceWitness();
  *&v226 = v89;
  *(&v226 + 1) = v86;
  *&v227 = v90;
  *(&v227 + 1) = v91;
  type metadata accessor for ReconciliationID();
  type metadata accessor for ReconciliationSideMutation();
  v92 = swift_getTupleTypeMetadata2();
  v93 = v86;
  v94 = v188;
  v95 = &v188[*(v92 + 48)];
  (*v176)(v188, v88, v93);
  v96 = v223;
  swift_storeEnumTagMultiPayload();
  *v95 = 0;
  *(v95 + 8) = *(v199 + 15);
  swift_storeEnumTagMultiPayload();
  v97 = v189;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v192, v94);
  (*v175)(v94, v97);
  if ((*(*(v89 - 8) + 48))(v96, 1, v89) != 1)
  {
    v100 = AssociatedTypeWitness;
    v110 = v216;
    v15 = v217;
    v101 = v215;
    v52 = v211;
    v65 = v208;
    goto LABEL_24;
  }

  v98 = v186;
  v99 = (*(*v187[5] + 440))(v88, v209, v210, v167);
  v15 = v217;
  v52 = v211;
  v186 = v98;
  if (v98)
  {

    v149 = AssociatedTypeWitness;
    v101 = v215;
LABEL_51:
    v153 = v216;
    (*v173)(v88, v149);
    (*v200)(v101, v218);
    (*v201)(v153, v52);
    (*v202)(v96, v15);
    v63 = v186;
    goto LABEL_52;
  }

  v100 = AssociatedTypeWitness;
  v101 = v215;
  v65 = v208;
  if ((v99 & 1) == 0)
  {
LABEL_22:
    v110 = v216;
LABEL_24:
    (*v173)(v88, v100);
    (*v200)(v101, v218);
    (*v201)(v110, v52);
    (*v202)(v96, v15);
    goto LABEL_10;
  }

  v102 = AssociatedTypeWitness;
  ((*v187)[22])();
  *&v226 = v197;
  *(&v226 + 1) = v195;
  *&v227 = v198;
  *(&v227 + 1) = v196;
  type metadata accessor for Materialization.MaterializeParentHierarchy();
  v103 = sub_1CF559420(v88, v199[15], v199[16], 0);
  v104 = v168;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v106 = v105;
  result = (*v159)(v104, v169);
  v108 = v106 * 1000000000.0;
  if (COERCE__INT64(fabs(v106 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v108 <= -9.22337204e18)
    {
      goto LABEL_55;
    }

    if (v108 >= 9.22337204e18)
    {
      goto LABEL_56;
    }

    v109 = v186;
    sub_1CF5215C0(v103);
    v186 = v109;
    if (v109)
    {

      v149 = v102;
      v96 = v223;
      v52 = v211;
      goto LABEL_51;
    }

    v100 = v102;
    v96 = v223;
    v52 = v211;
    goto LABEL_22;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_1CF589418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v50 = a4;
  v51 = a7;
  v52 = a6;
  v47 = a5;
  v48 = a2;
  v55 = a3;
  v53 = a1;
  v10 = *(*v8 + 608);
  v11 = *(*v8 + 616);
  v12 = *(*v8 + 624);
  v61 = *(*v8 + 600);
  v9 = v61;
  v62 = v10;
  v63 = v11;
  v64 = v12;
  v54 = type metadata accessor for ReconciliationMutation();
  v44 = *(v54 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v15 = &v42 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedTypeWitness();
  v57 = v11;
  v58 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = v12;
  v46 = v10;
  v19 = swift_getAssociatedConformanceWitness();
  v61 = AssociatedTypeWitness;
  v62 = v17;
  v63 = AssociatedConformanceWitness;
  v64 = v19;
  v20 = v48;
  v21 = type metadata accessor for ReconciliationID();
  v59 = *(v21 - 8);
  v22 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v60 = &v42 - v23;
  if (v20)
  {
    type metadata accessor for MaintenanceContinuation();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = v24;
      v24 = *(v24 + 16);
      v26 = *(v25 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = 1;
LABEL_6:
  v27 = (*(**(v53 + 16) + 416))(v24, v26, v50, v51, *(v49 + 8));
  LODWORD(v48) = v28;
  v43 = v29;
  v42 = v22;
  if (sub_1CF9E6DF8())
  {
    v61 = v58;
    v62 = v46;
    v63 = v57;
    v64 = v45;
    type metadata accessor for JobResult();
    v30 = 0;
    v53 = v59 + 16;
    v31 = (v59 + 32);
    v32 = (v44 + 8);
    do
    {
      v33 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v33)
      {
        (*(v59 + 16))(v60, v27 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v30, v21);
        v34 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v42 != 8)
        {
          __break(1u);
          return result;
        }

        v61 = result;
        (*v53)(v60, &v61, v21);
        swift_unknownObjectRelease();
        v34 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      type metadata accessor for ReconciliationSideMutation();
      v35 = &v15[*(swift_getTupleTypeMetadata2() + 48)];
      (*v31)(v15, v60, v21);
      *v35 = 0;
      *(v35 + 8) = *(v56 + 120);
      swift_storeEnumTagMultiPayload();
      v36 = v54;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v55, v15);
      (*v32)(v15, v36);
      ++v30;
    }

    while (v34 != sub_1CF9E6DF8());
  }

  v38 = v51;
  v64 = v51;
  v65 = v49;
  if (v48)
  {
    v39 = __swift_allocate_boxed_opaque_existential_0(&v61);
    (*(*(v38 - 8) + 16))(v39, v50, v38);
    v47(&v61, 0, 0, 0, 0);
  }

  else
  {
    v40 = __swift_allocate_boxed_opaque_existential_0(&v61);
    (*(*(v38 - 8) + 16))(v40, v50, v38);
    type metadata accessor for MaintenanceContinuation();
    v41 = swift_allocObject();
    *(v41 + 16) = v43;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0;
    *(v41 + 40) = 1;
    v47(&v61, v41, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v61, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF589ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v159 = a8;
  v186 = a7;
  v146 = a6;
  v147 = a5;
  v187 = a4;
  v174 = a3;
  v169 = a1;
  v11 = *(*v8 + 608);
  v12 = *(*v8 + 616);
  v13 = *(*v8 + 624);
  v191 = *(*v8 + 600);
  v10 = v191;
  v192 = v11;
  v193 = v12;
  v194 = v13;
  v173 = type metadata accessor for ReconciliationMutation();
  v140 = *(v173 - 8);
  v14 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v172 = &v134 - v15;
  v192 = v11;
  v193 = v12;
  v194 = v13;
  v16 = type metadata accessor for ItemReconciliation();
  v139 = sub_1CF9E75D8();
  v17 = *(v139 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v163 = &v134 - v19;
  v180 = v16;
  v151 = *(v16 - 8);
  v20 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v179 = &v134 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v161 = sub_1CF9E75D8();
  v150 = *(v161 - 8);
  v24 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v164 = &v134 - v27;
  v145 = *(AssociatedTypeWitness - 8);
  v28 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v143 = &v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v181 = &v134 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v176 = &v134 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v182 = &v134 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v170 = &v134 - v38;
  v39 = swift_getAssociatedTypeWitness();
  v183 = v12;
  v184 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v141 = v13;
  v142 = v11;
  v41 = AssociatedConformanceWitness;
  v42 = swift_getAssociatedConformanceWitness();
  v190 = AssociatedTypeWitness;
  v191 = AssociatedTypeWitness;
  v192 = v39;
  v193 = v41;
  v194 = v42;
  v43 = type metadata accessor for ReconciliationID();
  v189 = *(v43 - 8);
  v44 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v149 = &v134 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v162 = &v134 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v171 = &v134 - v49;
  v138 = v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v134 - v52;
  v148 = v17;
  if (!a2)
  {
    goto LABEL_5;
  }

  type metadata accessor for MaintenanceContinuation();
  v54 = swift_dynamicCastClass();
  if (!v54)
  {
    a2 = 0;
LABEL_5:
    v55 = 1;
    goto LABEL_6;
  }

  a2 = *(v54 + 16);
  v55 = *(v54 + 24);
LABEL_6:
  sub_1CF9E6DA8();
  v56 = *(v41 + 40);
  v57 = sub_1CF1B9600();
  v59 = v58;

  v196 = v57;
  v197 = v59;
  v60 = *(v169 + 16);
  v61 = v55;
  v62 = *(v159 + 8);
  v63 = (*(*v60 + 424))(a2, v61, v187, v186, v62);
  v177 = v62;
  v157 = v60;
  v178 = 0;
  v136 = v64;
  v158 = v41;
  v188 = v56;
  v135 = v65;

  v66 = sub_1CF9E6DF8();
  v67 = v171;
  v185 = v43;
  if (v66)
  {
    v68 = 0;
    v69 = (v189 + 16);
    v70 = (v189 + 32);
    v168 = (v145 + 32);
    v167 = (v145 + 8);
    v165 = (v189 + 8);
    v166 = v63;
    while (1)
    {
      v71 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v71)
      {
        (*(v189 + 16))(v67, v63 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v68, v43);
      }

      else
      {
        result = sub_1CF9E7998();
        if (v138 != 8)
        {
          goto LABEL_56;
        }

        v191 = result;
        (*v69)(v67, &v191, v43);
        swift_unknownObjectRelease();
      }

      result = (*v70)(v53, v67, v43);
      v73 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v165)(v53, v43);
      }

      else
      {
        v74 = v170;
        v75 = v190;
        (*v168)(v170, v53, v190);
        v76 = type metadata accessor for OrderedSet();
        v77 = v182;
        sub_1CF1B87DC(v182, v74, v76);
        v78 = *v167;
        v79 = v77;
        v67 = v171;
        (*v167)(v79, v75);
        v80 = v74;
        v63 = v166;
        v81 = v75;
        v43 = v185;
        v78(v80, v81);
      }

      ++v68;
      if (v73 == sub_1CF9E6DF8())
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

LABEL_17:

  v82 = sub_1CF9E6DF8();
  v83 = v164;
  v84 = v176;
  v85 = v158;
  v86 = v149;
  if (!v82)
  {
LABEL_44:

    v117 = v196;
    v116 = v197;
    v118 = sub_1CF1B8DAC();
    v119 = v143;
    if (!v118)
    {
LABEL_48:

      v127 = v186;
      v194 = v186;
      v195 = v159;
      if (v136)
      {
        v128 = __swift_allocate_boxed_opaque_existential_0(&v191);
        (*(*(v127 - 8) + 16))(v128, v187, v127);
        v147(&v191, 0, 0, 0, 0);
      }

      else
      {
        v129 = __swift_allocate_boxed_opaque_existential_0(&v191);
        (*(*(v127 - 8) + 16))(v129, v187, v127);
        type metadata accessor for MaintenanceContinuation();
        v130 = swift_allocObject();
        *(v130 + 16) = v135;
        *(v130 + 24) = 0;
        *(v130 + 32) = 0;
        *(v130 + 40) = 1;
        v147(&v191, v130, 0, 0, 0);
      }

      return sub_1CEFCCC44(&v191, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    v191 = v184;
    v192 = v142;
    v193 = v183;
    v194 = v141;
    type metadata accessor for JobResult();
    v120 = 0;
    v185 = (v145 + 32);
    v182 = (v140 + 8);
    v189 = v117;
    while (1)
    {
      result = sub_1CF1B8DB8();
      v121 = v120 + 1;
      if (__OFADD__(v120, 1))
      {
        goto LABEL_54;
      }

      type metadata accessor for ReconciliationSideMutation();
      v122 = v116;
      v123 = *(swift_getTupleTypeMetadata2() + 48);
      v124 = v172;
      (*v185)(v172, v119, v190);
      swift_storeEnumTagMultiPayload();
      *(v124 + v123) = *(v175 + 120);
      swift_storeEnumTagMultiPayload();
      v125 = v173;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v174, v124);
      v126 = v125;
      v116 = v122;
      (*v182)(v124, v126);
      ++v120;
      if (v121 == sub_1CF1B8DAC())
      {
        goto LABEL_48;
      }
    }
  }

  v87 = 0;
  v155 = (v189 + 16);
  v154 = (v189 + 32);
  v88 = (v145 + 32);
  v171 = (v158 + 64);
  v168 = (v158 + 72);
  v156 = (v145 + 48);
  v153 = (v151 + 48);
  v152 = (v151 + 32);
  v150 += 8;
  v151 += 8;
  v134 = (v148 + 8);
  v144 = (v189 + 8);
  v170 = (v145 + 8);
  v137 = (v145 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  while (1)
  {
    v89 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v89)
    {
      (*(v189 + 16))(v86, v63 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v87, v43);
    }

    else
    {
      result = sub_1CF9E7998();
      if (v138 != 8)
      {
        goto LABEL_57;
      }

      v191 = result;
      (*v155)(v86, &v191, v43);
      swift_unknownObjectRelease();
    }

    v90 = v162;
    result = (*v154)(v162, v86, v43);
    if (__OFADD__(v87++, 1))
    {
      goto LABEL_55;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    (*v144)(v90, v43);
LABEL_20:
    if (v87 == sub_1CF9E6DF8())
    {
      goto LABEL_44;
    }
  }

  v148 = v87;
  v92 = *v88;
  v93 = v190;
  (*v88)(v84, v90, v190);
  v167 = *(v85 + 64);
  if ((v167)(v93, v85))
  {
    v94 = *v170;
    v86 = v149;
    v87 = v148;
    v43 = v185;
LABEL_27:
    v95 = v176;
    v94(v176, v190);
    v84 = v95;
    goto LABEL_20;
  }

  v165 = *v168;
  v96 = v176;
  v43 = v185;
  while (1)
  {
    v84 = v96;
    if ((v165)(v190, v85))
    {
      (*v170)(v96, v190);
LABEL_41:
      v86 = v149;
      v87 = v148;
      goto LABEL_20;
    }

    v97 = v178;
    (*(**(v169 + 32) + 288))(v96, v187, v186, v177);
    if (v97)
    {
      break;
    }

    if ((*v156)(v83, 1, v190) == 1)
    {
      v178 = 0;
      v84 = v176;
      (*v170)(v176, v190);
      (*v150)(v83, v161);
      goto LABEL_41;
    }

    v98 = v181;
    v92(v181, v83, v190);
    v99 = v163;
    sub_1CF68DDB0(v98, v187, v186, v177, v163);
    v178 = 0;
    v100 = v180;
    if ((*v153)(v99, 1, v180) == 1)
    {
      v113 = *v170;
      v114 = v190;
      (*v170)(v181, v190);
      v84 = v176;
      v115 = v114;
      v43 = v185;
      v113(v176, v115);
      (*v134)(v99, v139);
      v83 = v164;
      goto LABEL_41;
    }

    v101 = v88;
    v102 = v179;
    (*v152)(v179, v99, v100);
    v103 = &v102[*(type metadata accessor for ItemReconciliationHalf() + 64)];
    if (v103[16] || (*v103 & 8) == 0)
    {
      v111 = *v170;
      v112 = v190;
      (*v170)(v181, v190);
      v84 = v176;
      v111(v176, v112);
      (*v151)(v179, v180);
      v83 = v164;
      v86 = v149;
      v87 = v148;
      v43 = v185;
      goto LABEL_20;
    }

    v104 = v190;
    v105 = type metadata accessor for OrderedSet();
    v106 = v160;
    v107 = v181;
    sub_1CF1B8AB8(v181, v105, v160);
    (*v150)(v106, v161);
    v108 = v182;
    sub_1CF1B87DC(v182, v107, v105);
    v94 = *v170;
    v109 = v108;
    v85 = v158;
    (*v170)(v109, v104);
    v96 = v176;
    v94(v176, v104);
    (*v151)(v179, v180);
    v88 = v101;
    v92(v96, v107, v104);
    v110 = (v167)(v104, v85);
    v83 = v164;
    v43 = v185;
    if (v110)
    {
      v86 = v149;
      v87 = v148;
      goto LABEL_27;
    }
  }

  (*v170)(v176, v190);

  v131 = v186;
  v194 = v186;
  v195 = v159;
  v132 = __swift_allocate_boxed_opaque_existential_0(&v191);
  (*(*(v131 - 8) + 16))(v132, v187, v131);
  v133 = v97;
  v147(&v191, 0, 0, 0, v97);

  return sub_1CEFCCC44(&v191, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58AF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a8;
  v65 = a7;
  v61 = a6;
  v62 = a5;
  v64 = a4;
  v82 = a3;
  v11 = *(*v8 + 600);
  v12 = *(*v8 + 608);
  v13 = *(*v8 + 616);
  v14 = *(*v8 + 624);
  v94 = v11;
  v95 = v12;
  v96 = v13;
  v97 = v14;
  v77 = type metadata accessor for ReconciliationMutation();
  v87 = *(v77 - 8);
  v15 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v57 - v16;
  v79 = v13;
  v81 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_1CF9E75D8();
  v86 = *(v18 - 8);
  v19 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v57 - v20;
  v68 = *(AssociatedTypeWitness - 8);
  v22 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v92 = &v57 - v24;
  v78 = v14;
  v80 = v12;
  v75 = swift_getAssociatedTypeWitness();
  v25 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v93 = *(TupleTypeMetadata2 - 8);
  v60 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v84 = &v57 - v26;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v27 = swift_dynamicCastClass()) != 0))
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);
  }

  else
  {
    v28 = 0;
    v29 = 1;
  }

  v30 = *(a1 + 16);
  v94 = 0;
  LOBYTE(v95) = 1;
  v31 = (*(*v30 + 408))(16, 0, &v94, v28, v29, v64, v65, *(v63 + 8));
  v59 = v32;
  v58 = v33;
  v34 = TupleTypeMetadata2;
  v35 = sub_1CF9E6DF8();
  v36 = v84;
  if (v35)
  {
    v37 = 0;
    v90 = *(v34 + 48);
    v91 = (v93 + 16);
    v89 = (v86 + 32);
    v88 = (v68 + 48);
    v71 = (v68 + 32);
    v70 = (v68 + 16);
    v69 = (v87 + 8);
    v68 += 8;
    v67 = (v86 + 8);
    v87 = v25 - 8;
    v74 = v18;
    v73 = v25;
    v72 = v31;
    v66 = v21;
    do
    {
      v50 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v50)
      {
        (*(v93 + 16))(v36, v31 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v37, v34);
        v51 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v60 != 8)
        {
          __break(1u);
          return result;
        }

        v94 = result;
        (*v91)(v36, &v94, v34);
        swift_unknownObjectRelease();
        v51 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      (*v89)(v21, v36, v18);
      if ((*v88)(v21, 1, AssociatedTypeWitness) == 1)
      {
        (*v67)(v21, v18);
      }

      else
      {
        (*v71)(v92, v21, AssociatedTypeWitness);
        v94 = v81;
        v95 = v80;
        v38 = AssociatedTypeWitness;
        v96 = v79;
        v97 = v78;
        v86 = type metadata accessor for JobResult();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v40 = v75;
        v41 = swift_getAssociatedConformanceWitness();
        v94 = AssociatedTypeWitness;
        v95 = v40;
        v96 = AssociatedConformanceWitness;
        v97 = v41;
        type metadata accessor for ReconciliationID();
        type metadata accessor for ReconciliationSideMutation();
        v42 = swift_getTupleTypeMetadata2();
        v43 = v76;
        v44 = &v76[*(v42 + 48)];
        v45 = v92;
        (*v70)(v76, v92, AssociatedTypeWitness);
        swift_storeEnumTagMultiPayload();
        *v44 = 0;
        *(v44 + 8) = *(v83 + 120);
        v36 = v84;
        v34 = TupleTypeMetadata2;
        v21 = v66;
        swift_storeEnumTagMultiPayload();
        v46 = v77;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v82, v43);
        v47 = v43;
        v18 = v74;
        v48 = v46;
        AssociatedTypeWitness = v38;
        v25 = v73;
        (*v69)(v47, v48);
        v49 = v45;
        v31 = v72;
        (*v68)(v49, AssociatedTypeWitness);
      }

      (*(*(v25 - 8) + 8))(&v36[v90], v25);
      ++v37;
    }

    while (v51 != sub_1CF9E6DF8());
  }

  v53 = v65;
  v97 = v65;
  v98 = v63;
  if (v59)
  {
    v54 = __swift_allocate_boxed_opaque_existential_0(&v94);
    (*(*(v53 - 8) + 16))(v54, v64, v53);
    v62(&v94, 0, 0, 0, 0);
  }

  else
  {
    v55 = __swift_allocate_boxed_opaque_existential_0(&v94);
    (*(*(v53 - 8) + 16))(v55, v64, v53);
    type metadata accessor for MaintenanceContinuation();
    v56 = swift_allocObject();
    *(v56 + 16) = v58;
    *(v56 + 24) = 0;
    *(v56 + 32) = 0;
    *(v56 + 40) = 1;
    v62(&v94, v56, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v94, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58B948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a8;
  v71 = a7;
  v67 = a6;
  v68 = a5;
  v70 = a4;
  v89 = a3;
  v11 = *(*v8 + 600);
  v12 = *(*v8 + 608);
  v13 = *(*v8 + 616);
  v14 = *(*v8 + 624);
  v100 = v11;
  v101 = v12;
  v102 = v13;
  v103 = v14;
  v84 = type metadata accessor for ReconciliationMutation();
  v93 = *(v84 - 8);
  v15 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v63 - v16;
  v86 = v13;
  v88 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_1CF9E75D8();
  v92 = *(v18 - 8);
  v19 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v63 - v20;
  v73 = *(AssociatedTypeWitness - 8);
  v22 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v98 = &v63 - v24;
  v85 = v14;
  v87 = v12;
  v82 = swift_getAssociatedTypeWitness();
  v25 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v99 = *(TupleTypeMetadata2 - 8);
  v66 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v91 = &v63 - v27;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v28 = swift_dynamicCastClass()) != 0))
  {
    v29 = *(a1 + 16);
    if (*(v28 + 24) != 1)
    {
      v30 = TupleTypeMetadata2;
      v31 = *(v28 + 16);
      v32 = v70;
      v33 = v69;
      goto LABEL_7;
    }
  }

  else
  {
    v29 = *(a1 + 16);
  }

  v32 = v70;
  v33 = v69;
  v30 = TupleTypeMetadata2;
  v31 = 0;
LABEL_7:
  v34 = *(v33 + 8);
  v35 = (*(*v29 + 496))(v31, v32);
  v65 = v36;
  v64 = v37;
  v38 = v35;
  v39 = v30;
  v40 = sub_1CF9E6DF8();
  v41 = v91;
  v42 = v38;
  if (v40)
  {
    v43 = 0;
    v96 = *(v39 + 48);
    v97 = (v99 + 16);
    v95 = (v92 + 32);
    v94 = (v73 + 48);
    v76 = (v73 + 32);
    v75 = (v73 + 16);
    v74 = (v93 + 8);
    v73 += 8;
    v72 = (v92 + 8);
    v93 = v25 - 8;
    v81 = v18;
    v80 = v25;
    v79 = v39;
    v78 = v21;
    v77 = v38;
    do
    {
      v56 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v56)
      {
        (*(v99 + 16))(v41, v42 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v43, v39);
        v57 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v66 != 8)
        {
          __break(1u);
          return result;
        }

        v100 = result;
        (*v97)(v41, &v100, v39);
        swift_unknownObjectRelease();
        v57 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
LABEL_18:
          __break(1u);
          break;
        }
      }

      (*v95)(v21, v41, v18);
      if ((*v94)(v21, 1, AssociatedTypeWitness) == 1)
      {
        (*v72)(v21, v18);
      }

      else
      {
        (*v76)(v98, v21, AssociatedTypeWitness);
        v100 = v88;
        v101 = v87;
        v44 = AssociatedTypeWitness;
        v102 = v86;
        v103 = v85;
        v92 = type metadata accessor for JobResult();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v46 = v82;
        v47 = swift_getAssociatedConformanceWitness();
        v100 = AssociatedTypeWitness;
        v101 = v46;
        v102 = AssociatedConformanceWitness;
        v103 = v47;
        type metadata accessor for ReconciliationID();
        type metadata accessor for ReconciliationSideMutation();
        v48 = swift_getTupleTypeMetadata2();
        v49 = v83;
        v50 = &v83[*(v48 + 48)];
        v51 = v98;
        (*v75)(v83, v98, AssociatedTypeWitness);
        swift_storeEnumTagMultiPayload();
        *v50 = 0;
        *(v50 + 8) = *(v90 + 120);
        v41 = v91;
        v39 = v79;
        v21 = v78;
        swift_storeEnumTagMultiPayload();
        v52 = v84;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v89, v49);
        v53 = v49;
        v18 = v81;
        v54 = v52;
        AssociatedTypeWitness = v44;
        v25 = v80;
        (*v74)(v53, v54);
        v55 = v51;
        v42 = v77;
        (*v73)(v55, AssociatedTypeWitness);
      }

      (*(*(v25 - 8) + 8))(&v41[v96], v25);
      ++v43;
    }

    while (v57 != sub_1CF9E6DF8());
  }

  v59 = v71;
  v103 = v71;
  v104 = v69;
  if (v65)
  {
    v60 = __swift_allocate_boxed_opaque_existential_0(&v100);
    (*(*(v59 - 8) + 16))(v60, v70, v59);
    v68(&v100, 0, 0, 0, 0);
  }

  else
  {
    v61 = __swift_allocate_boxed_opaque_existential_0(&v100);
    (*(*(v59 - 8) + 16))(v61, v70, v59);
    type metadata accessor for MaintenanceContinuation();
    v62 = swift_allocObject();
    *(v62 + 16) = v64;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 40) = 1;
    v68(&v100, v62, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v100, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58C364(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = a8;
  v72 = a7;
  v60 = a6;
  v71 = a4;
  v12 = *(*v8 + 608);
  v13 = *(*v8 + 600);
  v14 = *(*v8 + 624);
  v15 = *(*v8 + 616);
  v79 = v12;
  v80 = v13;
  v81 = v14;
  v82 = v15;
  v68 = type metadata accessor for ItemReconciliation();
  v74 = *(v68 - 8);
  v16 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v18 = &v56 - v17;
  v79 = v13;
  v80 = v12;
  v81 = v15;
  v82 = v14;
  v19 = type metadata accessor for ItemReconciliation();
  v70 = *(v19 - 8);
  v20 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v69 = &v56 - v24;
  v61 = a5;
  v67 = v18;
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      v26 = v25;
      v25 = *(v25 + 16);
      v27 = *(v26 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = 1;
LABEL_6:
  v28 = *(v62 + 8);
  v29 = (*(*a1[2] + 432))(v25, v27, v71, v72, v28);
  v58 = v30;
  v75 = v28;
  v57 = v31;

  if (sub_1CF9E6DF8())
  {
    v32 = 0;
    v66 = (v70 + 16);
    v64 = (v70 + 32);
    v63 = (v74 + 8);
    v65 = (v70 + 8);
    while (1)
    {
      v33 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v33)
      {
        v34 = v69;
        result = (*(v70 + 16))(v69, v29 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v32, v19);
        v36 = v22;
      }

      else
      {
        result = sub_1CF9E7998();
        v34 = v69;
        if (v59 != 8)
        {
          goto LABEL_20;
        }

        v36 = v22;
        v79 = result;
        (*v66)(v69, &v79, v19);
        result = swift_unknownObjectRelease();
      }

      v37 = v75;
      v38 = v32 + 1;
      v39 = v72;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v74 = v32;
      (*v64)(v36, v34, v19);
      v40 = v71;
      sub_1CF959528(a1, v71, v19, v39, v37);
      v73 = v38;
      v41 = v29;
      v42 = v67;
      v43 = sub_1CF07EE34(v19, v67);
      v44 = ((*a1)[22])(v43);
      v45 = v40;
      v46 = v68;
      sub_1CF959528(v44, v45, v68, v39, v75);

      (*v63)(v42, v46);
      v22 = v36;
      (*v65)(v36, v19);
      v29 = v41;
      v47 = sub_1CF9E6DF8();
      v32 = v74 + 1;
      if (v73 == v47)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_15:

    v48 = v72;
    v82 = v72;
    v83 = v62;
    if (v58)
    {
      v49 = __swift_allocate_boxed_opaque_existential_0(&v79);
      (*(*(v48 - 8) + 16))(v49, v71, v48);
      v77 = 0x73656972746E653CLL;
      v78 = 0xE90000000000003ALL;
      v50 = sub_1CF9E6DF8();

      v76 = v50;
      v51 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v51);

      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      v61(&v79, 0, v77, v78, 0);
    }

    else
    {
      v52 = __swift_allocate_boxed_opaque_existential_0(&v79);
      (*(*(v48 - 8) + 16))(v52, v71, v48);
      type metadata accessor for MaintenanceContinuation();
      v53 = swift_allocObject();
      *(v53 + 16) = v57;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0;
      *(v53 + 40) = 1;
      v77 = 0x73656972746E653CLL;
      v78 = 0xE90000000000003ALL;
      v54 = sub_1CF9E6DF8();

      v76 = v54;
      v55 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v55);

      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      v61(&v79, v53, v77, v78, 0);
    }

    return sub_1CEFCCC44(&v79, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return result;
}

uint64_t sub_1CF58CB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, void, void, void (**)(uint64_t, uint64_t)), uint64_t a6, char *a7, uint64_t a8)
{
  v71 = a6;
  v72 = a5;
  v14 = *(*v8 + 608);
  v15 = *(*v8 + 600);
  v16 = *(*v8 + 624);
  v17 = *(*v8 + 616);
  v97 = v14;
  v98 = v15;
  v99 = v16;
  v100 = v17;
  v83 = type metadata accessor for ItemReconciliation();
  v18 = *(v83 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v68 - v20;
  v97 = v15;
  v98 = v14;
  v85 = v17;
  v86 = v14;
  v99 = v17;
  v100 = v16;
  v84 = v16;
  v21 = type metadata accessor for ItemReconciliation();
  v87 = *(v21 - 8);
  v22 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v70 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v91 = &v68 - v25;
  v92 = v26;
  v93 = v18;
  if (!a2)
  {
    v28 = v21;
    v27 = 0;
LABEL_6:
    v30 = 1;
    goto LABEL_7;
  }

  type metadata accessor for MaintenanceContinuation();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    v28 = v21;
    goto LABEL_6;
  }

  v28 = v21;
  v29 = v27;
  v27 = *(v27 + 16);
  v30 = *(v29 + 24);
LABEL_7:
  v31 = a8;
  v34 = (*(**(a1 + 16) + 440))(v27, v30, a4, a7, *(a8 + 8));
  v69 = v35;
  v68 = v36;
  v78 = a1;
  v79 = v31;
  v80 = a4;
  v81 = a7;

  v37 = v28;
  v38 = sub_1CF9E6DF8();
  v39 = v92;
  if (v38)
  {
    v40 = 0;
    v77 = (v87 + 16);
    v75 = (v87 + 32);
    v73 = v93 + 1;
    v76 = (v87 + 8);
    v74 = v34;
    v90 = v37;
    while (1)
    {
      v93 = 0;
      v41 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v41)
      {
        result = (*(v87 + 16))(v91, v34 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v40, v37);
        v43 = v85;
        v44 = v86;
        v45 = v15;
      }

      else
      {
        result = sub_1CF9E7998();
        v43 = v85;
        v44 = v86;
        if (v70 != 8)
        {
          goto LABEL_28;
        }

        v45 = v15;
        v97 = result;
        (*v77)(v91, &v97, v37);
        result = swift_unknownObjectRelease();
      }

      v46 = v84;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v88 = v40 + 1;
      v89 = v40;
      (*v75)(v39, v91, v37);
      v47 = v79;
      v48 = v39;
      v49 = v78;
      v50 = v80;
      v51 = v81;
      v52 = v43;
      v53 = v43;
      v54 = v93;
      sub_1CF596F84(v48, v78, v80, v45, v44, v81, v52, v46, v79);
      if (v54)
      {
        (*v76)(v92, v90);
        swift_bridgeObjectRelease_n();
        v67 = v72;
LABEL_8:
        v100 = v51;
        v101 = v47;
        v32 = __swift_allocate_boxed_opaque_existential_0(&v97);
        (*(*(v51 - 1) + 16))(v32, v50, v51);
        v33 = v54;
        v67(&v97, 0, 0, 0, v54);

        return sub_1CEFCCC44(&v97, &unk_1EC4C1B30, &qword_1CFA05300);
      }

      v55 = v82;
      v93 = 0;
      v56 = sub_1CF07EE34(v90, v82);
      v57 = (*(*v49 + 176))(v56);
      v15 = v45;
      v54 = v93;
      sub_1CF596F84(v55, v57, v50, v45, v44, v51, v53, v46, v47);
      if (v54)
      {
        swift_bridgeObjectRelease_n();

        (*v73)(v55, v83);
        (*v76)(v92, v90);
        v67 = v72;
        v51 = v81;
        v50 = v80;
        v47 = v79;
        goto LABEL_8;
      }

      (*v73)(v55, v83);
      v39 = v92;
      v37 = v90;
      (*v76)(v92, v90);
      v34 = v74;
      v58 = sub_1CF9E6DF8();
      v40 = v89 + 1;
      if (v88 == v58)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_20:

    v59 = v81;
    v100 = v81;
    v101 = v79;
    if (v69)
    {
      v60 = __swift_allocate_boxed_opaque_existential_0(&v97);
      (*(*(v59 - 1) + 16))(v60, v80, v59);
      v95 = 0x73656972746E653CLL;
      v96 = 0xE90000000000003ALL;
      v61 = sub_1CF9E6DF8();

      v94 = v61;
      v62 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v62);

      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      v72(&v97, 0, v95, v96, 0);
    }

    else
    {
      v63 = __swift_allocate_boxed_opaque_existential_0(&v97);
      (*(*(v59 - 1) + 16))(v63, v80, v59);
      type metadata accessor for MaintenanceContinuation();
      v64 = swift_allocObject();
      *(v64 + 16) = v68;
      *(v64 + 24) = 0;
      *(v64 + 32) = 0;
      *(v64 + 40) = 1;
      v95 = 0x73656972746E653CLL;
      v96 = 0xE90000000000003ALL;
      v65 = sub_1CF9E6DF8();

      v94 = v65;
      v66 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v66);

      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      v72(&v97, v64, v95, v96, 0);
    }

    return sub_1CEFCCC44(&v97, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return result;
}

uint64_t sub_1CF58D4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v77 = a7;
  v15 = *(*v8 + 600);
  v16 = *(*v8 + 616);
  v17 = *(*v8 + 624);
  v75 = *(*v8 + 608);
  v76 = v15;
  v81 = v15;
  v82 = v75;
  v73 = v17;
  v74 = v16;
  v83 = v16;
  v84 = v17;
  v71 = type metadata accessor for PersistenceTrigger();
  v69 = *(v71 - 8);
  v18 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v58 - v19;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v20 = swift_dynamicCastClass()) != 0))
  {
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);
  }

  else
  {
    v21 = 0;
    v22 = 1;
  }

  v23 = *(a1 + 24);
  v24 = *(a8 + 8);
  v25 = 0;
  v29 = (*(*v23 + 512))(89, 256, v21, v22, a4, v77, v24);
  v60 = v30;
  v59 = v31;
  v67 = a1;
  v61 = a8;
  v72 = a4;
  v62 = a6;
  v63 = a5;

  v81 = v76;
  v82 = v75;
  v83 = v74;
  v84 = v73;
  type metadata accessor for ItemJob();
  if (sub_1CF9E6DF8())
  {
    v64 = (v69 + 8);
    v32 = 4;
    v66 = v23;
    v65 = v24;
    do
    {
      v33 = v32 - 4;
      v34 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v34)
      {
        v35 = *(v29 + 8 * v32);

        v36 = v32 - 3;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v35 = sub_1CF9E7998();
        v36 = v32 - 3;
        if (__OFADD__(v33, 1))
        {
LABEL_19:
          __break(1u);
          break;
        }
      }

      if (v35[112] || (v35[97] & 1) == 0)
      {
      }

      else
      {

        v38 = sub_1CF66E048(v37, 0, v72, v77, v24);
        if (v25)
        {

          swift_bridgeObjectRelease_n();
          v56 = v63;
          v57 = v72;
          v26 = v77;
          v84 = v77;
          v85 = v61;
          v27 = __swift_allocate_boxed_opaque_existential_0(&v81);
          (*(*(v26 - 8) + 16))(v27, v57, v26);
          v28 = v25;
          v56(&v81, 0, 0, 0, v25);

          return sub_1CEFCCC44(&v81, &unk_1EC4C1B30, &qword_1CFA05300);
        }

        if (v38)
        {
        }

        else
        {
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v69 = 0;
          v68 = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v41 = v68;
          v42 = swift_getAssociatedConformanceWitness();
          v81 = AssociatedTypeWitness;
          v82 = v41;
          v83 = AssociatedConformanceWitness;
          v84 = v42;
          type metadata accessor for ReconciliationID();
          v43 = *(swift_getTupleTypeMetadata2() + 48);
          v44 = v70;
          (*(*(AssociatedTypeWitness - 8) + 16))(v70, &v35[*(*v35 + 576)], AssociatedTypeWitness);
          swift_storeEnumTagMultiPayload();
          LOBYTE(v41) = sub_1CF03D760();

          v44[v43] = v41;
          v24 = v65;
          v45 = v71;
          swift_storeEnumTagMultiPayload();
          (*(*v67 + 312))(v44);

          v46 = v44;
          v25 = v69;
          (*v64)(v46, v45);
        }
      }

      ++v32;
    }

    while (v36 != sub_1CF9E6DF8());
  }

  v47 = v77;
  v84 = v77;
  v85 = v61;
  if (v60)
  {
    v48 = __swift_allocate_boxed_opaque_existential_0(&v81);
    (*(*(v47 - 8) + 16))(v48, v72, v47);
    v79 = 0x73656972746E653CLL;
    v80 = 0xE90000000000003ALL;
    v49 = sub_1CF9E6DF8();

    v78 = v49;
    v50 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v50);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v63(&v81, 0, v79, v80, 0);
  }

  else
  {
    v51 = __swift_allocate_boxed_opaque_existential_0(&v81);
    (*(*(v47 - 8) + 16))(v51, v72, v47);
    type metadata accessor for MaintenanceContinuation();
    v52 = swift_allocObject();
    *(v52 + 16) = v59;
    *(v52 + 24) = 0;
    *(v52 + 32) = 0;
    *(v52 + 40) = 1;
    v79 = 0x3A73626F6A3CLL;
    v80 = 0xE600000000000000;
    v53 = sub_1CF9E6DF8();

    v78 = v53;
    v54 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v54);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v63(&v81, v52, v79, v80, 0);
  }

  return sub_1CEFCCC44(&v81, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58DCB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v95 = a5;
  v96 = a8;
  v99 = a4;
  v100 = a7;
  v94 = a6;
  v97 = a1;
  v10 = *v8;
  v11 = *(*v8 + 624);
  v12 = *(*v8 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(v10 + 616);
  v15 = *(v10 + 600);
  v16 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v106 = AssociatedTypeWitness;
  v107 = v16;
  v108 = AssociatedConformanceWitness;
  v109 = v18;
  v92 = type metadata accessor for ReconciliationID();
  v85 = sub_1CF9E75D8();
  v84 = *(v85 - 8);
  v19 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v69 - v20;
  v83 = v92[-1].i64[1];
  v21 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v89 = &v69 - v23;
  v106 = v15;
  v107 = v12;
  v101 = v12;
  v102 = v11;
  v108 = v14;
  v109 = v11;
  v90 = type metadata accessor for PersistenceTrigger();
  v81 = *(v90 - 8);
  v24 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v86 = &v69 - v25;
  v106 = v16;
  v107 = AssociatedTypeWitness;
  v108 = v18;
  v109 = AssociatedConformanceWitness;
  v26 = type metadata accessor for ReconciliationID();
  v87 = sub_1CF9E75D8();
  v82 = *(v87 - 8);
  v27 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v91 = &v69 - v28;
  v29 = *(v26 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v93 = &v69 - v32;
  v98 = v26;
  if (!a2)
  {
    v33 = 0;
    goto LABEL_5;
  }

  type metadata accessor for MaintenanceContinuation();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
LABEL_5:
    v35 = 1;
    goto LABEL_6;
  }

  v34 = v33;
  v33 = *(v33 + 16);
  v35 = *(v34 + 24);
LABEL_6:
  v36 = v97[3];
  v37 = *(v96 + 8);
  v38 = (*(*v36 + 504))(v33, v35, v99, v100, v37);
  v79 = v39;
  v80 = v37;
  v76 = v40;

  v106 = v15;
  v107 = v101;
  v108 = v14;
  v109 = v102;
  type metadata accessor for FSOrFPJob();
  if (!sub_1CF9E6DF8())
  {
    goto LABEL_30;
  }

  v78 = (v83 + 48);
  v73 = (v83 + 32);
  v75 = (v81 + 8);
  v74 = (v83 + 8);
  v72 = (v84 + 8);
  v84 = v29 + 48;
  v81 = v29 + 32;
  v71 = (v29 + 16);
  v83 = v29 + 8;
  v82 += 8;
  v41 = 4;
  v77 = v36;
  while (1)
  {
    v42 = v41 - 4;
    v43 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v43 & 1) == 0)
    {
      break;
    }

    v44 = *(v38 + 8 * v41);

    v45 = v41 - 3;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_29;
    }

LABEL_12:
    v46 = sub_1CF057B00(v44);
    if (v47 || (v46 & 0x100) == 0)
    {
    }

    else if (v44 < 0)
    {
      v52 = v44 & 0x7FFFFFFFFFFFFFFFLL;
      v53 = v88;
      (*(*v52 + 440))();
      v54 = v92;
      if ((*v78)(v53, 1, v92) == 1)
      {

        (*v72)(v53, v85);
      }

      else
      {
        v55 = (*v73)(v89, v53, v54);
        v56 = *((*(*v97 + 176))(v55) + 24);

        v57 = sub_1CF66E048(v52, 0, v99, v100, v80);

        if (v57)
        {
        }

        else
        {
          v70 = *(swift_getTupleTypeMetadata2() + 48);
          v59 = v86;
          sub_1CF050768(v92, v86);
          *(v59 + v70) = sub_1CF03D760();
          swift_storeEnumTagMultiPayload();
          (*(*v97 + 312))(v59);

          (*v75)(v59, v90);
        }

        (*v74)(v89, v92);
      }
    }

    else
    {
      v48 = v91;
      (*(*v44 + 440))();
      v49 = v48;
      v50 = v48;
      v51 = v98;
      if ((*v84)(v50, 1, v98) == 1)
      {

        (*v82)(v49, v87);
      }

      else
      {
        (*v81)(v93, v49, v51);
        if (sub_1CF66E048(v44, 0, v99, v100, v80))
        {
        }

        else
        {
          v70 = *(swift_getTupleTypeMetadata2() + 48);
          v58 = v86;
          (*v71)(v86, v93, v98);
          *(v58 + v70) = sub_1CF03D760();
          swift_storeEnumTagMultiPayload();
          (*(*v97 + 312))(v58);

          (*v75)(v58, v90);
        }

        (*v83)(v93, v98);
      }
    }

    ++v41;
    if (v45 == sub_1CF9E6DF8())
    {
      goto LABEL_30;
    }
  }

  v44 = sub_1CF9E7998();

  swift_unknownObjectRelease();
  v45 = v41 - 3;
  if (!__OFADD__(v42, 1))
  {
    goto LABEL_12;
  }

LABEL_29:
  __break(1u);
LABEL_30:

  v60 = v100;
  v109 = v100;
  v110 = v96;
  if (v79)
  {
    v61 = __swift_allocate_boxed_opaque_existential_0(&v106);
    (*(*(v60 - 8) + 16))(v61, v99, v60);
    v104 = 0x73656972746E653CLL;
    v105 = 0xE90000000000003ALL;
    v62 = sub_1CF9E6DF8();

    v103 = v62;
    v63 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v63);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v95(&v106, 0, v104, v105, 0);
  }

  else
  {
    v64 = __swift_allocate_boxed_opaque_existential_0(&v106);
    (*(*(v60 - 8) + 16))(v64, v99, v60);
    type metadata accessor for MaintenanceContinuation();
    v65 = swift_allocObject();
    *(v65 + 16) = v76;
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 40) = 1;
    v104 = 0x3A73626F6A3CLL;
    v105 = 0xE600000000000000;
    v66 = sub_1CF9E6DF8();

    v103 = v66;
    v67 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v67);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v95(&v106, v65, v104, v105, 0);
  }

  return sub_1CEFCCC44(&v106, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58EA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = (*(**(a1 + 24) + 456))(*(v8 + 128), 100, a4, a7, a8);
  v19[3] = a7;
  v19[4] = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
  if (v13 > 99)
  {
    type metadata accessor for MaintenanceContinuation();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 1;
    *(v16 + 32) = 0;
    *(v16 + 40) = 1;
    v17 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v17);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    a5(v19, v16, 0x646572697078653CLL, 0xE90000000000003ALL, 0);
  }

  else
  {
    v15 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v15);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    a5(v19, 0, 0x646572697078653CLL, 0xE90000000000003ALL, 0);
  }

  return sub_1CEFCCC44(v19, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58ED34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v13 = *(v13 + 16);
      v15 = *(v14 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = 1;
LABEL_6:
  v16 = (*(**(a1 + 16) + 456))(v13, v15, a4, a7, a8);
  v23[3] = a7;
  v23[4] = a8;
  if (v17)
  {
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
    a5(v23, 0, 0, 0, 0);
  }

  else
  {
    v19 = v16;
    v20 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(a7 - 8) + 16))(v20, a4, a7);
    type metadata accessor for MaintenanceContinuation();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    a5(v23, v21, 0, 0, 0);
  }

  return sub_1CEFCCC44(v23, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58EFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;
      v14 = *(v14 + 16);
      v16 = *(v15 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = 1;
LABEL_6:
  v17 = (*(*v8 + 632))(v14, v16, a1, a4, a7, a8);
  v24[3] = a7;
  v24[4] = a8;
  if (v18)
  {
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
    a5(v24, 0, 0, 0, 0);
  }

  else
  {
    v20 = v17;
    v21 = __swift_allocate_boxed_opaque_existential_0(v24);
    (*(*(a7 - 8) + 16))(v21, a4, a7);
    type metadata accessor for MaintenanceContinuation();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    *(v22 + 40) = 1;
    a5(v24, v22, 0, 0, 0);
  }

  return sub_1CEFCCC44(v24, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58F274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v102 = a6;
  v103 = a5;
  v14 = *v8;
  v95 = sub_1CF9E6118();
  v94 = *(v95 - 8);
  v15 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 600);
  v93 = *(v14 + 616);
  v92 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v99 = *(AssociatedTypeWitness - 8);
  v19 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v91 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v96 = &v89 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v109 = &v89 - v24;
  v108 = v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v107 = sub_1CF9E75D8();
  v27 = *(v107 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v30 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v89 - v33;
  v35 = *(a1 + 32);
  if (*(*(v35[2] + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 16) == 1)
  {
    v100 = a8;
    v101 = a7;
    v98 = a4;
    if (a2 && (type metadata accessor for MaintenanceContinuation(), (v36 = swift_dynamicCastClass()) != 0) && *(v36 + 24) != 1)
    {
      v37 = *(v36 + 16);
    }

    else
    {
      v37 = -1;
    }

    v38 = v108;
    v39 = 0;
    v41 = (*(*v35 + 616))(v37, v98, v101, *(v100 + 8), v32);
    v90 = v42;
    v89 = v43;
    v104 = (v99 + 32);
    v105 = (v99 + 8);
    v106 = (v27 + 32);
    while (1)
    {
      if (v39 == sub_1CF9E6DF8())
      {
        v44 = *(TupleTypeMetadata2 - 8);
        (*(v44 + 56))(v30, 1, 1, TupleTypeMetadata2);
      }

      else
      {
        v45 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v45)
        {
          v46 = *(TupleTypeMetadata2 - 8);
          (*(v46 + 16))(v30, v41 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v39, TupleTypeMetadata2);
          v47 = __OFADD__(v39++, 1);
          if (v47)
          {
            goto LABEL_21;
          }
        }

        else
        {
          result = sub_1CF9E7998();
          v46 = *(TupleTypeMetadata2 - 8);
          if (*(v46 + 64) != 8)
          {
            __break(1u);
            return result;
          }

          v110[0] = result;
          (*(v46 + 16))(v30, v110, TupleTypeMetadata2);
          swift_unknownObjectRelease();
          v47 = __OFADD__(v39++, 1);
          if (v47)
          {
LABEL_21:
            __break(1u);
LABEL_22:

            v53 = fpfs_current_or_default_log();
            v54 = v97;
            sub_1CF9E6128();
            v55 = *(v99 + 16);
            v56 = v96;
            v57 = v108;
            v55(v96, v109, v108);

            v58 = sub_1CF9E6108();
            v59 = sub_1CF9E72A8();

            if (os_log_type_enabled(v58, v59))
            {
              v60 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v110[0] = v107;
              *v60 = 136315394;
              v61 = v56;
              v62 = v91;
              v55(v91, v61, v108);
              v63 = *v105;
              LODWORD(v106) = v59;
              v63(v61, v108);
              v64 = *(swift_getAssociatedConformanceWitness() + 16);
              v65 = sub_1CF9E7F98();
              v67 = v66;
              v63(v62, v108);
              v68 = sub_1CEFD0DF0(v65, v67, v110);

              *(v60 + 4) = v68;
              *(v60 + 12) = 2080;
              v69 = sub_1CF9E6888();
              v70 = [v69 fp_obfuscatedFilename];

              v71 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v73 = v72;

              v74 = sub_1CEFD0DF0(v71, v73, v110);

              *(v60 + 14) = v74;
              _os_log_impl(&dword_1CEFC7000, v58, v106, "found package with .folder or .git extension, %s: %s", v60, 0x16u);
              v75 = v107;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v75, -1, -1);
              v76 = v60;
              v57 = v108;
              MEMORY[0x1D386CDC0](v76, -1, -1);

              (*(v94 + 8))(v97, v95);
            }

            else
            {
              v63 = *v105;
              (*v105)(v56, v57);

              (*(v94 + 8))(v54, v95);
            }

            v79 = v101;
            v80 = v100;
            sub_1CF24CD3C();
            v81 = swift_allocError();
            *v82 = 3;
            *(v82 + 8) = 0u;
            *(v82 + 24) = 0u;
            *(v82 + 40) = 0;
            *(v82 + 48) = 9;
            swift_willThrow();
            v63(v109, v57);
            v83 = v103;
            v84 = v98;
            v111 = v79;
            v112 = v80;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v110);
            (*(*(v79 - 8) + 16))(boxed_opaque_existential_0, v84, v79);
            v86 = v81;
            v83(v110, 0, 0, 0, v81);

            return sub_1CEFCCC44(v110, &unk_1EC4C1B30, &qword_1CFA05300);
          }
        }

        v44 = v46;
        (*(v46 + 56))(v30, 0, 1, TupleTypeMetadata2);
      }

      (*v106)(v34, v30, v107);
      if ((*(v44 + 48))(v34, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v48 = *v34;
      v49 = *(v34 + 1);
      (*v104)(v109, &v34[*(TupleTypeMetadata2 + 48)], v38);
      sub_1CF9E6958();
      v50 = sub_1CF9E6AF8();

      if (v50)
      {
        goto LABEL_22;
      }

      sub_1CF9E6958();
      v51 = sub_1CF9E6AF8();

      if (v51)
      {
        goto LABEL_22;
      }

      v38 = v108;
      (*v105)(v109, v108);
    }

    v77 = v101;
    if (v90)
    {
      v111 = v101;
      v112 = v100;
      v78 = __swift_allocate_boxed_opaque_existential_0(v110);
      (*(*(v77 - 8) + 16))(v78, v98, v77);
      goto LABEL_8;
    }

    v111 = v101;
    v112 = v100;
    v87 = __swift_allocate_boxed_opaque_existential_0(v110);
    (*(*(v77 - 8) + 16))(v87, v98, v77);
    type metadata accessor for MaintenanceContinuation();
    v88 = swift_allocObject();
    *(v88 + 16) = v89;
    *(v88 + 24) = 0;
    *(v88 + 32) = 0;
    *(v88 + 40) = 1;
    v103(v110, v88, 0, 0, 0);
  }

  else
  {
    v111 = a7;
    v112 = a8;
    v40 = __swift_allocate_boxed_opaque_existential_0(v110);
    (*(*(a7 - 8) + 16))(v40, a4, a7);
LABEL_8:
    v103(v110, 0, 0, 0, 0);
  }

  return sub_1CEFCCC44(v110, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58FDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v101 = a8;
  v100 = a6;
  v14 = *(*v8 + 600);
  v15 = *(*v8 + 608);
  v16 = *(*v8 + 616);
  v17 = *(*v8 + 624);
  v119 = v14;
  v120 = v15;
  v121 = v16;
  v122 = v17;
  v85 = type metadata accessor for PersistenceTrigger();
  v94 = *(v85 - 8);
  v18 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &AssociatedConformanceWitness - v19;
  v20 = type metadata accessor for SnapshotItem();
  v84 = sub_1CF9E75D8();
  v91 = *(v84 - 8);
  v21 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v88 = &AssociatedConformanceWitness - v22;
  v86 = v20;
  v23 = *(v20 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v87 = &AssociatedConformanceWitness - v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v104 = sub_1CF9E75D8();
  v95 = *(v104 - 8);
  v27 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &AssociatedConformanceWitness - v28;
  v114 = v16;
  v115 = v14;
  v119 = v14;
  v120 = v15;
  v112 = v17;
  v113 = v15;
  v121 = v16;
  v122 = v17;
  v29 = type metadata accessor for ItemReconciliation();
  v102 = sub_1CF9E75D8();
  v30 = *(v102 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v33 = &AssociatedConformanceWitness - v32;
  v34 = *(v29 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v105 = &AssociatedConformanceWitness - v37;
  v90 = v23;
  v89 = v30;
  v92 = v34;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v38 = swift_dynamicCastClass()) != 0))
  {
    v39 = a5;
    v40 = *(v38 + 16);
    v41 = *(v38 + 24);
  }

  else
  {
    v39 = a5;
    v40 = 0;
    v41 = 1;
  }

  v42 = *(v101 + 8);
  v43 = a4;
  v44 = (*(**(a1 + 24) + 512))(89, 32, v40, v41, a4, a7, v42);
  v81 = v45;
  v108 = v42;
  v80 = v46;
  v109 = a1;
  v110 = v43;
  v111 = a7;
  v82 = v39;

  v119 = v115;
  v120 = v113;
  v121 = v114;
  v122 = v112;
  v47 = type metadata accessor for ItemJob();
  if (sub_1CF9E6DF8())
  {
    v107 = (v92 + 6);
    v98 = (v92 + 4);
    v97 = (v95 + 16);
    v96 = AssociatedTypeWitness - 8;
    ++v92;
    v95 += 8;
    v79 = (v90 + 6);
    v78 = (v90 + 4);
    ++v90;
    v77 = (v94 + 8);
    v91 += 8;
    v94 = v89 + 8;
    v48 = 4;
    v99 = v33;
    v93 = v47;
    do
    {
      v49 = v48 - 4;
      v50 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v50)
      {
        v51 = *(v44 + 8 * v48);

        v52 = v48 - 3;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v51 = sub_1CF9E7998();
        v52 = v48 - 3;
        if (__OFADD__(v49, 1))
        {
LABEL_32:
          __break(1u);
          break;
        }
      }

      v119 = v115;
      v120 = v113;
      v121 = v114;
      v122 = v112;
      type metadata accessor for Materialization.MaterializeItem();
      if (swift_dynamicCastClass())
      {
        v53 = *(v109 + 16);
        v54 = *(*v51 + 576);
        sub_1CF68DDB0(v51 + v54, v110, v111, v108, v33);
        if ((*v107)(v33, 1, v29) == 1)
        {

          (*v94)(v33, v102);
        }

        else
        {
          v55 = v105;
          (*v98)(v105, v33, v29);
          v56 = &v55[*(v29 + 52)];
          v57 = v29;
          v58 = v103;
          v59 = v104;
          (*v97)(v103, v56, v104);
          if ((*(*(AssociatedTypeWitness - 8) + 48))(v58, 1) != 1)
          {
            (*v92)(v55, v57);

            (*v95)(v58, v59);
            v29 = v57;
            goto LABEL_19;
          }

          (*v95)(v58, v59);
          result = type metadata accessor for ItemReconciliationHalf();
          if (v55[*(result + 44)])
          {
            v29 = v57;
LABEL_17:
            (*v92)(v55, v29);

LABEL_19:
            v33 = v99;
            goto LABEL_8;
          }

          v29 = v57;
          if (v55[*(result + 56)] != 6)
          {
            goto LABEL_17;
          }

          v61 = v55[*(v57 + 56)];
          v33 = v99;
          if (v61 == 2)
          {
            (*v92)(v55, v29);
          }

          else
          {
            if (v61 == 4)
            {
              __break(1u);
              return result;
            }

            (*(**(v109 + 32) + 240))(v51 + v54, 1, v110, v111, v108);
            v62 = v86;
            if ((*v79)(v88, 1, v86) == 1)
            {
              (*v92)(v105, v29);

              (*v91)(v88, v84);
            }

            else
            {
              (*v78)(v87, v88, v62);
              WitnessTable = swift_getWitnessTable();
              if (sub_1CF937C7C(v62, WitnessTable))
              {
                v89 = swift_getAssociatedTypeWitness();
                AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
                v64 = AssociatedTypeWitness;
                v65 = swift_getAssociatedConformanceWitness();
                v119 = v89;
                v120 = v64;
                v121 = AssociatedConformanceWitness;
                v122 = v65;
                type metadata accessor for ReconciliationID();
                __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
                AssociatedConformanceWitness = *(swift_getTupleTypeMetadata2() + 48);
                v66 = v51 + v54;
                v67 = v83;
                (*(*(v89 - 8) + 16))(v83, v66);
                swift_storeEnumTagMultiPayload();
                type metadata accessor for FileTreeError();
                swift_getWitnessTable();
                *&v67[AssociatedConformanceWitness] = swift_allocError();
                swift_storeEnumTagMultiPayload();
                swift_storeEnumTagMultiPayload();
                (*(*v109 + 312))(v67);

                (*v77)(v67, v85);
              }

              else
              {
              }

              (*v90)(v87, v86);
              (*v92)(v105, v29);
            }
          }
        }
      }

      else
      {
      }

LABEL_8:
      ++v48;
    }

    while (v52 != sub_1CF9E6DF8());
  }

  v68 = v111;
  v122 = v111;
  v123 = v101;
  if (v81)
  {
    v69 = __swift_allocate_boxed_opaque_existential_0(&v119);
    (*(*(v68 - 8) + 16))(v69, v110, v68);
    v117 = 0x73656972746E653CLL;
    v118 = 0xE90000000000003ALL;
    v70 = sub_1CF9E6DF8();

    v116 = v70;
    v71 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v71);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v82(&v119, 0, v117, v118, 0);
  }

  else
  {
    v72 = __swift_allocate_boxed_opaque_existential_0(&v119);
    (*(*(v68 - 8) + 16))(v72, v110, v68);
    type metadata accessor for MaintenanceContinuation();
    v73 = swift_allocObject();
    *(v73 + 16) = v80;
    *(v73 + 24) = 0;
    *(v73 + 32) = 0;
    *(v73 + 40) = 1;
    v117 = 0x3A73626F6A3CLL;
    v118 = 0xE600000000000000;
    v74 = sub_1CF9E6DF8();

    v116 = v74;
    v75 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v75);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v82(&v119, v73, v117, v118, 0);
  }

  return sub_1CEFCCC44(&v119, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF590DF0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = (*(**(a3 + 16) + 464))(a1, a2 & 1, a4, a5, a6);
  if (v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1CF590E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(*(a1 + 32) + 16);
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = a8;
  v14[4] = a1;
  v14[5] = a5;
  v14[6] = a6;
  v15 = *(*v13 + 952);

  v15(sub_1CF595E10, v14);
}

uint64_t sub_1CF590F88(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  v9 = type metadata accessor for Continuation();
  swift_retain_n();
  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559088, v7, sub_1CF595E20, v8, v9, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF5910A4(uint64_t a1, char a2, void (*a3)(_BYTE *, uint64_t, void, void, void))
{
  if (a2)
  {
    sub_1CF1A91AC(a1, v6);
    type metadata accessor for MaintenanceContinuation();
    v4 = swift_allocObject();
    *(v4 + 16) = 100;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 1;
    a3(v6, v4, 0, 0, 0);
  }

  else
  {
    sub_1CF1A91AC(a1, v6);
    a3(v6, 0, 0, 0, 0);
  }

  return sub_1CEFCCC44(v6, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF5911B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a5;
  v52 = a8;
  v53 = a4;
  v54 = a7;
  v50 = a6;
  v58 = a3;
  v11 = *v8;
  v12 = *v8;
  v60 = sub_1CF9E5CF8();
  v13 = *(v60 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v11 + 616);
  v17 = *(v11 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v48 = *(v19 + 64);
  v20 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v46 - v21;
  v49 = v13;
  v57 = v12;
  v55 = v16;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v23 = swift_dynamicCastClass()) != 0) && *(v23 + 24) != 1)
  {
    v24 = *(v23 + 16);
  }

  else
  {
    v24 = -1;
  }

  v25 = (*(**(a1 + 16) + 480))(v24, v53, v54, *(v52 + 8), v20);
  v47 = v26;
  v46 = v27;
  if (sub_1CF9E6DF8())
  {
    v28 = *(v57 + 608);
    v29 = *(v57 + 624);
    v61 = v17;
    v62 = v28;
    v30 = v55;
    v63 = v55;
    v64 = v29;
    v56 = type metadata accessor for JobResult();
    v61 = v17;
    v62 = v28;
    v63 = v30;
    v64 = v29;
    v55 = type metadata accessor for RemoteVersion.CleanRemoteVersions();
    v31 = 0;
    v57 = v19 + 16;
    v32 = (v49 + 8);
    while (1)
    {
      v33 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v33)
      {
        (*(v19 + 16))(v22, v25 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v31, AssociatedTypeWitness);
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v48 != 8)
        {
          goto LABEL_26;
        }

        v61 = result;
        (*v57)(v22, &v61, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }
      }

      v35 = v59;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v37 = v36;
      result = (*v32)(v35, v60);
      v39 = v37 * 1000000000.0;
      if (COERCE__INT64(fabs(v37 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v39 <= -9.22337204e18)
      {
        goto LABEL_24;
      }

      if (v39 >= 9.22337204e18)
      {
        goto LABEL_25;
      }

      v40 = sub_1CF989304(v22, 0, v39, 2);
      (*(v19 + 8))(v22, AssociatedTypeWitness);
      sub_1CF803A0C(v58, v40);

      ++v31;
      if (v34 == sub_1CF9E6DF8())
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_18:

    v42 = v53;
    v41 = v54;
    v64 = v54;
    v65 = v52;
    if (v47)
    {
      v43 = __swift_allocate_boxed_opaque_existential_0(&v61);
      (*(*(v41 - 8) + 16))(v43, v42, v41);
      v51(&v61, 0, 0, 0, 0);
    }

    else
    {
      v44 = __swift_allocate_boxed_opaque_existential_0(&v61);
      (*(*(v41 - 8) + 16))(v44, v42, v41);
      type metadata accessor for MaintenanceContinuation();
      v45 = swift_allocObject();
      *(v45 + 16) = v46;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0;
      *(v45 + 40) = 1;
      v51(&v61, v45, 0, 0, 0);
    }

    return sub_1CEFCCC44(&v61, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return result;
}

uint64_t sub_1CF5917F0(uint64_t a1, uint64_t a2, uint64_t *a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  v128 = a6;
  v129 = a3;
  v130 = a4;
  v131[0] = a5;
  v102 = a2;
  v141 = a1;
  v7 = *v6;
  v98 = sub_1CF9E5CF8();
  v133 = *(v98 - 8);
  v8 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v97 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v7[75];
  v11 = v7[76];
  v12 = v7[77];
  v13 = v7[78];
  v143 = v10;
  v144 = v11;
  v145 = v12;
  v146 = v13;
  v94 = type metadata accessor for ReconciliationMutation();
  v117 = *(v94 - 8);
  v14 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v101 = v83 - v15;
  v16 = type metadata accessor for SnapshotItem();
  v112 = sub_1CF9E75D8();
  v115 = *(v112 - 8);
  v17 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v99 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v113 = v83 - v20;
  v114 = v16;
  v111 = *(v16 - 8);
  v21 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v103 = v83 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v125 = sub_1CF9E75D8();
  *&v110 = *(v125 - 8);
  v25 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v122 = v83 - v26;
  v126 = AssociatedTypeWitness;
  v109 = *(AssociatedTypeWitness - 8);
  v27 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v123 = v83 - v29;
  v143 = v10;
  v144 = v11;
  v96 = v11;
  v145 = v12;
  v146 = v13;
  v95 = v13;
  v30 = type metadata accessor for ItemReconciliation();
  v121 = sub_1CF9E75D8();
  v108 = *(v121 - 8);
  v31 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v140 = v83 - v32;
  v33 = *(v30 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v83 - v36;
  v38 = v12;
  v39 = swift_getAssociatedTypeWitness();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v43 = v83 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v42;
  MEMORY[0x1EEE9AC00](v44);
  v139 = v83 - v45;
  result = sub_1CF9E6DF8();
  if (!result)
  {
    return result;
  }

  v124 = v37;
  v90 = v6;
  v47 = v38;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v49 = 0;
  v135 = *(AssociatedConformanceWitness + 72);
  v136 = AssociatedConformanceWitness + 72;
  v142 = AssociatedConformanceWitness;
  v131[1] = AssociatedConformanceWitness + 64;
  v138 = (v40 + 16);
  v134 = (v40 + 32);
  v127 = (v33 + 48);
  v120 = (v33 + 32);
  v119 = (v110 + 16);
  v118 = (v109 + 48);
  v107 = (v109 + 32);
  v104 = (v111 + 48);
  v93 = (v111 + 32);
  v89 = (v111 + 16);
  v88 = (v111 + 56);
  v100 = (v115 + 8);
  v86 = (v109 + 16);
  v85 = (v133 + 8);
  v84 = (v117 + 8);
  v92 = (v111 + 8);
  v109 += 8;
  v115 = v33 + 8;
  v133 = v40 + 8;
  v111 = v110 + 8;
  v117 = v108 + 8;
  v110 = xmmword_1CFA04E60;
  v50 = v141;
  v106 = v30;
  v87 = v10;
  v105 = v47;
  v137 = v40;
  v116 = v43;
  while (1)
  {
    v51 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v51)
    {
      v52 = v137;
      v53 = v50 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v49;
      v54 = v139;
      (*(v137 + 16))(v139, v53, v39);
    }

    else
    {
      result = sub_1CF9E7998();
      if (v91 != 8)
      {
        goto LABEL_35;
      }

      v143 = result;
      v54 = v139;
      v52 = result;
      (*v138)(v139, &v143, v39);
      swift_unknownObjectRelease();
    }

    v56 = v49 + 1;
    v57 = v140;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_28:
      (**(v55 - 32))(v52, v112);
      (*v92)(v57, v30);
LABEL_29:
      (*v109)(v123, v126);
      (*v115)(v124, v106);
      return (*v133)(v43, v39);
    }

    (*v134)(v43, v54, v39);
    if (v135(v39, v142) & 1) != 0 || ((*(v142 + 64))(v39))
    {
      goto LABEL_4;
    }

    v58 = v129[2];
    v59 = *(v128 + 8);
    v60 = v132;
    sub_1CF68DDB0(v43, v130, v131[0], v59, v57);
    v132 = v60;
    if (v60)
    {
      return (*v133)(v43, v39);
    }

    if ((*v127)(v57, 1, v30) == 1)
    {
      (*v133)(v43, v39);
      (*v117)(v57, v121);
      goto LABEL_5;
    }

    v61 = v124;
    (*v120)(v124, v57, v30);
    v62 = v122;
    (*v119)(v122, &v61[*(v30 + 52)], v125);
    v63 = v126;
    if ((*v118)(v62, 1, v126) == 1)
    {
      (*v115)(v61, v30);
      v43 = v116;
      (*v133)(v116, v39);
      (*v111)(v62, v125);
      goto LABEL_5;
    }

    (*v107)(v123, v62, v63);
    v64 = v113;
    v43 = v116;
    v65 = v132;
    (*(*v129[4] + 240))(v116, 1, v130, v131[0], v59);
    v132 = v65;
    if (v65)
    {
      goto LABEL_29;
    }

    v66 = v114;
    v67 = (*v104)(v64, 1, v114);
    v68 = v105;
    if (v67 == 1)
    {
      (*v109)(v123, v126);
      v69 = v106;
      (*v115)(v124, v106);
      (*v133)(v43, v39);
      v70 = v64;
      v30 = v69;
      (*v100)(v70, v112);
      goto LABEL_5;
    }

    v57 = v103;
    (*v93)(v103, v64, v66);
    v30 = v66;
    v71 = v57 + *(v66 + 48);
    v72 = *(type metadata accessor for ItemMetadata() + 84);
    if (*(v71 + v72) != 5)
    {
      break;
    }

    (*v92)(v57, v30);
    (*v109)(v123, v126);
    v30 = v106;
    (*v115)(v124, v106);
LABEL_4:
    (*v133)(v43, v39);
LABEL_5:
    v50 = v141;
    result = sub_1CF9E6DF8();
    ++v49;
    if (v56 == result)
    {
      return result;
    }
  }

  *(v71 + v72) = 5;
  v52 = v99;
  (*v89)(v99, v57, v30);
  (*v88)(v52, 0, 1, v30);
  v73 = v132;
  sub_1CF611904(v52, v43, 0, 0, 0, v129, v90[15], v90[16], 0x20000000, v102, v130, v131[0], v128);
  v132 = v73;
  v55 = v131;
  if (v73)
  {
    goto LABEL_28;
  }

  (*v100)(v52, v112);
  v143 = v87;
  v144 = v96;
  v145 = v68;
  v146 = v95;
  v83[1] = type metadata accessor for JobResult();
  v74 = v126;
  v75 = swift_getAssociatedConformanceWitness();
  v143 = v39;
  v144 = v74;
  v145 = v142;
  v146 = v75;
  type metadata accessor for ReconciliationID();
  type metadata accessor for ReconciliationSideMutation();
  v108 = *(swift_getTupleTypeMetadata2() + 48);
  (*v86)(v101, v123, v74);
  swift_storeEnumTagMultiPayload();
  v76 = v97;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v78 = v77;
  result = (*v85)(v76, v98);
  v79 = v78 * 1000000000.0;
  if (COERCE__INT64(fabs(v78 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v79 <= -9.22337204e18)
    {
      goto LABEL_33;
    }

    v30 = v106;
    if (v79 >= 9.22337204e18)
    {
      goto LABEL_34;
    }

    v80 = v101;
    v81 = &v101[v108];
    *v81 = v110;
    *(v81 + 2) = v79;
    swift_storeEnumTagMultiPayload();
    v82 = v94;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v102, v80);
    (*v84)(v80, v82);
    (*v92)(v57, v114);
    (*v109)(v123, v126);
    (*v115)(v124, v30);
    goto LABEL_4;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1CF5928B0(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v13 = 0;
    goto LABEL_5;
  }

  type metadata accessor for MaintenanceContinuation();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
LABEL_5:
    v15 = 1;
    goto LABEL_6;
  }

  v14 = v13;
  v13 = *(v13 + 16);
  v15 = *(v14 + 24);
LABEL_6:
  v16 = (*(**(a1 + 32) + 624))(v13, v15, a4, a7, *(a8 + 8));
  v18 = v17;
  v23 = v19;
  sub_1CF5917F0(v16, a3, a1, a4, a7, a8);

  v25[3] = a7;
  v25[4] = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
  if (v18)
  {
    a5(v25, 0, 0, 0, 0);
  }

  else
  {
    type metadata accessor for MaintenanceContinuation();
    v22 = swift_allocObject();
    *(v22 + 16) = v23;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    *(v22 + 40) = 1;
    a5(v25, v22, 0, 0, 0);
  }

  return sub_1CEFCCC44(v25, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF592B70(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a6;
  v15 = *(*v8 + 608);
  v16 = *(*v8 + 616);
  v17 = *(*v8 + 624);
  v68 = *(*v8 + 600);
  v69 = v15;
  v64 = v15;
  v70 = v16;
  v71 = v17;
  v62 = v17;
  v61 = type metadata accessor for PersistenceTrigger();
  v18 = *(v61 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v45 - v20;
  v63 = v16;
  v65 = v68;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  v52 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v45 - v22;
  v67 = v18;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v24 = swift_dynamicCastClass()) != 0))
  {
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);
  }

  else
  {
    v25 = 0;
    v26 = 1;
  }

  v27 = (*(*a1[3] + 528))(25, v25, v26, a4, a7, *(a8 + 8));
  v47 = v28;
  v46 = v29;
  v48 = a8;
  v49 = a4;
  v50 = a7;
  v51 = a5;
  if (sub_1CF9E6DF8())
  {
    v30 = 0;
    v31 = (*a1)[39];
    v56 = (*a1 + 39);
    v57 = v31;
    v58 = v27;
    v59 = (v66 + 16);
    v54 = (v67 + 8);
    v55 = (v66 + 32);
    do
    {
      v32 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v32)
      {
        (*(v66 + 16))(v23, v27 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v30, AssociatedTypeWitness);
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v52 != 8)
        {
          __break(1u);
          return result;
        }

        v68 = result;
        (*v59)(v23, &v68, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      v67 = v33;
      v34 = v60;
      (*v55)(v60, v23, AssociatedTypeWitness);
      v35 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v37 = swift_getAssociatedConformanceWitness();
      v68 = AssociatedTypeWitness;
      v69 = v35;
      v70 = AssociatedConformanceWitness;
      v71 = v37;
      type metadata accessor for ReconciliationID();
      swift_storeEnumTagMultiPayload();
      v38 = v61;
      swift_storeEnumTagMultiPayload();
      v57(v34);
      v39 = v34;
      v27 = v58;
      (*v54)(v39, v38);
      ++v30;
    }

    while (v67 != sub_1CF9E6DF8());
  }

  v41 = v50;
  v71 = v50;
  v72 = v48;
  if (v47)
  {
    v42 = __swift_allocate_boxed_opaque_existential_0(&v68);
    (*(*(v41 - 8) + 16))(v42, v49, v41);
    v51(&v68, 0, 0, 0, 0);
  }

  else
  {
    v43 = __swift_allocate_boxed_opaque_existential_0(&v68);
    (*(*(v41 - 8) + 16))(v43, v49, v41);
    type metadata accessor for MaintenanceContinuation();
    v44 = swift_allocObject();
    *(v44 + 16) = v46;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0;
    *(v44 + 40) = 1;
    v51(&v68, v44, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v68, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF593238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a8;
  v52 = a7;
  v49 = a6;
  v50 = a5;
  v53 = a4;
  v57 = a3;
  v11 = *v8;
  v12 = *v8;
  v59 = sub_1CF9E5CF8();
  v13 = *(v59 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v11 + 616);
  v17 = *(v11 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v47 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v45 - v20;
  v48 = v13;
  v56 = v12;
  v54 = v16;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v22 = swift_dynamicCastClass()) != 0))
  {
    v23 = *(v22 + 16);
    v24 = *(v22 + 24);
  }

  else
  {
    v23 = 0;
    v24 = 1;
  }

  v25 = (*(**(a1 + 24) + 528))(4, v23, v24, v53, v52, *(v51 + 8));
  v46 = v26;
  v45 = v27;
  if (sub_1CF9E6DF8())
  {
    v28 = *(v56 + 608);
    v29 = *(v56 + 624);
    v60 = v17;
    v61 = v28;
    v30 = v54;
    v62 = v54;
    v63 = v29;
    v55 = type metadata accessor for JobResult();
    v60 = v17;
    v61 = v28;
    v62 = v30;
    v63 = v29;
    v54 = type metadata accessor for Ingestion.ReSnapshotChildren();
    v31 = 0;
    v56 = v19 + 16;
    v32 = (v48 + 8);
    while (1)
    {
      v33 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v33)
      {
        (*(v19 + 16))(v21, v25 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v31, AssociatedTypeWitness);
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v47 != 8)
        {
          goto LABEL_25;
        }

        v60 = result;
        (*v56)(v21, &v60, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }
      }

      v35 = v58;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v37 = v36;
      result = (*v32)(v35, v59);
      v39 = v37 * 1000000000.0;
      if (COERCE__INT64(fabs(v37 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v39 <= -9.22337204e18)
      {
        goto LABEL_23;
      }

      if (v39 >= 9.22337204e18)
      {
        goto LABEL_24;
      }

      v40 = sub_1CF656FE0(v21, 0, v39, 8);
      (*(v19 + 8))(v21, AssociatedTypeWitness);
      sub_1CF803A0C(v57, v40);

      ++v31;
      if (v34 == sub_1CF9E6DF8())
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_18:

    v41 = v52;
    v63 = v52;
    v64 = v51;
    if (v46)
    {
      v42 = __swift_allocate_boxed_opaque_existential_0(&v60);
      (*(*(v41 - 8) + 16))(v42, v53, v41);
      v50(&v60, 0, 0, 0, 0);
    }

    else
    {
      v43 = __swift_allocate_boxed_opaque_existential_0(&v60);
      (*(*(v41 - 8) + 16))(v43, v53, v41);
      type metadata accessor for MaintenanceContinuation();
      v44 = swift_allocObject();
      *(v44 + 16) = v45;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0;
      *(v44 + 40) = 1;
      v50(&v60, v44, 0, 0, 0);
    }

    return sub_1CEFCCC44(&v60, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return result;
}

void *sub_1CF593874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v99 = a8;
  v98 = a1;
  v14 = *v8;
  v97 = sub_1CF9E5CF8();
  v96 = *(v97 - 8);
  v15 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v14[76];
  v19 = v14[77];
  v20 = v14[78];
  v124 = v14[75];
  v17 = v124;
  v125 = v18;
  v115 = v18;
  v126 = v19;
  v127 = v20;
  v113 = v20;
  v111 = type metadata accessor for ReconciliationMutation();
  v21 = *(v111 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v87 - v23;
  v114 = v19;
  v116 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v104 = *(AssociatedTypeWitness - 8);
  v25 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v103 = &v87 - v26;
  v120 = v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v112 = sub_1CF9E75D8();
  v29 = *(v112 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v118 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v117 = &v87 - v33;
  v123 = v21;
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = v34;
      v34 = *(v34 + 16);
      v36 = *(v35 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v34 = 0;
  }

  v36 = 1;
LABEL_6:
  v37 = (*(**(v98 + 16) + 584))(v34, v36, a4, a7, *(v99 + 8));
  v89 = v38;
  v88 = v39;
  v90 = 0;
  v91 = a4;
  v92 = a7;
  v93 = a6;
  v94 = a5;
  v124 = v116;
  v125 = v115;
  v126 = v114;
  v127 = v113;
  type metadata accessor for ConcreteJobResult();
  result = sub_1CF056580();
  v106 = result;
  v41 = 0;
  v102 = v37;
  v42 = *(v37 + 64);
  v100 = v37 + 64;
  v43 = 1 << *(v37 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v42;
  v46 = (v43 + 63) >> 6;
  v109 = TupleTypeMetadata2;
  v108 = TupleTypeMetadata2 - 8;
  v101 = v104 + 16;
  v119 = (v104 + 32);
  v107 = (v29 + 32);
  v105 = (v123 + 8);
  if ((v44 & v42) == 0)
  {
LABEL_10:
    if (v46 <= v41 + 1)
    {
      v49 = v41 + 1;
    }

    else
    {
      v49 = v46;
    }

    v50 = v49 - 1;
    v48 = v109;
    v51 = v117;
    v52 = v118;
    while (1)
    {
      v47 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v47 >= v46)
      {
        v45 = 0;
        v62 = 1;
        goto LABEL_18;
      }

      v45 = *(v100 + 8 * v47);
      ++v41;
      if (v45)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  while (1)
  {
    v47 = v41;
    v48 = v109;
LABEL_17:
    v53 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v54 = v53 | (v47 << 6);
    v55 = v102;
    v56 = v104;
    v57 = v103;
    v58 = v120;
    (*(v104 + 16))(v103, *(v102 + 48) + *(v104 + 72) * v54, v120);
    v59 = *(*(v55 + 56) + 8 * v54);
    v60 = *(v48 + 48);
    v61 = *(v56 + 32);
    v52 = v118;
    v61(v118, v57, v58);
    v62 = 0;
    *&v52[v60] = v59;
    v50 = v47;
    v51 = v117;
LABEL_18:
    v63 = *(v48 - 8);
    (*(v63 + 56))(v52, v62, 1, v48);
    (*v107)(v51, v52, v112);
    if ((*(v63 + 48))(v51, 1, v48) == 1)
    {
      break;
    }

    v123 = *&v51[*(v48 + 48)];
    v124 = v116;
    v125 = v115;
    v126 = v114;
    v127 = v113;
    v121 = type metadata accessor for JobResult();
    v64 = swift_getAssociatedTypeWitness();
    v122 = v50;
    v65 = v64;
    v66 = v120;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v68 = swift_getAssociatedConformanceWitness();
    v124 = v66;
    v125 = v65;
    v126 = AssociatedConformanceWitness;
    v127 = v68;
    type metadata accessor for ReconciliationID();
    v69 = *(swift_getTupleTypeMetadata2() + 48);
    v70 = v110;
    (*v119)(v110, v51, v66);
    swift_storeEnumTagMultiPayload();
    *(v70 + v69) = v123;
    v71 = v111;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v106, v70);
    result = (*v105)(v70, v71);
    v41 = v122;
    if (!v45)
    {
      goto LABEL_10;
    }
  }

  v72 = v95;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v74 = v73;
  result = (*(v96 + 8))(v72, v97);
  v75 = v74 * 1000000000.0;
  if (COERCE__INT64(fabs(v74 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v75 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v75 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v76 = v91;
  v77 = v92;
  v78 = v99;
  v79 = v90;
  sub_1CF521850(v106, v75, v91, v92, v99);
  if (v79)
  {

    v80 = v94;
    v127 = v77;
    v128 = v78;
    v81 = __swift_allocate_boxed_opaque_existential_0(&v124);
    (*(*(v77 - 8) + 16))(v81, v76, v77);
    v82 = v79;
    v80(&v124, 0, 0, 0, v79);
  }

  else
  {
    v83 = v94;
    v127 = v77;
    v128 = v99;
    if (v89)
    {
      v84 = __swift_allocate_boxed_opaque_existential_0(&v124);
      (*(*(v77 - 8) + 16))(v84, v76, v77);
      v83(&v124, 0, 0, 0, 0);
    }

    else
    {
      v85 = __swift_allocate_boxed_opaque_existential_0(&v124);
      (*(*(v77 - 8) + 16))(v85, v76, v77);
      type metadata accessor for MaintenanceContinuation();
      v86 = swift_allocObject();
      *(v86 + 16) = v88;
      *(v86 + 24) = 0;
      *(v86 + 32) = 0;
      *(v86 + 40) = 1;
      v83(&v124, v86, 0, 0, 0);
    }
  }

  return sub_1CEFCCC44(&v124, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF594328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v79 = a8;
  v77 = a7;
  v78 = a5;
  v13 = *v8;
  v14 = sub_1CF9E5CF8();
  v74 = *(v14 - 8);
  v15 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v13[75];
  v18 = v13[76];
  v19 = v13[77];
  v20 = v13[78];
  v89 = v17;
  v91 = v17;
  v92 = v18;
  v87 = v19;
  v93 = v19;
  v94 = v20;
  v84 = type metadata accessor for ReconciliationMutation();
  v80 = *(v84 - 8);
  v21 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v66 - v22;
  v86 = v20;
  v88 = v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = *(AssociatedTypeWitness - 8);
  v71 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v90 = &v66 - v24;
  v25 = v8[16];
  v76 = a6;
  v75 = v14;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v26 = swift_dynamicCastClass()) != 0))
  {
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
  }

  else
  {
    v27 = 0;
    v28 = 1;
  }

  v29 = *(v79 + 8);
  v30 = a4;
  v31 = (*(**(a1 + 40) + 736))(v25, v27, v28, 100, a4, v77, v29);
  v67 = v32;
  v66 = v33;
  v69 = v29;
  v68 = 0;
  v70 = a1;
  v72 = v30;
  v91 = v89;
  v92 = v88;
  v93 = v87;
  v94 = v86;
  type metadata accessor for ConcreteJobResult();
  v34 = sub_1CF056580();
  if (sub_1CF9E6DF8())
  {
    v91 = v89;
    v92 = v88;
    v93 = v87;
    v94 = v86;
    type metadata accessor for JobResult();
    v35 = 0;
    v81 = (v85 + 32);
    v82 = (v85 + 16);
    v80 += 8;
    do
    {
      v36 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v36)
      {
        (*(v85 + 16))(v90, v31 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v35, AssociatedTypeWitness);
        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v71 != 8)
        {
          goto LABEL_34;
        }

        v91 = result;
        (*v82)(v90, &v91, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      v38 = swift_getAssociatedTypeWitness();
      v39 = v34;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v41 = swift_getAssociatedConformanceWitness();
      v91 = v38;
      v92 = AssociatedTypeWitness;
      v93 = AssociatedConformanceWitness;
      v94 = v41;
      type metadata accessor for ReconciliationID();
      v42 = *(swift_getTupleTypeMetadata2() + 48);
      v43 = v83;
      (*v81)(v83, v90, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      *(v43 + v42) = 0x7FFFFFFFFFFFFFFFLL;
      v34 = v39;
      v44 = v84;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v34, v43);
      (*v80)(v43, v44);
      ++v35;
    }

    while (v37 != sub_1CF9E6DF8());
  }

  v46 = v73;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v48 = v47;
  result = (*(v74 + 8))(v46, v75);
  v49 = v48 * 1000000000.0;
  v50 = v69;
  if (COERCE__INT64(fabs(v48 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v49 <= -9.22337204e18)
  {
    goto LABEL_32;
  }

  v51 = v78;
  if (v49 < 9.22337204e18)
  {
    v52 = v72;
    v53 = v77;
    v54 = v79;
    v55 = v68;
    sub_1CF521850(v34, v49, v72, v77, v79);
    if (v55)
    {

      v56 = v72;
      v94 = v53;
      v95 = v79;
      v57 = __swift_allocate_boxed_opaque_existential_0(&v91);
      (*(*(v53 - 8) + 16))(v57, v56, v53);
      v58 = v55;
      v51(&v91, 0, 0, 0, v55);
    }

    else
    {
      if (v67)
      {
        v91 = v89;
        v92 = v88;
        v93 = v87;
        v94 = v86;
        type metadata accessor for SQLDatabase();
        if (swift_dynamicCastClass())
        {
          v59 = sub_1CF478C28();
          v60 = *(v59 + 16);

          v63 = sub_1CF37D558(v52, v53, v50);

          if (v63 == 1)
          {
            v64 = *(v59 + 16);

            sub_1CF37DA54();
          }

          v51 = v78;
        }

        v94 = v53;
        v95 = v54;
        v65 = __swift_allocate_boxed_opaque_existential_0(&v91);
        (*(*(v53 - 8) + 16))(v65, v52, v53);
        v51(&v91, 0, 0, 0, 0);
      }

      else
      {
        v94 = v53;
        v95 = v54;
        v61 = __swift_allocate_boxed_opaque_existential_0(&v91);
        (*(*(v53 - 8) + 16))(v61, v52, v53);
        type metadata accessor for MaintenanceWaitingContinuation();
        v62 = swift_allocObject();
        *(v62 + 16) = v66;
        *(v62 + 24) = 0;
        *(v62 + 32) = 0;
        *(v62 + 40) = 1;
        v51(&v91, v62, 0, 0, 0);
      }
    }

    return sub_1CEFCCC44(&v91, &unk_1EC4C1B30, &qword_1CFA05300);
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1CF594C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  swift_allocObject();
  v12 = sub_1CF052464(a1, a2, a3, a4);
  v13 = *(v5 + 616);
  v14 = *(v5 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v12;
}

uint64_t sub_1CF594D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1;
  v13 = *v8;
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    a1 = swift_dynamicCastClass();
    if (a1)
    {
      if (*(a1 + 24) != 1)
      {
        v23 = *(a1 + 16);
      }
    }
  }

  v14 = *(v12 + 40);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = *(a8 + 8);
  v18 = (*(*v16 + 712))(100, v15);
  if (v19)
  {
    v20 = *(v13 + 616);
    v32 = *(v13 + 600);
    v33 = v20;
    type metadata accessor for SQLDatabase();
    if (swift_dynamicCastClass())
    {
      v21 = sub_1CF478C28();
      v22 = *(v21 + 16);

      v27 = sub_1CF37D558(a4, a7, v17);

      if (v27 == 1)
      {
        v28 = *(v21 + 16);

        sub_1CF37DA54();
      }
    }

    *(&v33 + 1) = a7;
    v34 = a8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
    a5(&v32, 0, 0, 0, 0);
  }

  else
  {
    *(&v33 + 1) = a7;
    v34 = a8;
    v24 = v18;
    v25 = __swift_allocate_boxed_opaque_existential_0(&v32);
    (*(*(a7 - 8) + 16))(v25, a4, a7);
    type metadata accessor for MaintenanceWaitingContinuation();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0;
    *(v26 + 40) = 1;
    a5(&v32, v26, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v32, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF5950F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v37 = a1;
  v38 = a6;
  v34 = a4;
  v8 = *a5;
  v9 = *(*a5 + 80);
  v10 = *(*a5 + 88);
  v11 = *(*a5 + 96);
  v12 = *(*a5 + 104);
  v39 = v9;
  v40 = v10;
  v41 = v11;
  v42 = v12;
  v13 = type metadata accessor for ReconciliationMutation();
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = a2[1];
  v39 = *a2;
  v40 = v18;
  if ((*(v8 + 608))(&v39, a3, v34, v15))
  {
    v39 = v9;
    v40 = v10;
    v41 = v11;
    v42 = v12;
    v34 = type metadata accessor for JobResult();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v20 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v22 = swift_getAssociatedConformanceWitness();
    v39 = AssociatedTypeWitness;
    v40 = v20;
    v41 = AssociatedConformanceWitness;
    v42 = v22;
    type metadata accessor for ReconciliationID();
    v23 = 0;
    v24 = 4;
  }

  else
  {
    v39 = v9;
    v40 = v10;
    v41 = v11;
    v42 = v12;
    v34 = type metadata accessor for JobResult();
    v25 = swift_getAssociatedTypeWitness();
    v20 = swift_getAssociatedTypeWitness();
    v26 = swift_getAssociatedConformanceWitness();
    v27 = swift_getAssociatedConformanceWitness();
    v39 = v25;
    v40 = v20;
    v41 = v26;
    v42 = v27;
    type metadata accessor for ReconciliationID();
    v24 = 0;
    v23 = 4;
  }

  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v29 = *(TupleTypeMetadata3 + 48);
  v30 = *(TupleTypeMetadata3 + 64);
  (*(*(v20 - 8) + 16))(v17, v37, v20);
  swift_storeEnumTagMultiPayload();
  *&v17[v29] = v23;
  *&v17[v30] = v24;
  v31 = v36;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v38, v17);
  return (*(v35 + 8))(v17, v31);
}

uint64_t sub_1CF5954E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v13 = 0;
    goto LABEL_5;
  }

  type metadata accessor for MaintenanceContinuation();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
LABEL_5:
    v15 = 1;
    goto LABEL_6;
  }

  v14 = v13;
  v13 = *(v13 + 16);
  v15 = *(v14 + 24);
LABEL_6:
  (*(**(a1 + 16) + 576))(v13, v15, 100, a4, a7, *(a8 + 8));
  v17 = v16;
  v19 = v18;
  (*(**(a1 + 32) + 744))();

  v23[3] = a7;
  v23[4] = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
  if (v17)
  {
    a5(v23, 0, 0, 0, 0);
  }

  else
  {
    type metadata accessor for MaintenanceContinuation();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    *(v22 + 40) = 1;
    a5(v23, v22, 0, 0, 0);
  }

  return sub_1CEFCCC44(v23, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF5957C0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a5;
  v53 = a6;
  v13 = *v8;
  v14 = sub_1CF9E5CF8();
  v49 = *(v14 - 8);
  v50 = v14;
  v15 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v13[78];
  v18 = v13[76];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v19 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v48 = &v43 - v20;
  v21 = v13[75];
  *&v22 = v21;
  *(&v22 + 1) = v18;
  v23 = v13[77];
  *&v24 = v23;
  *(&v24 + 1) = v17;
  v55 = v24;
  v54 = v22;
  v25 = type metadata accessor for PersistenceTrigger();
  v45 = *(v25 - 8);
  v26 = *(v45 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v44 = (&v43 - v28);
  if (((*a1)[32])(v27))
  {
    goto LABEL_2;
  }

  v43 = v25;
  (*(*a1[3] + 520))(57, 0x400000, 0, 0, a4, a7, *(a8 + 8));
  *&v54 = v18;
  *(&v54 + 1) = v21;
  *&v55 = v17;
  *(&v55 + 1) = v23;
  type metadata accessor for ItemJob();
  v31 = sub_1CF9E6DF8();

  if (v31 < 1)
  {
    goto LABEL_2;
  }

  *&v54 = v18;
  *(&v54 + 1) = v21;
  *&v55 = v17;
  *(&v55 + 1) = v23;
  type metadata accessor for DiskImport.DiskImportFinished();
  v32 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = v48;
  (*(AssociatedConformanceWitness + 48))(v32, AssociatedConformanceWitness);
  v35 = v47;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v37 = v36;
  result = (*(v49 + 8))(v35, v50);
  v38 = v37 * 1000000000.0;
  if (COERCE__INT64(fabs(v37 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v38 < 9.22337204e18)
  {
    v39 = sub_1CF559420(v34, 0, v38, 0x4000000000000);
    (*(v46 + 8))(v34, v32);
    v40 = v39 | 0x8000000000000000;
    v41 = v43;
    v42 = v44;
    *v44 = v40;
    swift_storeEnumTagMultiPayload();
    ((*a1)[39])(v42);
    (*(v45 + 8))(v42, v41);
LABEL_2:
    *(&v55 + 1) = a7;
    v56 = a8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v54);
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
    v52(&v54, 0, 0, 0, 0);
    return sub_1CEFCCC44(&v54, &unk_1EC4C1B30, &qword_1CFA05300);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1CF595D94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = *(a2 + 40);
  if (*(a1 + 40))
  {
    return v2;
  }

  return (*(a1 + 32) == *(a2 + 32)) & ~v2;
}

uint64_t sub_1CF595DF0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  return sub_1CF5950F8(a1, a2, a3, a4, *(v4 + 32), *(v4 + 40));
}

uint64_t sub_1CF595E10(char a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF590F88(a1, v1[4], v1[5], v1[6]);
}

uint64_t sub_1CF595E40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v129 = a5;
  v130 = a6;
  v128 = a4;
  v131 = a3;
  v8 = *a2;
  v98 = sub_1CF9E5CF8();
  v142 = *(v98 - 8);
  v9 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[10];
  v12 = v8[11];
  v13 = v8[12];
  v14 = v8[13];
  *&v153 = v11;
  *(&v153 + 1) = v12;
  *&v154 = v13;
  *(&v154 + 1) = v14;
  v100 = type metadata accessor for ReconciliationMutation();
  v116 = *(v100 - 8);
  v15 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v85 - v16;
  v17 = type metadata accessor for SnapshotItem();
  v99 = sub_1CF9E75D8();
  v111 = *(v99 - 8);
  v18 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v102 = &v85 - v19;
  v103 = v17;
  v110 = *(v17 - 8);
  v20 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v104 = &v85 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v123 = sub_1CF9E75D8();
  *&v109 = *(v123 - 8);
  v24 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v85 - v25;
  v124 = AssociatedTypeWitness;
  v108 = *(AssociatedTypeWitness - 8);
  v26 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v113 = v12;
  v114 = &v85 - v28;
  *&v153 = v11;
  *(&v153 + 1) = v12;
  *&v154 = v13;
  v112 = v14;
  *(&v154 + 1) = v14;
  v29 = type metadata accessor for ItemReconciliation();
  v121 = sub_1CF9E75D8();
  v107 = *(v121 - 8);
  v30 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v127 = &v85 - v31;
  v32 = *(v29 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v126 = &v85 - v35;
  v36 = swift_getAssociatedTypeWitness();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v140 = &v85 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v39;
  MEMORY[0x1EEE9AC00](v40);
  v132 = &v85 - v41;
  result = sub_1CF9E6DF8();
  if (!result)
  {
    return result;
  }

  v89 = a2;
  v93 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = 0;
  v137 = *(AssociatedConformanceWitness + 72);
  v138 = AssociatedConformanceWitness + 72;
  v141 = AssociatedConformanceWitness;
  v133 = AssociatedConformanceWitness + 64;
  v139 = (v37 + 16);
  v125 = (v32 + 48);
  v118 = (v109 + 16);
  v119 = (v32 + 32);
  v117 = (v108 + 48);
  v106 = (v108 + 32);
  v105 = (v108 + 8);
  v115 = (v32 + 8);
  v135 = (v37 + 8);
  v136 = (v37 + 32);
  v95 = (v110 + 48);
  v94 = (v110 + 32);
  v91 = (v108 + 16);
  v90 = (v142 + 8);
  v88 = (v116 + 8);
  v108 = v110 + 8;
  v110 = v111 + 8;
  v111 = v109 + 8;
  v116 = v107 + 8;
  v109 = xmmword_1CFA04E60;
  v45 = v11;
  v46 = v132;
  v120 = a1;
  v92 = v45;
  while (1)
  {
    v47 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v47)
    {
      (*(v37 + 16))(v46, a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v44, v36);
    }

    else
    {
      result = sub_1CF9E7998();
      if (v96 != 8)
      {
        goto LABEL_60;
      }

      *&v153 = result;
      (*v139)(v46, &v153, v36);
      swift_unknownObjectRelease();
    }

    v48 = v140;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_54:
      (*v105)(v114, v124);
      (*v115)(v126, v29);
      return (*v135)(v48, v36);
    }

    v142 = v44 + 1;
    (*v136)(v140, v46, v36);
    if (v137(v36, v141) & 1) != 0 || ((*(v141 + 64))(v36))
    {
      goto LABEL_11;
    }

    v51 = v37;
    v52 = *(v131 + 16);
    v53 = v127;
    v54 = v134;
    sub_1CF68DDB0(v48, v128, v129, v130, v127);
    if (v54)
    {
      return (*v135)(v48, v36);
    }

    v134 = 0;
    if ((*v125)(v53, 1, v29) == 1)
    {
      (*v135)(v48, v36);
      (*v116)(v53, v121);
      goto LABEL_4;
    }

    v55 = v126;
    (*v119)(v126, v53, v29);
    v56 = &v55[*(v29 + 52)];
    v57 = v29;
    v58 = v122;
    v59 = v123;
    (*v118)(v122, v56, v123);
    v60 = v124;
    if ((*v117)(v58, 1, v124) != 1)
    {
      break;
    }

    (*v115)(v126, v57);
    (*v135)(v140, v36);
    (*v111)(v58, v59);
    a1 = v120;
    v29 = v57;
LABEL_4:
    v37 = v51;
    v46 = v132;
LABEL_5:
    result = sub_1CF9E6DF8();
    ++v44;
    if (v142 == result)
    {
      return result;
    }
  }

  v61 = v57;
  v62 = v114;
  (*v106)(v114, v58, v60);
  result = type metadata accessor for ItemReconciliationHalf();
  if (*&v56[*(result + 36)])
  {
    (*v105)(v62, v60);
    v29 = v61;
    (*v115)(v126, v61);
    (*v135)(v140, v36);
    a1 = v120;
    goto LABEL_4;
  }

  v29 = v61;
  v63 = v126;
  v64 = v126[*(v61 + 56)];
  a1 = v120;
  if ((v64 - 1) < 2)
  {
    (*v105)(v114, v124);
    (*v115)(v63, v61);
    (*v135)(v140, v36);
    goto LABEL_4;
  }

  v48 = v140;
  if (v64 == 4)
  {
    goto LABEL_61;
  }

  v37 = v51;
  v65 = v134;
  (*(**(v131 + 40) + 264))(&v153, v114, v128, v129, v130);
  v46 = v132;
  if (v65)
  {
    goto LABEL_54;
  }

  v134 = 0;
  v147[12] = v165;
  v147[13] = v166;
  v147[14] = v167;
  v147[8] = v161;
  v147[9] = v162;
  v147[10] = v163;
  v147[11] = v164;
  v147[4] = v157;
  v147[5] = v158;
  v147[6] = v159;
  v147[7] = v160;
  v147[0] = v153;
  v147[1] = v154;
  v147[2] = v155;
  v147[3] = v156;
  v149[12] = v165;
  v150 = v166;
  v151 = v167;
  v149[8] = v161;
  v149[9] = v162;
  v149[10] = v163;
  v149[11] = v164;
  v149[4] = v157;
  v149[5] = v158;
  v149[6] = v159;
  v149[7] = v160;
  v149[0] = v153;
  v149[1] = v154;
  v148 = v168;
  v152 = v168;
  v149[2] = v155;
  v149[3] = v156;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v149) == 1)
  {
    (*v105)(v114, v124);
    (*v115)(v126, v29);
LABEL_11:
    v49 = *v135;
    v50 = v48;
LABEL_12:
    v49(v50, v36);
    goto LABEL_5;
  }

  v66 = v48;
  v67 = v102;
  v68 = v134;
  (*(**(v131 + 32) + 240))(v66, 1, v128, v129, v130);
  v134 = v68;
  if (v68)
  {
    sub_1CEFCCC44(v147, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    (*v105)(v114, v124);
    (*v115)(v126, v29);
    return (*v135)(v140, v36);
  }

  v69 = v103;
  if ((*v95)(v67, 1, v103) == 1)
  {
    sub_1CEFCCC44(v147, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    (*v105)(v114, v124);
    (*v115)(v126, v29);
    (*v135)(v140, v36);
    (*v110)(v67, v99);
    goto LABEL_5;
  }

  (*v94)(v104, v67, v69);
  v70 = &v104[*(v69 + 48)];
  v71 = type metadata accessor for ItemMetadata();
  if (v70[*(v71 + 48)])
  {
    v72 = *(v71 + 84);
    goto LABEL_30;
  }

  v107 = v71;
  v73 = (*(*v131 + 600))();
  if (*v70 - 1 <= 1 || (v70[*(v107 + 44)] & 1) != 0)
  {
    v74 = *(v107 + 84);
    goto LABEL_35;
  }

  v86 = *(&v150 + 1);
  LODWORD(v87) = v73;
  v83 = sub_1CEFF8538(v150, *(&v150 + 1), 0, v73, 0, 0);
  v84 = sub_1CEFF8538(v86, 0, 1, v87, 0, 0);
  if (v83 == 501)
  {
    v83 = v84;
    fpfs_supports_indexAllRemoteItems();
  }

  if (v83 == 3 || v83 == 1002)
  {
    v72 = *(v107 + 84);
LABEL_30:
    if (v70[v72] != 5)
    {
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  if (v83 != 500)
  {
    if (v70[*(v107 + 84)] != 4)
    {
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  v74 = *(v107 + 84);
LABEL_35:
  if (!v70[v74])
  {
LABEL_31:
    sub_1CEFCCC44(v147, &qword_1EC4BECF0, &unk_1CF9FEEB0);
LABEL_40:
    (*v108)(v104, v103);
    (*v105)(v114, v124);
    (*v115)(v126, v29);
    v49 = *v135;
    v50 = v140;
    goto LABEL_12;
  }

LABEL_36:
  v143 = v92;
  v144 = v113;
  v145 = v93;
  v146 = v112;
  v107 = type metadata accessor for JobResult();
  v75 = v124;
  v76 = swift_getAssociatedConformanceWitness();
  v143 = v36;
  v144 = v75;
  v145 = v141;
  v146 = v76;
  type metadata accessor for ReconciliationID();
  v87 = type metadata accessor for ReconciliationSideMutation();
  v86 = *(swift_getTupleTypeMetadata2() + 48);
  (*v91)(v101, v114, v124);
  swift_storeEnumTagMultiPayload();
  v77 = v97;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v79 = v78;
  result = (*v90)(v77, v98);
  v80 = v79 * 1000000000.0;
  if (COERCE__INT64(fabs(v79 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v80 <= -9.22337204e18)
    {
      goto LABEL_58;
    }

    if (v80 >= 9.22337204e18)
    {
      goto LABEL_59;
    }

    v81 = v101;
    v82 = &v101[v86];
    *v82 = v109;
    *(v82 + 2) = v80;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v89, v81);
    sub_1CEFCCC44(v147, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    (*v88)(v81, v100);
    goto LABEL_40;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1CF596F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a3;
  v54 = a6;
  v10 = *(*a2 + 80);
  v11 = *(*a2 + 88);
  v12 = *a2;
  v13 = *(*a2 + 96);
  v55 = a2;
  v14 = *(v12 + 104);
  v59 = v10;
  v60 = v11;
  v56 = v14;
  v57 = v11;
  v61 = v13;
  v62 = v14;
  v15 = type metadata accessor for PersistenceTrigger();
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v49 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_1CF9E75D8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v49 - v22;
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v49 - v28;
  (*(v20 + 16))(v23, a1, v19, v27);
  if ((*(v24 + 48))(v23, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v20 + 8))(v23, v19);
  }

  (*(v24 + 32))(v29, v23, AssociatedTypeWitness);
  v31 = a1 + *(type metadata accessor for ItemReconciliationHalf() + 64);
  if (*(v31 + 16))
  {
    return (*(v24 + 8))(v29, AssociatedTypeWitness);
  }

  v32 = v63;
  if ((*(v31 + 1) & 1) == 0)
  {
    return (*(v24 + 8))(v29, AssociatedTypeWitness);
  }

  v49 = AssociatedTypeWitness;
  v33 = v29;
  v59 = v10;
  v60 = v57;
  v61 = v13;
  v62 = v56;
  v34 = a1;
  v35 = type metadata accessor for ItemReconciliation();
  v36 = v55;
  sub_1CF07DE7C(v55, 1, v35, v58);
  if (v32)
  {
    return (*(v24 + 8))(v33, v49);
  }

  v37 = LOBYTE(v58[0]);
  if (LOBYTE(v58[0]) == 89)
  {
    return (*(v24 + 8))(v33, v49);
  }

  v38 = (*(*v36[3] + 360))(LOBYTE(v58[0]), v33, *(v34 + *(v35 + 64)), 0, v53, v54, *(a9 + 8));
  v63 = 0;
  if (v38)
  {
    return (*(v24 + 8))(v33, v49);
  }

  v39 = swift_getAssociatedTypeWitness();
  v54 = v33;
  v40 = v39;
  v53 = v37;
  v41 = v49;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = swift_getAssociatedConformanceWitness();
  v59 = v41;
  v60 = v40;
  v61 = AssociatedConformanceWitness;
  v62 = v43;
  type metadata accessor for ReconciliationID();
  v44 = *(swift_getTupleTypeMetadata2() + 48);
  v45 = v24;
  v46 = v50;
  v47 = v54;
  (*(v24 + 16))(v50, v54, v41);
  swift_storeEnumTagMultiPayload();
  v48 = v52;
  v46[v44] = v53;
  swift_storeEnumTagMultiPayload();
  ((*v36)[39])(v46);
  (*(v51 + 8))(v46, v48);
  return (*(v45 + 8))(v47, v41);
}

uint64_t sub_1CF597504()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  return sub_1CF577808();
}

uint64_t sub_1CF597550(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  return sub_1CF577A30(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
}

unint64_t sub_1CF597590()
{
  result = qword_1EC4C19B0;
  if (!qword_1EC4C19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C19B0);
  }

  return result;
}

unint64_t sub_1CF5975F8()
{
  result = qword_1EC4C19C0;
  if (!qword_1EC4C19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C19C0);
  }

  return result;
}

unint64_t sub_1CF597650()
{
  result = qword_1EC4C19C8;
  if (!qword_1EC4C19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C19C8);
  }

  return result;
}

unint64_t sub_1CF5976A8()
{
  result = qword_1EC4C19D0;
  if (!qword_1EC4C19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C19D0);
  }

  return result;
}

void sub_1CF597704()
{
  sub_1CF5C5128();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for DBCounters();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1CF5978E4(void (*a1)(void, void, void), unint64_t a2, unint64_t a3, void (*a4)(__int128 *, id), uint64_t a5)
{
  v116 = a4;
  v117 = a5;
  v111 = a3;
  v112 = a2;
  v107 = a1;
  v6 = *(*v5 + 616);
  v7 = *(*v5 + 632);
  v8 = *(*v5 + 640);
  v105 = *(*v5 + 624);
  v104 = v8;
  *&v118 = type metadata accessor for UserRequest();
  *(&v118 + 1) = &type metadata for NSecTimestamp;
  *&v119 = sub_1CF9E6448();
  *(&v119 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v94 = *(TupleTypeMetadata - 8);
  v9 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v98 = v93 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v102 = v93 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v97 = v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v93 - v16;
  v108 = sub_1CF9E63D8();
  v106 = *(v108 - 8);
  v18 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v96 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v100 = v93 - v21;
  v115 = sub_1CF9E6448();
  v109 = *(v115 - 8);
  v22 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v95 = v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v99 = v93 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v27 = (v93 - v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v114 = *(AssociatedTypeWitness - 8);
  v29 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v103 = v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v101 = v93 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v113 = v93 - v34;
  v35 = sub_1CF9E64A8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = (v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = *(v5 + 64);
  *v40 = v41;
  (*(v36 + 104))(v40, *MEMORY[0x1E69E8020], v35, v38);
  v42 = v41;
  LOBYTE(v41) = sub_1CF9E64D8();
  result = (*(v36 + 8))(v40, v35);
  if ((v41 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(v5 + 152) == 1)
  {
    v120 = 0;
    v118 = 0u;
    v119 = 0u;
    v44 = FPDomainUnavailableError();
    v116(&v118, v44);

    return sub_1CEFCCC44(&v118, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v45 = qword_1EC4EBD78;
  swift_beginAccess();
  v93[1] = v45;
  v46 = *(v5 + v45);

  *&v118 = v6;
  *(&v118 + 1) = v105;
  *&v119 = v7;
  *(&v119 + 1) = v104;
  *&v118 = type metadata accessor for UserRequest();
  *(&v118 + 1) = &type metadata for NSecTimestamp;
  *&v119 = v115;
  *(&v119 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
  v47 = swift_getTupleTypeMetadata();
  v48 = sub_1CF9E6E58();
  v49 = *(swift_getAssociatedConformanceWitness() + 40);
  v50 = v107;
  v105 = v48;
  v104 = v49;
  sub_1CF9E6728();

  if (!v121)
  {
    (*(v114 + 16))(v103, v50, AssociatedTypeWitness);
    v114 = v47;
    sub_1CF9E7FA8();
    v55 = *(v94 + 72);
    v56 = *(v94 + 80);
    swift_allocObject();
    v113 = sub_1CF9E6D68();
    v58 = v57;
    qos_class_self();
    v59 = v97;
    sub_1CF9E63B8();
    v60 = v106;
    v61 = *(v106 + 48);
    v62 = v108;
    if (v61(v59, 1, v108) == 1)
    {
      (*(v60 + 104))(v96, *MEMORY[0x1E69E7FA0], v62);
      if (v61(v59, 1, v62) != 1)
      {
        sub_1CEFCCC44(v59, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v60 + 32))(v96, v59, v62);
    }

    v81 = v95;
    sub_1CF9E6428();
    v82 = TupleTypeMetadata;
    v83 = *(TupleTypeMetadata + 64);
    v84 = *(v109 + 32);
    v85 = v98;
    v86 = v81;
    v87 = v115;
    v84(&v98[v83], v86, v115);
    v88 = v111;
    v89 = v112;
    *v58 = v112;
    v58[1] = v88;
    v84(v58 + *(v82 + 64), &v85[v83], v87);
    v90 = (v58 + *(v82 + 80));
    v91 = swift_allocObject();
    v92 = v117;
    *(v91 + 16) = v116;
    *(v91 + 24) = v92;
    *v90 = sub_1CF5DE51C;
    v90[1] = v91;
    v121 = sub_1CF045898(v113);
    swift_beginAccess();

    sub_1CEFD09A0(v89);
    sub_1CF9E6708();
    sub_1CF9E6738();
    return swift_endAccess();
  }

  v107 = *(v114 + 16);
  v107(v113, v50, AssociatedTypeWitness);
  qos_class_self();
  sub_1CF9E63B8();
  v51 = v106;
  v52 = *(v106 + 48);
  v53 = v108;
  v54 = v52(v17, 1, v108);
  v93[0] = AssociatedTypeWitness;
  if (v54 == 1)
  {
    (*(v51 + 104))(v100, *MEMORY[0x1E69E7FA0], v53);
    if (v52(v17, 1, v53) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v51 + 32))(v100, v17, v53);
  }

  v63 = v99;
  sub_1CF9E6428();
  v64 = TupleTypeMetadata;
  v65 = *(TupleTypeMetadata + 64);
  v66 = *(v109 + 32);
  v67 = v102;
  v68 = v63;
  v69 = v115;
  v66(&v102[v65], v68, v115);
  v70 = v111;
  v71 = v112;
  *v27 = v112;
  v27[1] = v70;
  v66(v27 + *(v64 + 64), &v67[v65], v69);
  v72 = (v27 + *(v64 + 80));
  v73 = swift_allocObject();
  v74 = v117;
  *(v73 + 16) = v116;
  *(v73 + 24) = v74;
  *v72 = sub_1CF5E14E4;
  v72[1] = v73;
  swift_beginAccess();
  v75 = v101;
  v76 = v113;
  v77 = v93[0];
  v107(v101, v113, v93[0]);

  sub_1CEFD09A0(v71);
  sub_1CF9E66E8();
  result = sub_1CF9E66F8();
  if (!*v78)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v79 = result;
  sub_1CF9E6E18();
  v79(&v118, 0);
  v80 = *(v114 + 8);
  v80(v75, v77);
  v80(v76, v77);
  return swift_endAccess();
}

id sub_1CF5984A8()
{
  v0 = sub_1CF042F4C();

  return v0;
}

uint64_t (*sub_1CF598538(uint64_t **a1, uint64_t a2, char a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1CF5D9178(v6, a2, a3);
  return sub_1CF5E158C;
}

void (*sub_1CF5985C0(uint64_t *a1, uint64_t a2))(void *a1)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_1CEFCCBDC(a2, v8, &unk_1EC4BF650, &unk_1CF9FCB40);
  v6[5] = sub_1CF5D9224(v6, v9);
  return sub_1CF5986A4;
}

void sub_1CF5986A4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_1CEFCCC44(v2, &unk_1EC4BF650, &unk_1CF9FCB40);
  free(v2);

  free(v1);
}

uint64_t (*sub_1CF598710(uint64_t **a1, uint64_t a2, char a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1CF5D93B4(v6, a2, a3);
  return sub_1CF5E158C;
}

uint64_t (*sub_1CF598798(uint64_t **a1, uint64_t a2, char a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1CF5D9580(v6, a2, a3);
  return sub_1CF598820;
}

void sub_1CF598824(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void (*sub_1CF598870(uint64_t **a1, void *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  *a1 = v4;
  v4[4] = a2;
  v4[5] = sub_1CF5D9460(v4, a2);
  return sub_1CF5988F4;
}

void sub_1CF5988F4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_1CF598944(unsigned __int8 a1)
{
  sub_1CF5DA5A8(a1);
}

void sub_1CF59896C(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v69 = a5;
  v8 = v7;
  v68 = a4;
  LODWORD(v66) = a3;
  v64 = a1;
  v65 = a2;
  v63 = a7;
  v72 = a6;
  v9 = sub_1CF9E75D8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v71 = &v61 - v11;
  v12 = sub_1CF9E6068();
  v67 = *(v12 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v61 - v20;
  v22 = type metadata accessor for Signpost(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v73 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E64A8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = (&v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(v8 + qword_1EDEBBC38);
  v77 = fpfs_adopt_log();
  v31 = *(v8 + 64);
  *v29 = v31;
  (*(v26 + 104))(v29, *MEMORY[0x1E69E8020], v25);
  v32 = v31;
  LOBYTE(v31) = sub_1CF9E64D8();
  (*(v26 + 8))(v29, v25);
  if ((v31 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_8;
  }

  if ((fp_task_tracker_is_cancelled(*(*(v8 + 168) + 16)) & 1) != 0 || *(v8 + 152) == 1)
  {
    sub_1CF2CA194();
    swift_allocError();
    swift_willThrow();
LABEL_5:
    v33 = v77;
    v34 = fpfs_adopt_log();
LABEL_6:
    v35 = v34;

    return;
  }

  if (qword_1EDEAE980 != -1)
  {
    goto LABEL_19;
  }

LABEL_8:
  v36 = qword_1EDEBBE40;
  v37 = v67;
  (*(v67 + 56))(v21, 1, 1, v12);
  v75 = 0x63746162206E7572;
  v76 = 0xEA00000000002068;
  v38 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v38);

  v65 = v76;
  v66 = v75;
  sub_1CEFCCBDC(v21, v19, &unk_1EC4BED20, &unk_1CFA00700);
  v39 = *(v37 + 48);
  v40 = v39(v19, 1, v12);
  v62 = v36;
  if (v40 == 1)
  {
    v41 = v36;
    v42 = v74;
    sub_1CF9E6048();
    v43 = v42;
    if (v39(v19, 1, v12) != 1)
    {
      sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v43 = v74;
    (*(v37 + 32))(v74, v19, v12);
  }

  v44 = v73;
  (*(v37 + 16))(v73, v43, v12);
  v45 = v62;
  *&v44[*(v22 + 20)] = v62;
  v46 = &v44[*(v22 + 24)];
  *v46 = "DB queue";
  *(v46 + 1) = 8;
  v46[16] = 2;
  v47 = v45;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1CF9FA450;
  *(v48 + 56) = MEMORY[0x1E69E6158];
  *(v48 + 64) = sub_1CEFD51C4();
  v49 = v65;
  *(v48 + 32) = v66;
  *(v48 + 40) = v49;
  sub_1CF9E6028();

  (*(v37 + 8))(v74, v12);
  v50 = sub_1CEFCCC44(v21, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v50);
  v52 = v71;
  v51 = v72;
  v53 = v70;
  (*(*v8 + 2528))(sub_1CF5DFA40);
  if (v53)
  {
    v75 = v53;
    v54 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {

      sub_1CF2CA194();
      swift_allocError();
      swift_willThrow();

      sub_1CF9E7458();
      v55 = v73;
      sub_1CF9E6038();
      sub_1CF043504(v55, type metadata accessor for Signpost);
    }

    else
    {

      v58 = *(*v8 + 496);
      v59 = v53;
      v58(v53, 1, "runBatch(function:updateBlock:)", 31, 2);

      sub_1CF9E7458();
      v60 = v73;
      sub_1CF9E6038();
      sub_1CF043504(v60, type metadata accessor for Signpost);
    }

    goto LABEL_5;
  }

  v56 = *(v51 - 8);
  if ((*(v56 + 48))(v52, 1, v51) != 1)
  {
    (*(v56 + 32))(v63, v52, v51);
    sub_1CF9E7458();
    v57 = v73;
    sub_1CF9E6038();
    sub_1CF043504(v57, type metadata accessor for Signpost);
    v33 = v77;
    v34 = fpfs_adopt_log();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1CF599234(void (*a1)(void, void), unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *), uint64_t a8, void (*a9)(void, void), uint64_t a10)
{
  v35 = a6;
  v30 = a8;
  v31 = a7;
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v28 = a10;
  v29 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - v12;
  v14 = sub_1CF9E63D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E6448();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  qos_class_self();
  sub_1CF9E63B8();
  v24 = *(v15 + 48);
  if (v24(v13, 1, v14) == 1)
  {
    (*(v15 + 104))(v18, *MEMORY[0x1E69E7FA0], v14);
    if (v24(v13, 1, v14) != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
  }

  sub_1CF9E6428();
  v25 = sub_1CF5D2970(0, v29, v32, v33, v34, v23, 0, v35, v31, v30, a9, v28);
  (*(v20 + 8))(v23, v19);
  return v25;
}

uint64_t sub_1CF5994EC(uint64_t a1, uint64_t a2)
{
  v6 = v3[20];
  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v9;
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
    v5 = qword_1EDEBBD00;
    swift_beginAccess();
    v4 = *(v3 + v5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v5) = v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v4 = sub_1CF1F6A6C(0, v4[2] + 1, 1, v4);
  *(v3 + v5) = v4;
LABEL_3:
  v14 = v4[2];
  v13 = v4[3];
  if (v14 >= v13 >> 1)
  {
    v4 = sub_1CF1F6A6C((v13 > 1), v14 + 1, 1, v4);
  }

  v4[2] = v14 + 1;
  v15 = &v4[2 * v14];
  v15[4] = sub_1CF5E1588;
  v15[5] = v2;
  *(v3 + v5) = v4;
  v16 = swift_endAccess();
  return (*(*v3 + 2488))(v16);
}

uint64_t sub_1CF599648(void (**TupleTypeMetadata3)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v200 = a3;
  v201 = a2;
  v6 = *v3;
  v188 = sub_1CF9E6118();
  v187 = *(v188 - 8);
  v7 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v190 = &v177 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v189 = &v177 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v181 = &v177 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v182 = &v177 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v183 = &v177 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v184 = &v177 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v186 = &v177 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v185 = &v177 - v22;
  v23 = v6[77];
  v24 = v6[79];
  v193 = v6[78];
  v25 = v6[80];
  v194 = v23;
  v205 = v23;
  v206 = v193;
  v192 = v24;
  v207 = v24;
  v208 = v25;
  v191 = v25;
  v26 = type metadata accessor for PersistenceTrigger();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v177 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v202 = &v177 - v31;
  v32 = qword_1EDEBBCD8;
  swift_beginAccess();
  v33 = sub_1CF9E6E58();
  v196 = v32;
  v205 = *(v4 + v32);
  swift_getWitnessTable();
  v195 = v33;
  if (sub_1CF9E7128())
  {
LABEL_2:
    if (fp_task_tracker_is_cancelled(*(*(v4 + 168) + 16)))
    {
      v34 = 1;
    }

    else
    {
      v34 = *(v4 + 152);
    }

    v47 = v200;
    v48 = v201;
    v49 = v191;
    v50 = v194;
    LODWORD(v196) = v34;
    v51 = v34 ^ 1;
    v179 = (v4 + qword_1EDEBBCD0);
    if (*(v4 + qword_1EDEBBCD0) == 0 || (v52 = ~*(v4 + 80), LODWORD(v202) = v51, (v52 & 0x1C0) == 0))
    {
      LODWORD(v202) = 0;
    }

    v197 = TupleTypeMetadata3;
    v180 = (v4 + qword_1EDEBBCA8);
    if (*(v4 + qword_1EDEBBCA8) == 0 || (~*(v4 + 80) & 0x1C0) == 0)
    {
      v51 = 0;
    }

    LODWORD(v198) = v51;
    v53 = qword_1EDEBBC90;
    swift_beginAccess();
    v204 = *(v4 + v53);
    MEMORY[0x1EEE9AC00](v204);
    v54 = v193;
    *(&v177 - 6) = v50;
    *(&v177 - 5) = v54;
    v55 = v192;
    *(&v177 - 4) = v48;
    *(&v177 - 3) = v55;
    v175 = v49;
    v176 = v47;

    v205 = v50;
    v206 = v54;
    v207 = v55;
    v208 = v49;
    type metadata accessor for UserRequest();
    type metadata accessor for FPStabilizationMode(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    sub_1CF9E6E58();
    swift_getWitnessTable();
    v56 = v203;
    v57 = sub_1CF9E7A08();
    v58 = v56;
    v59 = v4;
    v195 = v53;
    v205 = *(v4 + v53);
    swift_getWitnessTable();
    if (!(v202 & 1 | ((sub_1CF9E7128() & 1) == 0)) && !v198)
    {
      v60 = v190;
LABEL_29:
      v61 = v189;
      goto LABEL_30;
    }

    v203 = v57;
    v74 = *(v200 + 8);
    v75 = sub_1CF5B901C(1, v197, v201, v74);
    if (v56)
    {
    }

    v178 = TupleTypeMetadata3;
    if ((v75 & 1) == 0)
    {
      v92 = sub_1CF9E6DF8();
      if (v92)
      {
        v202 = v92;
        v93 = sub_1CF5B901C(0, v197, v201, v74);
        if (v93)
        {
          v198 = &v177;
          v129 = v195;
          v205 = *(v59 + v195);
          MEMORY[0x1EEE9AC00](v205);
          v130 = v193;
          *(&v177 - 6) = v194;
          *(&v177 - 5) = v130;
          v131 = v59;
          v132 = v200;
          v133 = v201;
          v134 = v192;
          *(&v177 - 4) = v201;
          *(&v177 - 3) = v134;
          v135 = v191;
          v175 = v191;
          v176 = v132;

          v136 = sub_1CF9E7A08();
          v177 = 0;
          v137 = *(v131 + v129);
          *(v131 + v129) = v136;

          v138 = v131;
          if ((*(v131 + 82) & 0x20) == 0)
          {
            v139 = fpfs_current_or_default_log();
            v140 = v181;
            sub_1CF9E6128();
            v141 = sub_1CF9E6108();
            v142 = sub_1CF9E72C8();
            if (os_log_type_enabled(v141, v142))
            {
              v143 = swift_slowAlloc();
              *v143 = 134217984;
              *(v143 + 4) = v202;
              _os_log_impl(&dword_1CEFC7000, v141, v142, "🚀  job scheduler is stable, calling %ld stabilization waiters with no noBackgroundWork", v143, 0xCu);
              MEMORY[0x1D386CDC0](v143, -1, -1);
            }

            (*(v187 + 8))(v140, v188);
            v57 = v203;

            v144 = sub_1CF9E6DF8();
            v60 = v190;
            if (v144)
            {
              v145 = v57;
              v146 = 0;
              TupleTypeMetadata3 = (v145 + 56);
              do
              {
                v147 = sub_1CF9E6DC8();
                sub_1CF9E6D78();
                if ((v147 & 1) == 0)
                {
                  goto LABEL_97;
                }

                v148 = v146 + 1;
                if (__OFADD__(v146, 1))
                {
                  goto LABEL_98;
                }

                v150 = *(TupleTypeMetadata3 - 1);
                v149 = *TupleTypeMetadata3;
                v151 = *(TupleTypeMetadata3 - 3);
                v205 = 0;
                sub_1CEFD09A0(v151);

                v150(&v205);
                sub_1CF5DE5B8(v151);

                v152 = v203;
                v153 = sub_1CF9E6DF8();
                ++v146;
                TupleTypeMetadata3 += 4;
                v60 = v190;
              }

              while (v148 != v153);

              v58 = v177;
              v57 = v152;
            }

            else
            {

              v58 = v177;
            }

            v61 = v189;
            v59 = v138;
            goto LABEL_30;
          }

          v161 = swift_allocObject();
          v162 = v193;
          v161[2] = v194;
          v161[3] = v162;
          v161[4] = v133;
          v163 = v192;
          v161[5] = v192;
          v161[6] = v135;
          v161[7] = v132;
          v161[8] = v203;

          v164 = fpfs_current_or_default_log();
          v165 = v182;
          sub_1CF9E6128();
          v166 = sub_1CF9E6108();
          v167 = sub_1CF9E72C8();
          v168 = os_log_type_enabled(v166, v167);
          v60 = v190;
          if (v168)
          {
            v169 = swift_slowAlloc();
            *v169 = 0;
            _os_log_impl(&dword_1CEFC7000, v166, v167, "🚀  job scheduler is stable, waiting for db flush", v169, 2u);
            MEMORY[0x1D386CDC0](v169, -1, -1);
          }

          (*(v187 + 8))(v165, v188);
          v170 = swift_allocObject();
          v171 = v193;
          v170[2] = v194;
          v170[3] = v171;
          v170[4] = v201;
          v170[5] = v163;
          v59 = v131;
          v172 = v200;
          v170[6] = v191;
          v170[7] = v172;
          v173 = v203;
          v170[8] = v202;
          v170[9] = v173;
          v174 = *(*v138 + 456);

          v174("consumeTriggersAndReconciliations(with:)", 40, 2, 0, 0, 0, sub_1CF5E1598, v161, sub_1CF5DFAB4, v170);

          v57 = v173;

          v58 = v177;
          goto LABEL_29;
        }
      }

      else
      {
        v58 = 0;
      }

      v60 = v190;
      goto LABEL_81;
    }

    v76 = v194;
    if (v202)
    {
      if (*(v4 + 89) == 1)
      {
        LODWORD(v176) = 0;
        v175 = 1633;
        goto LABEL_104;
      }

      v77 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v78 = sub_1CF9E6108();
      v79 = sub_1CF9E72A8();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_1CEFC7000, v78, v79, "🤯  job scheduler is stable, upload jobs are not!", v80, 2u);
        v81 = v80;
        TupleTypeMetadata3 = v178;
        MEMORY[0x1D386CDC0](v81, -1, -1);
      }

      (*(v187 + 8))(v185, v188);
      v82 = v179;
      *v179 = 0;
      v82[1] = 0;
      *(v4 + qword_1EDEBBCA0) = vdupq_n_s64(1uLL);
    }

    v199 = v4;
    v57 = v203;
    v83 = v195;
    if (!v198)
    {
LABEL_48:
      v91 = v199;
      v205 = *(v199 + v83);
      if (sub_1CF9E7128())
      {
        v58 = 0;
        v60 = v190;
        v61 = v189;
        v59 = v91;
LABEL_30:
        if (sub_1CF03BB04())
        {
          goto LABEL_54;
        }

        v62 = *(v59 + 136);
        if ((sub_1CF03B0B0() | v196))
        {
          goto LABEL_54;
        }

        v203 = v57;
        v177 = v58;
        v63 = type metadata accessor for StringDumper();
        TupleTypeMetadata3 = swift_allocObject();
        TupleTypeMetadata3[4] = 0;
        TupleTypeMetadata3[5] = 0xE000000000000000;
        TupleTypeMetadata3[2] = 0;
        TupleTypeMetadata3[3] = 0xE000000000000000;
        v208 = v63;
        v209 = &off_1F4C037A8;
        v205 = TupleTypeMetadata3;

        sub_1CF527F10();
        __swift_destroy_boxed_opaque_existential_1(&v205);
        v199 = v59;
        if ((*(v59 + 81) & 4) == 0)
        {
          v64 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v65 = sub_1CF9E6108();
          v66 = sub_1CF9E72B8();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v205 = v68;
            *v67 = 136315138;
            swift_beginAccess();
            v69 = TupleTypeMetadata3[2];
            v70 = TupleTypeMetadata3[3];

            v71 = v61;
            v72 = sub_1CEFD0DF0(v69, v70, &v205);

            *(v67 + 4) = v72;
            _os_log_impl(&dword_1CEFC7000, v65, v66, "🤯  there is no running jobs but the FS job lock is not empty!\n%s", v67, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v68);
            MEMORY[0x1D386CDC0](v68, -1, -1);
            v73 = v67;
            v60 = v190;
            MEMORY[0x1D386CDC0](v73, -1, -1);

            (*(v187 + 8))(v71, v188);
          }

          else
          {

            (*(v187 + 8))(v61, v188);
          }

          v58 = v177;
          sub_1CF52A8BC();
          v59 = v199;
          sub_1CF058CE4();

LABEL_54:
          if (!sub_1CF03BB04())
          {
            v94 = *(v59 + 144);
            if ((sub_1CF03B0B0() & 1) == 0 && !v196)
            {
              v177 = v58;
              v95 = type metadata accessor for StringDumper();
              v96 = swift_allocObject();
              v96[4] = 0;
              v96[5] = 0xE000000000000000;
              v96[2] = 0;
              v96[3] = 0xE000000000000000;
              v208 = v95;
              v209 = &off_1F4C037A8;
              v205 = v96;

              sub_1CF527F10();
              __swift_destroy_boxed_opaque_existential_1(&v205);
              if ((*(v59 + 81) & 4) != 0)
              {

                sub_1CF512254("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/ConcreteDatabase.swift", 106, 2, 1724, v96);
              }

              v97 = fpfs_current_or_default_log();
              sub_1CF9E6128();

              v98 = sub_1CF9E6108();
              v99 = sub_1CF9E72B8();

              if (os_log_type_enabled(v98, v99))
              {
                v100 = swift_slowAlloc();
                v101 = swift_slowAlloc();
                v210 = v101;
                *v100 = 136315138;
                swift_beginAccess();
                v102 = v96[2];
                v103 = v96[3];

                v104 = sub_1CEFD0DF0(v102, v103, &v210);

                *(v100 + 4) = v104;
                _os_log_impl(&dword_1CEFC7000, v98, v99, "🤯  there is no running jobs but the FP job lock is not empty!\n%s", v100, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v101);
                MEMORY[0x1D386CDC0](v101, -1, -1);
                MEMORY[0x1D386CDC0](v100, -1, -1);

                (*(v187 + 8))(v190, v188);
              }

              else
              {

                (*(v187 + 8))(v60, v188);
              }

              sub_1CF52A8BC();
              sub_1CF058CE4();
            }
          }
        }

LABEL_100:

        sub_1CF511F88("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/ConcreteDatabase.swift", 106, 2, 1710, TupleTypeMetadata3);
      }

      v105 = *(v91 + v83);

      v106 = sub_1CF9E6DA8();
      v107 = *(v91 + v83);
      *(v91 + v83) = v106;

      v60 = v190;
      v59 = v91;
      if ((*(v91 + 82) & 0x20) != 0)
      {
        v115 = swift_allocObject();
        v116 = v193;
        v115[2] = v76;
        v115[3] = v116;
        v117 = v192;
        v115[4] = v201;
        v115[5] = v117;
        v118 = v200;
        v115[6] = v191;
        v115[7] = v118;
        v115[8] = v105;

        v119 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v120 = sub_1CF9E6108();
        v121 = sub_1CF9E72C8();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          _os_log_impl(&dword_1CEFC7000, v120, v121, "🚀  job scheduler is stable, waiting for db flush", v122, 2u);
          v123 = v122;
          v59 = v199;
          v76 = v194;
          MEMORY[0x1D386CDC0](v123, -1, -1);
        }

        v124 = v76;
        v58 = 0;

        (*(v187 + 8))(v184, v188);
        v125 = swift_allocObject();
        v126 = v193;
        v125[2] = v124;
        v125[3] = v126;
        v127 = v192;
        v125[4] = v201;
        v125[5] = v127;
        v128 = v200;
        v125[6] = v191;
        v125[7] = v128;
        v125[8] = v105;
        (*(*v59 + 456))("consumeTriggersAndReconciliations(with:)", 40, 2, 0, 0, 0, sub_1CF5DFAE8, v115, sub_1CF5DFAEC, v125);
      }

      else
      {
        v108 = fpfs_current_or_default_log();
        v109 = v183;
        sub_1CF9E6128();

        v110 = sub_1CF9E6108();
        v111 = sub_1CF9E72C8();
        v112 = os_log_type_enabled(v110, v111);
        v177 = 0;
        if (v112)
        {
          v113 = swift_slowAlloc();
          *v113 = 134217984;
          *(v113 + 4) = sub_1CF9E6DF8();

          _os_log_impl(&dword_1CEFC7000, v110, v111, "🚀  job scheduler is stable, calling %ld stabilization waiters", v113, 0xCu);
          v114 = v113;
          TupleTypeMetadata3 = v178;
          MEMORY[0x1D386CDC0](v114, -1, -1);
        }

        else
        {
        }

        (*(v187 + 8))(v109, v188);
        if (sub_1CF9E6DF8())
        {
          v154 = 0;
          v155 = (v105 + 56);
          while (1)
          {
            v156 = sub_1CF9E6DC8();
            sub_1CF9E6D78();
            if ((v156 & 1) == 0)
            {
              break;
            }

            v157 = v154 + 1;
            if (__OFADD__(v154, 1))
            {
              goto LABEL_96;
            }

            v159 = *(v155 - 1);
            v158 = *v155;
            v160 = *(v155 - 3);
            v205 = 0;
            sub_1CEFD09A0(v160);

            v159(&v205);
            sub_1CF5DE5B8(v160);

            TupleTypeMetadata3 = v178;
            ++v154;
            v155 += 4;
            if (v157 == sub_1CF9E6DF8())
            {

              v60 = v190;
              v58 = v177;
              v57 = v203;
              v61 = v189;
              v59 = v199;
              goto LABEL_30;
            }
          }

          sub_1CF9E7998();
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          sub_1CF9E7998();
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v58 = v177;
      }

LABEL_81:
      v57 = v203;
      goto LABEL_29;
    }

    v84 = v199;
    if (*(v199 + 89) != 1)
    {
      v85 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v86 = sub_1CF9E6108();
      v87 = sub_1CF9E72A8();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_1CEFC7000, v86, v87, "🤯  job scheduler is stable, download jobs are not!", v88, 2u);
        v89 = v88;
        TupleTypeMetadata3 = v178;
        MEMORY[0x1D386CDC0](v89, -1, -1);
      }

      (*(v187 + 8))(v186, v188);
      v90 = v180;
      *v180 = 0;
      v90[1] = 0;
      *(v84 + qword_1EDEBBC80) = vdupq_n_s64(1uLL);
      v57 = v203;
      v83 = v195;
      goto LABEL_48;
    }

    LODWORD(v176) = 0;
    v175 = 1643;
LABEL_104:
    result = sub_1CF9E7B68();
    __break(1u);
    return result;
  }

  v180 = v28;
  v197 = (v27 + 8);
  v198 = (v27 + 16);
  v35 = v196;
  v199 = v4;
  while (1)
  {
    v36 = *(v4 + v35);

    v37 = sub_1CF9E6DA8();
    v38 = *(v4 + v35);
    *(v4 + v35) = v37;

    if (sub_1CF9E6DF8())
    {
      break;
    }

LABEL_5:

    v4 = v199;
    v35 = v196;
    v205 = *(v199 + v196);
    swift_getWitnessTable();
    if (sub_1CF9E7128())
    {
      goto LABEL_2;
    }
  }

  v39 = 0;
  while (1)
  {
    v40 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v40 & 1) == 0)
    {
      break;
    }

    v41 = TupleTypeMetadata3;
    (*(v27 + 16))(v202, v36 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v39, v26);
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_17;
    }

LABEL_10:
    (*(v27 + 32))(v29, v202, v26);
    v40 = objc_autoreleasePoolPush();
    v43 = v203;
    sub_1CF5B84FC(v29, v199, v41, v201, v200, &v205);
    if (v43)
    {
      goto LABEL_18;
    }

    v203 = 0;
    objc_autoreleasePoolPop(v40);
    (*v197)(v29, v26);
    ++v39;
    v44 = v42 == sub_1CF9E6DF8();
    TupleTypeMetadata3 = v41;
    if (v44)
    {
      goto LABEL_5;
    }
  }

  v45 = sub_1CF9E7998();
  if (v180 != 8)
  {
    goto LABEL_99;
  }

  v41 = TupleTypeMetadata3;
  v205 = v45;
  v40 = v45;
  (*v198)(v202, &v205, v26);
  swift_unknownObjectRelease();
  v42 = v39 + 1;
  if (!__OFADD__(v39, 1))
  {
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
LABEL_18:

  objc_autoreleasePoolPop(v40);
  return (*v197)(v29, v26);
}

void *sub_1CF59AF44()
{
  v1 = *v0;
  v2 = sub_1CF92E98C();

  v3 = v2[13];
  sub_1CEFF7124(v2[12]);
  v4 = v2[14];
  swift_unknownObjectRelease();
  v5 = v2[15];

  v6 = v2[17];

  v7 = v2[18];

  v8 = v2[20];

  v9 = v2[21];

  v10 = v2[23];

  v11 = v2[24];

  v12 = v2[25];
  swift_unknownObjectRelease();
  sub_1CEFCCC44((v2 + 27), &qword_1EC4C1BF8, &unk_1CFA0CD70);
  v13 = v2[28];

  sub_1CEFCCC44(v2 + qword_1EDEBBC18, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v14 = *(v2 + qword_1EDEBBC70);

  v15 = *(v2 + qword_1EC4EBD70);

  v16 = *(v2 + qword_1EC4EBD78);

  v17 = *(v2 + qword_1EDEBBC90);

  v18 = *(v2 + qword_1EC4EBD80);

  v19 = *(v2 + qword_1EDEBBCC0);

  v20 = *(v2 + qword_1EDEBBCC8);

  v21 = *(v2 + qword_1EDEBBD00);

  v22 = *(v2 + qword_1EDEBBC60);

  v23 = *(v2 + qword_1EDEBBCE8);
  swift_unknownObjectRelease();
  v24 = v1[77];
  v25 = v1[79];
  type metadata accessor for FileTreeChangeAggregator();
  swift_getAssociatedTypeWitness();
  v26 = *(swift_getAssociatedConformanceWitness() + 40);
  sub_1CF9E7068();
  sub_1CF9E6708();
  swift_getTupleTypeMetadata2();
  v27 = *(sub_1CF9E5EB8() + 16);
  sub_1CF9E75C8();
  v28 = v1[78];
  v29 = v1[80];
  type metadata accessor for FileTreeChangeAggregator();
  v30 = *(sub_1CF9E5EB8() + 16);
  sub_1CF9E75C8();

  v31 = *(v2 + qword_1EDEBBCD8);

  v32 = *(v2 + qword_1EDEADB50);

  sub_1CF043504(v2 + qword_1EDEBBC30, type metadata accessor for DBCounters);
  v33 = *(v2 + qword_1EDEBBC78 + 8);
  sub_1CEFF7124(*(v2 + qword_1EDEBBC78));

  v34 = *(v2 + qword_1EDEBBCB8);

  v35 = *(v2 + qword_1EDEBBC88);

  v36 = *(v2 + qword_1EDEBBC98);

  v37 = *(v2 + qword_1EDEBBCF8 + 8);
  sub_1CEFF7124(*(v2 + qword_1EDEBBCF8));
  return v2;
}

uint64_t sub_1CF59B2F0(char *a1, void (**a2)(void), uint64_t a3, uint64_t a4)
{
  v822 = a4;
  v824 = a3;
  v823 = a2;
  v860 = a1;
  v6 = *(*v4 + 616);
  v7 = *(*v4 + 640);
  v8 = *(*v4 + 632);
  *&v844 = *(*v4 + 624);
  v5 = v844;
  *(&v844 + 1) = v6;
  *&v845 = v7;
  *(&v845 + 1) = v8;
  v770 = type metadata accessor for DirectionalTestingOperation();
  v768 = *(v770 - 8);
  v9 = *(v768 + 64);
  v10 = MEMORY[0x1EEE9AC00](v770);
  v748 = &v710 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v776 = &v710 - v12;
  *&v844 = v6;
  *(&v844 + 1) = v5;
  *&v845 = v8;
  *(&v845 + 1) = v7;
  v771 = type metadata accessor for DirectionalTestingOperation();
  v769 = *(v771 - 8);
  v13 = *(v769 + 64);
  v14 = MEMORY[0x1EEE9AC00](v771);
  v747 = &v710 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v767 = &v710 - v16;
  *&v844 = v5;
  *(&v844 + 1) = v6;
  *&v845 = v7;
  *(&v845 + 1) = v8;
  v17 = type metadata accessor for TestingOperation();
  v18 = sub_1CF9E75D8();
  v722 = *(v18 - 8);
  v723 = v18;
  v19 = *(v722 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v734 = &v710 - v21;
  v737 = v17;
  v736 = *(v17 - 8);
  v22 = *(v736 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v735 = &v710 - v23;
  *&v844 = v6;
  *(&v844 + 1) = v5;
  *&v845 = v8;
  *(&v845 + 1) = v7;
  v24 = type metadata accessor for TestingOperation();
  v25 = sub_1CF9E75D8();
  v720 = *(v25 - 8);
  v721 = v25;
  v26 = *(v720 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v731 = &v710 - v28;
  v805 = v24;
  v755 = *(v24 - 8);
  v29 = *(v755 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v750 = &v710 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v733 = &v710 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v730 = &v710 - v34;
  v798 = type metadata accessor for SnapshotItem();
  v797 = *(v798 - 8);
  v35 = *(v797 + 64);
  MEMORY[0x1EEE9AC00](v798);
  v775 = (&v710 - v36);
  v752 = type metadata accessor for ItemReconciliationHalf();
  v729 = *(v752 - 1);
  v37 = *(v729 + 64);
  MEMORY[0x1EEE9AC00](v752);
  v728 = &v710 - v38;
  v39 = type metadata accessor for SnapshotItem();
  v801 = *(v39 - 8);
  v40 = *(v801 + 64);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v741 = &v710 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v781 = (&v710 - v43);
  *&v844 = v6;
  *(&v844 + 1) = v5;
  *&v845 = v8;
  *(&v845 + 1) = v7;
  v44 = type metadata accessor for ReconciliationMutation();
  v717 = *(v44 - 8);
  v718 = v44;
  v45 = *(v717 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v714 = &v710 - v46;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = sub_1CF9E75D8();
  v739 = *(v48 - 8);
  v740 = v48;
  v49 = *(v739 + 64);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v753 = &v710 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v746 = &v710 - v52;
  v726 = type metadata accessor for ItemMetadata();
  v53 = *(*(v726 - 1) + 64);
  MEMORY[0x1EEE9AC00](v726);
  v713 = &v710 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v802 = v39;
  v808 = sub_1CF9E75D8();
  v806 = *(v808 - 1);
  v55 = *(v806 + 64);
  v56 = MEMORY[0x1EEE9AC00](v808);
  v766 = &v710 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v796 = &v710 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v809 = &v710 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v807 = &v710 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v716 = &v710 - v64;
  v65 = swift_getAssociatedTypeWitness();
  v66 = sub_1CF9E75D8();
  v742 = *(v66 - 8);
  v743 = v66;
  v67 = *(v742 + 64);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v749 = &v710 - v69;
  v816 = v65;
  v810 = *(v65 - 8);
  v70 = *(v810 + 64);
  v71 = MEMORY[0x1EEE9AC00](v68);
  v724 = (&v710 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = MEMORY[0x1EEE9AC00](v71);
  v795 = (&v710 - v74);
  v75 = MEMORY[0x1EEE9AC00](v73);
  v765 = (&v710 - v76);
  v77 = MEMORY[0x1EEE9AC00](v75);
  v794 = (&v710 - v78);
  MEMORY[0x1EEE9AC00](v77);
  v725 = &v710 - v79;
  *&v844 = v6;
  *(&v844 + 1) = v5;
  *&v845 = v8;
  *(&v845 + 1) = v7;
  v80 = type metadata accessor for ItemReconciliation();
  v756 = sub_1CF9E75D8();
  v772 = *(v756 - 8);
  v81 = *(v772 + 64);
  v82 = MEMORY[0x1EEE9AC00](v756);
  v764 = &v710 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x1EEE9AC00](v82);
  v745 = &v710 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v774 = &v710 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v727 = &v710 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v715 = &v710 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v762 = &v710 - v93;
  v782 = v80;
  v779 = *(v80 - 8);
  v94 = *(v779 + 64);
  v95 = MEMORY[0x1EEE9AC00](v92);
  v738 = &v710 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = MEMORY[0x1EEE9AC00](v95);
  v99 = &v710 - v98;
  v100 = MEMORY[0x1EEE9AC00](v97);
  v744 = &v710 - v101;
  v817 = AssociatedTypeWitness;
  v811 = *(AssociatedTypeWitness - 8);
  v102 = *(v811 + 64);
  v103 = MEMORY[0x1EEE9AC00](v100);
  v773 = &v710 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = MEMORY[0x1EEE9AC00](v103);
  v761 = &v710 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v732 = &v710 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v751 = (&v710 - v110);
  v111 = MEMORY[0x1EEE9AC00](v109);
  v754 = (&v710 - v112);
  v113 = MEMORY[0x1EEE9AC00](v111);
  v804 = &v710 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v763 = (&v710 - v116);
  v117 = MEMORY[0x1EEE9AC00](v115);
  v759 = (&v710 - v118);
  v119 = MEMORY[0x1EEE9AC00](v117);
  v803 = &v710 - v120;
  v121 = MEMORY[0x1EEE9AC00](v119);
  v780 = &v710 - v122;
  v123 = MEMORY[0x1EEE9AC00](v121);
  v719 = &v710 - v124;
  v125 = MEMORY[0x1EEE9AC00](v123);
  v778 = &v710 - v126;
  v127 = MEMORY[0x1EEE9AC00](v125);
  v757 = &v710 - v128;
  v129 = MEMORY[0x1EEE9AC00](v127);
  v758 = &v710 - v130;
  v131 = MEMORY[0x1EEE9AC00](v129);
  v760 = (&v710 - v132);
  MEMORY[0x1EEE9AC00](v131);
  v777 = &v710 - v133;
  v815 = v6;
  *&v844 = v6;
  v813 = v5;
  *(&v844 + 1) = v5;
  v814 = v8;
  *&v845 = v8;
  v812 = v7;
  *(&v845 + 1) = v7;
  v821 = type metadata accessor for PersistenceTrigger();
  v818 = *(v821 - 8);
  v134 = *(v818 + 64);
  v135 = MEMORY[0x1EEE9AC00](v821);
  v793 = &v710 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = MEMORY[0x1EEE9AC00](v135);
  v791 = &v710 - v138;
  v139 = MEMORY[0x1EEE9AC00](v137);
  v789 = &v710 - v140;
  v141 = MEMORY[0x1EEE9AC00](v139);
  v783 = &v710 - v142;
  v143 = MEMORY[0x1EEE9AC00](v141);
  v787 = &v710 - v144;
  v145 = MEMORY[0x1EEE9AC00](v143);
  v792 = &v710 - v146;
  v147 = MEMORY[0x1EEE9AC00](v145);
  v785 = &v710 - v148;
  v149 = MEMORY[0x1EEE9AC00](v147);
  v800 = &v710 - v150;
  v151 = MEMORY[0x1EEE9AC00](v149);
  v788 = &v710 - v152;
  v153 = MEMORY[0x1EEE9AC00](v151);
  v155 = &v710 - v154;
  v156 = MEMORY[0x1EEE9AC00](v153);
  v799 = &v710 - v157;
  v158 = MEMORY[0x1EEE9AC00](v156);
  v160 = &v710 - v159;
  v161 = MEMORY[0x1EEE9AC00](v158);
  v712 = &v710 - v162;
  v163 = MEMORY[0x1EEE9AC00](v161);
  v786 = (&v710 - v164);
  v165 = MEMORY[0x1EEE9AC00](v163);
  v790 = &v710 - v166;
  v167 = MEMORY[0x1EEE9AC00](v165);
  v784 = (&v710 - v168);
  v169 = MEMORY[0x1EEE9AC00](v167);
  v171 = &v710 - v170;
  v172 = MEMORY[0x1EEE9AC00](v169);
  v174 = &v710 - v173;
  MEMORY[0x1EEE9AC00](v172);
  v820 = &v710 - v175;
  v176 = v825;
  v177 = *(v825 + qword_1EDEBBCF8);
  if (v177)
  {
    v178 = v99;
    v179 = *(v825 + qword_1EDEBBCF8 + 8);

    v177(v860);
    v99 = v178;
    sub_1CEFF7124(v177);
  }

  v180 = v819;
  result = sub_1CF9642A4(v860, v176, v823, v824, v822);
  if (!v180)
  {
    v711 = v99;
    v819 = 0;
    v182 = *(v818 + 16);
    v182(v820, v860, v821);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v182(v155, v820, v821);
        v183 = v817;
        v184 = v816;
        v185 = *(swift_getTupleTypeMetadata2() + 48);
        v186 = v811;
        v187 = v803;
        (*(v811 + 32))(v803, v155, v183);
        v188 = v810;
        v189 = v794;
        (*(v810 + 32))(v794, &v155[v185], v184);
        v190 = v823;
        v191 = v824;
        v192 = v822;
        v193 = v819;
        sub_1CF5BEE74(v187, 0, v823, v824, v822);
        if (v193)
        {
          goto LABEL_11;
        }

        v194 = v817;
        sub_1CF5C1260(v189, 0, v190, v191, v192);
        v819 = 0;
        (*(v810 + 8))(v189, v816);
        (*(v186 + 8))(v803, v194);
        goto LABEL_184;
      case 3u:
        v182(v174, v820, v821);
        v241 = v815;
        v242 = v817;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v244 = v816;
        v245 = swift_getAssociatedConformanceWitness();
        *&v844 = v242;
        *(&v844 + 1) = v244;
        *&v845 = AssociatedConformanceWitness;
        *(&v845 + 1) = v245;
        v246 = type metadata accessor for ReconciliationID();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v247 = *(*(v246 - 8) + 8);
          v248 = v174;
          goto LABEL_182;
        }

        v366 = v811;
        v367 = v777;
        (*(v811 + 32))(v777, v174, v242);
        v368 = *(v825 + 16);
        v369 = *(v822 + 8);
        v370 = v762;
        v371 = v819;
        sub_1CF68DDB0(v367, v823, v824, v369, v762);
        v819 = v371;
        if (v371)
        {
          (*(v366 + 8))(v367, v242);
          goto LABEL_184;
        }

        v446 = v779;
        v447 = v370;
        v448 = v370;
        v449 = v782;
        if ((*(v779 + 48))(v447, 1, v782) == 1)
        {
          (*(v811 + 8))(v367, v817);
          v247 = *(v772 + 8);
          v248 = v448;
          goto LABEL_110;
        }

        v504 = v744;
        (*(v446 + 32))(v744, v448, v449);
        v505 = *(v742 + 16);
        v506 = v749;
        v860 = &v504[*(v449 + 52)];
        v505(v749);
        v507 = v816;
        v508 = (*(v810 + 48))(v506, 1, v816);
        v509 = v811;
        if (v508 == 1)
        {
          (*(v446 + 8))(v504, v449);
          (*(v509 + 8))(v777, v817);
          (*(v742 + 8))(v749, v743);
          goto LABEL_184;
        }

        v572 = v725;
        (*(v810 + 32))(v725, v749, v507);
        v573 = v812;
        if ((v860[*(type metadata accessor for ItemReconciliationHalf() + 52)] | 4) != 4)
        {
          goto LABEL_253;
        }

        v574 = v744;
        v575 = v811;
        if (v744[v752[14]] != 6 && v744[*(v782 + 56)] == 1)
        {
          v576 = v777;
          (*(v810 + 8))(v572, v816);
          (*(v779 + 8))(v574, v782);
          (*(v575 + 8))(v576, v817);
          goto LABEL_184;
        }

        v607 = v716;
        v608 = v819;
        (*(**(v825 + 32) + 240))(v777, 1, v823, v824, v369);
        if (v608)
        {

          v819 = 0;
          v609 = v814;
        }

        else
        {
          v819 = 0;
          v635 = v801;
          v636 = v802;
          v637 = (*(v801 + 48))(v607, 1, v802);
          v609 = v814;
          if (v637 == 1)
          {
            (*(v806 + 8))(v607, v808);
          }

          else
          {
            v661 = &v607[*(v636 + 48)];
            v662 = v713;
            sub_1CF043498(v661, v713, type metadata accessor for ItemMetadata);
            (*(v635 + 8))(v716, v636);
            v663 = *(v662 + v726[20]);
            sub_1CF043504(v662, type metadata accessor for ItemMetadata);
            if (v663 == 1)
            {
LABEL_253:
              (*(v810 + 8))(v572, v816);
              goto LABEL_254;
            }
          }
        }

        *&v844 = v241;
        *(&v844 + 1) = v813;
        *&v845 = v609;
        *(&v845 + 1) = v573;
        type metadata accessor for Mutation();
        v860 = sub_1CF9E6DA8();
        sub_1CF9E7FA8();
        v664 = *(v717 + 72);
        v665 = *(v717 + 80);
        swift_allocObject();
        v809 = sub_1CF9E6D68();
        v667 = v666;
        type metadata accessor for ReconciliationSideMutation();
        v668 = *(swift_getTupleTypeMetadata2() + 48);
        v669 = v811;
        v670 = v777;
        v671 = v817;
        (*(v811 + 16))(v667, v777, v817);
        swift_storeEnumTagMultiPayload();
        *(v667 + v668) = 2;
        swift_storeEnumTagMultiPayload();
        v672 = v860;
        swift_storeEnumTagMultiPayload();
        v673 = sub_1CF045898(v809);
        v674 = v819;
        sub_1CF92E0C4(v672, v673, v823, v824, v822);
        v819 = v674;
        v675 = v821;
        if (v674)
        {

          (*(v810 + 8))(v725, v816);
          (*(v779 + 8))(v744, v782);
          (*(v669 + 8))(v670, v671);
          return (*(v818 + 8))(v820, v675);
        }

        v676 = v744;
        if (v744[*(v782 + 56)] > 1u)
        {
          v677 = v817;
          v678 = v811;
          v679 = v816;
          v680 = v725;
          v681 = v777;
LABEL_269:
          (*(v810 + 8))(v680, v679);
          (*(v779 + 8))(v676, v782);
          (*(v678 + 8))(v681, v677);
          goto LABEL_184;
        }

        v677 = v817;
        v678 = v811;
        v679 = v816;
        v680 = v725;
        v681 = v777;
        if (!v744[*(v782 + 56)])
        {
          goto LABEL_269;
        }

        v694 = v725;
        sub_1CF057B28();
        *&v844 = v813;
        *(&v844 + 1) = v815;
        *&v845 = v812;
        *(&v845 + 1) = v814;
        type metadata accessor for Ingestion.FetchChildrenMetadata();
        v695 = sub_1CF93D7F4();
        v697 = sub_1CF65707C(v694, v695, v696, 0);
        sub_1CF4D3BC0();
        v698 = v819;
        sub_1CF5215C0(v697);
        v819 = v698;

        (*(v810 + 8))(v725, v816);
LABEL_254:
        (*(v779 + 8))(v744, v782);
        v247 = *(v811 + 8);
        v248 = v777;
        goto LABEL_128;
      case 4u:
        v270 = v182;
        v271 = v820;
        v272 = v821;
        v270(v171, v820, v821);
        v273 = v817;
        v274 = swift_getAssociatedConformanceWitness();
        v275 = v816;
        v276 = swift_getAssociatedConformanceWitness();
        *&v844 = v273;
        *(&v844 + 1) = v275;
        *&v845 = v274;
        *(&v845 + 1) = v276;
        v202 = type metadata accessor for ReconciliationID();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v247 = *(*(v202 - 8) + 8);
          v248 = v171;
          goto LABEL_51;
        }

        v378 = v171[*(swift_getTupleTypeMetadata2() + 48)];
        v282 = v811;
        v283 = v760;
        (*(v811 + 32))(v760, v171, v273);
        if (v378)
        {
          v379 = 4;
        }

        else
        {
          v379 = 0;
        }

        v425 = v819;
        sub_1CF5BBF10(v283, v379, 0, v823, v824, *(v822 + 8));
        if (v425)
        {
          (*(v282 + 8))(v283, v273);
          return (*(v818 + 8))(v271, v272);
        }

        v819 = 0;
        goto LABEL_102;
      case 5u:
        v264 = v790;
        v250 = v820;
        v182(v790, v820, v821);
        v265 = v817;
        v266 = swift_getAssociatedConformanceWitness();
        v267 = v816;
        v268 = swift_getAssociatedConformanceWitness();
        *&v844 = v265;
        *(&v844 + 1) = v267;
        *&v845 = v266;
        *(&v845 + 1) = v268;
        v246 = type metadata accessor for ReconciliationID();
        v269 = *(swift_getTupleTypeMetadata2() + 48);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v255 = *(*(v246 - 8) + 8);
          v255(&v264[v269], v246);
          v256 = v264;
          goto LABEL_27;
        }

        v374 = v811;
        v375 = v264;
        v376 = v757;
        (*(v811 + 32))(v757, v375, v265);
        v377 = v819;
        sub_1CF5BBF10(v376, 1, 0, v823, v824, *(v822 + 8));
        v819 = v377;
        if (v377)
        {
          (*(v374 + 8))(v376, v265);
          (*(*(v246 - 8) + 8))(&v375[v269], v246);
          goto LABEL_88;
        }

        (*(v374 + 8))(v376, v265);
        v247 = *(*(v246 - 8) + 8);
        v248 = &v375[v269];
        goto LABEL_182;
      case 6u:
        v182(v160, v820, v821);
        v218 = v808;
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v220 = *(TupleTypeMetadata3 + 48);
        v816 = *&v160[*(TupleTypeMetadata3 + 64)];
        v221 = v806;
        v222 = *(v806 + 32);
        v223 = v807;
        v222(v807, v160, v218);
        v222(v809, &v160[v220], v218);
        v224 = v223;
        v225 = *(v221 + 16);
        v226 = v796;
        v860 = (v221 + 16);
        v817 = v225;
        v225(v796, v224, v218);
        v227 = v801;
        v229 = v801 + 48;
        v228 = *(v801 + 48);
        v230 = v802;
        if (v228(v226, 1, v802) == 1)
        {
          v231 = *(v221 + 8);
          v231(v224, v218);
          v231(v809, v218);
          v231(v226, v218);
          goto LABEL_184;
        }

        v344 = *(v227 + 32);
        v345 = v781;
        v810 = v227 + 32;
        v805 = v344;
        v344(v781, v226, v230);
        v346 = v809;
        v811 = v229;
        v347 = v228;
        if (v228(v809, 1, v230) == 1)
        {
          sub_1CF4810BC();
          v348 = swift_allocError();
          *v349 = 2;
          v350 = v823;
          v351 = v824;
          v352 = *(v822 + 8);
          v353 = v825;
          v354 = v819;
          sub_1CF5BBF10(v345, 5, v348, v823, v824, v352);
          v819 = v354;
          v355 = v345;
          v356 = v766;
          if (v354)
          {

LABEL_132:
            (*(v801 + 8))(v355, v802);
            v499 = *(v806 + 8);
            v500 = v807;
LABEL_133:
            v501 = v808;
            v499(v500, v808);
            v499(v809, v501);
            goto LABEL_184;
          }

          v804 = v347;

          v496 = *(v353 + 16);
          v497 = v727;
          v498 = v819;
          sub_1CF68DDB0(v355, v350, v351, v352, v727);
          v819 = v498;
          if (v498)
          {
            goto LABEL_132;
          }

          v587 = v779;
          v588 = v782;
          v589 = (*(v779 + 48))(v497, 1, v782);
          v590 = v807;
          if (v589 == 1)
          {
            (*(v772 + 8))(v497, v756);
            v591 = v824;
            v592 = v823;
            v593 = v822;
          }

          else
          {
            v614 = sub_1CF07CD80(v588);
            (*(v587 + 8))(v497, v588);
            v591 = v824;
            v592 = v823;
            v593 = v822;
            if (v614)
            {
              v417 = v801;
              v230 = v802;
              v346 = v809;
              v347 = v804;
              goto LABEL_84;
            }
          }

          v615 = v781;
          v616 = v819;
          sub_1CF5BEE74(v781, 0, v592, v591, v593);
          v819 = v616;
          v417 = v801;
          v230 = v802;
          v347 = v804;
          if (v616)
          {
            (*(v801 + 8))(v615, v802);
            v499 = *(v806 + 8);
            v500 = v590;
            goto LABEL_133;
          }

          v346 = v809;
        }

        else
        {
          v417 = v227;
          v356 = v766;
        }

LABEL_84:
        v418 = v346;
        v419 = v346;
        v420 = v808;
        v817(v356, v418, v808);
        if ((v347)(v356, 1, v230) == 1)
        {
          (*(v417 + 8))(v781, v230);
          v421 = v419;
          v422 = *(v806 + 8);
          v422(v807, v420);
          v422(v421, v420);
          v422(v356, v420);
          goto LABEL_184;
        }

        v463 = v741;
        v805(v741, v356, v230);
        v464 = v806;
        if ((v816 & 0x100000000000) == 0)
        {
          v465 = v419;
          v466 = *(v417 + 8);
          v466(v463, v230);
          v466(v781, v230);
          v467 = *(v464 + 8);
          v468 = v808;
          v467(v807, v808);
          v467(v465, v468);
          goto LABEL_184;
        }

        v543 = &v463[*(v230 + 48)];
        v544 = v821;
        v545 = v820;
        v546 = v808;
        if ((v543[v726[15]] & 1) == 0 && *&v543[v726[19]])
        {
          *&v844 = v815;
          *(&v844 + 1) = v813;
          *&v845 = v814;
          *(&v845 + 1) = v812;
          updated = type metadata accessor for Maintenance.UpdateClosestSyncRoot();
          v548 = sub_1CF93DAB0(updated);
          v550 = sub_1CF559420(v463, v548, v549, 0x4000000);
          sub_1CF4D3BC0();
          v551 = v819;
          sub_1CF5215C0(v550);
          v819 = v551;
          if (v551)
          {

            v552 = *(v801 + 8);
            v553 = v802;
            v552(v463, v802);
            v552(v781, v553);
            v554 = *(v464 + 8);
            v554(v807, v546);
            v554(v809, v546);
            return (*(v818 + 8))(v545, v544);
          }

          v417 = v801;
        }

        v645 = *(v417 + 8);
        v646 = v802;
        v645(v463, v802);
        v645(v781, v646);
        v647 = *(v464 + 8);
        v647(v807, v546);
        v647(v809, v546);
        goto LABEL_184;
      case 7u:
        v249 = v800;
        v250 = v820;
        v182(v800, v820, v821);
        v251 = v798;
        v246 = sub_1CF9E75D8();
        v252 = swift_getTupleTypeMetadata3();
        v253 = *(v252 + 48);
        v254 = v797;
        if ((*(v797 + 48))(v249, 1, v251) == 1)
        {
          v255 = *(*(v246 - 8) + 8);
          v255(&v253[v249], v246);
          v256 = v249;
LABEL_27:
          v255(v256, v246);
          goto LABEL_184;
        }

        v860 = v253;
        v372 = *&v249[*(v252 + 64)];
        v373 = v775;
        (*(v254 + 32))(v775, v249, v251);
        if ((v372 & 2) == 0)
        {
          (*(v254 + 8))(v373, v251);
          v247 = *(*(v246 - 8) + 8);
          v248 = &v860[v249];
          goto LABEL_182;
        }

        v423 = v753;
        v424 = v819;
        (*(**(v825 + 16) + 152))(v373, v823, v824, *(v822 + 8));
        v819 = v424;
        if (v424)
        {
          goto LABEL_87;
        }

        if ((*(v811 + 48))(v423, 1, v817) == 1)
        {
          (*(v739 + 8))(v423, v740);
          v373 = v775;
          v510 = v819;
          sub_1CF5C1260(v775, 0, v823, v824, v822);
          v819 = v510;
          if (v510)
          {
LABEL_87:
            (*(v254 + 8))(v373, v251);
            (*(*(v246 - 8) + 8))(&v860[v800], v246);
            goto LABEL_88;
          }

          (*(v254 + 8))(v373, v251);
        }

        else
        {
          (*(v254 + 8))(v775, v251);
          (*(v739 + 8))(v423, v740);
        }

        v247 = *(*(v246 - 8) + 8);
        v248 = &v860[v800];
        goto LABEL_182;
      case 0xAu:
        v277 = v788;
        v278 = v820;
        v234 = v821;
        v182(v788, v820, v821);
        v279 = v817;
        v280 = swift_getAssociatedConformanceWitness();
        v273 = v816;
        v281 = swift_getAssociatedConformanceWitness();
        *&v844 = v279;
        *(&v844 + 1) = v273;
        *&v845 = v280;
        *(&v845 + 1) = v281;
        type metadata accessor for ReconciliationID();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v282 = v810;
          v283 = v765;
          (*(v810 + 32))(v765, v277, v273);
          v284 = v819;
          sub_1CF5C1260(v283, 0, v823, v824, v822);
          v819 = v284;
          if (v284)
          {
            (*(v282 + 8))(v283, v273);
LABEL_68:
            v364 = *(v818 + 8);
            v365 = v278;
            goto LABEL_69;
          }

LABEL_102:
          (*(v282 + 8))(v283, v273);
        }

        else
        {
          v380 = v811;
          v381 = v759;
          (*(v811 + 32))(v759, v277, v279);
          v382 = v819;
          sub_1CF5BEE74(v381, 0, v823, v824, v822);
          v819 = v382;
          if (v382)
          {
            (*(v380 + 8))(v381, v279);
            goto LABEL_68;
          }

          (*(v380 + 8))(v381, v279);
        }

        goto LABEL_184;
      case 0xFu:
        v285 = v784;
        v286 = v820;
        v182(v784, v820, v821);
        v287 = v817;
        v288 = swift_getAssociatedConformanceWitness();
        v289 = v816;
        v290 = swift_getAssociatedConformanceWitness();
        *&v844 = v287;
        *(&v844 + 1) = v289;
        *&v845 = v288;
        *(&v845 + 1) = v290;
        v202 = type metadata accessor for ReconciliationID();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v291 = *(&v285->isa + *(swift_getTupleTypeMetadata2() + 48));
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v247 = *(*(v202 - 8) + 8);
          v248 = v285;
          goto LABEL_51;
        }

        v384 = v811;
        v385 = v758;
        (*(v811 + 32))(v758, v285, v287);
        v386 = v291;
        v387 = v819;
        sub_1CF5BBF10(v385, 0, v291, v823, v824, *(v822 + 8));
        v819 = v387;
        if (v387)
        {
          (*(v384 + 8))(v385, v287);

          v364 = *(v818 + 8);
          v365 = v286;
          goto LABEL_185;
        }

        (*(v384 + 8))(v385, v287);

        v403 = v291;
        goto LABEL_105;
      case 0x10u:
        v320 = v786;
        v182(v786, v820, v821);
        v321 = v817;
        v322 = swift_getAssociatedConformanceWitness();
        v323 = v816;
        v324 = swift_getAssociatedConformanceWitness();
        *&v844 = v321;
        *(&v844 + 1) = v323;
        *&v845 = v322;
        *(&v845 + 1) = v324;
        v202 = type metadata accessor for ReconciliationID();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v325 = swift_getTupleTypeMetadata3();
        v326 = *(&v320->isa + *(v325 + 48));
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v247 = *(*(v202 - 8) + 8);
          v248 = v320;
          goto LABEL_51;
        }

        v816 = v322;
        v809 = v325;
        v810 = v202;
        v394 = v320;
        v395 = v811;
        v396 = *(v811 + 32);
        v397 = v778;
        (v396)(v778, v394, v321);
        v398 = v326;
        v399 = v823;
        v400 = v824;
        v860 = *(v822 + 8);
        v401 = v825;
        v402 = v819;
        sub_1CF5BBF10(v397, 1, v326, v823, v824, v860);
        v819 = v402;
        if (v402)
        {
          (*(v395 + 8))(v397, v817);

          v403 = v326;
          goto LABEL_105;
        }

        v808 = v396;

        v458 = v746;
        v459 = v860;
        v460 = v819;
        (*(**(v401 + 32) + 288))(v397, v399, v400, v860);
        if (v460)
        {
          (*(v811 + 8))(v397, v817);

          return (*(v818 + 8))(v820, v821);
        }

        v539 = v459;
        v807 = v326;
        v540 = v817;
        if ((*(v811 + 48))(v458, 1, v817) == 1)
        {
          (*(v739 + 8))(v458, v740);
          v541 = v821;
          v542 = v823;
        }

        else
        {
          v599 = v719;
          (v808)(v719, v458, v540);
          v600 = *(*(v816 + 40) + 8);
          v601 = sub_1CF9E6868();
          v542 = v823;
          if ((v601 & 1) == 0)
          {
            v617 = *(v825 + 16);
            v618 = v715;
            sub_1CF68DDB0(v599, v823, v824, v539, v715);
            v541 = v821;
            v650 = v779;
            v651 = v782;
            if ((*(v779 + 48))(v618, 1, v782) == 1)
            {
              (*(v811 + 8))(v719, v817);
              (*(v772 + 8))(v618, v756);
            }

            else
            {
              v682 = v711;
              (*(v650 + 32))(v711, v618, v651);
              v683 = v650;
              if (v682[v752[11]] == 1)
              {
                v819 = *(v809 + 48);
                v816 = *(v809 + 64);
                v684 = v712;
                (*(v811 + 16))(v712, v719, v817);
                swift_storeEnumTagMultiPayload();
                v685 = v807;
                *(v819 + v684) = v807;
                *(v684 + v816) = 0;
                swift_storeEnumTagMultiPayload();
                v686 = v685;
                sub_1CF042D98(v684);
                (*(v818 + 8))(v684, v541);
              }

              (*(v683 + 8))(v682, v651);
              (*(v811 + 8))(v719, v817);
            }

            v602 = v815;
            v542 = v823;
            goto LABEL_205;
          }

          (*(v811 + 8))(v599, v540);
          v541 = v821;
        }

        v602 = v815;
LABEL_205:
        v603 = *(v825 + 24);
        *&v844 = v602;
        *(&v844 + 1) = v813;
        *&v845 = v814;
        *(&v845 + 1) = v812;
        v604 = type metadata accessor for Materialization.MaterializeItem();
        v605 = (*(*v603 + 328))(v778, v604, 0, v542, v824, v539);
        v819 = 0;
        if ((v605 & 1) == 0)
        {
          *&v844 = v602;
          v621 = v813;
          *(&v844 + 1) = v813;
          v622 = v814;
          *&v845 = v814;
          v623 = v812;
          *(&v845 + 1) = v812;
          type metadata accessor for ConcreteJobResult();
          v624 = sub_1CF056580();
          *&v844 = v602;
          *(&v844 + 1) = v621;
          *&v845 = v622;
          *(&v845 + 1) = v623;
          v860 = type metadata accessor for JobResult();
          type metadata accessor for ReconciliationSideMutation();
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          v626 = v714;
          v627 = &v714[*(TupleTypeMetadata2 + 48)];
          v628 = v811;
          v629 = v817;
          (*(v811 + 16))(v714, v778, v817);
          swift_storeEnumTagMultiPayload();
          v630 = sub_1CF93D7F4();
          *v627 = 1281;
          *(v627 + 1) = v630;
          *(v627 + 2) = v631;
          swift_storeEnumTagMultiPayload();
          v632 = v718;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v624, v626);
          (*(v717 + 8))(v626, v632);
          v633 = sub_1CF4D3BC0();
          v634 = v819;
          sub_1CF521850(v624, v633, v823, v824, v822);
          v819 = v634;
          if (v634)
          {
            (*(v628 + 8))(v778, v629);

            return (*(v818 + 8))(v820, v541);
          }

          (*(v628 + 8))(v778, v629);

          goto LABEL_184;
        }

        (*(v811 + 8))(v778, v817);
        v403 = v807;
LABEL_105:

        goto LABEL_184;
      case 0x11u:
        v310 = v785;
        v233 = v820;
        v234 = v821;
        v182(v785, v820, v821);
        v311 = v310[1];
        v844 = *v310;
        v845 = v311;
        v312 = v310[3];
        v846 = v310[2];
        v847 = v312;
        *&v828 = v815;
        *(&v828 + 1) = v813;
        *&v829 = v814;
        *(&v829 + 1) = v812;
        type metadata accessor for Ingestion.CollectCapturedContent();
        v313 = v310[1];
        v828 = *v310;
        v829 = v313;
        v314 = v310[3];
        v830 = v310[2];
        v831 = v314;
        v315 = sub_1CF1AE1DC(&v844, v826);
        v316 = sub_1CF93DAB0(v315);
        v318 = sub_1CF65A0B4(&v828, v316, v317, 0x4000);
        sub_1CF4D3BC0();
        v319 = v819;
        sub_1CF5215C0(v318);
        v819 = v319;
        if (!v319)
        {
          goto LABEL_78;
        }

        sub_1CF1AE25C(&v844);
        goto LABEL_57;
      case 0x13u:
        v210 = v787;
        v182(v787, v820, v821);
        v211 = v817;
        v212 = v816;
        v213 = *(swift_getTupleTypeMetadata2() + 48);
        v186 = v811;
        v187 = v804;
        (*(v811 + 32))(v804, v210, v211);
        v188 = v810;
        v189 = v795;
        (*(v810 + 32))(v795, &v210[v213], v212);
        v214 = v823;
        v215 = v824;
        v216 = v822;
        v217 = v819;
        sub_1CF5BEE74(v187, 0, v823, v824, v822);
        if (v217)
        {
LABEL_11:
          (*(v188 + 8))(v189, v816);
          (*(v186 + 8))(v187, v817);
          return (*(v818 + 8))(v820, v821);
        }

        v411 = v817;
        sub_1CF5C1260(v189, 0, v214, v215, v216);
        v819 = 0;
        (*(v810 + 8))(v189, v816);
        (*(v186 + 8))(v804, v411);
        goto LABEL_184;
      case 0x16u:
        v257 = v783;
        v258 = v820;
        v259 = v821;
        v182(v783, v820, v821);
        v260 = *v257;
        if (*v257 < 0)
        {
          v412 = v260 & 0x7FFFFFFFFFFFFFFFLL;
          v413 = v819;
          v414 = v815;
          if ((*((v260 & 0x7FFFFFFFFFFFFFFFLL) + 0x89) & 0x80) != 0)
          {
            v450 = *(v822 + 8);
            sub_1CF5A5FB0();
            v415 = v814;
            v416 = v816;
            if (v413)
            {
LABEL_99:

              return (*(v818 + 8))(v258, v259);
            }

            v819 = 0;
          }

          else
          {
            v415 = v814;
            v416 = v816;
          }

          *&v844 = v414;
          v525 = v813;
          *(&v844 + 1) = v813;
          *&v845 = v415;
          v526 = v812;
          *(&v845 + 1) = v812;
          type metadata accessor for Propagation.PropagationJob();
          v527 = swift_dynamicCastClass();
          if (v527)
          {
            v528 = v527;
            if (*(v527 + 112) == 3)
            {
              v529 = *(v527 + 96);
              v530 = v529;
            }

            else
            {
              v529 = 0;
            }

            v537 = v819;
            v538 = *(*v528 + 576);

            sub_1CF5BEE74((v528 + v538), v529, v823, v824, v822);
            v819 = v537;
            if (v537)
            {

LABEL_155:

LABEL_209:
              v364 = *(v818 + 8);
              v365 = v258;
LABEL_185:
              v383 = v821;
              return v364(v365, v383);
            }
          }

          else
          {
            *&v844 = v525;
            *(&v844 + 1) = v414;
            *&v845 = v526;
            *(&v845 + 1) = v415;
            type metadata accessor for Ingestion.FetchItemMetadata();
            v531 = swift_dynamicCastClass();
            if (v531)
            {
              v532 = v531;
              v533 = v810;
              v534 = v724;
              (*(v810 + 16))(v724, v531 + *(*v531 + 576), v416);
              if (*(v532 + 112) == 3)
              {
                v535 = *(v532 + 96);
                v536 = v535;
              }

              else
              {
                v535 = 0;
              }

              v606 = v819;
              sub_1CF5C1260(v534, v535, v823, v824, v822);
              v819 = v606;
              if (v606)
              {

                (*(v533 + 8))(v534, v416);
                goto LABEL_209;
              }

              v564 = (*(v533 + 8))(v534, v416);
            }

            else
            {
              *&v844 = v525;
              *(&v844 + 1) = v414;
              *&v845 = v526;
              *(&v845 + 1) = v415;
              type metadata accessor for Ingestion.FetchChildrenMetadata();
              v564 = swift_dynamicCastClass();
              if (v564 || (*&v844 = v525, *(&v844 + 1) = v414, *&v845 = v526, *(&v845 + 1) = v415, type metadata accessor for Ingestion.FetchContent(), (v564 = swift_dynamicCastClass()) != 0))
              {
                if (*(v564 + 112) == 3)
                {
                  v581 = *(v564 + 96);
                  v582 = *(v564 + 104);
                  v583 = *(*v564 + 576);
                  v584 = v564;
                  v585 = v581;
                  v586 = v819;
                  sub_1CF5C1260((v584 + v583), v581, v823, v824, v822);
                  v819 = v586;
                  if (v586)
                  {
                    sub_1CF03D7A8(v581, v582, 3u);

                    goto LABEL_209;
                  }

                  sub_1CF03D7A8(v581, v582, 3u);
                }
              }
            }
          }

          v653 = v736;
          v652 = v737;
          v654 = v734;
          v655 = v735;
          (*(*v412 + 528))(v564);
          if ((*(v653 + 48))(v654, 1, v652) != 1)
          {
            (*(v653 + 32))(v655, v654, v652);
            sub_1CF940280(v652, v733);
            if (*(v412 + 112) == 3)
            {
              v658 = *(v412 + 96);
              v659 = v658;
            }

            else
            {
              v658 = 0;
            }

            v660 = v733;
            sub_1CF5A296C(v733, v658);

            (*(v755 + 8))(v660, v805);
            (*(v653 + 8))(v655, v652);
            goto LABEL_184;
          }

          v657 = v722;
          v656 = v723;
LABEL_286:
          (*(v657 + 8))(v654, v656);
          goto LABEL_184;
        }

        v261 = v819;
        v262 = v815;
        if ((*(v260 + 137) & 0x80) != 0)
        {
          v263 = *(v822 + 8);
          sub_1CF5A5FB0();
          if (v261)
          {
            goto LABEL_99;
          }

          v819 = 0;
        }

        *&v844 = v262;
        v469 = v813;
        *(&v844 + 1) = v813;
        v470 = v814;
        *&v845 = v814;
        v471 = v812;
        *(&v845 + 1) = v812;
        type metadata accessor for Ingestion.FetchItemMetadata();
        v472 = swift_dynamicCastClass();
        if (v472)
        {
          v473 = v472;
          v474 = *(*v472 + 576);
          v475 = *(v811 + 16);
          v476 = v754;
          v475(v754, v472 + v474, v817);
          v477 = v260;
          if (*(v473 + 112) == 3)
          {
            v478 = *(v473 + 96);
            v479 = v478;
          }

          else
          {
            v478 = 0;
          }

          v488 = v819;
          v489 = v476;
          sub_1CF5BEE74(v476, v478, v823, v824, v822);
          v819 = v488;
          if (v488)
          {

            v247 = *(v811 + 8);
            v248 = v476;
LABEL_128:
            v343 = v817;
LABEL_183:
            v247(v248, v343);
LABEL_184:
            v364 = *(v818 + 8);
            v365 = v820;
            goto LABEL_185;
          }

          v490 = *(v811 + 8);
          v491 = v817;
          v811 += 8;
          v860 = v490;
          (v490)(v489, v817);

          v475(v751, v473 + v474, v491);
          v492 = sub_1CF03D760();
          v493 = *(v473 + 128);
          if (*(v473 + 112) == 3)
          {
            v494 = *(v473 + 96);
            v495 = v494;
          }

          else
          {
            v494 = 0;
          }

          v566 = v805;
          v260 = v477;
          v567 = v751;
          v568 = v819;
          sub_1CF5C36BC(v751, v492, v493, v494, v823, v824, v822);
          v819 = v568;
          v569 = v821;
          v570 = v820;
          v571 = v817;
          if (v568)
          {

            (v860)(v567, v571);
            return (*(v818 + 8))(v570, v569);
          }

          (v860)(v567, v571);
          goto LABEL_283;
        }

        *&v844 = v262;
        *(&v844 + 1) = v469;
        *&v845 = v470;
        *(&v845 + 1) = v471;
        type metadata accessor for Ingestion.FetchChildrenMetadata();
        v480 = swift_dynamicCastClass();
        if (v480)
        {
          v481 = v480;
          v482 = *(*v480 + 576);
          v483 = v732;
          (*(v811 + 16))(v732, v480 + v482, v817);
          v484 = sub_1CF03D760();
          v485 = *(v481 + 128);
          if (*(v481 + 112) == 3)
          {
            v486 = *(v481 + 96);
            v487 = v486;
          }

          else
          {
            v486 = 0;
          }

          v565 = v819;
          sub_1CF5C36BC(v483, v484, v485, v486, v823, v824, v822);
          v819 = v565;
          if (v565)
          {

            (*(v811 + 8))(v483, v817);
            goto LABEL_209;
          }

          (*(v811 + 8))(v483, v817);

          if (*(v481 + 112) == 3)
          {
            v577 = *(v481 + 96);
            v578 = *(v481 + 104);
            v579 = v577;
            v580 = v819;
            sub_1CF5BEE74((v481 + v482), v577, v823, v824, v822);
            v819 = v580;
            v562 = v577;
            v563 = v578;
            if (!v580)
            {
              goto LABEL_191;
            }

LABEL_166:
            sub_1CF03D7A8(v562, v563, 3u);

            goto LABEL_209;
          }

          goto LABEL_282;
        }

        *&v844 = v262;
        *(&v844 + 1) = v469;
        *&v845 = v470;
        *(&v845 + 1) = v471;
        type metadata accessor for Ingestion.FetchContent();
        v555 = swift_dynamicCastClass();
        if (v555)
        {
          if (*(v555 + 112) == 3)
          {
            v556 = *(v555 + 96);
            v557 = *(v555 + 104);
            v558 = *(*v555 + 576);
            v559 = v555;
            v560 = v556;
            v561 = v819;
            sub_1CF5BEE74((v559 + v558), v556, v823, v824, v822);
            v819 = v561;
            v562 = v556;
            v563 = v557;
            if (!v561)
            {
LABEL_191:
              sub_1CF03D7A8(v562, v563, 3u);
              goto LABEL_282;
            }

            goto LABEL_166;
          }

LABEL_282:
          v566 = v805;
LABEL_283:
          v654 = v731;
LABEL_284:
          (*(*v260 + 528))();
          v702 = v755;
          if ((*(v755 + 48))(v654, 1, v566) != 1)
          {
            (*(v702 + 32))(v730, v654, v566);
            if (*(v260 + 112) == 3)
            {
              v703 = *(v260 + 96);
              v704 = v703;
            }

            else
            {
              v703 = 0;
            }

            v705 = v730;
            sub_1CF5A296C(v730, v703);

            (*(v702 + 8))(v705, v566);
            goto LABEL_184;
          }

          v657 = v720;
          v656 = v721;
          goto LABEL_286;
        }

        *&v844 = v262;
        *(&v844 + 1) = v469;
        *&v845 = v470;
        *(&v845 + 1) = v471;
        type metadata accessor for Ingestion.MergeItems();
        v610 = swift_dynamicCastClass();
        if (v610)
        {
          v611 = v610;
          if (*(v610 + 112) == 3)
          {
            v612 = *(v610 + 96);
            v613 = v612;
          }

          else
          {
            v612 = 0;
          }

          v648 = v819;
          v649 = *(*v611 + 584);

          sub_1CF5BEE74((v611 + v649), v612, v823, v824, v822);
          v819 = v648;
          if (v648)
          {

            goto LABEL_155;
          }

LABEL_281:

          goto LABEL_282;
        }

        *&v844 = v469;
        *(&v844 + 1) = v262;
        *&v845 = v471;
        *(&v845 + 1) = v470;
        type metadata accessor for Propagation.PropagationJob();
        v638 = swift_dynamicCastClass();
        if (!v638)
        {
          *&v844 = v262;
          *(&v844 + 1) = v469;
          *&v845 = v470;
          *(&v845 + 1) = v471;
          type metadata accessor for Materialization.MaterializeItem();
          v687 = swift_dynamicCastClass();
          if (v687)
          {
            v688 = v687;
            if (*(v687 + 112) == 3)
            {
              v689 = *(v687 + 96);
              v690 = *(v687 + 104);
              v691 = *(*v687 + 576);
              v692 = v689;
              v693 = v819;
              sub_1CF5BBF10(v688 + v691, 0, v689, v823, v824, *(v822 + 8));
              v819 = v693;
              if (v693)
              {
                sub_1CF03D7A8(v689, v690, 3u);

                goto LABEL_184;
              }

              sub_1CF03D7A8(v689, v690, 3u);
            }
          }

          v566 = v805;
          v654 = v731;
          goto LABEL_284;
        }

        v639 = v638;
        v640 = *(v638 + 112);
        if (v640 != 3)
        {
          swift_retain_n();
LABEL_276:
          v699 = *(v639 + 12);
          v700 = *(v639 + 13);
          sub_1CF03C530(v699, v700, v640);

          if (v640 != 3)
          {
            sub_1CF03D7A8(v699, v700, v640);
            v699 = 0;
          }

          v701 = v819;
          sub_1CF5C1260(&v639[*(*v639 + 576)], v699, v823, v824, v822);
          v819 = v701;
          if (v701)
          {

            goto LABEL_184;
          }

          goto LABEL_281;
        }

        v642 = *(v638 + 96);
        v641 = *(v638 + 104);
        _s3__C4CodeOMa_1(0);
        *&v844 = -2008;
        swift_retain_n();
        sub_1CF03C530(v642, v641, 3u);
        sub_1CF5DFB70(&qword_1EDEA3590, _s3__C4CodeOMa_1);
        v643 = sub_1CF9E5658();
        sub_1CF03D7A8(v642, v641, 3u);
        if ((v643 & 1) == 0)
        {
          goto LABEL_275;
        }

        if ((~*(v639 + 34) & 0x1002) != 0)
        {
          goto LABEL_275;
        }

        (*(*v639 + 288))(&v844);
        if (v844 - 1 < 3 || v844)
        {
          goto LABEL_275;
        }

        v644 = v819;
        (*(**(v825 + 40) + 264))(&v844, &v639[*(*v639 + 576)], v823, v824, *(v822 + 8));
        v819 = v644;
        if (v644)
        {

          goto LABEL_184;
        }

        v826[12] = v856;
        v826[13] = v857;
        v826[14] = v858;
        v826[8] = v852;
        v826[9] = v853;
        v826[10] = v854;
        v826[11] = v855;
        v826[4] = v848;
        v826[5] = v849;
        v826[6] = v850;
        v826[7] = v851;
        v826[0] = v844;
        v826[1] = v845;
        v826[2] = v846;
        v826[3] = v847;
        v840 = v856;
        v841 = v857;
        v842 = v858;
        v836 = v852;
        v837 = v853;
        v838 = v854;
        v839 = v855;
        v832 = v848;
        v833 = v849;
        v834 = v850;
        v835 = v851;
        v828 = v844;
        v829 = v845;
        v827 = v859;
        v843 = v859;
        v830 = v846;
        v831 = v847;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v828) == 1)
        {
          goto LABEL_275;
        }

        v706 = *(v825 + 80);
        if ((v706 & 0x20000) != 0)
        {
          v707 = 3;
        }

        else
        {
          v707 = 1;
        }

        if ((v706 & 0x200) != 0)
        {
          v708 = v707;
        }

        else
        {
          v708 = (v706 & 0x20000uLL) >> 16;
        }

        v709 = sub_1CEFF8538(v841, *(&v841 + 1), 0, v708, 0, 0);
        sub_1CEFCCC44(v826, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        if (v709 <= 501)
        {
          if (v709 != 1 && v709 != 2)
          {
            goto LABEL_275;
          }
        }

        else if (v709 != 1003 && v709 != 1000 && v709 != 502)
        {
LABEL_275:
          v640 = v639[112];
          goto LABEL_276;
        }

        goto LABEL_282;
      case 0x1Cu:
        v232 = v789;
        v233 = v820;
        v234 = v821;
        v182(v789, v820, v821);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v235 = v768;
          v236 = v776;
          v237 = v770;
          (*(v768 + 32))(v776, v232, v770);
          v238 = v825;
          v239 = (v825 + qword_1EDEBBC28);
          os_unfair_lock_lock((v825 + qword_1EDEBBC28));
          v240 = v819;
          sub_1CF5C4484(&v239[2], v236, v238, v823, v824, v822, &v844);
          if (v240)
          {
            os_unfair_lock_unlock(v239);
            (*(v235 + 8))(v236, v237);
            return (*(v818 + 8))(v233, v234);
          }

          v819 = 0;
          os_unfair_lock_unlock(v239);
          v426 = *(v235 + 16);
          v427 = v748;
          v426(v748, v236, v237);
          if (swift_getEnumCaseMultiPayload() == 6)
          {
            v428 = sub_1CF9E75D8();
            v429 = v427;
            v430 = v816;
            v431 = swift_getTupleTypeMetadata2();
            (*(*(v428 - 8) + 8))(&v429[*(v431 + 48)], v428);
            v432 = v429;
            v433 = v776;
            (*(v810 + 8))(v432, v430);
            v434 = v750;
            v426(v750, v433, v237);
            v435 = v805;
            swift_storeEnumTagMultiPayload();
            sub_1CF5A296C(v434, 0);
            (*(v755 + 8))(v434, v435);
            (*(v235 + 8))(v433, v237);
          }

          else
          {
            v502 = *(v235 + 8);
            v502(v427, v237);
            v502(v236, v237);
          }

          goto LABEL_184;
        }

        v357 = v769;
        v358 = v767;
        v359 = v771;
        (*(v769 + 32))(v767, v232, v771);
        v360 = v825;
        v361 = (v825 + qword_1EDEBBC20);
        os_unfair_lock_lock((v825 + qword_1EDEBBC20));
        v362 = v819;
        sub_1CF5C43DC(&v361[2], v358, v360, v823, v824, v822);
        v819 = v362;
        if (!v362)
        {
          v436 = v357;
          v437 = v817;
          v438 = *(swift_getAssociatedConformanceWitness() + 40);
          sub_1CF9E7068();
          sub_1CF9E6708();
          os_unfair_lock_unlock(v361);
          v439 = *(v357 + 16);
          v440 = v747;
          v439(v747, v358, v359);
          if (swift_getEnumCaseMultiPayload() == 6)
          {
            v441 = sub_1CF9E75D8();
            v860 = v439;
            v442 = v441;
            v443 = swift_getTupleTypeMetadata2();
            (*(*(v442 - 8) + 8))(&v440[*(v443 + 48)], v442);
            (*(v811 + 8))(v440, v437);
            v444 = v750;
            (v860)(v750, v358, v359);
            v445 = v805;
            swift_storeEnumTagMultiPayload();
            sub_1CF5A296C(v444, 0);
            (*(v755 + 8))(v444, v445);
            (*(v436 + 8))(v358, v359);
          }

          else
          {
            v503 = *(v436 + 8);
            v503(v358, v359);
            v503(v440, v359);
          }

          goto LABEL_184;
        }

        v363 = *(swift_getAssociatedConformanceWitness() + 40);
        sub_1CF9E7068();
        sub_1CF9E6708();
        os_unfair_lock_unlock(v361);
        (*(v357 + 8))(v358, v359);
LABEL_57:
        v364 = *(v818 + 8);
        v365 = v233;
LABEL_69:
        v383 = v234;
        return v364(v365, v383);
      case 0x1Fu:
        v195 = v791;
        v182(v791, v820, v821);
        v196 = v817;
        v197 = swift_getAssociatedConformanceWitness();
        v198 = v812;
        v199 = v813;
        v200 = v816;
        v201 = swift_getAssociatedConformanceWitness();
        *&v844 = v196;
        *(&v844 + 1) = v200;
        *&v845 = v197;
        *(&v845 + 1) = v201;
        v202 = type metadata accessor for ReconciliationID();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          goto LABEL_50;
        }

        v203 = v811;
        v204 = v761;
        (*(v811 + 32))(v761, v195, v196);
        *&v844 = v815;
        *(&v844 + 1) = v199;
        *&v845 = v814;
        *(&v845 + 1) = v198;
        v205 = type metadata accessor for Maintenance.IgnoreChildrenOfIgnoredHierarchy();
        v206 = sub_1CF93DAB0(v205);
        v208 = sub_1CF559420(v204, v206, v207, 0);
        sub_1CF4D3BC0();
        v209 = v819;
        sub_1CF5215C0(v208);
        v819 = v209;
        (*(v203 + 8))(v204, v196);
        goto LABEL_9;
      case 0x20u:
        v292 = v799;
        v182(v799, v820, v821);
        v293 = v817;
        v294 = swift_getAssociatedConformanceWitness();
        v295 = v816;
        v296 = swift_getAssociatedConformanceWitness();
        *&v844 = v293;
        *(&v844 + 1) = v295;
        *&v845 = v294;
        *(&v845 + 1) = v296;
        v246 = type metadata accessor for ReconciliationID();
        v297 = *(swift_getTupleTypeMetadata2() + 48);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v298 = *(*(v246 - 8) + 8);
          v298(&v297[v292], v246);
          v298(v292, v246);
          goto LABEL_184;
        }

        v860 = v297;
        v388 = v811;
        v389 = v780;
        (*(v811 + 32))(v780, v292, v293);
        v390 = *(v825 + 16);
        v391 = *(v822 + 8);
        v392 = v774;
        v393 = v819;
        sub_1CF68DDB0(v389, v823, v824, v391, v774);
        v819 = v393;
        if (v393)
        {
          (*(v388 + 8))(v389, v293);
          v247 = *(*(v246 - 8) + 8);
          v248 = &v860[v292];
          goto LABEL_182;
        }

        v822 = v391;
        v451 = v772;
        v452 = v745;
        v453 = v756;
        (*(v772 + 16))(v745, v392, v756);
        v454 = v779;
        v455 = v782;
        if ((*(v779 + 48))(v452, 1, v782) == 1)
        {
          (*(v451 + 8))(v452, v453);
        }

        else
        {
          v512 = v728;
          v511 = v729;
          v513 = v752;
          (*(v729 + 16))(v728, v452, v752);
          (*(v454 + 8))(v452, v455);
          v514 = *&v512[v513[9]];
          v515 = v512;
          v453 = v756;
          (*(v511 + 8))(v515, v513);
          v392 = v774;
          if ((v514 & 1) == 0)
          {
            v521 = v772;
            v518 = v780;
            v520 = v799;
LABEL_181:
            (*(v521 + 8))(v392, v453);
            (*(v811 + 8))(v518, v293);
            v247 = *(*(v246 - 8) + 8);
            v248 = &v860[v520];
LABEL_182:
            v343 = v246;
            goto LABEL_183;
          }
        }

        sub_1CF4810BC();
        v516 = swift_allocError();
        *v517 = 2;
        v518 = v780;
        v519 = v819;
        sub_1CF5BBF10(v780, 5, v516, v823, v824, v822);
        v819 = v519;
        v520 = v799;

        v521 = v772;
        goto LABEL_181;
      case 0x29u:
        v195 = v793;
        v250 = v820;
        v182(v793, v820, v821);
        v299 = v817;
        v300 = swift_getAssociatedConformanceWitness();
        v301 = v813;
        v302 = v816;
        v303 = swift_getAssociatedConformanceWitness();
        *&v844 = v299;
        *(&v844 + 1) = v302;
        *&v845 = v300;
        *(&v845 + 1) = v303;
        v202 = type metadata accessor for ReconciliationID();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          goto LABEL_50;
        }

        v304 = v811;
        v305 = v773;
        (*(v811 + 32))(v773, v195, v299);
        v306 = v825;
        v307 = *(v825 + 16);
        v308 = v764;
        v309 = v819;
        sub_1CF68DDB0(v305, v823, v824, *(v822 + 8), v764);
        v819 = v309;
        if (v309)
        {
          goto LABEL_39;
        }

        v456 = v308;
        v457 = v779;
        if ((*(v779 + 48))(v456, 1, v782) == 1)
        {
          (*(v304 + 8))(v305, v299);
          v247 = *(v772 + 8);
          v248 = v456;
LABEL_110:
          v343 = v756;
          goto LABEL_183;
        }

        v522 = v738;
        v523 = v456;
        v524 = v782;
        (*(v457 + 32))(v738, v523, v782);
        if (*&v522[v752[9]])
        {
          (*(v457 + 8))(v522, v524);
          (*(v304 + 8))(v773, v299);
          goto LABEL_184;
        }

        *&v844 = v815;
        *(&v844 + 1) = v301;
        *&v845 = v814;
        *(&v845 + 1) = v812;
        ItemMetadata = type metadata accessor for Ingestion.FetchItemMetadata();
        v595 = sub_1CF93DAB0(ItemMetadata);
        v305 = v773;
        v597 = sub_1CF656F5C(v773, v595, v596, 0x80000000000);
        sub_1CF052548(0x2000000);
        sub_1CF4D3BC0();
        v598 = v819;
        sub_1CF5215C0(v597);
        v819 = v598;
        if (!v598)
        {
          v619 = *(**(*(v306 + 32) + 16) + 920);

          v619(v620);

          (*(v779 + 8))(v738, v782);
          (*(v304 + 8))(v305, v299);
          goto LABEL_184;
        }

        (*(v779 + 8))(v738, v782);
LABEL_39:
        (*(v304 + 8))(v305, v299);
LABEL_88:
        v364 = *(v818 + 8);
        v365 = v250;
        goto LABEL_185;
      case 0x2Bu:
        v195 = v792;
        v182(v792, v820, v821);
        v334 = v817;
        v335 = swift_getAssociatedConformanceWitness();
        v336 = v812;
        v337 = v813;
        v338 = v816;
        v339 = swift_getAssociatedConformanceWitness();
        *&v828 = v334;
        *(&v828 + 1) = v338;
        *&v829 = v335;
        *(&v829 + 1) = v339;
        v202 = type metadata accessor for ReconciliationID();
        v340 = &v195[*(swift_getTupleTypeMetadata2() + 48)];
        v341 = *(v340 + 1);
        v844 = *v340;
        v845 = v341;
        v342 = *(v340 + 2);
        v847 = *(v340 + 3);
        v846 = v342;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1CF1AE25C(&v844);
LABEL_50:
          v247 = *(*(v202 - 8) + 8);
          v248 = v195;
LABEL_51:
          v343 = v202;
          goto LABEL_183;
        }

        v404 = v811;
        v405 = v763;
        (*(v811 + 32))(v763, v195, v334);
        *&v828 = v815;
        *(&v828 + 1) = v337;
        *&v829 = v814;
        *(&v829 + 1) = v336;
        type metadata accessor for Ingestion.UnlinkOldVersion();
        v828 = v844;
        v829 = v845;
        v830 = v846;
        v831 = v847;
        v406 = sub_1CF1AE1DC(&v844, v826);
        v407 = sub_1CF93DAB0(v406);
        v409 = sub_1CF611894(&v828, v407, v408, 0x4000);
        sub_1CF4D3BC0();
        v410 = v819;
        sub_1CF5215C0(v409);
        v819 = v410;
        if (v410)
        {
          (*(v404 + 8))(v405, v334);
        }

        else
        {

          *&v828 = v815;
          *(&v828 + 1) = v337;
          *&v829 = v814;
          *(&v829 + 1) = v336;
          type metadata accessor for SQLDatabase();
          if (!swift_dynamicCastClass())
          {
            (*(v404 + 8))(v405, v334);
            goto LABEL_79;
          }

          v461 = *(sub_1CF478C28() + 32);

          v462 = v819;
          sub_1CF348CFC(v405, 128, v823, v824, v822);
          v819 = v462;
          if (!v462)
          {
            (*(v404 + 8))(v405, v334);
            sub_1CF1AE25C(&v844);

LABEL_9:

            goto LABEL_184;
          }

          (*(v404 + 8))(v405, v334);
        }

LABEL_78:

LABEL_79:
        sub_1CF1AE25C(&v844);
        goto LABEL_184;
      case 0x2Du:
        v327 = qword_1EDEBBD00;
        v328 = v825;
        swift_beginAccess();
        v329 = *(v328 + v327);
        *(v328 + v327) = MEMORY[0x1E69E7CC0];
        v330 = *(v329 + 16);
        if (v330)
        {
          v331 = (v329 + 40);
          do
          {
            v333 = *(v331 - 1);
            v332 = *v331;
            *&v828 = 0;

            v333(&v828);

            v331 += 2;
            --v330;
          }

          while (v330);
        }

        goto LABEL_184;
      default:
        goto LABEL_184;
    }
  }

  return result;
}