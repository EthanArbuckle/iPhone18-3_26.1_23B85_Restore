uint64_t sub_24DC8E7F8()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v7 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = *(v2 + 416);

    v5 = sub_24DC8FC78;
  }

  else
  {
    v5 = sub_24DC8E914;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24DC8E914()
{
  v124 = v0;
  v1 = v0[48];
  v2 = v0[47];
  v3 = v0[43];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[40];
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v9 = *(v0[44] + 16);
  v9(v3, v0[49], v5);
  v116 = v7;
  v9(v3 + v7, v1, v5);
  v113 = v8;
  v9(v3 + v8, v2, v5);
  v10 = *(v6 - 8);
  v11 = *(v10 + 48);
  v117 = v3;
  if (v11(v3, 1, v6) == 1)
  {
    v12 = v0[52];

LABEL_10:
    v98 = v0[55];
    v102 = v0[50];
    v33 = v0[49];
    v81 = v0[48];
    v83 = v0[47];
    v34 = v0[44];
    v35 = v0[41];
    v106 = v0[34];
    v110 = v0[51];
    v88 = v0[33];
    v91 = v0[32];
    v94 = v0[31];
    v122 = *sub_24DC41378();
    v118 = 0;
    v119 = 0xE000000000000000;
    sub_24DCB54D4();
    MEMORY[0x253035590](0xD00000000000007CLL, 0x800000024DCC5AE0);
    sub_24DCB5754();
    v36 = *(v34 + 72);
    v37 = *(v34 + 80);
    swift_allocObject();
    v38 = sub_24DCB4FA4();
    v40 = v39;
    v9(v39, v33, v35);
    v9(v40 + v36, v81, v35);
    v9(v40 + 2 * v36, v83, v35);
    sub_24DCB50A4();
    v0[30] = v38;
    swift_getWitnessTable();
    sub_24DCB5794();

    MEMORY[0x253035590](8750, 0xE200000000000000);
    sub_24DC31044();
    RPCError.init(code:message:metadata:cause:)(&v122, v118, v119, &v123, 0, &v118);
    v41 = type metadata accessor for StreamingClientResponse();
    (*(*(v41 - 8) + 8))(v91, v41);
    v25 = *(v34 + 8);
    v25(v83, v35);
    v25(v81, v35);
    v25(v33, v35);
    (*(*(v98 - 8) + 8))(v0 + 15);
    (*(*(v102 - 8) + 8))(v0 + 9);
    v42 = v119;
    v43 = v121;
    v44 = v120;
    *v94 = v118;
    *(v94 + 8) = v42;
    *(v94 + 16) = v44;
    *(v94 + 32) = v43;
    sub_24DCB5904();
    swift_storeEnumTagMultiPayload();
    v45 = v117;
    v25(v117 + v113, v35);
    goto LABEL_11;
  }

  v13 = v0[40];
  v9(v0[46], v0[43], v0[41]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = v0[52];
    v15 = v0[46];
    v16 = v0[40];

    (*(v10 + 8))(v15, v16);
    if (v11(v3 + v116, 1, v16) != 1 || v11(v3 + v113, 1, v0[40]) != 1)
    {
      goto LABEL_10;
    }

    v17 = v0[55];
    v18 = v0[50];
    v101 = v0[48];
    v105 = v0[49];
    v97 = v0[47];
    v19 = v0[44];
    v20 = v0[41];
    v21 = v0[33];
    v109 = v0[34];
    v114 = v0[51];
    v22 = v0[31];
    v23 = v0[32];
    v122 = *sub_24DC4136C();
    sub_24DC31044();
    RPCError.init(code:message:metadata:cause:)(&v122, 0xD00000000000002FLL, 0x800000024DCC5B60, &v123, 0, &v118);
    v24 = type metadata accessor for StreamingClientResponse();
    (*(*(v24 - 8) + 8))(v23, v24);
    v25 = *(v19 + 8);
    v25(v97, v20);
    v25(v101, v20);
    v25(v105, v20);
    (*(*(v17 - 8) + 8))(v0 + 15, v17);
    (*(*(v18 - 8) + 8))(v0 + 9, v18);
    v26 = v119;
    v27 = v121;
    v28 = v120;
    *v22 = v118;
    *(v22 + 8) = v26;
    *(v22 + 16) = v28;
    *(v22 + 32) = v27;
    sub_24DCB5904();
    goto LABEL_17;
  }

  if (v11(v3 + v116, 1, v0[40]) == 1)
  {
    v29 = v0[52];
    v30 = v0[46];
    v31 = v0[37];
    v32 = v0[33];
    goto LABEL_9;
  }

  v9(v0[45], v3 + v116, v0[41]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = *v0[45];
    if (v11(v117 + v113, 1, v0[40]) == 1)
    {
      v60 = v0[52];
      v92 = v0[49];
      v95 = v0[55];
      v86 = v0[47];
      v89 = v0[48];
      v61 = v0[44];
      v62 = v0[41];
      v63 = v0[38];
      v64 = v0[39];
      v65 = v0[36];
      v66 = v0[37];
      v103 = v0[50];
      v107 = v0[35];
      v111 = v0[34];
      v115 = v0[51];
      v67 = v0[33];
      v84 = v0[32];
      v99 = v0[31];
      (*(v66 + 32))(v64, v0[46], v67);
      v123 = v60;
      (*(v66 + 16))(v63, v64, v67);
      v118 = v59;
      ClientResponse.Contents.init(metadata:message:trailingMetadata:)(&v123, v63, &v118, v67, v65);
      v68 = type metadata accessor for StreamingClientResponse();
      (*(*(v68 - 8) + 8))(v84, v68);
      (*(v66 + 8))(v64, v67);
      v25 = *(v61 + 8);
      v25(v86, v62);
      v25(v89, v62);
      v25(v92, v62);
      (*(*(v95 - 8) + 8))(v0 + 15);
      (*(*(v103 - 8) + 8))(v0 + 9);
      (*(v107 + 32))(v99, v65, v111);
      sub_24DCB5904();
LABEL_17:
      swift_storeEnumTagMultiPayload();
      v45 = v117;
      goto LABEL_11;
    }

    v80 = v0[52];
    v30 = v0[46];
    v31 = v0[37];
    v32 = v0[33];

LABEL_9:

    (*(v31 + 8))(v30, v32);
    goto LABEL_10;
  }

  v69 = v0[55];
  v70 = v0[52];
  v85 = v0[48];
  v87 = v0[49];
  v82 = v0[47];
  v112 = v0[46];
  v71 = v0[44];
  v108 = v0[45];
  v72 = v0[41];
  v100 = v0[51];
  v104 = v0[40];
  v73 = v0[37];
  v93 = v0[50];
  v96 = v0[34];
  v90 = v0[33];
  v74 = v0[31];
  v75 = v0[32];

  v122 = *sub_24DC4136C();
  sub_24DC31044();
  RPCError.init(code:message:metadata:cause:)(&v122, 0xD0000000000000C6, 0x800000024DCC5B90, &v123, 0, &v118);
  v76 = type metadata accessor for StreamingClientResponse();
  (*(*(v76 - 8) + 8))(v75, v76);
  v25 = *(v71 + 8);
  v25(v82, v72);
  v25(v85, v72);
  v25(v87, v72);
  (*(*(v69 - 8) + 8))(v0 + 15, v69);
  (*(*(v93 - 8) + 8))(v0 + 9);
  v77 = v119;
  v78 = v121;
  v79 = v120;
  *v74 = v118;
  *(v74 + 8) = v77;
  *(v74 + 16) = v79;
  *(v74 + 32) = v78;
  sub_24DCB5904();
  v45 = v117;
  swift_storeEnumTagMultiPayload();
  (*(v10 + 8))(v108, v104);
  (*(v73 + 8))(v112, v90);
  v25(v117 + v113, v72);
LABEL_11:
  v46 = v0[43];
  v47 = v0[41];
  v25(v45 + v116, v47);
  v25(v46, v47);
  v49 = v0[48];
  v48 = v0[49];
  v51 = v0[46];
  v50 = v0[47];
  v52 = v0[45];
  v53 = v0[43];
  v55 = v0[38];
  v54 = v0[39];
  v56 = v0[36];

  v57 = v0[1];

  return v57();
}

uint64_t sub_24DC8F4B0()
{
  v45 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 424);
  (*(*(*(v0 + 440) - 8) + 8))(v0 + 120);
  *(v0 + 224) = v1;
  MEMORY[0x2530363C0](v1);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 400);
    v3 = *(v0 + 408);
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    MEMORY[0x2530363B0](v1);
    v9 = *(v0 + 160);
    v10 = *(v0 + 168);
    v11 = *(v0 + 192);
    v40 = *(v0 + 72);
    v41[0] = v9;
    v42 = v10;
    v43 = *(v0 + 176);
    v44 = v11;

    ClientResponse.Contents.init(metadata:error:)(&v40, v41, v7);
    v12 = type metadata accessor for StreamingClientResponse();
    (*(*(v12 - 8) + 8))(v8, v12);
    (*(*(v4 - 8) + 8))(v0 + 72, v4);
    sub_24DCB5904();
    swift_storeEnumTagMultiPayload();
    MEMORY[0x2530363B0](*(v0 + 224));
  }

  else
  {
    v13 = *(v0 + 400);
    v14 = *(v0 + 264);
    v37 = *(v0 + 272);
    v38 = *(v0 + 408);
    v15 = *(v0 + 248);
    v36 = *(v0 + 256);
    MEMORY[0x2530363B0](*(v0 + 224));
    v39 = *sub_24DC412F4();
    swift_getErrorValue();
    v16 = *(v0 + 200);
    v17 = *(*(v0 + 208) - 8);
    v18 = *(v17 + 64) + 15;
    swift_task_alloc();
    (*(v17 + 16))();
    v19 = sub_24DCB4DC4();
    v21 = v20;

    sub_24DC31044();
    RPCError.init(code:message:metadata:cause:)(&v39, v19, v21, &v40, 0, v41);
    MEMORY[0x2530363B0](v1);
    v22 = type metadata accessor for StreamingClientResponse();
    (*(*(v22 - 8) + 8))(v36, v22);
    (*(*(v13 - 8) + 8))(v0 + 72, v13);
    v23 = v42;
    v24 = v44;
    *v15 = v41[0];
    *(v15 + 8) = v23;
    *(v15 + 16) = v43;
    *(v15 + 32) = v24;
    sub_24DCB5904();
    swift_storeEnumTagMultiPayload();
  }

  v26 = *(v0 + 384);
  v25 = *(v0 + 392);
  v28 = *(v0 + 368);
  v27 = *(v0 + 376);
  v29 = *(v0 + 360);
  v30 = *(v0 + 344);
  v32 = *(v0 + 304);
  v31 = *(v0 + 312);
  v33 = *(v0 + 288);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_24DC8F884()
{
  v45 = v0;
  (*(*(v0 + 352) + 8))(*(v0 + 392), *(v0 + 328));
  v1 = *(v0 + 464);
  v2 = *(v0 + 424);
  (*(*(*(v0 + 440) - 8) + 8))(v0 + 120);
  *(v0 + 224) = v1;
  MEMORY[0x2530363C0](v1);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 400);
    v3 = *(v0 + 408);
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    MEMORY[0x2530363B0](v1);
    v9 = *(v0 + 160);
    v10 = *(v0 + 168);
    v11 = *(v0 + 192);
    v40 = *(v0 + 72);
    v41[0] = v9;
    v42 = v10;
    v43 = *(v0 + 176);
    v44 = v11;

    ClientResponse.Contents.init(metadata:error:)(&v40, v41, v7);
    v12 = type metadata accessor for StreamingClientResponse();
    (*(*(v12 - 8) + 8))(v8, v12);
    (*(*(v4 - 8) + 8))(v0 + 72, v4);
    sub_24DCB5904();
    swift_storeEnumTagMultiPayload();
    MEMORY[0x2530363B0](*(v0 + 224));
  }

  else
  {
    v13 = *(v0 + 400);
    v14 = *(v0 + 264);
    v37 = *(v0 + 272);
    v38 = *(v0 + 408);
    v15 = *(v0 + 248);
    v36 = *(v0 + 256);
    MEMORY[0x2530363B0](*(v0 + 224));
    v39 = *sub_24DC412F4();
    swift_getErrorValue();
    v16 = *(v0 + 200);
    v17 = *(*(v0 + 208) - 8);
    v18 = *(v17 + 64) + 15;
    swift_task_alloc();
    (*(v17 + 16))();
    v19 = sub_24DCB4DC4();
    v21 = v20;

    sub_24DC31044();
    RPCError.init(code:message:metadata:cause:)(&v39, v19, v21, &v40, 0, v41);
    MEMORY[0x2530363B0](v1);
    v22 = type metadata accessor for StreamingClientResponse();
    (*(*(v22 - 8) + 8))(v36, v22);
    (*(*(v13 - 8) + 8))(v0 + 72, v13);
    v23 = v42;
    v24 = v44;
    *v15 = v41[0];
    *(v15 + 8) = v23;
    *(v15 + 16) = v43;
    *(v15 + 32) = v24;
    sub_24DCB5904();
    swift_storeEnumTagMultiPayload();
  }

  v26 = *(v0 + 384);
  v25 = *(v0 + 392);
  v28 = *(v0 + 368);
  v27 = *(v0 + 376);
  v29 = *(v0 + 360);
  v30 = *(v0 + 344);
  v32 = *(v0 + 304);
  v31 = *(v0 + 312);
  v33 = *(v0 + 288);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_24DC8FC78()
{
  v48 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 328);
  v3 = *(*(v0 + 352) + 8);
  v3(*(v0 + 384), v2);
  v3(v1, v2);
  v4 = *(v0 + 480);
  v5 = *(v0 + 424);
  (*(*(*(v0 + 440) - 8) + 8))(v0 + 120);
  *(v0 + 224) = v4;
  MEMORY[0x2530363C0](v4);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 400);
    v6 = *(v0 + 408);
    v9 = *(v0 + 264);
    v8 = *(v0 + 272);
    v10 = *(v0 + 248);
    v11 = *(v0 + 256);
    MEMORY[0x2530363B0](v4);
    v12 = *(v0 + 160);
    v13 = *(v0 + 168);
    v14 = *(v0 + 192);
    v43 = *(v0 + 72);
    v44[0] = v12;
    v45 = v13;
    v46 = *(v0 + 176);
    v47 = v14;

    ClientResponse.Contents.init(metadata:error:)(&v43, v44, v10);
    v15 = type metadata accessor for StreamingClientResponse();
    (*(*(v15 - 8) + 8))(v11, v15);
    (*(*(v7 - 8) + 8))(v0 + 72, v7);
    sub_24DCB5904();
    swift_storeEnumTagMultiPayload();
    MEMORY[0x2530363B0](*(v0 + 224));
  }

  else
  {
    v16 = *(v0 + 400);
    v17 = *(v0 + 264);
    v40 = *(v0 + 272);
    v41 = *(v0 + 408);
    v18 = *(v0 + 248);
    v39 = *(v0 + 256);
    MEMORY[0x2530363B0](*(v0 + 224));
    v42 = *sub_24DC412F4();
    swift_getErrorValue();
    v19 = *(v0 + 200);
    v20 = *(*(v0 + 208) - 8);
    v21 = *(v20 + 64) + 15;
    swift_task_alloc();
    (*(v20 + 16))();
    v22 = sub_24DCB4DC4();
    v24 = v23;

    sub_24DC31044();
    RPCError.init(code:message:metadata:cause:)(&v42, v22, v24, &v43, 0, v44);
    MEMORY[0x2530363B0](v4);
    v25 = type metadata accessor for StreamingClientResponse();
    (*(*(v25 - 8) + 8))(v39, v25);
    (*(*(v16 - 8) + 8))(v0 + 72, v16);
    v26 = v45;
    v27 = v47;
    *v18 = v44[0];
    *(v18 + 8) = v26;
    *(v18 + 16) = v46;
    *(v18 + 32) = v27;
    sub_24DCB5904();
    swift_storeEnumTagMultiPayload();
  }

  v29 = *(v0 + 384);
  v28 = *(v0 + 392);
  v31 = *(v0 + 368);
  v30 = *(v0 + 376);
  v32 = *(v0 + 360);
  v33 = *(v0 + 344);
  v35 = *(v0 + 304);
  v34 = *(v0 + 312);
  v36 = *(v0 + 288);

  v37 = *(v0 + 8);

  return v37();
}

void sub_24DC90084(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StreamingClientResponse.Contents.BodyPart();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v19 - v9);
  v11 = *a1;
  v12 = *a2;
  v20 = v12;
  v21 = v11;

  RPCError.init(status:metadata:)(&v21, &v20, v22);
  v13 = v23;
  if (v23)
  {
    v15 = v24;
    v14 = v25;
    v17 = v22[0];
    v16 = v22[1];

    *a3 = v17;
    *(a3 + 8) = v16;
    *(a3 + 16) = v13;
    *(a3 + 24) = v15;
    *(a3 + 32) = v14;
  }

  else
  {
    Metadata.init(dictionaryLiteral:)(MEMORY[0x277D84F90]);
    *v10 = v12;
    swift_storeEnumTagMultiPayload();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
    sub_24DC3ED1C(v10, v6, v18, v22);
    (*(v7 + 8))(v10, v6);
    StreamingClientResponse.Contents.init(metadata:bodyParts:)(&v21, v22, a3);
  }

  *(a3 + 48) = v13 != 0;
}

