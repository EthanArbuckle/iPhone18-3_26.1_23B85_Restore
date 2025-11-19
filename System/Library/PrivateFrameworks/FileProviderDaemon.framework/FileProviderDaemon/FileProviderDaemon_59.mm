uint64_t sub_1CF63BC0C(void *a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t, uint64_t), uint64_t a5, _OWORD *a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LODWORD(v74) = a8;
  v73 = a7;
  v85 = a5;
  v78 = a4;
  v83 = a3;
  v87 = a2;
  v81 = a1;
  v82 = a11;
  v79 = *v11;
  v13 = *(v79 + 616);
  v75 = *(v79 + 600);
  v14 = v11;
  v84 = a9;
  v80 = a10;
  v76 = v13;
  *&v96 = swift_getAssociatedTypeWitness();
  *(&v96 + 1) = swift_getAssociatedTypeWitness();
  *&v97 = swift_getAssociatedConformanceWitness();
  *(&v97 + 1) = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for FileItemVersion();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v86 = *(TupleTypeMetadata3 - 8);
  v17 = v86;
  v18 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v69 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v64 - v23);
  v25 = *v78;
  v26 = a6[1];
  v93[0] = *a6;
  v93[1] = v26;
  v27 = a6[3];
  v94 = a6[2];
  v28 = v94;
  v95 = v27;
  *v24 = v93[0];
  v24[1] = v26;
  v24[2] = v28;
  v24[3] = v27;
  v29 = &v64 - v23;
  v31 = *(v30 + 48);
  v77 = v15;
  v78 = *(v15 - 8);
  v78[2](&v64 + v31 - v23, v73, v15);
  v32 = v29;
  v29[*(TupleTypeMetadata3 + 64)] = v74;
  v33 = v87;
  v66 = *(*(v87 + 32) + 16);
  v67 = v14;
  v74 = *(*v14 + 576);
  v92 = v25;
  v34 = *(v17 + 16);
  v35 = v32;
  v71 = v32;
  v34(v21);
  v72 = *(TupleTypeMetadata3 + 48);
  v36 = *(TupleTypeMetadata3 + 64);
  v65 = TupleTypeMetadata3;
  v70 = v21;
  LODWORD(v73) = v21[v36];
  v37 = *(v21 + 1);
  v88 = *v21;
  v89 = v37;
  v38 = *(v21 + 3);
  v90 = *(v21 + 2);
  v91 = v38;
  v39 = *(*v33 + 272);
  sub_1CF1AE1DC(v93, &v96);

  v68 = v39(v40);
  v41 = v69;
  (v34)(v69, v35, TupleTypeMetadata3);
  v42 = v86;
  v43 = (*(v86 + 80) + 48) & ~*(v86 + 80);
  v44 = (v18 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v49 = v79;
  *(v48 + 2) = v75;
  v50 = v67;
  *(v48 + 3) = *(v49 + 608);
  *(v48 + 4) = v76;
  *(v48 + 5) = *(v49 + 624);
  v51 = *(v42 + 32);
  v52 = v65;
  v51(&v48[v43], v41, v65);
  v53 = v66;
  *&v48[v44] = v87;
  v54 = v81;
  *&v48[v45] = v81;
  *&v48[v46] = v50;
  *&v48[v47] = v83;
  v55 = &v48[(v47 + 15) & 0xFFFFFFFFFFFFFFF8];
  v56 = v82;
  *v55 = v80;
  v55[1] = v56;
  v57 = *(*v53 + 608);
  v58 = v54;

  v59 = v50 + v74;
  v60 = v72;
  v61 = v70;
  v62 = v68;
  v57(v59, &v92, v85, &v88, &v70[v72], v73, v68, v54, v84, sub_1CF659424, v48);

  v96 = v88;
  v97 = v89;
  v98 = v90;
  v99 = v91;
  sub_1CF1AE25C(&v96);
  (*(v86 + 8))(v71, v52);
  return (v78[1])(&v61[v60], v77);
}

