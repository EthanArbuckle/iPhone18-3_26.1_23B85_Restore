uint64_t sub_22BF8B174()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BB30);
  sub_22BE199F4(v0, qword_27D90BB30);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "siriEntityMatcher";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "globalEntityMatcher";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BF8B3AC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BB48);
  sub_22BE199F4(v0, qword_27D90BB48);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "homeEntity";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "synonym";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "transliteration";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "expandedEmoji";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "contactRelationship";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "contactHypocorism";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "contactHandle";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BF8B6F0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BB60);
  sub_22BE199F4(v0, qword_27D90BB60);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "relevance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "metadata";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "typedValue";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "structuredContext";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "identifier";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoRetrievedContext.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE18E2C();
        sub_22BF8BAE0();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22BF8BB94();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22BF8BC48();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22BF8BCB0();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22BF8BD64();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22BF8BE18();
        break;
      case 7:
        sub_22BE29EBC();
        sub_22BE18E2C();
        sub_22BF8DDEC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BF8BAE0()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 20);
  sub_22C272594();
  sub_22BE2C940(&qword_28106DF50, MEMORY[0x277D727E0]);
  return sub_22C2706F4();
}

uint64_t sub_22BF8BB94()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 24);
  type metadata accessor for ContextProtoConfidence(0);
  sub_22BE2C940(&qword_27D90C338, type metadata accessor for ContextProtoConfidence);
  return sub_22C2706F4();
}

uint64_t sub_22BF8BCB0()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 28);
  type metadata accessor for ContextProtoContextMetadata(0);
  sub_22BE2C940(&qword_27D90C2E0, type metadata accessor for ContextProtoContextMetadata);
  return sub_22C2706F4();
}

uint64_t sub_22BF8BD64()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 32);
  sub_22C272594();
  sub_22BE2C940(&qword_28106DF50, MEMORY[0x277D727E0]);
  return sub_22C2706F4();
}

uint64_t sub_22BF8BE18()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 36);
  type metadata accessor for ContextProtoStructuredContext(0);
  sub_22BE2C940(&qword_27D90C350, type metadata accessor for ContextProtoStructuredContext);
  return sub_22C2706F4();
}

void ContextProtoRetrievedContext.traverse<A>(visitor:)()
{
  sub_22BE3B090();
  sub_22BE3C860();
  sub_22BFAB6A8();
  if (!v0)
  {
    v2 = sub_22BE17D60();
    sub_22BF8BFD0(v2, v3, v4, v5);
    if (*v1)
    {
      v19 = *v1;
      sub_22BFADEF8();
      sub_22BE23CE4();
      sub_22C2707D4();
    }

    v6 = sub_22BE17D60();
    sub_22BF8C1A4(v6, v7, v8, v9);
    v10 = sub_22BE17D60();
    sub_22BF8C378(v10, v11, v12, v13);
    v14 = sub_22BE17D60();
    sub_22BF8C584(v14, v15, v16, v17);
    sub_22BE29EBC();
    sub_22BE17D60();
    sub_22BF8E8E8();
    v18 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 44);
    sub_22BE1AC30();
  }
}

uint64_t sub_22BF8BFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoConfidence(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90BF70, &qword_22C290DC0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C338, type metadata accessor for ContextProtoConfidence);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoConfidence);
}

uint64_t sub_22BF8C1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BF60, &unk_22C294AB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoContextMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 28);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90BF60, &unk_22C294AB0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C2E0, type metadata accessor for ContextProtoContextMetadata);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoContextMetadata);
}

uint64_t sub_22BF8C378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_22C272594();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 32);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D909128, &qword_22C294AA0);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_22BE2C940(&qword_28106DF50, MEMORY[0x277D727E0]);
  sub_22C270884();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22BF8C584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BF50, &unk_22C2B5ED0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoStructuredContext(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoRetrievedContext(0) + 36);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90BF50, &unk_22C2B5ED0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C350, type metadata accessor for ContextProtoStructuredContext);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoStructuredContext);
}