void sub_24DC90220(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a2;
  v20 = a1;
  v23 = a5;
  v8 = *(a3 + 16);
  type metadata accessor for StreamingClientResponse.Contents.BodyPart();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v9 = type metadata accessor for RPCAsyncSequence();
  v10 = type metadata accessor for StreamingClientResponse.Contents.BodyPart();
  swift_getWitnessTable();
  v11 = sub_24DCB5774();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  v15 = type metadata accessor for StreamingClientResponse.Contents();
  sub_24DC2E0D8();
  v16 = sub_24DCB5904();
  (*(*(v16 - 8) + 16))(&v30, v5, v16);
  if (v33)
  {
    LOBYTE(v26) = v30;
    *(&v26 + 1) = *(&v30 + 1);
    v27 = v31;
    *&v28 = v32;
    v29 = 1;
    StreamingClientResponse.init(accepted:)(&v26, v23);
  }

  else
  {
    v26 = v30;
    v27 = v31;
    v28 = v32;
    StreamingClientResponse.metadata.getter(a3, &v25);
    (*(*(v9 - 8) + 16))(v24, &v26 + 8, v9);
    v17 = swift_allocObject();
    v17[2] = v8;
    v17[3] = a4;
    v17[4] = v20;
    v17[5] = v21;

    sub_24DCB5274();

    WitnessTable = swift_getWitnessTable();
    RPCAsyncSequence.init<A>(wrapping:)(v14, v10, v22, v11, WitnessTable);
    nullsub_1(a4);
    v19 = StreamingClientResponse.init(of:metadata:bodyParts:)(&v25, v24, v23);
    (*(*(v15 - 8) + 8))(&v26, v15, v19);
  }
}

uint64_t sub_24DC9054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(a5 - 8);
  v6[8] = v7;
  v8 = *(v7 + 64) + 15;
  v6[9] = swift_task_alloc();
  v9 = type metadata accessor for StreamingClientResponse.Contents.BodyPart();
  v6[10] = v9;
  v10 = *(v9 - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC90670, 0, 0);
}

uint64_t sub_24DC90670()
{
  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 24), *(v0 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 96);
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *(v0 + 56);
    **(v0 + 16) = *v2;
  }

  else
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 48);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);
    (*(v5 + 32))(v4, v2, v6);
    v7(v4);
    (*(v5 + 8))(v4, v6);
    v9 = *(v0 + 56);
    v10 = *(v0 + 16);
  }

  type metadata accessor for StreamingClientResponse.Contents.BodyPart();
  swift_storeEnumTagMultiPayload();
  v11 = *(v0 + 96);
  v12 = *(v0 + 72);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24DC90800()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_24DC90838(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24DC2FD00;

  return sub_24DC9054C(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_24DC909E4(unsigned __int8 a1)
{
  sub_24DCB58A4();
  MEMORY[0x253035FF0](a1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC90A48()
{
  sub_24DCB58A4();
  sub_24DC909BC(v2, *v0);
  return sub_24DCB58F4();
}

uint64_t GRPCServer.__allocating_init(transport:services:interceptors:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(v3 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v6, v7);
  v12 = *(a3 + 16);
  if (v12)
  {
    v26 = v11;
    v27 = a2;
    v28 = v6;
    v29 = v7;
    v30 = v3;
    v38 = MEMORY[0x277D84F90];
    sub_24DC92774(0, v12, 0);
    v13 = v38;
    v25 = a3;
    v14 = a3 + 32;
    do
    {
      sub_24DC5B208(v14, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F260, &qword_24DCBCA50);
      static ConditionalInterceptor.Subject.all.getter(&v33);
      v31 = v33;
      v32 = v34;
      static ConditionalInterceptor<>.apply(_:to:)(v36, v35, &v31);

      __swift_destroy_boxed_opaque_existential_1(v35);
      v38 = v13;
      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        sub_24DC92774((v15 > 1), v16 + 1, 1);
        v13 = v38;
      }

      v13[2] = v16 + 1;
      v17 = &v13[7 * v16];
      v18 = v36[0];
      v19 = v36[1];
      v20 = v36[2];
      *(v17 + 80) = v37;
      *(v17 + 3) = v19;
      *(v17 + 4) = v20;
      *(v17 + 2) = v18;
      v14 += 40;
      --v12;
    }

    while (v12);

    v7 = v29;
    a2 = v27;
    v6 = v28;
    v11 = v26;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v21._rawValue = v13;
  v22 = sub_24DC928E0(v11, a2, v21);
  v23 = *(v8 + 8);
  v23(v11, v7);
  v23(v6, v7);
  return v22;
}

uint64_t GRPCServer.__allocating_init(transport:services:interceptorPipeline:)(uint64_t a1, uint64_t a2, Swift::OpaquePointer a3)
{
  v5 = sub_24DC928E0(a1, a2, a3);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t GRPCServer.__allocating_init(transport:router:)(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  GRPCServer.init(transport:router:)(a1, a2);
  return v7;
}

uint64_t *GRPCServer.init(transport:router:)(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *a2;
  v11 = 0;
  v12 = 0;
  v13[0] = 0;
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  v8 = type metadata accessor for GRPCServer.State();
  (*(*(v8 - 8) + 32))(v13, &v11, v8);
  v9 = v2 + *(*v2 + 112);
  *v9 = v12;
  *(v9 + 4) = v13[0];
  (*(*(v6 - 8) + 32))(v2 + *(*v2 + 96), a1, v6);
  *(v2 + *(*v2 + 104)) = v5;
  return v2;
}

uint64_t GRPCServer.serve()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_24DC90F30, 0, 0);
}

uint64_t sub_24DC90F30()
{
  v23 = v0;
  v1 = v0[3];
  v2 = v0[2] + *(*v0[2] + 112);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  if (*(v2 + 4) - 2 >= 2)
  {
    if (!*(v2 + 4))
    {
      *(v2 + 4) = 1;
      goto LABEL_10;
    }

    static RuntimeError.Code.serverIsAlreadyRunning.getter(v22);
    sub_24DC3C254();
    v5 = swift_allocError();
    v9 = v11;
    v6 = v22;
    v10 = 0xD00000000000003BLL;
    v7 = 0x800000024DCC5CE0;
  }

  else
  {
    static RuntimeError.Code.serverIsStopped.getter(&v21);
    sub_24DC3C254();
    v5 = swift_allocError();
    v6 = &v21;
    v7 = 0x800000024DCC5CA0;
    v9 = v8;
    v10 = 0xD000000000000034;
  }

  RuntimeError.init(code:message:cause:)(v6, v10, v7, 0, v9);
  swift_willThrow();
  if (v5)
  {
    os_unfair_lock_unlock(v2);
    v12 = v0[1];

    return v12();
  }

LABEL_10:
  v14 = v0[2];
  os_unfair_lock_unlock(v2);
  v15 = *(*v14 + 96);
  v16 = *(v4 + 24);

  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  v0[4] = v18;
  *v18 = v0;
  v18[1] = sub_24DC911C8;
  v19 = v0[2];

  return v20(&unk_24DCBCA68, v19, v3, v4);
}

uint64_t sub_24DC911C8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_24DC91374;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_24DC912E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24DC912E4()
{
  v1 = *(v0 + 16) + *(**(v0 + 16) + 112);
  os_unfair_lock_lock(v1);
  *(v1 + 4) = 3;
  os_unfair_lock_unlock(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24DC91374()
{
  v9 = v0;
  v1 = v0[5];
  v2 = v0[2];

  static RuntimeError.Code.transportError.getter(v8);
  sub_24DC3C254();
  swift_allocError();
  v4 = v3;
  MEMORY[0x2530363C0](v1);
  RuntimeError.init(code:message:cause:)(v8, 0xD000000000000020, 0x800000024DCC5C60, v1, v4);
  swift_willThrow();
  MEMORY[0x2530363B0](v1);
  v5 = v2 + *(*v2 + 112);
  os_unfair_lock_lock(v5);
  *(v5 + 4) = 3;
  os_unfair_lock_unlock(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_24DC9148C(uint64_t a1, uint64_t a2, void *a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = *a3;
  return MEMORY[0x2822009F8](sub_24DC914D8, 0, 0);
}

uint64_t sub_24DC914D8()
{
  v1 = v0[6];
  v0[2] = *(v0[5] + *(*v0[5] + 104));

  v2 = swift_task_alloc();
  v0[7] = v2;
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = type metadata accessor for RPCRouter();
  *v2 = v0;
  v2[1] = sub_24DC915B4;
  v6 = v0[3];
  v7 = v0[4];

  return sub_24DCA5CB0(v6, v7, v5);
}

uint64_t sub_24DC915B4()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 16);

  v4 = *(v6 + 8);

  return v4();
}

Swift::Void __swiftcall GRPCServer.beginGracefulShutdown()()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 112);
  os_unfair_lock_lock(v2);
  if (*(v2 + 4) - 2 >= 2)
  {
    if (*(v2 + 4))
    {
      v5 = v1 + 80;
      v3 = *(v1 + 80);
      v4 = *(v5 + 8);
      *(v2 + 4) = 2;
      os_unfair_lock_unlock(v2);
      v6 = *(*v0 + 96);
      (*(v4 + 32))(v3, v4);
      return;
    }

    *(v2 + 4) = 3;
  }

  os_unfair_lock_unlock(v2);
}

uint64_t *GRPCServer.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  v2 = *(v0 + *(*v0 + 104));

  v3 = v1;
  v4 = v0 + *(*v0 + 112);
  v5 = *(v3 + 88);
  type metadata accessor for GRPCServer.State();
  v6 = *(sub_24DCB4C14() + 16);
  sub_24DCB5404();
  return v0;
}

uint64_t GRPCServer.__deallocating_deinit()
{
  GRPCServer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t withGRPCServer<A, B>(transport:services:interceptors:isolation:handleServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v15;
  *(v8 + 120) = v14;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  if (a5)
  {
    swift_getObjectType();
    v9 = sub_24DCB50D4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v8 + 144) = v9;
  *(v8 + 152) = v11;

  return MEMORY[0x2822009F8](sub_24DC919BC, v9, v11);
}

uint64_t sub_24DC919BC()
{
  v28 = v0;
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_24DC92774(0, v2, 0);
    v3 = v21;
    v4 = v1 + 32;
    do
    {
      sub_24DC5B208(v4, v0 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F260, &qword_24DCBCA50);
      static ConditionalInterceptor.Subject.all.getter(&v24);
      v26 = v24;
      v27 = v25;
      static ConditionalInterceptor<>.apply(_:to:)(v22, v0 + 16, &v26);

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v6 = *(v21 + 16);
      v5 = *(v21 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24DC92774((v5 > 1), v6 + 1, 1);
      }

      *(v21 + 16) = v6 + 1;
      v7 = v21 + 56 * v6;
      v8 = v22[0];
      v9 = v22[1];
      v10 = v22[2];
      *(v7 + 80) = v23;
      *(v7 + 48) = v9;
      *(v7 + 64) = v10;
      *(v7 + 32) = v8;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  *(v0 + 160) = v3;
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_24DC91B98;
  v12 = *(v0 + 120);
  v13 = *(v0 + 104);
  v14 = *(v0 + 112);
  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  v17 = *(v0 + 64);
  v18 = *(v0 + 72);
  v19 = *(v0 + 56);
  v31 = *(v0 + 136);
  v30 = v12;

  return withGRPCServer<A, B>(transport:services:interceptorPipeline:isolation:handleServer:)(v19, v17, v18, v3, v15, v16, v13, v14);
}

uint64_t sub_24DC91B98()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {
    v4 = v3[18];
    v5 = v3[19];

    return MEMORY[0x2822009F8](sub_24DC91CD0, v4, v5);
  }

  else
  {
    v6 = v3[20];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_24DC91CD0()
{
  v1 = v0[20];

  v2 = v0[1];
  v3 = v0[22];

  return v2();
}

uint64_t withGRPCServer<A, B>(transport:services:interceptorPipeline:isolation:handleServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v15;
  *(v8 + 80) = v14;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  if (a5)
  {
    swift_getObjectType();
    v9 = sub_24DCB50D4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v8 + 104) = v9;
  *(v8 + 112) = v11;

  return MEMORY[0x2822009F8](sub_24DC91DE8, v9, v11);
}

uint64_t sub_24DC91DE8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  v4 = *(v0 + 24);
  v5 = *(v0 + 64);
  *(v3 + 16) = *(v0 + 80);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v2;
  *(v3 + 64) = v5;
  v6 = *(MEMORY[0x277D85A48] + 4);
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_24DC91EE0;
  v8 = *(v0 + 88);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v11 = *(v0 + 16);

  return MEMORY[0x2822008A8](v11);
}

uint64_t sub_24DC91EE0()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {
    v4 = v3[13];
    v5 = v3[14];

    return MEMORY[0x2822009F8](sub_24DC92018, v4, v5);
  }

  else
  {
    v6 = v3[15];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_24DC92018()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t sub_24DC9207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v12;
  v8[11] = v13;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0) - 8) + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC92130, 0, 0);
}

uint64_t sub_24DC92130()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  type metadata accessor for GRPCServer();

  v10._rawValue = v5;
  v11 = sub_24DC928E0(v8, v7, v10);
  v0[13] = v11;
  v12 = sub_24DCB51C4();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = v11;

  sub_24DC925A4(v2, &unk_24DCBCB78, v13);
  sub_24DC92FCC(v2);
  v19 = (v6 + *v6);
  v14 = v6[1];
  v15 = swift_task_alloc();
  v0[14] = v15;
  *v15 = v0;
  v15[1] = sub_24DC92320;
  v16 = v0[8];
  v17 = v0[2];

  return v19(v17, v11);
}

uint64_t sub_24DC92320()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_24DC924A8;
  }

  else
  {
    v3 = sub_24DC92434;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DC92434()
{
  v1 = v0[12];
  v2 = v0[13];
  GRPCServer.beginGracefulShutdown()();

  v3 = v0[1];

  return v3();
}

uint64_t sub_24DC924A8()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_24DC92514()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24DC2FD00;

  return GRPCServer.serve()();
}

uint64_t sub_24DC925A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_24DC7CF18(a1, v20 - v9);
  v11 = sub_24DCB51C4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24DC92FCC(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_24DCB50D4();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24DCB51B4();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

void *sub_24DC92774(void *a1, int64_t a2, char a3)
{
  result = sub_24DC92794(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24DC92794(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F268, &unk_24DCBCB80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F270, &qword_24DCBD880);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24DC928E0(uint64_t a1, uint64_t a2, Swift::OpaquePointer a3)
{
  v6 = a1;
  v7 = *(v3 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 88);
  RPCRouter.init()(&v28);
  v13 = *(a2 + 16);
  if (v13)
  {
    rawValue = a3._rawValue;
    v23 = v11;
    v24 = v6;
    v14 = a2 + 32;
    do
    {
      sub_24DC5B208(v14, v25);
      v16 = v26;
      v15 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v15 + 8))(&v28, v7, v12, v16, v15);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v14 += 40;
      --v13;
    }

    while (v13);

    v11 = v23;
    v6 = v24;
    a3._rawValue = rawValue;
  }

  else
  {
  }

  type metadata accessor for RPCRouter();
  RPCRouter.registerInterceptors(pipeline:)(a3);

  (*(v8 + 16))(v11, v6, v7);
  v17 = *(v3 + 48);
  v18 = *(v3 + 52);
  v19 = swift_allocObject();
  GRPCServer.init(transport:router:)(v11, &v28);
  return v19;
}

uint64_t sub_24DC92AC4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24DC2FD00;

  return sub_24DC9148C(a1, a2, v2);
}

uint64_t sub_24DC92B6C(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v15 = v2[2];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v12 = v2[8];
  v11 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24DC2FD00;

  return sub_24DC9207C(a1, a2, v8, v9, v10, v12, v11, v15);
}

uint64_t sub_24DC92C60(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC92D50(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for GRPCServer.State();
  return sub_24DCB4C04();
}

uint64_t sub_24DC92D9C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServiceConfig.LoadBalancingConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24DC92EF8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_24DC92F38()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DC334F4;

  return sub_24DC92514();
}

uint64_t sub_24DC92FCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double RetryThrottle.tokens.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24) / 1000.0;
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

BOOL RetryThrottle.isRetryPermitted.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 48) < *(v0 + 24);
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t RetryThrottle.__allocating_init(maxTokens:tokenRatio:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  RetryThrottle.init(maxTokens:tokenRatio:)(a1, a2);
  return v4;
}

