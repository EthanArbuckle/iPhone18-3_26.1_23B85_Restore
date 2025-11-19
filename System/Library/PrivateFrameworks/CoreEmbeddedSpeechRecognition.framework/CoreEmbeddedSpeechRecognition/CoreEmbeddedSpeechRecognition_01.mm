uint64_t sub_225F14384()
{
  v2 = *(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_rejectedContextTypes);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F143C4()
{
  v2 = *(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_rejectedBundleTypes);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F14404()
{
  v2 = *(v0 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_enabledTasks);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F144A4@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_requestTask);
  swift_beginAccess();
  sub_225F14508(v3, a1);
  return swift_endAccess();
}

void *sub_225F14508(const void *a1, void *a2)
{
  v6 = sub_226099808();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

uint64_t sub_225F1469C(uint64_t a1)
{
  v11 = a1;
  v14 = 0;
  v13 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v8 = &v7 - v7;
  v14 = v5;
  v13 = v1;
  sub_225F14508(v5, &v7 - v7);
  v9 = (v1 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_requestTask);
  v10 = &v12;
  swift_beginAccess();
  sub_225F14780(v8, v9);
  swift_endAccess();
  return sub_225F149A8(v11);
}

void *sub_225F14780(const void *a1, void *a2)
{
  v7 = sub_226099808();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_225F149A8(uint64_t a1)
{
  v3 = sub_226099808();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t RequestContextRetrievalParameters.init(maxNumEnrolled:retrievalTimeout:maxEntityChars:maxEntityWords:rejectedContextTypes:rejectedBundleTypes:enabledTasks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v136 = a1;
  v137 = a7;
  v138 = a2;
  v139 = a3;
  v143 = a4;
  v120 = a5;
  v121 = a6;
  v106 = 0;
  v105 = sub_225F158F8;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v174 = 0.0;
  v173 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v144 = v167;
  v167[0] = 0;
  v167[1] = 0;
  v164[0] = 0;
  __len = 40;
  __c = 0;
  memset(v163, 0, sizeof(v163));
  v147 = 0;
  v157 = 0;
  v158 = 0;
  v156 = 0;
  memset(v155, 0, sizeof(v155));
  v151 = 0;
  v152 = 0;
  v149 = 0;
  v150 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0);
  v109 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v110 = &v61 - v109;
  v140 = 0;
  v111 = sub_226099828();
  v112 = *(v111 - 8);
  v113 = v111 - 8;
  v114 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (MEMORY[0x28223BE20])(v111, v12, v13, v14);
  v115 = &v61 - v114;
  v116 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15, v17, v18, v19);
  v117 = &v61 - v116;
  v118 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D785E38, &unk_22609F960) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v140, v20, v21, v22);
  v119 = &v61 - v118;
  v141 = sub_226098BA8();
  v122 = *(v141 - 8);
  v123 = v141 - 8;
  v127 = *(v122 + 64);
  v124 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = (MEMORY[0x28223BE20])(v140, v138, v139, v143);
  v125 = &v61 - v124;
  v126 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = (MEMORY[0x28223BE20])(v23, v24, v25, v26);
  v128 = &v61 - v126;
  v129 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = MEMORY[0x28223BE20](v27, v28, v29, v30);
  v130 = &v61 - v129;
  v177 = &v61 - v129;
  v175 = v32;
  v174 = v31;
  v173 = v33;
  v172 = v34;
  v171 = v35;
  v170 = v36;
  v169 = v37;
  v176 = v7;
  v132 = v7;
  v131 = OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_requestTask;
  v133 = sub_226099808();
  v38 = *(v133 - 8);
  v134 = *(v38 + 56);
  v135 = v38 + 56;
  v134(&v132[v131], 1);
  v39 = v137;
  v40 = v138;
  v41 = v139;
  *&v176[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxNumEnrolled] = v136;
  *&v176[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_retrievalTimeout] = v39;
  *&v176[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxEntityChars] = v40;
  *&v176[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxEntityWords] = v41;
  v142 = sub_22609A4F8();
  sub_225F15678();
  v168 = sub_226099F08();
  sub_2260998E8();
  v166 = v143;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  v146 = sub_225F156F8();
  sub_22609A028();
  for (i = v147; ; i = v102)
  {
    v102 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D785E48, &unk_22609F970);
    sub_22609A388();
    v103 = v164[1];
    v104 = v165;
    if (!v165)
    {
      break;
    }

    v100 = v103;
    v101 = v104;
    v94 = v104;
    v93 = v103;
    v149 = v103;
    v150 = v104;
    sub_2260998E8();
    sub_226098B98();
    if ((*(v122 + 48))(v119, 1, v141) == 1)
    {
      sub_225F162C8(v119);
    }

    else
    {
      (*(v122 + 32))(v130, v119, v141);
      (*(v122 + 16))(v125, v130, v141);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E78, &qword_22609F998);
      sub_226099F48();
      v92 = *(v122 + 8);
      v91 = v122 + 8;
      v92(v128, v141);
      v92(v130, v141);
    }
  }

  sub_225EFE6E8(v167);
  v95 = v176;
  v96 = v168;
  sub_2260998E8();
  *&v95[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_rejectedContextTypes] = v96;
  v97 = sub_22609A4F8();
  sub_225F157F4();
  v164[0] = sub_226099F08();
  sub_2260998E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
  v98 = &v178;
  sub_226099898();
  memcpy(v163, v98, sizeof(v163));
  for (j = v102; ; j = v71)
  {
    v87 = j;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E60, &qword_22609F980);
    sub_226099908();
    v88 = v160[4];
    v89 = v161;
    v90 = v162;
    if (!v161)
    {
      break;
    }

    v84 = v88;
    v85 = v89;
    v86 = v90;
    v76 = v90;
    v74 = v89;
    v75 = v88;
    v157 = v88;
    v158 = v89;
    v156 = v90;
    sub_2260998E8();
    v77 = &v179;
    sub_226099F18();
    memcpy(v155, v77, sizeof(v155));
    for (k = v87; ; k = v71)
    {
      v71 = k;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E68, &qword_22609F988);
      sub_226099F68();
      v72 = v153;
      v73 = v154;
      if (!v154)
      {
        break;
      }

      v69 = v72;
      v70 = v73;
      v68 = v73;
      v66 = v72;
      v151 = v72;
      v152 = v73;
      v67 = swift_allocObject();
      sub_2260998E8();
      v50 = v74;
      v51 = v67;
      *(v67 + 16) = v75;
      *(v51 + 24) = v50;
      sub_2260998E8();
      v52 = v115;
      v53 = v67;
      v54 = v112;
      v55 = v68;
      *(v67 + 32) = v66;
      *(v53 + 40) = v55;
      *v52 = v53;
      v56 = *MEMORY[0x277D72D28];
      (*(v54 + 104))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E70, &qword_22609F990);
      sub_226099F48();
      (*(v112 + 8))(v117, v111);
    }

    sub_225F15874(v155);
  }

  v42 = v87;
  sub_225F15874(v163);
  v79 = v176;
  v80 = v164[0];
  sub_2260998E8();
  v43 = v105;
  v44 = v121;
  v45 = v145;
  v46 = v133;
  v47 = v146;
  v48 = v81;
  *&v79[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_rejectedBundleTypes] = v80;
  v82 = v176;
  v160[3] = v44;
  result = sub_225F15970(v43, 0, v45, v46, MEMORY[0x277D84A98], v47, MEMORY[0x277D84AC0], v48);
  v83 = result;
  if (v42)
  {
    __break(1u);
  }

  else
  {
    v57 = v110;
    v58 = v134;
    v59 = v133;
    *&v82[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_enabledTasks] = v83;
    v61 = v176;
    v58(v57, 1, 1, v59);
    v62 = &v61[OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_requestTask];
    v63 = v160;
    swift_beginAccess();
    sub_225F14780(v110, v62);
    swift_endAccess();
    sub_225EFE6E8(v164);
    sub_225EFE6E8(&v168);
    v64 = v176;
    v60 = type metadata accessor for RequestContextRetrievalParameters();
    v159.receiver = v64;
    v159.super_class = v60;
    v65 = objc_msgSendSuper2(&v159, sel_init);
    MEMORY[0x277D82BE0](v65);
    v176 = v65;

    MEMORY[0x277D82BD8](v176);
    return v65;
  }

  return result;
}

unint64_t sub_225F15678()
{
  v2 = qword_280D76F20;
  if (!qword_280D76F20)
  {
    sub_226098BA8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76F20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F156F8()
{
  v2 = qword_280D76600;
  if (!qword_280D76600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7869D0, &qword_2260A01B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76600);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

unint64_t sub_225F157F4()
{
  v2 = qword_280D76710;
  if (!qword_280D76710)
  {
    sub_226099828();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76710);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_225F15874(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_225F158B4();
  return a1;
}

uint64_t sub_225F158F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  type metadata accessor for CoreEmbeddedSpeechAnalyzer();
  has_malloc_size = _swift_stdlib_has_malloc_size();
  return static CoreEmbeddedSpeechAnalyzer.taskHint(fromTaskString:detectUtterances:)(v6, v5, has_malloc_size & 1, a2);
}

uint64_t sub_225F15970(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a1;
  v44 = a2;
  v68 = a3;
  v58 = a4;
  v45 = a5;
  v67 = a6;
  v47 = a8;
  v48 = "Fatal error";
  v49 = "Range requires lowerBound <= upperBound";
  v50 = "Swift/Range.swift";
  v51 = "Index out of range";
  v52 = "invalid Collection: count differed in successive traversals";
  v53 = "Swift/ArrayShared.swift";
  v78[3] = a3;
  v78[2] = a4;
  v78[1] = a5;
  v54 = *(a5 - 8);
  v55 = a5 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v57 = &v24 - v56;
  v9 = *(v8 + 8);
  v59 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v62 = AssociatedTypeWitness - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v59, v67, v68, v58);
  v64 = &v24 - v63;
  v65 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v12, v13, v11);
  v66 = &v24 - v65;
  v69 = swift_getAssociatedTypeWitness();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v68, v67, v14, v15);
  v73 = &v24 - v72;
  v74 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, v18, &v24 - v72, v19);
  v75 = &v24 - v74;
  v76 = sub_226099FB8();
  if (!v76)
  {
    goto LABEL_24;
  }

  v78[0] = sub_22609A308();
  v42 = sub_22609A318();
  sub_22609A2E8();
  result = sub_226099FA8();
  if (v76 < 0)
  {
    sub_22609A3B8();
    __break(1u);
LABEL_24:
    v26 = sub_226099CA8();
    v27 = v46;
    return v26;
  }

  if (!v76)
  {
LABEL_19:
    v32 = v46;
LABEL_20:
    v28 = v32;
    sub_226099FC8();
    v23 = *(swift_getAssociatedConformanceWitness() + 8);
    v31 = sub_2260999D8();
    v29 = *(v70 + 8);
    v30 = v70 + 8;
    v29(v73, v69);
    if ((v31 & 1) == 0)
    {
      sub_22609A448();
      __break(1u);
    }

    v29(v75, v69);
    v25 = v78[0];

    v26 = v25;
    v27 = v28;
    return v26;
  }

  v40 = 0;
  for (i = v46; ; i = v36)
  {
    v38 = i;
    v39 = v40;
    if (v40 < 0 || v39 >= v76)
    {
      goto LABEL_18;
    }

    if (v76 < 0)
    {
      sub_22609A3B8();
      __break(1u);
LABEL_18:
      sub_22609A448();
      __break(1u);
      goto LABEL_19;
    }

    v37 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    v35 = &v77;
    v34 = sub_22609A038();
    (*(v61 + 16))(v64);
    v34();
    v22 = v38;
    v43(v64, v57);
    v36 = v22;
    if (v22)
    {
      (*(v61 + 8))(v64, AssociatedTypeWitness);
      (*(v70 + 8))(v75, v69);
      sub_225EF5A0C(v78);
      (*(v54 + 32))(v47, v57, v45);
      return v33;
    }

    (*(v61 + 8))(v64, AssociatedTypeWitness);
    sub_22609A2F8();
    sub_226099FD8();
    if (v37 == v76)
    {
      v32 = v36;
      goto LABEL_20;
    }

    result = v36;
    v40 = v37;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for RequestContextRetrievalParameters()
{
  v1 = qword_280D769D0;
  if (!qword_280D769D0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_225F162C8(uint64_t a1)
{
  v3 = sub_226098BA8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t RequestContextRetrievalParameters.__allocating_init(retrievalParameters:)(void *a1)
{
  v21 = [a1 maxNumEnrolled];
  [a1 retrievalTimeout];
  v22 = v1;
  v23 = [a1 maxEntityChars];
  v25 = [a1 maxEntityWords];
  v26 = [a1 rejectedContextTypes];
  if (v26)
  {
    v19 = sub_226099C88();
    MEMORY[0x277D82BD8](v26);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v18 = v20;
  }

  else
  {
    LOBYTE(v3) = 2;
    v5 = 182;
    LODWORD(v7) = 0;
    sub_22609A3B8();
    __break(1u);
  }

  v17 = [a1 rejectedBundleTypes];
  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E58, &unk_2260A0950);
    v15 = sub_226099878();
    MEMORY[0x277D82BD8](v17);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v14 = v16;
  }

  else
  {
    LOBYTE(v4) = 2;
    v6 = 182;
    LODWORD(v8) = 0;
    sub_22609A3B8();
    __break(1u);
  }

  v13 = [a1 enabledTasks];
  if (v13)
  {
    v11 = sub_226099C88();
    MEMORY[0x277D82BD8](v13);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v10 = v12;
  }

  else
  {
    sub_22609A3B8();
    __break(1u);
  }

  v9 = RequestContextRetrievalParameters.__allocating_init(maxNumEnrolled:retrievalTimeout:maxEntityChars:maxEntityWords:rejectedContextTypes:rejectedBundleTypes:enabledTasks:)(v21, v23, v25, v18, v14, v10, v22);
  MEMORY[0x277D82BE0](v9);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v9);
  return v9;
}

uint64_t RequestContextRetrievalParameters.setRequestTask(requestTask:)(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v2, v3, v4);
  v10 = &v7 - v9;
  v12 = v5;
  v11 = v1;
  sub_225F14508(v5, &v7 - v9);
  return sub_225F1469C(v10);
}

uint64_t RequestContextRetrievalParameters.description.getter()
{
  v55 = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E30, &qword_2260A09D0);
  v27[0] = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42, v1, v2, v3);
  v41 = v27 - v27[0];
  v55 = v0;
  v4 = sub_22609A4E8();
  v46 = &v53;
  v53 = v4;
  v54 = v5;
  v44 = 1;
  v6 = sub_226099AA8();
  v27[1] = v7;
  MEMORY[0x22AA735F0](v6);

  v52[4] = *(v39 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxNumEnrolled);
  v27[6] = MEMORY[0x277D83B88];
  v27[7] = MEMORY[0x277D83BF8];
  sub_22609A4B8();
  v8 = sub_226099AA8();
  v27[2] = v9;
  MEMORY[0x22AA735F0](v8);

  v52[3] = *(v39 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_retrievalTimeout);
  sub_22609A4C8();
  v27[4] = 18;
  v10 = sub_226099AA8();
  v27[3] = v11;
  MEMORY[0x22AA735F0](v10);

  v52[2] = *(v39 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxEntityChars);
  sub_22609A4B8();
  v12 = sub_226099AA8();
  v27[5] = v13;
  MEMORY[0x22AA735F0](v12);

  v52[1] = *(v39 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_maxEntityWords);
  sub_22609A4B8();
  v14 = sub_226099AA8();
  v27[8] = v15;
  MEMORY[0x22AA735F0](v14);

  v28 = *(v39 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_rejectedContextTypes);
  sub_2260998E8();
  v30 = v52;
  v52[0] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E78, &qword_22609F998);
  sub_225F16DB0();
  sub_22609A4B8();
  sub_225EFE6E8(v30);
  v16 = sub_226099AA8();
  v31 = v17;
  MEMORY[0x22AA735F0](v16);

  v32 = *(v39 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_rejectedBundleTypes);
  sub_2260998E8();
  v34 = &v51;
  v51 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785E70, &qword_22609F990);
  sub_225F16E38();
  sub_22609A4B8();
  sub_225EFE6E8(v34);
  v18 = sub_226099AA8();
  v35 = v19;
  MEMORY[0x22AA735F0](v18);

  v36 = *(v39 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition33RequestContextRetrievalParameters_enabledTasks);
  sub_2260998E8();
  v38 = &v50;
  v50 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D785E80, &unk_22609F9A0);
  sub_225F16EC0();
  sub_22609A4B8();
  sub_225EFE6E8(v38);
  v20 = sub_226099AA8();
  v40 = v21;
  MEMORY[0x22AA735F0](v20);

  sub_225F144A4(v41);
  v22 = sub_226099A18();
  v43 = v49;
  v49[0] = v22;
  v49[1] = v23;
  sub_22609A4C8();
  sub_225EFE6BC(v43);
  v24 = sub_226099AA8();
  v45 = v25;
  MEMORY[0x22AA735F0](v24);

  v48 = v53;
  v47 = v54;
  sub_2260998E8();
  sub_225EFE6BC(v46);
  return sub_226099A88();
}

unint64_t sub_225F16DB0()
{
  v2 = qword_280D76590;
  if (!qword_280D76590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D785E78, &qword_22609F998);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76590);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F16E38()
{
  v2 = qword_280D76588;
  if (!qword_280D76588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D785E70, &qword_22609F990);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F16EC0()
{
  v2 = qword_280D76618;
  if (!qword_280D76618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D785E80, &unk_22609F9A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76618);
    return WitnessTable;
  }

  return v2;
}

id RequestContextRetrievalParameters.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestContextRetrievalParameters();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void variable initialization expression of CoreEmbeddedSpeechAnalyzer._audioEnqueuer(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
}

uint64_t variable initialization expression of CESRAsrReplayWorkerConfig.replayId()
{
  v10 = sub_226098A78();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v0, v1, v2);
  v9 = &v5 - v6;
  sub_226098A68();
  v11 = sub_226098A28();
  v12 = v3;
  (*(v7 + 8))(v9, v10);
  return v11;
}

uint64_t sub_225F1759C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_225F175DC@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_225F1760C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_225F1764C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

void sub_225F1767C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  sub_225F176B8();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_225F177D0()
{
  result = *v0;
  sub_225F177EC();
  return result;
}

uint64_t sub_225F1781C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_225F17848(a1);
  *a2 = result;
  return result;
}

uint64_t sub_225F17848(uint64_t a1)
{
  MEMORY[0x277D82BE0]();
  MEMORY[0x277D82BD8](a1);
  return a1;
}

uint64_t sub_225F178A0()
{
  v1 = *MEMORY[0x277CEF588];
  MEMORY[0x277D82BE0](*MEMORY[0x277CEF588]);
  v2 = sub_226099A08();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_225F17964(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_225F1A478();
  return sub_226098858();
}

uint64_t sub_225F179E0()
{
  v1 = sub_226098838();
  v2 = sub_22609A128();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_225F17B38(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_226099F98();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_22609A448();
  __break(1u);
LABEL_12:
  result = sub_22609A3B8();
  __break(1u);
  return result;
}

uint64_t sub_225F17E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20](v17, a2, v26, a4);
        v15 = sub_225F1AB20;
        v16 = &v37;
        sub_225F17B38(sub_225F1AB3C, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      sub_22609A3B8();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    sub_22609A3B8();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        sub_22609A3B8();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            sub_22609A3B8();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    sub_22609A3B8();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  sub_22609A3B8();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                sub_22609A3B8();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              sub_22609A3B8();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            sub_22609A3B8();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          sub_22609A3B8();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        sub_22609A3B8();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      sub_22609A3B8();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    sub_22609A448();
    __break(1u);
  }

  result = sub_22609A3B8();
  __break(1u);
  return result;
}

uint64_t *sub_225F186BC(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

void *sub_225F186F8(void *a1)
{
  if (*a1)
  {
    v1 = a1[1];
  }

  return a1;
}

uint64_t sub_225F18740(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_225F18890(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_225F18A90()
{
  v2 = sub_225F18BAC();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_225F18BAC()
{
  v4 = qword_280D76720;
  if (!qword_280D76720)
  {
    sub_226099808();
    v3 = sub_22609A198();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_280D76720);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_225F18C54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_225F18D5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 8) = 1;
    }
  }

  else if (a3)
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata accessor for mach_timebase_info()
{
  v4 = qword_27D785EF8;
  if (!qword_27D785EF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27D785EF8);
      return v1;
    }
  }

  return v4;
}

uint64_t initializeBufferWithCopyOfBuffer for CESRAsrReplayWorkerConfig(void *a1, uint64_t *a2)
{
  v4 = *a2;

  *a1 = v4;
  return *a1 + 16;
}

uint64_t sub_225F19004(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 40))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_225F190E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3)
    {
      *(result + 40) = 1;
    }
  }

  else if (a3)
  {
    *(result + 40) = 0;
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_225F192AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_225F1938C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3)
    {
      *(result + 24) = 1;
    }
  }

  else if (a3)
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t type metadata accessor for CMTime()
{
  v4 = qword_280D763C0;
  if (!qword_280D763C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280D763C0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_225F19600(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 48))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_225F196E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3)
    {
      *(result + 48) = 1;
    }
  }

  else if (a3)
  {
    *(result + 48) = 0;
  }

  return result;
}