uint64_t sub_1CF63C2C0(uint64_t a1, void *a2, void *a3, void (*a4)(char *, char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v144 = a8;
  v145 = a5;
  v146 = a6;
  v147 = a7;
  v129 = a4;
  v148 = a2;
  v149 = a1;
  v124 = *a3;
  v9 = v124;
  v10 = *(v124 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_1CF9E75D8();
  v143 = *(v11 - 8);
  v12 = v143[8];
  MEMORY[0x1EEE9AC00](v11);
  v131 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v128 = &v121 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v142 = &v121 - v17;
  v150 = a3;
  v18 = *(v9 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  *&v161 = AssociatedTypeWitness;
  *(&v161 + 1) = v20;
  *&v162 = AssociatedConformanceWitness;
  *(&v162 + 1) = v22;
  v23 = type metadata accessor for FileItemVersion();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v132 = *(TupleTypeMetadata3 - 8);
  v25 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v26 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v126 = &v121 - v28;
  v137 = v23;
  v29 = sub_1CF9E75D8();
  v139 = *(v29 - 8);
  v140 = v29;
  v30 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v138 = &v121 - v31;
  v133 = v10;
  v134 = swift_getTupleTypeMetadata2();
  v32 = sub_1CF9E75D8();
  v135 = *(v32 - 8);
  v136 = v32;
  v33 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v130 = &v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v127 = &v121 - v36;
  v125 = sub_1CF9E5E58();
  v123 = *(v125 - 8);
  v37 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v39 = &v121 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v40 = sub_1CF9E8238();
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = (&v121 - v43);
  (*(v45 + 16))(&v121 - v43, v149, v40, v42);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v149 = TupleTypeMetadata3;
  if (EnumCaseMultiPayload != 1)
  {
    v53 = v142;
    v52 = v143;
    v54 = (v143[4])(v142, v44, v11);
    v55 = v148;
    v56 = TupleTypeMetadata2;
    if (*v148)
    {
      v57 = *(*(v150[5] + 16) + 136);
      *(v148 + *(v149 + 64));
      MEMORY[0x1EEE9AC00](v54);

      sub_1CEFE1894(sub_1CF2AF9F4);
      *(v57 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
      if (*(v57 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
      {
        v58 = *(v57 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        MEMORY[0x1D3869790](1, ObjectType);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v55 = v148;
    }

    v62 = v128;
    v129 = v52[2];
    v125 = (v52 + 2);
    v129(v128, v53, v11);
    v63 = *(v56 - 8);
    v64 = *(v63 + 48);
    v126 = (v63 + 48);
    v127 = v64;
    v65 = (v64)(v62, 1, v56);
    v122 = v11;
    if (v65 == 1)
    {
      (v52[1])(v62, v11);
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v148 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0xB000000000000000;
    }

    else
    {
      v73 = v56;
      v66 = *v62;
      v67 = *(v62 + 1);
      v74 = v62;
      v68 = *(v62 + 2);
      v72 = *(v62 + 3);
      v69 = *(v62 + 5);
      v148 = *(v62 + 4);
      v70 = *(v62 + 6);
      v71 = *(v74 + 7);
      (*(*(v133 - 8) + 8))(&v74[*(v73 + 48)]);
    }

    (*(v132 + 16))(v26, v55, v149);
    v75 = *v26;
    v76 = *(v26 + 3);
    v173 = *(v26 + 2);
    v77 = *(v26 + 3);
    v170 = *(v26 + 2);
    v171 = v77;
    v172 = v75;
    if (v72 >> 60 == 11)
    {
      if (v76 >> 60 == 11)
      {
        *&v161 = v66;
        *(&v161 + 1) = v67;
        *&v162 = v68;
        *(&v162 + 1) = v72;
        *&v163 = v148;
        *(&v163 + 1) = v69;
        *&v164 = v70;
        *(&v164 + 1) = v71;
        sub_1CEFCCC44(&v161, &unk_1EC4BF260, &unk_1CFA01B60);
        v78 = 1;
LABEL_22:
        v82 = v137;
        v83 = *(v137 - 8);
        (*(v83 + 8))(&v26[*(v149 + 48)], v137);
        v84 = v131;
        v85 = v142;
        v86 = v122;
        v129(v131, v142, v122);
        v87 = TupleTypeMetadata2;
        v88 = (v127)(v84, 1, TupleTypeMetadata2);
        v89 = v134;
        v90 = v143;
        if (v88 == 1)
        {
          (v143[1])(v84, v86);
          v91 = 1;
          v92 = v130;
        }

        else
        {
          v93 = *(v87 + 48);
          v94 = *(v134 + 48);
          v95 = *(v84 + 1);
          v92 = v130;
          *v130 = *v84;
          *(v92 + 1) = v95;
          v96 = *(v84 + 3);
          *(v92 + 2) = *(v84 + 2);
          *(v92 + 3) = v96;
          (*(*(v133 - 8) + 32))(&v92[v94], &v84[v93]);
          v91 = 0;
        }

        (*(*(v89 - 8) + 56))(v92, v91, 1, v89);
        v97 = v138;
        (*(v83 + 56))(v138, 1, 1, v82);
        sub_1CF6333DC(v92, 0, v78 & 1, 0, v97, 0, v150, v146, *(v145 + 136), v147, v144);
        (*(v139 + 8))(v97, v140);
        (*(v135 + 8))(v92, v136);
        return (v90[1])(v85, v86);
      }
    }

    else
    {
      *&v161 = v66;
      *(&v161 + 1) = v67;
      *&v162 = v68;
      *(&v162 + 1) = v72;
      *&v163 = v148;
      *(&v163 + 1) = v69;
      *&v164 = v70;
      *(&v164 + 1) = v71;
      v157 = v161;
      v158 = v162;
      v159 = v163;
      v160 = v164;
      if (v76 >> 60 != 11)
      {
        v153 = *v26;
        v79 = *(v26 + 2);
        v80 = *(v26 + 3);
        v155 = *(v26 + 2);
        v156 = v80;
        *&v154 = v79;
        *(&v154 + 1) = v76;
        sub_1CEFCCBDC(&v161, v152, &unk_1EC4BF260, &unk_1CFA01B60);
        v81 = v66;
        v78 = _s18FileProviderDaemon15CapturedContentV2eeoiySbAC_ACtFZ_0(&v157, &v153);
        v151[0] = v153;
        v151[1] = v154;
        v151[2] = v155;
        v151[3] = v156;
        sub_1CF1AE25C(v151);
        v152[0] = v157;
        v152[1] = v158;
        v152[2] = v159;
        v152[3] = v160;
        sub_1CF1AE25C(v152);
        *&v153 = v81;
        *(&v153 + 1) = v67;
        *&v154 = v68;
        *(&v154 + 1) = v72;
        *&v155 = v148;
        *(&v155 + 1) = v69;
        *&v156 = v70;
        *(&v156 + 1) = v71;
        sub_1CEFCCC44(&v153, &unk_1EC4BF260, &unk_1CFA01B60);
        goto LABEL_22;
      }

      v153 = v161;
      v154 = v162;
      v155 = v163;
      v156 = v164;
      sub_1CEFCCBDC(&v161, v152, &unk_1EC4BF260, &unk_1CFA01B60);
      sub_1CF1AE25C(&v153);
    }

    *&v161 = v66;
    *(&v161 + 1) = v67;
    *&v162 = v68;
    *(&v162 + 1) = v72;
    *&v163 = v148;
    *(&v163 + 1) = v69;
    *&v164 = v70;
    *(&v164 + 1) = v71;
    v165 = v172;
    v166 = v173;
    v167 = v76;
    v168 = v170;
    v169 = v171;
    sub_1CEFCCC44(&v161, &qword_1EC4BFC68, &unk_1CFA053B8);
    v78 = 0;
    goto LABEL_22;
  }

  v47 = *v44;
  v48 = v148;
  v49 = TupleTypeMetadata3;
  if ((*(v148 + *(TupleTypeMetadata3 + 64)) & 1) == 0 && *v148)
  {
    v50 = v148;
    v143 = &v121;
    v51 = *(*(v150[5] + 16) + 136);
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);

    sub_1CEFE1894(sub_1CF2B9F78);
    *(v51 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v51 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      v60 = *(v51 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
      v61 = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, v61);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v49 = v149;
    v48 = v50;
  }

  v99 = v129;
  if (v129)
  {
    v100 = v48;
    v101 = v129;
    if ([v101 requestedExtent] != -1)
    {
      [v101 setSelectedForMaterialization_];
    }

    v48 = v100;
  }

  *&v161 = v47;
  v102 = v47;
  type metadata accessor for NSFileProviderError(0);
  if (swift_dynamicCast())
  {

LABEL_36:
    v105 = v127;
    (*(*(v134 - 8) + 56))(v127, 1, 1);
    v106 = v138;
    (*(*(v137 - 8) + 56))(v138, 1, 1);
    v107 = *(v145 + 136);
    v108 = v47;
    sub_1CF6333DC(v105, 0, 0, v47, v106, 0, v150, v146, v107, v147, v144);

    (*(v139 + 8))(v106, v140);
    return (*(v135 + 8))(v105, v136);
  }

  *&v161 = v47;
  v103 = v47;
  v104 = v125;
  if (swift_dynamicCast())
  {
    (*(v123 + 8))(v39, v104);
    goto LABEL_36;
  }

  v109 = swift_allocObject();
  v149 = v109;
  v110 = v144;
  *(v109 + 16) = v147;
  *(v109 + 24) = v110;
  v111 = v132;
  (*(v132 + 16))(v126, v48, v49);
  v112 = (*(v111 + 80) + 80) & ~*(v111 + 80);
  v113 = (v25 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
  v114 = swift_allocObject();
  *(v114 + 2) = v133;
  v115 = v124;
  *(v114 + 3) = *(v124 + 88);
  *(v114 + 4) = v18;
  v116 = v145;
  *(v114 + 5) = *(v115 + 104);
  *(v114 + 6) = v116;
  v117 = v150;
  *(v114 + 7) = v99;
  *(v114 + 8) = v117;
  *(v114 + 9) = v146;
  (*(v111 + 32))(&v114[v112], v126, v49);
  v118 = &v114[v113];
  *v118 = v147;
  *(v118 + 1) = v110;
  v119 = type metadata accessor for Continuation();
  swift_retain_n();
  v120 = v99;

  sub_1CF92E6B4("provideFileFromProvider(for:db:result:kind:expectedFileSize:existingFile:lookupOptions:completion:)", 99, 2u, sub_1CF045408, 0, sub_1CF559418, v149, sub_1CF6595D4, v114, v119, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF63D33C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a7;
  v36 = a8;
  v37 = a3;
  v38 = a5;
  v33 = a2;
  v34 = a4;
  v32 = *a2;
  v31 = *(v32 + 616);
  v10 = *(v32 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = *(TupleTypeMetadata3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v15 = &v27 - v14;
  v16 = a1[4];
  v30 = a1[3];
  v28 = v16;
  v29 = __swift_project_boxed_opaque_existential_1(a1, v30);
  (*(v12 + 16))(v15, a6, TupleTypeMetadata3);
  v17 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v32;
  *(v19 + 2) = v10;
  *(v19 + 3) = *(v20 + 608);
  *(v19 + 4) = v31;
  *(v19 + 5) = *(v20 + 624);
  (*(v12 + 32))(&v19[v17], v15, TupleTypeMetadata3);
  v22 = v34;
  v21 = v35;
  *&v19[v18] = v34;
  v23 = &v19[(v18 + 15) & 0xFFFFFFFFFFFFFFF8];
  v24 = v36;
  *v23 = v21;
  *(v23 + 1) = v24;
  v25 = *(v28 + 8);

  sub_1CF63A5FC(v37, v22, v38, v29, sub_1CF659758, v19, v30, v25);
}

uint64_t sub_1CF63D62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  v31 = a4;
  v32 = a8;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v11 = *(*a7 + 96);
  v12 = *(*a7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for FileItemVersion();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15 = *(*(TupleTypeMetadata3 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v19 = &v28 - v18;
  if (!a5)
  {
    (*(v16 + 16))(v19, a6, TupleTypeMetadata3, v17);
    sub_1CEFE48D8(*(v19 + 2), *(v19 + 3));
    v20 = v19[*(TupleTypeMetadata3 + 64)];
    v21 = (*(*(v13 - 8) + 8))(&v19[*(TupleTypeMetadata3 + 48)], v13);
    if (v20 == 1)
    {
      if (*a6)
      {
        v22 = *(*(a7[5] + 16) + 136);
        *(a6 + *(TupleTypeMetadata3 + 64));
        MEMORY[0x1EEE9AC00](v21);
        *(&v28 - 4) = v22;
        *(&v28 - 6) = v23;
        *(&v28 - 2) = v24;

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

        else
        {
        }
      }
    }
  }

  return v32(v28, v29, v30, v31, a5, v17);
}

void *sub_1CF63D978(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v219 = a7;
  v220 = a8;
  v215 = a3;
  v216 = a6;
  v214 = a5;
  v217 = a1;
  v218 = a4;
  v221 = a2;
  v9 = *v8;
  v10 = *(*v8 + 76);
  v11 = *(*v8 + 78);
  v12 = type metadata accessor for SnapshotItem();
  v13 = sub_1CF9E75D8();
  v181 = *(v13 - 8);
  v182 = v13;
  v14 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v180 = &v163 - v15;
  v183 = v12;
  v184 = *(v12 - 8);
  v16 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v175 = &v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v179 = &v163 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = sub_1CF9E75D8();
  v190 = *(v22 - 8);
  v191 = v22;
  v23 = v190[8];
  MEMORY[0x1EEE9AC00](v22);
  v189 = &v163 - v24;
  v195 = AssociatedTypeWitness;
  v194 = *(AssociatedTypeWitness - 8);
  v25 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v192 = &v163 - v27;
  v28 = swift_getAssociatedTypeWitness();
  v29 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v187 = AssociatedConformanceWitness;
  v188 = v28;
  *&v233 = v28;
  *(&v233 + 1) = v29;
  v177 = v31;
  v178 = v29;
  *&v234 = AssociatedConformanceWitness;
  *(&v234 + 1) = v31;
  v32 = type metadata accessor for FileItemVersion();
  v201 = sub_1CF9E75D8();
  v197 = *(v201 - 8);
  v33 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v176 = &v163 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v196 = &v163 - v36;
  v208 = v32;
  v200 = *(v32 - 8);
  v37 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v174 = &v163 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = v39;
  MEMORY[0x1EEE9AC00](v40);
  v193 = &v163 - v41;
  v213 = v9;
  v42 = *(v9 + 77);
  v43 = *(v9 + 75);
  v44 = swift_getAssociatedTypeWitness();
  v45 = swift_getAssociatedTypeWitness();
  v46 = swift_getAssociatedConformanceWitness();
  v47 = swift_getAssociatedConformanceWitness();
  v185 = v46;
  v186 = v44;
  *&v233 = v44;
  *(&v233 + 1) = v45;
  *&v234 = v46;
  *(&v234 + 1) = v47;
  v48 = type metadata accessor for FileItemVersion();
  v205 = sub_1CF9E75D8();
  v203 = *(v205 - 8);
  v49 = v203[8];
  MEMORY[0x1EEE9AC00](v205);
  v204 = &v163 - v50;
  v210 = v48;
  v209 = *(v48 - 8);
  v51 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v173 = &v163 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = v53;
  MEMORY[0x1EEE9AC00](v54);
  v202 = &v163 - v55;
  v206 = v43;
  v207 = v42;
  *&v56 = v43;
  v198 = v10;
  v199 = v11;
  *(&v56 + 1) = v10;
  *&v57 = v42;
  *(&v57 + 1) = v11;
  v233 = v56;
  v234 = v57;
  v58 = type metadata accessor for ItemReconciliation();
  v59 = sub_1CF9E75D8();
  v211 = *(v59 - 8);
  v212 = v59;
  v60 = *(v211 + 8);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v163 - v61;
  v63 = *(v58 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v65);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v163 - v67;
  v69 = *(v221 + 16);
  v70 = *(v213 + 72);
  sub_1CF68DDB0(v222 + v70, v218, v219, v220, v62);
  v166 = v64;
  v167 = v70;
  v213 = &v163 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = v68;
  v71 = (*(v63 + 48))(v62, 1, v58);
  v72 = v221;
  if (v71 == 1)
  {
    (*(v211 + 1))(v62, v212);
LABEL_3:
    v73 = v218;
    return sub_1CF63A5FC(v217, v72, v215, v73, v214, v216, v219, v220);
  }

  v75 = *(v63 + 32);
  v76 = v169;
  v168 = v58;
  v75(v169, v62, v58);
  v77 = type metadata accessor for ItemReconciliationHalf();
  v79 = v203;
  v78 = v204;
  v80 = v205;
  (v203[2])(v204, &v76[*(v77 + 48)], v205);
  v81 = v209;
  if ((*(v209 + 48))(v78, 1, v210) == 1)
  {
    (*(v63 + 8))(v76, v168);
    (v79[1])(v78, v80);
LABEL_9:
    v73 = v218;
    v72 = v221;
    return sub_1CF63A5FC(v217, v72, v215, v73, v214, v216, v219, v220);
  }

  v211 = v75;
  v212 = v63 + 32;
  v165 = v63;
  v82 = v202;
  v204 = *(v81 + 32);
  v205 = v81 + 32;
  (v204)(v202, v78, v210);
  v83 = v168;
  v84 = &v76[*(v168 + 52)];
  v85 = type metadata accessor for ItemReconciliationHalf();
  v87 = v196;
  v86 = v197;
  (*(v197 + 16))(v196, &v84[*(v85 + 48)], v201);
  v88 = v200;
  if ((*(v200 + 48))(v87, 1, v208) == 1)
  {
    (*(v81 + 8))(v82, v210);
    (*(v165 + 8))(v169, v83);
    (*(v86 + 8))(v87, v201);
    goto LABEL_9;
  }

  v164 = v85;
  v89 = *(v88 + 32);
  v90 = v193;
  v196 = (v88 + 32);
  v163 = v89;
  v89(v193, v87, v208);
  v91 = v189;
  v92 = v190;
  v93 = v190[2];
  v203 = v84;
  v94 = v191;
  v93(v189, v84, v191);
  v95 = v88;
  v97 = v194;
  v96 = v195;
  v98 = (*(v194 + 48))(v91, 1, v195);
  v72 = v221;
  if (v98 == 1)
  {
    (*(v95 + 8))(v90, v208);
    (*(v209 + 8))(v202, v210);
    (*(v165 + 8))(v169, v168);
    (v92[1])(v91, v94);
    goto LABEL_3;
  }

  (*(v97 + 32))(v192, v91, v96);
  v99 = *(v72 + 40);
  v100 = v185;
  v101 = *(v185 + 48);
  v191 = v99[2];

  v102 = v202;
  v103 = v101(v186, v100);
  v104 = v218;
  if (v103 & 1) != 0 || ((*(v187 + 48))(v188))
  {
    sub_1CF63A5FC(v217, v72, v215, v104, v214, v216, v219, v220);

    (*(v194 + 8))(v192, v195);
    (*(v200 + 8))(v90, v208);
    (*(v209 + 8))(v102, v210);
    return (*(v165 + 8))(v169, v168);
  }

  v105 = v180;
  v106 = v192;
  (*(*v99 + 240))(v192, 1, v104, v219, v220);
  v107 = v168;
  v109 = v183;
  v108 = v184;
  if ((*(v184 + 48))(v105, 1, v183) == 1)
  {
    (*(v181 + 8))(v105, v182);
    sub_1CF63A5FC(v217, v72, v215, v104, v214, v216, v219, v220);

    (*(v194 + 8))(v106, v195);
LABEL_17:
    (*(v200 + 8))(v193, v208);
    (*(v209 + 8))(v202, v210);
    return (*(v165 + 8))(v169, v107);
  }

  v110 = *(v108 + 32);
  v111 = v179;
  v190 = v110;
  v112 = (v110)(v179, v105, v109);
  v113 = (v203 + *(v164 + 68));
  v114 = v113[1];
  v233 = *v113;
  v234 = v114;
  v115 = v113[3];
  v235 = v113[2];
  v236 = v115;
  if (((*(*v72 + 152))(v112) & 0x20000) == 0 || *(&v234 + 1) >> 60 == 11) && (WitnessTable = swift_getWitnessTable(), (sub_1CF937C7C(v109, WitnessTable)) || !static FileItemVersion.== infix(_:_:)(&v111[*(v109 + 40)], v193, v188, v178, v187, v177))
  {
    sub_1CF63A5FC(v217, v72, v215, v104, v214, v216, v219, v220);

    (*(v184 + 8))(v111, v109);
    (*(v194 + 8))(v192, v195);
    goto LABEL_17;
  }

  v203 = (*(*v72 + 272))();
  v117 = **(v72 + 32);
  v118 = v222;
  result = (*(v117 + 664))(&v231, v222 + v167, v104, v219, v220);
  v119 = v231;
  if (v232 == 4)
  {
    v119 = 0;
  }

  v218 = v119;
  v120 = *(&v234 + 1);
  if (*(&v234 + 1) >> 60 == 11)
  {
    if (v217)
    {
      v189 = 0;
    }

    else
    {
      v189 = (((*(v118 + 140) & 0x44) != 0) << 8);
    }

    LODWORD(v188) = v232 == 4;
    if (v169[*(v107 + 56)] != 4)
    {
      v127 = v176;
      LOBYTE(v229[0]) = v169[*(v107 + 56)];
      v128 = v111;
      v129 = &v111[*(v109 + 48)];
      v187 = *&v129[*(type metadata accessor for ItemMetadata() + 104)];
      v130 = v200;
      v131 = v109;
      v132 = *(v200 + 16);
      v133 = v127;
      v134 = v127;
      v135 = v193;
      v136 = v208;
      v132(v134, v193, v208);
      (*(v130 + 56))(v133, 0, 1, v136);
      v132(v174, v135, v136);
      v137 = v165;
      (*(v165 + 16))(v213, v169, v168);
      v138 = v184;
      (*(v184 + 16))(v175, v128, v131);
      v139 = v209;
      (*(v209 + 16))(v173, v202, v210);
      v140 = (*(v130 + 80) + 112) & ~*(v130 + 80);
      v186 = (v171 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
      v141 = (*(v137 + 80) + v186 + 8) & ~*(v137 + 80);
      v142 = (v166 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
      v143 = (*(v138 + 80) + v142 + 9) & ~*(v138 + 80);
      v144 = (v172 + *(v139 + 80) + v143) & ~*(v139 + 80);
      v185 = (v170 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
      v145 = swift_allocObject();
      v146 = v198;
      *(v145 + 2) = v206;
      *(v145 + 3) = v146;
      v148 = v207;
      v147 = v208;
      *(v145 + 4) = v219;
      *(v145 + 5) = v148;
      v149 = v220;
      v150 = v221;
      *(v145 + 6) = v199;
      *(v145 + 7) = v149;
      v151 = v214;
      v152 = v215;
      *(v145 + 8) = v150;
      *(v145 + 9) = v151;
      v153 = v217;
      v154 = v222;
      *(v145 + 10) = v216;
      *(v145 + 11) = v154;
      *(v145 + 12) = v153;
      *(v145 + 13) = v152;
      v163(&v145[v140], v174, v147);
      v155 = v191;
      *&v145[v186] = v191;
      v211(&v145[v141], v213, v168);
      v156 = &v145[v142];
      *v156 = v218;
      v156[8] = v188;
      (v190)(&v145[v143], v175, v183);
      (v204)(&v145[v144], v173, v210);
      v157 = v189;
      *&v145[v185] = v189;
      v158 = *(*v155 + 600);
      v159 = v153;

      v160 = v192;
      v161 = v176;
      v162 = v203;
      v158(v192, v229, v187, v176, v203, v153, v157, sub_1CF659094, v145);

      (*(v197 + 8))(v161, v201);
      (*(v184 + 8))(v179, v183);
      (*(v194 + 8))(v160, v195);
      (*(v200 + 8))(v193, v208);
      (*(v209 + 8))(v202, v210);
      return (*(v165 + 8))(v169, v168);
    }

    goto LABEL_37;
  }

  if (v169[*(v107 + 56)] == 4)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  v230 = v169[*(v107 + 56)];
  v121 = v184;
  v122 = v192;
  v123 = v200;
  v124 = v218;
  if (v232 == 4)
  {
    v125 = &v179[*(v109 + 48)];
    v124 = *&v125[*(type metadata accessor for ItemMetadata() + 104)];
  }

  v224 = v233;
  v225 = v234;
  v226 = v120;
  v227 = v235;
  v228 = v236;
  v229[0] = v233;
  v229[1] = v234;
  v229[2] = v235;
  v229[3] = v236;
  sub_1CF1AE1DC(v229, &v223);
  v126 = v202;
  sub_1CF63BC0C(v217, v221, v215, &v230, v124, &v224, v202, 1, 0, v214, v216);

  (*(v121 + 8))(v179, v109);
  (*(v194 + 8))(v122, v195);
  (*(v123 + 8))(v193, v208);
  (*(v209 + 8))(v126, v210);
  (*(v165 + 8))(v169, v168);
  return sub_1CEFCCC44(&v233, &unk_1EC4BF260, &unk_1CFA01B60);
}

uint64_t sub_1CF63EE60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v69 = a8;
  v77 = a6;
  v78 = a7;
  v75 = a4;
  v76 = a5;
  v74 = a3;
  v79 = a1;
  v64 = *a2;
  v17 = v64[13];
  v73 = a2;
  v18 = v64[11];
  v71 = a16;
  v72 = a17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedTypeWitness();
  *&v80 = AssociatedTypeWitness;
  *(&v80 + 1) = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v81 = AssociatedConformanceWitness;
  *(&v81 + 1) = swift_getAssociatedConformanceWitness();
  v67 = *(&v81 + 1);
  v66 = type metadata accessor for FileItemVersion();
  v65 = *(v66 - 8);
  v21 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v23 = &v64 - v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(TupleTypeMetadata2 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v70 = &v64 - v27;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v28 = sub_1CF9E8238();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v64 - v32;
  (*(v29 + 16))(&v64 - v32, v79, v28, v31);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v29 + 8))(v33, v28);
LABEL_4:
    v34 = swift_allocObject();
    v35 = v74;
    v36 = v75;
    *(v34 + 16) = v74;
    *(v34 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v72;
    v37[2] = v71;
    v37[3] = v38;
    v39 = v77;
    v37[4] = v76;
    v37[5] = v39;
    v40 = v78;
    v37[6] = v73;
    v37[7] = v40;
    v37[8] = v35;
    v37[9] = v36;
    v41 = type metadata accessor for Continuation();
    swift_retain_n();

    v42 = v39;

    sub_1CF92E6B4("provideWithExistingItem(for:db:result:with:completion:)", 55, 2u, sub_1CF045408, 0, sub_1CF559418, v34, sub_1CF65A0EC, v37, v41, MEMORY[0x1E69E6158]);
  }

  if ((*(v25 + 48))(v33, 1, TupleTypeMetadata2) == 1)
  {
    goto LABEL_4;
  }

  v44 = v70;
  (*(v25 + 32))(v70, v33, TupleTypeMetadata2);
  v45 = v44 + *(TupleTypeMetadata2 + 48);
  (*(v17 + 112))(v18, v17);
  LOBYTE(v45) = static FileItemVersion.== infix(_:_:)(v23, v69, AssociatedTypeWitness, v20, AssociatedConformanceWitness, v67);
  v46 = (*(v65 + 8))(v23, v66);
  if (v45)
  {
    v47 = v64[12];
    *&v80 = v64[10];
    *(&v80 + 1) = v18;
    *&v81 = v47;
    *(&v81 + 1) = v17;
    result = type metadata accessor for ItemReconciliation();
    if (*(a10 + *(result + 56)) == 4)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v84) = *(a10 + *(result + 56));
      if (a12)
      {
        v48 = a13 + *(type metadata accessor for SnapshotItem() + 48);
        v49 = *(v48 + *(type metadata accessor for ItemMetadata() + 104));
      }

      else
      {
        v49 = a11;
      }

      v51 = v44[1];
      v80 = *v44;
      v81 = v51;
      v52 = v44[3];
      v82 = v44[2];
      v83 = v52;
      sub_1CF63BC0C(v77, v73, v78, &v84, v49, &v80, a14, 0, a15, v74, v75);
      return (*(v25 + 8))(v44, TupleTypeMetadata2);
    }
  }

  else
  {
    if (*v44)
    {
      v50 = *(a9 + 136);
      MEMORY[0x1EEE9AC00](v46);
      sub_1CEFE1894(sub_1CF2B9F78);
      *(v50 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
      if (*(v50 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
      {
        v53 = *(v50 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        MEMORY[0x1D3869790](1, ObjectType);
        swift_unknownObjectRelease();
      }
    }

    v55 = swift_allocObject();
    v56 = v74;
    v57 = v75;
    *(v55 + 16) = v74;
    *(v55 + 24) = v57;
    v58 = swift_allocObject();
    v59 = v72;
    v58[2] = v71;
    v58[3] = v59;
    v60 = v77;
    v58[4] = v76;
    v58[5] = v60;
    v61 = v78;
    v58[6] = v73;
    v58[7] = v61;
    v58[8] = v56;
    v58[9] = v57;
    v62 = type metadata accessor for Continuation();
    swift_retain_n();

    v63 = v60;

    sub_1CF92E6B4("provideWithExistingItem(for:db:result:with:completion:)", 55, 2u, sub_1CF045408, 0, sub_1CF559418, v55, sub_1CF659CBC, v58, v62, MEMORY[0x1E69E6158]);

    return (*(v25 + 8))(v70, TupleTypeMetadata2);
  }

  return result;
}

void sub_1CF63F66C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v31 = a8;
  v32 = a3;
  v28 = a4;
  v29 = a7;
  v33 = a5;
  v34 = a6;
  v30 = a1;
  v10 = *v8;
  v11 = *(*v8 + 616);
  v12 = *(*v8 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = v10[78];
  v15 = v10[76];
  v17 = v28;
  v16 = v29;
  v35 = AssociatedTypeWitness;
  v36 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for ReconciliationID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v27 - v22;
  v24 = v30;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v27 - v22, v9 + v10[72], AssociatedTypeWitness, v21);
  swift_storeEnumTagMultiPayload();
  v25 = *(v31 + 8);
  v26 = (*(*v24 + 504))(v23, v17, v16, v25);
  (*(v19 + 8))(v23, v18);
  if (v26)
  {
    [v26 setSelectedForMaterialization_];
  }

  if (*(v24[4] + 32) == 1)
  {
    sub_1CF63D978(v26, v24, v32, v17, v33, v34, v16, v25);
  }

  else
  {
    sub_1CF63A5FC(v26, v24, v32, v17, v33, v34, v16, v25);
  }
}

uint64_t sub_1CF63F984()
{
  v0 = *sub_1CF655ED8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF63FA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = a8;
  v96 = a4;
  v97 = a7;
  v86 = a6;
  v87 = a5;
  v92 = a3;
  v85 = *v8;
  v11 = v85[76];
  v12 = v85[77];
  v13 = v85[78];
  v98 = v85[75];
  v10 = v98;
  v99 = v11;
  v100 = v12;
  v101 = v13;
  v75 = type metadata accessor for PersistenceTrigger();
  v74 = *(v75 - 8);
  v14 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v65 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = sub_1CF9E75D8();
  v71 = *(v72 - 8);
  v17 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v78 = &v65 - v18;
  v89 = *(AssociatedTypeWitness - 8);
  v19 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v65 - v21;
  v98 = v10;
  v99 = v11;
  v100 = v12;
  v101 = v13;
  v90 = type metadata accessor for ReconciliationMutation();
  v95 = *(v90 - 8);
  v22 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v24 = &v65 - v23;
  v76 = a1;
  v88 = *(a1 + 32);
  v98 = v10;
  v99 = v11;
  v100 = v12;
  v101 = v13;
  v91 = type metadata accessor for JobResult();
  v25 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v79 = v13;
  v84 = v11;
  v27 = swift_getAssociatedConformanceWitness();
  v98 = AssociatedTypeWitness;
  v99 = v25;
  v100 = AssociatedConformanceWitness;
  v101 = v27;
  type metadata accessor for ReconciliationID();
  v80 = v10;
  v81 = v12;
  v28 = type metadata accessor for ReconciliationSideMutation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = *(TupleTypeMetadata2 + 48);
  v30 = v85[72];
  v32 = v89 + 16;
  v31 = *(v89 + 16);
  v85 = AssociatedTypeWitness;
  v33 = v93;
  v83 = v31;
  v31(v24, (v93 + v30), AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v24[v29] = 0;
  swift_storeEnumTagMultiPayload();
  v34 = v90;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v92, v24);
  v35 = *(v95 + 8);
  v95 += 8;
  v35(v24, v34);
  v36 = v88;
  v37 = *(v94 + 8);
  v38 = ((*v88)[37])(v33 + v30, v96, v97, v37);
  v69 = v37;
  v67 = v32;
  v66 = v35;
  v70 = v30;
  v68 = v28;
  v40 = v84;
  v39 = v85;
  v41 = v93;
  if (v38)
  {
    v42 = v70;
    if (((*v36)[48])(v93 + v70, 1, v96, v97, v69))
    {
      v98 = v80;
      v99 = v40;
      v100 = v81;
      v101 = v79;
      type metadata accessor for Ingestion.FetchItemMetadata();
      v43 = sub_1CF657094(v41 + v42, *(v41 + 120), *(v41 + 128), 16, type metadata accessor for Ingestion.FetchItemMetadata);
      sub_1CF803A0C(v92, v43);
    }

    else
    {
      v49 = v78;
      ((*v36)[36])(v41 + v42, v96, v97, v69);
      v50 = v89;
      v51 = v39;
      if ((*(v89 + 48))(v49, 1, v39) == 1)
      {
        (*(v71 + 8))(v49, v72);
      }

      else
      {
        (*(v50 + 32))(v77, v49, v39);
        v52 = *(swift_getTupleTypeMetadata2() + 48);
        v53 = v73;
        v54 = v83;
        v83(v73, (v41 + v42), v51);
        swift_storeEnumTagMultiPayload();
        v54(&v53[v52], v77, v51);
        swift_storeEnumTagMultiPayload();
        v55 = v75;
        swift_storeEnumTagMultiPayload();
        (*(*v76 + 312))(v53);
        (*(v74 + 8))(v53, v55);
        (*(v89 + 8))(v77, v51);
      }

      v56 = v81;
      v57 = v80;
      v58 = v24;
      if ((*(v41 + 139) & 2) == 0)
      {
        v59 = *(TupleTypeMetadata2 + 48);
        v60 = v70;
        v61 = v92;
        v83(v58, (v41 + v70), v51);
        swift_storeEnumTagMultiPayload();
        *(v58 + v59) = *(v41 + 120);
        swift_storeEnumTagMultiPayload();
        v62 = v90;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v61, v58);
        v66(v58, v62);
        v98 = v57;
        v99 = v84;
        v100 = v56;
        v101 = v79;
        type metadata accessor for Ingestion.MarkParentDeleted();
        v63 = sub_1CF656F74(v41 + v60, *(v41 + 120), *(v41 + 128), *(v41 + 136), sub_1CF052464);
        sub_1CF803A0C(v61, v63);

        (*(*v88[2] + 920))(v64);
      }
    }
  }

  else
  {
    v44 = *(TupleTypeMetadata2 + 48);
    v83(v24, (v93 + v70), v85);
    swift_storeEnumTagMultiPayload();
    *&v24[v44] = *(v41 + 120);
    swift_storeEnumTagMultiPayload();
    v45 = v90;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v92, v24);
    v66(v24, v45);
  }

  v46 = v97;
  v101 = v97;
  v102 = v94;
  v47 = __swift_allocate_boxed_opaque_existential_0(&v98);
  (*(*(v46 - 8) + 16))(v47, v96, v46);
  v87(&v98, 0, 0, 0, 0);
  return sub_1CEFCCC44(&v98, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF6404F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = sub_1CF656F74(a1, a2, a3, a4, a5);
  v8 = *(v5 + 616);
  v9 = *(v5 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v7;
}

uint64_t sub_1CF640578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  result = sub_1CF6476BC();
  if (v5)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1CF6405C0(uint64_t a1, void (**a2)(char *, char *, uint64_t), uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v116 = a7;
  v117 = a4;
  v106 = a5;
  v107 = a6;
  v94 = a3;
  v97 = a2;
  v12 = *v9;
  v14 = *(*v9 + 608);
  v15 = *(*v9 + 616);
  v16 = *(*v9 + 624);
  v118 = *(*v9 + 600);
  v13 = v118;
  v119 = v14;
  v120 = v15;
  v121 = v16;
  v91 = type metadata accessor for ReconciliationMutation();
  v98 = *(v91 - 8);
  v17 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v79 - v18;
  v119 = v14;
  v93 = v14;
  v120 = v15;
  v121 = v16;
  v92 = v16;
  v19 = type metadata accessor for ItemReconciliation();
  v96 = *(v19 - 8);
  v20 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v108 = &v79 - v21;
  v22 = type metadata accessor for SnapshotItem();
  v114 = *(v22 - 8);
  v115 = v22;
  v23 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v113 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v112 = &v79 - v25;
  v109 = v13;
  v89 = v15;
  v104 = type metadata accessor for ItemReconciliationHalf();
  v86 = *(v104 - 8);
  v26 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v95 = &v79 - v27;
  v99 = v19;
  v28 = sub_1CF9E75D8();
  v88 = *(v28 - 8);
  v29 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v79 - v33;
  v35 = *(a1 + 32);
  v36 = *(a1 + 16);
  v37 = *(v12 + 576);
  v105 = a8;
  v38 = *(a8 + 8);
  sub_1CF68DDB0(&v37[v9], v117, v116, v38, &v79 - v33);
  v83 = v9;
  v84 = v37;
  v39 = v95;
  v111 = v38;
  v102 = v36;
  v103 = v31;
  v85 = v35;
  v87 = v28;
  v110 = v23;
  v40 = v96;
  v41 = *(v96 + 48);
  v42 = v99;
  v101 = v96 + 48;
  v100 = v41;
  if (v41(v34, 1, v99) == 1)
  {
    (*(v88 + 8))(v34, v87);
    v95 = 0;
  }

  else
  {
    v43 = v86;
    v44 = v104;
    (*(v86 + 16))(v39, v34, v104);
    (*(v40 + 8))(v34, v42);
    v45 = *&v39[*(v44 + 36)];
    (*(v43 + 8))(v39, v44);
    v95 = ((v45 >> 1) & 1);
  }

  v46 = v116;
  v47 = v117;
  v48 = v98;
  v49 = ((*v85)[62])(v84 + v83, v97, v117, v116, v111);
  v50 = v110;
  v51 = v49;
  v80 = v52;
  v53 = v115;
  if (sub_1CF9E6DF8())
  {
    v54 = v40;
    v55 = 0;
    v98 = v114 + 16;
    v97 = (v114 + 32);
    v86 = v54 + 32;
    v81 = (v48 + 8);
    v84 = (v54 + 8);
    v96 = v114 + 8;
    v88 += 8;
    v82 = v51;
    while (1)
    {
      v57 = v53;
      v58 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v58)
      {
        v59 = v112;
        result = (*(v114 + 16))(v112, v51 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v55, v57);
      }

      else
      {
        result = sub_1CF9E7998();
        if (v50 != 8)
        {
          goto LABEL_24;
        }

        v118 = result;
        v74 = v112;
        (*v98)(v112, &v118, v57);
        v59 = v74;
        result = swift_unknownObjectRelease();
      }

      v61 = v57;
      v62 = v55 + 1;
      v63 = v113;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      (*v97)(v113, v59, v61);
      v64 = v103;
      sub_1CF68DDB0(v63, v47, v46, v111, v103);
      if (v100(v64, 1, v42) == 1)
      {
        v53 = v115;
        (*v96)(v63, v115);
        (*v88)(v64, v87);
      }

      else
      {
        v65 = v108;
        (*v86)(v108, v64, v42);
        if ((v65[*(v104 + 36)] & 2) != 0)
        {
          v118 = v109;
          v119 = v93;
          v120 = v89;
          v121 = v92;
          v83 = type metadata accessor for JobResult();
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v67 = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v69 = swift_getAssociatedConformanceWitness();
          v118 = AssociatedTypeWitness;
          v119 = v67;
          v120 = AssociatedConformanceWitness;
          v121 = v69;
          type metadata accessor for ReconciliationID();
          v51 = v82;
          type metadata accessor for ReconciliationSideMutation();
          v70 = *(swift_getTupleTypeMetadata2() + 48);
          v71 = v90;
          (*(*(AssociatedTypeWitness - 8) + 16))(v90, v63, AssociatedTypeWitness);
          v46 = v116;
          swift_storeEnumTagMultiPayload();
          *(v71 + v70) = v95;
          v47 = v117;
          swift_storeEnumTagMultiPayload();
          v72 = v91;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v94, v71);
          v73 = v71;
          v42 = v99;
          (*v81)(v73, v72);
          (*v84)(v108, v42);
        }

        else
        {
          (*v84)(v65, v42);
        }

        v53 = v115;
        (*v96)(v63, v115);
      }

      ++v55;
      v56 = v62 == sub_1CF9E6DF8();
      v50 = v110;
      if (v56)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_18:

    v76 = v80;
    v77 = v95;
    if (v80)
    {
      v77 = 1;
    }

    if ((v77 & 1) == 0)
    {
      (*(*v85[2] + 920))(v75);
    }

    v121 = v46;
    v122 = v105;
    v78 = __swift_allocate_boxed_opaque_existential_0(&v118);
    (*(*(v46 - 8) + 16))(v78, v47, v46);

    v106(&v118, v76, 0, 0, 0);

    return sub_1CEFCCC44(&v118, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return result;
}

uint64_t sub_1CF6411C8(uint64_t a1)
{
  v1 = *(a1 + 616);
  v2 = *(a1 + 600);
  swift_getAssociatedTypeWitness();
  result = sub_1CF9E75D8();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF641298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57 = a4;
  v58 = a5;
  v53 = a1;
  v9 = *v6;
  v10 = *(*v6 + 600);
  v54 = *(*v6 + 616);
  v52 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v56 = AssociatedTypeWitness;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v49 - v23;
  v25 = *(a2 + 32);
  v26 = *(v9 + 576);
  v27 = a3;
  v28 = v25;
  v29 = v60;
  (*(*v25 + 288))(&v6[v26], v27, v57, v58, v22);
  if (!v29)
  {
    v57 = v15;
    v58 = v12;
    v60 = 0;
    if ((*(v19 + 48))(v18, 1, v56) == 1)
    {
      (*(v55 + 8))(v18, v58);
      return 0;
    }

    else
    {
      v30 = v19;
      v50 = v24;
      v51 = v19;
      v31 = *(v19 + 32);
      v32 = v24;
      v33 = v56;
      v31(v24, v18, v56);
      v49 = *(v30 + 16);
      v34 = v57;
      v49(v57, v32, v33);
      (*(v30 + 56))(v34, 0, 1, v33);
      v35 = *(*v6 + 632);
      swift_beginAccess();
      (*(v55 + 40))(&v6[v35], v34, v58);
      swift_endAccess();
      swift_beginAccess();
      sub_1CEFCCBDC((v6 + 56), v59, &unk_1EC4C1BE0, &unk_1CF9FD400);
      v58 = *(v6 + 15);
      v36 = type metadata accessor for JobLockRule();
      sub_1CF9E7FA8();
      v37 = *(*(v36 - 8) + 72);
      v38 = *(*(v36 - 8) + 80);
      swift_allocObject();
      v57 = sub_1CF9E6D68();
      v40 = v39;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v42 = *(TupleTypeMetadata3 + 48);
      v43 = *(TupleTypeMetadata3 + 64);
      v44 = &v6[v26];
      v45 = v49;
      v49(v40, v44, v33);
      v46 = &v40[v42];
      v47 = v50;
      v45(v46, v50, v33);
      v45(&v40[v43], v47, v33);
      swift_storeEnumTagMultiPayload();
      v45(&v40[v37], v47, v33);
      swift_storeEnumTagMultiPayload();
      sub_1CF045898(v57);
      v28 = sub_1CF052C94();

      sub_1CEFCCC44(v59, &unk_1EC4C1BE0, &unk_1CF9FD400);
      (*(v51 + 8))(v47, v33);
    }
  }

  return v28;
}

uint64_t sub_1CF6417CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v98 = a8;
  v99 = a7;
  v95 = a6;
  v94 = a5;
  v97 = a4;
  v85 = a3;
  v96 = a1;
  v10 = *v8;
  v11 = v10[75];
  v12 = v10[77];
  v82 = type metadata accessor for ItemReconciliationHalf();
  v81 = *(v82 - 8);
  v13 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v74 - v14;
  *&v15 = v11;
  *(&v15 + 1) = v10[76];
  *&v16 = v12;
  *(&v16 + 1) = v10[78];
  v108 = v15;
  v109 = v16;
  v17 = type metadata accessor for ItemReconciliation();
  v79 = sub_1CF9E75D8();
  v78 = *(v79 - 8);
  v18 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v84 = &v74 - v19;
  v90 = v17;
  v83 = *(v17 - 8);
  v20 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v77 = &v74 - v22;
  v23 = type metadata accessor for SnapshotItem();
  v89 = sub_1CF9E75D8();
  v88 = *(v89 - 8);
  v24 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v26 = &v74 - v25;
  v87 = *(v23 - 8);
  v27 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v86 = &v74 - v29;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = swift_getAssociatedConformanceWitness();
  *&v108 = AssociatedTypeWitness;
  *(&v108 + 1) = v31;
  *&v109 = AssociatedConformanceWitness;
  *(&v109 + 1) = v33;
  v93 = type metadata accessor for FileItemVersion();
  v92 = *(v93 - 8);
  v34 = *(v92 + 64);
  v35 = MEMORY[0x1EEE9AC00](v93);
  v91 = &v74 - v36;
  v37 = *(v96 + 32);
  v38 = v10[72];
  v39 = *(v98 + 8);
  (*(*v37 + 240))(&v9[v38], 1, v97, v99, v39, v35);
  v40 = v88;
  v41 = v89;
  v75 = v9;
  v42 = v90;
  v76 = v38;
  v43 = v87;
  if ((*(v87 + 48))(v26, 1, v23) == 1)
  {
    (*(v40 + 8))(v26, v41);
    v44 = v99;
    *(&v109 + 1) = v99;
    *&v110 = v98;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v108);
    (*(*(v44 - 8) + 16))(boxed_opaque_existential_0, v97, v44);
    v94(&v108, 0, 0, 0, 0);
    return sub_1CEFCCC44(&v108, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  else
  {
    v47 = v86;
    (*(v43 + 32))(v86, v26, v23);
    (*(v92 + 16))(v91, &v47[*(v23 + 40)], v93);
    if (sub_1CF056558())
    {
      v48 = *(v96 + 16);
      v49 = v84;
      sub_1CF68DDB0(&v75[v76], v97, v99, v39, v84);
      (*(v43 + 8))(v86, v23);
      v54 = v83;
      v55 = v42;
      v56 = (*(v83 + 48))(v49, 1, v42);
      v57 = v85;
      if (v56 == 1)
      {
        (*(v78 + 8))(v49, v79);
        v108 = 0uLL;
        *&v109 = 0;
        *(&v109 + 1) = 0xB000000000000000;
        v110 = 0u;
        v111 = 0u;
      }

      else
      {
        v58 = v77;
        (*(v54 + 32))(v77, v49, v55);
        v59 = v81;
        v60 = v80;
        v61 = v82;
        (*(v81 + 16))(v80, v58, v82);
        (*(v54 + 8))(v58, v55);
        v62 = &v60[*(v61 + 68)];
        v63 = *(v62 + 1);
        v104 = *v62;
        v105 = v63;
        v64 = *(v62 + 3);
        v106 = *(v62 + 2);
        v107 = v64;
        sub_1CEFCCBDC(&v104, &v100, &unk_1EC4BF260, &unk_1CFA01B60);
        (*(v59 + 8))(v60, v61);
        v108 = v104;
        v109 = v105;
        v110 = v106;
        v111 = v107;
      }

      v51 = v96;
      v52 = v76;
      v53 = v75;
      v50 = v57;
    }

    else
    {
      (*(v43 + 8))(v47, v23);
      v108 = 0uLL;
      *&v109 = 0;
      *(&v109 + 1) = 0xB000000000000000;
      v110 = 0u;
      v111 = 0u;
      v50 = v85;
      v51 = v96;
      v52 = v76;
      v53 = v75;
    }

    v65 = v37[2];
    v66 = *(*v51 + 272);

    v68 = v66(v67);
    v100 = v108;
    v101 = v109;
    v102 = v110;
    v103 = v111;
    v69 = swift_allocObject();
    v70 = v98;
    v69[2] = v99;
    v69[3] = v70;
    v71 = v94;
    v69[4] = v51;
    v69[5] = v71;
    v69[6] = v95;
    v69[7] = v53;
    v69[8] = v50;
    v72 = *(*v65 + 664);
    sub_1CEFCCBDC(&v108, &v104, &unk_1EC4BF260, &unk_1CFA01B60);

    v73 = v91;
    v72(&v53[v52], 1, v91, v68, &v100, sub_1CF658F28, v69);

    sub_1CEFCCC44(&v108, &unk_1EC4BF260, &unk_1CFA01B60);
    v104 = v100;
    v105 = v101;
    v106 = v102;
    v107 = v103;
    sub_1CEFCCC44(&v104, &unk_1EC4BF260, &unk_1CFA01B60);
    return (*(v92 + 8))(v73, v93);
  }
}

uint64_t sub_1CF642344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a6;
  v35 = a8;
  v32 = a7;
  v33 = a5;
  v28 = a4;
  v29 = a3;
  v12 = *a2;
  v30 = *(*a2 + 80);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  v18 = swift_allocObject();
  v31 = v18;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v14 + 16))(v17, a1, v13);
  v19 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = v30;
  *(v21 + 3) = v12[11];
  v22 = v33;
  *(v21 + 4) = v32;
  *(v21 + 5) = v12[12];
  *(v21 + 6) = v12[13];
  v23 = v34;
  *(v21 + 7) = v35;
  *(v21 + 8) = v22;
  *(v21 + 9) = v23;
  (*(v14 + 32))(&v21[v19], v17, v13);
  *&v21[v20] = a2;
  v24 = &v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8];
  v25 = v28;
  *v24 = v29;
  *(v24 + 1) = v25;
  v26 = type metadata accessor for Continuation();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559418, v31, sub_1CF658F5C, v21, v26, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF642650(void *a1, uint64_t *a2, uint64_t a3, char *a4, uint64_t *a5, void (*a6)(__int128 *, void, void, void, void *), uint64_t a7)
{
  v123 = a7;
  v124 = a6;
  v121 = a5;
  v131 = a4;
  v122 = *a2;
  v10 = v122;
  v11 = v122[77];
  v12 = v122[75];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v128 = *(AssociatedTypeWitness - 8);
  v13 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v107 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v106 - v16;
  v120 = type metadata accessor for FileTreeError();
  v109 = *(v120 - 8);
  v17 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v19 = &v106 - v18;
  v112 = type metadata accessor for SnapshotMutation();
  v111 = *(v112 - 8);
  v20 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v106 - v21;
  v116 = type metadata accessor for SnapshotItem();
  v119 = sub_1CF9E75D8();
  v118 = *(v119 - 8);
  v22 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v106 - v23;
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  swift_getTupleTypeMetadata2();
  v115 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v24 = sub_1CF9E8238();
  v140 = *(v24 - 8);
  v25 = v140[8];
  MEMORY[0x1EEE9AC00](v24);
  v139 = &v106 - v26;
  *&v27 = v12;
  v126 = v10[76];
  *(&v27 + 1) = v126;
  v28 = v10;
  v29 = v11;
  v30 = v28[78];
  *&v31 = v29;
  *(&v31 + 1) = v30;
  v134 = v31;
  v135 = v27;
  v145 = v27;
  v146 = v31;
  v32 = type metadata accessor for ReconciliationMutation();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v106 - v34;
  v36 = (a2[17] & 0xA0) == 0;
  v114 = a2[17] & 0xA0;
  v129 = a1;
  v132 = a3;
  v133 = v24;
  v137 = a2;
  v127 = v37;
  v138 = v38;
  v125 = v30;
  if (!v36)
  {
    v145 = v135;
    v146 = v134;
    v113 = type metadata accessor for JobResult();
    v39 = v19;
    v40 = v29;
    v41 = swift_getAssociatedTypeWitness();
    v42 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v44 = swift_getAssociatedConformanceWitness();
    *&v145 = v42;
    *(&v145 + 1) = v41;
    v29 = v40;
    v19 = v39;
    *&v146 = AssociatedConformanceWitness;
    *(&v146 + 1) = v44;
    type metadata accessor for ReconciliationID();
    type metadata accessor for ReconciliationSideMutation();
    v45 = &v35[*(swift_getTupleTypeMetadata2() + 48)];
    (*(v128 + 16))(v35, v137 + v122[72], v42);
    swift_storeEnumTagMultiPayload();
    *v45 = xmmword_1CF9FD920;
    v45[16] = 4;
    a1 = v129;
    a3 = v132;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(a3, v35);
    v24 = v133;
    (*(v127 + 8))(v35, v138);
  }

  v122 = v35;
  v46 = v139;
  (v140[2])(v139, v131, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = *v46;
    v147 = v47;
    v48 = v47;
    v49 = v120;
    if (swift_dynamicCast())
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        (*(v109 + 8))(v19, v49);
      }

      else
      {
        v140 = &v106;
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        v71 = v19;
        v131 = v105;
        strcpy(v105, " at originalError previousError ");
        v72 = AssociatedTypeWitness;
        *&v145 = AssociatedTypeWitness;
        v73 = swift_getAssociatedTypeWitness();
        v74 = swift_getAssociatedTypeWitness();
        v75 = swift_getAssociatedConformanceWitness();
        v76 = swift_getAssociatedConformanceWitness();
        v138 = v74;
        v139 = v73;
        v141 = v73;
        v142 = v74;
        v133 = v75;
        v143 = v75;
        v144 = v76;
        v127 = v76;
        type metadata accessor for FileItemVersion();
        *(&v145 + 1) = sub_1CF9E75D8();
        *&v146 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        *(&v146 + 1) = v146;
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v131 = TupleTypeMetadata[12];

        v78 = v128;
        v79 = *(v128 + 32);
        v80 = v108;
        v140 = v71;
        v79(v108, v71, v72);
        v81 = v137;
        v82 = *(*v137 + 576);
        v83 = v72;
        v84 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
        LOBYTE(v75) = sub_1CF9E6868();
        v85 = *(v78 + 8);
        v85(v80, v83);
        if (v75)
        {
          v86 = v81 + v82;
          v87 = v107;
          (*(v78 + 16))(v107, v86, v83);
          v88 = v81[15];
          v89 = v81[16];
          v90 = v81[17];
          v145 = v135;
          v146 = v134;
          type metadata accessor for JobResult();
          v145 = v135;
          v146 = v134;
          type metadata accessor for Ingestion.FetchItemMetadata();
          v91 = sub_1CF657094(v87, v88, v89, v90 | 0x100, type metadata accessor for Ingestion.FetchItemMetadata);
          v85(v87, AssociatedTypeWitness);
          sub_1CF803A0C(v132, v91);

          *&v145 = v139;
          *(&v145 + 1) = v138;
          *&v146 = v133;
          *(&v146 + 1) = v127;
          type metadata accessor for FileItemVersion();
          v92 = sub_1CF9E75D8();
          (*(*(v92 - 8) + 8))(&v131[v140], v92);

          a1 = v129;
LABEL_15:
          sub_1CF1A91AC(a1, &v145);
          v104 = v47;
          v124(&v145, 0, 0, 0, v47);

          return sub_1CEFCCC44(&v145, &unk_1EC4C1B30, &qword_1CFA05300);
        }

        *&v145 = v139;
        *(&v145 + 1) = v138;
        *&v146 = v133;
        *(&v146 + 1) = v127;
        type metadata accessor for FileItemVersion();
        v93 = sub_1CF9E75D8();
        (*(*(v93 - 8) + 8))(&v131[v140], v93);
        a1 = v129;
        a3 = v132;
      }
    }

    if (!v114)
    {
      v145 = v135;
      v146 = v134;
      type metadata accessor for JobResult();
      v145 = v135;
      v146 = v134;
      v94 = type metadata accessor for Ingestion.DeleteRejectedItemInTree();
      v95 = v137;
      v96 = *(*v137 + 576);
      v97 = a1;
      v98 = v137[15];
      v99 = v137[16];
      v100 = v137[17];
      v101 = *(v94 + 48);
      v102 = *(v94 + 52);
      swift_allocObject();
      v103 = sub_1CF657128(v95 + v96, v98, v99, v100);
      sub_1CF803A0C(a3, v103);
      a1 = v97;
    }

    goto LABEL_15;
  }

  v131 = v29;
  v51 = a1[3];
  v52 = a1[4];
  v53 = __swift_project_boxed_opaque_existential_1(a1, v51);
  v54 = v117;
  (*(*(v116 - 8) + 56))(v117, 1, 1);
  v55 = v137;
  v56 = *(*v137 + 576);
  v57 = v136;
  sub_1CF611904(v54, v137 + v56, 0, 0, 0, v121, v137[15], v137[16], v137[17], a3, v53, v51, v52);
  (*(v118 + 8))(v54, v119);
  if (!v57)
  {
    v145 = v135;
    v146 = v134;
    *&v135 = type metadata accessor for JobResult();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
    v58 = AssociatedTypeWitness;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v136 = 0;
    v60 = *(TupleTypeMetadata3 + 48);
    v61 = v110;
    v62 = &v110[*(TupleTypeMetadata3 + 64)];
    *&v134 = *(v128 + 16);
    (v134)(v110, v55 + v56, v58);
    *(v61 + v60) = 0;
    strcpy(v62, "item rejected");
    *(v62 + 7) = -4864;
    v63 = v112;
    swift_storeEnumTagMultiPayload();
    sub_1CF9491AC(v132, v61);
    (*(v111 + 8))(v61, v63);
    v64 = v55 + v56;
    v65 = v122;
    (v134)(v122, v64, v58);
    v66 = swift_getAssociatedTypeWitness();
    v67 = swift_getAssociatedConformanceWitness();
    v68 = swift_getAssociatedConformanceWitness();
    *&v145 = v58;
    *(&v145 + 1) = v66;
    *&v146 = v67;
    *(&v146 + 1) = v68;
    type metadata accessor for ReconciliationID();
    swift_storeEnumTagMultiPayload();
    v69 = v138;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v132, v65);
    (*(v127 + 8))(v65, v69);
    sub_1CF1A91AC(v129, &v145);
    v124(&v145, 0, 0, 0, 0);
    sub_1CEFCCC44(&v145, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return (v140[1])(v139, v133);
}

uint64_t sub_1CF643678()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 600);
  swift_getAssociatedTypeWitness();
  v4 = sub_1CF9E75D8();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v1, v4);
}

uint64_t *sub_1CF643734()
{
  v1 = *v0;
  v2 = sub_1CF059B48();
  v3 = *(*v2 + 632);
  v4 = *(v1 + 616);
  v5 = *(v1 + 600);
  swift_getAssociatedTypeWitness();
  v6 = sub_1CF9E75D8();
  (*(*(v6 - 8) + 8))(v2 + v3, v6);
  return v2;
}

uint64_t sub_1CF64383C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  result = a6(a1, a2, a3, a4, *(a5 + 8));
  if (v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1CF643884(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v46 = a5;
  v47 = a3;
  v48 = a4;
  v43 = a1;
  v8 = *v6;
  v9 = *(*v6 + 600);
  v10 = *(*v6 + 616);
  v11 = type metadata accessor for JobLockRule();
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1CF9E75D8();
  v44 = *(v16 - 8);
  v17 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - v18;
  v45 = *(AssociatedTypeWitness - 8);
  v20 = *(v45 + 64);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v41 - v23;
  v25 = *(v8 + 576);
  v26 = *(a2 + 32);
  v27 = v50;
  (*(*v26 + 288))(&v6[v25], v47, v48, *(v46 + 8), v22);
  if (!v27)
  {
    v28 = v44;
    v47 = v14;
    v48 = v11;
    v50 = 0;
    if ((*(v45 + 48))(v19, 1, AssociatedTypeWitness) == 1)
    {
      (*(v28 + 8))(v19, v16);
      return 0;
    }

    else
    {
      v29 = v45;
      v30 = v24;
      (*(v45 + 32))(v24, v19, AssociatedTypeWitness);
      swift_beginAccess();
      sub_1CEFCCBDC((v6 + 56), v49, &unk_1EC4C1BE0, &unk_1CF9FD400);
      v46 = *(v6 + 15);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v32 = *(TupleTypeMetadata3 + 48);
      v33 = *(TupleTypeMetadata3 + 64);
      v34 = *(v29 + 16);
      v35 = &v6[v25];
      v36 = v47;
      v34(v47, v35, AssociatedTypeWitness);
      v34((v36 + v32), v30, AssociatedTypeWitness);
      v37 = (v36 + v33);
      v38 = v30;
      v34(v37, v30, AssociatedTypeWitness);
      v39 = v48;
      swift_storeEnumTagMultiPayload();
      v26 = sub_1CF052B3C(v49, v46, v36);
      (*(v42 + 8))(v36, v39);
      sub_1CEFCCC44(v49, &unk_1EC4C1BE0, &unk_1CF9FD400);
      (*(v29 + 8))(v38, AssociatedTypeWitness);
    }
  }

  return v26;
}

uint64_t sub_1CF643CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(*(a1 + 32) + 16);
  v16 = *(*v8 + 576);
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a1;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = v8;
  v17[8] = a3;
  v18 = *(*v15 + 752);

  v18(v8 + v16, sub_1CF658D58, v17);
}

void sub_1CF643DF0(void *a1, NSObject *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void (*a6)(char **, void, unint64_t, unint64_t, NSObject *), uint64_t a7)
{
  v120 = a5;
  v113 = a7;
  v114 = a6;
  v122 = a4;
  v123 = a1;
  v118 = a2;
  v8 = *a3;
  v9 = *(*a3 + 616);
  v10 = *(*a3 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(v8 + 624);
  v121 = a3;
  v13 = *(v8 + 608);
  v109 = v12;
  v108 = v13;
  v128 = AssociatedTypeWitness;
  v129 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v130 = AssociatedConformanceWitness;
  v131 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ThrottlingKey();
  v107 = sub_1CF9E75D8();
  v106 = *(v107 - 8);
  v14 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v115 = &v98 - v15;
  v104 = AssociatedTypeWitness;
  v103 = *(AssociatedTypeWitness - 8);
  v16 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v101 = &v98 - v18;
  v110 = type metadata accessor for FileTreeError();
  v105 = *(v110 - 1);
  v19 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v21 = &v98 - v20;
  v116 = v9;
  v22 = type metadata accessor for SnapshotItem();
  v112 = sub_1CF9E75D8();
  v111 = *(v112 - 8);
  v23 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v100 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v98 - v26;
  v28 = *(v10 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v117 = &v98 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v35 = sub_1CF9E8238();
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = (&v98 - v38);
  (*(v40 + 16))(&v98 - v38, v118, v35, v37);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v52 = v117;
    (*(v28 + 32))(v117, v39, v10);
    v53 = v123;
    v54 = v123[3];
    v55 = v123[4];
    v118 = __swift_project_boxed_opaque_existential_1(v123, v54);
    (*(v28 + 16))(v32, v52, v10);
    sub_1CF06B77C(v32, v10, v116, v27);
    (*(*(v22 - 8) + 56))(v27, 0, 1, v22);
    v56 = v119;
    sub_1CF611904(v27, v121 + *(*v121 + 576), 3u, 0, 0, v122, v121[15], v121[16], v121[17], v120, v118, v54, v55);
    (*(v111 + 8))(v27, v112);
    if (!v56)
    {
      sub_1CF1A91AC(v53, &v128);
      v114(&v128, 0, 0, 0, 0);
      sub_1CEFCCC44(&v128, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    (*(v28 + 8))(v117, v10);
    return;
  }

  v99 = v22;
  v132 = *v39;
  v117 = v10;
  v118 = v132;
  v41 = v132;
  v42 = v110;
  v43 = swift_dynamicCast();
  v44 = v122;
  v45 = v123;
  v47 = v120;
  v46 = v121;
  v48 = v115;
  if (v43)
  {
    v49 = v21;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v51 = v105;
    }

    else
    {
      v110 = &v98;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      v57 = v104;
      v128 = v104;
      v58 = swift_getAssociatedTypeWitness();
      v59 = swift_getAssociatedTypeWitness();
      v60 = swift_getAssociatedConformanceWitness();
      v61 = swift_getAssociatedConformanceWitness();
      v124 = v58;
      v125 = v59;
      v126 = v60;
      v127 = v61;
      type metadata accessor for FileItemVersion();
      v129 = sub_1CF9E75D8();
      v130 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      v131 = v130;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v63 = TupleTypeMetadata[12];

      v128 = v58;
      v129 = v59;
      v130 = v60;
      v131 = v61;
      v64 = type metadata accessor for FileItemVersion();
      if ((*(*(v64 - 8) + 48))(&v49[v63], 1, v64) == 1)
      {
        v65 = v103;
        v66 = v101;
        (*(v103 + 32))(v101, v49, v57);
        v46 = v121;
        v67 = *(*v121 + 576);
        v68 = *(*(AssociatedConformanceWitness + 40) + 8);
        v69 = sub_1CF9E6868();
        (*(v65 + 8))(v66, v57);
        v44 = v122;
        v45 = v123;
        v47 = v120;
        v48 = v115;
        if (v69)
        {
          v70 = v123[3];
          v71 = v123[4];
          v72 = __swift_project_boxed_opaque_existential_1(v123, v70);
          v73 = v100;
          (*(*(v99 - 8) + 56))(v100, 1, 1);
          v74 = v119;
          sub_1CF611904(v73, v46 + v67, 0, 0, 0, v44, v46[15], v46[16], v46[17], v47, v72, v70, v71);
          (*(v111 + 8))(v73, v112);
          if (v74)
          {
          }

          else
          {
            sub_1CF1A91AC(v45, &v128);
            v96 = v118;
            v97 = v118;
            v114(&v128, 0, 0, 0, v96);

            sub_1CEFCCC44(&v128, &unk_1EC4C1B30, &qword_1CFA05300);
          }

          v93 = v132;
          goto LABEL_19;
        }

        goto LABEL_14;
      }

      v75 = sub_1CF9E75D8();
      (*(*(v75 - 8) + 8))(&v49[v63], v75);
      v51 = v103;
      v42 = v57;
      v44 = v122;
      v45 = v123;
      v47 = v120;
      v46 = v121;
      v48 = v115;
    }

    (*(v51 + 8))(v49, v42);
  }

LABEL_14:

  if ((*(v46 + 138) & 1) == 0)
  {
    v76 = v116;
LABEL_16:
    v77 = v117;
    v78 = v108;
    v128 = v117;
    v129 = v108;
    v79 = v109;
    v130 = v76;
    v131 = v109;
    type metadata accessor for JobResult();
    v128 = v77;
    v129 = v78;
    v130 = v76;
    v131 = v79;
    v80 = type metadata accessor for Ingestion.FaultDirectoryInTree();
    v81 = *(*v46 + 576);
    v82 = v46[15];
    v83 = v46[16];
    v84 = v46[17];
    v85 = *(v80 + 48);
    v86 = *(v80 + 52);
    swift_allocObject();
    v87 = sub_1CF052464(v46 + v81, v82, v83, v84);
    sub_1CF803A0C(v47, v87);

    sub_1CF1A91AC(v45, &v128);
    v88 = v118;
    v89 = v118;
    v114(&v128, 0, 0, 0, v88);

    sub_1CEFCCC44(&v128, &unk_1EC4C1B30, &qword_1CFA05300);
    return;
  }

  sub_1CF050230(v48);
  v90 = v118;
  v91 = v119;
  v92 = sub_1CF96A12C(v118, v48, v44);
  if (v91)
  {
    (*(v106 + 8))(v48, v107);
    v93 = v90;
LABEL_19:

    return;
  }

  v94 = v92;
  (*(v106 + 8))(v48, v107);
  v76 = v116;
  if (!v94)
  {
    v119 = 0;
    goto LABEL_16;
  }

  sub_1CF1A91AC(v45, &v128);
  v95 = v90;
  v114(&v128, 0, 0xD000000000000020, 0x80000001CFA55590, v90);

  sub_1CEFCCC44(&v128, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF644B68@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = v1 + *(*v1 + 632);
  swift_beginAccess();
  v5 = *(v3 + 600);
  v6 = *(v3 + 616);
  v7 = type metadata accessor for SnapshotItem();
  result = (*(*(v7 - 8) + 48))(v4, 1, v7);
  if (result)
  {
    v9 = 4;
  }

  else
  {
    v9 = *(v4 + *(v7 + 48));
  }

  *a1 = v9;
  return result;
}

uint64_t sub_1CF644C48()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 632);
  swift_beginAccess();
  v3 = *(v1 + 600);
  v4 = *(v1 + 616);
  v5 = type metadata accessor for SnapshotItem();
  if ((*(*(v5 - 8) + 48))(v2, 1, v5))
  {
    return 2;
  }

  v7 = v2 + *(v5 + 48);
  return *(v7 + *(type metadata accessor for ItemMetadata() + 112));
}

uint64_t sub_1CF644D30()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 632);
  swift_beginAccess();
  v3 = *(v1 + 600);
  v4 = *(v1 + 616);
  v5 = type metadata accessor for SnapshotItem();
  v6 = (*(*(v5 - 8) + 48))(v2, 1, v5);
  result = 0;
  if (!v6)
  {
    v8 = v2 + *(v5 + 48);
    return *(v8 + *(type metadata accessor for ItemMetadata() + 104));
  }

  return result;
}

unint64_t sub_1CF644E20()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 632);
  swift_beginAccess();
  v3 = *(v1 + 600);
  v4 = *(v1 + 616);
  v5 = type metadata accessor for SnapshotItem();
  v6 = 1;
  if ((*(*(v5 - 8) + 48))(v2, 1, v5))
  {
    v7 = 0;
  }

  else
  {
    v8 = v2 + *(v5 + 48);
    v7 = *(v8 + 4);
    v6 = *(v8 + 8);
  }

  return v7 | (v6 << 32);
}

uint64_t sub_1CF644F10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1 + *(*v1 + 632);
  swift_beginAccess();
  v5 = *(v3 + 600);
  v6 = *(v3 + 616);
  v7 = type metadata accessor for SnapshotItem();
  if ((*(*(v7 - 8) + 48))(v4, 1, v7))
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a1, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v10 = *(v7 + 36);
    v11 = swift_getAssociatedTypeWitness();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a1, v4 + v10, v11);
    return (*(v12 + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_1CF6450D8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v56 = a5;
  v57 = a3;
  v58 = a4;
  v55 = a1;
  v8 = *v6;
  v9 = *(*v6 + 600);
  v10 = *(*v6 + 616);
  v11 = type metadata accessor for JobLockRule();
  v12 = *(v11 - 8);
  v53 = v11;
  v54 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v49 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v50 = AssociatedTypeWitness;
  v51 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  v23 = type metadata accessor for SnapshotItem();
  v24 = sub_1CF9E75D8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v49 - v28;
  v30 = *(a2 + 32);
  v31 = *(v8 + 576);
  v32 = v60;
  (*(*v30 + 240))(&v6[v31], 1, v57, v58, *(v56 + 8), v27);
  if (!v32)
  {
    v58 = v22;
    v60 = 0;
    v33 = &v6[*(*v6 + 632)];
    swift_beginAccess();
    (*(v25 + 40))(v33, v29, v24);
    swift_endAccess();
    if ((*(*(v23 - 8) + 48))(v33, 1, v23))
    {
      return 0;
    }

    else
    {
      v34 = v51;
      v35 = *(v51 + 16);
      v36 = v19;
      v37 = v19;
      v38 = v50;
      v35(v37, &v33[*(v23 + 36)], v50);
      v39 = v58;
      (*(v34 + 32))(v58, v36, v38);
      swift_beginAccess();
      sub_1CEFCCBDC((v6 + 56), v59, &unk_1EC4C1BE0, &unk_1CF9FD400);
      v57 = *(v6 + 15);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v41 = *(TupleTypeMetadata3 + 48);
      v42 = *(TupleTypeMetadata3 + 64);
      v43 = &v6[v31];
      v44 = v52;
      v35(v52, v43, v38);
      v45 = (v44 + v41);
      v46 = v39;
      v35(v45, v39, v38);
      v35((v44 + v42), v39, v38);
      v47 = v53;
      swift_storeEnumTagMultiPayload();
      v30 = sub_1CF052B3C(v59, v57, v44);
      (*(v54 + 8))(v44, v47);
      sub_1CEFCCC44(v59, &unk_1EC4C1BE0, &unk_1CF9FD400);
      (*(v34 + 8))(v46, v38);
    }
  }

  return v30;
}

uint64_t sub_1CF64559C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(*(a1 + 32) + 16);
  v16 = *(*v8 + 576);
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a1;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = v8;
  v17[8] = a3;
  v18 = *(*v15 + 760);

  v18(v8 + v16, sub_1CF658CA8, v17);
}

uint64_t sub_1CF6456D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v38 = a7;
  v39 = a8;
  v40 = a5;
  v41 = a6;
  v33 = a4;
  v34 = a3;
  v42 = a11;
  v43 = a12;
  v16 = *a2;
  v35 = *(*a2 + 80);
  v36 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v17 = sub_1CF9E8238();
  v32 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v32 - v20;
  v22 = swift_allocObject();
  v37 = v22;
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  (*(v18 + 16))(v21, a1, v17);
  v23 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v24 = (v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = v35;
  *(v27 + 3) = v16[11];
  *(v27 + 4) = v38;
  *(v27 + 5) = v16[12];
  *(v27 + 6) = v16[13];
  *(v27 + 7) = v39;
  (*(v18 + 32))(&v27[v23], v21, v32);
  *&v27[v24] = v40;
  *&v27[v25] = a2;
  *&v27[v26] = v41;
  v28 = &v27[(v26 + 15) & 0xFFFFFFFFFFFFFFF8];
  v29 = v33;
  *v28 = v34;
  *(v28 + 1) = v29;
  v30 = type metadata accessor for Continuation();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, v42, v37, v43, v27, v30, MEMORY[0x1E69E6158]);
}

void sub_1CF6459A0(void *a1, NSObject *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void (*a6)(uint64_t *, void, void, void, id), uint64_t a7)
{
  v100 = a5;
  v93 = a7;
  v94 = a6;
  v92 = a4;
  v95 = a2;
  v98 = a1;
  v87 = *a3;
  v8 = v87[77];
  v9 = v87[75];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  v10 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v83 = &v81 - v11;
  v88 = type metadata accessor for FileTreeError();
  v85 = *(v88 - 8);
  v12 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v14 = &v81 - v13;
  v89 = type metadata accessor for SnapshotItem();
  v15 = sub_1CF9E75D8();
  v90 = *(v15 - 8);
  v91 = v15;
  v16 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v81 - v19;
  v97 = *(v9 - 8);
  v21 = v97[8];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v96 = &v81 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v27 = sub_1CF9E8238();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = (&v81 - v30);
  (*(v32 + 16))(&v81 - v30, v95, v27, v29);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v109 = *v31;
    v97 = v109;
    v33 = v109;
    v34 = v88;
    v35 = swift_dynamicCast();
    v36 = v100;
    v37 = a3;
    if (!v35)
    {
      goto LABEL_14;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v39 = v85;
LABEL_13:
      (*(v39 + 8))(v14, v34);
      goto LABEL_14;
    }

    v95 = &v81;
    v96 = a3;
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    v45 = v14;
    v105 = AssociatedTypeWitness;
    v46 = swift_getAssociatedTypeWitness();
    v47 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v49 = swift_getAssociatedConformanceWitness();
    v101 = v46;
    v102 = v47;
    v103 = AssociatedConformanceWitness;
    v104 = v49;
    type metadata accessor for FileItemVersion();
    v106 = sub_1CF9E75D8();
    v107 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v108 = v107;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v51 = TupleTypeMetadata[12];

    v105 = v46;
    v106 = v47;
    v107 = AssociatedConformanceWitness;
    v108 = v49;
    v52 = type metadata accessor for FileItemVersion();
    if ((*(*(v52 - 8) + 48))(&v45[v51], 1, v52) != 1)
    {
      v65 = sub_1CF9E75D8();
      (*(*(v65 - 8) + 8))(&v45[v51], v65);
      v39 = v84;
      v34 = AssociatedTypeWitness;
      v36 = v100;
      v37 = v96;
      v14 = v45;
      goto LABEL_13;
    }

    v53 = v84;
    v54 = v83;
    v55 = AssociatedTypeWitness;
    (*(v84 + 32))(v83, v45, AssociatedTypeWitness);
    v37 = v96;
    v56 = *(*v96 + 576);
    v57 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
    v58 = sub_1CF9E6868();
    (*(v53 + 8))(v54, v55);
    v36 = v100;
    if ((v58 & 1) == 0)
    {
LABEL_14:

      v66 = v87[76];
      v67 = v87[78];
      v105 = v9;
      v106 = v66;
      v107 = v8;
      v108 = v67;
      type metadata accessor for JobResult();
      v105 = v9;
      v106 = v66;
      v107 = v8;
      v108 = v67;
      v68 = type metadata accessor for Ingestion.UnfaultDirectoryInTree();
      v69 = v37;
      v70 = *(*v37 + 576);
      v71 = v69[15];
      v72 = v69[16];
      v73 = v69[17];
      v74 = *(v68 + 48);
      v75 = *(v68 + 52);
      swift_allocObject();
      v76 = sub_1CF65722C(v69 + v70, v71, v72, v73);
      sub_1CF803A0C(v36, v76);

      sub_1CF1A91AC(v98, &v105);
      v77 = v97;
      v78 = v97;
      v94(&v105, 0, 0, 0, v77);

      sub_1CEFCCC44(&v105, &unk_1EC4C1B30, &qword_1CFA05300);
      return;
    }

    v59 = v98;
    v60 = v98[3];
    v61 = v98[4];
    v62 = __swift_project_boxed_opaque_existential_1(v98, v60);
    v63 = v82;
    (*(*(v89 - 8) + 56))(v82, 1, 1);
    v64 = v99;
    sub_1CF611904(v63, v37 + v56, 0, 0, 0, v92, v37[15], v37[16], v37[17], v36, v62, v60, v61);
    (*(v90 + 8))(v63, v91);
    if (v64)
    {
    }

    else
    {
      sub_1CF1A91AC(v59, &v105);
      v79 = v97;
      v80 = v97;
      v94(&v105, 0, 0, 0, v79);

      sub_1CEFCCC44(&v105, &unk_1EC4C1B30, &qword_1CFA05300);
    }
  }

  else
  {
    v41 = v96;
    v40 = v97;
    (v97[4])(v96, v31, v9);
    v42 = v98;
    v43 = v98[3];
    v88 = v98[4];
    v95 = __swift_project_boxed_opaque_existential_1(v98, v43);
    (v40[2])(v24, v41, v9);
    sub_1CF06B77C(v24, v9, v8, v20);
    (*(*(v89 - 8) + 56))(v20, 0, 1);
    v44 = v99;
    sub_1CF611904(v20, a3 + *(*a3 + 576), 3u, 0, 0, v92, a3[15], a3[16], a3[17], v100, v95, v43, v88);
    (*(v90 + 8))(v20, v91);
    if (!v44)
    {
      sub_1CF1A91AC(v42, &v105);
      v94(&v105, 0, 0, 0, 0);
      sub_1CEFCCC44(&v105, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    (v97[1])(v96, v9);
  }
}

uint64_t sub_1CF6464CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1CF656EE0(a1, a2, a3, a4);
  v7 = *(v4 + 616);
  v8 = *(v4 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v6;
}

uint64_t sub_1CF646584(uint64_t *a1, void (**a2)(char *, uint64_t *, uint64_t), uint64_t a3, NSObject *a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v64 = a6;
  v65 = a5;
  v82 = a3;
  v85 = a2;
  v77 = *v9;
  v14 = v77;
  v15 = v77[77];
  v76 = v77[75];
  v16 = type metadata accessor for SnapshotItem();
  v70 = sub_1CF9E75D8();
  v84 = *(v70 - 8);
  v17 = *(v84 + 8);
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v61 - v18;
  v83 = *(v16 - 8);
  v19 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v61 - v23;
  v72 = a1;
  v25 = a1[4];
  v26 = v14[72];
  v27 = *(*v25 + 496);
  v28 = *(a8 + 8);
  v74 = a4;
  v29 = 0;
  v32 = v27(v9 + v26, v85, a4, a7, v28, v22);
  v69 = a8;
  v81 = v24;
  v61 = v19;
  v62 = v25;
  v63 = v33;
  v75 = v9;
  if (sub_1CF9E6DF8())
  {
    v68 = a7;
    v34 = 0;
    v35 = v83;
    v85 = (v83 + 16);
    v78 = (v83 + 32);
    v79 = (v83 + 8);
    v66 = (v83 + 56);
    v67 = (v84 + 8);
    v36 = v75;
    v37 = v73;
    v80 = v32;
    while (1)
    {
      v43 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v43)
      {
        v44 = v32 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34;
        v45 = *(v35 + 16);
        v46 = v81;
        v45(v81, v44, v16);
        v47 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v61 != 8)
        {
          __break(1u);
          return result;
        }

        v86 = result;
        v45 = *v85;
        v53 = v81;
        (*v85)(v81, &v86, v16);
        v46 = v53;
        swift_unknownObjectRelease();
        v47 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:

          v55 = v65;
          a7 = v68;
          goto LABEL_16;
        }
      }

      v48 = v37;
      v49 = v15;
      (*v78)(v48, v46, v16);
      v50 = v36[17];
      if ((v50 & 0xFFFFFFCFFFFFFFFFLL) != 0)
      {
        v38 = v76;
        v39 = v77[76];
        v40 = v77[78];
        v86 = v76;
        v87 = v39;
        v88 = v49;
        v89 = v40;
        type metadata accessor for JobResult();
        v84 = v29;
        v86 = v38;
        v87 = v39;
        v15 = v49;
        v88 = v49;
        v89 = v40;
        v36 = v75;
        type metadata accessor for Ingestion.FetchItemMetadata();
        v41 = sub_1CF657094(v48, v36[15], v36[16], v50, type metadata accessor for Ingestion.FetchItemMetadata);
        v29 = v84;
        sub_1CF803A0C(v82, v41);

        v37 = v48;
      }

      else
      {
        v51 = v71;
        v45(v71, v48, v16);
        (*v66)(v51, 0, 1, v16);
        sub_1CF611904(v51, v48, 0, 0, 0, v72, v36[15], v36[16], v50, v82, v74, v68, v69);
        if (v29)
        {

          (*v67)(v51, v70);
          (*v79)(v73, v16);
          v60 = v68;
          v89 = v68;
          v90 = v69;
          v30 = __swift_allocate_boxed_opaque_existential_0(&v86);
          (*(*(v60 - 8) + 16))(v30, v74, v60);
          v31 = v29;
          v65(&v86, 0, 0, 0, v29);

          return sub_1CEFCCC44(&v86, &unk_1EC4C1B30, &qword_1CFA05300);
        }

        (*v67)(v51, v70);
        v15 = v49;
        v37 = v73;
      }

      v32 = v80;
      (*v79)(v37, v16);
      v42 = sub_1CF9E6DF8();
      ++v34;
      v35 = v83;
      if (v47 == v42)
      {
        goto LABEL_14;
      }
    }
  }

  v55 = v65;
LABEL_16:
  v56 = v69;
  v57 = v74;
  if ((*(v75 + 137) & 0x80) != 0 && !v63)
  {
    (*(**(v62 + 16) + 920))(v54);
  }

  v89 = a7;
  v90 = v56;
  v58 = __swift_allocate_boxed_opaque_existential_0(&v86);
  (*(*(a7 - 8) + 16))(v58, v57, a7);
  v59 = v63;

  v55(&v86, v59, 0, 0, 0);

  return sub_1CEFCCC44(&v86, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF646D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v72 = a8;
  v74 = a7;
  v65 = a6;
  v73 = a4;
  v67 = a3;
  v12 = *v8;
  v13 = sub_1CF9E5CF8();
  v77 = *(v13 - 8);
  v14 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v12[77];
  v17 = v12[75];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v63 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v62 - v22;
  v71 = *(a1 + 32);
  *&v23 = v17;
  *(&v23 + 1) = v12[76];
  *&v24 = v16;
  *(&v24 + 1) = v12[78];
  v68 = v24;
  v69 = v23;
  v79 = v23;
  v80 = v24;
  type metadata accessor for SQLDatabase();
  v75 = a1;
  v25 = swift_dynamicCastClass();
  v66 = a5;
  if (v25)
  {
    v62 = v13;
    v26 = v18;
    v27 = *(*(sub_1CF478C28() + 16) + 56);
    v28 = swift_getAssociatedTypeWitness();
    v29 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v31 = v29;
    v32 = swift_getAssociatedConformanceWitness();
    *&v79 = v29;
    *(&v79 + 1) = v28;
    *&v80 = AssociatedConformanceWitness;
    *(&v80 + 1) = v32;
    v33 = type metadata accessor for ThrottlingKey();
    sub_1CF9E7FA8();
    v34 = *(*(v33 - 8) + 72);
    v35 = *(*(v33 - 8) + 80);
    swift_allocObject();

    v36 = sub_1CF9E6D68();
    v38 = v37;
    *&v79 = v31;
    *(&v79 + 1) = v28;
    *&v80 = AssociatedConformanceWitness;
    *(&v80 + 1) = v32;
    type metadata accessor for ReconciliationID();
    v39 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v26 + 16))(v38, &v9[*(*v9 + 576)], v31);
    swift_storeEnumTagMultiPayload();
    *(v38 + v39) = sub_1CF03D760();
    v40 = v36;
    v41 = v74;
    v42 = sub_1CF045898(v40);
    sub_1CF3302CC(v42, v73, v41, v72);

    v18 = v26;
    v13 = v62;
  }

  v76 = v18;
  (*(**(v71 + 16) + 720))(nullsub_1, 0);
  sub_1CF046AB4();
  v43 = v64;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v45 = v44;
  v47 = v77 + 8;
  v46 = *(v77 + 8);
  result = v46(v43, v13);
  v49 = v45 * 1000000000.0;
  if (COERCE__INT64(fabs(v45 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v49 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v49 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v77 = v47;
  v50 = v49;
  v51 = *(v9 + 17);
  v79 = v69;
  v80 = v68;
  type metadata accessor for JobResult();
  v79 = v69;
  v80 = v68;
  type metadata accessor for Ingestion.FetchItemMetadata();
  v52 = v70;
  v53 = sub_1CF657094(v70, 0, v50, v51 | 0x8000, type metadata accessor for Ingestion.FetchItemMetadata);
  v54 = *(v76 + 8);
  v76 += 8;
  v54(v52, AssociatedTypeWitness);
  sub_1CF803A0C(v67, v53);

  v55 = v63;
  sub_1CF685B34();
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v57 = v56;
  result = v46(v43, v13);
  v58 = v57 * 1000000000.0;
  if (COERCE__INT64(fabs(v57 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v58 < 9.22337204e18)
  {
    v59 = sub_1CF657094(v55, 0, v58, *(v9 + 17) | 0x8000, type metadata accessor for Ingestion.FetchItemMetadata);
    v54(v55, AssociatedTypeWitness);
    sub_1CF803A0C(v67, v59);

    v60 = v74;
    *(&v80 + 1) = v74;
    v81 = v72;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v79);
    (*(*(v60 - 8) + 16))(boxed_opaque_existential_0, v73, v60);
    v66(&v79, 0, 0, 0, 0);
    return sub_1CEFCCC44(&v79, &unk_1EC4C1B30, &qword_1CFA05300);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1CF6475A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 576);
  v4 = *(*v1 + 616);
  v5 = *(*v1 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 16))(a1, v1 + v3, AssociatedTypeWitness);
  v7 = *(v9 + 56);

  return v7(a1, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_1CF6476A8()
{
  if (*(v0 + 138))
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1CF6476BC()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 616);
  v3 = type metadata accessor for JobLockRule();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6 + 22;
  swift_beginAccess();
  sub_1CEFCCBDC((v0 + 56), v14, &unk_1EC4C1BE0, &unk_1CF9FD400);
  v8 = *(v0 + 15);
  v9 = *(*v0 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v7, &v0[v9], AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v11 = sub_1CF052B3C(v14, v8, v7);
  (*(v4 + 8))(v7, v3);
  sub_1CEFCCC44(v14, &unk_1EC4C1BE0, &unk_1CF9FD400);
  return v11;
}

void sub_1CF6478B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, unint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v90 = a4;
  v91 = a8;
  v88 = a6;
  v89 = a7;
  v87 = a5;
  v84 = a3;
  v85 = a1;
  v82 = a2;
  v10 = *v8;
  v11 = v10[77];
  v12 = v10[75];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = v10[78];
  v15 = v10[76];
  v16 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v92 = AssociatedTypeWitness;
  v93 = v16;
  v94 = AssociatedConformanceWitness;
  v95 = swift_getAssociatedConformanceWitness();
  v83 = type metadata accessor for ReconciliationID();
  v81 = *(v83 - 8);
  v17 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v19 = &v67 - v18;
  v92 = v12;
  v93 = v15;
  v94 = v11;
  v95 = v14;
  v73 = type metadata accessor for ReconciliationMutation();
  v72 = *(v73 - 8);
  v20 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v67 - v21;
  v92 = v12;
  v93 = v15;
  v74 = v15;
  v94 = v11;
  v95 = v14;
  v75 = v14;
  v22 = v11;
  v23 = v85;
  v24 = type metadata accessor for ItemReconciliation();
  v25 = sub_1CF9E75D8();
  v77 = *(v25 - 8);
  v78 = v25;
  v26 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v67 - v27;
  v80 = *(v24 - 8);
  v29 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v79 = &v67 - v31;
  v32 = swift_allocObject();
  v76 = v22;
  type metadata accessor for SnapshotItem();
  v33 = *(AssociatedConformanceWitness + 40);
  v34 = sub_1CF9E65D8();
  AssociatedConformanceWitness = v32;
  *(v32 + 16) = v34;
  v35 = v89;
  v36 = v23[4];
  if (((*(*v23 + 256))() & 1) == 0)
  {
    goto LABEL_11;
  }

  v69 = v36;
  v70 = v24;
  v37 = v23[2];
  v38 = *(*v9 + 576);
  sub_1CF68DDB0(&v9[v38], v90, v35, *(v91 + 8), v28);
  v68 = v38;
  v39 = v80;
  v40 = v70;
  if ((*(v80 + 48))(v28, 1, v70) != 1)
  {
    v41 = v79;
    (*(v39 + 32))(v79, v28, v40);
    v36 = v69;
    if (sub_1CF056558())
    {
      v42 = type metadata accessor for ItemReconciliationHalf();
      v35 = v89;
      if (v41[*(v42 + 56)] - 3 >= 4)
      {
        if (v41[*(v42 + 52)] == 1)
        {
          v92 = v12;
          v93 = v74;
          v94 = v76;
          v95 = v75;
          type metadata accessor for JobResult();
          type metadata accessor for ReconciliationSideMutation();
          v43 = *(swift_getTupleTypeMetadata2() + 48);
          v44 = v71;
          (*(*(AssociatedTypeWitness - 8) + 16))(v71, &v9[v68], AssociatedTypeWitness);
          swift_storeEnumTagMultiPayload();
          *(v44 + v43) = 0;
          v35 = v89;
          swift_storeEnumTagMultiPayload();
          v45 = v73;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v84, v44);
          (*(v72 + 8))(v44, v45);
        }

        v95 = v35;
        v96 = v91;
        v46 = __swift_allocate_boxed_opaque_existential_0(&v92);
        (*(*(v35 - 8) + 16))(v46, v90, v35);
        v47 = 0x80000001CFA554F0;
        v48 = 0xD000000000000036;
LABEL_16:
        v87(&v92, 0, v48, v47, 0);
        (*(v80 + 8))(v41, v70);
        sub_1CEFCCC44(&v92, &unk_1EC4C1B30, &qword_1CFA05300);

        return;
      }
    }

    else
    {
      v49 = &v41[*(v40 + 52)];
      v50 = type metadata accessor for ItemReconciliationHalf();
      v35 = v89;
      if ((v49[*(v50 + 56)] | 2) != 6)
      {
        if (v41[*(type metadata accessor for ItemReconciliationHalf() + 52)] == 1)
        {
          v92 = v12;
          v93 = v74;
          v94 = v76;
          v95 = v75;
          type metadata accessor for JobResult();
          type metadata accessor for ReconciliationSideMutation();
          v63 = *(swift_getTupleTypeMetadata2() + 48);
          v64 = v71;
          (*(*(AssociatedTypeWitness - 8) + 16))(v71, &v9[v68], AssociatedTypeWitness);
          swift_storeEnumTagMultiPayload();
          *(v64 + v63) = 3;
          v35 = v89;
          swift_storeEnumTagMultiPayload();
          v65 = v73;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v84, v64);
          (*(v72 + 8))(v64, v65);
        }

        v95 = v35;
        v96 = v91;
        v66 = __swift_allocate_boxed_opaque_existential_0(&v92);
        (*(*(v35 - 8) + 16))(v66, v90, v35);
        v48 = 0xD000000000000040;
        v47 = 0x80000001CFA554A0;
        goto LABEL_16;
      }
    }

    (*(v80 + 8))(v41, v70);
    goto LABEL_11;
  }

  (*(v77 + 8))(v28, v78);
  v35 = v89;
  v36 = v69;
LABEL_11:
  v89 = *(*v9 + 576);
  (*(*(AssociatedTypeWitness - 8) + 16))(v19, &v9[v89], AssociatedTypeWitness);
  v51 = v83;
  swift_storeEnumTagMultiPayload();
  v52 = v91;
  v90 = (*(*v23 + 504))(v19, v90, v35, *(v91 + 8));
  v53 = (*(v81 + 8))(v19, v51);
  v54 = *(v36 + 16);
  v55 = (*(*v23 + 272))(v53);
  v56 = AssociatedConformanceWitness;
  v83 = v55;
  v57 = swift_allocObject();
  v57[2] = v35;
  v57[3] = v52;
  v57[4] = v9;
  v57[5] = v56;
  v58 = swift_allocObject();
  v58[2] = v35;
  v58[3] = v52;
  v58[4] = v23;
  v58[5] = v9;
  v59 = v88;
  v58[6] = v87;
  v58[7] = v59;
  v58[8] = v84;
  v58[9] = v56;
  v60 = *(*v54 + 144);
  swift_retain_n();
  swift_retain_n();

  v61 = v90;
  v62 = v83;
  v60(&v9[v89], v82, v83, v90, sub_1CF6589B4, v57, sub_1CF658A18, v58);
}

uint64_t sub_1CF648420(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v42 = a3;
  v4 = *(*a2 + 600);
  v5 = *a2;
  v50 = a2;
  v6 = *(v5 + 616);
  v43 = type metadata accessor for SnapshotItem();
  v7 = sub_1CF9E75D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = v37 - v9;
  v53 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = v37 - v13;
  v51 = *(v4 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v40 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v37 - v19;
  v37[0] = v21;
  MEMORY[0x1EEE9AC00](v22);
  v54 = v37 - v23;
  v24 = a1;
  if (!sub_1CF9E6DF8())
  {
    return 0;
  }

  v25 = 0;
  v48 = *(v53 + 72);
  v47 = *(*v50 + 576);
  v52 = (v51 + 16);
  v45 = (v11 + 8);
  v46 = (v51 + 32);
  v44 = (v51 + 8);
  v49 = v53 + 72;
  v37[2] = v53 + 64;
  v37[1] = v43 - 8;
  v38 = AssociatedTypeWitness;
  v39 = v14;
  while (1)
  {
    v26 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v26)
    {
      v27 = *(v51 + 16);
      v27(v54, (v24 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v25), v4);
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

    result = sub_1CF9E7998();
    if (v37[0] != 8)
    {
      break;
    }

    v55[0] = result;
    v27 = *v52;
    (*v52)(v54, v55, v4);
    swift_unknownObjectRelease();
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
LABEL_11:
      __break(1u);
      return 0;
    }

LABEL_6:
    (*v46)(v20, v54, v4);
    v48(v4, v53);
    v29 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
    v30 = sub_1CF9E6868();
    (*v45)(v14, AssociatedTypeWitness);
    if (v30)
    {
      v31 = v24;
      v32 = v53;
      (*(v53 + 64))(v4, v53);
      v33 = v40;
      v27(v40, v20, v4);
      v34 = v41;
      v35 = v32;
      v24 = v31;
      AssociatedTypeWitness = v38;
      sub_1CF06B77C(v33, v4, v35, v41);
      (*(*(v43 - 8) + 56))(v34, 0, 1, v43);
      swift_beginAccess();
      sub_1CF9E6708();
      v14 = v39;
      sub_1CF9E6738();
      swift_endAccess();
    }

    (*v44)(v20, v4);
    ++v25;
    if (v28 == sub_1CF9E6DF8())
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF648978(void *a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    v14 = swift_allocObject();
    v14[2] = a9;
    v14[3] = a10;
    v14[4] = a4;
    v14[5] = a3;
    v15 = swift_allocObject();
    *(v15 + 16) = a5;
    *(v15 + 24) = a6;
    v16 = swift_allocObject();
    v16[2] = a9;
    v16[3] = a10;
    v16[4] = a3;
    v16[5] = a4;
    v16[6] = a7;
    v16[7] = a1;
    v16[8] = a5;
    v16[9] = a6;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_1CF2B1868(a1, 1);
    v17 = type metadata accessor for Continuation();
    sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF55942C, v14, sub_1CF559418, v15, sub_1CF658C20, v16, v17, MEMORY[0x1E69E6158]);
  }

  else
  {
    v19 = *a3;
    swift_beginAccess();
    v21 = *(a8 + 16);
    v22 = *(v19 + 96);
    v23 = *(v19 + 80);
    swift_getAssociatedTypeWitness();
    type metadata accessor for SnapshotItem();
    v24 = *(swift_getAssociatedConformanceWitness() + 40);
    nullsub_1(v21);
    sub_1CF9E66B8();

    swift_getWitnessTable();
    v25 = sub_1CF9E6E88();
    v26 = sub_1CF9E6DF8();
    v51 = v25;
    if (sub_1CF9E6DF8() < 1)
    {
LABEL_13:
      if (v26)
      {
      }

      else
      {
        v36 = swift_allocObject();
        v36[2] = a9;
        v36[3] = a10;
        v36[4] = a4;
        v36[5] = a3;
        v37 = swift_allocObject();
        *(v37 + 16) = a5;
        *(v37 + 24) = a6;
        v38 = swift_allocObject();
        v38[2] = a9;
        v38[3] = a10;
        v38[4] = a1;
        v38[5] = a3;
        v38[6] = a4;
        v38[7] = a7;
        v38[8] = a5;
        v38[9] = a6;
        v38[10] = v51;
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();

        sub_1CF2B1868(a1, 0);
        v39 = type metadata accessor for Continuation();
        sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF55942C, v36, sub_1CF559418, v37, sub_1CF658AC0, v38, v39, MEMORY[0x1E69E6158]);
      }
    }

    else
    {
      result = 0;
      v27 = 50;
      if (v26 < 50)
      {
        v27 = v26;
      }

      while (v27 >= result)
      {
        v52 = v27;
        v28 = sub_1CF9E6E98();
        v49 = v29;
        v47 = v31;
        v48 = v30;
        v46 = v52 == v26;
        v32 = swift_allocObject();
        v32[2] = a9;
        v32[3] = a10;
        v32[4] = a4;
        v32[5] = a3;
        v50 = swift_allocObject();
        *(v50 + 16) = a5;
        *(v50 + 24) = a6;
        v33 = v26;
        v34 = swift_allocObject();
        *(v34 + 16) = a9;
        *(v34 + 24) = a10;
        *(v34 + 32) = a4;
        *(v34 + 40) = v28;
        *(v34 + 48) = v49;
        *(v34 + 56) = v48;
        *(v34 + 64) = v47;
        *(v34 + 72) = a3;
        *(v34 + 80) = v46;
        *(v34 + 88) = a1;
        *(v34 + 96) = a7;
        *(v34 + 104) = a5;
        *(v34 + 112) = a6;
        *(v34 + 120) = v51;
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();

        sub_1CF2B1868(a1, 0);
        v35 = type metadata accessor for Continuation();
        swift_unknownObjectRetain();

        sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF55942C, v32, sub_1CF559418, v50, sub_1CF658B54, v34, v35, MEMORY[0x1E69E6158]);

        result = swift_unknownObjectRelease();
        v27 = v52 + 50;
        if (__OFADD__(v52, 50))
        {
          goto LABEL_17;
        }

        if (v33 < v27)
        {
          v27 = v33;
        }

        result = v52;
        v26 = v33;
        if (v52 >= v33)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }
  }

  return result;
}

void sub_1CF648FD0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void *a5, void (*a6)(__int128 *, void, void, void, void *), uint64_t a7)
{
  v138 = a7;
  v128 = a6;
  v136 = a5;
  v129 = a4;
  v144 = a3;
  v9 = *a2;
  v115 = sub_1CF9E5268();
  v114 = *(v115 - 8);
  v10 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v9[10];
  v13 = v9[12];
  v118 = type metadata accessor for SnapshotItem();
  v121 = sub_1CF9E75D8();
  v120 = *(v121 - 8);
  v14 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v109 - v15;
  v133 = sub_1CF9E5248();
  v132 = *(v133 - 8);
  v16 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v134 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v127 = *(AssociatedTypeWitness - 8);
  v18 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v117 = &v109 - v19;
  v135 = type metadata accessor for FileTreeError();
  v116 = *(v135 - 8);
  v20 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v131 = &v109 - v21;
  v22 = v9[11];
  v141 = v12;
  *&v23 = v12;
  v125 = v22;
  *(&v23 + 1) = v22;
  v146 = v23;
  v24 = v9[13];
  v140 = v13;
  *&v25 = v13;
  v126 = v24;
  *(&v25 + 1) = v24;
  v145 = v25;
  v151 = v23;
  v152 = v25;
  v124 = type metadata accessor for ReconciliationMutation();
  v123 = *(v124 - 8);
  v26 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v109 - v27;
  v151 = v146;
  v152 = v145;
  v28 = type metadata accessor for ItemReconciliation();
  v29 = sub_1CF9E75D8();
  v130 = *(v29 - 8);
  v30 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v109 - v31;
  v142 = *(v28 - 8);
  v33 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v109 - v35;
  v37 = a1[3];
  v38 = a1[4];
  v137 = a1;
  v39 = __swift_project_boxed_opaque_existential_1(a1, v37);
  v40 = a2[2];
  v41 = v143;
  v42 = *(*v144 + 576);
  v43 = *(v38 + 8);
  v44 = v144;
  sub_1CF68DDB0(v144 + v42, v39, v37, v43, v32);
  if (!v41)
  {
    v45 = v130;
    v46 = v36;
    v143 = v42;
    v111 = a2;
    v47 = v44;
    v112 = 0;
    v48 = v142;
    if ((*(v142 + 48))(v32, 1, v28) == 1)
    {
      (*(v45 + 8))(v32, v29);
      v49 = v136;
      v50 = v44;
    }

    else
    {
      v51 = v46;
      (*(v48 + 32))(v46, v32, v28);
      v52 = &v46[*(v28 + 52)];
      if (v52[*(type metadata accessor for ItemReconciliationHalf() + 56)] - 3 > 1)
      {
        v61 = v51[*(type metadata accessor for ItemReconciliationHalf() + 52)];
        v62 = v51;
        v50 = v44;
        if (v61 == 1)
        {
          v151 = v146;
          v152 = v145;
          v130 = v62;
          v109 = type metadata accessor for JobResult();
          v63 = swift_getAssociatedTypeWitness();
          v110 = v28;
          v64 = v63;
          v65 = AssociatedTypeWitness;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v67 = swift_getAssociatedConformanceWitness();
          *&v151 = v65;
          *(&v151 + 1) = v64;
          *&v152 = AssociatedConformanceWitness;
          *(&v152 + 1) = v67;
          type metadata accessor for ReconciliationID();
          type metadata accessor for ReconciliationSideMutation();
          v68 = *(swift_getTupleTypeMetadata2() + 48);
          v69 = v122;
          (*(v127 + 16))(v122, v50 + v143, v65);
          swift_storeEnumTagMultiPayload();
          *(v69 + v68) = 0;
          swift_storeEnumTagMultiPayload();
          v70 = v124;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v129, v69);
          (*(v123 + 8))(v69, v70);
          (*(v142 + 8))(v130, v110);
        }

        else
        {
          (*(v142 + 8))(v62, v28);
        }
      }

      else
      {
        v151 = v146;
        v152 = v145;
        v109 = type metadata accessor for JobResult();
        v53 = swift_getAssociatedTypeWitness();
        v110 = v28;
        v54 = v53;
        v130 = v51;
        v55 = AssociatedTypeWitness;
        v56 = swift_getAssociatedConformanceWitness();
        v57 = swift_getAssociatedConformanceWitness();
        *&v151 = v55;
        *(&v151 + 1) = v54;
        *&v152 = v56;
        *(&v152 + 1) = v57;
        type metadata accessor for ReconciliationID();
        type metadata accessor for ReconciliationSideMutation();
        v58 = *(swift_getTupleTypeMetadata2() + 48);
        v50 = v47;
        v59 = v122;
        (*(v127 + 16))(v122, v47 + v143, v55);
        swift_storeEnumTagMultiPayload();
        *(v59 + v58) = 3;
        swift_storeEnumTagMultiPayload();
        v60 = v124;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v129, v59);
        (*(v123 + 8))(v59, v60);
        (*(v142 + 8))(v130, v110);
      }

      v49 = v136;
    }

    v71 = v134;
    v72 = v133;
    v73 = v132;
    v74 = v131;
    v153 = v49;
    v75 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v76 = swift_dynamicCast();
    v77 = v137;
    if (v76)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 14)
      {
        v151 = v146;
        v152 = v145;
        type metadata accessor for JobResult();
        v151 = v146;
        v152 = v145;
        type metadata accessor for Ingestion.FetchChildrenMetadata();
        v93 = sub_1CF657094(v50 + v143, v50[15], v50[16], v50[17] | 0x2000, type metadata accessor for Ingestion.FetchChildrenMetadata);
        sub_1CF803A0C(v129, v93);

        sub_1CF1A91AC(v77, &v151);
        v128(&v151, 0, 0, 0, v49);
        sub_1CEFCCC44(&v151, &unk_1EC4C1B30, &qword_1CFA05300);
        goto LABEL_16;
      }

      if (EnumCaseMultiPayload)
      {
        (*(v116 + 8))(v74, v135);
      }

      else
      {
        v131 = &v109;
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        v79 = AssociatedTypeWitness;
        *&v151 = AssociatedTypeWitness;
        v80 = swift_getAssociatedTypeWitness();
        v81 = swift_getAssociatedTypeWitness();
        v82 = swift_getAssociatedConformanceWitness();
        v83 = swift_getAssociatedConformanceWitness();
        v142 = v80;
        v147 = v80;
        v148 = v81;
        v135 = v82;
        v149 = v82;
        v150 = v83;
        v130 = v83;
        type metadata accessor for FileItemVersion();
        *(&v151 + 1) = sub_1CF9E75D8();
        *&v152 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        *(&v152 + 1) = v152;
        v84 = v74;
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v131 = TupleTypeMetadata[12];

        v86 = v127;
        v87 = v117;
        (*(v127 + 32))(v117, v84, v79);
        v88 = v144;
        v89 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
        v90 = v143;
        LOBYTE(TupleTypeMetadata) = sub_1CF9E6868();
        (*(v86 + 8))(v87, v79);
        if (TupleTypeMetadata)
        {
          v151 = v146;
          v152 = v145;
          type metadata accessor for JobResult();
          v151 = v146;
          v152 = v145;
          type metadata accessor for Ingestion.FetchItemMetadata();
          v91 = sub_1CF657094(v88 + v90, v88[15], v88[16], 0x2000, type metadata accessor for Ingestion.FetchItemMetadata);
          sub_1CF803A0C(v129, v91);

          sub_1CF1A91AC(v137, &v151);
          v128(&v151, 0, 0, 0, v136);
          sub_1CEFCCC44(&v151, &unk_1EC4C1B30, &qword_1CFA05300);
          *&v151 = v142;
          *(&v151 + 1) = v81;
          *&v152 = v135;
          *(&v152 + 1) = v130;
          type metadata accessor for FileItemVersion();
          v92 = sub_1CF9E75D8();
          (*(*(v92 - 8) + 8))(&v131[v84], v92);
LABEL_16:

          return;
        }

        *&v151 = v142;
        *(&v151 + 1) = v81;
        *&v152 = v135;
        *(&v152 + 1) = v130;
        type metadata accessor for FileItemVersion();
        v94 = sub_1CF9E75D8();
        (*(*(v94 - 8) + 8))(&v131[v84], v94);
        v77 = v137;
        v49 = v136;
        v50 = v88;
        v71 = v134;
        v72 = v133;
        v73 = v132;
      }
    }

    sub_1CF9E5108();
    sub_1CF00BC98(&qword_1EDEAB460, MEMORY[0x1E6967E70]);
    v95 = sub_1CF9E5658();
    (*(v73 + 8))(v71, v72);
    v96 = AssociatedTypeWitness;
    v97 = swift_getAssociatedConformanceWitness();
    v98 = v97;
    if (v95 & 1) != 0 && ((*(v97 + 72))(v96, v97))
    {
      v99 = v77[3];
      v100 = v77[4];
      v101 = __swift_project_boxed_opaque_existential_1(v77, v99);
      v102 = v119;
      (*(*(v118 - 8) + 56))(v119, 1, 1);
      v103 = v112;
      sub_1CF611904(v102, v50 + v143, 0, 0, 0, v111, v50[15], v50[16], v50[17], v129, v101, v99, v100);
      (*(v120 + 8))(v102, v121);
      if (!v103)
      {
        sub_1CF1A91AC(v77, &v151);
        sub_1CF9E5108();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF00BC98(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
        v106 = v113;
        v107 = v115;
        sub_1CF9E57D8();
        v108 = sub_1CF9E50D8();
        (*(v114 + 8))(v106, v107);
        v128(&v151, 0, 0, 0, v108);

        sub_1CEFCCC44(&v151, &unk_1EC4C1B30, &qword_1CFA05300);
      }
    }

    else
    {
      if (((*(v98 + 72))(v96, v98) & 1) == 0)
      {
        v104 = v50[17];
        if ((v104 & 1) == 0)
        {
          v151 = v146;
          v152 = v145;
          type metadata accessor for JobResult();
          v151 = v146;
          v152 = v145;
          type metadata accessor for Ingestion.FetchChildrenMetadata();
          v105 = sub_1CF657094(v50 + v143, v50[15], v50[16], v104, type metadata accessor for Ingestion.FetchChildrenMetadata);
          sub_1CF803A0C(v129, v105);
        }
      }

      sub_1CF1A91AC(v77, &v151);
      v128(&v151, 0, 0, 0, v49);
      sub_1CEFCCC44(&v151, &unk_1EC4C1B30, &qword_1CFA05300);
    }
  }
}

