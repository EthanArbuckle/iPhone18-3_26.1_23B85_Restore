uint64_t sub_22BFC0760(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFC2E28(&qword_27D90CAD8, type metadata accessor for ResponseGenerationProtoResponseGenerationInput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFC07E0(uint64_t a1)
{
  v2 = sub_22BFC2E28(&qword_27D90CAB0, type metadata accessor for ResponseGenerationProtoResponseGenerationInput);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFC0850()
{
  sub_22BFC2E28(&qword_27D90CAB0, type metadata accessor for ResponseGenerationProtoResponseGenerationInput);

  return sub_22C270774();
}

uint64_t sub_22BFC08EC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CA18);
  sub_22BE199F4(v0, qword_27D90CA18);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tool_definition";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action_created";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "statement_outcome";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "undo_operation";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "response_manifest";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "return_value_type_display_representation";
  *(v18 + 1) = 40;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ResponseGenerationProtoStatementResultDigest.decodeMessage<A>(decoder:)()
{
  sub_22BE38384();
  while (1)
  {
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE18E2C();
        sub_22BFC0C9C();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22BFC0D3C();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22BFC0DF0();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22BFC0EA4();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22BFC0F18();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22BFC0FCC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFC0C9C()
{
  sub_22C272674();
  sub_22BFC2E28(&qword_27D90C790, MEMORY[0x277D72898]);
  return sub_22C2706F4();
}

uint64_t sub_22BFC0D3C()
{
  v0 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 20);
  type metadata accessor for TranscriptProtoAction(0);
  sub_22BFC2E28(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction);
  return sub_22C2706F4();
}

uint64_t sub_22BFC0DF0()
{
  v0 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 24);
  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BFC2E28(&qword_2810744D0, type metadata accessor for TranscriptProtoStatementOutcome);
  return sub_22C2706F4();
}

uint64_t sub_22BFC0EA4()
{
  v0 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 28);
  sub_22BFC2DD4();
  return sub_22C2705D4();
}

uint64_t sub_22BFC0F18()
{
  v0 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 32);
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_22BFC2E28(&qword_27D90CAE8, type metadata accessor for TranscriptProtoResponseManifest);
  return sub_22C2706F4();
}

uint64_t sub_22BFC0FCC()
{
  v0 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 36);
  sub_22C272644();
  sub_22BFC2E28(&qword_27D90CAE0, MEMORY[0x277D72880]);
  return sub_22C2706F4();
}

uint64_t ResponseGenerationProtoStatementResultDigest.traverse<A>(visitor:)()
{
  sub_22BE38384();
  result = sub_22BFC114C(v0, v4, v3, v2);
  if (!v1)
  {
    v6 = sub_22BE17D78();
    sub_22BFC134C(v6, v7, v8, v9);
    v10 = sub_22BE17D78();
    sub_22BFC1520(v10, v11, v12, v13);
    v14 = sub_22BE17D78();
    sub_22BFC16F4(v14);
    v15 = sub_22BE17D78();
    sub_22BFC1784(v15, v16, v17, v18);
    v19 = sub_22BE17D78();
    sub_22BFC1958(v19, v20, v21, v22);
    v23 = v0 + *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 40);
    return sub_22C270494();
  }

  return result;
}

uint64_t sub_22BFC114C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = sub_22C272674();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE2B9D0(a1, v8, &qword_27D90C180, &unk_22C296C40);
  if (sub_22BE1AEA8(v8, 1, v9) == 1)
  {
    return sub_22BE33928(v8, &qword_27D90C180, &unk_22C296C40);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_22BFC2E28(&qword_27D90C790, MEMORY[0x277D72898]);
  sub_22C270884();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_22BFC134C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_22BE5CE4C(&qword_27D90CA78, &qword_22C2B5880);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoAction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_22BE2B9D0(a1 + *(v13 + 20), v8, &qword_27D90CA78, &qword_22C2B5880);
  if (sub_22BE1AEA8(v8, 1, v9) == 1)
  {
    return sub_22BE33928(v8, &qword_27D90CA78, &qword_22C2B5880);
  }

  sub_22BFC2A84(v8, v12, type metadata accessor for TranscriptProtoAction);
  sub_22BFC2E28(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction);
  sub_22C270884();
  return sub_22BFC2A2C(v12, type metadata accessor for TranscriptProtoAction);
}