uint64_t type metadata accessor for CMTimeRange()
{
  v4 = qword_27D785F08;
  if (!qword_27D785F08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27D785F08);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AFError()
{
  v4 = qword_280D76690;
  if (!qword_280D76690)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280D76690);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for qos_class_t()
{
  v4 = qword_280D76548;
  if (!qword_280D76548)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280D76548);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CheckingType()
{
  v4 = qword_27D785F10;
  if (!qword_27D785F10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27D785F10);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for MCRestrictedBoolType()
{
  v4 = qword_27D785F18;
  if (!qword_27D785F18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27D785F18);
      return v1;
    }
  }

  return v4;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_225F19B9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_225F19CA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t type metadata accessor for _NSRange()
{
  v4 = qword_27D785F20;
  if (!qword_27D785F20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27D785F20);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_225F19F08()
{
  v2 = qword_280D766A0;
  if (!qword_280D766A0)
  {
    type metadata accessor for AFError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D766A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F19FA0()
{
  v2 = qword_280D76698;
  if (!qword_280D76698)
  {
    type metadata accessor for AFError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F1A038()
{
  v2 = qword_280D766D0;
  if (!qword_280D766D0)
  {
    type metadata accessor for AFError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D766D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F1A0D0()
{
  v2 = qword_280D766B8;
  if (!qword_280D766B8)
  {
    type metadata accessor for AFError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D766B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F1A168()
{
  v2 = qword_280D766B0;
  if (!qword_280D766B0)
  {
    type metadata accessor for AFError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D766B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F1A200()
{
  v2 = qword_27D785F28;
  if (!qword_27D785F28)
  {
    type metadata accessor for Code();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D785F28);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for Code()
{
  v4 = qword_280D76568;
  if (!qword_280D76568)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280D76568);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_225F1A330()
{
  v2 = qword_280D76570;
  if (!qword_280D76570)
  {
    type metadata accessor for Code();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F1A3E0()
{
  v2 = qword_27D785F30;
  if (!qword_27D785F30)
  {
    type metadata accessor for Code();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D785F30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F1A478()
{
  v2 = qword_280D766C0;
  if (!qword_280D766C0)
  {
    type metadata accessor for AFError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D766C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F1A510()
{
  v2 = qword_27D785F40;
  if (!qword_27D785F40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D785F40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F1A58C()
{
  v2 = qword_280D76558;
  if (!qword_280D76558)
  {
    type metadata accessor for qos_class_t();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76558);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F1A60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_22609A3B8();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_22609A3B8();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_22609A3B8();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_22609A3B8();
                __break(1u);
              }

              sub_22609A3B8();
              __break(1u);
            }

            sub_22609A3B8();
            __break(1u);
          }

          sub_22609A3B8();
          __break(1u);
        }

        sub_22609A3B8();
        __break(1u);
      }

      sub_22609A3B8();
      __break(1u);
    }

    sub_22609A3B8();
    __break(1u);
  }

  result = sub_22609A3B8();
  __break(1u);
  return result;
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t type metadata accessor for BPSCompletionState()
{
  v4 = qword_27D785F50;
  if (!qword_27D785F50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27D785F50);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CompareOptions()
{
  v4 = qword_27D785F58;
  if (!qword_27D785F58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27D785F58);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_225F1AD40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 4))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_225F1AE48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (a3)
    {
      *(result + 4) = 1;
    }
  }

  else if (a3)
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t type metadata accessor for os_unfair_lock_s()
{
  v4 = qword_280D764E0;
  if (!qword_280D764E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280D764E0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CMTimeFlags()
{
  v4 = qword_27D785F60;
  if (!qword_27D785F60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27D785F60);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_225F1B114()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_27D785FD0);
  __swift_project_value_buffer(v1, qword_27D785FD0);
  return sub_225F1B160();
}

uint64_t sub_225F1B160()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8();
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_225F1B25C()
{
  if (qword_27D785D50 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_27D785FD0);
}

uint64_t sub_225F1B2C8()
{
  type metadata accessor for CESRSpeechVisualContextConfig();
  result = sub_225F1B324();
  qword_27D7883F8 = result;
  return result;
}

uint64_t *sub_225F1B360()
{
  if (qword_27D785D58 != -1)
  {
    swift_once();
  }

  return &qword_27D7883F8;
}

uint64_t sub_225F1B3C0()
{
  v1 = *sub_225F1B360();

  return v1;
}

uint64_t sub_225F1B3F0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F1B428()
{
  v3 = v0;
  os_unfair_lock_lock((v0 + 32));
  sub_225F1B4EC((v0 + 36), &v2);
  sub_225F1CB98((v0 + 32));
  return v2 & 1;
}

void sub_225F1B510(char a1)
{
  os_unfair_lock_lock((v1 + 32));
  sub_225F1B5F4((v1 + 36), a1 & 1);
  sub_225F1CB98(v2 + 8);
}

void (*sub_225F1B620(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_225F1B428() & 1;
  return sub_225F1B678;
}

uint64_t sub_225F1B6D8()
{
  v3 = v0;
  os_unfair_lock_lock((v0 + 40));
  sub_225F1B7A0((v0 + 48), &v2);
  sub_225F1CBC4();
  sub_225F1CB98((v0 + 40));
  return v2;
}

uint64_t sub_225F1B7A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = MEMORY[0x277D82BE0]();
  *a2 = v4;
  return result;
}

uint64_t sub_225F1B7F4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  os_unfair_lock_lock((v1 + 40));
  sub_225F1B914((v1 + 48), a1);
  sub_225F1CBC4();
  sub_225F1CB98(v3 + 10);
  MEMORY[0x277D82BD8](a1);
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_225F1B914(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x277D82BE0]();
  v2 = *a1;
  *a1 = a2;
  return MEMORY[0x277D82BD8](v2);
}

uint64_t (*sub_225F1B984(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_225F1B6D8();
  return sub_225F1B9D4;
}

uint64_t sub_225F1B9D4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_225F1B7F4(*a1);
  }

  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  sub_225F1B7F4(v4);
  return MEMORY[0x277D82BD8](*a1);
}

uint64_t sub_225F1BA54()
{
  v18 = v0;
  *(v0 + 16) = sub_226099AA8();
  *(v0 + 24) = v1;
  v17 = 1;
  *(v0 + 32) = 0;
  *(v0 + 32) = 0;
  *(v0 + 36) = 0;
  sub_225F1CB40(&v17, v0 + 36, MEMORY[0x277D839B0]);
  v16 = [objc_opt_self() client];
  *(v0 + 40) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  v2 = sub_225F1CBC4();
  sub_225F1CB40(&v16, v0 + 48, v2);
  sub_225F1C1A8();
  v7 = sub_225F1B6D8();
  sub_2260466E0();
  v6 = sub_2260999F8();

  v4 = swift_allocObject();

  swift_weakInit();

  v14 = sub_225F1CC28;
  v15 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = 0;
  v12 = sub_225F1C140;
  v13 = &block_descriptor;
  v5 = _Block_copy(&aBlock);

  [v7 addUpdateHandlerForNamespaceName:v6 usingBlock:v5];
  _Block_release(v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_225F1BC90(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v40 = a1;
  v39 = 0;
  v57 = 0;
  v56 = 0;
  v54 = 0;
  v38 = 0;
  v42 = sub_226098C58();
  v43 = *(v42 - 8);
  v44 = v43;
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v40, v41, v42, 0);
  v45 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v4;
  v46 = v5 + 16;
  v56 = v5 + 16;
  v47 = &v55;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v48 = Strong;
  swift_endAccess();
  if (!Strong)
  {
    return v38;
  }

  v37 = v48;
  v6 = v45;
  v30 = v48;
  v54 = v48;
  v7 = sub_225F1B25C();
  (*(v44 + 16))(v6, v7, v42);
  v34 = sub_226098C48();
  v31 = v34;
  v33 = sub_22609A0A8();
  v32 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v35 = sub_22609A4F8();
  if (os_log_type_enabled(v34, v33))
  {
    v9 = v38;
    v21 = sub_22609A188();
    v17 = v21;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v19 = 0;
    v22 = sub_225EF5468(0);
    v20 = v22;
    v23 = sub_225EF5468(v19);
    v53 = v21;
    v52 = v22;
    v51 = v23;
    v24 = 0;
    v25 = &v53;
    sub_225EF54BC(0, &v53);
    sub_225EF54BC(v24, v25);
    v50 = v35;
    v26 = v15;
    MEMORY[0x28223BE20](v15, v10, v11, v12);
    v27 = &v15[-6];
    v15[-4] = v13;
    v15[-3] = &v52;
    v15[-2] = &v51;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    v29 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_225EEB000, v31, v32, "Updating visual context config", v17, 2u);
      v15[1] = 0;
      sub_225EF7AF4(v20);
      sub_225EF7AF4(v23);
      sub_22609A168();

      v16 = v29;
    }
  }

  else
  {

    v16 = v38;
  }

  v15[0] = v16;

  (*(v44 + 8))(v45, v42);
  sub_225F1C1A8();

  return v15[0];
}

uint64_t sub_225F1C140(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v3(a2);
  swift_unknownObjectRelease();
}

uint64_t sub_225F1C1A8()
{
  v52 = sub_225F1CC94;
  v53 = sub_225EF70FC;
  v54 = sub_225EF7108;
  v55 = sub_225EF7150;
  v56 = sub_225EF7434;
  v57 = sub_225EF7434;
  v58 = sub_225EF715C;
  v81 = 0;
  v80 = 0;
  v59 = 0;
  v60 = sub_226098C58();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60, v1, v2, v3);
  v64 = v24 - v63;
  v81 = v0;
  v65 = sub_225F1B6D8();
  [v65 refresh];
  MEMORY[0x277D82BD8](v65);
  v72 = sub_225F1B6D8();
  v67 = *(v66 + 16);
  v68 = *(v66 + 24);
  sub_2260998E8();
  v71 = sub_2260999F8();

  sub_2260466E0();
  v69 = v4;
  v70 = sub_2260999F8();

  v73 = [v72 levelForFactor:v71 withNamespaceName:v70];
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  v80 = v73;
  MEMORY[0x277D82BE0](v73);
  if (v73)
  {
    v51 = v73;
    v48 = v73;
    v49 = [v73 BOOLeanValue];
    MEMORY[0x277D82BD8](v48);
    v50 = v49;
  }

  else
  {
    v50 = 2;
  }

  v79 = v50;
  if (v50 == 2)
  {
    v47 = 1;
  }

  else
  {
    v47 = v79;
  }

  sub_225F1B510(v47 & 1);
  v5 = v64;
  v6 = sub_225F1B25C();
  (*(v61 + 16))(v5, v6, v60);

  v45 = sub_226098C48();
  v46 = sub_22609A088();
  v33 = 17;
  v36 = 7;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = 4;
  v35 = 32;
  v7 = swift_allocObject();
  v8 = v66;
  v34 = v7;
  *(v7 + 16) = v52;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v34;
  v37 = v9;
  *(v9 + 16) = v53;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v37;
  v38 = v11;
  *(v11 + 16) = v54;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v38;
  v42 = v13;
  *(v13 + 16) = v55;
  *(v13 + 24) = v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v41 = sub_22609A4F8();
  v43 = v15;

  v16 = v39;
  v17 = v43;
  *v43 = v56;
  v17[1] = v16;

  v18 = v40;
  v19 = v43;
  v43[2] = v57;
  v19[3] = v18;

  v20 = v42;
  v21 = v43;
  v43[4] = v58;
  v21[5] = v20;
  sub_225EF5418();

  if (os_log_type_enabled(v45, v46))
  {
    v22 = v59;
    v26 = sub_22609A188();
    v24[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v25 = 0;
    v27 = sub_225EF5468(0);
    v28 = sub_225EF5468(v25);
    v29 = &v78;
    v78 = v26;
    v30 = &v77;
    v77 = v27;
    v31 = &v76;
    v76 = v28;
    sub_225EF54BC(0, &v78);
    sub_225EF54BC(1, v29);
    v74 = v56;
    v75 = v39;
    sub_225EF73E8(&v74, v29, v30, v31);
    v32 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v74 = v57;
      v75 = v40;
      sub_225EF73E8(&v74, &v78, &v77, &v76);
      v24[2] = 0;
      v74 = v58;
      v75 = v42;
      sub_225EF73E8(&v74, &v78, &v77, &v76);
      _os_log_impl(&dword_225EEB000, v45, v46, "Loaded visual context config: %{BOOL}d", v26, 8u);
      v24[1] = 0;
      sub_225EF7AF4(v27);
      sub_225EF7AF4(v28);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v45);
  (*(v61 + 8))(v64, v60);
  return MEMORY[0x277D82BD8](v73);
}

uint64_t sub_225F1CAB4()
{
  sub_225EFE6BC(v0 + 16);
  sub_225F1CC9C(v0 + 32);
  sub_225F1CD4C(v0 + 40);
  return v2;
}

unint64_t sub_225F1CBC4()
{
  v2 = qword_27D785FE8;
  if (!qword_27D785FE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D785FE8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_225F1CC9C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786000, &qword_2260A0090);
  (*(*(v1 - 8) + 8))(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786008, &qword_2260A0098);
  (*(*(v2 - 8) + 8))(a1 + 4);
  return a1;
}

uint64_t sub_225F1CD4C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786000, &qword_2260A0090);
  (*(*(v1 - 8) + 8))(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786010, &unk_2260A00A0);
  (*(*(v2 - 8) + 8))(a1 + 8);
  return a1;
}

uint64_t sub_225F1CE2C()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_280D767C8);
  __swift_project_value_buffer(v1, qword_280D767C8);
  return sub_225F1CE78();
}

uint64_t sub_225F1CE78()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8();
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_225F1CF74()
{
  if (qword_280D767C0 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_280D767C8);
}

uint64_t type metadata accessor for CombinedTranscriberOutput()
{
  v1 = qword_280D76D58;
  if (!qword_280D76D58)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_225F1D0EC(const void *a1, void *a2)
{
  v6 = sub_226099458();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_225F1D214@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for CombinedTranscriberOutput() + 24);
  v2 = sub_226098FA8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

void *sub_225F1D2C4@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_226098FA8();
  v10 = *(*(v9 - 8) + 32);
  v10(a5, a1);
  v11 = type metadata accessor for CombinedTranscriberOutput();
  sub_225F2DAF4(a2, (a5 + v11[5]));
  (v10)(a5 + v11[6], a3, v9);
  return sub_225F2DAF4(a4, (a5 + v11[7]));
}

uint64_t sub_225F1D3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v26 = a1;
  v33 = a5;
  v6 = v5;
  v7 = v26;
  v34 = v6;
  v52 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v39 = v44;
  v44[0] = 0;
  v44[1] = 0;
  v42 = 0;
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v32 = a2;
  v35 = a3;
  v36 = a4;
  v38 = 0;
  v27 = sub_2260995E8();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27, v8, v9, v10);
  v31 = &v21 - v30;
  v52 = &v21 - v30;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786020, &qword_2260A00C8);
  v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v13, v14, v15);
  v37 = &v21 - v16;
  v51 = v7;
  v48 = v17;
  v49 = v35;
  v50 = v36;
  v47 = v18 & 1;
  v46 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
  v45 = sub_22609A4F8();
  v43 = sub_226098F98();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786030, &qword_2260A00D8);
  sub_225F1D798();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786038, &unk_2260A00E0);
    sub_22609A388();
    if ((*(v28 + 48))(v37, 1, v27) == 1)
    {
      break;
    }

    (*(v28 + 32))(v31, v37, v27);
    v23 = sub_2260995D8();
    v25 = sub_225F1D820(v23, v33 & 1);

    v42 = v25;
    sub_2260998E8();
    v24 = &v41;
    v41 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CB0, &unk_2260A0300);
    sub_226099CE8();

    (*(v28 + 8))(v31, v27);
  }

  sub_225EFE6E8(v44);
  v21 = &v45;
  v22 = v45;
  sub_2260998E8();
  sub_225EFE6E8(v21);
  return v22;
}

unint64_t sub_225F1D798()
{
  v2 = qword_280D76628;
  if (!qword_280D76628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786030, &qword_2260A00D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76628);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F1D820(uint64_t a1, unsigned int a2)
{
  v54 = a1;
  v57 = a2;
  v40 = "Fatal error";
  v41 = "Double value cannot be converted to Int because it is either infinite or NaN";
  v42 = "Swift/IntegerTypes.swift";
  v43 = "Double value cannot be converted to Int because the result would be less than Int.min";
  v44 = "Double value cannot be converted to Int because the result would be greater than Int.max";
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v55 = v77;
  v77[0] = 0;
  v77[1] = 0;
  v75 = 0;
  v50 = 0;
  v45 = sub_226099598();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45, v3, v4, v5);
  v49 = &v22 - v48;
  v83 = &v22 - v48;
  v51 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786040, &qword_2260A00F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50, v57, v6, v7);
  v52 = &v22 - v51;
  v82 = v8;
  v81 = v9 & 1;
  v80 = v2;
  v53 = sub_225F1E118();
  v79 = sub_226099848();
  v78 = v57;
  sub_2260998E8();
  v76 = v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786048, &qword_2260A00F8);
  sub_225F1E17C();
  sub_22609A028();
  for (i = v57; ; i = v37)
  {
    v39 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786050, &unk_2260A0100);
    sub_22609A388();
    if ((*(v46 + 48))(v52, 1, v45) == 1)
    {
      break;
    }

    (*(v46 + 32))(v49, v52, v45);
    v35 = sub_225F26174();
    v75 = v35;
    sub_226099588();
    v31 = v10;
    v32 = sub_2260999F8();

    [v35 setText_];
    MEMORY[0x277D82BD8](v32);
    sub_226099538();
    v33 = v11;
    v34 = sub_2260999F8();

    [v35 setPhoneSequence_];
    MEMORY[0x277D82BD8](v34);
    v72 = sub_226099568();
    v73 = v12;
    v74 = v13;
    v69 = v72;
    v70 = v12;
    v71 = v13;
    sub_22609A0F8();
    [v35 setStartTime_];
    v66 = sub_226099518();
    v67 = v14;
    v68 = v15;
    v63 = v66;
    v64 = v14;
    v65 = v15;
    sub_22609A0F8();
    [v35 setSilenceStartTime_];
    v60 = sub_226099558();
    v61 = v16;
    v62 = v17;
    v59[1] = v60;
    v59[2] = v16;
    v59[3] = v17;
    sub_22609A0F8();
    [v35 setEndTime_];
    v36 = 1;
    [v35 setRemoveSpaceBefore_];
    v18 = sub_226099528();
    v37 = v18 ^ 1;
    v78 = (v18 ^ 1) & v36;
    sub_2260994F8();
    v38 = v19;
    if (((*&v19 >> 52) & 0x7FFLL) == 0x7FF)
    {
      sub_22609A3B8();
      __break(1u);
    }

    if (v38 <= -9.22337204e18)
    {
      sub_22609A3B8();
      __break(1u);
    }

    if (v38 >= 9.22337204e18)
    {
      sub_22609A3B8();
      __break(1u);
    }

    [v35 setConfidenceScore_];
    sub_226099548();
    v25 = v20;
    v26 = sub_2260999F8();

    [v35 setIpaPhoneSequence_];
    MEMORY[0x277D82BD8](v26);
    v28 = sub_225F27014();
    sub_226099578();
    v27 = sub_225F26494();
    [v35 setGraphCost_];
    MEMORY[0x277D82BD8](v27);
    sub_226099508();
    v29 = sub_225F26494();
    [v35 setAcousticCost_];
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BE0](v35);
    v30 = v59;
    v59[0] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
    sub_226099CE8();
    MEMORY[0x277D82BD8](v35);
    (*(v46 + 8))(v49, v45);
  }

  sub_225EFE6E8(v77);
  v23 = &v79;
  v24 = v79;
  sub_2260998E8();
  sub_225EFE6E8(v23);
  return v24;
}