uint64_t RetryThrottle.init(maxTokens:tokenRatio:)(uint64_t result, double a2)
{
  v3 = a2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((result - 1001) >= 0xFFFFFFFFFFFFFC18 && v3 >= 1)
  {
    *(v2 + 40) = 1000 * result;
    *(v2 + 48) = 500 * result;
    *(v2 + 16) = 0;
    *(v2 + 24) = 1000 * result;
    *(v2 + 32) = v3;
    return v2;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t RetryThrottle.__allocating_init(policy:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = swift_allocObject();
  RetryThrottle.init(maxTokens:tokenRatio:)(v1, v2);
  return v3;
}

void sub_24DC93230()
{
  os_unfair_lock_lock((v0 + 16));
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  if (v2 + *(v0 + 24) < v1)
  {
    v1 = v2 + *(v0 + 24);
  }

  *(v0 + 24) = v1;

  os_unfair_lock_unlock((v0 + 16));
}

BOOL sub_24DC93278()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = (*(v0 + 24) - 1000) & ~((*(v0 + 24) - 1000) >> 63);
  *(v0 + 24) = v1;
  v2 = *(v0 + 48) >= v1;
  os_unfair_lock_unlock((v0 + 16));
  return v2;
}

uint64_t sub_24DC9332C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F278, &unk_24DCBCBF0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24DC9335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v29;
  *(v8 + 528) = v28;
  *(v8 + 520) = v27;
  *(v8 + 504) = v25;
  *(v8 + 512) = v26;
  *(v8 + 488) = v23;
  *(v8 + 496) = v24;
  *(v8 + 472) = a8;
  *(v8 + 480) = v22;
  *(v8 + 456) = a6;
  *(v8 + 464) = a7;
  *(v8 + 440) = a2;
  *(v8 + 448) = a5;
  *(v8 + 432) = a1;
  v10 = *(v26 - 8);
  *(v8 + 544) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 552) = swift_task_alloc();
  *(v8 + 560) = type metadata accessor for RPCResponsePart();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  *(v8 + 568) = v12;
  *(v8 + 576) = type metadata accessor for RPCAsyncSequence.AsyncIterator();
  swift_getWitnessTable();
  v13 = type metadata accessor for UncheckedAsyncIteratorSequence();
  *(v8 + 584) = v13;
  WitnessTable = swift_getWitnessTable();
  *(v8 + 592) = WitnessTable;
  *(v8 + 128) = v13;
  *(v8 + 136) = v24;
  *(v8 + 144) = v23;
  *(v8 + 152) = v26;
  *(v8 + 160) = v12;
  *(v8 + 168) = WitnessTable;
  *(v8 + 176) = v27;
  *(v8 + 184) = v29;
  v15 = type metadata accessor for ClientStreamExecutor.RawBodyPartToMessageSequence();
  *(v8 + 600) = v15;
  v16 = *(v15 - 8);
  *(v8 + 608) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  v18 = *(v25 - 8);
  *(v8 + 632) = v18;
  *(v8 + 640) = *(v18 + 64);
  *(v8 + 648) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0) - 8) + 64) + 15;
  *(v8 + 656) = swift_task_alloc();
  *(v8 + 664) = *a3;
  *(v8 + 680) = *(a3 + 16);

  return MEMORY[0x2822009F8](sub_24DC93638, 0, 0);
}

uint64_t sub_24DC93638()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 448);
  *(v0 + 416) = v1;
  if (v2 < 2)
  {
  }

  else
  {
    v3 = v2 - 1;

    sub_24DC7EF6C(v3, 0);
    v4 = *(v0 + 416);
    v1 = *(v0 + 664);
  }

  v34 = *(v0 + 672);
  v35 = *(v0 + 680);
  v5 = *(v0 + 656);
  v31 = *(v0 + 640);
  v6 = *(v0 + 632);
  v7 = *(v0 + 568);
  v8 = *(v0 + 560);
  v32 = *(v0 + 536);
  v33 = v5;
  v9 = *(v0 + 496);
  v10 = *(v0 + 472);
  v27 = *(v0 + 456);
  v28 = *(v0 + 648);
  v36 = *(v0 + 440);
  v30 = *(v0 + 504);
  v37 = *(v0 + 520);
  v11 = *(v0 + 504);
  v29 = *(v0 + 480);

  v12 = sub_24DCB51C4();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = type metadata accessor for RPCAsyncSequence();
  type metadata accessor for RPCRequestPart();
  v14 = type metadata accessor for RPCWriter.Closable();
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  *(v0 + 384) = v13;
  *(v0 + 392) = v14;
  *(v0 + 400) = WitnessTable;
  *(v0 + 408) = v16;
  v17 = type metadata accessor for RPCStream();
  (*(*(v17 - 8) + 16))(v0 + 16, v10, v17);
  (*(v6 + 16))(v28, v27, v11);
  v18 = (*(v6 + 80) + 232) & ~*(v6 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v29;
  *(v19 + 48) = v9;
  *(v19 + 56) = v30;
  *(v19 + 72) = v37;
  *(v19 + 88) = v32;
  v20 = *(v0 + 96);
  *(v19 + 160) = *(v0 + 80);
  *(v19 + 176) = v20;
  *(v19 + 192) = *(v0 + 112);
  v21 = *(v0 + 32);
  *(v19 + 96) = *(v0 + 16);
  *(v19 + 112) = v21;
  v22 = *(v0 + 64);
  *(v19 + 128) = *(v0 + 48);
  *(v19 + 144) = v22;
  *(v19 + 208) = v1;
  *(v19 + 216) = v34;
  *(v19 + 224) = v35;
  (*(v6 + 32))(v19 + v18, v28, v11);

  sub_24DC7A1A0(v33, &unk_24DCBCC10, v19);
  sub_24DC92FCC(v33);
  v23 = swift_task_alloc();
  *(v0 + 688) = v23;
  *v23 = v0;
  v23[1] = sub_24DC939A0;
  v24 = *(v0 + 520);
  v25 = *(v0 + 496);

  return sub_24DC94B28(v0 + 192, v10 + 32, v25, v24);
}

uint64_t sub_24DC939A0()
{
  v1 = *(*v0 + 688);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24DC93A9C, 0, 0);
}

uint64_t sub_24DC93A9C()
{
  v52 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 496);
  ResponsePart = type metadata accessor for ClientStreamExecutor.OnFirstResponsePart();
  v4 = *(ResponsePart - 8);
  (*(v4 + 16))(v0 + 248, v0 + 192, ResponsePart);
  if (*(v0 + 296))
  {
    if (*(v0 + 296) == 1)
    {
      v5 = *(v0 + 448);
      v7 = *(v0 + 248);
      v6 = *(v0 + 256);
      v45 = v6;
      if (v5 >= 2)
      {
        sub_24DC7EF6C(v5 - 1, 0);
        v6 = v45;
      }

      v8 = *(v0 + 488);
      v9 = *(v0 + 432);
      v46 = v7;
      v48.n128_u64[0] = v6;
      sub_24DC90084(&v46, &v48, v9);
    }

    else
    {
      v23 = *(v0 + 488);
      v24 = *(v0 + 432);
      v25 = *(v0 + 256);
      v26 = *(v0 + 264);
      v27 = *(v0 + 272);
      v28 = *(v0 + 280);
      v48.n128_u8[0] = *(v0 + 248);
      v48.n128_u64[1] = v25;
      v49 = v26;
      v50 = v27;
      v51 = v28;

      MEMORY[0x2530363C0](v28);
      nullsub_1(v23);
      StreamingClientResponse.init(of:error:)(&v48, v24);

      MEMORY[0x2530363B0](v28);
    }
  }

  else
  {
    v10 = *(v0 + 448);
    v47 = *(v0 + 248);
    v11 = *(v0 + 272);
    *(v0 + 304) = *(v0 + 256);
    *(v0 + 320) = v11;
    *(v0 + 336) = *(v0 + 288);
    if (v10 >= 2)
    {
      sub_24DC7EF6C(v10 - 1, 0);
    }

    v42 = *(v0 + 608);
    v43 = *(v0 + 616);
    v12 = *(v0 + 600);
    v40 = *(v0 + 624);
    v41 = *(v0 + 592);
    v13 = *(v0 + 584);
    v14 = *(v0 + 552);
    v15 = *(v0 + 544);
    v36 = *(v0 + 520);
    v37 = *(v0 + 536);
    v16 = *(v0 + 512);
    v17 = *(v0 + 488);
    v38 = *(v0 + 496);
    v39 = *(v0 + 568);
    v18 = *(v0 + 464);
    v44 = *(v0 + 432);
    (*(*(*(v0 + 576) - 8) + 16))(v0 + 344, v0 + 304);
    *(v0 + 424) = sub_24DC72984(v0 + 344);
    (*(v15 + 16))(v14, v18, v16);
    sub_24DC94F60(v0 + 424, v14, v13, v16, v40);
    (*(v42 + 16))(v43, v40, v12);
    v19 = type metadata accessor for StreamingClientResponse.Contents.BodyPart();
    WitnessTable = swift_getWitnessTable();
    RPCAsyncSequence.init<A>(wrapping:)(v43, v19, v39, v12, WitnessTable);
    nullsub_1(v17);
    v21 = StreamingClientResponse.init(of:metadata:bodyParts:)(&v47, &v48, v44);
    (*(v42 + 8))(v40, v12, v21);
    v22 = type metadata accessor for UnsafeTransfer();
    (*(*(v22 - 8) + 8))(v0 + 304, v22);
  }

  (*(v4 + 8))(v0 + 192, ResponsePart);
  v29 = *(v0 + 656);
  v30 = *(v0 + 648);
  v31 = *(v0 + 624);
  v32 = *(v0 + 616);
  v33 = *(v0 + 552);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_24DC93E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v10 = swift_task_alloc();
  v8[5] = v10;
  type metadata accessor for RPCRequestPart();
  v11 = type metadata accessor for RPCWriter.Closable();
  swift_getWitnessTable();
  *v10 = v8;
  v10[1] = sub_24DC93FC0;

  return sub_24DC942BC(a4 + 72, (v8 + 2), a8, v15, v16, v11, v17, v18);
}

uint64_t sub_24DC93FC0()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24DC940B4()
{
  v1 = v0[7];
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 232) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = v0[2];
  swift_unknownObjectRelease();
  v6 = v0[13];

  v7 = v0[15];

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  v8 = v0[26];

  v9 = v0[28];

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24DC941A0()
{
  v13 = v0[4];
  v2 = v0[6];
  v3 = v0[9];
  v4 = v0[10];
  v5 = (*(*(v0[7] - 8) + 80) + 232) & ~*(*(v0[7] - 8) + 80);
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[28];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_24DC2FD00;

  return sub_24DC93E8C(v9, v10, v11, (v0 + 12), v6, v7, v8, v0 + v5);
}

uint64_t sub_24DC942BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v10;
  *(v8 + 160) = v11;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 104) = a3;
  *(v8 + 112) = a4;
  *(v8 + 96) = a1;
  *(v8 + 168) = *a2;
  *(v8 + 184) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_24DC94304, 0, 0);
}

uint64_t sub_24DC94304()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  v6 = *(v0 + 128);
  v7 = *(v0 + 144);
  v8 = *(v0 + 168);
  *(v5 + 16) = *(v0 + 112);
  *(v5 + 32) = v6;
  *(v5 + 48) = v7;
  *(v5 + 64) = v2;
  *(v5 + 72) = v4;
  *(v5 + 80) = v8;
  *(v5 + 96) = v1;
  *(v5 + 104) = v3;
  v9 = swift_task_alloc();
  *(v0 + 200) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  *v9 = v0;
  v9[1] = sub_24DC9442C;
  v11 = MEMORY[0x277D84F78] + 8;

  return sub_24DC8C5F4(v0 + 64, dword_24DCBCC30, v5, v11, v10);
}

uint64_t sub_24DC9442C()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24DC94544, 0, 0);
}

uint64_t sub_24DC94544()
{
  v1 = *(v0 + 64);
  *(v0 + 80) = v1;
  v2 = *(v0 + 72);
  *(v0 + 88) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F0A0, &qword_24DCBA488);
  v4 = sub_24DC2E0D8();
  sub_24DC8CA70(&type metadata for RPCError, sub_24DC959F8, 0, v3, &type metadata for RPCError, v4, v0 + 16);
  sub_24DC57738(v1, v2);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v0 + 208) = v5;
  *(v0 + 216) = v6;
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  *(v0 + 224) = v8;
  *(v0 + 232) = v7;
  v9 = *(v0 + 48);
  *(v0 + 240) = v9;
  v10 = *(v0 + 152);
  if (*(v0 + 56) == 1)
  {
    v27 = *(v0 + 152);
    v11 = swift_allocError();
    *(v0 + 248) = v11;
    *v12 = v5;
    *(v12 + 8) = v6;
    *(v12 + 16) = v8;
    *(v12 + 24) = v7;
    *(v12 + 32) = v9;
    v13 = *(v27 + 24);
    sub_24DC95A74(v5, v6, v8, v7, v9, 1);

    MEMORY[0x2530363C0](v9);
    v25 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 256) = v15;
    *v15 = v0;
    v15[1] = sub_24DC94870;
    v16 = *(v0 + 152);
    v17 = *(v0 + 128);
    v18 = *(v0 + 96);

    return v25(v11, v17, v16);
  }

  else
  {
    v26 = (*(v10 + 16) + **(v10 + 16));
    v20 = *(*(v10 + 16) + 4);
    v21 = swift_task_alloc();
    *(v0 + 264) = v21;
    *v21 = v0;
    v21[1] = sub_24DC94A34;
    v22 = *(v0 + 152);
    v23 = *(v0 + 128);
    v24 = *(v0 + 96);

    return v26(v23, v22);
  }
}

uint64_t sub_24DC94870()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  MEMORY[0x2530363B0](v2);

  return MEMORY[0x2822009F8](sub_24DC94988, 0, 0);
}

uint64_t sub_24DC94988()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  sub_24DC95AC4(v5, v4, v3, v1, v2, 1);
  sub_24DC95AC4(v5, v4, v3, v1, v2, 1);
  v6 = v0[1];

  return v6();
}

uint64_t sub_24DC94A34()
{
  v1 = *(*v0 + 264);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24DC94B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  return MEMORY[0x2822009F8](sub_24DC94B4C, 0, 0);
}

uint64_t sub_24DC94B4C()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v0[25] = type metadata accessor for RPCResponsePart();
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v0[26] = v4;
  type metadata accessor for RPCAsyncSequence();
  RPCAsyncSequence.makeAsyncIterator()(v0 + 16);
  v5 = swift_task_alloc();
  v0[27] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v0 + 16;
  v6 = swift_task_alloc();
  v0[28] = v6;
  ResponsePart = type metadata accessor for ClientStreamExecutor.OnFirstResponsePart();
  v0[29] = ResponsePart;
  *v6 = v0;
  v6[1] = sub_24DC94CB0;

  return sub_24DC8C5F4((v0 + 9), dword_24DCBCC48, v5, ResponsePart, v4);
}

uint64_t sub_24DC94CB0()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24DC94DC8, 0, 0);
}

uint64_t sub_24DC94DC8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = sub_24DCB5904();
  v4 = sub_24DC2E0D8();
  sub_24DC8CA70(&type metadata for RPCError, sub_24DC96148, 0, v3, &type metadata for RPCError, v4, v0 + 16);
  (*(*(v3 - 8) + 8))(v0 + 72, v3);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 48);
  v9 = *(v0 + 168);
  if (*(v0 + 65))
  {
    *(v9 + 48) = 2;
  }

  else
  {
    v10 = *(v0 + 17);
    *(v9 + 4) = *(v0 + 20);
    *(v9 + 1) = v10;
    v11 = *(v0 + 56);
    *(v9 + 48) = *(v0 + 64);
    *(v9 + 40) = v11;
  }

  v12 = *(v0 + 200);
  v13 = *(v0 + 208);
  v14 = *(v0 + 168);
  *v14 = v5;
  *(v14 + 8) = v6;
  *(v14 + 16) = v7;
  *(v14 + 32) = v8;
  v15 = type metadata accessor for RPCAsyncSequence.AsyncIterator();
  (*(*(v15 - 8) + 8))(v0 + 128, v15);
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24DC94F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ClientStreamExecutor.RawBodyPartToMessageSequence();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 84), a2, a4);
}

uint64_t sub_24DC9504C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v19;
  *(v8 + 136) = v18;
  *(v8 + 120) = v16;
  *(v8 + 128) = v17;
  *(v8 + 104) = a8;
  *(v8 + 112) = v15;
  *(v8 + 88) = a6;
  *(v8 + 96) = a7;
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
  v9 = *(v16 - 8);
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 + 64);
  *(v8 + 176) = swift_task_alloc();
  v10 = type metadata accessor for RPCRequestPart();
  *(v8 + 184) = v10;
  v11 = *(v10 - 8);
  *(v8 + 192) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC95198, 0, 0);
}

uint64_t sub_24DC95198()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);
  **(v0 + 200) = *(v0 + 64);
  swift_storeEnumTagMultiPayload();
  v3 = *(v2 + 8);
  *(v0 + 208) = v3;
  v4 = *(v3 + 16);

  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_24DC952E4;
  v7 = *(v0 + 200);
  v8 = *(v0 + 112);
  v9 = *(v0 + 56);

  return v11(v7, v8, v3);
}