uint64_t sub_22BFC1520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_22BE5CE4C(&qword_27D90CA68, &unk_22C296C50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_22BE2B9D0(a1 + *(v13 + 24), v8, &qword_27D90CA68, &unk_22C296C50);
  if (sub_22BE1AEA8(v8, 1, v9) == 1)
  {
    return sub_22BE33928(v8, &qword_27D90CA68, &unk_22C296C50);
  }

  sub_22BFC2A84(v8, v12, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_22BFC2E28(&qword_2810744D0, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_22C270884();
  return sub_22BFC2A2C(v12, type metadata accessor for TranscriptProtoStatementOutcome);
}

uint64_t sub_22BFC16F4(uint64_t a1)
{
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    sub_22BFC2DD4();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t sub_22BFC1784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_22BE5CE4C(&qword_27D90CA58, &unk_22C2AE550);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_22BE2B9D0(a1 + *(v13 + 32), v8, &qword_27D90CA58, &unk_22C2AE550);
  if (sub_22BE1AEA8(v8, 1, v9) == 1)
  {
    return sub_22BE33928(v8, &qword_27D90CA58, &unk_22C2AE550);
  }

  sub_22BFC2A84(v8, v12, type metadata accessor for TranscriptProtoResponseManifest);
  sub_22BFC2E28(&qword_27D90CAE8, type metadata accessor for TranscriptProtoResponseManifest);
  sub_22C270884();
  return sub_22BFC2A2C(v12, type metadata accessor for TranscriptProtoResponseManifest);
}

uint64_t sub_22BFC1958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = sub_22BE5CE4C(&qword_27D90CA48, &qword_22C296C60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = sub_22C272644();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_22BE2B9D0(a1 + *(v14 + 36), v8, &qword_27D90CA48, &qword_22C296C60);
  if (sub_22BE1AEA8(v8, 1, v9) == 1)
  {
    return sub_22BE33928(v8, &qword_27D90CA48, &qword_22C296C60);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_22BFC2E28(&qword_27D90CAE0, MEMORY[0x277D72880]);
  sub_22C270884();
  return (*(v10 + 8))(v13, v9);
}

uint64_t static ResponseGenerationProtoStatementResultDigest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v145 = a1;
  v146 = a2;
  v132 = sub_22C272644();
  v2 = sub_22BE179D8(v132);
  v128 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE17A44();
  v126 = v6;
  v7 = sub_22BE5CE4C(&qword_27D90CA48, &qword_22C296C60);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v127 = v11;
  v130 = sub_22BE5CE4C(&qword_27D90CA50, &qword_22C2968D8);
  sub_22BE18000(v130);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v131 = v15;
  v135 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v16 = sub_22BE18000(v135);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  v129 = v19;
  v20 = sub_22BE5CE4C(&qword_27D90CA58, &unk_22C2AE550);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE1A174();
  v133 = v24;
  v134 = sub_22BE5CE4C(&qword_27D90CA60, &qword_22C2968E0);
  sub_22BE18000(v134);
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE1A174();
  v136 = v28;
  v141 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v29 = sub_22BE18000(v141);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17A44();
  v137 = v32;
  v33 = sub_22BE5CE4C(&qword_27D90CA68, &unk_22C296C50);
  sub_22BE19448(v33);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1A174();
  v138 = v37;
  v140 = sub_22BE5CE4C(&qword_27D90CA70, &qword_22C2968E8);
  sub_22BE18000(v140);
  v39 = *(v38 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  sub_22BE1A174();
  v142 = v41;
  v144 = type metadata accessor for TranscriptProtoAction(0);
  v42 = sub_22BE18000(v144);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BE17A44();
  v139 = v45;
  v46 = sub_22BE5CE4C(&qword_27D90CA78, &qword_22C2B5880);
  sub_22BE19448(v46);
  v48 = *(v47 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v49);
  sub_22BE1A174();
  v143 = v50;
  v51 = sub_22BE5CE4C(&qword_27D90CA80, &qword_22C2968F0);
  sub_22BE18000(v51);
  v53 = *(v52 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v54);
  v56 = &v126 - v55;
  v57 = sub_22C272674();
  v58 = sub_22BE179D8(v57);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v58);
  v64 = &v126 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
  sub_22BE19448(v65);
  v67 = *(v66 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v68);
  v70 = &v126 - v69;
  v71 = sub_22BE5CE4C(&qword_27D90C188, &qword_22C290E48);
  sub_22BE19448(v71);
  v73 = *(v72 + 64);
  sub_22BE179FC();
  v75 = MEMORY[0x28223BE20](v74);
  v77 = &v126 - v76;
  v78 = *(v75 + 56);
  sub_22BE2B9D0(v145, &v126 - v76, &qword_27D90C180, &unk_22C296C40);
  sub_22BE2B9D0(v146, &v77[v78], &qword_27D90C180, &unk_22C296C40);
  sub_22BE1AB5C(v77, 1, v57);
  if (v79)
  {
    sub_22BE1AB5C(&v77[v78], 1, v57);
    if (v79)
    {
      sub_22BE33928(v77, &qword_27D90C180, &unk_22C296C40);
      goto LABEL_11;
    }

LABEL_9:
    v80 = &qword_27D90C188;
    v81 = &qword_22C290E48;
    v82 = v77;
LABEL_31:
    sub_22BE33928(v82, v80, v81);
    goto LABEL_32;
  }

  sub_22BE2B9D0(v77, v70, &qword_27D90C180, &unk_22C296C40);
  sub_22BE1AB5C(&v77[v78], 1, v57);
  if (v79)
  {
    (*(v60 + 8))(v70, v57);
    goto LABEL_9;
  }

  (*(v60 + 32))(v64, &v77[v78], v57);
  sub_22BFC2E28(&qword_27D909248, MEMORY[0x277D72898]);
  v83 = sub_22C272FD4();
  v84 = *(v60 + 8);
  v84(v64, v57);
  v84(v70, v57);
  sub_22BE33928(v77, &qword_27D90C180, &unk_22C296C40);
  if ((v83 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  v85 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v86 = v85[5];
  v87 = *(v51 + 48);
  v88 = v145;
  sub_22BE1BACC(v145 + v86, v56);
  v89 = v146 + v86;
  v90 = v146;
  sub_22BE1BACC(v89, &v56[v87]);
  sub_22BE1AB5C(v56, 1, v144);
  if (v79)
  {
    sub_22BE18A84();
    if (v79)
    {
      sub_22BE33928(v56, &qword_27D90CA78, &qword_22C2B5880);
      goto LABEL_21;
    }

LABEL_19:
    v80 = &qword_27D90CA80;
    v81 = &qword_22C2968F0;
LABEL_30:
    v82 = v56;
    goto LABEL_31;
  }

  v91 = v143;
  sub_22BE2B9D0(v56, v143, &qword_27D90CA78, &qword_22C2B5880);
  sub_22BE18A84();
  if (v92)
  {
    sub_22BFC2A2C(v91, type metadata accessor for TranscriptProtoAction);
    goto LABEL_19;
  }

  sub_22BFC2A84(&v56[v87], v139, type metadata accessor for TranscriptProtoAction);
  static TranscriptProtoAction.== infix(_:_:)();
  sub_22BE1A31C();
  sub_22BFC2A2C(v91, type metadata accessor for TranscriptProtoAction);
  sub_22BE33928(v56, &qword_27D90CA78, &qword_22C2B5880);
  if ((&qword_22C2B5880 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  v93 = v85[6];
  v94 = *(v140 + 48);
  v95 = v142;
  sub_22BE1BACC(v88 + v93, v142);
  v96 = v90 + v93;
  v56 = v95;
  sub_22BE1BACC(v96, v95 + v94);
  sub_22BE1AB5C(v95, 1, v141);
  if (v79)
  {
    sub_22BE18A84();
    if (v79)
    {
      sub_22BE33928(v95, &qword_27D90CA68, &unk_22C296C50);
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v97 = v95;
  v98 = v138;
  sub_22BE2B9D0(v97, v138, &qword_27D90CA68, &unk_22C296C50);
  sub_22BE18A84();
  if (v99)
  {
    sub_22BFC2A2C(v98, type metadata accessor for TranscriptProtoStatementOutcome);
LABEL_29:
    v80 = &qword_27D90CA70;
    v81 = &qword_22C2968E8;
    goto LABEL_30;
  }

  sub_22BFC2A84(&v56[v94], v137, type metadata accessor for TranscriptProtoStatementOutcome);
  static TranscriptProtoStatementOutcome.== infix(_:_:)();
  sub_22BE1A31C();
  sub_22BFC2A2C(v98, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_22BE33928(v56, &qword_27D90CA68, &unk_22C296C50);
  if ((&unk_22C296C50 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  v102 = v85[7];
  v103 = *(v88 + v102);
  v104 = *(v90 + v102);
  if (v103 == 2)
  {
    if (v104 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v104 == 2 || ((v104 ^ v103) & 1) != 0)
  {
    goto LABEL_32;
  }

  v105 = v85[8];
  v106 = *(v134 + 48);
  v107 = v136;
  sub_22BE1BACC(v88 + v105, v136);
  v108 = v90 + v105;
  v56 = v107;
  sub_22BE1BACC(v108, v107 + v106);
  sub_22BE1AB5C(v107, 1, v135);
  if (v79)
  {
    sub_22BE18A84();
    if (v79)
    {
      sub_22BE33928(v107, &qword_27D90CA58, &unk_22C2AE550);
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v109 = v107;
  v110 = v133;
  sub_22BE2B9D0(v109, v133, &qword_27D90CA58, &unk_22C2AE550);
  sub_22BE18A84();
  if (v111)
  {
    sub_22BFC2A2C(v110, type metadata accessor for TranscriptProtoResponseManifest);
LABEL_48:
    v80 = &qword_27D90CA60;
    v81 = &qword_22C2968E0;
    goto LABEL_30;
  }

  sub_22BFC2A84(&v56[v106], v129, type metadata accessor for TranscriptProtoResponseManifest);
  static TranscriptProtoResponseManifest.== infix(_:_:)();
  sub_22BE1A31C();
  sub_22BFC2A2C(v110, type metadata accessor for TranscriptProtoResponseManifest);
  sub_22BE33928(v56, &qword_27D90CA58, &unk_22C2AE550);
  if ((&unk_22C2AE550 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_50:
  v112 = v85[9];
  v113 = v131;
  v114 = *(v130 + 48);
  sub_22BE1BACC(v88 + v112, v131);
  sub_22BE1BACC(v90 + v112, v113 + v114);
  v115 = v132;
  sub_22BE1AB5C(v113, 1, v132);
  if (v79)
  {
    sub_22BE1AB5C(v113 + v114, 1, v115);
    if (v79)
    {
      sub_22BE33928(v113, &qword_27D90CA48, &qword_22C296C60);
LABEL_60:
      v123 = v85[10];
      sub_22C2704B4();
      sub_22BE18674();
      sub_22BFC2E28(v124, v125);
      v100 = sub_22C272FD4();
      return v100 & 1;
    }

    goto LABEL_58;
  }

  v116 = v127;
  sub_22BE2B9D0(v113, v127, &qword_27D90CA48, &qword_22C296C60);
  sub_22BE1AB5C(v113 + v114, 1, v115);
  if (v117)
  {
    (*(v128 + 8))(v116, v115);
LABEL_58:
    v80 = &qword_27D90CA50;
    v81 = &qword_22C2968D8;
    v82 = v113;
    goto LABEL_31;
  }

  v118 = v128;
  v119 = v113 + v114;
  v120 = v126;
  (*(v128 + 32))(v126, v119, v115);
  sub_22BFC2E28(&qword_27D90CA88, MEMORY[0x277D72880]);
  v121 = sub_22C272FD4();
  v122 = *(v118 + 8);
  v122(v120, v115);
  v122(v116, v115);
  sub_22BE33928(v113, &qword_27D90CA48, &qword_22C296C60);
  if (v121)
  {
    goto LABEL_60;
  }

LABEL_32:
  v100 = 0;
  return v100 & 1;
}

uint64_t sub_22BFC2784(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22C274154();
  a1(0);
  sub_22BFC2E28(a2, a3);
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t sub_22BFC2868(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFC2E28(&qword_27D90CAD0, type metadata accessor for ResponseGenerationProtoStatementResultDigest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFC28E8(uint64_t a1)
{
  v2 = sub_22BFC2E28(&qword_27D90CA38, type metadata accessor for ResponseGenerationProtoStatementResultDigest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFC2958()
{
  sub_22BFC2E28(&qword_27D90CA38, type metadata accessor for ResponseGenerationProtoStatementResultDigest);

  return sub_22C270774();
}

unint64_t sub_22BFC29D8()
{
  result = qword_27D90CA30;
  if (!qword_27D90CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90CA30);
  }

  return result;
}

uint64_t sub_22BFC2A2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BE18000(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BFC2A84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BE18000(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_22BFC2AE8()
{
  result = qword_27D90CA98;
  if (!qword_27D90CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90CA98);
  }

  return result;
}

unint64_t sub_22BFC2B40()
{
  result = qword_27D90CAA0;
  if (!qword_27D90CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90CAA0);
  }

  return result;
}

unint64_t sub_22BFC2DD4()
{
  result = qword_27D90CAF0;
  if (!qword_27D90CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90CAF0);
  }

  return result;
}

uint64_t sub_22BFC2E28(unint64_t *a1, void (*a2)(uint64_t))
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

IntelligenceFlowPlannerSupport::ResponseGenerationProtoResponseMode_optional __swiftcall ResponseGenerationProtoResponseMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.init()()
{
  v1 = sub_22BE1A5E4();
  v2 = v0 + *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(v1) + 36);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.unknownFields.getter()
{
  v2 = sub_22BE1A5E4();
  v3 = *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(v2) + 36);
  v4 = sub_22C2704B4();
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t ResponseGenerationProtoResponseGenerationInput.unknownFields.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(v2) + 36);
  v4 = sub_22C2704B4();
  sub_22BE18000(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t ResponseGenerationProtoResponseGenerationInput.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(v0) + 36);
  return sub_22BE18504();
}

uint64_t ResponseGenerationProtoStatementResultDigest.init()()
{
  sub_22BE1A5E4();
  v1 = sub_22C272674();
  sub_22BE191D8(v0, v2, v3, v1);
  v4 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v5 = v4[5];
  v6 = type metadata accessor for TranscriptProtoAction(0);
  sub_22BE1AF78(v6);
  v7 = v4[6];
  v8 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BE1AF78(v8);
  *(v0 + v4[7]) = 2;
  v9 = v4[8];
  v10 = type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_22BE1AF78(v10);
  v11 = v4[9];
  v12 = sub_22C272644();
  sub_22BE1AF78(v12);
  v13 = v0 + v4[10];
  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t ResponseGenerationProtoStatementResultDigest.unknownFields.getter()
{
  v2 = sub_22BE1A5E4();
  v3 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(v2) + 40);
  v4 = sub_22C2704B4();
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t ResponseGenerationProtoStatementResultDigest.unknownFields.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(v2) + 40);
  v4 = sub_22C2704B4();
  sub_22BE18000(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t ResponseGenerationProtoStatementResultDigest.unknownFields.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0) + 40);
  return sub_22BE18504();
}

uint64_t sub_22BFC321C@<X0>(uint64_t *a1@<X8>)
{
  result = ResponseGenerationProtoResponseMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22BFC324C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BFC29D8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ResponseGenerationProtoResponseGenerationInput.clientRequestID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22BE19454();
}

uint64_t ResponseGenerationProtoResponseGenerationInput.clientRequestID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.utterance.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22BE19454();
}

uint64_t ResponseGenerationProtoResponseGenerationInput.utterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.responseLocale.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_22BE19454();
}

uint64_t ResponseGenerationProtoResponseGenerationInput.responseLocale.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.statementResultDigests.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.init(clientRequestID:utterance:responseMode:responseLocale:statementResultDigests:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a5;
  v18 = a9 + *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
  result = _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v17;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.actionCreated.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE3E620(&qword_27D90CA78, &qword_22C2B5880, *(v1 + 20));
}

uint64_t ResponseGenerationProtoStatementResultDigest.actionCreated.setter()
{
  v0 = sub_22BE17BC4();
  v1 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE3B0B4(&qword_27D90CA78, &qword_22C2B5880, *(v1 + 20));
}

uint64_t ResponseGenerationProtoStatementResultDigest.actionCreated.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0) + 20);
  return sub_22BE18504();
}

uint64_t ResponseGenerationProtoStatementResultDigest.statementOutcome.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE3E620(&qword_27D90CA68, &unk_22C296C50, *(v1 + 24));
}

uint64_t ResponseGenerationProtoStatementResultDigest.statementOutcome.setter()
{
  v0 = sub_22BE17BC4();
  v1 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE3B0B4(&qword_27D90CA68, &unk_22C296C50, *(v1 + 24));
}

uint64_t ResponseGenerationProtoStatementResultDigest.statementOutcome.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0) + 24);
  return sub_22BE18504();
}

uint64_t ResponseGenerationProtoStatementResultDigest.undoOperation.getter()
{
  v2 = sub_22BE1A5E4();
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.undoOperation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.undoOperation.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0) + 28);
  return sub_22BE18504();
}

uint64_t ResponseGenerationProtoStatementResultDigest.responseManifest.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE3E620(&qword_27D90CA58, &unk_22C2AE550, *(v1 + 32));
}

uint64_t ResponseGenerationProtoStatementResultDigest.responseManifest.setter()
{
  v0 = sub_22BE17BC4();
  v1 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE3B0B4(&qword_27D90CA58, &unk_22C2AE550, *(v1 + 32));
}

uint64_t ResponseGenerationProtoStatementResultDigest.responseManifest.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0) + 32);
  return sub_22BE18504();
}

uint64_t ResponseGenerationProtoStatementResultDigest.returnValueTypeDisplayRepresentation.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE3E620(&qword_27D90CA48, &qword_22C296C60, *(v1 + 36));
}

uint64_t ResponseGenerationProtoStatementResultDigest.returnValueTypeDisplayRepresentation.setter()
{
  v0 = sub_22BE17BC4();
  v1 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0);
  return sub_22BE3B0B4(&qword_27D90CA48, &qword_22C296C60, *(v1 + 36));
}

uint64_t sub_22BFC390C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_22BE190C4(a1, a2, a3, a4);
  sub_22BE18000(v5);
  v7 = *(v6 + 40);
  v8 = sub_22BE19454();
  v9(v8);
  return v4;
}

uint64_t ResponseGenerationProtoStatementResultDigest.returnValueTypeDisplayRepresentation.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(v0) + 36);
  return sub_22BE18504();
}

uint64_t ResponseGenerationProtoStatementResultDigest.init(toolDefinition:actionCreated:statementOutcome:undoOperation:responseManifest:returnValueTypeDisplayRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = *a4;
  v11 = sub_22C272674();
  sub_22BE191D8(a7, v12, v13, v11);
  v14 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v15 = v14[5];
  v16 = type metadata accessor for TranscriptProtoAction(0);
  sub_22BE191D8(a7 + v15, v17, v18, v16);
  v19 = v14[6];
  v20 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BE191D8(a7 + v19, v21, v22, v20);
  v23 = v14[7];
  *(a7 + v23) = 2;
  v24 = v14[8];
  v25 = type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_22BE191D8(a7 + v24, v26, v27, v25);
  v28 = v14[9];
  v29 = sub_22C272644();
  sub_22BE191D8(a7 + v28, v30, v31, v29);
  v32 = a7 + v14[10];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BFC390C(a1, a7, &qword_27D90C180, &unk_22C296C40);
  sub_22BFC390C(a2, a7 + v15, &qword_27D90CA78, &qword_22C2B5880);
  sub_22BFC390C(a3, a7 + v19, &qword_27D90CA68, &unk_22C296C50);
  *(a7 + v23) = v34;
  sub_22BFC390C(a5, a7 + v24, &qword_27D90CA58, &unk_22C2AE550);
  return sub_22BFC390C(a6, a7 + v28, &qword_27D90CA48, &qword_22C296C60);
}

unint64_t sub_22BFC3B28()
{
  result = qword_27D90CB00;
  if (!qword_27D90CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90CB00);
  }

  return result;
}

