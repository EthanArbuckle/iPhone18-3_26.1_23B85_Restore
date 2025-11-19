uint64_t sub_232BF5EEC()
{
  sub_232B2D12C();
  v3 = sub_232B124A8(v1, v2);
  sub_232B13F24(v3);
  v5 = *(v4 + 16);
  v6 = sub_232B2080C();
  v7(v6);
  return v0;
}

id DURawDocument.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DURawDocument();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232BF60E4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232BF073C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232BF610C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_232B13F24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_232BF6164()
{
  sub_232B2D12C();
  v3 = sub_232B124A8(v1, v2);
  sub_232B13F24(v3);
  v5 = *(v4 + 40);
  v6 = sub_232B2080C();
  v7(v6);
  return v0;
}

uint64_t sub_232BF61BC()
{
  sub_232B2D12C();
  v2 = v1(0);
  sub_232B13F24(v2);
  v4 = *(v3 + 32);
  v5 = sub_232B2080C();
  v6(v5);
  return v0;
}

void sub_232BF6238()
{
  sub_232B5EE58(319, &qword_2814E25E8, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_232B5EE58(319, &qword_2814E25E0, MEMORY[0x277CC9578]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_232BF70E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232BF712C()
{
  sub_232B2D12C();
  v2 = v1(0);
  sub_232B13F24(v2);
  v4 = *(v3 + 16);
  v5 = sub_232B2080C();
  v6(v5);
  return v0;
}

uint64_t sub_232BF71EC()
{

  return swift_beginAccess();
}

void *sub_232BF7228()
{

  return sub_232B29EB8(v0);
}

uint64_t sub_232BF7254()
{

  return swift_beginAccess();
}

uint64_t sub_232BF7270()
{
  v4 = v2[1];
  *v2 = v0;
  v2[1] = v1;
}

uint64_t sub_232BF728C()
{
  v4 = v2[1];
  *v2 = v1;
  v2[1] = v0;
}

uint64_t sub_232BF72A8()
{

  return swift_beginAccess();
}

uint64_t sub_232BF72C4()
{

  return sub_232CEA750();
}

uint64_t sub_232BF7358()
{

  return sub_232BF610C(v0, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);
}

uint64_t sub_232BF7380()
{

  return sub_232BF610C(v0, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
}

uint64_t sub_232BF73CC@<X0>(uint64_t a1@<X8>)
{

  return sub_232B13790(v1 + a1, v2, v3);
}

uint64_t sub_232BF73F4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_232BF740C()
{

  return sub_232BF6164();
}

uint64_t sub_232BF742C()
{
  v3 = *(v1 + *(v0 + 224));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BF7464()
{
  v2 = *v0;
}

uint64_t sub_232BF747C()
{

  return sub_232B13790(v2, v0, v1);
}

uint64_t sub_232BF7498()
{

  return sub_232CE8BD0();
}

uint64_t sub_232BF74E0()
{

  return sub_232CE9CF0();
}

uint64_t sub_232BF7500()
{
  v3 = *(v1 + v0);

  return type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
}

id DUResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_232BF7580()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BF7658(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BF7618();
}

void *sub_232BF7708()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_structuredEntities;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BF77E0(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BF77A0();
}

void *sub_232BF7890()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_languageTags;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BF7968(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BF7928();
}

void *sub_232BF7A18()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_userInterfaceUnderstandingResults;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BF7AF0(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BF7AB0();
}

void *sub_232BF7BA0()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BF7C78(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BF7C38();
}

void *sub_232BF7D28()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BF7E00(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BF7DC0();
}

void *sub_232BF7EB0()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventClassificationResult;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BF7F88(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BF7F48();
}

uint64_t sub_232BF8118(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232BF810C(v4);
}

uint64_t sub_232BF8284(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232BF8278(v4);
}

void *sub_232BF8330()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_responseDebugInfo;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232BF8408(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_232BF83C8();
}

char *sub_232BF8484(uint64_t a1)
{
  v178 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  v2 = *(*(v178 - 1) + 64);
  MEMORY[0x28223BE20](v178);
  v164 = &v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v163 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v177 = &v151 - v8;
  v176 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  v9 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v162 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_232B124A8(&qword_27DDC7788, &qword_232CFA9A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v161 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v175 = &v151 - v15;
  v173 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  v16 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v160 = (&v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_232B124A8(&qword_27DDC7008, &unk_232CFBAB0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v159 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v172 = &v151 - v22;
  v171 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
  v23 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v158 = (&v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_232B124A8(&qword_27DDC7A30, &unk_232CFE950);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v157 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v170 = &v151 - v29;
  v169 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  v30 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v156 = (&v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_232B124A8(&qword_27DDC7828, &unk_232CFBAC0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v155 = &v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v168 = &v151 - v36;
  v180 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v37 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v154 = &v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v153 = &v151 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v167 = &v151 - v43;
  v166 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
  v44 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v152 = (&v151 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_232B124A8(&qword_27DDC7A38, &unk_232CFBAD0);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v151 = &v151 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v165 = &v151 - v50;
  v51 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v54 = (&v151 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_232B124A8(&qword_27DDC7A40, &unk_232CFE960);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v55 - 8);
  v59 = &v151 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v61 = &v151 - v60;
  v62 = type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0);
  v63 = v62 - 8;
  v64 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v66 = &v151 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = [objc_allocWithZone(type metadata accessor for DUResponse()) init];
  v179 = a1;
  sub_232BFF5C8();
  v67 = *(v63 + 28);
  v174 = v66;
  v68 = *&v66[v67];
  swift_beginAccess();
  sub_232BF5EEC();
  LODWORD(v63) = sub_232B12480(v61, 1, v51);
  sub_232B13790(v61, &qword_27DDC7A40, &unk_232CFE960);
  if (v63 != 1)
  {
    sub_232BF5EEC();
    if (sub_232B12480(v59, 1, v51) == 1)
    {
      v69 = MEMORY[0x277D84F90];
      *v54 = MEMORY[0x277D84F90];
      v54[1] = v69;
      v70 = v54 + *(v51 + 24);
      sub_232CE9330();
      sub_232B12504(v54 + *(v51 + 28), 1, 1, v180);
      if (sub_232B12480(v59, 1, v51) != 1)
      {
        sub_232B13790(v59, &qword_27DDC7A40, &unk_232CFE960);
      }
    }

    else
    {
      sub_232BFECF4();
    }

    sub_232BFBB1C();
    v72 = v71;
    v73 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics;
    v74 = v181;
    swift_beginAccess();
    v75 = *&v74[v73];
    *&v74[v73] = v72;
  }

  swift_beginAccess();
  v76 = v165;
  sub_232BF5EEC();
  v77 = v166;
  v78 = sub_232B12480(v76, 1, v166);
  sub_232B13790(v76, &qword_27DDC7A38, &unk_232CFBAD0);
  v79 = v180;
  v80 = v169;
  if (v78 != 1)
  {
    v81 = v151;
    sub_232BF5EEC();
    if (sub_232B12480(v81, 1, v77) == 1)
    {
      v82 = v152;
      *v152 = MEMORY[0x277D84F90];
      v83 = v82 + *(v77 + 20);
      sub_232CE9330();
      sub_232B12504(v82 + *(v77 + 24), 1, 1, v79);
      if (sub_232B12480(v81, 1, v77) != 1)
      {
        sub_232B13790(v81, &qword_27DDC7A38, &unk_232CFBAD0);
      }
    }

    else
    {
      sub_232BFECF4();
    }

    sub_232BFC45C();
    v85 = v84;
    v86 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_structuredEntities;
    v87 = v181;
    swift_beginAccess();
    v88 = *&v87[v86];
    *&v87[v86] = v85;
  }

  swift_beginAccess();
  v89 = v79;
  v90 = v167;
  sub_232BF5EEC();
  v91 = v89;
  LODWORD(v89) = sub_232B12480(v90, 1, v89);
  sub_232B13790(v90, &qword_27DDC67C8, &unk_232CF5E70);
  if (v89 != 1)
  {
    v92 = v153;
    sub_232BF5EEC();
    if (sub_232B12480(v92, 1, v91) == 1)
    {
      v93 = v154;
      sub_232CE9330();
      v94 = &v93[*(v91 + 20)];
      *v94 = 0;
      *(v94 + 1) = 0;
      if (sub_232B12480(v92, 1, v91) != 1)
      {
        sub_232B13790(v92, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BFECF4();
    }

    v95 = sub_232B4C530();
    v96 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_responseDebugInfo;
    v97 = v181;
    swift_beginAccess();
    v98 = *&v97[v96];
    *&v97[v96] = v95;
  }

  swift_beginAccess();
  v99 = v168;
  sub_232BF5EEC();
  v100 = sub_232B12480(v99, 1, v80);
  sub_232B13790(v99, &qword_27DDC7828, &unk_232CFBAC0);
  v101 = v91;
  if (v100 != 1)
  {
    v102 = v155;
    sub_232BF5EEC();
    if (sub_232B12480(v102, 1, v80) == 1)
    {
      v103 = v156;
      *v156 = MEMORY[0x277D84F90];
      v104 = v103 + *(v80 + 20);
      sub_232CE9330();
      sub_232B12504(v103 + *(v80 + 24), 1, 1, v91);
      if (sub_232B12480(v102, 1, v80) != 1)
      {
        sub_232B13790(v102, &qword_27DDC7828, &unk_232CFBAC0);
      }
    }

    else
    {
      v103 = v156;
      sub_232BFECF4();
    }

    v105 = sub_232BD8A74(v103);
    v106 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_languageTags;
    v107 = v181;
    swift_beginAccess();
    v108 = *&v107[v106];
    *&v107[v106] = v105;
  }

  swift_beginAccess();
  v109 = v170;
  sub_232BF5EEC();
  v110 = v171;
  v111 = sub_232B12480(v109, 1, v171);
  sub_232B13790(v109, &qword_27DDC7A30, &unk_232CFE950);
  v112 = v111 == 1;
  v113 = v173;
  if (!v112)
  {
    v114 = v157;
    sub_232BF5EEC();
    if (sub_232B12480(v114, 1, v110) == 1)
    {
      v115 = v158;
      *v158 = MEMORY[0x277D84F90];
      v116 = v115 + *(v110 + 20);
      sub_232CE9330();
      sub_232B12504(v115 + *(v110 + 24), 1, 1, v101);
      if (sub_232B12480(v114, 1, v110) != 1)
      {
        sub_232B13790(v114, &qword_27DDC7A30, &unk_232CFE950);
      }
    }

    else
    {
      v115 = v158;
      sub_232BFECF4();
    }

    v117 = sub_232BFCB90(v115);
    v118 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_userInterfaceUnderstandingResults;
    v119 = v181;
    swift_beginAccess();
    v120 = *&v119[v118];
    *&v119[v118] = v117;
  }

  swift_beginAccess();
  v121 = v172;
  sub_232BF5EEC();
  v122 = v113;
  v123 = sub_232B12480(v121, 1, v113);
  sub_232B13790(v121, &qword_27DDC7008, &unk_232CFBAB0);
  v124 = v177;
  if (v123 != 1)
  {
    v125 = v159;
    sub_232BF5EEC();
    if (sub_232B12480(v125, 1, v122) == 1)
    {
      v126 = v160;
      *v160 = MEMORY[0x277D84F90];
      v127 = v126 + *(v122 + 20);
      sub_232CE9330();
      sub_232B12504(v126 + *(v122 + 24), 1, 1, v180);
      if (sub_232B12480(v125, 1, v122) != 1)
      {
        sub_232B13790(v125, &qword_27DDC7008, &unk_232CFBAB0);
      }
    }

    else
    {
      v126 = v160;
      sub_232BFECF4();
    }

    v128 = sub_232B4B13C(v126);
    v129 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories;
    v130 = v181;
    swift_beginAccess();
    v131 = *&v130[v129];
    *&v130[v129] = v128;
  }

  swift_beginAccess();
  v132 = v175;
  sub_232BF5EEC();
  v133 = v176;
  v134 = sub_232B12480(v132, 1, v176);
  sub_232B13790(v132, &qword_27DDC7788, &qword_232CFA9A0);
  if (v134 != 1)
  {
    v135 = v161;
    sub_232BF5EEC();
    if (sub_232B12480(v135, 1, v133) == 1)
    {
      v136 = v162;
      sub_232CE9330();
      v137 = *(v133 + 20);
      if (qword_27DDC63F0 != -1)
      {
        swift_once();
      }

      *&v136[v137] = qword_27DDC7ED0;
      v138 = sub_232B12480(v135, 1, v133);

      if (v138 != 1)
      {
        sub_232B13790(v135, &qword_27DDC7788, &qword_232CFA9A0);
      }
    }

    else
    {
      v136 = v162;
      sub_232BFECF4();
    }

    type metadata accessor for DUFoundInEventResult();
    v139 = sub_232BC5430(v136);
    v140 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult;
    v141 = v181;
    swift_beginAccess();
    v142 = *&v141[v140];
    *&v141[v140] = v139;
  }

  swift_beginAccess();
  sub_232BF5EEC();
  v143 = v178;
  if (sub_232B12480(v124, 1, v178) == 1)
  {
    sub_232BFF570(v179, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
    sub_232B13790(v124, &qword_27DDC7588, &qword_232CFA250);
    sub_232BFF570(v174, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
  }

  else
  {
    sub_232B13790(v124, &qword_27DDC7588, &qword_232CFA250);
    v144 = v163;
    sub_232BF5EEC();
    if (sub_232B12480(v144, 1, v143) == 1)
    {
      v145 = v164;
      sub_232CE9330();
      *(v145 + v143[5]) = 2;
      *(v145 + v143[6]) = 2;
      *(v145 + v143[7]) = 2;
      *(v145 + v143[8]) = 2;
      *(v145 + v143[9]) = 2;
      if (sub_232B12480(v144, 1, v143) != 1)
      {
        sub_232B13790(v144, &qword_27DDC7588, &qword_232CFA250);
      }
    }

    else
    {
      v145 = v164;
      sub_232BFECF4();
    }

    v146 = sub_232BAEAB4(v145);
    sub_232BFF570(v179, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
    sub_232BFF570(v174, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
    v147 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventClassificationResult;
    v148 = v181;
    swift_beginAccess();
    v149 = *&v148[v147];
    *&v148[v147] = v146;
  }

  return v181;
}

Class sub_232BF979C(uint64_t a1)
{
  v178 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  v2 = *(*(v178 - 1) + 64);
  MEMORY[0x28223BE20](v178);
  v164 = &v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v163 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v177 = &v151 - v8;
  v176 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  v9 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v162 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_232B124A8(&qword_27DDC7788, &qword_232CFA9A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v161 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v175 = &v151 - v15;
  v173 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  v16 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v160 = (&v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_232B124A8(&qword_27DDC7008, &unk_232CFBAB0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v159 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v172 = &v151 - v22;
  v171 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
  v23 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v158 = (&v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_232B124A8(&qword_27DDC7A30, &unk_232CFE950);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v157 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v170 = &v151 - v29;
  v169 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  v30 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v156 = (&v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_232B124A8(&qword_27DDC7828, &unk_232CFBAC0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v155 = &v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v168 = &v151 - v36;
  v180 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v37 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v154 = &v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v153 = &v151 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v167 = &v151 - v43;
  v166 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
  v44 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v152 = (&v151 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_232B124A8(&qword_27DDC7A38, &unk_232CFBAD0);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46 - 8);
  v151 = &v151 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v165 = &v151 - v50;
  v51 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v54 = (&v151 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_232B124A8(&qword_27DDC7A40, &unk_232CFE960);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v55 - 8);
  v59 = &v151 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v61 = &v151 - v60;
  v62 = type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0);
  v63 = v62 - 8;
  v64 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v66 = &v151 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = [objc_allocWithZone(v181) init];
  v179 = a1;
  sub_232BFF5C8();
  v67 = *(v63 + 28);
  v174 = v66;
  v68 = *&v66[v67];
  swift_beginAccess();
  sub_232BF5EEC();
  LODWORD(v63) = sub_232B12480(v61, 1, v51);
  sub_232B13790(v61, &qword_27DDC7A40, &unk_232CFE960);
  if (v63 != 1)
  {
    sub_232BF5EEC();
    if (sub_232B12480(v59, 1, v51) == 1)
    {
      v69 = MEMORY[0x277D84F90];
      *v54 = MEMORY[0x277D84F90];
      v54[1] = v69;
      v70 = v54 + *(v51 + 24);
      sub_232CE9330();
      sub_232B12504(v54 + *(v51 + 28), 1, 1, v180);
      if (sub_232B12480(v59, 1, v51) != 1)
      {
        sub_232B13790(v59, &qword_27DDC7A40, &unk_232CFE960);
      }
    }

    else
    {
      sub_232BFECF4();
    }

    sub_232BFBB1C();
    v72 = v71;
    v73 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics;
    v74 = v181;
    swift_beginAccess();
    v75 = *(v74 + v73);
    *(v74 + v73) = v72;
  }

  swift_beginAccess();
  v76 = v165;
  sub_232BF5EEC();
  v77 = v166;
  v78 = sub_232B12480(v76, 1, v166);
  sub_232B13790(v76, &qword_27DDC7A38, &unk_232CFBAD0);
  v79 = v180;
  v80 = v169;
  if (v78 != 1)
  {
    v81 = v151;
    sub_232BF5EEC();
    if (sub_232B12480(v81, 1, v77) == 1)
    {
      v82 = v152;
      *v152 = MEMORY[0x277D84F90];
      v83 = v82 + *(v77 + 20);
      sub_232CE9330();
      sub_232B12504(v82 + *(v77 + 24), 1, 1, v79);
      if (sub_232B12480(v81, 1, v77) != 1)
      {
        sub_232B13790(v81, &qword_27DDC7A38, &unk_232CFBAD0);
      }
    }

    else
    {
      sub_232BFECF4();
    }

    sub_232BFC45C();
    v85 = v84;
    v86 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_structuredEntities;
    v87 = v181;
    swift_beginAccess();
    v88 = *(v87 + v86);
    *(v87 + v86) = v85;
  }

  swift_beginAccess();
  v89 = v79;
  v90 = v167;
  sub_232BF5EEC();
  v91 = v89;
  LODWORD(v89) = sub_232B12480(v90, 1, v89);
  sub_232B13790(v90, &qword_27DDC67C8, &unk_232CF5E70);
  if (v89 != 1)
  {
    v92 = v153;
    sub_232BF5EEC();
    if (sub_232B12480(v92, 1, v91) == 1)
    {
      v93 = v154;
      sub_232CE9330();
      v94 = &v93[*(v91 + 20)];
      *v94 = 0;
      *(v94 + 1) = 0;
      if (sub_232B12480(v92, 1, v91) != 1)
      {
        sub_232B13790(v92, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BFECF4();
    }

    v95 = sub_232B4C530();
    v96 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_responseDebugInfo;
    v97 = v181;
    swift_beginAccess();
    v98 = *(v97 + v96);
    *(v97 + v96) = v95;
  }

  swift_beginAccess();
  v99 = v168;
  sub_232BF5EEC();
  v100 = sub_232B12480(v99, 1, v80);
  sub_232B13790(v99, &qword_27DDC7828, &unk_232CFBAC0);
  v101 = v91;
  if (v100 != 1)
  {
    v102 = v155;
    sub_232BF5EEC();
    if (sub_232B12480(v102, 1, v80) == 1)
    {
      v103 = v156;
      *v156 = MEMORY[0x277D84F90];
      v104 = v103 + *(v80 + 20);
      sub_232CE9330();
      sub_232B12504(v103 + *(v80 + 24), 1, 1, v91);
      if (sub_232B12480(v102, 1, v80) != 1)
      {
        sub_232B13790(v102, &qword_27DDC7828, &unk_232CFBAC0);
      }
    }

    else
    {
      v103 = v156;
      sub_232BFECF4();
    }

    v105 = sub_232BD8A74(v103);
    v106 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_languageTags;
    v107 = v181;
    swift_beginAccess();
    v108 = *(v107 + v106);
    *(v107 + v106) = v105;
  }

  swift_beginAccess();
  v109 = v170;
  sub_232BF5EEC();
  v110 = v171;
  v111 = sub_232B12480(v109, 1, v171);
  sub_232B13790(v109, &qword_27DDC7A30, &unk_232CFE950);
  v112 = v111 == 1;
  v113 = v173;
  if (!v112)
  {
    v114 = v157;
    sub_232BF5EEC();
    if (sub_232B12480(v114, 1, v110) == 1)
    {
      v115 = v158;
      *v158 = MEMORY[0x277D84F90];
      v116 = v115 + *(v110 + 20);
      sub_232CE9330();
      sub_232B12504(v115 + *(v110 + 24), 1, 1, v101);
      if (sub_232B12480(v114, 1, v110) != 1)
      {
        sub_232B13790(v114, &qword_27DDC7A30, &unk_232CFE950);
      }
    }

    else
    {
      v115 = v158;
      sub_232BFECF4();
    }

    v117 = sub_232BFCB90(v115);
    v118 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_userInterfaceUnderstandingResults;
    v119 = v181;
    swift_beginAccess();
    v120 = *(v119 + v118);
    *(v119 + v118) = v117;
  }

  swift_beginAccess();
  v121 = v172;
  sub_232BF5EEC();
  v122 = v113;
  v123 = sub_232B12480(v121, 1, v113);
  sub_232B13790(v121, &qword_27DDC7008, &unk_232CFBAB0);
  v124 = v177;
  if (v123 != 1)
  {
    v125 = v159;
    sub_232BF5EEC();
    if (sub_232B12480(v125, 1, v122) == 1)
    {
      v126 = v160;
      *v160 = MEMORY[0x277D84F90];
      v127 = v126 + *(v122 + 20);
      sub_232CE9330();
      sub_232B12504(v126 + *(v122 + 24), 1, 1, v180);
      if (sub_232B12480(v125, 1, v122) != 1)
      {
        sub_232B13790(v125, &qword_27DDC7008, &unk_232CFBAB0);
      }
    }

    else
    {
      v126 = v160;
      sub_232BFECF4();
    }

    v128 = sub_232B4B13C(v126);
    v129 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories;
    v130 = v181;
    swift_beginAccess();
    v131 = *(v130 + v129);
    *(v130 + v129) = v128;
  }

  swift_beginAccess();
  v132 = v175;
  sub_232BF5EEC();
  v133 = v176;
  v134 = sub_232B12480(v132, 1, v176);
  sub_232B13790(v132, &qword_27DDC7788, &qword_232CFA9A0);
  if (v134 != 1)
  {
    v135 = v161;
    sub_232BF5EEC();
    if (sub_232B12480(v135, 1, v133) == 1)
    {
      v136 = v162;
      sub_232CE9330();
      v137 = *(v133 + 20);
      if (qword_27DDC63F0 != -1)
      {
        swift_once();
      }

      *&v136[v137] = qword_27DDC7ED0;
      v138 = sub_232B12480(v135, 1, v133);

      if (v138 != 1)
      {
        sub_232B13790(v135, &qword_27DDC7788, &qword_232CFA9A0);
      }
    }

    else
    {
      v136 = v162;
      sub_232BFECF4();
    }

    type metadata accessor for DUFoundInEventResult();
    v139 = sub_232BC5430(v136);
    v140 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult;
    v141 = v181;
    swift_beginAccess();
    v142 = *(v141 + v140);
    *(v141 + v140) = v139;
  }

  swift_beginAccess();
  sub_232BF5EEC();
  v143 = v178;
  if (sub_232B12480(v124, 1, v178) == 1)
  {
    sub_232BFF570(v179, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
    sub_232B13790(v124, &qword_27DDC7588, &qword_232CFA250);
    sub_232BFF570(v174, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
  }

  else
  {
    sub_232B13790(v124, &qword_27DDC7588, &qword_232CFA250);
    v144 = v163;
    sub_232BF5EEC();
    if (sub_232B12480(v144, 1, v143) == 1)
    {
      v145 = v164;
      sub_232CE9330();
      *(v145 + v143[5]) = 2;
      *(v145 + v143[6]) = 2;
      *(v145 + v143[7]) = 2;
      *(v145 + v143[8]) = 2;
      *(v145 + v143[9]) = 2;
      if (sub_232B12480(v144, 1, v143) != 1)
      {
        sub_232B13790(v144, &qword_27DDC7588, &qword_232CFA250);
      }
    }

    else
    {
      v145 = v164;
      sub_232BFECF4();
    }

    v146 = sub_232BAEAB4(v145);
    sub_232BFF570(v179, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
    sub_232BFF570(v174, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
    v147 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventClassificationResult;
    v148 = v181;
    swift_beginAccess();
    v149 = *(v148 + v147);
    *(v148 + v147) = v146;
  }

  return v181;
}

void DUResponse.__allocating_init<A>(proto:)()
{
  sub_232B35110();
  v3 = v0;
  v5 = v4;
  sub_232B37B54();
  v245 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  v6 = sub_232B13F24(v245);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232BFF638();
  v231 = v9;
  v10 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  v11 = sub_232B2D120(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_232B20714();
  v230 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  sub_232B55558();
  v244 = v16;
  v17 = sub_232B554F0();
  v243 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(v17);
  v18 = sub_232B13F24(v243);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_232BFF638();
  v229 = v21;
  v22 = sub_232B124A8(&qword_27DDC7788, &qword_232CFA9A0);
  v23 = sub_232B2D120(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_232B20714();
  v228 = v26;
  sub_232B20600();
  MEMORY[0x28223BE20](v27);
  sub_232B55558();
  v242 = v28;
  sub_232B554F0();
  v241 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  v29 = sub_232B13F24(v241);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_232BFF638();
  v227 = v32;
  v33 = sub_232B124A8(&qword_27DDC7008, &unk_232CFBAB0);
  v34 = sub_232B2D120(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_232B20714();
  v226 = v37;
  sub_232B20600();
  MEMORY[0x28223BE20](v38);
  sub_232B55558();
  v240 = v39;
  sub_232B554F0();
  v239 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
  v40 = sub_232B13F24(v239);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_232BFF638();
  v225 = v43;
  v44 = sub_232B124A8(&qword_27DDC7A30, &unk_232CFE950);
  v45 = sub_232B2D120(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_232B20714();
  v224 = v48;
  sub_232B20600();
  MEMORY[0x28223BE20](v49);
  sub_232B55558();
  v238 = v50;
  sub_232B554F0();
  v237 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  v51 = sub_232B13F24(v237);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_232BFF638();
  v223 = v54;
  v55 = sub_232B124A8(&qword_27DDC7828, &unk_232CFBAC0);
  v56 = sub_232B2D120(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  sub_232B20714();
  v222 = v59;
  sub_232B20600();
  MEMORY[0x28223BE20](v60);
  sub_232B55558();
  v236 = v61;
  sub_232B554F0();
  v246 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v62 = sub_232B13F24(v246);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  sub_232BFF638();
  v221 = v65;
  v66 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v67 = sub_232B2D120(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  sub_232B20714();
  v220 = v70;
  sub_232B20600();
  MEMORY[0x28223BE20](v71);
  sub_232B55558();
  v235 = v72;
  sub_232B554F0();
  v234 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
  v73 = sub_232B13F24(v234);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  sub_232BFF638();
  v219 = v76;
  v77 = sub_232B124A8(&qword_27DDC7A38, &unk_232CFBAD0);
  v78 = sub_232B2D120(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  sub_232B20714();
  v218 = v81;
  sub_232B20600();
  MEMORY[0x28223BE20](v82);
  sub_232B55558();
  v233 = v83;
  sub_232B554F0();
  v232 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
  v84 = sub_232B13F24(v232);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  sub_232BFF638();
  v217 = v87;
  v88 = sub_232B124A8(&qword_27DDC7A40, &unk_232CFE960);
  v89 = sub_232B2D120(v88);
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v89);
  sub_232B20714();
  v216 = v92;
  sub_232B20600();
  MEMORY[0x28223BE20](v93);
  v95 = &v211 - v94;
  v96 = sub_232B124A8(&qword_27DDC7A48, &qword_232CFBAE0);
  v97 = sub_232B2D120(v96);
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v97);
  sub_232BFFC14();
  sub_232B350D8();
  v101 = v100;
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v104);
  sub_232B20704();
  v107 = v106 - v105;
  v108 = type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0);
  v109 = sub_232B13F24(v108);
  v111 = *(v110 + 64);
  MEMORY[0x28223BE20](v109);
  sub_232B20704();
  v114 = v113 - v112;
  v115 = [objc_allocWithZone(v3) init];
  (*(v101 + 16))(v107, v1, v5);
  if (swift_dynamicCast())
  {
    v213 = v101;
    v214 = v1;
    v215 = v5;
    sub_232B12504(v2, 0, 1, v108);
    sub_232BFECF4();
    v116 = *(v108 + 20);
    v212 = v114;
    v117 = *(v114 + v116);
    sub_232B13F74();
    v118 = &qword_27DDC7A40;
    sub_232BF5EEC();
    v119 = v232;
    v120 = sub_232B12480(v95, 1, v232);
    sub_232B13790(v95, &qword_27DDC7A40, &unk_232CFE960);
    v121 = v120 == 1;
    v247 = v115;
    v122 = v246;
    v123 = v237;
    if (!v121)
    {
      v124 = v216;
      sub_232BF5EEC();
      v125 = sub_232BFF878();
      sub_232B351B0(v125, v126, v119);
      if (v121)
      {
        v127 = MEMORY[0x277D84F90];
        v128 = v217;
        *v217 = MEMORY[0x277D84F90];
        v128[1] = v127;
        v129 = v128 + *(v119 + 24);
        sub_232CE9330();
        v130 = sub_232BFF824(*(v119 + 28));
        sub_232B12504(v130, v131, v132, v122);
        v133 = sub_232BFF878();
        sub_232B351B0(v133, v134, v119);
        if (!v121)
        {
          sub_232B13790(v124, &qword_27DDC7A40, &unk_232CFE960);
        }
      }

      else
      {
        sub_232BFF694();
        sub_232BFECF4();
      }

      sub_232BFBB1C();
      v139 = v138;
      v140 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics;
      v118 = v247;
      sub_232B13F5C();
      v141 = *&v118[v140];
      *&v118[v140] = v139;
    }

    sub_232B13F74();
    sub_232BF7340();
    sub_232BF5EEC();
    v142 = sub_232BFFA98();
    v143 = v234;
    sub_232B12480(v142, v144, v234);
    sub_232BFFAC4();
    v145 = v239;
    if (v118 != 1)
    {
      v146 = v218;
      sub_232BF5EEC();
      sub_232B20598(v146);
      if (v121)
      {
        v147 = v219;
        *v219 = MEMORY[0x277D84F90];
        v148 = v147 + *(v143 + 20);
        sub_232CE9330();
        v149 = sub_232BFF824(*(v143 + 24));
        sub_232B12504(v149, v150, v151, v122);
        sub_232B20598(v146);
        if (!v121)
        {
          sub_232B13790(v146, &qword_27DDC7A38, &unk_232CFBAD0);
        }
      }

      else
      {
        sub_232BFF79C();
        sub_232BFECF4();
      }

      sub_232BFC45C();
      v153 = v152;
      v154 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_structuredEntities;
      v155 = v247;
      sub_232B13F5C();
      v156 = *&v155[v154];
      *&v155[v154] = v153;
    }

    sub_232B13F74();
    v157 = v235;
    sub_232BF7340();
    sub_232BF5EEC();
    v158 = sub_232B12480(v157, 1, v122);
    sub_232BFFB24(v157);
    if (v158 != 1)
    {
      v159 = v220;
      sub_232BF5EEC();
      sub_232BFF7E0(v159);
      if (v121)
      {
        v160 = v221;
        sub_232CE9330();
        v161 = (v160 + *(v122 + 20));
        *v161 = 0;
        v161[1] = 0;
        sub_232BFF7E0(v159);
        v162 = v247;
        if (!v121)
        {
          sub_232B13790(v159, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232BFF620();
        sub_232BFECF4();
        v162 = v247;
      }

      v163 = sub_232B4C530();
      v164 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_responseDebugInfo;
      sub_232B13F5C();
      v165 = *&v162[v164];
      *&v162[v164] = v163;
    }

    sub_232B13F74();
    v166 = v122;
    v167 = v236;
    sub_232BF7340();
    sub_232BF5EEC();
    LODWORD(v168) = sub_232B12480(v167, 1, v123);
    sub_232BFFB24(v167);
    if (v168 != 1)
    {
      v169 = v222;
      sub_232BF5EEC();
      sub_232B351B0(v169, 1, v123);
      if (v121)
      {
        v174 = v223;
        *v223 = MEMORY[0x277D84F90];
        v170 = v174 + *(v123 + 20);
        sub_232CE9330();
        v171 = sub_232BFF824(*(v123 + 24));
        sub_232B12504(v171, v172, v173, v166);
        sub_232B351B0(v169, 1, v123);
        if (!v121)
        {
          sub_232B13790(v169, &qword_27DDC7828, &unk_232CFBAC0);
        }
      }

      else
      {
        sub_232BFF724();
        v174 = v223;
        sub_232BFECF4();
      }

      v175 = sub_232BD8A74(v174);
      v176 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_languageTags;
      v168 = v247;
      sub_232B13F5C();
      v177 = *&v168[v176];
      *&v168[v176] = v175;
    }

    sub_232B13F74();
    sub_232BF7340();
    sub_232BF5EEC();
    v178 = sub_232BFFA98();
    sub_232B12480(v178, v179, v145);
    sub_232BFFAC4();
    if (v168 != 1)
    {
      v180 = v224;
      sub_232BF5EEC();
      sub_232B20598(v180);
      if (v121)
      {
        v185 = v225;
        *v225 = MEMORY[0x277D84F90];
        v181 = v185 + *(v145 + 20);
        sub_232CE9330();
        v182 = sub_232BFF824(*(v145 + 24));
        sub_232B12504(v182, v183, v184, v166);
        sub_232B20598(v180);
        if (!v121)
        {
          sub_232B13790(v180, &qword_27DDC7A30, &unk_232CFE950);
        }
      }

      else
      {
        sub_232BFF70C();
        v185 = v225;
        sub_232BFECF4();
      }

      sub_232BFCB90(v185);
      sub_232B13F5C();
      sub_232BFFC8C();
    }

    sub_232B13F74();
    v186 = v240;
    sub_232BF7340();
    sub_232BF5EEC();
    v187 = v241;
    v188 = sub_232B12480(v186, 1, v241);
    sub_232BFFB24(v186);
    v189 = v243;
    if (v188 != 1)
    {
      v190 = v226;
      sub_232BF5EEC();
      sub_232BFF7E0(v190);
      if (v121)
      {
        v195 = v227;
        *v227 = MEMORY[0x277D84F90];
        v191 = v195 + *(v187 + 20);
        sub_232CE9330();
        v192 = sub_232BFF824(*(v187 + 24));
        sub_232B12504(v192, v193, v194, v246);
        sub_232BFF7E0(v190);
        if (!v121)
        {
          sub_232B13790(v190, &qword_27DDC7008, &unk_232CFBAB0);
        }
      }

      else
      {
        sub_232BFF6DC();
        v195 = v227;
        sub_232BFECF4();
      }

      sub_232B4B13C(v195);
      sub_232B13F5C();
      sub_232BFFC8C();
    }

    sub_232B13F74();
    v196 = v242;
    sub_232BF7340();
    sub_232BF5EEC();
    LODWORD(v197) = sub_232B12480(v196, 1, v189);
    sub_232BFFB24(v196);
    v198 = v245;
    if (v197 != 1)
    {
      v199 = v228;
      sub_232BF5EEC();
      sub_232B20598(v199);
      if (v121)
      {
        v197 = v229;
        sub_232CE9330();
        v200 = *(v189 + 20);
        if (qword_27DDC63F0 != -1)
        {
          swift_once();
        }

        *(v197 + v200) = qword_27DDC7ED0;
        v201 = sub_232B12480(v199, 1, v189);

        if (v201 != 1)
        {
          sub_232B13790(v199, &qword_27DDC7788, &qword_232CFA9A0);
        }
      }

      else
      {
        sub_232BFF6C4();
        v197 = v229;
        sub_232BFECF4();
      }

      type metadata accessor for DUFoundInEventResult();
      sub_232BC5430(v197);
      sub_232B13F5C();
      sub_232BFFC8C();
    }

    sub_232B13F74();
    sub_232BF7340();
    sub_232BF5EEC();
    v202 = sub_232BFFA98();
    sub_232B12480(v202, v203, v198);
    sub_232BFFAC4();
    if (v197 == 1)
    {
      (*(v213 + 8))(v214, v215);
      sub_232BFF89C();
      sub_232BFF570(v212, v204);
    }

    else
    {
      v205 = v230;
      sub_232BF5EEC();
      sub_232BFF7E0(v205);
      v207 = v213;
      v206 = v214;
      if (v121)
      {
        v208 = v231;
        sub_232CE9330();
        *(v208 + v198[5]) = 2;
        *(v208 + v198[6]) = 2;
        *(v208 + v198[7]) = 2;
        *(v208 + v198[8]) = 2;
        *(v208 + v198[9]) = 2;
        sub_232BFF7E0(v205);
        v209 = v212;
        if (!v121)
        {
          sub_232B13790(v205, &qword_27DDC7588, &qword_232CFA250);
        }
      }

      else
      {
        sub_232BFF6AC();
        v208 = v231;
        sub_232BFECF4();
        v209 = v212;
      }

      sub_232BAEAB4(v208);
      (*(v207 + 8))(v206, v215);
      sub_232BFF89C();
      sub_232BFF570(v209, v210);
      sub_232B13F5C();
      sub_232BFFC8C();
    }
  }

  else
  {
    (*(v101 + 8))(v1, v5);

    sub_232B55484();
    sub_232B12504(v135, v136, v137, v108);
    sub_232B13790(v2, &qword_27DDC7A48, &qword_232CFBAE0);
  }

  sub_232B20A00();
}

void sub_232BFBB1C()
{
  sub_232B35110();
  v4 = v3;
  v76 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v5 = sub_232B13F24(v76);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232BFF638();
  v71 = v8;
  v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v10 = sub_232B2D120(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20714();
  v70 = v13;
  sub_232B20600();
  MEMORY[0x28223BE20](v14);
  sub_232B55558();
  v74 = v15;
  sub_232B554F0();
  v16 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v17 = sub_232B27FBC(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_232B3516C();
  sub_232BFF834();
  MEMORY[0x28223BE20](v22);
  sub_232BFFA3C();
  MEMORY[0x28223BE20](v23);
  v73 = sub_232BFFC2C();
  v24 = sub_232B13F24(v73);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_232B20704();
  v29 = v28 - v27;
  v75 = [objc_allocWithZone(type metadata accessor for DUTopicDetectionResponse()) init];
  sub_232BFF784();
  v77 = v4;
  sub_232BFF5C8();
  v78 = v29;
  v30 = MEMORY[0x277D84F90];
  v80 = MEMORY[0x277D84F90];
  v31 = *(*v29 + 16);
  v72 = v19;
  if (v31)
  {
    v32 = *(v19 + 80);
    sub_232BFFA4C();
    v35 = v33 + v34;
    v36 = *(v19 + 72);
    v37 = MEMORY[0x277D84F90];
    do
    {
      sub_232BFF664();
      sub_232BFF5C8();
      sub_232BFF5C8();
      v38 = sub_232C0FAF0(v2);
      sub_232BFF64C();
      v40 = sub_232BFF570(v1, v39);
      if (v38)
      {
        MEMORY[0x238391D50](v40);
        sub_232BFFC00();
        if (v42)
        {
          sub_232BC1BBC(v41);
          sub_232CEA000();
        }

        sub_232CEA020();
        v37 = v80;
      }

      v35 += v36;
      --v31;
    }

    while (v31);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v43 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics;
  sub_232B13F5C();
  v44 = *&v75[v43];
  *&v75[v43] = v37;

  sub_232BFFBEC();
  if (v37)
  {
    v45 = *(v72 + 80);
    sub_232BFFA4C();
    v48 = v46 + v47;
    v50 = *(v49 + 72);
    v30 = MEMORY[0x277D84F90];
    do
    {
      sub_232BFF664();
      sub_232BFF5C8();
      sub_232BFFAF0();
      v51 = sub_232C0FAF0(v2);
      sub_232BFF64C();
      v53 = sub_232BFF570(v0, v52);
      if (v51)
      {
        MEMORY[0x238391D50](v53);
        sub_232BFFA2C(v79);
        if (v42)
        {
          sub_232BFF980();
        }

        sub_232CEA020();
        v30 = v79;
      }

      v48 += v50;
      --v37;
    }

    while (v37);
  }

  v54 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_personalTopics;
  sub_232B13F5C();
  v55 = *(v54 + v75);
  *(v54 + v75) = v30;

  v56 = *(v73 + 28);
  sub_232BF5EEC();
  v57 = sub_232BFF878();
  sub_232BFF7C4(v57, v58);
  if (v63)
  {
    sub_232BFF8B4();
    sub_232BFF570(v77, v59);
    sub_232B13790(v74, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232BFF570(v78, v54);
  }

  else
  {
    sub_232BA62B0();
    sub_232B13790(v60, v61, v62);
    sub_232BFFB84();
    sub_232B38C90(v70);
    if (v63)
    {
      v64 = v71;
      sub_232CE9330();
      sub_232BFFA1C();
      sub_232B38C90(v70);
      v65 = v77;
      if (!v63)
      {
        sub_232B13790(v70, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BFF620();
      v64 = v71;
      sub_232BFECF4();
      v65 = v77;
    }

    sub_232B4C530();
    sub_232BFF754();
    v67 = v66;
    sub_232BFF570(v65, v66);
    sub_232BFF570(v78, v67);
    v68 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo;
    sub_232B13F5C();
    v69 = *&v75[v68];
    *&v75[v68] = v64;
  }

  sub_232B20A00();
}

void sub_232BFBFC0()
{
  sub_232B35110();
  sub_232B37B54();
  v76 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v5 = sub_232B13F24(v76);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232BFF638();
  v71 = v8;
  v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v10 = sub_232B2D120(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20714();
  v70 = v13;
  sub_232B20600();
  MEMORY[0x28223BE20](v14);
  sub_232B55558();
  v74 = v15;
  sub_232B554F0();
  v16 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicResult();
  v17 = sub_232B27FBC(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_232B3516C();
  sub_232BFF834();
  MEMORY[0x28223BE20](v22);
  sub_232BFFA3C();
  MEMORY[0x28223BE20](v23);
  v73 = sub_232BFFC2C();
  v24 = sub_232B13F24(v73);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_232B20704();
  v29 = v28 - v27;
  v75 = [objc_allocWithZone(v1) init];
  sub_232BFF784();
  v77 = v2;
  sub_232BFF5C8();
  v78 = v29;
  v30 = MEMORY[0x277D84F90];
  v80 = MEMORY[0x277D84F90];
  v31 = *(*v29 + 16);
  v72 = v19;
  if (v31)
  {
    v32 = *(v19 + 80);
    sub_232BFFA4C();
    v35 = v33 + v34;
    v36 = *(v19 + 72);
    v37 = MEMORY[0x277D84F90];
    do
    {
      sub_232BFF664();
      sub_232BFF5C8();
      sub_232BFF5C8();
      v38 = sub_232C0FAF0(v4);
      sub_232BFF64C();
      v40 = sub_232BFF570(v3, v39);
      if (v38)
      {
        MEMORY[0x238391D50](v40);
        sub_232BFFC00();
        if (v42)
        {
          sub_232BC1BBC(v41);
          sub_232CEA000();
        }

        sub_232CEA020();
        v37 = v80;
      }

      v35 += v36;
      --v31;
    }

    while (v31);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v43 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics;
  sub_232B13F5C();
  v44 = *&v75[v43];
  *&v75[v43] = v37;

  sub_232BFFBEC();
  if (v37)
  {
    v45 = *(v72 + 80);
    sub_232BFFA4C();
    v48 = v46 + v47;
    v50 = *(v49 + 72);
    v30 = MEMORY[0x277D84F90];
    do
    {
      sub_232BFF664();
      sub_232BFF5C8();
      sub_232BFFAF0();
      v51 = sub_232C0FAF0(v4);
      sub_232BFF64C();
      v53 = sub_232BFF570(v0, v52);
      if (v51)
      {
        MEMORY[0x238391D50](v53);
        sub_232BFFA2C(v79);
        if (v42)
        {
          sub_232BFF980();
        }

        sub_232CEA020();
        v30 = v79;
      }

      v48 += v50;
      --v37;
    }

    while (v37);
  }

  v54 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_personalTopics;
  sub_232B13F5C();
  v55 = *(v54 + v75);
  *(v54 + v75) = v30;

  v56 = *(v73 + 28);
  sub_232BF5EEC();
  v57 = sub_232BFF878();
  sub_232BFF7C4(v57, v58);
  if (v63)
  {
    sub_232BFF8B4();
    sub_232BFF570(v77, v59);
    sub_232B13790(v74, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232BFF570(v78, v54);
  }

  else
  {
    sub_232BA62B0();
    sub_232B13790(v60, v61, v62);
    sub_232BFFB84();
    sub_232B38C90(v70);
    if (v63)
    {
      v64 = v71;
      sub_232CE9330();
      sub_232BFFA1C();
      sub_232B38C90(v70);
      v65 = v77;
      if (!v63)
      {
        sub_232B13790(v70, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BFF620();
      v64 = v71;
      sub_232BFECF4();
      v65 = v77;
    }

    sub_232B4C530();
    sub_232BFF754();
    v67 = v66;
    sub_232BFF570(v65, v66);
    sub_232BFF570(v78, v67);
    v68 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_responseDebugInfo;
    sub_232B13F5C();
    v69 = *&v75[v68];
    *&v75[v68] = v64;
  }

  sub_232B20A00();
}

void sub_232BFC45C()
{
  sub_232B35110();
  sub_232B37B54();
  v56 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v3 = sub_232B13F24(v56);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232BFF638();
  v53 = v6;
  v7 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v8 = sub_232B2D120(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232B20714();
  v52 = v11;
  sub_232B20600();
  MEMORY[0x28223BE20](v12);
  sub_232B55558();
  v55 = v13;
  v14 = sub_232B554F0();
  v15 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(v14);
  v16 = sub_232B27FBC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_232B3516C();
  sub_232BFF834();
  MEMORY[0x28223BE20](v21);
  v54 = sub_232BFFC6C();
  v22 = sub_232B13F24(v54);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_232B20704();
  sub_232BFFC14();
  v25 = [objc_allocWithZone(type metadata accessor for DUStructuredEntityResponse()) init];
  sub_232BFF67C();
  v57 = v0;
  sub_232BFF5C8();
  v26 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  v27 = *(*v1 + 16);
  if (v27)
  {
    v28 = *(v18 + 80);
    sub_232BFFA4C();
    v31 = v29 + v30;
    v32 = *(v18 + 72);
    do
    {
      sub_232BFF95C();
      sub_232BFF5C8();
      sub_232BFFAF0();
      v33 = sub_232C07898(v2);
      v34 = sub_232BFF9C8();
      if (v33)
      {
        MEMORY[0x238391D50](v34);
        sub_232BFFA2C(v58);
        if (v35)
        {
          sub_232BFF980();
        }

        sub_232CEA020();
        v26 = v58;
      }

      v31 += v32;
      --v27;
    }

    while (v27);
  }

  v36 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities;
  sub_232B13F5C();
  v37 = *(v36 + v25);
  *(v36 + v25) = v26;

  v38 = *(v54 + 24);
  sub_232BF5EEC();
  v39 = sub_232BFF878();
  sub_232BFF7C4(v39, v40);
  if (v45)
  {
    sub_232BFF944();
    sub_232BFF570(v57, v41);
    sub_232B13790(v55, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232BFF570(v1, v36);
  }

  else
  {
    sub_232BA62B0();
    sub_232B13790(v42, v43, v44);
    sub_232BFFB84();
    sub_232B38C90(v52);
    if (v45)
    {
      v46 = v53;
      sub_232CE9330();
      sub_232BFFA1C();
      sub_232B38C90(v52);
      v47 = v57;
      if (!v45)
      {
        sub_232B13790(v52, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BFF620();
      v46 = v53;
      sub_232BFECF4();
      v47 = v57;
    }

    sub_232B4C530();
    sub_232BFF76C();
    v49 = v48;
    sub_232BFF570(v47, v48);
    sub_232BFF570(v1, v49);
    v50 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo;
    sub_232B13F5C();
    v51 = *&v25[v50];
    *&v25[v50] = v46;
  }

  sub_232B20A00();
}

void sub_232BFC7F0()
{
  sub_232B35110();
  sub_232B37B54();
  v55 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v4 = sub_232B13F24(v55);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232BFF638();
  v52 = v7;
  v8 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v9 = sub_232B2D120(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_232B20714();
  v51 = v12;
  sub_232B20600();
  MEMORY[0x28223BE20](v13);
  sub_232B55558();
  v54 = v14;
  v15 = sub_232B554F0();
  v16 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(v15);
  v17 = sub_232B27FBC(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_232B3516C();
  sub_232BFF834();
  MEMORY[0x28223BE20](v22);
  v53 = sub_232BFFC6C();
  v23 = sub_232B13F24(v53);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_232B20704();
  sub_232BFFC14();
  v26 = [objc_allocWithZone(v0) init];
  sub_232BFF67C();
  v56 = v1;
  sub_232BFF5C8();
  v27 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  v28 = *(*v2 + 16);
  if (v28)
  {
    v29 = *(v19 + 80);
    sub_232BFFA4C();
    v32 = v30 + v31;
    v33 = *(v19 + 72);
    do
    {
      sub_232BFF95C();
      sub_232BFF5C8();
      sub_232BFFAF0();
      v34 = sub_232C07898(v3);
      v35 = sub_232BFF9C8();
      if (v34)
      {
        MEMORY[0x238391D50](v35);
        sub_232BFFA2C(v57);
        if (v36)
        {
          sub_232BFF980();
        }

        sub_232CEA020();
        v27 = v57;
      }

      v32 += v33;
      --v28;
    }

    while (v28);
  }

  v37 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities;
  sub_232B13F5C();
  v38 = *(v37 + v26);
  *(v37 + v26) = v27;

  v39 = *(v53 + 24);
  sub_232BF5EEC();
  sub_232BFF7C4(v54, 1);
  if (v44)
  {
    sub_232BFF944();
    sub_232BFF570(v56, v40);
    sub_232B13790(v54, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232BFF570(v2, v37);
  }

  else
  {
    sub_232BA62B0();
    sub_232B13790(v41, v42, v43);
    sub_232BF5EEC();
    sub_232B38C90(v51);
    if (v44)
    {
      v45 = v52;
      sub_232CE9330();
      sub_232BFFA1C();
      sub_232B38C90(v51);
      v46 = v56;
      if (!v44)
      {
        sub_232B13790(v51, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BFF620();
      v45 = v52;
      sub_232BFECF4();
      v46 = v56;
    }

    sub_232B4C530();
    sub_232BFF76C();
    v48 = v47;
    sub_232BFF570(v46, v47);
    sub_232BFF570(v2, v48);
    v49 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo;
    sub_232B13F5C();
    v50 = *&v26[v49];
    *&v26[v49] = v45;
  }

  sub_232B20A00();
}

char *sub_232BFCB90(uint64_t a1)
{
  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v6 = sub_232B13F24(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v11 = v10 - v9;
  v12 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v13 = sub_232B2D120(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_232B3516C();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  sub_232B55558();
  v64 = v20;
  sub_232B554F0();
  type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult();
  sub_232B350D8();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  sub_232B3516C();
  sub_232BFFA3C();
  MEMORY[0x28223BE20](v26);
  v63 = sub_232BFFC4C();
  v27 = sub_232B13F24(v63);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_232B20704();
  v32 = (v31 - v30);
  v33 = [objc_allocWithZone(type metadata accessor for DUUserInterfaceUnderstandingResponse()) init];
  sub_232BFF6F4();
  sub_232BFF5C8();
  v65 = v32;
  v34 = *v32;
  v35 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  v36 = *(v34 + 16);
  if (v36)
  {
    sub_232BFFA78();
    v37 = *(v22 + 80);
    sub_232BFFA4C();
    a1 = v38 + v39;
    v66 = *(v22 + 72);
    do
    {
      sub_232BFF8E4();
      sub_232BFF5C8();
      sub_232BA62B0();
      sub_232BFF5C8();
      [objc_allocWithZone(type metadata accessor for DUUserInterfaceUnderstandingResult()) init];
      sub_232BFF844();
      sub_232BFF570(v2, v40);
      v33 = *v1;
      v18 = v1[1];
      v5 = v35 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier;
      sub_232B13F5C();
      v41 = *(v5 + 8);
      *v5 = v33;
      *(v5 + 8) = v18;

      sub_232BFFBD8();
      v11 = *(v42 + 8);
      v43 = sub_232B2080C();
      sub_232BFF570(v43, v44);
      if (v11)
      {
        v3 = 0.0;
      }

      v45 = OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence;
      v46 = sub_232B13F5C();
      *(v35 + v45) = v3;
      MEMORY[0x238391D50](v46);
      sub_232BFFBC4();
      if (v48)
      {
        sub_232BC1BBC(v47);
        sub_232CEA000();
      }

      sub_232CEA020();
      a1 += v66;
      --v36;
    }

    while (v36);
    v35 = v67;
    sub_232BFFA58();
  }

  v49 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities;
  sub_232B13F5C();
  v50 = *(v49 + v33);
  *(v49 + v33) = v35;

  v51 = *(v63 + 24);
  sub_232BF5EEC();
  sub_232B20598(v64);
  if (v56)
  {
    sub_232BFF860();
    sub_232BFF570(a1, v52);
    sub_232B13790(v64, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232BFF570(v65, v49);
  }

  else
  {
    sub_232BA62B0();
    sub_232B13790(v53, v54, v55);
    sub_232BF5EEC();
    sub_232B20598(v18);
    if (v56)
    {
      sub_232CE9330();
      v57 = (v11 + *(v5 + 20));
      *v57 = 0;
      v57[1] = 0;
      sub_232B20598(v18);
      if (!v56)
      {
        sub_232B13790(v18, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BFF620();
      sub_232BFECF4();
    }

    sub_232B4C530();
    sub_232BFF73C();
    v59 = v58;
    sub_232BFF570(a1, v58);
    sub_232BFF570(v65, v59);
    v60 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo;
    sub_232B13F5C();
    v61 = *&v33[v60];
    *&v33[v60] = &qword_27DDC67C8;
  }

  return v33;
}

char *sub_232BFCFF4(uint64_t a1)
{
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v9 = sub_232B13F24(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_232B20704();
  v14 = v13 - v12;
  v15 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v16 = sub_232B2D120(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_232B3516C();
  sub_232BFF834();
  MEMORY[0x28223BE20](v19);
  sub_232B55558();
  v60 = v20;
  sub_232B554F0();
  type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult();
  sub_232B350D8();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  sub_232B3516C();
  sub_232BFFA3C();
  MEMORY[0x28223BE20](v26);
  v59 = sub_232BFFC4C();
  v27 = sub_232B13F24(v59);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_232B20704();
  sub_232BFFC14();
  v30 = [objc_allocWithZone(v2) init];
  sub_232BFF6F4();
  sub_232BFF5C8();
  v61 = v4;
  v31 = MEMORY[0x277D84F90];
  v63 = MEMORY[0x277D84F90];
  v32 = *(*v4 + 16);
  if (v32)
  {
    sub_232BFFA78();
    v33 = *(v22 + 80);
    sub_232BFFA4C();
    v14 = v34 + v35;
    v62 = *(v22 + 72);
    do
    {
      sub_232BFF8E4();
      sub_232BFF5C8();
      sub_232BA62B0();
      sub_232BFF5C8();
      [objc_allocWithZone(type metadata accessor for DUUserInterfaceUnderstandingResult()) init];
      sub_232BFF844();
      sub_232BFF570(v3, v36);
      v5 = *v1;
      v30 = v1[1];
      v8 = v22 + OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicIdentifier;
      sub_232B13F5C();
      v37 = *(v8 + 8);
      *v8 = v5;
      *(v8 + 8) = v30;

      sub_232BFFBD8();
      a1 = *(v38 + 8);
      v39 = sub_232B2080C();
      sub_232BFF570(v39, v40);
      if (a1)
      {
        v6 = 0.0;
      }

      v41 = OBJC_IVAR____TtC21DocumentUnderstanding34DUUserInterfaceUnderstandingResult_topicConfidence;
      v42 = sub_232B13F5C();
      *(v22 + v41) = v6;
      MEMORY[0x238391D50](v42);
      sub_232BFFBC4();
      if (v44)
      {
        sub_232BC1BBC(v43);
        sub_232CEA000();
      }

      sub_232CEA020();
      v14 += v62;
      --v32;
    }

    while (v32);
    v31 = v63;
    sub_232BFFA58();
  }

  v45 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_foundEntities;
  sub_232B13F5C();
  v46 = *(v45 + v30);
  *(v45 + v30) = v31;

  v47 = *(v59 + 24);
  sub_232BF5EEC();
  sub_232B20598(v60);
  if (v52)
  {
    sub_232BFF860();
    sub_232BFF570(a1, v48);
    sub_232B13790(v60, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232BFF570(v61, v45);
  }

  else
  {
    sub_232BA62B0();
    sub_232B13790(v49, v50, v51);
    sub_232BF5EEC();
    sub_232B20598(v5);
    if (v52)
    {
      sub_232CE9330();
      v53 = (v14 + *(v8 + 20));
      *v53 = 0;
      v53[1] = 0;
      sub_232B20598(v5);
      if (!v52)
      {
        sub_232B13790(v5, &qword_27DDC67C8, &unk_232CF5E70);
      }
    }

    else
    {
      sub_232BFF620();
      sub_232BFECF4();
    }

    sub_232B4C530();
    sub_232BFF73C();
    v55 = v54;
    sub_232BFF570(a1, v54);
    sub_232BFF570(v61, v55);
    v56 = OBJC_IVAR____TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse_responseDebugInfo;
    sub_232B13F5C();
    v57 = *&v30[v56];
    *&v30[v56] = &qword_27DDC67C8;
  }

  return v30;
}

void sub_232BFD448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_232B35110();
  a19 = v21;
  a20 = v22;
  v287 = v20;
  v24 = v23;
  v25 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  v26 = sub_232B2D120(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v29);
  sub_232B55558();
  sub_232BFF800(v30);
  v283 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  v31 = sub_232B13F24(v283);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v34);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v35);
  sub_232B55558();
  sub_232B5EFC8(v36);
  v37 = sub_232B124A8(&qword_27DDC7788, &qword_232CFA9A0);
  v38 = sub_232B2D120(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v41);
  sub_232B55558();
  v43 = sub_232BFF800(v42);
  v281 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(v43);
  v44 = sub_232B13F24(v281);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v47);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v48);
  sub_232B55558();
  sub_232B5EFC8(v49);
  v50 = sub_232B124A8(&qword_27DDC7008, &unk_232CFBAB0);
  v51 = sub_232B2D120(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v54);
  sub_232B55558();
  sub_232BFF800(v55);
  v279 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  v56 = sub_232B13F24(v279);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v59);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v60);
  sub_232B55558();
  sub_232B5EFC8(v61);
  v62 = sub_232B124A8(&qword_27DDC7A30, &unk_232CFE950);
  v63 = sub_232B2D120(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v66);
  sub_232B55558();
  sub_232BFF800(v67);
  v278 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
  v68 = sub_232B13F24(v278);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v71);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v72);
  sub_232B55558();
  sub_232B5EFC8(v73);
  v74 = sub_232B124A8(&qword_27DDC7828, &unk_232CFBAC0);
  v75 = sub_232B2D120(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v78);
  sub_232B55558();
  sub_232BFF800(v79);
  v286 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  v80 = sub_232B13F24(v286);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v83);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v84);
  sub_232B55558();
  sub_232B5EFC8(v85);
  v86 = sub_232B124A8(&qword_27DDC7A38, &unk_232CFBAD0);
  v87 = sub_232B2D120(v86);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v90);
  sub_232B55558();
  sub_232BFF800(v91);
  v285 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
  v92 = sub_232B13F24(v285);
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v92);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v95);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v96);
  sub_232B55558();
  sub_232B5EFC8(v97);
  v98 = sub_232B124A8(&qword_27DDC7A40, &unk_232CFE960);
  v99 = sub_232B2D120(v98);
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v102);
  v104 = v273 - v103;
  v284 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
  v105 = sub_232B13F24(v284);
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v105);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v108);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v109);
  sub_232B55558();
  sub_232B5EFC8(v110);
  v111 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v112 = sub_232B2D120(v111);
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v112);
  sub_232B20714();
  sub_232B55424();
  MEMORY[0x28223BE20](v115);
  v117 = v273 - v116;
  v118 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v119 = sub_232B13F24(v118);
  v121 = *(v120 + 64);
  MEMORY[0x28223BE20](v119);
  sub_232B20714();
  sub_232B55424();
  v123 = MEMORY[0x28223BE20](v122);
  v125 = (v273 - v124);
  MEMORY[0x28223BE20](v123);
  sub_232CE9330();
  v126 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0) + 20);
  if (qword_27DDC6418 != -1)
  {
    swift_once();
  }

  v127 = qword_27DDC8248;
  v128 = v24;
  v129 = v126;
  *(v24 + v126) = qword_27DDC8248;
  v130 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_responseDebugInfo;
  v131 = v287;
  sub_232B13F74();
  v132 = *(v131 + v130);
  if (!v132)
  {

    sub_232B55484();
    sub_232B12504(v140, v141, v142, v118);
    goto LABEL_8;
  }

  v127 = v132;
  sub_232B55A40(v125);

  v133 = swift_dynamicCast();
  sub_232BFFBA0(v117, v133 ^ 1u);
  v134 = sub_232BFFA98();
  sub_232B351B0(v134, v135, v118);
  if (v136)
  {
LABEL_8:
    sub_232B13790(v117, &qword_27DDC67C8, &unk_232CF5E70);
    v137 = v128;
    v143 = v283;
    v138 = v129;
    v144 = v279;
    goto LABEL_11;
  }

  sub_232BFF620();
  sub_232BFECF4();
  sub_232BFFA00(&v277);
  sub_232BFF5C8();
  v137 = v128;
  v138 = v129;
  v139 = *(v128 + v129);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BFF9A0();
    v127 = *(v128 + v129);
  }

  else
  {
    v145 = *(v128 + v129);
    v146 = type metadata accessor for DocumentUnderstanding_ClientInterface_Response._StorageClass(0);
    sub_232BF73F4(v146);

    v127 = sub_232C5567C();
    sub_232BFF9A0();
    v138 = v129;

    *(v128 + v129) = v127;
  }

  v143 = v283;
  v144 = v279;
  sub_232BFF620();
  sub_232BFFA00(&v278);
  sub_232BFECF4();
  v147 = sub_232BFF7B4();
  sub_232B12504(v147, v148, v149, v118);
  sub_232B207D4();
  sub_232BF6164();
  swift_endAccess();
LABEL_11:
  v150 = v278;
  v151 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics;
  v152 = v287;
  sub_232B13F74();
  v153 = *(v152 + v151);
  if (!v153)
  {
    sub_232B55484();
    sub_232B12504(v159, v160, v161, v284);
    goto LABEL_16;
  }

  v127 = v153;
  v154 = v274;
  sub_232C10114(v274);

  v155 = sub_232BFFAA4(&a9);
  sub_232BFFBA0(v104, v155 ^ 1u);
  sub_232B351B0(v104, 1, v154);
  if (v136)
  {
LABEL_16:
    sub_232B13790(v104, &qword_27DDC7A40, &unk_232CFE960);
    v162 = v281;
    goto LABEL_19;
  }

  sub_232BFF694();
  v156 = v273[2];
  sub_232BFECF4();
  sub_232BFF784();
  sub_232BFF5C8();
  v157 = *(v137 + v138);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BFF570(v156, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
    v158 = *(v137 + v138);
  }

  else
  {
    v163 = sub_232BFFB54();
    sub_232BF73F4(v163);
    sub_232BFFB0C();
    sub_232C5567C();
    sub_232BFF754();
    sub_232BFF570(v156, v164);

    *(v137 + v138) = v154;
  }

  v162 = v281;
  sub_232BFF694();
  sub_232BFFA00(&v279);
  sub_232BFECF4();
  v165 = sub_232BFF7B4();
  sub_232B12504(v165, v166, v167, v284);
  v127 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__topics;
  sub_232B207D4();
  sub_232BFFB3C();
  swift_endAccess();
LABEL_19:
  v168 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_structuredEntities;
  sub_232B13F74();
  v169 = *(v152 + v168);
  if (!v169)
  {
    sub_232BFFC20(&v296);
    sub_232B55484();
    sub_232B12504(v174, v175, v176, v285);
    goto LABEL_24;
  }

  v127 = v169;
  v170 = v275;
  sub_232C09358(v275);

  sub_232BFFC20(&v296);
  v171 = sub_232BFFAA4(&a10);
  sub_232BFFBA0(v127, v171 ^ 1u);
  sub_232B351B0(v127, 1, v170);
  if (v136)
  {
LABEL_24:
    sub_232B13790(v127, &qword_27DDC7A38, &unk_232CFBAD0);
    goto LABEL_27;
  }

  sub_232BFF79C();
  sub_232BFFB6C(&v280);
  sub_232BFF67C();
  sub_232BFF5C8();
  v172 = *(v137 + v138);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BFF570(v170, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
    v173 = *(v137 + v138);
  }

  else
  {
    v177 = sub_232BFFB54();
    sub_232BF73F4(v177);
    sub_232BFFB0C();
    sub_232C5567C();
    sub_232BFF76C();
    sub_232BFF570(v178, v179);

    *(v137 + v138) = v170;
  }

  sub_232BFF79C();
  sub_232BFFA00(&v281);
  sub_232BFECF4();
  v180 = sub_232BFF7B4();
  sub_232B12504(v180, v181, v182, v285);
  v127 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__structuredEntities;
  sub_232B207D4();
  sub_232BFFB3C();
  swift_endAccess();
LABEL_27:
  v183 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_languageTags;
  sub_232B13F74();
  v184 = *(v152 + v183);
  if (!v184)
  {
    sub_232BFFC20(&v297);
    sub_232B55484();
    sub_232B12504(v190, v191, v192, v286);
    goto LABEL_32;
  }

  v127 = v184;
  v185 = v276;
  sub_232BD94F4(v276);

  sub_232BFFC20(&v297);
  v186 = sub_232BFFAA4(&a11);
  sub_232BFFBA0(v127, v186 ^ 1u);
  sub_232B351B0(v127, 1, v185);
  if (v136)
  {
LABEL_32:
    sub_232B13790(v127, &qword_27DDC7828, &unk_232CFBAC0);
    goto LABEL_35;
  }

  sub_232BFF724();
  sub_232BFFB6C(&v282);
  sub_232BFF974();
  sub_232BFF5C8();
  v187 = *(v137 + v138);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BFF92C();
    sub_232BFF570(v185, v188);
    v189 = *(v137 + v138);
  }

  else
  {
    v193 = sub_232BFFB54();
    sub_232BF73F4(v193);
    sub_232BFFB0C();
    sub_232C5567C();
    sub_232BFFAE4();
    sub_232BFF92C();
    sub_232BFF570(v195, v194);

    *(v137 + v138) = v185;
  }

  sub_232BFF724();
  sub_232BFFA00(&v283);
  sub_232BFECF4();
  v196 = sub_232BFF7B4();
  sub_232B12504(v196, v197, v198, v286);
  sub_232B207D4();
  sub_232BFFB3C();
  swift_endAccess();
LABEL_35:
  v199 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_userInterfaceUnderstandingResults;
  sub_232B13F74();
  v200 = *(v152 + v199);
  if (!v200)
  {
    v208 = sub_232BFF810(v298);
    sub_232B12504(v208, v209, v210, v150);
    goto LABEL_40;
  }

  v201 = v200;
  sub_232BFFBB8(&v292);
  sub_232C168FC(v202);

  sub_232BFF9F0(v298);
  swift_dynamicCast();
  v203 = sub_232BFFA0C();
  sub_232B12504(v203, v204, v205, v150);
  sub_232B351B0(v199, 1, v150);
  if (v136)
  {
LABEL_40:
    sub_232B13790(v199, &qword_27DDC7A30, &unk_232CFE950);
    goto LABEL_43;
  }

  sub_232BFF70C();
  sub_232BFFB6C(&v284);
  sub_232BFF6F4();
  sub_232BFF5C8();
  v206 = *(v137 + v138);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BFF570(v199, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
    v207 = *(v137 + v138);
  }

  else
  {
    v211 = sub_232BFFB54();
    sub_232BF73F4(v211);
    sub_232BFFB0C();
    sub_232C5567C();
    sub_232BFF73C();
    sub_232BFF570(v212, v213);

    *(v137 + v138) = v199;
  }

  sub_232BFF70C();
  sub_232BFFA00(&v285);
  sub_232BFECF4();
  v214 = sub_232BFF7B4();
  sub_232B12504(v214, v215, v216, v150);
  sub_232B207D4();
  sub_232BFFB3C();
  swift_endAccess();
LABEL_43:
  v217 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories;
  sub_232B13F74();
  v218 = *(v152 + v217);
  if (!v218)
  {
    v227 = sub_232BFF810(v299);
    sub_232B12504(v227, v228, v229, v144);
    goto LABEL_48;
  }

  v219 = v218;
  sub_232BFFBB8(&v293);
  sub_232B4C714(v220);

  sub_232BFF9F0(v299);
  swift_dynamicCast();
  v221 = sub_232BFFA0C();
  sub_232B12504(v221, v222, v223, v144);
  sub_232BFF7E0(v217);
  if (v136)
  {
LABEL_48:
    sub_232B13790(v217, &qword_27DDC7008, &unk_232CFBAB0);
    goto LABEL_51;
  }

  sub_232BFF6DC();
  sub_232BFFB6C(&v286);
  sub_232BFF974();
  sub_232BFF5C8();
  v224 = *(v137 + v138);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BFF914();
    sub_232BFF570(v217, v225);
    v226 = *(v137 + v138);
  }

  else
  {
    v230 = sub_232BFFB54();
    sub_232BF73F4(v230);
    sub_232BFFB0C();
    sub_232C5567C();
    sub_232BFFAE4();
    sub_232BFF914();
    sub_232BFF570(v232, v231);

    *(v137 + v138) = v217;
  }

  sub_232BFF6DC();
  sub_232BFFA00(&v287);
  sub_232BFECF4();
  v233 = sub_232BFF7B4();
  sub_232B12504(v233, v234, v235, v144);
  sub_232B207D4();
  sub_232BFFB3C();
  swift_endAccess();
LABEL_51:
  v236 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult;
  sub_232B13F74();
  v237 = *(v152 + v236);
  if (!v237)
  {
    v245 = sub_232BFF810(v300);
    sub_232B12504(v245, v246, v247, v162);
    goto LABEL_56;
  }

  v238 = v237;
  sub_232BFFBB8(&v294);
  sub_232BC6784();

  sub_232BFF9F0(v300);
  swift_dynamicCast();
  v239 = sub_232BFFA0C();
  sub_232B12504(v239, v240, v241, v162);
  sub_232B351B0(v236, 1, v162);
  if (v136)
  {
LABEL_56:
    sub_232B13790(v236, &qword_27DDC7788, &qword_232CFA9A0);
    goto LABEL_59;
  }

  sub_232BFF6C4();
  sub_232BFFB6C(&v288);
  sub_232BFF974();
  sub_232BFF5C8();
  v242 = *(v137 + v138);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BFF8FC();
    sub_232BFF570(v236, v243);
    v244 = *(v137 + v138);
  }

  else
  {
    v248 = sub_232BFFB54();
    sub_232BF73F4(v248);
    sub_232BFFB0C();
    sub_232C5567C();
    sub_232BFFAE4();
    sub_232BFF8FC();
    sub_232BFF570(v250, v249);

    *(v137 + v138) = v236;
  }

  sub_232BFF6C4();
  sub_232BFFA00(&v289);
  sub_232BFECF4();
  v251 = sub_232BFF7B4();
  sub_232B12504(v251, v252, v253, v162);
  sub_232B207D4();
  sub_232BFFB3C();
  swift_endAccess();
LABEL_59:
  v254 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventClassificationResult;
  sub_232B13F74();
  v255 = *(v152 + v254);
  if (!v255)
  {
    v264 = sub_232BFF810(v301);
    sub_232B12504(v264, v265, v266, v143);
    goto LABEL_64;
  }

  v256 = v255;
  sub_232BFFBB8(&v295);
  sub_232BAF374(v257);

  sub_232BFF9F0(v301);
  swift_dynamicCast();
  v258 = sub_232BFFA0C();
  sub_232B12504(v258, v259, v260, v143);
  sub_232B38C90(v254);
  if (v136)
  {
LABEL_64:
    sub_232B13790(v254, &qword_27DDC7588, &qword_232CFA250);
    goto LABEL_67;
  }

  sub_232BFF6AC();
  sub_232BFFB6C(&v290);
  sub_232BFF974();
  sub_232BFF5C8();
  v261 = *(v137 + v138);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232BFF8CC();
    sub_232BFF570(v254, v262);
    v263 = *(v137 + v138);
  }

  else
  {
    v267 = sub_232BFFB54();
    sub_232BF73F4(v267);
    sub_232BFFB0C();
    sub_232C5567C();
    sub_232BFFAE4();
    sub_232BFF8CC();
    sub_232BFF570(v269, v268);

    *(v137 + v138) = v254;
  }

  sub_232BFF6AC();
  sub_232BFFA00(&v291);
  sub_232BFECF4();
  v270 = sub_232BFF7B4();
  sub_232B12504(v270, v271, v272, v143);
  sub_232B207D4();
  sub_232BFFB3C();
  swift_endAccess();
LABEL_67:
  sub_232B20A00();
}

void sub_232BFE850()
{
  type metadata accessor for DUResponse();
  sub_232BFF884();
  sub_232BFF528(v0, v1, v2);
  v3 = sub_232CE98A0();
  if (v3)
  {
    v4 = v3;
    v5 = sub_232CE9D20();
    sub_232BF7340();
    [v6 v7];
  }
}

uint64_t DUResponse.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232BA4DEC(0, &qword_27DDC6E90, 0x277CBEA90);
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232BFF884();
  sub_232BFF528(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B3CB40();
    return 0;
  }

  swift_getObjectType();
  sub_232B3CB40();
  return v5;
}

id DUResponse.init()()
{
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_structuredEntities] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_languageTags] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_userInterfaceUnderstandingResults] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventResult] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventClassificationResult] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_poem] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_posTags] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_responseDebugInfo] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DUResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Class sub_232BFECCC@<X0>(uint64_t a1@<X0>, Class *a2@<X8>)
{
  result = sub_232BF979C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232BFECF4()
{
  sub_232B2D12C();
  v2 = v1(0);
  sub_232B13F24(v2);
  v4 = *(v3 + 32);
  v5 = sub_232B2080C();
  v6(v5);
  return v0;
}

uint64_t sub_232BFF528(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232BFF570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_232B13F24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_232BFF5C8()
{
  sub_232B2D12C();
  v2 = v1(0);
  sub_232B13F24(v2);
  v4 = *(v3 + 16);
  v5 = sub_232B2080C();
  v6(v5);
  return v0;
}

uint64_t sub_232BFF980()
{

  return sub_232CEA000();
}

uint64_t sub_232BFF9A0()
{

  return sub_232BFF570(v0, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
}

uint64_t sub_232BFF9C8()
{

  return sub_232BFF570(v0, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
}

void sub_232BFFA1C()
{
  v2 = (v0 + *(v1 + 20));
  *v2 = 0;
  v2[1] = 0;
}

void sub_232BFFA2C(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void sub_232BFFA58()
{
  v2 = *(v0 - 256);
  v1 = *(v0 - 248);
  v3 = *(v0 - 264);
  v4 = *(v0 - 272);
  v5 = *(v0 - 280);
}

void sub_232BFFA78()
{
  *(v5 - 280) = v4;
  *(v5 - 272) = v3;
  *(v5 - 264) = v2;
  *(v5 - 256) = v1;
  *(v5 - 248) = v0;
}

uint64_t sub_232BFFAA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return swift_dynamicCast();
}

uint64_t sub_232BFFAC4()
{

  return sub_232B13790(v2, v0, v1);
}

uint64_t sub_232BFFAF0()
{

  return sub_232BFF5C8();
}

uint64_t sub_232BFFB0C()
{
}

uint64_t sub_232BFFB24(uint64_t a1)
{

  return sub_232B13790(a1, v1, v2);
}

uint64_t sub_232BFFB3C()
{

  return sub_232BF6164();
}

uint64_t sub_232BFFB54()
{
  v3 = *(v1 + v0);

  return type metadata accessor for DocumentUnderstanding_ClientInterface_Response._StorageClass(0);
}

uint64_t sub_232BFFB6C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_232BFECF4();
}

uint64_t sub_232BFFB84()
{

  return sub_232BF5EEC();
}

uint64_t sub_232BFFBA0(uint64_t a1, uint64_t a2)
{

  return sub_232B12504(a1, a2, 1, v2);
}

void sub_232BFFBEC()
{
  v2 = *(*(v1 - 160) + 8);
  *(v1 - 128) = v0;
  v3 = *(v2 + 16);
}

uint64_t sub_232BFFC2C()
{

  return type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
}

uint64_t sub_232BFFC4C()
{

  return type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
}

uint64_t sub_232BFFC6C()
{

  return type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
}

void sub_232BFFC8C()
{
  v4 = *(v2 + v1);
  *(v2 + v1) = v0;
}

id sub_232BFFD50(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_232CE9D20();
  sub_232B26CE8();

  return a1;
}

void sub_232BFFDC0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_232CE9D50();
  v7 = a1;
  v6 = sub_232B41C8C();
  a4(v6);
}

uint64_t sub_232BFFE40(uint64_t *a1, uint64_t *a2)
{
  sub_232B3CB20(a1, a2);
  v3 = sub_232BAE188();
  return v2(v3);
}

uint64_t sub_232BFFF18()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels;
  sub_232B26BFC();
  v2 = *(v0 + v1);
}

uint64_t sub_232BFFFBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels;
  sub_232B26C50();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_232C00004(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232BFFFBC(v4);
}

id sub_232C00128(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v4)
  {
    sub_232CE9D20();
    sub_232B26CE8();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

void sub_232C001A4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    sub_232CE9D50();
  }

  v7 = a1;
  v6 = sub_232B41C8C();
  a4(v6);
}

uint64_t sub_232C00234(uint64_t *a1, uint64_t *a2)
{
  sub_232B3CB20(a1, a2);
  v3 = sub_232BAE188();
  return v2(v3);
}

uint64_t sub_232C003F8()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents;
  sub_232B26BFC();
  v2 = *(v0 + v1);
}

uint64_t sub_232C004F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents;
  sub_232B26C50();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_232C0053C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232C004F4(v4);
}

void *sub_232C005E8()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232C00680(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent;
  sub_232B26C50();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232C006C8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_232C00680(v2);
}

uint64_t sub_232C00768(void *a1)
{
  v2 = (v1 + *a1);
  sub_232B13F74();
  v4 = *v2;
  v3 = v2[1];

  return sub_232B5EFF4();
}

void *sub_232C00854()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232C008EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo;
  sub_232B26C50();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232C00934(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_232C008EC(v2);
}

void *sub_232C009E4()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo;
  sub_232B26BFC();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232C00A7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo;
  sub_232B26C50();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232C00AC4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_232C00A7C(v2);
}

uint64_t DUStructuredEntity.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v207 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v7 = sub_232B13F24(v207);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v201 = v11 - v10;
  v12 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v13 = sub_232B2D120(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_232B20714();
  v200 = v16;
  sub_232B20600();
  MEMORY[0x28223BE20](v17);
  sub_232B55558();
  v206 = v18;
  v19 = sub_232B554F0();
  v205 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(v19);
  v20 = sub_232B13F24(v205);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_232B20704();
  v199 = (v24 - v23);
  v25 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  v26 = sub_232B2D120(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_232B20714();
  v198 = v29;
  sub_232B20600();
  MEMORY[0x28223BE20](v30);
  sub_232B55558();
  v204 = v31;
  v32 = sub_232B554F0();
  v203 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(v32);
  v33 = sub_232B13F24(v203);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_232B20704();
  v197 = (v37 - v36);
  v38 = sub_232B124A8(&qword_27DDC7AC0, &qword_232CFBB80);
  v39 = sub_232B2D120(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_232B20714();
  v196 = v42;
  sub_232B20600();
  MEMORY[0x28223BE20](v43);
  sub_232B55558();
  v202 = v44;
  v45 = sub_232B554F0();
  v216 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(v45);
  sub_232B350D8();
  v214 = v46;
  v48 = *(v47 + 64);
  v50 = MEMORY[0x28223BE20](v49);
  v52 = &v192 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  sub_232B55558();
  v215 = v53;
  v54 = sub_232B124A8(&qword_27DDC7AC8, &unk_232CFBB88);
  sub_232B2D120(v54);
  v56 = *(v55 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v57);
  sub_232BF7454();
  sub_232B350D8();
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  sub_232B20704();
  v65 = v64 - v63;
  v66 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0);
  v67 = sub_232B13F24(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  sub_232B20704();
  v72 = v71 - v70;
  v73 = [objc_allocWithZone(v4) init];
  (*(v59 + 16))(v65, a1, a2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v59 + 8))(a1, a2);

    v81 = sub_232C07090();
    sub_232B12504(v81, v82, v83, v66);
    sub_232B13790(v3, &qword_27DDC7AC8, &unk_232CFBB88);
    return 0;
  }

  v211 = v59;
  v213 = v73;
  v194 = a1;
  v195 = a2;
  sub_232B351FC();
  sub_232B12504(v74, v75, v76, v66);
  sub_232C05E00();
  v77 = *(v66 + 20);
  v193 = v72;
  v78 = *(v72 + v77);
  sub_232B13F74();
  if (v78[3])
  {
    v79 = v78[2];
    v80 = v78[3];
  }

  else
  {
    v79 = 0;
    v80 = 0xE000000000000000;
  }

  v85 = &v213[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_title];
  sub_232B13F5C();
  v86 = *(v85 + 1);
  *v85 = v79;
  *(v85 + 1) = v80;

  sub_232B13F74();
  if (v78[5])
  {
    v87 = v78[4];
    v88 = v78[5];
  }

  else
  {
    v87 = 0;
    v88 = 0xE000000000000000;
  }

  v89 = &v213[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_type];
  sub_232B13F5C();
  v90 = *(v89 + 1);
  *v89 = v87;
  *(v89 + 1) = v88;

  sub_232B13F74();
  v212 = v78;
  v91 = v78[6];
  v92 = MEMORY[0x277D84F90];
  v218 = MEMORY[0x277D84F90];
  v93 = *(v91 + 16);
  if (v93)
  {
    v94 = v91 + ((*(v214 + 80) + 32) & ~*(v214 + 80));
    v214 = *(v214 + 72);
    v210 = v91;

    do
    {
      v95 = v215;
      sub_232C05EC4();
      sub_232C05EC4();
      v96 = [objc_allocWithZone(type metadata accessor for DUStructuredExtractionLabel()) init];
      sub_232C07030();
      sub_232C05E6C(v95, v97);
      v98 = &v52[*(v216 + 20)];
      if (*(v98 + 1))
      {
        v99 = *v98;
        v100 = *(v98 + 1);
      }

      else
      {
        v99 = 0;
        v100 = 0xE000000000000000;
      }

      v101 = &v96[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName];
      sub_232B13F5C();
      v102 = *(v101 + 1);
      *v101 = v99;
      *(v101 + 1) = v100;

      v103 = &v52[*(v216 + 24)];
      v104 = *v103;
      v105 = v103[8];
      sub_232C07030();
      sub_232C05E6C(v52, v106);
      if (v105)
      {
        v104 = 0.0;
      }

      v107 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
      v108 = sub_232B13F5C();
      *&v96[v107] = v104;
      MEMORY[0x238391D50](v108);
      if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_232CEA000();
      }

      sub_232CEA020();
      v94 += v214;
      --v93;
    }

    while (v93);
    v92 = v218;
  }

  v109 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels;
  v84 = v213;
  sub_232B13F5C();
  v110 = *&v84[v109];
  *&v84[v109] = v92;

  v111 = v212;
  sub_232B13F74();
  v113 = v111[7];
  v112 = v111[8];
  sub_232B13F5C();
  sub_232C071F4();

  sub_232B13F74();
  v115 = v111[9];
  v114 = v111[10];
  sub_232B13F5C();
  sub_232C071F4();

  sub_232B13F74();
  v117 = v111[11];
  v116 = v111[12];
  sub_232B13F5C();
  sub_232C071F4();

  sub_232B13F74();
  v118 = v211;
  if (!*(v111[13] + 16))
  {
LABEL_38:
    sub_232B13F74();
    v157 = v202;
    sub_232BF7340();
    sub_232BF5EEC();
    v158 = v203;
    v159 = sub_232B12480(v157, 1, v203);
    sub_232BFFB24(v157);
    v160 = 0;
    if (v159 != 1)
    {
      v161 = v196;
      sub_232BF5EEC();
      sub_232B351B0(v161, 1, v158);
      if (v185)
      {
        v162 = v197;
        *v197 = 0;
        v163 = &v162[v158[5]];
        sub_232CE9330();
        *&v162[v158[6]] = xmmword_232CFBB70;
        sub_232B35214(v158[7]);
        *&v162[v158[8]] = v164;
        sub_232B35214(v158[9]);
        sub_232B351B0(v161, 1, v158);
        if (!v185)
        {
          sub_232B13790(v161, &qword_27DDC7AC0, &qword_232CFBB80);
        }
      }

      else
      {
        sub_232C07000();
        sub_232C05E00();
      }

      sub_232C01E88();
      v160 = v165;
    }

    v166 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent;
    sub_232B13F5C();
    v167 = *&v84[v166];
    *&v84[v166] = v160;

    v168 = (v111 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
    sub_232B13F74();
    v170 = *v168;
    v169 = v168[1];
    sub_232B13F5C();
    sub_232C071F4();

    sub_232B13F74();
    v171 = v204;
    sub_232BF7340();
    sub_232BF5EEC();
    v172 = v205;
    v173 = sub_232B12480(v171, 1, v205);
    sub_232BFFB24(v171);
    v174 = 0;
    if (v173 != 1)
    {
      v175 = v198;
      sub_232BF5EEC();
      sub_232B351B0(v175, 1, v172);
      if (v185)
      {
        v177 = v199;
        *v199 = xmmword_232CF76F0;
        *(v177 + 16) = xmmword_232CF76F0;
        *(v177 + 32) = 0;
        v176 = v177 + v172[7];
        sub_232CE9330();
        sub_232C070A0(v172[8]);
        sub_232C070A0(v172[9]);
        sub_232C070A0(v172[10]);
        sub_232C070A0(v172[11]);
        sub_232C070A0(v172[12]);
        sub_232C070A0(v172[13]);
        sub_232B351B0(v175, 1, v172);
        if (!v185)
        {
          sub_232B13790(v175, &qword_27DDC70F8, &qword_232CF8260);
        }
      }

      else
      {
        sub_232C07078();
        v177 = v199;
        sub_232C05E00();
      }

      v174 = sub_232B56548(v177);
    }

    v178 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo;
    sub_232B13F5C();
    v179 = *&v84[v178];
    *&v84[v178] = v174;

    sub_232B13F74();
    v180 = v206;
    sub_232BF5EEC();
    v181 = v207;
    sub_232B351B0(v180, 1, v207);
    if (v185)
    {
      (*(v118 + 8))(v194, v195);
      sub_232B13790(v180, &qword_27DDC67C8, &unk_232CF5E70);
      v182 = 0;
      v183 = v193;
    }

    else
    {
      sub_232BFFB24(v180);
      v184 = v200;
      sub_232BF7340();
      sub_232BF5EEC();
      sub_232B351B0(v184, 1, v181);
      if (v185)
      {
        sub_232CE9330();
        sub_232B35214(*(v181 + 20));
        sub_232B351B0(v184, 1, v181);
        v183 = v193;
        if (!v185)
        {
          sub_232B13790(v184, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232C07060();
        sub_232C05E00();
        v183 = v193;
      }

      v182 = sub_232B4C530();
      v186 = *(v118 + 8);
      v187 = sub_232BAE188();
      v188(v187);
    }

    sub_232C05E6C(v183, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
    v189 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo;
    sub_232B13F5C();
    v190 = *&v84[v189];
    *&v84[v189] = v182;

    return v84;
  }

  type metadata accessor for NSTextCheckingKey();
  v120 = v119;
  sub_232C06FB0(&qword_27DDC65C8, 255, type metadata accessor for NSTextCheckingKey);
  v192 = v120;
  v121 = sub_232CE9C60();
  v122 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents;
  sub_232B13F5C();
  v123 = *&v84[v122];
  *&v84[v122] = v121;

  v124 = v111[13];
  v126 = *(v124 + 64);
  v125 = v124 + 64;
  v127 = 1 << *(v111[13] + 32);
  sub_232C0726C();
  v130 = v129 & v128;
  v132 = (v131 + 63) >> 6;
  v214 = v133;

  v134 = 0;
  v209 = v125;
  v210 = v122;
  v208 = v132;
  if (v130)
  {
    goto LABEL_26;
  }

  do
  {
LABEL_22:
    v135 = v134 + 1;
    if (__OFADD__(v134, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v135 >= v132)
    {

      goto LABEL_38;
    }

    v130 = *(v125 + 8 * v135);
    ++v134;
  }

  while (!v130);
  v134 = v135;
LABEL_26:
  while (1)
  {
    v136 = (v134 << 10) | (16 * __clz(__rbit64(v130)));
    v137 = (*(v214 + 48) + v136);
    v138 = *v137;
    v139 = v137[1];
    v140 = (*(v214 + 56) + v136);
    v141 = v140[1];
    v216 = *v140;

    v215 = v139;
    v142 = sub_232CE9D20();
    sub_232B207D4();
    if (!*&v84[v122])
    {
      break;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v217 = *&v84[v122];
    v143 = v217;
    *&v84[v122] = 0x8000000000000000;
    v144 = sub_232B20540(v142);
    if (__OFADD__(v143[2], (v145 & 1) == 0))
    {
      goto LABEL_61;
    }

    v146 = v144;
    v147 = v145;
    sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
    if (sub_232CEA5C0())
    {
      v148 = sub_232B20540(v142);
      if ((v147 & 1) != (v149 & 1))
      {
        goto LABEL_64;
      }

      v146 = v148;
    }

    v150 = v217;
    if (v147)
    {
      v151 = (v217[7] + 16 * v146);
      v152 = v151[1];
      *v151 = v216;
      v151[1] = v141;
    }

    else
    {
      v217[(v146 >> 6) + 8] |= 1 << v146;
      *(v150[6] + 8 * v146) = v142;
      v153 = (v150[7] + 16 * v146);
      *v153 = v216;
      v153[1] = v141;
      v154 = v150[2];
      v155 = __OFADD__(v154, 1);
      v156 = v154 + 1;
      if (v155)
      {
        goto LABEL_62;
      }

      v150[2] = v156;
    }

    v130 &= v130 - 1;
    v84 = v213;
    v122 = v210;
    *&v213[v210] = v150;
    swift_endAccess();

    v118 = v211;
    v111 = v212;
    v132 = v208;
    v125 = v209;
    if (!v130)
    {
      goto LABEL_22;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

char *sub_232C01A1C(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for DUStructuredExtractionLabel()) init];
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  v4 = (a1 + *(v3 + 20));
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName];
  sub_232B13F5C();
  v8 = *(v7 + 1);
  *v7 = v5;
  *(v7 + 1) = v6;

  v9 = a1 + *(v3 + 24);
  v10 = *v9;
  v11 = *(v9 + 8);
  sub_232C07030();
  sub_232C05E6C(a1, v12);
  if (v11)
  {
    v10 = 0.0;
  }

  v13 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
  sub_232B13F5C();
  *&v2[v13] = v10;
  return v2;
}

char *sub_232C01B20()
{
  v1 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = [objc_allocWithZone(v0) init];
  sub_232C05E00();
  v6 = &v4[*(v1 + 20)];
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = &v5[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName];
  swift_beginAccess();
  v10 = *(v9 + 1);
  *v9 = v7;
  *(v9 + 1) = v8;

  v11 = &v4[*(v1 + 24)];
  v12 = *v11;
  v13 = *(v11 + 8);
  sub_232C05E6C(v4, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel);
  if (v13)
  {
    v12 = 0.0;
  }

  v14 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
  swift_beginAccess();
  *&v5[v14] = v12;
  return v5;
}

char *DUStructuredExtractionLabel.__allocating_init<A>(proto:)()
{
  v2 = sub_232B124A8(&qword_27DDC7AE0, &unk_232CFBB98);
  sub_232B2D120(v2);
  v4 = *(v3 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v5);
  v7 = &v30[-v6];
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  v9 = sub_232B13F24(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_232B20704();
  sub_232C071E8();
  v12 = [objc_allocWithZone(v0) init];
  if (swift_dynamicCast())
  {
    sub_232B351FC();
    sub_232B12504(v13, v14, v15, v8);
    sub_232C0711C();
    sub_232BAE188();
    sub_232C05E00();
    v16 = (v1 + *(v8 + 20));
    if (v16[1])
    {
      v17 = *v16;
      v18 = v16[1];
    }

    else
    {
      v17 = 0;
      v18 = 0xE000000000000000;
    }

    v22 = &v12[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName];
    sub_232B13F5C();
    v23 = *(v22 + 1);
    *v22 = v17;
    *(v22 + 1) = v18;

    v24 = v1 + *(v8 + 24);
    v25 = *v24;
    v26 = *(v24 + 8);
    sub_232C07030();
    sub_232C05E6C(v1, v27);
    if (v26)
    {
      v25 = 0.0;
    }

    v28 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
    sub_232B13F5C();
    *&v12[v28] = v25;
  }

  else
  {

    sub_232B55484();
    sub_232B12504(v19, v20, v21, v8);
    sub_232B13790(v7, &qword_27DDC7AE0, &unk_232CFBB98);
    return 0;
  }

  return v12;
}

void sub_232C01E88()
{
  sub_232B35110();
  v1 = v0;
  v2 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20714();
  sub_232B20600();
  MEMORY[0x28223BE20](v6);
  sub_232B55558();
  v7 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v8 = sub_232B2D120(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232B20714();
  sub_232B20600();
  MEMORY[0x28223BE20](v11);
  sub_232B20628();
  sub_232B20600();
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  v14 = sub_232B13F24(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_232B20704();
  v19 = (v18 - v17);
  v20 = [objc_allocWithZone(type metadata accessor for DUCalendarEvent()) init];
  sub_232C07164();
  v62 = v1;
  sub_232C05EC4();
  LOBYTE(v1) = *v19;
  v21 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay;
  sub_232B13F5C();
  v20[v21] = v1;
  v22 = sub_232CE8940();
  sub_232BF73F4(v22);
  sub_232CE8930();
  v61 = v13;
  v23 = &v19[*(v13 + 24)];
  v24 = *v23;
  v25 = v23[1];
  if (v25 >> 60 == 15)
  {
    v26 = 0;
  }

  else
  {
    v26 = *v23;
  }

  if (v25 >> 60 == 15)
  {
    v27 = 0xC000000000000000;
  }

  else
  {
    v27 = v23[1];
  }

  v28 = sub_232CE8AE0();
  sub_232C05E58(v24, v25);
  sub_232C07048();
  sub_232C06FB0(v29, 255, v30);
  sub_232CE8920();
  sub_232B41BEC(v26, v27);

  sub_232B351FC();
  sub_232B12504(v31, v32, v33, v28);
  sub_232C070D0();
  sub_232BF6164();
  swift_endAccess();
  v34 = &v19[v61[7]];
  if (v34[1])
  {
    v35 = *v34;
    v36 = v34[1];

    sub_232CE8EA0();
  }

  else
  {
    sub_232CE8F00();
    sub_232B55484();
    sub_232B12504(v37, v38, v39, v40);
  }

  sub_232C070D0();
  sub_232BF6164();
  swift_endAccess();
  v41 = *(v22 + 48);
  v42 = *(v22 + 52);
  swift_allocObject();
  sub_232CE8930();
  v43 = sub_232C07294(&v19[v61[8]]);
  if (!v46 & v45)
  {
    v47 = 0xC000000000000000;
  }

  else
  {
    v47 = v44;
  }

  sub_232C05E58(v43, v44);
  sub_232CE8920();
  sub_232B41BEC(v22, v47);

  sub_232B351FC();
  sub_232B12504(v48, v49, v50, v28);
  sub_232C070D0();
  sub_232BF6164();
  swift_endAccess();
  v51 = &v19[v61[9]];
  v52 = v51[1];
  if (v52)
  {
    v53 = *v51;
    v54 = v51[1];

    sub_232B5EFF4();
    sub_232CE8EA0();

    sub_232C07134();
    sub_232C05E6C(v62, v55);
    sub_232C05E6C(v19, v52);
  }

  else
  {
    sub_232C07134();
    sub_232C05E6C(v62, v56);
    sub_232C05E6C(v19, 0);
    sub_232CE8F00();
    v57 = sub_232C07090();
    sub_232B12504(v57, v58, v59, v60);
  }

  sub_232C070D0();
  sub_232BF6164();
  swift_endAccess();
  sub_232B20A00();
}

_BYTE *sub_232C023D4(uint64_t a1)
{
  v3 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v55 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = v50 - v7;
  v8 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v52 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v50[1] = v50 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v50 - v14;
  v16 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_allocWithZone(v1) init];
  v54 = a1;
  sub_232C05EC4();
  LOBYTE(a1) = *v19;
  v21 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay;
  swift_beginAccess();
  v20[v21] = a1;
  v22 = sub_232CE8940();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_232CE8930();
  v53 = v16;
  v25 = &v19[*(v16 + 24)];
  v26 = *v25;
  v27 = v25[1];
  if (v27 >> 60 == 15)
  {
    v28 = 0;
  }

  else
  {
    v28 = *v25;
  }

  if (v27 >> 60 == 15)
  {
    v29 = 0xC000000000000000;
  }

  else
  {
    v29 = v25[1];
  }

  v30 = sub_232CE8AE0();
  sub_232C05E58(v26, v27);
  v50[0] = sub_232C06FB0(&qword_27DDC7AF0, 255, MEMORY[0x277CC8990]);
  sub_232CE8920();
  sub_232B41BEC(v28, v29);

  sub_232B12504(v15, 0, 1, v30);
  swift_beginAccess();
  sub_232BF6164();
  swift_endAccess();
  v31 = v53;
  v32 = &v19[*(v53 + 28)];
  v33 = v51;
  if (v32[1])
  {
    v34 = *v32;
    v35 = v32[1];

    sub_232CE8EA0();
  }

  else
  {
    v36 = sub_232CE8F00();
    sub_232B12504(v33, 1, 1, v36);
  }

  swift_beginAccess();
  sub_232BF6164();
  swift_endAccess();
  v37 = *(v22 + 48);
  v38 = *(v22 + 52);
  swift_allocObject();
  sub_232CE8930();
  v39 = &v19[*(v31 + 32)];
  v40 = v39[1];
  if (v40 >> 60 == 15)
  {
    v41 = 0;
  }

  else
  {
    v41 = *v39;
  }

  if (v40 >> 60 == 15)
  {
    v42 = 0xC000000000000000;
  }

  else
  {
    v42 = v39[1];
  }

  sub_232C05E58(*v39, v40);
  v43 = v52;
  sub_232CE8920();
  sub_232B41BEC(v41, v42);

  sub_232B12504(v43, 0, 1, v30);
  swift_beginAccess();
  sub_232BF6164();
  swift_endAccess();
  v44 = v55;
  v45 = &v19[*(v31 + 36)];
  if (v45[1])
  {
    v46 = *v45;
    v47 = v45[1];

    sub_232CE8EA0();

    sub_232C05E6C(v54, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);
    sub_232C05E6C(v19, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);
  }

  else
  {
    sub_232C05E6C(v54, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);
    sub_232C05E6C(v19, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);
    v48 = sub_232CE8F00();
    sub_232B12504(v44, 1, 1, v48);
  }

  swift_beginAccess();
  sub_232BF6164();
  swift_endAccess();
  return v20;
}

void DUCalendarEvent.__allocating_init<A>(proto:)()
{
  sub_232B35110();
  v3 = v2;
  v5 = v4;
  v6 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v7 = sub_232B2D120(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  sub_232B55558();
  v103 = v13;
  v14 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v15 = sub_232B2D120(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_232B20714();
  v105 = v18;
  sub_232B20600();
  MEMORY[0x28223BE20](v19);
  sub_232B20628();
  v104 = v20;
  sub_232B20600();
  MEMORY[0x28223BE20](v21);
  sub_232B55558();
  v102 = v22;
  v23 = sub_232B124A8(&qword_27DDC7AC0, &qword_232CFBB80);
  sub_232B2D120(v23);
  v25 = *(v24 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v26);
  sub_232BF7454();
  sub_232B350D8();
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  sub_232B20704();
  v34 = v33 - v32;
  v35 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  v36 = sub_232B13F24(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_232B20704();
  v41 = (v40 - v39);
  v42 = [objc_allocWithZone(v0) init];
  (*(v28 + 16))(v34, v5, v3);
  if (swift_dynamicCast())
  {
    v98 = v28;
    v99 = v5;
    v100 = v3;
    v101 = v12;
    sub_232B351FC();
    sub_232B12504(v43, v44, v45, v35);
    sub_232C07000();
    sub_232C05E00();
    v46 = *v41;
    v47 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay;
    sub_232B13F5C();
    v42[v47] = v46;
    v48 = sub_232CE8940();
    sub_232BF73F4(v48);
    sub_232CE8930();
    v49 = v35[6];
    v97 = v41;
    v50 = &v41[v49];
    v51 = *v50;
    v52 = v50[1];
    if (v52 >> 60 == 15)
    {
      v53 = 0;
    }

    else
    {
      v53 = *v50;
    }

    if (v52 >> 60 == 15)
    {
      v54 = 0xC000000000000000;
    }

    else
    {
      v54 = v50[1];
    }

    v55 = sub_232CE8AE0();
    sub_232C05E58(v51, v52);
    sub_232C07048();
    sub_232C06FB0(v56, 255, v57);
    sub_232C07280();
    v96[1] = v58;
    sub_232CE8920();
    sub_232B41BEC(v53, v54);

    sub_232B351FC();
    sub_232B12504(v62, v63, v64, v55);
    sub_232C070B0();
    sub_232BF6164();
    swift_endAccess();
    v65 = v97;
    v66 = &v97[v35[7]];
    v67 = v99;
    if (v66[1])
    {
      v68 = *v66;
      v69 = v66[1];

      sub_232B5EFF4();
      sub_232CE8EA0();
    }

    else
    {
      sub_232CE8F00();
      sub_232B55484();
      sub_232B12504(v70, v71, v72, v73);
    }

    v74 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_startTimezone;
    sub_232C070B0();
    sub_232BF6164();
    swift_endAccess();
    v75 = *(v48 + 48);
    v76 = *(v48 + 52);
    swift_allocObject();
    sub_232CE8930();
    v77 = sub_232C07294((v65 + v35[8]));
    if (!v80 & v79)
    {
      v81 = 0xC000000000000000;
    }

    else
    {
      v81 = v78;
    }

    sub_232C05E58(v77, v78);
    sub_232C07280();
    sub_232CE8920();
    sub_232B41BEC(v74, v81);

    sub_232B351FC();
    sub_232B12504(v82, v83, v84, v55);
    sub_232C070B0();
    sub_232BF6164();
    swift_endAccess();
    v85 = v98;
    v86 = (v65 + v35[9]);
    v87 = v100;
    if (v86[1])
    {
      v88 = *v86;
      v89 = v86[1];

      sub_232B5EFF4();
      sub_232CE8EA0();

      (*(v85 + 8))(v67, v87);
      sub_232C07018();
      sub_232C05E6C(v65, v90);
    }

    else
    {
      (*(v98 + 8))(v67, v100);
      sub_232C07018();
      sub_232C05E6C(v65, v91);
      sub_232CE8F00();
      v92 = sub_232C07090();
      sub_232B12504(v92, v93, v94, v95);
    }

    sub_232C070B0();
    sub_232BF6164();
    swift_endAccess();
  }

  else
  {
    (*(v28 + 8))(v5, v3);

    v59 = sub_232C07090();
    sub_232B12504(v59, v60, v61, v35);
    sub_232B13790(v1, &qword_27DDC7AC0, &qword_232CFBB80);
  }

  sub_232B20A00();
}

void sub_232C030A4()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v4 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v5 = sub_232B2D120(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B20714();
  sub_232B20600();
  MEMORY[0x28223BE20](v8);
  sub_232B55558();
  v221 = v9;
  sub_232B554F0();
  v222 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v10 = sub_232B13F24(v222);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20714();
  sub_232B20600();
  MEMORY[0x28223BE20](v13);
  sub_232B20628();
  v216 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  sub_232B55558();
  v16 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  v17 = sub_232B2D120(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_232B20714();
  sub_232B20600();
  MEMORY[0x28223BE20](v20);
  sub_232B55558();
  v218 = v21;
  v22 = sub_232B554F0();
  v220 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(v22);
  v23 = sub_232B13F24(v220);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_232B20714();
  sub_232B20600();
  MEMORY[0x28223BE20](v26);
  sub_232B20628();
  v215 = v27;
  sub_232B20600();
  MEMORY[0x28223BE20](v28);
  sub_232B55558();
  v29 = sub_232B124A8(&qword_27DDC7AC0, &qword_232CFBB80);
  v30 = sub_232B2D120(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_232B20714();
  sub_232B20600();
  MEMORY[0x28223BE20](v33);
  sub_232B55558();
  v217 = v34;
  v35 = sub_232B554F0();
  v219 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(v35);
  v36 = sub_232B13F24(v219);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_232B20714();
  sub_232B20600();
  MEMORY[0x28223BE20](v39);
  sub_232B20628();
  sub_232B20600();
  MEMORY[0x28223BE20](v40);
  sub_232B55558();
  v214 = v41;
  v42 = sub_232B554F0();
  v43 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(v42);
  v231 = *(v43 - 8);
  v44 = *(v231 + 64);
  MEMORY[0x28223BE20](v43 - 8);
  sub_232B20704();
  v47 = v46 - v45;
  sub_232CE9330();
  v48 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0) + 20);
  if (qword_27DDC6428 != -1)
  {
LABEL_86:
    swift_once();
  }

  *(v3 + v48) = qword_27DDC83E0;
  v49 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_title);
  sub_232B13F74();
  v51 = *v49;
  v50 = v49[1];

  v52 = *(v3 + v48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *(v3 + v48);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v55 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
    sub_232BF73F4(v55);
    v54 = sub_232C0717C();
    *(v3 + v48) = v54;
  }

  sub_232B13F5C();
  v56 = *(v54 + 24);
  *(v54 + 16) = v51;
  *(v54 + 24) = v50;

  v57 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_type);
  sub_232B13F74();
  v59 = *v57;
  v58 = v57[1];

  v60 = *(v3 + v48);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(v3 + v48);
  v227 = v48;
  v228 = v3;
  if ((v61 & 1) == 0)
  {
    v63 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
    sub_232BF73F4(v63);
    v62 = sub_232C0717C();
    *(v3 + v48) = v62;
  }

  sub_232B13F5C();
  v64 = *(v62 + 40);
  *(v62 + 32) = v59;
  *(v62 + 40) = v58;

  v65 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels;
  sub_232B13F74();
  v223 = v1;
  v3 = *(v1 + v65);
  v66 = sub_232B26B10(v3);

  v1 = 0;
  v67 = MEMORY[0x277D84F90];
  while (v66 != v1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v68 = MEMORY[0x2383922C0](v1, v3);
    }

    else
    {
      if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      v68 = *(v3 + 8 * v1 + 32);
    }

    v69 = v68;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    sub_232C04408(v47);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = *(v67 + 16);
      sub_232B36E34();
      v67 = v72;
    }

    v48 = *(v67 + 16);
    if (v48 >= *(v67 + 24) >> 1)
    {
      sub_232B36E34();
      v67 = v73;
    }

    *(v67 + 16) = v48 + 1;
    v70 = v67 + ((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v48;
    sub_232C0711C();
    sub_232C05E00();
    ++v1;
  }

  v1 = v227;
  v47 = v228;
  v74 = *(v228 + v227);
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *(v228 + v227);
  if ((v75 & 1) == 0)
  {
    v77 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
    sub_232BF73F4(v77);
    v78 = sub_232C0717C();
    sub_232C07244(v78);
  }

  v79 = v223;
  sub_232B13F5C();
  v80 = v76[6];
  v76[6] = v67;

  v81 = (v223 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_phoneNumber);
  sub_232B13F74();
  v82 = v81[1];
  if (v82)
  {
    v83 = *v81;

    v84 = *(v228 + v227);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v76 = *(v228 + v227);
    if ((v85 & 1) == 0)
    {
      v86 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
      sub_232BF73F4(v86);
      v87 = sub_232C0717C();
      sub_232C07244(v87);
    }

    sub_232B13F5C();
    v88 = v76[8];
    v76[7] = v83;
    v76[8] = v82;
  }

  v89 = (v223 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_email);
  sub_232B13F74();
  v90 = v89[1];
  if (v90)
  {
    v91 = *v89;

    v92 = *(v228 + v227);
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v76 = *(v228 + v227);
    if ((v93 & 1) == 0)
    {
      v94 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
      sub_232BF73F4(v94);
      v95 = sub_232C0717C();
      sub_232C07244(v95);
    }

    sub_232B13F5C();
    v96 = v76[10];
    v76[9] = v91;
    v76[10] = v90;
  }

  v97 = (v223 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_url);
  sub_232B13F74();
  v98 = v97[1];
  if (v98)
  {
    v99 = *v97;

    v100 = *(v228 + v227);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v76 = *(v228 + v227);
    if ((v101 & 1) == 0)
    {
      v102 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
      sub_232BF73F4(v102);
      v103 = sub_232C0717C();
      sub_232C07244(v103);
    }

    sub_232B13F5C();
    v104 = v76[12];
    v76[11] = v99;
    v76[12] = v98;
  }

  v105 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents;
  sub_232B13F74();
  v106 = *(v223 + v105);
  if (v106)
  {
    v108 = v106 + 64;
    v107 = *(v106 + 64);
    v109 = 1 << *(v106 + 32);
    sub_232C0726C();
    v112 = v111 & v110;
    v48 = (v113 + 63) >> 6;

    v3 = 0;
    v224 = v48;
    v225 = v106 + 64;
    v226 = v106;
    if (v112)
    {
      goto LABEL_38;
    }

LABEL_34:
    while (1)
    {
      v114 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_83;
      }

      if (v114 >= v48)
      {

        v79 = v223;
        break;
      }

      v112 = *(v108 + 8 * v114);
      ++v3;
      if (v112)
      {
        v3 = v114;
LABEL_38:
        while (1)
        {
          v115 = __clz(__rbit64(v112)) | (v3 << 6);
          v116 = *(v106 + 56);
          v117 = *(*(v106 + 48) + 8 * v115);
          v118 = (v116 + 16 * v115);
          v119 = v118[1];
          v231 = *v118;
          v120 = sub_232CE9D50();
          v1 = v121;
          sub_232B13F74();
          v122 = v76[13];
          v229 = v117;
          v48 = v119;

          swift_isUniquelyReferenced_nonNull_native();
          v232 = v122;
          v230 = v120;
          v123 = sub_232B1F160(v120, v1);
          v125 = v122[2];
          v126 = (v124 & 1) == 0;
          v47 = v125 + v126;
          if (__OFADD__(v125, v126))
          {
            goto LABEL_84;
          }

          v127 = v123;
          v128 = v124;
          sub_232B124A8(&qword_27DDC6798, &qword_232CFAB80);
          if (sub_232CEA5C0())
          {
            v129 = sub_232B1F160(v230, v1);
            if ((v128 & 1) != (v130 & 1))
            {
              sub_232CEA7A0();
              __break(1u);
              return;
            }

            v127 = v129;
          }

          v76 = v231;
          if (v128)
          {

            v131 = v232;
            v132 = (v232[7] + 16 * v127);
            v133 = v132[1];
            *v132 = v231;
            v132[1] = v48;
          }

          else
          {
            v131 = v232;
            v232[(v127 >> 6) + 8] |= 1 << v127;
            v134 = (v232[6] + 16 * v127);
            *v134 = v230;
            v134[1] = v1;
            v135 = (v232[7] + 16 * v127);
            *v135 = v231;
            v135[1] = v48;
            v136 = v232[2];
            v137 = __OFADD__(v136, 1);
            v138 = v136 + 1;
            if (v137)
            {
              goto LABEL_85;
            }

            v232[2] = v138;
          }

          v1 = v227;
          v47 = v228;
          v139 = *(v228 + v227);
          v48 = v224;
          if (swift_isUniquelyReferenced_nonNull_native())
          {

            v76 = *(v228 + v227);
          }

          else
          {
            v140 = sub_232C072E8();
            sub_232BF73F4(v140);
            sub_232BF73E8();

            sub_232C62BD0(v141);
            sub_232BF73E8();

            *(v228 + v227) = v231;
          }

          v106 = v226;
          v112 &= v112 - 1;
          sub_232B13F5C();
          v142 = v76[13];
          v76[13] = v131;

          v108 = v225;
          if (!v112)
          {
            goto LABEL_34;
          }
        }
      }
    }
  }

  v143 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent;
  sub_232B13F74();
  v144 = *(v79 + v143);
  if (!v144)
  {
    v146 = v217;
    v155 = sub_232C07090();
    sub_232B12504(v155, v156, v157, v219);
    goto LABEL_57;
  }

  v145 = v144;
  sub_232C05148();

  v146 = v217;
  sub_232B41C8C();
  v147 = sub_232C07250();
  v148 = sub_232C070EC(v147);
  sub_232B351B0(v148, v149, v150);
  if (v151)
  {
LABEL_57:
    sub_232B13790(v146, &qword_27DDC7AC0, &qword_232CFBB80);
    goto LABEL_60;
  }

  sub_232C07000();
  sub_232C05E00();
  sub_232C07164();
  sub_232C05EC4();
  v152 = *(v47 + v1);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232C07018();
    sub_232C05E6C(v214, v153);
    v154 = *(v47 + v1);
  }

  else
  {
    v158 = sub_232C072E8();
    sub_232BF73F4(v158);
    sub_232BF73E8();

    v160 = sub_232C62BD0(v159);
    sub_232C07018();
    sub_232C05E6C(v214, v161);

    *(v47 + v1) = v160;
  }

  sub_232C07000();
  sub_232C05E00();
  sub_232B351FC();
  sub_232B12504(v162, v163, v164, v219);
  sub_232B207D4();
  sub_232BF6164();
  swift_endAccess();
LABEL_60:
  v165 = (v79 + OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_homeAutomationID);
  sub_232B13F74();
  v166 = v165[1];
  if (v166)
  {
    v167 = *v165;
    v168 = v165[1];

    v169 = *(v47 + v1);
    v170 = swift_isUniquelyReferenced_nonNull_native();
    v171 = *(v47 + v1);
    if ((v170 & 1) == 0)
    {
      v172 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
      sub_232BF73F4(v172);
      v173 = sub_232C0717C();
      sub_232C07244(v173);
    }

    v174 = (v171 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
    sub_232B13F5C();
    v175 = v174[1];
    *v174 = v167;
    v174[1] = v166;
  }

  v176 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo;
  sub_232B13F74();
  v177 = *(v79 + v176);
  if (!v177)
  {
    v181 = v218;
    sub_232B55484();
    sub_232B12504(v187, v188, v189, v220);
    v184 = v221;
    goto LABEL_69;
  }

  v178 = v177;
  sub_232B5708C(v215);

  sub_232B41C8C();
  v179 = sub_232C07250();
  v180 = sub_232C070EC(v179);
  v181 = v218;
  sub_232B351B0(v180, v182, v183);
  v184 = v221;
  if (v151)
  {
LABEL_69:
    sub_232B13790(v181, &qword_27DDC70F8, &qword_232CF8260);
    goto LABEL_72;
  }

  sub_232C07078();
  sub_232C05E00();
  sub_232C05EC4();
  v185 = *(v47 + v1);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_232C071C0();
    v186 = *(v47 + v1);
  }

  else
  {
    v190 = sub_232C072E8();
    sub_232BF73F4(v190);
    sub_232BF73E8();

    v192 = sub_232C62BD0(v191);
    sub_232C071C0();

    *(v47 + v1) = v192;
  }

  sub_232C07078();
  sub_232C05E00();
  sub_232B351FC();
  sub_232B12504(v193, v194, v195, v220);
  sub_232B207D4();
  sub_232BF6164();
  swift_endAccess();
  v184 = v221;
LABEL_72:
  v196 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo;
  sub_232B13F74();
  v197 = *(v79 + v196);
  if (v197)
  {
    v198 = v197;
    sub_232B55A40(v216);

    sub_232B41C8C();
    v199 = sub_232C07250();
    v200 = sub_232C070EC(v199);
    sub_232B351B0(v200, v201, v202);
    if (!v151)
    {
      sub_232C07060();
      sub_232C05E00();
      sub_232C05EC4();
      v203 = *(v47 + v1);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_232C07198();
        v204 = *(v47 + v1);
      }

      else
      {
        v208 = sub_232C072E8();
        sub_232BF73F4(v208);
        sub_232BF73E8();

        v210 = sub_232C62BD0(v209);
        sub_232C07198();

        *(v47 + v1) = v210;
      }

      sub_232C07060();
      sub_232C05E00();
      sub_232B351FC();
      sub_232B12504(v211, v212, v213, v222);
      sub_232B207D4();
      sub_232BF6164();
      swift_endAccess();
      goto LABEL_80;
    }
  }

  else
  {
    v205 = sub_232C07090();
    sub_232B12504(v205, v206, v207, v222);
  }

  sub_232B13790(v184, &qword_27DDC67C8, &unk_232CF5E70);
LABEL_80:
  sub_232B20A00();
}

uint64_t sub_232C03E64()
{
  v1 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0);
  v2 = sub_232B2D120(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  sub_232C071E8();
  sub_232C030A4();
  sub_232C07898(v0);
  v5 = sub_232B124A8(&qword_27DDC7AF8, &qword_232CFBBA8);
  return sub_232C07210(v5);
}

uint64_t DUStructuredEntity.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232B26CE8();
  return DUStructuredEntity.init(coder:)(v2);
}

id DUStructuredEntity.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_title];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v2 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_type];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels] = MEMORY[0x277D84F90];
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_phoneNumber);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_email);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_url);
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent] = 0;
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_homeAutomationID);
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DUStructuredEntity();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_232C0423C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_232C083F0(a1);
  *a2 = result;
  return result;
}

double sub_232C0431C()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
  sub_232B26BFC();
  return *(v0 + v1);
}

uint64_t sub_232C04374(double a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
  result = sub_232B13F5C();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_232C04408@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  v4 = (a1 + *(v3 + 20));
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + *(v3 + 24);
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (v1 + OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName);
  sub_232B13F74();
  v7 = *v6;
  v8 = v6[1];
  *v4 = v7;
  v4[1] = v8;
  v9 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
  sub_232B13F74();
  *v5 = *(v1 + v9);
  *(v5 + 8) = 0;
}

uint64_t sub_232C044AC()
{
  v1 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(0);
  v2 = sub_232B2D120(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  sub_232C071E8();
  sub_232C04408(v0);
  sub_232C01A1C(v0);
  v5 = sub_232B124A8(&qword_27DDC7B08, &qword_232CFBBB0);
  return sub_232C07210(v5);
}

uint64_t sub_232C0454C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  v5 = a1;
  a4(v8);

  sub_232B203C8(v8, v8[3]);
  v6 = sub_232CEA740();
  sub_232B2040C(v8);
  return v6;
}

void sub_232C045FC(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  a2();
  sub_232C06FB0(a3, v6, a4);
  v7 = sub_232CE98A0();
  if (v7)
  {
    v8 = v7;
    v9 = sub_232C072A8();
    sub_232BF7340();
    [v10 v11];
  }
}

uint64_t DUStructuredExtractionLabel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232B26CE8();
  return DUStructuredExtractionLabel.init(coder:)(v2);
}

uint64_t sub_232C0477C(void *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  swift_getObjectType();
  sub_232B1F870();
  sub_232C07220();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  sub_232BF73E8();
  swift_getObjectType();
  sub_232C06FB0(a2, v6, a3);
  sub_232CE98B0();

  v7 = v9;
  if (!v9)
  {
LABEL_5:
    swift_getObjectType();
    sub_232C072C8();
    return 0;
  }

  swift_getObjectType();
  sub_232C072C8();
  return v7;
}

id DUStructuredExtractionLabel.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DUStructuredExtractionLabel();
  return objc_msgSendSuper2(&v3, sel_init);
}

char *sub_232C0495C@<X0>(char **a1@<X8>)
{
  result = sub_232C01B20();
  *a1 = result;
  return result;
}

uint64_t sub_232C049AC()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay;
  sub_232B26BFC();
  return *(v0 + v1);
}

uint64_t sub_232C04A08(char a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay;
  result = sub_232B26C50();
  *(v1 + v3) = a1;
  return result;
}

id sub_232C04B60(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  sub_232B2D120(v5);
  v7 = *(v6 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v8);
  sub_232B5A028();
  a3();
  v9 = sub_232CE8F00();
  v10 = sub_232C07238();
  v12 = 0;
  if (sub_232B12480(v10, v11, v9) != 1)
  {
    v12 = v3;
    sub_232CE8ED0();
    sub_232B5A014();
    (*(v13 + 8))(v3, v9);
  }

  return v12;
}

void sub_232C04C70(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  sub_232B2D120(v8);
  v10 = *(v9 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v11);
  sub_232BF7454();
  if (a3)
  {
    sub_232CE8EE0();
    v12 = sub_232CE8F00();
    v13 = 0;
  }

  else
  {
    v12 = sub_232CE8F00();
    v13 = 1;
  }

  sub_232B12504(v4, v13, 1, v12);
  v14 = a1;
  v15 = sub_232BF73E8();
  a4(v15);
}

id sub_232C04DB4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  sub_232B2D120(v5);
  v7 = *(v6 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v8);
  sub_232B5A028();
  a3();
  v9 = sub_232CE8AE0();
  v10 = sub_232C07238();
  v12 = 0;
  if (sub_232B12480(v10, v11, v9) != 1)
  {
    v12 = v3;
    sub_232CE8A10();
    sub_232B5A014();
    (*(v13 + 8))(v3, v9);
  }

  return v12;
}

void sub_232C04EC4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  sub_232B2D120(v8);
  v10 = *(v9 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v11);
  sub_232BF7454();
  if (a3)
  {
    sub_232CE8A20();
    v12 = sub_232CE8AE0();
    v13 = 0;
  }

  else
  {
    v12 = sub_232CE8AE0();
    v13 = 1;
  }

  sub_232B12504(v4, v13, 1, v12);
  v14 = a1;
  v15 = sub_232BF73E8();
  a4(v15);
}

uint64_t sub_232C05058(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = sub_232B124A8(a5, a6);
  sub_232B2D120(v9);
  v11 = *(v10 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20]();
  v13 = &v16 - v12;
  sub_232BF5EEC();
  v14 = *a2;
  return a7(v13);
}

void sub_232C05148()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v93 = 0;
  v4 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v5 = sub_232B2D120(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B20714();
  v91 = v8;
  sub_232B20600();
  MEMORY[0x28223BE20](v9);
  v11 = &v83 - v10;
  sub_232CE8F00();
  sub_232B350D8();
  v89 = v13;
  v90 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_232B20714();
  v86 = v16;
  sub_232B20600();
  MEMORY[0x28223BE20](v17);
  sub_232B55558();
  v84 = v18;
  v19 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v20 = sub_232B2D120(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_232B20714();
  v87 = v23;
  sub_232B20600();
  MEMORY[0x28223BE20](v24);
  v26 = &v83 - v25;
  v27 = sub_232CE8AE0();
  sub_232B350D8();
  v92 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  sub_232B20714();
  v88 = v32;
  sub_232B20600();
  MEMORY[0x28223BE20](v33);
  v35 = &v83 - v34;
  v36 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  v37 = &v3[v36[5]];
  sub_232CE9330();
  v38 = &v3[v36[6]];
  *v38 = xmmword_232CFBB70;
  v39 = &v3[v36[7]];
  *v39 = 0;
  v39[1] = 0;
  v83 = &v3[v36[8]];
  *v83 = xmmword_232CFBB70;
  sub_232B35214(v36[9]);
  v85 = v40;
  v41 = OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay;
  sub_232B13F74();
  *v3 = *(v1 + v41);
  sub_232B13F74();
  sub_232BF5EEC();
  v42 = sub_232C07238();
  sub_232B351B0(v42, v43, v27);
  if (v44)
  {
    sub_232B13790(v26, &qword_27DDC70B0, &unk_232CF81C0);
    v45 = v92;
  }

  else
  {
    (*(v92 + 32))(v35, v26, v27);
    v46 = sub_232CE8970();
    sub_232BF73F4(v46);
    sub_232CE8960();
    sub_232C07048();
    sub_232C06FB0(v47, 255, v48);
    v49 = v93;
    v50 = sub_232CE8950();
    if (v49)
    {

      v45 = v92;
      (*(v92 + 8))(v35, v27);
      v93 = 0;
    }

    else
    {
      v52 = v50;
      v53 = v51;
      v93 = 0;
      v54 = v92;
      (*(v92 + 8))(v35, v27);

      sub_232BB6018(*v38, *(v38 + 1));
      *v38 = v52;
      *(v38 + 1) = v53;
      v45 = v54;
    }
  }

  sub_232B13F74();
  sub_232BF5EEC();
  v55 = v90;
  sub_232B351B0(v11, 1, v90);
  if (v44)
  {
    sub_232B13790(v11, &qword_27DDC70B8, &qword_232CF81D0);
  }

  else
  {
    v56 = v89;
    v57 = v84;
    (*(v89 + 32))(v84, v11, v55);
    v58 = sub_232CE8EB0();
    v60 = v59;
    (*(v56 + 8))(v57, v55);
    *v39 = v58;
    v39[1] = v60;
  }

  v61 = v88;
  sub_232B13F74();
  v62 = v87;
  sub_232BF5EEC();
  v63 = sub_232C07238();
  sub_232B351B0(v63, v64, v27);
  if (v44)
  {
    sub_232B13790(v62, &qword_27DDC70B0, &unk_232CF81C0);
  }

  else
  {
    (*(v45 + 32))(v61, v62, v27);
    v65 = sub_232CE8970();
    sub_232BF73F4(v65);
    sub_232CE8960();
    sub_232C07048();
    sub_232C06FB0(v66, 255, v67);
    v68 = v93;
    v69 = sub_232CE8950();
    if (v68)
    {

      (*(v45 + 8))(v61, v27);
    }

    else
    {
      v71 = v69;
      v72 = v70;
      (*(v45 + 8))(v61, v27);

      v73 = v83;
      sub_232BB6018(*v83, v83[1]);
      *v73 = v71;
      v73[1] = v72;
    }
  }

  sub_232B13F74();
  v74 = v91;
  sub_232BF5EEC();
  v75 = sub_232C07238();
  sub_232B351B0(v75, v76, v55);
  if (v44)
  {
    sub_232B13790(v74, &qword_27DDC70B8, &qword_232CF81D0);
  }

  else
  {
    v77 = v89;
    v78 = v86;
    (*(v89 + 32))(v86, v74, v55);
    v79 = sub_232CE8EB0();
    v81 = v80;
    (*(v77 + 8))(v78, v55);
    v82 = v85;
    *v85 = v79;
    v82[1] = v81;
  }

  sub_232B20A00();
}

uint64_t sub_232C057F4()
{
  v0 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(0);
  v1 = sub_232B2D120(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_232B20704();
  sub_232C071E8();
  sub_232C05148();
  sub_232C01E88();
  v4 = sub_232B124A8(&qword_27DDC7B20, &qword_232CFBBB8);
  return sub_232C07210(v4);
}

void sub_232C05894()
{
  type metadata accessor for DUCalendarEvent();
  sub_232C0714C();
  sub_232C06FB0(v0, 255, v1);
  v2 = sub_232CE98A0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_232C072A8();
    sub_232BF7340();
    [v5 v6];
  }
}

uint64_t DUCalendarEvent.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232B26CE8();
  return DUCalendarEvent.init(coder:)(v2);
}

uint64_t DUCalendarEvent.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_232B1F870();
  sub_232C07220();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  sub_232B26CE8();
  swift_getObjectType();
  sub_232C0714C();
  sub_232C06FB0(v4, 255, v5);
  sub_232CE98B0();

  v6 = v12;
  if (!v12)
  {
LABEL_5:
    swift_getObjectType();
    v9 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v10 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  swift_getObjectType();
  v7 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v8 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v6;
}

id DUCalendarEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUCalendarEvent.init()()
{
  v0[OBJC_IVAR____TtC21DocumentUnderstanding15DUCalendarEvent_isAllDay] = 0;
  v1 = sub_232CE8AE0();
  sub_232B55484();
  sub_232B12504(v2, v3, v4, v1);
  v5 = sub_232CE8F00();
  sub_232B55484();
  sub_232B12504(v6, v7, v8, v5);
  sub_232B55484();
  sub_232B12504(v9, v10, v11, v1);
  sub_232B55484();
  sub_232B12504(v12, v13, v14, v5);
  v16.receiver = v0;
  v16.super_class = type metadata accessor for DUCalendarEvent();
  return objc_msgSendSuper2(&v16, sel_init);
}

id sub_232C05CB8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

_BYTE *sub_232C05DB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_232C023D4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232C05E00()
{
  sub_232B2D12C();
  v2 = v1(0);
  sub_232B13F24(v2);
  v4 = *(v3 + 32);
  v5 = sub_232B2080C();
  v6(v5);
  return v0;
}

uint64_t sub_232C05E58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_232B41B94(a1, a2);
  }

  return a1;
}

uint64_t sub_232C05E6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_232B13F24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_232C05EC4()
{
  sub_232B2D12C();
  v2 = v1(0);
  sub_232B13F24(v2);
  v4 = *(v3 + 16);
  v5 = sub_232B2080C();
  v6(v5);
  return v0;
}

uint64_t type metadata accessor for DUCalendarEvent()
{
  result = qword_27DDC7B30;
  if (!qword_27DDC7B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C06A54()
{
  sub_232C06F5C(319, &unk_2814E25F0, MEMORY[0x277CC8990]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_232C06F5C(319, &qword_2814E25C0, MEMORY[0x277CC9A70]);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_232C06F5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_232CEA350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_232C06FB0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_232C070A0(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

uint64_t sub_232C070B0()
{

  return swift_beginAccess();
}

uint64_t sub_232C070D0()
{

  return swift_beginAccess();
}

uint64_t sub_232C0717C()
{

  return sub_232C62BD0(v0);
}

uint64_t sub_232C07198()
{

  return sub_232C05E6C(v0, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
}

uint64_t sub_232C071C0()
{

  return sub_232C05E6C(v0, type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo);
}

uint64_t sub_232C071F4()
{
  v4 = v1[1];
  *v1 = v2;
  v1[1] = v0;
}

uint64_t sub_232C07210(uint64_t result)
{
  v1[3] = result;
  *v1 = v2;
  return result;
}

uint64_t sub_232C07250()
{

  return swift_dynamicCast();
}

uint64_t sub_232C07294@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  if (a1[1] >> 60 != 15)
  {
    v2 = *a1;
  }

  return result;
}

uint64_t sub_232C072A8()
{

  return sub_232CE9D20();
}

uint64_t sub_232C072C8()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_232C072E8()
{
  v3 = *(v0 + v1);

  return type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity._StorageClass(0);
}

char *DUStructuredEntityResponse.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v82 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v6 = sub_232B13F24(v82);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232BFF638();
  v79 = v9;
  v10 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v11 = sub_232B2D120(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_232B20714();
  v78 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  sub_232B55558();
  v81 = v16;
  v17 = sub_232B554F0();
  v18 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(v17);
  v80 = *(v18 - 8);
  v19 = *(v80 + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v73 - v23;
  v25 = sub_232B124A8(&qword_27DDC7A38, &unk_232CFBAD0);
  v26 = sub_232B2D120(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v73 - v29;
  sub_232B350D8();
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  sub_232B20704();
  v38 = v37 - v36;
  v39 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
  v40 = sub_232B13F24(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_232B20704();
  v45 = (v44 - v43);
  v46 = [objc_allocWithZone(v3) init];
  (*(v32 + 16))(v38, a1, a2);
  if (swift_dynamicCast())
  {
    v75 = v32;
    v76 = a1;
    v77 = a2;
    sub_232B12504(v30, 0, 1, v39);
    sub_232C09F6C(v30, v45, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
    v74 = v45;
    v47 = *v45;
    v48 = MEMORY[0x277D84F90];
    v83 = MEMORY[0x277D84F90];
    v49 = *(v47 + 16);
    if (v49)
    {
      v50 = v47 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
      v51 = *(v80 + 72);
      do
      {
        sub_232C09E6C(v50, v24, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
        sub_232C09E6C(v24, v22, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
        v52 = sub_232C07898(v22);
        sub_232C09FCC();
        v54 = sub_232C09ECC(v24, v53);
        if (v52)
        {
          MEMORY[0x238391D50](v54);
          if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_232CEA000();
          }

          sub_232CEA020();
          v48 = v83;
        }

        v50 += v51;
        --v49;
      }

      while (v49);
    }

    v55 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities;
    sub_232B13F5C();
    v56 = *&v46[v55];
    *&v46[v55] = v48;

    v57 = v81;
    sub_232B34D3C(v74 + *(v39 + 24), v81, &qword_27DDC67C8, &unk_232CF5E70);
    v58 = v82;
    sub_232B351B0(v57, 1, v82);
    if (v64)
    {
      (*(v75 + 8))(v76, v77);
      sub_232B13790(v57, &qword_27DDC67C8, &unk_232CF5E70);
      sub_232C0A194();
    }

    else
    {
      sub_232BFFB24(v57);
      v59 = v78;
      sub_232BF7340();
      sub_232B34D3C(v60, v61, v62, v63);
      sub_232B351B0(v59, 1, v58);
      v66 = v75;
      v65 = v76;
      if (v64)
      {
        sub_232CE9330();
        sub_232B35214(*(v58 + 20));
        sub_232B351B0(v59, 1, v58);
        v68 = v77;
        if (!v64)
        {
          sub_232B13790(v59, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232C09FFC();
        sub_232C09F6C(v59, v79, v67);
        v68 = v77;
      }

      v69 = sub_232B4C530();
      (*(v66 + 8))(v65, v68);
      sub_232C0A194();
      v70 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo;
      sub_232B13F5C();
      v71 = *&v46[v70];
      *&v46[v70] = v69;
    }
  }

  else
  {
    (*(v32 + 8))(a1, a2);

    sub_232B12504(v30, 1, 1, v39);
    sub_232B13790(v30, &qword_27DDC7A38, &unk_232CFBAD0);
    return 0;
  }

  return v46;
}

uint64_t sub_232C07898(uint64_t a1)
{
  v150 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v4 = sub_232B13F24(v150);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232BFF638();
  v143 = v7;
  v8 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v9 = sub_232B2D120(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_232B20714();
  v146 = v12;
  sub_232B20600();
  MEMORY[0x28223BE20](v13);
  sub_232B55558();
  v14 = sub_232B554F0();
  v148 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(v14);
  v15 = sub_232B13F24(v148);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_232BFF638();
  v18 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  v19 = sub_232B2D120(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_232B20714();
  v145 = v22;
  sub_232B20600();
  MEMORY[0x28223BE20](v23);
  sub_232B55558();
  v24 = sub_232B554F0();
  v147 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(v24);
  v25 = sub_232B13F24(v147);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_232BFF638();
  v142 = v28;
  v29 = sub_232B124A8(&qword_27DDC7AC0, &qword_232CFBB80);
  v30 = sub_232B2D120(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_232B20714();
  v144 = v33;
  sub_232B20600();
  MEMORY[0x28223BE20](v34);
  sub_232B55558();
  v35 = sub_232B554F0();
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(v35);
  sub_232B350D8();
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  sub_232B20714();
  v158 = v41;
  sub_232B20600();
  MEMORY[0x28223BE20](v42);
  sub_232B55558();
  v157 = v43;
  v44 = sub_232B554F0();
  v45 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(v44);
  v46 = v45 - 8;
  v47 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  sub_232B20704();
  v50 = v49 - v48;
  v51 = [objc_allocWithZone(type metadata accessor for DUStructuredEntity()) init];
  sub_232C0A074(v51);
  v151 = a1;
  sub_232C09E6C(a1, v50, v52);
  v149 = v50;
  v53 = *(v50 + *(v46 + 28));
  sub_232B13F74();
  if (v53[3])
  {
    v54 = v53[2];
    v55 = v53[3];
  }

  else
  {
    sub_232C0A33C();
  }

  sub_232C0A348(OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_title);
  sub_232B13F5C();
  sub_232C0A260();

  sub_232B13F74();
  if (v53[5])
  {
    v56 = v53[4];
    v57 = v53[5];
  }

  else
  {
    sub_232C0A33C();
  }

  sub_232C0A348(OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_type);
  sub_232B13F5C();
  sub_232C0A260();

  sub_232B13F74();
  v154 = v53;
  v58 = v53[6];
  v59 = MEMORY[0x277D84F90];
  v160 = MEMORY[0x277D84F90];
  v60 = *(v58 + 16);
  if (v60)
  {
    sub_232C0A234(v58);
    do
    {
      sub_232C0A124();
      sub_232C09E6C(v1, v157, v61);
      sub_232C0A374();
      v62 = [objc_allocWithZone(type metadata accessor for DUStructuredExtractionLabel()) init];
      sub_232C09FE4();
      sub_232C09ECC(v157, v63);
      sub_232C0A328();
      if (v37)
      {
        v65 = *v64;
        v66 = v37;
      }

      else
      {
        v65 = 0;
        v66 = 0xE000000000000000;
      }

      v67 = &v62[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName];
      sub_232B13F5C();
      v68 = *(v67 + 1);
      *v67 = v65;
      *(v67 + 1) = v66;

      v69 = (v158 + *(v2 + 24));
      v70 = *v69;
      v71 = *(v69 + 8);
      sub_232C09FE4();
      sub_232C09ECC(v72, v73);
      if (v71)
      {
        v70 = 0.0;
      }

      v74 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
      v75 = sub_232B13F5C();
      *&v62[v74] = v70;
      MEMORY[0x238391D50](v75);
      sub_232C0A300();
      if (v76)
      {
        sub_232C0A2DC();
      }

      v37 = &v160;
      sub_232CEA020();
      v1 += v156;
      --v60;
    }

    while (v60);
    v59 = v160;
  }

  v77 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels;
  v78 = v155;
  sub_232B13F5C();
  v79 = *(v155 + v77);
  *(v155 + v77) = v59;

  v80 = v154;
  sub_232B13F74();
  v82 = v154[7];
  v81 = v154[8];
  sub_232C0A090();
  sub_232C071F4();

  sub_232B13F74();
  v84 = v154[9];
  v83 = v154[10];
  sub_232C0A090();
  sub_232C071F4();

  sub_232B13F74();
  v86 = v154[11];
  v85 = v154[12];
  sub_232C0A090();
  sub_232C071F4();

  sub_232B13F74();
  if (*(v154[13] + 16))
  {
    type metadata accessor for NSTextCheckingKey();
    sub_232C0A10C();
    sub_232C09F24(v87, 255, v88);
    v89 = sub_232CE9C60();
    v90 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents;
    v91 = 1;
    sub_232B13F5C();
    v92 = *(v155 + v90);
    *(v155 + v90) = v89;

    sub_232C0A154(v154[13]);
    v93 = 0;
    v152 = v59;
    v153 = v90;
LABEL_24:
    while (1)
    {
      sub_232C0A1BC();

      v95 = sub_232CE9D20();
      swift_beginAccess();
      if (!*(v78 + v90))
      {
        break;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v159 = *(v78 + v90);
      *(v78 + v90) = 0x8000000000000000;
      v96 = sub_232B20540(v95);
      sub_232C0A314(v96, v97);
      if (v99)
      {
        goto LABEL_55;
      }

      v100 = v98;
      sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
      if (sub_232C0A354())
      {
        sub_232B20540(v95);
        if ((v100 & 1) != (v101 & 1))
        {
          goto LABEL_58;
        }
      }

      if (v100)
      {
        sub_232C0A2B8();
      }

      else
      {
        sub_232C0A034();
        if (v99)
        {
          goto LABEL_56;
        }

        *(v159 + 16) = v102;
      }

      v91 &= v91 - 1;
      v78 = v155;
      v90 = v153;
      *(v155 + v153) = v159;
      swift_endAccess();

      v80 = v154;
      if (!v91)
      {
        while (1)
        {
          v94 = v93 + 1;
          if (__OFADD__(v93, 1))
          {
            break;
          }

          if (v94 >= v152)
          {

            goto LABEL_35;
          }

          v91 = *(v89 + 8 * v94);
          ++v93;
          if (v91)
          {
            v93 = v94;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_58:
    result = sub_232CEA7A0();
    __break(1u);
  }

  else
  {
LABEL_35:
    v103 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent;
    sub_232B13F74();
    v104 = &qword_27DDC7AC0;
    sub_232BF7340();
    sub_232B34D3C(v105, v106, v107, v108);
    v109 = sub_232C0A288();
    sub_232C0A1FC(v109, v110);
    sub_232C0A27C();
    if (!v111)
    {
      sub_232B34D3C(v80 + v103, v144, &qword_27DDC7AC0, &qword_232CFBB80);
      sub_232C0A014(v144);
      if (v111)
      {
        *v142 = 0;
        v112 = &v142[v147[5]];
        sub_232CE9330();
        *&v142[v147[6]] = xmmword_232CFBB70;
        sub_232B35214(v147[7]);
        *&v142[v147[8]] = v113;
        sub_232B35214(v147[9]);
        sub_232C0A014(v144);
        if (!v111)
        {
          sub_232B13790(v144, &qword_27DDC7AC0, &qword_232CFBB80);
        }
      }

      else
      {
        sub_232C0A0AC();
      }

      sub_232C01E88();
      v104 = v114;
    }

    v115 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent;
    sub_232B13F5C();
    v116 = *(v78 + v115);
    *(v78 + v115) = v104;

    v117 = (v80 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
    sub_232B13F74();
    v119 = *v117;
    v118 = v117[1];
    sub_232C0A090();
    sub_232C071F4();

    v120 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo;
    sub_232B13F74();
    v121 = &qword_27DDC70F8;
    sub_232BF7340();
    sub_232B34D3C(v122, v123, v124, v125);
    v126 = sub_232C0A288();
    sub_232C0A1FC(v126, v127);
    sub_232C0A27C();
    if (!v111)
    {
      sub_232B34D3C(v80 + v120, v145, &qword_27DDC70F8, &qword_232CF8260);
      sub_232C0A014(v145);
      if (v111)
      {
        sub_232C0A294(xmmword_232CF76F0);
        sub_232C070A0(v148[8]);
        sub_232C070A0(v148[9]);
        sub_232C070A0(v148[10]);
        sub_232C070A0(v148[11]);
        sub_232C070A0(v148[12]);
        sub_232C070A0(v148[13]);
        sub_232C0A014(v145);
        if (!v111)
        {
          sub_232B13790(v145, &qword_27DDC70F8, &qword_232CF8260);
        }
      }

      else
      {
        sub_232C0A0DC();
      }

      v121 = sub_232B56548(&qword_232CF8260);
    }

    v128 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo;
    sub_232B13F5C();
    v129 = *(v78 + v128);
    *(v78 + v128) = v121;

    v130 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo;
    sub_232B13F74();
    v131 = &qword_27DDC67C8;
    sub_232BF7340();
    sub_232B34D3C(v132, v133, v134, v135);
    v136 = sub_232C0A288();
    sub_232C0A1FC(v136, v137);
    sub_232C0A27C();
    if (!v111)
    {
      sub_232B34D3C(v80 + v130, v146, &qword_27DDC67C8, &unk_232CF5E70);
      sub_232C0A014(v146);
      if (v111)
      {
        sub_232CE9330();
        sub_232B35214(*(v150 + 20));
        sub_232C0A014(v146);
        if (!v111)
        {
          sub_232B13790(v146, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232C09FFC();
        sub_232C09F6C(v146, v143, v138);
      }

      v131 = sub_232B4C530();
    }

    sub_232C09ECC(v151, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
    sub_232C09ECC(v149, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
    v139 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo;
    sub_232B13F5C();
    v140 = *(v78 + v139);
    *(v78 + v139) = v131;

    return v78;
  }

  return result;
}

uint64_t sub_232C083F0(uint64_t a1)
{
  v3 = v1;
  v156 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v5 = sub_232B13F24(v156);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232BFF638();
  v145 = v8;
  v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v10 = sub_232B2D120(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20714();
  v148 = v13;
  sub_232B20600();
  MEMORY[0x28223BE20](v14);
  sub_232B55558();
  v155 = v15;
  v16 = sub_232B554F0();
  v153 = type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo(v16);
  v17 = sub_232B13F24(v153);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_232BFF638();
  v20 = sub_232B124A8(&qword_27DDC70F8, &qword_232CF8260);
  v21 = sub_232B2D120(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_232B20714();
  v147 = v24;
  sub_232B20600();
  MEMORY[0x28223BE20](v25);
  sub_232B55558();
  v152 = v26;
  v27 = sub_232B554F0();
  v151 = type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent(v27);
  v28 = sub_232B13F24(v151);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_232BFF638();
  v144 = v31;
  v32 = sub_232B124A8(&qword_27DDC7AC0, &qword_232CFBB80);
  v33 = sub_232B2D120(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_232B20714();
  v146 = v36;
  sub_232B20600();
  MEMORY[0x28223BE20](v37);
  sub_232B55558();
  v150 = v38;
  v39 = sub_232B554F0();
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityLabel(v39);
  sub_232B350D8();
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  sub_232B20714();
  v163 = v45;
  sub_232B20600();
  MEMORY[0x28223BE20](v46);
  sub_232B55558();
  v162 = v47;
  v48 = sub_232B554F0();
  v49 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(v48);
  v50 = v49 - 8;
  v51 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  sub_232B20704();
  v54 = v53 - v52;
  sub_232C0A074([objc_allocWithZone(v3) init]);
  v149 = a1;
  sub_232C09E6C(a1, v54, v55);
  v154 = v54;
  v56 = *(v54 + *(v50 + 28));
  sub_232B13F74();
  if (v56[3])
  {
    v57 = v56[2];
    v58 = v56[3];
  }

  else
  {
    sub_232C0A33C();
  }

  sub_232C0A348(OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_title);
  sub_232B13F5C();
  sub_232C0A260();

  sub_232B13F74();
  if (v56[5])
  {
    v59 = v56[4];
    v60 = v56[5];
  }

  else
  {
    sub_232C0A33C();
  }

  sub_232C0A348(OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_type);
  sub_232B13F5C();
  sub_232C0A260();

  sub_232B13F74();
  v61 = v56[6];
  v62 = MEMORY[0x277D84F90];
  v165 = MEMORY[0x277D84F90];
  v63 = *(v61 + 16);
  v159 = v56;
  if (v63)
  {
    sub_232C0A234(v61);
    do
    {
      sub_232C0A124();
      sub_232C09E6C(v54, v162, v64);
      sub_232C0A374();
      v65 = [objc_allocWithZone(type metadata accessor for DUStructuredExtractionLabel()) init];
      sub_232C09FE4();
      sub_232C09ECC(v162, v66);
      sub_232C0A328();
      if (v41)
      {
        v68 = *v67;
        v69 = v41;
      }

      else
      {
        v68 = 0;
        v69 = 0xE000000000000000;
      }

      v70 = &v65[OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_labelName];
      sub_232B13F5C();
      v71 = *(v70 + 1);
      *v70 = v68;
      *(v70 + 1) = v69;

      v72 = (v163 + *(v2 + 24));
      v73 = *v72;
      v74 = *(v72 + 8);
      sub_232C09FE4();
      sub_232C09ECC(v75, v76);
      if (v74)
      {
        v73 = 0.0;
      }

      v77 = OBJC_IVAR____TtC21DocumentUnderstanding27DUStructuredExtractionLabel_confidenceScore;
      v78 = sub_232B13F5C();
      *&v65[v77] = v73;
      MEMORY[0x238391D50](v78);
      sub_232C0A300();
      if (v79)
      {
        sub_232C0A2DC();
      }

      v41 = &v165;
      sub_232CEA020();
      v54 += v161;
      --v63;
    }

    while (v63);
    v62 = v165;

    v80 = v159;
  }

  else
  {
    v80 = v56;
  }

  v81 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_labels;
  v82 = v160;
  sub_232B13F5C();
  v83 = *(v160 + v81);
  *(v160 + v81) = v62;

  sub_232B13F74();
  v85 = v80[7];
  v84 = v80[8];
  sub_232C0A090();
  sub_232C071F4();

  sub_232B13F74();
  v87 = v80[9];
  v86 = v80[10];
  sub_232C0A090();
  sub_232C071F4();

  sub_232B13F74();
  v89 = v80[11];
  v88 = v80[12];
  sub_232C0A090();
  sub_232C071F4();

  sub_232B13F74();
  if (*(v80[13] + 16))
  {
    type metadata accessor for NSTextCheckingKey();
    sub_232C0A10C();
    sub_232C09F24(v90, 255, v91);
    v92 = sub_232CE9C60();
    v93 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_addressComponents;
    v94 = 1;
    sub_232B13F5C();
    v95 = *(v160 + v93);
    *(v160 + v93) = v92;

    sub_232C0A154(v80[13]);
    v96 = 0;
    v157 = v62;
    v158 = v93;
LABEL_25:
    while (1)
    {
      sub_232C0A1BC();

      v98 = sub_232CE9D20();
      swift_beginAccess();
      if (!*(v82 + v93))
      {
        break;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v164 = *(v82 + v93);
      *(v82 + v93) = 0x8000000000000000;
      v99 = sub_232B20540(v98);
      sub_232C0A314(v99, v100);
      if (v102)
      {
        goto LABEL_58;
      }

      v103 = v101;
      sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
      if (sub_232C0A354())
      {
        sub_232B20540(v98);
        if ((v103 & 1) != (v104 & 1))
        {
          goto LABEL_61;
        }
      }

      if (v103)
      {
        sub_232C0A2B8();
      }

      else
      {
        sub_232C0A034();
        if (v102)
        {
          goto LABEL_59;
        }

        *(v164 + 16) = v105;
      }

      v94 &= v94 - 1;
      v82 = v160;
      v93 = v158;
      *(v160 + v158) = v164;
      swift_endAccess();

      v80 = v159;
      if (!v94)
      {
        while (1)
        {
          v97 = v96 + 1;
          if (__OFADD__(v96, 1))
          {
            break;
          }

          if (v97 >= v157)
          {

            goto LABEL_36;
          }

          v94 = *(v92 + 8 * v97);
          ++v96;
          if (v94)
          {
            v96 = v97;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_61:
    result = sub_232CEA7A0();
    __break(1u);
  }

  else
  {
LABEL_36:
    v106 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__calendarEvent;
    sub_232B13F74();
    v107 = &qword_27DDC7AC0;
    sub_232BF7340();
    sub_232B34D3C(v108, v109, v110, v111);
    sub_232B12480(v150, 1, v151);
    sub_232BFFB24(v150);
    sub_232C0A27C();
    if (!v136)
    {
      sub_232B34D3C(v80 + v106, v146, &qword_27DDC7AC0, &qword_232CFBB80);
      sub_232B351B0(v146, 1, v151);
      if (v136)
      {
        *v144 = 0;
        v112 = &v144[v151[5]];
        sub_232CE9330();
        *&v144[v151[6]] = xmmword_232CFBB70;
        sub_232B35214(v151[7]);
        *&v144[v151[8]] = v113;
        sub_232B35214(v151[9]);
        sub_232B351B0(v146, 1, v151);
        if (!v136)
        {
          sub_232B13790(v146, &qword_27DDC7AC0, &qword_232CFBB80);
        }
      }

      else
      {
        sub_232C0A0AC();
      }

      sub_232C01E88();
      v107 = v114;
    }

    v115 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_calendarEvent;
    sub_232B13F5C();
    v116 = *(v82 + v115);
    *(v82 + v115) = v107;

    v117 = (v80 + OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__homeAutomationID);
    sub_232B13F74();
    v119 = *v117;
    v118 = v117[1];
    sub_232C0A090();
    sub_232C071F4();

    v120 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__displayInfo;
    sub_232B13F74();
    v121 = &qword_27DDC70F8;
    sub_232BF7340();
    sub_232B34D3C(v122, v123, v124, v125);
    v126 = v80;
    sub_232B12480(v152, 1, v153);
    sub_232BFFB24(v152);
    sub_232C0A27C();
    if (!v136)
    {
      sub_232B34D3C(v80 + v120, v147, &qword_27DDC70F8, &qword_232CF8260);
      sub_232C0A014(v147);
      if (v136)
      {
        sub_232C0A294(xmmword_232CF76F0);
        sub_232C070A0(v153[8]);
        sub_232C070A0(v153[9]);
        sub_232C070A0(v153[10]);
        sub_232C070A0(v153[11]);
        sub_232C070A0(v153[12]);
        sub_232C070A0(v153[13]);
        sub_232C0A014(v147);
        if (!v136)
        {
          sub_232B13790(v147, &qword_27DDC70F8, &qword_232CF8260);
        }
      }

      else
      {
        sub_232C0A0DC();
      }

      v121 = sub_232B56548(&qword_232CF8260);
      v126 = v159;
    }

    v127 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_displayInfo;
    sub_232B13F5C();
    v128 = *(v82 + v127);
    *(v82 + v127) = v121;

    v129 = OBJC_IVAR____TtCV21DocumentUnderstanding54DocumentUnderstanding_ClientInterface_StructuredEntityP33_38B59A0C572EFC481874056181C4AC8813_StorageClass__responseDebugInfo;
    sub_232B13F74();
    sub_232B34D3C(v126 + v129, v155, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232B351B0(v155, 1, v156);
    if (v136)
    {
      sub_232C09FCC();
      sub_232C09ECC(v149, v130);
      sub_232B13790(v155, &qword_27DDC67C8, &unk_232CF5E70);
      v131 = 0;
    }

    else
    {
      sub_232BFFB24(v155);
      sub_232BF7340();
      sub_232B34D3C(v132, v133, v134, v135);
      sub_232B351B0(v148, 1, v156);
      if (v136)
      {
        sub_232CE9330();
        sub_232B35214(*(v156 + 20));
        sub_232B351B0(v148, 1, v156);
        v138 = v149;
        if (!v136)
        {
          sub_232B13790(v148, &qword_27DDC67C8, &unk_232CF5E70);
        }
      }

      else
      {
        sub_232C09FFC();
        sub_232C09F6C(v148, v145, v137);
        v138 = v149;
      }

      v131 = sub_232B4C530();
      sub_232C09FCC();
      sub_232C09ECC(v138, v139);
    }

    sub_232C09FCC();
    sub_232C09ECC(v154, v140);
    v141 = OBJC_IVAR____TtC21DocumentUnderstanding18DUStructuredEntity_responseDebugInfo;
    sub_232B13F5C();
    v142 = *(v82 + v141);
    *(v82 + v141) = v131;

    return v82;
  }

  return result;
}

uint64_t sub_232C09034()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities;
  sub_232B13F74();
  v2 = *(v0 + v1);
}

uint64_t sub_232C090E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities;
  sub_232B13F5C();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_232C09138(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232C090E8(v4);
}

void *sub_232C091E8()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo;
  sub_232B13F74();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_232C09288(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo;
  sub_232B13F5C();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_232C092D8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_232C09288(v2);
}

id sub_232C09358@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_232B20704();
  v9 = v8 - v7;
  v10 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v11 = sub_232B2D120(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  v16 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v17 = sub_232B13F24(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_232B20714();
  v50 = v20;
  sub_232B20600();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = (&v50 - v23);
  MEMORY[0x28223BE20](v22);
  v26 = &v50 - v25;
  *a1 = MEMORY[0x277D84F90];
  v27 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
  v28 = a1 + *(v27 + 20);
  sub_232CE9330();
  v29 = *(v27 + 24);
  v51 = a1;
  sub_232B4D66C(a1 + v29, 1);
  v30 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo;
  sub_232B13F74();
  v31 = *(v2 + v30);
  if (v31)
  {
    v32 = v31;
    sub_232B55A40(v24);

    v33 = swift_dynamicCast();
    sub_232B4D66C(v15, v33 ^ 1u);
    sub_232C0A014(v15);
    if (!v34)
    {
      sub_232C09F6C(v15, v26, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
      v35 = v50;
      sub_232C09F6C(v26, v50, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
      v36 = v51;
      sub_232B13790(v51 + v29, &qword_27DDC67C8, &unk_232CF5E70);
      sub_232C09F6C(v35, v36 + v29, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
      sub_232B4D66C(v36 + v29, 0);
      goto LABEL_6;
    }
  }

  else
  {
    v37 = sub_232C0A288();
    sub_232B4D66C(v37, v38);
  }

  sub_232B13790(v15, &qword_27DDC67C8, &unk_232CF5E70);
LABEL_6:
  v39 = OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities;
  result = sub_232B13F74();
  v41 = *(v2 + v39);
  if (v41)
  {
    v42 = sub_232B26B10(v41);

    v43 = 0;
    v44 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v42 == v43)
      {

        *v51 = v44;
        return result;
      }

      sub_232B26B2C(v43);
      result = (v41 & 0xC000000000000001) != 0 ? MEMORY[0x2383922C0](v43, v41) : *(v41 + 8 * v43 + 32);
      v45 = result;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      sub_232C030A4();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = *(v44 + 16);
        sub_232B36D5C();
        v44 = v48;
      }

      v46 = *(v44 + 16);
      if (v46 >= *(v44 + 24) >> 1)
      {
        sub_232B36D5C();
        v44 = v49;
      }

      *(v44 + 16) = v46 + 1;
      sub_232C09F6C(v9, v44 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v46, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntity);
      ++v43;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_232C0973C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  sub_232C09358((v7 - v6));
  sub_232BFC45C();
  v9 = v8;
  result = sub_232B124A8(&qword_27DDC7B68, &qword_232CFBD30);
  a1[3] = result;
  *a1 = v9;
  return result;
}

void sub_232C09830()
{
  type metadata accessor for DUStructuredEntityResponse();
  sub_232C0A13C();
  sub_232C09F24(v0, v1, v2);
  v3 = sub_232CE98A0();
  if (v3)
  {
    v4 = v3;
    v5 = sub_232CE9D20();
    sub_232BF7340();
    [v6 v7];
  }
}

uint64_t DUStructuredEntityResponse.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232C0A13C();
  sub_232C09F24(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B4D64C();
    return 0;
  }

  swift_getObjectType();
  sub_232B4D64C();
  return v5;
}

id DUStructuredEntityResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUStructuredEntityResponse.init()()
{
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_structuredEntities] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding26DUStructuredEntityResponse_responseDebugInfo] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUStructuredEntityResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DUStructuredEntityResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUStructuredEntityResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232C09E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_232B13F24(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_232C09ECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_232B13F24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_232C09F24(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232C09F6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_232B13F24(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void sub_232C0A034()
{
  v2[(v4 >> 6) + 8] |= 1 << v4;
  *(v2[6] + 8 * v4) = v1;
  v5 = (v2[7] + 16 * v4);
  *v5 = *(v0 + 176);
  v5[1] = v3;
  v6 = v2[2];
}

uint64_t sub_232C0A090()
{

  return swift_beginAccess();
}

uint64_t sub_232C0A0AC()
{
  v3 = *(v0 + 8);

  return sub_232C09F6C(v1, v3, type metadata accessor for DocumentUnderstanding_ClientInterface_CalendarEvent);
}

uint64_t sub_232C0A0DC()
{
  v3 = *(v0 + 16);

  return sub_232C09F6C(v1, v3, type metadata accessor for DocumentUnderstanding_ClientInterface_DisplayInfo);
}

uint64_t sub_232C0A154(uint64_t a1)
{
  v4 = v2 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  *(v1 + 160) = a1;
}

uint64_t sub_232C0A194()
{

  return sub_232C09ECC(v0, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
}

uint64_t sub_232C0A1BC()
{
  v4 = (v2 << 10) | (16 * __clz(__rbit64(v1)));
  v5 = *(v0 + 160);
  v6 = (*(v5 + 48) + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = (*(v5 + 56) + v4);
  v10 = v9[1];
  *(v0 + 176) = *v9;
}

uint64_t sub_232C0A1FC(uint64_t a1, uint64_t a2)
{
  sub_232B12480(a1, a2, v4);

  return sub_232B13790(v5, v2, v3);
}

uint64_t sub_232C0A234(uint64_t a1)
{
  v4 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  *(v1 + 160) = *(v2 + 72);
  *(v1 + 136) = a1;
}

uint64_t sub_232C0A260()
{
  v4 = v0[1];
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_232C0A294(__n128 a1)
{
  v4 = *(v1 + 16);
  *v4 = a1;
  v4[1] = a1;
  v4[2].n128_u8[0] = 0;
  v5 = v4 + *(v2 + 28);

  return sub_232CE9330();
}

void sub_232C0A2B8()
{
  v6 = (*(v2 + 56) + 16 * v4);
  v7 = v6[1];
  *v6 = *(v0 + 176);
  v6[1] = v3;
}

uint64_t sub_232C0A2DC()
{

  return sub_232CEA000();
}

uint64_t sub_232C0A354()
{

  return sub_232CEA5C0();
}

uint64_t sub_232C0A374()
{
  v4 = *(v0 + 176);

  return sub_232C09E6C(v2, v4, v1);
}

uint64_t sub_232C0A394(uint64_t a1, uint64_t a2)
{
  sub_232B4D640();
  v4 = sub_232CE8E80();
  v5 = sub_232B48F0C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B3516C();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v25 = a2;
  v16 = *(v2 + 16);
  if (v16)
  {
    v19 = *(v7 + 16);
    v17 = v7 + 16;
    v18 = v19;
    v20 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v24 = v2;
    v21 = v2 + v20;
    v22 = *(v17 + 56);
    do
    {
      v18(v12, v21, v4);
      sub_232C488A0(v15, v12);
      (*(v17 - 8))(v15, v4);
      v21 += v22;
      --v16;
    }

    while (v16);

    return v25;
  }

  else
  {
  }

  return a2;
}

uint64_t sub_232C0A4F4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_232C48B20(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_232C0A5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232C0DC70(a1, a2, a3);
  v6 = (v5 + 40);
  v8 = v7 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v9 = *v6;
    v13[0] = *(v6 - 1);
    v13[1] = v9;

    v10 = v4(v13);
    if (v3)
    {

      return v8 != 0;
    }

    v11 = v10;
    v6 += 2;
  }

  while ((v11 & 1) == 0);
  return v8 != 0;
}

BOOL sub_232C0A69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232C0DC70(a1, a2, a3);
  v6 = (v5 + 48);
  v8 = v7 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v9 = *(v6 - 1);
    v10 = *v6;
    v13 = *(v6 - 2);
    v14 = v9;
    v15 = v10;
    sub_232BB69F8(v13, v9, v10);
    v11 = v4(&v13);
    sub_232BB6A10(v13, v14, v15);
    if (v3)
    {
      break;
    }

    v6 += 24;
  }

  while ((v11 & 1) == 0);
  return v8 != 0;
}

uint64_t sub_232C0A734@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUStructuredExtractionSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281932528;
  *a1 = result;
  return result;
}

uint64_t sub_232C0A77C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_232B124A8(&qword_27DDC70A8, &unk_232CF81B0);
  sub_232B2D120(v3);
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for CalendarEvent(0);
  v2[14] = v6;
  sub_232B2D120(v6);
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  sub_232B2D120(v9);
  v11 = *(v10 + 64) + 15;
  v2[16] = swift_task_alloc();
  v12 = type metadata accessor for DUStructuredExtractionResult(0);
  v2[17] = v12;
  v13 = *(v12 - 8);
  v2[18] = v13;
  v14 = *(v13 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C0A8DC, 0, 0);
}

void sub_232C0A8DC()
{
  v2 = v1;
  v261 = *(*(v1 + 11) + 24);
  if (!v261)
  {
    sub_232B4A95C();
    v279 = swift_allocError();
    *v246 = 0xD000000000000015;
    *(v246 + 8) = 0x8000000232D04650;
    *(v246 + 16) = 0;
    goto LABEL_146;
  }

  v3 = sub_232B586E8();
  if (!v3)
  {
LABEL_145:
    v279 = MEMORY[0x277D84F90];
    goto LABEL_146;
  }

  v4 = v3;
  v264 = sub_232B26B10(v3);
  if (!v264)
  {

    goto LABEL_145;
  }

  v5 = *(v1 + 20);
  v269 = *(v1 + 18);
  v273 = *(v1 + 17);
  v262 = v4;
  v263 = v4 & 0xC000000000000001;
  v259 = v4 + 32;
  v260 = v4 & 0xFFFFFFFFFFFFFF8;
  v270 = *MEMORY[0x277CCA6E8];
  v265 = *MEMORY[0x277D040C8];
  v258 = v261;
  v6 = 0;
  v278 = v5;
  v279 = MEMORY[0x277D84F90];
  v7 = &off_2789A8000;
  v272 = v2;
  while (1)
  {
    if (v263)
    {
      v8 = MEMORY[0x2383922C0](v6, v262);
    }

    else
    {
      if (v6 >= *(v260 + 16))
      {
        goto LABEL_155;
      }

      v8 = *(v259 + 8 * v6);
    }

    v9 = __OFADD__(v6, 1);
    v10 = v6 + 1;
    if (v9)
    {
      goto LABEL_154;
    }

    v268 = v10;
    v11 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentUIElement_text];
    sub_232B26D70();
    swift_beginAccess();
    v12 = *(v11 + 1);
    if (!v12)
    {

      goto LABEL_139;
    }

    v266 = v0;
    *(v2 + 5) = *v11;
    *(v2 + 6) = v12;
    *(v2 + 7) = 10;
    *(v2 + 8) = 0xE100000000000000;
    *(v2 + 9) = 32;
    *(v2 + 10) = 0xE100000000000000;
    v255 = sub_232B48080();
    v256 = v255;
    v254 = v255;
    v253 = MEMORY[0x277D837D0];
    sub_232CEA3B0();
    v0 = v13;
    v267 = [objc_allocWithZone(MEMORY[0x277D04228]) initWithScannerType:0 passiveIntent:1];
    v14 = sub_232CE9D20();
    v15 = (v0 & 0x1000000000000000) != 0 ? sub_232CE9F10() : sub_232CE9F20();
    v16 = [objc_opt_self() scanString:v14 range:0 configuration:{v15, v267}];

    sub_232B55094();
    v17 = sub_232CE9FE0();

    v18 = v17 >> 62 ? sub_232CEA610() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = v278;
    if (v18)
    {
      break;
    }

LABEL_137:

LABEL_139:
    v6 = v268;
    if (v268 == v264)
    {

LABEL_146:
      v248 = *(v2 + 19);
      v247 = *(v2 + 20);
      v250 = *(v2 + 15);
      v249 = *(v2 + 16);
      v251 = *(v2 + 13);

      v252 = *(v2 + 1);

      v252(v279, v261 == 0);
      return;
    }
  }

  v20 = 0;
  v280 = v17 & 0xC000000000000001;
  v271 = v17 & 0xFFFFFFFFFFFFFF8;
  v276 = v17;
  v277 = v18;
  while (1)
  {
    if (v280)
    {
      v21 = MEMORY[0x2383922C0](v20, v17);
    }

    else
    {
      if (v20 >= *(v271 + 16))
      {
        goto LABEL_153;
      }

      v21 = *(v17 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    [v21 *(v7 + 1136)];
    sub_232CEA110();
    if (v24)
    {
    }

    else
    {
      v283 = v20 + 1;
      v281 = v20;
      v25 = *(v2 + 20);
      v26 = v22;
      v27 = *(v2 + 14);
      v28 = sub_232CE9FB0();
      v18 = MEMORY[0x238391B80](v28);
      v0 = v29;

      v30 = [v26 type];
      v275 = sub_232CE9D50();
      v20 = v31;

      v282 = v26;
      v32 = [v26 category];
      *(v19 + 16) = 0;
      *(v19 + 24) = 0xE000000000000000;
      *(v19 + 32) = 0u;
      *(v19 + 48) = 0u;
      *(v19 + 64) = 0u;
      *(v19 + 80) = 0u;
      v2 = v273;
      v33 = v273[10];
      v34 = sub_232CE8C00();
      v274 = v33;
      sub_232B55484();
      sub_232B12504(v35, v36, v37, v34);
      *(v25 + v273[11]) = 0;
      v7 = v273[12];
      sub_232B55484();
      v41 = sub_232B12504(v38, v39, v40, v27);
      v49 = (v25 + v273[13]);
      *v49 = 0;
      v49[1] = 0;
      v50 = (v25 + v273[14]);
      *v50 = 0u;
      v50[1] = 0u;
      v51 = (v25 + v273[15]);
      *v51 = 0;
      v51[1] = 0;
      *(v25 + v273[16]) = 0;
      *v25 = v18;
      *(v19 + 8) = v0;
      v52 = v32 - 1;
      v23 = v283;
      switch(v52)
      {
        case 0u:
          v19 = v278;
          *(v278 + 16) = 7107189;
          *(v278 + 24) = 0xE300000000000000;
          if (!v265)
          {
            goto LABEL_166;
          }

          v53 = sub_232CE9D50();
          v0 = v54;
          v55 = v275 == v53 && v20 == v54;
          if (v55)
          {
          }

          else
          {
            v56 = sub_232CEA750();

            if ((v56 & 1) == 0)
            {
              sub_232C0DCB4(objc_allocWithZone(MEMORY[0x277CC5680]), sel_initWithDDScannerResult_);
              sub_232C0DB5C();
              if (v57)
              {
                v65 = v57;
                v2 = v272;
                v66 = *(v272 + 16);
                v67 = [v57 URL];
                sub_232CE8BB0();

                sub_232B12504(v66, 0, 1, v34);
                sub_232C0D948(v66, v25 + v274, &qword_27DDC6AD8, &unk_232CF82F0);
                goto LABEL_128;
              }

              sub_232C0DC24(0, v58, v59, v60, v61, v62, v63, v64, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272);

              sub_232C0DA00();
              sub_232C0DBA0();
              v17 = v276;
              goto LABEL_50;
            }
          }

          v127 = sub_232C0DCB4(objc_allocWithZone(MEMORY[0x277CC5670]), sel_initWithDDScannerResult_);
          v17 = v276;
          v18 = v277;
          v20 = v281;
          if (v127)
          {
            v135 = v127;
            v136 = [v127 emailAddress];
            v137 = sub_232CE9D50();
            v139 = v138;

            *(v278 + 80) = v137;
            *(v278 + 88) = v139;
            v2 = v272;
            goto LABEL_129;
          }

          sub_232C0DC24(0, v128, v129, v130, v131, v132, v133, v134, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272);

          sub_232C0DA00();
          sub_232C0DBA0();
          goto LABEL_50;
        case 1u:

          v19 = v278;
          *(v278 + 16) = 0x656E6F6870;
          *(v278 + 24) = 0xE500000000000000;
          v106 = sub_232C0DCB4(objc_allocWithZone(MEMORY[0x277CC5690]), sel_initWithDDScannerResult_);
          if (!v106)
          {
            sub_232C0DC24(0, v107, v108, v109, v110, v111, v112, v113, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272);

            sub_232C0DA00();
            sub_232C0DBA0();
            v17 = v276;
            goto LABEL_57;
          }

          v114 = v106;
          v115 = [v106 phoneNumber];
          v116 = sub_232CE9D50();
          v118 = v117;

          *(v278 + 48) = v116;
          *(v278 + 56) = v118;
          v119 = [v114 label];
          v2 = v272;
          sub_232C0DB5C();
          if (v120)
          {
            v121 = v120;
            v122 = sub_232CE9D50();
            v124 = v123;
          }

          else
          {

            v122 = 0;
            v124 = 0;
          }

          *(v278 + 64) = v122;
          *(v278 + 72) = v124;
          goto LABEL_128;
        case 2u:

          v19 = v278;
          *(v278 + 16) = 0x73736572646461;
          *(v278 + 24) = 0xE700000000000000;
          v68 = sub_232C0DCB4(objc_allocWithZone(MEMORY[0x277CC5698]), sel_initWithDDScannerResult_);
          v17 = v276;
          if (v68)
          {
            v76 = v68;
            sub_232C0D710(v68, &selRef_street);
            v2 = v272;
            sub_232C0DB5C();
            v78 = v76;
            if (!v79)
            {
              goto LABEL_68;
            }

            v80 = sub_232C0D710(v76, &selRef_street);
            if (!v81)
            {
              v77 = sub_232B20540(v270);
              if (v140)
              {
                sub_232B26D70();
                swift_isUniquelyReferenced_nonNull_native();
                sub_232C0DA50();
                sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                sub_232C0DAF8();
                sub_232C0DB68();
                sub_232C0DAA8();
                sub_232C0D9E4();
                sub_232C0D900(&qword_27DDC65C8, v141);
                sub_232C0DA3C();
                v78 = v7;
                sub_232CEA5E0();
              }

              goto LABEL_68;
            }

            v7 = v80;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v90 = sub_232C0DB84(isUniquelyReferenced_nonNull_native, v83, v84, v85, v86, v87, v88, v89, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270);
            sub_232C0DA28(v90, v91);
            if (v9)
            {
              goto LABEL_156;
            }

            sub_232C0DC18();
            sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
            if (sub_232C0DAD8())
            {
              sub_232B20540(v270);
              sub_232C0DAC8();
              v18 = v277;
              v20 = v281;
              if (!v55)
              {
                goto LABEL_149;
              }

              if ((v276 & 1) == 0)
              {
LABEL_41:
                sub_232C0D9A4(v92, v93, v94, v95, v96, v97, v98, v99, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270);
                if (v9)
                {
                  goto LABEL_161;
                }

                *(v284 + 16) = v100;
                v77 = v101;
LABEL_67:
                v17 = v276;
LABEL_68:
                v142 = sub_232C0DC9C(v77, &selRef_city);
                if (!v143)
                {
                  goto LABEL_83;
                }

                sub_232C0DC84();
                if (!v144)
                {
                  v142 = sub_232B20540(v270);
                  if (v165)
                  {
                    sub_232B26D70();
                    swift_isUniquelyReferenced_nonNull_native();
                    sub_232C0DA50();
                    sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                    sub_232C0DAF8();
                    sub_232C0DB68();
                    sub_232C0DAA8();
                    sub_232C0D9E4();
                    sub_232C0D900(&qword_27DDC65C8, v166);
                    sub_232C0DA3C();
                    v78 = v7;
                    sub_232CEA5E0();
                  }

                  goto LABEL_83;
                }

                v145 = sub_232C0DBD4();
                v153 = sub_232C0DB84(v145, v146, v147, v148, v149, v150, v151, v152, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270);
                sub_232C0DA28(v153, v154);
                if (v9)
                {
                  goto LABEL_157;
                }

                sub_232C0DC18();
                sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                if (sub_232C0DAD8())
                {
                  sub_232B20540(v270);
                  sub_232C0DAC8();
                  v18 = v277;
                  v20 = v281;
                  if (!v55)
                  {
                    goto LABEL_149;
                  }

                  if ((v17 & 1) == 0)
                  {
LABEL_75:
                    sub_232C0D9A4(v155, v156, v157, v158, v159, v160, v161, v162, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270);
                    if (v9)
                    {
                      goto LABEL_162;
                    }

                    *(v284 + 16) = v163;
                    v142 = v164;
LABEL_82:
                    v17 = v276;
LABEL_83:
                    v167 = sub_232C0DC9C(v142, &selRef_state);
                    if (!v168)
                    {
                      goto LABEL_98;
                    }

                    sub_232C0DC84();
                    if (!v169)
                    {
                      v167 = sub_232B20540(v270);
                      if (v190)
                      {
                        sub_232B26D70();
                        swift_isUniquelyReferenced_nonNull_native();
                        sub_232C0DA50();
                        sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                        sub_232C0DAF8();
                        sub_232C0DB68();
                        sub_232C0DAA8();
                        sub_232C0D9E4();
                        sub_232C0D900(&qword_27DDC65C8, v191);
                        sub_232C0DA3C();
                        v78 = v7;
                        sub_232CEA5E0();
                      }

                      goto LABEL_98;
                    }

                    v170 = sub_232C0DBD4();
                    v178 = sub_232C0DB84(v170, v171, v172, v173, v174, v175, v176, v177, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270);
                    sub_232C0DA28(v178, v179);
                    if (v9)
                    {
                      goto LABEL_158;
                    }

                    sub_232C0DC18();
                    sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                    if (sub_232C0DAD8())
                    {
                      sub_232B20540(v270);
                      sub_232C0DAC8();
                      v18 = v277;
                      v20 = v281;
                      if (!v55)
                      {
                        goto LABEL_149;
                      }

                      if ((v17 & 1) == 0)
                      {
LABEL_90:
                        sub_232C0D9A4(v180, v181, v182, v183, v184, v185, v186, v187, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270);
                        if (v9)
                        {
                          goto LABEL_163;
                        }

                        *(v284 + 16) = v188;
                        v167 = v189;
LABEL_97:
                        v17 = v276;
LABEL_98:
                        v192 = sub_232C0DC9C(v167, &selRef_postalCode);
                        if (!v193)
                        {
                          goto LABEL_113;
                        }

                        sub_232C0DC84();
                        if (!v194)
                        {
                          v192 = sub_232B20540(v270);
                          if (v215)
                          {
                            sub_232B26D70();
                            swift_isUniquelyReferenced_nonNull_native();
                            sub_232C0DA50();
                            sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                            sub_232C0DAF8();
                            sub_232C0DB68();
                            sub_232C0DAA8();
                            sub_232C0D9E4();
                            sub_232C0D900(&qword_27DDC65C8, v216);
                            sub_232C0DA3C();
                            v78 = v7;
                            sub_232CEA5E0();
                          }

                          goto LABEL_113;
                        }

                        v195 = sub_232C0DBD4();
                        v203 = sub_232C0DB84(v195, v196, v197, v198, v199, v200, v201, v202, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270);
                        sub_232C0DA28(v203, v204);
                        if (v9)
                        {
                          goto LABEL_159;
                        }

                        sub_232C0DC18();
                        sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                        if (sub_232C0DAD8())
                        {
                          sub_232B20540(v270);
                          sub_232C0DAC8();
                          v18 = v277;
                          v20 = v281;
                          if (!v55)
                          {
                            goto LABEL_149;
                          }

                          if ((v17 & 1) == 0)
                          {
LABEL_105:
                            sub_232C0D9A4(v205, v206, v207, v208, v209, v210, v211, v212, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270);
                            if (v9)
                            {
                              goto LABEL_164;
                            }

                            *(v284 + 16) = v213;
                            v192 = v214;
LABEL_112:
                            v17 = v276;
LABEL_113:
                            sub_232C0DC9C(v192, &selRef_country);
                            if (v217)
                            {

                              sub_232C0DC84();
                              if (v218)
                              {
                                v219 = sub_232C0DBD4();
                                v227 = sub_232C0DB84(v219, v220, v221, v222, v223, v224, v225, v226, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270);
                                sub_232C0DA28(v227, v228);
                                if (v9)
                                {
                                  goto LABEL_160;
                                }

                                sub_232C0DC18();
                                sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                                if (sub_232C0DAD8())
                                {
                                  sub_232B20540(v270);
                                  sub_232C0DAC8();
                                  v18 = v277;
                                  v20 = v281;
                                  if (!v55)
                                  {
LABEL_149:
                                    type metadata accessor for NSTextCheckingKey();

                                    sub_232CEA7A0();
                                    return;
                                  }

                                  if ((v17 & 1) == 0)
                                  {
LABEL_120:
                                    sub_232C0D9A4(v229, v230, v231, v232, v233, v234, v235, v236, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270);
                                    if (v9)
                                    {
                                      goto LABEL_165;
                                    }

                                    *(v284 + 16) = v237;
                                    v239 = v238;
LABEL_127:

LABEL_128:
                                    v17 = v276;
LABEL_129:
                                    sub_232C0D848(*(v2 + 20), *(v2 + 19), type metadata accessor for DUStructuredExtractionResult);
                                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                    {
                                      v243 = *(v279 + 16);
                                      sub_232B36078();
                                      v279 = v244;
                                    }

                                    v23 = v283;
                                    v7 = *(v279 + 16);
                                    if (v7 >= *(v279 + 24) >> 1)
                                    {
                                      sub_232B36078();
                                      v279 = v245;
                                    }

                                    v242 = *(v2 + 19);
                                    v0 = *(v2 + 20);

                                    *(v279 + 16) = v7 + 1;
                                    sub_232C0D8A4(v242, v279 + ((*(v269 + 80) + 32) & ~*(v269 + 80)) + *(v269 + 72) * v7, type metadata accessor for DUStructuredExtractionResult);
                                    sub_232C0D7F4();
                                    sub_232C0DBA0();
                                    break;
                                  }
                                }

                                else
                                {
                                  sub_232C0DB5C();
                                  if ((v17 & 1) == 0)
                                  {
                                    goto LABEL_120;
                                  }
                                }

                                sub_232C0DA88();
                                goto LABEL_127;
                              }

                              sub_232B20540(v270);
                              if (v240)
                              {
                                sub_232B26D70();
                                swift_isUniquelyReferenced_nonNull_native();
                                sub_232C0DA50();
                                sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
                                sub_232C0DAF8();
                                sub_232C0DB68();
                                sub_232C0DAA8();
                                sub_232C0D9E4();
                                sub_232C0D900(&qword_27DDC65C8, v241);
                                sub_232C0DA3C();
                                sub_232CEA5E0();

                                goto LABEL_129;
                              }
                            }

                            goto LABEL_129;
                          }
                        }

                        else
                        {
                          sub_232C0DB5C();
                          if ((v17 & 1) == 0)
                          {
                            goto LABEL_105;
                          }
                        }

                        v192 = sub_232C0DA88();
                        goto LABEL_112;
                      }
                    }

                    else
                    {
                      sub_232C0DB5C();
                      if ((v17 & 1) == 0)
                      {
                        goto LABEL_90;
                      }
                    }

                    v167 = sub_232C0DA88();
                    goto LABEL_97;
                  }
                }

                else
                {
                  sub_232C0DB5C();
                  if ((v17 & 1) == 0)
                  {
                    goto LABEL_75;
                  }
                }

                v142 = sub_232C0DA88();
                goto LABEL_82;
              }
            }

            else
            {
              sub_232C0DB5C();
              if ((v276 & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            v77 = sub_232C0DA88();
            goto LABEL_67;
          }

          sub_232C0DC24(0, v69, v70, v71, v72, v73, v74, v75, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272);

          sub_232C0DA00();
          sub_232C0DBA0();
LABEL_57:
          sub_232C0DB5C();
          break;
        case 3u:
          v2 = v272;
          v103 = *(v272 + 13);
          v102 = *(v272 + 14);
          v104 = *(v272 + 12);

          strcpy((v278 + 16), "calendarEvent");
          *(v278 + 30) = -4864;
          sub_232C0B9D4(v282, v18, v0, v103);

          if (sub_232B12480(v103, 1, v102) != 1)
          {
            v126 = *(v272 + 14);
            v125 = *(v272 + 15);
            sub_232C0D8A4(*(v272 + 13), v125, type metadata accessor for CalendarEvent);
            sub_232B13790(v25 + v7, &qword_27DDC70A8, &unk_232CF81B0);
            sub_232C0D8A4(v125, v25 + v7, type metadata accessor for CalendarEvent);
            sub_232B12504(v25 + v7, 0, 1, v126);
            v18 = v277;
            v19 = v278;
            v17 = v276;
            v20 = v281;
            goto LABEL_129;
          }

          v105 = *(v272 + 20);
          v0 = *(v272 + 13);

          sub_232B13790(v0, &qword_27DDC70A8, &unk_232CF81B0);
LABEL_49:
          sub_232C0DA00();
          v18 = v277;
          v19 = v278;
          sub_232C0DBA0();
          v17 = v276;
          v20 = v281;
LABEL_50:
          v23 = v283;
          break;
        default:
          sub_232C0DC24(v41, v42, v43, v44, v45, v46, v47, v48, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272);

          goto LABEL_49;
      }
    }

    ++v20;
    if (v23 == v18)
    {
      goto LABEL_137;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
}

uint64_t sub_232C0B9D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v9 = sub_232B2D120(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_232B3516C();
  v228 = v12 - v13;
  sub_232B20600();
  MEMORY[0x28223BE20](v14);
  sub_232B55558();
  v235 = v15;
  v16 = sub_232B554F0();
  v17 = type metadata accessor for CalendarEvent(v16);
  v18 = sub_232B13F24(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_232B20704();
  v234 = v22 - v21;
  v23 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v24 = sub_232B2D120(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_232B3516C();
  v221 = v27 - v28;
  sub_232B20600();
  MEMORY[0x28223BE20](v29);
  sub_232B55558();
  v230 = v30;
  sub_232B554F0();
  v233 = sub_232CE8AE0();
  v31 = sub_232B48F0C(v233);
  v241 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_232B20704();
  v240 = v36 - v35;
  sub_232B554F0();
  v236 = sub_232CE8F00();
  v37 = sub_232B48F0C(v236);
  v226 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_232B3516C();
  v225 = v41 - v42;
  sub_232B20600();
  MEMORY[0x28223BE20](v43);
  v223 = &v213[-v44];
  sub_232B20600();
  MEMORY[0x28223BE20](v45);
  sub_232B55558();
  v224 = v46;
  sub_232B554F0();
  v47 = sub_232CE8E90();
  v48 = sub_232B48F0C(v47);
  v231 = v49;
  v232 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v48);
  sub_232B20704();
  v239 = v53 - v52;
  sub_232B554F0();
  v54 = sub_232CE8D10();
  v237 = sub_232B48F0C(v54);
  v238 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v237);
  sub_232B3516C();
  v227 = v58 - v59;
  sub_232B20600();
  MEMORY[0x28223BE20](v60);
  v229 = &v213[-v61];
  sub_232B20600();
  v63 = MEMORY[0x28223BE20](v62);
  v65 = &v213[-v64];
  MEMORY[0x28223BE20](v63);
  sub_232B55558();
  v242 = v66;
  sub_232B554F0();
  v67 = sub_232CE89D0();
  v68 = sub_232B48F0C(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  sub_232B20704();
  v75 = v74 - v73;
  v243 = a2;
  v244 = a3;
  sub_232CE8990();
  sub_232B48080();
  sub_232CEA390();
  LOBYTE(a3) = v76;
  (*(v70 + 8))(v75, v67);
  if (a3)
  {
    sub_232B55484();
    v80 = v17;
    return sub_232B12504(v77, v78, v79, v80);
  }

  v222 = v17;
  v220 = a4;
  v81 = [objc_allocWithZone(MEMORY[0x277CC5668]) initWithDDScannerResult_];
  if (!v81)
  {
    goto LABEL_13;
  }

  v82 = v81;
  v83 = [v81 startDate];
  if (!v83)
  {

    goto LABEL_13;
  }

  v84 = v83;
  v219 = v82;
  sub_232CE8CF0();

  v85 = v237;
  v86 = v238 + 32;
  v87 = *(v238 + 32);
  v87(v242, v65, v237);
  v88 = [a1 type];
  v89 = sub_232CE9D50();
  v91 = v90;

  sub_232C0CB84(a1);
  result = *MEMORY[0x277D04198];
  if (!*MEMORY[0x277D04198])
  {
    __break(1u);
    goto LABEL_86;
  }

  sub_232CE9D50();
  sub_232C0DC30();
  v94 = v94 && v91 == v93;
  v95 = MEMORY[0x277D040B0];
  if (v94)
  {
    goto LABEL_27;
  }

  sub_232C0DA64();
  sub_232C0DCCC();
  if (v67)
  {
LABEL_11:
    v218 = 1;
    goto LABEL_29;
  }

  result = *v95;
  if (!*v95)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  sub_232CE9D50();
  sub_232C0DC30();
  if (v94 && v91 == v96)
  {
    goto LABEL_27;
  }

  sub_232C0DA64();
  sub_232C0DCCC();
  if (v67)
  {
    goto LABEL_11;
  }

  result = *MEMORY[0x277D04190];
  if (!*MEMORY[0x277D04190])
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  sub_232CE9D50();
  sub_232C0DC30();
  if (v94 && v91 == v98)
  {
LABEL_27:
    v218 = 1;
  }

  else
  {
    v218 = sub_232C0DA64();
  }

LABEL_29:
  result = *MEMORY[0x277D040A8];
  if (!*MEMORY[0x277D040A8])
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  sub_232CE9D50();
  sub_232C0DC30();
  v101 = v94 && v91 == v100;
  v216 = v87;
  if (v101)
  {
    goto LABEL_49;
  }

  sub_232C0DA64();
  sub_232C0DCCC();
  if (v67)
  {
    goto LABEL_50;
  }

  result = *v95;
  if (!*v95)
  {
    goto LABEL_88;
  }

  sub_232CE9D50();
  sub_232C0DC30();
  if (v94 && v91 == v102)
  {
    goto LABEL_49;
  }

  sub_232C0DA64();
  sub_232C0DCCC();
  if (v67)
  {
LABEL_50:

    goto LABEL_51;
  }

  result = *MEMORY[0x277D040A0];
  if (!*MEMORY[0x277D040A0])
  {
LABEL_90:
    __break(1u);
    return result;
  }

  if (v89 == sub_232CE9D50() && v91 == v104)
  {
LABEL_49:

    goto LABEL_50;
  }

  v106 = sub_232CEA750();

  if ((v106 & 1) == 0)
  {
    if (v218)
    {
      v214 = 0;
      goto LABEL_52;
    }

    (*(v238 + 8))(v242, v85);

LABEL_13:
    sub_232B55484();
    v80 = v222;
    return sub_232B12504(v77, v78, v79, v80);
  }

LABEL_51:
  v214 = 1;
  if ((v218 & 1) == 0)
  {
    v217 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

LABEL_52:
  sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
  sub_232B4D640();
  v108 = sub_232CE8E80();
  sub_232B48F0C(v108);
  v110 = v109;
  v112 = *(v111 + 72);
  v113 = (*(v109 + 80) + 32) & ~*(v109 + 80);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_232CF8180;
  v115 = v114 + v113;
  v116 = *(v110 + 104);
  v116(v115, *MEMORY[0x277CC9980], v108);
  v116(v115 + v112, *MEMORY[0x277CC99A0], v108);
  v116(v115 + 2 * v112, *MEMORY[0x277CC99A8], v108);
  v107 = sub_232C0D110(v114);
  v217 = v107;
LABEL_54:
  v243 = 0x65626D754E796144;
  v244 = 0xE900000000000072;
  MEMORY[0x28223BE20](v107);
  sub_232B55380();
  v117 = &v243;
  *(v118 - 16) = &v243;
  v119 = sub_232C0DBAC();
  v122 = sub_232C0A5F8(v119, v120, v121);
  v215 = v86;
  if (v122)
  {
    goto LABEL_57;
  }

  v243 = 0x6D754E68746E6F4DLL;
  v244 = 0xEB00000000726562;
  MEMORY[0x28223BE20](v122);
  sub_232B55380();
  *(v123 - 16) = &v243;
  v124 = sub_232C0DBAC();
  v122 = sub_232C0A5F8(v124, v125, v126);
  if (v122 || (sub_232C0DB30(), MEMORY[0x28223BE20](v127), sub_232B55380(), *(v128 - 16) = &v243, v129 = sub_232C0DBAC(), v122 = sub_232C0A5F8(v129, v130, v131)))
  {
LABEL_57:
    v243 = 0x65626D754E796144;
    v244 = 0xE900000000000072;
    MEMORY[0x28223BE20](v122);
    sub_232B55380();
    *(v132 - 16) = &v243;
    v133 = sub_232C0DBAC();
    v136 = sub_232C0A5F8(v133, v134, v135);
    if (v136)
    {
      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
      sub_232B4D640();
      v137 = sub_232CE8E80();
      sub_232B48F0C(v137);
      v139 = v138;
      v141 = *(v140 + 72);
      v142 = sub_232C0DBF0();
      *(v142 + 16) = xmmword_232CF6460;
      (*(v139 + 104))(&v243 + v142, *MEMORY[0x277CC9968], v137);
      v136 = sub_232C0DC48();
      v217 = v136;
    }

    v243 = 0x6D754E68746E6F4DLL;
    v244 = 0xEB00000000726562;
    MEMORY[0x28223BE20](v136);
    sub_232B55380();
    *(v143 - 16) = &v243;
    v144 = sub_232C0DBAC();
    if (sub_232C0A5F8(v144, v145, v146))
    {
      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
      sub_232B4D640();
      v147 = sub_232CE8E80();
      sub_232B48F0C(v147);
      v149 = v148;
      v151 = *(v150 + 72);
      v152 = sub_232C0DBF0();
      *(v152 + 16) = xmmword_232CF6460;
      (*(v149 + 104))(&v243 + v152, *MEMORY[0x277CC9998], v147);
      v153 = sub_232C0DC48();
      sub_232C0DC64();
      v154 = v240;
    }

    else
    {
      sub_232C0DC64();
      v154 = v240;
      v153 = v217;
    }

    sub_232C0DB30();
    MEMORY[0x28223BE20](v155);
    sub_232B55380();
    *(v156 - 16) = &v243;
    v157 = sub_232C0DBAC();
    v160 = sub_232C0A5F8(v157, v158, v159);

    if (v160)
    {
      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
      sub_232B4D640();
      v161 = sub_232CE8E80();
      sub_232B48F0C(v161);
      v163 = v162;
      v165 = *(v164 + 72);
      v166 = (*(v162 + 80) + 32) & ~*(v162 + 80);
      v167 = swift_allocObject();
      *(v167 + 16) = xmmword_232CF6460;
      (*(v163 + 104))(v167 + v166, *MEMORY[0x277CC9988], v161);
      sub_232C0A394(v167, v153);
    }

    v168 = v241;
  }

  else
  {

    if (!v214)
    {
      sub_232C0DC64();
      v154 = v240;
      v168 = v241;
      v169 = v219;
      goto LABEL_66;
    }

    sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
    sub_232B4D640();
    v200 = sub_232CE8E80();
    sub_232B48F0C(v200);
    v202 = v201;
    v204 = *(v203 + 72);
    v205 = (*(v201 + 80) + 32) & ~*(v201 + 80);
    v206 = swift_allocObject();
    *(v206 + 16) = xmmword_232CF8180;
    v207 = v206 + v205;
    v117 = *(v202 + 104);
    (v117)(v207, *MEMORY[0x277CC9988], v200);
    (v117)(v207 + v204, *MEMORY[0x277CC9998], v200);
    (v117)(v207 + 2 * v204, *MEMORY[0x277CC9968], v200);
    sub_232C0DC48();
    sub_232C0DC64();
    v154 = v240;
    v168 = v241;
  }

  v169 = v219;
LABEL_66:
  sub_232CE8E50();
  v170 = [v169 startTimeZone];
  if (v170)
  {
    v171 = v170;
    v172 = v223;
    sub_232CE8EE0();

    v173 = v226;
    v174 = v224;
    v175 = v236;
    (*(v226 + 32))(v224, v172, v236);
    (*(v173 + 16))(v225, v174, v175);
    v168 = v241;
    sub_232CE8E70();
    (*(v173 + 8))(v174, v175);
    v154 = v240;
  }

  sub_232CE8E20();
  v176 = [v169 startTimeZone];
  if (v176)
  {
    v177 = v176;
    v178 = v230;
    sub_232CE8EE0();

    v179 = 0;
  }

  else
  {
    v179 = 1;
    v178 = v230;
  }

  v180 = v222;
  sub_232B12504(v178, v179, 1, v236);
  sub_232CE8AD0();
  (*(v168 + 16))(*(v180 + 20) + 0x6D754E68746E6F4DLL, v154, 0xEB00000000726562);
  v235 = *(v180 + 24);
  sub_232B55484();
  sub_232B12504(v181, v182, v183, 0xEB00000000726562);
  MEMORY[0x6D754E68746E6F4D] = (v218 & 1) == 0;
  sub_232B55484();
  sub_232B12504(v184, v185, v186, 0xEB00000000726562);
  v187 = v219;
  v188 = [v219 endDate];
  if (v188)
  {
    v189 = v188;
    v190 = v227;
    sub_232CE8CF0();

    v191 = v229;
    v192 = v237;
    v216(v229, v190, v237);
    v193 = v228;
    v194 = v239;
    sub_232CE8E20();

    sub_232B12504(v193, 0, 1, 0xEB00000000726562);
    sub_232C0D948(v193, v117, &qword_27DDC70B0, &unk_232CF81C0);
    if (!sub_232B12480(v117, 1, 0xEB00000000726562))
    {
      v195 = [v219 endTimeZone];
      if (v195)
      {
        v196 = v195;
        v197 = v221;
        sub_232CE8EE0();

        v198 = 0;
      }

      else
      {
        v198 = 1;
        v197 = v221;
      }

      sub_232B12504(v197, v198, 1, v236);
      sub_232CE8AD0();
      v194 = v239;
      v191 = v229;
    }

    v208 = *(v238 + 8);
    v208(v191, v192);
    (*(v241 + 8))(v240, 0xEB00000000726562);
    (*(v231 + 8))(v194, v232);
    v208(v242, v192);
    sub_232B552D0(v117, v235 + 0x6D754E68746E6F4DLL);
    v199 = v220;
  }

  else
  {

    (*(v168 + 8))(v154, 0xEB00000000726562);
    (*(v231 + 8))(v239, v232);
    (*(v238 + 8))(v242, v237);
    v199 = v220;
  }

  sub_232C0D848(0x6D754E68746E6F4DLL, v199, type metadata accessor for CalendarEvent);
  sub_232C0DC3C();
  sub_232B12504(v209, v210, v211, v212);
  sub_232B13790(v117, &qword_27DDC70B0, &unk_232CF81C0);
  return sub_232C0D7F4();
}

void sub_232C0CB84(void *a1)
{
  v1 = sub_232C0D76C(a1);
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = sub_232B26B10(v1);
  if (!v3)
  {
LABEL_26:

    return;
  }

  v4 = v3;
  if (v3 < 1)
  {
    goto LABEL_31;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2383922C0](v5, v2);
    }

    else
    {
      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = [v7 type];
    v10 = sub_232CE9D50();
    v12 = v11;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = *(v6 + 16);
      sub_232C0DC3C();
      sub_232B35ECC();
      v6 = v26;
    }

    v13 = *(v6 + 16);
    if (v13 >= *(v6 + 24) >> 1)
    {
      sub_232C0DC3C();
      sub_232B35ECC();
      v6 = v27;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v12;
    v15 = sub_232C0CB84(v8);
    v16 = *(v15 + 16);
    v17 = *(v6 + 16);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    v19 = v15;
    v20 = *(v6 + 24) >> 1;
    if (v20 < v18)
    {
      if (v17 > v18)
      {
        v28 = *(v6 + 16);
      }

      sub_232C0DC3C();
      sub_232B35ECC();
      v6 = v29;
      v17 = *(v29 + 16);
      v20 = *(v29 + 24) >> 1;
      if (*(v19 + 16))
      {
LABEL_15:
        if ((v20 - v17) < v16)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v22 = *(v6 + 16);
          v23 = __OFADD__(v22, v16);
          v24 = v22 + v16;
          if (v23)
          {
            goto LABEL_30;
          }

          *(v6 + 16) = v24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v21 = *(v15 + 16);
      if (v16)
      {
        goto LABEL_15;
      }
    }

    if (v16)
    {
      goto LABEL_28;
    }

LABEL_23:
    ++v5;

    if (v4 == v5)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_232C0CDEC(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_232B4A838;

  return sub_232C0A77C(a2);
}

uint64_t sub_232C0CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_232CEA750() & 1;
  }
}

uint64_t sub_232C0CECC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9[0] = a1;
  v9[1] = a2;
  v10 = a3;
  v7[0] = a4;
  v7[1] = a5;
  v8 = a6;
  return static DUFoundInEventLLMImplementationError.== infix(_:_:)(v9, v7) & 1;
}

void sub_232C0CF18(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_232B124A8(&qword_27DDC7B88, &qword_232CFBE08), v2 = sub_232C0DBB8(), v3 = v2, (v26 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v24 = v1;
    v25 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v25 + 8 * v4++);
      v7 = *(v3 + 40);
      sub_232CE9D50();
      sub_232CEA820();
      v27 = v6;
      sub_232CE9E40();
      v8 = sub_232CEA850();

      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v14 = *(*(v3 + 48) + 8 * v10);
        v15 = sub_232CE9D50();
        v17 = v16;
        if (v15 == sub_232CE9D50() && v17 == v18)
        {

          goto LABEL_17;
        }

        v20 = sub_232CEA750();

        if (v20)
        {

          goto LABEL_17;
        }

        v8 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v27;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v23;
LABEL_17:
      v1 = v24;
      if (v4 == v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_232C0D110(uint64_t a1)
{
  v2 = sub_232CE8E80();
  v3 = sub_232B48F0C(v2);
  v36 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B3516C();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  sub_232B55558();
  v39 = v11;
  if (!*(a1 + 16))
  {
    v13 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  sub_232B124A8(&qword_27DDC7B80, qword_232CFE500);
  result = sub_232C0DBB8();
  v13 = result;
  v35 = *(a1 + 16);
  if (!v35)
  {
LABEL_15:

    return v13;
  }

  v14 = 0;
  v38 = result + 56;
  v33 = a1;
  v34 = a1 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v15 = (v36 + 8);
  while (v14 < *(a1 + 16))
  {
    v16 = *(v36 + 72);
    v37 = v14 + 1;
    v17 = *(v36 + 16);
    v17(v39, v34 + v16 * v14, v2);
    v18 = *(v13 + 40);
    sub_232C0DB18();
    sub_232C0D900(&qword_2814E25D0, v19);
    v20 = sub_232CE9C80();
    v21 = ~(-1 << *(v13 + 32));
    while (1)
    {
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v38 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) == 0)
      {
        break;
      }

      v26 = v13;
      v17(v9, *(v13 + 48) + v22 * v16, v2);
      sub_232C0DB18();
      sub_232C0D900(&qword_2814E25C8, v27);
      v28 = sub_232CE9CF0();
      v29 = *v15;
      (*v15)(v9, v2);
      if (v28)
      {
        result = (v29)(v39, v2);
        v13 = v26;
        goto LABEL_12;
      }

      v20 = v22 + 1;
      v13 = v26;
    }

    *(v38 + 8 * v23) = v25 | v24;
    result = (*(v36 + 32))(*(v13 + 48) + v22 * v16, v39, v2);
    v30 = *(v13 + 16);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_17;
    }

    *(v13 + 16) = v32;
LABEL_12:
    v14 = v37;
    a1 = v33;
    if (v37 == v35)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_232C0D410(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  sub_232B124A8(&qword_27DDC7B90, &qword_232CFBE10);
  result = sub_232C0DBB8();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_232CEA820();

    sub_232CE9E40();
    result = sub_232CEA850();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_232CEA750() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}