uint64_t sub_24DC952E4()
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 224) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24DC95804;
  }

  else
  {
    v6 = sub_24DC95454;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24DC95454()
{
  v16 = *(v0 + 208);
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 112);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v17 = *(v0 + 96);
  v14 = *(v0 + 120);
  v7 = *(v0 + 120);
  v15 = *(v0 + 136);
  (*(v3 + 16))(v2, *(v0 + 88), v7);
  v8 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v17;
  *(v9 + 32) = v4;
  *(v9 + 40) = v14;
  *(v9 + 56) = v15;
  (*(v3 + 32))(v9 + v8, v2, v7);
  sub_24DC73F80(v6, sub_24DC98224, v9, v17, v1, v4, v16, (v0 + 16));

  v18 = (v5 + *v5);
  v10 = v5[1];
  v11 = swift_task_alloc();
  *(v0 + 232) = v11;
  *v11 = v0;
  v11[1] = sub_24DC95654;
  v12 = *(v0 + 80);

  return v18(v0 + 16);
}

uint64_t sub_24DC95654()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 96);
  v5 = *v1;
  v2[30] = v0;

  v6 = type metadata accessor for RPCWriter();
  (*(*(v6 - 8) + 8))(v2 + 2, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC95880, 0, 0);
  }

  else
  {
    v7 = v2[25];
    v8 = v2[22];

    v9 = *(v5 + 8);

    return v9();
  }
}

uint64_t sub_24DC95804()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  **(v0 + 152) = *(v0 + 224);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24DC95880()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  **(v0 + 152) = *(v0 + 240);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24DC958FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v12 = *(v0 + 48);
  v13 = *(v0 + 32);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_24DC2FD00;

  return sub_24DC9504C(v10, v4, v6, v7, v9, v8, v2, v3);
}

uint64_t sub_24DC959F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *sub_24DC412F4();
  sub_24DC31044();
  MEMORY[0x2530363C0](a1);
  return RPCError.init(code:message:metadata:cause:)(&v6, 0x6166206574697257, 0xED00002E64656C69, &v5, a1, a2);
}

void sub_24DC95A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    JUMPOUT(0x2530363C0);
  }
}

void sub_24DC95AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    JUMPOUT(0x2530363B0);
  }
}

uint64_t sub_24DC95B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a2;
  v5[9] = a5;
  v5[7] = a1;
  v5[10] = type metadata accessor for RPCResponsePart();
  v6 = *(*(sub_24DCB5414() - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v5[11] = v7;
  v8 = swift_task_alloc();
  v5[12] = v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v9 = type metadata accessor for RPCAsyncSequence.AsyncIterator();
  v5[13] = v9;
  *v8 = v5;
  v8[1] = sub_24DC95C40;

  return RPCAsyncSequence.AsyncIterator.next()(v7, v9);
}

uint64_t sub_24DC95C40()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_24DC96014;
  }

  else
  {
    v3 = sub_24DC95D54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DC95D54()
{
  v28 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v1 - 8);
  if ((*(v3 + 48))(v2, 1, v1) == 1)
  {
    if (sub_24DCB5224())
    {
      sub_24DCB5114();
      sub_24DC46150();
      v4 = swift_allocError();
      sub_24DCB4CA4();
      swift_willThrow();
      v5 = *(v0 + 88);
      **(v0 + 72) = v4;

      v6 = *(v0 + 8);
      goto LABEL_11;
    }

    v12 = *(v0 + 56);
    v26 = *sub_24DC41378();
    sub_24DC31044();
    RPCError.init(code:message:metadata:cause:)(&v26, 0xD000000000000066, 0x800000024DCC5E70, v27, 0, v22);
    v13 = v23;
    v14 = v25;
    v15 = v24;
    *v12 = v22[0];
    *(v12 + 8) = v13;
    *(v12 + 16) = v15;
    *(v12 + 32) = v14;
    *(v12 + 48) = 2;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v8 = *(v0 + 56);
        v26 = *sub_24DC41378();
        sub_24DC31044();
        RPCError.init(code:message:metadata:cause:)(&v26, 0xD000000000000096, 0x800000024DCC5EE0, v27, 0, v22);
        v9 = v23;
        v10 = v25;
        v11 = v24;
        *v8 = v22[0];
        *(v8 + 8) = v9;
        *(v8 + 16) = v11;
        *(v8 + 32) = v10;
        *(v8 + 48) = 2;
        (*(v3 + 8))(v2, v1);
      }

      else
      {
        v19 = *(v0 + 56);
        *v19 = *v2;
        *(v19 + 48) = 1;
      }
    }

    else
    {
      v16 = *(v0 + 104);
      v18 = *(v0 + 56);
      v17 = *(v0 + 64);
      *v18 = *v2;
      (*(*(v16 - 8) + 16))(v0 + 16, v17, v16);
      sub_24DC72ABC(v0 + 16, v16, v18 + 8);
      *(v18 + 48) = 0;
    }
  }

  v20 = *(v0 + 88);

  v6 = *(v0 + 8);
LABEL_11:

  return v6();
}

uint64_t sub_24DC96014()
{
  v1 = *(v0 + 88);
  **(v0 + 72) = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24DC96084(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24DC334F4;

  return sub_24DC95B14(a1, v8, v6, v7, a2);
}

uint64_t sub_24DC96148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *sub_24DC412F4();
  sub_24DC31044();
  MEMORY[0x2530363C0](a1);
  return RPCError.init(code:message:metadata:cause:)(&v6, 0xD000000000000028, 0x800000024DCC5E40, &v5, a1, a2);
}

uint64_t sub_24DC961C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v5 = *(a1 + 40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v21 = &v28 - v20;
  (*(v12 + 16))(v16, v3, v11);
  sub_24DCB5254();
  (*(v6 + 16))(v10, v3 + *(a1 + 84), v5);
  v22 = *(a1 + 24);
  v23 = *(a1 + 32);
  v24 = *(a1 + 48);
  v26 = *(a1 + 64);
  v27 = *(a1 + 72);
  return sub_24DC963D0(v21, v10, v5, v29);
}

uint64_t sub_24DC963D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v8 = type metadata accessor for ClientStreamExecutor.RawBodyPartToMessageSequence.AsyncIterator();
  return (*(*(a3 - 8) + 32))(a4 + *(v8 + 84), a2, a3);
}

uint64_t sub_24DC964F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a2, v2, AssociatedTypeWitness);
}

uint64_t sub_24DC96578(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 40);

  return v7(v2, a1, AssociatedTypeWitness);
}

uint64_t sub_24DC96634(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v9 = a4[4];
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v12 = a4[3];
  v5[11] = v12;
  v13 = *(v12 - 8);
  v5[12] = v13;
  v14 = *(v13 + 64) + 15;
  v5[13] = swift_task_alloc();
  v15 = a4[6];
  v5[14] = v15;
  v16 = *(v15 - 8);
  v5[15] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v5[16] = v18;
  v5[17] = a4[8];
  v19 = type metadata accessor for RPCResponsePart();
  v5[18] = v19;
  v20 = sub_24DCB5414();
  v5[19] = v20;
  v21 = *(v20 - 8);
  v5[20] = v21;
  v22 = *(v21 + 64) + 15;
  v23 = swift_task_alloc();
  v5[21] = v23;
  v24 = *(v19 - 8);
  v5[22] = v24;
  v25 = *(v24 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v26 = a4[7];
  v27 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[25] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[26] = AssociatedConformanceWitness;
  v30 = *(MEMORY[0x277D856D8] + 4);
  v31 = swift_task_alloc();
  v5[27] = v31;
  *v31 = v5;
  v31[1] = sub_24DC9695C;

  return MEMORY[0x282200310](v23, a2, a3, v18, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_24DC9695C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  v2[28] = v0;

  v5 = v2[4];
  if (v0)
  {
    if (v5)
    {
      v6 = v2[5];
      swift_getObjectType();
      v7 = sub_24DCB50D4();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_24DC97088;
  }

  else
  {
    if (v5)
    {
      v11 = v2[5];
      swift_getObjectType();
      v7 = sub_24DCB50D4();
      v9 = v12;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_24DC96AF4;
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_24DC96AF4()
{
  v76 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[18];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[8];
    v5 = v0[3];
    (*(v0[20] + 8))(v1, v0[19]);
    v6 = type metadata accessor for StreamingClientResponse.Contents.BodyPart();
    v7 = *(*(v6 - 8) + 56);
    v8 = v5;
    v9 = 1;
LABEL_3:
    v7(v8, v9, 1, v6);
    v11 = v0[23];
    v10 = v0[24];
    v12 = v0[21];
    v13 = v0[16];
    v14 = v0[13];
    v15 = v0[10];

    v16 = v0[1];
    goto LABEL_12;
  }

  v18 = v0[23];
  v17 = v0[24];
  (*(v2 + 32))(v17, v1, v3);
  (*(v2 + 16))(v18, v17, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v34 = v0[24];
    v35 = v0[22];
    v36 = v0[18];
    v37 = *v0[23];
    LOBYTE(v70) = *sub_24DC41378();
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_24DCB54D4();
    MEMORY[0x253035590](0xD00000000000007ALL, 0x800000024DCC5DC0);
    v0[2] = v37;
    sub_24DC9718C();
    v38 = sub_24DCB5744();
    v40 = v39;

    MEMORY[0x253035590](v38, v40);

    MEMORY[0x253035590](11815, 0xE200000000000000);
    sub_24DC31044();
    RPCError.init(code:message:metadata:cause:)(&v70, v71, v72, v75, 0, &v71);
    LOBYTE(v37) = v71;
    v41 = v72;
    v42 = v74;
    sub_24DC2E0D8();
    v68 = v73;
    swift_allocError();
    *v43 = v37;
    *(v43 + 8) = v41;
    *(v43 + 16) = v68;
    *(v43 + 32) = v42;
    swift_willThrow();
    (*(v35 + 8))(v34, v36);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v44 = v0[23];
    v45 = v44[1];
    v70 = *v44;
    v75[0] = v45;

    RPCError.init(status:metadata:)(&v70, v75, &v71);
    v46 = v73;
    v47 = v0[24];
    v48 = v0[22];
    v49 = v0[18];
    if (v73)
    {
      v50 = *(&v73 + 1);
      v69 = v74;
      v51 = v71;
      v52 = v72;

      sub_24DC2E0D8();
      swift_allocError();
      *v53 = v51;
      *(v53 + 8) = v52;
      *(v53 + 16) = v46;
      *(v53 + 24) = v50;
      *(v53 + 32) = v69;
      swift_willThrow();

      (*(v48 + 8))(v47, v49);
      goto LABEL_11;
    }

    v66 = v0[8];
    v67 = v0[3];
    (*(v48 + 8))(v47, v49);

    *v67 = v45;
    v65 = type metadata accessor for StreamingClientResponse.Contents.BodyPart();
    swift_storeEnumTagMultiPayload();
    v7 = *(*(v65 - 8) + 56);
    v8 = v67;
LABEL_17:
    v9 = 0;
    v6 = v65;
    goto LABEL_3;
  }

  v20 = v0[28];
  v21 = v0[17];
  v22 = v0[13];
  v23 = v0[11];
  v25 = v0[6];
  v24 = v0[7];
  (*(v0[12] + 32))(v22, v0[23], v23);
  v26 = v24 + *(v25 + 84);
  (*(*(v25 + 72) + 16))(v22, v23, v21, *(v25 + 40));
  v27 = v20;
  v28 = v0[24];
  v29 = v0[22];
  v30 = v0[18];
  v32 = v0[12];
  v31 = v0[13];
  v33 = v0[11];
  if (!v27)
  {
    v62 = v0[9];
    v61 = v0[10];
    v63 = v0[8];
    v64 = v0[3];
    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v28, v30);
    (*(v62 + 32))(v64, v61, v63);
    v65 = type metadata accessor for StreamingClientResponse.Contents.BodyPart();
    swift_storeEnumTagMultiPayload();
    v7 = *(*(v65 - 8) + 56);
    v8 = v64;
    goto LABEL_17;
  }

  (*(v32 + 8))(v31, v33);
  (*(v29 + 8))(v28, v30);
LABEL_11:
  v55 = v0[23];
  v54 = v0[24];
  v56 = v0[21];
  v57 = v0[16];
  v58 = v0[13];
  v59 = v0[10];

  v16 = v0[1];
LABEL_12:

  return v16();
}

uint64_t sub_24DC97088()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  swift_getAssociatedConformanceWitness();
  swift_allocError();
  (*(v4 + 32))(v6, v3, v5);
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[21];
  v10 = v0[16];
  v11 = v0[13];
  v12 = v0[10];

  v13 = v0[1];

  return v13();
}

unint64_t sub_24DC9718C()
{
  result = qword_27F19F280;
  if (!qword_27F19F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F280);
  }

  return result;
}

uint64_t sub_24DC971E0(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC2FD00;

  return sub_24DC96634(a1, 0, 0, a2);
}

uint64_t sub_24DC97290(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return sub_24DC971E0(a1, a2);
}

uint64_t sub_24DC97338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_24DC973FC;

  return sub_24DC96634(a1, a2, a3, a5);
}

uint64_t sub_24DC973FC()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_24DC97538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24DC961C8(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_24DC975A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC975F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DC9762C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_24DC9767C(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_24DC976A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 40);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC97730(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_24DC9790C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_24DC97BC8(void *a1)
{
  v2 = a1[7];
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = a1[5];
    result = swift_checkMetadataState();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC97C68(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[7];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(a3[5] - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= v10)
  {
    v14 = *(v9 + 84);
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(*(AssociatedTypeWitness - 8) + 64) + v13;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = (v15 & ~v13) + *(v11 + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_27:
      if (v14)
      {
LABEL_28:
        if (v10 >= v12)
        {
          v25 = *(v9 + 48);

          return v25(a1);
        }

        else
        {
          v23 = *(v11 + 48);

          return v23((a1 + v15) & ~v13, v12);
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_27;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = (v15 & ~v13) + *(v11 + 64);
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_24DC97EC0(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[7];
  v9 = a4[2];
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(a4[5] - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 64);
  v15 = *(v12 + 80);
  if (v13 <= v11)
  {
    v16 = *(v10 + 84);
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = v14 + v15;
  v18 = ((v14 + v15) & ~v15) + *(v12 + 64);
  if (a3 <= v16)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v16 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v16 < a2)
  {
    v20 = ~v16 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_46:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v11 >= v13)
  {
    v26 = *(v10 + 56);

    v26(a1, a2);
  }

  else
  {
    v25 = *(v12 + 56);

    v25(&a1[v17] & ~v15, a2, v13);
  }
}

uint64_t sub_24DC981A4()
{
  v1 = *(*(v0 + 40) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 72) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void *sub_24DC98224@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[6];
  v6 = v2[8];
  v7 = v2 + ((*(*(v2[5] - 8) + 80) + 72) & ~*(*(v2[5] - 8) + 80));
  result = (*(v6 + 16))(a2, a1, v4, v5);
  if (!v3)
  {
    type metadata accessor for RPCRequestPart();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_24DC982D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t *GRPCClient.__allocating_init(transport:interceptors:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(v2 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v5, v6);
  v11 = *(a2 + 16);
  if (v11)
  {
    v26 = v2;
    v27 = v5;
    v28 = v6;
    v36 = MEMORY[0x277D84F90];
    sub_24DC9C338(0, v11, 0);
    v12 = v36;
    v25 = a2;
    v13 = a2 + 32;
    do
    {
      sub_24DC5B208(v13, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F020, &qword_24DCBCE70);
      static ConditionalInterceptor.Subject.all.getter(&v31);
      v29 = v31;
      v30 = v32;
      static ConditionalInterceptor<>.apply(_:to:)(v34, v33, &v29);

      __swift_destroy_boxed_opaque_existential_1(v33);
      v36 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_24DC9C338((v14 > 1), v15 + 1, 1);
        v12 = v36;
      }

      *(v12 + 16) = v15 + 1;
      v16 = v12 + 56 * v15;
      v17 = v34[0];
      v18 = v34[1];
      v19 = v34[2];
      *(v16 + 80) = v35;
      *(v16 + 48) = v18;
      *(v16 + 64) = v19;
      *(v16 + 32) = v17;
      v13 += 40;
      --v11;
    }

    while (v11);

    v5 = v27;
    v6 = v28;
    v3 = v26;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v20 = *(v3 + 48);
  v21 = *(v3 + 52);
  swift_allocObject();
  v22 = sub_24DC9C710(v10, v12);
  v23 = *(v7 + 8);
  v23(v10, v6);
  v23(v5, v6);
  return v22;
}

uint64_t *GRPCClient.__allocating_init(transport:interceptorPipeline:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24DC9C840(a1, a2);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t *GRPCClient.init(transport:interceptorPipeline:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_24DC9C710(a1, a2);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t GRPCClient.runConnections()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_24DC986A0, 0, 0);
}

uint64_t sub_24DC986A0()
{
  v22 = v0;
  v1 = v0[3];
  v2 = v0[2] + *(*v0[2] + 104);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  if (*(v2 + 8) - 2 >= 2)
  {
    if (!*(v2 + 8))
    {
      *(v2 + 8) = 1;
      goto LABEL_10;
    }

    static RuntimeError.Code.clientIsAlreadyRunning.getter(v21);
    sub_24DC3C254();
    v5 = swift_allocError();
    v8 = v21;
    v10 = 0x800000024DCC60E0;
    v7 = v11;
    v9 = 0xD00000000000003BLL;
  }

  else
  {
    static RuntimeError.Code.clientIsStopped.getter(&v20);
    sub_24DC3C254();
    v5 = swift_allocError();
    v7 = v6;
    v8 = &v20;
    v9 = 0xD0000000000000CELL;
    v10 = 0x800000024DCC6010;
  }

  RuntimeError.init(code:message:cause:)(v8, v9, v10, 0, v7);
  swift_willThrow();
  if (v5)
  {
    os_unfair_lock_unlock(v2);
    v12 = v0[1];

    return v12();
  }

LABEL_10:
  v14 = v0[2];
  os_unfair_lock_unlock(v2);
  v15 = *(*v14 + 96);
  v16 = *(v4 + 32);
  v19 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  v0[4] = v18;
  *v18 = v0;
  v18[1] = sub_24DC98914;

  return v19(v3, v4);
}

uint64_t sub_24DC98914()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_24DC98AB8;
  }

  else
  {
    v3 = sub_24DC98A28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DC98A28()
{
  v1 = *(v0 + 16) + *(**(v0 + 16) + 104);
  os_unfair_lock_lock(v1);
  *(v1 + 8) = 3;
  os_unfair_lock_unlock(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24DC98AB8()
{
  v9 = v0;
  v1 = v0[5];
  v2 = v0[2];
  static RuntimeError.Code.transportError.getter(v8);
  sub_24DC3C254();
  swift_allocError();
  v4 = v3;
  MEMORY[0x2530363C0](v1);
  RuntimeError.init(code:message:cause:)(v8, 0xD00000000000002DLL, 0x800000024DCC5F80, v1, v4);
  swift_willThrow();
  MEMORY[0x2530363B0](v1);
  v5 = v2 + *(*v2 + 104);
  os_unfair_lock_lock(v5);
  *(v5 + 8) = 3;
  os_unfair_lock_unlock(v5);
  v6 = v0[1];

  return v6();
}

Swift::Void __swiftcall GRPCClient.beginGracefulShutdown()()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 104);
  os_unfair_lock_lock(v2);
  if (*(v2 + 8) - 2 >= 2)
  {
    if (*(v2 + 8))
    {
      v5 = v1 + 80;
      v3 = *(v1 + 80);
      v4 = *(v5 + 8);
      *(v2 + 8) = 2;
      os_unfair_lock_unlock(v2);
      v6 = *(*v0 + 96);
      (*(v4 + 40))(v3, v4);
      return;
    }

    *(v2 + 8) = 3;
  }

  os_unfair_lock_unlock(v2);
}

uint64_t GRPCClient.unary<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  *(v9 + 432) = v27;
  *(v9 + 440) = v10;
  *(v9 + 424) = v26;
  *(v9 + 408) = v25;
  *(v9 + 392) = v24;
  *(v9 + 376) = a8;
  *(v9 + 384) = v23;
  *(v9 + 360) = a5;
  *(v9 + 368) = a7;
  *(v9 + 344) = a2;
  *(v9 + 352) = a4;
  *(v9 + 336) = a1;
  *(v9 + 448) = *v10;
  v13 = type metadata accessor for ClientRequest();
  *(v9 + 456) = v13;
  v14 = *(v13 - 8);
  *(v9 + 464) = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v17 = *a3;
  *(v9 + 472) = v16;
  *(v9 + 480) = v17;
  *(v9 + 488) = *(a3 + 1);
  *(v9 + 504) = a3[3];
  v18 = *(a6 + 80);
  *(v9 + 80) = *(a6 + 64);
  *(v9 + 96) = v18;
  *(v9 + 112) = *(a6 + 96);
  *(v9 + 128) = *(a6 + 112);
  v19 = *(a6 + 16);
  *(v9 + 16) = *a6;
  *(v9 + 32) = v19;
  v20 = *(a6 + 48);
  *(v9 + 48) = *(a6 + 32);
  *(v9 + 64) = v20;

  return MEMORY[0x2822009F8](sub_24DC98E2C, 0, 0);
}

uint64_t sub_24DC98E2C()
{
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 472);
  v4 = *(v0 + 448);
  v5 = *(v0 + 416);
  v7 = *(v0 + 368);
  v6 = *(v0 + 376);
  v21 = *(v0 + 480);
  v22 = *(v0 + 384);
  v8 = *(v0 + 400);
  v9 = *(v0 + 384);
  v23 = v8;
  v24 = *(v0 + 424);
  (*(*(v0 + 464) + 16))(v3, *(v0 + 344), *(v0 + 456));
  sub_24DC7D078(v3, v9, v0 + 288);
  v10 = *(v0 + 304);
  *(v0 + 312) = *(v0 + 288);
  *(v0 + 328) = v10;
  *(v0 + 256) = v21;
  *(v0 + 272) = v2;
  *(v0 + 280) = v1;
  v11 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v11;
  *(v0 + 232) = *(v0 + 112);
  *(v0 + 248) = *(v0 + 128);
  v12 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v12;
  v13 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 184) = v13;
  v14 = swift_allocObject();
  *(v0 + 512) = v14;
  *(v14 + 16) = *(v4 + 80);
  *(v14 + 24) = v22;
  *(v14 + 40) = v23;
  *(v14 + 56) = v5;
  *(v14 + 64) = *(v4 + 88);
  *(v14 + 72) = v24;
  *(v14 + 88) = v7;
  *(v14 + 96) = v6;

  v15 = swift_task_alloc();
  *(v0 + 520) = v15;
  *v15 = v0;
  v15[1] = sub_24DC99024;
  v16 = *(v0 + 440);
  v17 = *(v0 + 352);
  v18 = *(v0 + 360);
  v19 = *(v0 + 336);
  v29 = *(v0 + 432);
  v27 = *(v0 + 400);
  v28 = *(v0 + 416);
  v26 = *(v0 + 384);

  return GRPCClient.bidirectionalStreaming<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(v19, v0 + 312, (v0 + 256), v17, v18, v0 + 136, &unk_24DCBCE90, v14);
}

uint64_t sub_24DC99024()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *(*v1 + 512);
  v5 = *v1;
  v2[66] = v0;

  v6 = v2[39];
  v7 = v2[41];

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC991BC, 0, 0);
  }

  else
  {
    v8 = v2[59];

    v9 = *(v5 + 8);

    return v9();
  }
}

uint64_t sub_24DC991BC()
{
  v1 = v0[59];

  v2 = v0[1];
  v3 = v0[66];

  return v2();
}

uint64_t sub_24DC99220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a4;
  v7[13] = a7;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  v8 = type metadata accessor for ClientResponse();
  v7[14] = v8;
  v9 = *(v8 - 8);
  v7[15] = v9;
  v10 = *(v9 + 64) + 15;
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC992F0, 0, 0);
}

uint64_t sub_24DC992F0()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = type metadata accessor for StreamingClientResponse();
  (*(*(v3 - 8) + 16))(v0 + 2, v2, v3);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_24DC993D4;
  v5 = v0[16];
  v6 = v0[13];

  return sub_24DC8E010(v5, (v0 + 2), v6);
}

uint64_t sub_24DC993D4()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 88);
  v4 = *v0;

  v11 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v1[18] = v6;
  *v6 = v4;
  v6[1] = sub_24DC995B0;
  v7 = v1[16];
  v8 = v1[12];
  v9 = v1[9];

  return v11(v9, v7);
}