unint64_t sub_22BFC3B80()
{
  result = qword_27D90CB08;
  if (!qword_27D90CB08)
  {
    sub_22BE7431C(&qword_27D90CB10, &qword_22C296D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90CB08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationProtoResponseMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void sub_22BFC3CE8()
{
  sub_22BFC3FCC(319, &qword_27D90CB28, type metadata accessor for ResponseGenerationProtoStatementResultDigest, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22C2704B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BFC3DE0()
{
  sub_22BFC3FCC(319, &qword_28106DF28, MEMORY[0x277D72898], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22BFC3FCC(319, &qword_27D90CB40, type metadata accessor for TranscriptProtoAction, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22BFC3FCC(319, qword_281074488, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22BFC4030();
        if (v3 <= 0x3F)
        {
          sub_22BFC3FCC(319, qword_281074730, type metadata accessor for TranscriptProtoResponseManifest, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_22BFC3FCC(319, &qword_27D90CB50, MEMORY[0x277D72880], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_22C2704B4();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_22BFC3FCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22BFC4030()
{
  if (!qword_27D90CB48)
  {
    v0 = sub_22C273844();
    if (!v1)
    {
      atomic_store(v0, &qword_27D90CB48);
    }
  }
}

BOOL sub_22BFC4080(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_22BFC40D4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CB58);
  sub_22BE199F4(v0, qword_27D90CB58);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28D160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ENTITY_QUERY";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIRI_VOCABULARY";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "USER_FEEDBACK_LEARNING";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MEGADOME_ECR";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CONTEXT_REGISTRY";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RETURN_VALUE";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "USER_PROMPT";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "OMNISEARCH";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC4448()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CB70);
  sub_22BE199F4(v0, qword_27D90CB70);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "notSet";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "prescribedPlanGenerator";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "planOverride";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fullPlanner";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "suggestedInvocationPlanGenerator";
  *(v16 + 1) = 32;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ruleBasedPlanGenerator";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC4740()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CB88);
  sub_22BE199F4(v0, qword_27D90CB88);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Completion";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Disambiguation";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Confirmation";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Inform";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "Ask";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC49F0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CBA0);
  sub_22BE199F4(v0, qword_27D90CBA0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SUPPRESS_PRINT";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC4BEC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CBB8);
  sub_22BE199F4(v0, qword_27D90CBB8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ASTUpdateKind_APPEND";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ASTUpdateKind_REPLACE";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC4DE8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CBD0);
  sub_22BE199F4(v0, qword_27D90CBD0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "plus";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "minus";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "not";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC5020()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CBE8);
  sub_22BE199F4(v0, qword_27D90CBE8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_22C296E40;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 0;
  *v4 = "assign";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 1;
  *v8 = "add";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "addAssign";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subtract";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "subtractAssign";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "divide";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "divideAssign";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "multiply";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "multiplyAssign";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "exponent";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "equal";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "notEqual";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "in";
  *(v30 + 1) = 2;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "greaterThanEqual";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "greaterThan";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "lessThanEqual";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "lessThan";
  *(v38 + 1) = 8;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "and";
  *(v40 + 1) = 3;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "or";
  *(v42 + 1) = 2;
  v42[16] = 2;
  v7();
  return sub_22C2708A4();
}

uint64_t sub_22BFC5618()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CC00);
  sub_22BE199F4(v0, qword_27D90CC00);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_22C296E40;
  v4 = v45 + v3;
  v5 = v45 + v3 + v1[14];
  *(v45 + v3) = 0;
  *v5 = "ASTInfixOp_ASSIGN";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22C270894();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ASTInfixOp_ADD";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ASTInfixOp_ADDASSIGN";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ASTInfixOp_SUBTRACT";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ASTInfixOp_SUBTRACTASSIGN";
  *(v15 + 1) = 25;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ASTInfixOp_DIVIDE";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ASTInfixOp_DIVIDEASSIGN";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ASTInfixOp_MULTIPLY";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "ASTInfixOp_MULTIPLYASSIGN";
  *(v23 + 1) = 25;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "ASTInfixOp_EXPONENT";
  *(v25 + 1) = 19;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "ASTInfixOp_EQUAL";
  *(v27 + 1) = 16;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "ASTInfixOp_NOTEQUAL";
  *(v29 + 1) = 19;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 12;
  *v31 = "ASTInfixOp_IN";
  *(v31 + 1) = 13;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 13;
  *v33 = "ASTInfixOp_GREATERTHANEQUAL";
  *(v33 + 1) = 27;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 14;
  *v35 = "ASTInfixOp_GREATERTHAN";
  *(v35 + 1) = 22;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 15;
  *v37 = "ASTInfixOp_LESSTHANEQUAL";
  *(v37 + 1) = 24;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 16;
  *v39 = "ASTInfixOp_LESSTHAN";
  *(v39 + 1) = 19;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 17;
  *v41 = "ASTInfixOp_AND";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 18;
  *v43 = "ASTInfixOp_OR";
  *(v43 + 1) = 13;
  v43[16] = 2;
  v8();
  return sub_22C2708A4();
}

uint64_t sub_22BFC5C1C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CC18);
  sub_22BE199F4(v0, qword_27D90CC18);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ASTPrefixOp_PLUS";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ASTPrefixOp_MINUS";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ASTPrefixOp_NOT";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC5E54()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CC30);
  sub_22BE199F4(v0, qword_27D90CC30);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "append";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "replace";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC6050()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CC48);
  sub_22BE199F4(v0, qword_27D90CC48);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "appIntent";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "clientAction";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "schema";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "builtIn";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC62C4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CC60);
  sub_22BE199F4(v0, qword_27D90CC60);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "unspecified";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "female";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "male";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "neutral";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC6538()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CC78);
  sub_22BE199F4(v0, qword_27D90CC78);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "undo";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "redo";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFC674C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_28107AB80);
  sub_22BE199F4(v0, qword_28107AB80);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22C290D60;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 11;
  *v5 = "rawId";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22C270894();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "rawSessionId";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 12;
  *v11 = "rawQueryEventId";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 2;
  *v13 = "rawPayload";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 3;
  *v15 = "clientRequestId";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 4;
  *v17 = "clientSessionId";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "clientApplicationId";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "clientGroupId";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 13;
  *v23 = "timepoint";
  *(v23 + 1) = 9;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 6;
  *v25 = "sender";
  *(v25 + 1) = 6;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 7;
  *v27 = "postingSpan";
  *(v27 + 1) = 11;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 8;
  *v29 = "rawInitiatedSpans";
  *(v29 + 1) = 17;
  v29[16] = 2;
  v8();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoEvent.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
      case 9:
      case 11:
        sub_22BE2037C();
        sub_22C2706A4();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22BFC6C7C();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22BFC6D30();
        break;
      case 7:
        sub_22BE18E2C();
        sub_22BFC6DE4();
        break;
      case 8:
        sub_22BE18E2C();
        sub_22BFC6E98();
        break;
      case 10:
        sub_22C0B19A4();
        sub_22BE18E2C();
        sub_22C02E104();
        break;
      case 12:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 13:
        sub_22BE18E2C();
        sub_22BFC6F1C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFC6C7C()
{
  v0 = *(type metadata accessor for TranscriptProtoEvent(0) + 44);
  type metadata accessor for TranscriptProtoPayload(0);
  sub_22BE2C988(&qword_2810798C8, type metadata accessor for TranscriptProtoPayload);
  return sub_22C2706F4();
}

uint64_t sub_22BFC6D30()
{
  v0 = *(type metadata accessor for TranscriptProtoEvent(0) + 56);
  type metadata accessor for TranscriptProtoParticipantID(0);
  sub_22BE2C988(&unk_281076C00, type metadata accessor for TranscriptProtoParticipantID);
  return sub_22C2706F4();
}

uint64_t sub_22BFC6DE4()
{
  v0 = *(type metadata accessor for TranscriptProtoEvent(0) + 60);
  type metadata accessor for TranscriptProtoSpanID(0);
  sub_22BE2C988(&unk_28107A328, type metadata accessor for TranscriptProtoSpanID);
  return sub_22C2706F4();
}

uint64_t sub_22BFC6E98()
{
  sub_22C270464();
  sub_22C270484();
  return sub_22C270574();
}

uint64_t sub_22BFC6F1C()
{
  v0 = *(type metadata accessor for TranscriptProtoEvent(0) + 52);
  type metadata accessor for TranscriptProtoTimepoint(0);
  sub_22BE2C988(&qword_281078C68, type metadata accessor for TranscriptProtoTimepoint);
  return sub_22C2706F4();
}

void static TranscriptProtoEvent.== infix(_:_:)()
{
  sub_22BE19460();
  v6 = sub_22BE23708();
  v127 = type metadata accessor for TranscriptProtoSpanID(v6);
  v7 = sub_22BE18000(v127);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE294E0();
  v10 = sub_22BE5CE4C(&qword_27D90E408, &unk_22C2CC840);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE23E58();
  v126 = sub_22BE5CE4C(&qword_27D90E410, &qword_22C296E80);
  sub_22BE18000(v126);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE234F4();
  v130 = type metadata accessor for TranscriptProtoParticipantID(0);
  v17 = sub_22BE18000(v130);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  v125 = v20;
  v21 = sub_22BE5CE4C(&qword_27D90E418, &unk_22C2AE460);
  sub_22BE19448(v21);
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE1A174();
  v128 = v25;
  v129 = sub_22BE5CE4C(&qword_27D90E420, &qword_22C296E88);
  sub_22BE18000(v129);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE29250(v29, v118);
  v133 = type metadata accessor for TranscriptProtoTimepoint(0);
  v30 = sub_22BE18000(v133);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE17A44();
  sub_22BE3FF7C(v33);
  v34 = sub_22BE5CE4C(&qword_27D90E428, &qword_22C296E90);
  sub_22BE19448(v34);
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE20168(v38, v119);
  v39 = sub_22BE5CE4C(&qword_27D90E430, &qword_22C296E98);
  sub_22BE272C0(v39);
  v41 = *(v40 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  v44 = sub_22C0B1620(v43, v120);
  v45 = type metadata accessor for TranscriptProtoPayload(v44);
  v46 = sub_22BE26880(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BE17CBC();
  v49 = sub_22BE5CE4C(&qword_27D90E438, &unk_22C2AE450);
  sub_22BE19448(v49);
  v51 = *(v50 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v52);
  sub_22BE1B01C();
  v53 = sub_22BE5CE4C(&qword_27D90E440, &qword_22C296EA0);
  sub_22BE18000(v53);
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE19668();
  v57 = *v2;
  v58 = v2[1];
  sub_22BE33C20();
  v61 = v61 && v59 == v60;
  if (!v61 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_30;
  }

  v62 = v2[2] == v0[2] && v2[3] == v0[3];
  if (!v62 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_30;
  }

  v63 = v2[12];
  v64 = v0[12];
  if (v63)
  {
    if (!v64)
    {
      goto LABEL_30;
    }

    v65 = v2[11] == v0[11] && v63 == v64;
    if (!v65 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v64)
  {
    goto LABEL_30;
  }

  v121 = v5;
  v122 = v4;
  v123 = v3;
  v124 = type metadata accessor for TranscriptProtoEvent(0);
  v66 = v124[11];
  v67 = *(v53 + 48);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE1972C(v1);
  if (v61)
  {
    sub_22BE1972C(v1 + v67);
    if (v61)
    {
      sub_22BE33928(v1, &qword_27D90E438, &unk_22C2AE450);
      goto LABEL_33;
    }

LABEL_28:
    v69 = &qword_27D90E440;
    v70 = &qword_22C296EA0;
    v71 = v1;
LABEL_29:
    sub_22BE33928(v71, v69, v70);
    goto LABEL_30;
  }

  sub_22BE22868();
  sub_22BE1972C(v1 + v67);
  if (v68)
  {
    sub_22C0B1AA4();
    goto LABEL_28;
  }

  sub_22C0B0868();
  v73 = sub_22BE25C08();
  v74 = static TranscriptProtoPayload.== infix(_:_:)(v73);
  sub_22BE2590C();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90E438, &unk_22C2AE450);
  if ((v74 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_33:
  v75 = v2[4] == v0[4] && v2[5] == v0[5];
  if (!v75 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_30;
  }

  v76 = v2[6] == v0[6] && v2[7] == v0[7];
  if (!v76 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_30;
  }

  v77 = v2[8] == v0[8] && v2[9] == v0[9];
  if (!v77 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_30;
  }

  v78 = v124[12];
  v79 = *(v0 + v78 + 8);
  if (*(v2 + v78 + 8))
  {
    v81 = v122;
    v80 = v123;
    if (!v79)
    {
      goto LABEL_30;
    }

    sub_22BE3A508((v2 + v78));
    v84 = v61 && v82 == v83;
    if (!v84 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v81 = v122;
    v80 = v123;
    if (v79)
    {
      goto LABEL_30;
    }
  }

  v85 = v124[13];
  v86 = *(v132 + 48);
  v87 = v134;
  sub_22BE3A518();
  sub_22BE3A518();
  v88 = sub_22BE23E90();
  sub_22BE3F458(v88, v89);
  if (v61)
  {
    sub_22BE181B0(v134 + v86);
    if (v61)
    {
      sub_22BE33928(v134, &qword_27D90E428, &qword_22C296E90);
      goto LABEL_67;
    }

LABEL_65:
    v69 = &qword_27D90E430;
    v70 = &qword_22C296E98;
LABEL_76:
    v71 = v87;
    goto LABEL_29;
  }

  sub_22BE22868();
  sub_22BE181B0(v134 + v86);
  if (v90)
  {
    sub_22C0B1D88();
    goto LABEL_65;
  }

  sub_22C0B0868();
  static TranscriptProtoTimepoint.== infix(_:_:)();
  v92 = v91;
  sub_22BE431C0();
  sub_22C0B08BC();
  sub_22BE25EFC();
  sub_22C0B08BC();
  sub_22BE33928(v134, &qword_27D90E428, &qword_22C296E90);
  if ((v92 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_67:
  v93 = v124[14];
  v94 = *(v129 + 48);
  sub_22BE3A518();
  v87 = v131;
  sub_22BE3A518();
  v95 = sub_22BE3C688();
  sub_22BE3F458(v95, v96);
  if (v61)
  {
    sub_22BE181B0(v131 + v94);
    if (v61)
    {
      sub_22BE33928(v131, &qword_27D90E418, &unk_22C2AE460);
      goto LABEL_83;
    }

    goto LABEL_75;
  }

  sub_22BE22868();
  sub_22BE181B0(v131 + v94);
  if (v97)
  {
    sub_22C0B08BC();
LABEL_75:
    v69 = &qword_27D90E420;
    v70 = &qword_22C296E88;
    goto LABEL_76;
  }

  sub_22C0B0868();
  v98 = *v128 == *v125 && v128[1] == v125[1];
  if (!v98 && (sub_22C274014() & 1) == 0)
  {
    sub_22C0B08BC();
    sub_22BE1B074();
    sub_22C0B08BC();
    v69 = &qword_27D90E418;
    v70 = &unk_22C2AE460;
    goto LABEL_76;
  }

  v99 = *(v130 + 20);
  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v100, v101);
  v102 = sub_22C272FD4();
  sub_22C0B08BC();
  sub_22BE3CEF4();
  sub_22C0B08BC();
  sub_22BE33928(v131, &qword_27D90E418, &unk_22C2AE460);
  if ((v102 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_83:
  v103 = v124[15];
  v104 = *(v126 + 48);
  sub_22BE3A518();
  sub_22BE3A518();
  v105 = sub_22BFB1A7C();
  sub_22BE3F458(v105, v106);
  if (!v61)
  {
    sub_22BE22868();
    sub_22BE181B0(v80 + v104);
    if (!v113)
    {
      sub_22C0B0868();
      if (*v121 == *v81)
      {
        v114 = *(v127 + 20);
        sub_22C2704B4();
        sub_22BE18E5C();
        sub_22BE2C988(v115, v116);
        v117 = sub_22C272FD4();
        sub_22C0B08BC();
        sub_22BE25C08();
        sub_22C0B08BC();
        sub_22BE33928(v80, &qword_27D90E408, &unk_22C2CC840);
        if ((v117 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_88;
      }

      sub_22C0B08BC();
      sub_22BE291B0();
      sub_22C0B08BC();
      v69 = &qword_27D90E408;
      v70 = &unk_22C2CC840;
      goto LABEL_94;
    }

    sub_22C0B1AA4();
LABEL_93:
    v69 = &qword_27D90E410;
    v70 = &qword_22C296E80;
LABEL_94:
    v71 = v80;
    goto LABEL_29;
  }

  sub_22BE181B0(v80 + v104);
  if (!v61)
  {
    goto LABEL_93;
  }

  sub_22BE33928(v80, &qword_27D90E408, &unk_22C2CC840);
LABEL_88:
  v107 = v2[10];
  v108 = v0[10];
  sub_22BEA3324();
  if (v109)
  {
    v110 = v124[16];
    sub_22C2704B4();
    sub_22BE18E5C();
    sub_22BE2C988(v111, v112);
    v72 = sub_22BE35FB8();
    goto LABEL_31;
  }

LABEL_30:
  v72 = 0;
LABEL_31:
  sub_22BE1C1DC(v72);
  sub_22BE1AABC();
}

uint64_t (*sub_22BFC7AB4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 64);
  return result;
}

uint64_t sub_22BFC7AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911170, type metadata accessor for TranscriptProtoEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFC7B6C(uint64_t a1)
{
  v2 = sub_22BE2C988(&unk_28107AB68, type metadata accessor for TranscriptProtoEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFC7BDC()
{
  sub_22BE2C988(&unk_28107AB68, type metadata accessor for TranscriptProtoEvent);

  return sub_22C270774();
}

uint64_t sub_22BFC7C74()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_2810798D8);
  sub_22BE199F4(v0, qword_2810798D8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_22C296E50;
  v4 = v94 + v3 + v1[14];
  *(v94 + v3) = 46;
  *v4 = "sessionStart";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v94 + v3 + v2 + v1[14];
  *(v94 + v3 + v2) = 59;
  *v8 = "userTurnStarted";
  *(v8 + 8) = 15;
  *(v8 + 16) = 2;
  v7();
  v9 = (v94 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 60;
  *v10 = "speechPartialResult";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v94 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 41;
  *v12 = "request";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v94 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "planCreated";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v94 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "actionCreated";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v94 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "clientActionCreated";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v7();
  v19 = (v94 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "queriesCreated";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v94 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "variablesSet";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v7();
  v23 = (v94 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "criticalError";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v7();
  v25 = (v94 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 47;
  *v26 = "recoverableError";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v7();
  v27 = (v94 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 14;
  *v28 = "endOfPlan";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v7();
  v29 = (v94 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 15;
  *v30 = "terminate";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v7();
  v31 = (v94 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 19;
  *v32 = "queriesExecuted";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v7();
  v33 = (v94 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 21;
  *v34 = "actionResolverRequestCreated";
  *(v34 + 1) = 28;
  v34[16] = 2;
  v7();
  v35 = (v94 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 25;
  *v36 = "safetyModeRelease";
  *(v36 + 1) = 17;
  v36[16] = 2;
  v7();
  v37 = (v94 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 26;
  *v38 = "safetyModeException";
  *(v38 + 1) = 19;
  v38[16] = 2;
  v7();
  v39 = (v94 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 27;
  *v40 = "responseGenerationRequest";
  *(v40 + 1) = 25;
  v40[16] = 2;
  v7();
  v41 = (v94 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 28;
  *v42 = "entitySpanMatched";
  *(v42 + 1) = 17;
  v42[16] = 2;
  v7();
  v43 = (v94 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 29;
  *v44 = "ContextRetrieved";
  *(v44 + 1) = 16;
  v44[16] = 2;
  v7();
  v45 = (v94 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 30;
  *v46 = "actionCanceled";
  *(v46 + 1) = 14;
  v46[16] = 2;
  v7();
  v47 = (v94 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 31;
  *v48 = "toolsRetrieved";
  *(v48 + 1) = 14;
  v48[16] = 2;
  v7();
  v49 = (v94 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 32;
  *v50 = "systemResponseGenerated";
  *(v50 + 1) = 23;
  v50[16] = 2;
  v7();
  v51 = (v94 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 33;
  *v52 = "statementEvaluated";
  *(v52 + 1) = 18;
  v52[16] = 2;
  v7();
  v53 = (v94 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 42;
  *v54 = "externalAgentRequest";
  *(v54 + 1) = 20;
  v54[16] = 2;
  v7();
  v55 = (v94 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 36;
  *v56 = "externalAgentOutcome";
  *(v56 + 1) = 20;
  v56[16] = 2;
  v7();
  v57 = (v94 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 37;
  *v58 = "externalAgentRequestRewriteMetadata";
  *(v58 + 1) = 35;
  v58[16] = 2;
  v7();
  v59 = (v94 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 38;
  *v60 = "ToolResolution";
  *(v60 + 1) = 14;
  v60[16] = 2;
  v7();
  v61 = (v94 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 39;
  *v62 = "undoRedoRequest";
  *(v62 + 1) = 15;
  v62[16] = 2;
  v7();
  v63 = (v94 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 40;
  *v64 = "clientUndoRedoRequest";
  *(v64 + 1) = 21;
  v64[16] = 2;
  v7();
  v65 = (v94 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 43;
  *v66 = "typeConversionRequest";
  *(v66 + 1) = 21;
  v66[16] = 2;
  v7();
  v67 = (v94 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 44;
  *v68 = "typeConversionResult";
  *(v68 + 1) = 20;
  v68[16] = 2;
  v7();
  v69 = (v94 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 45;
  *v70 = "queryDecorationResult";
  *(v70 + 1) = 21;
  v70[16] = 2;
  v7();
  v71 = (v94 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 48;
  *v72 = "continuePlanning";
  *(v72 + 1) = 16;
  v72[16] = 2;
  v7();
  v73 = (v94 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 49;
  *v74 = "queryDecorationPrePlannerResult";
  *(v74 + 1) = 31;
  v74[16] = 2;
  v7();
  v75 = (v94 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 50;
  *v76 = "skipStatement";
  *(v76 + 1) = 13;
  v76[16] = 2;
  v7();
  v77 = (v94 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 51;
  *v78 = "executionPreconditionEvaluatorRequest";
  *(v78 + 1) = 37;
  v78[16] = 2;
  v7();
  v79 = (v94 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 52;
  *v80 = "requestAmendment";
  *(v80 + 1) = 16;
  v80[16] = 2;
  v7();
  v81 = (v94 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 53;
  *v82 = "toolRetrievalRequest";
  *(v82 + 1) = 20;
  v82[16] = 2;
  v7();
  v83 = (v94 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 54;
  *v84 = "contextRetrievalRequest";
  *(v84 + 1) = 23;
  v84[16] = 2;
  v7();
  v85 = (v94 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 55;
  *v86 = "spanMatchRequest";
  *(v86 + 1) = 16;
  v86[16] = 2;
  v7();
  v87 = (v94 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 56;
  *v88 = "intermediateSystemResponse";
  *(v88 + 1) = 26;
  v88[16] = 2;
  v7();
  v89 = (v94 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 57;
  *v90 = "intermediateSystemResponseRendered";
  *(v90 + 1) = 34;
  v90[16] = 2;
  v7();
  v91 = (v94 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 58;
  *v92 = "agentPrimitiveAction";
  *(v92 + 1) = 20;
  v92[16] = 2;
  v7();
  return sub_22C2708A4();
}

void TranscriptProtoPayload.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v3 = sub_22BE236F4();
        sub_22BFC8BD8(v3, v4, v5, v6);
        break;
      case 4:
        v83 = sub_22BE236F4();
        sub_22BFC90D0(v83, v84, v85, v86);
        break;
      case 5:
        v71 = sub_22BE236F4();
        sub_22BFC95C8(v71, v72, v73, v74);
        break;
      case 6:
        v79 = sub_22BE236F4();
        sub_22BFC9AC0(v79, v80, v81, v82);
        break;
      case 7:
        v47 = sub_22BE236F4();
        sub_22BFC9FB8(v47, v48, v49, v50);
        break;
      case 11:
        v103 = sub_22BE236F4();
        sub_22BFCA4B0(v103, v104, v105, v106);
        break;
      case 14:
      case 15:
        sub_22BE23718();
        sub_22BFCA9A8();
        break;
      case 19:
        v123 = sub_22BE236F4();
        sub_22BFCAC34(v123, v124, v125, v126);
        break;
      case 21:
        v59 = sub_22BE236F4();
        sub_22BFCB12C(v59, v60, v61, v62);
        break;
      case 25:
        v119 = sub_22BE236F4();
        sub_22BFCB624(v119, v120, v121, v122);
        break;
      case 26:
        v43 = sub_22BE236F4();
        sub_22BFCBB1C(v43, v44, v45, v46);
        break;
      case 27:
        v55 = sub_22BE236F4();
        sub_22BFCC014(v55, v56, v57, v58);
        break;
      case 28:
        v111 = sub_22BE236F4();
        sub_22BFCC50C(v111, v112, v113, v114);
        break;
      case 29:
        v35 = sub_22BE236F4();
        sub_22BFCCA04(v35, v36, v37, v38);
        break;
      case 30:
        v75 = sub_22BE236F4();
        sub_22BFCCEFC(v75, v76, v77, v78);
        break;
      case 31:
        v31 = sub_22BE236F4();
        sub_22BFCD3F4(v31, v32, v33, v34);
        break;
      case 32:
        v91 = sub_22BE236F4();
        sub_22BFCD8EC(v91, v92, v93, v94);
        break;
      case 33:
        v115 = sub_22BE236F4();
        sub_22BFCDDE4(v115, v116, v117, v118);
        break;
      case 36:
        v143 = sub_22BE236F4();
        sub_22BFCE2DC(v143, v144, v145, v146);
        break;
      case 37:
        v99 = sub_22BE236F4();
        sub_22BFCE7D4(v99, v100, v101, v102);
        break;
      case 38:
        v107 = sub_22BE236F4();
        sub_22BFCECCC(v107, v108, v109, v110);
        break;
      case 39:
        v135 = sub_22BE236F4();
        sub_22BFCF1C4(v135, v136, v137, v138);
        break;
      case 40:
        v151 = sub_22BE236F4();
        sub_22BFCF6BC(v151, v152, v153, v154);
        break;
      case 41:
        v67 = sub_22BE236F4();
        sub_22BFCFBB4(v67, v68, v69, v70);
        break;
      case 42:
        v63 = sub_22BE236F4();
        sub_22BFD00AC(v63, v64, v65, v66);
        break;
      case 43:
        v167 = sub_22BE236F4();
        sub_22BFD05A4(v167, v168, v169, v170);
        break;
      case 44:
        v23 = sub_22BE236F4();
        sub_22BFD0A9C(v23, v24, v25, v26);
        break;
      case 45:
        v155 = sub_22BE236F4();
        sub_22BFD0F94(v155, v156, v157, v158);
        break;
      case 46:
        v159 = sub_22BE236F4();
        sub_22BFD148C(v159, v160, v161, v162);
        break;
      case 47:
        v127 = sub_22BE236F4();
        sub_22BFD1984(v127, v128, v129, v130);
        break;
      case 48:
        v87 = sub_22BE236F4();
        sub_22BFD1E7C(v87, v88, v89, v90);
        break;
      case 49:
        v131 = sub_22BE236F4();
        sub_22BFD2374(v131, v132, v133, v134);
        break;
      case 50:
        v39 = sub_22BE236F4();
        sub_22BFD286C(v39, v40, v41, v42);
        break;
      case 51:
        v27 = sub_22BE236F4();
        sub_22BFD2D64(v27, v28, v29, v30);
        break;
      case 52:
        v15 = sub_22BE236F4();
        sub_22BFD325C(v15, v16, v17, v18);
        break;
      case 53:
        v19 = sub_22BE236F4();
        sub_22BFD3754(v19, v20, v21, v22);
        break;
      case 54:
        v11 = sub_22BE236F4();
        sub_22BFD3C4C(v11, v12, v13, v14);
        break;
      case 55:
        v163 = sub_22BE236F4();
        sub_22BFD4144(v163, v164, v165, v166);
        break;
      case 56:
        v139 = sub_22BE236F4();
        sub_22BFD463C(v139, v140, v141, v142);
        break;
      case 57:
        v51 = sub_22BE236F4();
        sub_22BFD4B34(v51, v52, v53, v54);
        break;
      case 58:
        v95 = sub_22BE236F4();
        sub_22BFD502C(v95, v96, v97, v98);
        break;
      case 59:
        v147 = sub_22BE236F4();
        sub_22BFD5524(v147, v148, v149, v150);
        break;
      case 60:
        v7 = sub_22BE236F4();
        sub_22BFD5A1C(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFC8BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoPlan(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9115D0, &qword_22C2AE2E8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v22, &qword_27D9115D0, &qword_22C2AE2E8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FAD0, type metadata accessor for TranscriptProtoPlan);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9115D0, &qword_22C2AE2E8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9115D0, &qword_22C2AE2E8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9115D0, &qword_22C2AE2E8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9115D0, &qword_22C2AE2E8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFC90D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoAction(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D90CA78, &qword_22C2B5880);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v22, &qword_27D90CA78, &qword_22C2B5880);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D90CA78, &qword_22C2B5880);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D90CA78, &qword_22C2B5880);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D90CA78, &qword_22C2B5880);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D90CA78, &qword_22C2B5880);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFC95C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoClientAction(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911198, &qword_22C2ADEC8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22BE33928(v22, &qword_27D911198, &qword_22C2ADEC8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F710, type metadata accessor for TranscriptProtoClientAction);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911198, &qword_22C2ADEC8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911198, &qword_22C2ADEC8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911198, &qword_22C2ADEC8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911198, &qword_22C2ADEC8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFC9AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v6 = *(*(Step - 8) + 64);
  v7 = MEMORY[0x28223BE20](Step);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9115D8, &qword_22C2AE2F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, Step);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22BE33928(v22, &qword_27D9115D8, &qword_22C2AE2F0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, Step);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FB40, type metadata accessor for TranscriptProtoQueryStep);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9115D8, &qword_22C2AE2F0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, Step) == 1)
  {
    sub_22BE33928(v22, &qword_27D9115D8, &qword_22C2AE2F0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9115D8, &qword_22C2AE2F0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9115D8, &qword_22C2AE2F0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFC9FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoVariableStep(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9115E0, &qword_22C2AE2F8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_22BE33928(v22, &qword_27D9115E0, &qword_22C2AE2F8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910018, type metadata accessor for TranscriptProtoVariableStep);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9115E0, &qword_22C2AE2F8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9115E0, &qword_22C2AE2F8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9115E0, &qword_22C2AE2F8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9115E0, &qword_22C2AE2F8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCA4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSessionError(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9115E8, &qword_22C2AE300);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_22BE33928(v22, &qword_27D9115E8, &qword_22C2AE300);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F7E8, type metadata accessor for TranscriptProtoSessionError);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9115E8, &qword_22C2AE300);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9115E8, &qword_22C2AE300);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9115E8, &qword_22C2AE300);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9115E8, &qword_22C2AE300);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void sub_22BFCA9A8()
{
  sub_22BE19130();
  v39 = v3;
  v40 = v2;
  v5 = v4;
  v10 = sub_22C0B176C(v6, v2, v7, v8, v9, v4);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE2C64C();
  v14 = sub_22BE5CE4C(&qword_27D9111D0, &byte_22C2ADF00);
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE183AC();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  sub_22BE32374();
  v22 = sub_22C270424();
  v23 = sub_22BE3C598();
  sub_22BE19DC4(v23, v24, 1, v22);
  sub_22BE1B470();
  sub_22BE2C988(v25, v26);
  sub_22C2705D4();
  if (v0 || (v38 = v5, sub_22BE3C968(), sub_22BE22868(), v27 = sub_22BE1AEA8(v20, 1, v22), v28 = sub_22BE1A6BC(), sub_22BE33928(v28, v29, &byte_22C2ADF00), v27 == 1))
  {
    sub_22BE33928(v1, &qword_27D9111D0, &byte_22C2ADF00);
  }

  else
  {
    sub_22BE22868();
    v30 = v39(0);
    v31 = sub_22BE3C688();
    v33 = sub_22BE1AEA8(v31, v32, v30);
    v34 = sub_22BE3CEF4();
    sub_22BE33928(v34, v35, v38);
    if (v33 != 1)
    {
      sub_22C270594();
    }

    sub_22BE33928(v1, &qword_27D9111D0, &byte_22C2ADF00);
    v36 = sub_22BE1B5E0();
    sub_22BE33928(v36, v37, v38);
    sub_22BE39EAC();
    swift_storeEnumTagMultiPayload();
    sub_22BE19DC4(v40, 0, 1, v30);
  }

  sub_22BE18478();
}

uint64_t sub_22BFCAC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v6 = *(*(StepResults - 8) + 64);
  v7 = MEMORY[0x28223BE20](StepResults);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9115F0, &qword_22C2AE308);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, StepResults);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_22BE33928(v22, &qword_27D9115F0, &qword_22C2AE308);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, StepResults);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FBD0, type metadata accessor for TranscriptProtoQueryStepResults);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9115F0, &qword_22C2AE308);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, StepResults) == 1)
  {
    sub_22BE33928(v22, &qword_27D9115F0, &qword_22C2AE308);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9115F0, &qword_22C2AE308);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9115F0, &qword_22C2AE308);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCB12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9115F8, &qword_22C2AE310);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_22BE33928(v22, &qword_27D9115F8, &qword_22C2AE310);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FF20, type metadata accessor for TranscriptProtoActionResolverRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9115F8, &qword_22C2AE310);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9115F8, &qword_22C2AE310);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9115F8, &qword_22C2AE310);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9115F8, &qword_22C2AE310);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCB624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911600, &qword_22C2AE318);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_22BE33928(v22, &qword_27D911600, &qword_22C2AE318);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FF70, type metadata accessor for TranscriptProtoSafetyModeRelease);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911600, &qword_22C2AE318);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911600, &qword_22C2AE318);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911600, &qword_22C2AE318);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911600, &qword_22C2AE318);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCBB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911608, &qword_22C2AE320);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_22BE33928(v22, &qword_27D911608, &qword_22C2AE320);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FF88, type metadata accessor for TranscriptProtoSafetyModeException);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911608, &qword_22C2AE320);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911608, &qword_22C2AE320);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911608, &qword_22C2AE320);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911608, &qword_22C2AE320);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCC014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911610, &qword_22C2AE328);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_22BE33928(v22, &qword_27D911610, &qword_22C2AE328);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F6D0, type metadata accessor for TranscriptProtoResponseGenerationRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911610, &qword_22C2AE328);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911610, &qword_22C2AE328);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911610, &qword_22C2AE328);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911610, &qword_22C2AE328);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCC50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  v6 = *(*(matched - 8) + 64);
  v7 = MEMORY[0x28223BE20](matched);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911618, &qword_22C2AE330);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, matched);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_22BE33928(v22, &qword_27D911618, &qword_22C2AE330);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, matched);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9105E0, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911618, &qword_22C2AE330);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, matched) == 1)
  {
    sub_22BE33928(v22, &qword_27D911618, &qword_22C2AE330);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911618, &qword_22C2AE330);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911618, &qword_22C2AE330);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCCA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911620, &qword_22C2AE338);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_22BE33928(v22, &qword_27D911620, &qword_22C2AE338);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FF38, type metadata accessor for TranscriptProtoContextRetrieved);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911620, &qword_22C2AE338);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911620, &qword_22C2AE338);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911620, &qword_22C2AE338);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911620, &qword_22C2AE338);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCCEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoActionCancellation(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911628, &qword_22C2AE340);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_22BE33928(v22, &qword_27D911628, &qword_22C2AE340);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F5E8, type metadata accessor for TranscriptProtoActionCancellation);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911628, &qword_22C2AE340);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911628, &qword_22C2AE340);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911628, &qword_22C2AE340);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911628, &qword_22C2AE340);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCD3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911630, &qword_22C2AE348);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_22BE33928(v22, &qword_27D911630, &qword_22C2AE348);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9105F8, type metadata accessor for TranscriptProtoToolRetrievalResponse);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911630, &qword_22C2AE348);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911630, &qword_22C2AE348);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911630, &qword_22C2AE348);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911630, &qword_22C2AE348);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCD8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911638, &qword_22C2AE350);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_22BE33928(v22, &qword_27D911638, &qword_22C2AE350);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910610, type metadata accessor for TranscriptProtoSystemResponse);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911638, &qword_22C2AE350);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911638, &qword_22C2AE350);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911638, &qword_22C2AE350);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911638, &qword_22C2AE350);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCDDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoStatementResult(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911640, &qword_22C2AE358);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_22BE33928(v22, &qword_27D911640, &qword_22C2AE358);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90E748, type metadata accessor for TranscriptProtoStatementResult);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911640, &qword_22C2AE358);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911640, &qword_22C2AE358);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911640, &qword_22C2AE358);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911640, &qword_22C2AE358);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCE2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911648, &qword_22C2AE360);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_22BE33928(v22, &qword_27D911648, &qword_22C2AE360);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_281072E88, type metadata accessor for TranscriptProtoExternalAgentOutcome);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911648, &qword_22C2AE360);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911648, &qword_22C2AE360);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911648, &qword_22C2AE360);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911648, &qword_22C2AE360);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCE7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_22BE33928(v22, &qword_27D90E548, &qword_22C296F00);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D90E548, &qword_22C296F00);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D90E548, &qword_22C296F00);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D90E548, &qword_22C296F00);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D90E548, &qword_22C296F00);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCECCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoToolResolution(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911650, &qword_22C2AE368);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_22BE33928(v22, &qword_27D911650, &qword_22C2AE368);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9106B8, type metadata accessor for TranscriptProtoToolResolution);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911650, &qword_22C2AE368);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911650, &qword_22C2AE368);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911650, &qword_22C2AE368);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911650, &qword_22C2AE368);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCF1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911658, &qword_22C2AE370);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_22BE33928(v22, &qword_27D911658, &qword_22C2AE370);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9106D0, type metadata accessor for TranscriptProtoUndoRedoRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911658, &qword_22C2AE370);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911658, &qword_22C2AE370);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911658, &qword_22C2AE370);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911658, &qword_22C2AE370);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCF6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911660, &qword_22C2AE378);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_22BE33928(v22, &qword_27D911660, &qword_22C2AE378);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9106E8, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911660, &qword_22C2AE378);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911660, &qword_22C2AE378);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911660, &qword_22C2AE378);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911660, &qword_22C2AE378);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFCFBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911190, &qword_22C2ADEC0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v22, &qword_27D911190, &qword_22C2ADEC0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F418, type metadata accessor for TranscriptProtoRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911190, &qword_22C2ADEC0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911190, &qword_22C2ADEC0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911190, &qword_22C2ADEC0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911190, &qword_22C2ADEC0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD00AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911668, &qword_22C2AE380);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_22BE33928(v22, &qword_27D911668, &qword_22C2AE380);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_281072DC0, type metadata accessor for TranscriptProtoExternalAgentRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911668, &qword_22C2AE380);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911668, &qword_22C2AE380);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911668, &qword_22C2AE380);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911668, &qword_22C2AE380);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD05A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911670, &qword_22C2AE388);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_22BE33928(v22, &qword_27D911670, &qword_22C2AE388);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910700, type metadata accessor for TranscriptProtoTypeConversionRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911670, &qword_22C2AE388);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911670, &qword_22C2AE388);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911670, &qword_22C2AE388);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911670, &qword_22C2AE388);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD0A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911678, &qword_22C2AE390);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_22BE33928(v22, &qword_27D911678, &qword_22C2AE390);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910718, type metadata accessor for TranscriptProtoTypeConversionResult);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911678, &qword_22C2AE390);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911678, &qword_22C2AE390);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911678, &qword_22C2AE390);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911678, &qword_22C2AE390);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD0F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v6 = *(*(DecorationResult - 8) + 64);
  v7 = MEMORY[0x28223BE20](DecorationResult);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911680, &qword_22C2AE398);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, DecorationResult);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_22BE33928(v22, &qword_27D911680, &qword_22C2AE398);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, DecorationResult);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910730, type metadata accessor for TranscriptProtoQueryDecorationResult);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911680, &qword_22C2AE398);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, DecorationResult) == 1)
  {
    sub_22BE33928(v22, &qword_27D911680, &qword_22C2AE398);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911680, &qword_22C2AE398);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911680, &qword_22C2AE398);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD148C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSessionStart(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911688, &qword_22C2AE3A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v22, &qword_27D911688, &qword_22C2AE3A0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_2810773C0, type metadata accessor for TranscriptProtoSessionStart);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911688, &qword_22C2AE3A0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911688, &qword_22C2AE3A0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911688, &qword_22C2AE3A0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911688, &qword_22C2AE3A0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD1984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRecoverableError(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911690, &qword_22C2AE3A8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_22BE33928(v22, &qword_27D911690, &qword_22C2AE3A8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FAE8, type metadata accessor for TranscriptProtoRecoverableError);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911690, &qword_22C2AE3A8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911690, &qword_22C2AE3A8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911690, &qword_22C2AE3A8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911690, &qword_22C2AE3A8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD1E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoContinuePlanning(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911698, &qword_22C2AE3B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_22BE33928(v22, &qword_27D911698, &qword_22C2AE3B0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910808, type metadata accessor for TranscriptProtoContinuePlanning);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911698, &qword_22C2AE3B0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911698, &qword_22C2AE3B0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911698, &qword_22C2AE3B0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911698, &qword_22C2AE3B0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD2374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v6 = *(*(DecorationPrePlannerResult - 8) + 64);
  v7 = MEMORY[0x28223BE20](DecorationPrePlannerResult);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9116A0, &qword_22C2AE3B8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, DecorationPrePlannerResult);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_22BE33928(v22, &qword_27D9116A0, &qword_22C2AE3B8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, DecorationPrePlannerResult);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910748, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9116A0, &qword_22C2AE3B8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, DecorationPrePlannerResult) == 1)
  {
    sub_22BE33928(v22, &qword_27D9116A0, &qword_22C2AE3B8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9116A0, &qword_22C2AE3B8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9116A0, &qword_22C2AE3B8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD286C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSkipStatement(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9116A8, &qword_22C2AE3C0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_22BE33928(v22, &qword_27D9116A8, &qword_22C2AE3C0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910820, type metadata accessor for TranscriptProtoSkipStatement);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9116A8, &qword_22C2AE3C0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9116A8, &qword_22C2AE3C0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9116A8, &qword_22C2AE3C0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9116A8, &qword_22C2AE3C0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD2D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9116B0, &qword_22C2AE3C8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_22BE33928(v22, &qword_27D9116B0, &qword_22C2AE3C8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910838, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9116B0, &qword_22C2AE3C8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9116B0, &qword_22C2AE3C8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9116B0, &qword_22C2AE3C8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9116B0, &qword_22C2AE3C8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9116B8, &qword_22C2AE3D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_22BE33928(v22, &qword_27D9116B8, &qword_22C2AE3D0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910868, type metadata accessor for TranscriptProtoRequestAmendment);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9116B8, &qword_22C2AE3D0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9116B8, &qword_22C2AE3D0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9116B8, &qword_22C2AE3D0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9116B8, &qword_22C2AE3D0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD3754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoToolRetrievalRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9116C0, &qword_22C2AE3D8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_22BE33928(v22, &qword_27D9116C0, &qword_22C2AE3D8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910880, type metadata accessor for TranscriptProtoToolRetrievalRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9116C0, &qword_22C2AE3D8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9116C0, &qword_22C2AE3D8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9116C0, &qword_22C2AE3D8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9116C0, &qword_22C2AE3D8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD3C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoContextRetrievalRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9116C8, &qword_22C2AE3E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_22BE33928(v22, &qword_27D9116C8, &qword_22C2AE3E0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910898, type metadata accessor for TranscriptProtoContextRetrievalRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9116C8, &qword_22C2AE3E0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9116C8, &qword_22C2AE3E0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9116C8, &qword_22C2AE3E0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9116C8, &qword_22C2AE3E0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD4144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(0);
  v6 = *(*(matched - 8) + 64);
  v7 = MEMORY[0x28223BE20](matched);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9116D0, &qword_22C2AE3E8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, matched);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_22BE33928(v22, &qword_27D9116D0, &qword_22C2AE3E8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, matched);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9108B0, type metadata accessor for TranscriptProtoSpanMatchRequest);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9116D0, &qword_22C2AE3E8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, matched) == 1)
  {
    sub_22BE33928(v22, &qword_27D9116D0, &qword_22C2AE3E8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9116D0, &qword_22C2AE3E8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9116D0, &qword_22C2AE3E8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9116D8, &qword_22C2AE3F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_22BE33928(v22, &qword_27D9116D8, &qword_22C2AE3F0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9108C8, type metadata accessor for TranscriptProtoIntermediateSystemResponse);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9116D8, &qword_22C2AE3F0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9116D8, &qword_22C2AE3F0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9116D8, &qword_22C2AE3F0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9116D8, &qword_22C2AE3F0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD4B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9116E0, &qword_22C2AE3F8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_22BE33928(v22, &qword_27D9116E0, &qword_22C2AE3F8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9108E0, type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9116E0, &qword_22C2AE3F8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9116E0, &qword_22C2AE3F8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9116E0, &qword_22C2AE3F8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9116E0, &qword_22C2AE3F8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD502C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoAgentPrimitiveAction(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9116E8, &qword_22C2AE400);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_22BE33928(v22, &qword_27D9116E8, &qword_22C2AE400);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910958, type metadata accessor for TranscriptProtoAgentPrimitiveAction);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9116E8, &qword_22C2AE400);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9116E8, &qword_22C2AE400);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9116E8, &qword_22C2AE400);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9116E8, &qword_22C2AE400);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD5524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoUserTurnStarted(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9116F0, &qword_22C2AE408);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D9116F0, &qword_22C2AE408);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F3A0, type metadata accessor for TranscriptProtoUserTurnStarted);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9116F0, &qword_22C2AE408);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9116F0, &qword_22C2AE408);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9116F0, &qword_22C2AE408);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9116F0, &qword_22C2AE408);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD5A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSpeechPartialResult(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9116F8, &qword_22C2AE410);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v22, &qword_27D9116F8, &qword_22C2AE410);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F400, type metadata accessor for TranscriptProtoSpeechPartialResult);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9116F8, &qword_22C2AE410);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9116F8, &qword_22C2AE410);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9116F8, &qword_22C2AE410);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9116F8, &qword_22C2AE410);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E450, &qword_22C2AE470);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFD5F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoPlan(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FAD0, type metadata accessor for TranscriptProtoPlan);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD611C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD6324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoClientAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F710, type metadata accessor for TranscriptProtoClientAction);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD652C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v9 = *(*(Step - 8) + 64);
  MEMORY[0x28223BE20](Step);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FB40, type metadata accessor for TranscriptProtoQueryStep);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD6734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoVariableStep(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910018, type metadata accessor for TranscriptProtoVariableStep);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD693C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSessionError(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F7E8, type metadata accessor for TranscriptProtoSessionError);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD6B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 42)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD6D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v9 = *(*(StepResults - 8) + 64);
  MEMORY[0x28223BE20](StepResults);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FBD0, type metadata accessor for TranscriptProtoQueryStepResults);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD6F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FF20, type metadata accessor for TranscriptProtoActionResolverRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD717C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FF70, type metadata accessor for TranscriptProtoSafetyModeRelease);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD7384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FF88, type metadata accessor for TranscriptProtoSafetyModeException);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F6D0, type metadata accessor for TranscriptProtoResponseGenerationRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD7794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9105E0, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FF38, type metadata accessor for TranscriptProtoContextRetrieved);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD7BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoActionCancellation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F5E8, type metadata accessor for TranscriptProtoActionCancellation);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD7DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9105F8, type metadata accessor for TranscriptProtoToolRetrievalResponse);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD7FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910610, type metadata accessor for TranscriptProtoSystemResponse);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD81BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementResult(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90E748, type metadata accessor for TranscriptProtoStatementResult);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD83C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD85CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoToolResolution(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9106B8, type metadata accessor for TranscriptProtoToolResolution);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD87D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9106D0, type metadata accessor for TranscriptProtoUndoRedoRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD89DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9106E8, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD8BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F418, type metadata accessor for TranscriptProtoRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD8DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910700, type metadata accessor for TranscriptProtoTypeConversionRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD8FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910718, type metadata accessor for TranscriptProtoTypeConversionResult);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD91FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v9 = *(*(DecorationResult - 8) + 64);
  MEMORY[0x28223BE20](DecorationResult);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910730, type metadata accessor for TranscriptProtoQueryDecorationResult);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD9404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRecoverableError(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FAE8, type metadata accessor for TranscriptProtoRecoverableError);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD960C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoContinuePlanning(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910808, type metadata accessor for TranscriptProtoContinuePlanning);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD9814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v9 = *(*(DecorationPrePlannerResult - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResult);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910748, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD9A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSkipStatement(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910820, type metadata accessor for TranscriptProtoSkipStatement);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD9C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910838, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFD9E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910868, type metadata accessor for TranscriptProtoRequestAmendment);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDA034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoToolRetrievalRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910880, type metadata accessor for TranscriptProtoToolRetrievalRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDA23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoContextRetrievalRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910898, type metadata accessor for TranscriptProtoContextRetrievalRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDA444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(0);
  v9 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9108B0, type metadata accessor for TranscriptProtoSpanMatchRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDA64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9108C8, type metadata accessor for TranscriptProtoIntermediateSystemResponse);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDA854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9108E0, type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDAA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoAgentPrimitiveAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910958, type metadata accessor for TranscriptProtoAgentPrimitiveAction);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDAC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoUserTurnStarted(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F3A0, type metadata accessor for TranscriptProtoUserTurnStarted);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDAE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSpeechPartialResult(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F400, type metadata accessor for TranscriptProtoSpeechPartialResult);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDB2A0(void (*a1)(void))
{
  sub_22C274154();
  a1(0);
  v2 = sub_22BE1C2A0();
  sub_22BE2C988(v2, v3);
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t sub_22BFDB368(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911168, type metadata accessor for TranscriptProtoPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFDB3E4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_2810798C8, type metadata accessor for TranscriptProtoPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFDB454()
{
  sub_22BE2C988(&qword_2810798C8, type metadata accessor for TranscriptProtoPayload);

  return sub_22C270774();
}

uint64_t sub_22BFDB4E0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CC90);
  sub_22BE199F4(v0, qword_27D90CC90);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientSessionId";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "events";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoTranscript.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        sub_22BE1C37C();
        sub_22BFE0AA0();
        break;
      case 2:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
    }
  }
}