uint64_t sub_1CF64A31C(uint64_t a1, uint64_t a2, void *a3, char *a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, uint64_t, unint64_t, void), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v93 = a1;
  v87 = a8;
  v89 = a7;
  v90 = a6;
  v84 = a5;
  v85 = a4;
  v91 = a12;
  v92 = a10;
  v14 = *(*a3 + 88);
  v15 = *(*a3 + 96);
  v16 = *(*a3 + 104);
  v98 = *(*a3 + 80);
  v99 = v14;
  v100 = v15;
  v101 = v16;
  v17 = type metadata accessor for ReconciliationMutation();
  v83 = *(v17 - 8);
  v18 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v76 - v19;
  v95 = v98;
  v99 = v14;
  v86 = v15;
  v100 = v15;
  v101 = v16;
  v21 = type metadata accessor for ItemReconciliation();
  v22 = sub_1CF9E75D8();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v76 - v24;
  v26 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v76 - v30;
  v88 = a2;
  if (a2)
  {
    v33 = v92;
    v32 = v93;
    v34 = v91;
LABEL_8:
    v101 = v33;
    v102 = v34;
    v57 = __swift_allocate_boxed_opaque_existential_0(&v98);
    (*(*(v33 - 8) + 16))(v57, v32, v33);
    v96 = 0x6572646C6968633CLL;
    v97 = 0xEA00000000003A6ELL;
    type metadata accessor for SnapshotItem();
    v103 = sub_1CF9E6DF8();
    v58 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v58);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v90(&v98, v88, v96, v97, 0);

    return sub_1CEFCCC44(&v98, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v76 = v29;
  v77 = v31;
  v78 = v28;
  v79 = v20;
  v80 = v17;
  v82 = v16;
  v81 = v14;
  v35 = a3[4];
  if (sub_1CF056558() || (v85[136] & 1) == 0)
  {
    goto LABEL_5;
  }

  v60 = a3[2];
  v61 = *(*v85 + 576);
  v62 = v94;
  result = sub_1CF68DDB0(&v85[v61], v93, v92, *(v91 + 8), v25);
  v63 = v82;
  if (!v62)
  {
    v94 = 0;
    v64 = v78;
    if ((*(v78 + 48))(v25, 1, v21) == 1)
    {
      (*(v76 + 8))(v25, v22);
    }

    else
    {
      v65 = v77;
      (*(v64 + 32))(v77, v25, v21);
      v66 = &v65[*(v21 + 52)];
      v67 = v81;
      if (v66[*(type metadata accessor for ItemReconciliationHalf() + 44)] == 5)
      {
        v98 = v95;
        v99 = v67;
        v36 = v86;
        v100 = v86;
        v101 = v63;
        v76 = type metadata accessor for JobResult();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v69 = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v71 = swift_getAssociatedConformanceWitness();
        v98 = AssociatedTypeWitness;
        v99 = v69;
        v100 = AssociatedConformanceWitness;
        v101 = v71;
        type metadata accessor for ReconciliationID();
        type metadata accessor for ReconciliationSideMutation();
        v72 = *(swift_getTupleTypeMetadata2() + 48);
        v42 = v85;
        v73 = &v85[v61];
        v74 = v79;
        (*(*(AssociatedTypeWitness - 8) + 16))(v79, v73, AssociatedTypeWitness);
        swift_storeEnumTagMultiPayload();
        *(v74 + v72) = 0;
        swift_storeEnumTagMultiPayload();
        v75 = v80;
        swift_storeEnumTagMultiPayload();
        v45 = v84;
        sub_1CF06EB44(v84, v74);
        (*(v83 + 8))(v74, v75);
        (*(v64 + 8))(v77, v21);
        v46 = *(v42 + 17);
        if ((v46 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      (*(v64 + 8))(v65, v21);
    }

LABEL_5:
    v98 = v95;
    v99 = v81;
    v36 = v86;
    v100 = v86;
    v101 = v82;
    v78 = type metadata accessor for JobResult();
    v37 = swift_getAssociatedTypeWitness();
    v38 = swift_getAssociatedTypeWitness();
    v39 = swift_getAssociatedConformanceWitness();
    v40 = swift_getAssociatedConformanceWitness();
    v98 = v37;
    v99 = v38;
    v100 = v39;
    v101 = v40;
    type metadata accessor for ReconciliationID();
    type metadata accessor for ReconciliationSideMutation();
    v41 = *(swift_getTupleTypeMetadata2() + 48);
    v42 = v85;
    v43 = v79;
    (*(*(v37 - 8) + 16))(v79, &v42[*(*v42 + 576)], v37);
    swift_storeEnumTagMultiPayload();
    *(v43 + v41) = 2;
    swift_storeEnumTagMultiPayload();
    v44 = v80;
    swift_storeEnumTagMultiPayload();
    v45 = v84;
    sub_1CF06EB44(v84, v43);
    (*(v83 + 8))(v43, v44);
    v46 = *(v42 + 17);
    if ((v46 & 0x80000000) == 0)
    {
LABEL_7:
      v33 = v92;
      v32 = v93;
      v34 = v91;
      goto LABEL_8;
    }

LABEL_6:
    v47 = v95;
    v48 = v81;
    v98 = v95;
    v99 = v81;
    v49 = v82;
    v100 = v36;
    v101 = v82;
    type metadata accessor for JobResult();
    v98 = v47;
    v99 = v48;
    v100 = v36;
    v101 = v49;
    v50 = type metadata accessor for Ingestion.MarkParentDeleted();
    v51 = *(*v42 + 576);
    v52 = *(v42 + 15);
    v53 = *(v42 + 16);
    v54 = *(v50 + 48);
    v55 = *(v50 + 52);
    swift_allocObject();
    v56 = sub_1CF052464(&v42[v51], v52, v53, v46);
    sub_1CF803A0C(v45, v56);

    goto LABEL_7;
  }

  return result;
}

void sub_1CF64ABF0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t *, uint64_t, uint64_t, unint64_t, void), uint64_t a12, uint64_t a13, uint64_t a14, NSObject *a15)
{
  v111 = a8;
  v136 = a5;
  v137 = a7;
  v134 = a4;
  v135 = a1;
  v123 = *a2;
  v18 = v123[77];
  v122 = v123[75];
  v116 = v18;
  v117 = type metadata accessor for SnapshotItem();
  v132 = *(v117 - 8);
  v19 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v131 = v108 - v20;
  v115 = sub_1CF9E5CF8();
  v114 = *(v115 - 8);
  v21 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v113 = v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1CF9E6118();
  v120 = *(v121 - 8);
  v23 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v25 = v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v112 = v108 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v128 = v108 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v108 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v110 = v108 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v108 - v36;
  v38 = [objc_allocWithZone(FPLoggerScope) init];
  v39 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v129 = a3;
  swift_unknownObjectRetain_n();

  v40 = v38;
  v41 = sub_1CF9E6108();
  v42 = sub_1CF9E7288();

  v43 = os_log_type_enabled(v41, v42);
  v133 = a6;
  v119 = v40;
  v108[1] = v25;
  v109 = v32;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v126 = v45;
    v127 = swift_slowAlloc();
    v138[0] = v127;
    *v44 = 138412802;
    v46 = [v40 enter];
    *(v44 + 4) = v46;
    *v45 = v46;
    *(v44 + 12) = 2082;
    v125 = v41;
    v47 = v42;
    v48 = sub_1CF044BA4();
    v50 = v49;

    v51 = sub_1CEFD0DF0(v48, v50, v138);

    *(v44 + 14) = v51;
    *(v44 + 22) = 2050;
    v52 = sub_1CF9E7758();
    swift_unknownObjectRelease();
    *(v44 + 24) = v52;
    swift_unknownObjectRelease();
    v53 = v125;
    _os_log_impl(&dword_1CEFC7000, v125, v47, "%@ processing item batch %{public}s -> <items:%{public}ld>", v44, 0x20u);
    v54 = v126;
    sub_1CEFCCC44(v126, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v54, -1, -1);
    v55 = v127;
    __swift_destroy_boxed_opaque_existential_1(v127);
    MEMORY[0x1D386CDC0](v55, -1, -1);
    MEMORY[0x1D386CDC0](v44, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  v56 = v121;
  v118 = *(v120 + 8);
  v118(v37, v121);
  v58 = v135[3];
  v57 = v135[4];
  v59 = __swift_project_boxed_opaque_existential_1(v135, v58);
  if ((a2[17] & 0x10000) != 0)
  {
    v60 = 3;
  }

  else
  {
    v60 = 1;
  }

  v61 = v130;
  v62 = sub_1CF62DA88(a2 + *(*a2 + 576), v60, v137, v59, v58, *(v57 + 8));
  if (v61)
  {
    v64 = fpfs_current_or_default_log();
    v65 = v128;
    sub_1CF9E6128();
    v66 = v119;
    v67 = v119;
    v68 = sub_1CF9E6108();
    v69 = sub_1CF9E7288();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      v72 = [v67 leave];
      *(v70 + 4) = v72;
      *v71 = v72;
      _os_log_impl(&dword_1CEFC7000, v68, v69, "%@", v70, 0xCu);
      sub_1CEFCCC44(v71, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v71, -1, -1);
      MEMORY[0x1D386CDC0](v70, -1, -1);

      v73 = v65;
      v97 = v121;
    }

    else
    {

      v73 = v65;
      v97 = v56;
    }

    v118(v73, v97);

    return;
  }

  v129 = v63;
  v124 = v62;
  v125 = a15;
  v126 = a14;
  v127 = a2;
  v74 = v123[76];
  v75 = v123[78];
  v138[0] = v122;
  v138[1] = v74;
  v138[2] = v116;
  v138[3] = v75;
  type metadata accessor for ConcreteJobResult();
  v130 = sub_1CF056580();
  v76 = v136;
  v77 = v133;
  v78 = v117;
  v79 = sub_1CF9E7738();
  v80 = sub_1CF9E7768();
  v128 = v79;
  if (v79 != v80)
  {
    v122 = v132 + 16;
    v123 = (v77 >> 1);
    v81 = (v132 + 8);
    v82 = v128;
    while (1)
    {
      sub_1CF9E7748();
      if (v128 < v76 || v123 <= v82)
      {
        break;
      }

      v83 = v131;
      (*(v132 + 16))(v131, v134 + *(v132 + 72) * v82, v78);
      v84 = objc_autoreleasePoolPush();
      sub_1CF64BB48(v124, v129, v135, v83, v137, v127, v130, v126, v125, v138);
      ++v82;
      objc_autoreleasePoolPop(v84);
      (*v81)(v83, v78);
      v76 = v136;
      if (v82 == sub_1CF9E7768())
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_15:

  v85 = v135;
  v86 = v135[3];
  v87 = v135[4];
  v88 = __swift_project_boxed_opaque_existential_1(v135, v86);
  v89 = v113;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v91 = v90;
  (*(v114 + 8))(v89, v115);
  v92 = v91 * 1000000000.0;
  if (COERCE__INT64(fabs(v91 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v92 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v92 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    return;
  }

  sub_1CF521850(v130, v92, v88, v86, v87);
  v93 = v85;
  v95 = v85[3];
  v94 = v85[4];
  v96 = __swift_project_boxed_opaque_existential_1(v93, v95);
  sub_1CF64A31C(v96, a9, v137, v127, a10, a11, a12, a13, v126, v95, v125, v94);
  v98 = v121;
  v99 = v119;

  v100 = fpfs_current_or_default_log();
  v101 = v109;
  sub_1CF9E6128();
  v102 = v99;
  v103 = sub_1CF9E6108();
  v104 = sub_1CF9E7288();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *v105 = 138412290;
    v107 = [v102 leave];
    *(v105 + 4) = v107;
    *v106 = v107;
    _os_log_impl(&dword_1CEFC7000, v103, v104, "%@", v105, 0xCu);
    sub_1CEFCCC44(v106, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v106, -1, -1);
    MEMORY[0x1D386CDC0](v105, -1, -1);
  }

  v118(v101, v98);
}

void sub_1CF64BB48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;
  v76 = a6;
  v70 = *a5;
  v17 = v70[10];
  v18 = v70[12];
  v68 = type metadata accessor for FileTreeError();
  v66 = *(v68 - 8);
  v19 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v65 - v20;
  v74 = v18;
  v75 = v17;
  v21 = type metadata accessor for SnapshotItem();
  v22 = sub_1CF9E75D8();
  v72 = *(v22 - 8);
  v73 = v22;
  v23 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v71 = &v65 - v24;
  v25 = sub_1CF9E5CF8();
  v69 = *(v25 - 8);
  v26 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_27;
  }

  v65 = a7;
  v29 = a3[3];
  v30 = a3[4];
  v31 = __swift_project_boxed_opaque_existential_1(a3, v29);
  v32 = sub_1CF62D810(a4, a5, v31, v29, *(v30 + 8));
  v11 = v10;
  if (v10)
  {
LABEL_3:
    *a10 = v11;
    return;
  }

  a7 = v65;
  if (v32)
  {
LABEL_27:
    v33 = (a4 + *(v21 + 68));
    v34 = v33[1];
    if (v34 >> 62)
    {
      if (v34 >> 62 == 1)
      {
        v35 = *v33;
        v36 = v34 & 0x3FFFFFFFFFFFFFFFLL;
        v37 = v70[11];
        v38 = v70[13];
        v77 = v75;
        v78 = v37;
        v79 = v74;
        v80 = v38;
        v72 = v38;
        v73 = v34;
        v39 = type metadata accessor for Ingestion.TrackTemporaryItem();

        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v41 = v40;
        (*(v69 + 8))(v28, v25);
        v42 = v41 * 1000000000.0;
        if (COERCE__INT64(fabs(v41 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v42 > -9.22337204e18)
        {
          if (v42 < 9.22337204e18)
          {
            v43 = a4;
            v44 = v42;
            v45 = v76[17];
            v46 = *(v39 + 48);
            v47 = *(v39 + 52);
            swift_allocObject();
            v48 = sub_1CF052464(v43, 0x2000000000000000, v44, v45);
            v49 = *(v48 + 96);
            v50 = *(v48 + 104);
            *(v48 + 96) = 256;
            *(v48 + 104) = v36;
            v51 = *(v48 + 112);
            *(v48 + 112) = 0;
            v52 = v73;
            sub_1CF658C88(v35, v73);

            sub_1CF03D7A8(v49, v50, v51);

            v77 = v75;
            v78 = v37;
            v79 = v74;
            v80 = v72;
            type metadata accessor for JobResult();
            sub_1CF803A0C(a7, v48);

            sub_1CF07638C(v35, v52);
            return;
          }

          goto LABEL_24;
        }

        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      v53 = a3[3];
      v75 = a3[4];
      v54 = __swift_project_boxed_opaque_existential_1(a3, v53);
      v55 = a4;
      v56 = a7;
      v57 = v11;
      v58 = *(v21 - 8);
      v59 = v71;
      (*(v58 + 16))(v71, v55, v21);
      (*(v58 + 56))(v59, 0, 1, v21);
      v64 = v76[17];
      if ((v64 & 0x10000) != 0)
      {
        v60 = 3;
      }

      else
      {
        v60 = 1;
      }

      sub_1CF611904(v59, v55, v60, 1, 0, a5, v76[15], v76[16], v64, v56, v54, v53, v75);
      v11 = v57;
      if (v57)
      {
        (*(v72 + 8))(v59, v73);
        v77 = v57;
        v61 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v63 = v67;
        v62 = v68;
        if (swift_dynamicCast())
        {
          if (swift_getEnumCaseMultiPayload() == 15)
          {

            return;
          }

          (*(v66 + 8))(v63, v62);
        }

        goto LABEL_3;
      }

      (*(v72 + 8))(v59, v73);
    }
  }
}

uint64_t sub_1CF64C12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a5;
  v8 = *v5;
  v9 = *(*v5 + 624);
  v10 = *(*v5 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  v42 = *(v12 - 8);
  v43 = v12;
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v41 - v14;
  v44 = *(AssociatedTypeWitness - 8);
  v16 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v41 - v18;
  v20 = *(a1 + 32);
  if (sub_1CF056558())
  {
    v21 = *(v8 + 616);
    v22 = *(v8 + 600);
    v23 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = swift_getAssociatedConformanceWitness();
    v49 = v23;
    v50 = AssociatedTypeWitness;
LABEL_3:
    v51 = AssociatedConformanceWitness;
    v52 = v25;
    v26 = type metadata accessor for ReconciliationID();
    return (*(*(v26 - 8) + 56))(v48, 1, 1, v26);
  }

  v41[1] = v10;
  v41[2] = v9;
  v28 = v53;
  result = (*(**(a1 + 16) + 160))(v6 + *(*v6 + 576), v45, v46, v47);
  if (!v28)
  {
    v53 = 0;
    v29 = v44;
    if ((*(v44 + 48))(v15, 1, AssociatedTypeWitness) == 1)
    {
      (*(v42 + 8))(v15, v43);
      v30 = *(v8 + 616);
      v31 = *(v8 + 600);
      v32 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v25 = swift_getAssociatedConformanceWitness();
      v49 = v32;
      v50 = AssociatedTypeWitness;
      goto LABEL_3;
    }

    v33 = *(v29 + 32);
    v33(v19, v15, AssociatedTypeWitness);
    v34 = v48;
    v33(v48, v19, AssociatedTypeWitness);
    v35 = *(v8 + 616);
    v36 = *(v8 + 600);
    v37 = swift_getAssociatedTypeWitness();
    v38 = swift_getAssociatedConformanceWitness();
    v39 = swift_getAssociatedConformanceWitness();
    v49 = v37;
    v50 = AssociatedTypeWitness;
    v51 = v38;
    v52 = v39;
    v40 = type metadata accessor for ReconciliationID();
    swift_storeEnumTagMultiPayload();
    return (*(*(v40 - 8) + 56))(v34, 0, 1, v40);
  }

  return result;
}

uint64_t sub_1CF64C5BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 576);
  v4 = (*v1 + 608);
  v5 = *(*v1 + 616);
  v6 = *(*v1 + 600);
  v7 = (*v1 + 624);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v3, AssociatedTypeWitness);
  v9 = *v4;
  v10 = *v7;
  type metadata accessor for DirectionalTestingOperation();
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for TestingOperation();
  swift_storeEnumTagMultiPayload();
  return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
}

uint64_t sub_1CF64C758(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(*v3 + 600);
  v6 = *(*v3 + 616);
  v7 = type metadata accessor for JobLockRule();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - v10 + 22;
  v12 = *(**(*(a2 + 32) + 16) + 312);

  LOBYTE(v12) = v12(v13);

  if (v12)
  {
    return 0;
  }

  swift_beginAccess();
  sub_1CEFCCBDC((v3 + 7), v18, &unk_1EC4C1BE0, &unk_1CF9FD400);
  v15 = v3[15];
  swift_storeEnumTagMultiPayload();
  v16 = sub_1CF052B3C(v18, v15, v11);
  (*(v8 + 8))(v11, v7);
  sub_1CEFCCC44(v18, &unk_1EC4C1BE0, &unk_1CF9FD400);
  return v16;
}

void sub_1CF64C94C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(*a1 + 216))();
  v13 = sub_1CF056904();

  v14 = *(a1[4] + 16);
  v15 = *(*a1 + 272);

  v21 = v15(v16);
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a1;
  v17[5] = v8;
  v17[6] = a5;
  v17[7] = a6;
  v17[8] = a3;
  v17[9] = v13;
  v18 = *(*v14 + 696);

  v18(v21, sub_1CF6588F8, v17);
}