unint64_t sub_225F1E118()
{
  v2 = qword_280D76530;
  if (!qword_280D76530)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76530);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F1E17C()
{
  v2 = qword_280D76638;
  if (!qword_280D76638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786048, &qword_2260A00F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76638);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F1E204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v415 = a1;
  v414 = a2;
  v413 = a9;
  v401 = a6;
  v402 = a7;
  v403 = a8;
  v404 = a10;
  v405 = a11;
  v406 = a12;
  v407 = a13;
  v421 = 0;
  v422 = sub_225F25A4C;
  v357 = "Fatal error";
  v358 = "Unexpectedly found nil while unwrapping an Optional value";
  v359 = "CoreEmbeddedSpeechRecognition/CESRUtilities.swift";
  v360 = sub_225F26438;
  v361 = sub_225EF7450;
  v362 = sub_225EF7B84;
  v363 = sub_225EF7434;
  v364 = sub_225EF7434;
  v365 = sub_225EF7B90;
  v366 = sub_225F26438;
  v367 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v522 = 0;
  v521 = 0;
  v520 = 0;
  v519 = 0;
  v518 = 0;
  v517 = 0;
  v516 = 0;
  v515 = 0;
  v512 = 0;
  v513 = 0;
  v514 = 0;
  v511 = 0.0;
  v510 = 0;
  v508 = 0;
  v509 = 0;
  v506 = 0;
  v507 = 0;
  v505 = 0;
  v504 = 0;
  v503 = 0;
  v499 = 0;
  v498 = 0;
  v494 = 0;
  v490 = 0;
  v489 = 0;
  v488 = 0;
  v485 = 0;
  v484 = 0;
  v441 = 0;
  v442 = 0;
  v531 = a3;
  v532 = a4;
  v533 = a5;
  v410 = a3;
  v411 = a4;
  v412 = a5;
  v418 = 0;
  v368 = sub_226098C58();
  v369 = *(v368 - 8);
  v370 = v368 - 8;
  v371 = (*(v369 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v14, v15, v16);
  v372 = &v189 - v371;
  v373 = sub_226098FA8();
  v374 = *(v373 - 8);
  v375 = v373 - 8;
  v376 = (v374[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v373, v17, v18, v19);
  v377 = &v189 - v376;
  v522 = &v189 - v376;
  v378 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v22, v23, v24);
  v379 = &v189 - v378;
  v521 = &v189 - v378;
  v380 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26, v27, v28, v29);
  v381 = &v189 - v380;
  v520 = &v189 - v380;
  v382 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31, v32, v33, v34);
  v383 = &v189 - v382;
  v519 = &v189 - v382;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786058, &qword_2260A0E00);
  v384 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35, v36, v37, v38);
  v385 = &v189 - v384;
  v386 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v189 - v384, v40, v41, v42);
  v387 = &v189 - v386;
  v388 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v189 - v386, v44, v45, v46);
  v389 = &v189 - v388;
  v518 = &v189 - v388;
  v390 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48, v49, v50, v51);
  v391 = &v189 - v390;
  v517 = &v189 - v390;
  v392 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786060, &qword_2260A0110) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v418, v52, v53, v54);
  v393 = &v189 - v392;
  v394 = sub_2260990C8();
  v395 = *(v394 - 8);
  v396 = v394 - 8;
  v397 = (v395[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v394, v55, v56, v57);
  v398 = &v189 - v397;
  v399 = (v58 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v189 - v397, v59, v60, v61);
  v400 = &v189 - v399;
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786068, &qword_2260A0118);
  v63 = MEMORY[0x28223BE20](v418, v414, (*(*(v419 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0, v62);
  v417 = &v189 - v64;
  v516 = v415;
  v515 = v65;
  v512 = v66;
  v513 = __PAIR64__(v67, v68);
  v514 = v412;
  v511 = v63;
  v510 = v69 & 1;
  v508 = v70;
  v509 = v71;
  v506 = v72;
  v507 = v405;
  v505 = v406 & 1;
  v504 = v73;
  v503 = v13;
  v408 = sub_225F27078();
  v500 = v410;
  v501 = v411;
  v502 = v412;
  v409 = sub_225F205E0(v415, v410, v411, v412);
  v499 = v409;
  MEMORY[0x277D82BE0](v409);
  v498 = v409;
  v495 = v410;
  v496 = v411;
  v497 = v412;
  v416 = sub_225F205E0(v414, v410, v411, v412);
  v494 = v416;
  sub_226098F18();
  v423 = sub_225F270DC();
  sub_225F25E38(v422, v421, v419, MEMORY[0x277D84A98], v423, v420, &v492);
  v424 = 0;
  sub_225F27140(v417);
  v491 = v492;
  if (v492)
  {
    v493 = v491;
  }

  else
  {
    v493 = sub_225F26174();
    if (v491)
    {
      sub_225EFE834(&v491);
    }
  }

  v349 = v493;
  v490 = v493;
  sub_226098EE8();
  v74 = *MEMORY[0x277CDCBA0];
  v351 = v395[13];
  v350 = v395 + 13;
  v351(v398, v74, v394);
  v356 = sub_2260990B8();
  v353 = v395[1];
  v352 = v395 + 1;
  v353(v398, v394);
  v353(v400, v394);
  v355 = 1;
  v489 = v356 & 1;
  sub_226098EE8();
  v351(v398, *MEMORY[0x277CDCBA8], v394);
  v354 = sub_2260990B8();
  v353(v398, v394);
  v353(v400, v394);
  v488 = v354 & 1 & v355;
  if (v356)
  {
    v348 = 1;
  }

  else
  {
    v486 = sub_226098F38();
    v487 = v75 & 1;
    v347 = (v75 & 1) != 0;
    v348 = v347;
  }

  if (v348)
  {
    v346 = -1;
  }

  else
  {
    v345 = sub_226098F38();
    if (v76)
    {
      LOBYTE(v186) = 2;
      v187 = 68;
      LODWORD(v188) = 0;
      sub_22609A3B8();
      __break(1u);
    }

    else
    {
      v344 = v345;
    }

    v346 = v344;
  }

  v342 = v346;
  v485 = v346;
  sub_226098ED8();
  v343 = sub_225F261A4(v393);
  sub_225F271E8(v393);
  v484 = v343;
  v483 = 0;
  v482 = 0;
  if (v406)
  {
    sub_226098F88();
    sub_226098F88();
    sub_225F2C4E8(v391, v387);
    v340 = v374[6];
    v341 = v374 + 6;
    if (v340(v387, 1, v373) == 1)
    {
      sub_225F2C610(v387);
    }

    else
    {
      v338 = v374[4];
      v339 = v374 + 4;
      v338(v379, v387, v373);
      sub_225F2C4E8(v389, v385);
      if (v340(v385, 1, v373) != 1)
      {
        v338(v377, v385, v373);
        v425 = v410;
        v426 = v411;
        v427 = v412;
        LOBYTE(v188) = 0;
        v77 = sub_225F1E204(v379, v377, v410, v411, v412, v401 & 1, v402, v403, v413, v404, v405, v188, 0);
        v78 = v483;
        v483 = v77;
        MEMORY[0x277D82BD8](v78);
        v337 = v374[1];
        v336 = v374 + 1;
        v337(v377, v373);
        v337(v379, v373);
LABEL_22:
        v428 = v410;
        v429 = v411;
        v430 = v412;
        LOBYTE(v188) = 0;
        v80 = sub_225F1E204(v383, v381, v410, v411, v412, v401 & 1, v402, v403, v413, v404, v405, v188, 0);
        v81 = v482;
        v482 = v80;
        MEMORY[0x277D82BD8](v81);
        v335 = v374[1];
        v334 = v374 + 1;
        v335(v381, v373);
        sub_225F2C610(v389);
        v335(v383, v373);
        sub_225F2C610(v391);
        goto LABEL_23;
      }

      sub_225F2C610(v385);
      (v374[1])(v379, v373);
    }

    v79 = v483;
    v483 = 0;
    MEMORY[0x277D82BD8](v79);
    goto LABEL_22;
  }

LABEL_23:
  v82 = sub_22609A4E8();
  v329 = &v480;
  v480 = v82;
  v481 = v83;
  v331 = 1;
  v84 = sub_226099AA8();
  v318 = v85;
  MEMORY[0x22AA735F0](v84);

  MEMORY[0x277D82BE0](v409);
  v319 = &v479;
  v479 = v409;
  v324 = sub_225F27290();
  v325 = sub_225F272F4();
  v86 = sub_226099A28();
  v320 = v478;
  v478[0] = v86;
  v478[1] = v87;
  v328 = MEMORY[0x277D837D0];
  v326 = MEMORY[0x277D83838];
  v327 = MEMORY[0x277D83830];
  sub_22609A4C8();
  sub_225EFE6BC(v320);
  v88 = sub_226099AA8();
  v321 = v89;
  MEMORY[0x22AA735F0](v88);

  MEMORY[0x277D82BE0](v409);
  v477[2] = v409;
  v90 = sub_226099A28();
  v322 = v477;
  v477[0] = v90;
  v477[1] = v91;
  sub_22609A4C8();
  sub_225EFE6BC(v322);
  v92 = sub_226099AA8();
  v323 = v93;
  MEMORY[0x22AA735F0](v92);

  MEMORY[0x277D82BE0](v416);
  v476[2] = v416;
  v94 = sub_226099A28();
  v330 = v476;
  v476[0] = v94;
  v476[1] = v95;
  sub_22609A4C8();
  sub_225EFE6BC(v330);
  v96 = sub_226099AA8();
  v332 = v97;
  MEMORY[0x22AA735F0](v96);

  v333 = [v349 speechRecognitionFeatures];
  if (v333)
  {
    v317 = v333;
    v314 = v333;
    sub_225F27014();
    v315 = sub_226099878();
    MEMORY[0x277D82BD8](v314);
    v316 = v315;
  }

  else
  {
    v316 = 0;
  }

  v309 = &v475;
  v475 = v316;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786070, &qword_2260A0120);
  v98 = sub_226099A18();
  v311 = v474;
  v474[0] = v98;
  v474[1] = v99;
  v310 = &v480;
  sub_22609A4C8();
  sub_225EFE6BC(v311);
  v100 = sub_226099AA8();
  v312 = v101;
  MEMORY[0x22AA735F0](v100);

  v313 = [v349 acousticFeatures];
  if (v313)
  {
    v308 = v313;
    v305 = v313;
    sub_225F2C484();
    v306 = sub_226099878();
    MEMORY[0x277D82BD8](v305);
    v307 = v306;
  }

  else
  {
    v307 = 0;
  }

  v290 = &v473;
  v473 = v307;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786078, &qword_2260A0128);
  v102 = sub_226099A18();
  v291 = v472;
  v472[0] = v102;
  v472[1] = v103;
  v295 = MEMORY[0x277D837D0];
  v293 = MEMORY[0x277D83838];
  v294 = MEMORY[0x277D83830];
  v302 = &v480;
  sub_22609A4C8();
  sub_225EFE6BC(v291);
  v303 = 1;
  v104 = sub_226099AA8();
  v292 = v105;
  MEMORY[0x22AA735F0](v104);

  [v349 snr];
  v471[2] = v106;
  v299 = MEMORY[0x277D839F8];
  v300 = MEMORY[0x277D83A60];
  v301 = MEMORY[0x277D83A58];
  v107 = sub_226099A38();
  v296 = v471;
  v471[0] = v107;
  v471[1] = v108;
  sub_22609A4C8();
  sub_225EFE6BC(v296);
  v109 = sub_226099AA8();
  v297 = v110;
  MEMORY[0x22AA735F0](v109);

  v470 = v356 & v303;
  sub_22609A4B8();
  v111 = sub_226099AA8();
  v298 = v112;
  MEMORY[0x22AA735F0](v111);

  sub_226098F58();
  v466 = v523;
  v467 = v524;
  v468 = v525;
  v469 = v526;
  sub_22609A0F8();
  v465 = v113;
  sub_22609A4C8();
  v114 = sub_226099AA8();
  v304 = v115;
  MEMORY[0x22AA735F0](v114);

  MEMORY[0x277D82BE0](v343);
  if (v343)
  {
    v289 = v343;
    v285 = v343;
    [v343 score];
    v286 = v116;
    MEMORY[0x277D82BD8](v285);
    v287 = v286;
    v288 = 0;
  }

  else
  {
    v287 = 0;
    v288 = 1;
  }

  v279 = &v463;
  v463 = v287;
  v283 = 1;
  v464 = v288 & 1;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786080, &qword_2260A0130);
  v117 = sub_226099A18();
  v282 = v462;
  v462[0] = v117;
  v462[1] = v118;
  v281 = &v480;
  sub_22609A4C8();
  sub_225EFE6BC(v282);
  v119 = sub_226099AA8();
  v284 = v120;
  MEMORY[0x22AA735F0](v119);

  MEMORY[0x277D82BE0](v343);
  if (v343)
  {
    v278 = v343;
    v274 = v343;
    [v343 threshold];
    v275 = v121;
    MEMORY[0x277D82BD8](v274);
    v276 = v275;
    v277 = 0;
  }

  else
  {
    v276 = 0;
    v277 = 1;
  }

  v460 = v276;
  v272 = 1;
  v461 = v277 & 1;
  v122 = sub_226099A18();
  v271 = v459;
  v459[0] = v122;
  v459[1] = v123;
  v270 = &v480;
  sub_22609A4C8();
  sub_225EFE6BC(v271);
  v124 = sub_226099AA8();
  v273 = v125;
  MEMORY[0x22AA735F0](v124);

  MEMORY[0x277D82BE0](v343);
  if (v343)
  {
    v269 = v343;
    v265 = v343;
    [v343 calibrationScale];
    v266 = v126;
    MEMORY[0x277D82BD8](v265);
    v267 = v266;
    v268 = 0;
  }

  else
  {
    v267 = 0;
    v268 = 1;
  }

  v457 = v267;
  v263 = 1;
  v458 = v268 & 1;
  v127 = sub_226099A18();
  v262 = v456;
  v456[0] = v127;
  v456[1] = v128;
  v261 = &v480;
  sub_22609A4C8();
  sub_225EFE6BC(v262);
  v129 = sub_226099AA8();
  v264 = v130;
  MEMORY[0x22AA735F0](v129);

  MEMORY[0x277D82BE0](v343);
  if (v343)
  {
    v260 = v343;
    v256 = v343;
    [v343 calibrationOffset];
    v257 = v131;
    MEMORY[0x277D82BD8](v256);
    v258 = v257;
    v259 = 0;
  }

  else
  {
    v258 = 0;
    v259 = 1;
  }

  v132 = v424;
  v454 = v258;
  v252 = 1;
  v455 = v259 & 1;
  v133 = sub_226099A18();
  v243 = v453;
  v453[0] = v133;
  v453[1] = v134;
  v250 = &v480;
  sub_22609A4C8();
  sub_225EFE6BC(v243);
  v135 = sub_226099AA8();
  v244 = v136;
  MEMORY[0x22AA735F0](v135);

  v452 = v354 & v252;
  v246 = MEMORY[0x277D839B0];
  v247 = MEMORY[0x277D839D8];
  sub_22609A4B8();
  v248 = 21;
  v137 = sub_226099AA8();
  v245 = v138;
  MEMORY[0x22AA735F0](v137);

  v451 = v401;
  sub_22609A4B8();
  v139 = sub_226099AA8();
  v249 = v140;
  MEMORY[0x22AA735F0](v139);

  v450[1] = v342;
  sub_22609A4B8();
  v141 = sub_226099AA8();
  v251 = v142;
  MEMORY[0x22AA735F0](v141);

  v448[1] = sub_226098F08();
  v449 = v143 & 1 & v252;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786088, &qword_2260A0138);
  v254 = sub_225F27014();
  result = sub_225F25E38(v360, 0, v253, MEMORY[0x277D84A98], v254, v420, v450);
  v255 = v132;
  if (v132)
  {
    __break(1u);
LABEL_53:
    __break(1u);
    return result;
  }

  v207 = v448;
  v448[0] = v450[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786090, &qword_2260A0140);
  v145 = sub_226099A18();
  v208 = v447;
  v447[0] = v145;
  v447[1] = v146;
  v220 = MEMORY[0x277D837D0];
  v218 = MEMORY[0x277D83838];
  v219 = MEMORY[0x277D83830];
  v225 = &v480;
  sub_22609A4C8();
  sub_225EFE6BC(v208);
  v223 = 1;
  v147 = sub_226099AA8();
  v209 = v148;
  MEMORY[0x22AA735F0](v147);

  v446[3] = v402;
  v446[4] = v403;
  sub_22609A4C8();
  v149 = sub_226099AA8();
  v210 = v150;
  MEMORY[0x22AA735F0](v149);

  v446[1] = v404;
  v446[2] = v405;
  sub_22609A4C8();
  v151 = sub_226099AA8();
  v211 = v152;
  MEMORY[0x22AA735F0](v151);

  v212 = v483;
  MEMORY[0x277D82BE0](v483);
  MEMORY[0x277D82BE0](v212);
  v213 = v446;
  v446[0] = v212;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786098, &qword_2260A0148);
  v153 = sub_226099A18();
  v214 = v445;
  v445[0] = v153;
  v445[1] = v154;
  sub_22609A4C8();
  sub_225EFE6BC(v214);
  v155 = sub_226099AA8();
  v215 = v156;
  MEMORY[0x22AA735F0](v155);

  v216 = v482;
  MEMORY[0x277D82BE0](v482);
  MEMORY[0x277D82BE0](v216);
  v444[2] = v216;
  v157 = sub_226099A18();
  v221 = v444;
  v444[0] = v157;
  v444[1] = v158;
  sub_22609A4C8();
  sub_225EFE6BC(v221);
  v159 = sub_226099AA8();
  v222 = v160;
  MEMORY[0x22AA735F0](v159);

  v443 = sub_226098F68();
  sub_22609A4B8();
  v161 = sub_226099AA8();
  v224 = v162;
  MEMORY[0x22AA735F0](v161);
  v163 = v372;

  v227 = v480;
  v226 = v481;
  sub_2260998E8();
  sub_225EFE6BC(v225);
  v228 = sub_226099A88();
  v229 = v164;
  v441 = v228;
  v442 = v164;
  v165 = sub_225F1CF74();
  (*(v369 + 16))(v163, v165, v368);
  sub_2260998E8();
  v231 = 32;
  v232 = 7;
  v166 = swift_allocObject();
  v167 = v229;
  v233 = v166;
  *(v166 + 16) = v228;
  *(v166 + 24) = v167;
  v241 = sub_226098C48();
  v242 = sub_22609A088();
  v230 = 17;
  v235 = swift_allocObject();
  *(v235 + 16) = 32;
  v236 = swift_allocObject();
  *(v236 + 16) = 8;
  v168 = swift_allocObject();
  v169 = v233;
  v234 = v168;
  *(v168 + 16) = v361;
  *(v168 + 24) = v169;
  v170 = swift_allocObject();
  v171 = v234;
  v238 = v170;
  *(v170 + 16) = v362;
  *(v170 + 24) = v171;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v237 = sub_22609A4F8();
  v239 = v172;

  v173 = v235;
  v174 = v239;
  *v239 = v363;
  v174[1] = v173;

  v175 = v236;
  v176 = v239;
  v239[2] = v364;
  v176[3] = v175;

  v177 = v238;
  v178 = v239;
  v239[4] = v365;
  v178[5] = v177;
  sub_225EF5418();

  if (os_log_type_enabled(v241, v242))
  {
    v179 = v255;
    v200 = sub_22609A188();
    v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v201 = sub_225EF5468(0);
    v202 = sub_225EF5468(1);
    v203 = v435;
    v435[0] = v200;
    v204 = &v434;
    v434 = v201;
    v205 = &v433;
    v433 = v202;
    sub_225EF54BC(2, v435);
    sub_225EF54BC(1, v203);
    v431 = v363;
    v432 = v235;
    sub_225EF73E8(&v431, v203, v204, v205);
    v206 = v179;
    if (v179)
    {

      __break(1u);
    }

    else
    {
      v431 = v364;
      v432 = v236;
      sub_225EF73E8(&v431, v435, &v434, &v433);
      v197 = 0;
      v431 = v365;
      v432 = v238;
      sub_225EF73E8(&v431, v435, &v434, &v433);
      v196 = 0;
      _os_log_impl(&dword_225EEB000, v241, v242, "Creating AFSpeechPackage with the following contents: %s", v200, 0xCu);
      sub_225EF7AF4(v201);
      sub_225EF7AF4(v202);
      sub_22609A168();

      v198 = v196;
    }
  }

  else
  {
    v180 = v255;

    v198 = v180;
  }

  v181 = v198;
  MEMORY[0x277D82BD8](v241);
  (*(v369 + 8))(v372, v368);
  v194 = sub_225F2C420();
  MEMORY[0x277D82BE0](v409);
  MEMORY[0x277D82BE0](v409);
  MEMORY[0x277D82BE0](v416);
  MEMORY[0x277D82BE0](v349);
  sub_226098F58();
  v437[1] = v527;
  v438 = v528;
  v439 = v529;
  v440 = v530;
  sub_22609A0F8();
  v195 = v182;
  MEMORY[0x277D82BE0](v343);
  v435[1] = sub_226098F08();
  v436 = v183 & 1;
  result = sub_225F25E38(v366, 0, v253, MEMORY[0x277D84A98], v254, v420, v437);
  if (v181)
  {
    goto LABEL_53;
  }

  v191 = v437[0];
  sub_2260998E8();
  sub_2260998E8();
  v184 = sub_226098F68();
  v192 = &v185;
  v193 = sub_225F264D4(v409, v409, v416, v349, v356 & 1, v343, v354 & 1, v401 & 1, v195, v342, v191, v402, v403, v404, v405, v212, v216, v184);
  if (v193)
  {
    v190 = v193;
  }

  else
  {
    LOBYTE(v186) = 2;
    v187 = 122;
    LODWORD(v188) = 0;
    sub_22609A3B8();
    __break(1u);
  }

  v189 = v190;

  sub_225EFE834(&v482);
  sub_225EFE834(&v483);
  MEMORY[0x277D82BD8](v343);
  MEMORY[0x277D82BD8](v349);
  MEMORY[0x277D82BD8](v416);
  MEMORY[0x277D82BD8](v409);
  MEMORY[0x277D82BD8](v409);
  return v189;
}