void TranscriptProtoTranscript.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE1A730();
  if (!v1 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    v2 = sub_22BE17D60();
    sub_22BE4E1C8(v2);
    if (!v0)
    {
      sub_22C0B1AE4();
      if (v3)
      {
        type metadata accessor for TranscriptProtoEvent(0);
        sub_22BE2C988(&unk_28107AB68, type metadata accessor for TranscriptProtoEvent);
        sub_22BE238E8();
        sub_22BE23CE4();
        sub_22C270874();
      }

      v4 = type metadata accessor for TranscriptProtoTranscript(0);
      sub_22BE375E4(v4);
      sub_22BE363D4();
    }
  }

  sub_22BE25C6C();
}

uint64_t static TranscriptProtoTranscript.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22C0B1C78();
  if (v6)
  {
    if (!v5)
    {
      return 0;
    }

    sub_22BE3C714();
    v9 = v4 && v7 == v8;
    if (!v9 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  sub_22C0B1C6C();
  sub_22BEA1A08();
  if (v10)
  {
    v11 = type metadata accessor for TranscriptProtoTranscript(0);
    sub_22C0B1BAC(v11);
    sub_22BE18E5C();
    sub_22BE2C988(v12, v13);
    return sub_22BE2B85C() & 1;
  }

  return 0;
}

uint64_t sub_22BFDBA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911160, type metadata accessor for TranscriptProtoTranscript);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFDBA84(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F360, type metadata accessor for TranscriptProtoTranscript);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFDBAF4()
{
  sub_22BE2C988(&qword_27D90F360, type metadata accessor for TranscriptProtoTranscript);

  return sub_22C270774();
}