uint64_t sub_24DC995B0()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_24DC9CE7C;
  }

  else
  {
    v3 = sub_24DC9CE78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t GRPCClient.bidirectionalStreaming<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1048) = v19;
  *(v9 + 1032) = v18;
  *(v9 + 1016) = v17;
  *(v9 + 1000) = v16;
  *(v9 + 1056) = v8;
  *(v9 + 992) = a8;
  *(v9 + 984) = a7;
  *(v9 + 976) = a5;
  *(v9 + 968) = a4;
  *(v9 + 960) = a1;
  *(v9 + 1064) = *v8;
  *(v9 + 1072) = *a2;
  *(v9 + 1088) = *(a2 + 16);
  v10 = a3[1];
  *(v9 + 1096) = *a3;
  *(v9 + 1104) = v10;
  v11 = a3[3];
  *(v9 + 1112) = a3[2];
  *(v9 + 1120) = v11;
  v12 = *(a6 + 80);
  *(v9 + 216) = *(a6 + 64);
  *(v9 + 232) = v12;
  *(v9 + 248) = *(a6 + 96);
  *(v9 + 264) = *(a6 + 112);
  v13 = *(a6 + 16);
  *(v9 + 152) = *a6;
  *(v9 + 168) = v13;
  v14 = *(a6 + 48);
  *(v9 + 184) = *(a6 + 32);
  *(v9 + 200) = v14;
  return MEMORY[0x2822009F8](sub_24DC997A8, 0, 0);
}

void sub_24DC997A8()
{
  v78 = v0;
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056) + *(**(v0 + 1056) + 104);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  if (*(v2 + 8) >= 2u)
  {
    static RuntimeError.Code.clientIsStopped.getter(&v69);
    sub_24DC3C254();
    v5 = swift_allocError();
    RuntimeError.init(code:message:cause:)(&v69, 0xD000000000000032, 0x800000024DCC5FD0, 0, v6);
    swift_willThrow();
    if (v5)
    {
      os_unfair_lock_unlock(v2);
      v7 = *(v0 + 8);

      v7();
      return;
    }
  }

  v8 = *(v2 + 24);
  v58 = v4;
  v59 = v3;
  if (*(v8 + 16))
  {
    v9 = sub_24DC9BBB4(*(v0 + 1096), *(v0 + 1104), *(v0 + 1112), *(v0 + 1120));
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

LABEL_28:
      v88 = (v0 + 1016);
      *(v0 + 1128) = v11;
      v36 = *(v0 + 1120);
      v37 = *(v0 + 1112);
      v38 = *(v0 + 1104);
      v39 = *(v0 + 1096);
      v55 = *(v0 + 1088);
      v40 = *(v0 + 1056);
      v54 = *(v0 + 1072);
      os_unfair_lock_unlock(v2);
      v57 = *(*v40 + 96);
      *&v69 = v39;
      *(&v69 + 1) = v38;
      *&v70 = v37;
      *(&v70 + 1) = v36;
      (*(v58 + 56))(&v69, v59, v58);
      v65 = *(v0 + 216);
      v66 = *(v0 + 232);
      v67 = *(v0 + 248);
      v68 = *(v0 + 264);
      v61 = *(v0 + 152);
      v62 = *(v0 + 168);
      v63 = *(v0 + 184);
      v64 = *(v0 + 200);
      v41 = *(v0 + 128);
      v75 = *(v0 + 112);
      v76 = v41;
      v77 = *(v0 + 144);
      v42 = *(v0 + 64);
      v71 = *(v0 + 48);
      v72 = v42;
      v43 = *(v0 + 96);
      v73 = *(v0 + 80);
      v74 = v43;
      v44 = *(v0 + 32);
      v69 = *(v0 + 16);
      v70 = v44;
      sub_24DC568C0(v0 + 152, v0 + 272);
      CallOptions.formUnion(with:)(&v69);
      sub_24DC3DFD4(v0 + 16, &qword_27F19EFD0, &qword_24DCB9AF0);
      *(v0 + 936) = v54;
      *(v0 + 952) = v55;
      *(v0 + 904) = v39;
      *(v0 + 912) = v38;
      *(v0 + 920) = v37;
      *(v0 + 928) = v36;
      *(v0 + 456) = v65;
      *(v0 + 472) = v66;
      *(v0 + 488) = v67;
      *(v0 + 504) = v68;
      *(v0 + 392) = v61;
      *(v0 + 408) = v62;
      *(v0 + 424) = v63;
      *(v0 + 440) = v64;
      v45 = swift_task_alloc();
      *(v0 + 1136) = v45;
      *v45 = v0;
      v45[1] = sub_24DC99E18;
      v46 = *(v0 + 1040);
      v47 = *(v0 + 1032);
      v48 = *v88;
      v49 = *(v0 + 1000);
      v50 = *(v0 + 984);
      v51 = *(v0 + 976);
      v52 = *(v0 + 968);
      v53 = *(v0 + 960);
      v86 = *(v0 + 1048);
      v87 = v58;
      v85 = v46;
      v84 = v59;
      v83 = v47;
      v81 = v49;
      v82 = v48;
      v80 = v50;

      sub_24DC80818(v53, v0 + 936, v0 + 904, v0 + 392, v52, v51, v40 + v57, v11);
      return;
    }
  }

  v56 = v2;
  v12 = *(v2 + 16);
  v13 = MEMORY[0x277D84F90];
  v88 = *(v12 + 16);
  if (!v88)
  {
LABEL_20:
    v26 = *(v13 + 16);
    if (v26)
    {
      *&v69 = MEMORY[0x277D84F90];
      sub_24DC9C318(0, v26, 0);
      v11 = v69;
      v27 = v13 + 32;
      do
      {
        sub_24DC4982C(v27, v0 + 808, &qword_27F19F288, &qword_24DCBCFB0);
        sub_24DC5B208(v0 + 808, v0 + 864);
        sub_24DC3DFD4(v0 + 808, &qword_27F19F288, &qword_24DCBCFB0);
        *&v69 = v11;
        v29 = *(v11 + 16);
        v28 = *(v11 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_24DC9C318((v28 > 1), v29 + 1, 1);
          v11 = v69;
        }

        *(v11 + 16) = v29 + 1;
        sub_24DC5B2AC((v0 + 864), v11 + 40 * v29 + 32);
        v27 += 56;
        --v26;
      }

      while (v26);
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    v30 = *(v0 + 1120);
    v31 = *(v0 + 1112);
    v32 = *(v0 + 1104);
    v33 = *(v0 + 1096);

    v2 = v56;
    v34 = *(v56 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v69 = *(v56 + 24);
    sub_24DC9BFE4(v11, v33, v32, v31, v30, isUniquelyReferenced_nonNull_native);

    *(v56 + 24) = v69;
    goto LABEL_28;
  }

  v14 = 0;
  v15 = v12 + 32;
  while (v14 < *(v12 + 16))
  {
    v16 = *(v0 + 1120);
    v17 = *(v0 + 1112);
    v60 = *(v0 + 1096);
    sub_24DC4982C(v15, v0 + 752, &qword_27F19F288, &qword_24DCBCFB0);
    v69 = v60;
    *&v70 = v17;
    *(&v70 + 1) = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F288, &qword_24DCBCFB0);
    if (sub_24DCA0190(&v69, v18))
    {
      v19 = *(v0 + 768);
      v69 = *(v0 + 752);
      v70 = v19;
      v71 = *(v0 + 784);
      LOBYTE(v72) = *(v0 + 800);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24DC9C338(0, *(v13 + 16) + 1, 1);
      }

      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24DC9C338((v20 > 1), v21 + 1, 1);
      }

      *(v13 + 16) = v21 + 1;
      v22 = v13 + 56 * v21;
      v23 = v69;
      v24 = v70;
      v25 = v71;
      *(v22 + 80) = v72;
      *(v22 + 48) = v24;
      *(v22 + 64) = v25;
      *(v22 + 32) = v23;
    }

    else
    {
      sub_24DC3DFD4(v0 + 752, &qword_27F19F288, &qword_24DCBCFB0);
    }

    v14 = (v14 + 1);
    v15 += 56;
    if (v88 == v14)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t sub_24DC99E18()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1 + 392;
  v5 = *(*v1 + 1136);
  v6 = *v1;
  *(*v1 + 1144) = v0;

  v7 = *(v2 + 1128);
  v8 = *v4;
  v9 = *(v4 + 16);
  v10 = *(v4 + 48);
  if (v0)
  {
    *(v3 + 544) = *(v4 + 32);
    *(v3 + 560) = v10;
    *(v3 + 512) = v8;
    *(v3 + 528) = v9;
    v11 = *(v4 + 64);
    v12 = *(v4 + 80);
    v13 = *(v4 + 96);
    *(v3 + 624) = *(v4 + 112);
    *(v3 + 592) = v12;
    *(v3 + 608) = v13;
    *(v3 + 576) = v11;
    sub_24DC9C9A4(v3 + 512);

    v14 = sub_24DC99FDC;
  }

  else
  {
    *(v3 + 664) = *(v4 + 32);
    *(v3 + 680) = v10;
    *(v3 + 632) = v8;
    *(v3 + 648) = v9;
    v15 = *(v4 + 64);
    v16 = *(v4 + 80);
    v17 = *(v4 + 96);
    *(v3 + 744) = *(v4 + 112);
    *(v3 + 712) = v16;
    *(v3 + 728) = v17;
    *(v3 + 696) = v15;
    sub_24DC9C9A4(v3 + 632);

    v14 = sub_24DC99FC4;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t GRPCClient.clientStreaming<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 280) = v21;
  *(v9 + 288) = v8;
  *(v9 + 264) = v20;
  *(v9 + 248) = v19;
  *(v9 + 232) = v18;
  *(v9 + 216) = a7;
  *(v9 + 224) = a8;
  *(v9 + 200) = a4;
  *(v9 + 208) = a5;
  *(v9 + 192) = a1;
  *(v9 + 296) = *v8;
  *(v9 + 304) = *a2;
  v10 = *a3;
  v11 = a3[1];
  *(v9 + 320) = *(a2 + 16);
  *(v9 + 328) = v10;
  v12 = a3[2];
  v13 = a3[3];
  *(v9 + 336) = v11;
  *(v9 + 344) = v12;
  *(v9 + 352) = v13;
  v14 = *(a6 + 80);
  *(v9 + 80) = *(a6 + 64);
  *(v9 + 96) = v14;
  *(v9 + 112) = *(a6 + 96);
  *(v9 + 128) = *(a6 + 112);
  v15 = *(a6 + 16);
  *(v9 + 16) = *a6;
  *(v9 + 32) = v15;
  v16 = *(a6 + 48);
  *(v9 + 48) = *(a6 + 32);
  *(v9 + 64) = v16;
  return MEMORY[0x2822009F8](sub_24DC9A0B0, 0, 0);
}