uint64_t sub_225F205E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v922 = v4;
  v921 = v6;
  v920 = v5;
  v8 = v7;
  v933 = v7;
  v934 = 0;
  v1062 = 0;
  v1061 = 0;
  v1060 = 0;
  v1059 = 0;
  v1058 = 0;
  v1057 = 0.0;
  v1056 = 0;
  v1055 = 0;
  v1054 = 0;
  v1053 = 0;
  v1052 = 0;
  v906 = 0;
  v1049 = 0;
  v1048 = 0;
  v1047 = 0;
  memset(v1046, 0, sizeof(v1046));
  v1042 = 0;
  v1041 = 0;
  v1040 = 0;
  memset(v1039, 0, sizeof(v1039));
  v1033 = 0;
  v1030 = 0;
  v1029 = 0;
  v1020 = 0;
  v1019 = 0;
  v1017 = 0;
  v1013 = 0;
  v1012 = 0;
  v1011 = 0;
  v1010 = 0;
  v1009 = 0;
  v1007 = 0;
  v1005 = 0;
  v1004 = 0;
  v995 = 0;
  v994[1] = 0;
  v994[0] = 0;
  v986 = 0;
  v985 = 0;
  v967 = 0;
  v966 = 0;
  v965 = 0;
  v964 = 0;
  v959 = 0;
  v958 = 0;
  v957[1] = 0;
  v957[0] = 0;
  v954 = 0;
  v1063 = v9;
  v1064 = v10;
  v1065 = v11;
  v919 = v9;
  v930 = v10;
  v931 = v11;
  v907 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786040, &qword_2260A00F0) - 8) + 64);
  MEMORY[0x28223BE20](0, v12, v13, v14);
  v909 = (v907 + 15) & 0xFFFFFFFFFFFFFFF0;
  v908 = &v238 - v909;
  MEMORY[0x28223BE20](v15, &v238 - v909, v16, v17);
  v910 = &v238 - v909;
  v911 = sub_2260995E8();
  v912 = *(v911 - 8);
  v913 = v912;
  v18 = *(v912 + 64);
  MEMORY[0x28223BE20](v911 - 8, v911, v19, v20);
  v914 = &v238 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1062 = v914;
  v915 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860A0, &qword_2260A0150) - 8) + 64);
  MEMORY[0x28223BE20](v934, v22, v23, v24);
  v917 = (v915 + 15) & 0xFFFFFFFFFFFFFFF0;
  v916 = (&v238 - v917);
  MEMORY[0x28223BE20](v25, &v238 - v917, v26, v27);
  v918 = (&v238 - v917);
  v923 = sub_226098C58();
  v924 = *(v923 - 8);
  v925 = v924;
  v928 = *(v924 + 64);
  MEMORY[0x28223BE20](v923 - 8, v923, v28, v29);
  v926 = &v238 - ((v928 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v926, v30, v31, v32);
  v927 = &v238 - v33;
  MEMORY[0x28223BE20](&v238 - v33, v34, v35, v36);
  v929 = &v238 - v37;
  v41 = MEMORY[0x28223BE20](&v238 - v37, v38, v39, v40);
  v932 = &v238 - v42;
  v1061 = v8;
  v1058 = v43;
  v1059 = v930;
  v1060 = v931;
  v1057 = v41;
  v1056 = v44;
  v1055 = v45;
  v936 = sub_226098EF8();
  v935 = v936;
  v1054 = v936;
  v937 = sub_226098B08();
  v943 = sub_226099CD8();
  v938 = v943;
  v1053 = v943;
  v940 = sub_226098F48();
  v939 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786048, &qword_2260A00F8);
  v942 = sub_226099CD8();
  v941 = v942;
  v1052 = v942;

  if (v943 >= v942)
  {
    if (v941 < v938)
    {
      v71 = v929;
      v72 = sub_225F1CF74();
      (*(v925 + 16))(v71, v72, v923);
      v823 = 24;
      v837 = 7;
      v828 = swift_allocObject();
      *(v828 + 16) = v941;
      v838 = swift_allocObject();
      *(v838 + 16) = v938;
      v851 = sub_226098C48();
      v824 = v851;
      v850 = sub_22609A0A8();
      v825 = v850;
      v832 = 17;
      v841 = swift_allocObject();
      v826 = v841;
      v831 = 0;
      *(v841 + 16) = 0;
      v842 = swift_allocObject();
      v827 = v842;
      v834 = 8;
      *(v842 + 16) = 8;
      v836 = 32;
      v73 = swift_allocObject();
      v74 = v828;
      v829 = v73;
      *(v73 + 16) = sub_225F2D734;
      *(v73 + 24) = v74;
      v75 = swift_allocObject();
      v76 = v829;
      v843 = v75;
      v830 = v75;
      *(v75 + 16) = sub_225F2D374;
      *(v75 + 24) = v76;
      v844 = swift_allocObject();
      v833 = v844;
      *(v844 + 16) = v831;
      v845 = swift_allocObject();
      v835 = v845;
      *(v845 + 16) = v834;
      v77 = swift_allocObject();
      v78 = v838;
      v839 = v77;
      *(v77 + 16) = sub_225F2D734;
      *(v77 + 24) = v78;
      v79 = swift_allocObject();
      v80 = v839;
      v848 = v79;
      v840 = v79;
      *(v79 + 16) = sub_225F2D374;
      *(v79 + 24) = v80;
      v849 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v846 = sub_22609A4F8();
      v847 = v81;

      v82 = v841;
      v83 = v847;
      *v847 = sub_225EF7434;
      v83[1] = v82;

      v84 = v842;
      v85 = v847;
      v847[2] = sub_225EF7434;
      v85[3] = v84;

      v86 = v843;
      v87 = v847;
      v847[4] = sub_225EF71D0;
      v87[5] = v86;

      v88 = v844;
      v89 = v847;
      v847[6] = sub_225EF7434;
      v89[7] = v88;

      v90 = v845;
      v91 = v847;
      v847[8] = sub_225EF7434;
      v91[9] = v90;

      v92 = v847;
      v93 = v848;
      v847[10] = sub_225EF71D0;
      v92[11] = v93;
      sub_225EF5418();

      if (os_log_type_enabled(v851, v850))
      {
        v94 = v906;
        v817 = sub_22609A188();
        v813 = v817;
        v814 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
        v815 = 0;
        v818 = sub_225EF5468(0);
        v816 = v818;
        v819 = sub_225EF5468(v815);
        v953[0] = v817;
        v952 = v818;
        v951 = v819;
        v820 = v953;
        sub_225EF54BC(0, v953);
        sub_225EF54BC(2, v820);
        v949 = sub_225EF7434;
        v950 = v826;
        sub_225EF73E8(&v949, v820, &v952, &v951);
        v821 = v94;
        v822 = v94;
        if (v94)
        {
          v811 = 0;

          __break(1u);
        }

        else
        {
          v949 = sub_225EF7434;
          v950 = v827;
          sub_225EF73E8(&v949, v953, &v952, &v951);
          v809 = 0;
          v810 = 0;
          v949 = sub_225EF71D0;
          v950 = v830;
          sub_225EF73E8(&v949, v953, &v952, &v951);
          v807 = 0;
          v808 = 0;
          v949 = sub_225EF7434;
          v950 = v833;
          sub_225EF73E8(&v949, v953, &v952, &v951);
          v805 = 0;
          v806 = 0;
          v949 = sub_225EF7434;
          v950 = v835;
          sub_225EF73E8(&v949, v953, &v952, &v951);
          v803 = 0;
          v804 = 0;
          v949 = sub_225EF71D0;
          v950 = v840;
          sub_225EF73E8(&v949, v953, &v952, &v951);
          v801 = 0;
          v802 = 0;
          _os_log_impl(&dword_225EEB000, v824, v825, "Size of lossless n-best %ld is less than size of sausage-based n-best %ld; this is unexpected.", v813, 0x16u);
          v800 = 0;
          sub_225EF7AF4(v816);
          sub_225EF7AF4(v819);
          sub_22609A168();

          v812 = v801;
        }
      }

      else
      {
        v95 = v906;

        v812 = v95;
      }

      v798 = v812;

      (*(v925 + 8))(v929, v923);
      v799 = v798;
    }

    else
    {
      v799 = v906;
    }

    v853 = v799;
  }

  else
  {
    v46 = v932;
    v47 = sub_225F1CF74();
    (*(v925 + 16))(v46, v47, v923);
    v877 = 24;
    v891 = 7;
    v882 = swift_allocObject();
    *(v882 + 16) = v941;
    v892 = swift_allocObject();
    *(v892 + 16) = v938;
    v905 = sub_226098C48();
    v878 = v905;
    v904 = sub_22609A0A8();
    v879 = v904;
    v886 = 17;
    v895 = swift_allocObject();
    v880 = v895;
    v885 = 0;
    *(v895 + 16) = 0;
    v896 = swift_allocObject();
    v881 = v896;
    v888 = 8;
    *(v896 + 16) = 8;
    v890 = 32;
    v48 = swift_allocObject();
    v49 = v882;
    v883 = v48;
    *(v48 + 16) = sub_225F2D734;
    *(v48 + 24) = v49;
    v50 = swift_allocObject();
    v51 = v883;
    v897 = v50;
    v884 = v50;
    *(v50 + 16) = sub_225F2D374;
    *(v50 + 24) = v51;
    v898 = swift_allocObject();
    v887 = v898;
    *(v898 + 16) = v885;
    v899 = swift_allocObject();
    v889 = v899;
    *(v899 + 16) = v888;
    v52 = swift_allocObject();
    v53 = v892;
    v893 = v52;
    *(v52 + 16) = sub_225F2D734;
    *(v52 + 24) = v53;
    v54 = swift_allocObject();
    v55 = v893;
    v902 = v54;
    v894 = v54;
    *(v54 + 16) = sub_225F2D374;
    *(v54 + 24) = v55;
    v903 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v900 = sub_22609A4F8();
    v901 = v56;

    v57 = v895;
    v58 = v901;
    *v901 = sub_225EF7434;
    v58[1] = v57;

    v59 = v896;
    v60 = v901;
    v901[2] = sub_225EF7434;
    v60[3] = v59;

    v61 = v897;
    v62 = v901;
    v901[4] = sub_225EF71D0;
    v62[5] = v61;

    v63 = v898;
    v64 = v901;
    v901[6] = sub_225EF7434;
    v64[7] = v63;

    v65 = v899;
    v66 = v901;
    v901[8] = sub_225EF7434;
    v66[9] = v65;

    v67 = v901;
    v68 = v902;
    v901[10] = sub_225EF71D0;
    v67[11] = v68;
    sub_225EF5418();

    if (os_log_type_enabled(v905, v904))
    {
      v69 = v906;
      v871 = sub_22609A188();
      v867 = v871;
      v868 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v869 = 0;
      v872 = sub_225EF5468(0);
      v870 = v872;
      v873 = sub_225EF5468(v869);
      v948 = v871;
      v947 = v872;
      v946 = v873;
      v874 = &v948;
      sub_225EF54BC(0, &v948);
      sub_225EF54BC(2, v874);
      v944 = sub_225EF7434;
      v945 = v880;
      sub_225EF73E8(&v944, v874, &v947, &v946);
      v875 = v69;
      v876 = v69;
      if (v69)
      {
        v865 = 0;

        __break(1u);
      }

      else
      {
        v944 = sub_225EF7434;
        v945 = v881;
        sub_225EF73E8(&v944, &v948, &v947, &v946);
        v863 = 0;
        v864 = 0;
        v944 = sub_225EF71D0;
        v945 = v884;
        sub_225EF73E8(&v944, &v948, &v947, &v946);
        v861 = 0;
        v862 = 0;
        v944 = sub_225EF7434;
        v945 = v887;
        sub_225EF73E8(&v944, &v948, &v947, &v946);
        v859 = 0;
        v860 = 0;
        v944 = sub_225EF7434;
        v945 = v889;
        sub_225EF73E8(&v944, &v948, &v947, &v946);
        v857 = 0;
        v858 = 0;
        v944 = sub_225EF71D0;
        v945 = v894;
        sub_225EF73E8(&v944, &v948, &v947, &v946);
        v855 = 0;
        v856 = 0;
        _os_log_impl(&dword_225EEB000, v878, v879, "Size of lossless n-best %ld exceeds size of sausage-based n-best %ld; this leads to information loss in the lossless n-best.", v867, 0x16u);
        v854 = 0;
        sub_225EF7AF4(v870);
        sub_225EF7AF4(v873);
        sub_22609A168();

        v866 = v855;
      }
    }

    else
    {
      v70 = v906;

      v866 = v70;
    }

    v852 = v866;

    (*(v925 + 8))(v932, v923);
    v853 = v852;
  }

  v96 = v853;
  v1050[1] = v935;
  v790 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860A8, &qword_2260A0158);
  v97 = sub_225F2C6B8();
  MEMORY[0x22AA72D20](&v1051, v790, v97);
  v1050[0] = v1051;
  v791 = &v238;
  MEMORY[0x28223BE20](&v238, v98, v99, v100);
  v234 = v101;
  v235 = v922;
  v792 = &v238;
  MEMORY[0x28223BE20](&v238, v102, v103, v104);
  v793 = &v234;
  v236 = sub_225F2C740;
  v237 = v105;
  v794 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860B0, &qword_2260A0160);
  v795 = sub_225F2C780();
  v106 = sub_225F2C7E4();
  v108 = sub_225F15970(sub_225F2C750, v793, v794, v795, MEMORY[0x277D84A98], v106, MEMORY[0x277D84AC0], v107);
  v796 = v96;
  v797 = v108;
  if (v96)
  {
    __break(1u);
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v781 = v797;
  sub_225EFE6E8(v1050);
  v1049 = v781;
  v782 = 0;
  v783 = sub_225F2C904();
  v784 = v783;
  v1048 = sub_22609A4F8();
  v787 = 0;
  v1047 = 0;
  v1044 = sub_226098F98();
  v785 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786030, &qword_2260A00D8);
  v109 = sub_225F2C968();
  v786 = &v1044;
  MEMORY[0x22AA72D20](&v1045, v785, v109);
  sub_225EFE6E8(v786);
  v1043 = v1045;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7860B8, &unk_2260A0168);
  sub_22609A3F8();
  v788 = v787;
  for (i = v796; ; i = v245)
  {
    v778 = i;
    v779 = v788;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7860C0, &unk_2260A0170);
    sub_22609A408();
    sub_225F2C9F0(v916, v918);
    v780 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860C8, &qword_2260A0178);
    if ((*(*(v780 - 8) + 48))(v918, 1) == 1)
    {
      sub_225EFE6E8(v1046);
      sub_225F27290();
      v243 = v1048;
      sub_2260998E8();
      sub_2260998E8();
      v244 = sub_225F29170(v243, v781, v920);
      if (v244)
      {
        v242 = v244;
      }

      else
      {
        LODWORD(v236) = 0;
        v235 = 312;
        LOBYTE(v234) = 2;
        sub_22609A3B8();
        __break(1u);
      }

      v241 = v242;
      sub_225EFE6E8(&v1048);

      return v241;
    }

    v765 = *v918;
    v110 = v918 + *(v780 + 48);
    v1042 = v765;
    (*(v913 + 32))(v914, v110, v911);
    v767 = sub_22609A4F8();
    v766 = v111;
    v112 = sub_2260995D8();
    v113 = v767;
    *v766 = v112;
    sub_225EF5418();
    v770 = v113;
    v768 = sub_2260995C8();
    v774 = sub_226099C98();
    v769 = v774;

    v1041 = v774;
    v771 = 0;
    v772 = sub_225F2CB58();
    v773 = v772;
    v1040 = sub_22609A4F8();
    v1037 = v774;
    v776 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860D0, &qword_2260A0180);
    v775 = v776;
    v114 = sub_225F2CBBC();
    MEMORY[0x22AA72D20](&v1038, v776, v114);
    v1036 = v1038;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7860D8, &unk_2260A0188);
    sub_22609A3F8();
    for (j = v778; ; j = v726)
    {
      v762 = j;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7860E0, &unk_2260A0190);
      sub_22609A408();
      v763 = v1034;
      v764 = v1035;
      if (!v1035)
      {
        break;
      }

      v760 = v763;
      v761 = v764;
      v115 = v762;
      v749 = v764;
      v750 = v763;
      v967 = v763;
      v966 = v764;
      v756 = sub_225F1D820(v764, v779 & 1);
      v751 = v756;
      v965 = v756;
      v755 = sub_225F26174();
      v752 = v755;
      v964 = v755;
      sub_2260998E8();
      v757 = 0;
      v753 = sub_225F1E118();
      v754 = sub_226099C78();

      [v755 setTokens_];

      v116 = v755;
      v963 = v755;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860F0, &qword_2260A01A0);
      sub_226099CE8();
      v961 = v756;
      v960 = v757;
      v758 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
      sub_225F2D5C0();
      sub_226099C18();
      v759 = v115;
      if (v115)
      {
        goto LABEL_189;
      }

      v744 = v962;
      v959 = v962;
      v745 = sub_225F27014();
      v746 = sub_225F27F74(v750);
      v958 = v746;
      sub_2260998E8();
      v956 = v781;
      v747 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786160, &qword_2260A01D8);
      sub_225F2D648();
      sub_22609A028();
      for (k = v759; ; k = v742)
      {
        v742 = k;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786168, &unk_2260A01E0);
        sub_22609A388();
        v743 = v955;
        if (!v955)
        {
          break;
        }

        v741 = v743;
        v737 = v743;
        v954 = v743;
        v738 = sub_225F2D6D0();
        v739 = v738;
        v740 = [v737 interpretationIndices];
        if (v740)
        {
          v736 = v740;
          v733 = v740;
          v734 = sub_226099C88();

          v735 = v734;
        }

        else
        {
          v735 = 0;
        }

        v732 = v735;
        if (v735)
        {
          v731 = v732;
        }

        else
        {
          LODWORD(v236) = 0;
          v235 = 228;
          LOBYTE(v234) = 2;
          sub_22609A3B8();
          __break(1u);
        }

        v729 = v731;
        sub_226099D38();
        v728 = v953[1];
        v730 = sub_22609A118();

        if (v730)
        {
          v117 = [v737 confidenceScore];
          v118 = __OFADD__(v117, v744);
          result = v117 + v744;
          v120 = v118;
          v727 = result;
          if (v120)
          {
            goto LABEL_197;
          }

          [v737 setConfidenceScore_];
        }

        else
        {
        }
      }

      v726 = v742;
      sub_225EFE6E8(v957);
    }

    sub_225EFE6E8(v1039);
    v724 = v1040;
    v723 = v1040;
    sub_2260998E8();
    v725 = sub_226099CD8();
    sub_2260998E8();
    v722 = v725 >= 1 && sub_226099CD8() > 0;
    v721 = v722;

    sub_2260998E8();
    if (v721)
    {
      v970 = v769;
      sub_225F2D408();
      sub_226099FE8();
      v720 = v969;
      if (v969)
      {
        v719 = v720;
        v718 = v720;
        v968 = v720;
        sub_225F2D490();
        sub_226099998();
      }

      else
      {
        v121 = sub_226099598();
        (*(*(v121 - 8) + 56))(v910, 1);
      }

      v122 = sub_226099598();
      v717 = (*(*(v122 - 8) + 48))(v910, 1) != 1;
      v715 = v717;
      sub_225F2D518(v910);
      v716 = v715;
    }

    else
    {
      v716 = 0;
    }

    v714 = v716;

    if (!v714)
    {
      v705 = v779;
      goto LABEL_62;
    }

    v974 = v769;
    sub_225F2D408();
    sub_226099FE8();
    v713 = v973;
    if (!v973)
    {
      goto LABEL_60;
    }

    v712 = v713;
    v709 = v713;
    v971 = v713;
    sub_225F2D490();
    sub_226099998();

    v710 = sub_226099598();
    v711 = *(v710 - 8);
    v123 = (*(v711 + 48))(v908, 1);
    if (v123 == 1)
    {
      sub_225F2D518(v908);
LABEL_60:
      v708 = 2;
      goto LABEL_56;
    }

    v707 = sub_226099528();
    (*(v711 + 8))(v908, v710);
    v708 = v707 & 1;
LABEL_56:
    v972 = v708;
    v706 = v708 == 2 ? 1 : v972;
    v1047 = (v706 ^ 1) & 1;
    v705 = v706 ^ 1;
LABEL_62:
    v700 = v705;
    v704 = sub_225F26174();
    v701 = v704;
    v1033 = v704;
    v702 = sub_226099C78();
    [v704 setInterpretations_];

    v703 = sub_226099CD8();

    [v704 setIsLowConfidence_];
    if ([v704 isLowConfidence])
    {
      break;
    }

    v246 = v762;