uint64_t sub_1CF64CB0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27 = *a3;
  v15 = swift_allocObject();
  v15[2] = a9;
  v15[3] = a10;
  v15[4] = a4;
  v15[5] = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = a9;
  *(v17 + 24) = a10;
  *(v17 + 32) = a3;
  *(v17 + 40) = a2;
  v18 = *(a1 + 16);
  *(v17 + 48) = *a1;
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a1 + 32);
  *(v17 + 88) = a7;
  *(v17 + 96) = a4;
  *(v17 + 104) = a5;
  *(v17 + 112) = a6;
  *(v17 + 120) = a8;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v19 = *(v27 + 80);
  v20 = *(v27 + 96);
  type metadata accessor for FileTreeWriter.EventStreamBatch();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v21 = sub_1CF9E8238();
  (*(*(v21 - 8) + 16))(v28, a1, v21);
  v22 = type metadata accessor for Continuation();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF55942C, v15, sub_1CF559418, v16, sub_1CF65892C, v17, v22, MEMORY[0x1E69E6158]);
}

void *sub_1CF64CD58(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (**a5)(uint64_t, uint64_t), uint64_t *a6, void (*a7)(uint64_t *, void, void, void, uint64_t), uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v213 = a7;
  v229 = a5;
  v238 = a1;
  v239 = a4;
  v15 = *a2;
  v16 = *(*a2 + 80);
  v17 = *(*a2 + 96);
  v222 = type metadata accessor for FileTreeError();
  v209 = *(v222 - 8);
  v18 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v222);
  v217 = &v207 - v19;
  v20 = sub_1CF9E75D8();
  v225 = *(v20 - 8);
  v21 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v221 = &v207 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v218 = &v207 - v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v224 = sub_1CF9E75D8();
  v211 = *(v224 - 8);
  v26 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v219 = &v207 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v226 = &v207 - v29;
  v246 = v20;
  v30 = sub_1CF9E75D8();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v242 = &v207 - v32;
  v234 = *(v16 - 1);
  v214 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v243 = &v207 - v34;
  v231 = sub_1CF9E5CF8();
  v228 = *(v231 - 1);
  v35 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v231);
  v230 = &v207 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = *(AssociatedTypeWitness - 8);
  v37 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v227 = &v207 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v241 = &v207 - v41;
  v210 = v42;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v236 = &v207 - v45;
  v216 = v15;
  v46 = *(v15 + 152);
  v237 = a2;
  v47 = v46(v44);
  v244 = v16;
  v245 = AssociatedTypeWitness;
  v215 = v47;
  v212 = a8;
  v233 = v17;
  if ((v47 & 0x40) != 0)
  {
    v60 = v213;
    v61 = a6;
  }

  else
  {
    v235 = a6;
    v48 = 0;
    v49 = a3;
    v240 = *(a3 + 16);
    while (v240 != v48)
    {
      v50 = *(type metadata accessor for SyncState() - 8);
      v51 = v49 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v48;
      v52 = v237[6];
      v53 = v237[7];
      ObjectType = swift_getObjectType();
      v56 = v238[3];
      v55 = v238[4];
      v57 = __swift_project_boxed_opaque_existential_1(v238, v56);
      v58 = v247;
      result = (*(v53 + 8))(v51, v57, v56, v55, ObjectType, v53);
      ++v48;
      v247 = v58;
      if (v58)
      {
        return result;
      }
    }

    v60 = v213;
    v16 = v244;
    AssociatedTypeWitness = v245;
    v17 = v233;
    a3 = v49;
    v61 = v235;
  }

  v62 = *(v239 + 32);
  v235 = *v239;
  if (v62)
  {
    _s3__C4CodeOMa_1(0);
    v251 = -1002;
    sub_1CF00BC98(&qword_1EDEA3590, _s3__C4CodeOMa_1);
    if (sub_1CF9E5658())
    {
      if ((v215 & 0x40) != 0)
      {
        v80 = v60;
        v180 = *(v237[4] + 16);
        v181 = *(v180 + 16);
        if (v181)
        {
          v182 = *(v180 + 24);
          v183 = type metadata accessor for FileTreeWriter.FileTreeChange();
          sub_1CF9E7FA8();
          v184 = *(*(v183 - 8) + 72);
          v185 = *(*(v183 - 8) + 80);
          swift_allocObject();

          v186 = v61;
          v187 = sub_1CF9E6D68();
          *v188 = 0;
          *(v188 + 8) = 7;
          *(v188 + 16) = 1;
          swift_storeEnumTagMultiPayload();
          v189 = v187;
          v61 = v186;
          v16 = v244;
          sub_1CF045898(v189);
          v181();
          sub_1CEFF7124(v181);
        }
      }

      else
      {
        v235 = v61;
        v63 = v216[11];
        v64 = v216[13];
        v251 = v16;
        v252 = v63;
        v253 = v17;
        v254 = v64;
        v246 = type metadata accessor for JobResult();
        v251 = v16;
        v252 = v63;
        v253 = v17;
        v254 = v64;
        type metadata accessor for Ingestion.FetchItemMetadata();
        v65 = v237[4];
        sub_1CF046AB4();
        v66 = v230;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v68 = v67;
        v69 = *(v228 + 8);
        result = v69(v66, v231);
        v70 = v68 * 1000000000.0;
        if (COERCE__INT64(fabs(v68 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_105;
        }

        if (v70 <= -9.22337204e18)
        {
          goto LABEL_106;
        }

        if (v70 >= 9.22337204e18)
        {
          goto LABEL_107;
        }

        v71 = v236;
        v72 = sub_1CF657094(v236, 0, v70, 0x8000, type metadata accessor for Ingestion.FetchItemMetadata);
        v73 = *(v223 + 8);
        v73(v71, v245);
        sub_1CF803A0C(v229, v72);

        sub_1CF685B34();
        v74 = v230;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v76 = v75;
        result = v69(v74, v231);
        v77 = v76 * 1000000000.0;
        if (COERCE__INT64(fabs(v76 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_108;
        }

        v16 = v244;
        v61 = v235;
        if (v77 <= -9.22337204e18)
        {
          goto LABEL_109;
        }

        if (v77 >= 9.22337204e18)
        {
          goto LABEL_110;
        }

        v78 = v236;
        v79 = sub_1CF657094(v236, 0, v77, 0x8000, type metadata accessor for Ingestion.FetchItemMetadata);
        v73(v78, v245);
        sub_1CF803A0C(v229, v79);

        v80 = v213;
        v17 = v233;
      }

      v190 = v216[11];
      v191 = v216[13];
      v251 = v16;
      v252 = v190;
      v253 = v17;
      v254 = v191;
      type metadata accessor for JobResult();
      v251 = v16;
      v252 = v190;
      v253 = v17;
      v254 = v191;
      type metadata accessor for Ingestion.FetchEventStream();
      v192 = v61;
      v193 = *(*v61 + 576);
      v194 = v230;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v196 = v195;
      result = (*(v228 + 8))(v194, v231);
      v197 = v196 * 1000000000.0;
      if (COERCE__INT64(fabs(v196 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_102;
      }

      if (v197 <= -9.22337204e18)
      {
        goto LABEL_103;
      }

      if (v197 >= 9.22337204e18)
      {
        goto LABEL_104;
      }

      v198 = sub_1CF0523F0(v192 + v193, 0x2000000000000000, v197, v192[17]);
      sub_1CF803A0C(v229, v198);

      sub_1CF1A91AC(v238, &v251);
      type metadata accessor for NSFileProviderError(0);
      v255 = -1002;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00BC98(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
      sub_1CF9E57D8();
      v199 = v249;
      v80(&v251, 0, 0, 0, v249);
    }

    else
    {
      v151 = v60;
      v152 = v216[11];
      v153 = v216[13];
      v251 = v16;
      v252 = v152;
      v253 = v17;
      v254 = v153;
      type metadata accessor for JobResult();
      v251 = v16;
      v252 = v152;
      v253 = v17;
      v254 = v153;
      type metadata accessor for Ingestion.FetchEventStream();
      v154 = v61;
      v155 = *(*v61 + 576);
      v156 = v230;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v158 = v157;
      result = (*(v228 + 8))(v156, v231);
      v159 = v158 * 1000000000.0;
      if (COERCE__INT64(fabs(v158 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_97;
      }

      if (v159 <= -9.22337204e18)
      {
        goto LABEL_99;
      }

      if (v159 >= 9.22337204e18)
      {
        goto LABEL_101;
      }

      v160 = sub_1CF0523F0(v154 + v155, 0x2000000000000000, v159, v154[17]);
      sub_1CF803A0C(v229, v160);

      sub_1CF1A91AC(v238, &v251);
      v151(&v251, 0, 0, 0, v235);
    }

    return sub_1CEFCCC44(&v251, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v232 = *(v239 + 8);
  v81 = *(v239 + 24);
  v208 = *(v239 + 16);
  v207 = a3;
  if (v208)
  {
    v82 = v216[11];
    v83 = v216[13];
    v251 = v16;
    v252 = v82;
    v253 = v17;
    v254 = v83;
    type metadata accessor for JobResult();
    v251 = v16;
    v252 = v82;
    v253 = v17;
    v254 = v83;
    type metadata accessor for Ingestion.FetchEventStream();
    v84 = *(*v61 + 576);
    v85 = v230;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v87 = v86;
    result = (*(v228 + 8))(v85, v231);
    v88 = v87 * 1000000000.0;
    if (COERCE__INT64(fabs(v87 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_96;
    }

    if (v88 <= -9.22337204e18)
    {
      goto LABEL_98;
    }

    if (v88 >= 9.22337204e18)
    {
      goto LABEL_100;
    }

    v89 = sub_1CF0523F0(v61 + v84, 0x2000000000000000, v88, v61[17]);
    sub_1CF803A0C(v229, v89);

    AssociatedTypeWitness = v245;
  }

  v90 = v246;
  swift_getTupleTypeMetadata2();
  v91 = sub_1CF9E6DA8();
  v240 = *(swift_getAssociatedConformanceWitness() + 40);
  v92 = sub_1CF04F294(v91, AssociatedTypeWitness, v90, v240);

  v255 = v92;
  v93 = v235;
  if (sub_1CF9E6DF8())
  {
    v94 = 0;
    v230 = v17[8];
    v231 = (v17 + 8);
    v239 = v234 + 16;
    v229 = (v234 + 56);
    v228 = v225 + 56;
    v95 = (v234 + 8);
    v96 = v242;
    do
    {
      v97 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v97)
      {
        v98 = v93 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v94;
        v99 = *(v234 + 16);
        (v99)(v243, v98, v16);
        v100 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v214 != 8)
        {
          goto LABEL_111;
        }

        v251 = result;
        v99 = *v239;
        (*v239)(v243, &v251, v16);
        swift_unknownObjectRelease();
        v100 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
LABEL_32:
          __break(1u);
          break;
        }
      }

      v102 = v243;
      v101 = v244;
      (v230)(v244, v233);
      (v99)(v96, v102, v101);
      (*v229)(v96, 0, 1, v101);
      (*v228)(v96, 0, 1, v246);
      sub_1CF9E6708();
      sub_1CF9E6738();
      (*v95)(v102, v101);
      v93 = v235;
      ++v94;
      v16 = v101;
    }

    while (v100 != sub_1CF9E6DF8());
  }

  v103 = v232;
  v104 = v245;
  result = sub_1CF9E6DF8();
  v105 = v223;
  if (!result)
  {
    goto LABEL_44;
  }

  v106 = 0;
  v107 = (v223 + 16);
  v108 = (v234 + 56);
  v109 = (v225 + 56);
  while (1)
  {
    v110 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v110 & 1) == 0)
    {
      break;
    }

    result = (*(v105 + 16))(v241, v103 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v106, v104);
    v111 = (v106 + 1);
    if (__OFADD__(v106, 1))
    {
      goto LABEL_43;
    }

LABEL_37:
    v112 = v242;
    (*v108)(v242, 1, 1, v244);
    (*v109)(v112, 0, 1, v246);
    sub_1CF9E6708();
    sub_1CF9E6738();
    v113 = v232;
    result = sub_1CF9E6DF8();
    ++v106;
    v114 = v111 == result;
    v103 = v113;
    if (v114)
    {
      goto LABEL_44;
    }
  }

  result = sub_1CF9E7998();
  if (v210 != 8)
  {
    goto LABEL_112;
  }

  v251 = result;
  (*v107)(v241, &v251, v104);
  result = swift_unknownObjectRelease();
  v111 = (v106 + 1);
  if (!__OFADD__(v106, 1))
  {
    goto LABEL_37;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  v234 = a11;
  v239 = a10;
  v231 = a9;
  if ((v215 & 0x40) != 0)
  {
    v161 = *(v237[4] + 16);
    v162 = *(v161 + 16);
    if (v162)
    {
      v163 = *(v161 + 24);
      v251 = v255;
      MEMORY[0x1EEE9AC00](result);
      v164 = v216;
      v165 = v239;
      *(&v207 - 6) = v216[11];
      *(&v207 - 5) = v165;
      v166 = v234;
      *(&v207 - 4) = v164[13];
      *(&v207 - 3) = v166;
      *(&v207 - 2) = v231;
      MEMORY[0x1EEE9AC00](v167);
      *(&v207 - 8) = v244;
      *(&v207 - 7) = v168;
      v169 = v233;
      *(&v207 - 6) = v170;
      *(&v207 - 5) = v169;
      *(&v207 - 4) = v171;
      *(&v207 - 3) = v166;
      *(&v207 - 2) = sub_1CF65896C;
      *(&v207 - 1) = v172;
      v173 = sub_1CF9E6708();
      v174 = type metadata accessor for FileTreeWriter.FileTreeChange();

      WitnessTable = swift_getWitnessTable();
      v176 = v247;
      v178 = sub_1CF054A5C(sub_1CF65897C, (&v207 - 10), v173, v174, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v177);
      v247 = v176;

      v162(v178, v207, 0, 0);
      v179 = v213;
      sub_1CEFF7124(v162);
    }

    else
    {

      v179 = v213;
    }

LABEL_81:
    if (v81 >= 30.0)
    {
      sub_1CF2F462C();
      v200 = swift_allocError();
      *v201 = 0;
      *(v201 + 8) = 0;
      *(v201 + 16) = -4;
    }

    else
    {
      v200 = 0;
    }

    sub_1CF1A91AC(v238, &v251);
    v249 = 0;
    v250 = 0xE000000000000000;
    v202 = v200;
    sub_1CF9E7948();

    v249 = 0x646574616470753CLL;
    v250 = 0xE90000000000003ALL;
    v248 = sub_1CF9E6DF8();
    v203 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v203);

    MEMORY[0x1D3868CC0](0x6F6974656C656420, 0xEB000000003A736ELL);
    v248 = sub_1CF9E6DF8();
    v204 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v204);

    MEMORY[0x1D3868CC0](0x65726F4D73616820, 0xE90000000000003ALL);
    if (v208)
    {
      v205 = 1702195828;
    }

    else
    {
      v205 = 0x65736C6166;
    }

    if (v208)
    {
      v206 = 0xE400000000000000;
    }

    else
    {
      v206 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v205, v206);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v179(&v251, 0, v249, v250, v200);

    return sub_1CEFCCC44(&v251, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v115 = 0;
  v117 = v255 + 64;
  v116 = *(v255 + 64);
  v216 = v255;
  v118 = 1 << *(v255 + 32);
  v119 = -1;
  if (v118 < 64)
  {
    v119 = ~(-1 << v118);
  }

  v120 = v119 & v116;
  v210 = (v118 + 63) >> 6;
  v121 = TupleTypeMetadata2;
  v240 = TupleTypeMetadata2 - 8;
  v215 = v105 + 16;
  v214 = v225 + 16;
  v242 = (v225 + 32);
  v243 = (v105 + 32);
  v233 = (v211 + 32);
  v229 = (v225 + 8);
  v230 = (v105 + 8);
  v122 = v222;
  v123 = v221;
  v124 = v219;
  v125 = v226;
  v228 = v255 + 64;
  while (v120)
  {
    v126 = v115;
LABEL_60:
    v129 = __clz(__rbit64(v120));
    v120 &= v120 - 1;
    v130 = v129 | (v126 << 6);
    v131 = v216;
    v132 = v223;
    v133 = v236;
    v134 = v245;
    (*(v223 + 16))(v236, v216[6] + *(v223 + 72) * v130, v245);
    v135 = v225;
    v136 = v131[7] + *(v225 + 72) * v130;
    v137 = v218;
    v138 = v246;
    (*(v225 + 16))(v218, v136, v246);
    v121 = TupleTypeMetadata2;
    v241 = *(TupleTypeMetadata2 + 48);
    v139 = *(v132 + 32);
    v140 = v219;
    v139(v219, v133, v134);
    v141 = *(v135 + 32);
    v124 = v140;
    v141(&v241[v140], v137, v138);
    v142 = 0;
    v122 = v222;
    v123 = v221;
    v125 = v226;
LABEL_61:
    v143 = *(v121 - 8);
    (*(v143 + 56))(v124, v142, 1, v121);
    (*v233)(v125, v124, v224);
    if ((*(v143 + 48))(v125, 1, v121) == 1)
    {

      v179 = v213;
      goto LABEL_81;
    }

    v144 = *(v121 + 48);
    v145 = v227;
    (*v243)(v227, v125, v245);
    (*v242)(v123, &v125[v144], v246);
    v146 = objc_autoreleasePoolPush();
    v147 = v247;
    sub_1CF64EBD8(v238, v145, v123, v231, v237, v239, v234, &v251);
    if (v147)
    {
      v148 = v251;
      objc_autoreleasePoolPop(v146);
      v251 = v148;
      v247 = v148;
      v149 = v148;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v150 = v217;
      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_94:

        (*v229)(v123, v246);
        return (*v230)(v227, v245);
      }

      if (swift_getEnumCaseMultiPayload() != 15)
      {

        (*(v209 + 8))(v150, v122);
        goto LABEL_94;
      }

      v247 = 0;
      v125 = v226;
    }

    else
    {
      v247 = 0;
      objc_autoreleasePoolPop(v146);
    }

    (*v229)(v123, v246);
    result = (*v230)(v227, v245);
    v117 = v228;
  }

  if (v210 <= v115 + 1)
  {
    v127 = v115 + 1;
  }

  else
  {
    v127 = v210;
  }

  v128 = v127 - 1;
  while (1)
  {
    v126 = v115 + 1;
    if (__OFADD__(v115, 1))
    {
      break;
    }

    if (v126 >= v210)
    {
      v120 = 0;
      v142 = 1;
      v115 = v128;
      goto LABEL_61;
    }

    v120 = *(v117 + 8 * v126);
    ++v115;
    if (v120)
    {
      v115 = v126;
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
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
LABEL_112:
  __break(1u);
  return result;
}

uint64_t sub_1CF64E978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(*a3 + 88);
  v9 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  sub_1CF9E75D8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v13 = *(TupleTypeMetadata3 + 48);
  v14 = *(TupleTypeMetadata3 + 64);
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);
  (*(*(v11 - 8) + 16))(a4 + v13, a2, v11);
  *(a4 + v14) = a3;
  type metadata accessor for FileTreeWriter.FileTreeChange();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF64EB20(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_1CF64EBD8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v52 = a8;
  v58 = a3;
  v57 = a2;
  v11 = *a4;
  v12 = *a5;
  v13 = sub_1CF9E5CF8();
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v11 + 80);
  v17 = *(v11 + 88);
  v56 = type metadata accessor for FileTreeWriter.FileTreeChange();
  v18 = *(v56 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v21 = (&v48 - v20);
  v22 = *(v12 + 88);
  v23 = *(v12 + 104);
  v60 = v16;
  v61 = v22;
  v62 = v17;
  v63 = v23;
  type metadata accessor for ConcreteJobResult();
  v53 = sub_1CF056580();
  v24 = a1[3];
  v55 = a1[4];
  v51 = a1;
  v54 = __swift_project_boxed_opaque_existential_1(a1, v24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = sub_1CF9E75D8();
  type metadata accessor for JobLockAggregator();
  sub_1CF9E75D8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v28 = *(TupleTypeMetadata3 + 48);
  v29 = *(TupleTypeMetadata3 + 64);
  (*(*(AssociatedTypeWitness - 8) + 16))(v21, v57, AssociatedTypeWitness);
  v30 = *(*(v26 - 8) + 16);
  v31 = v21 + v28;
  v32 = v53;
  v33 = v26;
  v34 = v56;
  v30(v31, v58, v33);
  *(v21 + v29) = a4;
  swift_storeEnumTagMultiPayload();

  v35 = v59;
  sub_1CF6180A8(v21, 0, v32, a5, v54, v24, v55);
  if (v35)
  {

    result = (*(v18 + 8))(v21, v34);
    *v52 = v35;
    return result;
  }

  (*(v18 + 8))(v21, v34);
  v37 = v51;
  v38 = v51[3];
  v39 = v51[4];
  v40 = __swift_project_boxed_opaque_existential_1(v51, v38);
  v41 = v48;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v43 = v42;
  result = (*(v49 + 8))(v41, v50);
  v44 = v43 * 1000000000.0;
  if (COERCE__INT64(fabs(v43 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v44 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v44 < 9.22337204e18)
  {
    sub_1CF521850(v32, v44, v40, v38, v39);
    v45 = v37[3];
    v46 = v37[4];
    v47 = __swift_project_boxed_opaque_existential_1(v37, v45);
    (*(*a5 + 576))(v47, v45, v46);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1CF64F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(*(a1 + 32) + 16);
  v15 = *(*v8 + 576);
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a1;
  v16[5] = a5;
  v16[6] = a6;
  v17 = *(*v14 + 616);

  v17(v8 + v15, sub_1CF658844, v16);
}

uint64_t sub_1CF64F1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = type metadata accessor for Continuation();
  swift_retain_n();
  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559418, v5, sub_1CF658854, v6, v7, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF64F2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(*(a1 + 32) + 16);
  v15 = v8[10];
  v27[0] = v8[9];
  v27[1] = v15;
  v16 = v8[12];
  v18 = v8[9];
  v17 = v8[10];
  v27[2] = v8[11];
  v27[3] = v16;
  v23 = v18;
  v24 = v17;
  v19 = v8[12];
  v25 = v8[11];
  v26 = v19;
  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = a8;
  v20[4] = a1;
  v20[5] = a5;
  v20[6] = a6;
  v21 = *(*v14 + 728);

  sub_1CF1AE1DC(v27, v28);

  v21(&v23, sub_1CF6587C8, v20);

  v28[0] = v23;
  v28[1] = v24;
  v28[2] = v25;
  v28[3] = v26;
  return sub_1CF1AE25C(v28);
}

uint64_t sub_1CF64F480(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v4[9] = *a1;
  v4[10] = v5;
  v6 = a1[3];
  v4[11] = a1[2];
  v4[12] = v6;
  return sub_1CF0525C8(a2, a3, a4);
}

uint64_t sub_1CF64F4A4()
{
  v3 = *(v0 + 144);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  return 979659110;
}

uint64_t sub_1CF64F514@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 560);
  v5 = *(*v1 + 544);
  swift_getAssociatedTypeWitness();
  v6 = *(v3 + 568);
  v7 = *(v3 + 552);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ReconciliationID();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

uint64_t sub_1CF64F680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(*(a1 + 32) + 16);
  v15 = v8[10];
  v27[0] = v8[9];
  v27[1] = v15;
  v16 = v8[12];
  v18 = v8[9];
  v17 = v8[10];
  v27[2] = v8[11];
  v27[3] = v16;
  v23 = v18;
  v24 = v17;
  v19 = v8[12];
  v25 = v8[11];
  v26 = v19;
  v20 = swift_allocObject();
  v20[2] = a7;
  v20[3] = a8;
  v20[4] = a1;
  v20[5] = a5;
  v20[6] = a6;
  v21 = *(*v14 + 816);

  sub_1CF1AE1DC(v27, v28);

  v21(&v23, sub_1CF658774, v20);

  v28[0] = v23;
  v28[1] = v24;
  v28[2] = v25;
  v28[3] = v26;
  return sub_1CF1AE25C(v28);
}

uint64_t sub_1CF64F7C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a1;
  swift_retain_n();
  v15 = a1;
  v16 = type metadata accessor for Continuation();
  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, a9, v13, a10, v14, v16, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF64F8E0()
{
  v0 = sub_1CF04ADA4();
  sub_1CEFE48D8(*(v0 + 160), *(v0 + 168));
  return v0;
}

uint64_t sub_1CF64F918()
{
  v0 = sub_1CF04ADA4();
  sub_1CEFE48D8(*(v0 + 160), *(v0 + 168));

  return swift_deallocClassInstance();
}

uint64_t sub_1CF64F97C(uint64_t a1)
{
  v1 = *(a1 + 560);
  v2 = *(a1 + 544);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF64FA44()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 576);
  v4 = *(*v0 + 560);
  v5 = *(v2 + 544);
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](540945696, 0xE400000000000000);
  v7 = *(*v1 + 584);
  sub_1CF9E7FE8();
  return 0;
}

uint64_t sub_1CF64FB60@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 576);
  v5 = *(*v1 + 560);
  v6 = *(*v1 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, v1 + v4, AssociatedTypeWitness);
  v8 = *(v3 + 568);
  v9 = *(v3 + 552);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF64FCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v53 = a3;
  v54 = a4;
  v49 = a1;
  v9 = *v6;
  v10 = *(*v6 + 560);
  v11 = *(*v6 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v50 = *(v13 - 8);
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - v15;
  v51 = AssociatedTypeWitness;
  v52 = *(AssociatedTypeWitness - 8);
  v17 = *(v52 + 64);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - v20;
  v22 = *(v9 + 576);
  v23 = *(a5 + 8);
  v24 = *(a2 + 32);
  v25 = v56;
  (*(*v24 + 288))(&v6[v22], v53, v54, v23, v19);
  if (!v25)
  {
    v26 = v50;
    v56 = 0;
    if ((*(v52 + 48))(v16, 1, v51) == 1)
    {
      (*(v26 + 8))(v16, v13);
      return 0;
    }

    else
    {
      v27 = v52;
      v28 = *(v52 + 32);
      v48 = v21;
      v29 = v21;
      v30 = v51;
      v28(v29, v16, v51);
      swift_beginAccess();
      sub_1CEFCCBDC((v6 + 56), v55, &unk_1EC4C1BE0, &unk_1CF9FD400);
      v54 = *(v6 + 15);
      v31 = type metadata accessor for JobLockRule();
      v50 = v31;
      sub_1CF9E7FA8();
      v32 = *(v31 - 8);
      v47 = *(v32 + 72);
      v33 = *(v32 + 80);
      swift_allocObject();
      v53 = sub_1CF9E6D68();
      v35 = v34;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v37 = *(TupleTypeMetadata3 + 48);
      v38 = *(TupleTypeMetadata3 + 64);
      v39 = *(v27 + 16);
      v39(v35, &v6[v22], v30);
      v40 = v35 + v37;
      v41 = v48;
      v39(v40, v48, v30);
      v39(v35 + v38, v41, v30);
      swift_storeEnumTagMultiPayload();
      v42 = v35 + v47;
      v43 = *(TupleTypeMetadata3 + 48);
      v44 = *(TupleTypeMetadata3 + 64);
      v39(v42, &v6[*(*v6 + 584)], v30);
      v45 = v48;
      v39(v42 + v43, v48, v30);
      v39(v42 + v44, v45, v30);
      swift_storeEnumTagMultiPayload();
      sub_1CF045898(v53);
      v24 = sub_1CF052C94();

      sub_1CEFCCC44(v55, &unk_1EC4C1BE0, &unk_1CF9FD400);
      (*(v52 + 8))(v45, v30);
    }
  }

  return v24;
}

uint64_t sub_1CF6501B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v167 = a7;
  v168 = a8;
  v161 = a5;
  v162 = a6;
  v169 = a4;
  v163 = a3;
  v164 = a1;
  v9 = v8;
  v10 = *v8;
  v11 = v10[69];
  v12 = v9;
  v156 = v10[71];
  v13 = v156;
  v14 = v11;
  v157 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v145 = sub_1CF9E75D8();
  v143 = *(v145 - 8);
  v16 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v146 = &v131 - v17;
  v18 = v12;
  v19 = v10[68];
  v20 = v10[70];
  v21 = v18;
  v22 = type metadata accessor for SnapshotItem();
  v148 = sub_1CF9E75D8();
  v147 = *(v148 - 8);
  v23 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v142 = &v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v160 = &v131 - v26;
  v150 = v22;
  v151 = *(v22 - 8);
  v27 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v140 = &v131 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v149 = &v131 - v31;
  *&v32 = v19;
  *(&v32 + 1) = v14;
  *&v33 = v20;
  *(&v33 + 1) = v13;
  v165 = v33;
  v166 = v32;
  v171 = v33;
  v170 = v32;
  v34 = type metadata accessor for ReconciliationMutation();
  v35 = *(v34 - 8);
  v158 = v34;
  v159 = v35;
  v36 = *(v35 + 8);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v131 - v37;
  v39 = swift_getAssociatedTypeWitness();
  v40 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = swift_getAssociatedConformanceWitness();
  *&v170 = v39;
  *(&v170 + 1) = v40;
  *&v171 = AssociatedConformanceWitness;
  *(&v171 + 1) = v42;
  v154 = type metadata accessor for FileItemVersion();
  v153 = *(v154 - 8);
  v43 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v152 = &v131 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v141 = &v131 - v46;
  v171 = v165;
  v170 = v166;
  v155 = type metadata accessor for JobResult();
  v47 = swift_getAssociatedTypeWitness();
  v48 = swift_getAssociatedConformanceWitness();
  v49 = swift_getAssociatedConformanceWitness();
  *&v170 = v47;
  *(&v170 + 1) = AssociatedTypeWitness;
  v144 = AssociatedTypeWitness;
  *&v171 = v48;
  *(&v171 + 1) = v49;
  type metadata accessor for ReconciliationID();
  type metadata accessor for ReconciliationSideMutation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = v10;
  v52 = &v38[*(TupleTypeMetadata2 + 48)];
  v53 = v21;
  v54 = v51[73];
  v55 = *(v47 - 8);
  v157 = *(v55 + 16);
  v156 = v55 + 16;
  v157(v38, &v21[v54], v47);
  swift_storeEnumTagMultiPayload();
  *v52 = xmmword_1CF9FD920;
  v52[16] = 4;
  swift_storeEnumTagMultiPayload();
  v56 = v158;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v163, v38);
  v57 = v167;
  v159[1](v38, v56);
  v58 = *(v164 + 32);
  v59 = *(*v58 + 240);
  v60 = *v58 + 240;
  v61 = *(v168 + 8);
  v62 = v53;
  v63 = &v53[v54];
  v64 = v160;
  v59(v63, 1, v169, v57, v61);
  v139 = v61;
  v136 = v60;
  v155 = 0;
  v137 = v59;
  v138 = v58;
  v65 = v149;
  v135 = v54;
  v158 = v47;
  v159 = v62;
  v66 = v151;
  v67 = *(v151 + 48);
  v68 = v150;
  if (v67(v64, 1, v150) == 1)
  {
    (*(v147 + 8))(v64, v148);
    v171 = v165;
    v170 = v166;
    type metadata accessor for Propagation.PropagationError();
    swift_getWitnessTable();
    v69 = swift_allocError();
    v71 = v70;
    v72 = v158;
    v73 = (v70 + *(swift_getTupleTypeMetadata2() + 48));
    v157(v71, v159 + *(*v159 + 72), v72);
    *v73 = 0xD000000000000013;
    v73[1] = 0x80000001CFA553B0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v74 = v69;
    v75 = 0;
LABEL_11:
    v94 = v167;
LABEL_12:
    *(&v171 + 1) = v94;
    v172 = v168;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v170);
    (*(*(v94 - 8) + 16))(boxed_opaque_existential_0, v169, v94);
    v104 = v74;
    v161(&v170, 0, 0, 0, v74);

    result = sub_1CEFCCC44(&v170, &unk_1EC4C1B30, &qword_1CFA05300);
    if (v75)
    {
      return (*(v153 + 8))(v152, v154);
    }

    return result;
  }

  v134 = v67;
  v160 = *(v66 + 32);
  (v160)(v65, v64, v68);
  v76 = v153 + 16;
  v77 = &v65[*(v68 + 40)];
  v133 = *(v153 + 16);
  v133(v152, v77, v154);
  WitnessTable = swift_getWitnessTable();
  sub_1CF06D940(v68, WitnessTable, &v170);
  v80 = *(v66 + 8);
  v79 = v66 + 8;
  v78 = v80;
  v80(v65, v68);
  LODWORD(v149) = v170;
  v81 = *(*v159 + 72);
  v82 = v146;
  v83 = v139;
  v74 = v155;
  (*(**(v164 + 16) + 160))(v159 + v81, v169, v167, v139);
  if (v74)
  {
    v75 = 1;
    goto LABEL_11;
  }

  v131 = v76;
  v155 = v78;
  v84 = v79;
  v85 = v81;
  v86 = v160;
  v151 = v84;
  v87 = (*(*(v144 - 8) + 48))(v82, 1);
  (*(v143 + 8))(v82, v145);
  if (v87 != 1)
  {
    v170 = v166;
    v171 = v165;
    type metadata accessor for Propagation.PropagationError();
    swift_getWitnessTable();
    v98 = swift_allocError();
    v100 = v99;
    v101 = v158;
    v102 = (v99 + *(swift_getTupleTypeMetadata2() + 48));
    v157(v100, v159 + v85, v101);
    *v102 = 0xD000000000000019;
    v102[1] = 0x80000001CFA55400;
    v75 = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v74 = v98;
    goto LABEL_11;
  }

  v88 = v142;
  v89 = v83;
  v90 = v138;
  v137(v159 + v81, 1, v169, v167, v89);
  v92 = v157;
  v91 = v158;
  v93 = v150;
  if (v134(v88, 1, v150) == 1)
  {
    (*(v147 + 8))(v88, v148);
    v94 = v167;
    v95 = v159;
    if (v149 == 1)
    {
      *(&v171 + 1) = v167;
      v172 = v168;
      v96 = __swift_allocate_boxed_opaque_existential_0(&v170);
      (*(*(v94 - 8) + 16))(v96, v169, v94);
      v161(&v170, 0, 0, 0, 0);
      (*(v153 + 8))(v152, v154);
      return sub_1CEFCCC44(&v170, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    v170 = v166;
    v171 = v165;
    type metadata accessor for Propagation.PropagationError();
    swift_getWitnessTable();
    v119 = swift_allocError();
    v121 = v120;
    v122 = (v120 + *(swift_getTupleTypeMetadata2() + 48));
    v92(v121, v95 + v85, v91);
    *v122 = 0xD00000000000002DLL;
    v122[1] = 0x80000001CFA553D0;
    v75 = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v74 = v119;
    goto LABEL_12;
  }

  v105 = v140;
  v86(v140, v88, v93);
  sub_1CF06D940(v93, WitnessTable, &v170);
  v106 = v93;
  v107 = v170;
  v108 = v141;
  v133(v141, &v105[*(v106 + 40)], v154);
  v155(v105, v106);
  v109 = *(v90 + 16);
  v110 = v107 == 1;
  v111 = v167;
  v112 = v159;
  if (v110)
  {
    v113 = swift_allocObject();
    v114 = v168;
    v113[2] = v111;
    v113[3] = v114;
    v115 = v163;
    v116 = v161;
    v117 = v162;
    v113[4] = v164;
    v113[5] = v116;
    v113[6] = v117;
    v113[7] = v115;
    v113[8] = v112;
    v118 = *(*v109 + 672);

    v118(v112 + v85, v112 + v135, sub_1CF6586E8, v113);
    v128 = v152;
  }

  else
  {
    v123 = swift_allocObject();
    v124 = v168;
    v123[2] = v111;
    v123[3] = v124;
    v125 = v163;
    v123[4] = v164;
    v123[5] = v112;
    v126 = v162;
    v123[6] = v161;
    v123[7] = v126;
    v123[8] = v125;
    v127 = *(*v109 + 680);

    v128 = v152;
    v127(v112 + v85, v108, v112 + v135, v152, sub_1CF6586D0, v123);
  }

  v129 = *(v153 + 8);
  v130 = v154;
  v129(v128, v154);
  return (v129)(v108, v130);
}

uint64_t sub_1CF651240(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a1;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = a2;
  v17[8] = a3;
  v17[9] = a4;
  swift_retain_n();
  v18 = a1;
  v19 = type metadata accessor for Continuation();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559418, v16, sub_1CF65871C, v17, v19, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF6513A4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(uint64_t *, void, void, void, uint64_t), uint64_t a7)
{
  v73 = a5;
  v70 = a7;
  v71 = a6;
  v79 = a2;
  v72 = a1;
  v10 = *(*a3 + 88);
  v11 = *(*a3 + 96);
  v12 = *(*a3 + 104);
  v75 = *(*a3 + 80);
  v9 = v75;
  v76 = v10;
  v77 = v11;
  v78 = v12;
  v13 = type metadata accessor for ReconciliationMutation();
  v63 = *(v13 - 8);
  v64 = v13;
  v14 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v59 - v15;
  v76 = v10;
  v77 = v11;
  v78 = v12;
  v16 = type metadata accessor for ItemReconciliation();
  v17 = sub_1CF9E75D8();
  v65 = *(v17 - 8);
  v66 = v17;
  v18 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v59 - v19;
  v68 = v16;
  v69 = *(v16 - 8);
  v21 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v67 = &v59 - v23;
  v24 = type metadata accessor for SnapshotItem();
  v25 = sub_1CF9E75D8();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v30 = &v59 - v29;
  if (v79)
  {
    v60 = v12;
    v61 = a3;
    v31 = v72;
    v32 = v72[3];
    v33 = v72[4];
    v34 = __swift_project_boxed_opaque_existential_1(v72, v32);
    v35 = v74;
    v36 = v73[2];
    v37 = *(v33 + 8);
    v38 = *(*a4 + 576);
    result = sub_1CF68DDB0(a4 + v38, v34, v32, v37, v20);
    if (!v35)
    {
      v59 = v38;
      v73 = a4;
      v74 = 0;
      v40 = v31;
      v42 = v68;
      v41 = v69;
      if ((*(v69 + 48))(v20, 1, v68) == 1)
      {
        (*(v65 + 8))(v20, v66);
        sub_1CF1A91AC(v40, &v75);
        v71(&v75, 0, 0, 0, v79);
        return sub_1CEFCCC44(&v75, &unk_1EC4C1B30, &qword_1CFA05300);
      }

      else
      {
        v49 = v67;
        (*(v41 + 32))(v67, v20, v42);
        if (sub_1CF07CD80(v42) || *&v49[*(type metadata accessor for ItemReconciliationHalf() + 36)])
        {
          sub_1CF1A91AC(v40, &v75);
          v71(&v75, 0, 0, 0, v79);
          sub_1CEFCCC44(&v75, &unk_1EC4C1B30, &qword_1CFA05300);
          return (*(v41 + 8))(v49, v42);
        }

        else
        {
          v75 = v9;
          v76 = v10;
          v77 = v11;
          v78 = v60;
          v66 = type metadata accessor for JobResult();
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v51 = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v53 = swift_getAssociatedConformanceWitness();
          v75 = AssociatedTypeWitness;
          v76 = v51;
          v77 = AssociatedConformanceWitness;
          v78 = v53;
          type metadata accessor for ReconciliationID();
          type metadata accessor for ReconciliationSideMutation();
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          v55 = v62;
          v56 = &v62[*(TupleTypeMetadata2 + 48)];
          v57 = v73;
          (*(*(AssociatedTypeWitness - 8) + 16))(v62, v73 + v59, AssociatedTypeWitness);
          swift_storeEnumTagMultiPayload();
          if (qword_1EDEABDE0 != -1)
          {
            swift_once();
          }

          *v56 = qword_1EDEABDE8;
          *(v56 + 8) = *(v57 + 15);
          swift_storeEnumTagMultiPayload();
          v58 = v64;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v61, v55);
          (*(v63 + 8))(v55, v58);
          sub_1CF1A91AC(v40, &v75);
          v71(&v75, 0, 0, 0, v79);
          sub_1CEFCCC44(&v75, &unk_1EC4C1B30, &qword_1CFA05300);
          return (*(v69 + 8))(v67, v42);
        }
      }
    }
  }

  else
  {
    v69 = v28;
    v79 = v27;
    v75 = v9;
    v76 = v10;
    v77 = v11;
    v78 = v12;
    v68 = type metadata accessor for JobResult();
    v75 = v9;
    v76 = v10;
    v77 = v11;
    v78 = v12;
    type metadata accessor for Ingestion.FetchChildrenMetadata();
    v43 = v72;
    v44 = sub_1CF657094(a4 + *(*a4 + 584), a4[15], a4[16], a4[17] | 0x800, type metadata accessor for Ingestion.FetchChildrenMetadata);
    sub_1CF803A0C(a3, v44);

    v46 = v43[3];
    v45 = v43[4];
    v47 = __swift_project_boxed_opaque_existential_1(v43, v46);
    (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
    v48 = v74;
    sub_1CF611904(v30, a4 + *(*a4 + 576), 0, 0, 0, v73, a4[15], a4[16], a4[17] | 0x400, a3, v47, v46, v45);
    if (v48)
    {
      return (*(v69 + 8))(v30, v79);
    }

    else
    {
      (*(v69 + 8))(v30, v79);
      sub_1CF1A91AC(v43, &v75);
      v71(&v75, 0, 0, 0, 0);
      return sub_1CEFCCC44(&v75, &unk_1EC4C1B30, &qword_1CFA05300);
    }
  }

  return result;
}

uint64_t sub_1CF651C00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a3;
  v15[5] = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a6;
  v17[5] = a3;
  v17[6] = a1;
  v17[7] = a2;
  v17[8] = a4;
  v17[9] = a5;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v18 = a1;
  v19 = type metadata accessor for Continuation();
  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF559114, v15, sub_1CF559418, v16, sub_1CF658748, v17, v19, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF651D94(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, void (*a6)(__int128 *, void, void, void, uint64_t), uint64_t a7)
{
  v43 = a7;
  v44 = a6;
  v41 = a5;
  v50 = a4;
  v51 = a1;
  v48 = a3;
  v8 = *a2;
  v9 = *(*a2 + 80);
  v10 = *(*a2 + 96);
  v39 = type metadata accessor for SnapshotItem();
  v40 = sub_1CF9E75D8();
  v38 = *(v40 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v38 - v12;
  *&v13 = v9;
  *(&v13 + 1) = *(v8 + 88);
  v53 = v13;
  v14 = *(v8 + 104);
  v45 = v10;
  *&v15 = v10;
  *(&v15 + 1) = v14;
  v52 = v15;
  v54 = v13;
  v55 = v15;
  v47 = type metadata accessor for ReconciliationMutation();
  v49 = *(v47 - 8);
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v18 = &v38 - v17;
  v54 = v53;
  v55 = v52;
  v46 = type metadata accessor for JobResult();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  *&v54 = AssociatedTypeWitness;
  *(&v54 + 1) = v20;
  v23 = v48;
  *&v55 = AssociatedConformanceWitness;
  *(&v55 + 1) = v22;
  type metadata accessor for ReconciliationID();
  type metadata accessor for ReconciliationSideMutation();
  v24 = &v18[*(swift_getTupleTypeMetadata2() + 48)];
  v25 = *(*v23 + 576);
  (*(*(AssociatedTypeWitness - 8) + 16))(v18, v23 + v25, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *v24 = xmmword_1CF9FD920;
  v24[16] = 4;
  v26 = v50;
  swift_storeEnumTagMultiPayload();
  v27 = v47;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(a2, v18);
  (*(v49 + 8))(v18, v27);
  if (v26)
  {
    v54 = v53;
    v55 = v52;
    type metadata accessor for Ingestion.FetchItemMetadata();
    v28 = sub_1CF657094(v23 + v25, v23[15], v23[16], v23[17] | 0x800, type metadata accessor for Ingestion.FetchItemMetadata);
    sub_1CF803A0C(a2, v28);

    sub_1CF1A91AC(v51, &v54);
    v44(&v54, 0, 0, 0, v26);
    return sub_1CEFCCC44(&v54, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  else
  {
    v30 = v38;
    v31 = v51;
    v32 = v51[3];
    v33 = v51[4];
    v34 = v23;
    v35 = __swift_project_boxed_opaque_existential_1(v51, v32);
    v36 = v42;
    (*(*(v39 - 8) + 56))(v42, 1, 1);
    v37 = v56;
    sub_1CF611904(v36, v34 + v25, 0, 0, 0, v41, v34[15], v34[16], v34[17] | 0x400, a2, v35, v32, v33);
    if (v37)
    {
      return (*(v30 + 8))(v42, v40);
    }

    else
    {
      (*(v30 + 8))(v42, v40);
      sub_1CF1A91AC(v31, &v54);
      v44(&v54, 0, 0, 0, 0);
      return sub_1CEFCCC44(&v54, &unk_1EC4C1B30, &qword_1CFA05300);
    }
  }
}

uint64_t sub_1CF6522FC()
{
  v1 = *(*v0 + 576);
  v2 = *(*v0 + 560);
  v3 = *(*v0 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 8);
  (v7)((AssociatedTypeWitness - 8), v0 + v1, AssociatedTypeWitness);
  v5 = v0 + *(*v0 + 584);

  return v7(v5, AssociatedTypeWitness);
}

uint64_t sub_1CF6523F4()
{
  v1 = *v0;
  v2 = sub_1CF04ADA4();
  v3 = *(*v2 + 576);
  v4 = *(v1 + 560);
  v5 = *(v1 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 8);
  v7(v2 + v3, AssociatedTypeWitness);
  v7(v2 + *(*v2 + 584), AssociatedTypeWitness);
  return v2;
}

uint64_t sub_1CF6524F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1CF64FB60(a1);
  v4 = v3[70];
  v5 = v3[68];
  swift_getAssociatedTypeWitness();
  v6 = v3[71];
  v7 = v3[69];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ReconciliationID();
  return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
}

uint64_t sub_1CF652684()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 616);
  v3 = type metadata accessor for JobLockRule();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6 + 22;
  swift_beginAccess();
  sub_1CEFCCBDC((v0 + 56), v15, &unk_1EC4C1BE0, &unk_1CF9FD400);
  v8 = *(v0 + 15);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1CF9E75D8();
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  v11 = *(AssociatedTypeWitness - 8);
  (*(v11 + 16))(v7, &v0[*(*v0 + 576)], AssociatedTypeWitness);
  (*(v11 + 56))(&v7[v10], 1, 1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v12 = sub_1CF052B3C(v15, v8, v7);
  (*(v4 + 8))(v7, v3);
  sub_1CEFCCC44(v15, &unk_1EC4C1BE0, &unk_1CF9FD400);
  return v12;
}

uint64_t sub_1CF6528E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  v9 = v8;
  LODWORD(v94) = a5;
  v100 = a4;
  v101 = a2;
  v102 = a8;
  v13 = *v9;
  v14 = *v9;
  v95 = a3;
  v96 = v14;
  v15 = *(v13 + 600);
  v99 = *(v15 - 8);
  v16 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v97 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v89 - v18;
  v20 = *(v19 + 616);
  v21 = type metadata accessor for FileTreeWriter.ItemOrContinuation();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v22 = sub_1CF9E8238();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v89 - v25);
  (*(v27 + 16))(&v89 - v25, a1, v22, v24);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v37 = v101;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v39 = a6;
    if (EnumCaseMultiPayload)
    {
      v40 = v102;
      if (EnumCaseMultiPayload == 1)
      {
        (*(*(v21 - 8) + 8))(v26, v21);
        v41 = swift_allocObject();
        *(v41 + 16) = v39;
        *(v41 + 24) = a7;
        v42 = swift_allocObject();
        v42[2] = v39;
        v42[3] = a7;
        v42[4] = v37;
        v43 = type metadata accessor for Continuation();
        swift_retain_n();

        sub_1CF92E6B4("handleLookupResult(lookupResult:baseContinuation:result:db:expectTrackedItem:completion:)", 89, 2u, sub_1CF045408, 0, sub_1CF559418, v41, sub_1CF658128, v42, v43, MEMORY[0x1E69E6158]);
      }

      else
      {
        (*(*(v21 - 8) + 8))(v26, v21);
        v63 = swift_allocObject();
        *(v63 + 16) = v39;
        *(v63 + 24) = a7;
        v64 = swift_allocObject();
        *(v64 + 16) = v39;
        *(v64 + 24) = a7;
        v65 = type metadata accessor for Continuation();
        swift_retain_n();
        sub_1CF92E6B4("handleLookupResult(lookupResult:baseContinuation:result:db:expectTrackedItem:completion:)", 89, 2u, sub_1CF045408, 0, sub_1CF559418, v63, sub_1CF658100, v64, v65, MEMORY[0x1E69E6158]);
      }

      type metadata accessor for TrackingContinuation();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v35 = *(*(TupleTypeMetadata2 - 8) + 56);
      v36 = v40;
      return v35(v36, 1, 1, TupleTypeMetadata2);
    }

    v44 = v98;
    v45 = *(v99 + 32);
    v92 = v99 + 32;
    v93 = a6;
    v91 = v45;
    v45(v98, v26, v15);
    (*(v20 + 144))(v15, v20);
    v47 = v46;
    if (v46 >> 62)
    {
      v48 = a7;
      if (v46 >> 62 != 1)
      {
        v76 = swift_allocObject();
        v101 = v76;
        *(v76 + 16) = v93;
        *(v76 + 24) = a7;
        v77 = v99;
        v78 = v97;
        (*(v99 + 16))(v97, v44, v15);
        v79 = (*(v77 + 80) + 49) & ~*(v77 + 80);
        v90 = (v16 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
        v80 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
        v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
        v82 = swift_allocObject();
        *(v82 + 16) = v15;
        v83 = v96;
        *(v82 + 24) = *(v96 + 608);
        *(v82 + 32) = v20;
        *(v82 + 40) = *(v83 + 624);
        *(v82 + 48) = v94 & 1;
        v91(v82 + v79, v78, v15);
        *(v82 + v90) = v100;
        *(v82 + v80) = v9;
        *(v82 + v81) = v95;
        v84 = (v82 + ((v81 + 15) & 0xFFFFFFFFFFFFFFF8));
        *v84 = v93;
        v84[1] = v48;
        v85 = type metadata accessor for Continuation();
        swift_retain_n();

        sub_1CF92E6B4("handleLookupResult(lookupResult:baseContinuation:result:db:expectTrackedItem:completion:)", 89, 2u, sub_1CF045408, 0, sub_1CF559418, v101, sub_1CF658058, v82, v85, MEMORY[0x1E69E6158]);

        (*(v99 + 8))(v98, v15);
        goto LABEL_3;
      }

      v47 = v46 & 0x3FFFFFFFFFFFFFFFLL;
      if (v37)
      {
LABEL_10:
        v49 = *(*v47 + 112);

        v51 = v49(v50);
        if (!v52)
        {

          type metadata accessor for TrackingContinuation();
          v86 = swift_getTupleTypeMetadata2();
          v87 = *(v86 + 48);
          v88 = v102;
          v91(v102, v44, v15);
          *(v88 + v87) = v47;
          return (*(*(v86 - 8) + 56))(v88, 0, 1, v86);
        }

        v53 = v52;
        v94 = v51;
        v54 = swift_allocObject();
        v95 = v54;
        v55 = v93;
        *(v54 + 16) = v93;
        *(v54 + 24) = a7;
        v56 = v99;
        v57 = v97;
        (*(v99 + 16))(v97, v44, v15);
        v58 = (*(v56 + 80) + 88) & ~*(v56 + 80);
        v59 = v44;
        v60 = swift_allocObject();
        v60[2] = v15;
        v61 = v96;
        v60[3] = *(v96 + 608);
        v60[4] = v20;
        v60[5] = *(v61 + 624);
        v60[6] = v55;
        v60[7] = a7;
        v60[8] = v47;
        v60[9] = v94;
        v60[10] = v53;
        v91(v60 + v58, v57, v15);
        v62 = type metadata accessor for Continuation();
        swift_retain_n();
        sub_1CF92E6B4("handleLookupResult(lookupResult:baseContinuation:result:db:expectTrackedItem:completion:)", 89, 2u, sub_1CF045408, 0, sub_1CF559418, v95, sub_1CF657FE8, v60, v62, MEMORY[0x1E69E6158]);

        (*(v99 + 8))(v59, v15);
        goto LABEL_3;
      }
    }

    else
    {
      v48 = a7;
      if (v37)
      {
        goto LABEL_10;
      }
    }

    v67 = swift_allocObject();
    v101 = v67;
    v68 = v93;
    *(v67 + 16) = v93;
    *(v67 + 24) = v48;
    v69 = v99;
    v70 = v97;
    (*(v99 + 16))(v97, v44, v15);
    v71 = (*(v69 + 80) + 72) & ~*(v69 + 80);
    v72 = v48;
    v73 = swift_allocObject();
    v73[2] = v15;
    v74 = v96;
    v73[3] = *(v96 + 608);
    v73[4] = v20;
    v73[5] = *(v74 + 624);
    v73[6] = v68;
    v73[7] = v72;
    v73[8] = v47;
    v91(v73 + v71, v70, v15);
    v75 = type metadata accessor for Continuation();
    swift_retain_n();
    sub_1CF92E6B4("handleLookupResult(lookupResult:baseContinuation:result:db:expectTrackedItem:completion:)", 89, 2u, sub_1CF045408, 0, sub_1CF559418, v101, sub_1CF657F80, v73, v75, MEMORY[0x1E69E6158]);

    (*(v69 + 8))(v98, v15);
    goto LABEL_3;
  }

  v28 = *v26;
  v29 = swift_allocObject();
  v30 = a6;
  *(v29 + 16) = a6;
  *(v29 + 24) = a7;
  v31 = swift_allocObject();
  v31[2] = v9;
  v31[3] = v28;
  v31[4] = v101;
  v31[5] = v30;
  v31[6] = a7;
  swift_retain_n();

  v32 = v28;
  v33 = type metadata accessor for Continuation();

  sub_1CF92E6B4("handleLookupResult(lookupResult:baseContinuation:result:db:expectTrackedItem:completion:)", 89, 2u, sub_1CF045408, 0, sub_1CF559418, v29, sub_1CF658148, v31, v33, MEMORY[0x1E69E6158]);

LABEL_3:
  type metadata accessor for TrackingContinuation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(*(TupleTypeMetadata2 - 8) + 56);
  v36 = v102;
  return v35(v36, 1, 1, TupleTypeMetadata2);
}

uint64_t sub_1CF653478(void *a1, uint64_t **a2, void *a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void *), uint64_t a6)
{
  v10 = *a2;
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  return sub_1CF658174(a3, a4, v13, a5, a6, v10[75], v10[76], v11, v10[77], v10[78], v12);
}

uint64_t sub_1CF65355C(uint64_t a1, void (*a2)(_BYTE *, uint64_t, void, void, void *), uint64_t a3, uint64_t a4)
{
  sub_1CF1A91AC(a1, v17);
  sub_1CF658638(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CF65866C();
  v6 = swift_allocError();
  *v7 = v15[0];
  v8 = v15[4];
  v10 = v15[1];
  v9 = v15[2];
  *(v7 + 48) = v15[3];
  *(v7 + 64) = v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  v12 = v15[6];
  v11 = v15[7];
  v13 = v15[5];
  *(v7 + 128) = v16;
  *(v7 + 96) = v12;
  *(v7 + 112) = v11;
  *(v7 + 80) = v13;
  a2(v17, a4, 0, 0, v6);

  return sub_1CEFCCC44(v17, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF653654(void *a1, int a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t *, void, uint64_t, unint64_t, void), uint64_t a8)
{
  v53 = a6;
  v48 = a8;
  v49 = a7;
  v52 = a5;
  LODWORD(v50) = a2;
  v61 = a1;
  v45 = *a4;
  v10 = v45[12];
  v11 = v45[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v47 = AssociatedTypeWitness;
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v44 - v14;
  v16 = type metadata accessor for SnapshotItem();
  v17 = sub_1CF9E75D8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - v19;
  v21 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v44 - v23;
  v51 = *(v16 - 8);
  v25 = *(v51 + 64);
  v30 = MEMORY[0x1EEE9AC00](v26);
  v32 = &v44 - v31;
  if (v50)
  {
    v46 = a3;
    v47 = v29;
    v50 = v27;
    (*(v28 + 16))(v24, a3, v11, v30);
    v45 = v10;
    sub_1CF06B77C(v24, v11, v10, v32);
    v34 = v61[3];
    v33 = v61[4];
    v35 = __swift_project_boxed_opaque_existential_1(v61, v34);
    v36 = v51;
    (*(v51 + 16))(v20, v32, v16);
    (*(v36 + 56))(v20, 0, 1, v16);
    v37 = v54;
    sub_1CF611904(v20, v32, 0, 0, 0, a4, v52[15], v52[16], v52[17], v53, v35, v34, v33);
    (*(v47 + 8))(v20, v50);
    if (!v37)
    {
      sub_1CF1A91AC(v61, &v57);
      v55 = 0;
      v56 = 0xE000000000000000;
      MEMORY[0x1D3868CC0](0x3A64656B63617274, 0xE800000000000000);
      v43 = v45[1];
      sub_1CF9E7FE8();
      v49(&v57, 0, v55, v56, 0);

      sub_1CEFCCC44(&v57, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    return (*(v51 + 8))(v32, v16);
  }

  else
  {
    v38 = v45[11];
    v39 = v45[13];
    v57 = v11;
    v58 = v38;
    v59 = v10;
    v60 = v39;
    type metadata accessor for JobResult();
    v57 = v11;
    v58 = v38;
    v59 = v10;
    v60 = v39;
    type metadata accessor for Ingestion.FetchItemMetadata();
    (*(v10 + 64))(v11, v10);
    v40 = sub_1CF657094(v15, v52[15], v52[16], 2048, type metadata accessor for Ingestion.FetchItemMetadata);
    (*(v46 + 8))(v15, v47);
    sub_1CF803A0C(v53, v40);

    sub_1CF1A91AC(v61, &v57);
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA55370);
    v41 = *(v10 + 8);
    sub_1CF9E7FE8();
    v49(&v57, 0, v55, v56, 0);

    return sub_1CEFCCC44(&v57, &unk_1EC4C1B30, &qword_1CFA05300);
  }
}

uint64_t sub_1CF653C0C(uint64_t a1, void (*a2)(_BYTE *, uint64_t, void, unint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1CF1A91AC(a1, v13);
  MEMORY[0x1D3868CC0](0x2D676E697373696DLL, 0xED00003A65736162);
  v11 = *(a8 + 8);
  sub_1CF9E7FE8();
  a2(v13, a4, 0, 0xE000000000000000, 0);

  return sub_1CEFCCC44(v13, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF653CF4(uint64_t a1, void (*a2)(_BYTE *, uint64_t, void, unint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1CF1A91AC(a1, v16);
  MEMORY[0x1D3868CC0](a5, a6);
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  v14 = *(a10 + 8);
  sub_1CF9E7FE8();
  a2(v16, a4, 0, 0xE000000000000000, 0);

  return sub_1CEFCCC44(v16, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF653DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v31 = a7;
  v32 = a8;
  v33 = a5;
  v34 = a6;
  v28 = *v8;
  v13 = *(v28 + 77);
  v14 = *(v28 + 75);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for FileItemVersion();
  v16 = sub_1CF9E75D8();
  v29 = *(v16 - 8);
  v30 = v16;
  v17 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  v20 = *(*(a1 + 32) + 16);
  if (a2)
  {
    type metadata accessor for TrackingContinuation();
    v21 = swift_dynamicCastClass();
    if (v21)
    {
    }
  }

  else
  {
    v21 = 0;
  }

  v28 = *(v28 + 72);
  (*(*(v15 - 8) + 56))(v19, 1, 1, v15);
  v22 = swift_allocObject();
  v23 = v32;
  v22[2] = v31;
  v22[3] = v23;
  v22[4] = v9;
  v22[5] = v21;
  v22[6] = a3;
  v22[7] = a1;
  v24 = v34;
  v22[8] = v33;
  v22[9] = v24;
  v22[10] = v20;
  v25 = *(*v20 + 536);

  swift_retain_n();

  v25(&v28[v9], v19, 0, 0, 2048, sub_1CF657EA0, v22);

  return (*(v29 + 8))(v19, v30);
}

uint64_t sub_1CF654120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v41 = a8;
  v42 = a1;
  v44 = a5;
  v45 = a7;
  v43 = a6;
  v13 = *(*a2 + 616);
  v14 = *(*a2 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v49 = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for FileItemVersion();
  v16 = sub_1CF9E75D8();
  v38 = *(v16 - 8);
  v39 = v16;
  v17 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  type metadata accessor for TrackingContinuation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = sub_1CF9E75D8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v36 - v24;
  v26 = v42;
  v40 = a3;
  v42 = a4;
  v27 = a4;
  v28 = v43;
  sub_1CF6528E0(v26, a3, v27, v44, 0, v43, v45, &v36 - v24);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v25, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v22 + 8))(v25, v21);
  }

  v30 = *&v25[*(TupleTypeMetadata2 + 48)];
  (*(*(v14 - 8) + 8))(v25, v14);
  v37 = *(*a2 + 576);
  (*(*(v15 - 8) + 56))(v19, 1, 1, v15);
  v31 = swift_allocObject();
  v33 = v41;
  v32 = v42;
  v31[2] = a9;
  v31[3] = a10;
  v31[4] = a2;
  v31[5] = v40;
  v31[6] = v30;
  v34 = v44;
  v31[7] = v32;
  v31[8] = v34;
  v31[9] = v28;
  v31[10] = v45;
  v35 = *(*v33 + 536);

  v35(a2 + v37, v19, 0, 0, 3072, sub_1CF657EB8, v31);

  return (*(v38 + 8))(v19, v39);
}

uint64_t sub_1CF654564(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v53 = a5;
  v54 = a8;
  v51 = a4;
  v52 = a1;
  v48 = *a2;
  v13 = *(v48 + 600);
  type metadata accessor for TrackingContinuation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = sub_1CF9E75D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - v18;
  v49 = v13;
  v50 = *(v13 - 8);
  v20 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v22 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v55 = &v44 - v24;
  v25 = v52;
  if (a3)
  {
    v26 = a3;
  }

  else
  {
    v26 = v51;
  }

  v27 = v53;
  v52 = a7;
  v53 = a6;
  v28 = a6;
  v29 = v54;
  sub_1CF6528E0(v25, v26, v27, v28, 1, a7, v54, v19);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v19, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v16 + 8))(v19, v15);
  }

  v51 = a10;
  v46 = *&v19[*(TupleTypeMetadata2 + 48)];
  v47 = a9;
  v31 = v49;
  v32 = v50;
  v45 = *(v50 + 32);
  v33 = v55;
  v45(v55, v19, v49);
  v34 = swift_allocObject();
  v35 = v52;
  *(v34 + 16) = v52;
  *(v34 + 24) = v29;
  (*(v32 + 16))(v22, v33, v31);
  v36 = (*(v32 + 80) + 88) & ~*(v32 + 80);
  v37 = swift_allocObject();
  *(v37 + 2) = v31;
  v38 = v48;
  v40 = v46;
  v39 = v47;
  *(v37 + 3) = *(v48 + 608);
  *(v37 + 4) = v39;
  *(v37 + 5) = *(v38 + 616);
  v41 = v51;
  *(v37 + 6) = *(v38 + 624);
  *(v37 + 7) = v41;
  *(v37 + 8) = v35;
  *(v37 + 9) = v29;
  *(v37 + 10) = v40;
  v42 = v31;
  v45(&v37[v36], v22, v31);
  v43 = type metadata accessor for Continuation();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559418, v34, sub_1CF657F10, v37, v43, MEMORY[0x1E69E6158]);

  return (*(v32 + 8))(v55, v42);
}

uint64_t sub_1CF65496C(uint64_t a1, void (*a2)(_BYTE *, uint64_t, void, unint64_t, void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1CF1A91AC(a1, v14);
  MEMORY[0x1D3868CC0](0x636172742D746F6ELL, 0xEC0000003A64656BLL);
  v11 = *(a9 + 8);
  sub_1CF9E7FE8();
  type metadata accessor for FileTreeError();
  swift_getWitnessTable();
  v12 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  a2(v14, a4, 0, 0xE000000000000000, v12);

  return sub_1CEFCCC44(v14, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF654ACC(uint64_t a1)
{
  v1 = *(a1 + 600);
  v2 = *(a1 + 616);
  type metadata accessor for SnapshotItem();
  result = sub_1CF9E75D8();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF654B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = v5;
  v55 = a5;
  v56 = a3;
  v57 = a4;
  v51 = a1;
  v8 = *v6;
  v9 = *(*v6 + 600);
  v10 = *(*v6 + 616);
  v11 = type metadata accessor for JobLockRule();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v46 - v13;
  v14 = type metadata accessor for SnapshotItem();
  v15 = sub_1CF9E75D8();
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v53 = v14;
  v54 = *(v14 - 8);
  v22 = *(v54 + 64);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v46 - v25;
  v27 = *(a2 + 32);
  v28 = *(v8 + 576);
  v29 = v59;
  (*(*v27 + 240))(&v6[v28], 1, v56, v57, *(v55 + 1), v24);
  if (!v29)
  {
    v55 = v18;
    v56 = v9;
    v57 = v15;
    v47 = v26;
    v59 = 0;
    if ((*(v54 + 48))(v21, 1, v53) == 1)
    {
      (*(v52 + 8))(v21, v57);
      return 0;
    }

    else
    {
      v30 = v53;
      v31 = v54;
      v32 = v47;
      (*(v54 + 32))(v47, v21, v53);
      v33 = v55;
      (*(v31 + 16))(v55, v32, v30);
      (*(v31 + 56))(v33, 0, 1, v30);
      v34 = *(*v6 + 632);
      swift_beginAccess();
      (*(v52 + 40))(&v6[v34], v33, v57);
      swift_endAccess();
      swift_beginAccess();
      sub_1CEFCCBDC((v6 + 56), v58, &unk_1EC4C1BE0, &unk_1CF9FD400);
      v57 = *(v6 + 15);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v37 = *(TupleTypeMetadata3 + 48);
      v38 = *(TupleTypeMetadata3 + 64);
      v39 = *(*(AssociatedTypeWitness - 8) + 16);
      v40 = &v6[v28];
      v41 = v48;
      v39(v48, v40, AssociatedTypeWitness);
      v42 = (v41 + v37);
      v43 = v47;
      v39(v42, &v47[*(v30 + 36)], AssociatedTypeWitness);
      sub_1CF685B34();
      v44 = v50;
      swift_storeEnumTagMultiPayload();
      v27 = sub_1CF052B3C(v58, v57, v41);
      (*(v49 + 8))(v41, v44);
      sub_1CEFCCC44(v58, &unk_1EC4C1BE0, &unk_1CF9FD400);
      (*(v54 + 8))(v43, v30);
    }
  }

  return v27;
}

uint64_t sub_1CF655094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v51 = a8;
  v52 = a7;
  v53 = a5;
  v54 = a6;
  v48 = a4;
  v49 = a3;
  v55 = a1;
  v10 = *v8;
  v11 = *(*v8 + 616);
  v12 = *(v10 + 600);
  v56[0] = swift_getAssociatedTypeWitness();
  v56[1] = swift_getAssociatedTypeWitness();
  v56[2] = swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = type metadata accessor for FileItemVersion();
  v13 = sub_1CF9E75D8();
  v46 = *(v13 - 8);
  v47 = v13;
  v14 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v43 - v15;
  v16 = type metadata accessor for SnapshotItem();
  v17 = sub_1CF9E75D8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - v20;
  v22 = *(v16 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v43 - v25;
  v50 = *(*(v55 + 32) + 16);
  v27 = *(v10 + 632);
  swift_beginAccess();
  (*(v18 + 16))(v21, v9 + v27, v17);
  if ((*(v22 + 48))(v21, 1, v16) == 1)
  {
    v28 = *(v18 + 8);

    v28(v21, v17);
    v29 = v52;
    AssociatedConformanceWitness = v52;
    v58 = v51;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v56);
    (*(*(v29 - 8) + 16))(boxed_opaque_existential_0, v48, v29);
    v31 = *(*v9 + 576);
    v32 = v45;
    (*(*(v44 - 8) + 56))(v45, 1, 1);
    type metadata accessor for FileTreeError();
    swift_getWitnessTable();
    v33 = swift_allocError();
    sub_1CF72C4D8(v9 + v31, v32, 0, v34);
    (*(v46 + 8))(v32, v47);
    v53(v56, 0, 0, 0, v33);

    return sub_1CEFCCC44(v56, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  else
  {
    (*(v22 + 32))(v26, v21, v16);
    v48 = *(v16 + 40);
    v36 = swift_allocObject();
    v38 = v49;
    v37 = v50;
    v39 = v51;
    v36[2] = v52;
    v36[3] = v39;
    v40 = v54;
    v41 = v53;
    v36[4] = v55;
    v36[5] = v41;
    v36[6] = v40;
    v36[7] = v9;
    v36[8] = v38;
    v53 = (*v37 + 832);
    v42 = *v53;

    v42(v26, &v26[v48], sub_1CF657E5C, v36);

    return (*(v22 + 8))(v26, v16);
  }
}

uint64_t sub_1CF65562C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v37 = a5;
  v34 = a7;
  v38 = a6;
  v31 = a4;
  v32 = a3;
  v12 = *a2;
  v33 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v30 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  v18 = swift_allocObject();
  v35 = v18;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v14 + 16))(v17, a1, v13);
  v19 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = v33;
  *(v23 + 3) = v12[11];
  *(v23 + 4) = v34;
  *(v23 + 5) = v12[12];
  *(v23 + 6) = v12[13];
  *(v23 + 7) = v36;
  (*(v14 + 32))(&v23[v19], v17, v30);
  *&v23[v20] = a2;
  v24 = v38;
  *&v23[v21] = v37;
  *&v23[v22] = v24;
  v25 = &v23[(v22 + 15) & 0xFFFFFFFFFFFFFFF8];
  v26 = v31;
  *v25 = v32;
  *(v25 + 1) = v26;
  v27 = type metadata accessor for Continuation();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559088, v35, sub_1CF657E74, v23, v27, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF65591C(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void (*a6)(_BYTE *, void, uint64_t, uint64_t, void *), uint64_t a7)
{
  v46 = a7;
  v47 = a6;
  v44 = a5;
  v42 = a4;
  v48 = a2;
  v53 = a1;
  v8 = *(*a3 + 80);
  v41 = *(*a3 + 96);
  v9 = type metadata accessor for SnapshotItem();
  v45 = sub_1CF9E75D8();
  v43 = *(v45 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v41 - v11;
  v50 = *(v9 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v17 = *(v8 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v49 = &v41 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v24 = sub_1CF9E8238();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v41 - v27);
  (*(v29 + 16))(&v41 - v27, v48, v24, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v28;
    sub_1CF1A91AC(v53, v52);
    v31 = v30;
    v47(v52, 0, 0, 0, v30);

    return sub_1CEFCCC44(v52, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  else
  {
    v33 = v49;
    (*(v17 + 32))(v49, v28, v8);
    v48 = v17;
    (*(v17 + 16))(v21, v33, v8);
    sub_1CF06B77C(v21, v8, v41, v16);
    v34 = v53[3];
    v35 = v53[4];
    v36 = __swift_project_boxed_opaque_existential_1(v53, v34);
    v37 = v50;
    (*(v50 + 16))(v12, v16, v9);
    (*(v37 + 56))(v12, 0, 1, v9);
    v38 = v51;
    sub_1CF611904(v12, v16, 0, 0, 0, a3, v42[15], v42[16], v42[17], v44, v36, v34, v35);
    (*(v43 + 8))(v12, v45);
    if (!v38)
    {
      sub_1CF1A91AC(v53, v52);
      v39 = sub_1CF06FB20(v9);
      v47(v52, 0, v39, v40, 0);

      sub_1CEFCCC44(v52, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    (*(v50 + 8))(v16, v9);
    return (*(v48 + 8))(v49, v8);
  }
}

uint64_t sub_1CF655E2C()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 600);
  v3 = *(*v0 + 616);
  type metadata accessor for SnapshotItem();
  v4 = sub_1CF9E75D8();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v1, v4);
}

uint64_t *sub_1CF655ED8()
{
  v1 = *v0;
  v2 = sub_1CF059B48();
  v3 = *(*v2 + 632);
  v4 = *(v1 + 600);
  v5 = *(v1 + 616);
  type metadata accessor for SnapshotItem();
  v6 = sub_1CF9E75D8();
  (*(*(v6 - 8) + 8))(v2 + v3, v6);
  return v2;
}

uint64_t sub_1CF655FA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v108 = a8;
  v115 = a7;
  v93 = a6;
  v114 = a4;
  v13 = *v9;
  v15 = *(*v9 + 600);
  v16 = *(*v9 + 624);
  v17 = *(*v9 + 616);
  v117 = *(*v9 + 608);
  v14 = v117;
  v118 = v15;
  v119 = v16;
  v120 = v17;
  v85 = type metadata accessor for ItemReconciliation();
  v89 = *(v85 - 8);
  v18 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v76 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = sub_1CF9E75D8();
  v83 = *(v87 - 8);
  v21 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v76 - v22;
  v94 = AssociatedTypeWitness;
  v82 = *(AssociatedTypeWitness - 8);
  v23 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v76 - v25;
  v117 = v15;
  v118 = v14;
  v98 = v14;
  v119 = v17;
  v120 = v16;
  v96 = v16;
  v26 = type metadata accessor for ItemReconciliation();
  v99 = sub_1CF9E75D8();
  v81 = *(v99 - 8);
  v27 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v110 = &v76 - v28;
  v112 = v26;
  v104 = *(v26 - 8);
  v29 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v101 = &v76 - v31;
  v97 = v15;
  v95 = v17;
  v32 = type metadata accessor for SnapshotItem();
  v100 = *(v32 - 8);
  v33 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v111 = &v76 - v36;
  v113 = a1;
  v37 = a1[4];
  v38 = *(v108 + 8);
  v39 = (*(*v37 + 496))(v9 + *(v13 + 576), a2, v35);
  v109 = v38;
  v92 = v37;
  v78 = v40;
  v116 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v39;
  v42 = sub_1CF9E6DF8();
  v43 = v33;
  v44 = v100;
  v45 = v111;
  if (!v42)
  {
LABEL_17:

    v73 = v115;
    v120 = v115;
    v121 = v108;
    v74 = __swift_allocate_boxed_opaque_existential_0(&v117);
    (*(*(v73 - 8) + 16))(v74, v114, v73);
    v75 = v78;

    a5(&v117, v75, 0, 0, 0);

    return sub_1CEFCCC44(&v117, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v46 = 0;
  v107 = (v100 + 16);
  v102 = (v104 + 48);
  v103 = (v100 + 32);
  v90 = (v104 + 32);
  v91 = (v104 + 8);
  v104 = v100 + 8;
  v80 = (v83 + 16);
  v79 = (v82 + 48);
  v76 = (v82 + 32);
  v77 = (v89 + 8);
  v82 += 8;
  v83 += 8;
  v89 = v81 + 8;
  v105 = v32;
  v106 = a5;
  while (1)
  {
    v48 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v48)
    {
      result = (*(v44 + 16))(v45, v41 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v46, v32);
    }

    else
    {
      result = sub_1CF9E7998();
      if (v43 != 8)
      {
        goto LABEL_19;
      }

      v117 = result;
      (*v107)(v45, &v117, v32);
      result = swift_unknownObjectRelease();
    }

    v50 = v46 + 1;
    v51 = v113;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    v52 = v32;
    v53 = v41;
    v54 = v116;
    (*v103)(v116, v45, v52);
    v55 = v51[2];
    v56 = v110;
    sub_1CF68DDB0(v54, v114, v115, v109, v110);
    v57 = v112;
    v41 = v53;
    if ((*v102)(v56, 1, v112) == 1)
    {
      v32 = v105;
      (*v104)(v116, v105);
      (*v89)(v56, v99);
    }

    else
    {
      v100 = v46 + 1;
      v58 = v101;
      (*v90)(v101, v56, v57);
      if (sub_1CF056558())
      {
        v59 = v86;
        v60 = v87;
        (*v80)(v86, v58 + *(v57 + 52), v87);
        v61 = v94;
        v62 = (*v79)(v59, 1, v94);
        v63 = v88;
        if (v62 != 1)
        {
          v66 = v84;
          (*v76)(v84, v59, v61);
          v67 = v57;
          v68 = v63;
          v69 = v101;
          v70 = sub_1CF07EE34(v67, v63);
          v71 = (*(*v113 + 176))(v70);
          sub_1CF657B8C(v66, v63, v71, v114, v97, v98, v115, v95, v96, v108);
          v50 = v100;

          (*v77)(v68, v85);
          (*v82)(v66, v94);
          (*v91)(v69, v112);
          v72 = v105;
          (*v104)(v116, v105);
          v41 = v53;
          v32 = v72;
          goto LABEL_4;
        }

        (*v91)(v101, v57);
        v64 = v105;
        (*v104)(v116, v105);
        (*v83)(v59, v60);
        v41 = v53;
        v32 = v64;
      }

      else
      {
        v65 = v116;
        sub_1CF657B8C(v116, v58, v113, v114, v97, v98, v115, v95, v96, v108);
        (*v91)(v58, v112);
        v32 = v105;
        (*v104)(v65, v105);
      }

      v50 = v100;
    }

LABEL_4:
    v47 = sub_1CF9E6DF8();
    ++v46;
    a5 = v106;
    v45 = v111;
    if (v50 == v47)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1CF656C8C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v1 = result;
    result = sub_1CF9E6DB8();
    *(result + 16) = v1;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1CF656CD8(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  }

  else
  {

    return sub_1CF9E7FA8();
  }
}

uint64_t sub_1CF656D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*v5 + 576);
  v12 = *(*v5 + 560);
  v13 = *(*v5 + 544);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 16);
  v15(v5 + v11, a1, AssociatedTypeWitness);
  v15(v5 + *(*v5 + 584), a2, AssociatedTypeWitness);

  return sub_1CF0525C8(a3, a4, a5);
}

uint64_t sub_1CF656E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  return sub_1CF656D4C(a1, a2, a3, a4, a5);
}

uint64_t sub_1CF656EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return sub_1CF65722C(a1, a2, a3, a4);
}

uint64_t sub_1CF656F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  return a5(a1, a2, a3, a4);
}

uint64_t sub_1CF656FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, _OWORD *))
{
  v10 = *(v5 + 616);
  v15[0] = *(v5 + 600);
  v15[1] = v10;
  v11 = a5(0, v15);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  return sub_1CF052464(a1, a2, a3, a4);
}

uint64_t sub_1CF657094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, _OWORD *))
{
  v10 = *(v5 + 616);
  v16[0] = *(v5 + 600);
  v16[1] = v10;
  v11 = a5(0, v16);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1CF052464(a1, a2, a3, a4);
  sub_1CF052548(0x2000);
  return v14;
}

uint64_t sub_1CF657128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 632);
  v10 = *(*v4 + 616);
  v11 = *(*v4 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v4 + v9, 1, 1, AssociatedTypeWitness);

  return sub_1CF052464(a1, a2, a3, a4);
}