uint64_t sub_24DC9A0B0()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v4 = *(v0 + 320);
  v5 = *(v0 + 296);
  v6 = *(v0 + 264);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  *(v0 + 168) = *(v0 + 304);
  *(v0 + 184) = v4;
  *(v0 + 136) = v3;
  *(v0 + 152) = v2;
  *(v0 + 160) = v1;
  v9 = swift_allocObject();
  *(v0 + 360) = v9;
  *(v9 + 16) = *(v5 + 80);
  *(v9 + 24) = *(v0 + 232);
  *(v9 + 40) = *(v0 + 248);
  *(v9 + 56) = v6;
  *(v9 + 64) = *(v5 + 88);
  *(v9 + 72) = *(v0 + 272);
  *(v9 + 88) = v8;
  *(v9 + 96) = v7;

  v10 = swift_task_alloc();
  *(v0 + 368) = v10;
  *v10 = v0;
  v10[1] = sub_24DC9A238;
  v11 = *(v0 + 288);
  v12 = *(v0 + 200);
  v13 = *(v0 + 208);
  v14 = *(v0 + 192);
  v20 = *(v0 + 280);
  v18 = *(v0 + 248);
  v19 = *(v0 + 264);
  v17 = *(v0 + 232);

  return GRPCClient.bidirectionalStreaming<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(v14, v0 + 168, (v0 + 136), v12, v13, v0 + 16, &unk_24DCBCEB8, v9);
}

uint64_t sub_24DC9A238()
{
  v2 = *(*v1 + 368);
  v3 = *v1;
  v3[47] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC9A374, 0, 0);
  }

  else
  {
    v4 = v3[45];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24DC9A374()
{
  v1 = v0[45];

  v2 = v0[1];
  v3 = v0[47];

  return v2();
}

uint64_t sub_24DC9A3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a4;
  v7[13] = a7;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  v8 = type metadata accessor for ClientResponse();
  v7[14] = v8;
  v9 = *(v8 - 8);
  v7[15] = v9;
  v10 = *(v9 + 64) + 15;
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC9A4A8, 0, 0);
}

uint64_t sub_24DC9A4A8()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = type metadata accessor for StreamingClientResponse();
  (*(*(v3 - 8) + 16))(v0 + 2, v2, v3);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_24DC9A58C;
  v5 = v0[16];
  v6 = v0[13];

  return sub_24DC8E010(v5, (v0 + 2), v6);
}

uint64_t sub_24DC9A58C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 88);
  v4 = *v0;

  v11 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v1[18] = v6;
  *v6 = v4;
  v6[1] = sub_24DC9A768;
  v7 = v1[16];
  v8 = v1[12];
  v9 = v1[9];

  return v11(v9, v7);
}

uint64_t sub_24DC9A768()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_24DC9A8FC;
  }

  else
  {
    v3 = sub_24DC9A87C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DC9A87C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24DC9A8FC()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];
  v2 = v0[19];

  return v1();
}

uint64_t GRPCClient.serverStreaming<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 432) = v26;
  *(v9 + 440) = v8;
  *(v9 + 424) = v25;
  *(v9 + 408) = v24;
  *(v9 + 392) = v23;
  *(v9 + 376) = a8;
  *(v9 + 384) = v22;
  *(v9 + 360) = a5;
  *(v9 + 368) = a7;
  *(v9 + 344) = a2;
  *(v9 + 352) = a4;
  *(v9 + 336) = a1;
  v12 = type metadata accessor for ClientRequest();
  *(v9 + 448) = v12;
  v13 = *(v12 - 8);
  *(v9 + 456) = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v16 = *a3;
  *(v9 + 464) = v15;
  *(v9 + 472) = v16;
  *(v9 + 480) = *(a3 + 1);
  *(v9 + 496) = a3[3];
  v17 = *(a6 + 80);
  *(v9 + 80) = *(a6 + 64);
  *(v9 + 96) = v17;
  *(v9 + 112) = *(a6 + 96);
  *(v9 + 128) = *(a6 + 112);
  v18 = *(a6 + 16);
  *(v9 + 16) = *a6;
  *(v9 + 32) = v18;
  v19 = *(a6 + 48);
  *(v9 + 48) = *(a6 + 32);
  *(v9 + 64) = v19;

  return MEMORY[0x2822009F8](sub_24DC9AAC4, 0, 0);
}

uint64_t sub_24DC9AAC4()
{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v17 = *(v0 + 472);
  v3 = *(v0 + 464);
  v4 = *(v0 + 384);
  (*(*(v0 + 456) + 16))(v3, *(v0 + 344), *(v0 + 448));
  sub_24DC7D078(v3, v4, v0 + 288);
  v5 = *(v0 + 304);
  *(v0 + 312) = *(v0 + 288);
  *(v0 + 328) = v5;
  *(v0 + 256) = v17;
  *(v0 + 272) = v2;
  *(v0 + 280) = v1;
  v6 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v6;
  *(v0 + 232) = *(v0 + 112);
  *(v0 + 248) = *(v0 + 128);
  v7 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v7;
  v8 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 184) = v8;
  v9 = swift_task_alloc();
  *(v0 + 504) = v9;
  *v9 = v0;
  v9[1] = sub_24DC9AC30;
  v10 = *(v0 + 440);
  v11 = *(v0 + 368);
  v12 = *(v0 + 376);
  v13 = *(v0 + 352);
  v14 = *(v0 + 360);
  v15 = *(v0 + 336);
  v22 = *(v0 + 432);
  v20 = *(v0 + 400);
  v21 = *(v0 + 416);
  v19 = *(v0 + 384);

  return GRPCClient.bidirectionalStreaming<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(v15, v0 + 312, (v0 + 256), v13, v14, v0 + 136, v11, v12);
}

uint64_t sub_24DC9AC30()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  v2[64] = v0;

  v5 = v2[39];
  v6 = v2[41];

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC9ADA0, 0, 0);
  }

  else
  {
    v7 = v2[58];

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_24DC9ADA0()
{
  v1 = v0[58];

  v2 = v0[1];
  v3 = v0[64];

  return v2();
}

uint64_t *GRPCClient.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  v2 = v1;
  v3 = v0 + *(*v0 + 104);
  v4 = *(v2 + 88);
  type metadata accessor for GRPCClient.StateMachine();
  v5 = *(sub_24DCB4C14() + 16);
  sub_24DCB5404();
  return v0;
}

uint64_t GRPCClient.__deallocating_deinit()
{
  GRPCClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t withGRPCClient<A, B>(transport:interceptors:isolation:handleClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v14;
  v8[16] = v15;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  if (a4)
  {
    swift_getObjectType();
    v9 = sub_24DCB50D4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v8[17] = v9;
  v8[18] = v11;

  return MEMORY[0x2822009F8](sub_24DC9AFE0, v9, v11);
}

uint64_t sub_24DC9AFE0()
{
  v28 = v0;
  v1 = v0[9];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_24DC9C338(0, v2, 0);
    v3 = v21;
    v4 = v1 + 32;
    do
    {
      sub_24DC5B208(v4, (v0 + 2));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F020, &qword_24DCBCE70);
      static ConditionalInterceptor.Subject.all.getter(&v24);
      v26 = v24;
      v27 = v25;
      static ConditionalInterceptor<>.apply(_:to:)(v22, v0 + 2, &v26);

      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      v6 = *(v21 + 16);
      v5 = *(v21 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_24DC9C338((v5 > 1), v6 + 1, 1);
      }

      *(v21 + 16) = v6 + 1;
      v7 = v21 + 56 * v6;
      v8 = v22[0];
      v9 = v22[1];
      v10 = v22[2];
      *(v7 + 80) = v23;
      *(v7 + 48) = v9;
      *(v7 + 64) = v10;
      *(v7 + 32) = v8;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v0[19] = v3;
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_24DC9B1B4;
  v12 = v0[16];
  v13 = v0[13];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[12];
  v17 = v0[10];
  v18 = v0[7];
  v19 = v0[8];
  v30 = v0[15];
  v31 = v12;

  return withGRPCClient<A, B>(transport:interceptorPipeline:isolation:handleClient:)(v18, v19, v3, v17, v15, v16, v13, v14);
}

uint64_t sub_24DC9B1B4()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {
    v4 = v3[17];
    v5 = v3[18];

    return MEMORY[0x2822009F8](sub_24DC9B2EC, v4, v5);
  }

  else
  {
    v6 = v3[19];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_24DC9B2EC()
{
  v1 = v0[19];

  v2 = v0[1];
  v3 = v0[21];

  return v2();
}

uint64_t withGRPCClient<A, B>(transport:interceptorPipeline:isolation:handleClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v14;
  v8[11] = v15;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  if (a4)
  {
    swift_getObjectType();
    v9 = sub_24DCB50D4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v8[12] = v9;
  v8[13] = v11;

  return MEMORY[0x2822009F8](sub_24DC9B3FC, v9, v11);
}

uint64_t sub_24DC9B3FC()
{
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = *(v0 + 24);
  v4 = *(v0 + 56);
  *(v2 + 16) = *(v0 + 72);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 56) = v4;
  v5 = *(MEMORY[0x277D85A48] + 4);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_24DC9B4E8;
  v7 = *(v0 + 80);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);

  return MEMORY[0x2822008A8](v10);
}

uint64_t sub_24DC9B4E8()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {
    v4 = v3[12];
    v5 = v3[13];

    return MEMORY[0x2822009F8](sub_24DC9B620, v4, v5);
  }

  else
  {
    v6 = v3[14];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_24DC9B620()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_24DC9B684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC9B738, 0, 0);
}

uint64_t sub_24DC9B738()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = type metadata accessor for GRPCClient();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v12 = sub_24DC9C710(v7, v6);
  v0[12] = v12;
  v13 = sub_24DCB51C4();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = v12;

  sub_24DC925A4(v2, &unk_24DCBCFA8, v14);
  sub_24DC3DFD4(v2, &qword_27F19F050, &qword_24DCB9EB0);
  v20 = (v5 + *v5);
  v15 = v5[1];
  v16 = swift_task_alloc();
  v0[13] = v16;
  *v16 = v0;
  v16[1] = sub_24DC9B930;
  v17 = v0[7];
  v18 = v0[2];

  return v20(v18, v12);
}

uint64_t sub_24DC9B930()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_24DC9BAB8;
  }

  else
  {
    v3 = sub_24DC9BA44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DC9BA44()
{
  v1 = v0[11];
  v2 = v0[12];
  GRPCClient.beginGracefulShutdown()();

  v3 = v0[1];

  return v3();
}

uint64_t sub_24DC9BAB8()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_24DC9BB24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24DC2FD00;

  return GRPCClient.runConnections()();
}

unint64_t sub_24DC9BBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  sub_24DC9CDEC();
  v6 = sub_24DCB4D24();
  return sub_24DC9BC24(a1, a2, a3, a4, v6);
}

unint64_t sub_24DC9BC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_24DC8814C();
    do
    {
      v9 = (*(v5 + 48) + 32 * v7);
      v12 = *v9;
      v13 = v9[1];
      v14 = v9[2];
      v15 = v9[3];

      v10 = sub_24DCB4DA4();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t sub_24DC9BD28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F290, &qword_24DCBCFB8);
  v34 = a2;
  result = sub_24DCB5604();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 48) + 32 * v21;
      v35 = *v22;
      v36 = *(v22 + 16);
      v37 = *(v22 + 24);
      v23 = *(*(v5 + 56) + 8 * v21);
      if ((v34 & 1) == 0)
      {
      }

      v24 = *(v8 + 40);
      sub_24DC9CDEC();
      result = sub_24DCB4D24();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 32 * v16;
      *v17 = v35;
      *(v17 + 16) = v36;
      *(v17 + 24) = v37;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24DC9BFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_24DC9BBB4(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_24DC9BD28(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_24DC9BBB4(a2, a3, a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_24DCB5824();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_24DC9C190();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 32 * v15);
  *v30 = a2;
  v30[1] = a3;
  v30[2] = a4;
  v30[3] = a5;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

void *sub_24DC9C190()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F290, &qword_24DCBCFB8);
  v2 = *v0;
  v3 = sub_24DCB55F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_24DC9C318(void *a1, int64_t a2, char a3)
{
  result = sub_24DC9C358(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24DC9C338(void *a1, int64_t a2, char a3)
{
  result = sub_24DC9C4A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24DC9C358(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2A0, &qword_24DCBCFC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F020, &qword_24DCBCE70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24DC9C4A0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2A8, &qword_24DCBCFC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F288, &qword_24DCBCFB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_24DC9C5EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F290, &qword_24DCBCFB8);
    v3 = sub_24DCB5614();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_24DC9BBB4(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t *sub_24DC9C710(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  (*(*(*(*v2 + 80) - 8) + 16))(v2 + *(*v2 + 96), a1, *(*v2 + 80));
  v5 = *(v4 + 88);
  v10[0] = 0;
  v11 = a2;
  v12 = sub_24DC9C5EC(MEMORY[0x277D84F90]);
  LODWORD(v13) = 0;
  v14 = 0uLL;
  *(&v13 + 1) = 0;
  v6 = type metadata accessor for GRPCClient.StateMachine();
  (*(*(v6 - 8) + 32))(&v13 + 8, v10, v6);
  v7 = (v2 + *(*v2 + 104));
  v8 = v14;
  *v7 = v13;
  v7[1] = v8;
  return v2;
}

uint64_t *sub_24DC9C840(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_24DC9C710(a1, a2);
}

uint64_t sub_24DC9C8A4()
{
  v1 = *(v0 + 96);

  return swift_deallocObject();
}

uint64_t sub_24DC9C8DC(uint64_t a1, uint64_t a2)
{
  v6 = v2[4];
  v8 = v2[11];
  v7 = v2[12];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24DC334F4;

  return sub_24DC99220(a1, a2, v8, v7, v9, v10, v6);
}

uint64_t sub_24DC9C9F8(uint64_t a1, uint64_t a2)
{
  v6 = v2[4];
  v8 = v2[11];
  v7 = v2[12];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_24DC2FD00;

  return sub_24DC9A3D8(a1, a2, v8, v7, v9, v10, v6);
}

uint64_t sub_24DC9CAC0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24DC334F4;

  return sub_24DC9B684(a1, a2, v8, v10, v11, v12, v6, v7);
}

uint64_t sub_24DC9CBB0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC9CC90(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for GRPCClient.StateMachine();
  return sub_24DCB4C04();
}

uint64_t sub_24DC9CCDC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC9CD18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_24DC9CD58()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DC334F4;

  return sub_24DC9BB24();
}

unint64_t sub_24DC9CDEC()
{
  result = qword_27F19F298;
  if (!qword_27F19F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F298);
  }

  return result;
}

uint64_t sub_24DC9CE8C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    goto LABEL_48;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v43 = a3;
    v44 = a4 & 0xFFFFFFFFFFFFFFLL;
    if ((a2 & 0x1000000000000000) == 0)
    {
      v14 = HIBYTE(a4) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        if ((result & 0x1000000000000000) != 0)
        {
          v15 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if (v14 != (result & 0xFFFFFFFFFFFFLL))
          {
            goto LABEL_46;
          }
        }

        else
        {
          v35 = HIBYTE(a4) & 0xF;
          v33 = sub_24DCB5504();
          v14 = v35;
          v15 = v33;
          if (v35 != v34)
          {
            goto LABEL_46;
          }
        }

        if (v14)
        {
          v16 = &v43;
          while (1)
          {
            v18 = *v16;
            v16 = (v16 + 1);
            v17 = v18;
            v20 = *v15++;
            v19 = v20;
            if ((v17 & 0x80000000) == 0 && ((v19 ^ v17) & 0xDF) != 0)
            {
              goto LABEL_46;
            }

            if (!--v14)
            {
              goto LABEL_47;
            }
          }
        }

        goto LABEL_47;
      }

      v42[0] = result;
      v42[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (v14 == (HIBYTE(a2) & 0xF))
      {
        if (v14)
        {
          v24 = &v43;
          v25 = v42;
          while (1)
          {
            v27 = *v24;
            v24 = (v24 + 1);
            v26 = v27;
            v29 = *v25++;
            v28 = v29;
            if ((v26 & 0x80000000) == 0 && ((v28 ^ v26) & 0xDF) != 0)
            {
              goto LABEL_46;
            }

            if (!--v14)
            {
              goto LABEL_47;
            }
          }
        }

        goto LABEL_47;
      }

LABEL_46:
      LOBYTE(v11) = 0;
      return v11;
    }

    goto LABEL_48;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v4 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a3 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_48:

    return sub_24DC9D0E4(result, a2, a3, a4);
  }

  v38 = result;
  v40 = a2;
  v36 = a3;
  v37 = a4;
  v30 = sub_24DCB5504();
  a3 = v36;
  a4 = v37;
  v4 = v30;
  v5 = v31;
  result = v38;
  a2 = v40;
  if ((v40 & 0x1000000000000000) != 0)
  {
    goto LABEL_48;
  }

LABEL_5:
  if ((a2 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a2) & 0xF;
    v43 = result;
    v44 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (v5 == v21)
    {
      if (v21)
      {
        v22 = &v43;
        do
        {
          v23 = *v4;
          if ((v23 & 0x80000000) == 0 && ((*v22 ^ v23) & 0xDF) != 0)
          {
            goto LABEL_46;
          }

          ++v4;
          v22 = (v22 + 1);
        }

        while (--v21);
      }

LABEL_47:
      LOBYTE(v11) = 1;
      return v11;
    }

    goto LABEL_46;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    v39 = v5;
    v41 = v4;
    result = sub_24DCB5504();
    v5 = v39;
    v4 = v41;
    v6 = result;
    if (v39 == v32)
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

  v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  if (v5 != (result & 0xFFFFFFFFFFFFLL))
  {
LABEL_56:
    LOBYTE(v11) = 0;
    return v11;
  }

LABEL_8:
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5)
    {
      v7 = v5 - 1;
      do
      {
        v9 = *v4++;
        v8 = v9;
        LOBYTE(v9) = *v6++;
        v11 = ((v9 ^ v8) & 0xDF) == 0 || v8 < 0;
        v13 = v7-- != 0;
      }

      while (v11 && v13);
    }

    else
    {
      LOBYTE(v11) = 1;
    }

    return v11;
  }

  __break(1u);
  return result;
}

