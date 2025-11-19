uint64_t sub_22C1A54E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(*(a4 + 8) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  sub_22C26E684();
  type metadata accessor for Session.Event(255);
  v5 = *(swift_getTupleTypeMetadata3() + 48);
  v6 = *(type metadata accessor for StatementResult(0) + 28);
  return _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1;
}

uint64_t sub_22C1A559C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(*(a4 + 8) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  sub_22C26E684();
  type metadata accessor for Session.Event(255);
  v5 = *(swift_getTupleTypeMetadata3() + 48);
  v6 = *(type metadata accessor for QueryStepResults(0) + 20);
  return _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0() & 1;
}

uint64_t sub_22C1A5658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[1] = a2;
  v29 = a1;
  v30 = type metadata accessor for Session.Event.Payload(0);
  v5 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(*(*(a4 + 8) + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_22C26E684();
  v11 = type metadata accessor for Session.Event(255);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v13 = *(TupleTypeMetadata3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata3);
  v16 = v28 - v15;
  v17 = type metadata accessor for TypeConversionRequest(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v29, TupleTypeMetadata3);
  v21 = *(TupleTypeMetadata3 + 48);
  v22 = &v16[*(TupleTypeMetadata3 + 64)];
  v23 = *(v11 + 28);
  sub_22BE1AA10();
  sub_22BE1AE00(v22, type metadata accessor for Session.Event);
  if (swift_getEnumCaseMultiPayload() == 28)
  {
    sub_22BE3F300();
    (*(*(v10 - 8) + 8))(&v16[v21], v10);
    (*(*(AssociatedTypeWitness - 8) + 8))(v16, AssociatedTypeWitness);
    v24 = *(v17 + 24);
    v25 = *(type metadata accessor for TypeConversionResult(0) + 24);
    v26 = _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
    sub_22BE1AE00(v20, type metadata accessor for TypeConversionRequest);
  }

  else
  {
    sub_22BE1AE00(v7, type metadata accessor for Session.Event.Payload);
    (*(*(v10 - 8) + 8))(&v16[v21], v10);
    (*(*(AssociatedTypeWitness - 8) + 8))(v16, AssociatedTypeWitness);
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t sub_22C1A59D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v27 = a3;
  v4 = *(*(*(*(a2 + 8) + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = sub_22C26E684();
  type metadata accessor for Session.Event(255);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v7 = *(TupleTypeMetadata3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - v12;
  v23[1] = *(swift_getTupleTypeMetadata2() + 48);
  v14 = *(v7 + 16);
  v14(v13, a1, TupleTypeMetadata3);
  v15 = *(TupleTypeMetadata3 + 48);
  v24 = *(TupleTypeMetadata3 + 64);
  v25 = v15;
  v16 = *(AssociatedTypeWitness - 8);
  (*(v16 + 32))(v27, v13, AssociatedTypeWitness);
  v14(v11, a1, TupleTypeMetadata3);
  v17 = *(TupleTypeMetadata3 + 48);
  v18 = &v11[*(TupleTypeMetadata3 + 64)];
  sub_22BE3F300();
  v19 = *(*(v26 - 8) + 8);
  v20 = &v11[v17];
  v21 = v26;
  v19(v20);
  (*(v16 + 8))(v11, AssociatedTypeWitness);
  sub_22BE1AE00(&v13[v24], type metadata accessor for Session.Event);
  return (v19)(&v13[v25], v21);
}

void FullTranscriptProtocol.eventsOriginatingFromLatestRequestPerUserTurn.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v23;
  a20 = v24;
  v147 = v20;
  v26 = v25;
  v28 = v27;
  v162 = sub_22C26E1D4();
  v29 = sub_22BE179D8(v162);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17B98();
  v153 = v34;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v35);
  sub_22BE19E94();
  v152 = v36;
  v37 = sub_22BE5CE4C(&qword_27D915380, &qword_22C2CB4E8);
  v38 = sub_22BE19448(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v41);
  sub_22BE19E94();
  v158 = v42;
  v43 = sub_22BE183BC();
  v164 = type metadata accessor for Session.Event.Payload(v43);
  v44 = sub_22BE18000(v164);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BE17B98();
  v163 = v47;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v48);
  v50 = &v140 - v49;
  v154 = type metadata accessor for Session.Event(0);
  v51 = sub_22BE18000(v154);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BE17A44();
  sub_22BE190A8(v54);
  v55 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v55);
  v57 = *(v56 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v58);
  sub_22BE1A174();
  v160 = v59;
  sub_22BE17C68();
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v65 = *(*(*(*(*(v26 + 8) + 8) + 8) + 8) + 8);
  sub_22C1AE268();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v142 = v67;
  v69 = *(v68 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v70);
  sub_22BE1B01C();
  v71 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v72 = sub_22BE19448(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22BE17B98();
  v157 = v75;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v76);
  v165 = MEMORY[0x277D84FA0];
  v159 = &v140 - v77;
  sub_22BE1A140();
  sub_22BE19DC4(v78, v79, v80, v162);
  v81 = *(v61 + 16);
  v143 = v61 + 16;
  v141 = v81;
  v81(v22, v147, v28);
  v161 = v21;
  v145 = v22;
  v82 = v140;
  sub_22C273304();
  v144 = v65;
  v146 = v28;
  v83 = v160;
  v84 = AssociatedTypeWitness;
  v85 = v154;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v149 = (v31 + 16);
  v150 = v31 + 32;
  v148 = v31 + 8;
  v151 = v50;
  v156 = AssociatedConformanceWitness;
  while (1)
  {
    v87 = v161;
    sub_22BE1B18C();
    sub_22C2738F4();
    sub_22BE1AB5C(v83, 1, v85);
    if (v88)
    {
      break;
    }

    sub_22BE18B40();
    sub_22BE191C0();
    sub_22BE3F300();
    v89 = *(v85 + 28);
    sub_22BE1C08C();
    sub_22BE1AA10();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_22BE17E60();
    sub_22BE1AE00(v50, v91);
    if (EnumCaseMultiPayload == 1)
    {
      v92 = v157;
      sub_22C1AE45C();
      sub_22BE2B9D0(v93, v94, v95, v96);
      v97 = sub_22BE391E8();
      v98 = v162;
      sub_22BE1AB5C(v97, v99, v162);
      if (v88)
      {
        sub_22BE37940();
        sub_22BE33928(v100, v101, v102);
        sub_22BE5CE4C(&qword_27D915388, &qword_22C2CB4F0);
        sub_22BE1A140();
      }

      else
      {
        sub_22BE3CBEC();
        v103(v152, v92, v98);
        v155 = sub_22BE5CE4C(&qword_27D915388, &qword_22C2CB4F0);
        v104 = *(v155 + 48);
        v105 = *v149;
        v106 = v158;
        v107 = v153;
        v108 = sub_22BE354DC();
        v109(v108);
        LOBYTE(v104) = sub_22C1A8914(&v106[v104], v107);
        v110 = sub_22C1AE370();
        v50 = v151;
        v111(v110, v162);
        sub_22BE37940();
        sub_22BE33928(v112, v113, v114);
        v115 = v104 & 1;
        v98 = v162;
        *v106 = v115;
        sub_22BE187DC();
        v85 = v154;
        v119 = v155;
      }

      sub_22BE19DC4(v116, v117, v118, v119);
      sub_22BE33928(v158, &qword_27D915380, &qword_22C2CB4E8);
      sub_22BE1A140();
      sub_22BE19DC4(v120, v121, v122, v98);
    }

    sub_22BE1C08C();
    sub_22BE1AA10();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE37940();
      sub_22BE33928(v123, v124, v125);
      sub_22BE17E60();
      sub_22BE1AE00(v163, v126);
      v127 = *(v85 + 24);
      sub_22C1AE45C();
      sub_22BE2B9D0(v128, v129, v130, v131);
      sub_22BE18F8C();
      v133 = v82;
    }

    else
    {
      sub_22BE18F8C();
      sub_22BE1AE00(v82, v134);
      sub_22BE17E60();
      v133 = v163;
    }

    sub_22BE1AE00(v133, v132);
    v83 = v160;
  }

  sub_22BE1B5D4(&a13);
  v135(v161, v84);
  sub_22BE2BD40(&a17);
  v136 = v159;
  sub_22C194FF4(v159, v137, v138);
  sub_22BE33928(v87, &qword_27D915380, &qword_22C2CB4E8);
  v139 = v141(v145, v147, v146);
  MEMORY[0x28223BE20](v139);
  *(&v140 - 2) = &v165;
  sub_22C273354();
  sub_22BE33928(v136, &qword_27D9082F0, &qword_22C27AB00);

  sub_22BE1AABC();
}

uint64_t sub_22C1A63E0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v17 - v6;
  v8 = sub_22C26E1D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Session.Event(0);
  sub_22BE2B9D0(a1 + *(v13 + 24), v7, &qword_27D9082F0, &qword_22C27AB00);
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    sub_22BE33928(v7, &qword_27D9082F0, &qword_22C27AB00);
    v14 = 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = *a2;

    v14 = sub_22C26A1B4(v12, v15);

    (*(v9 + 8))(v12, v8);
  }

  return v14 & 1;
}