LABEL_183:
    v245 = v246;
    v233 = v701;
    v1032 = v701;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7860E8, &unk_2260A02F0);
    sub_226099CE8();

    sub_225EFE6E8(&v1040);

    (*(v913 + 8))(v914, v911);
    v788 = v700;
  }

  v1031 = v921;
  v699 = v921 != 0;
  if (v921)
  {
    v698 = [objc_opt_self() isDictationWithCombinedEuclidAndASRAlternativesEnabled];
  }

  else
  {
    v698 = 0;
  }

  if ((v698 & 1) == 0)
  {
    v248 = v762;
    goto LABEL_181;
  }

  v695 = v1040;
  sub_2260998E8();
  v696 = sub_226099CD8();

  result = v696;
  v124 = __OFSUB__(v696, 1);
  v697 = v696 - 1;
  if (v124)
  {
    goto LABEL_194;
  }

  v1030 = v697;
  v691 = swift_allocObject();
  v692 = (v691 + 16);
  v1029 = v691 + 16;
  *(v691 + 16) = 0;
  v693 = objc_opt_self();
  v694 = [v701 interpretations];
  if (v694)
  {
    v690 = v694;
    v687 = v694;
    v688 = sub_226099C88();

    v689 = v688;
  }

  else
  {
    v689 = 0;
  }

  v686 = v689;
  if (v689)
  {
    v685 = v686;
  }

  else
  {
    LODWORD(v236) = 0;
    v235 = 252;
    LOBYTE(v234) = 2;
    sub_22609A3B8();
    __break(1u);
  }

  v682 = v685;
  v1025 = v685;
  v680 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860F0, &qword_2260A01A0);
  v679 = v680;
  v681 = sub_225F2CC44();
  sub_226099FE8();
  v684 = v1024;
  v683 = v1024;

  if (v684)
  {
    v678 = v683;
    v676 = v683;
    v677 = [v683 tokens];
    if (v677)
    {
      v675 = v677;
      v672 = v677;
      v671 = sub_225F1E118();
      v673 = sub_226099C88();

      v674 = v673;
    }

    else
    {
      v674 = 0;
    }

    v669 = v674;

    v670 = v669;
  }

  else
  {
    v670 = 0;
  }

  v1023 = v670;
  if (v670)
  {
    v1026 = v1023;
  }

  else
  {
    v667 = 0;
    v668 = sub_225F1E118();
    v1026 = sub_22609A4F8();
    if (v1023)
    {
      sub_225EFE6E8(&v1023);
    }
  }

  v663 = v1026;
  v661 = sub_225F1E118();
  v662 = v661;
  v664 = sub_226099C78();

  v666 = [v693 transcriptFromTokens_];
  v665 = v666;

  if (v666)
  {
    v660 = v665;
    v655 = v665;
    v656 = sub_226099A08();
    v657 = v125;

    v658 = v656;
    v659 = v657;
  }

  else
  {
    v658 = 0;
    v659 = 0;
  }

  v1021 = v658;
  v1022 = v659;
  if (v659)
  {
    v1027 = v1021;
    v1028 = v1022;
  }

  else
  {
    v1027 = sub_226099AA8();
    v1028 = v126;
    if (v1022)
    {
      sub_225EFE6BC(&v1021);
    }
  }

  v652 = v1027;
  v653 = v1028;
  v1019 = v1027;
  v1020 = v1028;
  v654 = [v701 interpretations];
  if (v654)
  {
    v651 = v654;
    v648 = v654;
    v649 = sub_226099C88();

    v650 = v649;
  }

  else
  {
    v650 = 0;
  }

  v647 = v650;
  if (v650)
  {
    v646 = v647;
  }

  else
  {
    LODWORD(v236) = 0;
    v235 = 253;
    LOBYTE(v234) = 2;
    sub_22609A3B8();
    __break(1u);
  }

  v1018[4] = v646;
  v645 = [v701 interpretations];
  if (v645)
  {
    v644 = v645;
    v641 = v645;
    v642 = sub_226099C88();

    v643 = v642;
  }

  else
  {
    v643 = 0;
  }

  v640 = v643;
  if (v643)
  {
    v639 = v640;
  }

  else
  {
    LODWORD(v236) = 0;
    v235 = 253;
    LOBYTE(v234) = 2;
    sub_22609A3B8();
    __break(1u);
  }

  v636 = v639;
  v637 = sub_226099CD8();

  result = v637 - 1;
  v127 = __OFSUB__(v637, 1);
  v638 = v637 - 1;
  if (v127)
  {
    goto LABEL_195;
  }

  v128 = v762;
  sub_225F2CCCC();
  sub_2260999A8();
  v1018[0] = v1018[5];
  v1018[1] = v1018[6];
  v1018[2] = v1018[7];
  v1018[3] = v1018[8];
  v633 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786108, &qword_2260A01A8);
  v632 = v633;
  v129 = sub_225F2CD54();
  v131 = sub_225F15970(sub_225F280FC, 0, v633, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v129, MEMORY[0x277D84AC0], v130);
  v634 = v128;
  v635 = v131;
  if (v128)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v132 = v927;
  v601 = v635;
  sub_225F2CDDC(v1018);
  v1017 = v601;
  v133 = sub_225F1CF74();
  v599 = *(v925 + 16);
  v600 = (v925 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v599(v132, v133, v923);
  sub_2260998E8();
  v610 = 32;
  v615 = 32;
  v616 = 7;
  v134 = swift_allocObject();
  v135 = v653;
  v607 = v134;
  *(v134 + 16) = v652;
  *(v134 + 24) = v135;
  sub_2260998E8();
  v602 = swift_allocObject();
  *(v602 + 16) = v601;

  v136 = swift_allocObject();
  v137 = v602;
  v617 = v136;
  *(v136 + 16) = sub_225F2CE08;
  *(v136 + 24) = v137;

  v631 = sub_226098C48();
  v603 = v631;
  v630 = sub_22609A088();
  v604 = v630;
  v611 = 17;
  v621 = swift_allocObject();
  v605 = v621;
  *(v621 + 16) = v610;
  v622 = swift_allocObject();
  v606 = v622;
  v613 = 8;
  *(v622 + 16) = 8;
  v138 = swift_allocObject();
  v139 = v607;
  v608 = v138;
  *(v138 + 16) = sub_225EF7450;
  *(v138 + 24) = v139;
  v140 = swift_allocObject();
  v141 = v608;
  v623 = v140;
  v609 = v140;
  *(v140 + 16) = sub_225EF7B84;
  *(v140 + 24) = v141;
  v624 = swift_allocObject();
  v612 = v624;
  *(v624 + 16) = v610;
  v625 = swift_allocObject();
  v614 = v625;
  *(v625 + 16) = v613;
  v142 = swift_allocObject();
  v143 = v617;
  v618 = v142;
  *(v142 + 16) = sub_225F2CE10;
  *(v142 + 24) = v143;
  v144 = swift_allocObject();
  v145 = v618;
  v628 = v144;
  v619 = v144;
  *(v144 + 16) = sub_225EF7B84;
  *(v144 + 24) = v145;
  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v620 = v629;
  v626 = sub_22609A4F8();
  v627 = v146;

  v147 = v621;
  v148 = v627;
  *v627 = sub_225EF7434;
  v148[1] = v147;

  v149 = v622;
  v150 = v627;
  v627[2] = sub_225EF7434;
  v150[3] = v149;

  v151 = v623;
  v152 = v627;
  v627[4] = sub_225EF7B90;
  v152[5] = v151;

  v153 = v624;
  v154 = v627;
  v627[6] = sub_225EF7434;
  v154[7] = v153;

  v155 = v625;
  v156 = v627;
  v627[8] = sub_225EF7434;
  v156[9] = v155;

  v157 = v627;
  v158 = v628;
  v627[10] = sub_225EF7B90;
  v157[11] = v158;
  sub_225EF5418();

  if (os_log_type_enabled(v631, v630))
  {
    v159 = v634;
    v586 = sub_22609A188();
    v583 = v586;
    v584 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v587 = sub_225EF5468(0);
    v585 = v587;
    v589 = 2;
    v588 = sub_225EF5468(2);
    v979[0] = v586;
    v978 = v587;
    v977 = v588;
    v590 = v979;
    sub_225EF54BC(v589, v979);
    sub_225EF54BC(v589, v590);
    v975 = sub_225EF7434;
    v976 = v605;
    sub_225EF73E8(&v975, v590, &v978, &v977);
    v591 = v159;
    v592 = v605;
    v593 = v606;
    v594 = v609;
    v595 = v612;
    v596 = v614;
    v597 = v619;
    v598 = v159;
    if (v159)
    {
      v575 = v592;
      v576 = v593;
      v577 = v594;
      v578 = v595;
      v579 = v596;
      v580 = v597;
      v581 = 0;
      v534 = v597;
      v533 = v596;
      v532 = v595;
      v531 = v594;
      v530 = v593;

      __break(1u);
    }

    else
    {
      v975 = sub_225EF7434;
      v976 = v606;
      sub_225EF73E8(&v975, v979, &v978, &v977);
      v567 = 0;
      v568 = v605;
      v569 = v606;
      v570 = v609;
      v571 = v612;
      v572 = v614;
      v573 = v619;
      v574 = 0;
      v975 = sub_225EF7B90;
      v976 = v609;
      sub_225EF73E8(&v975, v979, &v978, &v977);
      v559 = 0;
      v560 = v605;
      v561 = v606;
      v562 = v609;
      v563 = v612;
      v564 = v614;
      v565 = v619;
      v566 = 0;
      v975 = sub_225EF7434;
      v976 = v612;
      sub_225EF73E8(&v975, v979, &v978, &v977);
      v551 = 0;
      v552 = v605;
      v553 = v606;
      v554 = v609;
      v555 = v612;
      v556 = v614;
      v557 = v619;
      v558 = 0;
      v975 = sub_225EF7434;
      v976 = v614;
      sub_225EF73E8(&v975, v979, &v978, &v977);
      v543 = 0;
      v544 = v605;
      v545 = v606;
      v546 = v609;
      v547 = v612;
      v548 = v614;
      v549 = v619;
      v550 = 0;
      v975 = sub_225EF7B90;
      v976 = v619;
      sub_225EF73E8(&v975, v979, &v978, &v977);
      v535 = 0;
      v536 = v605;
      v537 = v606;
      v538 = v609;
      v539 = v612;
      v540 = v614;
      v541 = v619;
      v542 = 0;
      _os_log_impl(&dword_225EEB000, v603, v604, "AFSpeechPhrase has multiple interpretations. 1 Best: %s, ASR Alternatives: %s", v583, 0x16u);
      sub_225EF7AF4(v585);
      sub_225EF7AF4(v588);
      sub_22609A168();

      v582 = v535;
    }
  }

  else
  {
    v160 = v634;

    v582 = v160;
  }

  v527 = v582;

  v528 = *(v925 + 8);
  v529 = (v925 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v528(v927, v923);
  if (v697 < 4)
  {
    if (v697 <= 2)
    {
      v161 = __OFSUB__(3, v697);
      v517 = 3 - v697;
      if (v161)
      {
        goto LABEL_196;
      }

      v516 = &v980;
      swift_beginAccess();
      *v692 = v517;
      swift_endAccess();
    }
  }

  else
  {
    v526 = [v701 interpretations];
    if (v526)
    {
      v525 = v526;
      v522 = v526;
      v523 = sub_226099C88();

      v524 = v523;
    }

    else
    {
      v524 = 0;
    }

    v521 = v524;
    if (v524)
    {
      v520 = v521;
    }

    else
    {
      LODWORD(v236) = 0;
      v235 = 259;
      LOBYTE(v234) = 2;
      sub_22609A3B8();
      __break(1u);
    }

    v979[5] = v520;
    sub_226099FF8();
    v979[1] = v979[6];
    v979[2] = v979[7];
    v979[3] = v979[8];
    v979[4] = v979[9];
    sub_225F2D380();
    v518 = sub_226099D18();
    v519 = sub_226099C78();

    [v701 setInterpretations_];
  }

  v514 = &v1016;
  swift_beginAccess();
  v515 = *v692;
  swift_endAccess();
  if (v515 < 1)
  {
    v250 = v527;
    goto LABEL_178;
  }

  v1014 = v652;
  v1015 = v653;
  v506 = sub_2260987C8();
  v503 = *(v506 - 8);
  v504 = v503;
  v162 = *(v503 + 64);
  v509 = &v238;
  MEMORY[0x28223BE20](&v238, v163, v164, v165);
  v505 = &v238 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2260987B8();
  sub_225F2CF00();
  v510 = sub_22609A1F8();
  v511 = v167;
  v507 = v510;
  v508 = v167;
  (*(v504 + 8))(v505, v506);
  v1012 = v510;
  v1013 = v511;
  v512 = sub_225F28384(v652, v653);
  v513 = v168;
  v1010 = v512;
  v1011 = v168;

  if (v921)
  {
    v502 = v921;
    v169 = v527;
    v498 = v921;
    v170 = sub_2260993C8();
    v499 = v169;
    v500 = v170;
    v501 = v169;
    if (!v169)
    {
      v495 = v500;

      v496 = v495;
      v497 = v499;
      goto LABEL_135;
    }

LABEL_191:
    v238 = v501;
    v239 = 0;
    v240 = 0;

    v493 = v239;
    v494 = v240;
  }

  else
  {
    v496 = 0;
    v497 = v527;
LABEL_135:
    v493 = v496;
    v494 = v497;
  }

  v491 = v494;
  v492 = v493;
  if (!v493)
  {
    v489 = v491;
    goto LABEL_176;
  }

  v490 = v492;
  v171 = v491;
  v485 = v492;
  v1009 = v492;
  v486 = v1040;
  sub_2260998E8();
  v1008 = v486;
  v173 = sub_225F15970(sub_225F28614, 0, v679, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v681, MEMORY[0x277D84AC0], v172);
  v487 = v171;
  v488 = v173;
  if (!v171)
  {
    v481 = v488;
    sub_225EFE6E8(&v1008);
    v1007 = v481;
    v1006 = v485;
    v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786120, &qword_2260A01B8);
    v174 = sub_225F2CF78();
    v176 = sub_225F15970(sub_225F28A40, 0, v482, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v174, MEMORY[0x277D84AC0], v175);
    v483 = 0;
    v484 = v176;
    v472 = v176;
    v1005 = v176;
    sub_2260998E8();
    v1003[4] = v472;
    sub_2260998E8();
    v476 = &v238;
    MEMORY[0x28223BE20](&v238, v177, v178, v179);
    v474 = &v234;
    v236 = v180;
    v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
    v473 = v475;
    sub_225F2D02C();
    v181 = sub_22609A2D8();
    v477 = 0;
    v478 = v181;
    v479 = v476;
    v480 = v481;
    v459 = v181;

    v1003[3] = v459;
    v465 = 32;
    v460 = v1003;
    swift_beginAccess();
    v461 = *v692;
    swift_endAccess();
    v467 = sub_225F156F8();
    v462 = v467;
    sub_226099FF8();
    v1002[1] = v1003[5];
    v1002[2] = v1003[6];
    v1002[3] = v1003[7];
    v1002[4] = v1003[8];
    v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7864A0, &qword_2260A01C0);
    sub_225F2D0B4();
    v466 = MEMORY[0x277D837D0];
    v464 = sub_226099D18();
    sub_2260998E8();
    v1004 = v464;
    v1002[0] = v464;
    sub_2260998E8();
    v468 = &v238;
    MEMORY[0x28223BE20](&v238, v182, v473, v466);
    v236 = v512;
    v237 = v183;
    v188 = sub_225F15970(sub_225F2D13C, &v234, v184, v185, MEMORY[0x277D84A98], v186, MEMORY[0x277D84AC0], v187);
    v469 = 0;
    v470 = v188;
    v471 = v513;
    v456 = v188;

    sub_225EFE6E8(v1002);
    v1004 = v456;

    v1000 = v652;
    v1001 = v653;
    sub_225F2D16C();
    sub_226099FE8();
    v457 = v998;
    v458 = v999;
    if (v999)
    {
      v454 = v457;
      v455 = v458;
      v451 = v458;
      v452 = sub_226099978();

      v453 = v452 & 1;
    }

    else
    {
      v453 = 2;
    }

    v449 = v453;
    v450 = &v997;
    v996 = v453;
    v997 = 1;
    if (v453 == 2)
    {
      if (*v450 != 2)
      {
        goto LABEL_150;
      }

      v448 = 1;
    }

    else
    {
      v981 = v449;
      if (*v450 != 2)
      {
        v448 = v981 ^ *v450 ^ 1;
        goto LABEL_148;
      }

LABEL_150:
      v448 = 0;
    }

LABEL_148:
    if ((v448 & 1) != 0 && v765 == 0)
    {
      v189 = v469;
      v444 = v1004;
      sub_2260998E8();
      v982 = v444;
      v191 = sub_225F15970(sub_225F28BA4, 0, v473, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v462, MEMORY[0x277D84AC0], v190);
      v445 = v189;
      v446 = v191;
      if (v189)
      {
        goto LABEL_193;
      }

      v442 = v446;
      sub_225EFE6E8(&v982);
      v1004 = v442;

      v443 = v445;
    }

    else
    {
      v443 = v469;
    }

    v440 = v443;
    v436 = v1004;
    sub_2260998E8();
    v438 = sub_225F28D58(v436);
    v437 = v438;

    v995 = v438;
    sub_2260998E8();
    v993 = v438;
    v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
    sub_225F2D1E4();
    sub_22609A028();
    for (m = v440; ; m = v415)
    {
      v434 = m;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786140, &unk_2260A01C8);
      sub_22609A388();
      v435 = v992;
      if (!v992)
      {
        break;
      }

      v433 = v435;
      v427 = v435;
      v986 = v435;
      v431 = sub_225F26174();
      v425 = v431;
      v985 = v431;
      v428 = sub_22609A4F8();
      v426 = v192;
      v193 = v427;
      v194 = v428;
      *v426 = v427;
      sub_225EF5418();
      v429 = v194;
      v430 = sub_226099C78();

      [v431 setTokens_];

      v195 = v431;
      v984 = v431;
      v432 = [v701 interpretations];
      if (v432)
      {
        v424 = v432;
        v421 = v432;
        v422 = sub_226099C88();

        v423 = v422;
      }

      else
      {
        v423 = 0;
      }

      v983 = v423;
      if (!v423)
      {
        LODWORD(v236) = 0;
        v235 = 300;
        LOBYTE(v234) = 2;
        sub_22609A3B8();
        __break(1u);
      }

      sub_226099CE8();
      v420 = v983;
      if (v983)
      {
        v419 = v420;
        v416 = v420;
        v417 = sub_226099C78();

        v418 = v417;
      }

      else
      {
        v418 = 0;
      }

      v414 = v418;
      v415 = v434;
      [v701 setInterpretations_];
    }

    v196 = v926;
    sub_225EFE6E8(v994);
    v197 = sub_225F1CF74();
    v599(v196, v197, v923);
    sub_2260998E8();
    v377 = 24;
    v397 = 7;
    v383 = swift_allocObject();
    *(v383 + 16) = v437;

    sub_2260998E8();
    v378 = swift_allocObject();
    *(v378 + 16) = v437;

    v391 = 32;
    v396 = 32;
    v198 = swift_allocObject();
    v199 = v378;
    v398 = v198;
    *(v198 + 16) = sub_225F2D27C;
    *(v198 + 24) = v199;

    v413 = sub_226098C48();
    v379 = v413;
    v412 = sub_22609A088();
    v380 = v412;
    v392 = 17;
    v401 = swift_allocObject();
    v381 = v401;
    v386 = 0;
    *(v401 + 16) = 0;
    v402 = swift_allocObject();
    v382 = v402;
    v394 = 8;
    *(v402 + 16) = 8;
    v200 = swift_allocObject();
    v201 = v383;
    v384 = v200;
    *(v200 + 16) = sub_225F2D26C;
    *(v200 + 24) = v201;
    v202 = swift_allocObject();
    v203 = v384;
    v403 = v202;
    v385 = v202;
    *(v202 + 16) = sub_225F2D374;
    *(v202 + 24) = v203;
    v404 = swift_allocObject();
    v387 = v404;
    *(v404 + 16) = v386;
    v405 = swift_allocObject();
    v388 = v405;
    *(v405 + 16) = v394;
    v204 = swift_allocObject();
    v205 = v691;
    v389 = v204;
    *(v204 + 16) = sub_225F2D274;
    *(v204 + 24) = v205;
    v206 = swift_allocObject();
    v207 = v389;
    v406 = v206;
    v390 = v206;
    *(v206 + 16) = sub_225F2D374;
    *(v206 + 24) = v207;
    v407 = swift_allocObject();
    v393 = v407;
    *(v407 + 16) = v391;
    v408 = swift_allocObject();
    v395 = v408;
    *(v408 + 16) = v394;
    v208 = swift_allocObject();
    v209 = v398;
    v399 = v208;
    *(v208 + 16) = sub_225F2D284;
    *(v208 + 24) = v209;
    v210 = swift_allocObject();
    v211 = v399;
    v411 = v210;
    v400 = v210;
    *(v210 + 16) = sub_225EF7B84;
    *(v210 + 24) = v211;
    v409 = sub_22609A4F8();
    v410 = v212;

    v213 = v401;
    v214 = v410;
    *v410 = sub_225EF7434;
    v214[1] = v213;

    v215 = v402;
    v216 = v410;
    v410[2] = sub_225EF7434;
    v216[3] = v215;

    v217 = v403;
    v218 = v410;
    v410[4] = sub_225EF71D0;
    v218[5] = v217;

    v219 = v404;
    v220 = v410;
    v410[6] = sub_225EF7434;
    v220[7] = v219;

    v221 = v405;
    v222 = v410;
    v410[8] = sub_225EF7434;
    v222[9] = v221;

    v223 = v406;
    v224 = v410;
    v410[10] = sub_225EF71D0;
    v224[11] = v223;

    v225 = v407;
    v226 = v410;
    v410[12] = sub_225EF7434;
    v226[13] = v225;

    v227 = v408;
    v228 = v410;
    v410[14] = sub_225EF7434;
    v228[15] = v227;

    v229 = v410;
    v230 = v411;
    v410[16] = sub_225EF7B90;
    v229[17] = v230;
    sub_225EF5418();

    if (os_log_type_enabled(v413, v412))
    {
      v231 = v434;
      v362 = sub_22609A188();
      v359 = v362;
      v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v363 = sub_225EF5468(0);
      v361 = v363;
      v364 = sub_225EF5468(1);
      v991 = v362;
      v990 = v363;
      v989 = v364;
      v365 = &v991;
      sub_225EF54BC(2, &v991);
      sub_225EF54BC(3, v365);
      v987 = sub_225EF7434;
      v988 = v381;
      sub_225EF73E8(&v987, v365, &v990, &v989);
      v366 = v231;
      v367 = v381;
      v368 = v382;
      v369 = v385;
      v370 = v387;
      v371 = v388;
      v372 = v390;
      v373 = v393;
      v374 = v395;
      v375 = v400;
      v376 = v231;
      if (v231)
      {
        v348 = v367;
        v349 = v368;
        v350 = v369;
        v351 = v370;
        v352 = v371;
        v353 = v372;
        v354 = v373;
        v355 = v374;
        v356 = v375;
        v357 = 0;
        v259 = v375;
        v258 = v374;
        v257 = v373;
        v256 = v372;
        v255 = v371;
        v254 = v370;
        v253 = v369;
        v252 = v368;

        __break(1u);
      }

      else
      {
        v987 = sub_225EF7434;
        v988 = v382;
        sub_225EF73E8(&v987, &v991, &v990, &v989);
        v337 = 0;
        v338 = v381;
        v339 = v382;
        v340 = v385;
        v341 = v387;
        v342 = v388;
        v343 = v390;
        v344 = v393;
        v345 = v395;
        v346 = v400;
        v347 = 0;
        v987 = sub_225EF71D0;
        v988 = v385;
        sub_225EF73E8(&v987, &v991, &v990, &v989);
        v326 = 0;
        v327 = v381;
        v328 = v382;
        v329 = v385;
        v330 = v387;
        v331 = v388;
        v332 = v390;
        v333 = v393;
        v334 = v395;
        v335 = v400;
        v336 = 0;
        v987 = sub_225EF7434;
        v988 = v387;
        sub_225EF73E8(&v987, &v991, &v990, &v989);
        v315 = 0;
        v316 = v381;
        v317 = v382;
        v318 = v385;
        v319 = v387;
        v320 = v388;
        v321 = v390;
        v322 = v393;
        v323 = v395;
        v324 = v400;
        v325 = 0;
        v987 = sub_225EF7434;
        v988 = v388;
        sub_225EF73E8(&v987, &v991, &v990, &v989);
        v304 = 0;
        v305 = v381;
        v306 = v382;
        v307 = v385;
        v308 = v387;
        v309 = v388;
        v310 = v390;
        v311 = v393;
        v312 = v395;
        v313 = v400;
        v314 = 0;
        v987 = sub_225EF71D0;
        v988 = v390;
        sub_225EF73E8(&v987, &v991, &v990, &v989);
        v293 = 0;
        v294 = v381;
        v295 = v382;
        v296 = v385;
        v297 = v387;
        v298 = v388;
        v299 = v390;
        v300 = v393;
        v301 = v395;
        v302 = v400;
        v303 = 0;
        v987 = sub_225EF7434;
        v988 = v393;
        sub_225EF73E8(&v987, &v991, &v990, &v989);
        v282 = 0;
        v283 = v381;
        v284 = v382;
        v285 = v385;
        v286 = v387;
        v287 = v388;
        v288 = v390;
        v289 = v393;
        v290 = v395;
        v291 = v400;
        v292 = 0;
        v987 = sub_225EF7434;
        v988 = v395;
        sub_225EF73E8(&v987, &v991, &v990, &v989);
        v271 = 0;
        v272 = v381;
        v273 = v382;
        v274 = v385;
        v275 = v387;
        v276 = v388;
        v277 = v390;
        v278 = v393;
        v279 = v395;
        v280 = v400;
        v281 = 0;
        v987 = sub_225EF7B90;
        v988 = v400;
        sub_225EF73E8(&v987, &v991, &v990, &v989);
        v260 = 0;
        v261 = v381;
        v262 = v382;
        v263 = v385;
        v264 = v387;
        v265 = v388;
        v266 = v390;
        v267 = v393;
        v268 = v395;
        v269 = v400;
        v270 = 0;
        _os_log_impl(&dword_225EEB000, v379, v380, "Presenting %ld Euclid alternatives of desired %ld: %s", v359, 0x20u);
        sub_225EF7AF4(v361);
        sub_225EF7AF4(v364);
        sub_22609A168();

        v358 = v260;
      }
    }

    else
    {
      v232 = v434;

      v358 = v232;
    }

    v251 = v358;

    v528(v926, v923);

    sub_225EFE6E8(&v1004);

    v489 = v251;