uint64_t sub_22BFDBB80()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_281078C78);
  sub_22BE199F4(v0, qword_281078C78);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "rawDate";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suspendingClockInstantNs";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "continuousClockInstantNs";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "rawBootSessionUUID";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoTimepoint.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE18E2C();
        sub_22BFDBE5C();
        break;
      case 2:
      case 3:
        sub_22BE2037C();
        sub_22C2706D4();
        break;
      case 4:
        sub_22BE374D4();
        sub_22C2706A4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFDBE5C()
{
  v0 = *(type metadata accessor for TranscriptProtoTimepoint(0) + 28);
  sub_22C270454();
  sub_22BE2C988(&qword_28107F1E0, MEMORY[0x277D21570]);
  return sub_22C2706F4();
}

void static TranscriptProtoTimepoint.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  sub_22BE17BC4();
  v5 = sub_22C270454();
  v6 = sub_22BE35868(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE18DFC();
  v9 = sub_22BE289D8();
  v11 = sub_22BE5CE4C(v9, v10);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE234F4();
  v15 = sub_22BE5CE4C(&qword_27D90E478, &qword_22C296EB0);
  sub_22BE252F0(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1B01C();
  v35 = type metadata accessor for TranscriptProtoTimepoint(0);
  v19 = *(v35 + 28);
  v20 = *(v2 + 56);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE181B0(v1);
  if (!v21)
  {
    sub_22BE1B18C();
    sub_22BE22868();
    sub_22BE181B0(v1 + v20);
    if (!v21)
    {
      sub_22BE46530();
      v24 = sub_22C0B19F4();
      v25(v24);
      sub_22BE39180();
      sub_22BE2C988(v26, v27);
      sub_22BE33560();
      sub_22C272FD4();
      sub_22C0B1CA8();
      v28 = sub_22BE431C0();
      v19(v28);
      v29 = sub_22BE35838();
      v19(v29);
      sub_22BE33928(v1, &qword_27D90E470, &unk_22C2AE480);
      if (&qword_27D90E470)
      {
        goto LABEL_11;
      }

LABEL_19:
      v34 = 0;
      goto LABEL_20;
    }

    v22 = sub_22BE3F3A8();
    v23(v22);
LABEL_9:
    sub_22BE33928(v1, &qword_27D90E478, &qword_22C296EB0);
    goto LABEL_19;
  }

  sub_22BE181B0(v1 + v20);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_22BE33928(v1, &qword_27D90E470, &unk_22C2AE480);
LABEL_11:
  if (*v0 != *v4 || v0[1] != v4[1])
  {
    goto LABEL_19;
  }

  v30 = v0[2] == v4[2] && v0[3] == v4[3];
  if (!v30 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_19;
  }

  v31 = *(v35 + 32);
  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v32, v33);
  v34 = sub_22BE3C4B0();
LABEL_20:
  sub_22BE1C1DC(v34);
  sub_22BE1AABC();
}