uint64_t sub_22C1A65B4(uint64_t a1, uint64_t a2)
{
  sub_22BE29420(a1, a2);
  v3 = *(*(v2 + 8) + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Session.Event(255);
  sub_22BE1B68C();
  swift_getTupleTypeMetadata2();
  sub_22BE3935C();

  return sub_22C273524();
}

uint64_t sub_22C1A662C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(*(a4 + 8) + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_22C272FC4() & 1;
}

void FullTranscriptProtocol.latestLocaleSettings()()
{
  sub_22BE19460();
  v25 = v0;
  sub_22BE29420(v0, v1);
  v3 = *(*(*(v2 + 8) + 8) + 8);
  v4 = sub_22C273AC4();
  sub_22BE18000(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1B72C();
  sub_22BE1AD04();
  WitnessTable = swift_getWitnessTable();
  sub_22BE46BB4();
  v8 = sub_22C273CD4();
  v9 = sub_22BE179D8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v14);
  sub_22BE181E4();
  sub_22BE7431C(&qword_27D912DF0, &qword_22C2B7ED0);
  sub_22BE19398();
  swift_getWitnessTable();
  sub_22C273BF4();
  sub_22BE3E6D4();
  swift_getWitnessTable();
  sub_22C1AE274();
  sub_22C273CB4();
  sub_22C26ECA4();
  sub_22BE3B150();
  swift_getWitnessTable();
  sub_22BE37660();
  v15 = sub_22C273BF4();
  sub_22BE179D8(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE234F4();
  MEMORY[0x2318ABA30](v25, v3);
  MEMORY[0x2318AB6A0](v4, WitnessTable);
  sub_22BE1B514();
  swift_getWitnessTable();
  sub_22BE25BA0();
  swift_getWitnessTable();
  sub_22BE1B5EC();
  sub_22C273DA4();
  v19 = *(v11 + 8);
  v20 = sub_22BE232C8();
  v19(v20);
  sub_22BE272E4();
  sub_22C273D64();
  v21 = sub_22BE38970();
  v19(v21);
  sub_22BE1BB98();
  swift_getWitnessTable();
  sub_22BE367D4();
  swift_getWitnessTable();
  sub_22C1AE1F8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_22C273734();
  v22 = sub_22C1AE34C();
  v23(v22, v15);
  sub_22BE1AABC();
}

uint64_t sub_22C1A69F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SessionStart(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Session.Event.Payload(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for Session.Event(0) + 28);
  sub_22BE1AA10();
  if (swift_getEnumCaseMultiPayload())
  {
    v11 = sub_22C26ECA4();
    sub_22BE19DC4(a1, 1, 1, v11);
    return sub_22BE1AE00(v9, type metadata accessor for Session.Event.Payload);
  }

  else
  {
    sub_22BE3F300();
    v13 = sub_22C26ECA4();
    (*(*(v13 - 8) + 16))(a1, v5, v13);
    sub_22BE1AE00(v5, type metadata accessor for SessionStart);
    return sub_22BE19DC4(a1, 0, 1, v13);
  }
}

uint64_t sub_22C1A6BC0@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for SessionStart(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Session.Event.Payload(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for Session.Event(0) + 28);
  sub_22BE1AA10();
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_22BE1AE00(v9, type metadata accessor for Session.Event.Payload);
    v12 = 2;
  }

  else
  {
    sub_22BE3F300();
    v12 = v5[*(v2 + 28)];
    result = sub_22BE1AE00(v5, type metadata accessor for SessionStart);
  }

  *a1 = v12;
  return result;
}

void FullTranscriptProtocol.lastMap<A>(_:)()
{
  sub_22BE19130();
  v77 = v1;
  v73 = v0;
  v3 = v2;
  v5 = v4;
  v75 = v6;
  v65 = v7;
  v71 = v8;
  v9 = sub_22C273844();
  v10 = sub_22BE179D8(v9);
  v68 = v11;
  v70 = v10;
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v74 = v15;
  v16 = *(*(*(v3 + 8) + 8) + 8);
  v66 = *(v16 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v67 = v18;
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1A174();
  v76 = v22;
  v23 = sub_22BE183BC();
  v24 = type metadata accessor for Session.Event(v23);
  v25 = sub_22BE19448(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  sub_22BE4152C(v28);
  sub_22BE17C68();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE2379C();
  sub_22BE1C0A4();
  v34 = sub_22C273CD4();
  sub_22BE19448(v34);
  v36 = *(v35 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE19E64();
  sub_22BE1C0A4();
  v38 = sub_22C273CC4();
  sub_22BE179D8(v38);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE25CD0();
  v42 = *(v30 + 16);
  v42(v3, v73, v5);
  MEMORY[0x2318AB6A0](v5, v16);
  v43 = sub_22BE1B328();
  (v42)(v43);
  v44 = *(v38 + 36);
  sub_22BE23108();
  sub_22C2736F4();
  v45 = sub_22BE2399C();
  v46(v45, v5);
  for (i = (v68 + 8); ; (*i)(v74, v70))
  {
    sub_22BE23108();
    sub_22C2736B4();
    v47 = *(swift_getAssociatedConformanceWitness() + 8);
    v48 = sub_22C272FD4();
    (*(v67 + 8))(v76, AssociatedTypeWitness);
    if (v48)
    {
      break;
    }

    sub_22C272F84();
    v49 = sub_22C273764();
    sub_22BE1A7F8();
    sub_22BE1AA10();
    v50 = sub_22BE1812C();
    v49(v50);
    v75();
    if (v77)
    {
      sub_22BE18F8C();
      sub_22BE1AE00(v72, v55);
      v56 = sub_22BE1B5F8();
      v57(v56);
      goto LABEL_9;
    }

    v77 = 0;
    sub_22BE18F8C();
    sub_22BE1AE00(v72, v51);
    v52 = sub_22BE3C598();
    v53 = v71;
    if (sub_22BE1AEA8(v52, v54, v71) != 1)
    {
      v58 = sub_22BE1B5F8();
      v59(v58);
      sub_22BE1BC24(v71);
      v61 = v65;
      (*(v60 + 32))(v65, v74, v71);
      v62 = 0;
      goto LABEL_8;
    }
  }

  v63 = sub_22BE1B5F8();
  v64(v63);
  v62 = 1;
  v53 = v71;
  v61 = v65;
LABEL_8:
  sub_22BE19DC4(v61, v62, 1, v53);
LABEL_9:
  sub_22BE18478();
}

void QueryDecorationResult.currentLocation.getter()
{
  sub_22BE19460();
  v4 = sub_22C2727E4();
  v5 = sub_22BE179D8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  sub_22BE1AB80();
  v10 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE234F4();
  v87 = sub_22C272804();
  v14 = sub_22BE179D8(v87);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  v86 = v19;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v20);
  sub_22BE19E94();
  v89 = v21;
  sub_22BE183BC();
  v22 = sub_22C270A04();
  v23 = sub_22BE179D8(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  sub_22BE2BB64();
  v93 = type metadata accessor for RetrievedContextStatement(0);
  v26 = sub_22BE179D8(v93);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE179EC();
  sub_22BE1B1C4();
  v92 = *(*(v0 + *(type metadata accessor for QueryDecorationResult(0) + 28)) + 16);
  if (v92)
  {
    v81 = v1;
    v82 = v7;
    v31 = 0;
    v32 = *(v28 + 80);
    sub_22BE19E14();
    v91 = *MEMORY[0x277D1EA90];
    v88 = *MEMORY[0x277D72A58];
    v84 = (v16 + 16);
    v83 = *MEMORY[0x277D729D0];
    v85 = (v16 + 8);
    v34 = v28;
    v90 = v33;
    while (v31 < *(v33 + 16))
    {
      v35 = v2;
      v36 = v34;
      v37 = *(v34 + 72);
      sub_22BE48774();
      sub_22BE1AA10();
      v38 = v3 + *(v93 + 20);
      sub_22C270EF4();
      v39 = sub_22BE36278();
      if (v40(v39) == v91)
      {
        v41 = sub_22BE36278();
        v42(v41);
        sub_22C270EE4();
        v43 = sub_22C272874();
        sub_22BE1AB5C(v2, 1, v43);
        if (v44)
        {
          sub_22BE18738();
          sub_22BE1AE00(v3, v45);
          v46 = sub_22BE39EAC();
          sub_22BE33928(v46, v47, &unk_22C274F90);
        }

        else
        {
          sub_22BE17C68();
          v52 = v51;
          v54 = *(v53 + 88);
          v55 = sub_22BE431C0();
          if (v56(v55) == v88)
          {
            v57 = *(v52 + 96);
            v58 = sub_22BE431C0();
            v59(v58);
            v60 = *v35;
            v61 = swift_projectBox();
            v62 = *v84;
            (*v84)(v89, v61, v87);

            v63 = sub_22BE36658();
            v62(v63);
            v64 = *(v16 + 88);
            v65 = sub_22BE431C0();
            if (v66(v65) == v83)
            {
              v74 = *(v16 + 96);
              v75 = sub_22BE35838();
              v76(v75);
              (*(v82 + 32))(v81, v86, v4);
              sub_22C2727D4();
              v77 = *(v82 + 8);
              v78 = sub_22BE18040();
              v79(v78);
              (*(v16 + 8))(v89, v87);
              sub_22BE18738();
              sub_22BE1AE00(v3, v80);
              goto LABEL_15;
            }

            v67 = *v85;
            (*v85)(v89, v87);
            sub_22BE18738();
            sub_22BE1AE00(v3, v68);
            v69 = sub_22BE33560();
            v67(v69);
            v2 = v35;
          }

          else
          {
            sub_22BE18738();
            sub_22BE1AE00(v3, v70);
            v71 = *(v52 + 8);
            v72 = sub_22BE431C0();
            v73(v72);
            v2 = v35;
          }
        }
      }

      else
      {
        sub_22BE18738();
        sub_22BE1AE00(v3, v48);
        v49 = sub_22BE36278();
        v50(v49);
      }

      ++v31;
      v34 = v36;
      v33 = v90;
      if (v92 == v31)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_22BE1AABC();
  }
}

void Session.SessionState.retrieveSessionStart()()
{
  sub_22BE19130();
  v35 = sub_22C2720A4();
  v4 = sub_22BE179D8(v35);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v11 = v10 - v9;
  v12 = type metadata accessor for Session.Event.Payload(0);
  v13 = sub_22BE18000(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  sub_22BE35AE8();
  v16 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE23E58();
  v20 = type metadata accessor for Session.Event(0);
  v21 = sub_22BE18000(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE179EC();
  sub_22BE2BB64();
  v24 = type metadata accessor for Session.Transcript(0);
  sub_22BE26400(*(v0 + *(v24 + 32)), v2);
  v25 = sub_22BE3C598();
  if (sub_22BE1AEA8(v25, v26, v20) == 1)
  {
    sub_22BE33928(v2, &qword_27D908310, &qword_22C27A410);
  }

  else
  {
    sub_22BE18B40();
    sub_22BE3F300();
    v27 = *(v20 + 28);
    sub_22BE1C08C();
    sub_22BE1AA10();
    sub_22BE18F8C();
    sub_22BE1AE00(v3, v28);
    sub_22BE1B18C();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C1AE2BC();
      sub_22BE3F300();
      goto LABEL_8;
    }

    sub_22BE17E60();
    sub_22BE1AE00(v1, v29);
  }

  sub_22C271B24();
  v30 = sub_22C272084();
  v31 = sub_22C2737A4();
  v32 = sub_22BE46168();
  if (os_log_type_enabled(v32, v33))
  {
    sub_22BE36138();
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_22BE15000, v30, v31, "Error! setup(sessionState:) called on non-SessionStart event", v34, 2u);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  (*(v6 + 8))(v11, v35);
  sub_22C1ADEB0();
  swift_allocError();
  swift_willThrow();
LABEL_8:
  sub_22BE18478();
}

uint64_t Session.SessionState.SessionStateError.hashValue.getter()
{
  sub_22C274154();
  MEMORY[0x2318AC860](0);
  return sub_22C2741A4();
}

uint64_t sub_22C1A7AFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_22C28E660;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_22C1A7B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE323B4();
  sub_22BE35EB4();
  sub_22BE37940();
  sub_22C272F44();
  sub_22C2741A4();
  v16 = *(v15 + 32);
  sub_22BE26164();
  while (1)
  {
    sub_22C1AE3A4(v17);
    if (v19)
    {
      break;
    }

    sub_22BE3C184();
    v19 = *v18 == v13 && v18[1] == v11;
    if (v19 || (sub_22C1AE45C(), (sub_22C274014() & 1) != 0))
    {

      sub_22BE3C184();
      v21 = v20[1];
      *v10 = *v20;
      v10[1] = v21;

      goto LABEL_11;
    }

    v17 = v14 + 1;
  }

  v22 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22C1AE3E0();
  v24 = sub_22BE232C8();
  sub_22C1AA528(v24, v25, v14, isUniquelyReferenced_nonNull_native);
  *v12 = a10;
  *v10 = v13;
  v10[1] = v11;
LABEL_11:
  sub_22C1AE388();
}

void sub_22C1A7C40()
{
  sub_22BE19460();
  v3 = v2;
  v35 = v4;
  v5 = sub_22C272CA4();
  v6 = sub_22BE179D8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  sub_22BE35AE8();
  v34 = v0;
  v11 = *v0;
  v12 = *(*v0 + 40);
  sub_22BE3F4C8();
  sub_22C1AE190(v13, v14);
  sub_22C272ED4();
  v36 = v11;
  v37 = v11 + 56;
  v15 = *(v11 + 32);
  sub_22BE26164();
  v18 = ~v17;
  while (1)
  {
    v19 = v16 & v18;
    if (((1 << (v16 & v18)) & *(v37 + (((v16 & v18) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v26 = *v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v8[2];
      sub_22BE35F50();
      v29();
      v38 = *v34;
      v30 = sub_22BE1B18C();
      sub_22C1AA690(v30, v31, isUniquelyReferenced_nonNull_native);
      *v34 = v38;
      v32 = v8[4];
      sub_22BE35F50();
      v33();
      goto LABEL_7;
    }

    v20 = v8[9] * v19;
    v21 = v8[2];
    v21(v1, *(v36 + 48) + v20, v5);
    sub_22BE3F4C8();
    sub_22C1AE190(&qword_28106DED8, v22);
    v23 = sub_22C272FD4();
    v24 = v8[1];
    v25 = sub_22BE38970();
    v24(v25);
    if (v23)
    {
      break;
    }

    v16 = v19 + 1;
  }

  (v24)(v3, v5);
  v21(v35, *(v36 + 48) + v20, v5);
LABEL_7:
  sub_22BE1AABC();
}

uint64_t sub_22C1A7EAC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_22C274154();
  sub_22C272F44();
  sub_22C272F44();
  sub_22C2741A4();
  v12 = v10 + 56;
  v13 = *(v10 + 32);
  sub_22BE26164();
  v16 = v15 & ~v14;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v14;
    v31 = v10;
    v18 = *(v10 + 48);
    while (1)
    {
      v19 = (v18 + 32 * v16);
      v20 = v19[2];
      v21 = v19[3];
      v22 = *v19 == a2 && v19[1] == a3;
      if (v22 || (sub_22C274014() & 1) != 0)
      {
        if (v20 == a4 && v21 == a5)
        {
          break;
        }

        sub_22BE3E8FC();
        if (sub_22C274014())
        {
          break;
        }
      }

      v16 = (v16 + 1) & v17;
      if (((*(v12 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v27 = (*(v31 + 48) + 32 * v16);
    v28 = v27[1];
    v29 = v27[2];
    v30 = v27[3];
    *a1 = *v27;
    a1[1] = v28;
    a1[2] = v29;
    a1[3] = v30;

    return 0;
  }

  else
  {
LABEL_14:
    v24 = *v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v32;

    sub_22C1AA940(a2, a3, a4, a5, v16, isUniquelyReferenced_nonNull_native);
    *v32 = v34;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

void sub_22C1A8078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19460();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v93 = v26;
  v104 = sub_22C272CA4();
  v27 = sub_22BE179D8(v104);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17A44();
  sub_22BE18950(v32);
  v103 = sub_22C272224();
  v33 = sub_22BE179D8(v103);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE17A44();
  sub_22BE190A8(v38);
  v109 = sub_22BE5CE4C(&qword_27D90B4D0, &qword_22C2CB6C0);
  sub_22BE18000(v109);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE2C64C();
  v111 = type metadata accessor for ToolboxCustomKeyResult(0);
  v42 = sub_22BE179D8(v111);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BE183AC();
  v49 = v47 - v48;
  MEMORY[0x28223BE20](v50);
  sub_22BE19490();
  v102 = v51;
  sub_22BE1B99C();
  v53 = MEMORY[0x28223BE20](v52);
  v55 = &v91 - v54;
  MEMORY[0x28223BE20](v53);
  sub_22BE19E94();
  sub_22BE190A8(v56);
  v92 = v20;
  v57 = *v20;
  v58 = *(*v20 + 40);
  sub_22C274154();
  v110 = v25;
  ToolboxCustomKeyResult.hash(into:)();
  sub_22C2741A4();
  v59 = v57 + 56;
  v60 = *(v57 + 32);
  sub_22BE26164();
  v63 = v62 & ~v61;
  if ((*(v57 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63))
  {
    v107 = ~v61;
    v108 = *(v44 + 72);
    v95 = v35 + 32;
    v100 = (v35 + 8);
    v64 = (v29 + 8);
    v94 = v29 + 32;
    v105 = v49;
    v101 = v57;
    v99 = v57 + 56;
    do
    {
      v65 = *(v57 + 48);
      v106 = v108 * v63;
      sub_22BE1AA10();
      v66 = *(v109 + 48);
      sub_22BE2BA80();
      sub_22BE1AA10();
      sub_22BE1AA10();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22BE22D64();
        sub_22BE1AA10();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_22BE33554(&a13);
          v67 = v97;
          v68 = v104;
          v69(v97, v21 + v66, v104);
          v70 = sub_22C272C44();
          v71 = *v64;
          v49 = v105;
          (*v64)(v67, v68);
          sub_22BE257FC();
          sub_22BE1AE00(v55, v72);
          v73 = sub_22BE18240();
          v71(v73);
          if (v70)
          {
            goto LABEL_15;
          }

LABEL_12:
          sub_22BE257FC();
          sub_22BE1AE00(v21, v84);
          v57 = v101;
          v59 = v99;
          goto LABEL_13;
        }

        sub_22BE257FC();
        sub_22BE1AE00(v55, v76);
        (*v64)(v49, v104);
      }

      else
      {
        sub_22BE22D64();
        v74 = v102;
        sub_22BE1AA10();
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_22BE33554(&a14);
          v77 = v96;
          v78 = v103;
          v79(v96, v21 + v66, v103);
          v98 = sub_22C2721B4();
          v80 = *v100;
          v81 = v77;
          v49 = v105;
          (*v100)(v81, v78);
          sub_22BE257FC();
          sub_22BE1AE00(v55, v82);
          v83 = sub_22BE3E8FC();
          v80(v83);
          if (v98)
          {
LABEL_15:
            sub_22BE1AE00(v21, type metadata accessor for ToolboxCustomKeyResult);
            sub_22BE1AE00(v110, type metadata accessor for ToolboxCustomKeyResult);
            v90 = *(v101 + 48);
            sub_22BE22D64();
            sub_22BE1AA10();
            goto LABEL_16;
          }

          goto LABEL_12;
        }

        sub_22BE257FC();
        sub_22BE1AE00(v55, v75);
        (*v100)(v74, v103);
      }

      sub_22BE33928(v21, &qword_27D90B4D0, &qword_22C2CB6C0);
LABEL_13:
      v63 = (v63 + 1) & v107;
    }

    while (((*(v59 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) != 0);
  }

  v85 = v92;
  v86 = *v92;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22BE22D64();
  sub_22BE1AA10();
  v112 = *v85;
  v88 = sub_22BE38970();
  sub_22C1AAB14(v88, v89, isUniquelyReferenced_nonNull_native);
  *v85 = v112;
  sub_22BE3F300();
LABEL_16:
  sub_22BE1AABC();
}

void sub_22C1A8654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE323B4();
  sub_22BE35EB4();
  sub_22BE37940();
  sub_22C272F44();
  sub_22C2741A4();
  v16 = *(v15 + 32);
  sub_22BE26164();
  while (1)
  {
    sub_22C1AE3A4(v17);
    if (v19)
    {
      break;
    }

    sub_22BE3C184();
    v19 = *v18 == v13 && v18[1] == v11;
    if (v19 || (sub_22C1AE45C(), (sub_22C274014() & 1) != 0))
    {

      sub_22BE3C184();
      v21 = v20[1];
      *v10 = *v20;
      v10[1] = v21;

      goto LABEL_11;
    }

    v17 = v14 + 1;
  }

  v22 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22C1AE3E0();
  v24 = sub_22BE232C8();
  sub_22C1AB1A8(v24, v25, v14, isUniquelyReferenced_nonNull_native);
  *v12 = a10;
  *v10 = v13;
  v10[1] = v11;
LABEL_11:
  sub_22C1AE388();
}

BOOL sub_22C1A8734(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 40);
  v8 = sub_22C274144();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v10) == a2)
    {
      goto LABEL_6;
    }

    v8 = v10 + 1;
  }

  v12 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  sub_22C1AB310(a2, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v15;
LABEL_6:
  result = v11 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_22C1A8914(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_22C26E1D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_22C1AE190(&qword_27D9071C0, MEMORY[0x277CC95F0]);
  v30 = a2;
  v11 = sub_22C272ED4();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_22C1AB58C(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_22C1AE190(&qword_27D9071C8, MEMORY[0x277CC95F0]);
    v17 = sub_22C272FD4();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t sub_22C1A8BDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22BE5CE4C(&qword_27D907898, &qword_22C275B88);
  result = sub_22C273A34();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_22C1A7AFC(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_22C274154();
    sub_22C272F44();
    result = sub_22C2741A4();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22C1A8E38(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22C272CA4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_22BE5CE4C(&qword_27D9153D0, &unk_22C2CB6A8);
  result = sub_22C273A34();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_22C1A7AFC(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_22C1AE190(&qword_28106DEE0, MEMORY[0x277D73358]);
    result = sub_22C272ED4();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22C1A9190(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22BE5CE4C(&qword_27D9153D8, &qword_22C2CB6B8);
  result = sub_22C273A34();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v33 = v2;
  v34 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      sub_22C1A7AFC(0, (v32 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = *(v6 + 40);
    sub_22C274154();
    v35 = v18;
    sub_22C272F44();
    sub_22C272F44();
    result = sub_22C2741A4();
    v23 = -1 << *(v6 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v6 + 48) + 32 * v26);
    v3 = v34;
    *v31 = v35;
    v31[1] = v19;
    v31[2] = v20;
    v31[3] = v21;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v13 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22C1A9414(uint64_t a1)
{
  v2 = v1;
  v56 = sub_22C272CA4();
  v4 = *(v56 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22C272224();
  v7 = *(v54 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolboxCustomKeyResult(0);
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v58 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v17 = *(*v2 + 24);
  }

  sub_22BE5CE4C(&qword_27D9153E0, &qword_22C2CB6C8);
  result = sub_22C273A34();
  v19 = result;
  if (!*(v16 + 16))
  {
LABEL_32:

    *v2 = v19;
    return result;
  }

  v48 = v2;
  v20 = 0;
  v21 = (v16 + 56);
  v22 = 1 << *(v16 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v16 + 56);
  v25 = (v22 + 63) >> 6;
  v51 = (v7 + 8);
  v52 = (v7 + 32);
  v50 = (v4 + 32);
  v49 = (v4 + 8);
  v26 = result + 56;
  v57 = v16;
  if (!v24)
  {
LABEL_9:
    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v20 >= v25)
      {
        break;
      }

      v28 = v21[v20];
      ++v27;
      if (v28)
      {
        v24 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    v47 = 1 << *(v16 + 32);
    if (v47 >= 64)
    {
      sub_22C1A7AFC(0, (v47 + 63) >> 6, v21);
    }

    else
    {
      *v21 = -1 << v47;
    }

    v2 = v48;
    *(v16 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v24 &= v24 - 1;
LABEL_14:
    v29 = *(v16 + 48);
    v61 = *(v59 + 72);
    sub_22BE3F300();
    v30 = *(v19 + 40);
    sub_22C274154();
    v31 = v15;
    v32 = v58;
    sub_22BE1AA10();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v55;
      v34 = v32;
      v35 = v56;
      (*v50)(v55, v34, v56);
      MEMORY[0x2318AC860](1);
      sub_22C1AE190(&qword_28106DEE0, MEMORY[0x277D73358]);
      sub_22C272EE4();
      v36 = v49;
    }

    else
    {
      v33 = v53;
      v37 = v32;
      v35 = v54;
      (*v52)(v53, v37, v54);
      MEMORY[0x2318AC860](0);
      sub_22C1AE190(&qword_27D90B508, MEMORY[0x277D72238]);
      sub_22C272EE4();
      v36 = v51;
    }

    (*v36)(v33, v35);
    result = sub_22C2741A4();
    v38 = -1 << *(v19 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    v15 = v31;
    if (((-1 << v39) & ~*(v26 + 8 * (v39 >> 6))) == 0)
    {
      break;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v26 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v26 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v46 = *(v19 + 48) + v41 * v61;
    result = sub_22BE3F300();
    ++*(v19 + 16);
    v16 = v57;
    if (!v24)
    {
      goto LABEL_9;
    }
  }

  v42 = 0;
  v43 = (63 - v38) >> 6;
  while (++v40 != v43 || (v42 & 1) == 0)
  {
    v44 = v40 == v43;
    if (v40 == v43)
    {
      v40 = 0;
    }

    v42 |= v44;
    v45 = *(v26 + 8 * v40);
    if (v45 != -1)
    {
      v41 = __clz(__rbit64(~v45)) + (v40 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_22C1A99C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22BE5CE4C(&qword_27D9153B8, &unk_22C2CB688);
  result = sub_22C273A34();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_22C1A7AFC(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_22C274154();
    sub_22C272F44();
    result = sub_22C2741A4();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22C1A9C1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22BE5CE4C(&qword_27D90B738, &qword_22C28ED10);
  result = sub_22C273A34();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_22C1A7AFC(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_22C274144();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_22C1A9E40()
{
  sub_22BE323B4();
  sub_22BE22B58(v4);
  sub_22BE5CE4C(&qword_27D9153E8, &unk_22C2CB6D0);
  sub_22BE1804C();
  v5 = sub_22C273A34();
  if (!*(v1 + 16))
  {
LABEL_26:

    *v0 = v5;
    sub_22C1AE388();
    return;
  }

  v6 = 0;
  v8 = (v1 + 56);
  v7 = *(v1 + 56);
  v9 = *(v1 + 32);
  sub_22C1AE2D4();
  if (!v3)
  {
LABEL_4:
    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v6 >= v2)
      {
        break;
      }

      ++v11;
      if (v8[v6])
      {
        sub_22BE29270();
        v3 = v13 & v12;
        goto LABEL_9;
      }
    }

    v26 = 1 << *(v1 + 32);
    if (v26 >= 64)
    {
      sub_22C1A7AFC(0, (v26 + 63) >> 6, v1 + 56);
    }

    else
    {
      sub_22BE26164();
      *v8 = v27;
    }

    *(v1 + 16) = 0;
    goto LABEL_26;
  }

  while (1)
  {
    sub_22BE37764();
LABEL_9:
    v14 = (*(v1 + 48) + 16 * (v10 | (v6 << 6)));
    v16 = *v14;
    v15 = v14[1];
    v17 = *(v5 + 40);
    sub_22C274154();
    sub_22C274174();
    if (v15)
    {
      sub_22C272F44();
    }

    v18 = sub_22C2741A4();
    sub_22BE3C0C4(v18);
    if (v19)
    {
      break;
    }

    sub_22C1AE448();
LABEL_20:
    sub_22BE2BAD8(v20);
    *v25 = v16;
    v25[1] = v15;
    ++*(v5 + 16);
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_22C1AE434();
  while (++v21 != v23 || (v22 & 1) == 0)
  {
    v24 = v21 == v23;
    if (v21 == v23)
    {
      v21 = 0;
    }

    v22 |= v24;
    if (v0[v21] != -1)
    {
      sub_22C1AE420();
      goto LABEL_20;
    }
  }

LABEL_28:
  __break(1u);
}

unint64_t sub_22C1A9FF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22BE5CE4C(&qword_27D9153C0, &qword_22C2CB698);
  result = sub_22C273A34();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    for (i = result + 56; v11; ++*(v6 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_22C274154();
      sub_22BEB8E5C(v28, v17, v19, v20, v21, v22, v23, v24, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10]);
      sub_22C2741A4();
      v25 = -1 << *(v6 + 32);
      result = sub_22C2739F4();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v6 + 48) + 8 * result) = v17;
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_22C1A7AFC(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22C1AA1D0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22C26E1D4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_22BE5CE4C(&qword_27D9153C8, &qword_22C2CB6A0);
  result = sub_22C273A34();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_22C1A7AFC(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_22C1AE190(&qword_27D9071C0, MEMORY[0x277CC95F0]);
    result = sub_22C272ED4();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22C1AA528(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_22C1A8BDC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_22C1AC3D0(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_22C274154();
      sub_22C272F44();
      result = sub_22C2741A4();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_22C274014() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_22C1AB83C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_22C2740A4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_22C1AA690(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_22C272CA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C1A8E38(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_22C1AC604(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_22C1AE190(&qword_28106DEE0, MEMORY[0x277D73358]);
      v15 = sub_22C272ED4();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_22C1AE190(&qword_28106DED8, MEMORY[0x277D73358]);
        v17 = sub_22C272FD4();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_22C1AC1F4();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_22C2740A4();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_22C1AA940(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a6)
  {
    sub_22C1A9190(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_22C1AB994();
      goto LABEL_21;
    }

    sub_22C1AC91C(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_22C274154();
  sub_22C272F44();
  sub_22C272F44();
  result = sub_22C2741A4();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_22C274014(), (result & 1) != 0))
      {
        if (v21 == a3 && v22 == a4)
        {
          goto LABEL_24;
        }

        result = sub_22C274014();
        if (result)
        {
          goto LABEL_24;
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_21:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_24:
  sub_22BE5CE4C(&qword_27D907728, &unk_22C2757A0);
  result = sub_22C2740A4();
  __break(1u);
  return result;
}

uint64_t sub_22C1AAB14(uint64_t a1, unint64_t a2, char a3)
{
  v68 = a1;
  v61 = sub_22C272CA4();
  v6 = *(v61 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v61);
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22C272224();
  v9 = *(v60 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v60);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22BE5CE4C(&qword_27D90B4D0, &qword_22C2CB6C0);
  v12 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v14 = &v52 - v13;
  v69 = type metadata accessor for ToolboxCustomKeyResult(0);
  v15 = *(v69 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v69);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v62 = &v52 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - v22;
  v24 = *(*v3 + 16);
  v25 = *(*v3 + 24);
  v53 = v3;
  v52 = v15;
  if (v25 <= v24 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C1A9414(v24 + 1);
    }

    else
    {
      if (v25 > v24)
      {
        sub_22C1ABAFC();
        goto LABEL_21;
      }

      sub_22C1ACB7C(v24 + 1);
    }

    v26 = *v3;
    v27 = *(*v3 + 40);
    sub_22C274154();
    ToolboxCustomKeyResult.hash(into:)();
    v28 = sub_22C2741A4();
    v65 = v26 + 56;
    v66 = v26;
    v29 = -1 << *(v26 + 32);
    a2 = v28 & ~v29;
    v30 = *(v26 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2;
    v31 = v62;
    if (v30)
    {
      v64 = ~v29;
      v63 = *(v15 + 72);
      v55 = (v9 + 32);
      v58 = (v6 + 8);
      v59 = (v9 + 8);
      v54 = (v6 + 32);
      do
      {
        v32 = *(v66 + 48);
        sub_22BE1AA10();
        v33 = *(v67 + 48);
        sub_22BE1AA10();
        sub_22BE1AA10();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_22BE1AA10();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v34 = v57;
            v35 = v61;
            (*v54)(v57, &v14[v33], v61);
            v36 = sub_22C272C44();
            v37 = *v58;
            v38 = v34;
            v39 = v62;
            (*v58)(v38, v35);
            sub_22BE1AE00(v23, type metadata accessor for ToolboxCustomKeyResult);
            v37(v19, v35);
            if (v36)
            {
              goto LABEL_24;
            }

            v31 = v39;
LABEL_19:
            sub_22BE1AE00(v14, type metadata accessor for ToolboxCustomKeyResult);
            goto LABEL_20;
          }

          sub_22BE1AE00(v23, type metadata accessor for ToolboxCustomKeyResult);
          (*v58)(v19, v61);
        }

        else
        {
          sub_22BE1AA10();
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v40 = v56;
            v41 = v60;
            (*v55)(v56, &v14[v33], v60);
            v42 = sub_22C2721B4();
            v43 = *v59;
            v44 = v40;
            v31 = v62;
            (*v59)(v44, v41);
            sub_22BE1AE00(v23, type metadata accessor for ToolboxCustomKeyResult);
            v43(v31, v41);
            if (v42)
            {
              goto LABEL_24;
            }

            goto LABEL_19;
          }

          sub_22BE1AE00(v23, type metadata accessor for ToolboxCustomKeyResult);
          (*v59)(v31, v60);
        }

        sub_22BE33928(v14, &qword_27D90B4D0, &qword_22C2CB6C0);
LABEL_20:
        a2 = (a2 + 1) & v64;
      }

      while (((*(v65 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v45 = *v53;
  *(*v53 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v46 = *(v45 + 48);
  v47 = *(v52 + 72);
  result = sub_22BE3F300();
  v49 = *(v45 + 16);
  v50 = __OFADD__(v49, 1);
  v51 = v49 + 1;
  if (v50)
  {
    __break(1u);
LABEL_24:
    sub_22BE1AE00(v14, type metadata accessor for ToolboxCustomKeyResult);
    result = sub_22C2740A4();
    __break(1u);
  }

  else
  {
    *(v45 + 16) = v51;
  }

  return result;
}

uint64_t sub_22C1AB1A8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_22C1A99C0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_22C1AD0F4(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_22C274154();
      sub_22C272F44();
      result = sub_22C2741A4();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_22C274014() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_22C1ABD04();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_22C2740A4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_22C1AB310(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C1A9C1C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_22C1AD328(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      v14 = sub_22C274144();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v14 = a2 + 1;
      }
    }

    sub_22C1ABE5C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_22C2740A4();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

uint64_t sub_22C1AB414(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C1A9FF0(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_22C1AD6A0(v6 + 1);
LABEL_8:
      v8 = *v3;
      v9 = *(*v3 + 40);
      sub_22C274154();
      sub_22BEB8E5C(v25, v5, v10, v11, v12, v13, v14, v15, v3, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10]);
      result = sub_22C2741A4();
      v16 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v16;
        if (((*(v8 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          break;
        }

        sub_22BE5CE4C(&qword_27D907580, &qword_22C2B85E0);
        v17 = *(*(v8 + 48) + 8 * a2);

        sub_22BEA5C9C();
        v19 = v18;

        if (v19)
        {
          goto LABEL_16;
        }

        result = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    result = sub_22C1AC0A4();
  }

LABEL_13:
  v20 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = v5;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = sub_22C2740A4();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v23;
  }

  return result;
}

uint64_t sub_22C1AB58C(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_22C26E1D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22C1AA1D0(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_22C1AD848(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_22C1AE190(&qword_27D9071C0, MEMORY[0x277CC95F0]);
      v15 = sub_22C272ED4();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_22C1AE190(&qword_27D9071C8, MEMORY[0x277CC95F0]);
        v17 = sub_22C272FD4();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_22C1AC1F4();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_22C2740A4();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void *sub_22C1AB83C()
{
  v1 = v0;
  sub_22BE5CE4C(&qword_27D907898, &qword_22C275B88);
  v2 = *v0;
  v3 = sub_22C273A24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22C1AB994()
{
  v1 = v0;
  sub_22BE5CE4C(&qword_27D9153D8, &qword_22C2CB6B8);
  v2 = *v0;
  v3 = sub_22C273A24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22C1ABAFC()
{
  v1 = v0;
  v2 = type metadata accessor for ToolboxCustomKeyResult(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22BE5CE4C(&qword_27D9153E0, &qword_22C2CB6C8);
  v5 = *v0;
  v6 = sub_22C273A24();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 56 + 8 * v9)
    {
      result = memmove(result, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 56);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = *(v5 + 48);
        v21 = *(v3 + 72) * (v17 | (v11 << 6));
        sub_22BE1AA10();
        v22 = *(v7 + 48);
        result = sub_22BE3F300();
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v7;
  }

  return result;
}

void *sub_22C1ABD04()
{
  v1 = v0;
  sub_22BE5CE4C(&qword_27D9153B8, &unk_22C2CB688);
  v2 = *v0;
  v3 = sub_22C273A24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_22C1ABE5C()
{
  v2 = v0;
  sub_22BE5CE4C(&qword_27D90B738, &qword_22C28ED10);
  v3 = *v0;
  v4 = sub_22C273A24();
  if (*(v3 + 16))
  {
    sub_22C1AE35C();
    sub_22BE37B50();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v1, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v3 + 16);
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v4 + 48) + 8 * v16) = *(*(v3 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v1 + v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v4;
  }
}

void sub_22C1ABF80()
{
  v2 = v0;
  sub_22BE5CE4C(&qword_27D9153E8, &unk_22C2CB6D0);
  v3 = *v0;
  v4 = sub_22C273A24();
  if (*(v3 + 16))
  {
    sub_22C1AE35C();
    sub_22BE37B50();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v1, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v3 + 16);
    v11 = 1 << *(v3 + 32);
    v12 = *(v3 + 56);
    sub_22BE38654();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_15:
        *(*(v4 + 48) + 16 * (v18 | (v10 << 6))) = *(*(v3 + 48) + 16 * (v18 | (v10 << 6)));
      }

      while (v15);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_17;
      }

      ++v19;
      if (*(v1 + v10))
      {
        sub_22BE29270();
        v15 = v21 & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v4;
  }
}

void *sub_22C1AC0A4()
{
  v1 = v0;
  sub_22BE5CE4C(&qword_27D9153C0, &qword_22C2CB698);
  v2 = *v0;
  v3 = sub_22C273A24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_22C1AC1F4()
{
  sub_22BE19460();
  v2 = v0;
  v4 = v3(0);
  sub_22BE179D8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE25CD0();
  v10 = sub_22BE18240();
  sub_22BE5CE4C(v10, v11);
  v12 = *v0;
  v13 = sub_22C273A24();
  if (*(v12 + 16))
  {
    v14 = sub_22C1AE35C();
    v16 = (v15 + 63) >> 6;
    if (v13 != v12 || v14 >= v12 + 56 + 8 * v16)
    {
      memmove(v14, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v13 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = *(v12 + 56);
    sub_22BE38654();
    v23 = v22 & v21;
    v25 = (v24 + 63) >> 6;
    if ((v22 & v21) != 0)
    {
      do
      {
        sub_22BE37764();
LABEL_15:
        (*(v6 + 16))(v1, *(v12 + 48) + *(v6 + 72) * (v26 | (v18 << 6)), v4);
        v30 = *(v13 + 48);
        v31 = *(v6 + 32);
        sub_22BE37940();
        v32();
      }

      while (v23);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v25)
      {
        goto LABEL_17;
      }

      ++v27;
      if (*(v12 + 56 + 8 * v18))
      {
        sub_22BE29270();
        v23 = v29 & v28;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v13;
    sub_22BE1AABC();
  }
}

uint64_t sub_22C1AC3D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22BE5CE4C(&qword_27D907898, &qword_22C275B88);
  result = sub_22C273A34();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_22C274154();

        sub_22C272F44();
        result = sub_22C2741A4();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22C1AC604(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22C272CA4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_22BE5CE4C(&qword_27D9153D0, &unk_22C2CB6A8);
  v10 = sub_22C273A34();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_22C1AE190(&qword_28106DEE0, MEMORY[0x277D73358]);
        result = sub_22C272ED4();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_22C1AC91C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22BE5CE4C(&qword_27D9153D8, &qword_22C2CB6B8);
  result = sub_22C273A34();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];
        v22 = *(v6 + 40);
        sub_22C274154();

        sub_22C272F44();
        sub_22C272F44();
        result = sub_22C2741A4();
        v23 = -1 << *(v6 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
        {
          break;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v31 = (*(v6 + 48) + 32 * v26);
        *v31 = v18;
        v31[1] = v19;
        v31[2] = v20;
        v31[3] = v21;
        ++*(v6 + 16);
        v3 = v33;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v13 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22C1ACB7C(uint64_t a1)
{
  v2 = v1;
  v57 = sub_22C272CA4();
  v4 = *(v57 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22C272224();
  v7 = *(v55 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolboxCustomKeyResult(0);
  v60 = *(v10 - 8);
  v61 = v10;
  v11 = *(v60 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v18 = *(*v2 + 24);
  }

  sub_22BE5CE4C(&qword_27D9153E0, &qword_22C2CB6C8);
  result = sub_22C273A34();
  v20 = result;
  if (*(v17 + 16))
  {
    v49 = v2;
    v21 = 0;
    v22 = v17 + 56;
    v23 = 1 << *(v17 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v4;
    v26 = v24 & *(v17 + 56);
    v27 = (v23 + 63) >> 6;
    v52 = (v7 + 8);
    v53 = (v7 + 32);
    v51 = (v25 + 32);
    v50 = (v25 + 8);
    v28 = result + 56;
    v58 = v17;
    v59 = v14;
    if (v26)
    {
      while (1)
      {
        v26 &= v26 - 1;
LABEL_14:
        v31 = *(v17 + 48);
        v62 = *(v60 + 72);
        sub_22BE1AA10();
        v32 = *(v20 + 40);
        sub_22C274154();
        v33 = v16;
        sub_22BE1AA10();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v34 = v14;
          v35 = v56;
          v36 = v57;
          (*v51)(v56, v34, v57);
          MEMORY[0x2318AC860](1);
          sub_22C1AE190(&qword_28106DEE0, MEMORY[0x277D73358]);
          sub_22C272EE4();
          (*v50)(v35, v36);
        }

        else
        {
          v37 = v54;
          v38 = v14;
          v39 = v55;
          (*v53)(v54, v38, v55);
          MEMORY[0x2318AC860](0);
          sub_22C1AE190(&qword_27D90B508, MEMORY[0x277D72238]);
          sub_22C272EE4();
          (*v52)(v37, v39);
        }

        result = sub_22C2741A4();
        v40 = -1 << *(v20 + 32);
        v41 = result & ~v40;
        v42 = v41 >> 6;
        v14 = v59;
        v16 = v33;
        if (((-1 << v41) & ~*(v28 + 8 * (v41 >> 6))) == 0)
        {
          break;
        }

        v43 = __clz(__rbit64((-1 << v41) & ~*(v28 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v28 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
        v48 = *(v20 + 48) + v43 * v62;
        result = sub_22BE3F300();
        ++*(v20 + 16);
        v17 = v58;
        if (!v26)
        {
          goto LABEL_9;
        }
      }

      v44 = 0;
      v45 = (63 - v40) >> 6;
      while (++v42 != v45 || (v44 & 1) == 0)
      {
        v46 = v42 == v45;
        if (v42 == v45)
        {
          v42 = 0;
        }

        v44 |= v46;
        v47 = *(v28 + 8 * v42);
        if (v47 != -1)
        {
          v43 = __clz(__rbit64(~v47)) + (v42 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_9:
      v29 = v21;
      while (1)
      {
        v21 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v21 >= v27)
        {

          v2 = v49;
          goto LABEL_30;
        }

        v30 = *(v22 + 8 * v21);
        ++v29;
        if (v30)
        {
          v26 = (v30 - 1) & v30;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v20;
  }

  return result;
}

uint64_t sub_22C1AD0F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22BE5CE4C(&qword_27D9153B8, &unk_22C2CB688);
  result = sub_22C273A34();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v18 = *v16;
        v17 = v16[1];
        v19 = *(v6 + 40);
        sub_22C274154();
        sub_22C272F44();
        result = sub_22C2741A4();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v18;
        v28[1] = v17;
        ++*(v6 + 16);

        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22C1AD328(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22BE5CE4C(&qword_27D90B738, &qword_22C28ED10);
  result = sub_22C273A34();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_22C274144();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

void sub_22C1AD514()
{
  sub_22BE323B4();
  sub_22BE22B58(v4);
  sub_22BE5CE4C(&qword_27D9153E8, &unk_22C2CB6D0);
  sub_22BE1804C();
  v5 = sub_22C273A34();
  if (*(v1 + 16))
  {
    v6 = 0;
    v7 = *(v1 + 56);
    v8 = *(v1 + 32);
    sub_22C1AE2D4();
    if (v3)
    {
      while (1)
      {
        sub_22BE37764();
LABEL_9:
        v13 = (*(v1 + 48) + 16 * (v9 | (v6 << 6)));
        v15 = *v13;
        v14 = v13[1];
        v16 = *(v5 + 40);
        sub_22C274154();
        sub_22C274174();
        if (v14)
        {

          sub_22C272F44();
        }

        v17 = sub_22C2741A4();
        sub_22BE3C0C4(v17);
        if (v18)
        {
          break;
        }

        sub_22C1AE448();
LABEL_20:
        sub_22BE2BAD8(v19);
        *v24 = v15;
        v24[1] = v14;
        ++*(v5 + 16);
        if (!v3)
        {
          goto LABEL_4;
        }
      }

      sub_22C1AE434();
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        if (v0[v20] != -1)
        {
          sub_22C1AE420();
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_4:
      v10 = v6;
      while (1)
      {
        v6 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v6 >= v2)
        {
          goto LABEL_22;
        }

        ++v10;
        if (*(v1 + 56 + 8 * v6))
        {
          sub_22BE29270();
          v3 = v12 & v11;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_22:

    *v0 = v5;
    sub_22C1AE388();
  }
}

unint64_t sub_22C1AD6A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22BE5CE4C(&qword_27D9153C0, &qword_22C2CB698);
  result = sub_22C273A34();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    for (i = result + 56; v10; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
      v17 = *(v6 + 40);
      sub_22C274154();

      sub_22BEB8E5C(v26, v16, v18, v19, v20, v21, v22, v23, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10]);
      sub_22C2741A4();
      v24 = -1 << *(v6 + 32);
      result = sub_22C2739F4();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v6 + 48) + 8 * result) = v16;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_16;
      }

      v15 = *(v3 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_22C1AD848(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22C26E1D4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_22BE5CE4C(&qword_27D9153C8, &qword_22C2CB6A0);
  v10 = sub_22C273A34();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_22C1AE190(&qword_27D9071C0, MEMORY[0x277CC95F0]);
        result = sub_22C272ED4();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

unint64_t sub_22C1ADBA0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v5 = *(a4(0) - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    return sub_22BE1AA10();
  }

  __break(1u);
  return result;
}

void *sub_22C1ADC94@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void (*a4)(void)@<X5>, void *a5@<X8>)
{
  if (a3)
  {
    a4(0);
    sub_22C1AE414();
    sub_22BE1A140();
    return sub_22BE19DC4(v7, v8, v9, v10);
  }

  else
  {
    v16 = a2;
    result = a1(a5, &v16);
    if (v5)
    {
      __break(1u);
    }

    else
    {
      a4(0);
      sub_22C1AE414();
      sub_22BE187DC();
      return sub_22BE19DC4(v12, v13, v14, v15);
    }
  }

  return result;
}

uint64_t sub_22C1ADD38@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_22C196A1C(a1);
}

uint64_t sub_22C1ADD8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_22C19FF54(a1);
}

uint64_t sub_22C1ADD94(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D915378, &qword_22C2CB4E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C1ADEB0()
{
  result = qword_27D915390;
  if (!qword_27D915390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915390);
  }

  return result;
}

uint64_t sub_22C1ADF04(uint64_t a1)
{
  result = sub_22BEF8A28(&qword_27D915398, &qword_27D9124F0, &qword_22C2B77F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1ADF58(uint64_t a1)
{
  result = sub_22BEF8A28(&qword_28106DC48, &qword_27D9124F0, &qword_22C2B77F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1ADFAC(uint64_t a1)
{
  result = sub_22BEF8A28(&qword_27D9153A0, &qword_27D9153A8, &qword_22C2CB548);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22C1AE004()
{
  result = qword_27D9153B0;
  if (!qword_27D9153B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9153B0);
  }

  return result;
}

_BYTE *_s17SessionStateErrorOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22C1AE144@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_22C1AE190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C1AE238@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v3 - 128) = v2;
  *(v3 - 112) = a2;
  *(v3 - 144) = *(*(a1 + 8) + 8);

  return sub_22C273CD4();
}

uint64_t sub_22C1AE300()
{

  return sub_22BE1AE00(v0, type metadata accessor for Expression);
}

uint64_t sub_22C1AE328()
{
  v3 = *(v1 - 120);
  v4 = *(v1 - 240);

  return MEMORY[0x2821FC328](v3, v0);
}

uint64_t sub_22C1AE35C()
{
  result = v0 + 56;
  v2 = 1 << *(v0 + 32);
  return result;
}

uint64_t sub_22C1AE3E0()
{
  v3 = *v0;
}

uint64_t sub_22C1AE3FC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_22BE3F300();
}

uint64_t sub_22C1AE474()
{

  return sub_22C273734();
}

uint64_t sub_22C1AE494()
{
  v2 = *(v0 - 256);
  v3 = *(v0 - 136);

  return sub_22BE1AA10();
}

uint64_t sub_22C1AE4B4()
{

  return sub_22C272FD4();
}

Swift::Void __swiftcall QueryDecorationResult.streamRedact()()
{
  v1 = *(type metadata accessor for QueryDecorationResult(0) + 28);
  v2 = *(v0 + v1);

  *(v0 + v1) = MEMORY[0x277D84F90];
}

Swift::Void __swiftcall ContextRetrieved.streamRedact()()
{
  v1 = *v0;

  *v0 = MEMORY[0x277D84F90];
}

uint64_t sub_22C1AE5C4(uint64_t a1, uint64_t a2)
{
  DecorationResult = type metadata accessor for QueryDecorationResult(0);
  (*(*(DecorationResult - 8) + 32))(a2, a1, DecorationResult);
  return a2;
}

uint64_t sub_22C1AE63C(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v35 = sub_22BE5CE4C(&qword_27D915498, &unk_22C2CB840);
  v6 = sub_22BE18000(v35);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE193B0(v9, v32);
  MEMORY[0x28223BE20](v10);
  sub_22BE1C17C();
  v11 = sub_22C270944();
  v12 = sub_22BE179D8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  v20 = *(v14 + 16);
  v34 = v2;
  v20(v4, v2, v11);
  v21 = MEMORY[0x277D1E9E8];
  v32 = sub_22C1CE8AC(&qword_27D9154A0, MEMORY[0x277D1E9E8]);
  sub_22C273984();
  sub_22BE1C0B0();
  v22 = v21;
  v23 = v35;
  sub_22C1CE8AC(v24, v22);
  v33 = a2;
  v25 = sub_22C272FD4();
  v26 = *(v23 + 48);
  *v3 = (v25 & 1) == 0;
  if (v25)
  {
    sub_22BE47DF4();
    v27(&v3[v26], v19, v11);
  }

  else
  {
    (*(v14 + 8))(v19, v11);
    v20(&v3[v26], v33, v11);
    v28 = sub_22BE3C968();
    (v20)(v28);
    sub_22C273994();
  }

  v29 = v36;
  sub_22BEF88B8(v3, v36, &qword_27D915498, &unk_22C2CB840);
  v30 = *v29;
  (*(v14 + 32))(v37, &v29[*(v23 + 48)], v11);
  return v30;
}

BOOL sub_22C1AE8E4(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_22C1AE914()
{
  v2 = sub_22C270F24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContextProtoRetrievedContext(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2);
  ContextProtoRetrievedContext.init(context:)(v6, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21);
  if (!v1)
  {
    sub_22C1CE8AC(&qword_27D90C0F8, type metadata accessor for ContextProtoRetrievedContext);
    v7 = sub_22C270744();
    sub_22C1CEAFC();
  }

  return v7;
}

uint64_t sub_22C1AEFF4()
{
  v2 = sub_22C271394();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2);
  ContextProtoStructuredContextSiriRequestContext.init(context:)(v6, v9, v10, v11, v12, v13, v14, v15, v17[0], v17[1]);
  if (!v1)
  {
    sub_22C1CE8AC(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
    v7 = sub_22C270744();
    sub_22C1CEAFC();
  }

  return v7;
}

uint64_t sub_22C1AF1AC()
{
  v2 = sub_22C271654();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2);
  ContextProtoStructuredContextOnScreenUITextUIMetadata.init(context:)();
  if (!v1)
  {
    sub_22C1CE8AC(&qword_27D90C450, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
    v7 = sub_22C270744();
    sub_22C1CEAFC();
  }

  return v7;
}

char *sub_22C1AF364()
{
  v2 = v0;
  v3 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = sub_22C271624();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v13 + 16);
  v46 = v12;
  v21(v16, v2, v12);
  sub_22C2715C4();
  if (v45)
  {
    v39 = v1;
    v22 = 1;
LABEL_6:
    v23 = type metadata accessor for ContextProtoCGRect(0);
    sub_22BE19DC4(v9, v22, 1, v23);
    sub_22BEF88B8(v9, v11, &qword_27D90BF90, &unk_22C294AD0);
    v38 = sub_22C271614();
    v24 = v40;
    sub_22BE3BB64(v11, v40, &qword_27D90BF90, &unk_22C294AD0);
    v37 = sub_22C2715E4();
    v36 = v25;
    v26 = sub_22C2715A4();
    v34 = v27;
    v35 = v26;
    v28 = v17[5];
    sub_22BE19DC4(&v20[v28], 1, 1, v23);
    v29 = &v20[v17[6]];
    v30 = &v20[v17[7]];
    v31 = &v20[v17[8]];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v13 + 8))(v16, v46);
    sub_22BE233E8(v11, &qword_27D90BF90, &unk_22C294AD0);
    *v20 = v38 & 1;
    sub_22BE23490(v24, &v20[v28], &qword_27D90BF90, &unk_22C294AD0);
    *v29 = v37;
    v29[8] = v36 & 1;
    v32 = v34;
    *v30 = v35;
    v30[1] = v32;
    sub_22C1CE8AC(&qword_27D90C468, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
    v16 = sub_22C270744();
    sub_22C1CEAFC();
    return v16;
  }

  ContextProtoCGRect.init(context:)(v9, v41, v42, v43, v44);
  if (!v1)
  {
    v39 = 0;
    v22 = 0;
    goto LABEL_6;
  }

  (*(v13 + 8))(v16, v46);
  return v16;
}

uint64_t sub_22C1AF72C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = type metadata accessor for ContextProtoCGRect(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  ContextProtoCGRect.init(context:)(&v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, a3, a4);
  if (!v4)
  {
    sub_22C1CE8AC(&qword_27D90C480, type metadata accessor for ContextProtoCGRect);
    v9 = sub_22C270744();
    sub_22C1CEAFC();
  }

  return v9;
}

uint64_t sub_22C1AF868()
{
  v0 = sub_22C270EA4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_22C270984();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContextProtoConfidence(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v25, v8, v15);
  sub_22C270964();
  v19 = v18;
  sub_22C270974();
  (*(v1 + 16))(v4, v7, v0);
  v20 = (*(v1 + 88))(v4, v0);
  if (v20 == *MEMORY[0x277D1EDD8])
  {
    v21 = 0;
LABEL_7:
    (*(v1 + 8))(v7, v0);
    v22 = &v17[*(v13 + 24)];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v9 + 8))(v12, v8);
    *v17 = v19;
    v17[4] = v21;
    sub_22C1CE8AC(&qword_27D90C338, type metadata accessor for ContextProtoConfidence);
    v23 = sub_22C270744();
    sub_22C1CEAFC();
    return v23;
  }

  if (v20 == *MEMORY[0x277D1EDE8])
  {
    v21 = 1;
    goto LABEL_7;
  }

  if (v20 == *MEMORY[0x277D1EDE0])
  {
    v21 = 2;
    goto LABEL_7;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C1AFBA4()
{
  v1 = sub_22C271A74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1, v8);
  v11 = sub_22C271A54();
  v13 = v12;
  v14 = sub_22C271A64();
  v16 = v15;
  v17 = v10 + *(v6 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v5, v1);
  *v10 = v11;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v16;
  sub_22C1CE8AC(&qword_27D90C2F8, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  v18 = sub_22C270744();
  sub_22C1CEAFC();
  return v18;
}

uint64_t sub_22C1AFD94()
{
  v1 = v0;
  v2 = sub_22C2709F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContextProtoBoundingBox(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v9);
  sub_22C2709B4();
  v13 = v12;
  sub_22C2709C4();
  v15 = v14;
  sub_22C2709D4();
  v17 = v16;
  sub_22C2709E4();
  v19 = v18;
  v20 = &v11[*(v7 + 32)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v3 + 8))(v6, v2);
  *v11 = v13;
  v11[4] = 0;
  *(v11 + 2) = v15;
  v11[12] = 0;
  *(v11 + 4) = v17;
  v11[20] = 0;
  *(v11 + 6) = v19;
  v11[28] = 0;
  sub_22C1CE8AC(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox);
  v21 = sub_22C270744();
  sub_22C1CEAFC();
  return v21;
}

char *sub_22C1AFFAC()
{
  v2 = v0;
  v3 = sub_22C2709F4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_22C270E94();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoSurroundingText(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, v2, v9, v16);
  v28 = sub_22C270E84();
  v20 = v19;
  sub_22C270E64();
  ContextProtoBoundingBox.init(context:)();
  if (v1)
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v21 = type metadata accessor for ContextProtoBoundingBox(0);
    sub_22BE19DC4(v8, 0, 1, v21);
    v27 = v20;
    v22 = *(v14 + 20);
    sub_22BE19DC4(v18 + v22, 1, 1, v21);
    v23 = v18 + *(v14 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v10 + 8))(v13, v9);
    v24 = v27;
    *v18 = v28;
    v18[1] = v24;
    sub_22BE23490(v8, v18 + v22, &qword_27D9092A0, &unk_22C294AC0);
    sub_22C1CE8AC(&qword_27D90BF88, type metadata accessor for ContextProtoSurroundingText);
    v8 = sub_22C270744();
    sub_22C1CEAFC();
  }

  return v8;
}

void TranscriptContextBidirectionalConvertibleProtocol.protoBytes()()
{
  sub_22BE19130();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  sub_22BE3AC88();
  v8 = *(*(v7 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE179D8(AssociatedTypeWitness);
  v23 = v10;
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE25CD0();
  v14 = *(v4 + 16);
  v15 = sub_22BE289D8();
  v16(v15);
  sub_22BE1A8C4();
  v17 = *(swift_getAssociatedConformanceWitness() + 16);
  v18 = sub_22BE3D5BC();
  v19(v18, AssociatedTypeWitness);
  if (!v0)
  {
    swift_getAssociatedConformanceWitness();
    sub_22BE19454();
    _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
    sub_22BE354D0();
    sub_22C270744();
    v20 = *(v23 + 8);
    v21 = sub_22BE200D4();
    v22(v21);
  }

  sub_22BE1A8C4();
  sub_22BE18478();
}

uint64_t sub_22C1B04BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v3 = sub_22BE5CE4C(&qword_27D915430, &qword_22C2CB7A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = sub_22C2713B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  sub_22BE3BB64(a1, v6, &qword_27D915430, &qword_22C2CB7A8);
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    sub_22BE233E8(a1, &qword_27D915430, &qword_22C2CB7A8);
    result = sub_22BE233E8(v6, &qword_27D915430, &qword_22C2CB7A8);
    v19 = 7;
LABEL_18:
    *v24 = v19;
    return result;
  }

  (*(v8 + 32))(v17, v6, v7);
  v20 = *(v8 + 16);
  v20(v15, v17, v7);
  v20(v12, v15, v7);
  v21 = (*(v8 + 88))(v12, v7);
  if (v21 == *MEMORY[0x277D1EFC8])
  {
    v19 = 0;
LABEL_17:
    sub_22BE233E8(a1, &qword_27D915430, &qword_22C2CB7A8);
    v22 = *(v8 + 8);
    v22(v15, v7);
    result = (v22)(v17, v7);
    goto LABEL_18;
  }

  if (v21 == *MEMORY[0x277D1EF98])
  {
    v19 = 1;
    goto LABEL_17;
  }

  if (v21 == *MEMORY[0x277D1EFB0])
  {
    v19 = 2;
    goto LABEL_17;
  }

  if (v21 == *MEMORY[0x277D1EFC0])
  {
    v19 = 3;
    goto LABEL_17;
  }

  if (v21 == *MEMORY[0x277D1EFA0])
  {
    v19 = 4;
    goto LABEL_17;
  }

  if (v21 == *MEMORY[0x277D1EFB8])
  {
    v19 = 5;
    goto LABEL_17;
  }

  if (v21 == *MEMORY[0x277D1EFA8])
  {
    v19 = 6;
    goto LABEL_17;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C1B0810@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v3 = sub_22BE5CE4C(&qword_27D915428, &qword_22C2CB7A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = sub_22C2713C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  sub_22BE3BB64(a1, v6, &qword_27D915428, &qword_22C2CB7A0);
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    sub_22BE233E8(a1, &qword_27D915428, &qword_22C2CB7A0);
    result = sub_22BE233E8(v6, &qword_27D915428, &qword_22C2CB7A0);
    v19 = 4;
LABEL_12:
    *v24 = v19;
    return result;
  }

  (*(v8 + 32))(v17, v6, v7);
  v20 = *(v8 + 16);
  v20(v15, v17, v7);
  v20(v12, v15, v7);
  v21 = (*(v8 + 88))(v12, v7);
  if (v21 == *MEMORY[0x277D1EFD8])
  {
    v19 = 0;
LABEL_11:
    sub_22BE233E8(a1, &qword_27D915428, &qword_22C2CB7A0);
    v22 = *(v8 + 8);
    v22(v15, v7);
    result = (v22)(v17, v7);
    goto LABEL_12;
  }

  if (v21 == *MEMORY[0x277D1EFE0])
  {
    v19 = 1;
    goto LABEL_11;
  }

  if (v21 == *MEMORY[0x277D1EFE8])
  {
    v19 = 2;
    goto LABEL_11;
  }

  if (v21 == *MEMORY[0x277D1EFD0])
  {
    v19 = 3;
    goto LABEL_11;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C1B0B10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v3 = sub_22BE5CE4C(&qword_27D915420, &qword_22C2CB798);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = sub_22C2713D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  sub_22BE3BB64(a1, v6, &qword_27D915420, &qword_22C2CB798);
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    sub_22BE233E8(a1, &qword_27D915420, &qword_22C2CB798);
    result = sub_22BE233E8(v6, &qword_27D915420, &qword_22C2CB798);
    v19 = 9;
LABEL_22:
    *v24 = v19;
    return result;
  }

  (*(v8 + 32))(v17, v6, v7);
  v20 = *(v8 + 16);
  v20(v15, v17, v7);
  v20(v12, v15, v7);
  v21 = (*(v8 + 88))(v12, v7);
  if (v21 == *MEMORY[0x277D1F000])
  {
    v19 = 8;
LABEL_21:
    sub_22BE233E8(a1, &qword_27D915420, &qword_22C2CB798);
    v22 = *(v8 + 8);
    v22(v15, v7);
    result = (v22)(v17, v7);
    goto LABEL_22;
  }

  if (v21 == *MEMORY[0x277D1F010])
  {
    v19 = 0;
    goto LABEL_21;
  }

  if (v21 == *MEMORY[0x277D1F018])
  {
    v19 = 1;
    goto LABEL_21;
  }

  if (v21 == *MEMORY[0x277D1F008])
  {
    v19 = 2;
    goto LABEL_21;
  }

  if (v21 == *MEMORY[0x277D1F028])
  {
    v19 = 3;
    goto LABEL_21;
  }

  if (v21 == *MEMORY[0x277D1F030])
  {
    v19 = 4;
    goto LABEL_21;
  }

  if (v21 == *MEMORY[0x277D1F020])
  {
    v19 = 5;
    goto LABEL_21;
  }

  if (v21 == *MEMORY[0x277D1EFF0])
  {
    v19 = 6;
    goto LABEL_21;
  }

  if (v21 == *MEMORY[0x277D1EFF8])
  {
    v19 = 7;
    goto LABEL_21;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C1B0E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_22C270EA4();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v45 = type metadata accessor for ContextProtoConfidence(0);
  v9 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BE5CE4C(&qword_27D9153F8, &unk_22C2CB750);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = sub_22C270984();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = a1;
  sub_22BE3BB64(a1, v14, &qword_27D9153F8, &unk_22C2CB750);
  if (sub_22BE1AEA8(v14, 1, v15) == 1)
  {
    sub_22BE233E8(a1, &qword_27D9153F8, &unk_22C2CB750);
    sub_22BE233E8(v14, &qword_27D9153F8, &unk_22C2CB750);
    v24 = 1;
    v26 = v45;
    v25 = v46;
    return sub_22BE19DC4(v25, v24, 1, v26);
  }

  (*(v16 + 32))(v22, v14, v15);
  (*(v16 + 16))(v20, v22, v15);
  sub_22C270964();
  v28 = v27;
  sub_22C270974();
  v30 = v41;
  v29 = v42;
  v31 = v43;
  (*(v42 + 16))(v41, v8, v43);
  v32 = (*(v29 + 88))(v30, v31);
  v33 = v31;
  v34 = v29;
  if (v32 == *MEMORY[0x277D1EDD8])
  {
    v35 = 0;
    v26 = v45;
LABEL_9:
    (*(v34 + 8))(v8, v33);
    v36 = v44;
    v37 = &v44[*(v26 + 24)];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE233E8(v23, &qword_27D9153F8, &unk_22C2CB750);
    v38 = *(v16 + 8);
    v38(v20, v15);
    v38(v22, v15);
    *v36 = v28;
    *(v36 + 4) = v35;
    v25 = v46;
    sub_22C1CEB4C(v36, v46, type metadata accessor for ContextProtoConfidence);
    v24 = 0;
    return sub_22BE19DC4(v25, v24, 1, v26);
  }

  v26 = v45;
  if (v32 == *MEMORY[0x277D1EDE8])
  {
    v35 = 1;
    goto LABEL_9;
  }

  if (v32 == *MEMORY[0x277D1EDE0])
  {
    v35 = 2;
    goto LABEL_9;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C1B12DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = type metadata accessor for ContextProtoContextMetadata(0);
  v3 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D9153F0, &unk_22C2CB740);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_22C270E04();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  sub_22BE3BB64(a1, v9, &qword_27D9153F0, &unk_22C2CB740);
  if (sub_22BE1AEA8(v9, 1, v10) == 1)
  {
    sub_22BE233E8(a1, &qword_27D9153F0, &unk_22C2CB740);
    sub_22BE233E8(v9, &qword_27D9153F0, &unk_22C2CB740);
    v18 = 1;
    v19 = v30;
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v15, v17, v10);
    v20 = v32;
    ContextProtoContextMetadata.init(context:)(v15, v21, v22, v23, v24, v25, v26, v27, v29, v30, SWORD1(v30), SWORD2(v30), SBYTE6(v30), SHIBYTE(v30), v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
    if (v20)
    {
      sub_22BE233E8(a1, &qword_27D9153F0, &unk_22C2CB740);
      return (*(v11 + 8))(v17, v10);
    }

    sub_22BE233E8(a1, &qword_27D9153F0, &unk_22C2CB740);
    (*(v11 + 8))(v17, v10);
    v19 = v30;
    sub_22C1CEB4C(v5, v30, type metadata accessor for ContextProtoContextMetadata);
    v18 = 0;
  }

  return sub_22BE19DC4(v19, v18, 1, v29);
}

uint64_t sub_22C1B15A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = type metadata accessor for ContextProtoStructuredContext(0);
  v3 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D915400, &unk_22C2CB760);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_22C2716E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  sub_22BE3BB64(a1, v9, &qword_27D915400, &unk_22C2CB760);
  if (sub_22BE1AEA8(v9, 1, v10) == 1)
  {
    sub_22BE233E8(a1, &qword_27D915400, &unk_22C2CB760);
    sub_22BE233E8(v9, &qword_27D915400, &unk_22C2CB760);
    v18 = 1;
    v19 = v30;
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v15, v17, v10);
    v20 = v32;
    ContextProtoStructuredContext.init(context:)(v15, v21, v22, v23, v24, v25, v26, v27, v29, v30, SBYTE4(v30), SBYTE5(v30), SBYTE6(v30), SHIBYTE(v30), v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
    if (v20)
    {
      sub_22BE233E8(a1, &qword_27D915400, &unk_22C2CB760);
      return (*(v11 + 8))(v17, v10);
    }

    sub_22BE233E8(a1, &qword_27D915400, &unk_22C2CB760);
    (*(v11 + 8))(v17, v10);
    v19 = v30;
    sub_22C1CEB4C(v5, v30, type metadata accessor for ContextProtoStructuredContext);
    v18 = 0;
  }

  return sub_22BE19DC4(v19, v18, 1, v29);
}

uint64_t sub_22C1B186C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v34 = type metadata accessor for ContextProtoBoundingBox(0);
  v3 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BE5CE4C(&qword_27D915418, &qword_22C2CB788);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - v8;
  v10 = sub_22C2709F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  sub_22BE3BB64(a1, v9, &qword_27D915418, &qword_22C2CB788);
  if (sub_22BE1AEA8(v9, 1, v10) == 1)
  {
    sub_22BE233E8(a1, &qword_27D915418, &qword_22C2CB788);
    sub_22BE233E8(v9, &qword_27D915418, &qword_22C2CB788);
    v18 = 1;
    v20 = v34;
    v19 = v35;
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v15, v17, v10);
    sub_22C2709B4();
    v22 = v21;
    sub_22C2709C4();
    v24 = v23;
    sub_22C2709D4();
    v26 = v25;
    sub_22C2709E4();
    v28 = v27;
    v29 = v34;
    v30 = &v5[*(v34 + 32)];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE233E8(a1, &qword_27D915418, &qword_22C2CB788);
    v31 = *(v11 + 8);
    v31(v15, v10);
    v31(v17, v10);
    *v5 = v22;
    v5[4] = 0;
    *(v5 + 2) = v24;
    v5[12] = 0;
    *(v5 + 4) = v26;
    v5[20] = 0;
    *(v5 + 6) = v28;
    v5[28] = 0;
    v32 = v35;
    sub_22C1CEB4C(v5, v35, type metadata accessor for ContextProtoBoundingBox);
    v18 = 0;
    v19 = v32;
    v20 = v29;
  }

  return sub_22BE19DC4(v19, v18, 1, v20);
}

uint64_t sub_22C1B1B74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v3 = sub_22BE5CE4C(&qword_27D915410, &unk_22C2CB778);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = sub_22C270F74();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  sub_22BE3BB64(a1, v6, &qword_27D915410, &unk_22C2CB778);
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    sub_22BE233E8(a1, &qword_27D915410, &unk_22C2CB778);
    result = sub_22BE233E8(v6, &qword_27D915410, &unk_22C2CB778);
    v19 = 6;
LABEL_16:
    *v24 = v19;
    return result;
  }

  (*(v8 + 32))(v17, v6, v7);
  v20 = *(v8 + 16);
  v20(v15, v17, v7);
  v20(v12, v15, v7);
  v21 = (*(v8 + 88))(v12, v7);
  if (v21 == *MEMORY[0x277D1EE60])
  {
    v19 = 0;
LABEL_15:
    sub_22BE233E8(a1, &qword_27D915410, &unk_22C2CB778);
    v22 = *(v8 + 8);
    v22(v15, v7);
    result = (v22)(v17, v7);
    goto LABEL_16;
  }

  if (v21 == *MEMORY[0x277D1EE48])
  {
    v19 = 1;
    goto LABEL_15;
  }

  if (v21 == *MEMORY[0x277D1EE58])
  {
    v19 = 5;
    goto LABEL_15;
  }

  if (v21 == *MEMORY[0x277D1EE38])
  {
    v19 = 2;
    goto LABEL_15;
  }

  if (v21 == *MEMORY[0x277D1EE40])
  {
    v19 = 3;
    goto LABEL_15;
  }

  if (v21 == *MEMORY[0x277D1EE50])
  {
    v19 = 4;
    goto LABEL_15;
  }

  result = sub_22C274004();
  __break(1u);
  return result;
}

uint64_t sub_22C1B1EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  v3 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22BE5CE4C(&qword_27D915408, &qword_22C2CB770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_22C271A74();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = a1;
  sub_22BE3BB64(a1, v9, &qword_27D915408, &qword_22C2CB770);
  if (sub_22BE1AEA8(v9, 1, v10) == 1)
  {
    sub_22BE233E8(a1, &qword_27D915408, &qword_22C2CB770);
    sub_22BE233E8(v9, &qword_27D915408, &qword_22C2CB770);
    v19 = 1;
    v20 = v33;
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v15, v17, v10);
    v21 = sub_22C271A54();
    v31 = v22;
    v32 = v21;
    v23 = sub_22C271A64();
    v25 = v24;
    v26 = v5 + *(v34 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE233E8(v18, &qword_27D915408, &qword_22C2CB770);
    v27 = *(v11 + 8);
    v27(v15, v10);
    v27(v17, v10);
    v28 = v31;
    *v5 = v32;
    v5[1] = v28;
    v5[2] = v23;
    v5[3] = v25;
    v29 = v33;
    sub_22C1CEB4C(v5, v33, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
    v19 = 0;
    v20 = v29;
  }

  return sub_22BE19DC4(v20, v19, 1, v34);
}

uint64_t sub_22C1B2184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = type metadata accessor for ContextProtoCGRect(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32))
  {
    v13 = a2;
    v14 = 1;
  }

  else
  {
    result = ContextProtoCGRect.init(context:)(v12, v5, v6, v7, v8);
    if (v2)
    {
      return result;
    }

    sub_22C1CEB4C(v12, a2, type metadata accessor for ContextProtoCGRect);
    v13 = a2;
    v14 = 0;
  }

  return sub_22BE19DC4(v13, v14, 1, v9);
}

void sub_22C1B2294()
{
  sub_22BE19130();
  v4 = v3;
  v53 = v5;
  v52 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v6 = sub_22BE18000(v52);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE19338();
  v9 = sub_22BE1A8C4();
  v11 = sub_22BE5CE4C(v9, v10);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE3A208();
  v15 = sub_22C271394();
  v16 = sub_22BE179D8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v21);
  sub_22BE1C17C();
  v22 = sub_22BE22DF4();
  sub_22BE3BB64(v22, v23, &qword_27D9120B0, &qword_22C2B5F00);
  v24 = sub_22BE3C598();
  sub_22BE1AB5C(v24, v25, v15);
  if (v26)
  {
    v27 = sub_22BE431C0();
    sub_22BE233E8(v27, v28, &qword_22C2B5F00);
    sub_22BE233E8(v2, &qword_27D9120B0, &qword_22C2B5F00);
    v29 = 1;
    v30 = v53;
LABEL_7:
    sub_22BE19DC4(v30, v29, 1, v52);
    goto LABEL_8;
  }

  v31 = v18[4];
  v32 = sub_22BE289D8();
  v33(v32);
  v34 = v18[2];
  v35 = sub_22BE37B20();
  v36(v35);
  v37 = sub_22BE37D44();
  ContextProtoStructuredContextSiriRequestContext.init(context:)(v37, v38, v39, v40, v41, v42, v43, v44, v52, v53);
  if (!v0)
  {
    sub_22BE233E8(v4, &qword_27D9120B0, &qword_22C2B5F00);
    v48 = v18[1];
    v49 = sub_22BE196A8();
    v50(v49);
    sub_22BE3C190();
    v30 = v54;
    sub_22C1CEB4C(v1, v54, v51);
    v29 = 0;
    goto LABEL_7;
  }

  sub_22BE233E8(v4, &qword_27D9120B0, &qword_22C2B5F00);
  v45 = v18[1];
  v46 = sub_22BE196A8();
  v47(v46);
LABEL_8:
  sub_22BEE94B0();
  sub_22BE18478();
}

void ConvertibleFromContextProtocol.init(context:)()
{
  sub_22BE19130();
  v4 = v3;
  v45 = v5;
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22BE3BF90(v8);
  v43 = v9;
  v46 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_22C273844();
  sub_22BE179D8(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1B72C();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = v18[8];
  MEMORY[0x28223BE20](v20);
  sub_22BE18928();
  MEMORY[0x28223BE20](v21);
  sub_22BE181E4();
  sub_22C116380();
  v22(v0, v4, v12);
  v23 = sub_22BE391E8();
  sub_22BE1AB5C(v23, v24, AssociatedTypeWitness);
  if (v25)
  {
    v26 = *(v14 + 8);
    v27 = sub_22BE261AC();
    v26(v27);
    (v26)(v0, v12);
    v28 = 1;
    v29 = v45;
    v34 = v46;
LABEL_7:
    sub_22BE19DC4(v29, v28, 1, v34);
    goto LABEL_8;
  }

  v41 = v4;
  v30 = v18[4];
  v31 = sub_22BE200D4();
  v32(v31);
  sub_22C1CF23C();
  sub_22BE358FC();
  v33();
  v34 = v46;
  (*(v43 + 16))(v2, v46);
  if (!v1)
  {
    (*(v14 + 8))(v41, v12);
    v38 = v18[1];
    v39 = sub_22BE22DF4();
    v40(v39);
    v29 = v45;
    (*(v42 + 32))(v45, v44, v46);
    v28 = 0;
    goto LABEL_7;
  }

  (*(v14 + 8))(v41, v12);
  v35 = v18[1];
  v36 = sub_22BE22DF4();
  v37(v36);
LABEL_8:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C1B27C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v14 = sub_22BE25D84();
  v15 = type metadata accessor for ContextProtoRetrievedContext(v14);
  v16 = sub_22BE17A18(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE193B0(v19, v91);
  v21 = MEMORY[0x28223BE20](v20);
  sub_22BE22D7C(v21, v22, v23, v24, v25, v26, v27, v28, v92);
  v29 = sub_22C270F24();
  v30 = sub_22BE179D8(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v35);
  sub_22BE25ED0();
  v37 = MEMORY[0x28223BE20](v36);
  sub_22BE23730(v37, v38, v39, v40, v41, v42, v43, v44, v93);
  MEMORY[0x28223BE20](v45);
  sub_22BE26800();
  v46 = *(v13 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE2C294();
  sub_22BE70334(v47, v48, v49);
  sub_22BE3E47C();
  if (v46)
  {
    sub_22BE1C3D4();
    while (1)
    {
      sub_22C1CF13C();
      if (v50)
      {
        break;
      }

      sub_22BE39418();
      if (v69)
      {
        goto LABEL_22;
      }

      v51 = sub_22BE25BB8();
      v32(v51);
      v52 = sub_22C1CEC40();
      v32(v52);
      v53 = sub_22BE23360();
      ContextProtoRetrievedContext.init(context:)(v53, v54, v55, v56, v57, v58, v59, v60, v94, v95, SWORD2(v95), SBYTE6(v95), SHIBYTE(v95));
      if (v11)
      {
LABEL_17:

        v89 = sub_22BE203E8();
        v90(v89);

LABEL_19:
        sub_22C1CED0C();
        sub_22BE18478();
        return;
      }

      v61 = sub_22BE2902C();
      v62(v61);
      sub_22BE1B698();
      if (v69)
      {
        sub_22BE3D1E4(v63);
        sub_22C1CF178();
        sub_22BE70334(v66, v67, v68);
        v10 = a10;
      }

      v12 = (v12 + 1);
      *(v10 + 16) = v13;
      sub_22BE197A0();
      sub_22C1CED8C();
      sub_22C1CEB4C(v96, v64, v65);
      sub_22BE323D0();
      v32 = v95;
      if (v50)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    sub_22BE40C98();
    while (1)
    {
      sub_22BE447AC();
      if (v50)
      {

        goto LABEL_19;
      }

      if (v69)
      {
        break;
      }

      v70 = sub_22BE1A084();
      v12(v70);
      v71 = sub_22C1CEC40();
      v12(v71);
      v72 = sub_22C1CF124();
      ContextProtoRetrievedContext.init(context:)(v72, v73, v74, v75, v76, v77, v78, v79, v94, v95, SWORD2(v95), SBYTE6(v95), SHIBYTE(v95));
      if (v11)
      {
        goto LABEL_17;
      }

      v80 = sub_22BE203E8();
      v81(v80);
      sub_22C1CEC50();
      if (v69)
      {
        v86 = sub_22BE19808(v82);
        sub_22BE70334(v86, v87, v88);
        v10 = a10;
      }

      *(v10 + 16) = v12;
      sub_22BE197A0();
      sub_22C1CED8C();
      sub_22C1CEB4C(v83, v84, v85);
      sub_22BE27AB8();
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_22C1B2A8C(uint64_t a1)
{
  v96 = sub_22C2709F4();
  v2 = *(v96 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v96);
  v91 = &v80[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v80[-v7];
  v9 = type metadata accessor for ContextProtoSurroundingText(0);
  v94 = *(v9 - 8);
  v95 = v9;
  v10 = *(v94 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v80[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v99 = &v80[-v14];
  v93 = sub_22C270E94();
  v15 = *(v93 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v93);
  v88 = &v80[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v92 = &v80[-v20];
  MEMORY[0x28223BE20](v19);
  v89 = &v80[-v21];
  v22 = *(a1 + 16);
  v102 = MEMORY[0x277D84F90];
  sub_22BE70544(0, v22, 0);
  v23 = v102;
  v90 = a1;
  v100 = v15;
  v81 = v2;
  if (v22)
  {
    v24 = 0;
    v25 = *(a1 + 16);
    v86 = (a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)));
    v87 = v25;
    v84 = v15 + 2;
    v83 = (v2 + 8);
    v82 = v15 + 1;
    v85 = v22;
    while (v87 != v24)
    {
      v26 = v86 + v15[9] * v24;
      v101 = v23;
      v27 = v15[2];
      v28 = v92;
      v29 = v93;
      v27(v92, v26, v93);
      v30 = v88;
      v27(v88, v28, v29);
      v31 = sub_22C270E84();
      v97 = v32;
      v98 = v31;
      v33 = v91;
      sub_22C270E64();
      sub_22C2709B4();
      v35 = v34;
      sub_22C2709C4();
      v37 = v36;
      sub_22C2709D4();
      v39 = v38;
      sub_22C2709E4();
      v41 = v40;
      v42 = type metadata accessor for ContextProtoBoundingBox(0);
      v43 = &v8[*(v42 + 32)];
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      (*v83)(v33, v96);
      *v8 = v35;
      v8[4] = 0;
      *(v8 + 2) = v37;
      v8[12] = 0;
      *(v8 + 4) = v39;
      v8[20] = 0;
      *(v8 + 6) = v41;
      v8[28] = 0;
      sub_22BE19DC4(v8, 0, 1, v42);
      v44 = v95;
      v45 = *(v95 + 20);
      sub_22BE19DC4(v13 + v45, 1, 1, v42);
      v46 = v13 + *(v44 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v47 = v100[1];
      v47(v30, v29);
      v47(v28, v29);
      v23 = v101;
      v48 = v97;
      *v13 = v98;
      v13[1] = v48;
      sub_22BE23490(v8, v13 + v45, &qword_27D9092A0, &unk_22C294AC0);
      v102 = v23;
      v50 = *(v23 + 16);
      v49 = *(v23 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_22BE70544(v49 > 1, v50 + 1, 1);
        v23 = v102;
      }

      ++v24;
      *(v23 + 16) = v50 + 1;
      sub_22C1CEB4C(v13, v23 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v50, type metadata accessor for ContextProtoSurroundingText);
      v22 = v85;
      v15 = v100;
      if (v85 == v24)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v88 = v15 + 2;
    v86 = v15 + 1;
    v87 = (v81 + 8);
    v51 = v89;
    while (1)
    {
      v52 = *(v90 + 16);
      if (v22 == v52)
      {

        return;
      }

      if (v22 >= v52)
      {
        break;
      }

      v53 = v100;
      v54 = v90 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v100[9] * v22;
      v101 = v23;
      v55 = v100[2];
      v56 = v93;
      v55(v51, v54, v93);
      v57 = v22;
      v58 = v92;
      v55(v92, v51, v56);
      v59 = sub_22C270E84();
      v97 = v60;
      v98 = v59;
      v61 = v91;
      sub_22C270E64();
      sub_22C2709B4();
      v63 = v62;
      sub_22C2709C4();
      v65 = v64;
      sub_22C2709D4();
      v67 = v66;
      sub_22C2709E4();
      v69 = v68;
      v70 = type metadata accessor for ContextProtoBoundingBox(0);
      v71 = &v8[*(v70 + 32)];
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      (*v87)(v61, v96);
      *v8 = v63;
      v8[4] = 0;
      *(v8 + 2) = v65;
      v8[12] = 0;
      *(v8 + 4) = v67;
      v8[20] = 0;
      *(v8 + 6) = v69;
      v8[28] = 0;
      sub_22BE19DC4(v8, 0, 1, v70);
      v72 = v95;
      v73 = *(v95 + 20);
      sub_22BE19DC4(v99 + v73, 1, 1, v70);
      v74 = *(v72 + 24);
      v75 = v99;
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v76 = v53[1];
      v76(v58, v56);
      v76(v51, v56);
      v23 = v101;
      v77 = v97;
      *v75 = v98;
      v75[1] = v77;
      sub_22BE23490(v8, v75 + v73, &qword_27D9092A0, &unk_22C294AC0);
      v102 = v23;
      v79 = *(v23 + 16);
      v78 = *(v23 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_22BE70544(v78 > 1, v79 + 1, 1);
        v23 = v102;
      }

      *(v23 + 16) = v79 + 1;
      sub_22C1CEB4C(v75, v23 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v79, type metadata accessor for ContextProtoSurroundingText);
      v22 = v57 + 1;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t Array<A>.init<A>(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22C0F0608();
  if (v3)
  {
    sub_22BE1BC24(a3);
    v7 = *(v6 + 8);
  }

  else
  {
    sub_22C2735B4();
    sub_22BE17E90();
    swift_getWitnessTable();
    a2 = sub_22C2735C4();
    sub_22BE1BC24(a3);
    v11 = *(v10 + 8);
  }

  v8 = sub_22BE18944();
  v9(v8);
  return a2;
}

uint64_t sub_22C1B3338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1);
  result = (*(a5 + 16))(v15, a3, a5);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

uint64_t Set<>.init(context:)()
{
  swift_getAssociatedTypeWitness();
  sub_22C2735B4();
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  swift_getWitnessTable();
  sub_22C194C60();

  if (!v0)
  {
    sub_22C2735B4();
    sub_22BE17E90();
    swift_getWitnessTable();
    return sub_22C2736A4();
  }

  return result;
}

uint64_t sub_22C1B35D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a1);
  result = (*(a4 + 16))(v14, a3, a4);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t Dictionary<>.init(context:)()
{
  swift_getAssociatedTypeWitness();
  v0 = sub_22C272EB4();

  return v0;
}

uint64_t sub_22C1B37E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v15 - v11;
  (*(v13 + 16))(v15 - v11, a1);
  return (*(a6 + 16))(v12, a4, a6);
}

uint64_t ContextConversion.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22C274154();
  MEMORY[0x2318AC860](v1);
  return sub_22C2741A4();
}

void RetrievedContext.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  a22 = v26;
  a23 = v27;
  v29 = v28;
  v81 = v30;
  v31 = sub_22BE5CE4C(&qword_27D90BF60, &unk_22C294AB0);
  sub_22BE19448(v31);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1A174();
  sub_22BE38A28(v35);
  v36 = sub_22BE5CE4C(&qword_27D9153F0, &unk_22C2CB740);
  sub_22BE19448(v36);
  v38 = *(v37 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE1A174();
  sub_22BE183BC();
  v40 = sub_22C270A04();
  v41 = sub_22BE179D8(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BE17A44();
  v44 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  sub_22BE19448(v44);
  v46 = *(v45 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v47);
  sub_22BE1A174();
  sub_22BE3BF90(v48);
  v49 = sub_22BE5CE4C(&qword_27D9153F8, &unk_22C2CB750);
  sub_22BE19448(v49);
  v51 = *(v50 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v52);
  sub_22BE1A174();
  v53 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v53);
  v55 = *(v54 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v56);
  sub_22BE19E64();
  v57 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v57);
  v59 = *(v58 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v60);
  sub_22BE1B72C();
  v61 = sub_22BE5CE4C(&qword_27D90BF50, &unk_22C2B5ED0);
  sub_22BE19448(v61);
  v63 = *(v62 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v64);
  sub_22BE23E58();
  v65 = sub_22BE5CE4C(&qword_27D915400, &unk_22C2CB760);
  sub_22BE19448(v65);
  v67 = *(v66 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v68);
  sub_22BE1A8B4();
  v69 = type metadata accessor for ContextProtoRetrievedContext(0);
  v70 = &v29[v69[10]];
  v71 = *v70;
  v72 = *(v70 + 1);
  sub_22BE3BB64(&v29[v69[9]], v25, &qword_27D90BF50, &unk_22C2B5ED0);

  sub_22C0FF19C();
  if (v23)
  {
    sub_22BE259EC();
  }

  else
  {
    sub_22BE3BB64(&v29[v69[8]], v24, &qword_27D909128, &qword_22C294AA0);
    sub_22C0FC7A8(v24, v73, v74, v75, v76, v77, v78, v79, v80, v81);
    sub_22BE3BB64(&v29[v69[6]], v83, &qword_27D90BF70, &qword_22C290DC0);
    sub_22C0FF370();
    a13 = *v29;
    ContextType.init(transcript:)(&a13);
    sub_22BE3BB64(&v29[v69[7]], v82, &qword_27D90BF60, &unk_22C294AB0);
    sub_22C0FF574();
    sub_22C270EC4();
    sub_22BE259EC();
  }

  sub_22BE18478();
}

uint64_t ContextType.init(transcript:)(char *a1)
{
  sub_22BE367EC(a1);
  v1 = sub_22C270A04();
  sub_22BE1834C(v1);
  v3 = *(v2 + 104);
  v4 = sub_22BE27C4C();
  return v5(v4);
}

void ContextProtoRetrievedContext.init(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_22BE19130();
  v21 = v20;
  v119 = v22;
  v23 = sub_22BE5CE4C(&qword_27D915400, &unk_22C2CB760);
  sub_22BE19448(v23);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1A174();
  v120 = v27;
  v28 = sub_22BE5CE4C(&qword_27D90BF50, &unk_22C2B5ED0);
  sub_22BE19448(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1A174();
  v124 = v32;
  v33 = sub_22BE5CE4C(&qword_27D9153F0, &unk_22C2CB740);
  sub_22BE19448(v33);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1A174();
  sub_22BE3BF90(v37);
  v38 = sub_22BE5CE4C(&qword_27D90BF60, &unk_22C294AB0);
  sub_22BE19448(v38);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE1A8B4();
  v42 = sub_22C270A04();
  v43 = sub_22BE19448(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22BE179EC();
  v46 = sub_22BE5CE4C(&qword_27D9153F8, &unk_22C2CB750);
  sub_22BE19448(v46);
  v48 = *(v47 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v49);
  sub_22BE234F4();
  v50 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  sub_22BE19448(v50);
  v52 = *(v51 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v53);
  sub_22BE1B72C();
  v54 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v55 = sub_22BE19448(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v58);
  sub_22BE32374();
  v59 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v60 = sub_22BE19448(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22BE183AC();
  v65 = v63 - v64;
  MEMORY[0x28223BE20](v66);
  sub_22BE181E4();
  sub_22C270EE4();
  sub_22C105684(v19, v67, v68, v69, v70, v71, v72, v73, v112, v114);
  if (v14)
  {
    v74 = sub_22C270F24();
    sub_22BE18524(v74);
    (*(v75 + 8))(v21);
  }

  else
  {
    v125 = v65;
    v118 = v15;
    sub_22C270F14();
    sub_22C1B0E9C(v17, v13);
    sub_22C270EF4();
    ContextProtoContextType.init(context:)();
    sub_22C270F04();
    sub_22C1B12DC(v122, v18);
    sub_22C270EE4();
    sub_22C105684(v16, v76, v77, v78, v79, v80, v81, v82, v113, v115);
    sub_22C270EB4();
    sub_22C1B15A4(v120, v124);
    v117 = sub_22C270ED4();
    v123 = v83;
    v84 = type metadata accessor for ContextProtoRetrievedContext(0);
    v116 = v84[5];
    v121 = v18;
    v85 = sub_22C272594();
    sub_22BE1A140();
    sub_22BE19DC4(v86, v87, v88, v85);
    v89 = v84[6];
    type metadata accessor for ContextProtoConfidence(0);
    sub_22BE1A140();
    sub_22BE19DC4(v90, v91, v92, v93);
    v94 = v84[7];
    type metadata accessor for ContextProtoContextMetadata(0);
    sub_22BE1A140();
    sub_22BE19DC4(v95, v96, v97, v98);
    v99 = v84[8];
    sub_22BE1A140();
    sub_22BE19DC4(v100, v101, v102, v85);
    v103 = v84[9];
    type metadata accessor for ContextProtoStructuredContext(0);
    sub_22BE1A140();
    sub_22BE19DC4(v104, v105, v106, v107);
    v108 = v84[11];
    v109 = &v119[v84[10]];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v110 = sub_22C270F24();
    sub_22BE18524(v110);
    (*(v111 + 8))(v21);
    sub_22BE23490(v118, &v119[v116], &qword_27D909128, &qword_22C294AA0);
    sub_22BE23490(v13, &v119[v89], &qword_27D90BF70, &qword_22C290DC0);
    *v119 = a13;
    sub_22BE23490(v121, &v119[v94], &qword_27D90BF60, &unk_22C294AB0);
    sub_22BE23490(v125, &v119[v99], &qword_27D909128, &qword_22C294AA0);
    sub_22BE23490(v124, &v119[v103], &qword_27D90BF50, &unk_22C2B5ED0);
    *v109 = v117;
    v109[1] = v123;
  }

  sub_22BE18478();
}

void ContextProtoContextType.init(context:)()
{
  sub_22BE4111C();
  v0 = sub_22C270A04();
  v1 = sub_22BE179D8(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = sub_22BE18B58(v4, v12);
  v6(v5);
  v7 = sub_22C1CEBF4();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D1EAB8] || v9 == *MEMORY[0x277D1EA58] || v9 == *MEMORY[0x277D1EA78] || v9 == *MEMORY[0x277D1EA90] || v9 == *MEMORY[0x277D1EA60] || v9 == *MEMORY[0x277D1EB10] || v9 == *MEMORY[0x277D1EA98] || v9 == *MEMORY[0x277D1EAA8] || v9 == *MEMORY[0x277D1EAB0] || v9 == *MEMORY[0x277D1EB38] || v9 == *MEMORY[0x277D1EB28] || v9 == *MEMORY[0x277D1EB48] || v9 == *MEMORY[0x277D1EB00] || v9 == *MEMORY[0x277D1EB18] || v9 == *MEMORY[0x277D1EB40] || v9 == *MEMORY[0x277D1EA68] || v9 == *MEMORY[0x277D1EA80] || v9 == *MEMORY[0x277D1EAA0] || v9 == *MEMORY[0x277D1EA88] || v9 == *MEMORY[0x277D1EAD8] || v9 == *MEMORY[0x277D1EA50] || v9 == *MEMORY[0x277D1EAD0] || v9 == *MEMORY[0x277D1EB50] || v9 == *MEMORY[0x277D1EB20] || v9 == *MEMORY[0x277D1EB08] || v9 == *MEMORY[0x277D1EAF8] || v9 == *MEMORY[0x277D1EB30] || v9 == *MEMORY[0x277D1EAE0] || v9 == *MEMORY[0x277D1EAE8] || v9 == *MEMORY[0x277D1EAC0] || v9 == *MEMORY[0x277D1EAC8] || v9 == *MEMORY[0x277D1EA70] || v9 == *MEMORY[0x277D1EAF0])
  {
    v10 = sub_22BE2942C();
    v11(v10);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

void ContextMetadata.init(transcript:)()
{
  sub_22BE19130();
  v3 = v2;
  v81 = v4;
  v5 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  v6 = sub_22BE19448(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  sub_22BE4201C();
  v10 = MEMORY[0x28223BE20](v9);
  sub_22BE2BC40(v10, v11, v12, v13, v14, v15, v16, v17, v77);
  v18 = sub_22BE5CE4C(&qword_27D915408, &qword_22C2CB770);
  sub_22BE19448(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1A174();
  v22 = sub_22BE5CE4C(&qword_27D915410, &unk_22C2CB778);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1A174();
  v26 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  sub_22BE19448(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1A174();
  sub_22BEC07BC(v30);
  v31 = sub_22BE5CE4C(&qword_27D915418, &qword_22C2CB788);
  v32 = sub_22BE19448(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v35);
  sub_22BE19E94();
  v36 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  sub_22BE19448(v36);
  v38 = *(v37 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE2C64C();
  v40 = sub_22BE5CE4C(&qword_27D9153F8, &unk_22C2CB750);
  sub_22BE19448(v40);
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE25CD0();
  v44 = v3[1];
  v45 = v3[2];
  v47 = v3[3];
  v46 = v3[4];
  v48 = type metadata accessor for ContextProtoContextMetadata(0);
  sub_22BE3BB64(v3 + v48[7], v1, &qword_27D90BF70, &qword_22C290DC0);

  sub_22BE37D44();
  sub_22C0FF370();
  if (v0)
  {
    sub_22C1CEBA4();
  }

  else
  {
    sub_22C2709F4();
    sub_22BE1A140();
    sub_22BE19DC4(v49, v50, v51, v52);
    v53 = *v3;

    sub_22C0FA9F4();
    sub_22BE3BB64(v48[8], v83, &qword_27D9092A0, &unk_22C294AC0);
    sub_22C1CF27C();
    sub_22C0FF748();
    v54 = v3 + v48[9];
    v84 = *v54;
    v79 = v54[8];
    v55 = (v3 + v48[10]);
    v56 = v55[1];
    v78 = *v55;
    sub_22C270F74();
    sub_22BE1A140();
    sub_22C18F17C(v57, v58, v59, v60);
    sub_22C271A74();
    sub_22BE1A140();
    sub_22BE19DC4(v61, v62, v63, v64);
    v65 = *(v3 + v48[11]);

    sub_22BE3974C();
    sub_22C270DC4();
    v66 = (v3 + v48[16]);
    v67 = *v66;
    v68 = v66[1];

    sub_22C270D24();
    v69 = (v3 + v48[20]);
    v70 = *v69;
    v71 = v69[1];

    sub_22C270D74();
    sub_22BE3BB64(v3 + v48[17], v82, &qword_27D90BF90, &unk_22C294AD0);
    sub_22BE3E778();
    sub_22C0FF9D0();
    if (v70)
    {
      sub_22C1CEBA4();
      v72 = sub_22C270E04();
      sub_22BE18524(v72);
      (*(v73 + 8))(v81);
    }

    else
    {
      sub_22C270CC4();
      sub_22BE3BB64(v3 + v48[18], v80, &qword_27D90BF90, &unk_22C294AD0);
      sub_22BE3E778();
      sub_22C0FF9D0();
      sub_22C270DA4();
      v74 = v3 + v48[19];
      v75 = *v74;
      v76 = v74[8];
      sub_22C270D04();
      sub_22C1CEBA4();
    }
  }

  sub_22BE22978();
  sub_22BE18478();
}

void ContextProtoContextMetadata.init(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE19130();
  a23 = v29;
  a24 = v30;
  v32 = v31;
  v161 = v33;
  v34 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  v35 = sub_22BE19448(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE17B98();
  sub_22BE4201C();
  MEMORY[0x28223BE20](v38);
  sub_22BE19E94();
  v172 = v39;
  v40 = sub_22BE5CE4C(&qword_27D915408, &qword_22C2CB770);
  sub_22BE19448(v40);
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE1A174();
  v163 = v44;
  v45 = sub_22BE5CE4C(&qword_27D90BFA0, &qword_22C2CB790);
  sub_22BE19448(v45);
  v47 = *(v46 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  sub_22BE1A174();
  v165 = v49;
  v50 = sub_22BE5CE4C(&qword_27D915410, &unk_22C2CB778);
  sub_22BE19448(v50);
  v52 = *(v51 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v53);
  sub_22BE1A174();
  sub_22BEC07BC(v54);
  v55 = sub_22BE5CE4C(&qword_27D915418, &qword_22C2CB788);
  v56 = sub_22BE19448(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BE17B98();
  v168 = v59;
  sub_22BE1B99C();
  v61 = MEMORY[0x28223BE20](v60);
  sub_22C1CEC74(v61, v62, v63, v64, v65, v66, v67, v68, v142);
  v69 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  v70 = sub_22BE19448(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22BE183AC();
  sub_22BE2351C();
  MEMORY[0x28223BE20](v73);
  sub_22BE25A90();
  v74 = sub_22BE5CE4C(&qword_27D9153F8, &unk_22C2CB750);
  sub_22BE19448(v74);
  v76 = *(v75 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v77);
  sub_22BE234F4();
  v78 = sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  sub_22BE19448(v78);
  v80 = *(v79 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v81);
  sub_22BE23E58();
  v82 = sub_22C270DD4();
  v84 = v83;
  sub_22C270CD4();
  sub_22C270DE4();
  sub_22C1B0E9C(v26, v28);
  if (v24)
  {
    v85 = sub_22C270E04();
    sub_22BE18524(v85);
    (*(v86 + 8))(v32);
  }

  else
  {
    v173 = v84;
    v87 = sub_22C270D54();
    sub_22C1B2A8C(v87);
    sub_22C270D34();
    sub_22C1B186C(v170, v25);
    v171 = v25;
    sub_22C270D84();
    a10 = v88;
    v89 = sub_22C270DB4();
    sub_22C1CF270(v89);
    v91 = v90;
    v92 = sub_22C270CA4();
    v93 = sub_22C270DF4();
    sub_22C270CE4();
    sub_22C1B186C(v168, v27);
    v158 = v93;
    v169 = v91;
    sub_22C270C94();
    sub_22C1B1B74(v166, &a14);
    v94 = a14;
    sub_22C270D44();
    sub_22C1B1EAC(v163, v165);
    v167 = v94;
    sub_22C270D14();
    sub_22C270CB4();
    sub_22C1B2184(&v174, v172);
    sub_22C270D94();
    sub_22C1B2184(&v177, v162);
    v155 = v92 & 1;
    v154 = v158 & 1;
    v164 = sub_22C270CF4();
    v159 = v95;
    v157 = sub_22C270D64();
    v156 = v96;
    v97 = type metadata accessor for ContextProtoContextMetadata(0);
    v153 = v97[7];
    type metadata accessor for ContextProtoConfidence(0);
    sub_22BE1A140();
    sub_22BE19DC4(v98, v99, v100, v101);
    v102 = v97[8];
    v103 = type metadata accessor for ContextProtoBoundingBox(0);
    sub_22BE1A140();
    sub_22BE19DC4(v104, v105, v106, v103);
    v147 = v161 + v97[9];
    v149 = (v161 + v97[10]);
    v152 = v97[11];
    v151 = v97[12];
    v150 = v97[13];
    sub_22BE1A140();
    sub_22BE19DC4(v107, v108, v109, v103);
    v148 = v97[14];
    *(v161 + v148) = 6;
    v146 = v97[15];
    type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
    sub_22BE1A140();
    sub_22BE19DC4(v110, v111, v112, v113);
    v114 = v97[17];
    v145 = v161 + v97[16];
    v115 = type metadata accessor for ContextProtoCGRect(0);
    sub_22BE1A140();
    sub_22BE19DC4(v116, v117, v118, v115);
    v144 = v97[18];
    sub_22BE1A140();
    sub_22BE19DC4(v119, v120, v121, v115);
    v122 = v161 + v97[19];
    v143 = v27;
    v123 = (v161 + v97[20]);
    v124 = v161 + v97[21];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v125 = sub_22C270E04();
    sub_22BE18524(v125);
    (*(v126 + 8))(v32);
    v161[1] = v82;
    v161[2] = v173;
    sub_22C1CF148();
    v161[3] = v128;
    v161[4] = v127;
    sub_22BE33BC4(&v179);
    sub_22BE23490(v28, v129, v130, v131);
    sub_22C1CF2AC();
    *v161 = v132;
    sub_22C1CF344(v171, v161 + v102);
    sub_22BE2BCA8();
    *v147 = v133;
    v147[8] = a10 & 1;
    *v149 = v160;
    v149[1] = v169;
    *(v161 + v152) = v155;
    *(v161 + v151) = v154;
    sub_22BE33BC4(&v178);
    sub_22C1CF344(v143, v134);
    *(v161 + v148) = v167;
    sub_22BE33BC4(&v176);
    sub_22BE23490(v165, v135, v136, v137);
    sub_22C1CF130();
    *v139 = v140;
    v139[1] = v138;
    sub_22BE23490(v172, v161 + v114, &qword_27D90BF90, &unk_22C294AD0);
    sub_22BE33BC4(&v175);
    sub_22BE23490(v162, v141, &qword_27D90BF90, &unk_22C294AD0);
    *v122 = v164;
    v122[8] = v159 & 1;
    *v123 = v157;
    v123[1] = v156;
  }

  sub_22BE18478();
}

uint64_t StructuredContext.init(transcript:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v207 = a2;
  v6 = sub_22BE5CE4C(&qword_27D915420, &qword_22C2CB798);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  v198 = v10;
  v11 = sub_22BE5CE4C(&qword_27D915428, &qword_22C2CB7A0);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  sub_22BEC07BC(v15);
  v16 = sub_22BE5CE4C(&qword_27D915430, &qword_22C2CB7A8);
  sub_22BE19448(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1A174();
  v206 = v20;
  sub_22BE183BC();
  v21 = sub_22C2714B4();
  v22 = sub_22BE19448(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE17A44();
  v196 = v25;
  v26 = sub_22BE183BC();
  v27 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(v26);
  v28 = sub_22BE19448(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE17A44();
  v208 = v31;
  sub_22BE183BC();
  v32 = sub_22C271514();
  v33 = sub_22BE19448(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BE17A44();
  v204 = v36;
  v37 = sub_22BE183BC();
  v38 = type metadata accessor for ContextProtoStructedContextAppContext(v37);
  v39 = sub_22BE19448(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BE17A44();
  v203 = v42;
  v43 = sub_22BE183BC();
  v44 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(v43);
  v45 = sub_22BE19448(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE17A44();
  v197 = v48;
  sub_22BE183BC();
  v49 = sub_22C271654();
  v50 = sub_22BE19448(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BE17A44();
  v195 = v53;
  v54 = sub_22BE183BC();
  v55 = type metadata accessor for ContextProtoCGRect(v54);
  v56 = sub_22BE19448(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BE17A44();
  v202 = v59;
  sub_22BE183BC();
  v60 = sub_22C2716B4();
  v61 = sub_22BE19448(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22BE17A44();
  v194 = v64;
  v65 = sub_22BE183BC();
  v201 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(v65);
  v66 = sub_22BE18000(v201);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  sub_22BE17A44();
  v205 = v69;
  sub_22BE183BC();
  v70 = sub_22C271034();
  v71 = sub_22BE19448(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22BE17A44();
  v200 = v74;
  v75 = sub_22BE183BC();
  v76 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(v75);
  v77 = sub_22BE19448(v76);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  sub_22BE179EC();
  v82 = (v81 - v80);
  v83 = sub_22C271594();
  v84 = sub_22BE19448(v83);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  sub_22BE17A44();
  v199 = v87;
  v88 = sub_22BE183BC();
  v89 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(v88);
  v90 = sub_22BE19448(v89);
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  sub_22BE179EC();
  v95 = (v94 - v93);
  v96 = sub_22C271394();
  v97 = sub_22BE19448(v96);
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v97);
  sub_22BE19338();
  v100 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v101 = sub_22BE19448(v100);
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v101);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v104);
  sub_22BE181E4();
  v105 = sub_22BE33B3C();
  v107 = sub_22BE5CE4C(v105, v106);
  v108 = sub_22BE19448(v107);
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v108);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v111);
  v113 = v190 - v112;
  sub_22BE3BB64(a1, v190 - v112, &qword_27D90BFE0, &qword_22C2CB7B0);
  v114 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v115 = sub_22BE3C598();
  sub_22BE1AB5C(v115, v116, v114);
  if (v117)
  {
    sub_22C1B64BC();
    sub_22BE196B4();
    *v118 = 0;
    swift_willThrow();
    sub_22BE18FA4();
LABEL_4:
    sub_22C1CEAFC();
  }

  else
  {
    v193 = a1;
    v119 = sub_22BE3C968();
    sub_22BE3BB64(v119, v120, v121, v122);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v124 = v208;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v154 = sub_22BE19454();
        sub_22C1CEB4C(v154, v155, v156);
        v158 = *v95;
        v157 = v95[1];
        v159 = v95[5];
        v208 = v95[6];
        v161 = v95[3];
        v160 = v95[4];
        v205 = v113;
        v162 = v95[7];
        v163 = v95[8];
        v164 = v95[9];
        v165 = *(v95 + 16);

        sub_22BE33FCC();
        v113 = v205;
        sub_22C271524();
        sub_22C271734();
        sub_22BE18FA4();
        sub_22C1CEAFC();
        goto LABEL_4;
      case 2:
        v138 = sub_22BE19EBC();
        sub_22C1CEB4C(v138, v82, v139);
        v141 = *v82;
        v140 = v82[1];
        v142 = v82[2];
        v143 = v82[3];
        v144 = v82[4];
        v145 = v82[5];

        sub_22BE354D0();
        sub_22C271004();
        sub_22C2716F4();
        sub_22BE18FA4();
        sub_22C1CEAFC();
        sub_22BE379D8();
        goto LABEL_4;
      case 3:
        v146 = sub_22BE19EBC();
        v147 = v205;
        sub_22C1CEB4C(v146, v205, v148);
        v150 = *v147;
        v149 = v147[1];
        v151 = v201;
        v152 = *(v201 + 20);

        v153 = v209;
        sub_22C10479C();
        if (v153)
        {
        }

        else
        {
          CGRect.init(transcript:)();
          v180 = *(v151 + 24);
          v181 = v147 + *(v151 + 28);
          v209 = *v181;
          v182 = v181[8];
          sub_22C10488C();
          LODWORD(v208) = v182;
          StructuredContext.UIMetadata.init(transcript:)();
          sub_22C1CF2D8();
          sub_22C271694();
          sub_22C271744();
        }

        sub_22BE18FA4();
        sub_22C1CEAFC();
        goto LABEL_4;
      case 4:
        v128 = sub_22BE19EBC();
        v129 = v203;
        sub_22C1CEB4C(v128, v203, v130);
        v132 = *v129;
        v131 = *(v129 + 8);
        v133 = *(v129 + 24);
        v134 = *(v129 + 32);
        v135 = *(v129 + 40);
        v136 = *(v129 + 48);
        v137 = *(v129 + 16);

        sub_22BE354D0();
        sub_22C2714D4();
        sub_22C271724();
        sub_22BE18FA4();
        sub_22C1CEAFC();
        goto LABEL_4;
      case 5:
        v205 = v113;
        v166 = sub_22BE19EBC();
        sub_22C1CEB4C(v166, v124, v167);
        v168 = *v124;
        v169 = *(v124 + 8);
        v170 = *(v124 + 24);
        v203 = *(v124 + 16);
        v204 = v168;
        v201 = v169;
        v202 = v170;
        v171 = *(v124 + 40);
        v200 = *(v124 + 32);
        v172 = *(v124 + 48);
        v173 = *(v124 + 56);
        v174 = *(v124 + 64);
        v175 = *(v124 + 72);
        v176 = *(v124 + 80);
        v177 = *(v124 + 88);
        v178 = *(v124 + 89);
        v179 = v209;
        sub_22C0FEBA0();
        if (!v179)
        {
          v191 = v177;
          v192 = v176;
          LODWORD(v194) = v175;
          v195 = v174;
          LODWORD(v197) = v173;
          v199 = v172;
          v209 = v171;
          v183 = *(v124 + 90);
          sub_22C0FECD0();
          v184 = *(v124 + 91);
          sub_22C0FEDDC();
          v186 = *(v124 + 104);
          sub_22C1CEFB0(*(v124 + 96));
          v187 = *(v124 + 120);
          v190[1] = *(v124 + 112);
          v188 = *(v124 + 136);
          sub_22BE41EA0(*(v124 + 128));
          v189 = *(v124 + 152);
          sub_22C1CEFD4(*(v124 + 144));

          sub_22BE2BCA8();
          sub_22BE3974C();
          sub_22C1CF2AC();
          sub_22C2713E4();
          sub_22C271714();
        }

        sub_22BE18FA4();
        sub_22C1CEAFC();
        sub_22BE29160();
        sub_22C1CEAFC();
        v113 = v205;
        break;
      default:
        sub_22BE3C190();
        v125 = sub_22BE3CC34();
        sub_22C1CEB4C(v125, v126, v127);
        sub_22C1CEAA4(v3, v4, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
        sub_22BE37D44();
        StructuredContext.SiriRequestContext.init(transcript:)();
        if (!v2)
        {
          sub_22C271704();
        }

        sub_22BE18FA4();
        sub_22C1CEAFC();
        sub_22BE268E8();
        goto LABEL_4;
    }
  }

  return sub_22BE233E8(v113, &qword_27D90BFE0, &qword_22C2CB7B0);
}

unint64_t sub_22C1B64BC()
{
  result = qword_27D915438;
  if (!qword_27D915438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D915438);
  }

  return result;
}

void StructuredContext.SiriRequestContext.init(transcript:)()
{
  sub_22BE19130();
  v198 = v1;
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D915440, &qword_22C2CB7B8);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v10 = sub_22BE18950(v9);
  v11 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(v10);
  v12 = sub_22BE17A18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  v185 = v15;
  sub_22BE183BC();
  v184 = sub_22C2712D4();
  v16 = sub_22BE179D8(v184);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE17A44();
  sub_22BE190A8(v19);
  v20 = sub_22BE5CE4C(&qword_27D90C000, &qword_22C2CB7C0);
  v21 = sub_22BE19448(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v24);
  sub_22BE255B8();
  MEMORY[0x28223BE20](v25);
  sub_22BE41674();
  v27 = MEMORY[0x28223BE20](v26);
  sub_22C1CECC4(v27, v28, v29, v30, v31, v32, v33, v34, v149);
  MEMORY[0x28223BE20](v35);
  sub_22BE19490();
  v182 = v36;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v37);
  sub_22BE19E94();
  v181 = v38;
  v39 = sub_22BE5CE4C(&qword_27D915448, &unk_22C2CB7C8);
  sub_22BE19448(v39);
  v41 = *(v40 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE1A174();
  sub_22BE190A8(v43);
  v44 = sub_22BE5CE4C(&qword_27D90C010, &dword_22C294AF0);
  v45 = sub_22BE19448(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v48);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v49);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v50);
  sub_22BE19E94();
  sub_22BE190A8(v51);
  v52 = sub_22BE5CE4C(&qword_27D915450, &qword_22C2CB7D8);
  sub_22BE19448(v52);
  v54 = *(v53 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v55);
  sub_22BE1A174();
  sub_22BE190A8(v56);
  v57 = sub_22BE5CE4C(&qword_27D915458, &unk_22C2CB7E0);
  sub_22BE19448(v57);
  v59 = *(v58 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v60);
  sub_22BE1A174();
  v61 = sub_22BE5CE4C(&qword_27D90C020, &qword_22C290DF8);
  v62 = sub_22BE19448(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22BE17B98();
  sub_22BE3BF80();
  MEMORY[0x28223BE20](v65);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v66);
  sub_22BE25A90();
  v67 = sub_22BE5CE4C(&qword_27D915460, &unk_22C2CB7F0);
  sub_22BE19448(v67);
  v69 = *(v68 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v70);
  sub_22BE1A174();
  sub_22BE190A8(v71);
  v72 = v4[3];
  v172 = v4[2];
  v171 = v4[4];
  v180 = v4[5];
  v73 = v4[7];
  v170 = v4[6];
  v74 = v4[9];
  v169 = v4[8];
  v168 = *(v4 + 80);
  v167 = *(v4 + 81);
  v166 = *(v4 + 82);
  v165 = *(v4 + 83);
  v164 = *(v4 + 84);
  v75 = *v4;
  v76 = v4[1];
  v178 = v4;
  v179 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v77 = v179[15];
  sub_22BE3BB64(v4 + v77, v2, &qword_27D90C020, &qword_22C290DF8);
  v78 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  v79 = sub_22BE2BA98();
  sub_22BE1AB5C(v79, v80, v78);
  if (v81)
  {

    sub_22BE233E8(v2, &qword_27D90C020, &qword_22C290DF8);
  }

  else
  {
    v82 = v2[1];
    v173 = *v2;

    sub_22BE1B808();
    sub_22C1CEAFC();
  }

  v83 = v178;
  sub_22BE3BB64(v178 + v77, v0, &qword_27D90C020, &qword_22C290DF8);
  sub_22BE1AB5C(v0, 1, v78);
  if (v81)
  {
    sub_22BE233E8(v0, &qword_27D90C020, &qword_22C290DF8);
  }

  else
  {
    v84 = *(v0 + 16);
    sub_22BE1B808();
    sub_22C1CEAFC();
  }

  sub_22BE3BB64(v178 + v77, v194, &qword_27D90C020, &qword_22C290DF8);
  v85 = sub_22BE391E8();
  sub_22BE1AB5C(v85, v86, v78);
  if (v81)
  {
    sub_22BE233E8(v194, &qword_27D90C020, &qword_22C290DF8);
  }

  else
  {
    v87 = *(v194 + 17);
    sub_22BE1B808();
    sub_22C1CEAFC();
  }

  sub_22C0FEF24();
  if (v198)
  {
    sub_22BE268E8();
    sub_22C1CEAFC();
  }

  else
  {
    sub_22C271214();
    sub_22C271234();
    sub_22BE187DC();
    sub_22BE19DC4(v88, v89, v90, v91);
    v92 = (v178 + v179[16]);
    v93 = *v92;
    v94 = v92[1];
    v95 = (v178 + v179[17]);
    v96 = v95[1];
    v156 = *v95;
    v97 = v179[19];
    v98 = (v178 + v179[18]);
    v99 = v98[1];
    v155 = *v98;
    sub_22BE3BB64(v178 + v97, v174, &qword_27D90C010, &dword_22C294AF0);
    v100 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
    v101 = sub_22BE3C598();
    sub_22BE1AB5C(v101, v102, v100);
    if (v81)
    {
      sub_22BF1C1E4(v93, v94);

      sub_22BE233E8(v174, &qword_27D90C010, &dword_22C294AF0);
    }

    else
    {
      v199 = *v174;
      v196 = *(v174 + 4);
      sub_22BF1C1E4(v93, v94);

      sub_22BE28A58();
      sub_22C1CEAFC();
    }

    sub_22BE3BB64(v178 + v97, v175, &qword_27D90C010, &dword_22C294AF0);
    sub_22BE1AB5C(v175, 1, v100);
    if (v81)
    {
      sub_22BE233E8(v175, &qword_27D90C010, &dword_22C294AF0);
    }

    else
    {
      v103 = *(v175 + 8);
      v104 = *(v175 + 16);

      sub_22BE28A58();
      sub_22C1CEAFC();
    }

    sub_22BE3BB64(v178 + v97, v176, &qword_27D90C010, &dword_22C294AF0);
    sub_22BE1AB5C(v176, 1, v100);
    if (v81)
    {
      sub_22BE233E8(v176, &qword_27D90C010, &dword_22C294AF0);
    }

    else
    {
      v105 = *(v176 + 24);
      v106 = *(v176 + 28);
      sub_22BE28A58();
      sub_22C1CEAFC();
    }

    sub_22BE3BB64(v178 + v97, v177, &qword_27D90C010, &dword_22C294AF0);
    v107 = sub_22BE391E8();
    sub_22BE1AB5C(v107, v108, v100);
    if (v81)
    {
      sub_22BE233E8(v177, &qword_27D90C010, &dword_22C294AF0);
    }

    else
    {
      v109 = *(v177 + 32);
      v110 = *(v177 + 36);
      sub_22BE28A58();
      sub_22C1CEAFC();
    }

    sub_22C271134();
    sub_22C271174();
    sub_22BE187DC();
    sub_22BE19DC4(v111, v112, v113, v114);
    v115 = v179[21];
    v116 = (v178 + v179[20]);
    v154 = *v116;
    v153 = *(v116 + 8);
    v117 = *(v178 + v115 + 8);
    v152 = *(v178 + v115);
    v151 = *(v178 + v179[22]);
    v150 = *(v178 + v179[23]);
    v118 = v179[24];
    sub_22BE3BB64(v178 + v118, v181, &qword_27D90C000, &qword_22C2CB7C0);
    type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
    sub_22BE181B0(v181);
    if (v81)
    {

      sub_22BE233E8(v181, &qword_27D90C000, &qword_22C2CB7C0);
    }

    else
    {
      v119 = *(v181 + 16);
      sub_22C1CEFD4(*(v181 + 8));

      sub_22BE1BBB0();
      sub_22C1CEAFC();
    }

    sub_22BE3BB64(v178 + v118, v182, &qword_27D90C000, &qword_22C2CB7C0);
    sub_22BE181B0(v182);
    if (v81)
    {
      sub_22BE233E8(v182, &qword_27D90C000, &qword_22C2CB7C0);
    }

    else
    {
      v162 = *(v182 + 24);
      v161 = *(v182 + 32);

      sub_22BE1BBB0();
      sub_22C1CEAFC();
    }

    sub_22BE3BB64(v178 + v118, v186, &qword_27D90C000, &qword_22C2CB7C0);
    sub_22BE181B0(v186);
    if (v81)
    {
      sub_22BE233E8(v186, &qword_27D90C000, &qword_22C2CB7C0);
    }

    else
    {
      v160 = *(v186 + 40);
      v159 = *(v186 + 48);

      sub_22BE1BBB0();
      sub_22C1CEAFC();
    }

    sub_22BE3BB64(v178 + v118, v188, &qword_27D90C000, &qword_22C2CB7C0);
    sub_22BE181B0(v188);
    if (v81)
    {
      sub_22BE233E8(v188, &qword_27D90C000, &qword_22C2CB7C0);
    }

    else
    {
      v120 = *(v188 + 56);
      v158 = *(v188 + 64);

      sub_22BE1BBB0();
      sub_22C1CEAFC();
    }

    sub_22BE3BB64(v178 + v118, v190, &qword_27D90C000, &qword_22C2CB7C0);
    sub_22BE181B0(v190);
    if (v81)
    {
      sub_22BE233E8(v190, &qword_27D90C000, &qword_22C2CB7C0);
    }

    else
    {
      v121 = *(v190 + 72);
      v157 = *(v190 + 80);

      sub_22BE1BBB0();
      sub_22C1CEAFC();
    }

    sub_22C1CF2A0();
    sub_22BE3BB64(v178 + v118, v192, &qword_27D90C000, &qword_22C2CB7C0);
    sub_22BE181B0(v192);
    if (v81)
    {
      sub_22BE233E8(v192, &qword_27D90C000, &qword_22C2CB7C0);
    }

    else
    {
      v122 = *v192;

      sub_22BE1BBB0();
      sub_22C1CEAFC();
      v123 = *(v122 + 16);
      if (v123)
      {
        v200 = *(v122 + 16);
        v201 = MEMORY[0x277D84F90];
        sub_22BE71C8C(0, v123, 0);
        v124 = v201;
        sub_22BE25AD8();
        v126 = v122 + v125;
        v183 = *(v127 + 72);
        do
        {
          v197 = v124;
          sub_22C1CEAA4(v126, v185, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);
          v128 = v185[1];
          v129 = v185[3];
          v193 = v185[2];
          v195 = *v185;
          v130 = v185[5];
          v131 = v185[7];
          v189 = v185[6];
          v191 = v185[4];
          v132 = v185[9];
          v187 = v185[8];
          v134 = v185[10];
          v133 = v185[11];

          v124 = v197;
          sub_22C271294();
          sub_22C1CEAFC();
          sub_22C1CF084();
          if (v136)
          {
            sub_22BE1AAE4(v135);
            sub_22C1CF294();
            sub_22BE71C8C(v140, v141, v142);
            v124 = v197;
          }

          *(v124 + 16) = v134;
          sub_22BE197A0();
          (*(v139 + 32))(v137 + v138 * v133, v163, v184);
          v126 += v183;
          --v200;
        }

        while (v200);

        v83 = v178;
        sub_22C1CF2A0();
      }

      else
      {
      }
    }

    sub_22C271314();
    sub_22C271334();
    sub_22BE187DC();
    sub_22BE19DC4(v143, v144, v145, v146);
    v147 = *(v83 + v179[25]);
    sub_22C0FF03C();
    v148 = *(v83 + v179[26]);
    sub_22BE32C24();
    sub_22C1CF130();
    sub_22C1CF148();
    sub_22C271374();
    sub_22BE268E8();
    sub_22C1CEAFC();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void CGRect.init(transcript:)()
{
  v5 = sub_22BE17BC4();
  v6 = type metadata accessor for ContextProtoCGSize(v5);
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v10);
  sub_22BE26800();
  v11 = type metadata accessor for ContextProtoCGPoint(0);
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE18928();
  MEMORY[0x28223BE20](v15);
  sub_22BE1C17C();
  sub_22C10200C();
  if (v0)
  {
    sub_22BE3C42C();
    sub_22C1CEAFC();
  }

  else
  {
    v16 = *v4;
    sub_22BE3CA6C();
    sub_22C1CEAFC();
    sub_22C10200C();
    v17 = *(v3 + 8);
    sub_22BE3CA6C();
    sub_22C1CEAFC();
    v18 = *(type metadata accessor for ContextProtoCGRect(0) + 20);
    sub_22C1020FC();
    v19 = *v2;
    sub_22C1CEDDC();
    sub_22C1CEAFC();
    sub_22C1020FC();
    sub_22BE3C42C();
    sub_22C1CEAFC();
    v20 = *(v1 + 8);
    sub_22C1CEDDC();
    sub_22C1CEAFC();
  }

  sub_22C1CF2D8();
}

uint64_t StructuredContext.UIMetadata.init(transcript:)()
{
  v1 = sub_22BE1B254();
  v2 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(v1);
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE1BC40();
  v6 = sub_22C271624();
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE19338();
  sub_22C1021EC();
  if (!v0)
  {
    StructuredContext.UIMetadata.Window.init(transcript:)();
    sub_22C271634();
  }

  return sub_22C1CEAFC();
}

void ContextProtoStructuredContext.init(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE19130();
  a23 = v30;
  a24 = v31;
  v33 = v32;
  v335 = v34;
  v35 = sub_22BE5CE4C(&qword_27D915420, &qword_22C2CB798);
  sub_22BE19448(v35);
  v37 = *(v36 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  sub_22BE1A174();
  sub_22BE190A8(v39);
  v40 = sub_22BE5CE4C(&qword_27D915428, &qword_22C2CB7A0);
  sub_22BE19448(v40);
  v42 = *(v41 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v43);
  sub_22BE1A174();
  v303 = v44;
  v45 = sub_22BE5CE4C(&qword_27D915430, &qword_22C2CB7A8);
  sub_22BE19448(v45);
  v47 = *(v46 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v48);
  sub_22BE1A174();
  v310 = v49;
  sub_22BE183BC();
  v321 = sub_22C2714B4();
  v50 = sub_22BE179D8(v321);
  v313 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BE17A44();
  v312 = v54;
  sub_22BE183BC();
  v299 = sub_22C271514();
  v55 = sub_22BE179D8(v299);
  v298 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22BE17A44();
  sub_22BE18950(v59);
  v60 = sub_22C271654();
  v61 = sub_22BE19448(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22BE17A44();
  sub_22BE190A8(v64);
  v65 = sub_22BE5CE4C(&qword_27D90C078, &unk_22C294B00);
  sub_22BE19448(v65);
  v67 = *(v66 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v68);
  sub_22BE1A174();
  v301 = v69;
  v70 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  sub_22BE19448(v70);
  v72 = *(v71 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v73);
  sub_22BE1A174();
  v307 = v74;
  sub_22BE183BC();
  v75 = sub_22C2716B4();
  v76 = sub_22BE179D8(v75);
  v308 = v77;
  v309 = v76;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v76);
  sub_22BE17A44();
  v305 = v80;
  sub_22BE183BC();
  v81 = sub_22C271034();
  v82 = sub_22BE179D8(v81);
  v316 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v82);
  sub_22BE17A44();
  sub_22BE183BC();
  v86 = sub_22C271594();
  v87 = sub_22BE179D8(v86);
  v323 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v87);
  sub_22BE179EC();
  sub_22BE22DB8();
  v91 = sub_22C271394();
  v92 = sub_22BE179D8(v91);
  v329 = v93;
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v92);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v96);
  sub_22BE32374();
  v97 = sub_22BE5CE4C(&qword_27D915468, &qword_22C2CB800);
  v98 = sub_22BE19448(v97);
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v98);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v101);
  sub_22BE26800();
  v334 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v102 = sub_22BE18000(v334);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v105);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v106);
  sub_22BE2017C();
  v108 = MEMORY[0x28223BE20](v107);
  sub_22BE355FC(v108, v109, v110, v111, v112, v113, v114, v115, v291);
  v116 = v33;
  sub_22C2716D4();
  v117 = sub_22C2716C4();
  sub_22BE181B0(v26);
  if (!v118)
  {
    v295 = v116;
    v294 = v26;
    v123 = sub_22BE291B0();
    sub_22BE3BB64(v123, v124, v125, v126);
    v127 = *(v117 - 8);
    v128 = *(v127 + 88);
    v129 = sub_22BE19454();
    v131 = v130(v129);
    if (v131 == *MEMORY[0x277D1F080])
    {
      v132 = sub_22C1CECDC();
      v133(v132);
      v134 = *(v329 + 32);
      v135 = sub_22BE3C968();
      v136(v135);
      (*(v329 + 16))(v29, v28, v91);
      ContextProtoStructuredContextSiriRequestContext.init(context:)(v29, v137, v138, v139, v140, v141, v142, v143, v292, v293);
      if (v24)
      {
        v144 = sub_22C2716E4();
        sub_22BE18524(v144);
        v146 = *(v145 + 8);
        v147 = sub_22BE3C9D0();
        v148(v147);
        (*(v329 + 8))(v28, v91);
LABEL_7:
        v122 = v294;
        goto LABEL_8;
      }

      (*(v329 + 8))(v28, v91);
      sub_22BE36390();
      swift_storeEnumTagMultiPayload();
      sub_22BE33AEC();
      v186 = v25;
LABEL_15:
      sub_22C1CEB4C(v186, v336, v185);
      goto LABEL_16;
    }

    if (v131 == *MEMORY[0x277D1F0A0])
    {
      v149 = sub_22C1CECDC();
      v150(v149);
      v151 = *(v323 + 32);
      v152 = sub_22BE39EAC();
      v153(v152);
      v154 = sub_22C271534();
      v319 = v155;
      v322 = v154;
      v330 = sub_22C271584();
      v317 = v156;
      v314 = sub_22C271554();
      v158 = v157;
      v159 = sub_22C271564();
      v161 = v160;
      v162 = sub_22C271544();
      v163 = sub_22C271574();
      v164 = v336 + *(type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0) + 40);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v165 = *(v323 + 8);
      v166 = sub_22BE1AEE4();
      v167(v166);
      *v336 = v322;
      *(v336 + 8) = v319;
      *(v336 + 40) = v317;
      *(v336 + 48) = v314;
      *(v336 + 56) = v158;
      *(v336 + 64) = v159;
      *(v336 + 72) = v161;
      *(v336 + 16) = v162 & 1;
      v127 = v334;
      *(v336 + 24) = v163;
      *(v336 + 32) = v330;
LABEL_13:
      swift_storeEnumTagMultiPayload();
      goto LABEL_16;
    }

    if (v131 == *MEMORY[0x277D1F078])
    {
      v168 = sub_22C1CECDC();
      v169(v168);
      v170 = *(v316 + 32);
      v171 = sub_22BE18944();
      v172(v171);
      v331 = sub_22C271014();
      v174 = v173;
      v175 = sub_22C270FF4();
      v177 = v176;
      v178 = sub_22C271024();
      v180 = v179;
      v181 = v336 + *(type metadata accessor for ContextProtoStructedContextAppInFocusContext(0) + 28);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v182 = *(v316 + 8);
      v183 = sub_22BE27A44();
      v184(v183);
      v127 = v334;
      *v336 = v331;
      *(v336 + 8) = v174;
      *(v336 + 16) = v175;
      *(v336 + 24) = v177;
      *(v336 + 32) = v178;
      *(v336 + 40) = v180;
      goto LABEL_13;
    }

    if (v131 == *MEMORY[0x277D1F088])
    {
      v200 = sub_22C1CECDC();
      v201(v200);
      sub_22BE47DF4();
      v202 = sub_22BE18944();
      v203(v202);
      v324 = sub_22C2713F4();
      v326 = v204;
      v320 = sub_22C271444();
      v332 = v205;
      v315 = sub_22C271424();
      v207 = v206;
      v318 = sub_22C271454();
      v209 = v208;
      v210 = sub_22C271464();
      v212 = v211;
      v213 = sub_22C271474();
      v215 = v214;
      sub_22C271414();
      sub_22C1B04BC(v310, &a14);
      if (v24)
      {

        v216 = sub_22C2716E4();
        sub_22BE18524(v216);
        v218 = *(v217 + 8);
        v219 = sub_22BE3C9D0();
        v220(v219);
        (*(v313 + 8))(v312, v321);
        goto LABEL_7;
      }

      v311 = v210;
      v337 = v209;
      v255 = a14;
      sub_22C2714A4();
      sub_22C1B0810(v303, &a13);
      v306 = v255;
      v263 = a13;
      sub_22BE236D4(&a19);
      sub_22C271404();
      sub_22C1B0B10(v303, &a12);
      v304 = a12;
      v281 = sub_22C271484();
      v300 = v282;
      v302 = v281;
      sub_22C271494();
      v283 = sub_22C271434();
      sub_22C1CF270(v283);
      sub_22C2713A4();
      *(v296 + 89) = 1031;
      *(v296 + 91) = 9;
      v284 = v296 + *(type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0) + 68);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v127 = v313 + 8;
      (*(v313 + 8))(v312, v321);
      *v296 = v324;
      *(v296 + 8) = v326;
      *(v296 + 16) = v320;
      *(v296 + 24) = v332;
      *(v296 + 32) = v315;
      *(v296 + 40) = v207;
      *(v296 + 48) = v318;
      *(v296 + 56) = v337 & 1;
      *(v296 + 64) = v311;
      *(v296 + 72) = v212 & 1;
      *(v296 + 80) = v213;
      *(v296 + 88) = v215 & 1;
      *(v296 + 89) = v306;
      *(v296 + 90) = v263;
      *(v296 + 91) = v304;
      *(v296 + 96) = v302;
      *(v296 + 104) = v300;
      sub_22C1CF148();
      *(v296 + 112) = v286;
      *(v296 + 120) = v285;
      sub_22BE2BCA8();
      *(v296 + 128) = v288;
      *(v296 + 136) = v287;
      sub_22C1CF130();
      *(v296 + 144) = v290;
      *(v296 + 152) = v289;
      sub_22BE36390();
      swift_storeEnumTagMultiPayload();
      sub_22BE33AEC();
      v186 = v296;
      goto LABEL_15;
    }

    if (v131 == *MEMORY[0x277D1F098])
    {
      v221 = sub_22C1CECDC();
      v222(v221);
      v223 = *(v308 + 32);
      v224 = sub_22BE18944();
      v225(v224);
      v226 = sub_22C2716A4();
      v228 = v227;
      sub_22C271674();
      ContextProtoCGRect.init(context:)(v307, v229, v230, v231, v232);
      if (v24)
      {

        v233 = sub_22C2716E4();
        sub_22BE18524(v233);
        v235 = *(v234 + 8);
        v236 = sub_22BE3C9D0();
        v237(v236);
        v238 = *(v308 + 8);
        v239 = sub_22BE1B73C();
        v240(v239);
        goto LABEL_7;
      }

      v259 = type metadata accessor for ContextProtoCGRect(0);
      v260 = sub_22BE360A0();
      sub_22BE19DC4(v260, v261, v262, v259);
      sub_22C271664();
      ContextProtoStructuredContextOnScreenUITextUIMetadata.init(context:)();
      v264 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
      sub_22BE187DC();
      sub_22BE19DC4(v265, v266, v267, v264);
      v328 = sub_22C271684();
      v325 = v268;
      v269 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
      v270 = v269[5];
      sub_22BE1A140();
      sub_22BE19DC4(v271, v272, v273, v259);
      v127 = v269[6];
      sub_22BE28D2C();
      sub_22BE19DC4(v274, v275, v276, v277);
      v278 = v269[8];
      v279 = v297 + v269[7];
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      (*(v308 + 8))(v305, v309);
      *v297 = v226;
      v297[1] = v228;
      sub_22BE23490(v307, v297 + v270, &qword_27D90BF90, &unk_22C294AD0);
      sub_22BE23490(v301, v297 + v127, &qword_27D90C078, &unk_22C294B00);
      *v279 = v328;
      v279[8] = v325 & 1;
      sub_22BE36390();
      swift_storeEnumTagMultiPayload();
      sub_22BE33AEC();
      sub_22C1CEB4C(v297, v336, v280);
LABEL_16:
      sub_22BE233E8(v294, &qword_27D915468, &qword_22C2CB800);
      sub_22BE1A140();
      v190 = sub_22C18F17C(v187, v188, v189, v127);
      v191 = v335 + *(type metadata accessor for ContextProtoStructuredContext(v190) + 20);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v192 = sub_22C2716E4();
      sub_22BE18524(v192);
      (*(v193 + 8))(v295);
      sub_22BE233E8(v335, &qword_27D90BFE0, &qword_22C2CB7B0);
      sub_22BE33AEC();
      v194 = sub_22BE33BE8();
      sub_22C1CEB4C(v194, v195, v196);
      sub_22BE187DC();
      sub_22BE19DC4(v197, v198, v199, v127);
      goto LABEL_17;
    }

    if (v131 == *MEMORY[0x277D1F090])
    {
      v241 = sub_22C1CECDC();
      v242(v241);
      v243 = *(v298 + 32);
      v244 = sub_22BE18944();
      v245(v244);
      v246 = sub_22C2714E4();
      v327 = v247;
      v333 = v246;
      v248 = sub_22C2714C4();
      v127 = v249;
      sub_22C2714F4();
      sub_22C1CF16C();
      v250 = sub_22C271504();
      v251 = v336 + *(type metadata accessor for ContextProtoStructedContextAppContext(0) + 32);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v252 = *(v298 + 8);
      v253 = sub_22BE261AC();
      v254(v253);
      *v336 = v333;
      *(v336 + 8) = v327;
      *(v336 + 24) = v248;
      *(v336 + 32) = v127;
      *(v336 + 40) = v27;
      *(v336 + 48) = v91;
      *(v336 + 16) = v250 & 1;
      sub_22BE36390();
      goto LABEL_13;
    }

    v256 = *(v127 + 8);
    v257 = sub_22BE19454();
    v258(v257);
    v26 = v294;
  }

  sub_22C1B64BC();
  sub_22BE196B4();
  *v119 = 0;
  swift_willThrow();
  v120 = sub_22C2716E4();
  sub_22BE18524(v120);
  (*(v121 + 8))(v116);
  v122 = v26;
LABEL_8:
  sub_22BE233E8(v122, &qword_27D915468, &qword_22C2CB800);
LABEL_17:
  sub_22BE18478();
}

void ContextProtoStructuredContextSiriRequestContext.init(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v16 = v15;
  sub_22BE36638(v17);
  v18 = sub_22C2712D4();
  v335 = sub_22BE179D8(v18);
  v336 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v335);
  sub_22BE17A44();
  v22 = sub_22BE183BC();
  v23 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(v22);
  v334 = sub_22BE179D8(v23);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v334);
  sub_22BE17A44();
  sub_22BE190A8(v26);
  v27 = sub_22BE5CE4C(&qword_27D915448, &unk_22C2CB7C8);
  v28 = sub_22BE19448(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  v360 = v31;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v32);
  sub_22C1CECB0();
  MEMORY[0x28223BE20](v33);
  sub_22BE19490();
  v354 = v34;
  sub_22BE1B99C();
  v36 = MEMORY[0x28223BE20](v35);
  sub_22BE23730(v36, v37, v38, v39, v40, v41, v42, v43, v281);
  MEMORY[0x28223BE20](v44);
  sub_22BE409D8();
  MEMORY[0x28223BE20](v45);
  sub_22BE19E94();
  v345 = v46;
  v47 = sub_22BE5CE4C(&qword_27D90C000, &qword_22C2CB7C0);
  sub_22BE19448(v47);
  v49 = *(v48 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  sub_22BE1A174();
  sub_22BE190A8(v51);
  v52 = sub_22BE5CE4C(&qword_27D915450, &qword_22C2CB7D8);
  v53 = sub_22BE19448(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22BE17B98();
  v342 = v56;
  sub_22BE1B99C();
  v58 = MEMORY[0x28223BE20](v57);
  sub_22C1CECC4(v58, v59, v60, v61, v62, v63, v64, v65, v282);
  MEMORY[0x28223BE20](v66);
  sub_22BE19490();
  v337 = v67;
  sub_22BE1B99C();
  v69 = MEMORY[0x28223BE20](v68);
  sub_22BE2BC40(v69, v70, v71, v72, v73, v74, v75, v76, v283);
  v77 = sub_22BE5CE4C(&qword_27D90C010, &dword_22C294AF0);
  sub_22BE19448(v77);
  v79 = *(v78 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v80);
  sub_22BE1A174();
  v326 = v81;
  v82 = sub_22BE5CE4C(&qword_27D915458, &unk_22C2CB7E0);
  sub_22BE19448(v82);
  v84 = *(v83 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v85);
  sub_22BE1A174();
  sub_22BE18950(v86);
  v329 = sub_22C2711F4();
  v87 = sub_22BE179D8(v329);
  v89 = v88;
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v87);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v92);
  sub_22BE19E94();
  v328 = v93;
  v94 = sub_22BE5CE4C(&qword_27D915460, &unk_22C2CB7F0);
  v95 = sub_22BE19448(v94);
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  sub_22BE17B98();
  v99 = v98;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v100);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v101);
  sub_22BE1C17C();
  v102 = sub_22BE5CE4C(&qword_27D90C020, &qword_22C290DF8);
  sub_22BE19448(v102);
  v104 = *(v103 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v105);
  sub_22BE1A174();
  sub_22BE190A8(v106);
  v107 = sub_22BE5CE4C(&qword_27D915440, &qword_22C2CB7B8);
  sub_22BE19448(v107);
  v109 = *(v108 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v110);
  sub_22BE19E64();
  v111 = sub_22C271074();
  v112 = sub_22BE179D8(v111);
  v114 = v113;
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v112);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v117);
  sub_22BE26800();
  v327 = v16;
  sub_22C271094();
  v118 = sub_22BE2BA98();
  sub_22BE1AB5C(v118, v119, v111);
  if (v120)
  {
    sub_22BE233E8(v12, &qword_27D915440, &qword_22C2CB7B8);
    v121 = 12;
  }

  else
  {
    v122 = *(v114 + 32);
    v123 = sub_22BE25C08();
    v124(v123);
    (*(v114 + 16))(v10, v13, v111);
    ContextProtoStructuredContextSiriRequestContextDeviceIdiom.init(context:)();
    if (v11)
    {
      v125 = sub_22C271394();
      sub_22BE18524(v125);
      (*(v126 + 8))(v16);
      v127 = *(v114 + 8);
      v128 = sub_22BE1B18C();
      v129(v128);
LABEL_68:
      sub_22BE22978();
      sub_22BE18478();
      return;
    }

    v130 = *(v114 + 8);
    v131 = sub_22BE1B18C();
    v132(v131);
    v121 = v362;
  }

  v318 = v121;
  sub_22C271384();
  v317 = sub_22C271364();
  v316 = v133;
  v315 = sub_22C2710A4();
  v314 = v134;
  v313 = sub_22C2710E4();
  v312 = v135;
  v311 = sub_22C271054();
  v310 = sub_22C2710B4();
  v309 = sub_22C2711C4();
  v308 = sub_22C2711A4();
  v307 = sub_22C2711B4();
  v306 = sub_22C271184();
  v305 = MEMORY[0x2318A97C0]();
  sub_22C2710F4();
  v136 = sub_22C271234();
  sub_22BE1AB5C(v14, 1, v136);
  if (v120)
  {
    sub_22BE233E8(v14, &qword_27D915460, &unk_22C2CB7F0);
    v304 = 0;
    v302 = 0;
  }

  else
  {
    v304 = sub_22C271224();
    v302 = v137;
    sub_22BE1BC24(v136);
    v139 = *(v138 + 8);
    v140 = sub_22BE196A8();
    v141(v140);
  }

  sub_22C2710F4();
  sub_22BE1AB5C(v319, 1, v136);
  if (v120)
  {
    sub_22BE233E8(v319, &qword_27D915460, &unk_22C2CB7F0);
    v142 = 2;
  }

  else
  {
    v142 = sub_22C2711E4();
    sub_22BE1BC24(v136);
    (*(v143 + 8))(v144, v136);
  }

  sub_22C2710F4();
  v145 = sub_22BE1AEA8(v99, 1, v136);
  v146 = MEMORY[0x277D1EF50];
  if (v145 == 1)
  {
    sub_22BE233E8(v99, &qword_27D915460, &unk_22C2CB7F0);
    sub_22BE1A140();
    v147 = v329;
    sub_22BE19DC4(v148, v149, v150, v329);
  }

  else
  {
    sub_22C271204();
    sub_22BE1BC24(v136);
    (*(v151 + 8))(v99, v136);
    v152 = sub_22BE2BA98();
    v147 = v329;
    sub_22BE1AB5C(v152, v153, v329);
    if (!v120)
    {
      v154 = v328;
      (*(v89 + 32))(v328, v320, v329);
      LODWORD(v146) = *v146;
      goto LABEL_19;
    }
  }

  v146 = *v146;
  v154 = v328;
  (*(v89 + 104))(v328, v146, v147);
  sub_22BE181B0(v320);
  if (!v120)
  {
    sub_22BE233E8(v320, &qword_27D915458, &unk_22C2CB7E0);
  }

LABEL_19:
  sub_22BE29400();
  sub_22C1CF288();
  v155();
  v156 = *(v89 + 88);
  v157 = sub_22BE3C5E4();
  v159 = v158(v157);
  if (v159 == v146)
  {
    v160 = 0;
    goto LABEL_29;
  }

  if (v159 == *MEMORY[0x277D1EF58])
  {
    v160 = 1;
    goto LABEL_29;
  }

  if (v159 == *MEMORY[0x277D1EF60])
  {
    v160 = 2;
    goto LABEL_29;
  }

  if (v159 == *MEMORY[0x277D1EF48])
  {
    v160 = 3;
    goto LABEL_29;
  }

  if (v159 == *MEMORY[0x277D1EF68])
  {
    v160 = 4;
LABEL_29:
    v161 = *(v89 + 8);
    v162 = sub_22BE35838();
    v163(v162);
    *(v325 + 17) = 5;
    v164 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
    v165 = v325 + *(v164 + 28);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v325 = v304;
    *(v325 + 8) = v302;
    *(v325 + 16) = v142;
    *(v325 + 17) = v160;
    sub_22BE187DC();
    v300 = v164;
    sub_22BE19DC4(v166, v167, v168, v164);
    v322 = sub_22C271104();
    v321 = v169;
    sub_22C271084();
    v303 = sub_22C271064();
    v301 = v170;
    sub_22C271194();
    v171 = sub_22C271174();
    sub_22BE19FE0(v332);
    if (v120)
    {
      sub_22BE233E8(v332, &qword_27D915450, &qword_22C2CB7D8);
      v173 = 0;
      LOBYTE(v330) = 1;
    }

    else
    {
      v172 = sub_22C271144();
      v173 = v172;
      v330 = HIDWORD(v172) & 1;
      sub_22BE3A288();
      (*(v174 + 8))(v332, v171);
    }

    sub_22C271194();
    sub_22BE19FE0(v337);
    if (v120)
    {
      sub_22BE233E8(v337, &qword_27D915450, &qword_22C2CB7D8);
      v154 = 0;
      v142 = 0;
    }

    else
    {
      sub_22C271164();
      sub_22C1CF16C();
      sub_22BE3A288();
      v176 = *(v175 + 8);
      v177 = sub_22BE29454();
      v178(v177);
    }

    sub_22C271194();
    sub_22BE19FE0(v339);
    if (v120)
    {
      sub_22BE233E8(v339, &qword_27D915450, &qword_22C2CB7D8);
      v180 = 0;
      LOBYTE(v181) = 1;
    }

    else
    {
      v179 = sub_22C271154();
      v180 = v179;
      v181 = HIDWORD(v179) & 1;
      sub_22BE3A288();
      (*(v182 + 8))(v183, v171);
    }

    sub_22C271194();
    sub_22BE19FE0(v342);
    if (v120)
    {
      sub_22BE233E8(v342, &qword_27D915450, &qword_22C2CB7D8);
      v185 = 0;
      LOBYTE(v186) = 1;
    }

    else
    {
      v184 = sub_22C271124();
      v185 = v184;
      v186 = HIDWORD(v184) & 1;
      sub_22BE3A288();
      (*(v187 + 8))();
    }

    v188 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
    v189 = v326 + *(v188 + 32);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    *v326 = v173;
    *(v326 + 4) = v330;
    *(v326 + 8) = v154;
    *(v326 + 16) = v142;
    *(v326 + 24) = v180;
    *(v326 + 28) = v181;
    *(v326 + 32) = v185;
    *(v326 + 36) = v186;
    sub_22BE187DC();
    v293 = v188;
    sub_22BE19DC4(v190, v191, v192, v188);
    v193 = v327;
    v299 = sub_22C271354();
    v298 = v194;
    v297 = sub_22C271114();
    v296 = v195;
    v295 = sub_22C2711D4();
    v294 = sub_22C2710D4();
    sub_22C271344();
    v196 = sub_22C271334();
    sub_22BE19FE0(v345);
    if (v120)
    {
      sub_22BE233E8(v345, &qword_27D915448, &unk_22C2CB7C8);
      v292 = 0;
      v291 = 0;
    }

    else
    {
      v292 = sub_22C271324();
      v291 = v197;
      sub_22BE3A288();
      (*(v198 + 8))(v345, v196);
    }

    sub_22C271344();
    sub_22BE19FE0(v348);
    if (v120)
    {
      sub_22BE233E8(v348, &qword_27D915448, &unk_22C2CB7C8);
      v202 = 0;
      v290 = 0;
    }

    else
    {
      sub_22C271254();
      v290 = v199;
      sub_22BE3A288();
      v202 = v201;
      (*(v200 + 8))(v348, v196);
    }

    sub_22C271344();
    sub_22BE19FE0(v351);
    if (v120)
    {
      sub_22BE233E8(v351, &qword_27D915448, &unk_22C2CB7C8);
      v289 = 0;
      v288 = 0;
    }

    else
    {
      v289 = sub_22C271244();
      v288 = v203;
      sub_22BE3A288();
      (*(v204 + 8))(v351, v196);
    }

    sub_22C271344();
    sub_22BE19FE0(v354);
    if (v120)
    {
      sub_22BE233E8(v354, &qword_27D915448, &unk_22C2CB7C8);
      v208 = 0;
      v287 = 0;
    }

    else
    {
      sub_22C2712F4();
      v287 = v205;
      sub_22BE3A288();
      v208 = v207;
      (*(v206 + 8))(v354, v196);
    }

    sub_22C271344();
    sub_22BE19FE0(v357);
    if (v120)
    {
      sub_22BE233E8(v357, &qword_27D915448, &unk_22C2CB7C8);
      v212 = 0;
      v286 = 0;
    }

    else
    {
      sub_22C2712E4();
      v286 = v209;
      sub_22BE3A288();
      v212 = v211;
      (*(v210 + 8))(v357, v196);
    }

    sub_22C271344();
    v213 = sub_22BE19FE0(v360);
    if (v120)
    {
      sub_22BE233E8(v360, &qword_27D915448, &unk_22C2CB7C8);
    }

    else
    {
      v214 = MEMORY[0x2318A9A00](v213);
      sub_22BE3A288();
      (*(v215 + 8))(v360, v196);
      v216 = *(v214 + 16);
      if (v216)
      {
        v284 = v208;
        sub_22BE3122C(MEMORY[0x277D84F90]);
        sub_22BE34198();
        sub_22BE704EC(v217, v218, v219);
        v220 = a10;
        v333 = *(v336 + 16);
        v221 = *(v336 + 80);
        sub_22BE19E14();
        v223 = v214 + v222;
        v331 = *(v224 + 56);
        do
        {
          v358 = v216;
          v225 = sub_22BE18944();
          v333(v225);
          v226 = sub_22C2712A4();
          v352 = v227;
          v355 = v226;
          v228 = sub_22C2712C4();
          v346 = v229;
          v349 = v228;
          v230 = sub_22C271284();
          v340 = v231;
          v343 = v230;
          v338 = sub_22C2712B4();
          v233 = v232;
          v234 = sub_22C271264();
          v236 = v235;
          v237 = sub_22C271274();
          v239 = v238;
          v240 = v285 + *(v334 + 40);
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          v241 = sub_22BE2BD4C();
          v242(v241, v335);
          v285[2] = v349;
          v285[3] = v346;
          v285[4] = v343;
          v285[5] = v340;
          v285[6] = v338;
          v285[7] = v233;
          v285[8] = v234;
          v285[9] = v236;
          v285[10] = v237;
          v285[11] = v239;
          v244 = *(a10 + 16);
          v243 = *(a10 + 24);
          *v285 = v355;
          v285[1] = v352;
          if (v244 >= v243 >> 1)
          {
            sub_22BE3D1E4(v243);
            sub_22C1CF294();
            sub_22BE704EC(v247, v248, v249);
          }

          *(a10 + 16) = v244 + 1;
          sub_22BE197A0();
          sub_22C1CEB4C(v285, v245 + v246 * v244, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress);
          v223 += v331;
          v216 = v358 - 1;
        }

        while (v358 != 1);

        v193 = v327;
        v208 = v284;
        goto LABEL_67;
      }
    }

    v220 = MEMORY[0x277D84F90];
LABEL_67:
    v250 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
    v251 = v323 + *(v250 + 40);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v323[2] = v291;
    v323[3] = v202;
    v323[4] = v290;
    v323[5] = v289;
    v323[6] = v288;
    v323[7] = v208;
    v323[8] = v287;
    v323[9] = v212;
    v323[10] = v286;
    *v323 = v220;
    v323[1] = v292;
    sub_22BE187DC();
    sub_22BE19DC4(v252, v253, v254, v250);
    v361 = sub_22C271044();
    v255 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
    v256 = v255[15];
    sub_22BE1A140();
    sub_22BE19DC4(v257, v258, v259, v300);
    v260 = v324 + v255[16];
    *v260 = xmmword_22C28E6A0;
    v261 = (v324 + v255[17]);
    v262 = (v324 + v255[18]);
    v347 = v255[19];
    sub_22BE1A140();
    sub_22BE19DC4(v263, v264, v265, v293);
    v341 = v324 + v255[20];
    v344 = (v324 + v255[21]);
    v353 = v255[23];
    v356 = v255[22];
    v359 = v255[24];
    sub_22BE1A140();
    sub_22BE19DC4(v266, v267, v268, v250);
    v269 = v255[25];
    *(v324 + v269) = 12;
    v270 = v255[27];
    v350 = v255[26];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v271 = sub_22C271394();
    sub_22BE18524(v271);
    (*(v272 + 8))(v193);
    sub_22C1CF130();
    *(v324 + 16) = v274;
    *(v324 + 24) = v273;
    *(v324 + 32) = v317;
    *(v324 + 40) = v316;
    *(v324 + 48) = v315;
    *(v324 + 56) = v314;
    *(v324 + 64) = v313;
    *(v324 + 72) = v312;
    *(v324 + 80) = v311;
    *(v324 + 81) = v310;
    *(v324 + 82) = v309;
    *(v324 + 83) = v308;
    *(v324 + 84) = v307;
    *v324 = v306;
    *(v324 + 8) = v305;
    v275 = sub_22C1CEFC8();
    sub_22BE23490(v275, v276, v277, v278);
    sub_22BF158B4(*v260, *(v260 + 8));
    *v260 = v322;
    *(v260 + 8) = v321;
    sub_22BE32C24();
    *v261 = v280;
    v261[1] = v279;
    *v262 = v303;
    v262[1] = v301;
    sub_22BE23490(v326, v324 + v347, &qword_27D90C010, &dword_22C294AF0);
    *v341 = v299;
    *(v341 + 8) = v298 & 1;
    *v344 = v297;
    v344[1] = v296;
    *(v324 + v356) = v295;
    *(v324 + v353) = v294;
    sub_22BE23490(v323, v324 + v359, &qword_27D90C000, &qword_22C2CB7C0);
    *(v324 + v269) = v318;
    *(v324 + v350) = v361;
    goto LABEL_68;
  }

  sub_22C274004();
  __break(1u);
}

uint64_t ContextProtoCGRect.init(context:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v13 = sub_22BE5CE4C(&qword_27D90C0B0, &qword_22C290E20);
  sub_22BE19448(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE35AE8();
  v17 = sub_22BE1AEE4();
  v19 = sub_22BE5CE4C(v17, v18);
  sub_22BE19448(v19);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  v23 = sub_22BE3A208();
  v24 = type metadata accessor for ContextProtoCGPoint(v23);
  v25 = v7 + *(v24 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v7 = a2;
  v7[1] = a3;
  v26 = sub_22BE360A0();
  sub_22BE19DC4(v26, v27, v28, v24);
  v45.origin.x = a2;
  v45.origin.y = a3;
  v45.size.width = a4;
  v45.size.height = a5;
  Height = CGRectGetHeight(v45);
  v30 = type metadata accessor for ContextProtoCGSize(0);
  sub_22C1CF2CC(v30);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v6 = a4;
  *(v6 + 8) = Height;
  sub_22BE187DC();
  sub_22BE19DC4(v31, v32, v33, v5);
  sub_22BE1A140();
  v37 = sub_22C18F17C(v34, v35, v36, v24);
  v38 = type metadata accessor for ContextProtoCGRect(v37);
  v39 = *(v38 + 20);
  sub_22BE1A140();
  sub_22BE19DC4(v40, v41, v42, v5);
  v43 = a1 + *(v38 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE23490(v7, a1, &qword_27D90C0C0, &unk_22C294B10);
  return sub_22BE23490(v6, a1 + v39, &qword_27D90C0B0, &qword_22C290E20);
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadata.init(context:)()
{
  sub_22BE1B254();
  v3 = sub_22C271624();
  v4 = sub_22BE19448(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v7 = sub_22BE5CE4C(&qword_27D90C090, &qword_22C290E10);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE25CD0();
  sub_22C271644();
  ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.init(context:)();
  if (v2)
  {
    v11 = sub_22C271654();
    sub_22BE18524(v11);
    return (*(v12 + 8))(v1);
  }

  else
  {
    v14 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
    sub_22BE187DC();
    sub_22BE19DC4(v15, v16, v17, v14);
    sub_22BE1A140();
    v21 = sub_22C18F17C(v18, v19, v20, v14);
    v22 = v0 + *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(v21) + 20);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v23 = sub_22C271654();
    sub_22BE18524(v23);
    (*(v24 + 8))(v1);
    v25 = sub_22BE200D4();
    return sub_22BE23490(v25, v26, v27, v28);
  }
}

void StructuredContext.NowPlayingMediaItemContext.init(transcript:)()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D915420, &qword_22C2CB798);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A174();
  v7 = sub_22BE5CE4C(&qword_27D915428, &qword_22C2CB7A0);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A8B4();
  v11 = sub_22BE5CE4C(&qword_27D915430, &qword_22C2CB7A8);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE19E64();
  v32 = v2[2];
  v33 = *v2;
  v34 = v2[3];
  v35 = v2[1];
  v15 = v2[4];
  v16 = v2[5];
  v17 = v2[6];
  v18 = *(v2 + 56);
  v19 = v2[8];
  v20 = *(v2 + 72);
  v21 = *(v2 + 89);
  sub_22C0FEBA0();
  if (!v0)
  {
    v22 = *(v2 + 90);
    sub_22C0FECD0();
    v23 = *(v2 + 91);
    sub_22C0FEDDC();
    v24 = v2[13];
    v25 = v2[15];
    v30 = v2[14];
    v31 = v2[12];
    v26 = v2[17];
    v27 = v2[19];
    v28 = v2[18];
    v29 = v2[16];

    sub_22C2713E4();
  }

  sub_22BE29160();
  sub_22C1CEAFC();
  sub_22BE19650();
  sub_22BE18478();
}

void ContextProtoStructedContextNowPlayingMediaItem.init(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_22BE19130();
  a24 = v28;
  a25 = v29;
  v31 = v30;
  v83 = v32;
  v33 = sub_22BE5CE4C(&qword_27D915420, &qword_22C2CB798);
  sub_22BE19448(v33);
  v35 = *(v34 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1A174();
  v84 = v37;
  v38 = sub_22BE5CE4C(&qword_27D915428, &qword_22C2CB7A0);
  sub_22BE19448(v38);
  v40 = *(v39 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE1A8B4();
  v42 = sub_22BE5CE4C(&qword_27D915430, &qword_22C2CB7A8);
  sub_22BE19448(v42);
  v44 = *(v43 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE23E58();
  v86 = sub_22C2713F4();
  v88 = v46;
  v82 = sub_22C271444();
  v89 = v47;
  v81 = sub_22C271424();
  v87 = v48;
  v49 = sub_22C271454();
  v51 = v50;
  v52 = sub_22C271464();
  v54 = v53;
  v55 = sub_22C271474();
  v57 = v56;
  sub_22C271414();
  sub_22C1B04BC(v27, &a15);
  if (v25)
  {
    v60 = sub_22C2714B4();
    sub_22BE18524(v60);
    (*(v61 + 8))(v31);
  }

  else
  {
    a10 = v51;
    v58 = a15;
    sub_22C2714A4();
    sub_22C1B0810(v26, &a14);
    v59 = a14;
    sub_22C271404();
    sub_22C1B0B10(v84, &a13);
    v85 = a13;
    v62 = sub_22C271484();
    v79 = v63;
    v80 = v62;
    v64 = sub_22C271494();
    v77 = v65;
    v78 = v64;
    v66 = sub_22C271434();
    v75 = v67;
    v76 = v66;
    v68 = sub_22C2713A4();
    v73 = v69;
    v74 = v68;
    *(v83 + 89) = 1031;
    *(v83 + 91) = 9;
    v70 = v83 + *(type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0) + 68);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v71 = sub_22C2714B4();
    sub_22BE18524(v71);
    (*(v72 + 8))(v31);
    *v83 = v86;
    *(v83 + 8) = v88;
    *(v83 + 16) = v82;
    *(v83 + 24) = v89;
    *(v83 + 32) = v81;
    *(v83 + 40) = v87;
    *(v83 + 48) = v49;
    *(v83 + 56) = a10 & 1;
    *(v83 + 64) = v52;
    *(v83 + 72) = v54 & 1;
    *(v83 + 80) = v55;
    *(v83 + 88) = v57 & 1;
    *(v83 + 89) = v58;
    *(v83 + 90) = v59;
    *(v83 + 91) = v85;
    *(v83 + 96) = v80;
    *(v83 + 104) = v79;
    *(v83 + 112) = v78;
    *(v83 + 120) = v77;
    *(v83 + 128) = v76;
    *(v83 + 136) = v75;
    *(v83 + 144) = v74;
    *(v83 + 152) = v73;
  }

  sub_22BE18478();
}