LABEL_176:
    v249 = v489;

    v250 = v249;
LABEL_178:
    v247 = v250;

    v248 = v247;
LABEL_181:
    v246 = v248;
    goto LABEL_183;
  }

  __break(1u);
  __break(1u);

  __break(1u);

  __break(1u);
LABEL_193:
  result = 0;
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
  return result;
}

id sub_225F25A4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  v12 = a1;
  v15 = 0;
  v7 = 0;
  v11 = sub_226099138();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2, v3, v4);
  v13 = &v7 - v8;
  v15 = v5;
  sub_225F270DC();
  (*(v9 + 16))(v13, v12, v11);
  result = sub_225F25B44(v13);
  *v14 = result;
  return result;
}

id sub_225F25B44(uint64_t a1)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  MEMORY[0x22AA72230]();
  sub_225F27014();
  sub_226099918();

  v6 = sub_226099868();

  sub_226099108();
  sub_2260990F8();
  sub_225F2C484();
  sub_226099918();

  v4 = sub_226099868();

  sub_226099128();
  v5 = [v8 initWithSpeechRecognitionFeatures:v6 acousticFeatures:v4 snr:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v6);
  if (v5)
  {
    v3 = v5;
  }

  else
  {
    sub_22609A3B8();
    __break(1u);
  }

  MEMORY[0x277D82BE0](v3);
  v1 = sub_226099138();
  (*(*(v1 - 8) + 8))(a1);
  MEMORY[0x277D82BD8](v3);
  return v3;
}

uint64_t sub_225F25E38@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v19 = a7;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v26 = a6;
  v40 = a4;
  v39 = a5;
  v27 = *(a4 - 8);
  v28 = a4 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, a2, a3, a3);
  v30 = v18 - v29;
  v36 = *(v8 + 16);
  v38 = v36;
  v34 = *(v36 - 8);
  v35 = v36 - 8;
  v31 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v18 - v29, v36, v8);
  v32 = v18 - v31;
  v33 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v18 - v31, v12, v10);
  v37 = v18 - v33;
  sub_225F317FC(v13, v18 - v33, v14, v15);
  if ((*(v34 + 48))(v37, 1, v36) == 1)
  {
    result = (*(*(v24 - 8) + 56))(v19, 1);
    v18[1] = v25;
  }

  else
  {
    (*(v34 + 32))(v32, v37, v36);
    v17 = v25;
    v20(v32, v30);
    v18[0] = v17;
    (*(v34 + 8))(v32, v36);
    if (v17)
    {
      return (*(v27 + 32))(v26, v30, v23);
    }

    else
    {
      (*(*(v24 - 8) + 56))(v19, 0, 1);
      return v18[0];
    }
  }

  return result;
}

id sub_225F261A4(uint64_t a1)
{
  v25 = a1;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786060, &qword_2260A0110);
  v24 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3, v4, v5);
  v31 = &v16 - v24;
  v30 = sub_226099768();
  v28 = *(v30 - 8);
  v29 = v30 - 8;
  v26 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v31, v6, v7);
  v27 = &v16 - v26;
  v34 = &v16 - v26;
  v33 = v8;
  v32 = v1;
  sub_225F2D73C(v8, v9);
  if ((*(v28 + 48))(v31, 1, v30) == 1)
  {
    sub_225F271E8(v31);
    return 0;
  }

  (*(v28 + 32))(v27, v31, v30);
  if ((sub_226099708() & 1) == 0)
  {
    (*(v28 + 8))(v27, v30);
    return 0;
  }

  v16 = sub_225F2D864();
  v17 = sub_226099748();
  v18 = v10;
  sub_226099738();
  v21 = v11;
  sub_226099758();
  v19 = v12;
  sub_226099718();
  v20 = v13;
  sub_226099728();
  v22 = sub_225F2B008(v17, v18, v21, v19, v20, v14);
  (*(v28 + 8))(v27, v30);
  return v22;
}

id sub_225F26438@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_225F27014();
  result = sub_225F26494();
  *a2 = result;
  return result;
}

id sub_225F265F4(uint64_t a1)
{
  v58 = a1;
  v36 = "Fatal error";
  v37 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v38 = "CoreEmbeddedSpeechRecognition/CESRUtilities.swift";
  v39 = "Unexpectedly found nil while unwrapping an Optional value";
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v77 = 0;
  v63 = sub_2260990C8();
  v59 = *(v63 - 8);
  v60 = v63 - 8;
  v41 = *(v59 + 64);
  v40 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2, v3, v4);
  v61 = &v25 - v40;
  v42 = v40;
  MEMORY[0x28223BE20](v5, &v25 - v40, v6, v7);
  v62 = &v25 - v42;
  v96 = v8;
  v95 = v1;
  v55 = sub_225F1E118();
  v52 = sub_225F26174();
  v94 = v52;
  v49 = 1;
  sub_226099AA8();
  v43 = v9;
  v44 = sub_2260999F8();

  [v52 setText_];
  MEMORY[0x277D82BD8](v44);
  v45 = 0.0;
  [v52 setStartTime_];
  [v52 setEndTime_];
  [v52 setSilenceStartTime_];
  v72 = 0;
  [v52 setRemoveSpaceBefore_];
  [v52 setRemoveSpaceAfter_];
  v48 = "";
  sub_226099AA8();
  v46 = v10;
  v47 = sub_2260999F8();

  [v52 setPhoneSequence_];
  MEMORY[0x277D82BD8](v47);
  sub_226099AA8();
  v50 = v11;
  v51 = sub_2260999F8();

  [v52 setIpaPhoneSequence_];
  MEMORY[0x277D82BD8](v51);
  v70 = sub_225F2CB58();
  v68 = sub_225F26174();
  v93 = v68;
  v80 = 1;
  v54 = sub_22609A4F8();
  v53 = v12;
  MEMORY[0x277D82BE0](v52);
  v13 = v54;
  *v53 = v52;
  sub_225EF5418();
  v56 = v13;
  v57 = sub_226099C78();

  [v68 setTokens_];
  MEMORY[0x277D82BD8](v57);
  sub_226098EE8();
  (*(v59 + 104))(v61, *MEMORY[0x277CDCBA0], v63);
  v66 = sub_2260990B8();
  v65 = *(v59 + 8);
  v64 = v59 + 8;
  v65(v61, v63);
  v65(v62, v63);
  v92 = v66 & 1;
  sub_226098F58();
  v89 = v97;
  v90 = v98;
  v91 = v99;
  sub_22609A0F8();
  v67 = v14;
  v88 = v14;
  v79 = sub_225F2C904();
  v71 = sub_22609A4F8();
  v69 = v15;
  MEMORY[0x277D82BE0](v68);
  v16 = v71;
  *v69 = v68;
  sub_225EF5418();
  v84 = sub_225F2736C(v16);
  v87 = v84;
  v73 = sub_225F2C780();
  v75 = sub_225F27014();
  v76 = sub_22609A4F8();
  v74 = v17;
  v18 = sub_22609A108();
  v19 = v76;
  *v74 = v18;
  sub_225EF5418();
  v78 = sub_225F273B8(v19);
  v86 = v78;
  v81 = sub_225F27290();
  v82 = sub_22609A4F8();
  v83 = v20;
  MEMORY[0x277D82BE0](v84);
  if (v84)
  {
    v35 = v84;
  }

  else
  {
    sub_22609A3B8();
    __break(1u);
  }

  v21 = v82;
  *v83 = v35;
  sub_225EF5418();
  v32 = v21;
  v33 = sub_22609A4F8();
  v34 = v22;
  MEMORY[0x277D82BE0](v78);
  if (v78)
  {
    v31 = v78;
  }

  else
  {
    sub_22609A3B8();
    __break(1u);
  }

  v23 = v33;
  *v34 = v31;
  sub_225EF5418();
  v28 = sub_225F27400(v32, v23);
  v85 = v28;
  v29 = 0;
  sub_225F2C420();
  MEMORY[0x277D82BE0](v28);
  MEMORY[0x277D82BE0](v28);
  MEMORY[0x277D82BE0](v28);
  v30 = sub_225F27448(v28, v28, v28, v29, v66 & 1, v29, 1);
  if (v30)
  {
    v27 = v30;
  }

  else
  {
    sub_22609A3B8();
    __break(1u);
  }

  v26 = v27;
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v84);
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](v52);
  return v26;
}

unint64_t sub_225F27014()
{
  v2 = qword_280D76390;
  if (!qword_280D76390)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76390);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F27078()
{
  v2 = qword_280D76518;
  if (!qword_280D76518)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76518);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F270DC()
{
  v2 = qword_280D76490;
  if (!qword_280D76490)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76490);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_225F27140(uint64_t a1)
{
  v3 = sub_226099138();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_225F271E8(uint64_t a1)
{
  v3 = sub_226099768();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_225F27290()
{
  v2 = qword_280D764C8;
  if (!qword_280D764C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D764C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F272F4()
{
  v2 = qword_280D764C0;
  if (!qword_280D764C0)
  {
    sub_225F27290();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D764C0);
    return WitnessTable;
  }

  return v2;
}

id sub_225F274C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a1;
  v72 = a3;
  v73 = a4;
  v74 = a5;
  v81 = 0;
  v85 = sub_225F27F18;
  v63 = sub_225F2D734;
  v64 = sub_225F2D374;
  v65 = sub_225EF7434;
  v66 = sub_225EF7434;
  v67 = sub_225EF71D0;
  v68 = "Fatal error";
  v69 = "Unexpectedly found nil while unwrapping an Optional value";
  v70 = "CoreEmbeddedSpeechRecognition/CESRUtilities.swift";
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v88 = 0;
  v80 = 0;
  v75 = sub_226098C58();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v6, v72, v73);
  v79 = &v28 - v78;
  v103 = v7;
  v102 = a2;
  v101 = v8;
  v100 = v9;
  v99 = v10;
  v82 = sub_226098B08();
  v83 = sub_225F27014();
  v11 = sub_225F300F4();
  v12 = sub_225F15970(v85, v81, v82, v83, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v84);
  v86 = 0;
  v87 = v12;
  v61 = v12;
  v98 = v12;
  v97 = 0;
  sub_225F2CB58();
  v62 = sub_225F26174();
  v96 = v62;
  if (v71 < v72)
  {
    v57 = sub_226098F48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786048, &qword_2260A00F8);
    sub_226099D38();
    v58 = v89;

    v60 = sub_225F1D820(v58, 0);

    v88 = v60;
    sub_2260998E8();
    sub_225F1E118();
    v59 = sub_226099C78();

    [v62 setTokens_];
    MEMORY[0x277D82BD8](v59);
  }

  else
  {
    v13 = v79;
    v14 = sub_225F1CF74();
    (*(v76 + 16))(v13, v14, v75);
    v46 = 7;
    v47 = swift_allocObject();
    *(v47 + 16) = v71;
    v55 = sub_226098C48();
    v56 = sub_22609A0A8();
    v44 = 17;
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v45 = 32;
    v15 = swift_allocObject();
    v16 = v47;
    v48 = v15;
    *(v15 + 16) = v63;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v48;
    v52 = v17;
    *(v17 + 16) = v64;
    *(v17 + 24) = v18;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v51 = sub_22609A4F8();
    v53 = v19;

    v20 = v49;
    v21 = v53;
    *v53 = v65;
    v21[1] = v20;

    v22 = v50;
    v23 = v53;
    v53[2] = v66;
    v23[3] = v22;

    v24 = v52;
    v25 = v53;
    v53[4] = v67;
    v25[5] = v24;
    sub_225EF5418();

    if (os_log_type_enabled(v55, v56))
    {
      v26 = v86;
      v37 = sub_22609A188();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v36 = 0;
      v38 = sub_225EF5468(0);
      v39 = sub_225EF5468(v36);
      v40 = &v94;
      v94 = v37;
      v41 = &v93;
      v93 = v38;
      v42 = &v92;
      v92 = v39;
      sub_225EF54BC(0, &v94);
      sub_225EF54BC(1, v40);
      v90 = v65;
      v91 = v49;
      sub_225EF73E8(&v90, v40, v41, v42);
      v43 = v26;
      if (v26)
      {

        __break(1u);
      }

      else
      {
        v90 = v66;
        v91 = v50;
        sub_225EF73E8(&v90, &v94, &v93, &v92);
        v34 = 0;
        v90 = v67;
        v91 = v52;
        sub_225EF73E8(&v90, &v94, &v93, &v92);
        _os_log_impl(&dword_225EEB000, v55, v56, "AFSpeechUtterance at index %ld will have a nil AFSpeechInterpretation (used for lossless n-best) since the lossless n-best does not have an entry at this index.)", v37, 0xCu);
        v33 = 0;
        sub_225EF7AF4(v38);
        sub_225EF7AF4(v39);
        sub_22609A168();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v55);
    (*(v76 + 8))(v79, v75);
  }

  v31 = 0;
  sub_225F2C780();
  sub_2260998E8();
  MEMORY[0x277D82BE0](v62);
  v32 = sub_225F27FB4(v61, v31, v62);
  if (v32)
  {
    v30 = v32;
  }

  else
  {
    sub_22609A3B8();
    __break(1u);
  }

  v29 = v30;
  v95 = v30;
  [v30 setSource_];
  MEMORY[0x277D82BD8](v62);

  return v29;
}

id sub_225F27F18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_225F27014();
  result = sub_225F27F74(v3);
  *a2 = result;
  return result;
}

uint64_t sub_225F28004@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, uint64_t *a3@<X8>)
{
  v7 = *a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786288, &qword_2260A02D8);
  result = a2(v7, a1 + *(v3 + 48));
  *a3 = result;
  return result;
}

char *sub_225F28084@<X0>(uint64_t *a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  result = [*a2 confidenceScore];
  if (__OFADD__(v6, result))
  {
    __break(1u);
  }

  else
  {
    *a3 = &result[v6];
  }

  return result;
}

uint64_t sub_225F280FC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = 0;
  v17 = *a1;
  v12 = objc_opt_self();
  v13 = [v17 tokens];
  if (v13)
  {
    sub_225F1E118();
    v9 = sub_226099C88();
    MEMORY[0x277D82BD8](v13);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v15 = v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    sub_225F1E118();
    v16 = sub_22609A4F8();
  }

  sub_225F1E118();
  v7 = sub_226099C78();

  v8 = [v12 transcriptFromTokens_];
  MEMORY[0x277D82BD8](v7);
  result = v8;
  if (v8)
  {
    *&v5 = sub_226099A08();
    *(&v5 + 1) = v3;
    result = MEMORY[0x277D82BD8](v8);
    v6 = v5;
  }

  else
  {
    v6 = 0uLL;
  }

  v14 = v6;
  if (*(&v6 + 1))
  {
    *a2 = v14;
  }

  else
  {
    result = sub_226099AA8();
    *a2 = result;
    *(a2 + 8) = v4;
    if (*(&v14 + 1))
    {
      return sub_225EFE6BC(&v14);
    }
  }

  return result;
}

uint64_t sub_225F28350@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_2260998E8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_225F28384(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  v18 = 0;
  memset(v16, 0, sizeof(v16));
  v19 = a1;
  v20 = a2;
  v17 = sub_226099AA8();
  v18 = v2;
  sub_2260998E8();
  v14[6] = a1;
  v14[7] = a2;
  v13 = sub_225F2D8C8();
  MEMORY[0x22AA72AD0](v15, MEMORY[0x277D837D0]);
  v14[4] = v15[0];
  v14[5] = v15[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786178, &qword_2260A01E8);
  sub_22609A418();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786180, &unk_2260A01F0);
    sub_22609A428();
    if (!v14[3])
    {
      break;
    }

    if ((sub_226099988() & 1) == 0)
    {

      break;
    }

    v7 = v17;
    v8 = v18;
    sub_2260998E8();
    sub_2260998E8();
    v3 = sub_226099A88();
    v9 = MEMORY[0x22AA72BB0](v7, v8, v3);
    v10 = v4;

    v17 = v9;
    v18 = v10;
  }

  sub_225EFE6BC(v16);
  sub_2260998E8();
  MEMORY[0x22AA72AD0](v14, MEMORY[0x277D837D0], v13);
  sub_225F2D940();
  v6 = sub_226099BC8();
  sub_225EFE6BC(&v17);
  return v6;
}

uint64_t sub_225F28614@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  v44 = a2;
  v50 = 0;
  v45 = *a1;
  v50 = v45;
  v46 = objc_opt_self();
  v47 = [v45 tokens];
  if (v47)
  {
    v43 = v47;
    v40 = v47;
    v39 = sub_225F1E118();
    v41 = sub_226099C88();

    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v38 = v42;
  if (v42)
  {
    v37 = v38;
  }

  else
  {
    sub_22609A3B8();
    __break(1u);
  }

  v33 = v37;
  v32 = sub_225F1E118();
  v34 = sub_226099C78();

  v36 = [v46 transcriptFromTokens_];
  v35 = v36;

  if (v36)
  {
    v31 = v35;
    v26 = v35;
    v27 = sub_226099A08();
    v28 = v2;

    v29 = v27;
    v30 = v28;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v24 = v30;
  v25 = v29;
  if (v30)
  {
    v22 = v25;
    v23 = v24;
    v48[0] = v25;
    v48[1] = v24;
    v16 = sub_2260987C8();
    v13 = *(v16 - 8);
    v14 = v13;
    v3 = *(v13 + 64);
    v17 = &v13;
    MEMORY[0x28223BE20](&v13, v4, v5, v6);
    v15 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2260987B8();
    sub_225F2CF00();
    v18 = v48;
    v8 = sub_22609A1F8();
    v19 = v9;
    v20 = v8;
    (*(v14 + 8))(v15, v16);
    sub_225EFE6BC(v18);
    result = v20;
    *&v21 = v20;
    *(&v21 + 1) = v19;
  }

  else
  {
    result = 0;
    v21 = 0uLL;
  }

  v49 = v21;
  if (*(&v21 + 1))
  {
    *v44 = v49;
  }

  else
  {
    result = sub_226099AA8();
    v11 = v44;
    *v44 = result;
    *(v11 + 1) = v12;
    if (*(&v49 + 1))
    {
      return sub_225EFE6BC(&v49);
    }
  }

  return result;
}

uint64_t sub_225F28A40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = sub_2260993F8();
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_225F28A8C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F3006C();
  return (sub_226099C38() ^ 1) & 1;
}

uint64_t sub_225F28B30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  result = MEMORY[0x22AA72BB0]();
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_225F28BA4(uint64_t *a1)
{
  v9 = 0;
  v10 = 0;
  v6 = a1[1];
  v9 = *a1;
  v5 = v9;
  v10 = v6;
  sub_2260998E8();
  v8[6] = v9;
  v8[7] = v6;
  sub_225F2D16C();
  sub_226099FF8();
  v8[2] = v8[8];
  v8[3] = v8[9];
  v8[4] = v8[10];
  v8[5] = v8[11];
  sub_225F2FED8();
  v3 = sub_22609A1E8();
  v4 = v1;

  v8[0] = v3;
  v8[1] = v4;
  sub_2260998E8();
  v7[4] = v5;
  v7[5] = v6;
  sub_225F28D40();
  sub_22609A018();
  v7[0] = v7[6];
  v7[1] = v7[7];
  v7[2] = v7[8];
  v7[3] = v7[9];
  sub_225F2FF50();
  sub_225F2FFC8();
  sub_22609A048();
  sub_225F30040(v7);
  return sub_225EFE6BC(v8);
}

uint64_t sub_225F28D58(uint64_t a1)
{
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  v7[2] = a1;
  sub_225F1E118();
  v7[0] = sub_226099848();
  sub_2260998E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  sub_225F156F8();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D785E48, &unk_22609F970);
    sub_22609A388();
    if (!v5)
    {
      break;
    }

    v4 = sub_225F26174();
    sub_2260998E8();
    v3 = sub_2260999F8();

    [v4 setText_];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BE0](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
    sub_226099CE8();
    MEMORY[0x277D82BD8](v4);
  }

  sub_225EFE6E8(v6);
  v2 = v7[0];
  sub_2260998E8();
  sub_225EFE6E8(v7);
  return v2;
}