unint64_t sub_24DC9D114(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v38 = v6;
  v7 = 4 * v6;
  v8 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  v35 = a4 & 0xFFFFFFFFFFFFFFLL;
  v34 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v41 = v9;
  v42 = v10;
  v40 = 4 * v10;
  v45 = a1;
  v11 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v36 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  v14 = 15;
  while (1)
  {
    v15 = v14 >> 14;
    v16 = v14 >> 14 == v7;
    if (v14 >> 14 == v7)
    {
      v17 = 0;
      goto LABEL_28;
    }

    v18 = v14;
    if ((v14 & 0xC) == v41)
    {
      v21 = result;
      v18 = sub_24DC3312C(v14, a3, a4);
      result = v21;
    }

    v19 = v18 >> 16;
    if (v18 >> 16 >= v38)
    {
      goto LABEL_51;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v31 = result;
      v17 = sub_24DCB4EB4();
      result = v31;
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        v43 = a3;
        v44 = v35;
        v20 = &v43;
      }

      else
      {
        v20 = v34;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v30 = result;
          v20 = sub_24DCB5504();
          result = v30;
        }
      }

      v17 = *(v20 + v19);
    }

    if ((v14 & 0xC) == v41)
    {
      v22 = result;
      v14 = sub_24DC3312C(v14, a3, a4);
      result = v22;
      if ((a4 & 0x1000000000000000) == 0)
      {
LABEL_23:
        v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_28;
      }
    }

    else if ((a4 & 0x1000000000000000) == 0)
    {
      goto LABEL_23;
    }

    if (v38 <= v14 >> 16)
    {
      goto LABEL_53;
    }

    v23 = result;
    v14 = sub_24DCB4E74();
    result = v23;
LABEL_28:
    if (v40 == result >> 14)
    {
      return v16;
    }

    v24 = result & 0xC;
    v25 = result;
    if (v24 == v12)
    {
      v29 = result;
      v25 = sub_24DC3312C(result, v45, a2);
      result = v29;
    }

    v26 = v25 >> 16;
    if (v25 >> 16 >= v42)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v33 = result;
      v28 = sub_24DCB4EB4();
      result = v33;
      if (v24 != v12)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v43 = v45;
        v44 = v37;
        v27 = &v43;
      }

      else
      {
        v27 = v36;
        if ((v45 & 0x1000000000000000) == 0)
        {
          v32 = result;
          v27 = sub_24DCB5504();
          result = v32;
        }
      }

      v28 = *(v27 + v26);
      if (v24 != v12)
      {
LABEL_38:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_43;
      }
    }

    result = sub_24DC3312C(result, v45, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_39:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v15 == v7)
      {
        return 0;
      }

      goto LABEL_45;
    }

LABEL_43:
    if (v42 <= result >> 16)
    {
      goto LABEL_52;
    }

    result = sub_24DCB4E74();
    if (v15 == v7)
    {
      return 0;
    }

LABEL_45:
    v16 = 0;
    if ((v17 & 0x80) != 0 || ((v28 ^ v17) & 0xDF) != 0)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t ClientRequest.metadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t (*ClientRequest.message.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t ClientRequest.init(message:metadata:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *a2;
  v7 = type metadata accessor for ClientRequest();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 28);

  return v8(v9, a1, a3);
}

uint64_t StreamingClientRequest.metadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_24DC9D640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  *a4 = &unk_24DCBD108;
  a4[1] = v8;
}

uint64_t sub_24DC9D6B8(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24DC2FD00;

  return v8(a2);
}

uint64_t sub_24DC9D7AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  v9 = *(a2 + 16);

  *(a2 + 8) = &unk_24DCBD0F8;
  *(a2 + 16) = v8;
  return result;
}

uint64_t sub_24DC9D830(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24DC334F4;

  return v6();
}

uint64_t StreamingClientRequest.producer.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StreamingClientRequest.producer.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void StreamingClientRequest.init(of:metadata:producer:)(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = *a1;
  a4[1] = a2;
  a4[2] = a3;
}

uint64_t sub_24DC9D9D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DC9DA10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DC9DA58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DC9DAB0()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_24DC9DAE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DC334F4;

  return sub_24DC9D830(a1, v5);
}

uint64_t sub_24DC9DBAC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24DC2FD00;

  return sub_24DC9D6B8(a1, a2, v7);
}

uint64_t sub_24DC9DC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = *(a3 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = *(*(sub_24DCB5414() - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = *(a4 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[12] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC9DE4C, 0, 0);
}

uint64_t sub_24DC9DE4C()
{
  v1 = v0[14];
  v2 = v0[6];
  (*(v0[10] + 16))(v0[11], v0[2], v0[5]);
  sub_24DCB4F04();
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_24DCB5444();
  if ((*(v7 + 48))(v5, 1, v9) == 1)
  {
    v10 = v0[11];
    v12 = v0[8];
    v11 = v0[9];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v13 = v0[1];

    return v13();
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[9], v0[4]);
    v15 = swift_task_alloc();
    v0[15] = v15;
    *v15 = v0;
    v15[1] = sub_24DC9E02C;
    v16 = v0[8];
    v17 = v0[3];
    v18 = v0[4];

    return sub_24DC5D9C0(v16);
  }
}

uint64_t sub_24DC9E02C()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_24DC9E2FC;
  }

  else
  {
    v3 = sub_24DC9E140;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DC9E140()
{
  (*(v0[7] + 8))(v0[8], v0[4]);
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_24DCB5444();
  if ((*(v5 + 48))(v3, 1, v7) == 1)
  {
    v8 = v0[11];
    v10 = v0[8];
    v9 = v0[9];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[9], v0[4]);
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = sub_24DC9E02C;
    v14 = v0[8];
    v15 = v0[3];
    v16 = v0[4];

    return sub_24DC5D9C0(v14);
  }
}

uint64_t sub_24DC9E2FC()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[4]);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];
  v7 = v0[16];

  return v6();
}

uint64_t sub_24DC9E3C8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);
  sub_24DC5E3E8();
  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_24DC9E430(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  sub_24DC5E414(a1);
  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_24DC9E498(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24DC9E4D4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = *(a2 + 16);
  *v7 = v3;
  v7[1] = sub_24DC334F4;

  return sub_24DC5D9C0(a1);
}

uint64_t sub_24DC9E584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = *(a4 + 16);
  *v11 = v5;
  v11[1] = sub_24DC2FD00;

  return sub_24DC9DC80(a1, v10, v12, a2, a3);
}

uint64_t sub_24DC9E648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  type metadata accessor for RPCResponsePart();
  v6 = type metadata accessor for RPCWriter();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t sub_24DC9E6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X7>, uint64_t *a6@<X8>)
{
  v23 = a5;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v19 = *(type metadata accessor for MessageToRPCResponsePartWriter() + 52);
  v20 = *(a3 - 8);
  (*(v20 + 16))(a6 + v19, a1, a3);
  (*(v11 + 16))(v14, a2, a4);
  type metadata accessor for RPCResponsePart();
  RPCWriter.init<A>(wrapping:)(v14, a4, v23, a6);
  (*(v11 + 8))(a2, a4);
  return (*(v20 + 8))(a1, a3);
}

uint64_t sub_24DC9E8BC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *(a2 + 24);
  v3[11] = *(a2 + 40);
  v4 = type metadata accessor for RPCResponsePart();
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC9E994, 0, 0);
}

uint64_t sub_24DC9E994()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = type metadata accessor for RPCWriter();
  v0[15] = v8;
  v9 = *(v8 - 8);
  v0[16] = v9;
  (*(v9 + 16))(v0 + 2, v4, v8);
  v10 = v4 + *(v7 + 52);
  (*(*(v7 + 32) + 16))(v6, v5, v3, *(v7 + 16));
  v11 = v0[14];
  v12 = v0[12];
  swift_storeEnumTagMultiPayload();
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_24DC9EB70;
  v14 = v0[14];

  return RPCWriter.write(_:)(v14);
}

uint64_t sub_24DC9EB70()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  v2[18] = v0;

  v5 = v2[16];
  v6 = v2[15];
  (*(v2[13] + 8))(v2[14], v2[12]);
  (*(v5 + 8))(v2 + 2, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DC9ED64, 0, 0);
  }

  else
  {

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_24DC9ED64()
{
  v1 = v0[18];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24DC9EDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_24DC9EDF0, 0, 0);
}

uint64_t sub_24DC9EDF0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v15 = *(v0 + 56);
  *(v4 + 16) = v2[2];
  *(v4 + 24) = v2[3];
  *(v4 + 32) = v1;
  *(v4 + 40) = v2[4];
  *(v4 + 48) = v2[5];
  *(v4 + 56) = v15;
  v5 = type metadata accessor for RPCResponsePart();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  v7 = sub_24DC59F28(sub_24DC9EFE4, v4, v1, v5, v6, v15, MEMORY[0x277D84950], v0 + 16);
  *(v0 + 72) = v7;
  v8 = v7;

  *(v0 + 24) = v8;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  v10 = type metadata accessor for RPCWriter();
  v11 = sub_24DCB50A4();
  WitnessTable = swift_getWitnessTable();
  *v9 = v0;
  v9[1] = sub_24DC59CC4;
  v13 = *(v0 + 64);

  return RPCWriter.write<A>(contentsOf:)(v0 + 24, v10, v11, WitnessTable);
}

uint64_t sub_24DC9EFE4(uint64_t a1, void *a2)
{
  v9 = *(v2 + 40);
  v10 = *(v2 + 16);
  v6 = *(v2 + 64);
  v7 = v6 + *(type metadata accessor for MessageToRPCResponsePartWriter() + 52);
  result = (*(v9 + 16))(a1, *(&v10 + 1), *(&v9 + 1), v10);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    type metadata accessor for RPCResponsePart();
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_24DC9F0CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return sub_24DC9E8BC(a1, a2);
}

uint64_t sub_24DC9F170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24DC2FD00;

  return sub_24DC9EDC8(a1, a4, a2, a3);
}

uint64_t sub_24DC9F22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v32 = a1;
  v33 = a7;
  v30 = a6;
  v31 = a2;
  v34 = a8;
  v35 = a3;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v13);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v22;
  v37 = v21;
  v38 = a9;
  v39 = v23;
  v24 = type metadata accessor for MessageToRPCResponsePartWriter();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v30 - v26);
  (*(v17 + 16))(v20, v31, a5);
  (*(v11 + 16))(v15, v32, a4);
  sub_24DC9E6FC(v20, v15, a5, a4, v33, v27);
  WitnessTable = swift_getWitnessTable();
  return RPCWriter.init<A>(wrapping:)(v27, v24, WitnessTable, v34);
}

uint64_t sub_24DC9F448(void *a1)
{
  v2 = a1[3];
  v3 = a1[5];
  type metadata accessor for RPCResponsePart();
  result = type metadata accessor for RPCWriter();
  if (v5 <= 0x3F)
  {
    v6 = a1[2];
    result = swift_checkMetadataState();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DC9F4E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 40) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_24DC9F668(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 40] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

uint64_t CallOptions.timeout.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t CallOptions.timeout.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

uint64_t CallOptions.maxRequestMessageBytes.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t CallOptions.maxRequestMessageBytes.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t CallOptions.maxResponseMessageBytes.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t CallOptions.maxResponseMessageBytes.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t CallOptions.executionPolicy.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 72);
  v7[0] = *(v1 + 56);
  v7[1] = v2;
  v8[0] = *(v1 + 88);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 97);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_24DC33DDC(v7, &v6);
}

__n128 CallOptions.executionPolicy.setter(uint64_t a1)
{
  v3 = *(v1 + 72);
  v6[0] = *(v1 + 56);
  v6[1] = v3;
  v7[0] = *(v1 + 88);
  *(v7 + 9) = *(v1 + 97);
  sub_24DC9FA60(v6);
  v4 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v4;
  *(v1 + 88) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 97) = result;
  return result;
}

uint64_t sub_24DC9FA60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EDB0, &qword_24DCB80B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_24DC9FB20@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char *a11)
{
  v12 = *a11;
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0u;
  *(a9 + 88) = 0u;
  *(a9 + 104) = 0;
  *(a9 + 112) = -1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 17) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6 & 1;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  v13 = *(a9 + 56);
  v14 = *(a9 + 72);
  v15 = *(a9 + 88);
  *&v19[9] = *(a9 + 97);
  v18[1] = v14;
  *v19 = v15;
  v18[0] = v13;
  sub_24DC9FA60(v18);
  v16 = *(a10 + 16);
  *(a9 + 56) = *a10;
  *(a9 + 72) = v16;
  *(a9 + 88) = *(a10 + 32);
  result = *(a10 + 41);
  *(a9 + 97) = result;
  *(a9 + 113) = v12;
  return result;
}

double static CallOptions.defaults.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 513;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v2 = *(a1 + 72);
  v4[0] = *(a1 + 56);
  v4[1] = v2;
  v5[0] = *(a1 + 88);
  *(v5 + 9) = *(a1 + 97);
  sub_24DC9FA60(v4);
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1023;
  return result;
}

double CallOptions.formUnion(with:)(__int128 *a1)
{
  v2 = a1[7];
  *&v18[32] = a1[6];
  *&v18[48] = v2;
  v18[64] = *(a1 + 128);
  v3 = a1[3];
  v16 = a1[2];
  v17 = v3;
  v4 = a1[5];
  *v18 = a1[4];
  *&v18[16] = v4;
  v5 = a1[1];
  v14 = *a1;
  v15 = v5;
  if (sub_24DC49638(&v14) != 1)
  {
    if (*(v1 + 16) == 1)
    {
      v7 = v16;
      result = *&v15;
      *v1 = v15;
      *(v1 + 16) = v7;
    }

    if (*(v1 + 17) == 2)
    {
      *(v1 + 17) = BYTE8(v14);
    }

    if (*(v1 + 32) == 1)
    {
      v8 = v17;
      *(v1 + 24) = *(&v16 + 1);
      *(v1 + 32) = v8;
    }

    if (*(v1 + 48) == 1)
    {
      v9 = v18[0];
      *(v1 + 40) = *(&v17 + 1);
      *(v1 + 48) = v9;
    }

    if (*(v1 + 112) == 255)
    {
      v10 = *(v1 + 72);
      v12[0] = *(v1 + 56);
      v12[1] = v10;
      v13[0] = *(v1 + 88);
      *(v13 + 9) = *(v1 + 97);
      sub_24DC33DDC(&v18[8], &v11);
      sub_24DC9FA60(v12);
      *(v1 + 56) = *&v18[8];
      *(v1 + 72) = *&v18[24];
      *(v1 + 88) = *&v18[40];
      result = *&v18[49];
      *(v1 + 97) = *&v18[49];
    }
  }

  return result;
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24DC9FDD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 114))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 17);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24DC9FE38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 114) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 114) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 2;
    }
  }

  return result;
}

uint64_t static ConditionalInterceptor.Subject.services(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
}

uint64_t static ConditionalInterceptor.Subject.methods(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;
}