void static ContextProtoRetrievedContext.== infix(_:_:)()
{
  sub_22BE19460();
  v2 = v1;
  v4 = v3;
  v139 = type metadata accessor for ContextProtoStructuredContext(0);
  v5 = sub_22BE18000(v139);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v136 = v8;
  v9 = sub_22BE5CE4C(&qword_27D90BF50, &unk_22C2B5ED0);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  v137 = v13;
  v138 = sub_22BE5CE4C(&qword_27D90BF58, &qword_22C290DB0);
  sub_22BE18000(v138);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1A174();
  v140 = v17;
  v18 = sub_22BE183BC();
  v147 = type metadata accessor for ContextProtoContextMetadata(v18);
  v19 = sub_22BE18000(v147);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  v142 = v22;
  v23 = sub_22BE5CE4C(&qword_27D90BF60, &unk_22C294AB0);
  sub_22BE19448(v23);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1A174();
  v145 = v27;
  v146 = sub_22BE5CE4C(&qword_27D90BF68, &qword_22C290DB8);
  sub_22BE18000(v146);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE1A174();
  v148 = v31;
  v32 = sub_22BE183BC();
  v153 = type metadata accessor for ContextProtoConfidence(v32);
  v33 = sub_22BE18000(v153);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE17A44();
  v149 = v36;
  v37 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  sub_22BE19448(v37);
  v39 = *(v38 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v40);
  sub_22BE1A174();
  v150 = v41;
  v152 = sub_22BE5CE4C(&qword_27D90BF78, &qword_22C290DC8);
  sub_22BE18000(v152);
  v43 = *(v42 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v44);
  sub_22BE28738();
  v45 = sub_22C272594();
  v46 = sub_22BE179D8(v45);
  v156 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BE17A44();
  v151 = v50;
  v51 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v52 = sub_22BE19448(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BE17B98();
  v141 = v55;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v56);
  v57 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  v58 = sub_22BE18000(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BE17B98();
  v144 = v61;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v62);
  v64 = &v136 - v63;
  v154 = type metadata accessor for ContextProtoRetrievedContext(0);
  v155 = v4;
  v65 = *(v154 + 20);
  v143 = v57;
  v66 = *(v57 + 48);
  sub_22BE22868();
  v67 = v2;
  sub_22BE22868();
  sub_22BE23B00(v64);
  if (v68)
  {
    sub_22BE23B00(&v64[v66]);
    if (v68)
    {
      sub_22BE33928(v64, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_12;
    }

LABEL_9:
    v72 = &qword_27D909130;
    v73 = &unk_22C27FD30;
LABEL_10:
    v74 = v64;
LABEL_33:
    sub_22BE33928(v74, v72, v73);
    goto LABEL_34;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE23B00(&v64[v66]);
  if (v68)
  {
    v69 = *(v156 + 8);
    v70 = sub_22BE36318();
    v71(v70);
    goto LABEL_9;
  }

  v75 = v156;
  v76 = v151;
  (*(v156 + 32))(v151, &v64[v66], v45);
  sub_22BE231A8();
  sub_22BE2C940(v77, v78);
  v79 = sub_22C272FD4();
  v80 = *(v75 + 8);
  v80(v76, v45);
  v81 = sub_22BE36318();
  (v80)(v81);
  sub_22BE33928(v64, &qword_27D909128, &qword_22C294AA0);
  if ((v79 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_12:
  v83 = v154;
  v82 = v155;
  v84 = *(v154 + 24);
  v85 = *(v152 + 48);
  sub_22BE3A518();
  sub_22BE3A518();
  v86 = v153;
  sub_22BE36144(v0, 1);
  if (v68)
  {
    sub_22BE18190(v0 + v85);
    if (v68)
    {
      sub_22BE33928(v0, &qword_27D90BF70, &qword_22C290DC0);
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v92 = v150;
  sub_22BE22868();
  sub_22BE18190(v0 + v85);
  if (v93)
  {
    sub_22BE30F78();
    sub_22BFB18F4(v92, v94);
LABEL_26:
    v72 = &qword_27D90BF78;
    v73 = &qword_22C290DC8;
LABEL_32:
    v74 = v0;
    goto LABEL_33;
  }

  sub_22BE2861C();
  v95 = v149;
  sub_22BFB18A0();
  if (*v92 != *v95 || *(v92 + 4) != *(v95 + 4))
  {
    sub_22BE375C0();
    sub_22BFB18F4(v95, v99);
    v100 = sub_22BE200D4();
    sub_22BFB18F4(v100, v101);
    v72 = &qword_27D90BF70;
    v73 = &qword_22C290DC0;
    goto LABEL_32;
  }

  v96 = *(v86 + 24);
  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v97, v98);
  LOBYTE(v96) = sub_22BE3605C();
  sub_22BFB18F4(v95, type metadata accessor for ContextProtoConfidence);
  sub_22BFB18F4(v92, type metadata accessor for ContextProtoConfidence);
  sub_22BE33928(v0, &qword_27D90BF70, &qword_22C290DC0);
  if ((v96 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if (*v82 != *v67)
  {
    goto LABEL_34;
  }

  v87 = v83[7];
  v88 = *(v146 + 48);
  v89 = v148;
  sub_22BE390A0();
  sub_22BE1B0AC();
  v90 = sub_22BE26188();
  sub_22BE36144(v90, v91);
  if (v68)
  {
    sub_22BE18190(v89 + v88);
    if (v68)
    {
      sub_22BE33928(v89, &qword_27D90BF60, &unk_22C294AB0);
      goto LABEL_41;
    }

LABEL_39:
    v72 = &qword_27D90BF68;
    v73 = &qword_22C290DB8;
LABEL_50:
    v74 = v89;
    goto LABEL_33;
  }

  v103 = v145;
  sub_22BE22868();
  sub_22BE18190(v89 + v88);
  if (v104)
  {
    sub_22BFB18F4(v103, type metadata accessor for ContextProtoContextMetadata);
    goto LABEL_39;
  }

  sub_22BFB18A0();
  static ContextProtoContextMetadata.== infix(_:_:)();
  sub_22BE1AF5C();
  sub_22BFB18F4(v103, type metadata accessor for ContextProtoContextMetadata);
  sub_22BE33928(v89, &qword_27D90BF60, &unk_22C294AB0);
  if ((&unk_22C294AB0 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_41:
  v105 = v83[8];
  v89 = v144;
  v106 = *(v143 + 48);
  sub_22BE390A0();
  sub_22BE1B0AC();
  sub_22BE23B00(v89);
  if (v68)
  {
    sub_22BE23B00(v89 + v106);
    if (v68)
    {
      sub_22BE33928(v89, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  sub_22BE22868();
  sub_22BE23B00(v89 + v106);
  if (v107)
  {
    v108 = *(v156 + 8);
    v109 = sub_22BE36318();
    v110(v109);
LABEL_49:
    v72 = &qword_27D909130;
    v73 = &unk_22C27FD30;
    goto LABEL_50;
  }

  v111 = v156;
  v112 = v89 + v106;
  v113 = v151;
  (*(v156 + 32))(v151, v112, v45);
  sub_22BE231A8();
  sub_22BE2C940(v114, v115);
  sub_22BE38970();
  v116 = sub_22C272FD4();
  v117 = *(v111 + 8);
  v117(v113, v45);
  v118 = sub_22BE36318();
  (v117)(v118);
  sub_22BE33928(v89, &qword_27D909128, &qword_22C294AA0);
  if ((v116 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_52:
  v119 = v83[9];
  v120 = *(v138 + 48);
  v121 = v140;
  sub_22BE390A0();
  v64 = v121;
  sub_22BE1B0AC();
  v122 = sub_22BE26188();
  sub_22BE36144(v122, v123);
  if (!v68)
  {
    v124 = v137;
    sub_22BE22868();
    sub_22BE18190(&v64[v120]);
    if (!v125)
    {
      sub_22BFB18A0();
      sub_22BE232C8();
      static ContextProtoStructuredContext.== infix(_:_:)();
      sub_22BE1AF5C();
      v126 = sub_22BE200D4();
      sub_22BFB18F4(v126, v127);
      sub_22BE33928(v64, &qword_27D90BF50, &unk_22C2B5ED0);
      if ((&unk_22C2B5ED0 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_62;
    }

    sub_22BFB18F4(v124, type metadata accessor for ContextProtoStructuredContext);
    goto LABEL_60;
  }

  sub_22BE18190(v121 + v120);
  if (!v68)
  {
LABEL_60:
    v72 = &qword_27D90BF58;
    v73 = &qword_22C290DB0;
    goto LABEL_10;
  }

  sub_22BE33928(v121, &qword_27D90BF50, &unk_22C2B5ED0);
LABEL_62:
  v128 = v83[10];
  v129 = *&v67[v128 + 8];
  if (*&v82[v128 + 8])
  {
    if (!v129)
    {
      goto LABEL_34;
    }

    sub_22BE3A508(&v82[v128]);
    v132 = v68 && v130 == v131;
    if (!v132 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_71:
    v133 = v83[11];
    sub_22C2704B4();
    sub_22BE18E14();
    sub_22BE2C940(v134, v135);
    v102 = sub_22C272FD4();
    goto LABEL_35;
  }

  if (!v129)
  {
    goto LABEL_71;
  }

LABEL_34:
  v102 = 0;
LABEL_35:
  sub_22BE1C1DC(v102);
  sub_22BE1AABC();
}

uint64_t (*sub_22BF8D2EC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_22BF8D340(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C768, type metadata accessor for ContextProtoRetrievedContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF8D3C0(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C0F8, type metadata accessor for ContextProtoRetrievedContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF8D430()
{
  sub_22BE2C940(&qword_27D90C0F8, type metadata accessor for ContextProtoRetrievedContext);

  return sub_22C270774();
}

uint64_t sub_22BF8D4BC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BB78);
  sub_22BE199F4(v0, qword_27D90BB78);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_22C290D70;
  v4 = v41 + v3 + v1[14];
  *(v41 + v3) = 1;
  *v4 = "entity_id";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v41 + v3 + v2 + v1[14];
  *(v41 + v3 + v2) = 2;
  *v8 = "app_bundle_id";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v41 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "saliency";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v7();
  v12 = (v41 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "on_screen_surrounding_text";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v7();
  v14 = (v41 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "on_screen_bounding_box";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v7();
  v16 = (v41 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "seq";
  *(v17 + 1) = 3;
  v17[16] = 2;
  v7();
  v18 = (v41 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "group_id";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v7();
  v20 = (v41 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "isSelected";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v7();
  v22 = (v41 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "isPrimary";
  *(v23 + 1) = 9;
  v23[16] = 2;
  v7();
  v24 = (v41 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "screenDimensions";
  *(v25 + 1) = 16;
  v25[16] = 2;
  v7();
  v26 = (v41 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "dataSource";
  *(v27 + 1) = 10;
  v27[16] = 2;
  v7();
  v28 = (v41 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "displayRepresentation";
  *(v29 + 1) = 21;
  v29[16] = 2;
  v7();
  v30 = (v41 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "appBundleIdentifier";
  *(v31 + 1) = 19;
  v31[16] = 2;
  v7();
  v32 = (v41 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "screenSize";
  *(v33 + 1) = 10;
  v33[16] = 2;
  v7();
  v34 = (v41 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "frame";
  *(v35 + 1) = 5;
  v35[16] = 2;
  v7();
  v36 = (v41 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "elementVisibility";
  *(v37 + 1) = 17;
  v37[16] = 2;
  v7();
  v38 = (v41 + v3 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "processInstanceIdentifier";
  *(v39 + 1) = 25;
  v39[16] = 2;
  v7();
  return sub_22C2708A4();
}

void ContextProtoContextMetadata.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    v1 = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22BF8DC20();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22BF9A07C();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22BF8DCD4();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22BF8DD88();
        break;
      case 7:
        sub_22BE294B0();
        sub_22BE18E2C();
        sub_22BF8DDEC();
        break;
      case 8:
        sub_22BE18E2C();
        sub_22BF8DE3C();
        break;
      case 9:
        sub_22BE18E2C();
        sub_22BF8DEA0();
        break;
      case 10:
        sub_22BE18E2C();
        sub_22BF8DF04();
        break;
      case 11:
        sub_22BE18E2C();
        sub_22BF8DFB8();
        break;
      case 12:
        sub_22BE18E2C();
        sub_22BF8E02C();
        break;
      case 13:
        v3 = sub_22BE18E2C();
        sub_22BF96E98(v3, v4, v5, v6, v7, v8);
        break;
      case 14:
        sub_22BE18E2C();
        sub_22BF8E0E0();
        break;
      case 15:
        sub_22BE18E2C();
        sub_22BF8E194();
        break;
      case 16:
        sub_22BE18E2C();
        sub_22BF8E248();
        break;
      case 17:
        sub_22BE18E2C();
        sub_22BF8E2AC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BF8DC20()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 28);
  type metadata accessor for ContextProtoConfidence(0);
  sub_22BE2C940(&qword_27D90C338, type metadata accessor for ContextProtoConfidence);
  return sub_22C2706F4();
}

uint64_t sub_22BF8DCD4()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 32);
  type metadata accessor for ContextProtoBoundingBox(0);
  sub_22BE2C940(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox);
  return sub_22C2706F4();
}

uint64_t sub_22BF8DDEC()
{
  v0 = sub_22BE378F4();
  v2 = *(v1(v0) + 40);
  sub_22BE2037C();
  return sub_22C270694();
}

uint64_t sub_22BF8DF04()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 52);
  type metadata accessor for ContextProtoBoundingBox(0);
  sub_22BE2C940(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox);
  return sub_22C2706F4();
}

uint64_t sub_22BF8DFB8()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 56);
  sub_22BFB194C();
  return sub_22C2705D4();
}

uint64_t sub_22BF8E02C()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 60);
  type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  sub_22BE2C940(&qword_27D90C2F8, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  return sub_22C2706F4();
}

uint64_t sub_22BF8E0E0()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 68);
  type metadata accessor for ContextProtoCGRect(0);
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect);
  return sub_22C2706F4();
}

uint64_t sub_22BF8E194()
{
  v0 = *(type metadata accessor for ContextProtoContextMetadata(0) + 72);
  type metadata accessor for ContextProtoCGRect(0);
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect);
  return sub_22C2706F4();
}

void ContextProtoContextMetadata.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3B090();
  sub_22BE3C860();
  sub_22BE4E190(v1);
  if (!v0)
  {
    v2 = sub_22BE17D60();
    sub_22BE4E1C8(v2);
    v3 = sub_22BE17D60();
    sub_22BF8E4C8(v3, v4, v5, v6);
    sub_22BE41DF4();
    if (v7)
    {
      type metadata accessor for ContextProtoSurroundingText(0);
      sub_22BE2C940(&qword_27D90BF88, type metadata accessor for ContextProtoSurroundingText);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    v8 = sub_22BE17D60();
    sub_22BF8E69C(v8, v9, v10, v11);
    v12 = sub_22BE17D60();
    sub_22BF8E870(v12);
    sub_22BE294B0();
    sub_22BE17D60();
    sub_22BF8E8E8();
    v13 = sub_22BE17D60();
    sub_22BF8E948(v13);
    v14 = sub_22BE17D60();
    sub_22BF8E9C0(v14);
    v15 = sub_22BE17D60();
    sub_22BF8EA38(v15, v16, v17, v18);
    v19 = sub_22BE17D60();
    sub_22BF8EC0C(v19);
    v20 = sub_22BE17D60();
    sub_22BF8EC98(v20, v21, v22, v23);
    v24 = sub_22BE17D60();
    sub_22BF8EE6C(v24);
    v25 = sub_22BE17D60();
    sub_22BF8EEE4(v25, v26, v27, v28);
    v29 = sub_22BE17D60();
    sub_22BF8F0B8(v29, v30, v31, v32);
    v33 = sub_22BE17D60();
    sub_22BF8F28C(v33);
    v34 = sub_22BE17D60();
    sub_22BF8F304(v34);
    v35 = *(type metadata accessor for ContextProtoContextMetadata(0) + 84);
    sub_22BE1AC30();
  }

  sub_22BE25C6C();
}

uint64_t sub_22BF8E4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoConfidence(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoContextMetadata(0) + 28);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90BF70, &qword_22C290DC0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C338, type metadata accessor for ContextProtoConfidence);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoConfidence);
}

uint64_t sub_22BF8E69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoBoundingBox(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoContextMetadata(0) + 32);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9092A0, &unk_22C294AC0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoBoundingBox);
}

uint64_t sub_22BF8E870(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22C270834();
  }

  return result;
}

uint64_t sub_22BF8E8E8()
{
  v1 = sub_22BE378F4();
  result = v2(v1);
  v4 = (v0 + *(result + 40));
  if (v4[1])
  {
    v5 = *v4;
    sub_22BE25B10();
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF8E948(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF8E9C0(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF8EA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoBoundingBox(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoContextMetadata(0) + 52);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9092A0, &unk_22C294AC0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoBoundingBox);
}

uint64_t sub_22BF8EC0C(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  if (*(a1 + *(result + 56)) != 6)
  {
    v3 = *(a1 + *(result + 56));
    sub_22BFB194C();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t sub_22BF8EC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BFA0, &qword_22C2CB790);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoContextMetadata(0) + 60);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90BFA0, &qword_22C2CB790);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C2F8, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
}

uint64_t sub_22BF8EE6C(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  v3 = (a1 + *(result + 64));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF8EEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoCGRect(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoContextMetadata(0) + 68);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90BF90, &unk_22C294AD0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_22BF8F0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoCGRect(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoContextMetadata(0) + 72);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90BF90, &unk_22C294AD0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_22BF8F28C(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  v3 = (a1 + *(result + 76));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22C270834();
  }

  return result;
}

uint64_t sub_22BF8F304(uint64_t a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  v3 = (a1 + *(result + 80));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22C270844();
  }

  return result;
}

void static ContextProtoContextMetadata.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  v198 = type metadata accessor for ContextProtoCGRect(0);
  v6 = sub_22BE18000(v198);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v11 = v10 - v9;
  v12 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  v13 = sub_22BE19448(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  v193 = v16;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  v194 = v189 - v18;
  v196 = sub_22BE5CE4C(&qword_27D90BF98, &qword_22C290DD0);
  v19 = sub_22BE18000(v196);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17B98();
  v195 = v22;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v23);
  v199 = v189 - v24;
  v25 = sub_22BE183BC();
  v202 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(v25);
  v26 = sub_22BE18000(v202);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE17A44();
  v197 = v29;
  v30 = sub_22BE5CE4C(&qword_27D90BFA0, &qword_22C2CB790);
  sub_22BE19448(v30);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE1A174();
  v200 = v34;
  v201 = sub_22BE5CE4C(&qword_27D90BFA8, &qword_22C290DD8);
  sub_22BE18000(v201);
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1A174();
  v204 = v38;
  v39 = sub_22BE183BC();
  v207 = type metadata accessor for ContextProtoBoundingBox(v39);
  v40 = sub_22BE18000(v207);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE17A44();
  v206 = v43;
  v44 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  v45 = sub_22BE19448(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE17B98();
  v203 = v48;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v49);
  v51 = (v189 - v50);
  v208 = sub_22BE5CE4C(&qword_27D9092A8, &unk_22C27FE80);
  v52 = sub_22BE18000(v208);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BE17B98();
  v205 = v55;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v56);
  v58 = v189 - v57;
  v59 = type metadata accessor for ContextProtoConfidence(0);
  v60 = sub_22BE18000(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22BE179EC();
  v65 = v64 - v63;
  v66 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  sub_22BE19448(v66);
  v68 = *(v67 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v69);
  sub_22BE1B1C4();
  v70 = sub_22BE5CE4C(&qword_27D90BF78, &qword_22C290DC8);
  sub_22BE18000(v70);
  v72 = *(v71 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v73);
  sub_22BE28738();
  v74 = v5[2];
  v75 = v3[2];
  if (v74)
  {
    if (!v75)
    {
      goto LABEL_41;
    }

    v76 = v5[1] == v3[1] && v74 == v75;
    if (!v76 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v75)
  {
    goto LABEL_41;
  }

  v77 = v5[4];
  v78 = v3[4];
  if (v77)
  {
    if (!v78)
    {
      goto LABEL_41;
    }

    v79 = v5[3] == v3[3] && v77 == v78;
    if (!v79 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v78)
  {
    goto LABEL_41;
  }

  v189[1] = v11;
  v80 = type metadata accessor for ContextProtoContextMetadata(0);
  v192 = v3;
  v81 = *(v80 + 28);
  v82 = *(v70 + 48);
  v190 = v80;
  v191 = v5;
  sub_22BE22868();
  v83 = v192;
  sub_22BE22868();
  sub_22BE181B0(v0);
  if (v76)
  {
    sub_22BE181B0(v0 + v82);
    if (v76)
    {
      sub_22BE33928(v0, &qword_27D90BF70, &qword_22C290DC0);
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  sub_22BE22868();
  sub_22BE181B0(v0 + v82);
  if (v93)
  {
    sub_22BE30F78();
    sub_22BFB18F4(v1, v94);
LABEL_33:
    v95 = &qword_27D90BF78;
    v96 = &qword_22C290DC8;
LABEL_39:
    v102 = v0;
LABEL_40:
    sub_22BE33928(v102, v95, v96);
    goto LABEL_41;
  }

  sub_22BE2861C();
  sub_22BFB18A0();
  if (*v1 != *v65 || *(v1 + 4) != *(v65 + 4))
  {
    sub_22BE375C0();
    sub_22BFB18F4(v65, v101);
    sub_22BFB18F4(v1, v51);
    v95 = &qword_27D90BF70;
    v96 = &qword_22C290DC0;
    goto LABEL_39;
  }

  v97 = *(v59 + 24);
  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v98, v99);
  v100 = sub_22C272FD4();
  sub_22BFB18F4(v65, type metadata accessor for ContextProtoConfidence);
  sub_22BFB18F4(v1, type metadata accessor for ContextProtoConfidence);
  sub_22BE33928(v0, &qword_27D90BF70, &qword_22C290DC0);
  if ((v100 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_24:
  v84 = *v191;
  v85 = *v83;
  sub_22BEA1A5C();
  if ((v86 & 1) == 0)
  {
    goto LABEL_41;
  }

  v87 = v190;
  v88 = v190[8];
  v89 = *(v208 + 48);
  sub_22BFB1AC4();
  sub_22BFB1AC4();
  v90 = sub_22BFB1A7C();
  v91 = v207;
  sub_22BE1AB5C(v90, v92, v207);
  if (v76)
  {
    sub_22BE1AB5C(&v58[v89], 1, v91);
    if (v76)
    {
      sub_22BE33928(v58, &qword_27D9092A0, &unk_22C294AC0);
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  sub_22BE22868();
  sub_22BE1AB5C(&v58[v89], 1, v91);
  if (v104)
  {
    sub_22BE25964();
    sub_22BFB18F4(v51, v105);
LABEL_46:
    v95 = &qword_27D9092A8;
    v96 = &unk_22C27FE80;
    v102 = v58;
    goto LABEL_40;
  }

  sub_22BFB18A0();
  v106 = static ContextProtoBoundingBox.== infix(_:_:)();
  v107 = sub_22BE3C5E4();
  sub_22BFB18F4(v107, v108);
  v109 = sub_22BE19454();
  sub_22BFB18F4(v109, v110);
  sub_22BE33928(v58, &qword_27D9092A0, &unk_22C294AC0);
  if ((v106 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_48:
  v111 = v87[9];
  v112 = v191;
  v113 = *(v191 + v111 + 8);
  v114 = *(v83 + v111 + 8);
  if (v113)
  {
    if (!v114)
    {
      goto LABEL_41;
    }
  }

  else
  {
    sub_22BE20208();
    if (v115)
    {
      goto LABEL_41;
    }
  }

  v116 = v87[10];
  v117 = *(v83 + v116 + 8);
  if (*(v112 + v116 + 8))
  {
    if (!v117)
    {
      goto LABEL_41;
    }

    sub_22BE3A508((v112 + v116));
    v120 = v76 && v118 == v119;
    if (!v120 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v117)
  {
    goto LABEL_41;
  }

  v121 = v87[11];
  v122 = *(v112 + v121);
  v123 = *(v83 + v121);
  if (v122 == 2)
  {
    if (v123 != 2)
    {
      goto LABEL_41;
    }
  }

  else if (v123 == 2 || ((v122 ^ v123) & 1) != 0)
  {
    goto LABEL_41;
  }

  v124 = v87[12];
  v125 = *(v112 + v124);
  v126 = *(v83 + v124);
  if (v125 == 2)
  {
    if (v126 != 2)
    {
      goto LABEL_41;
    }
  }

  else if (v126 == 2 || ((v125 ^ v126) & 1) != 0)
  {
    goto LABEL_41;
  }

  v127 = v87[13];
  v128 = *(v208 + 48);
  v129 = v205;
  sub_22BE36540();
  v130 = v129;
  sub_22BE36540();
  v131 = sub_22BFB1A7C();
  sub_22BE1AB5C(v131, v132, v91);
  if (v76)
  {
    sub_22BE1AB5C(v129 + v128, 1, v91);
    if (v76)
    {
      sub_22BE33928(v129, &qword_27D9092A0, &unk_22C294AC0);
      goto LABEL_81;
    }

    goto LABEL_79;
  }

  v133 = v203;
  sub_22BE22868();
  sub_22BE1AB5C(v130 + v128, 1, v91);
  if (v134)
  {
    sub_22BE25964();
    sub_22BFB18F4(v133, v135);
LABEL_79:
    v95 = &qword_27D9092A8;
    v96 = &unk_22C27FE80;
    v102 = v130;
    goto LABEL_40;
  }

  sub_22BFB18A0();
  static ContextProtoBoundingBox.== infix(_:_:)();
  sub_22BE1AF5C();
  sub_22BFB18F4(v133, type metadata accessor for ContextProtoBoundingBox);
  sub_22BE33928(v130, &qword_27D9092A0, &unk_22C294AC0);
  if ((&unk_22C294AC0 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_81:
  v136 = v87[14];
  v137 = *(v112 + v136);
  v138 = *(v83 + v136);
  if (v137 == 6)
  {
    if (v138 != 6)
    {
      goto LABEL_41;
    }
  }

  else if (v137 != v138)
  {
    goto LABEL_41;
  }

  v139 = v190[15];
  v140 = *(v201 + 48);
  sub_22BE390A0();
  sub_22BE1B0AC();
  v141 = sub_22BE26188();
  sub_22BE1AB5C(v141, v142, v202);
  if (v76)
  {
    sub_22BE1AB5C(v204 + v140, 1, v202);
    if (v76)
    {
      sub_22BE33928(v204, &qword_27D90BFA0, &qword_22C2CB790);
      goto LABEL_95;
    }

    goto LABEL_93;
  }

  v143 = v204;
  sub_22BE22868();
  sub_22BE1AB5C(v143 + v140, 1, v202);
  if (v144)
  {
    sub_22BFB18F4(v200, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
LABEL_93:
    v95 = &qword_27D90BFA8;
    v96 = &qword_22C290DD8;
    v102 = v204;
    goto LABEL_40;
  }

  v145 = v204;
  sub_22BFB18A0();
  sub_22BE232C8();
  static ContextProtoContextualEntityDisplayRepresentation.== infix(_:_:)();
  sub_22BE1AF5C();
  v146 = sub_22BE200D4();
  sub_22BFB18F4(v146, v147);
  sub_22BE33928(v145, &qword_27D90BFA0, &qword_22C2CB790);
  if ((&qword_22C2CB790 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_95:
  v148 = v190[16];
  sub_22BFB1A94(v191);
  if (v151)
  {
    if (!v149)
    {
      goto LABEL_41;
    }

    sub_22BE3A508(v150);
    v154 = v76 && v152 == v153;
    if (!v154 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v149)
  {
    goto LABEL_41;
  }

  v155 = v190[17];
  v156 = *(v196 + 48);
  sub_22BE390A0();
  sub_22BE1B0AC();
  v157 = sub_22BE26188();
  sub_22BE1AB5C(v157, v158, v198);
  if (v76)
  {
    sub_22BE1AB5C(v199 + v156, 1, v198);
    if (v76)
    {
      sub_22BE33928(v199, &qword_27D90BF90, &unk_22C294AD0);
      goto LABEL_114;
    }

    goto LABEL_112;
  }

  v159 = v199;
  sub_22BE22868();
  sub_22BE1AB5C(v159 + v156, 1, v198);
  if (v160)
  {
    sub_22BE2574C();
    sub_22BFB18F4(v194, v161);
LABEL_112:
    v95 = &qword_27D90BF98;
    v96 = &qword_22C290DD0;
    v102 = v199;
    goto LABEL_40;
  }

  sub_22BE2729C();
  v162 = v199;
  sub_22BFB18A0();
  sub_22BE232C8();
  static ContextProtoCGRect.== infix(_:_:)();
  sub_22BE1AF5C();
  v163 = sub_22BE200D4();
  sub_22BFB18F4(v163, v164);
  sub_22BE33928(v162, &qword_27D90BF90, &unk_22C294AD0);
  if ((&unk_22C294AD0 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_114:
  v165 = v190[18];
  v166 = *(v196 + 48);
  sub_22BE390A0();
  sub_22BE1B0AC();
  v167 = sub_22BE26188();
  sub_22BE1AB5C(v167, v168, v198);
  if (!v76)
  {
    v169 = v195;
    sub_22BE22868();
    sub_22BE1AB5C(v169 + v166, 1, v198);
    if (!v170)
    {
      sub_22BE2729C();
      v172 = v195;
      sub_22BFB18A0();
      sub_22BE232C8();
      static ContextProtoCGRect.== infix(_:_:)();
      sub_22BE1AF5C();
      v173 = sub_22BE200D4();
      sub_22BFB18F4(v173, v174);
      sub_22BE33928(v172, &qword_27D90BF90, &unk_22C294AD0);
      if ((&unk_22C294AD0 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_124;
    }

    sub_22BE2574C();
    sub_22BFB18F4(v193, v171);
    goto LABEL_122;
  }

  sub_22BE1AB5C(v195 + v166, 1, v198);
  if (!v76)
  {
LABEL_122:
    v95 = &qword_27D90BF98;
    v96 = &qword_22C290DD0;
    v102 = v195;
    goto LABEL_40;
  }

  sub_22BE33928(v195, &qword_27D90BF90, &unk_22C294AD0);
LABEL_124:
  v175 = v190[19];
  v176 = *(v191 + v175 + 8);
  v177 = *(v192 + v175 + 8);
  if (v176)
  {
    if (!v177)
    {
      goto LABEL_41;
    }
  }

  else
  {
    sub_22BE20208();
    if (v178)
    {
      goto LABEL_41;
    }
  }

  v179 = v190[20];
  sub_22BFB1A94(v191);
  if (v182)
  {
    if (!v180)
    {
      goto LABEL_41;
    }

    sub_22BE3A508(v181);
    v185 = v76 && v183 == v184;
    if (!v185 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_137:
    v186 = v190[21];
    sub_22C2704B4();
    sub_22BE18E14();
    sub_22BE2C940(v187, v188);
    v103 = sub_22C272FD4();
    goto LABEL_42;
  }

  if (!v180)
  {
    goto LABEL_137;
  }

LABEL_41:
  v103 = 0;
LABEL_42:
  sub_22BE1C1DC(v103);
  sub_22BE1AABC();
}

uint64_t sub_22BF901BC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22C274154();
  a1(0);
  sub_22BE2C940(a2, a3);
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t (*sub_22BF90270(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 84);
  return result;
}

uint64_t sub_22BF902C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C760, type metadata accessor for ContextProtoContextMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF90344(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C2E0, type metadata accessor for ContextProtoContextMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF903B4()
{
  sub_22BE2C940(&qword_27D90C2E0, type metadata accessor for ContextProtoContextMetadata);

  return sub_22C270774();
}

uint64_t sub_22BF9044C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BB90);
  sub_22BE199F4(v0, qword_27D90BB90);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtitle";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_22BE2037C();
      sub_22C270694();
    }
  }

  return result;
}

uint64_t static ContextProtoContextualEntityDisplayRepresentation.== infix(_:_:)()
{
  sub_22BE18378();
  v2 = *(v0 + 8);
  if (*(v1 + 8))
  {
    if (!v2)
    {
      return 0;
    }

    sub_22BE27BD8();
    v5 = v5 && v3 == v4;
    if (!v5 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  sub_22BFB1A88();
  if (v7)
  {
    if (v6)
    {
      sub_22BFB1A50();
      v10 = v5 && v8 == v9;
      if (v10 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v6)
  {
LABEL_17:
    v11 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
    sub_22BE23A04(v11);
    sub_22BE18E14();
    sub_22BE2C940(v12, v13);
    return sub_22BE2B85C() & 1;
  }

  return 0;
}

uint64_t (*sub_22BF90820(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_22BF90874(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C758, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF908F4(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C2F8, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF90964()
{
  sub_22BE2C940(&qword_27D90C2F8, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);

  return sub_22C270774();
}

uint64_t sub_22BF909FC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BBA8);
  sub_22BE199F4(v0, qword_27D90BBA8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "x_coordinate";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y_coordinate";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21870];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "height";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoBoundingBox.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        sub_22BE2037C();
        sub_22C270604();
        break;
      default:
        continue;
    }
  }
}

uint64_t ContextProtoBoundingBox.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  v1 = sub_22BE192B4();
  result = sub_22BF90D80(v1);
  if (!v0)
  {
    v3 = sub_22BE17D78();
    sub_22BF90DC0(v3);
    v4 = sub_22BE17D78();
    sub_22BF90E00(v4);
    v5 = sub_22BE17D78();
    sub_22BF90E40(v5);
    v6 = *(type metadata accessor for ContextProtoBoundingBox(0) + 32);
    return sub_22BE19514();
  }

  return result;
}

uint64_t sub_22BF90D80(uint64_t result)
{
  if ((*(result + 4) & 1) == 0)
  {
    v1 = *result;
    return sub_22C2707F4();
  }

  return result;
}

uint64_t sub_22BF90DC0(uint64_t result)
{
  if ((*(result + 12) & 1) == 0)
  {
    v1 = *(result + 8);
    return sub_22C2707F4();
  }

  return result;
}

uint64_t sub_22BF90E00(uint64_t result)
{
  if ((*(result + 20) & 1) == 0)
  {
    v1 = *(result + 16);
    return sub_22C2707F4();
  }

  return result;
}

uint64_t sub_22BF90E40(uint64_t result)
{
  if ((*(result + 28) & 1) == 0)
  {
    v1 = *(result + 24);
    return sub_22C2707F4();
  }

  return result;
}

uint64_t static ContextProtoBoundingBox.== infix(_:_:)()
{
  sub_22BE18378();
  if (*(v3 + 4))
  {
    if (!*(v2 + 4))
    {
      return 0;
    }
  }

  else
  {
    v4 = *v0;
    v5 = *v1;
    sub_22BE20498();
    if (v6)
    {
      return 0;
    }
  }

  if (v1[3])
  {
    if (!*(v0 + 12))
    {
      return 0;
    }
  }

  else
  {
    v7 = v0[2];
    v8 = v1[2];
    sub_22BE20498();
    if (v9)
    {
      return 0;
    }
  }

  if ((v1[5] & 1) == 0)
  {
    v10 = v0[4];
    v11 = v1[4];
    sub_22BE20498();
    if ((v12 & 1) == 0)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!*(v0 + 20))
  {
    return 0;
  }

LABEL_13:
  if (v1[7])
  {
    if (!*(v0 + 28))
    {
      return 0;
    }
  }

  else
  {
    v14 = v0[6];
    v15 = v1[6];
    sub_22BE20498();
    if (v16)
    {
      return 0;
    }
  }

  v17 = *(type metadata accessor for ContextProtoBoundingBox(0) + 32);
  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v18, v19);
  return sub_22BE2B85C() & 1;
}

uint64_t (*sub_22BF90FF4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_22BF91048(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C750, type metadata accessor for ContextProtoBoundingBox);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF910C8(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF91138()
{
  sub_22BE2C940(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox);

  return sub_22C270774();
}

uint64_t sub_22BF911C4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BBC0);
  sub_22BE199F4(v0, qword_27D90BBC0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "on_screen_bounding_box";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoSurroundingText.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_22BE18E2C();
      sub_22BF91418();
    }

    else if (result == 1)
    {
      sub_22BE239F4();
      sub_22C270694();
    }
  }

  return result;
}

uint64_t sub_22BF91418()
{
  v0 = *(type metadata accessor for ContextProtoSurroundingText(0) + 20);
  type metadata accessor for ContextProtoBoundingBox(0);
  sub_22BE2C940(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox);
  return sub_22C2706F4();
}

void sub_22BF91520()
{
  sub_22BE1B214();
  v2 = v1;
  v4 = v3;
  sub_22BE33A5C();
  v5 = sub_22BE192B4();
  v6(v5);
  if (!v0)
  {
    v7 = sub_22BE17D78();
    v4(v7);
    v8 = *(v2(0) + 24);
    sub_22BE19514();
  }

  sub_22BE25C6C();
}

uint64_t sub_22BF915A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoBoundingBox(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoSurroundingText(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9092A0, &unk_22C294AC0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoBoundingBox);
}

void static ContextProtoSurroundingText.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE1B2D4();
  v5 = type metadata accessor for ContextProtoBoundingBox(v4);
  v6 = sub_22BE18000(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  sub_22BE28738();
  v9 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1B01C();
  v13 = sub_22BE5CE4C(&qword_27D9092A8, &unk_22C27FE80);
  sub_22BE18000(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE19E64();
  v17 = *(v0 + 8);
  if (*(v1 + 8))
  {
    if (!v17)
    {
      goto LABEL_19;
    }

    sub_22BE27BD8();
    v20 = v20 && v18 == v19;
    if (!v20 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v17)
  {
    goto LABEL_19;
  }

  v34 = type metadata accessor for ContextProtoSurroundingText(0);
  v21 = *(v34 + 20);
  v22 = *(v13 + 48);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE1972C(v2);
  if (v20)
  {
    sub_22BE1972C(v2 + v22);
    if (v20)
    {
      sub_22BE33928(v2, &qword_27D9092A0, &unk_22C294AC0);
LABEL_22:
      v31 = *(v34 + 24);
      sub_22C2704B4();
      sub_22BE18E14();
      sub_22BE2C940(v32, v33);
      v25 = sub_22BE2B85C();
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE1972C(v2 + v22);
  if (v23)
  {
    sub_22BE25964();
    sub_22BFB18F4(v3, v24);
LABEL_18:
    sub_22BE33928(v2, &qword_27D9092A8, &unk_22C27FE80);
    goto LABEL_19;
  }

  sub_22BFB18A0();
  sub_22BE38970();
  v26 = static ContextProtoBoundingBox.== infix(_:_:)();
  v27 = sub_22BE324FC();
  sub_22BFB18F4(v27, v28);
  v29 = sub_22BE1AB1C();
  sub_22BFB18F4(v29, v30);
  sub_22BE33928(v2, &qword_27D9092A0, &unk_22C294AC0);
  if (v26)
  {
    goto LABEL_22;
  }

LABEL_19:
  v25 = 0;
LABEL_20:
  sub_22BE1C1DC(v25);
  sub_22BE1AABC();
}

uint64_t sub_22BF91A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C748, type metadata accessor for ContextProtoSurroundingText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF91B10(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90BF88, type metadata accessor for ContextProtoSurroundingText);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF91B80()
{
  sub_22BE2C940(&qword_27D90BF88, type metadata accessor for ContextProtoSurroundingText);

  return sub_22C270774();
}

uint64_t sub_22BF91C18()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BBD8);
  sub_22BE199F4(v0, qword_27D90BBD8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "score";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bucket";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoConfidence.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_22BE18E2C();
      sub_22BF91E64();
    }

    else if (result == 1)
    {
      sub_22BE239F4();
      sub_22C270614();
    }
  }

  return result;
}

uint64_t ContextProtoConfidence.traverse<A>(visitor:)()
{
  sub_22BE18648();
  if (*v0 == 0.0 || (sub_22BE254E4(), result = sub_22C2707F4(), !v1))
  {
    if (!*(v2 + 4) || (v5 = *(v2 + 4), sub_22BFADF4C(), sub_22BE23CE4(), result = sub_22C2707D4(), !v1))
    {
      v4 = *(type metadata accessor for ContextProtoConfidence(0) + 24);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t static ContextProtoConfidence.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_22BE18378();
  if (*(v2 + 4) != *(v3 + 4))
  {
    return 0;
  }

  v4 = type metadata accessor for ContextProtoConfidence(0);
  sub_22BE23A04(v4);
  sub_22BE18E14();
  sub_22BE2C940(v5, v6);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22BF920A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C740, type metadata accessor for ContextProtoConfidence);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF92124(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C338, type metadata accessor for ContextProtoConfidence);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF92194()
{
  sub_22BE2C940(&qword_27D90C338, type metadata accessor for ContextProtoConfidence);

  return sub_22C270774();
}

uint64_t sub_22BF9222C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BBF0);
  sub_22BE199F4(v0, qword_27D90BBF0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siriRequestContext";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "intelligenceCommand";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "appInFocusContext";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "onScreenUIText";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "appContext";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "nowPlayingMediaItem";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructuredContext.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_22BE236F4();
        sub_22BF925CC(v3, v4, v5, v6);
        break;
      case 2:
        v19 = sub_22BE236F4();
        sub_22BF92AC4(v19, v20, v21, v22);
        break;
      case 3:
        v11 = sub_22BE236F4();
        sub_22BF92FBC(v11, v12, v13, v14);
        break;
      case 4:
        v15 = sub_22BE236F4();
        sub_22BF934B4(v15, v16, v17, v18);
        break;
      case 5:
        v7 = sub_22BE236F4();
        sub_22BF939AC(v7, v8, v9, v10);
        break;
      case 6:
        v23 = sub_22BE236F4();
        sub_22BF93EA4(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BF925CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = sub_22BE5CE4C(&qword_27D90C7E8, &unk_22C2AE4B0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  sub_22BE19DC4(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_22BE22868();
  v32 = sub_22BE1AEA8(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_22BE33928(v12, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22BFB18F4(v17, type metadata accessor for ContextProtoStructuredContextKind);
    }

    else
    {
      sub_22BE33928(v24, &qword_27D90C7E8, &unk_22C2AE4B0);
      sub_22BFB18A0();
      sub_22BFB18A0();
      sub_22BE19DC4(v24, 0, 1, v5);
    }
  }

  sub_22BE2C940(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
  v25 = v35;
  sub_22C2706F4();
  if (v25)
  {
    v26 = v24;
    return sub_22BE33928(v26, &qword_27D90C7E8, &unk_22C2AE4B0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v22, 1, v5) == 1)
  {
    sub_22BE33928(v24, &qword_27D90C7E8, &unk_22C2AE4B0);
    v26 = v22;
    return sub_22BE33928(v26, &qword_27D90C7E8, &unk_22C2AE4B0);
  }

  sub_22BFB18A0();
  if (v32 != 1)
  {
    sub_22C270594();
  }

  v28 = v33;
  sub_22BE33928(v24, &qword_27D90C7E8, &unk_22C2AE4B0);
  v29 = v31;
  sub_22BE33928(v31, &qword_27D90BFE0, &qword_22C2CB7B0);
  sub_22BFB18A0();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v29, 0, 1, v28);
}

uint64_t sub_22BF92AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = sub_22BE5CE4C(&qword_27D90C7F0, &qword_22C294A78);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  sub_22BE19DC4(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_22BE22868();
  v32 = sub_22BE1AEA8(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_22BE33928(v12, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v24, &qword_27D90C7F0, &qword_22C294A78);
      sub_22BFB18A0();
      sub_22BFB18A0();
      sub_22BE19DC4(v24, 0, 1, v5);
    }

    else
    {
      sub_22BFB18F4(v17, type metadata accessor for ContextProtoStructuredContextKind);
    }
  }

  sub_22BE2C940(&qword_27D90C3F0, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
  v25 = v35;
  sub_22C2706F4();
  if (v25)
  {
    v26 = v24;
    return sub_22BE33928(v26, &qword_27D90C7F0, &qword_22C294A78);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v22, 1, v5) == 1)
  {
    sub_22BE33928(v24, &qword_27D90C7F0, &qword_22C294A78);
    v26 = v22;
    return sub_22BE33928(v26, &qword_27D90C7F0, &qword_22C294A78);
  }

  sub_22BFB18A0();
  if (v32 != 1)
  {
    sub_22C270594();
  }

  v28 = v33;
  sub_22BE33928(v24, &qword_27D90C7F0, &qword_22C294A78);
  v29 = v31;
  sub_22BE33928(v31, &qword_27D90BFE0, &qword_22C2CB7B0);
  sub_22BFB18A0();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v29, 0, 1, v28);
}

uint64_t sub_22BF92FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = sub_22BE5CE4C(&qword_27D90C7F8, &qword_22C294A80);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  sub_22BE19DC4(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_22BE22868();
  v32 = sub_22BE1AEA8(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_22BE33928(v12, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v24, &qword_27D90C7F8, &qword_22C294A80);
      sub_22BFB18A0();
      sub_22BFB18A0();
      sub_22BE19DC4(v24, 0, 1, v5);
    }

    else
    {
      sub_22BFB18F4(v17, type metadata accessor for ContextProtoStructuredContextKind);
    }
  }

  sub_22BE2C940(&qword_27D90C408, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
  v25 = v35;
  sub_22C2706F4();
  if (v25)
  {
    v26 = v24;
    return sub_22BE33928(v26, &qword_27D90C7F8, &qword_22C294A80);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v22, 1, v5) == 1)
  {
    sub_22BE33928(v24, &qword_27D90C7F8, &qword_22C294A80);
    v26 = v22;
    return sub_22BE33928(v26, &qword_27D90C7F8, &qword_22C294A80);
  }

  sub_22BFB18A0();
  if (v32 != 1)
  {
    sub_22C270594();
  }

  v28 = v33;
  sub_22BE33928(v24, &qword_27D90C7F8, &qword_22C294A80);
  v29 = v31;
  sub_22BE33928(v31, &qword_27D90BFE0, &qword_22C2CB7B0);
  sub_22BFB18A0();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v29, 0, 1, v28);
}

uint64_t sub_22BF934B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = sub_22BE5CE4C(&qword_27D90C800, &qword_22C294A88);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  sub_22BE19DC4(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_22BE22868();
  v32 = sub_22BE1AEA8(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_22BE33928(v12, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v24, &qword_27D90C800, &qword_22C294A88);
      sub_22BFB18A0();
      sub_22BFB18A0();
      sub_22BE19DC4(v24, 0, 1, v5);
    }

    else
    {
      sub_22BFB18F4(v17, type metadata accessor for ContextProtoStructuredContextKind);
    }
  }

  sub_22BE2C940(&qword_27D90C438, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
  v25 = v35;
  sub_22C2706F4();
  if (v25)
  {
    v26 = v24;
    return sub_22BE33928(v26, &qword_27D90C800, &qword_22C294A88);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v22, 1, v5) == 1)
  {
    sub_22BE33928(v24, &qword_27D90C800, &qword_22C294A88);
    v26 = v22;
    return sub_22BE33928(v26, &qword_27D90C800, &qword_22C294A88);
  }

  sub_22BFB18A0();
  if (v32 != 1)
  {
    sub_22C270594();
  }

  v28 = v33;
  sub_22BE33928(v24, &qword_27D90C800, &qword_22C294A88);
  v29 = v31;
  sub_22BE33928(v31, &qword_27D90BFE0, &qword_22C2CB7B0);
  sub_22BFB18A0();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v29, 0, 1, v28);
}

uint64_t sub_22BF939AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ContextProtoStructedContextAppContext(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = sub_22BE5CE4C(&qword_27D90C808, &qword_22C294A90);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  sub_22BE19DC4(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_22BE22868();
  v32 = sub_22BE1AEA8(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_22BE33928(v12, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v24, &qword_27D90C808, &qword_22C294A90);
      sub_22BFB18A0();
      sub_22BFB18A0();
      sub_22BE19DC4(v24, 0, 1, v5);
    }

    else
    {
      sub_22BFB18F4(v17, type metadata accessor for ContextProtoStructuredContextKind);
    }
  }

  sub_22BE2C940(&qword_27D90C420, type metadata accessor for ContextProtoStructedContextAppContext);
  v25 = v35;
  sub_22C2706F4();
  if (v25)
  {
    v26 = v24;
    return sub_22BE33928(v26, &qword_27D90C808, &qword_22C294A90);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v22, 1, v5) == 1)
  {
    sub_22BE33928(v24, &qword_27D90C808, &qword_22C294A90);
    v26 = v22;
    return sub_22BE33928(v26, &qword_27D90C808, &qword_22C294A90);
  }

  sub_22BFB18A0();
  if (v32 != 1)
  {
    sub_22C270594();
  }

  v28 = v33;
  sub_22BE33928(v24, &qword_27D90C808, &qword_22C294A90);
  v29 = v31;
  sub_22BE33928(v31, &qword_27D90BFE0, &qword_22C2CB7B0);
  sub_22BFB18A0();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v29, 0, 1, v28);
}

uint64_t sub_22BF93EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = sub_22BE5CE4C(&qword_27D90C810, &qword_22C294A98);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  sub_22BE19DC4(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_22BE22868();
  v32 = sub_22BE1AEA8(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_22BE33928(v12, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    sub_22BFB18A0();
    sub_22BFB18A0();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v24, &qword_27D90C810, &qword_22C294A98);
      sub_22BFB18A0();
      sub_22BFB18A0();
      sub_22BE19DC4(v24, 0, 1, v5);
    }

    else
    {
      sub_22BFB18F4(v17, type metadata accessor for ContextProtoStructuredContextKind);
    }
  }

  sub_22BE2C940(&qword_27D90C368, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
  v25 = v35;
  sub_22C2706F4();
  if (v25)
  {
    v26 = v24;
    return sub_22BE33928(v26, &qword_27D90C810, &qword_22C294A98);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v22, 1, v5) == 1)
  {
    sub_22BE33928(v24, &qword_27D90C810, &qword_22C294A98);
    v26 = v22;
    return sub_22BE33928(v26, &qword_27D90C810, &qword_22C294A98);
  }

  sub_22BFB18A0();
  if (v32 != 1)
  {
    sub_22C270594();
  }

  v28 = v33;
  sub_22BE33928(v24, &qword_27D90C810, &qword_22C294A98);
  v29 = v31;
  sub_22BE33928(v31, &qword_27D90BFE0, &qword_22C2CB7B0);
  sub_22BFB18A0();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v29, 0, 1, v28);
}

uint64_t ContextProtoStructuredContext.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  v2 = sub_22BE289D8();
  v4 = sub_22BE5CE4C(v2, v3);
  sub_22BE19448(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE234F4();
  sub_22BE36CB8();
  sub_22BE22868();
  v8 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v9 = sub_22BFB1A7C();
  if (sub_22BE1AEA8(v9, v10, v8) == 1)
  {
    goto LABEL_10;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v27 = sub_22BE17D78();
      sub_22BF946EC(v27, v28, v29, v30);
      break;
    case 2u:
      v19 = sub_22BE17D78();
      sub_22BF948F4(v19, v20, v21, v22);
      break;
    case 3u:
      v23 = sub_22BE17D78();
      sub_22BF94AFC(v23, v24, v25, v26);
      break;
    case 4u:
      v15 = sub_22BE17D78();
      sub_22BF94D04(v15, v16, v17, v18);
      break;
    case 5u:
      v31 = sub_22BE17D78();
      sub_22BF94F0C(v31, v32, v33, v34);
      break;
    default:
      v11 = sub_22BE17D78();
      sub_22BF944E8(v11, v12, v13, v14);
      break;
  }

  sub_22BE40C40();
  result = sub_22BFB18F4(v1, v35);
  if (!v0)
  {
LABEL_10:
    v37 = *(type metadata accessor for ContextProtoStructuredContext(0) + 20);
    return sub_22BE19514();
  }

  return result;
}

uint64_t sub_22BF944E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v12 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if (sub_22BE1AEA8(v7, 1, v12) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22BFB18A0();
      sub_22BE2C940(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
      sub_22C270884();
      return sub_22BFB18F4(v11, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
    }

    result = sub_22BFB18F4(v7, type metadata accessor for ContextProtoStructuredContextKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF946EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v12 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if (sub_22BE1AEA8(v7, 1, v12) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BFB18A0();
      sub_22BE2C940(&qword_27D90C3F0, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
      sub_22C270884();
      return sub_22BFB18F4(v11, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
    }

    result = sub_22BFB18F4(v7, type metadata accessor for ContextProtoStructuredContextKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF948F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v12 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if (sub_22BE1AEA8(v7, 1, v12) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BFB18A0();
      sub_22BE2C940(&qword_27D90C408, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
      sub_22C270884();
      return sub_22BFB18F4(v11, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
    }

    result = sub_22BFB18F4(v7, type metadata accessor for ContextProtoStructuredContextKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF94AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v12 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if (sub_22BE1AEA8(v7, 1, v12) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BFB18A0();
      sub_22BE2C940(&qword_27D90C438, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
      sub_22C270884();
      return sub_22BFB18F4(v11, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
    }

    result = sub_22BFB18F4(v7, type metadata accessor for ContextProtoStructuredContextKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF94D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoStructedContextAppContext(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v12 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if (sub_22BE1AEA8(v7, 1, v12) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BFB18A0();
      sub_22BE2C940(&qword_27D90C420, type metadata accessor for ContextProtoStructedContextAppContext);
      sub_22C270884();
      return sub_22BFB18F4(v11, type metadata accessor for ContextProtoStructedContextAppContext);
    }

    result = sub_22BFB18F4(v7, type metadata accessor for ContextProtoStructuredContextKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF94F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BFE0, &qword_22C2CB7B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v12 = type metadata accessor for ContextProtoStructuredContextKind(0);
  if (sub_22BE1AEA8(v7, 1, v12) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90BFE0, &qword_22C2CB7B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BFB18A0();
      sub_22BE2C940(&qword_27D90C368, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
      sub_22C270884();
      return sub_22BFB18F4(v11, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
    }

    result = sub_22BFB18F4(v7, type metadata accessor for ContextProtoStructuredContextKind);
  }

  __break(1u);
  return result;
}

void static ContextProtoStructuredContext.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE1B2D4();
  v4 = type metadata accessor for ContextProtoStructuredContextKind(v3);
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  sub_22BE28738();
  v8 = sub_22BE1AEE4();
  v10 = sub_22BE5CE4C(v8, v9);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1B01C();
  v14 = sub_22BE5CE4C(&qword_27D90BFE8, &qword_22C290DE0);
  sub_22BE19448(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  v18 = MEMORY[0x28223BE20](v17);
  sub_22BE1AC54(v18);
  sub_22BE28764();
  sub_22BE1972C(v0);
  if (v19)
  {
    sub_22BE1972C(v0 + v2);
    if (v19)
    {
      sub_22BE33928(v0, &qword_27D90BFE0, &qword_22C2CB7B0);
LABEL_12:
      v28 = type metadata accessor for ContextProtoStructuredContext(0);
      sub_22BE3636C(v28);
      sub_22BE18E14();
      sub_22BE2C940(v29, v30);
      v21 = sub_22BE2B85C();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE1972C(v0 + v2);
  if (v19)
  {
    sub_22BE40C40();
    sub_22BFB18F4(v1, v20);
LABEL_9:
    sub_22BE33928(v0, &qword_27D90BFE8, &qword_22C290DE0);
    goto LABEL_10;
  }

  sub_22BFB18A0();
  sub_22BE38970();
  static ContextProtoStructuredContextKind.== infix(_:_:)();
  v23 = v22;
  v24 = sub_22BE324FC();
  sub_22BFB18F4(v24, v25);
  v26 = sub_22BE1AB1C();
  sub_22BFB18F4(v26, v27);
  sub_22BE33928(v0, &qword_27D90BFE0, &qword_22C2CB7B0);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
LABEL_13:
  sub_22BE1C1DC(v21);
  sub_22BE1AABC();
}

uint64_t (*sub_22BF95388(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_22BF953DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C738, type metadata accessor for ContextProtoStructuredContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9545C(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C350, type metadata accessor for ContextProtoStructuredContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF954CC()
{
  sub_22BE2C940(&qword_27D90C350, type metadata accessor for ContextProtoStructuredContext);

  return sub_22C270774();
}

uint64_t sub_22BF95564()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BC08);
  sub_22BE199F4(v0, qword_27D90BC08);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22C290D80;
  v4 = v33 + v3;
  v5 = v33 + v3 + v1[14];
  *(v33 + v3) = 1;
  *v5 = "appBundleId";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22C270894();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "contentIdentifier";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "brandIdentifier";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "iTunesStoreIdentifier";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "iTunesStoreAlbumIdentifier";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "iTunesStoreArtistIdentifier";
  *(v17 + 1) = 27;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "playbackState";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "mediaType";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "mediaSubType";
  *(v23 + 1) = 12;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "title";
  *(v25 + 1) = 5;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "albumName";
  *(v27 + 1) = 9;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "trackArtistName";
  *(v29 + 1) = 15;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "currentlyPlayingSongAdamId";
  *(v31 + 1) = 26;
  v31[16] = 2;
  v8();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 2:
      case 3:
      case 10:
      case 11:
      case 12:
      case 13:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 4:
      case 5:
      case 6:
        sub_22BE2037C();
        sub_22C270644();
        break;
      case 7:
        sub_22BE18E2C();
        sub_22BF95AEC();
        break;
      case 8:
        sub_22BE18E2C();
        sub_22BF95B54();
        break;
      case 9:
        sub_22BE18E2C();
        sub_22BF95BBC();
        break;
      default:
        continue;
    }
  }
}

uint64_t ContextProtoStructedContextNowPlayingMediaItem.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  sub_22BE1B448();
  if (!v4 || (result = sub_22C270844(), !v1))
  {
    v6 = sub_22BE23CF8();
    result = sub_22BE4E2BC(v6);
    if (!v1)
    {
      v7 = sub_22BE23CF8();
      sub_22BE4E2F4(v7);
      v8 = sub_22BE23CF8();
      sub_22BF95D44(v8);
      v9 = sub_22BE23CF8();
      sub_22BF95D7C(v9);
      v10 = sub_22BE23CF8();
      sub_22BF95DB4(v10);
      v11 = sub_22BE23CF8();
      sub_22BF95DEC(v11);
      v12 = sub_22BE23CF8();
      sub_22BF95E68(v12);
      v13 = sub_22BE23CF8();
      sub_22BF95EE4(v13);
      v14 = sub_22BE23CF8();
      sub_22BF95F60(v14);
      v15 = sub_22BE23CF8();
      sub_22BF95F9C(v15);
      v16 = sub_22BE23CF8();
      sub_22BF95FD8(v16);
      v17 = sub_22BE23CF8();
      sub_22BF96014(v17);
      v18 = v0 + *(type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0) + 68);
      return sub_22C270494();
    }
  }

  return result;
}

uint64_t sub_22BF95D44(uint64_t result)
{
  if ((*(result + 56) & 1) == 0)
  {
    v1 = *(result + 48);
    return sub_22C270814();
  }

  return result;
}

uint64_t sub_22BF95D7C(uint64_t result)
{
  if ((*(result + 72) & 1) == 0)
  {
    v1 = *(result + 64);
    return sub_22C270814();
  }

  return result;
}

uint64_t sub_22BF95DB4(uint64_t result)
{
  if ((*(result + 88) & 1) == 0)
  {
    v1 = *(result + 80);
    return sub_22C270814();
  }

  return result;
}

uint64_t sub_22BF95DEC(uint64_t result)
{
  if (*(result + 89) != 7)
  {
    v1 = *(result + 89);
    sub_22BFB184C();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t sub_22BF95E68(uint64_t result)
{
  if (*(result + 90) != 4)
  {
    v1 = *(result + 90);
    sub_22BFB17F8();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t sub_22BF95EE4(uint64_t result)
{
  if (*(result + 91) != 9)
  {
    v1 = *(result + 91);
    sub_22BFB17A4();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t sub_22BF95F60(uint64_t result)
{
  if (*(result + 104))
  {
    v1 = *(result + 96);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF95F9C(uint64_t result)
{
  if (*(result + 120))
  {
    v1 = *(result + 112);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF95FD8(uint64_t result)
{
  if (*(result + 136))
  {
    v1 = *(result + 128);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF96014(uint64_t result)
{
  if (*(result + 152))
  {
    v1 = *(result + 144);
    return sub_22C270844();
  }

  return result;
}

uint64_t static ContextProtoStructedContextNowPlayingMediaItem.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BFB1A88();
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }

    sub_22BFB1A50();
    v11 = v6 && v9 == v10;
    if (!v11 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_22BE46B5C();
  if (v13)
  {
    if (!v12)
    {
      return 0;
    }

    sub_22BFB1A40();
    v16 = v6 && v14 == v15;
    if (!v16 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (*(v3 + 56))
  {
    if (!*(v2 + 56))
    {
      return 0;
    }
  }

  else
  {
    v17 = *(v2 + 48);
    v18 = *(v3 + 48);
    sub_22BEC02E4();
    if (v19)
    {
      return 0;
    }
  }

  if (*(v3 + 72))
  {
    if (!*(v2 + 72))
    {
      return 0;
    }
  }

  else
  {
    v20 = *(v2 + 64);
    v21 = *(v3 + 64);
    sub_22BEC02E4();
    if (v22)
    {
      return 0;
    }
  }

  if (*(v3 + 88))
  {
    if (!*(v2 + 88))
    {
      return 0;
    }
  }

  else
  {
    v23 = *(v2 + 80);
    v24 = *(v3 + 80);
    sub_22BEC02E4();
    if (v25)
    {
      return 0;
    }
  }

  v26 = *(v3 + 89);
  v27 = *(v2 + 89);
  if (v26 == 7)
  {
    if (v27 != 7)
    {
      return 0;
    }
  }

  else if (v26 != v27)
  {
    return 0;
  }

  v28 = *(v3 + 90);
  v29 = *(v2 + 90);
  if (v28 == 4)
  {
    if (v29 != 4)
    {
      return 0;
    }
  }

  else if (v28 != v29)
  {
    return 0;
  }

  v30 = *(v3 + 91);
  v31 = *(v2 + 91);
  if (v30 == 9)
  {
    if (v31 != 9)
    {
      return 0;
    }
  }

  else if (v30 != v31)
  {
    return 0;
  }

  v32 = *(v3 + 104);
  v33 = *(v2 + 104);
  if (v32)
  {
    if (!v33)
    {
      return 0;
    }

    v34 = *(v3 + 96) == *(v2 + 96) && v32 == v33;
    if (!v34 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v35 = *(v3 + 120);
  v36 = *(v2 + 120);
  if (v35)
  {
    if (!v36)
    {
      return 0;
    }

    v37 = *(v3 + 112) == *(v2 + 112) && v35 == v36;
    if (!v37 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v38 = *(v3 + 136);
  v39 = *(v2 + 136);
  if (v38)
  {
    if (!v39)
    {
      return 0;
    }

    v40 = *(v3 + 128) == *(v2 + 128) && v38 == v39;
    if (!v40 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v41 = *(v3 + 152);
  v42 = *(v2 + 152);
  if (v41)
  {
    if (!v42)
    {
      return 0;
    }

    v43 = *(v3 + 144) == *(v2 + 144) && v41 == v42;
    if (!v43 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }

LABEL_82:
    v44 = *(type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0) + 68);
    sub_22C2704B4();
    sub_22BE18E14();
    sub_22BE2C940(v45, v46);
    return sub_22BE2B85C() & 1;
  }

  if (!v42)
  {
    goto LABEL_82;
  }

  return 0;
}

uint64_t (*sub_22BF96358(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 68);
  return result;
}

uint64_t sub_22BF963AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C730, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9642C(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C368, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9649C()
{
  sub_22BE2C940(&qword_27D90C368, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);

  return sub_22C270774();
}

uint64_t sub_22BF96534()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BC20);
  sub_22BE199F4(v0, qword_27D90BC20);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_22C290D90;
  v4 = v52 + v3 + v1[14];
  *(v52 + v3) = 1;
  *v4 = "sessionID";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v52 + v3 + v2 + v1[14];
  *(v52 + v3 + v2) = 2;
  *v8 = "requestID";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v52 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "inputOrigin";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v52 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "responseMode";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v52 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "isEyesFree";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v52 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "isMultiUser";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v52 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "isVoiceTriggerEnabled";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v7();
  v19 = (v52 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "isTextToSpeechEnabled";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v7();
  v21 = (v52 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "isTriggerlessFollowup";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v7();
  v23 = (v52 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "deviceRestrictions";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v7();
  v25 = (v52 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "bargeInModes";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v7();
  v27 = (v52 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "identifiedUser";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v7();
  v29 = (v52 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "encodedLocation";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v7();
  v31 = (v52 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "countryCode";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v7();
  v33 = (v52 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "siriLocale";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v7();
  v35 = (v52 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "contentRestrictions";
  *(v36 + 1) = 19;
  v36[16] = 2;
  v7();
  v37 = (v52 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "uiScale";
  *(v38 + 1) = 7;
  v38[16] = 2;
  v7();
  v39 = (v52 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "temperatureUnit";
  *(v40 + 1) = 15;
  v40[16] = 2;
  v7();
  v41 = (v52 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "allowUserGeneratedContent";
  *(v42 + 1) = 25;
  v42[16] = 2;
  v7();
  v43 = (v52 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "censorSpeech";
  *(v44 + 1) = 12;
  v44[16] = 2;
  v7();
  v45 = (v52 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "meCard";
  *(v46 + 1) = 6;
  v46[16] = 2;
  v7();
  v47 = (v52 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "deviceIdiom";
  *(v48 + 1) = 11;
  v48[16] = 2;
  v7();
  v49 = (v52 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "didPSCFire";
  *(v50 + 1) = 10;
  v50[16] = 2;
  v7();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        sub_22BE2037C();
        sub_22C2705B4();
        break;
      case 10:
      case 11:
        sub_22BE2037C();
        sub_22C270664();
        break;
      case 12:
        sub_22BE18E2C();
        sub_22BF96DE4();
        break;
      case 13:
        v3 = sub_22BE18E2C();
        sub_22BF96E98(v3, v4, v5, v6, v7, v8);
        break;
      case 14:
        sub_22BE18E2C();
        sub_22BF96F08();
        break;
      case 15:
        sub_22BE18E2C();
        sub_22BF96F6C();
        break;
      case 16:
        sub_22BE18E2C();
        sub_22BF96FD0();
        break;
      case 17:
        sub_22BE18E2C();
        sub_22BF97084();
        break;
      case 18:
        sub_22BE18E2C();
        sub_22BF970E8();
        break;
      case 19:
        sub_22BE18E2C();
        sub_22BF9714C();
        break;
      case 20:
        sub_22BE18E2C();
        sub_22BF971B0();
        break;
      case 21:
        sub_22BE18E2C();
        sub_22BF97214();
        break;
      case 22:
        sub_22BE18E2C();
        sub_22BF972C8();
        break;
      case 23:
        sub_22BE18E2C();
        sub_22BF9733C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BF96DE4()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 60);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  sub_22BE2C940(&qword_27D90C3B0, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  return sub_22C2706F4();
}

uint64_t sub_22BF96FD0()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 76);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  sub_22BE2C940(&qword_27D90C398, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  return sub_22C2706F4();
}

uint64_t sub_22BF97214()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 96);
  type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  sub_22BE2C940(&qword_27D90C3C8, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
  return sub_22C2706F4();
}

uint64_t sub_22BF972C8()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 100);
  sub_22BFB1750();
  return sub_22C2705D4();
}

uint64_t ContextProtoStructuredContextSiriRequestContext.traverse<A>(visitor:)()
{
  sub_22BE3B090();
  sub_22BE3C860();
  result = sub_22BF97580(v2);
  if (!v0)
  {
    v4 = sub_22BE17D60();
    sub_22BE4E388(v4);
    v5 = sub_22BE17D60();
    sub_22BE4E3C0(v5);
    v6 = sub_22BE17D60();
    sub_22BE4E3F8(v6);
    v7 = sub_22BE17D60();
    sub_22BF975BC(v7);
    v8 = sub_22BE17D60();
    sub_22BF975F8(v8);
    v9 = sub_22BE17D60();
    sub_22BF97634(v9);
    v10 = sub_22BE17D60();
    sub_22BF97670(v10);
    v11 = sub_22BE17D60();
    sub_22BF976AC(v11);
    if (*(*v1 + 16))
    {
      sub_22BE1BAB8();
      sub_22C270824();
    }

    if (*(v1[1] + 16))
    {
      sub_22BE1BAB8();
      sub_22C270824();
    }

    v12 = sub_22BE17D60();
    sub_22BF976E8(v12, v13, v14, v15);
    v16 = sub_22BE17D60();
    sub_22BF978BC(v16);
    v17 = sub_22BE17D60();
    sub_22BF9795C(v17);
    v18 = sub_22BE17D60();
    sub_22BF979D4(v18);
    v19 = sub_22BE17D60();
    sub_22BF97A4C(v19, v20, v21, v22);
    v23 = sub_22BE17D60();
    sub_22BF97C20(v23);
    v24 = sub_22BE17D60();
    sub_22BF97C98(v24);
    v25 = sub_22BE17D60();
    sub_22BF97D10(v25);
    v26 = sub_22BE17D60();
    sub_22BF97D88(v26);
    v27 = sub_22BE17D60();
    sub_22BF97E00(v27, v28, v29, v30);
    v31 = sub_22BE17D60();
    sub_22BF97FD4(v31);
    v32 = sub_22BE17D60();
    sub_22BF98060(v32);
    v33 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 108);
    return sub_22BE1AC30();
  }

  return result;
}

uint64_t sub_22BF97580(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = *(result + 16);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF975BC(uint64_t result)
{
  if (*(result + 80) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF975F8(uint64_t result)
{
  if (*(result + 81) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF97634(uint64_t result)
{
  if (*(result + 82) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF97670(uint64_t result)
{
  if (*(result + 83) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF976AC(uint64_t result)
{
  if (*(result + 84) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF976E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C020, &qword_22C290DF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 60);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90C020, &qword_22C290DF8);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C3B0, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
}

uint64_t sub_22BF978BC(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v3 = a1 + *(result + 64);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_22BE29D7C(*v3, *(v3 + 8));
    sub_22C2707E4();
    return sub_22BF158B4(v5, v4);
  }

  return result;
}

uint64_t sub_22BF9795C(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v3 = (a1 + *(result + 68));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF979D4(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v3 = (a1 + *(result + 72));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF97A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C010, &dword_22C294AF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 76);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90C010, &dword_22C294AF0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C398, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
}

uint64_t sub_22BF97C20(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v3 = (a1 + *(result + 80));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22C270834();
  }

  return result;
}

uint64_t sub_22BF97C98(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v3 = (a1 + *(result + 84));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF97D10(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 88)) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF97D88(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 92)) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF97E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C000, &qword_22C2CB7C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 96);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90C000, &qword_22C2CB7C0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C3C8, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
}

uint64_t sub_22BF97FD4(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 100)) != 12)
  {
    v3 = *(a1 + *(result + 100));
    sub_22BFB1750();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t sub_22BF98060(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  if (*(a1 + *(result + 104)) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

void static ContextProtoStructuredContextSiriRequestContext.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE1B2D4();
  v183 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(v4);
  v5 = sub_22BE18000(v183);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v185 = v8;
  v9 = sub_22BE5CE4C(&qword_27D90C000, &qword_22C2CB7C0);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  v182 = v13;
  v181 = sub_22BE5CE4C(&qword_27D90C008, &qword_22C290DE8);
  sub_22BE18000(v181);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE1A174();
  v184 = v17;
  v18 = sub_22BE183BC();
  v19 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(v18);
  v20 = sub_22BE18000(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  v186 = v23;
  v24 = sub_22BE5CE4C(&qword_27D90C010, &dword_22C294AF0);
  sub_22BE19448(v24);
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE28738();
  v28 = sub_22BE5CE4C(&qword_27D90C018, &qword_22C290DF0);
  sub_22BE18000(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1A174();
  v187 = v32;
  v33 = sub_22BE183BC();
  v34 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(v33);
  v35 = sub_22BE18000(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE179EC();
  v38 = sub_22BE5CE4C(&qword_27D90C020, &qword_22C290DF8);
  sub_22BE19448(v38);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  v43 = &v178 - v42;
  v44 = sub_22BE5CE4C(&qword_27D90C028, &qword_22C290E00);
  sub_22BE18000(v44);
  v46 = *(v45 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE1B01C();
  sub_22BFB1A88();
  if (v49)
  {
    if (!v48)
    {
      goto LABEL_80;
    }

    sub_22BFB1A50();
    v52 = v52 && v50 == v51;
    if (!v52 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v48)
  {
    goto LABEL_80;
  }

  sub_22BE46B5C();
  if (v54)
  {
    if (!v53)
    {
      goto LABEL_80;
    }

    sub_22BFB1A40();
    v57 = v52 && v55 == v56;
    if (!v57 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v53)
  {
    goto LABEL_80;
  }

  sub_22BE292F4();
  if (v59)
  {
    if (!v58)
    {
      goto LABEL_80;
    }

    sub_22BE2BBDC();
    v62 = v52 && v60 == v61;
    if (!v62 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v58)
  {
    goto LABEL_80;
  }

  sub_22BE2BA8C();
  if (v64)
  {
    if (!v63)
    {
      goto LABEL_80;
    }

    sub_22BFB1A60();
    v67 = v52 && v65 == v66;
    if (!v67 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v63)
  {
    goto LABEL_80;
  }

  v68 = *(v1 + 80);
  v69 = *(v0 + 80);
  if (v68 == 2)
  {
    if (v69 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v69 == 2 || ((v68 ^ v69) & 1) != 0)
  {
    goto LABEL_80;
  }

  v70 = *(v1 + 81);
  v71 = *(v0 + 81);
  if (v70 == 2)
  {
    if (v71 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v71 == 2 || ((v70 ^ v71) & 1) != 0)
  {
    goto LABEL_80;
  }

  v72 = *(v1 + 82);
  v73 = *(v0 + 82);
  if (v72 == 2)
  {
    if (v73 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v73 == 2 || ((v72 ^ v73) & 1) != 0)
  {
    goto LABEL_80;
  }

  v74 = *(v1 + 83);
  v75 = *(v0 + 83);
  if (v74 == 2)
  {
    if (v75 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v75 == 2 || ((v74 ^ v75) & 1) != 0)
  {
    goto LABEL_80;
  }

  v76 = *(v1 + 84);
  v77 = *(v0 + 84);
  if (v76 == 2)
  {
    if (v77 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v77 == 2 || ((v76 ^ v77) & 1) != 0)
  {
    goto LABEL_80;
  }

  v78 = sub_22BE1BC88();
  if ((sub_22BE9693C(v78, v79) & 1) == 0 || (sub_22BE9693C(*(v1 + 8), *(v0 + 8)) & 1) == 0)
  {
    goto LABEL_80;
  }

  v80 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v81 = *(v80 + 60);
  v179 = v80;
  v180 = v81;
  v82 = *(v44 + 48);
  sub_22BE22868();
  v180 = v82;
  sub_22BE22868();
  sub_22BE1AB5C(v3, 1, v34);
  if (v52)
  {
    sub_22BE1AB5C(v3 + v180, 1, v34);
    if (v52)
    {
      sub_22BE33928(v3, &qword_27D90C020, &qword_22C290DF8);
      goto LABEL_75;
    }

LABEL_72:
    v84 = &qword_27D90C028;
    v85 = &qword_22C290E00;
    v86 = v3;
LABEL_73:
    sub_22BE33928(v86, v84, v85);
    goto LABEL_80;
  }

  sub_22BE22868();
  sub_22BE1AB5C(v3 + v180, 1, v34);
  if (v83)
  {
    sub_22BFB18F4(v43, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
    goto LABEL_72;
  }

  sub_22BFB18A0();
  v87 = static ContextProtoStructuredContextSiriRequestContextUser.== infix(_:_:)();
  v88 = sub_22BE3AF28();
  sub_22BFB18F4(v88, v89);
  v90 = sub_22BE196A8();
  sub_22BFB18F4(v90, v91);
  sub_22BE33928(v3, &qword_27D90C020, &qword_22C290DF8);
  if ((v87 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_75:
  v92 = v179[16];
  v94 = *(v1 + v92);
  v93 = *(v1 + v92 + 8);
  v95 = (v0 + v92);
  v97 = *v95;
  v96 = v95[1];
  if (v93 >> 60 == 15)
  {
    if (v96 >> 60 == 15)
    {
      v98 = sub_22BE1AB1C();
      sub_22BF1C1E4(v98, v99);
      v100 = sub_22BE196A8();
      sub_22BF1C1E4(v100, v101);
      v102 = sub_22BE1AB1C();
      sub_22BF158B4(v102, v103);
      goto LABEL_83;
    }

LABEL_79:
    v104 = sub_22BE1AB1C();
    sub_22BF1C1E4(v104, v105);
    v106 = sub_22BE196A8();
    sub_22BF1C1E4(v106, v107);
    v108 = sub_22BE1AB1C();
    sub_22BF158B4(v108, v109);
    v110 = sub_22BE196A8();
    sub_22BF158B4(v110, v111);
    goto LABEL_80;
  }

  if (v96 >> 60 == 15)
  {
    goto LABEL_79;
  }

  v113 = sub_22BE1AB1C();
  sub_22BF1C1E4(v113, v114);
  v115 = sub_22BE196A8();
  sub_22BF1C1E4(v115, v116);
  v117 = sub_22BE1AB1C();
  v118 = MEMORY[0x2318A6720](v117);
  v119 = sub_22BE196A8();
  sub_22BF158B4(v119, v120);
  v121 = sub_22BE1AB1C();
  sub_22BF158B4(v121, v122);
  if ((v118 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_83:
  v123 = v179[17];
  sub_22BE2F1A0();
  if (v126)
  {
    if (!v124)
    {
      goto LABEL_80;
    }

    sub_22BE3A508(v125);
    v129 = v52 && v127 == v128;
    if (!v129 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v124)
  {
    goto LABEL_80;
  }

  v130 = v179[18];
  sub_22BE2F1A0();
  if (v133)
  {
    if (!v131)
    {
      goto LABEL_80;
    }

    sub_22BE3A508(v132);
    v136 = v52 && v134 == v135;
    if (!v136 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v131)
  {
    goto LABEL_80;
  }

  v137 = v179[19];
  v138 = *(v28 + 48);
  v139 = v187;
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE23B00(v139);
  if (v52)
  {
    sub_22BE23B00(v187 + v138);
    if (v52)
    {
      sub_22BE33928(v187, &qword_27D90C010, &dword_22C294AF0);
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  v140 = v187;
  sub_22BE22868();
  sub_22BE23B00(v140 + v138);
  if (v141)
  {
    sub_22BFB18F4(v2, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
LABEL_109:
    v84 = &qword_27D90C018;
    v85 = &qword_22C290DF0;
    v86 = v187;
    goto LABEL_73;
  }

  v142 = v187;
  v143 = v186;
  sub_22BFB18A0();
  v144 = static ContextProtoStructuredContextSiriRequestContextContentRestriction.== infix(_:_:)();
  sub_22BFB18F4(v143, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  sub_22BFB18F4(v2, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  sub_22BE33928(v142, &qword_27D90C010, &dword_22C294AF0);
  if ((v144 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_111:
  sub_22BE3FE0C(v179[20]);
  if (v146)
  {
    if (!v145)
    {
      goto LABEL_80;
    }
  }

  else
  {
    sub_22BE20208();
    if (v147)
    {
      goto LABEL_80;
    }
  }

  v148 = v179[21];
  sub_22BE2F1A0();
  if (v151)
  {
    if (!v149)
    {
      goto LABEL_80;
    }

    sub_22BE3A508(v150);
    v154 = v52 && v152 == v153;
    if (!v154 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else if (v149)
  {
    goto LABEL_80;
  }

  sub_22BE41FCC(v179[22]);
  if (v52)
  {
    if (v155 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v155 == 2 || ((v156 ^ v155) & 1) != 0)
  {
    goto LABEL_80;
  }

  sub_22BE41FCC(v179[23]);
  if (v52)
  {
    if (v157 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v157 == 2 || ((v158 ^ v157) & 1) != 0)
  {
    goto LABEL_80;
  }

  v159 = v179[24];
  v160 = *(v181 + 48);
  sub_22BE22868();
  sub_22BE22868();
  v161 = sub_22BFB1A7C();
  sub_22BE1AB5C(v161, v162, v183);
  if (!v52)
  {
    v163 = v184;
    sub_22BE22868();
    sub_22BE1AB5C(v163 + v160, 1, v183);
    if (!v164)
    {
      v165 = v184;
      sub_22BFB18A0();
      v166 = v182;
      v167 = static ContextProtoStructuredContextSiriRequestContextMeCard.== infix(_:_:)();
      v168 = sub_22BE232C8();
      sub_22BFB18F4(v168, v169);
      sub_22BFB18F4(v166, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
      sub_22BE33928(v165, &qword_27D90C000, &qword_22C2CB7C0);
      if ((v167 & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_146;
    }

    sub_22BFB18F4(v182, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
    goto LABEL_144;
  }

  sub_22BE1AB5C(v184 + v160, 1, v183);
  if (!v52)
  {
LABEL_144:
    v84 = &qword_27D90C008;
    v85 = &qword_22C290DE8;
    v86 = v184;
    goto LABEL_73;
  }

  sub_22BE33928(v184, &qword_27D90C000, &qword_22C2CB7C0);
LABEL_146:
  v170 = v179[25];
  v171 = *(v1 + v170);
  v172 = *(v0 + v170);
  if (v171 == 12)
  {
    if (v172 != 12)
    {
      goto LABEL_80;
    }
  }

  else if (v171 != v172)
  {
    goto LABEL_80;
  }

  sub_22BE41FCC(v179[26]);
  if (!v52)
  {
    if (v173 == 2 || ((v174 ^ v173) & 1) != 0)
    {
      goto LABEL_80;
    }

LABEL_156:
    v175 = v179[27];
    sub_22C2704B4();
    sub_22BE18E14();
    sub_22BE2C940(v176, v177);
    v112 = sub_22BE2B85C();
    goto LABEL_81;
  }

  if (v173 == 2)
  {
    goto LABEL_156;
  }

LABEL_80:
  v112 = 0;
LABEL_81:
  sub_22BE1C1DC(v112);
  sub_22BE1AABC();
}

uint64_t (*sub_22BF98BE8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 108);
  return result;
}

uint64_t sub_22BF98C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C728, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF98CBC(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF98D2C()
{
  sub_22BE2C940(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);

  return sub_22C270774();
}

uint64_t sub_22BF98DC4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BC38);
  sub_22BE199F4(v0, qword_27D90BC38);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "appRestriction";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "countryCode";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "movieRestriction";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tvRestriction";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        sub_22BE2037C();
        sub_22C270624();
        break;
      case 2:
        sub_22BE2037C();
        sub_22C270694();
        break;
      default:
        continue;
    }
  }
}

unsigned int *ContextProtoStructuredContextSiriRequestContextContentRestriction.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  v1 = sub_22BE192B4();
  result = sub_22BF99148(v1);
  if (!v0)
  {
    v3 = sub_22BE17D78();
    sub_22BE3D82C(v3);
    v4 = sub_22BE17D78();
    sub_22BF99180(v4);
    v5 = sub_22BE17D78();
    sub_22BF991B8(v5);
    v6 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0) + 32);
    return sub_22BE19514();
  }

  return result;
}

unsigned int *sub_22BF99148(unsigned int *result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    return sub_22C270804();
  }

  return result;
}

uint64_t sub_22BF99180(uint64_t result)
{
  if ((*(result + 28) & 1) == 0)
  {
    v1 = *(result + 24);
    return sub_22C270804();
  }

  return result;
}

uint64_t sub_22BF991B8(uint64_t result)
{
  if ((*(result + 36) & 1) == 0)
  {
    v1 = *(result + 32);
    return sub_22C270804();
  }

  return result;
}

uint64_t static ContextProtoStructuredContextSiriRequestContextContentRestriction.== infix(_:_:)()
{
  sub_22BE18378();
  v4 = *(v2 + 4);
  if (*(v3 + 4))
  {
    if (!*(v2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*v1 != *v0)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(v1 + 16);
  v6 = *(v0 + 16);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(v1 + 8) == *(v0 + 8) && v5 == v6;
    if (!v7 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(v0 + 28);
  if (*(v1 + 28))
  {
    if (!*(v0 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + 24) != *(v0 + 24))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  v9 = *(v0 + 36);
  if (*(v1 + 36))
  {
    if (!*(v0 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + 32) != *(v0 + 32))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v11 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0) + 32);
  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v12, v13);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22BF993B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C720, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF99434(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C398, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF994A4()
{
  sub_22BE2C940(&qword_27D90C398, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);

  return sub_22C270774();
}

uint64_t sub_22BF9953C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BC50);
  sub_22BE199F4(v0, qword_27D90BC50);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "userID";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isOnlyUserInHome";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "classification";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22BE18E2C();
        sub_22BF997E4();
        break;
      case 2:
        sub_22BE2037C();
        sub_22C2705B4();
        break;
      case 1:
        sub_22BE239F4();
        sub_22C270694();
        break;
    }
  }

  return result;
}

uint64_t sub_22BF998B4(uint64_t result)
{
  if (*(result + 16) != 2)
  {
    return sub_22C2707C4();
  }

  return result;
}

uint64_t sub_22BF998F0(uint64_t result)
{
  if (*(result + 17) != 5)
  {
    v1 = *(result + 17);
    sub_22BFB16FC();
    return sub_22C2707D4();
  }

  return result;
}

uint64_t static ContextProtoStructuredContextSiriRequestContextUser.== infix(_:_:)()
{
  sub_22BE18378();
  v3 = *(v0 + 8);
  if (*(v2 + 8))
  {
    if (!v3)
    {
      return 0;
    }

    sub_22BE27BD8();
    v6 = v6 && v4 == v5;
    if (!v6 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v7 = *(v1 + 16);
  v8 = *(v0 + 16);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v9 = *(v1 + 17);
  v10 = *(v0 + 17);
  if (v9 == 5)
  {
    if (v10 != 5)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  v12 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0) + 28);
  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v13, v14);
  return sub_22BE2B85C() & 1;
}

uint64_t (*sub_22BF99AD0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_22BF99B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C718, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF99BA4(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C3B0, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF99C14()
{
  sub_22BE2C940(&qword_27D90C3B0, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);

  return sub_22C270774();
}

uint64_t sub_22BF99CAC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BC68);
  sub_22BE199F4(v0, qword_27D90BC68);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "givenName";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "middleName";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "familyName";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "nickName";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "fullName";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "addresses";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

void ContextProtoStructuredContextSiriRequestContextMeCard.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    v1 = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22BF9A07C();
        break;
      default:
        continue;
    }
  }
}

void sub_22BF9A07C()
{
  sub_22BE19130();
  v0 = sub_22BE37708();
  v1(v0);
  v2 = sub_22BE3C5E4();
  sub_22BE2C940(v2, v3);
  sub_22BE48DD8();
  sub_22C2706E4();
  sub_22BE18478();
}

void ContextProtoStructuredContextSiriRequestContextMeCard.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3B090();
  sub_22BE3C860();
  sub_22BE4E190(v1);
  if (!v0)
  {
    v2 = sub_22BE17D60();
    sub_22BE4E1C8(v2);
    v3 = sub_22BE17D60();
    sub_22BE4E498(v3);
    v4 = sub_22BE17D60();
    sub_22BF9A1CC(v4);
    v5 = sub_22BE17D60();
    sub_22BF9A208(v5);
    sub_22BE41DF4();
    if (v6)
    {
      type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0);
      sub_22BE2C940(&qword_27D90C048, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    v7 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0) + 40);
    sub_22BE1AC30();
  }

  sub_22BE25C6C();
}

uint64_t sub_22BF9A1CC(uint64_t result)
{
  if (*(result + 64))
  {
    v1 = *(result + 56);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF9A208(uint64_t result)
{
  if (*(result + 80))
  {
    v1 = *(result + 72);
    return sub_22C270844();
  }

  return result;
}

uint64_t static ContextProtoStructuredContextSiriRequestContextMeCard.== infix(_:_:)()
{
  sub_22BE18378();
  v3 = *(v2 + 16);
  v4 = v0[2];
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = v1[1] == v0[1] && v3 == v4;
    if (!v5 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v6 = v1[4];
  v7 = v0[4];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = v1[3] == v0[3] && v6 == v7;
    if (!v8 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = v1[6];
  v10 = v0[6];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = v1[5] == v0[5] && v9 == v10;
    if (!v11 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = v1[8];
  v13 = v0[8];
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = v1[7] == v0[7] && v12 == v13;
    if (!v14 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v15 = v1[10];
  v16 = v0[10];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = v1[9] == v0[9] && v15 == v16;
    if (!v17 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  sub_22BE1BC88();
  sub_22BEA1918();
  if (v18)
  {
    v19 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0) + 40);
    sub_22C2704B4();
    sub_22BE18E14();
    sub_22BE2C940(v20, v21);
    return sub_22BE2B85C() & 1;
  }

  return 0;
}

uint64_t (*sub_22BF9A450(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_22BF9A4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C710, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9A524(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C3C8, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9A594()
{
  sub_22BE2C940(&qword_27D90C3C8, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);

  return sub_22C270774();
}

uint64_t sub_22BF9A62C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BC80);
  sub_22BE199F4(v0, qword_27D90BC80);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "street";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "city";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "state";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "postalCode";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "countryCode";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
        sub_22BE2037C();
        sub_22C270694();
        break;
      default:
        continue;
    }
  }
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.traverse<A>(visitor:)()
{
  sub_22BE33A5C();
  v1 = sub_22BE192B4();
  result = sub_22BE4E220(v1);
  if (!v0)
  {
    v3 = sub_22BE17D78();
    sub_22BE4E2BC(v3);
    v4 = sub_22BE17D78();
    sub_22BE4E2F4(v4);
    v5 = sub_22BE17D78();
    sub_22BF9AA4C(v5);
    v6 = sub_22BE17D78();
    sub_22BF9AA88(v6);
    v7 = sub_22BE17D78();
    sub_22BF9AAC4(v7);
    v8 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0) + 40);
    return sub_22BE19514();
  }

  return result;
}

uint64_t sub_22BF9AA4C(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = *(result + 48);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF9AA88(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = *(result + 64);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BF9AAC4(uint64_t result)
{
  if (*(result + 88))
  {
    v1 = *(result + 80);
    return sub_22C270844();
  }

  return result;
}

uint64_t static ContextProtoStructuredContextSiriRequestContextAddress.== infix(_:_:)()
{
  sub_22BE18378();
  v3 = v0[1];
  if (*(v2 + 8))
  {
    if (!v3)
    {
      return 0;
    }

    sub_22BE27BD8();
    v6 = v6 && v4 == v5;
    if (!v6 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  sub_22BFB1A88();
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }

    sub_22BFB1A50();
    v11 = v6 && v9 == v10;
    if (!v11 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_22BE46B5C();
  if (v13)
  {
    if (!v12)
    {
      return 0;
    }

    sub_22BFB1A40();
    v16 = v6 && v14 == v15;
    if (!v16 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  sub_22BE292F4();
  if (v18)
  {
    if (!v17)
    {
      return 0;
    }

    sub_22BE2BBDC();
    v21 = v6 && v19 == v20;
    if (!v21 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  sub_22BE2BA8C();
  if (v23)
  {
    if (!v22)
    {
      return 0;
    }

    sub_22BFB1A60();
    v26 = v6 && v24 == v25;
    if (!v26 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = *(v1 + 88);
  v28 = v0[11];
  if (v27)
  {
    if (v28)
    {
      v29 = *(v1 + 80) == v0[10] && v27 == v28;
      if (v29 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (!v28)
  {
LABEL_53:
    v30 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0) + 40);
    sub_22C2704B4();
    sub_22BE18E14();
    sub_22BE2C940(v31, v32);
    return sub_22BE2B85C() & 1;
  }

  return 0;
}

uint64_t sub_22BF9AD2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C708, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9ADAC(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C048, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9AE1C()
{
  sub_22BE2C940(&qword_27D90C048, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);

  return sub_22C270774();
}

uint64_t sub_22BF9AEB4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BC98);
  sub_22BE199F4(v0, qword_27D90BC98);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "standaloneTitle";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "embeddingDescription";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "isDisabled";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "menuHierarchyComponents";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 2:
      case 3:
      case 4:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 5:
        sub_22BE2037C();
        sub_22C2705C4();
        break;
      case 6:
        sub_22BE2037C();
        sub_22C270664();
        break;
      default:
        continue;
    }
  }
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25B10(), result = sub_22C270844(), !v0))
  {
    v4 = sub_22BE17D60();
    result = sub_22BE4E388(v4);
    if (!v0)
    {
      v5 = sub_22BE17D60();
      sub_22BE4E3C0(v5);
      v6 = sub_22BE17D60();
      sub_22BE4E3F8(v6);
      if (*(v1 + 16) == 1)
      {
        sub_22BE1BAB8();
        sub_22C2707C4();
      }

      if (*(*(v1 + 24) + 16))
      {
        sub_22BE1BAB8();
        sub_22C270824();
      }

      v7 = *(type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0) + 40);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t static ContextProtoStructuredContextIntelligenceCommandContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE46B5C();
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }

    sub_22BFB1A40();
    v11 = v6 && v9 == v10;
    if (!v11 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_22BE292F4();
  if (v13)
  {
    if (!v12)
    {
      return 0;
    }

    sub_22BE2BBDC();
    v16 = v6 && v14 == v15;
    if (!v16 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  sub_22BE2BA8C();
  if (v18)
  {
    if (!v17)
    {
      return 0;
    }

    sub_22BFB1A60();
    v21 = v6 && v19 == v20;
    if (!v21 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  sub_22BE36248();
  if (v6 && (sub_22BE9693C(*(v3 + 24), *(v2 + 24)) & 1) != 0)
  {
    v22 = *(type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0) + 40);
    sub_22C2704B4();
    sub_22BE18E14();
    sub_22BE2C940(v23, v24);
    return sub_22BE2B85C() & 1;
  }

  return 0;
}

uint64_t sub_22BF9B4F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C700, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9B570(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C3F0, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9B5E0()
{
  sub_22BE2C940(&qword_27D90C3F0, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);

  return sub_22C270774();
}

uint64_t sub_22BF9B678()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BCB0);
  sub_22BE199F4(v0, qword_27D90BCB0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleID";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "appName";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "category";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructedContextAppInFocusContext.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_22BE2037C();
      sub_22C270694();
    }

    else if (result == 1)
    {
      sub_22BE239F4();
      sub_22C2706A4();
    }
  }

  return result;
}

uint64_t static ContextProtoStructedContextAppInFocusContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BFB1A88();
  if (v6)
  {
    if (!v5)
    {
      return 0;
    }

    sub_22BFB1A50();
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

  sub_22BE46B5C();
  if (v11)
  {
    if (v10)
    {
      sub_22BFB1A40();
      v14 = v4 && v12 == v13;
      if (v14 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (!v10)
  {
LABEL_22:
    v15 = *(type metadata accessor for ContextProtoStructedContextAppInFocusContext(0) + 28);
    sub_22C2704B4();
    sub_22BE18E14();
    sub_22BE2C940(v16, v17);
    return sub_22BE2B85C() & 1;
  }

  return 0;
}

uint64_t sub_22BF9BAEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6F8, type metadata accessor for ContextProtoStructedContextAppInFocusContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9BB6C(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C408, type metadata accessor for ContextProtoStructedContextAppInFocusContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9BBDC()
{
  sub_22BE2C940(&qword_27D90C408, type metadata accessor for ContextProtoStructedContextAppInFocusContext);

  return sub_22C270774();
}

uint64_t sub_22BF9BC74()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BCC8);
  sub_22BE199F4(v0, qword_27D90BCC8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleID";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "appName";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "category";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isActive";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructedContextAppContext.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 2:
      case 3:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 4:
        sub_22BE2037C();
        sub_22C2705C4();
        break;
      default:
        continue;
    }
  }
}

uint64_t ContextProtoStructedContextAppContext.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25B10(), result = sub_22C270844(), !v0))
  {
    v4 = sub_22BE17D60();
    result = sub_22BE4E1C8(v4);
    if (!v0)
    {
      v5 = sub_22BE17D60();
      sub_22BE4E498(v5);
      if (*(v1 + 16) == 1)
      {
        sub_22BE1BAB8();
        sub_22C2707C4();
      }

      v6 = *(type metadata accessor for ContextProtoStructedContextAppContext(0) + 32);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t static ContextProtoStructedContextAppContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[4];
  v8 = v2[4];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = v3[3] == v2[3] && v7 == v8;
    if (!v9 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = v3[6];
  v11 = v2[6];
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  v12 = v3[5] == v2[5] && v10 == v11;
  if (!v12 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  sub_22BE36248();
  if (!v6)
  {
    return 0;
  }

  v14 = *(type metadata accessor for ContextProtoStructedContextAppContext(0) + 32);
  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v15, v16);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22BF9C1C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6F0, type metadata accessor for ContextProtoStructedContextAppContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9C240(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C420, type metadata accessor for ContextProtoStructedContextAppContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9C2B0()
{
  sub_22BE2C940(&qword_27D90C420, type metadata accessor for ContextProtoStructedContextAppContext);

  return sub_22C270774();
}

uint64_t sub_22BF9C348()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BCE0);
  sub_22BE199F4(v0, qword_27D90BCE0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "boundingBox";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "uiMetadata";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fractionVisible";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructuredContextOnScreenUIText.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22BF9C64C();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22BF9C700();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22BF9C7B4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BF9C64C()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0) + 20);
  type metadata accessor for ContextProtoCGRect(0);
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect);
  return sub_22C2706F4();
}

uint64_t sub_22BF9C700()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0) + 24);
  type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  sub_22BE2C940(&qword_27D90C450, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  return sub_22C2706F4();
}

uint64_t ContextProtoStructuredContextOnScreenUIText.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v1 || (sub_22BE25B10(), result = sub_22C270844(), !v0))
  {
    v3 = sub_22BE17D60();
    result = sub_22BF9C8AC(v3, v4, v5, v6);
    if (!v0)
    {
      v7 = sub_22BE17D60();
      sub_22BF9CA80(v7, v8, v9, v10);
      v11 = sub_22BE17D60();
      sub_22BF9CC54(v11);
      v12 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0) + 32);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t sub_22BF9C8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoCGRect(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90BF90, &unk_22C294AD0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_22BF9CA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C078, &unk_22C294B00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90C078, &unk_22C294B00);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C450, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
}

uint64_t sub_22BF9CC54(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22C270834();
  }

  return result;
}

void static ContextProtoStructuredContextOnScreenUIText.== infix(_:_:)()
{
  sub_22BE19460();
  v6 = sub_22BE1B2D4();
  v7 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(v6);
  v8 = sub_22BE18000(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v13 = v12 - v11;
  v14 = sub_22BE5CE4C(&qword_27D90C078, &unk_22C294B00);
  sub_22BE19448(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A174();
  v62 = v18;
  v63 = sub_22BE5CE4C(&qword_27D90C080, &qword_22C290E08);
  sub_22BE18000(v63);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE19E64();
  v22 = type metadata accessor for ContextProtoCGRect(0);
  v23 = sub_22BE18000(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v26 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  sub_22BE19448(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1B01C();
  v30 = sub_22BE5CE4C(&qword_27D90BF98, &qword_22C290DD0);
  sub_22BE18000(v30);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE2BB64();
  v64 = v1;
  v34 = *v1 == *v0 && v1[1] == v0[1];
  if (!v34 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_26;
  }

  v60 = v13;
  v35 = v0;
  v61 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v36 = v61[5];
  v37 = *(v30 + 48);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE1AB5C(v5, 1, v22);
  if (v34)
  {
    sub_22BE1AB5C(v5 + v37, 1, v22);
    if (v34)
    {
      sub_22BE33928(v5, &qword_27D90BF90, &unk_22C294AD0);
      goto LABEL_16;
    }

LABEL_14:
    v40 = &qword_27D90BF98;
    v41 = &qword_22C290DD0;
    v42 = v5;
LABEL_25:
    sub_22BE33928(v42, v40, v41);
    goto LABEL_26;
  }

  sub_22BE22868();
  sub_22BE1AB5C(v5 + v37, 1, v22);
  if (v38)
  {
    sub_22BE2574C();
    sub_22BFB18F4(v3, v39);
    goto LABEL_14;
  }

  sub_22BFB18A0();
  static ContextProtoCGRect.== infix(_:_:)();
  v44 = v43;
  sub_22BFB18F4(v4, type metadata accessor for ContextProtoCGRect);
  v45 = sub_22BE38970();
  sub_22BFB18F4(v45, v46);
  sub_22BE33928(v5, &qword_27D90BF90, &unk_22C294AD0);
  if ((v44 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  v47 = v61[6];
  v48 = *(v63 + 48);
  sub_22BFB1AAC();
  sub_22BFB1AAC();
  sub_22BE36144(v2, 1);
  if (!v34)
  {
    sub_22BE22868();
    sub_22BE18190(v2 + v48);
    if (!v49)
    {
      sub_22BFB18A0();
      static ContextProtoStructuredContextOnScreenUITextUIMetadata.== infix(_:_:)();
      v52 = v51;
      sub_22BFB18F4(v60, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
      sub_22BFB18F4(v62, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
      sub_22BE33928(v2, &qword_27D90C078, &unk_22C294B00);
      if ((v52 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    sub_22BFB18F4(v62, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
    goto LABEL_24;
  }

  sub_22BE18190(v2 + v48);
  if (!v34)
  {
LABEL_24:
    v40 = &qword_27D90C080;
    v41 = &qword_22C290E08;
    v42 = v2;
    goto LABEL_25;
  }

  sub_22BE33928(v2, &qword_27D90C078, &unk_22C294B00);
LABEL_29:
  v53 = v61[7];
  v54 = *(v64 + v53 + 8);
  v55 = *(v35 + v53 + 8);
  if (v54)
  {
    if (v55)
    {
      goto LABEL_33;
    }
  }

  else
  {
    sub_22BE20208();
    if ((v56 & 1) == 0)
    {
LABEL_33:
      v57 = v61[8];
      sub_22C2704B4();
      sub_22BE18E14();
      sub_22BE2C940(v58, v59);
      v50 = sub_22C272FD4();
      goto LABEL_27;
    }
  }

LABEL_26:
  v50 = 0;
LABEL_27:
  sub_22BE1C1DC(v50);
  sub_22BE1AABC();
}

uint64_t sub_22BF9D25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6E8, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9D2DC(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C438, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9D34C()
{
  sub_22BE2C940(&qword_27D90C438, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);

  return sub_22C270774();
}

uint64_t sub_22BF9D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C090, &qword_22C290E10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90C090, &qword_22C290E10);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C468, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
}

void static ContextProtoStructuredContextOnScreenUITextUIMetadata.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE1B2D4();
  v4 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(v3);
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  sub_22BE28738();
  v8 = sub_22BE1AEE4();
  v10 = sub_22BE5CE4C(v8, v9);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1B01C();
  v14 = sub_22BE5CE4C(&qword_27D90C098, &qword_22C290E18);
  sub_22BE19448(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  v18 = MEMORY[0x28223BE20](v17);
  sub_22BE1AC54(v18);
  sub_22BE28764();
  sub_22BE1972C(v0);
  if (v19)
  {
    sub_22BE1972C(v0 + v2);
    if (v19)
    {
      sub_22BE33928(v0, &qword_27D90C090, &qword_22C290E10);
LABEL_12:
      v27 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
      sub_22BE3636C(v27);
      sub_22BE18E14();
      sub_22BE2C940(v28, v29);
      v20 = sub_22BE2B85C();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE1972C(v0 + v2);
  if (v19)
  {
    sub_22BFB18F4(v1, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
LABEL_9:
    sub_22BE33928(v0, &qword_27D90C098, &qword_22C290E18);
    goto LABEL_10;
  }

  sub_22BFB18A0();
  sub_22BE38970();
  static ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.== infix(_:_:)();
  v22 = v21;
  v23 = sub_22BE324FC();
  sub_22BFB18F4(v23, v24);
  v25 = sub_22BE1AB1C();
  sub_22BFB18F4(v25, v26);
  sub_22BE33928(v0, &qword_27D90C090, &qword_22C290E10);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
LABEL_13:
  sub_22BE1C1DC(v20);
  sub_22BE1AABC();
}

uint64_t sub_22BF9D93C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6E0, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9D9BC(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C450, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9DA2C()
{
  sub_22BE2C940(&qword_27D90C450, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);

  return sub_22C270774();
}

uint64_t sub_22BF9DAC4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BD10);
  sub_22BE199F4(v0, qword_27D90BD10);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "isActive";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "boundingBox";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "fractionVisible";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "appBundleId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE239F4();
        sub_22C2705C4();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22BF9DDC4();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22BF9DE78();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22BF9DEDC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BF9DDC4()
{
  v0 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 20);
  type metadata accessor for ContextProtoCGRect(0);
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect);
  return sub_22C2706F4();
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.traverse<A>(visitor:)()
{
  sub_22BE18648();
  if (*v0 != 1 || (sub_22BE1BAB8(), result = sub_22C2707C4(), !v1))
  {
    v3 = sub_22BE17D60();
    result = sub_22BF9DFDC(v3, v4, v5, v6);
    if (!v1)
    {
      v7 = sub_22BE17D60();
      sub_22BF9E1B0(v7);
      v8 = sub_22BE17D60();
      sub_22BF9E228(v8);
      v9 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 32);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t sub_22BF9DFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoCGRect(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90BF90, &unk_22C294AD0);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoCGRect);
}

uint64_t sub_22BF9E1B0(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22C270834();
  }

  return result;
}

uint64_t sub_22BF9E228(uint64_t a1)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22C270844();
  }

  return result;
}

void static ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = sub_22BE1B2D4();
  v5 = type metadata accessor for ContextProtoCGRect(v4);
  v6 = sub_22BE18000(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17CBC();
  v9 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE234F4();
  v13 = sub_22BE5CE4C(&qword_27D90BF98, &qword_22C290DD0);
  sub_22BE18000(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE25CD0();
  if (*v1 != *v0)
  {
    goto LABEL_11;
  }

  v41 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v17 = v41[5];
  v18 = *(v13 + 48);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE19FE0(v2);
  if (!v19)
  {
    sub_22BE3AF28();
    sub_22BE22868();
    sub_22BE19FE0(v2 + v18);
    if (!v19)
    {
      sub_22BFB18A0();
      sub_22BE1B5E0();
      static ContextProtoCGRect.== infix(_:_:)();
      v23 = v22;
      v24 = sub_22BE194F8();
      sub_22BFB18F4(v24, v25);
      v26 = sub_22BE18240();
      sub_22BFB18F4(v26, v27);
      sub_22BE33928(v2, &qword_27D90BF90, &unk_22C294AD0);
      if ((v23 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    sub_22BE2574C();
    sub_22BFB18F4(v3, v20);
LABEL_10:
    sub_22BE33928(v2, &qword_27D90BF98, &qword_22C290DD0);
    goto LABEL_11;
  }

  sub_22BE19FE0(v2 + v18);
  if (!v19)
  {
    goto LABEL_10;
  }

  sub_22BE33928(v2, &qword_27D90BF90, &unk_22C294AD0);
LABEL_14:
  sub_22BE3FE0C(v41[6]);
  if (v29)
  {
    if (!v28)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_22BE20208();
    if (v30)
    {
      goto LABEL_11;
    }
  }

  v31 = v41[7];
  sub_22BE2F1A0();
  if (v34)
  {
    if (v32)
    {
      sub_22BE3A508(v33);
      v37 = v19 && v35 == v36;
      if (v37 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_27;
      }
    }
  }

  else if (!v32)
  {
LABEL_27:
    v38 = v41[8];
    sub_22C2704B4();
    sub_22BE18E14();
    sub_22BE2C940(v39, v40);
    v21 = sub_22BE2B85C();
    goto LABEL_12;
  }

LABEL_11:
  v21 = 0;
LABEL_12:
  sub_22BE1C1DC(v21);
  sub_22BE1AABC();
}

uint64_t sub_22BF9E5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6D8, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9E664(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C468, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9E6D4()
{
  sub_22BE2C940(&qword_27D90C468, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);

  return sub_22C270774();
}

uint64_t sub_22BF9E778()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BD28);
  sub_22BE199F4(v0, qword_27D90BD28);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "origin";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "size";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void ContextProtoCGRect.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    v1 = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_22BE18E2C();
      sub_22BF9EA64();
    }

    else if (v1 == 1)
    {
      sub_22BE18E2C();
      sub_22BF9EA14();
    }
  }
}

void sub_22BF9EA14()
{
  sub_22BE19130();
  v0 = sub_22BE37708();
  v1(v0);
  v2 = sub_22BE3C5E4();
  sub_22BE2C940(v2, v3);
  sub_22BE48DD8();
  sub_22C2706F4();
  sub_22BE18478();
}

uint64_t sub_22BF9EA64()
{
  v0 = *(type metadata accessor for ContextProtoCGRect(0) + 20);
  type metadata accessor for ContextProtoCGSize(0);
  sub_22BE2C940(&qword_27D90C4B0, type metadata accessor for ContextProtoCGSize);
  return sub_22C2706F4();
}

uint64_t sub_22BF9EB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C0C0, &unk_22C294B10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ContextProtoCGPoint(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90C0C0, &unk_22C294B10);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C498, type metadata accessor for ContextProtoCGPoint);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoCGPoint);
}

uint64_t sub_22BF9ED34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C0B0, &qword_22C290E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoCGSize(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoCGRect(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90C0B0, &qword_22C290E20);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C4B0, type metadata accessor for ContextProtoCGSize);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoCGSize);
}

void static ContextProtoCGRect.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v6 = v5;
  v65 = type metadata accessor for ContextProtoCGSize(0);
  v7 = sub_22BE18000(v65);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v62 = v10;
  v11 = sub_22BE5CE4C(&qword_27D90C0B0, &qword_22C290E20);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v63 = v15;
  v64 = sub_22BE5CE4C(&qword_27D90C0B8, &qword_22C290E28);
  sub_22BE18000(v64);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE19E64();
  v19 = type metadata accessor for ContextProtoCGPoint(0);
  v20 = sub_22BE18000(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE179EC();
  sub_22BE2BB64();
  v23 = sub_22BE324FC();
  v25 = sub_22BE5CE4C(v23, v24);
  sub_22BE19448(v25);
  v27 = *(v26 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  v30 = (&v62 - v29);
  v31 = sub_22BE5CE4C(&qword_27D90C0C8, &qword_22C290E30);
  sub_22BE19448(v31);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1B1C4();
  v36 = *(v35 + 56);
  v66 = v6;
  sub_22BE289D8();
  sub_22BFB1AAC();
  v67 = v4;
  sub_22BFB1AAC();
  sub_22BE181B0(v1);
  if (v45)
  {
    sub_22BE181B0(v1 + v36);
    if (v45)
    {
      sub_22BE33928(v1, &qword_27D90C0C0, &unk_22C294B10);
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  sub_22BE22868();
  sub_22BE181B0(v1 + v36);
  if (v45)
  {
    sub_22BFB18F4(v30, type metadata accessor for ContextProtoCGPoint);
LABEL_15:
    v46 = &qword_27D90C0C8;
    v47 = &qword_22C290E30;
LABEL_21:
    v54 = v1;
LABEL_32:
    sub_22BE33928(v54, v46, v47);
LABEL_33:
    v44 = 0;
    goto LABEL_34;
  }

  sub_22BFB18A0();
  if (*v30 != *v2 || v30[1] != v2[1])
  {
    sub_22BFB18F4(v2, type metadata accessor for ContextProtoCGPoint);
    v52 = sub_22BE19454();
    sub_22BFB18F4(v52, v53);
    v46 = &qword_27D90C0C0;
    v47 = &unk_22C294B10;
    goto LABEL_21;
  }

  v48 = *(v19 + 24);
  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v49, v50);
  v51 = sub_22C272FD4();
  sub_22BFB18F4(v2, type metadata accessor for ContextProtoCGPoint);
  sub_22BFB18F4(v30, type metadata accessor for ContextProtoCGPoint);
  sub_22BE33928(v1, &qword_27D90C0C0, &unk_22C294B10);
  if ((v51 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_6:
  v37 = type metadata accessor for ContextProtoCGRect(0);
  v38 = *(v37 + 20);
  v39 = *(v64 + 48);
  sub_22BFB1AC4();
  sub_22BFB1AC4();
  v40 = v65;
  sub_22BE1AB5C(v0, 1, v65);
  if (v45)
  {
    sub_22BE181B0(v0 + v39);
    if (v45)
    {
      sub_22BE33928(v0, &qword_27D90C0B0, &qword_22C290E20);
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  v55 = v63;
  sub_22BE22868();
  sub_22BE181B0(v0 + v39);
  if (v56)
  {
    sub_22BFB18F4(v55, type metadata accessor for ContextProtoCGSize);
LABEL_25:
    v46 = &qword_27D90C0B8;
    v47 = &qword_22C290E28;
LABEL_31:
    v54 = v0;
    goto LABEL_32;
  }

  v57 = v62;
  sub_22BFB18A0();
  if (*v55 != *v57 || v55[1] != v57[1])
  {
    sub_22BFB18F4(v57, type metadata accessor for ContextProtoCGSize);
    sub_22BFB18F4(v55, type metadata accessor for ContextProtoCGSize);
    v46 = &qword_27D90C0B0;
    v47 = &qword_22C290E20;
    goto LABEL_31;
  }

  v58 = *(v40 + 24);
  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v59, v60);
  v61 = sub_22C272FD4();
  sub_22BFB18F4(v57, type metadata accessor for ContextProtoCGSize);
  sub_22BFB18F4(v55, type metadata accessor for ContextProtoCGSize);
  sub_22BE33928(v0, &qword_27D90C0B0, &qword_22C290E20);
  if ((v61 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  v41 = *(v37 + 24);
  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v42, v43);
  v44 = sub_22C272FD4();
LABEL_34:
  sub_22BE1C1DC(v44);
  sub_22BE1AABC();
}

uint64_t sub_22BF9F580(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6D0, type metadata accessor for ContextProtoCGRect);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9F600(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9F670()
{
  sub_22BE2C940(&qword_27D90C480, type metadata accessor for ContextProtoCGRect);

  return sub_22C270774();
}

uint64_t sub_22BF9F714()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BD40);
  sub_22BE199F4(v0, qword_27D90BD40);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 1) = 1;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BF9F9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6C8, type metadata accessor for ContextProtoCGPoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BF9FA50(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C498, type metadata accessor for ContextProtoCGPoint);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BF9FAC0()
{
  sub_22BE2C940(&qword_27D90C498, type metadata accessor for ContextProtoCGPoint);

  return sub_22C270774();
}

uint64_t sub_22BF9FB64()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BD58);
  sub_22BE199F4(v0, qword_27D90BD58);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22BF9FD68()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_22BE2037C();
      sub_22C270684();
    }
  }

  return result;
}

void sub_22BF9FDF0()
{
  sub_22BE1B214();
  v4 = v3;
  sub_22BE18648();
  if (*v0 == 0.0 || (sub_22BE254E4(), sub_22C270834(), !v1))
  {
    if (*(v2 + 8) == 0.0 || (sub_22BE254E4(), sub_22C270834(), !v1))
    {
      v5 = *(v4(0) + 24);
      sub_22BE1AC30();
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22BF9FEA0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_22BE18378();
  if (*(v3 + 8) != *(v4 + 8))
  {
    return 0;
  }

  v5 = v2(0);
  sub_22BE23A04(v5);
  sub_22BE18E14();
  sub_22BE2C940(v6, v7);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22BF9FFC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6C0, type metadata accessor for ContextProtoCGSize);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFA0040(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C4B0, type metadata accessor for ContextProtoCGSize);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFA00B0()
{
  sub_22BE2C940(&qword_27D90C4B0, type metadata accessor for ContextProtoCGSize);

  return sub_22C270774();
}

uint64_t sub_22BFA0148()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BD70);
  sub_22BE199F4(v0, qword_27D90BD70);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22C28E690;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v4 = "version";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 3;
  *v8 = "spans";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "spansIsPresent";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "toolRetrievalResponse";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "dynamicEnumerationEntities";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "dynamicEnumerationEntitiesIsPresent";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "context";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 9;
  *v20 = "contextIsPresent";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "deviceIdsID";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  return sub_22C2708A4();
}

void ContextProtoVersionedQueryDecorationOutput.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    v1 = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_22BE18E2C();
        sub_22BFA0604();
        break;
      case 3:
        sub_22BE3E938();
        sub_22BE18E2C();
        sub_22BF9A07C();
        break;
      case 4:
      case 7:
      case 9:
        sub_22BE2037C();
        sub_22C2705C4();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22BFA066C();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22BFA1640();
        break;
      case 8:
        sub_22BE18E2C();
        sub_22BFA16B4();
        break;
      case 10:
        sub_22BE18E2C();
        sub_22BFA0720();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFA066C()
{
  v0 = *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 44);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_22BE2C940(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  return sub_22C2706F4();
}

void ContextProtoVersionedQueryDecorationOutput.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE18648();
  if (!*(*v0 + 16) || (type metadata accessor for ContextProtoSpanMatchedEntity(0), sub_22BE23590(), sub_22BE2C940(v3, v4), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v1))
  {
    if (*(v2 + 8) != 1 || (sub_22BE1BAB8(), sub_22C2707C4(), !v1))
    {
      v5 = sub_22BE17D60();
      sub_22BFA0964(v5, v6, v7, v8);
      if (!v1)
      {
        if (*(*(v2 + 16) + 16))
        {
          type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
          sub_22BFB1A28();
          sub_22BE2C940(v9, v10);
          sub_22BE238E8();
          sub_22BE23CE4();
          sub_22C270874();
        }

        if (*(v2 + 24) == 1)
        {
          sub_22BE1BAB8();
          sub_22C2707C4();
        }

        if (*(*(v2 + 32) + 16))
        {
          type metadata accessor for ContextProtoRetrievedContext(0);
          sub_22BE35580();
          sub_22BE2C940(v11, v12);
          sub_22BE238E8();
          sub_22BE23CE4();
          sub_22C270874();
        }

        if (*(v2 + 40) == 1)
        {
          sub_22BE1BAB8();
          sub_22C2707C4();
        }

        v13 = sub_22BE17D60();
        sub_22BFA0B38(v13);
        v14 = *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 52);
        sub_22BE1AC30();
      }
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFA0964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v9 = *(*(DecorationToolRetrievalResponse - 8) + 64);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 44);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, DecorationToolRetrievalResponse) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90C100, &unk_22C294B20);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
}

uint64_t sub_22BFA0B38(uint64_t a1)
{
  result = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v3 = (a1 + *(result + 48));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22C270844();
  }

  return result;
}

uint64_t (*sub_22BFA0EE0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_22BFA0F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6B8, type metadata accessor for ContextProtoVersionedQueryDecorationOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFA0FB4(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C4C8, type metadata accessor for ContextProtoVersionedQueryDecorationOutput);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFA1024()
{
  sub_22BE2C940(&qword_27D90C4C8, type metadata accessor for ContextProtoVersionedQueryDecorationOutput);

  return sub_22C270774();
}

uint64_t sub_22BFA110C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BDA0);
  sub_22BE199F4(v0, qword_27D90BDA0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28D160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 12;
  *v6 = "spans";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 13;
  *v10 = "spansIsPresent";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 11;
  *v12 = "toolRetrievalResponse";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 22;
  *v14 = "dynamicEnumerationEntities";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 23;
  *v16 = "dynamicEnumerationEntitiesIsPresent";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 24;
  *v18 = "context";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 25;
  *v20 = "contextIsPresent";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 26;
  *v22 = "deviceIdsId";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  return sub_22C2708A4();
}

void ContextProtoQueryDecorationOutput.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    v1 = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 11:
        sub_22BE18E2C();
        sub_22BFA158C();
        break;
      case 12:
        sub_22BE3E938();
        sub_22BE18E2C();
        sub_22BF9A07C();
        break;
      case 13:
      case 23:
      case 25:
        sub_22BE2037C();
        sub_22C2705C4();
        break;
      case 22:
        sub_22BE18E2C();
        sub_22BFA1640();
        break;
      case 24:
        sub_22BE18E2C();
        sub_22BFA16B4();
        break;
      case 26:
        sub_22BE18E2C();
        sub_22BFA1728();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFA158C()
{
  v0 = *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 40);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_22BE2C940(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  return sub_22C2706F4();
}

uint64_t sub_22BFA1640()
{
  v0 = sub_22BE378F4();
  type metadata accessor for ContextProtoDynamicEnumerationEntity(v0);
  sub_22BFB1A28();
  sub_22BE2C940(v1, v2);
  sub_22BE25B10();
  return sub_22C2706E4();
}

uint64_t sub_22BFA16B4()
{
  v0 = sub_22BE378F4();
  type metadata accessor for ContextProtoRetrievedContext(v0);
  sub_22BE35580();
  sub_22BE2C940(v1, v2);
  sub_22BE25B10();
  return sub_22C2706E4();
}

void ContextProtoQueryDecorationOutput.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3B090();
  sub_22BE3C860();
  sub_22BFA196C(v2, v3, v4, v5);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v6)
    {
      type metadata accessor for ContextProtoSpanMatchedEntity(0);
      sub_22BE23590();
      sub_22BE2C940(v7, v8);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    if (*(v1 + 8) == 1)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    if (*(*(v1 + 16) + 16))
    {
      type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
      sub_22BFB1A28();
      sub_22BE2C940(v9, v10);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    if (*(v1 + 24) == 1)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    if (*(*(v1 + 32) + 16))
    {
      type metadata accessor for ContextProtoRetrievedContext(0);
      sub_22BE35580();
      sub_22BE2C940(v11, v12);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    if (*(v1 + 40) == 1)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    v13 = sub_22BE17D60();
    sub_22BFA1B40(v13);
    v14 = *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 48);
    sub_22BE1AC30();
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFA196C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v9 = *(*(DecorationToolRetrievalResponse - 8) + 64);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 40);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, DecorationToolRetrievalResponse) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90C100, &unk_22C294B20);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
}

uint64_t sub_22BFA1B40(uint64_t a1)
{
  result = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  v3 = (a1 + *(result + 44));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22C270844();
  }

  return result;
}

uint64_t (*sub_22BFA1EE8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_22BFA1F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6B0, type metadata accessor for ContextProtoQueryDecorationOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFA1FBC(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C4F0, type metadata accessor for ContextProtoQueryDecorationOutput);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFA202C()
{
  sub_22BE2C940(&qword_27D90C4F0, type metadata accessor for ContextProtoQueryDecorationOutput);

  return sub_22C270774();
}

uint64_t sub_22BFA20C4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BDB8);
  sub_22BE199F4(v0, qword_27D90BDB8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 8;
  *v10 = "requestId";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 9;
  *v12 = "caller";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "contextId";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 11;
  *v16 = "loggingSalt";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 12;
  *v18 = "servicesExecuted";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 13;
  *v20 = "deviceIdsId";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoQueryDecorationInput.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 8:
      case 10:
      case 11:
      case 13:
        sub_22BE2037C();
        sub_22C270694();
        break;
      case 9:
        sub_22BE18E2C();
        sub_22BFA2498();
        break;
      case 12:
        sub_22BE18E2C();
        sub_22BFA2500();
        break;
      default:
        continue;
    }
  }
}

uint64_t ContextProtoQueryDecorationInput.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25B10(), result = sub_22C270844(), !v0))
  {
    v4 = sub_22BE17D60();
    result = sub_22BFA2680(v4);
    if (!v0)
    {
      if (*(v1 + 16))
      {
        v9 = *(v1 + 16);
        sub_22BFADFA0();
        sub_22BE23CE4();
        sub_22C2707D4();
      }

      v5 = sub_22BE17D60();
      sub_22BFA26BC(v5);
      v6 = sub_22BE17D60();
      sub_22BFA26F8(v6);
      if (*(*(v1 + 24) + 16))
      {
        sub_22BFADFF4();
        sub_22BE23CE4();
        sub_22C2707B4();
      }

      v7 = sub_22BE17D60();
      sub_22BFA2734(v7);
      v8 = *(type metadata accessor for ContextProtoQueryDecorationInput(0) + 44);
      return sub_22BE1AC30();
    }
  }

  return result;
}

uint64_t sub_22BFA2680(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = *(result + 32);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BFA26BC(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = *(result + 48);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BFA26F8(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = *(result + 64);
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BFA2734(uint64_t result)
{
  if (*(result + 88))
  {
    v1 = *(result + 80);
    return sub_22C270844();
  }

  return result;
}

uint64_t static ContextProtoQueryDecorationInput.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE46B5C();
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }

    sub_22BFB1A40();
    v11 = v6 && v9 == v10;
    if (!v11 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_22BE36248();
  if (!v6)
  {
    return 0;
  }

  sub_22BE292F4();
  if (v13)
  {
    if (!v12)
    {
      return 0;
    }

    sub_22BE2BBDC();
    v16 = v6 && v14 == v15;
    if (!v16 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  sub_22BE2BA8C();
  if (v18)
  {
    if (!v17)
    {
      return 0;
    }

    sub_22BFB1A60();
    v21 = v6 && v19 == v20;
    if (!v21 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (sub_22BEBFE50(v3[3], v2[3]))
  {
    v22 = v3[11];
    v23 = v2[11];
    if (v22)
    {
      if (!v23)
      {
        return 0;
      }

      v24 = v3[10] == v2[10] && v22 == v23;
      if (!v24 && (sub_22C274014() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v25 = *(type metadata accessor for ContextProtoQueryDecorationInput(0) + 44);
      sub_22C2704B4();
      sub_22BE18E14();
      sub_22BE2C940(v26, v27);
      return sub_22BE2B85C() & 1;
    }

    if (!v23)
    {
      goto LABEL_43;
    }
  }

  return 0;
}

uint64_t sub_22BFA296C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6A8, type metadata accessor for ContextProtoQueryDecorationInput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFA29EC(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C508, type metadata accessor for ContextProtoQueryDecorationInput);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFA2A5C()
{
  sub_22BE2C940(&qword_27D90C508, type metadata accessor for ContextProtoQueryDecorationInput);

  return sub_22C270774();
}

uint64_t sub_22BFA2AF4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BDD0);
  sub_22BE199F4(v0, qword_27D90BDD0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterTypeInstance";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "typedValue";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoDynamicEnumerationEntity.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22BE18E2C();
        sub_22BFA2E4C();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22BFA2D98();
        break;
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
    }
  }

  return result;
}

uint64_t sub_22BFA2D98()
{
  v0 = *(type metadata accessor for ContextProtoDynamicEnumerationEntity(0) + 20);
  sub_22C2725A4();
  sub_22BE2C940(&qword_27D90C7B0, MEMORY[0x277D72800]);
  return sub_22C2706F4();
}

uint64_t sub_22BFA2E4C()
{
  v0 = *(type metadata accessor for ContextProtoDynamicEnumerationEntity(0) + 24);
  sub_22C272594();
  sub_22BE2C940(&qword_28106DF50, MEMORY[0x277D727E0]);
  return sub_22C2706F4();
}

void sub_22BFA2F54()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_22BE1A730();
  if (!v7 || (sub_22BE25B10(), sub_22C270844(), !v0))
  {
    v8 = sub_22BE17D60();
    v6(v8);
    if (!v0)
    {
      v9 = sub_22BE17D60();
      v4(v9);
      v10 = *(v2(0) + 28);
      sub_22BE1AC30();
    }
  }

  sub_22BE18478();
}

uint64_t sub_22BFA2FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_22C2725A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for ContextProtoDynamicEnumerationEntity(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90C138, &qword_22C2CB830);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_22BE2C940(&qword_27D90C7B0, MEMORY[0x277D72800]);
  sub_22C270884();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22BFA31FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_22C272594();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for ContextProtoDynamicEnumerationEntity(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D909128, &qword_22C294AA0);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_22BE2C940(&qword_28106DF50, MEMORY[0x277D727E0]);
  sub_22C270884();
  return (*(v9 + 8))(v12, v8);
}

void static ContextProtoDynamicEnumerationEntity.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE23708();
  v4 = sub_22C272594();
  v5 = sub_22BE179D8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17A44();
  v63 = v10;
  v11 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v64 = v15;
  v65 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE18000(v65);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1A174();
  v66 = v19;
  sub_22BE183BC();
  v20 = sub_22C2725A4();
  v21 = sub_22BE179D8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE179EC();
  sub_22BE2BB64();
  v26 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE234F4();
  v30 = sub_22BE5CE4C(&qword_27D90C140, &qword_22C290E40);
  sub_22BE18000(v30);
  v32 = *(v31 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE25CD0();
  v34 = *v1 == *v0 && v1[1] == v0[1];
  if (!v34 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_26;
  }

  v62 = v4;
  v61 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v35 = v61[5];
  v36 = *(v30 + 48);
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE181B0(v2);
  if (v34)
  {
    sub_22BE181B0(v2 + v36);
    if (v34)
    {
      sub_22BE33928(v2, &qword_27D90C138, &qword_22C2CB830);
      goto LABEL_16;
    }

LABEL_14:
    v41 = &qword_27D90C140;
    v42 = &qword_22C290E40;
    v43 = v2;
LABEL_25:
    sub_22BE33928(v43, v41, v42);
    goto LABEL_26;
  }

  sub_22BE3AF28();
  sub_22BE22868();
  sub_22BE181B0(v2 + v36);
  if (v37)
  {
    v38 = *(v23 + 8);
    v39 = sub_22BE35838();
    v40(v39);
    goto LABEL_14;
  }

  (*(v23 + 32))(v3, v2 + v36, v20);
  sub_22BE2C940(&qword_27D90C148, MEMORY[0x277D72800]);
  v44 = sub_22C272FD4();
  v45 = *(v23 + 8);
  v45(v3, v20);
  v46 = sub_22BE35838();
  (v45)(v46);
  sub_22BE33928(v2, &qword_27D90C138, &qword_22C2CB830);
  if ((v44 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  v47 = v61[6];
  v48 = *(v65 + 48);
  sub_22BE3A518();
  sub_22BE3A518();
  v49 = sub_22BFB1A7C();
  sub_22BE1AB5C(v49, v50, v62);
  if (v34)
  {
    sub_22BE1AB5C(v66 + v48, 1, v62);
    if (v34)
    {
      sub_22BE33928(v66, &qword_27D909128, &qword_22C294AA0);
LABEL_29:
      v58 = v61[7];
      sub_22C2704B4();
      sub_22BE18E14();
      sub_22BE2C940(v59, v60);
      v52 = sub_22C272FD4();
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  sub_22BE22868();
  sub_22BE1AB5C(v66 + v48, 1, v62);
  if (v51)
  {
    (*(v7 + 8))(v64, v62);
LABEL_24:
    v41 = &qword_27D909130;
    v42 = &unk_22C27FD30;
    v43 = v66;
    goto LABEL_25;
  }

  (*(v7 + 32))(v63, v66 + v48, v62);
  sub_22BE231A8();
  sub_22BE2C940(v53, v54);
  v55 = sub_22C272FD4();
  v56 = *(v7 + 8);
  v57 = sub_22BE232C8();
  v56(v57);
  (v56)(v64, v62);
  sub_22BE33928(v66, &qword_27D909128, &qword_22C294AA0);
  if (v55)
  {
    goto LABEL_29;
  }

LABEL_26:
  v52 = 0;
LABEL_27:
  sub_22BE1C1DC(v52);
  sub_22BE1AABC();
}

uint64_t sub_22BFA3A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C940(&qword_27D90C6A0, type metadata accessor for ContextProtoDynamicEnumerationEntity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22BFA3AC4(uint64_t a1)
{
  v2 = sub_22BE2C940(&qword_27D90C0F0, type metadata accessor for ContextProtoDynamicEnumerationEntity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22BFA3B34()
{
  sub_22BE2C940(&qword_27D90C0F0, type metadata accessor for ContextProtoDynamicEnumerationEntity);

  return sub_22C270774();
}

uint64_t sub_22BFA3BCC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90BDE8);
  sub_22BE199F4(v0, qword_27D90BDE8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "definition";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "similarityScore";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sampleInvocations";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "stage";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "source";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t ContextProtoRetrievedTool.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    result = sub_22BE3A218();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE18E2C();
        sub_22BFA3F1C();
        break;
      case 2:
        sub_22BE239F4();
        sub_22C270614();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22BFA3FD0();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22BFA4070();
        break;
      case 5:
        sub_22BE18E2C();
        sub_22BFA40D8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22BFA3F1C()
{
  v0 = *(type metadata accessor for ContextProtoRetrievedTool(0) + 32);
  type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  sub_22BE2C940(&qword_27D90C560, type metadata accessor for ContextProtoRetrievedTool.Definition);
  return sub_22C2706F4();
}

uint64_t sub_22BFA3FD0()
{
  type metadata accessor for ContextProtoSampleInvocation(0);
  sub_22BE2C940(&qword_27D90C158, type metadata accessor for ContextProtoSampleInvocation);
  return sub_22C2706E4();
}

void ContextProtoRetrievedTool.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3B090();
  sub_22BE3C860();
  sub_22BFA4294(v2, v3, v4, v5);
  if (!v0)
  {
    if (*v1 != 0.0)
    {
      sub_22BE254E4();
      sub_22C2707F4();
    }

    if (*(*(v1 + 8) + 16))
    {
      type metadata accessor for ContextProtoSampleInvocation(0);
      sub_22BE2C940(&qword_27D90C158, type metadata accessor for ContextProtoSampleInvocation);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    if (*(v1 + 16))
    {
      v7 = *(v1 + 16);
      sub_22BFAE048();
      sub_22BE23CE4();
      sub_22C2707D4();
    }

    if (*(*(v1 + 24) + 16))
    {
      sub_22BFAE09C();
      sub_22BE23CE4();
      sub_22C2707B4();
    }

    v6 = *(type metadata accessor for ContextProtoRetrievedTool(0) + 36);
    sub_22BE1AC30();
  }

  sub_22BE25C6C();
}

uint64_t sub_22BFA4294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090D0, &unk_22C294B30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ContextProtoRetrievedTool(0) + 32);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9090D0, &unk_22C294B30);
  }

  sub_22BFB18A0();
  sub_22BE2C940(&qword_27D90C560, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_22C270884();
  return sub_22BFB18F4(v11, type metadata accessor for ContextProtoRetrievedTool.Definition);
}

void static ContextProtoRetrievedTool.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v7 = sub_22BE18000(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17CBC();
  v10 = sub_22BE289D8();
  v12 = sub_22BE5CE4C(v10, v11);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE234F4();
  v16 = (sub_22BE5CE4C(&qword_27D9090D8, &unk_22C27FCE0) - 8);
  v17 = *(*v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE25CD0();
  v36 = type metadata accessor for ContextProtoRetrievedTool(0);
  v19 = *(v36 + 32);
  v20 = v16[14];
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE19FE0(v0);
  if (v21)
  {
    sub_22BE19FE0(v0 + v20);
    if (v21)
    {
      sub_22BE33928(v0, &qword_27D9090D0, &unk_22C294B30);
      goto LABEL_11;
    }

LABEL_9:
    sub_22BE33928(v0, &qword_27D9090D8, &unk_22C27FCE0);
LABEL_16:
    v35 = 0;
    goto LABEL_17;
  }

  sub_22BE3AF28();
  sub_22BE22868();
  sub_22BE19FE0(v0 + v20);
  if (v21)
  {
    sub_22BE25F98();
    sub_22BFB18F4(v1, v22);
    goto LABEL_9;
  }

  sub_22BFB18A0();
  sub_22BE1B5E0();
  static ContextProtoRetrievedTool.Definition.== infix(_:_:)();
  v24 = v23;
  v25 = sub_22BE194F8();
  sub_22BFB18F4(v25, v26);
  v27 = sub_22BE18240();
  sub_22BFB18F4(v27, v28);
  sub_22BE33928(v0, &qword_27D9090D0, &unk_22C294B30);
  if ((v24 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (*v5 != *v3)
  {
    goto LABEL_16;
  }

  v29 = *(v5 + 8);
  v30 = *(v3 + 8);
  sub_22BE9F4F8();
  if ((v31 & 1) == 0 || *(v5 + 16) != *(v3 + 16) || (sub_22BE9F6A0(*(v5 + 24), *(v3 + 24)) & 1) == 0)
  {
    goto LABEL_16;
  }

  v32 = *(v36 + 36);
  sub_22C2704B4();
  sub_22BE18E14();
  sub_22BE2C940(v33, v34);
  v35 = sub_22C272FD4();
LABEL_17:
  sub_22BE1C1DC(v35);
  sub_22BE1AABC();
}