uint64_t sub_225F28F88(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_endAccess();
  return v3;
}

uint64_t sub_225F28FDC@<X0>(uint64_t *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786028, &qword_2260A00D0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E0, &qword_2260A02D0);
  v1 = sub_225F2D1E4();
  result = sub_225F15970(sub_225F290AC, 0, v4, v5, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v6);
  *a1 = result;
  return result;
}

id sub_225F290AC@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 text];
  v9 = result;
  if (result)
  {
    v4 = sub_226099A08();
    v5 = v3;
    result = MEMORY[0x277D82BD8](v9);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

id sub_225F291C0(uint64_t a1)
{
  sub_225F27078();
  sub_225F292E0(a1, 1u);
  sub_225F292E0(a1, 0);
  sub_225F2D9C8();
  sub_2260998E8();
  sub_2260998E8();
  v4 = sub_225F29F24();
  sub_225F2DA2C();
  MEMORY[0x277D82BE0](v4);
  v3 = sub_225F29F6C(v4);
  MEMORY[0x277D82BD8](v4);

  return v3;
}

uint64_t sub_225F292E0(uint64_t a1, unsigned int a2)
{
  v107 = a2;
  v98 = a1;
  v104 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  memset(v123, 0, sizeof(v123));
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v87 = 0;
  v110 = 0;
  v109 = 0;
  v88 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786058, &qword_2260A0E00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v89 = &v44 - v88;
  v90 = sub_226098FA8();
  v91 = *(v90 - 8);
  v92 = v91;
  v94 = *(v91 + 64);
  MEMORY[0x28223BE20](v90 - 8, v90, v6, v7);
  v96 = (v94 + 15) & 0xFFFFFFFFFFFFFFF0;
  v93 = &v44 - v96;
  v130 = &v44 - v96;
  MEMORY[0x28223BE20](&v44 - v96, v8, v9, v10);
  v95 = &v44 - v96;
  MEMORY[0x28223BE20](&v44 - v96, v11, v12, v13);
  v97 = &v44 - v96;
  v129 = &v44 - v96;
  v100 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0) - 8) + 64);
  MEMORY[0x28223BE20](v104, v107, v14, v15);
  v102 = (v100 + 15) & 0xFFFFFFFFFFFFFFF0;
  v99 = &v44 - v102;
  MEMORY[0x28223BE20](v16, v17, &v44 - v102, v18);
  v101 = &v44 - v102;
  MEMORY[0x28223BE20](v19, v20, &v44 - v102, v21);
  v103 = &v44 - v102;
  v128 = &v44 - v102;
  v127 = v22;
  v126 = v23;
  v125 = v2;
  v105 = sub_225F2DA90();
  v106 = v105;
  v124 = sub_22609A4F8();
  if (v107)
  {
    v86 = type metadata accessor for CombinedTranscriberOutput();
    sub_225F1D0EC((v98 + *(v86 + 28)), v101);
    sub_225F2DAF4(v101, v103);
    (*(v92 + 16))(v95, v98 + *(v86 + 24), v90);
  }

  else
  {
    v24 = type metadata accessor for CombinedTranscriberOutput();
    sub_225F1D0EC((v98 + *(v24 + 20)), v101);
    sub_225F2DAF4(v101, v103);
    (*(v92 + 16))(v95, v98, v90);
  }

  (*(v92 + 32))(v97, v95, v90);
  (*(v92 + 16))(v95, v97, v90);
  sub_226098F88();
  v82 = *(v92 + 8);
  v83 = (v92 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82(v95, v90);
  sub_225F2C610(v89);
  sub_225F1D0EC(v103, v99);
  v84 = sub_226099458();
  v85 = *(v84 - 8);
  if ((*(v85 + 48))(v99, 1) == 1)
  {
    sub_225F2DC1C(v99);
    v81 = 0;
  }

  else
  {
    v80 = sub_226099448();
    (*(v85 + 8))(v99, v84);
    v81 = v80;
  }

  v120 = v81;
  if (v81)
  {
    v121 = v120;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861A8, &qword_2260A0200);
    v121 = sub_22609A4F8();
    if (v120)
    {
      sub_225EFE6E8(&v120);
    }
  }

  v25 = v87;
  v119 = v121;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861B0, &qword_2260A0208);
  v26 = sub_225F2DCC4();
  v78 = &v119;
  MEMORY[0x22AA72D20](&v122, v77, v26);
  sub_225EFE6E8(v78);
  v118 = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861C0, &qword_2260A0210);
  sub_22609A3F8();
  for (i = v25; ; i = v48)
  {
    v74 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861C8, &qword_2260A0218);
    sub_22609A408();
    v75 = v116;
    v76 = v117;
    if (!v117)
    {
      sub_225EFE6E8(v123);
      v45 = v124;
      sub_2260998E8();
      v82(v93, v90);
      v82(v97, v90);
      sub_225F2DC1C(v103);
      sub_225EFE6E8(&v124);
      return v45;
    }

    v72 = v75;
    v73 = v76;
    v27 = v74;
    v58 = v76;
    v49 = v75;
    v115 = v75;
    v114 = v76;
    v51 = MEMORY[0x22AA72040]();
    v64 = 0;
    v54 = sub_226098828();
    v50 = *(v54 - 8);
    v52 = v50;
    v28 = *(v50 + 64);
    v59 = &v44;
    MEMORY[0x28223BE20](v49, v51, v54, &v44);
    v53 = &v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_226099D38();

    v55 = sub_226098818();
    v30 = *(*(v55 - 8) + 64);
    v57 = &v44;
    MEMORY[0x28223BE20](&v44, v31, v32, v33);
    v56 = &v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_226098808();
    (*(v52 + 8))(v53, v54);
    sub_225F2DD4C();
    v61 = sub_226099BC8();
    v62 = v35;
    v60 = v61;
    v68 = v35;
    v112 = v61;
    v113 = v35;
    v111 = v58;
    sub_2260998E8();
    v63 = &v44;
    MEMORY[0x28223BE20](v61, v62, &v44, v36);
    v65 = &v44 - 4;
    *(&v44 - 2) = v37;
    *(&v44 - 1) = v38;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861A8, &qword_2260A0200);
    v67 = sub_225F2DDF4();
    v39 = sub_225F2DE58();
    v41 = sub_225F15970(sub_225F2DDC4, v65, v66, v67, MEMORY[0x277D84A98], v39, MEMORY[0x277D84AC0], v40);
    v69 = v27;
    v70 = v41;
    v71 = v68;
    if (v27)
    {
      break;
    }

    v47 = v70;
    v48 = 0;

    v110 = v47;
    sub_2260998E8();
    sub_2260998E8();
    v46 = sub_225F2AFB8();
    v109 = v46;
    v42 = v46;
    v108 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861E8, &unk_2260A0220);
    sub_226099CE8();
  }

  __break(1u);
  return result;
}

uint64_t *sub_225F29FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v167 = a3;
  v166 = a2;
  v153 = a1;
  v154 = a4;
  v172 = 0;
  v219 = 0;
  v218 = 0;
  v217 = 0;
  v216 = 0;
  v215 = 0;
  v214 = 0;
  memset(v213, 0, sizeof(v213));
  v209 = 0;
  v208 = 0;
  v207 = 0;
  v206 = 0;
  v202 = 0;
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v195[1] = 0;
  v195[0] = 0;
  v190 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v155 = sub_2260994A8();
  v156 = *(v155 - 8);
  v157 = v156;
  v158 = *(v156 + 64);
  MEMORY[0x28223BE20](0, v155, v5, v6);
  v160 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v159 = &v61[-v160];
  MEMORY[0x28223BE20](v7, &v61[-v160], v8, v9);
  v161 = &v61[-v160];
  v162 = sub_2260994C8();
  v163 = *(v162 - 8);
  v164 = v163;
  v10 = *(v163 + 64);
  MEMORY[0x28223BE20](v162 - 8, v162, v11, v12);
  v165 = &v61[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v219 = v165;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861F0, &qword_2260A0270);
  v168 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v166, v167, v15);
  v170 = (v168 + 15) & 0xFFFFFFFFFFFFFFF0;
  v169 = &v61[-v170];
  MEMORY[0x28223BE20](&v61[-v170], v16, v17, v18);
  v171 = &v61[-v170];
  v218 = a1;
  v216 = v19;
  v217 = v20;
  v177 = 1;
  v215 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861F8, &qword_2260A0278);
  v173 = sub_22609A4F8();
  v174 = sub_225F2FAD0();
  v214 = sub_2260998A8();
  v211 = sub_226099438();
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786208, &qword_2260A0280);
  v21 = sub_225F2FB34();
  v176 = &v211;
  MEMORY[0x22AA72D20](&v212, v175, v21);
  sub_225EFE6E8(v176);
  v210 = v212;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786218, &qword_2260A0288);
  sub_22609A3F8();
  v179 = v177;
  for (i = v178; ; i = v63)
  {
    v149 = i;
    v151 = v179;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786220, &qword_2260A0290);
    sub_22609A408();
    sub_225F2FBBC(v169, v171);
    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786228, &qword_2260A0298);
    v22 = (*(*(v150 - 8) + 48))(v171, 1);
    v152 = v151;
    if (v22 == 1)
    {
      v143 = v152;
      v148 = v149;
      sub_225EFE6E8(v213);
      v141 = sub_225F2DDF4();
      v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786D30, &qword_2260A02A0) - 8) + 64);
      v147 = v61;
      v140 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v61, v24, v25, v26);
      v142 = &v61[-v140];
      sub_226099428();
      v144 = sub_226099418();
      v145 = v27;
      v146 = v214;
      sub_2260998E8();
      v28 = sub_225F2AF54(v142, v144, v145, v143 & 1);
      *v154 = v28;
      return sub_225EFE6E8(&v214);
    }

    v138 = *v171;
    v30 = v171 + *(v150 + 48);
    v209 = v138;
    (*(v164 + 32))(v165, v30, v162);
    v139 = [objc_opt_self() voiceCommandsParamKeyBuilder_];
    if (v139)
    {
      v137 = v139;
      v132 = v139;
      v133 = sub_226099A08();
      v134 = v31;

      v135 = v133;
      v136 = v134;
    }

    else
    {
      v135 = 0;
      v136 = 0;
    }

    v130 = v136;
    v131 = v135;
    if (v136)
    {
      v128 = v131;
      v129 = v130;
    }

    else
    {
      LODWORD(v59) = 0;
      v58 = 346;
      v57 = 2;
      sub_22609A3B8();
      __break(1u);
    }

    v119 = v129;
    v120 = v128;
    v207 = v128;
    v208 = v129;
    sub_2260994B8();
    v32 = *MEMORY[0x277CDCCB8];
    v121 = *(v157 + 104);
    v122 = (v157 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v121(v159, v32, v155);
    v127 = sub_226099498();
    v126 = *(v157 + 8);
    v125 = v157 + 8;
    v123 = v126;
    v124 = (v157 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v126(v159, v155);
    v126(v161, v155);
    if (v127)
    {
      v118 = 1;
    }

    else
    {
      sub_2260994B8();
      v121(v159, *MEMORY[0x277CDCCC0], v155);
      v117 = sub_226099498();
      v123(v159, v155);
      v123(v161, v155);
      v118 = v117;
    }

    if (v118)
    {
      break;
    }

    v65 = 0;
    v215 = 0;
    sub_226099AA8();
    v64 = sub_225F2AE48();
    v206 = v64;
    sub_2260998E8();
    v56 = v64;
    v205 = v64;
    v203 = v120;
    v204 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786230, &qword_2260A02A8);
    sub_226099948();

    v66 = v65;
    v67 = v149;
LABEL_26:
    v63 = v67;
    v62 = v66;

    (*(v164 + 8))(v165, v162);
    v179 = v62;
  }

  sub_226099478();
  v115 = v33;
  v116 = sub_226099B18();

  if ((v116 & 1) == 0)
  {
    sub_226099478();
    v112 = sub_225F2AE48();
    v184 = v112;
    sub_2260998E8();
    v34 = v112;
    v183 = v112;
    v181 = v120;
    v182 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786230, &qword_2260A02A8);
    sub_226099948();

    v113 = v151;
    v114 = v149;
LABEL_24:
    v66 = v113;
    v67 = v114;
    goto LABEL_26;
  }

  v106 = sub_226098AF8();
  v102 = v106;
  v103 = *(v106 - 8);
  v105 = v103;
  v104 = *(v103 + 64);
  v110 = v61;
  MEMORY[0x28223BE20](v61, v106, v35, v36);
  v107 = &v61[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226099488();
  v111 = sub_226098AC8();
  v108 = *(v105 + 8);
  v109 = (v105 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v108(v107, v106);
  if (v111)
  {
    v69 = 0;
    v215 = 0;
    sub_226099AA8();
    v68 = sub_225F2AE48();
    v202 = v68;
    sub_2260998E8();
    v55 = v68;
    v201 = v68;
    v199 = v120;
    v200 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786230, &qword_2260A02A8);
    sub_226099948();

    v75 = v69;
    v76 = v149;
LABEL_23:
    v113 = v75;
    v114 = v76;
    goto LABEL_24;
  }

  v97 = v149;
  v86 = 0;
  v197 = sub_226099AA8();
  v198 = v38;
  v85 = v61;
  MEMORY[0x28223BE20](v61, v38, v39, v40);
  v93 = &v61[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226099488();
  v95 = sub_226098AD8();
  v87 = v95;
  v88 = *(v95 - 8);
  v89 = v88;
  v42 = *(v88 + 64);
  v90 = v61;
  MEMORY[0x28223BE20](v61, v95, v43, v44);
  v92 = &v61[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = v92;
  sub_226098AE8();
  v108(v93, v102);
  sub_2260998E8();
  v98 = v61;
  MEMORY[0x28223BE20](v61, v46, v47, v48);
  v94 = &v57;
  v59 = v166;
  v60 = v49;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786238, &qword_2260A02B0);
  sub_225F2FD50();
  v50 = v97;
  v51 = sub_226099BF8();
  v99 = v50;
  v100 = v51;
  v101 = v98;
  if (!v50)
  {
    v82 = v100;

    (*(v89 + 8))(v91, v87);
    v196 = v82;
    sub_2260998E8();
    v194 = v82;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786248, &qword_2260A02B8);
    sub_225F2FDC8();
    sub_22609A028();
    for (j = v99; ; j = v71)
    {
      v79 = j;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786258, &qword_2260A02C0);
      sub_22609A388();
      v80 = v191;
      v81 = v192;
      if (v193)
      {
        break;
      }

      v77 = v80;
      v78 = v81;
      v71 = v79;
      v185 = v80;
      v186 = v81;
      v53 = sub_226099BE8();
      v70 = v54;
      MEMORY[0x22AA72C10](v53);
    }

    sub_225EFE6E8(v195);
    v72 = v197;
    v73 = v198;
    sub_2260998E8();
    v74 = sub_225F2AE48();
    v190 = v74;
    sub_2260998E8();
    v52 = v74;
    v189 = v74;
    v187 = v120;
    v188 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786230, &qword_2260A02A8);
    sub_226099948();

    sub_225EFE6BC(&v197);
    v75 = v151;
    v76 = v79;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_225F2AE90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786260, &qword_2260A02C8);
  sub_225F2FE50();
  sub_225EF9438();
  sub_22609A148();
  result = sub_22609A058();
  *a2 = result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4 & 1;
  return result;
}

id sub_225F2B008(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *&v7 = a3;
  *&v8 = a4;
  *&v9 = a5;
  *&v10 = a6;
  return sub_225F2C230(v7, v8, v9, v10, a1, a2);
}

BOOL sub_225F2B070(uint64_t a1, uint64_t a2)
{
  v7[2] = 0;
  v7[3] = a1;
  v7[4] = a2;
  sub_2260998E8();
  MEMORY[0x277D82BE0](@"Dictation");
  v7[0] = sub_226099A08();
  v7[1] = v2;
  v6 = MEMORY[0x22AA72BD0](v7[0], v2, a1, a2);
  sub_225EFE6BC(v7);
  MEMORY[0x277D82BD8](@"Dictation");

  return (v6 & 1) != 0;
}

BOOL sub_225F2B178(uint64_t a1, uint64_t a2)
{
  v11[2] = 0;
  v11[3] = a1;
  v11[4] = a2;
  sub_2260998E8();
  MEMORY[0x277D82BE0](@"SearchOrMessaging");
  v11[0] = sub_226099A08();
  v11[1] = v2;
  v10[2] = a1;
  v10[3] = a2;
  v9 = MEMORY[0x22AA72BD0](v11[0], v2, a1, a2);
  sub_225EFE6BC(v11);
  MEMORY[0x277D82BD8](@"SearchOrMessaging");

  if (v9)
  {
    return 1;
  }

  else
  {
    sub_2260998E8();
    MEMORY[0x277D82BE0](@"SiriDictation");
    v10[0] = sub_226099A08();
    v10[1] = v3;
    v5 = MEMORY[0x22AA72BD0](v10[0], v3, a1, a2);
    sub_225EFE6BC(v10);
    MEMORY[0x277D82BD8](@"SiriDictation");

    return (v5 & 1) != 0;
  }
}

id sub_225F2B328(uint64_t a1)
{
  v12[1] = a1;
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12[0] = MEMORY[0x22AA721F0]();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786AA0, &qword_2260A0AD0);
  v10 = sub_225F27014();
  v1 = sub_225F2DEE0();
  sub_225F15970(sub_225F26438, 0, v9, v10, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v11);
  sub_225EFE6E8(v12);
  v5 = sub_226099C78();

  sub_2260990E8();
  v6 = [v8 initWithAcousticFeatureValue:v5 frameDuration:?];
  MEMORY[0x277D82BD8](v5);
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    sub_22609A3B8();
    __break(1u);
  }

  MEMORY[0x277D82BE0](v4);
  v13 = v4;
  v2 = sub_2260990F8();
  (*(*(v2 - 8) + 8))(a1);
  MEMORY[0x277D82BD8](v13);
  return v4;
}

id sub_225F2B554@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  v12 = a1;
  v15 = 0;
  v7 = 0;
  v11 = sub_2260990F8();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2, v3, v4);
  v13 = &v7 - v8;
  v15 = v5;
  sub_225F2C484();
  (*(v9 + 16))(v13, v12, v11);
  result = sub_225F2B328(v13);
  *v14 = result;
  return result;
}

id sub_225F2B694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, char a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a13)
  {
    v23 = sub_2260999F8();

    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a15)
  {
    v21 = sub_2260999F8();

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  LOBYTE(v19) = a7;
  BYTE1(v19) = a8;
  v20 = [v34 initWithRecognition:a1 unfilteredRecognition:a2 rawRecognition:a3 audioAnalytics:a4 isFinal:a5 & 1 utteranceStart:a6 latticeMitigatorResult:a9 recognitionPaused:v19 speechProfileUsed:a10 resultCandidateId:a11 endOfSentenceLikelihood:v24 modelVersion:v22 acousticModelVersion:a16 potentialCommandPrecedingUtterance:a17 potentialCommandUtterance:a18 numOneBestTokensExcludingTriggerPhrase:?];
  MEMORY[0x277D82BD8](a17);
  MEMORY[0x277D82BD8](a16);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](a11);
  MEMORY[0x277D82BD8](a6);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v20;
}

id sub_225F2B908(uint64_t a1)
{
  if (a1)
  {
    sub_225F2CB58();
    v3 = sub_226099C78();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v2 = [v5 initWithInterpretations_isLowConfidence_];
  MEMORY[0x277D82BD8](v4);
  return v2;
}

id sub_225F2B9C4(uint64_t a1)
{
  if (a1)
  {
    sub_225F27014();
    v3 = sub_226099C78();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v2 = [v5 initWithInterpretationIndices_confidenceScore_];
  MEMORY[0x277D82BD8](v4);
  return v2;
}

id sub_225F2BA7C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_225F2C904();
    v7 = sub_226099C78();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    sub_225F2C780();
    v6 = sub_226099C78();

    v2 = [v10 initWithPhrases:v8 utterances:v6];
  }

  else
  {
    v2 = [v10 initWithPhrases:v8 utterances:0];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v8);
  return v5;
}

id sub_225F2BBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  LOBYTE(v9) = a7;
  v15 = [v7 initWithRecognition:a1 unfilteredRecognition:a2 rawRecognition:a3 audioAnalytics:a4 isFinal:a5 & 1 utteranceStart:v9 latticeMitigatorResult:? recognitionPaused:?];
  MEMORY[0x277D82BD8](a6);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v15;
}

id sub_225F2BC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_225F27014();
    v7 = sub_226099C78();

    v3 = [v9 initWithInterpretationIndices:v7 confidenceScore:? interpretation:?];
  }

  else
  {
    v3 = [v9 initWithInterpretationIndices:0 confidenceScore:? interpretation:?];
  }

  v6 = v3;
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v5);
  return v6;
}

id sub_225F2BD68(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    sub_225F2C904();
    v7 = sub_226099C78();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    sub_225F2C780();
    v5 = sub_226099C78();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = [v11 initWithPhrases:v8 utterances:a3 processedAudioDuration:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v8);
  return v4;
}

id sub_225F2BE9C()
{
  sub_225F2DA90();
  v3 = sub_226099C78();
  v2 = sub_226099C78();
  v4 = [v1 initWithNBestParses:v3 preITNNBestParses:?];
  MEMORY[0x277D82BD8](v2);

  MEMORY[0x277D82BD8](v3);

  return v4;
}

id sub_225F2BF48(uint64_t a1)
{
  v4 = [v1 initWithCommandGrammarParsePackage_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id sub_225F2BF98()
{
  v2 = sub_2260999F8();
  v3 = [v1 initWithText_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

id sub_225F2BFFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v13 = sub_226098A78();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a1, 1) == 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = sub_226098A38();
    (*(v14 + 8))(a1, v13);
    v9 = v8;
  }

  v6 = sub_2260999F8();
  sub_225F2FAD0();
  v5 = sub_226099868();
  v7 = [v11 initWithVoiceCommandUUID:v9 commandId:v6 isComplete:a4 & 1 paramMatches:?];
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](v6);

  MEMORY[0x277D82BD8](v9);
  return v7;
}