Swift::Bool __swiftcall ConditionalInterceptor.Subject.applies(to:)(GRPCCoreInternal::MethodDescriptor to)
{
  countAndFlagsBits = to.service.fullyQualifiedService._countAndFlagsBits;
  v3 = *to.service.fullyQualifiedService._countAndFlagsBits;
  v4 = countAndFlagsBits[1];
  if (!*(v1 + 8))
  {
    return sub_24DC9FF10(v3, v4, *v1);
  }

  if (*(v1 + 8) == 1)
  {
    return sub_24DCA0018(v3, v4, countAndFlagsBits[2], countAndFlagsBits[3], *v1);
  }

  return 1;
}

uint64_t sub_24DC9FF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = *(a3 + 40), sub_24DC880F4(), v5 = sub_24DCB4D24(), v6 = -1 << *(a3 + 32), v7 = v5 & ~v6, ((*(a3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    sub_24DC881B0();
    do
    {
      v9 = (*(a3 + 48) + 16 * v7);
      v12 = *v9;
      v13 = v9[1];

      v10 = sub_24DCB4DA4();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_24DCA0018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 16) && (v6 = *(a5 + 40), sub_24DC9CDEC(), v7 = sub_24DCB4D24(), v8 = -1 << *(a5 + 32), v9 = v7 & ~v8, ((*(a5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    sub_24DC8814C();
    do
    {
      v11 = (*(a5 + 48) + 32 * v9);
      v14 = *v11;
      v15 = v11[1];
      v16 = v11[2];
      v17 = v11[3];

      v12 = sub_24DCB4DA4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_24DCA0174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 28));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a2 = v4;
  *(a2 + 8) = v3;
}

BOOL sub_24DCA0190(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = (v2 + *(a2 + 28));
  v6 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  v11 = *(a1 + 3);
  v12 = v6;
  v13 = v5;
  v9 = v3;
  v10 = v4;

  v14.service.fullyQualifiedService._countAndFlagsBits = &v9;
  v7 = ConditionalInterceptor.Subject.applies(to:)(v14);

  return v7;
}

uint64_t sub_24DCA021C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_24DC5B208(a1, a3);
  *(a3 + 40) = v4;
  *(a3 + 48) = v5;
}

uint64_t sub_24DCA0270(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for ConditionalInterceptor.Subject();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24DCA02FC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFD)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 > 2)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_24DCA0448(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFD)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFD)
        {
          *(v18 + 8) = 0;
          *v18 = a2 - 254;
        }

        else
        {
          *(v18 + 8) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_24DCA0648()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_16GRPCCoreInternal22ConditionalInterceptorV7SubjectV7WrappedOyx__G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_24DCA06A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DCA06E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24DCA072C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24DCA0770(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t dispatch thunk of ServerInterceptor.intercept<A, B>(request:context:next:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 8);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_24DC2FD00;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t ServerContext.descriptor.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 ServerContext.descriptor.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = v1->n128_u64[1];
  v5 = v1[1].n128_u64[1];

  result = v7;
  *v1 = v7;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t ServerContext.remotePeer.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ServerContext.remotePeer.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ServerContext.localPeer.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ServerContext.localPeer.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

double sub_24DCA0AE4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_24DCA0B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2B0, &qword_24DCBD4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DCA0B78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2B0, &qword_24DCBD4C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ServerContext.cancellation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 104);

  *(v1 + 104) = v2;
  return result;
}

__n128 ServerContext.init(descriptor:remotePeer:localPeer:cancellation:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  result = *a1;
  v8 = a1[1].n128_u64[0];
  v9 = a1[1].n128_u64[1];
  v10 = *a6;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *a7 = result;
  *(a7 + 16) = v8;
  *(a7 + 24) = v9;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  *(a7 + 56) = a5;
  *(a7 + 96) = 0;
  *(a7 + 104) = v10;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16GRPCCoreInternal13ServerContextV17TransportSpecific_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_24DCA0CC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DCA0D10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static GRPCAsyncThrowingStream.makeStream(of:)(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v2 = sub_24DCB52A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v24 = sub_24DCB5314();
  v7 = sub_24DCB52D4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v23 - v15;
  v17 = *(v14 + 48);
  sub_24DCA10F0(v6);
  sub_24DCB5284();
  (*(v3 + 8))(v6, v2);
  (*(v9 + 16))(v13, v16, TupleTypeMetadata2);
  v18 = *(TupleTypeMetadata2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v19 = sub_24DCB5314();
  (*(*(v19 - 8) + 32))(v25, v13, v19);
  (*(*(v7 - 8) + 8))(&v13[v18], v7);
  (*(v9 + 32))(v13, v16, TupleTypeMetadata2);
  v20 = *(TupleTypeMetadata2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v21 = sub_24DCB52D4();
  (*(*(v21 - 8) + 32))(v26, &v13[v20], v21);
  return (*(*(v24 - 8) + 8))(v13);
}

uint64_t sub_24DCA10F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v3 = sub_24DCB52A4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_24DCA1194(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v8 = sub_24DCB5294();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  (*(v4 + 16))(v7, a1, v3);
  sub_24DCB52D4();
  sub_24DCB52B4();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_24DCA1340(uint64_t a1, uint64_t a2)
{
  MEMORY[0x2530363C0]();
  v3 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  sub_24DCB52D4();
  return sub_24DCB52C4();
}

uint64_t GRPCAsyncThrowingStream.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v4 = sub_24DCB5304();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_24DCB5314();
  sub_24DCB5204();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v8 = sub_24DCB5304();
  return (*(*(v8 - 8) + 32))(a2, v7, v8);
}

uint64_t GRPCAsyncThrowingStream.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return GRPCAsyncThrowingStream.AsyncIterator.next(isolation:)(a1, 0, 0, a2);
}

uint64_t GRPCAsyncThrowingStream.AsyncIterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a3;
  v9 = *(MEMORY[0x277D858B8] + 4);
  v10 = swift_task_alloc();
  v4[5] = v10;
  v11 = *(a4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v12 = sub_24DCB5304();
  *v10 = v4;
  v10[1] = sub_24DCA167C;

  return MEMORY[0x2822005A8](a1, a2, a3, v12, v4 + 2);
}

uint64_t sub_24DCA167C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    if (*(v2 + 24))
    {
      v5 = *(v2 + 32);
      swift_getObjectType();
      v6 = sub_24DCB50D4();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    return MEMORY[0x2822009F8](sub_24DCA17E8, v6, v8);
  }

  else
  {
    v9 = *(v4 + 8);

    return v9();
  }
}

uint64_t sub_24DCA1800(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return GRPCAsyncThrowingStream.AsyncIterator.next()(a1, a2);
}

uint64_t sub_24DCA18A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_24DC973FC;

  return GRPCAsyncThrowingStream.AsyncIterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t sub_24DCA196C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  GRPCAsyncThrowingStream.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t GRPCAsyncThrowingStream.Continuation.write(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24DCA19F0, 0, 0);
}

uint64_t sub_24DCA19F0()
{
  v1 = v0[4];
  sub_24DCA1194(v0[2], v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t GRPCAsyncThrowingStream.Continuation.write<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = *(a2 + 16);
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = *(*(sub_24DCB5414() - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v11 = *(a3 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[13] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCA1C28, 0, 0);
}

uint64_t sub_24DCA1C28()
{
  v1 = v0[15];
  v2 = v0[8];
  v3 = v0[5];
  (*(v0[11] + 16))(v0[12], v0[2], v0[4]);
  sub_24DCB4F04();
  v4 = (v2 + 48);
  v5 = (v2 + 32);
  for (i = (v2 + 8); ; (*i)(v13, v14))
  {
    v7 = v0[15];
    v8 = v0[13];
    v9 = v0[10];
    v10 = v0[7];
    v12 = v0[4];
    v11 = v0[5];
    swift_getAssociatedConformanceWitness();
    sub_24DCB5444();
    if ((*v4)(v9, 1, v10) == 1)
    {
      break;
    }

    v13 = v0[9];
    v14 = v0[7];
    v15 = v0[3];
    (*v5)(v13, v0[10], v14);
    sub_24DCA1194(v13, v15);
  }

  v16 = v0[12];
  v18 = v0[9];
  v17 = v0[10];
  (*(v0[14] + 8))(v0[15], v0[13]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_24DCA1DE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC334F4;

  return GRPCAsyncThrowingStream.Continuation.write(_:)(a1, a2);
}

uint64_t sub_24DCA1E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24DC2FD00;

  return GRPCAsyncThrowingStream.Continuation.write<A>(contentsOf:)(a1, a4, a2, a3);
}

uint64_t GRPCAsyncThrowingStream.Continuation.finish()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24DCA1F64, 0, 0);
}

uint64_t sub_24DCA1F64()
{
  v1 = v0[3];
  sub_24DCA1340(0, v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t GRPCAsyncThrowingStream.Continuation.finish(throwing:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24DCA1FEC, 0, 0);
}

uint64_t sub_24DCA1FEC()
{
  v1 = v0[4];
  sub_24DCA1340(v0[2], v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24DCA206C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DC334F4;

  return GRPCAsyncThrowingStream.Continuation.finish()(a1);
}

uint64_t sub_24DCA2100(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DC2FD00;

  return GRPCAsyncThrowingStream.Continuation.finish(throwing:)(a1, a2);
}

uint64_t sub_24DCA21A4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24DCA2308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  v5 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  result = a4(319, v5, v6, MEMORY[0x277D84950]);
  if (v8 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v7 = *(a3 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v9 = a4(0, v7, v8, MEMORY[0x277D84950]);
  v10 = *(*(v9 - 8) + 48);

  return v10(a1, a2, v9);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, void))
{
  v8 = *(a4 + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v10 = a5(0, v8, v9, MEMORY[0x277D84950]);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1, a2, a2, v10);
}

uint64_t sub_24DCA2568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v33 = a3;
  v34 = a1;
  v36 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2B8, &qword_24DCBD748);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C0, &qword_24DCBD750);
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v18 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - v19;
  v21 = *(v14 + 56);
  (*(v9 + 104))(v12, *MEMORY[0x277D85778], v8);
  sub_24DCB51D4();
  (*(v9 + 8))(v12, v8);
  v22 = sub_24DCB51C4();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  sub_24DC4982C(v20, v18, &qword_27F19F2C0, &qword_24DCBD750);
  v23 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v24[4] = *(v33 + 16);
  v24[5] = v26;
  v24[6] = v27;
  sub_24DCA2B7C(v18, v24 + v23);

  sub_24DC4B67C(v7, &unk_24DCBD770, v24, v25);
  sub_24DC92FCC(v7);
  sub_24DCA2B7C(v20, v18);
  v28 = *(v14 + 56);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);
  (*(*(v29 - 8) + 32))(v36, &v18[v28], v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C8, &qword_24DCBD760);
  return (*(*(v30 - 8) + 8))(v18, v30);
}

uint64_t sub_24DCA2900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_24DCA2928, 0, 0);
}

uint64_t sub_24DCA2928()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = _s18_ResultOrCancelledOMa();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  v6 = *(MEMORY[0x277D858E8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_24DC895C8;
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);

  return MEMORY[0x282200600](v9, v3, v8, 0, 0, &unk_24DCBD800, v4, v3);
}

uint64_t sub_24DCA2A30()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C0, &qword_24DCBD750) - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 48);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C8, &qword_24DCBD760);
  (*(*(v6 - 8) + 8))(v0 + v2, v6);
  v7 = v1[14];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_24DCA2B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C0, &qword_24DCBD750);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DCA2BEC(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C0, &qword_24DCBD750) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[5];
  v8 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24DC2FD00;

  return sub_24DCA2900(a1, v9, v10, v7, v8, v1 + v6, v4);
}

uint64_t sub_24DCA2CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = _s18_ResultOrCancelledOMa();
  v6[8] = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6[9] = TupleTypeMetadata2;
  v9 = *(*(TupleTypeMetadata2 - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = *(*(sub_24DCB5414() - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v11 = *(v7 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C0, &qword_24DCBD750) - 8);
  v6[17] = v13;
  v6[18] = *(v13 + 64);
  v6[19] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCA2EF8, 0, 0);
}

uint64_t sub_24DCA2EF8()
{
  v1 = v0[20];
  v21 = v0[18];
  v19 = v0[19];
  v20 = v0[17];
  v2 = v0[7];
  v3 = v0[5];
  v17 = v2;
  v18 = v0[6];
  v4 = v0[4];
  v16 = v0[3];
  v5 = sub_24DCB51C4();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v4;
  v7[6] = v3;
  v8 = sub_24DCB5174();
  v0[21] = v8;

  sub_24DC4B67C(v1, &unk_24DCBD810, v7, v8);
  sub_24DC92FCC(v1);
  v6(v1, 1, 1, v5);
  sub_24DC4982C(v18, v19, &qword_27F19F2C0, &qword_24DCBD750);
  v9 = (*(v20 + 80) + 40) & ~*(v20 + 80);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v17;
  sub_24DCA2B7C(v19, v10 + v9);
  sub_24DC4B67C(v1, &unk_24DCBD820, v10, v8);
  sub_24DC92FCC(v1);
  v11 = *(MEMORY[0x277D856A0] + 4);
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v12[1] = sub_24DCA3140;
  v13 = v0[12];
  v14 = v0[3];

  return MEMORY[0x2822002D0](v13, 0, 0, v8);
}

uint64_t sub_24DCA3140()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24DCA323C, 0, 0);
}

uint64_t sub_24DCA323C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[8];
  v4 = *(v2 + 48);
  v0[23] = v4;
  v0[24] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v3);
  if (v5 == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[16];
    v10 = v0[3];
    v11 = *(v2 + 32);
    v0[25] = v11;
    v0[26] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v11(v9, v1, v3);
    v12 = *v10;
    sub_24DCB5164();
    v13 = *(MEMORY[0x277D856A0] + 4);
    v14 = swift_task_alloc();
    v0[27] = v14;
    *v14 = v0;
    v14[1] = sub_24DCA3364;
    v8 = v0[21];
    v5 = v0[11];
    v15 = v0[3];
    v6 = 0;
    v7 = 0;
  }

  return MEMORY[0x2822002D0](v5, v6, v7, v8);
}

uint64_t sub_24DCA3364()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24DCA3460, 0, 0);
}

uint64_t sub_24DCA3460()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  result = (*(v0 + 184))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v5 = *(v0 + 208);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *(v0 + 104);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 56);
  (*(v0 + 200))(v7, v2, v3);
  v12 = v9 + *(v10 + 48);
  v13 = *(v8 + 16);
  v13(v9, v6, v3);
  v13(v12, v7, v3);
  v14 = *(v11 - 8);
  v15 = *(v14 + 48);
  if (v15(v9, 1, v11) != 1)
  {
    v17 = *(v0 + 56);
    v13(*(v0 + 112), *(v0 + 80), *(v0 + 64));
    v18 = v15(v12, 1, v17);
    v12 = *(v0 + 112);
    v16 = *(v0 + 56);
    if (v18 == 1)
    {
      v30 = *(v0 + 112);
      goto LABEL_7;
    }

    (*(v14 + 8))(*(v0 + 112), *(v0 + 56));
    return sub_24DCB55E4();
  }

  v16 = *(v0 + 56);
  if (v15(v12, 1, v16) == 1)
  {
    return sub_24DCB55E4();
  }

  v29 = *(v0 + 112);
LABEL_7:
  v26 = *(v0 + 160);
  v27 = *(v0 + 152);
  v19 = *(v0 + 128);
  v20 = *(v0 + 96);
  v28 = *(v0 + 88);
  v25 = *(v0 + 80);
  v21 = *(v0 + 64);
  v22 = *(v0 + 16);
  v23 = *(*(v0 + 104) + 8);
  v23(*(v0 + 120), v21);
  v23(v19, v21);
  (*(v14 + 32))(v22, v12, v16);
  v23(v25, v21);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_24DCA3768(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_24DCA3864;

  return v11(a1);
}

uint64_t sub_24DCA3864()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24DCA3960, 0, 0);
}

uint64_t sub_24DCA3960()
{
  (*(*(v0[3] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24DCA39EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2E0, qword_24DCBD828);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCA3ABC, 0, 0);
}

uint64_t sub_24DCA3ABC()
{
  v1 = v0[7];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C8, &qword_24DCBD760);
  sub_24DCB5204();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_24DCA3B88;
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x2822003E8](v0 + 9, 0, 0, v6);
}

uint64_t sub_24DCA3B88()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24DCA3C84, 0, 0);
}

uint64_t sub_24DCA3C84()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 16);
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
    (*(*(v1 - 8) + 56))(v2, 1, 1, v1);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(MEMORY[0x277D85798] + 4);
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_24DCA3B88;
    v7 = *(v0 + 56);
    v8 = *(v0 + 40);

    return MEMORY[0x2822003E8](v0 + 72, 0, 0, v8);
  }
}

uint64_t sub_24DCA3DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_24DCA3E48@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24DCA3EBC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_24DCA3F30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);

  return MEMORY[0x2822003D0](v0);
}

uint64_t sub_24DCA3F68(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_24DCA3FC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_24DCA4144(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_24DCA439C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24DCA4428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CancellableTaskHandle()
{
  result = qword_27F1A7AC0;
  if (!qword_27F1A7AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}