uint64_t sub_22BFDC274(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911158, type metadata accessor for TranscriptProtoTimepoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFDC2F0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_281078C68, type metadata accessor for TranscriptProtoTimepoint);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFDC360()
{
  sub_22BE2C988(&qword_281078C68, type metadata accessor for TranscriptProtoTimepoint);

  return sub_22C270774();
}

uint64_t sub_22BFDC3EC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_2810773D0);
  sub_22BE199F4(v0, qword_2810773D0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "initialLocaleSettings";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "originatingDevice";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "genderSettings";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "shouldExecutePreviousActionsForUserPrompt";
  *(v14 + 1) = 41;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoSessionStart.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 2:
        sub_22BE1C37C();
        sub_22BFE8884();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22BFDC730();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22BFDC7E4();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22C0855E4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFDC730()
{
  v0 = *(type metadata accessor for TranscriptProtoSessionStart(0) + 20);
  type metadata accessor for TranscriptProtoDeviceDetails(0);
  sub_22BE2C988(&qword_27D910698, type metadata accessor for TranscriptProtoDeviceDetails);
  return sub_22C2706F4();
}

uint64_t sub_22BFDC7E4()
{
  v0 = *(type metadata accessor for TranscriptProtoSessionStart(0) + 24);
  type metadata accessor for TranscriptProtoGenderSettings(0);
  sub_22BE2C988(&qword_27D910668, type metadata accessor for TranscriptProtoGenderSettings);
  return sub_22C2706F4();
}

void static TranscriptProtoSessionStart.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = sub_22BE17BC4();
  v76 = type metadata accessor for TranscriptProtoGenderSettings(v2);
  v3 = sub_22BE18000(v76);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22C0B1ABC(v6);
  v7 = sub_22BE5CE4C(&qword_27D90E490, &qword_22C296EB8);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v74 = v11;
  v75 = sub_22BE5CE4C(&qword_27D90E498, &qword_22C296EC0);
  sub_22BE18000(v75);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE3C048(v15, v71);
  v16 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v17 = sub_22BE272C0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE17A44();
  v20 = sub_22BE5CE4C(&qword_27D90E4A0, &unk_22C2AE490);
  sub_22BE19448(v20);
  v22 = *(v21 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE29250(v24, v72);
  v25 = sub_22BE5CE4C(&qword_27D90E4A8, &qword_22C296EC8);
  sub_22BE28784(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE23E58();
  v29 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  v30 = sub_22BE18000(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE38390();
  v33 = sub_22BE1AEE4();
  v35 = sub_22BE5CE4C(v33, v34);
  sub_22BE19448(v35);
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE19E64();
  v39 = sub_22BE5CE4C(&qword_27D90E4B8, &qword_22C296ED0);
  sub_22BE19448(v39);
  v41 = *(v40 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE1B01C();
  v44 = *(v43 + 56);
  sub_22C0B1A8C();
  sub_22C0B1C60();
  sub_22C0B1A8C();
  sub_22BE181B0(v0);
  if (v45)
  {
    sub_22BE181B0(v0 + v44);
    if (v45)
    {
      sub_22BE33928(v0, &qword_27D90E4B0, &unk_22C2CC8A0);
      goto LABEL_11;
    }

LABEL_9:
    v46 = &qword_27D90E4B8;
    v47 = &qword_22C296ED0;
    v48 = v0;
LABEL_40:
    sub_22BE33928(v48, v46, v47);
    goto LABEL_41;
  }

  sub_22BE25C08();
  sub_22BE22868();
  sub_22BE181B0(v0 + v44);
  if (v45)
  {
    sub_22C0B1AFC();
    goto LABEL_9;
  }

  sub_22C0B0868();
  v49 = sub_22BE1C2A0();
  v51 = static TranscriptProtoLocaleSettings.== infix(_:_:)(v49, v50);
  sub_22BE1804C();
  sub_22C0B08BC();
  sub_22BE3C5E4();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E4B0, &unk_22C2CC8A0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_11:
  v52 = type metadata accessor for TranscriptProtoSessionStart(0);
  v53 = v52[5];
  v54 = *(v78 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v55 = sub_22BE3C598();
  sub_22BE36144(v55, v56);
  if (v45)
  {
    sub_22BE18190(v1 + v54);
    if (v45)
    {
      sub_22BE33928(v1, &qword_27D90E4A0, &unk_22C2AE490);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_22BE22868();
  sub_22BE18190(v1 + v54);
  if (v57)
  {
    sub_22C0B1AFC();
LABEL_19:
    v46 = &qword_27D90E4A8;
    v47 = &qword_22C296EC8;
    v48 = v1;
    goto LABEL_40;
  }

  sub_22C0B0868();
  sub_22BE1C2A0();
  static TranscriptProtoDeviceDetails.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE1AB74();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D90E4A0, &unk_22C2AE490);
  if ((&unk_22C2AE490 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_21:
  v58 = v52[6];
  v59 = *(v75 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE3CBC0();
  sub_22BE22868();
  v60 = sub_22BFB1A7C();
  sub_22BE36144(v60, v61);
  if (!v45)
  {
    sub_22BE22868();
    sub_22BE18190(v77 + v59);
    if (!v64)
    {
      sub_22C0B0868();
      if (*v74 == *v73 && v74[1] == v73[1])
      {
        sub_22BE27098();
        sub_22BE18E5C();
        sub_22BE2C988(v65, v66);
        v67 = sub_22BE3C4B0();
        sub_22C0B08BC();
        sub_22BE3C5E4();
        sub_22C0B08BC();
        sub_22BE33928(v77, &qword_27D90E490, &qword_22C296EB8);
        if ((v67 & 1) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_26;
      }

      sub_22C0B08BC();
      sub_22BE1AB74();
      sub_22C0B08BC();
      v46 = &qword_27D90E490;
      v47 = &qword_22C296EB8;
      goto LABEL_39;
    }

    sub_22C0B1AFC();
LABEL_33:
    v46 = &qword_27D90E498;
    v47 = &qword_22C296EC0;
LABEL_39:
    v48 = v77;
    goto LABEL_40;
  }

  sub_22BE18190(v77 + v59);
  if (!v45)
  {
    goto LABEL_33;
  }

  sub_22BE33928(v77, &qword_27D90E490, &qword_22C296EB8);
LABEL_26:
  sub_22C0B1BDC(v52[7]);
  if (!v45)
  {
    if (v62 == 2 || ((v63 ^ v62) & 1) != 0)
    {
      goto LABEL_41;
    }

LABEL_45:
    sub_22C0B1D70();
    sub_22BE18E5C();
    sub_22BE2C988(v69, v70);
    v68 = sub_22BE406DC();
    goto LABEL_42;
  }

  if (v62 == 2)
  {
    goto LABEL_45;
  }

LABEL_41:
  v68 = 0;
LABEL_42:
  sub_22BE1C1DC(v68);
  sub_22BE1AABC();
}

uint64_t sub_22BFDCFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911150, type metadata accessor for TranscriptProtoSessionStart);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFDD050(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_2810773C0, type metadata accessor for TranscriptProtoSessionStart);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFDD0C0()
{
  sub_22BE2C988(&qword_2810773C0, type metadata accessor for TranscriptProtoSessionStart);

  return sub_22C270774();
}

uint64_t sub_22BFDD14C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CCA8);
  sub_22BE199F4(v0, qword_27D90CCA8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "dateTime";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timeZone";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFDD364()
{
  v0 = *(type metadata accessor for TranscriptProtoDateTimeContext(0) + 20);
  sub_22C270454();
  sub_22BE2C988(&qword_28107F1E0, MEMORY[0x277D21570]);
  return sub_22C2706F4();
}

uint64_t sub_22BFDD458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D90E470, &unk_22C2AE480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_22C270454();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for TranscriptProtoDateTimeContext(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E470, &unk_22C2AE480);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_22BE2C988(&qword_28107F1E0, MEMORY[0x277D21570]);
  sub_22C270884();
  return (*(v9 + 8))(v12, v8);
}

void static TranscriptProtoDateTimeContext.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE17BC4();
  v3 = sub_22C270454();
  v4 = sub_22BE35868(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE18DFC();
  v7 = sub_22BE289D8();
  v9 = sub_22BE5CE4C(v7, v8);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE234F4();
  v13 = sub_22BE5CE4C(&qword_27D90E478, &qword_22C296EB0);
  sub_22BE252F0(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1B01C();
  v17 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  sub_22C0B15D0(v17);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE181B0(v1);
  if (!v18)
  {
    sub_22BE1B18C();
    sub_22BE22868();
    sub_22BE181B0(v1 + v2);
    if (!v18)
    {
      sub_22BE46530();
      v22 = sub_22C0B19F4();
      v23(v22);
      sub_22BE39180();
      sub_22BE2C988(v24, v25);
      sub_22BE33560();
      sub_22C272FD4();
      sub_22C0B1CA8();
      v26 = sub_22BE431C0();
      v0(v26);
      v27 = sub_22BE35838();
      v0(v27);
      sub_22BE33928(v1, &qword_27D90E470, &unk_22C2AE480);
      if ((&qword_27D90E470 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    v19 = sub_22BE3F3A8();
    v20(v19);
LABEL_9:
    sub_22BE33928(v1, &qword_27D90E478, &qword_22C296EB0);
    goto LABEL_10;
  }

  sub_22BE181B0(v1 + v2);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_22BE33928(v1, &qword_27D90E470, &unk_22C2AE480);
LABEL_12:
  sub_22BEC04E8();
  if (v18)
  {
    v30 = v28 == v29;
  }

  else
  {
    v30 = 0;
  }

  if (v30 || (sub_22C274014() & 1) != 0)
  {
    sub_22C0B1AC8();
    sub_22BE18E5C();
    sub_22BE2C988(v31, v32);
    v21 = sub_22BE3C4B0();
    goto LABEL_18;
  }

LABEL_10:
  v21 = 0;
LABEL_18:
  sub_22BE1C1DC(v21);
  sub_22BE1AABC();
}

uint64_t sub_22BFDD990(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911148, type metadata accessor for TranscriptProtoDateTimeContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFDDA10(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F388, type metadata accessor for TranscriptProtoDateTimeContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFDDA80()
{
  sub_22BE2C988(&qword_27D90F388, type metadata accessor for TranscriptProtoDateTimeContext);

  return sub_22C270774();
}

uint64_t sub_22BFDDB0C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CCC0);
  sub_22BE199F4(v0, qword_27D90CCC0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "turn";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "turnId";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "siriRequestContext";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoUserTurnStarted.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE18E2C();
        sub_22BFDDE10();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22BFDDEC4();
        break;
      case 3:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22BFDDF78();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFDDE10()
{
  v0 = *(type metadata accessor for TranscriptProtoUserTurnStarted(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22BFDDEC4()
{
  v0 = *(type metadata accessor for TranscriptProtoUserTurnStarted(0) + 24);
  type metadata accessor for TranscriptProtoUserTurn(0);
  sub_22BE2C988(&qword_27D90F3B8, type metadata accessor for TranscriptProtoUserTurn);
  return sub_22C2706F4();
}

uint64_t sub_22BFDDF78()
{
  v0 = *(type metadata accessor for TranscriptProtoUserTurnStarted(0) + 28);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  sub_22BE2C988(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
  return sub_22C2706F4();
}

uint64_t TranscriptProtoUserTurnStarted.traverse<A>(visitor:)()
{
  v2 = sub_22BE3B0CC();
  result = sub_22BFDE0C4(v2, v3, v4, v5);
  if (!v0)
  {
    v7 = sub_22BE17D60();
    sub_22BFDE298(v7, v8, v9, v10);
    v11 = *v1;
    v12 = v1[1];
    sub_22BE1B448();
    if (v13)
    {
      sub_22BE2910C();
      sub_22C270844();
    }

    v14 = sub_22BE17D60();
    sub_22BFDE46C(v14, v15, v16, v17);
    v18 = *(type metadata accessor for TranscriptProtoUserTurnStarted(0) + 32);
    return sub_22BE1AC30();
  }

  return result;
}

uint64_t sub_22BFDE0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoUserTurnStarted(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFDE298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E4D8, &qword_22C2B5DB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoUserTurn(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoUserTurnStarted(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E4D8, &qword_22C2B5DB0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F3B8, type metadata accessor for TranscriptProtoUserTurn);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BFDE46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoUserTurnStarted(0) + 28);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90C7E8, &unk_22C2AE4B0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoUserTurnStarted.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22C0B1E74();
  v72 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(v3);
  v4 = sub_22BE18000(v72);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17A44();
  sub_22BE3FF64(v7);
  v8 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE33FF0(v12, v67);
  v71 = sub_22BE5CE4C(&qword_27D90E4D0, &qword_22C296ED8);
  sub_22BE18000(v71);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  v17 = sub_22BE4098C(v16, v68);
  v18 = type metadata accessor for TranscriptProtoUserTurn(v17);
  v19 = sub_22BE1B7B0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  sub_22C0B1ABC(v22);
  v23 = sub_22BE5CE4C(&qword_27D90E4D8, &qword_22C2B5DB0);
  sub_22BE19448(v23);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE181D0(v27, v69);
  v74 = sub_22BE5CE4C(&qword_27D90E4E0, &qword_22C296EE0);
  sub_22BE18000(v74);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  v32 = sub_22BE1BC94(v31, v70);
  v33 = type metadata accessor for TranscriptProtoStatementID(v32);
  v34 = sub_22BE18000(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE179EC();
  sub_22BE336DC();
  v37 = sub_22BE289D8();
  v39 = sub_22BE5CE4C(v37, v38);
  sub_22BE19448(v39);
  v41 = *(v40 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE19E64();
  v43 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22C0B1A7C(v43);
  v45 = *(v44 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE19668();
  v47 = *(type metadata accessor for TranscriptProtoUserTurnStarted(0) + 20);
  v48 = *(v2 + 56);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22C0B1C48();
  v50 = v49;
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE3CAA4(v0);
  if (v51)
  {
    sub_22BE3CAA4(v0 + v48);
    if (v51)
    {
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    v52 = &qword_27D909100;
    v53 = &unk_22C27FD00;
    v54 = v0;
LABEL_35:
    sub_22BE33928(v54, v52, v53);
    goto LABEL_36;
  }

  sub_22BE1A8C4();
  sub_22BE22868();
  sub_22BE3CAA4(v0 + v48);
  if (v51)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22BE4160C();
  sub_22C0B0868();
  v55 = sub_22BE1AB74();
  v33 = static TranscriptProtoStatementID.== infix(_:_:)(v55, v56);
  sub_22C0B08BC();
  sub_22BE194F8();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_11:
  sub_22BE3E7A8();
  sub_22C0B1DB4();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v57 = sub_22BFB1A7C();
  sub_22BE36144(v57, v58);
  if (v51)
  {
    sub_22BE18190(v33 + v1);
    if (v51)
    {
      sub_22BE33928(v33, &qword_27D90E4D8, &qword_22C2B5DB0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_22BE22868();
  sub_22BE18190(v33 + v1);
  if (v59)
  {
    sub_22C0B1D88();
LABEL_19:
    v52 = &qword_27D90E4E0;
    v53 = &qword_22C296EE0;
    v54 = v33;
    goto LABEL_35;
  }

  sub_22C0B0868();
  sub_22C0B1B94();
  static TranscriptProtoUserTurn.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE3C968();
  sub_22C0B08BC();
  sub_22BE33928(v33, &qword_27D90E4D8, &qword_22C2B5DB0);
  if ((&qword_22C2B5DB0 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_21:
  v60 = *v2 == *v50 && *(v2 + 8) == v50[1];
  if (!v60 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_22C0B1B6C();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE3CBC0();
  sub_22BE22868();
  v61 = sub_22BFB1A7C();
  sub_22BE36144(v61, v62);
  if (v51)
  {
    sub_22BE18A84();
    if (v51)
    {
      sub_22BE33928(v73, &qword_27D90C7E8, &unk_22C2AE4B0);
LABEL_39:
      sub_22C0B1D70();
      sub_22BE18E5C();
      sub_22BE2C988(v65, v66);
      v64 = sub_22BE406DC();
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  sub_22C0B1D14();
  sub_22BE18A84();
  if (v63)
  {
    sub_22BE291DC();
    sub_22C0B08BC();
LABEL_34:
    v52 = &qword_27D90E4D0;
    v53 = &qword_22C296ED8;
    v54 = v73;
    goto LABEL_35;
  }

  sub_22C0B17E8();
  sub_22C0B0868();
  sub_22BE200E0();
  static ContextProtoStructuredContextSiriRequestContext.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE39EAC();
  sub_22C0B08BC();
  sub_22BE33928(v73, &qword_27D90C7E8, &unk_22C2AE4B0);
  if (&unk_22C2AE4B0)
  {
    goto LABEL_39;
  }

LABEL_36:
  v64 = 0;
LABEL_37:
  sub_22BE1C1DC(v64);
  sub_22BE1AABC();
}

uint64_t sub_22BFDECA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D911140, type metadata accessor for TranscriptProtoUserTurnStarted);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFDED28(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F3A0, type metadata accessor for TranscriptProtoUserTurnStarted);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFDED98()
{
  sub_22BE2C988(&qword_27D90F3A0, type metadata accessor for TranscriptProtoUserTurnStarted);

  return sub_22C270774();
}

uint64_t sub_22BFDEE30()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90CCD8);
  sub_22BE199F4(v0, qword_27D90CCD8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "speech";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BFDF05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoUserTurnSpeech(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E4F0, &qword_22C2CC7E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9115C0, &qword_22C2AE2D8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E4F0, &qword_22C2CC7E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v22, &qword_27D9115C0, &qword_22C2AE2D8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90F3D0, type metadata accessor for TranscriptProtoUserTurnSpeech);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9115C0, &qword_22C2AE2D8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9115C0, &qword_22C2AE2D8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9115C0, &qword_22C2AE2D8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9115C0, &qword_22C2AE2D8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E4F0, &qword_22C2CC7E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22BFDF554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoUserTurnText(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90E4F0, &qword_22C2CC7E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9115C8, &qword_22C2AE2E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90E4F0, &qword_22C2CC7E0);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D9115C8, &qword_22C2AE2E0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F3E8, type metadata accessor for TranscriptProtoUserTurnText);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9115C8, &qword_22C2AE2E0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9115C8, &qword_22C2AE2E0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9115C8, &qword_22C2AE2E0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9115C8, &qword_22C2AE2E0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90E4F0, &qword_22C2CC7E0);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoUserTurn.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22C0B137C();
  v7 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  sub_22BE2B890(v7);
  if (v8)
  {
    goto LABEL_6;
  }

  sub_22BE1AEE4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_22BE17D78();
    sub_22BFDFD2C(v9, v10, v11, v12);
  }

  else
  {
    v13 = sub_22BE17D78();
    sub_22BFDFB24(v13, v14, v15, v16);
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_6:
    v17 = type metadata accessor for TranscriptProtoUserTurn(0);
    sub_22BE235A8(v17);
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22BFDFB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E4F0, &qword_22C2CC7E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoUserTurnSpeech(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E4F0, &qword_22C2CC7E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F3D0, type metadata accessor for TranscriptProtoUserTurnSpeech);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22BFDFD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E4F0, &qword_22C2CC7E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoUserTurnText(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90E4F0, &qword_22C2CC7E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F3E8, type metadata accessor for TranscriptProtoUserTurnText);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoUserTurn.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoUserTurnEnum(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE1AEE4();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  v12 = sub_22BE5CE4C(&qword_27D90E4F8, &qword_22C296EE8);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  v16 = MEMORY[0x28223BE20](v15);
  sub_22BE1AC54(v16);
  sub_22BE28764();
  sub_22BE26A1C();
  if (v17)
  {
    sub_22BE23D0C();
    if (v17)
    {
      sub_22BE33928(v0, &qword_27D90E4F0, &qword_22C2CC7E0);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoUserTurn(0);
      sub_22BE3636C(v19);
      sub_22BE18E5C();
      sub_22BE2C988(v20, v21);
      v18 = sub_22BE2B85C();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE23D0C();
  if (v17)
  {
    sub_22C0B1AA4();
LABEL_9:
    sub_22BE33928(v0, &qword_27D90E4F8, &qword_22C296EE8);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoUserTurnEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90E4F0, &qword_22C2CC7E0);
  if (&qword_27D90E4F0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}