id sub_225F2C194()
{
  v3 = sub_2260999F8();
  sub_225F2DDF4();
  v2 = sub_226099C78();
  v4 = [v1 initWithUtterance:v3 parseCandidates:?];
  MEMORY[0x277D82BD8](v2);

  MEMORY[0x277D82BD8](v3);

  return v4;
}

id sub_225F2C230(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v11 = LODWORD(a1);
  v12 = LODWORD(a2);
  v13 = LODWORD(a3);
  v14 = LODWORD(a4);
  if (a6)
  {
    v9 = sub_2260999F8();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  LODWORD(a4) = v14;
  LODWORD(a3) = v13;
  LODWORD(a2) = v12;
  LODWORD(a1) = v11;
  v8 = [v15 initWithResults:a1 score:a2 threshold:a3 calibrationScale:a4 calibrationOffset:v10];
  MEMORY[0x277D82BD8](v7);
  return v8;
}

uint64_t sub_225F2C300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_22609A488();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_225F2C3E4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_225F2C420()
{
  v2 = qword_280D76508;
  if (!qword_280D76508)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76508);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2C484()
{
  v2 = qword_280D76480;
  if (!qword_280D76480)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76480);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_225F2C4E8(const void *a1, void *a2)
{
  v6 = sub_226098FA8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786058, &qword_2260A0E00);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_225F2C610(uint64_t a1)
{
  v3 = sub_226098FA8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_225F2C6B8()
{
  v2 = qword_280D76660;
  if (!qword_280D76660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7860A8, &qword_2260A0158);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76660);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2C780()
{
  v2 = qword_280D764D0;
  if (!qword_280D764D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D764D0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2C7E4()
{
  v2 = qword_280D76338;
  if (!qword_280D76338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7860B0, &qword_2260A0160);
    sub_225F2C87C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76338);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2C87C()
{
  v2 = qword_280D76658;
  if (!qword_280D76658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7860A8, &qword_2260A0158);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76658);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2C904()
{
  v2 = qword_280D76510;
  if (!qword_280D76510)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76510);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2C968()
{
  v2 = qword_280D76630;
  if (!qword_280D76630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786030, &qword_2260A00D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76630);
    return WitnessTable;
  }

  return v2;
}

void *sub_225F2C9F0(void *a1, void *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860C8, &qword_2260A0178);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7860A0, &qword_2260A0150);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v6 = a2 + *(v9 + 48);
    v5 = a1 + *(v9 + 48);
    v2 = sub_2260995E8();
    (*(*(v2 - 8) + 32))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

unint64_t sub_225F2CB58()
{
  v2 = qword_280D76488;
  if (!qword_280D76488)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76488);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2CBBC()
{
  v2 = qword_280D765F0;
  if (!qword_280D765F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7860D0, &qword_2260A0180);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2CC44()
{
  v2 = qword_27D7860F8;
  if (!qword_27D7860F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7860F0, &qword_2260A01A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7860F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2CCCC()
{
  v2 = qword_27D786100;
  if (!qword_27D786100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7860F0, &qword_2260A01A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2CD54()
{
  v2 = qword_27D786110;
  if (!qword_27D786110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786108, &qword_2260A01A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786110);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_225F2CDDC(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t sub_225F2CE10()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  v1 = sub_225F2CE78();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_225F2CE78()
{
  v2 = qword_27D786118;
  if (!qword_27D786118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7869D0, &qword_2260A01B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786118);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2CF00()
{
  v2 = qword_27D786430;
  if (!qword_27D786430)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2CF78()
{
  v2 = qword_27D786128;
  if (!qword_27D786128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786120, &qword_2260A01B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786128);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D02C()
{
  v2 = qword_27D786130;
  if (!qword_27D786130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7869D0, &qword_2260A01B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786130);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D0B4()
{
  v2 = qword_27D786138;
  if (!qword_27D786138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7864A0, &qword_2260A01C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786138);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F2D13C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_225F28B30(a1, a2);
}

unint64_t sub_225F2D16C()
{
  v2 = qword_27D7863F0;
  if (!qword_27D7863F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7863F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D1E4()
{
  v2 = qword_280D765C0;
  if (!qword_280D765C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786028, &qword_2260A00D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F2D284()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786148, &qword_2260A01D0);
  v1 = sub_225F2D2EC();

  return sub_225F2C300(v5, v3, v4, v1);
}

unint64_t sub_225F2D2EC()
{
  v2 = qword_27D786150;
  if (!qword_27D786150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786148, &qword_2260A01D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786150);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D380()
{
  v2 = qword_27D786158;
  if (!qword_27D786158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786108, &qword_2260A01A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786158);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D408()
{
  v2 = qword_280D765E8;
  if (!qword_280D765E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7860D0, &qword_2260A0180);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D490()
{
  v2 = qword_280D76640;
  if (!qword_280D76640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786048, &qword_2260A00F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76640);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F2D518(uint64_t a1)
{
  v3 = sub_226099598();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_225F2D5C0()
{
  v2 = qword_280D765C8;
  if (!qword_280D765C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786028, &qword_2260A00D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D648()
{
  v2 = qword_280D765B0;
  if (!qword_280D765B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786160, &qword_2260A01D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D6D0()
{
  v2 = qword_280D76380;
  if (!qword_280D76380)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D76380);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_225F2D73C(const void *a1, void *a2)
{
  v6 = sub_226099768();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786060, &qword_2260A0110);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_225F2D864()
{
  v2 = qword_280D763E8;
  if (!qword_280D763E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D763E8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2D8C8()
{
  v2 = qword_27D786170;
  if (!qword_27D786170)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D940()
{
  v2 = qword_27D786188;
  if (!qword_27D786188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786178, &qword_2260A01E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786188);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2D9C8()
{
  v2 = qword_27D786190;
  if (!qword_27D786190)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786190);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2DA2C()
{
  v2 = qword_27D786198;
  if (!qword_27D786198)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786198);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2DA90()
{
  v2 = qword_27D7861A0;
  if (!qword_27D7861A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7861A0);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_225F2DAF4(const void *a1, void *a2)
{
  v6 = sub_226099458();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_225F2DC1C(uint64_t a1)
{
  v3 = sub_226099458();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_225F2DCC4()
{
  v2 = qword_27D7861B8;
  if (!qword_27D7861B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7861B0, &qword_2260A0208);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7861B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2DD4C()
{
  v2 = qword_27D7861D0;
  if (!qword_27D7861D0)
  {
    sub_226098818();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7861D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2DDF4()
{
  v2 = qword_27D7861D8;
  if (!qword_27D7861D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D7861D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2DE58()
{
  v2 = qword_27D7861E0;
  if (!qword_27D7861E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7861A8, &qword_2260A0200);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D7861E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2DEE0()
{
  v2 = qword_280D765D8;
  if (!qword_280D765D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D786AA0, &qword_2260A0AD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t initializeBufferWithCopyOfBuffer for CombinedTranscriberOutput(char *a1, uint64_t *a2, int *a3)
{
  v20 = *(*(a3 - 1) + 80);
  if ((v20 & 0x20000) != 0)
  {
    v15 = *a2;

    *a1 = v15;
    return *a1 + ((v20 + 16) & ~v20);
  }

  else
  {
    v8 = sub_226098FA8();
    v9 = *(*(v8 - 8) + 16);
    (v9)(a1, a2);
    __dst = &a1[a3[5]];
    __src = a2 + a3[5];
    v12 = sub_226099458();
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    if ((v14)(__src, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
      memcpy(__dst, __src, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(__dst, __src, v12);
      (*(v13 + 56))(__dst, 0, 1, v12);
    }

    v9(&a1[a3[6]], a2 + a3[6], v8);
    v6 = &a1[a3[7]];
    v7 = a2 + a3[7];
    if (v14())
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
      memcpy(v6, v7, *(*(v4 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(v6, v7, v12);
      (*(v13 + 56))(v6, 0, 1, v12);
    }

    return a1;
  }
}

uint64_t destroy for CombinedTranscriberOutput(uint64_t a1, int *a2)
{
  v4 = sub_226098FA8();
  v5 = *(*(v4 - 8) + 8);
  v5(a1);
  v7 = a2[5];
  v9 = sub_226099458();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!(v11)(a1 + v7, 1))
  {
    (*(v10 + 8))(a1 + v7, v9);
  }

  (v5)(a1 + a2[6], v4);
  v3 = a1 + a2[7];
  result = v11();
  if (!result)
  {
    return (*(v10 + 8))(v3, v9);
  }

  return result;
}

uint64_t initializeWithCopy for CombinedTranscriberOutput(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = sub_226098FA8();
  v10 = *(*(v9 - 8) + 16);
  v10(a1, a2);
  v12 = a3[5];
  v14 = sub_226099458();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if ((v16)(a2 + v12, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy((a1 + v12), (a2 + v12), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))();
    (*(v15 + 56))(a1 + v12, 0, 1, v14);
  }

  (v10)(a1 + a3[6], a2 + a3[6], v9);
  __dst = (a1 + a3[7]);
  __src = (a2 + a3[7]);
  if (v16())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(__dst, __src, v14);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  return a1;
}

uint64_t assignWithCopy for CombinedTranscriberOutput(uint64_t a1, uint64_t a2, int *a3)
{
  v11 = sub_226098FA8();
  v12 = *(*(v11 - 8) + 24);
  v12(a1, a2);
  v14 = a3[5];
  v16 = sub_226099458();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if ((v18)(a1 + v14, 1))
  {
    if (v18(a2 + v14, 1, v16))
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
      memcpy((a1 + v14), (a2 + v14), *(*(v4 - 8) + 64));
    }

    else
    {
      (*(v17 + 16))();
      (*(v17 + 56))(a1 + v14, 0, 1, v16);
    }
  }

  else if (v18(a2 + v14, 1, v16))
  {
    (*(v17 + 8))();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy((a1 + v14), (a2 + v14), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v17 + 24))(a1 + v14, a2 + v14, v16);
  }

  (v12)(a1 + a3[6], a2 + a3[6], v11);
  v8 = (a1 + a3[7]);
  __src = (a2 + a3[7]);
  if ((v18)())
  {
    if (v18(__src, 1, v16))
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
      memcpy(v8, __src, *(*(v6 - 8) + 64));
    }

    else
    {
      (*(v17 + 16))(v8, __src, v16);
      (*(v17 + 56))(v8, 0, 1, v16);
    }
  }

  else if (v18(__src, 1, v16))
  {
    (*(v17 + 8))(v8, v16);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy(v8, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v17 + 24))(v8, __src, v16);
  }

  return a1;
}

uint64_t initializeWithTake for CombinedTranscriberOutput(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = sub_226098FA8();
  v10 = *(*(v9 - 8) + 32);
  v10(a1, a2);
  v12 = a3[5];
  v14 = sub_226099458();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if ((v16)(a2 + v12, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy((a1 + v12), (a2 + v12), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v15 + 32))();
    (*(v15 + 56))(a1 + v12, 0, 1, v14);
  }

  (v10)(a1 + a3[6], a2 + a3[6], v9);
  __dst = (a1 + a3[7]);
  __src = (a2 + a3[7]);
  if (v16())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v15 + 32))(__dst, __src, v14);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  return a1;
}

uint64_t assignWithTake for CombinedTranscriberOutput(uint64_t a1, uint64_t a2, int *a3)
{
  v11 = sub_226098FA8();
  v12 = *(*(v11 - 8) + 40);
  v12(a1, a2);
  v14 = a3[5];
  v16 = sub_226099458();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if ((v18)(a1 + v14, 1))
  {
    if (v18(a2 + v14, 1, v16))
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
      memcpy((a1 + v14), (a2 + v14), *(*(v4 - 8) + 64));
    }

    else
    {
      (*(v17 + 32))();
      (*(v17 + 56))(a1 + v14, 0, 1, v16);
    }
  }

  else if (v18(a2 + v14, 1, v16))
  {
    (*(v17 + 8))();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy((a1 + v14), (a2 + v14), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v17 + 40))(a1 + v14, a2 + v14, v16);
  }

  (v12)(a1 + a3[6], a2 + a3[6], v11);
  v8 = (a1 + a3[7]);
  __src = (a2 + a3[7]);
  if ((v18)())
  {
    if (v18(__src, 1, v16))
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
      memcpy(v8, __src, *(*(v6 - 8) + 64));
    }

    else
    {
      (*(v17 + 32))(v8, __src, v16);
      (*(v17 + 56))(v8, 0, 1, v16);
    }
  }

  else if (v18(__src, 1, v16))
  {
    (*(v17 + 8))(v8, v16);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    memcpy(v8, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v17 + 40))(v8, __src, v16);
  }

  return a1;
}

uint64_t sub_225F2F494()
{
  v5 = sub_226098FA8();
  v6 = v5;
  if (v0 <= 0x3F)
  {
    v3 = *(v5 - 8);
    v4 = sub_225F2F5C0();
    v6 = v4;
    if (v1 <= 0x3F)
    {
      v7 = *(v4 - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return v6;
}

uint64_t sub_225F2F5C0()
{
  v4 = qword_280D76740;
  if (!qword_280D76740)
  {
    sub_226099458();
    v3 = sub_22609A198();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_280D76740);
      return v1;
    }
  }

  return v4;
}

void *initializeBufferWithCopyOfBuffer for CombinedMuxTranscriberOutput(void *a1, uint64_t *a2)
{
  v3 = *a2;
  sub_2260998E8();
  *a1 = v3;
  v6 = a2[1];
  sub_2260998E8();
  result = a1;
  a1[1] = v6;
  return result;
}

uint64_t destroy for CombinedMuxTranscriberOutput(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];
}

uint64_t *assignWithCopy for CombinedMuxTranscriberOutput(uint64_t *a1, uint64_t *a2)
{
  v5 = *a2;
  sub_2260998E8();
  v2 = *a1;
  *a1 = v5;

  v7 = a2[1];
  sub_2260998E8();
  v3 = a1[1];
  a1[1] = v7;

  return a1;
}

uint64_t *assignWithTake for CombinedMuxTranscriberOutput(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;

  v3 = a1[1];
  a1[1] = a2[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for CombinedMuxTranscriberOutput(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CombinedMuxTranscriberOutput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_225F2FAD0()
{
  v2 = qword_27D786200;
  if (!qword_27D786200)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27D786200);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_225F2FB34()
{
  v2 = qword_27D786210;
  if (!qword_27D786210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786208, &qword_2260A0280);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786210);
    return WitnessTable;
  }

  return v2;
}

void *sub_225F2FBBC(void *a1, void *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786228, &qword_2260A0298);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7861F0, &qword_2260A0270);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v6 = a2 + *(v9 + 48);
    v5 = a1 + *(v9 + 48);
    v2 = sub_2260994C8();
    (*(*(v2 - 8) + 32))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

uint64_t sub_225F2FD24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_225F2AE90(a1, a2);
}

unint64_t sub_225F2FD50()
{
  v2 = qword_27D786240;
  if (!qword_27D786240)
  {
    sub_226098AD8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786240);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2FDC8()
{
  v2 = qword_27D786250;
  if (!qword_27D786250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786248, &qword_2260A02B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786250);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2FE50()
{
  v2 = qword_27D786268;
  if (!qword_27D786268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D786260, &qword_2260A02C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2FED8()
{
  v2 = qword_27D786270;
  if (!qword_27D786270)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786270);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2FF50()
{
  v2 = qword_27D786278;
  if (!qword_27D786278)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786278);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F2FFC8()
{
  v2 = qword_27D786280;
  if (!qword_27D786280)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D786280);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F30040(uint64_t a1)
{
  v1 = *(a1 + 24);

  return a1;
}

unint64_t sub_225F3006C()
{
  v2 = qword_280D76610;
  if (!qword_280D76610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7869D0, &qword_2260A01B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76610);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225F300F4()
{
  v2 = qword_280D76F28;
  if (!qword_280D76F28)
  {
    sub_226098B08();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76F28);
    return WitnessTable;
  }

  return v2;
}

char *sub_225F3016C(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_22609A448();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_22609A448();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_225F302E8(uint64_t a1, uint64_t a2)
{
  v7 = sub_225F303A4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786290, &unk_2260A02E0);
  inited = swift_initStackObject();
  v3 = sub_225F30BB4(inited, 1);
  *v4 = 0;
  sub_225F30C00();
  sub_225F30C34(v3);

  v8 = sub_225F30FDC(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_225F303A4(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_226099B28();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_225F314FC();
  }

  v10 = sub_225F30FF4(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_22609A448();
    __break(1u);
    return sub_225F314FC();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_225F31138(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_22609A2C8();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_225F31138(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_22609A268();
  if (v2)
  {
LABEL_29:
    sub_22609A3B8();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;
  sub_2260998E8();
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_22609A3B8();
    __break(1u);
  }

  sub_225EFE6BC(v17);
  return v10;
}

uint64_t sub_225F30BB4(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_225F30C34(uint64_t a1)
{
  v20 = sub_225F30FDC(a1);
  v2 = sub_225F30FDC(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;
    sub_2260998E8();
    v4 = sub_225F3152C(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    sub_22609A448();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_225F31698(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    sub_22609A3B8();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    sub_22609A3B8();
    __break(1u);
    goto LABEL_21;
  }

  sub_225F31138((a1 + 32), v20, v12);
  sub_2260998E8();

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    sub_225EF545C();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_225F30FF4(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786290, &unk_2260A02E0);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];

    return v3;
  }
}

void *sub_225F31138(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_22609A448();
    __break(1u);
  }

  result = sub_22609A448();
  __break(1u);
  return result;
}

uint64_t sub_225F31288(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x22AA72C60](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_22609A3B8();
    __break(1u);
  }

  v5 = sub_226099B88();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_225F314FC()
{
  v1 = MEMORY[0x277D84F90];

  return v1;
}

char *sub_225F3152C(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_225F30FF4(v4, v6);
  if (v7)
  {
    sub_225F316A0((a4 + 32), v4, v5 + 32);
    sub_2260998E8();

    *(a4 + 16) = 0;
  }

  else
  {
    sub_2260998E8();

    sub_225F31138((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_225F316A0(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_22609A448();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

void *sub_225F317FC(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_225F3190C()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_280D76810);
  __swift_project_value_buffer(v1, qword_280D76810);
  return sub_225F31958();
}

uint64_t sub_225F31958()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8();
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_225F31A54()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_27D786298);
  __swift_project_value_buffer(v1, qword_27D786298);
  return sub_225F31AA0();
}

uint64_t sub_225F31AA0()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0B8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8();
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_225F31B9C()
{
  if (qword_27D785D60 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_27D786298);
}

uint64_t sub_225F31C08()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  sub_2260998E8();
  return v2;
}

uint64_t sub_225F31C40()
{
  v2 = *(v0 + 128);
  MEMORY[0x277D82BE0]();
  return v2;
}

uint64_t sub_225F31C74()
{
  v2 = *(v0 + 136);

  return v2;
}

uint64_t sub_225F31CA0()
{
  swift_beginAccess();
  v2 = *(v0 + 144);
  sub_2260998E8();
  swift_endAccess();
  return v2;
}

uint64_t sub_225F31CF0(uint64_t a1)
{
  sub_2260998E8();
  swift_beginAccess();
  v2 = *(v1 + 144);
  *(v1 + 144) = a1;

  swift_endAccess();
}

uint64_t sub_225F31DEC()
{
  v2 = *(v0 + 152);

  return v2;
}

void *sub_225F31E84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24 = 0;
  v20 = 0;
  v29 = a1;
  v30 = a2;
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = v5;
  swift_defaultActor_initialize();
  *(v5 + 144) = 0;
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v20 = a3;
    v11 = [a3 interactionIdentifier];
    v19[0] = sub_226099A08();
    v19[1] = v6;
    v12 = MEMORY[0x22AA72BD0](v19[0], v6, a1, a2);
    sub_225EFE6BC(v19);
    MEMORY[0x277D82BD8](v11);
    if ((v12 & 1) == 0)
    {
      sub_226099AA8();
      sub_22609A3C8();
      __break(1u);
    }

    MEMORY[0x277D82BD8](a3);
  }

  if (a4)
  {
    v24 = a4;
    v8 = *(a4 + 32);
    v9 = *(a4 + 40);
    sub_2260998E8();
    v23[0] = v8;
    v23[1] = v9;
    v21 = a1;
    v22 = a2;
    v10 = MEMORY[0x22AA72BD0](v8, v9, a1, a2);
    sub_225EFE6BC(v23);
    if ((v10 & 1) == 0)
    {
      sub_226099AA8();
      sub_22609A3C8();
      __break(1u);
    }
  }

  sub_2260998E8();
  v17[14] = a1;
  v17[15] = a2;
  MEMORY[0x277D82BE0](a3);
  v17[16] = a3;

  v17[17] = a4;

  v17[19] = a5;

  MEMORY[0x277D82BD8](a3);

  return v17;
}

uint64_t sub_225F321DC(uint64_t a1, unint64_t a2)
{
  v11 = *(v2 + 128);
  MEMORY[0x277D82BE0](v11);
  if (v11)
  {
    sub_225EF5A38(a1, a2);
    v7 = sub_226098968();
    sub_225EF5990(a1, a2);
    [v11 setProfile_];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v11);
  }

  v6 = *(v10 + 152);

  if (v6)
  {
    sub_225EF5A38(a1, a2);
    sub_225EF5A38(a1, a2);
    swift_beginAccess();
    v4 = *(v6 + 120);
    v5 = *(v6 + 128);
    *(v6 + 120) = a1;
    *(v6 + 128) = a2;
    sub_225EF5990(v4, v5);
    swift_endAccess();
    sub_225EF5990(a1, a2);
  }

  return result;
}