uint64_t sub_1CF65722C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 632);
  v10 = *(*v4 + 600);
  v11 = *(*v4 + 616);
  v12 = type metadata accessor for SnapshotItem();
  (*(*(v12 - 8) + 56))(v4 + v9, 1, 1, v12);

  return sub_1CF052464(a1, a2, a3, a4);
}

uint64_t objectdestroyTm_4()
{
  v32 = *(v0 + 16);
  v33 = *(v0 + 40);
  v34 = type metadata accessor for ItemReconciliation();
  v30 = *(*(v34 - 8) + 64);
  v31 = *(*(v34 - 8) + 80);
  v1 = v0 + ((v31 + 64) & ~v31);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  if (!(*(v3 + 48))(v1, 1, AssociatedTypeWitness))
  {
    (*(v3 + 8))(v1, AssociatedTypeWitness);
  }

  v4 = type metadata accessor for ItemReconciliationHalf();
  v5 = v1 + v4[12];
  v6 = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for FileItemVersion();
  if (!(*(*(v8 - 1) + 48))(v5, 1, v8))
  {
    (*(*(v6 - 8) + 8))(v5, v6);
    v9 = *(v5 + v8[13]);

    (*(*(v7 - 8) + 8))(v5 + v8[14], v7);
    v10 = *(v5 + v8[15]);

    v11 = *(v5 + v8[16] + 8);
  }

  sub_1CF03D7A8(*(v1 + v4[16]), *(v1 + v4[16] + 8), *(v1 + v4[16] + 16));
  v12 = v1 + v4[17];
  v13 = *(v12 + 24);
  if (v13 >> 60 != 15 && (v13 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v12 + 16), v13);
  }

  v15 = v1 + *(v34 + 52);
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  v18 = type metadata accessor for ItemReconciliationHalf();
  v19 = v15 + v18[12];
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v22 = type metadata accessor for FileItemVersion();
  if (!(*(*(v22 - 1) + 48))(v19, 1, v22))
  {
    (*(*(v20 - 8) + 8))(v19, v20);
    v23 = *(v19 + v22[13]);

    (*(*(v21 - 8) + 8))(v19 + v22[14], v21);
    v24 = *(v19 + v22[15]);

    v25 = *(v19 + v22[16] + 8);
  }

  sub_1CF03D7A8(*(v15 + v18[16]), *(v15 + v18[16] + 8), *(v15 + v18[16] + 16));
  v26 = v15 + v18[17];
  v27 = *(v26 + 24);
  if (v27 >> 60 != 15 && (v27 & 0xF000000000000000) != 0xB000000000000000)
  {
    sub_1CEFE4714(*(v26 + 16), v27);
  }

  v28 = *(v1 + *(v34 + 60));

  return swift_deallocObject();
}

unint64_t sub_1CF6578C0()
{
  v1 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 40);
  v2 = *(v0 + 56);
  v3 = *(type metadata accessor for ItemReconciliation() - 8);
  return sub_1CF62D788(v0 + ((*(v3 + 80) + 64) & ~*(v3 + 80)));
}

uint64_t sub_1CF65796C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  type metadata accessor for SnapshotItem();
  v7 = *(sub_1CF9E75D8() - 8);
  return sub_1CF62D6B0(v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80)));
}

uint64_t sub_1CF657A18(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4 >= 2u)
    {
      return result;
    }
  }

  if (a4 == 2)
  {
  }

  if (a4 == 3)
  {
  }

  return result;
}

uint64_t sub_1CF657A58(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  v7 = *(type metadata accessor for JobLockRule() - 8);
  v8 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for FileTreeWriter.FileTreeChange() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  return sub_1CF62F2A0(a1, *(v1 + 64), (v1 + v8), v1 + v11, *(v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF657B8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a7;
  v14 = *a3;
  v15 = sub_1CF9E53C8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  v23 = *(v14 + 80);
  v24 = *(v14 + 96);
  result = type metadata accessor for ItemReconciliationHalf();
  v26 = a2 + *(result + 64);
  if (!*(v26 + 16))
  {
    v33 = v16;
    v34 = a1;
    v35 = a4;
    if (*(v26 + 1))
    {
      v32 = a10;
      v27 = a3[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FD0, &unk_1CF9FE690);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1CF9FA440;
      v38 = 13;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00BC98(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      sub_1CF9E57D8();
      v29 = sub_1CF9E53A8();
      v30 = *(v33 + 8);
      v30(v22, v15);
      *(v28 + 32) = v29;
      v37 = 1;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF9E57D8();
      v31 = sub_1CF9E53A8();
      v30(v19, v15);
      *(v28 + 40) = v31;
      (*(*v27 + 440))(v34, v28, v35, v36, v32);
    }
  }

  return result;
}

uint64_t sub_1CF658058(void *a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 49) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = (*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF653654(a1, *(v1 + 48), v1 + v2, *(v1 + v3), *(v1 + v4), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF658174(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, void, void, void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = a5;
  v41 = a4;
  v38 = a11;
  v39 = a3;
  v14 = type metadata accessor for FileTreeError();
  v15 = sub_1CF9E75D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v37 - v18;
  v51 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v21 = swift_dynamicCast();
  v22 = *(*(v14 - 8) + 56);
  if (!v21)
  {
    v22(v19, 1, 1, v14);
    v23 = v16;
    v14 = v15;
    goto LABEL_5;
  }

  v23 = *(v14 - 8);
  v22(v19, 0, 1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
LABEL_5:
    (*(v23 + 8))(v19, v14);
    v49 = a8;
    v50 = v38;
    v35 = __swift_allocate_boxed_opaque_existential_0(&AssociatedTypeWitness);
    (*(*(a8 - 8) + 16))(v35, v39, a8);
    v34 = a2;
    goto LABEL_6;
  }

  v37[2] = v37;
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  v37[1] = &v37[-6];
  strcpy(&v37[-6], " at originalError previousError ");
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37[0] = AssociatedConformanceWitness;
  v28 = swift_getAssociatedConformanceWitness();
  v42 = v25;
  v43 = v26;
  v44 = AssociatedConformanceWitness;
  v45 = v28;
  type metadata accessor for FileItemVersion();
  v47 = sub_1CF9E75D8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
  v49 = v48;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v30 = TupleTypeMetadata[12];

  AssociatedTypeWitness = v25;
  v47 = v26;
  v48 = v37[0];
  v49 = v28;
  type metadata accessor for FileItemVersion();
  v31 = sub_1CF9E75D8();
  (*(*(v31 - 8) + 8))(&v19[v30], v31);
  v32 = swift_getAssociatedTypeWitness();
  (*(*(v32 - 8) + 8))(v19, v32);
  v49 = a8;
  v50 = v38;
  v33 = __swift_allocate_boxed_opaque_existential_0(&AssociatedTypeWitness);
  (*(*(a8 - 8) + 16))(v33, v39, a8);
  v34 = 0;
LABEL_6:
  v41(&AssociatedTypeWitness, v34, 0, 0, a1);
  return sub_1CEFCCC44(&AssociatedTypeWitness, &unk_1EC4C1B30, &qword_1CFA05300);
}

double sub_1CF658638(uint64_t a1)
{
  *a1 = 11;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 11;
  return result;
}

unint64_t sub_1CF65866C()
{
  result = qword_1EDEAB030;
  if (!qword_1EDEAB030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE320, &unk_1CFA08B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB030);
  }

  return result;
}

uint64_t sub_1CF658844()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_1CF64F1A8(v0[4], v0[5], v0[6]);
}

uint64_t sub_1CF658874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  sub_1CF1A91AC(a1, v9);
  v7(v9, 0, a2, a3, 0);
  return sub_1CEFCCC44(v9, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF65896C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  return sub_1CF64E978(a1, a2, v3[6], a3);
}

uint64_t sub_1CF65897C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 72);
  v9 = *(v1 + 56);
  return sub_1CF64EB20(a1, *(v1 + 64));
}

uint64_t sub_1CF6589B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF648420(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t objectdestroy_209Tm()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  return swift_deallocObject();
}

uint64_t objectdestroy_101Tm(void (*a1)(void))
{
  v3 = v1[4];

  v4 = v1[5];

  v5 = v1[6];

  v6 = v1[7];

  v7 = v1[9];

  a1(v1[10]);

  return swift_deallocObject();
}

uint64_t sub_1CF658AC0(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v13 = v1[10];
  v14 = v1[2];
  v10 = a1[3];
  v9 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  return sub_1CF64A31C(v11, v3, v4, v5, v6, v7, v8, v13, v14, v10, v2, v9);
}

uint64_t objectdestroy_166Tm(void (*a1)(void), void (*a2)(void), void (*a3)(void))
{
  a1(v3[4]);
  v6 = v3[5];

  a2(v3[6]);
  a3(v3[7]);
  v7 = v3[9];

  return swift_deallocObject();
}

uint64_t sub_1CF658C88(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_1CF658DC0(uint64_t a1, uint64_t (*a2)(uint64_t, char *, void, void, void, void, void, uint64_t, uint64_t))
{
  v5 = *(v2 + 2);
  v6 = *(v2 + 4);
  v7 = *(v2 + 7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v8 = *(sub_1CF9E8238() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, &v2[v9], *&v2[v10], *&v2[(v10 + 15) & 0xFFFFFFFFFFFFFFF8], *&v2[(((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8], *&v2[(((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8], *&v2[((((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8], v6, v7);
}

uint64_t objectdestroy_92Tm()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1CF658F5C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 56);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v6 = *(sub_1CF9E8238() - 8);
  v7 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF642650(a1, *(v1 + 64), *(v1 + 72), (v1 + v7), *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF659094(uint64_t a1)
{
  v15 = *(v1 + 32);
  v17 = *(v1 + 40);
  v18 = *(v1 + 16);
  v14 = *(v1 + 56);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v2 = *(type metadata accessor for FileItemVersion() - 8);
  v13 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for ItemReconciliation() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for SnapshotItem() - 8);
  v8 = (v6 + *(v7 + 80) + 9) & ~*(v7 + 80);
  v12 = *(v7 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(type metadata accessor for FileItemVersion() - 8);
  v10 = (v8 + v12 + *(v9 + 80)) & ~*(v9 + 80);
  return sub_1CF63EE60(a1, *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), v1 + v13, *(v1 + v3), v1 + v5, *(v1 + v6), *(v1 + v6 + 8), v1 + v8, v1 + v10, *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), v15, v14);
}

uint64_t sub_1CF659424(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  v5 = *(swift_getTupleTypeMetadata3() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v9);
  v14 = *(v1 + v10);
  v15 = (v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v15;
  v17 = v15[1];

  return sub_1CF63C2C0(a1, (v1 + v6), v11, v12, v13, v14, v16, v17);
}

uint64_t sub_1CF6595D4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  v5 = *(swift_getTupleTypeMetadata3() - 8);
  v6 = (*(v5 + 80) + 80) & ~*(v5 + 80);
  v7 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1CF63D33C(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v1 + v6, *v7, v7[1]);
}

uint64_t sub_1CF659758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  v10 = *(v5 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  v11 = *(swift_getTupleTypeMetadata3() - 8);
  v12 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v5 + v14 + 8);
  return sub_1CF63D62C(a1, a2, a3, a4, a5, (v5 + v12), *(v5 + v13), *(v5 + v14));
}

uint64_t sub_1CF6598FC()
{
  v1 = *(v0 + 16);
  v2 = (*(**(v0 + 24) + 400))(0);
  return sub_1CF04AF48(v2 & 1) & 1;
}

void sub_1CF65995C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  swift_getTupleTypeMetadata2();
  v4 = *(sub_1CF9E75D8() - 8);
  v10 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v9 = (*(v4 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  v7 = *(sub_1CF9E75D8() - 8);
  sub_1CF6338F0(a1, *(v1 + 48), *(v1 + 56), v1 + v10, *(v1 + v9), *(v1 + v8), *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v6 + 16), *(v1 + v6 + 17), *(v1 + v6 + 18), *(v1 + v6 + 19), v1 + ((v6 + *(v7 + 80) + 20) & ~*(v7 + 80)));
}

uint64_t sub_1CF659B7C(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + v7);
  v12 = (v1 + v8);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v9);
  v16 = *(v1 + v10);
  v17 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF639DEC(a1, v1 + v6, v11, v13, v14, v15, v16, v17);
}

uint64_t objectdestroy_337Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1CF659D2C(void *a1)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v7 = v1[8];
  v6 = v1[9];
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  return sub_1CF63A5FC(v3, v4, v5, v10, v7, v6, v8, *(v9 + 8));
}

uint64_t sub_1CF659DB0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(v1 + 56);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  v7 = *(sub_1CF9E75D8() - 8);
  return sub_1CF63B53C(a1, *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), v1 + ((*(v7 + 80) + 120) & ~*(v7 + 80)));
}

void sub_1CF659F14(void *a1)
{
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[7];
  type metadata accessor for FileTreeWriter.ItemOrContinuation();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v7 = *(sub_1CF9E8238() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF63024C(a1, v1 + v8, *(v1 + v9), *(v1 + v9 + 8), *(v1 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF65A16C()
{
  sub_1CF65C654();
}

uint64_t sub_1CF65A194()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  sub_1CEFF7124(*(v0 + 32));

  return v0;
}

uint64_t sub_1CF65A1C4()
{
  sub_1CF65A194();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF65A25C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    a1 = a2;
  }

  return a3(a1);
}

uint64_t sub_1CF65A28C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  a3();
  result = swift_beginAccess();
  if (*(a5 + 16) == 1)
  {
    v9 = *(a6 + 24);
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      *(a6 + 24) = v11;
    }
  }

  return result;
}

uint64_t sub_1CF65A300(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, objc_class *a7, uint64_t a8, uint64_t a9, uint64_t a10, objc_class *a11, uint64_t (*a12)())
{
  v55 = a8;
  v49 = a1;
  v50 = a7;
  v53 = a5;
  v54 = a6;
  v44 = a3;
  v45 = a4;
  v56 = a2;
  v51 = a9;
  v52 = a10;
  v13 = *v12;
  v47 = *(*v12 + 120);
  v46 = v13[11];
  v58 = a12;
  v57 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v38 - v17;
  v41 = &v38 - v17;
  v43 = v13[14];
  v42 = v13[10];
  v39 = swift_getAssociatedTypeWitness();
  v19 = *(v39 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v39);
  v23 = &v38 - v22;
  v48 = *(v12 + 2);
  (*(v19 + 16))(&v38 - v22, v44, v21);
  (*(v15 + 16))(v18, v45, AssociatedTypeWitness);
  v24 = (*(v19 + 80) + 112) & ~*(v19 + 80);
  v25 = (v20 + *(v15 + 80) + v24) & ~*(v15 + 80);
  v45 = (v16 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v45 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v46;
  v26[2].isa = v42;
  v26[3].isa = v27;
  v26[4].isa = v13[12];
  v26[5].isa = v13[13];
  v28 = v43;
  v26[6].isa = v57;
  v26[7].isa = v28;
  v29 = v58;
  v26[8].isa = v47;
  v26[9].isa = v29;
  v30 = v49;
  v31 = v50;
  v26[10].isa = v12;
  v26[11].isa = v31;
  v32 = v56;
  v26[12].isa = v30;
  v26[13].isa = v32;
  (*(v19 + 32))(v26 + v24, v23, v39);
  (*(v15 + 32))(v26 + v25, v41, v40);
  v33 = (&v26->isa + v45);
  v34 = v54;
  *v33 = v53;
  v33[1] = v34;
  v35 = (&v26->isa + v44);
  v36 = v52;
  *v35 = v51;
  v35[1] = v36;

  sub_1CEFD09A0(v30);

  sub_1CF5CF660(v30, v56, v55, sub_1CF65C6C8, v26, v57, v58);
}

uint64_t sub_1CF65A6A4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1CF65A704(char a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = a7;
  v30 = a8;
  v18 = sub_1CF9E64A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(a3 + 16);
  v24 = sub_1CF042F4C();
  *v22 = v24;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18);
  v25 = v24;
  LOBYTE(v24) = sub_1CF9E64D8();
  result = (*(v19 + 8))(v22, v18);
  if (v24)
  {
    if (*(a4 + 16))
    {
      v27 = a12;
      if ((a1 & 1) == 0)
      {
        return sub_1CF65A8A8(a5, a6, v29, v30, a9, a10, a4, a11, v27);
      }
    }

    else
    {
      *(a4 + 16) = a2;
      v28 = a2;
      v27 = a12;
      if ((a1 & 1) == 0)
      {
        return sub_1CF65A8A8(a5, a6, v29, v30, a9, a10, a4, a11, v27);
      }
    }

    *(a4 + 24) = 1;
    return sub_1CF65A8A8(a5, a6, v29, v30, a9, a10, a4, a11, v27);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF65A8A8(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v58 = a8;
  v55 = a2;
  v56 = a7;
  v43 = a6;
  v44 = a5;
  v49 = a4;
  v47 = a3;
  v54 = a1;
  v13 = *v10;
  v52 = *(*v10 + 120);
  v50 = v13[11];
  v57 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = AssociatedTypeWitness;
  v59 = *(AssociatedTypeWitness - 8);
  v45 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v39 - v15;
  v42 = &v39 - v15;
  v48 = v13[14];
  v46 = v13[10];
  v17 = swift_getAssociatedTypeWitness();
  v39 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - v20;
  v40 = &v39 - v20;
  v53 = v10[2];
  v22 = swift_allocObject();
  v51 = v22;
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;
  (*(v18 + 16))(v21, v47, v17);
  v23 = v59;
  (*(v59 + 16))(v16, v49, AssociatedTypeWitness);
  v24 = (*(v18 + 80) + 72) & ~*(v18 + 80);
  v49 = (v19 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v23 + 80) + v26 + 8) & ~*(v23 + 80);
  v28 = (v45 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v50;
  *(v29 + 2) = v46;
  *(v29 + 3) = v30;
  *(v29 + 4) = v13[12];
  *(v29 + 5) = v13[13];
  v31 = v52;
  *(v29 + 6) = v48;
  *(v29 + 7) = v31;
  *(v29 + 8) = v10;
  (*(v18 + 32))(&v29[v24], v40, v39);
  v32 = v54;
  *&v29[v49] = v54;
  v33 = v56;
  *&v29[v25] = v55;
  *&v29[v26] = v33;
  (*(v59 + 32))(&v29[v27], v42, v41);
  v34 = &v29[v28];
  v35 = v43;
  *v34 = v44;
  *(v34 + 1) = v35;
  v36 = &v29[(v28 + 23) & 0xFFFFFFFFFFFFFFF8];
  v37 = v57;
  *v36 = v58;
  *(v36 + 1) = v37;
  swift_retain_n();

  sub_1CEFD09A0(v32);

  sub_1CF382FBC("waitForDiskIngestionStep2(request:barrierTimestamp:fsID:itemIdentifier:cancelHandler:errorTracker:completionHandler:)", 117, 2, 2, sub_1CF2AF9D0, v51, sub_1CF65C840, v29);
}

void sub_1CF65ACAC(void *a1, objc_class *a2, uint64_t a3, unint64_t a4, uint64_t a5, objc_class *a6, unint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void *), uint64_t a11)
{
  v62 = a8;
  v50 = a7;
  v57 = a4;
  v58 = a6;
  v66 = a5;
  v65 = a3;
  v59 = a11;
  v13 = *a2;
  v55 = *(*a2 + 120);
  v51 = v13[11];
  v60 = a9;
  v61 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v43 - v15;
  v46 = &v43 - v15;
  v49 = v13[14];
  v48 = v13[10];
  v17 = swift_getAssociatedTypeWitness();
  v44 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - v20;
  v45 = &v43 - v20;
  v22 = a1[4];
  v54 = a1[3];
  v56 = v22;
  v23 = __swift_project_boxed_opaque_existential_1(a1, v54);
  v24 = *(a2 + 2);
  v52 = v23;
  v53 = v24;
  (*(v18 + 16))(v21, v65, v17);
  v25 = v47;
  (*(v47 + 16))(v16, v50, AssociatedTypeWitness);
  v26 = (*(v18 + 80) + 96) & ~*(v18 + 80);
  v27 = (v19 + *(v25 + 80) + v26) & ~*(v25 + 80);
  v28 = (v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v51;
  v29[2].isa = v48;
  v29[3].isa = v30;
  v29[4].isa = v13[12];
  v29[5].isa = v13[13];
  v31 = v55;
  v29[6].isa = v49;
  v29[7].isa = v31;
  v33 = v57;
  v32 = v58;
  v29[8].isa = a2;
  v29[9].isa = v32;
  v34 = v66;
  v29[10].isa = v33;
  v29[11].isa = v34;
  v35 = v29 + v26;
  v36 = v59;
  (*(v18 + 32))(v35, v45, v44);
  (*(v25 + 32))(v29 + v27, v46, AssociatedTypeWitness);
  v37 = (&v29->isa + v28);
  v38 = v61;
  v39 = v60;
  *v37 = v62;
  v37[1] = v39;
  v40 = (&v29->isa + v50);
  *v40 = v38;
  v40[1] = v36;

  sub_1CEFD09A0(v33);

  v41 = v63;
  sub_1CF5CF828(v65, v33, v66, v52, sub_1CF65C86C, v29, v54, v56);

  if (v41)
  {
    v42 = v41;
    v38(0, v41);
  }
}

uint64_t sub_1CF65B0B0(char a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = a7;
  v30 = a8;
  v18 = sub_1CF9E64A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(a3 + 16);
  v24 = sub_1CF042F4C();
  *v22 = v24;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18);
  v25 = v24;
  LOBYTE(v24) = sub_1CF9E64D8();
  result = (*(v19 + 8))(v22, v18);
  if (v24)
  {
    if (*(a4 + 16))
    {
      v27 = a12;
      if ((a1 & 1) == 0)
      {
        return sub_1CF65B254(a5, a6, v29, v30, a9, a10, a4, a11, v27);
      }
    }

    else
    {
      *(a4 + 16) = a2;
      v28 = a2;
      v27 = a12;
      if ((a1 & 1) == 0)
      {
        return sub_1CF65B254(a5, a6, v29, v30, a9, a10, a4, a11, v27);
      }
    }

    *(a4 + 24) = 1;
    return sub_1CF65B254(a5, a6, v29, v30, a9, a10, a4, a11, v27);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF65B254(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v54 = a6;
  v55 = a8;
  v50 = a2;
  v51 = a7;
  v53 = a5;
  v45 = a4;
  v43 = a3;
  v49 = a1;
  v11 = *v9;
  v47 = *(*v9 + 120);
  v46 = v11[11];
  v52 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v38 - v15;
  v41 = &v38 - v15;
  v44 = v11[14];
  v42 = v11[10];
  v39 = swift_getAssociatedTypeWitness();
  v17 = *(v39 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v39);
  v21 = &v38 - v20;
  v48 = *(v10 + 16);
  (*(v17 + 16))(&v38 - v20, v43, v19);
  v38 = v13;
  (*(v13 + 16))(v16, v45, AssociatedTypeWitness);
  v22 = (*(v17 + 80) + 72) & ~*(v17 + 80);
  v45 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v13 + 80) + v24 + 8) & ~*(v13 + 80);
  v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v46;
  *(v27 + 2) = v42;
  *(v27 + 3) = v28;
  *(v27 + 4) = v11[12];
  *(v27 + 5) = v11[13];
  v29 = v47;
  *(v27 + 6) = v44;
  *(v27 + 7) = v29;
  *(v27 + 8) = v10;
  (*(v17 + 32))(&v27[v22], v21, v39);
  v30 = v49;
  *&v27[v45] = v49;
  v31 = v51;
  *&v27[v23] = v50;
  *&v27[v24] = v31;
  (*(v38 + 32))(&v27[v25], v41, v40);
  v32 = &v27[v26];
  v34 = v53;
  v33 = v54;
  *v32 = v53;
  v32[1] = v33;
  v35 = &v27[v43];
  v36 = v52;
  *v35 = v55;
  *(v35 + 1) = v36;

  sub_1CEFD09A0(v30);

  sub_1CF92DC74("waitForDiskIngestionStep3(request:barrierTimestamp:fsID:itemIdentifier:cancelHandler:errorTracker:completionHandler:)", 117, 2u, sub_1CF045408, 0, v34, v33, sub_1CF65CBC4, v27);
}

void sub_1CF65B634(void *a1, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void *), uint64_t a11)
{
  v50 = a8;
  v51 = a3;
  v36 = a6;
  v47 = a4;
  v48 = a5;
  v49 = a11;
  v40 = *a2;
  v15 = v40;
  v39 = *(v40 + 120);
  v38 = *(v40 + 88);
  v42 = a10;
  v45 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v36 - v19;
  v21 = a1[4];
  v44 = a1[3];
  v46 = v21;
  v41 = __swift_project_boxed_opaque_existential_1(a1, v44);
  v43 = a2[2];
  (*(v17 + 16))(v20, a7, AssociatedTypeWitness);
  v22 = (*(v17 + 80) + 96) & ~*(v17 + 80);
  v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = *(v15 + 80);
  v25 = v37;
  *(v24 + 24) = v38;
  *(v24 + 32) = *(v40 + 96);
  *(v24 + 48) = *(v15 + 112);
  *(v24 + 56) = v39;
  *(v24 + 64) = a2;
  *(v24 + 72) = a6;
  v26 = v47;
  v27 = v48;
  *(v24 + 80) = v47;
  *(v24 + 88) = v27;
  v28 = v20;
  v29 = v42;
  (*(v17 + 32))(v24 + v22, v28, v25);
  v30 = v49;
  v31 = (v24 + v23);
  v32 = v45;
  *v31 = v50;
  v31[1] = v32;
  v33 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v33 = v29;
  v33[1] = v30;

  sub_1CEFD09A0(v26);

  v34 = v52;
  sub_1CF5CC8E0(v51, v26, v27, v41, sub_1CF65CD80, v24, v44, v46);

  if (v34)
  {
    v35 = v34;
    v29(0, v34);
  }
}

uint64_t sub_1CF65B944(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v45 = a7;
  v46 = a8;
  v41 = a6;
  v42 = a4;
  v44 = a5;
  v39 = a1;
  v40 = a2;
  v38 = *v8;
  v11 = v38;
  v37 = *(v38 + 120);
  v36 = *(v38 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v33 - v15;
  v43 = v8[2];
  (*(v12 + 16))(&v33 - v15, a3, v14);
  v17 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v34 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = *(v11 + 80);
  v23 = AssociatedTypeWitness;
  *(v22 + 24) = v36;
  *(v22 + 32) = *(v38 + 96);
  *(v22 + 48) = *(v11 + 112);
  *(v22 + 56) = v37;
  *(v22 + 64) = v9;
  (*(v12 + 32))(v22 + v17, v16, v23);
  v24 = v39;
  *(v22 + v34) = v39;
  v25 = v41;
  *(v22 + v18) = v40;
  *(v22 + v19) = v25;
  v26 = (v22 + v20);
  v27 = v42;
  v29 = v44;
  v28 = v45;
  *v26 = v42;
  v26[1] = v29;
  v30 = (v22 + v21);
  v31 = v46;
  *v30 = v28;
  v30[1] = v31;

  sub_1CEFD09A0(v24);

  sub_1CF92DC74("waitForDiskIngestionStep4(request:barrierTimestamp:itemIdentifier:cancelHandler:errorTracker:completionHandler:)", 112, 2u, sub_1CF045408, 0, v27, v29, sub_1CF65CD98, v22);
}

void sub_1CF65BC1C(void *a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void, void *), uint64_t a10)
{
  v48 = a8;
  v46 = a6;
  v47 = a7;
  v50 = a5;
  v45 = a4;
  v13 = *a2;
  v14 = *a2;
  v37 = a3;
  v38 = v14;
  v36 = v13[15];
  v35 = v13[11];
  v42 = a10;
  v40 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = a1[4];
  v43 = a1[3];
  v44 = v20;
  v39 = __swift_project_boxed_opaque_existential_1(a1, v43);
  v41 = a2[2];
  (*(v16 + 16))(v19, a3, AssociatedTypeWitness);
  v21 = (*(v16 + 80) + 96) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v13[10];
  v24 = v34;
  *(v23 + 24) = v35;
  *(v23 + 32) = *(v38 + 6);
  *(v23 + 48) = v13[14];
  *(v23 + 56) = v36;
  *(v23 + 64) = a2;
  v25 = v45;
  *(v23 + 72) = v46;
  *(v23 + 80) = v25;
  *(v23 + 88) = v50;
  v26 = v19;
  v27 = v40;
  (*(v16 + 32))(v23 + v21, v26, v24);
  v28 = v42;
  v29 = (v23 + v22);
  v30 = v48;
  *v29 = v47;
  v29[1] = v30;
  v31 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v31 = v27;
  v31[1] = v28;

  sub_1CEFD09A0(v25);

  v32 = v49;
  sub_1CF5CC5AC(v37, v25, v50, v39, sub_1CF65CFB0, v23, v43, v44);

  if (v32)
  {
    v33 = v32;
    v27(0, v32);
  }
}

uint64_t sub_1CF65BF20(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v28 = a7;
  v29 = a8;
  v18 = sub_1CF9E64A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(a3 + 16);
  v24 = sub_1CF042F4C();
  *v22 = v24;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18);
  v25 = v24;
  LOBYTE(v24) = sub_1CF9E64D8();
  result = (*(v19 + 8))(v22, v18);
  if (v24)
  {
    if (*(a4 + 16))
    {
      if ((a1 & 1) == 0)
      {
        return a12(a5, a6, v28, v29, a9, a4, a10, a11);
      }
    }

    else
    {
      *(a4 + 16) = a2;
      v27 = a2;
      if ((a1 & 1) == 0)
      {
        return a12(a5, a6, v28, v29, a9, a4, a10, a11);
      }
    }

    *(a4 + 24) = 1;
    return a12(a5, a6, v28, v29, a9, a4, a10, a11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF65C0B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v36 = a7;
  v37 = a8;
  v34 = a2;
  v35 = a6;
  v38 = a4;
  v39 = a5;
  v31 = *v8;
  v11 = v31;
  v32 = a1;
  v30 = *(v31 + 120);
  v29 = *(v31 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &AssociatedTypeWitness - v15;
  v33 = v9[2];
  (*(v12 + 16))(&AssociatedTypeWitness - v15, a3, v14);
  v17 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = *(v11 + 80);
  v22 = AssociatedTypeWitness;
  *(v21 + 24) = v29;
  *(v21 + 32) = *(v31 + 96);
  *(v21 + 48) = *(v11 + 112);
  *(v21 + 56) = v30;
  *(v21 + 64) = v9;
  (*(v12 + 32))(v21 + v17, v16, v22);
  v23 = v32;
  *(v21 + v18) = v32;
  v24 = v35;
  *(v21 + v19) = v34;
  *(v21 + v20) = v24;
  v25 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v37;
  *v25 = v36;
  v25[1] = v26;

  sub_1CEFD09A0(v23);

  sub_1CF92DC74("waitForDiskIngestionStep5(request:barrierTimestamp:itemIdentifier:cancelHandler:errorTracker:completionHandler:)", 112, 2u, sub_1CF045408, 0, v38, v39, sub_1CF65D0B0, v21);
}

void sub_1CF65C360(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v13 = a1[3];
  v19 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = *(a2 + 16);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;

  sub_1CF5CC278(a3, a4, a5, v14, sub_1CF65D18C, v16, v13, v19);

  if (v21)
  {
    v17 = v21;
    a7(0);
  }
}

void sub_1CF65C498(char a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *))
{
  v10 = sub_1CF9E64A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a3 + 16);
  v16 = sub_1CF042F4C();
  *v14 = v16;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v17 = v16;
  LOBYTE(v16) = sub_1CF9E64D8();
  (*(v11 + 8))(v14, v10);
  if (v16)
  {
    v18 = *(a4 + 16);
    if (v18)
    {
      if (a1)
      {
LABEL_4:
        v19 = 1;
        *(a4 + 24) = 1;
LABEL_7:
        v21 = v18;
        a5(v19, v18);

        return;
      }
    }

    else
    {
      *(a4 + 16) = a2;
      v20 = a2;
      v18 = a2;
      if (a1)
      {
        goto LABEL_4;
      }
    }

    v19 = *(a4 + 24);
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1CF65C624()
{
  v1 = *(*(v0[2] + 32) + 16);
  v2 = *(*v0 + 96);
  return swift_dynamicCastClassUnconditional();
}