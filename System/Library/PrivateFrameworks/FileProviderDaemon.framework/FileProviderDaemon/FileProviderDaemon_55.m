uint64_t sub_1CF5BAB9C()
{
  v1 = *(v0 + 176);
  *(v0 + 264) = sub_1CF2C1E04();

  return MEMORY[0x1EEE6DFA0](sub_1CF5BAC08, 0, 0);
}

void sub_1CF5BAC08()
{
  v1 = *(v0[23] + 16);
  v0[34] = v1;
  if (v1)
  {
    v2 = 0;
    while (1)
    {
      if (v2 >= v1)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      v3 = v0[23] + 32 * v2;
      v5 = *(v3 + 32);
      v4 = *(v3 + 40);
      v6 = *(v3 + 48);
      v42 = *(v3 + 56);
      v39 = *(v3 + 57);
      v40 = *(v3 + 58);
      v7 = __OFADD__(v2++, 1);
      v0[35] = v2;
      if (v7)
      {
        goto LABEL_35;
      }

      v8 = *(v0[33] + 16);
      if (v8)
      {
        break;
      }

LABEL_4:
      if (v2 == v1)
      {
        goto LABEL_28;
      }
    }

    v38 = v2;
    v9 = 0;
    while (1)
    {
      v10 = v0[33] + v9;
      v11 = *(v10 + 48);
      v12 = *(v10 + 56);
      v13 = *(v10 + 57);
      v14 = *(v10 + 58);
      v15 = *(v10 + 32) == v5 && *(v10 + 40) == v4;
      if (v15 || (sub_1CF9E8048()) && v11 == v6)
      {
        v16 = v12 == 6 || v12 == v42;
        if (v16 && (v13 == 89 || v39 != 89 && qword_1CFA0D698[v13] == qword_1CFA0D698[v39]) && (v14 == 2 || !((v40 == 2) | (v14 ^ v40) & 1)))
        {
          break;
        }
      }

      v9 += 32;
      if (!--v8)
      {
        v1 = v0[34];
        v2 = v38;
        goto LABEL_4;
      }
    }

    v20 = v0[32];
    v21 = v0[29];
    v23 = v0[27];
    v22 = v0[28];
    v24 = v0[26];
    v41 = v0[25];
    v43 = v0[30];
    v25 = v0[24];
    v0[14] = v24;
    v0[15] = v23;
    v0[16] = v22;
    v0[17] = v21;
    v26 = v0;
    v27 = type metadata accessor for ReconciliationID();
    sub_1CF9E7FA8();
    v28 = *(v27 - 8);
    v29 = *(v28 + 72);
    v30 = *(v28 + 80);
    swift_allocObject();
    v31 = sub_1CF9E6D68();
    (*(v28 + 16))(v32, v25, v27);
    v33 = sub_1CF045898(v31);
    v26[36] = v33;
    v26[18] = v24;
    v26[19] = v23;
    v26[20] = v22;
    v26[21] = v21;
    v34 = type metadata accessor for ThrottlingKey();
    (*(*(v34 - 8) + 16))(v20, v41, v34);
    swift_storeEnumTagMultiPayload();
    v35 = swift_task_alloc();
    v26[37] = v35;
    *v35 = v26;
    v35[1] = sub_1CF5BAF8C;
    v36 = v26[32];
    v37 = v26[22];

    sub_1CF2C2264(v33, v36);
  }

  else
  {
LABEL_28:
    v17 = v0[33];

    v18 = v0[32];

    v19 = v0[1];

    v19();
  }
}

uint64_t sub_1CF5BAF8C()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  v2[38] = v0;

  v5 = v2[36];
  if (v0)
  {
    v6 = v2[33];
    (*(v2[31] + 8))(v2[32], v2[30]);

    v7 = sub_1CF5BB1A4;
  }

  else
  {
    (*(v2[31] + 8))(v2[32], v2[30]);

    v7 = sub_1CF5BB104;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CF5BB104()
{
  v2 = v0[34];
  v1 = v0[35];
  if (v1 == v2)
  {
LABEL_5:
    v4 = v0[33];

    v5 = v0[32];

    v6 = v0[1];

    return v6();
  }

  else
  {
    while (v1 < v2)
    {
      v3 = v1 + 1;
      v0[35] = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_9;
      }

      ++v1;
      if (v3 == v2)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5BB1A4()
{
  v1 = v0[32];

  v2 = v0[1];
  v3 = v0[38];

  return v2();
}

uint64_t sub_1CF5BB208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 152) = a5;
  *(v6 + 160) = a6;
  *(v6 + 144) = a4;
  v7 = *a4;
  v8 = *(*(*a4 + 96) + 96);
  v9 = *(*a4 + 96);
  v29 = v9;
  v30 = *(*a4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 168) = AssociatedTypeWitness;
  v11 = *(v9 + 104);
  v28 = v7[11];
  v12 = swift_getAssociatedTypeWitness();
  *(v6 + 176) = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v6 + 184) = AssociatedConformanceWitness;
  v14 = swift_getAssociatedConformanceWitness();
  *(v6 + 192) = v14;
  *(v6 + 80) = AssociatedTypeWitness;
  *(v6 + 88) = v12;
  *(v6 + 96) = AssociatedConformanceWitness;
  *(v6 + 104) = v14;
  v15 = type metadata accessor for CodepathTriggeringDiagnostics();
  *(v6 + 200) = v15;
  v16 = *(v15 - 8);
  *(v6 + 208) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 216) = swift_task_alloc();
  v18 = v7[13];
  v19 = v7[14];
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  *&v23 = v30;
  *(&v23 + 1) = v28;
  *&v24 = v29;
  *(&v24 + 1) = v18;
  *(v6 + 32) = v24;
  *(v6 + 16) = v23;
  *(v6 + 48) = v19;
  *(v6 + 56) = WitnessTable;
  *(v6 + 64) = v21;
  *(v6 + 72) = v22;
  type metadata accessor for FPDiagnosticsManager();
  swift_getWitnessTable();
  v26 = sub_1CF9E6EC8();

  return MEMORY[0x1EEE6DFA0](sub_1CF5BB4D8, v26, v25);
}

uint64_t sub_1CF5BB4D8()
{
  v1 = *(v0 + 144);
  *(v0 + 224) = sub_1CF2C1E04();

  return MEMORY[0x1EEE6DFA0](sub_1CF5BB544, 0, 0);
}

void sub_1CF5BB544()
{
  v1 = *(*(v0 + 152) + 16);
  *(v0 + 232) = v1;
  if (v1)
  {
    v2 = 0;
    while (1)
    {
      if (v2 >= v1)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      v3 = *(v0 + 152) + 32 * v2;
      v5 = *(v3 + 32);
      v4 = *(v3 + 40);
      v6 = *(v3 + 48);
      v39 = *(v3 + 56);
      v35 = *(v3 + 57);
      v38 = *(v3 + 58);
      v7 = __OFADD__(v2++, 1);
      *(v0 + 240) = v2;
      if (v7)
      {
        goto LABEL_35;
      }

      v8 = *(*(v0 + 224) + 16);
      if (v8)
      {
        break;
      }

LABEL_4:
      if (v2 == v1)
      {
        goto LABEL_28;
      }
    }

    v34 = v2;
    v9 = 0;
    v37 = v35;
    while (1)
    {
      v10 = *(v0 + 224) + v9;
      v11 = *(v10 + 48);
      v12 = *(v10 + 56);
      v13 = *(v10 + 57);
      v14 = *(v10 + 58);
      v15 = *(v10 + 32) == v5 && *(v10 + 40) == v4;
      if (v15 || (sub_1CF9E8048()) && v11 == v6)
      {
        v16 = v12 == 6 || v12 == v39;
        if (v16 && (v13 == 89 || v35 != 89 && qword_1CFA0D698[v13] == qword_1CFA0D698[v35]) && (v14 == 2 || !((v38 == 2) | (v14 ^ v38) & 1)))
        {
          break;
        }
      }

      v9 += 32;
      if (!--v8)
      {
        v1 = *(v0 + 232);
        v2 = v34;
        goto LABEL_4;
      }
    }

    v20 = *(v0 + 216);
    v21 = *(v0 + 192);
    v36 = *(v0 + 200);
    v22 = *(v0 + 160);
    *(v0 + 112) = *(v0 + 168);
    v23 = *(v0 + 176);
    *(v0 + 120) = v23;
    v24 = v23;
    *(v0 + 136) = v21;
    v25 = type metadata accessor for ReconciliationID();
    sub_1CF9E7FA8();
    v26 = *(*(v25 - 8) + 72);
    v27 = *(*(v25 - 8) + 80);
    swift_allocObject();

    v28 = sub_1CF9E6D68();
    (*(*(v24 - 8) + 16))(v29, v22, v24);
    swift_storeEnumTagMultiPayload();
    v30 = sub_1CF045898(v28);
    *(v0 + 248) = v30;
    *v20 = v5;
    *(v20 + 8) = v4;
    *(v20 + 16) = v6;
    *(v20 + 24) = v39;
    *(v20 + 25) = v37;
    *(v20 + 26) = v38;
    swift_storeEnumTagMultiPayload();
    v31 = swift_task_alloc();
    *(v0 + 256) = v31;
    *v31 = v0;
    v31[1] = sub_1CF5BB8DC;
    v32 = *(v0 + 216);
    v33 = *(v0 + 144);

    sub_1CF2C2264(v30, v32);
  }

  else
  {
LABEL_28:
    v17 = *(v0 + 224);

    v18 = *(v0 + 216);

    v19 = *(v0 + 8);

    v19();
  }
}

uint64_t sub_1CF5BB8DC()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  v2[33] = v0;

  v5 = v2[31];
  if (v0)
  {
    v6 = v2[28];
    (*(v2[26] + 8))(v2[27], v2[25]);

    v7 = sub_1CF5BBAF4;
  }

  else
  {
    (*(v2[26] + 8))(v2[27], v2[25]);

    v7 = sub_1CF5BBA54;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CF5BBA54()
{
  v2 = v0[29];
  v1 = v0[30];
  if (v1 == v2)
  {
LABEL_5:
    v4 = v0[28];

    v5 = v0[27];

    v6 = v0[1];

    return v6();
  }

  else
  {
    while (v1 < v2)
    {
      v3 = v1 + 1;
      v0[30] = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_9;
      }

      ++v1;
      if (v3 == v2)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5BBAF4()
{
  v1 = v0[27];

  v2 = v0[1];
  v3 = v0[33];

  return v2();
}

uint64_t sub_1CF5BBB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v39 = a4;
  v40 = a5;
  v37 = a2;
  v38 = a3;
  v41 = a6;
  v42 = type metadata accessor for UserRequest();
  v43 = &type metadata for MaterializationRequestOptions;
  v44 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  v45 = sub_1CF9E6448();
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v35 - v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v35 - v17);
  (*(v9 + 16))(&v35 - v17, a1, TupleTypeMetadata2, v16);
  v19 = *(TupleTypeMetadata2 + 48);
  v20 = v18 + v19;
  *v14 = *v18;
  v21 = v14 + v19;
  v22 = *(TupleTypeMetadata + 80);
  v35 = *(TupleTypeMetadata + 96);
  *v21 = *v20;
  *(v21 + 2) = *(v20 + 2);
  v23 = *(TupleTypeMetadata + 80);
  v24 = sub_1CF9E6448();
  v25 = *(v24 - 8);
  (*(v25 + 32))(&v21[v23], &v20[v22], v24);
  v26 = &v21[*(TupleTypeMetadata + 96)];
  v27 = swift_allocObject();
  *(v27 + 16) = *&v20[v35];
  *v26 = sub_1CF5E14AC;
  v26[1] = v27;
  v28 = v36;
  (*(v9 + 32))(v36, v14, TupleTypeMetadata2);
  v29 = &v28[*(TupleTypeMetadata2 + 48)];
  v30 = *v29;

  v31 = *(TupleTypeMetadata + 80);
  v32 = *&v29[*(TupleTypeMetadata + 96) + 8];

  v33 = sub_1CF6656D8(v30);
  sub_1CF5DE5B8(v30);
  *v41 = v33;
  return (*(v25 + 8))(&v29[v31], v24);
}

BOOL sub_1CF5BBEB8(id *a1, void **a2)
{
  v2 = *a2;
  [*a1 requestedExtent];
  v4 = v3;
  [v2 requestedExtent];
  return v4 < v5;
}

uint64_t sub_1CF5BBF10(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v402 = a6;
  v407 = a5;
  v373 = a4;
  v374 = a3;
  LODWORD(v412) = a2;
  v397 = a1;
  v8 = *v6;
  v9 = *(*v6 + 632);
  v10 = *(*v6 + 616);
  *&v423 = swift_getAssociatedTypeWitness();
  *(&v423 + 1) = swift_getAssociatedTypeWitness();
  *&v424 = swift_getAssociatedConformanceWitness();
  *(&v424 + 1) = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for FileItemVersion();
  v357 = sub_1CF9E75D8();
  v356 = *(v357 - 8);
  v12 = *(v356 + 64);
  v13 = MEMORY[0x1EEE9AC00](v357);
  v363 = &v352 - v14;
  v362 = v11;
  v361 = *(v11 - 8);
  v15 = *(v361 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v358 = &v352 - v16;
  v17 = *(v8 + 640);
  v18 = *(v8 + 624);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v360 = sub_1CF9E75D8();
  v359 = *(v360 - 1);
  v20 = *(v359 + 8);
  v21 = MEMORY[0x1EEE9AC00](v360);
  v372 = &v352 - v22;
  v385 = AssociatedTypeWitness;
  v364 = *(AssociatedTypeWitness - 8);
  v23 = *(v364 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v382 = (&v352 - v24);
  v391 = swift_getAssociatedTypeWitness();
  v377 = *(v391 - 8);
  v355 = *(v377 + 64);
  MEMORY[0x1EEE9AC00](v391);
  v378 = &v352 - v25;
  *&v26 = v10;
  v420 = v18;
  *(&v26 + 1) = v18;
  *&v27 = v9;
  v28 = v9;
  v418 = v17;
  *(&v27 + 1) = v17;
  v413 = v27;
  v414 = v26;
  v423 = v26;
  v424 = v27;
  *&v423 = type metadata accessor for UserRequest();
  *(&v423 + 1) = &type metadata for MaterializationRequestOptions;
  *&v424 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  *(&v424 + 1) = sub_1CF9E6448();
  v425 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v416 = *(TupleTypeMetadata - 8);
  v30 = *(v416 + 64);
  v31 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v381 = &v352 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v379 = (&v352 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v400 = &v352 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v403 = &v352 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v370 = &v352 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v389 = &v352 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v398 = &v352 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  *&v404 = &v352 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  *&v411 = &v352 - v48;
  v371 = v49;
  MEMORY[0x1EEE9AC00](v47);
  v408 = &v352 - v50;
  v421 = v51;
  v417 = sub_1CF9E75D8();
  v365 = *(v417 - 8);
  v52 = *(v365 + 64);
  v53 = MEMORY[0x1EEE9AC00](v417);
  *&v384 = &v352 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  *&v406 = &v352 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v396 = &v352 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  *&v410 = &v352 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v383 = (&v352 - v62);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v380 = &v352 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v405 = &v352 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v399 = &v352 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v394 = (&v352 - v70);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v393 = &v352 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v409 = &v352 - v74;
  MEMORY[0x1EEE9AC00](v73);
  v401 = &v352 - v75;
  v423 = v414;
  v424 = v413;
  v76 = type metadata accessor for ConcreteDatabase.MaterializationRequest();
  v376 = sub_1CF9E75D8();
  v375 = *(v376 - 1);
  v77 = *(v375 + 64);
  v78 = MEMORY[0x1EEE9AC00](v376);
  v368 = &v352 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x1EEE9AC00](v78);
  v82 = &v352 - v81;
  v395 = *(v76 - 8);
  v83 = *(v395 + 64);
  v84 = MEMORY[0x1EEE9AC00](v80);
  v354 = &v352 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x1EEE9AC00](v84);
  v387 = &v352 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v366 = &v352 - v88;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v352 - v89;
  v91 = swift_allocObject();
  v92 = v402;
  v91[2] = v407;
  v91[3] = v92;
  v91[4] = v7;
  v93 = qword_1EDEBBC70;
  swift_beginAccess();
  v367 = v93;
  v94 = *&v7[v93];
  v419 = v28;
  v415 = v10;
  v95 = *(swift_getAssociatedConformanceWitness() + 40);
  v388 = v7;

  sub_1CF9E6728();
  v96 = v395;

  v97 = *(v96 + 48);
  v390 = v76;
  if (v97(v82, 1, v76) == 1)
  {

    return (*(v375 + 8))(v82, v376);
  }

  v376 = v95;
  v369 = v91;
  v99 = v412;
  v102 = *(v96 + 32);
  v100 = (v96 + 32);
  v101 = v102;
  v102(v90, v82, v390);
  v386 = v90;
  if (v99 != 5)
  {
    if (v99 == 4)
    {
      if (!v374)
      {
        v103 = *&v90[*(v390 + 56)];
        v423 = v414;
        v424 = v413;
        type metadata accessor for UserRequest();
        v104 = *(v103 + 8);
        v380 = v103 + 64;
        v105 = 1 << v103[32];
        v106 = -1;
        if (v105 < 64)
        {
          v106 = ~(-1 << v105);
        }

        v107 = v106 & v104;
        v387 = (v404 + 8);
        v379 = ((v105 + 63) >> 6);
        v108 = v416 + 56;
        *&v413 = v416 + 16;
        *&v414 = v416 + 48;
        v403 = (v365 + 32);
        v400 = (v416 + 8);
        v399 = v103;

        v109 = 0;
        v110 = v421;
        v111 = v411;
        v112 = v410;
        v412 = v108;
        while (v107)
        {
          v113 = v109;
LABEL_20:
          v116 = __clz(__rbit64(v107));
          v107 &= v107 - 1;
          (*(v416 + 16))(v112, *(v399 + 7) + *(v416 + 72) * (v116 | (v113 << 6)), v110);
          v117 = 0;
LABEL_21:
          v118 = *v108;
          v119 = 1;
          (*v108)(v112, v117, 1, v110);
          v120 = *v414;
          if ((*v414)(v112, 1, v110) != 1)
          {
            v121 = *(v110 + 20);
            v381 = *(v110 + 24);
            v122 = v410;
            v384 = *v410;
            v383 = *(v410 + 16);
            v123 = sub_1CF9E6448();
            v124 = *(v123 - 8);
            v405 = v118;
            v125 = *(v124 + 32);
            v126 = v408;
            v125(&v408[v121], v122 + v121, v123);
            v127 = swift_allocObject();
            *&v406 = v120;
            v128 = v127;
            *(v127 + 16) = *&v381[v122];
            v129 = *(v421 + 20);
            v130 = v409;
            v131 = (v409 + *(v421 + 24));
            *v409 = v384;
            *(v130 + 16) = v383;
            v132 = &v126[v121];
            v111 = v411;
            v125((v130 + v129), v132, v123);
            v118 = v405;
            v110 = v421;
            v119 = 0;
            *v131 = sub_1CF5E14AC;
            v131[1] = v128;
            v120 = v406;
          }

          v133 = v409;
          (v118)(v409, v119, 1, v110);
          v134 = *v403;
          v135 = v401;
          (*v403)(v401, v133, v417);
          if (v120(v135, 1, v110) == 1)
          {
            *&v404 = v134;
            *&v406 = v120;
            v220 = v399;

            (*(v377 + 16))(v378, v397, v391);
            (*(v395 + 56))(v368, 1, 1, v390);
            swift_beginAccess();
            sub_1CF9E6708();
            sub_1CF9E6738();
            swift_endAccess();
            v221 = 1 << v220[32];
            v222 = -1;
            if (v221 < 64)
            {
              v222 = ~(-1 << v221);
            }

            v223 = v222 & *(v220 + 8);
            v381 = v408 + 8;
            v379 = v389 + 8;
            v375 = (v221 + 63) >> 6;
            v383 = (v364 + 48);
            v378 = (v364 + 32);
            v377 = v416 + 32;
            v376 = (v364 + 8);

            v224 = 0;
            v90 = v386;
            v225 = v398;
            v226 = v396;
            v405 = v118;
            while (v223)
            {
              v227 = v224;
LABEL_78:
              v230 = __clz(__rbit64(v223));
              v223 &= v223 - 1;
              (*(v416 + 16))(v226, *(v399 + 7) + *(v416 + 72) * (v230 | (v227 << 6)), v110);
              v231 = 0;
LABEL_79:
              v232 = 1;
              (v118)(v226, v231, 1, v110);
              if ((v406)(v226, 1, v110) != 1)
              {
                v233 = *(v110 + 20);
                v409 = *(v110 + 24);
                v234 = v396;
                v411 = *v396;
                *&v410 = *(v396 + 2);
                v235 = sub_1CF9E6448();
                v236 = *(*(v235 - 8) + 32);
                v237 = v408;
                v236(&v408[v233], &v234[v233], v235);
                v238 = swift_allocObject();
                *(v238 + 16) = *&v234[v409];
                v239 = *(v421 + 20);
                v240 = v394;
                v241 = (v394 + *(v421 + 24));
                *v394 = v411;
                *(v240 + 2) = v410;
                v242 = &v237[v233];
                v225 = v398;
                v90 = v386;
                v236(v240 + v239, v242, v235);
                v118 = v405;
                v110 = v421;
                v232 = 0;
                *v241 = sub_1CF5E14AC;
                v241[1] = v238;
              }

              v243 = v394;
              (v118)(v394, v232, 1, v110);
              v244 = v393;
              (v404)(v393, v243, v417);
              if ((v406)(v244, 1, v110) == 1)
              {

                v169 = &v422;
                goto LABEL_34;
              }

              v245 = v244;
              v246 = *v244;
              v247 = *(v244 + 1);
              v248 = *(v245 + 2);
              v249 = *(v110 + 20);
              v250 = *(v110 + 24);
              v251 = *&v245[v250];
              v252 = *&v245[v250 + 8];
              v253 = &v225[v250];
              *v225 = v246;
              *(v225 + 1) = v247;
              *(v225 + 2) = v248;
              v254 = sub_1CF9E6448();
              *&v410 = *(v254 - 8);
              v255 = *(v410 + 32);
              *&v411 = v254;
              v255(&v225[v249], &v245[v249]);
              *v253 = v251;
              v253[1] = v252;
              if (v247)
              {
                v256 = v372;
                v257 = v392;
                (*(**(v388 + 2) + 160))(v397, v373, v407, v402);
                v392 = v257;
                if (v257)
                {

                  (*v400)(v398, v421);
                  v328 = *(v395 + 8);
                  return v328(v386, v390);
                }

                v258 = v385;
                if ((*v383)(v256, 1, v385) == 1)
                {
                  (*(v359 + 1))(v256, v360);
                  sub_1CF5CFBB8(v251, v252, 0, v388);

                  (*v400)(v398, v421);
                  goto LABEL_126;
                }

                (*v378)(v382, v256, v258);
                v409 = *(v416 + 16);
                v259 = v408;
                v110 = v421;
                (v409)(v408, v398, v421);
                v260 = *v259;

                v401 = *(v110 + 20);
                v261 = *&v381[*(v110 + 24)];

                v262 = v415;
                v263 = v419;
                v264 = v418;
                v387 = sub_1CF6651BC(v260);
                sub_1CF5DE5B8(v260);
                v265 = v389;
                (v409)(v389, v398, v110);
                v266 = *v265;

                v391 = *(v110 + 20);
                v267 = *(v379 + *(v110 + 24));

                sub_1CF66523C(v266, v262, v420, v263, v264);
                *&v384 = v268;
                sub_1CF5DE5B8(v266);
                v269 = v370;
                v225 = v398;
                (v409)(v370, v398, v110);
                v270 = v416;
                v271 = (*(v416 + 80) + 80) & ~*(v416 + 80);
                v272 = swift_allocObject();
                *(v272 + 2) = v262;
                v273 = v369;
                v274 = v407;
                *(v272 + 3) = v420;
                *(v272 + 4) = v274;
                v275 = v418;
                *(v272 + 5) = v419;
                *(v272 + 6) = v275;
                *(v272 + 7) = v402;
                *(v272 + 8) = sub_1CF5DE770;
                *(v272 + 9) = v273;
                (*(v270 + 32))(&v272[v271], v269, v110);

                v276 = v382;
                v277 = v387;
                sub_1CF5A9774(v382, v387, v384, sub_1CF5DE99C, v272);

                sub_1CF5DE5B8(v277);
                (*v376)(v276, v385);
                v278 = *(v410 + 8);
                v279 = v411;
                v278(&v389[v391], v411);
                v278(&v408[v401], v279);
              }

              else
              {
                sub_1CF5CFBB8(v251, v252, 0, v388);
                v110 = v421;
              }

              result = (*v400)(v225, v110);
              v90 = v386;
              v226 = v396;
              v118 = v405;
            }

            if (v375 <= v224 + 1)
            {
              v228 = v224 + 1;
            }

            else
            {
              v228 = v375;
            }

            v229 = v228 - 1;
            while (1)
            {
              v227 = v224 + 1;
              if (__OFADD__(v224, 1))
              {
                break;
              }

              if (v227 >= v375)
              {
                v223 = 0;
                v231 = 1;
                v224 = v229;
                goto LABEL_79;
              }

              v223 = *&v380[8 * v227];
              ++v224;
              if (v223)
              {
                v224 = v227;
                goto LABEL_78;
              }
            }

            __break(1u);
            goto LABEL_134;
          }

          v136 = *(v135 + 16);
          v137 = *(v110 + 20);
          v138 = *(v110 + 24);
          *v111 = *v135;
          *(v111 + 16) = v136;
          v139 = sub_1CF9E6448();
          v140 = v135;
          v103 = v139;
          v141 = *(v139 - 8);
          v142 = *(v141 + 32);
          v406 = *(v140 + v138);
          v142(v111 + v137, v140 + v137, v139);
          *(v111 + v138) = v406;
          v143 = v404;
          (*v413)(v404, v111, v110);
          v144 = v143;
          v145 = *v143;

          v146 = *(v110 + 20);
          v147 = *&v387[*(v110 + 24)];

          v83 = sub_1CF6656D8(v145);
          sub_1CF5DE5B8(v145);
          if (v83)
          {
            (*(v141 + 8))(v144 + v146, v103);
            v148 = [v83 selectedForMaterialization];
            v108 = v412;
            if (v148)
            {
              v103 = [v83 requestedExtent];

              v111 = v411;
              (*v400)(v411, v110);
              v112 = v410;
              if (v103 != -1)
              {

LABEL_126:
                v171 = *(v395 + 8);
                v172 = v386;
                return v171(v172, v390);
              }
            }

            else
            {
              v111 = v411;
              (*v400)(v411, v110);

              v112 = v410;
            }
          }

          else
          {
            v83 = v411;
            (*v400)(v411, v110);
            (*(v141 + 8))(v144 + v146, v103);
            v111 = v83;
            v112 = v410;
            v108 = v412;
          }
        }

        if (v379 <= v109 + 1)
        {
          v114 = (v109 + 1);
        }

        else
        {
          v114 = v379;
        }

        v115 = v114 - 1;
        while (1)
        {
          v113 = v109 + 1;
          if (__OFADD__(v109, 1))
          {
            break;
          }

          if (v113 >= v379)
          {
            v107 = 0;
            v117 = 1;
            v109 = v115;
            goto LABEL_21;
          }

          v107 = *&v380[8 * v113];
          ++v109;
          if (v107)
          {
            v109 = v113;
            goto LABEL_20;
          }
        }

LABEL_130:
        __break(1u);
LABEL_131:
        v392 = v112;
        (*(v395 + 8))(v111, v390);
        result = (*(v108 + 32))(v358, v110, v83);
        if (v399 < v385)
        {
LABEL_136:
          __break(1u);
          return result;
        }

        v335 = *(v103 + 2);
        v336 = v354;
        v359(v354, v386, v390);
        v360(v378, v397, v391);
        v337 = (v370 + 88) & v352;
        v338 = &v353[v337] & 0xFFFFFFFFFFFFFFF8;
        v339 = (v338 + 23) & 0xFFFFFFFFFFFFFFF8;
        v340 = v377;
        v341 = (v339 + *(v377 + 80) + 8) & ~*(v377 + 80);
        v342 = swift_allocObject();
        v343 = v420;
        *(v342 + 2) = v415;
        *(v342 + 3) = v343;
        v345 = v418;
        v344 = v419;
        *(v342 + 4) = v407;
        *(v342 + 5) = v344;
        v346 = v402;
        *(v342 + 6) = v345;
        *(v342 + 7) = v346;
        *(v342 + 8) = v388;
        *(v342 + 9) = sub_1CF5DE77C;
        *(v342 + 10) = v367;
        v371(&v342[v337], v336, v390);
        v347 = &v342[v338];
        v348 = v369;
        *v347 = sub_1CF5DE770;
        v347[1] = v348;
        *&v342[v339] = 0;
        v90 = v386;
        (*(v340 + 32))(&v342[v341], v378, v391);
        v349 = *(*v335 + 800);

        v350 = 0;
        v351 = v358;
        v349(v397, v358, v385, v399, sub_1CF5DE848, v342);

        (*(v361 + 8))(v351, v362);
        goto LABEL_35;
      }

LABEL_33:
      v169 = &v399;
LABEL_34:
      v170 = *(v169 - 32);

LABEL_35:
      v171 = *(v395 + 8);
      v172 = v90;
      return v171(v172, v390);
    }

    if (*v90 != v99)
    {
      goto LABEL_33;
    }
  }

  v149 = *(v377 + 16);
  v364 = v377 + 16;
  v360 = v149;
  v149(v378, v397, v391);
  v150 = v395;
  v151 = v390;
  (*(v395 + 56))(v368, 1, 1, v390);
  v372 = v100;
  v371 = v101;
  v152 = v388;
  swift_beginAccess();
  sub_1CF9E6708();
  sub_1CF9E6738();
  swift_endAccess();
  v153 = (v150 + 16);
  v154 = *(v150 + 16);
  v155 = v366;
  v154(v366, v386, v151);
  v154(v387, v155, v151);
  v156 = v153[64];
  v157 = (v156 + 64) & ~v156;
  v370 = v156;
  v158 = v83 + 7;
  v368 = (v156 | 7);
  v159 = swift_allocObject();
  v160 = v420;
  *(v159 + 2) = v415;
  *(v159 + 3) = v160;
  v161 = v418;
  v162 = v419;
  *(v159 + 4) = v407;
  *(v159 + 5) = v162;
  *(v159 + 6) = v161;
  v112 = v402;
  *(v159 + 7) = v402;
  v163 = v151;
  v111 = v159;
  v371(&v159[v157], v155, v163);
  *(v111 + (&v158[v157] & 0xFFFFFFFFFFFFFFF8)) = v152;
  v164 = v374;
  if (v374)
  {

    v165 = v387;
    sub_1CF5D00A8(v164, v387, v152, v407, v112);

    v166 = *(v395 + 8);
    v167 = v165;
    v168 = v390;
    v166(v167, v390);
    return (v166)(v386, v168);
  }

  v353 = v158;
  v359 = v154;
  v366 = v153;
  v367 = v111;
  v352 = ~v370;
  v173 = *&v386[*(v390 + 56)];
  v423 = v414;
  v424 = v413;
  type metadata accessor for UserRequest();
  v174 = *(v173 + 8);
  v382 = v173 + 64;
  v175 = 1 << v173[32];
  v176 = -1;
  if (v175 < 64)
  {
    v176 = ~(-1 << v175);
  }

  v108 = v176 & v174;
  v385 = v400 + 8;
  v375 = (v175 + 63) >> 6;
  *&v414 = v416 + 56;
  v409 = v416 + 16;
  *&v413 = v416 + 48;
  v396 = (v365 + 32);
  v394 = (v416 + 8);

  v389 = v173;

  v177 = 0;
  v110 = v421;
  v83 = v403;
  do
  {
    while (1)
    {
      while (1)
      {
        if (v108)
        {
          v178 = v177;
          v103 = v406;
          goto LABEL_52;
        }

        v179 = v375 <= v177 + 1 ? v177 + 1 : v375;
        v180 = v179 - 1;
        v103 = v406;
        do
        {
          v178 = v177 + 1;
          if (__OFADD__(v177, 1))
          {
            __break(1u);
            goto LABEL_130;
          }

          if (v178 >= v375)
          {
            v108 = 0;
            v182 = 1;
            v177 = v180;
            goto LABEL_53;
          }

          v108 = v382[v178];
          ++v177;
        }

        while (!v108);
        v177 = v178;
LABEL_52:
        v181 = __clz(__rbit64(v108));
        v108 &= v108 - 1;
        (*(v416 + 16))(v103, *(v389 + 7) + *(v416 + 72) * (v181 | (v178 << 6)), v110);
        v182 = 0;
LABEL_53:
        v183 = 1;
        v412 = *v414;
        v412(v103, v182, 1, v110);
        *&v411 = *v413;
        if ((v411)(v103, 1, v110) != 1)
        {
          v184 = *(v110 + 20);
          v401 = *(v110 + 24);
          v185 = v406;
          v410 = *v406;
          *&v404 = *(v406 + 16);
          v186 = sub_1CF9E6448();
          v187 = *(*(v186 - 8) + 32);
          v188 = v408;
          v187(&v408[v184], v185 + v184, v186);
          v189 = swift_allocObject();
          *(v189 + 16) = *(v185 + v401);
          v190 = *(v421 + 20);
          v191 = v405;
          v192 = &v405[*(v421 + 24)];
          *v405 = v410;
          *(v191 + 2) = v404;
          v193 = &v188[v184];
          v83 = v403;
          v187(&v191[v190], v193, v186);
          v183 = 0;
          *v192 = sub_1CF5E14AC;
          v192[1] = v189;
          v110 = v421;
        }

        v194 = v405;
        v412(v405, v183, 1, v110);
        v195 = v399;
        v393 = *v396;
        (v393)(v399, v194, v417);
        if ((v411)(v195, 1, v110) == 1)
        {

          v216 = v387;
          sub_1CF5D00A8(0, v387, v388, v407, v402);

          v217 = *(v395 + 8);
          v218 = v216;
          v219 = v390;
          v217(v218, v390);
          return (v217)(v386, v219);
        }

        v196 = *(v195 + 2);
        v197 = *(v110 + 20);
        v198 = v195;
        v199 = *(v110 + 24);
        *v83 = *v198;
        *(v83 + 2) = v196;
        v200 = sub_1CF9E6448();
        v201 = *(v200 - 8);
        v202 = *(v201 + 32);
        v404 = *(v198 + v199);
        *&v410 = v200;
        v401 = v201 + 32;
        v398 = v202;
        (v202)(&v83[v197], v198 + v197);
        *&v83[v199] = v404;
        v203 = v400;
        *&v404 = *v409;
        (v404)(v400, v83, v110);
        v111 = v83;
        v204 = *v203;

        v112 = *(v110 + 20);
        v205 = *&v385[*(v110 + 24)];

        v206 = v110;
        v207 = sub_1CF6656D8(v204);
        sub_1CF5DE5B8(v204);
        if (v207)
        {
          break;
        }

        (*v394)(v111, v206);
        (*(v201 + 8))(v203 + v112, v410);
        v110 = v206;
        v83 = v111;
      }

      v210 = *(v201 + 8);
      v209 = v201 + 8;
      v208 = v210;
      v210(v203 + v112, v410);
      if ([v207 selectedForMaterialization])
      {
        break;
      }

      v83 = v403;
      v215 = v421;
      (*v394)(v403, v421);

      v110 = v215;
    }

    v112 = v209;
    v376 = v208;
    v211 = [v207 requestedExtent];

    v212 = *v394;
    v213 = v403;
    v110 = v421;
    (*v394)(v403, v421);
    v214 = v211 + 1 == 0;
    v83 = v213;
  }

  while (v214);
  v405 = v212;
  v280 = v389;

  v281 = 1 << v280[32];
  v282 = -1;
  if (v281 < 64)
  {
    v283 = ~(-1 << v281);
  }

  else
  {
    v283 = -1;
  }

  v284 = v283 & *(v280 + 8);
  v403 = v381 + 8;
  v375 = (v281 + 63) >> 6;

  v285 = 0;
  v286 = -1;
  v287 = v407;
  v288 = v382;
  v289 = v404;
  v374 = v112;
LABEL_92:
  v385 = v286;
  v399 = v282;
  while (1)
  {
    if (!v284)
    {
      if (v375 <= v285 + 1)
      {
        v293 = v285 + 1;
      }

      else
      {
        v293 = v375;
      }

      v294 = v293 - 1;
      v291 = v421;
      v111 = v387;
      v292 = v384;
      while (1)
      {
        v290 = v285 + 1;
        if (__OFADD__(v285, 1))
        {
          break;
        }

        if (v290 >= v375)
        {
          v284 = 0;
          v296 = 1;
          v285 = v294;
          goto LABEL_105;
        }

        v284 = v288[v290];
        ++v285;
        if (v284)
        {
          v285 = v290;
          goto LABEL_104;
        }
      }

LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v290 = v285;
    v291 = v421;
    v111 = v387;
    v292 = v384;
LABEL_104:
    v295 = __clz(__rbit64(v284));
    v284 &= v284 - 1;
    v289(v292, *(v389 + 7) + *(v416 + 72) * (v295 | (v290 << 6)), v291);
    v296 = 0;
LABEL_105:
    v297 = 1;
    v412(v292, v296, 1, v291);
    if ((v411)(v292, 1, v291) != 1)
    {
      v298 = *(v291 + 20);
      v299 = *(v291 + 24);
      v300 = v384;
      v406 = *v384;
      v400 = *(v384 + 16);
      v301 = v410;
      v302 = v398;
      (v398)(&v408[v298], v384 + v298, v410);
      v303 = swift_allocObject();
      *(v303 + 16) = *(v300 + v299);
      v304 = *(v291 + 20);
      v305 = v383;
      v306 = (v383 + *(v291 + 24));
      *v383 = v406;
      v305[2] = v400;
      v111 = v387;
      v307 = v301;
      v289 = v404;
      (v302)(v305 + v304, &v408[v298], v307);
      v297 = 0;
      *v306 = sub_1CF5E14AC;
      v306[1] = v303;
      v287 = v407;
    }

    v308 = v383;
    v412(v383, v297, 1, v291);
    v309 = v380;
    (v393)(v380, v308, v417);
    if ((v411)(v309, 1, v291) == 1)
    {
      break;
    }

    v310 = *(v309 + 2);
    v311 = *(v291 + 20);
    v312 = *(v291 + 24);
    v313 = v379;
    *v379 = *v309;
    *(v313 + 2) = v310;
    v406 = *&v309[v312];
    v314 = v410;
    (v398)(v313 + v311, &v309[v311], v410);
    *(v313 + v312) = v406;
    v315 = v313;
    v316 = v381;
    v289(v381, v315, v291);
    v317 = *v316;

    *&v406 = *(v291 + 20);
    v318 = *&v403[*(v291 + 24)];

    v319 = sub_1CF6656D8(v317);
    sub_1CF5DE5B8(v317);
    if (v319)
    {
      v320 = [v319 requestedExtent];
      v321 = v291;
      v323 = v322;

      v324 = v321;
      v325 = v410;
      (v405)(v315, v324);
      result = v376(&v316[v406], v325);
      v287 = v407;
      v288 = v382;
      v282 = v399;
      if (v323 != -1)
      {
        if (__OFADD__(v320, v323))
        {
          goto LABEL_135;
        }

        if (v320 >= v385)
        {
          v286 = v385;
        }

        else
        {
          v286 = v320;
        }

        if (v385 == -1)
        {
          v286 = v320;
        }

        if (&v320[v323] > v399)
        {
          v282 = &v320[v323];
        }

        goto LABEL_92;
      }
    }

    else
    {
      (v405)(v315, v291);
      result = v376(&v316[v406], v314);
      v287 = v407;
      v288 = v382;
    }
  }

  v103 = *(v388 + 4);
  v110 = v363;
  v326 = v402;
  v327 = v392;
  (*(*v103 + 656))(v397, v373, v287, v402);
  if (v327)
  {
    v392 = v327;
    v328 = *(v395 + 8);
    v328(v111, v390);

    return v328(v386, v390);
  }

  else
  {
    v112 = 0;
    v108 = v361;
    v83 = v362;
    if ((*(v361 + 48))(v110, 1, v362) != 1)
    {
      goto LABEL_131;
    }

    (*(v356 + 8))(v110, v357);
    type metadata accessor for NSFileProviderError(0);
    v426 = -1005;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    v329 = v287;
    v330 = v326;
    sub_1CF5DFB70(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v331 = v423;
    sub_1CF5D00A8(v423, v111, v388, v329, v330);

    v332 = *(v395 + 8);
    v333 = v111;
    v334 = v390;
    v332(v333, v390);
    return (v332)(v386, v334);
  }
}

void sub_1CF5BEE74(NSObject *a1, void *a2, void (**a3)(void), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v304 = a5;
  v305 = a4;
  v303 = a3;
  v306 = a2;
  v310 = a1;
  v7 = *v5;
  v307 = sub_1CF9E6118();
  *&v323 = *(v307 - 8);
  v8 = *(v323 + 64);
  v9 = MEMORY[0x1EEE9AC00](v307);
  v320 = (&v278 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v315 = &v278 - v11;
  v12 = v7[77];
  v13 = v7[78];
  v14 = v7[79];
  v15 = v7[80];
  *&v333 = v12;
  *(&v333 + 1) = v13;
  *&v334 = v14;
  *(&v334 + 1) = v15;
  *&v333 = type metadata accessor for UserRequest();
  *(&v333 + 1) = &type metadata for NSecTimestamp;
  WitnessTable = sub_1CF9E6448();
  *&v334 = WitnessTable;
  *(&v334 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v287 = *(TupleTypeMetadata - 8);
  v17 = *(v287 + 64);
  v18 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v312 = &v278 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v325 = &v278 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v301 = &v278 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v326 = (&v278 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v319 = (&v278 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v296 = &v278 - v29;
  v279 = v30;
  MEMORY[0x1EEE9AC00](v28);
  v285 = &v278 - v31;
  v331 = v32;
  v309 = sub_1CF9E75D8();
  *&v322 = *(v309 - 8);
  v33 = *(v322 + 64);
  v34 = MEMORY[0x1EEE9AC00](v309);
  v330 = (&v278 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x1EEE9AC00](v34);
  v327 = (&v278 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v324 = &v278 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v313 = (&v278 - v41);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v316 = &v278 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v302 = &v278 - v44;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v295 = *(AssociatedTypeWitness - 8);
  v45 = *(v295 + 64);
  v46 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v311 = &v278 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v317 = &v278 - v49;
  v284 = v50;
  MEMORY[0x1EEE9AC00](v48);
  v318 = &v278 - v51;
  v291 = v12;
  *&v333 = v12;
  *(&v333 + 1) = v13;
  v288 = v13;
  v290 = v14;
  *&v334 = v14;
  *(&v334 + 1) = v15;
  v289 = v15;
  v52 = type metadata accessor for ItemReconciliation();
  v53 = sub_1CF9E75D8();
  v314 = *(v53 - 8);
  v54 = v314[8];
  v55 = MEMORY[0x1EEE9AC00](v53);
  v57 = &v278 - v56;
  v321 = *(v52 - 8);
  v58 = *(v321 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v60 = &v278 - v59;
  v61 = sub_1CF9E64A8();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v65 = (&v278 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v300 = v6;
  v66 = v6[8];
  *v65 = v66;
  (*(v62 + 104))(v65, *MEMORY[0x1E69E8020], v61);
  v67 = v66;
  LOBYTE(v66) = sub_1CF9E64D8();
  (*(v62 + 8))(v65, v61);
  if ((v66 & 1) == 0)
  {
    goto LABEL_68;
  }

  v68 = v306;
  if (v306)
  {
    *&v336 = v306;
    v69 = v306;
    v70 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
    v71 = swift_dynamicCast();
    v72 = v310;
    v73 = v331;
    v74 = v300;
    if (v71)
    {
      if (v335)
      {
        sub_1CF48183C(v333, SDWORD2(v333), v334, *(&v334 + 1), 1);
        v75 = v72;
        v76 = v74[2];
        v77 = v281;
        sub_1CF68DDB0(v75, v303, v305, *(v304 + 8), v57);

        if (v77)
        {
          return;
        }

        v78 = v321;
        v79 = (*(v321 + 48))(v57, 1, v52);
        v281 = 0;
        if (v79 != 1)
        {
          (*(v78 + 32))(v60, v57, v52);
          v80 = v290;
          v275 = &v60[*(type metadata accessor for ItemReconciliationHalf() + 64)];
          if (v275[16])
          {
            (*(v78 + 8))(v60, v52);
            return;
          }

          v276 = *v275;
          (*(v78 + 8))(v60, v52);
          if ((v276 & 0x100) == 0)
          {
            return;
          }

          goto LABEL_12;
        }

        (v314[1])(v57, v53);
        goto LABEL_11;
      }

      sub_1CF48183C(v333, SDWORD2(v333), v334, *(&v334 + 1), 0);
    }

LABEL_11:
    v80 = v290;
    goto LABEL_12;
  }

  v80 = v290;
  v73 = v331;
  v74 = v300;
LABEL_12:
  v81 = qword_1EC4EBD78;
  swift_beginAccess();
  v82 = *(v74 + v81);

  *&v333 = v291;
  *(&v333 + 1) = v288;
  *&v334 = v80;
  *(&v334 + 1) = v289;
  *&v333 = type metadata accessor for UserRequest();
  *(&v333 + 1) = &type metadata for NSecTimestamp;
  *&v334 = WitnessTable;
  *(&v334 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
  v308 = swift_getTupleTypeMetadata();
  sub_1CF9E6E58();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v83 = *(AssociatedConformanceWitness + 40);
  sub_1CF9E6728();

  v84 = v336;
  if (!v336)
  {
    return;
  }

  v85 = swift_allocObject();
  v280 = v85;
  *(v85 + 16) = v84;
  v86 = (v85 + 16);
  v87 = v306;
  if (v306)
  {
    WitnessTable = v85 + 16;
  }

  else
  {
    v94 = v288;
    *&v333 = v291;
    *(&v333 + 1) = v288;
    *&v334 = v290;
    *(&v334 + 1) = v289;
    type metadata accessor for ConcreteDatabase();

    v95 = v281;
    v96 = sub_1CF5C5B28(v310, v300, v303, v305, v304, &v333);
    if (v95 || (v281 = 0, (v333 & 1) == 0))
    {

      return;
    }

    MEMORY[0x1EEE9AC00](v96);
    *(&v278 - 12) = v291;
    *(&v278 - 11) = v94;
    v180 = v290;
    *(&v278 - 10) = v305;
    *(&v278 - 9) = v180;
    *(&v278 - 8) = v289;
    *(&v278 - 7) = v181;
    *(&v278 - 48) = 1;
    *(&v278 - 5) = v182;
    *(&v278 - 32) = v183;
    *(&v278 - 3) = v184;
    LOBYTE(v277) = v185;
    swift_getWitnessTable();
    WitnessTable = swift_getWitnessTable();
    v186 = v281;
    sub_1CF9E6848();
    v281 = v186;
    v187 = v333;
    (*(v295 + 16))(v318, v310, AssociatedTypeWitness);
    if (v187 < 0)
    {
      goto LABEL_69;
    }

    v188 = *v86;
    *&v333 = sub_1CF9E6E98();
    *(&v333 + 1) = v189;
    *&v334 = v190;
    *(&v334 + 1) = v191;
    v321 = sub_1CF9E7778();
    v314 = swift_getWitnessTable();
    *&v336 = sub_1CF9E6E88();
    swift_beginAccess();
    sub_1CF9E6708();
    sub_1CF9E6738();
    swift_endAccess();
    *&v336 = v187;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B58, &unk_1CFA0CCF8);
    sub_1CEFCCCEC(&unk_1EC4C1B60, &qword_1EC4C1B58, &unk_1CFA0CCF8);
    sub_1CF9E6838();
    v336 = v333;
    v337 = v334;
    v192 = sub_1CF9E6E88();
    v193 = *v86;
    *v86 = v192;

    WitnessTable = v86;
    v194 = *v86;
    v73 = v331;
    v87 = v306;
  }

  v88 = sub_1CF9E6DF8();

  v89 = sub_1CF9E6DF8();

  if (v88 == v89)
  {
    (*(v295 + 16))(v318, v310, AssociatedTypeWitness);
    *&v336 = 0;
    swift_beginAccess();
    sub_1CF9E6708();
    sub_1CF9E6738();
    swift_endAccess();
  }

  if (v87)
  {
    swift_getErrorValue();
    v314 = Error.prettyDescription.getter(v332);
    v90 = v305;
    v91 = v319;
    v92 = AssociatedTypeWitness;
    v93 = v317;
LABEL_23:
    v283 = v91 + 1;
    v99 = (v287 + 16);
    v100 = *WitnessTable;
    v284 = (v287 + 32);
    v325 = (v287 + 56);
    v324 = (v287 + 48);
    v299 = (v322 + 32);
    v298 = (v295 + 16);
    v312 = v287 + 8;
    v296 = (v295 + 8);
    v295 = v323 + 8;
    v297 = (v90 - 8);

    v101 = 0;
    *&v102 = 136315650;
    v282 = v102;
    v300 = v100;
    v313 = v99;
    while (1)
    {
      if (v101 == sub_1CF9E6DF8())
      {
        *&v323 = v101;
        v113 = 1;
      }

      else
      {
        v114 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v114)
        {
          v115 = v100 + ((*(v287 + 80) + 32) & ~*(v287 + 80)) + *(v287 + 72) * v101;
          v116 = v285;
          (*(v287 + 16))(v285, v115, v73);
        }

        else
        {
          v179 = sub_1CF9E7998();
          if (v279 != 8)
          {
            goto LABEL_70;
          }

          *&v333 = v179;
          v116 = v285;
          (*v99)(v285, &v333, v73);
          swift_unknownObjectRelease();
        }

        (*v284)(v327, v116, v73);
        v117 = __OFADD__(v101, 1);
        v118 = v101 + 1;
        if (v117)
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          return;
        }

        *&v323 = v118;
        v113 = 0;
      }

      v119 = *v325;
      v120 = 1;
      v121 = v327;
      (*v325)(v327, v113, 1, v73);
      v122 = *v324;
      if ((*v324)(v121, 1, v73) != 1)
      {
        v123 = *(v331 + 64);
        *&v322 = *(v331 + 80);
        v124 = v327;
        v125 = *v327;
        WitnessTable = v327[1];
        v330 = v125;
        v126 = sub_1CF9E6448();
        v127 = *(*(v126 - 8) + 32);
        v128 = v319;
        v127(v319 + v123, &v124[v123], v126);
        v129 = swift_allocObject();
        *(v129 + 16) = *&v124[v322];
        v130 = *(v331 + 64);
        v131 = v316;
        v132 = &v316[*(v331 + 80)];
        v133 = WitnessTable;
        *v316 = v330;
        *(v131 + 1) = v133;
        v134 = v128 + v123;
        v92 = AssociatedTypeWitness;
        v73 = v331;
        v127(&v131[v130], v134, v126);
        v99 = v313;
        v120 = 0;
        *v132 = sub_1CF5DEE90;
        v132[1] = v129;
        v93 = v317;
      }

      v135 = v316;
      v119(v316, v120, 1, v73);
      v136 = v302;
      (*v299)(v302, v135, v309);
      if (v122(v136, 1, v73) == 1)
      {

        goto LABEL_40;
      }

      v137 = *(v73 + 64);
      v138 = *(v73 + 80);
      v139 = *v136;
      v140 = v136;
      v141 = v326;
      *v326 = v139;
      v142 = sub_1CF9E6448();
      WitnessTable = *(v142 - 8);
      v143 = *(WitnessTable + 32);
      v322 = *&v140[v138];
      v330 = v142;
      v143(&v141[v137], &v140[v137]);
      *&v141[v138] = v322;
      v144 = fpfs_current_or_default_log();
      v145 = v315;
      sub_1CF9E6128();
      v146 = v99;
      v147 = *v298;
      (*v298)(v93, v310, v92);
      v148 = v301;
      v321 = *v146;
      (v321)(v301, v141, v73);
      v149 = v314;
      v150 = v92;
      v151 = sub_1CF9E6108();
      v152 = sub_1CF9E7288();
      v311 = v149;

      v320 = v151;
      v153 = os_log_type_enabled(v151, v152);
      *&v322 = v312 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v153)
      {
        v154 = v148;
        v155 = swift_slowAlloc();
        v293 = swift_slowAlloc();
        v294 = swift_slowAlloc();
        *&v333 = v294;
        *v155 = v282;
        v147(v318, v93, v150);
        LODWORD(v292) = v152;
        v156 = *v296;
        (*v296)(v93, v150);
        v157 = *(AssociatedConformanceWitness + 16);
        v158 = sub_1CF9E7F98();
        v160 = v159;
        v156(v318, v150);
        v161 = sub_1CEFD0DF0(v158, v160, &v333);

        *(v155 + 4) = v161;
        *(v155 + 12) = 2080;
        v104 = v319;
        v162 = v154;
        v163 = v154;
        v73 = v331;
        v164 = v313;
        v165 = v321;
        (v321)(v319, v163, v331);
        v166 = *v104;
        v167 = *(v73 + 64);
        v168 = *(v283 + *(v73 + 80));

        (*(WitnessTable + 8))(v104 + v167, v330);
        v169 = *v312;
        (*v312)(v162, v73);
        v170 = sub_1CF665B0C(v166, v291, v288, v290, v289);
        v172 = v171;
        sub_1CF5DE5B8(v166);
        v173 = sub_1CEFD0DF0(v170, v172, &v333);
        v103 = v169;

        *(v155 + 14) = v173;
        *(v155 + 22) = 2112;
        v174 = v311;
        *(v155 + 24) = v311;
        v175 = v293;
        *v293 = v314;
        v176 = v174;
        v177 = v320;
        _os_log_impl(&dword_1CEFC7000, v320, v292, "propagation <fs:%s reason:%s> completed: %@", v155, 0x20u);
        sub_1CEFCCC44(v175, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v175, -1, -1);
        v178 = v294;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v178, -1, -1);
        MEMORY[0x1D386CDC0](v155, -1, -1);

        (*v295)(v315, v307);
        v99 = v164;
        v105 = v165;
      }

      else
      {
        v103 = *v312;
        v73 = v331;
        (*v312)(v148, v331);
        (*v296)(v93, v150);

        (*v295)(v145, v307);
        v104 = v319;
        v99 = v313;
        v105 = v321;
      }

      v106 = v326;
      v105(v104, v326, v73);
      sub_1CF5DE5B8(*v104);
      v107 = *(v73 + 64);
      v108 = v104 + *(v73 + 80);
      v110 = *v108;
      v109 = *(v108 + 1);
      v111 = v305;
      *(&v334 + 1) = v305;
      v335 = v304;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v333);
      (*(*(v111 - 8) + 16))(boxed_opaque_existential_0, v303, v111);
      v110(&v333, v306);

      v103(v106, v73);
      sub_1CEFCCC44(&v333, &unk_1EC4C1B30, &qword_1CFA05300);
      (*(WitnessTable + 8))(v104 + v107, v330);
      v92 = AssociatedTypeWitness;
      v93 = v317;
      v100 = v300;
      v101 = v323;
    }
  }

  sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
  v97 = sub_1CF9E7598();
  v98 = *(v300 + 82);
  v91 = v319;
  v92 = AssociatedTypeWitness;
  v93 = v317;
  v314 = v97;
  if ((v98 & 0x20) == 0)
  {
    v90 = v305;
    goto LABEL_23;
  }

  v293 = v319 + 1;
  v321 = v287 + 16;
  v195 = *WitnessTable;
  v294 = (v287 + 32);
  WitnessTable = v287 + 56;
  v327 = (v287 + 48);
  v303 = (v322 + 32);
  *&v322 = v295 + 16;
  v302 = (v287 + 8);
  v301 = (v295 + 8);
  v299 = (v323 + 8);

  v196 = 0;
  *&v197 = 136315394;
  v292 = v197;
  v198 = v320;
  v199 = v325;
  v306 = v195;
  while (1)
  {
    v201 = v198;
    if (v196 == sub_1CF9E6DF8())
    {
      v326 = v196;
      v202 = 1;
      v203 = v322;
    }

    else
    {
      v204 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      v203 = v322;
      if (v204)
      {
        v205 = v195 + ((*(v287 + 80) + 32) & ~*(v287 + 80)) + *(v287 + 72) * v196;
        v206 = v296;
        (*(v287 + 16))(v296, v205, v73);
      }

      else
      {
        v256 = sub_1CF9E7998();
        if (v279 != 8)
        {
          goto LABEL_71;
        }

        *&v333 = v256;
        v206 = v296;
        (*v321)(v296, &v333, v73);
        swift_unknownObjectRelease();
      }

      (*v294)(v330, v206, v73);
      v117 = __OFADD__(v196, 1);
      v207 = (v196 + 1);
      if (v117)
      {
        goto LABEL_67;
      }

      v326 = v207;
      v202 = 0;
    }

    v208 = v330;
    v209 = *WitnessTable;
    v210 = 1;
    (*WitnessTable)(v330, v202, 1, v73);
    v211 = *v327;
    if ((*v327)(v208, 1, v73) != 1)
    {
      v212 = *(v331 + 64);
      v316 = *(v331 + 80);
      v213 = v330;
      v214 = v330[1];
      *&v323 = *v330;
      v317 = v214;
      v215 = sub_1CF9E6448();
      v216 = *(*(v215 - 8) + 32);
      v217 = v319;
      v216(v319 + v212, &v213[v212], v215);
      v218 = swift_allocObject();
      *(v218 + 16) = *&v316[v213];
      v219 = *(v331 + 64);
      v220 = v324;
      v221 = &v324[*(v331 + 80)];
      v222 = v317;
      *v324 = v323;
      *(v220 + 1) = v222;
      v223 = v217 + v212;
      v92 = AssociatedTypeWitness;
      v73 = v331;
      v216(&v220[v219], v223, v215);
      v199 = v325;
      v210 = 0;
      *v221 = sub_1CF5E14E0;
      *(v221 + 1) = v218;
      v203 = v322;
      v201 = v320;
    }

    v209(v324, v210, 1, v73);
    v224 = v313;
    (*v303)();
    if (v211(v224, 1, v73) == 1)
    {
      break;
    }

    v225 = *(v73 + 64);
    v226 = *(v73 + 80);
    *v199 = *v224;
    v227 = sub_1CF9E6448();
    v316 = *(v227 - 8);
    v228 = *(v316 + 4);
    v323 = *(v224 + v226);
    v317 = v227;
    v228(&v199[v225], v224 + v225);
    *&v199[v226] = v323;
    v229 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v230 = *v203;
    v231 = v311;
    v230(v311, v310, v92);
    v232 = v312;
    v315 = *v321;
    (v315)(v312, v199, v73);
    v233 = sub_1CF9E6108();
    v234 = sub_1CF9E7288();
    LODWORD(v323) = v234;
    if (os_log_type_enabled(v233, v234))
    {
      v235 = swift_slowAlloc();
      v298 = swift_slowAlloc();
      *&v333 = v298;
      *v235 = v292;
      v236 = v318;
      v230(v318, v231, v92);
      v237 = *v301;
      (*v301)(v231, AssociatedTypeWitness);
      v238 = *(AssociatedConformanceWitness + 16);
      v239 = sub_1CF9E7F98();
      v297 = v233;
      v241 = v240;
      v237(v236, AssociatedTypeWitness);
      v92 = AssociatedTypeWitness;
      v242 = v239;
      v198 = v320;
      v243 = sub_1CEFD0DF0(v242, v241, &v333);

      *(v235 + 4) = v243;
      *(v235 + 12) = 2080;
      v244 = v319;
      (v315)(v319, v232, v331);
      v245 = *v244;
      v246 = *(v331 + 64);
      v247 = *(v293 + *(v331 + 80));

      (*(v316 + 1))(v244 + v246, v317);
      v248 = *v302;
      (*v302)(v232, v331);
      v249 = sub_1CF665B0C(v245, v291, v288, v290, v289);
      v251 = v250;
      sub_1CF5DE5B8(v245);
      v252 = sub_1CEFD0DF0(v249, v251, &v333);

      *(v235 + 14) = v252;
      v253 = v297;
      _os_log_impl(&dword_1CEFC7000, v297, v323, "propagation <fs:%s reason:%s> completed, waiting for flush", v235, 0x16u);
      v254 = v298;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v254, -1, -1);
      v255 = v235;
      v73 = v331;
      MEMORY[0x1D386CDC0](v255, -1, -1);

      (*v299)(v198, v307);
      v199 = v325;
      v248(v325, v73);
      v195 = v306;
      v196 = v326;
    }

    else
    {
      v200 = *v302;
      (*v302)(v232, v73);
      (*v301)(v231, v92);

      (*v299)(v201, v307);
      v199 = v325;
      v200(v325, v73);
      v195 = v306;
      v196 = v326;
      v198 = v201;
    }
  }

  v257 = swift_allocObject();
  v258 = v291;
  v259 = v288;
  v257[2] = v291;
  v257[3] = v259;
  v260 = v305;
  v261 = v92;
  v262 = v290;
  v257[4] = v305;
  v257[5] = v262;
  v263 = v289;
  v264 = v304;
  v257[6] = v289;
  v257[7] = v264;
  v257[8] = v280;
  v265 = v295;
  (*(v295 + 16))(v318, v310, v261);
  v266 = (*(v265 + 80) + 72) & ~*(v265 + 80);
  v267 = (v284 + v266 + 7) & 0xFFFFFFFFFFFFFFF8;
  v268 = swift_allocObject();
  v269 = v259;
  v270 = v268;
  v268[2] = v258;
  v268[3] = v269;
  v268[4] = v260;
  v268[5] = v262;
  v271 = v304;
  v268[6] = v263;
  v268[7] = v271;
  v268[8] = v280;
  (*(v265 + 32))(v268 + v266, v318, AssociatedTypeWitness);
  v272 = v300;
  *(v270 + v267) = 0;
  v273 = *(*v272 + 456);

  v274 = 0;

  v273("itemDidPropagate(id:error:with:)", 32, 2, 0, 0, 0, sub_1CF5DEE98, v257, sub_1CF5DEEB0, v270);

LABEL_40:
}

void sub_1CF5C1260(NSObject *a1, void *a2, void (**a3)(char *, char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v302 = a5;
  v303 = a4;
  v301 = a3;
  v304 = a2;
  v308 = a1;
  v7 = *v5;
  v306 = sub_1CF9E6118();
  v316 = *(v306 - 8);
  isa = v316[8].isa;
  v9 = MEMORY[0x1EEE9AC00](v306);
  v327 = &v277 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v313 = &v277 - v11;
  v12 = v7[78];
  v13 = v7[77];
  v14 = v7[80];
  v15 = v7[79];
  *&v333 = v12;
  *(&v333 + 1) = v13;
  *&v334 = v14;
  *(&v334 + 1) = v15;
  *&v333 = type metadata accessor for UserRequest();
  *(&v333 + 1) = &type metadata for NSecTimestamp;
  *&v321 = sub_1CF9E6448();
  *&v334 = v321;
  *(&v334 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v286 = *(TupleTypeMetadata - 8);
  v17 = *(v286 + 64);
  v18 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  *&v326 = &v277 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v320 = (&v277 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v324 = &v277 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v323 = &v277 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v329 = (&v277 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v296 = &v277 - v29;
  v278 = v30;
  MEMORY[0x1EEE9AC00](v28);
  v284 = &v277 - v31;
  v330 = v32;
  v307 = sub_1CF9E75D8();
  v318 = *(v307 - 8);
  v33 = *(v318 + 64);
  v34 = MEMORY[0x1EEE9AC00](v307);
  v328 = &v277 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v325 = (&v277 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v322 = &v277 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v311 = &v277 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v314 = (&v277 - v43);
  MEMORY[0x1EEE9AC00](v42);
  v300 = &v277 - v44;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v295 = *(AssociatedTypeWitness - 8);
  v45 = *(v295 + 64);
  v46 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v310 = &v277 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v315 = &v277 - v49;
  v283 = v50;
  MEMORY[0x1EEE9AC00](v48);
  v291 = &v277 - v51;
  v287 = v12;
  *&v333 = v12;
  *(&v333 + 1) = v13;
  v289 = v13;
  v290 = v14;
  *&v334 = v14;
  *(&v334 + 1) = v15;
  v288 = v15;
  v52 = type metadata accessor for ItemReconciliation();
  v53 = sub_1CF9E75D8();
  v312 = *(v53 - 8);
  v54 = v312[8];
  v55 = MEMORY[0x1EEE9AC00](v53);
  v57 = &v277 - v56;
  WitnessTable = *(v52 - 8);
  v58 = *(WitnessTable + 64);
  MEMORY[0x1EEE9AC00](v55);
  v60 = &v277 - v59;
  v61 = sub_1CF9E64A8();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v65 = (&v277 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v309 = v6;
  v66 = v6[8];
  *v65 = v66;
  (*(v62 + 104))(v65, *MEMORY[0x1E69E8020], v61);
  v67 = v66;
  LOBYTE(v66) = sub_1CF9E64D8();
  (*(v62 + 8))(v65, v61);
  if ((v66 & 1) == 0)
  {
    goto LABEL_72;
  }

  v68 = v304;
  if (!v304)
  {
    v72 = v287;
    v78 = v290;
    v73 = v329;
    goto LABEL_12;
  }

  *&v331[0] = v304;
  v69 = v304;
  v70 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  v71 = swift_dynamicCast();
  v72 = v287;
  v73 = v329;
  if (!v71)
  {
    goto LABEL_10;
  }

  if (BYTE8(v334) != 1)
  {
    sub_1CF481874(v333, *(&v333 + 1), v334, 0);
LABEL_10:

    goto LABEL_11;
  }

  v74 = v309[2];
  v75 = v280;
  sub_1CF68E230(v308, v301, v303, *(v302 + 8), v57);

  if (v75)
  {
    return;
  }

  v76 = WitnessTable;
  v77 = (*(WitnessTable + 48))(v57, 1, v52);
  v280 = 0;
  if (v77 == 1)
  {
    (v312[1])(v57, v53);
    v72 = v287;
LABEL_11:
    v78 = v290;
    goto LABEL_12;
  }

  (*(v76 + 32))(v60, v57, v52);
  v72 = v287;
  v78 = v290;
  v263 = &v60[*(type metadata accessor for ItemReconciliationHalf() + 64)];
  if (v263[16])
  {
    (*(v76 + 8))(v60, v52);
    return;
  }

  v275 = *v263;
  (*(v76 + 8))(v60, v52);
  if ((v275 & 0x100) == 0)
  {
    return;
  }

LABEL_12:
  v79 = qword_1EC4EBD70;
  v80 = v309;
  swift_beginAccess();
  v81 = *(v80 + v79);

  *&v333 = v72;
  *(&v333 + 1) = v289;
  *&v334 = v78;
  *(&v334 + 1) = v288;
  *&v333 = type metadata accessor for UserRequest();
  *(&v333 + 1) = &type metadata for NSecTimestamp;
  *&v334 = v321;
  *(&v334 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
  v82 = swift_getTupleTypeMetadata();
  sub_1CF9E6E58();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v83 = *(AssociatedConformanceWitness + 40);
  sub_1CF9E6728();

  v84 = *&v331[0];
  if (!*&v331[0])
  {
    return;
  }

  *&v321 = v83;
  v85 = swift_allocObject();
  v279 = v85;
  *(v85 + 16) = v84;
  v86 = (v85 + 16);
  v87 = v304;
  v305 = v82;
  if (!v304)
  {
    *&v333 = v289;
    *(&v333 + 1) = v72;
    *&v334 = v288;
    *(&v334 + 1) = v290;
    type metadata accessor for ConcreteDatabase();

    v95 = sub_1CF057B28();
    v96 = v280;
    sub_1CF5C5B28(v308, v95, v301, v303, v302, &v333);
    v280 = v96;
    if (v96)
    {
    }

    else
    {
      v177 = v333;
      v178 = *(&v333 + 1);
      v179 = v334;

      if (v177)
      {
        if (v179)
        {
          v87 = v304;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v180);
          v264 = v287;
          *(&v277 - 8) = v289;
          *(&v277 - 7) = v264;
          v265 = v288;
          *(&v277 - 6) = v303;
          *(&v277 - 5) = v265;
          v266 = v302;
          *(&v277 - 4) = v290;
          *(&v277 - 3) = v266;
          v276 = v178;
          swift_getWitnessTable();
          WitnessTable = swift_getWitnessTable();
          v267 = v280;
          sub_1CF9E6848();
          v280 = v267;
          v268 = v333;
          (*(v295 + 16))(v291, v308, AssociatedTypeWitness);
          if (v268 < 0)
          {
            goto LABEL_73;
          }

          v269 = *v86;
          *&v333 = sub_1CF9E6E98();
          *(&v333 + 1) = v270;
          *&v334 = v271;
          *(&v334 + 1) = v272;
          sub_1CF9E7778();
          v312 = swift_getWitnessTable();
          *&v331[0] = sub_1CF9E6E88();
          swift_beginAccess();
          sub_1CF9E6708();
          sub_1CF9E6738();
          swift_endAccess();
          *&v331[0] = v268;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B58, &unk_1CFA0CCF8);
          sub_1CEFCCCEC(&unk_1EC4C1B60, &qword_1EC4C1B58, &unk_1CFA0CCF8);
          sub_1CF9E6838();
          v331[0] = v333;
          v331[1] = v334;
          v273 = sub_1CF9E6E88();
          v274 = *v86;
          *v86 = v273;

          v73 = v329;
          v87 = v304;
        }

        goto LABEL_15;
      }
    }

    return;
  }

LABEL_15:
  v88 = *v86;

  v89 = sub_1CF9E6DF8();

  v90 = sub_1CF9E6DF8();

  if (v89 == v90)
  {
    (*(v295 + 16))(v291, v308, AssociatedTypeWitness);
    *&v331[0] = 0;
    swift_beginAccess();
    sub_1CF9E6708();
    v87 = v304;
    sub_1CF9E6738();
    swift_endAccess();
  }

  v91 = v326;
  if (v87)
  {
    swift_getErrorValue();
    v312 = Error.prettyDescription.getter(v332);
    v92 = v303;
    v93 = v330;
    v94 = v315;
LABEL_23:
    v282 = v73 + 1;
    v328 = (v286 + 16);
    v99 = *v86;
    v283 = (v286 + 32);
    v322 = (v286 + 56);
    *&v321 = v286 + 48;
    v298 = (v318 + 32);
    v100 = (v295 + 16);
    v310 = v286 + 8;
    v297 = (v295 + 8);
    v296 = &v316[1];
    v295 = v92 - 8;

    v101 = 0;
    *&v102 = 136315650;
    v281 = v102;
    v299 = v99;
    v311 = v100;
    while (1)
    {
      v113 = sub_1CF9E6DF8();
      v114 = AssociatedTypeWitness;
      if (v101 == v113)
      {
        v320 = v101;
        v115 = 1;
      }

      else
      {
        v116 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v116)
        {
          v117 = v99 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v101;
          v118 = v284;
          (*(v286 + 16))(v284, v117, v93);
        }

        else
        {
          v176 = sub_1CF9E7998();
          if (v278 != 8)
          {
            goto LABEL_74;
          }

          *&v333 = v176;
          v118 = v284;
          (*v328)(v284, &v333, v93);
          swift_unknownObjectRelease();
        }

        (*v283)(v325, v118, v93);
        v119 = __OFADD__(v101, 1);
        v120 = (v101 + 1);
        if (v119)
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          return;
        }

        v320 = v120;
        v115 = 0;
      }

      v121 = *v322;
      v122 = 1;
      v123 = v325;
      (*v322)(v325, v115, 1, v93);
      v124 = *v321;
      if ((*v321)(v123, 1, v93) != 1)
      {
        v125 = *(v93 + 64);
        v126 = *(v93 + 80);
        v127 = v325;
        v128 = v325[1];
        v327 = *v325;
        *&v326 = v128;
        v129 = sub_1CF9E6448();
        v130 = *(*(v129 - 8) + 32);
        v130(v329 + v125, &v127[v125], v129);
        v131 = swift_allocObject();
        v132 = *&v127[v126];
        v100 = v311;
        *(v131 + 16) = v132;
        v133 = *(v330 + 64);
        v134 = v314;
        v135 = (v314 + *(v330 + 80));
        v136 = v326;
        *v314 = v327;
        v134[1] = v136;
        v130(v134 + v133, v329 + v125, v129);
        v94 = v315;
        v93 = v330;
        v122 = 0;
        *v135 = sub_1CF5E14E0;
        v135[1] = v131;
        v114 = AssociatedTypeWitness;
      }

      v137 = v314;
      v121(v314, v122, 1, v93);
      v138 = v300;
      (v298->isa)(v300, v137, v307);
      if (v124(v138, 1, v93) == 1)
      {

        goto LABEL_40;
      }

      v139 = *(v93 + 64);
      v140 = *(v93 + 80);
      v141 = *v138;
      v142 = v138;
      v143 = v323;
      *v323 = v141;
      v144 = sub_1CF9E6448();
      v327 = *(v144 - 8);
      v145 = *(v327 + 4);
      v326 = *&v142[v140];
      v318 = v144;
      v145(&v143[v139], &v142[v139]);
      *&v143[v140] = v326;
      v146 = fpfs_current_or_default_log();
      v147 = v313;
      sub_1CF9E6128();
      v148 = *v100;
      (*v100)(v94, v308, v114);
      v149 = v114;
      v150 = v94;
      *&v326 = *v328;
      (v326)(v324, v143, v93);
      v151 = v312;
      v152 = sub_1CF9E6108();
      LOBYTE(v140) = sub_1CF9E7288();

      v316 = v152;
      LODWORD(v309) = v140;
      v153 = os_log_type_enabled(v152, v140);
      WitnessTable = v310 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v153)
      {
        v154 = swift_slowAlloc();
        v293 = swift_slowAlloc();
        v294 = swift_slowAlloc();
        *&v333 = v294;
        *v154 = v281;
        *&v292 = v151;
        v155 = v291;
        v148(v291, v150, v149);
        v156 = *v297;
        (*v297)(v150, v149);
        v157 = *(AssociatedConformanceWitness + 16);
        v158 = sub_1CF9E7F98();
        v160 = v159;
        v156(v155, v149);
        v161 = sub_1CEFD0DF0(v158, v160, &v333);

        *(v154 + 4) = v161;
        *(v154 + 12) = 2080;
        v104 = v329;
        v162 = v324;
        (v326)(v329, v324, v330);
        v163 = *v104;
        v164 = *(v330 + 64);
        v165 = *(v282 + *(v330 + 80));

        v105 = v318;
        (*(v327 + 1))(v104 + v164, v318);
        v103 = *v310;
        (*v310)(v162, v330);
        v166 = sub_1CF665B0C(v163, v287, v289, v290, v288);
        v168 = v167;
        sub_1CF5DE5B8(v163);
        v169 = v166;
        v93 = v330;
        v170 = sub_1CEFD0DF0(v169, v168, &v333);

        *(v154 + 14) = v170;
        *(v154 + 22) = 2112;
        v171 = v292;
        *(v154 + 24) = v292;
        v172 = v293;
        *v293 = v312;
        v173 = v171;
        v174 = v316;
        _os_log_impl(&dword_1CEFC7000, v316, v309, "propagation <fp:%s reason:%s> completed: %@", v154, 0x20u);
        sub_1CEFCCC44(v172, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v172, -1, -1);
        v175 = v294;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v175, -1, -1);
        MEMORY[0x1D386CDC0](v154, -1, -1);

        (*v296)(v313, v306);
      }

      else
      {
        v103 = *v310;
        (*v310)(v324, v93);
        (*v297)(v150, v149);

        (*v296)(v147, v306);
        v104 = v329;
        v105 = v318;
      }

      v106 = v323;
      (v326)(v104, v323, v93);
      sub_1CF5DE5B8(*v104);
      v107 = *(v93 + 64);
      v108 = v104 + *(v93 + 80);
      v110 = *v108;
      v109 = *(v108 + 1);
      v111 = v303;
      *(&v334 + 1) = v303;
      v335 = v302;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v333);
      (*(*(v111 - 8) + 16))(boxed_opaque_existential_0, v301, v111);
      v110(&v333, v304);

      v103(v106, v93);
      sub_1CEFCCC44(&v333, &unk_1EC4C1B30, &qword_1CFA05300);
      (*(v327 + 1))(v104 + v107, v105);
      v94 = v315;
      v99 = v299;
      v100 = v311;
      v101 = v320;
    }
  }

  sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
  v97 = sub_1CF9E7598();
  v98 = *(v309 + 82);
  v93 = v330;
  v94 = v315;
  v312 = v97;
  if ((v98 & 0x20) == 0)
  {
    v92 = v303;
    goto LABEL_23;
  }

  v181 = swift_allocObject();
  v182 = v287;
  *(v181 + 2) = v289;
  *(v181 + 3) = v182;
  v183 = v288;
  *(v181 + 4) = v303;
  *(v181 + 5) = v183;
  v184 = v302;
  *(v181 + 6) = v290;
  *(v181 + 7) = v184;
  v185 = v279;
  v284 = v181;
  *(v181 + 8) = v279;
  swift_beginAccess();
  v293 = v73 + 1;
  WitnessTable = v286 + 16;
  v186 = *(v185 + 16);
  v294 = (v286 + 32);
  v325 = (v286 + 56);
  v324 = (v286 + 48);
  v301 = (v318 + 32);
  v318 = v295 + 16;
  v300 = (v286 + 8);
  v299 = (v295 + 8);
  v298 = v316 + 1;

  v187 = 0;
  *&v188 = 136315394;
  v292 = v188;
  v189 = v308;
  v304 = v186;
  v190 = v91;
  while (1)
  {
    if (v187 == sub_1CF9E6DF8())
    {
      v323 = v187;
      v192 = 1;
      v193 = v318;
    }

    else
    {
      v194 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      v193 = v318;
      if (v194)
      {
        v195 = v186 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v187;
        v196 = v296;
        (*(v286 + 16))(v296, v195, v93);
      }

      else
      {
        v250 = sub_1CF9E7998();
        if (v278 != 8)
        {
          goto LABEL_75;
        }

        *&v331[0] = v250;
        v196 = v296;
        (*WitnessTable)(v296, v331, v93);
        swift_unknownObjectRelease();
      }

      (*v294)(v328, v196, v93);
      v119 = __OFADD__(v187, 1);
      v197 = (v187 + 1);
      if (v119)
      {
        goto LABEL_71;
      }

      v323 = v197;
      v192 = 0;
    }

    v198 = *v325;
    v199 = 1;
    v200 = v328;
    (*v325)(v328, v192, 1, v93);
    v201 = *v324;
    if ((*v324)(v200, 1, v93) != 1)
    {
      v202 = *(v93 + 64);
      v203 = *(v93 + 80);
      v204 = v328;
      v205 = *(v328 + 1);
      *&v321 = *v328;
      v316 = v205;
      v206 = sub_1CF9E6448();
      v207 = *(*(v206 - 8) + 32);
      v207(v329 + v202, &v204[v202], v206);
      v208 = swift_allocObject();
      *(v208 + 16) = *&v204[v203];
      v209 = *(v330 + 64);
      v210 = v322;
      v211 = &v322[*(v330 + 80)];
      v212 = v316;
      *v322 = v321;
      *(v210 + 1) = v212;
      v213 = v329 + v202;
      v193 = v318;
      v190 = v326;
      v207(&v210[v209], v213, v206);
      v93 = v330;
      v199 = 0;
      *v211 = sub_1CF5E14E0;
      *(v211 + 1) = v208;
      v189 = v308;
    }

    v214 = v322;
    v198(v322, v199, 1, v93);
    v215 = v311;
    (*v301)(v311, v214, v307);
    if (v201(v215, 1, v93) == 1)
    {
      break;
    }

    v216 = *(v93 + 64);
    v217 = *(v93 + 80);
    v218 = *v215;
    v219 = v215;
    v220 = v320;
    *v320 = v218;
    v221 = sub_1CF9E6448();
    v315 = v221[-1].isa;
    v222 = *(v315 + 4);
    v321 = *&v219[v217];
    v316 = v221;
    v222(&v220[v216], &v219[v216]);
    *&v220[v217] = v321;
    v223 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v224 = v93;
    v225 = *v193;
    v226 = v310;
    v227 = AssociatedTypeWitness;
    v225(v310, v189, AssociatedTypeWitness);
    v313 = *WitnessTable;
    (v313)(v190, v220, v224);
    v228 = sub_1CF9E6108();
    v229 = sub_1CF9E7288();
    *&v321 = v228;
    LODWORD(v314) = v229;
    if (os_log_type_enabled(v228, v229))
    {
      v230 = swift_slowAlloc();
      v297 = swift_slowAlloc();
      *&v331[0] = v297;
      *v230 = v292;
      v225(v291, v226, v227);
      v231 = *v299;
      (*v299)(v226, v227);
      v232 = *(AssociatedConformanceWitness + 16);
      v233 = sub_1CF9E7F98();
      v235 = v234;
      v231(v291, v227);
      v236 = v329;
      v237 = sub_1CEFD0DF0(v233, v235, v331);

      *(v230 + 4) = v237;
      *(v230 + 12) = 2080;
      v238 = v326;
      (v313)(v236, v326, v224);
      v239 = *v236;
      v240 = *(v224 + 64);
      v241 = *(v293 + *(v224 + 80));

      (*(v315 + 1))(v236 + v240, v316);
      v242 = *v300;
      (*v300)(v238, v224);
      v243 = sub_1CF665B0C(v239, v287, v289, v290, v288);
      v245 = v244;
      sub_1CF5DE5B8(v239);
      v246 = sub_1CEFD0DF0(v243, v245, v331);

      *(v230 + 14) = v246;
      v247 = v321;
      _os_log_impl(&dword_1CEFC7000, v321, v314, "propagation <fp:%s reason:%s> completed, waiting for flush", v230, 0x16u);
      v248 = v297;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v248, -1, -1);
      v249 = v230;
      v189 = v308;
      MEMORY[0x1D386CDC0](v249, -1, -1);

      (v298->isa)(v327, v306);
      v242(v320, v224);
      v93 = v224;
      v190 = v238;
    }

    else
    {
      v191 = *v300;
      v190 = v326;
      (*v300)(v326, v224);
      (*v299)(v226, v227);

      (v298->isa)(v327, v306);
      v191(v220, v224);
      v93 = v224;
    }

    v186 = v304;
    v187 = v323;
  }

  v251 = v295;
  v252 = v291;
  v253 = AssociatedTypeWitness;
  (*(v295 + 16))(v291, v189, AssociatedTypeWitness);
  v254 = (*(v251 + 80) + 72) & ~*(v251 + 80);
  v255 = (v283 + v254 + 7) & 0xFFFFFFFFFFFFFFF8;
  v256 = swift_allocObject();
  v257 = v287;
  *(v256 + 2) = v289;
  *(v256 + 3) = v257;
  v258 = v288;
  *(v256 + 4) = v303;
  *(v256 + 5) = v258;
  v259 = v302;
  *(v256 + 6) = v290;
  *(v256 + 7) = v259;
  *(v256 + 8) = v279;
  (*(v251 + 32))(&v256[v254], v252, v253);
  v260 = v309;
  *&v256[v255] = 0;
  v261 = *(*v260 + 456);
  v262 = 0;

  v261("itemDidPropagate(id:error:with:)", 32, 2, 1, 0, 0, sub_1CF5DEFA4, v284, sub_1CF5DEFF8, v256);

LABEL_40:
}

uint64_t sub_1CF5C36BC(uint64_t a1, int a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v112 = a7;
  v114 = a6;
  v108 = a5;
  v111 = a4;
  v119 = a3;
  LODWORD(v122) = a2;
  v10 = *v7;
  v107 = sub_1CF9E6118();
  v103 = *(v107 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v95 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v10[79];
  v14 = v10[77];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v121 = *(AssociatedTypeWitness - 8);
  v16 = *(v121 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v110 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v96 = &v86 - v19;
  v20 = qword_1EC4EBD80;
  swift_beginAccess();
  v120 = v20;
  v21 = *(v8 + v20);

  v22 = v10[78];
  *&v23 = v14;
  *(&v23 + 1) = v22;
  v24 = v10[80];
  *&v25 = v13;
  *(&v25 + 1) = v24;
  v117 = v25;
  v124 = v23;
  v125 = v25;
  v118 = v23;
  *&v124 = type metadata accessor for UserRequest();
  *(&v124 + 1) = &type metadata for JobCode;
  *&v125 = &type metadata for NSecTimestamp;
  *(&v125 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  sub_1CF9E6E58();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = *(AssociatedConformanceWitness + 40);
  v113 = a1;
  v115 = v26;
  sub_1CF9E6728();

  result = *&v127[0];
  if (*&v127[0])
  {
    v128 = *&v127[0];
    v28 = MEMORY[0x1EEE9AC00](*&v127[0]);
    v92 = v14;
    *(&v86 - 8) = v14;
    *(&v86 - 7) = v22;
    v91 = v22;
    *(&v86 - 6) = v114;
    *(&v86 - 5) = v29;
    v93 = v29;
    v90 = v24;
    v30 = v112;
    *(&v86 - 4) = v24;
    *(&v86 - 3) = v30;
    *(&v86 - 16) = v122;
    *(&v86 - 1) = v119;
    v105 = v28;

    swift_getWitnessTable();
    WitnessTable = swift_getWitnessTable();
    v32 = v87;
    sub_1CF9E6848();
    v87 = v32;
    v33 = v124;
    v34 = v121 + 16;
    v35 = *(v121 + 16);
    result = v35(v96, v113, AssociatedTypeWitness);
    if (v33 < 0)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    v106 = v35;
    v116 = v34;
    v104 = v128;
    v102 = WitnessTable;
    *&v124 = sub_1CF9E6E98();
    *(&v124 + 1) = v36;
    *&v125 = v37;
    *(&v125 + 1) = v38;
    sub_1CF9E7778();
    swift_getWitnessTable();
    *&v127[0] = sub_1CF9E6E88();
    swift_beginAccess();
    v119 = AssociatedTypeWitness;
    v115 = sub_1CF9E6708();
    sub_1CF9E6738();
    swift_endAccess();
    *&v127[0] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B58, &unk_1CFA0CCF8);
    sub_1CEFCCCEC(&unk_1EC4C1B60, &qword_1EC4C1B58, &unk_1CFA0CCF8);
    sub_1CF9E6838();
    v127[0] = v124;
    v127[1] = v125;
    v39 = sub_1CF9E6E88();

    v40 = sub_1CF9E6DF8();
    v41 = sub_1CF9E6DF8();

    if (v40 == v41)
    {
      v106(v96, v113, v119);
      *&v127[0] = 0;
      swift_beginAccess();
      sub_1CF9E6738();
      swift_endAccess();
    }

    v124 = v118;
    v125 = v117;
    type metadata accessor for Job();
    v42 = sub_1CF05194C(v122);
    v89 = (*(v42 + 176))();
    v44 = v43;
    v45 = v95;
    if (v111)
    {
      swift_getErrorValue();
      v46 = Error.prettyDescription.getter(v123);
    }

    else
    {
      sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
      v46 = sub_1CF9E7598();
    }

    v47 = v46;
    v48 = v119;
    v49 = sub_1CF9E6DF8();
    v51 = v110;
    if (v49)
    {
      v115 = v47;
      v105 = v44;
      v52 = 0;
      v104 = (v121 + 8);
      v103 += 8;
      v101 = v114 - 8;
      v53 = (v39 + 64);
      *&v50 = 136315906;
      v88 = v50;
      v102 = v39;
      while (1)
      {
        v58 = sub_1CF9E6DC8();
        result = sub_1CF9E6D78();
        if ((v58 & 1) == 0)
        {
          break;
        }

        if (__OFADD__(v52, 1))
        {
          goto LABEL_21;
        }

        v121 = v52 + 1;
        v122 = v52;
        v59 = *(v53 - 4);
        v60 = *v53;
        v119 = *(v53 - 1);
        *&v118 = v53;
        v120 = v60;
        swift_retain_n();
        sub_1CEFD09A0(v59);
        v61 = fpfs_current_or_default_log();
        v62 = v45;
        sub_1CF9E6128();
        v63 = v106;
        v106(v51, v113, v48);
        sub_1CEFD09A0(v59);
        sub_1CEFD09A0(v59);
        v64 = v105;

        v65 = v115;
        v66 = sub_1CF9E6108();
        v67 = sub_1CF9E7298();

        *&v117 = v66;
        v68 = os_log_type_enabled(v66, v67);
        v100 = v65;
        if (v68)
        {
          v69 = swift_slowAlloc();
          v98 = v67;
          v70 = v69;
          v97 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *&v124 = v99;
          *v70 = v88;
          *(v70 + 4) = sub_1CEFD0DF0(v89, v64, &v124);
          *(v70 + 12) = 2080;
          v71 = v96;
          v63(v96, v51, v48);
          v72 = *v104;
          (*v104)(v51, v48);
          v73 = *(AssociatedConformanceWitness + 16);
          v74 = sub_1CF9E7F98();
          v76 = v75;
          v72(v71, v48);
          v54 = v112;
          v77 = sub_1CEFD0DF0(v74, v76, &v124);

          *(v70 + 14) = v77;
          *(v70 + 22) = 2080;
          v78 = sub_1CF665B0C(v59, v92, v91, v93, v90);
          v80 = v79;
          sub_1CF5DE5B8(v59);
          sub_1CF5DE5B8(v59);
          v81 = sub_1CEFD0DF0(v78, v80, &v124);
          v55 = v114;

          *(v70 + 24) = v81;
          *(v70 + 32) = 2112;
          *(v70 + 34) = v65;
          v82 = v97;
          *v97 = v115;
          v83 = v65;
          v84 = v117;
          _os_log_impl(&dword_1CEFC7000, v117, v98, "%s <fs:%s reason:%s> completed: %@", v70, 0x2Au);
          sub_1CEFCCC44(v82, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v82, -1, -1);
          v85 = v99;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v85, -1, -1);
          MEMORY[0x1D386CDC0](v70, -1, -1);

          v45 = v95;
          (*v103)(v95, v107);
        }

        else
        {
          sub_1CF5DE5B8(v59);
          (*v104)(v51, v48);
          sub_1CF5DE5B8(v59);

          (*v103)(v62, v107);
          v45 = v62;
          v54 = v112;
          v55 = v114;
        }

        *(&v125 + 1) = v55;
        v126 = v54;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v124);
        (*(*(v55 - 8) + 16))(boxed_opaque_existential_0, v108, v55);
        *&v127[0] = v111;
        v119(&v124, v127);
        sub_1CF5DE5B8(v59);

        sub_1CEFCCC44(&v124, &unk_1EC4C1B30, &qword_1CFA05300);
        v57 = sub_1CF9E6DF8();
        v52 = v122 + 1;
        v53 = (v118 + 40);
        v51 = v110;
        if (v121 == v57)
        {

          goto LABEL_19;
        }
      }

      result = sub_1CF9E7998();
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_19:
  }

  return result;
}

uint64_t sub_1CF5C43DC(uint64_t a1, uint64_t a2, uint64_t *a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*a3 + 616);
  v12 = *(*a3 + 632);
  v13 = type metadata accessor for FileTreeChangeAggregator();
  return sub_1CF5B4444(a2, a3, a4, v13, a5, a6);
}

uint64_t sub_1CF5C4484(uint64_t a1, uint64_t a2, uint64_t *a3, NSObject *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = *a3;
  v13 = sub_1CF057B28();
  v14 = *(v12 + 624);
  v15 = *(v12 + 640);
  v16 = type metadata accessor for FileTreeChangeAggregator();
  sub_1CF5B4444(a2, v13, a4, v16, a5, a6);

  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

void sub_1CF5C4560(void *a1, char a2, uint64_t a3)
{
  v79 = a1;
  v75 = *a3;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v75[79];
  v73 = v75[77];
  v74 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = *(AssociatedTypeWitness - 8);
  v12 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = &v64 - v13;
  v78 = type metadata accessor for SyncState();
  v14 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E6118();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 90) != (a2 & 1))
  {
    v68 = v6;
    v69 = v20;
    v67 = v7;
    v71 = a2 & 1;
    v70 = v3;
    v23 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v24 = sub_1CF9E6108();
    v25 = sub_1CF9E72C8();
    v26 = os_log_type_enabled(v24, v25);
    v66 = AssociatedTypeWitness;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v80[0] = v65;
      *v27 = 136315138;
      if (a2)
      {
        v28 = 0xD000000000000019;
      }

      else
      {
        v28 = 0x676E696E6E7572;
      }

      if (a2)
      {
        v29 = 0x80000001CFA40CB0;
      }

      else
      {
        v29 = 0xE700000000000000;
      }

      v30 = sub_1CEFD0DF0(v28, v29, v80);

      *(v27 + 4) = v30;
      _os_log_impl(&dword_1CEFC7000, v24, v25, "changing scheduling state to %s", v27, 0xCu);
      v31 = v65;
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x1D386CDC0](v31, -1, -1);
      MEMORY[0x1D386CDC0](v27, -1, -1);
    }

    (*(v18 + 8))(v22, v69);
    v32 = v79;
    v34 = *(a3 + 48);
    v33 = *(a3 + 56);
    ObjectType = swift_getObjectType();
    v36 = a3;
    v37 = v32;
    v38 = v32[3];
    v39 = v37[4];
    v40 = __swift_project_boxed_opaque_existential_1(v37, v38);
    v41 = v71;
    *v16 = v71;
    swift_storeEnumTagMultiPayload();
    v42 = v70;
    (*(v33 + 8))(v16, v40, v38, v39, ObjectType, v33);
    sub_1CF043504(v16, type metadata accessor for SyncState);
    if (!v42)
    {
      sub_1CF5A5570(v41);
      v43 = v36;
      if (*(v36 + 90))
      {
        v44 = v79[3];
        v45 = v79[4];
        v46 = __swift_project_boxed_opaque_existential_1(v79, v44);
        (*(**(v36 + 24) + 616))(v46, v44, v45);
        sub_1CF5A603C();
LABEL_21:
        v62 = *(**(v43[4] + 16) + 928);

        v62(v41);

        v63 = *(**(v43[5] + 16) + 928);

        v63(v41);

        return;
      }

      sub_1CF5A6048();
      v47 = v79[3];
      __swift_project_boxed_opaque_existential_1(v79, v47);
      v48 = v75[78];
      v49 = v75[80];
      v80[0] = v73;
      v80[1] = v48;
      v80[2] = v74;
      v80[3] = v49;
      type metadata accessor for Maintenance.UnpauseReconciliations();
      v79 = v36;
      v50 = *(v36 + 32);
      sub_1CF046AB4();
      v51 = v77;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v53 = v52;
      v54 = *(v67 + 8);
      v54(v51, v68);
      v55 = v53 * 1000000000.0;
      if (COERCE__INT64(fabs(v53 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v55 > -9.22337204e18)
      {
        v78 = v47;
        if (v55 < 9.22337204e18)
        {
          v56 = v76;
          v57 = sub_1CF559420(v76, 0x2000000000000000, v55, 0);
          (*(v72 + 8))(v56, v66);
          v58 = v77;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v60 = v59;
          v54(v58, v68);
          v61 = v60 * 1000000000.0;
          if (COERCE__INT64(fabs(v60 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v61 > -9.22337204e18)
            {
              if (v61 < 9.22337204e18)
              {
                v43 = v79;
                sub_1CF5215C0(v57);

                v41 = v71;
                goto LABEL_21;
              }

LABEL_27:
              __break(1u);
              return;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_24;
    }
  }
}

uint64_t sub_1CF5C4D18()
{
  v1 = *v0;

  v2 = *(v0 + 104);
  sub_1CEFF7124(*(v0 + 96));
  v3 = *(v0 + 112);
  swift_unknownObjectRelease();
  v4 = *(v0 + 120);

  v5 = *(v0 + 136);

  v6 = *(v0 + 144);

  v7 = *(v0 + 160);

  v8 = *(v0 + 168);

  v9 = *(v0 + 184);

  v10 = *(v0 + 192);

  v11 = *(v0 + 200);
  swift_unknownObjectRelease();
  sub_1CEFCCC44(v0 + 216, &qword_1EC4C1BF8, &unk_1CFA0CD70);
  v12 = *(v0 + 224);

  sub_1CEFCCC44(v0 + qword_1EDEBBC18, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v13 = *(v0 + qword_1EDEBBC70);

  v14 = *(v0 + qword_1EC4EBD70);

  v15 = *(v0 + qword_1EC4EBD78);

  v16 = *(v0 + qword_1EDEBBC90);

  v17 = *(v0 + qword_1EC4EBD80);

  v18 = *(v0 + qword_1EDEBBCC0);

  v19 = *(v0 + qword_1EDEBBCC8);

  v20 = *(v0 + qword_1EDEBBD00);

  v21 = *(v0 + qword_1EDEBBC60);

  v22 = *(v0 + qword_1EDEBBCE8);
  swift_unknownObjectRelease();
  v23 = v1[77];
  v24 = v1[79];
  type metadata accessor for FileTreeChangeAggregator();
  swift_getAssociatedTypeWitness();
  v25 = *(swift_getAssociatedConformanceWitness() + 40);
  sub_1CF9E7068();
  sub_1CF9E6708();
  swift_getTupleTypeMetadata2();
  v26 = *(sub_1CF9E5EB8() + 16);
  sub_1CF9E75C8();
  v27 = v1[78];
  v28 = v1[80];
  type metadata accessor for FileTreeChangeAggregator();
  v29 = *(sub_1CF9E5EB8() + 16);
  sub_1CF9E75C8();

  v30 = *(v0 + qword_1EDEBBCD8);

  v31 = *(v0 + qword_1EDEADB50);

  sub_1CF043504(v0 + qword_1EDEBBC30, type metadata accessor for DBCounters);
  v32 = *(v0 + qword_1EDEBBC78 + 8);
  sub_1CEFF7124(*(v0 + qword_1EDEBBC78));

  v33 = *(v0 + qword_1EDEBBCB8);

  v34 = *(v0 + qword_1EDEBBC88);

  v35 = *(v0 + qword_1EDEBBC98);

  v36 = *(v0 + qword_1EDEBBCF8);
  v37 = *(v0 + qword_1EDEBBCF8 + 8);

  return sub_1CEFF7124(v36);
}

uint64_t sub_1CF5C50BC()
{
  v0 = *sub_1CF59AF44();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1CF5C5128()
{
  if (!qword_1EDEACDB0)
  {
    type metadata accessor for TelemetrySignposter(255);
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEACDB0);
    }
  }
}

uint64_t type metadata accessor for DBCounters()
{
  result = qword_1EDEAEA38;
  if (!qword_1EDEAEA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF5C51E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1CF5C523C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1CF5C5284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CF5C52DC(uint64_t a1)
{
  result = sub_1CF9E6448();
  if (v3 <= 0x3F)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 32);
    type metadata accessor for UserRequest();
    sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
    swift_getTupleTypeMetadata();
    result = sub_1CF9E6708();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF5C547C()
{
  result = sub_1CF9E5CF8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreamResetReason(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StreamResetReason(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1CF5C5558(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF5C5574(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_1CF5C55A8()
{
  result = qword_1EC4C19E0;
  if (!qword_1EC4C19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C19E0);
  }

  return result;
}

unint64_t sub_1CF5C5600()
{
  result = qword_1EC4C19E8;
  if (!qword_1EC4C19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C19E8);
  }

  return result;
}

unint64_t sub_1CF5C5658()
{
  result = qword_1EC4C19F0;
  if (!qword_1EC4C19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C19F0);
  }

  return result;
}

unint64_t sub_1CF5C56F4()
{
  result = qword_1EC4C1A08;
  if (!qword_1EC4C1A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A08);
  }

  return result;
}

unint64_t sub_1CF5C574C()
{
  result = qword_1EC4C1A10;
  if (!qword_1EC4C1A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A10);
  }

  return result;
}

unint64_t sub_1CF5C57CC()
{
  result = qword_1EC4C1A20;
  if (!qword_1EC4C1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A20);
  }

  return result;
}

unint64_t sub_1CF5C5820()
{
  result = qword_1EC4C1A28;
  if (!qword_1EC4C1A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A28);
  }

  return result;
}

unint64_t sub_1CF5C5878()
{
  result = qword_1EC4C1A30;
  if (!qword_1EC4C1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A30);
  }

  return result;
}

unint64_t sub_1CF5C58D0()
{
  result = qword_1EC4C1A38;
  if (!qword_1EC4C1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A38);
  }

  return result;
}

unint64_t sub_1CF5C596C()
{
  result = qword_1EC4C1A50;
  if (!qword_1EC4C1A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A50);
  }

  return result;
}

unint64_t sub_1CF5C59C4()
{
  result = qword_1EC4C1A58;
  if (!qword_1EC4C1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A58);
  }

  return result;
}

uint64_t sub_1CF5C5A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF5C5A80()
{
  result = qword_1EC4C1A60;
  if (!qword_1EC4C1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A60);
  }

  return result;
}

unint64_t sub_1CF5C5AD4()
{
  result = qword_1EC4C1A68;
  if (!qword_1EC4C1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C1A68);
  }

  return result;
}

uint64_t sub_1CF5C5B28@<X0>(NSObject *a1@<X0>, void *a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v177 = a3;
  v178 = a4;
  v183 = a1;
  v170 = a6;
  v9 = *(*a2 + 80);
  v10 = *(*a2 + 104);
  v11 = *(*a2 + 96);
  v179 = *(*a2 + 88);
  v8 = v179;
  v180 = v9;
  v181 = v10;
  v182 = v11;
  v162 = type metadata accessor for ItemReconciliation();
  v161 = *(v162 - 8);
  v12 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v154 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v166 = *(AssociatedTypeWitness - 1);
  v14 = v166[8];
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v159 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v164 = &v154 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v165 = &v154 - v19;
  v20 = sub_1CF9E6118();
  v167 = *(v20 - 8);
  v168 = v20;
  v21 = *(v167 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v163 = &v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v169 = &v154 - v24;
  v174 = v11;
  v175 = v9;
  v179 = v9;
  v180 = v8;
  v172 = v10;
  v173 = v8;
  v181 = v11;
  v182 = v10;
  v25 = type metadata accessor for ItemReconciliation();
  v26 = sub_1CF9E75D8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v154 - v30;
  v32 = *(v25 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v35 = &v154 - v34;
  v36 = a2[2];
  v158 = a5;
  v37 = *(a5 + 8);
  v38 = v176;
  result = sub_1CF68DDB0(v183, v177, v178, v37, v31);
  if (!v38)
  {
    v40 = v27;
    v155 = v37;
    v156 = v35;
    v41 = v32;
    v43 = v174;
    v42 = v175;
    v176 = 0;
    if ((*(v41 + 48))(v31, 1, v25) == 1)
    {
      (*(v40 + 8))(v31, v26);
      v167 = 0;
      LODWORD(v169) = 1;
      v44 = v42;
      v45 = v43;
      v46 = v173;
LABEL_4:
      v47 = a2[3];
      v179 = v44;
      v180 = v46;
      v48 = v172;
      v181 = v45;
      v182 = v172;
      v168 = type metadata accessor for ItemJob();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v50 = sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
      v51 = *(v50 + 52);
      v52 = (*(v50 + 48) + 7) & 0x1FFFFFFF8;
      swift_allocObject();
      v53 = sub_1CF9E6D68();
      v179 = v44;
      v180 = v46;
      v181 = v45;
      v182 = v48;
      *v54 = type metadata accessor for Ingestion.FetchItemMetadata();
      v55 = sub_1CF045898(v53);
      v56 = *(*v47 + 312);
      v57 = v183;
      v58 = v177;
      v59 = v155;
      v60 = v176;
      v176 = *v47 + 312;
      AssociatedTypeWitness = v56;
      v61 = (v56)(v183, v55, v177, v178, v155);

      if (v60)
      {
        return result;
      }

      v166 = v61;
      v62 = sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
      v63 = *(v62 + 52);
      v64 = (*(v62 + 48) + 7) & 0x1FFFFFFF8;
      swift_allocObject();
      v65 = sub_1CF9E6D68();
      v66 = v48;
      v179 = v175;
      v180 = v173;
      v181 = v174;
      v182 = v48;
      *v67 = type metadata accessor for Ingestion.FetchContent();
      v68 = v178;
      v69 = sub_1CF045898(v65);
      v183 = (AssociatedTypeWitness)(v57, v69, v58, v68, v59);

      v165 = &v154;
      v179 = v166;
      MEMORY[0x1EEE9AC00](v119);
      v120 = v157;
      v121 = *(v157 + 624);
      v176 = *(v157 + 616);
      v177 = v121;
      *(&v154 - 10) = v176;
      *(&v154 - 9) = v121;
      v122 = v174;
      v123 = v173;
      *(&v154 - 8) = v175;
      *(&v154 - 7) = v123;
      AssociatedTypeWitness = *(v120 + 632);
      v124 = AssociatedTypeWitness;
      *(&v154 - 6) = v68;
      *(&v154 - 5) = v124;
      v125 = v66;
      v126 = *(v120 + 640);
      *(&v154 - 4) = v126;
      *(&v154 - 3) = v122;
      v127 = v158;
      *(&v154 - 2) = v125;
      *(&v154 - 1) = v127;
      v128 = sub_1CF9E6E58();
      WitnessTable = swift_getWitnessTable();
      v131 = sub_1CF054A5C(sub_1CF5E1540, (&v154 - 12), v128, &type metadata for NSecTimestamp, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v130);

      v132 = sub_1CF409C5C(v131);
      LODWORD(v168) = v133;

      v166 = &v154;
      v179 = v183;
      MEMORY[0x1EEE9AC00](v134);
      v135 = v177;
      *(&v154 - 10) = v176;
      *(&v154 - 9) = v135;
      v136 = v173;
      *(&v154 - 8) = v175;
      *(&v154 - 7) = v136;
      v138 = AssociatedTypeWitness;
      v137 = v172;
      *(&v154 - 6) = v178;
      *(&v154 - 5) = v138;
      *(&v154 - 4) = v126;
      *(&v154 - 3) = v122;
      *(&v154 - 2) = v137;
      *(&v154 - 1) = v127;
      v140 = sub_1CF054A5C(sub_1CF5DEE24, (&v154 - 12), v128, &type metadata for NSecTimestamp, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v139);

      v141 = sub_1CF409C5C(v140);
      v143 = v142;

      if (v169)
      {
        v144 = v170;
        if (v168)
        {
          if (v143)
          {
            v132 = v141;
          }

          else
          {
            v132 = 0;
          }

          v145 = 1;
          v146 = 1;
          v147 = v141;
          goto LABEL_39;
        }

        if (v143)
        {
          v146 = 0;
          v143 = 0;
          v145 = 1;
          v147 = v132;
          goto LABEL_39;
        }

        v147 = v132;
LABEL_59:
        v146 = 0;
        v143 = 0;
        if (v141 < v147)
        {
          v147 = v141;
        }

        v145 = 1;
        goto LABEL_39;
      }

      v144 = v170;
      if ((v168 & 1) == 0)
      {
        v146 = 0;
        if (v132 >= v167)
        {
          v132 = v167;
        }

        if (v141 >= v132)
        {
          v153 = v132;
        }

        else
        {
          v153 = v141;
        }

        if (v143)
        {
          v147 = v132;
        }

        else
        {
          v147 = v153;
        }

        v145 = 1;
        v143 = 0;
        goto LABEL_39;
      }

      v147 = v167;
      if ((v143 & 1) == 0)
      {
        v132 = v167;
        goto LABEL_59;
      }

      v146 = 0;
      v143 = 0;
      v145 = 1;
      v132 = v167;
LABEL_39:
      *v144 = v145;
      *(v144 + 8) = v132;
      *(v144 + 16) = v146;
      *(v144 + 24) = v147;
      *(v144 + 32) = v143 & 1;
      return result;
    }

    v154 = v41;
    v70 = v156;
    (*(v41 + 32))(v156, v31, v25);
    v45 = v43;
    v71 = type metadata accessor for ItemReconciliationHalf();
    if (v70[*(v71 + 64) + 16] == 2)
    {
      v72 = fpfs_current_or_default_log();
      v73 = v169;
      sub_1CF9E6128();
      v75 = v165;
      v74 = v166;
      v76 = AssociatedTypeWitness;
      v177 = v166[2];
      v177(v165, v183, AssociatedTypeWitness);
      v77 = sub_1CF9E6108();
      LODWORD(v178) = sub_1CF9E7298();
      v183 = v77;
      if (os_log_type_enabled(v77, v178))
      {
        v78 = swift_slowAlloc();
        v172 = v78;
        v173 = swift_slowAlloc();
        v179 = v173;
        *v78 = 136315138;
        v79 = v75;
        v80 = v164;
        v177(v164, v79, v76);
        v81 = v74[1];
        v81(v79, v76);
        v82 = *(swift_getAssociatedConformanceWitness() + 16);
        v83 = v25;
        v84 = sub_1CF9E7F98();
        v86 = v85;
        v81(v80, v76);
        v87 = sub_1CEFD0DF0(v84, v86, &v179);

        v88 = v172;
        *(v172 + 1) = v87;
        v25 = v83;
        v89 = v183;
        v90 = v88;
        _os_log_impl(&dword_1CEFC7000, v183, v178, "%s did not propagate: propagating is still in progress", v88, 0xCu);
        v91 = v173;
        __swift_destroy_boxed_opaque_existential_1(v173);
        MEMORY[0x1D386CDC0](v91, -1, -1);
        MEMORY[0x1D386CDC0](v90, -1, -1);

        (*(v167 + 8))(v169, v168);
      }

      else
      {
        (v74[1])(v75, v76);

        (*(v167 + 8))(v73, v168);
      }

      result = (*(v154 + 8))(v156, v25);
    }

    else
    {
      v92 = v71;
      v93 = v70;
      v94 = AssociatedTypeWitness;
      if (*&v70[*(v71 + 36)] && !sub_1CF07CD80(v25))
      {
        result = (*(v154 + 8))(v70, v25);
        v132 = 0;
        v147 = 0;
        v145 = 1;
LABEL_38:
        v146 = 1;
        v143 = 1;
        v144 = v170;
        goto LABEL_39;
      }

      if (sub_1CF07CD80(v25))
      {
        v95 = v25;
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        v96 = qword_1EDEABDE8;
        v97 = qword_1EDEABDE8 | 0x10;
        v98 = a2[4];
        if (sub_1CF056558() || (*&v96 & 0x10000) == 0)
        {
          v99 = v97;
        }

        else
        {
          v99 = v97 & 0xFFFFFFFFFFFEFFFFLL;
        }

        AssociatedTypeWitness = v99;
        if (sub_1CF056558())
        {
          v100 = (*&v93[*(v92 + 76)] & 4) != 0 && (*&v93[*(v92 + 76)] & 0x30) == 0;
        }

        else
        {
          v148 = &v93[*(v95 + 52)];
          v100 = (v148[*(type metadata accessor for ItemReconciliationHalf() + 76)] >> 2) & 1;
        }

        LODWORD(v169) = v100;
        v149 = v160;
        sub_1CF07EE34(v95, v160);
        v150 = v162;
        v151 = sub_1CF07F1A0(v162);
        (*(v161 + 8))(v149, v150);
        v179 = AssociatedTypeWitness;
        v152 = sub_1CF959458(&v179, (v151 | v169) & 1, v92);
        if (v152)
        {
          v167 = *&v93[*(v95 + 64) + 8];
        }

        else
        {
          v167 = 0;
        }

        v46 = v173;
        v44 = v175;
        LODWORD(v169) = !v152;
        (*(v154 + 8))(v93, v95);
        goto LABEL_4;
      }

      v178 = v25;
      v101 = fpfs_current_or_default_log();
      v102 = v163;
      sub_1CF9E6128();
      v103 = v94;
      v104 = v166;
      v105 = v159;
      v177 = v166[2];
      v177(v159, v183, v103);
      v106 = sub_1CF9E6108();
      v107 = sub_1CF9E7298();
      v183 = v106;
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        LODWORD(v172) = v107;
        v173 = v109;
        v179 = v109;
        *v108 = 136315138;
        v110 = v164;
        v177(v164, v105, v103);
        v111 = v104[1];
        v111(v105, v103);
        v112 = *(swift_getAssociatedConformanceWitness() + 16);
        v113 = sub_1CF9E7F98();
        v115 = v114;
        v111(v110, v103);
        v116 = sub_1CEFD0DF0(v113, v115, &v179);
        v93 = v156;

        *(v108 + 4) = v116;
        v117 = v183;
        _os_log_impl(&dword_1CEFC7000, v183, v172, "%s did not propagate: item is not bound", v108, 0xCu);
        v118 = v173;
        __swift_destroy_boxed_opaque_existential_1(v173);
        MEMORY[0x1D386CDC0](v118, -1, -1);
        MEMORY[0x1D386CDC0](v108, -1, -1);

        (*(v167 + 8))(v163, v168);
      }

      else
      {
        (v104[1])(v105, v103);

        (*(v167 + 8))(v102, v168);
      }

      result = (*(v154 + 8))(v93, v178);
    }

    v145 = 0;
    v132 = 0;
    v147 = 0;
    goto LABEL_38;
  }

  return result;
}

BOOL sub_1CF5C6A9C(uint64_t a1, uint64_t a2)
{
  v19[0] = type metadata accessor for UserRequest();
  v19[1] = &type metadata for NSecTimestamp;
  v19[2] = sub_1CF9E6448();
  v19[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v5 = *(TupleTypeMetadata - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  (*(v5 + 16))(v19 - v10, a1, TupleTypeMetadata);
  v12 = *(TupleTypeMetadata + 64);
  v13 = *(TupleTypeMetadata + 80);
  v14 = *(v11 + 1);
  *v9 = *v11;
  *(v9 + 1) = v14;
  v15 = sub_1CF9E6448();
  (*(*(v15 - 8) + 32))(&v9[v12], &v11[v12], v15);
  v16 = &v9[*(TupleTypeMetadata + 80)];
  v17 = swift_allocObject();
  *(v17 + 16) = *&v11[v13];
  *v16 = sub_1CF5E14E0;
  *(v16 + 1) = v17;
  (*(v5 + 8))(v9, TupleTypeMetadata);
  return v14 < a2;
}

uint64_t sub_1CF5C6CA0(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v77 = a2;
  v76 = a1;
  v82 = a5;
  v92 = type metadata accessor for UserRequest();
  v93 = &type metadata for NSecTimestamp;
  v83 = sub_1CF9E6448();
  v94 = v83;
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v13 = *(TupleTypeMetadata - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v75 = (&v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v15);
  v84 = (&v65 - v18);
  v65 = v19;
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v65 - v20;
  v81 = sub_1CF9E75D8();
  v21 = *(v81 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v81);
  v91 = (&v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v86 = &v65 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v80 = &v65 - v27;
  swift_beginAccess();
  v85 = (v13 + 16);
  v70 = (v13 + 32);
  v28 = *(a3 + 16);
  v89 = (v13 + 48);
  v90 = (v13 + 56);
  v78 = (v21 + 32);
  v66 = v13;
  v74 = (v13 + 8);

  v29 = 0;
  v79 = v28;
  v69 = a8;
  v68 = a7;
  v67 = a4;
  while (1)
  {
    v92 = v82;
    v93 = a4;
    v94 = a8;
    v95 = a7;
    v92 = type metadata accessor for UserRequest();
    v93 = &type metadata for NSecTimestamp;
    v94 = v83;
    v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
    swift_getTupleTypeMetadata();
    if (v29 == sub_1CF9E6DF8())
    {
      v88 = v29;
      v30 = 1;
      goto LABEL_8;
    }

    v31 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v31)
    {
      v32 = v28 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v29;
      v33 = v71;
      (*(v66 + 16))(v71, v32, TupleTypeMetadata);
    }

    else
    {
      result = sub_1CF9E7998();
      if (v65 != 8)
      {
        goto LABEL_16;
      }

      v92 = result;
      v33 = v71;
      (*v85)(v71, &v92, TupleTypeMetadata);
      swift_unknownObjectRelease();
    }

    result = (*v70)(v91, v33, TupleTypeMetadata);
    v35 = __OFADD__(v29, 1);
    v36 = v29 + 1;
    if (v35)
    {
      break;
    }

    v88 = v36;
    v30 = 0;
LABEL_8:
    v37 = v91;
    v38 = *v90;
    v39 = 1;
    (*v90)(v91, v30, 1, TupleTypeMetadata);
    v40 = *v89;
    if ((*v89)(v37, 1, TupleTypeMetadata) != 1)
    {
      v41 = *(TupleTypeMetadata + 64);
      v72 = *(TupleTypeMetadata + 80);
      v42 = v91;
      v43 = v91[1];
      *&v87 = *v91;
      v73 = v43;
      v44 = sub_1CF9E6448();
      v45 = *(*(v44 - 8) + 32);
      v46 = v84;
      v45(v84 + v41, &v42[v41], v44);
      v47 = swift_allocObject();
      *(v47 + 16) = *&v42[v72];
      v48 = *(TupleTypeMetadata + 64);
      v49 = v86;
      v50 = &v86[*(TupleTypeMetadata + 80)];
      v51 = v73;
      *v86 = v87;
      *(v49 + 1) = v51;
      v52 = v46 + v41;
      a7 = v68;
      v45(&v49[v48], v52, v44);
      a4 = v67;
      v39 = 0;
      *v50 = sub_1CF5E14E0;
      *(v50 + 1) = v47;
      a8 = v69;
    }

    v53 = v86;
    v38(v86, v39, 1, TupleTypeMetadata);
    v54 = v80;
    (*v78)(v80, v53, v81);
    if (v40(v54, 1, TupleTypeMetadata) == 1)
    {
    }

    v55 = *(TupleTypeMetadata + 64);
    v56 = *(TupleTypeMetadata + 80);
    v57 = v84;
    *v84 = *v54;
    v58 = sub_1CF9E6448();
    v59 = *(v58 - 8);
    v60 = *(v59 + 32);
    v87 = *&v54[v56];
    v60(&v57[v55], &v54[v55], v58);
    *&v57[v56] = v87;
    v61 = v75;
    (*v85)(v75, v57, TupleTypeMetadata);
    sub_1CF5DE5B8(*v61);
    v62 = *(TupleTypeMetadata + 64);
    v63 = v61 + *(TupleTypeMetadata + 80);
    v64 = *(v63 + 1);
    (*v63)(v76, v77);

    (*v74)(v57, TupleTypeMetadata);
    (*(v59 + 8))(v61 + v62, v58);
    v28 = v79;
    v29 = v88;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1CF5C73D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v127 = a4;
  v126 = a3;
  v125 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v112 = v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v123 = v109 - v17;
  v121 = sub_1CF9E6118();
  v18 = *(v121 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v21 = v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = a6;
  v151 = a6;
  v152 = a5;
  v137 = a5;
  v143 = a9;
  v153 = a9;
  v154 = a8;
  v138 = a8;
  v151 = type metadata accessor for UserRequest();
  v152 = &type metadata for NSecTimestamp;
  v133 = sub_1CF9E6448();
  v153 = v133;
  v154 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v23 = *(TupleTypeMetadata - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v140 = v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v142 = v109 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = v109 - v30;
  v109[0] = v32;
  MEMORY[0x1EEE9AC00](v29);
  v115 = v109 - v33;
  v132 = sub_1CF9E75D8();
  v34 = *(v132 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v132);
  v147 = (v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = MEMORY[0x1EEE9AC00](v36);
  v139 = v109 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v131 = v109 - v40;
  swift_beginAccess();
  v111 = v31 + 8;
  v155 = (v23 + 16);
  v41 = *(a2 + 16);
  v114 = (v23 + 32);
  v145 = (v23 + 48);
  v146 = (v23 + 56);
  v129 = (v34 + 32);
  v122 = (v13 + 16);
  v113 = v23;
  v135 = (v23 + 8);
  v120 = (v13 + 8);
  v119 = (v18 + 8);

  v42 = 0;
  *&v43 = 136315394;
  v110 = v43;
  v128 = v21;
  v130 = v41;
  v136 = v31;
  while (1)
  {
    v151 = v144;
    v152 = v137;
    v153 = v143;
    v154 = v138;
    v151 = type metadata accessor for UserRequest();
    v152 = &type metadata for NSecTimestamp;
    v153 = v133;
    v154 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
    swift_getTupleTypeMetadata();
    if (v42 == sub_1CF9E6DF8())
    {
      v141 = v42;
      v51 = 1;
      v52 = v140;
      goto LABEL_10;
    }

    v53 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    v52 = v140;
    if (v53)
    {
      v54 = v115;
      (*(v113 + 16))(v115, v41 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v42, TupleTypeMetadata);
    }

    else
    {
      result = sub_1CF9E7998();
      if (v109[0] != 8)
      {
        goto LABEL_19;
      }

      v151 = result;
      v54 = v115;
      (*v155)(v115, &v151, TupleTypeMetadata);
      swift_unknownObjectRelease();
    }

    result = (*v114)(v147, v54, TupleTypeMetadata);
    v56 = __OFADD__(v42, 1);
    v57 = v42 + 1;
    if (v56)
    {
      break;
    }

    v141 = v57;
    v51 = 0;
LABEL_10:
    v58 = v147;
    v59 = *v146;
    v60 = 1;
    (*v146)(v147, v51, 1, TupleTypeMetadata);
    v61 = *v145;
    if ((*v145)(v58, 1, TupleTypeMetadata) != 1)
    {
      v62 = *(TupleTypeMetadata + 64);
      v134 = *(TupleTypeMetadata + 80);
      v150 = v61;
      v63 = v147;
      v64 = v147[1];
      v149 = *v147;
      *&v148 = v64;
      v65 = sub_1CF9E6448();
      v66 = *(*(v65 - 8) + 32);
      v67 = v136;
      v66(v136 + v62, &v63[v62], v65);
      v68 = swift_allocObject();
      *(v68 + 16) = *&v63[v134];
      v69 = *(TupleTypeMetadata + 64);
      v70 = v139;
      v71 = &v139[*(TupleTypeMetadata + 80)];
      v72 = v148;
      *v139 = v149;
      *(v70 + 1) = v72;
      v73 = v67 + v62;
      v52 = v140;
      v66(&v70[v69], v73, v65);
      v21 = v128;
      v60 = 0;
      *v71 = sub_1CF5E14E0;
      v71[1] = v68;
      v61 = v150;
    }

    v74 = v139;
    v59(v139, v60, 1, TupleTypeMetadata);
    v75 = v131;
    (*v129)(v131, v74, v132);
    if (v61(v75, 1, TupleTypeMetadata) == 1)
    {
    }

    v76 = *(TupleTypeMetadata + 64);
    v77 = *(TupleTypeMetadata + 80);
    v78 = v142;
    *v142 = *v75;
    v79 = sub_1CF9E6448();
    v149 = *(v79 - 8);
    v150 = v79;
    v80 = *(v149 + 32);
    v148 = *&v75[v77];
    v80(&v78[v76], &v75[v76]);
    *&v78[v77] = v148;
    v81 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v82 = *v122;
    v83 = v123;
    v84 = AssociatedTypeWitness;
    (*v122)(v123, v126, AssociatedTypeWitness);
    *&v148 = *v155;
    (v148)(v52, v78, TupleTypeMetadata);
    v85 = sub_1CF9E6108();
    v86 = sub_1CF9E7288();
    LODWORD(v134) = v86;
    v87 = os_log_type_enabled(v85, v86);
    v88 = v135 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v87)
    {
      v89 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v151 = v117;
      *v89 = v110;
      v116 = v85;
      v90 = v112;
      v82(v112, v83, v84);
      v91 = *v120;
      (*v120)(v83, v84);
      v92 = *(swift_getAssociatedConformanceWitness() + 16);
      v93 = sub_1CF9E7F98();
      v118 = v88;
      v94 = v52;
      v95 = v93;
      v97 = v96;
      v91(v90, v84);
      v98 = sub_1CEFD0DF0(v95, v97, &v151);

      *(v89 + 4) = v98;
      *(v89 + 12) = 2080;
      v45 = v136;
      (v148)(v136, v94, TupleTypeMetadata);
      v99 = *v45;
      v100 = *(TupleTypeMetadata + 64);
      v101 = *&v111[*(TupleTypeMetadata + 80)];

      (*(v149 + 8))(v45 + v100, v150);
      v44 = *v135;
      (*v135)(v94, TupleTypeMetadata);
      v102 = sub_1CF665B0C(v99, v144, v137, v143, v138);
      v104 = v103;
      sub_1CF5DE5B8(v99);
      v105 = sub_1CEFD0DF0(v102, v104, &v151);

      *(v89 + 14) = v105;
      v106 = v116;
      _os_log_impl(&dword_1CEFC7000, v116, v134, "propagation <fp:%s reason:%s> completed and flushed", v89, 0x16u);
      v107 = v117;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v107, -1, -1);
      v108 = v89;
      v21 = v128;
      MEMORY[0x1D386CDC0](v108, -1, -1);

      (*v119)(v21, v121);
    }

    else
    {
      v44 = *v135;
      (*v135)(v52, TupleTypeMetadata);
      (*v120)(v83, v84);

      (*v119)(v21, v121);
      v45 = v136;
    }

    v46 = v142;
    (v148)(v45, v142, TupleTypeMetadata);
    sub_1CF5DE5B8(*v45);
    v47 = *(TupleTypeMetadata + 64);
    v48 = v45 + *(TupleTypeMetadata + 80);
    v50 = *v48;
    v49 = *(v48 + 1);
    sub_1CF1A91AC(v125, &v151);
    v50(&v151, v127);

    sub_1CEFCCC44(&v151, &unk_1EC4C1B30, &qword_1CFA05300);
    v44(v46, TupleTypeMetadata);
    (*(v149 + 8))(v45 + v47, v150);
    v41 = v130;
    v42 = v141;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1CF5C8094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = *(a2 + 8);
  v28 = a3;
  v26 = *(a2 + 16);
  v25 = *(a2 + 24);
  v4 = *(a2 + 32);
  v28 = type metadata accessor for UserRequest();
  v29 = &type metadata for NSecTimestamp;
  v30 = sub_1CF9E6448();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v6 = *(TupleTypeMetadata - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  (*(v6 + 16))(&v24 - v11, a1, TupleTypeMetadata);
  v13 = *(TupleTypeMetadata + 64);
  v14 = *(TupleTypeMetadata + 80);
  v15 = *v12;
  v16 = *(v12 + 1);
  *v10 = *v12;
  *(v10 + 1) = v16;
  v17 = sub_1CF9E6448();
  (*(*(v17 - 8) + 32))(&v10[v13], &v12[v13], v17);
  v18 = &v10[*(TupleTypeMetadata + 80)];
  v19 = swift_allocObject();
  *(v19 + 16) = *&v12[v14];
  *v18 = sub_1CF5E14E0;
  *(v18 + 1) = v19;
  v20 = v27;
  if (((v15 >> 58) & 0x3C | (v15 >> 1) & 3) == 0x2A)
  {
    v20 = v25;
  }

  v21 = v26;
  if (((v15 >> 58) & 0x3C | (v15 >> 1) & 3) == 0x2A)
  {
    v21 = v4;
  }

  v22 = v21 | (v16 < v20);
  (*(v6 + 8))(v10, TupleTypeMetadata);
  return v22 & 1;
}

uint64_t sub_1CF5C82DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ValueMetadata *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v77 = a2;
  v76 = a1;
  v82 = a5;
  v92 = type metadata accessor for UserRequest();
  v93 = &type metadata for NSecTimestamp;
  v83 = sub_1CF9E6448();
  v94 = v83;
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v13 = *(TupleTypeMetadata - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v75 = (&v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v15);
  v84 = (&v65 - v18);
  v65 = v19;
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v65 - v20;
  v81 = sub_1CF9E75D8();
  v21 = *(v81 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v81);
  v91 = (&v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v86 = &v65 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v80 = &v65 - v27;
  swift_beginAccess();
  v85 = (v13 + 16);
  v70 = (v13 + 32);
  v28 = *(a3 + 16);
  v89 = (v13 + 48);
  v90 = (v13 + 56);
  v78 = (v21 + 32);
  v66 = v13;
  v74 = (v13 + 8);

  v29 = 0;
  v79 = v28;
  v69 = a8;
  v68 = a7;
  v67 = a4;
  while (1)
  {
    v92 = a4;
    v93 = v82;
    v94 = a7;
    v95 = a8;
    v92 = type metadata accessor for UserRequest();
    v93 = &type metadata for NSecTimestamp;
    v94 = v83;
    v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
    swift_getTupleTypeMetadata();
    if (v29 == sub_1CF9E6DF8())
    {
      v88 = v29;
      v30 = 1;
      goto LABEL_8;
    }

    v31 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v31)
    {
      v32 = v28 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v29;
      v33 = v71;
      (*(v66 + 16))(v71, v32, TupleTypeMetadata);
    }

    else
    {
      result = sub_1CF9E7998();
      if (v65 != 8)
      {
        goto LABEL_16;
      }

      v92 = result;
      v33 = v71;
      (*v85)(v71, &v92, TupleTypeMetadata);
      swift_unknownObjectRelease();
    }

    result = (*v70)(v91, v33, TupleTypeMetadata);
    v35 = __OFADD__(v29, 1);
    v36 = v29 + 1;
    if (v35)
    {
      break;
    }

    v88 = v36;
    v30 = 0;
LABEL_8:
    v37 = v91;
    v38 = *v90;
    v39 = 1;
    (*v90)(v91, v30, 1, TupleTypeMetadata);
    v40 = *v89;
    if ((*v89)(v37, 1, TupleTypeMetadata) != 1)
    {
      v41 = *(TupleTypeMetadata + 64);
      v72 = *(TupleTypeMetadata + 80);
      v42 = v91;
      v43 = v91[1];
      *&v87 = *v91;
      v73 = v43;
      v44 = sub_1CF9E6448();
      v45 = *(*(v44 - 8) + 32);
      v46 = v84;
      v45(v84 + v41, &v42[v41], v44);
      v47 = swift_allocObject();
      *(v47 + 16) = *&v42[v72];
      v48 = *(TupleTypeMetadata + 64);
      v49 = v86;
      v50 = &v86[*(TupleTypeMetadata + 80)];
      v51 = v73;
      *v86 = v87;
      *(v49 + 1) = v51;
      v52 = v46 + v41;
      a7 = v68;
      v45(&v49[v48], v52, v44);
      a4 = v67;
      v39 = 0;
      *v50 = sub_1CF5E14E0;
      *(v50 + 1) = v47;
      a8 = v69;
    }

    v53 = v86;
    v38(v86, v39, 1, TupleTypeMetadata);
    v54 = v80;
    (*v78)(v80, v53, v81);
    if (v40(v54, 1, TupleTypeMetadata) == 1)
    {
    }

    v55 = *(TupleTypeMetadata + 64);
    v56 = *(TupleTypeMetadata + 80);
    v57 = v84;
    *v84 = *v54;
    v58 = sub_1CF9E6448();
    v59 = *(v58 - 8);
    v60 = *(v59 + 32);
    v87 = *&v54[v56];
    v60(&v57[v55], &v54[v55], v58);
    *&v57[v56] = v87;
    v61 = v75;
    (*v85)(v75, v57, TupleTypeMetadata);
    sub_1CF5DE5B8(*v61);
    v62 = *(TupleTypeMetadata + 64);
    v63 = v61 + *(TupleTypeMetadata + 80);
    v64 = *(v63 + 1);
    (*v63)(v76, v77);

    (*v74)(v57, TupleTypeMetadata);
    (*(v59 + 8))(v61 + v62, v58);
    v28 = v79;
    v29 = v88;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1CF5C8A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v122 = a4;
  v121 = a3;
  v120 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v111 = v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v119 = v108 - v18;
  v118 = sub_1CF9E6118();
  v19 = *(v118 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v130 = v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = a5;
  v148 = a5;
  v149 = a6;
  v134 = a6;
  v141 = a8;
  v150 = a8;
  v151 = a9;
  v133 = a9;
  v148 = type metadata accessor for UserRequest();
  v149 = &type metadata for NSecTimestamp;
  v127 = sub_1CF9E6448();
  v150 = v127;
  v151 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v23 = *(TupleTypeMetadata - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v27 = v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v139 = v108 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = v108 - v31;
  v131 = (v108 - v31);
  v108[0] = v33;
  MEMORY[0x1EEE9AC00](v30);
  v114 = v108 - v34;
  v126 = sub_1CF9E75D8();
  v35 = *(v126 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v126);
  v144 = (v108 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = MEMORY[0x1EEE9AC00](v37);
  v135 = v108 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v125 = v108 - v41;
  swift_beginAccess();
  v110 = v32 + 8;
  v152 = (v23 + 16);
  v42 = *(a2 + 16);
  v113 = (v23 + 32);
  v142 = (v23 + 48);
  v143 = (v23 + 56);
  v123 = (v35 + 32);
  v136 = (v14 + 16);
  v112 = v23;
  v129 = (v23 + 8);
  v43 = v42;
  v117 = (v14 + 8);
  v116 = (v19 + 8);

  v44 = 0;
  *&v45 = 136315394;
  v109 = v45;
  v132 = AssociatedTypeWitness;
  v147 = v27;
  v124 = v43;
  while (1)
  {
    v148 = v140;
    v149 = v134;
    v150 = v141;
    v151 = v133;
    v148 = type metadata accessor for UserRequest();
    v149 = &type metadata for NSecTimestamp;
    v150 = v127;
    v151 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
    swift_getTupleTypeMetadata();
    if (v44 == sub_1CF9E6DF8())
    {
      v138 = v44;
      v53 = 1;
      v54 = v136;
      goto LABEL_10;
    }

    v55 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    v54 = v136;
    if (v55)
    {
      v56 = v114;
      (*(v112 + 16))(v114, v43 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v44, TupleTypeMetadata);
    }

    else
    {
      result = sub_1CF9E7998();
      if (v108[0] != 8)
      {
        goto LABEL_19;
      }

      v148 = result;
      v56 = v114;
      (*v152)(v114, &v148, TupleTypeMetadata);
      swift_unknownObjectRelease();
    }

    result = (*v113)(v144, v56, TupleTypeMetadata);
    v58 = __OFADD__(v44, 1);
    v59 = v44 + 1;
    if (v58)
    {
      break;
    }

    v138 = v59;
    v53 = 0;
LABEL_10:
    v60 = v144;
    v61 = *v143;
    v62 = 1;
    (*v143)(v144, v53, 1, TupleTypeMetadata);
    v63 = *v142;
    if ((*v142)(v60, 1, TupleTypeMetadata) != 1)
    {
      v64 = *(TupleTypeMetadata + 64);
      v128 = *(TupleTypeMetadata + 80);
      v146 = v63;
      v65 = v144;
      v66 = v144[1];
      *&v145 = *v144;
      v137 = v66;
      v67 = sub_1CF9E6448();
      v68 = *(*(v67 - 8) + 32);
      v69 = v131;
      v68(v131 + v64, &v65[v64], v67);
      v70 = swift_allocObject();
      *(v70 + 16) = *&v65[v128];
      v71 = *(TupleTypeMetadata + 64);
      v72 = v135;
      v73 = &v135[*(TupleTypeMetadata + 80)];
      v74 = v137;
      *v135 = v145;
      *(v72 + 1) = v74;
      v75 = v69 + v64;
      v54 = v136;
      v68(&v72[v71], v75, v67);
      AssociatedTypeWitness = v132;
      v62 = 0;
      *v73 = sub_1CF5E14E0;
      v73[1] = v70;
      v63 = v146;
    }

    v76 = v135;
    v61(v135, v62, 1, TupleTypeMetadata);
    v77 = v125;
    (*v123)(v125, v76, v126);
    if (v63(v77, 1, TupleTypeMetadata) == 1)
    {
    }

    v78 = *(TupleTypeMetadata + 64);
    v79 = *(TupleTypeMetadata + 80);
    v80 = v139;
    *v139 = *v77;
    v81 = sub_1CF9E6448();
    v82 = *(v81 - 8);
    v83 = *(v82 + 32);
    v145 = *&v77[v79];
    v146 = v81;
    v83(&v80[v78], &v77[v78]);
    *&v80[v79] = v145;
    v84 = fpfs_current_or_default_log();
    v85 = v130;
    sub_1CF9E6128();
    v86 = *v54;
    v87 = v119;
    (*v54)(v119, v121, AssociatedTypeWitness);
    *&v145 = *v152;
    (v145)(v147, v80, TupleTypeMetadata);
    v88 = sub_1CF9E6108();
    v89 = sub_1CF9E7288();
    LODWORD(v128) = v89;
    v90 = os_log_type_enabled(v88, v89);
    v137 = v129 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v90)
    {
      v91 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v148 = v115;
      *v91 = v109;
      v92 = v111;
      v86(v111, v87, AssociatedTypeWitness);
      v93 = *v117;
      (*v117)(v87, AssociatedTypeWitness);
      v94 = *(swift_getAssociatedConformanceWitness() + 16);
      v95 = sub_1CF9E7F98();
      v97 = v96;
      v93(v92, v132);
      v98 = sub_1CEFD0DF0(v95, v97, &v148);

      *(v91 + 4) = v98;
      *(v91 + 12) = 2080;
      v47 = v131;
      (v145)(v131, v147, TupleTypeMetadata);
      v99 = *v47;
      v100 = *(TupleTypeMetadata + 64);
      v101 = *&v110[*(TupleTypeMetadata + 80)];

      (*(v82 + 8))(v47 + v100, v146);
      v46 = *v129;
      (*v129)(v147, TupleTypeMetadata);
      v102 = sub_1CF665B0C(v99, v140, v134, v141, v133);
      v104 = v103;
      sub_1CF5DE5B8(v99);
      v105 = v102;
      AssociatedTypeWitness = v132;
      v106 = sub_1CEFD0DF0(v105, v104, &v148);

      *(v91 + 14) = v106;
      _os_log_impl(&dword_1CEFC7000, v88, v128, "propagation <fs:%s reason:%s> completed and flushed", v91, 0x16u);
      v107 = v115;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v107, -1, -1);
      MEMORY[0x1D386CDC0](v91, -1, -1);

      (*v116)(v130, v118);
    }

    else
    {
      v46 = *v129;
      (*v129)(v147, TupleTypeMetadata);
      (*v117)(v87, AssociatedTypeWitness);

      (*v116)(v85, v118);
      v47 = v131;
    }

    v48 = v139;
    (v145)(v47, v139, TupleTypeMetadata);
    sub_1CF5DE5B8(*v47);
    v49 = *(TupleTypeMetadata + 64);
    v50 = v47 + *(TupleTypeMetadata + 80);
    v52 = *v50;
    v51 = *(v50 + 1);
    sub_1CF1A91AC(v120, &v148);
    v52(&v148, v122);

    sub_1CEFCCC44(&v148, &unk_1EC4C1B30, &qword_1CFA05300);
    v46(v48, TupleTypeMetadata);
    (*(v82 + 8))(v47 + v49, v146);
    v43 = v124;
    v44 = v138;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_1CF5C96FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char *a6, uint64_t (*a7)(void **, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v182 = a7;
  v204 = a6;
  v196 = a5;
  v197 = a4;
  v198 = a2;
  v195 = a1;
  v206 = *v14;
  v17 = v206;
  v178 = sub_1CF9E63A8();
  v177 = *(v178 - 8);
  v18 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v175 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1CF9E6448();
  v174 = *(v176 - 8);
  v20 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v173 = &v164 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v17[79];
  v208 = v14;
  v23 = v17[77];
  v199 = v22;
  v202 = v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v207 = *(AssociatedTypeWitness - 1);
  v24 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v193 = &v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v194 = &v164 - v26;
  v181 = sub_1CF9E6118();
  v180 = *(v181 - 8);
  v27 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v29 = (&v164 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v164 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v205 = (&v164 - v34);
  v201 = a13;
  v35 = *(a13 + 8);
  v214 = a12;
  v215 = v35;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  v37 = *(*(a12 - 8) + 16);
  v200 = a12;
  v37(boxed_opaque_existential_0, a9, a12);
  v38 = v210;
  v203 = v182(&aBlock, a3);
  v40 = v39;
  v42 = v41;
  v44 = v43;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (!v38)
  {
    v169 = v32;
    v210 = v44;
    v190 = a9;
    v188 = v29;
    v166 = v42;
    v167 = v40;
    v191 = v24;
    v168 = a8;
    v172 = 0;
    v179 = a11;
    v171 = a10;
    v45 = [objc_allocWithZone(FPLoggerScope) init];
    v46 = fpfs_current_or_default_log();
    v47 = v205;
    sub_1CF9E6128();
    v48 = v197;
    sub_1CEFD09A0(v197);
    v49 = v203;

    sub_1CEFD09A0(v48);

    v50 = v45;
    v51 = v198;

    v52 = sub_1CF9E6108();
    v53 = sub_1CF9E7298();

    v54 = os_log_type_enabled(v52, v53);
    v170 = v50;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v189 = v56;
      v192 = swift_slowAlloc();
      aBlock = v192;
      *v55 = 138413314;
      v57 = [v50 enter];
      *(v55 + 4) = v57;
      *v56 = v57;
      *(v55 + 12) = 2082;
      *(v55 + 14) = sub_1CEFD0DF0(v195, v51, &aBlock);
      *(v55 + 22) = 2080;
      v58 = sub_1CF9E6F58();
      v60 = sub_1CEFD0DF0(v58, v59, &aBlock);

      *(v55 + 24) = v60;
      *(v55 + 32) = 2080;
      v61 = v206;
      v62 = sub_1CF665B0C(v48, v202, v206[78], v199, v206[80]);
      v64 = v63;
      sub_1CF5DE5B8(v48);
      sub_1CF5DE5B8(v48);
      v65 = sub_1CEFD0DF0(v62, v64, &aBlock);

      *(v55 + 34) = v65;
      *(v55 + 42) = 2080;
      v66 = MEMORY[0x1D3868FE0](v203, AssociatedTypeWitness);
      v68 = v67;
      swift_bridgeObjectRelease_n();
      v69 = sub_1CEFD0DF0(v66, v68, &aBlock);
      v49 = v203;

      *(v55 + 44) = v69;
      _os_log_impl(&dword_1CEFC7000, v52, v53, "%@ 🚧  waiting for %{public}s prior to %s for %s: %s", v55, 0x34u);
      v70 = v189;
      sub_1CEFCCC44(v189, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v70, -1, -1);
      v71 = v192;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v71, -1, -1);
      MEMORY[0x1D386CDC0](v55, -1, -1);

      v185 = *(v180 + 8);
      v185(v47, v181);
      v72 = v200;
    }

    else
    {

      sub_1CF5DE5B8(v48);

      sub_1CF5DE5B8(v48);

      v185 = *(v180 + 8);
      v185(v47, v181);
      v72 = v200;
      v61 = v206;
    }

    v73 = v210;
    v74 = swift_allocObject();
    *(v74 + 16) = 0;
    v75 = swift_allocObject();
    v206 = &v164;
    v76 = v171;
    v75[2] = v74;
    v75[3] = v76;
    v192 = v75;
    v75[4] = v179;
    v217 = v49;
    MEMORY[0x1EEE9AC00](v75);
    v205 = &v164 - 10;
    v77 = v61[78];
    v78 = v201;
    *(&v164 - 8) = v202;
    *(&v164 - 7) = v77;
    v79 = v199;
    *(&v164 - 6) = v72;
    *(&v164 - 5) = v79;
    v80 = v61[80];
    *(&v164 - 4) = v80;
    *(&v164 - 3) = v78;
    *(&v164 - 2) = v73;
    v81 = AssociatedTypeWitness;
    v189 = sub_1CF9E6E58();
    v82 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v84 = swift_getAssociatedConformanceWitness();

    aBlock = v81;
    v212 = v82;
    v213 = AssociatedConformanceWitness;
    v214 = v84;
    type metadata accessor for ThrottlingKey();
    sub_1CF9E6E58();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v85 = v172;
    v86 = sub_1CF9E6BD8();

    v87 = v208[3];
    aBlock = v202;
    v212 = v77;
    v213 = v79;
    v214 = v80;
    type metadata accessor for SQLJobRegistry();
    v88 = *(*(swift_dynamicCastClassUnconditional() + 16) + 56);

    sub_1CF3302CC(v86, v190, v200, v201);
    if (v85)
    {

      v89 = fpfs_current_or_default_log();
      v90 = v188;
      sub_1CF9E6128();
      v91 = v170;
      v92 = sub_1CF9E6108();
      v93 = sub_1CF9E7298();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v94 = 138412290;
        v96 = [v91 leave];
        *(v94 + 4) = v96;
        *v95 = v96;
        _os_log_impl(&dword_1CEFC7000, v92, v93, "%@", v94, 0xCu);
        sub_1CEFCCC44(v95, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v95, -1, -1);
        MEMORY[0x1D386CDC0](v94, -1, -1);
      }

      v185(v90, v181);
    }

    else
    {
      v165 = v74;
      v172 = 0;

      v188 = dispatch_group_create();
      v187 = v77;
      v186 = v80;
      if (v204)
      {
        v97 = sub_1CF9E57E8();
      }

      else
      {
        v97 = 0;
      }

      v98 = v196;
      v99 = AssociatedTypeWitness;
      v100 = v207;
      v101 = v191;
      v102 = v194;
      v103 = v203;
      v190 = swift_allocObject();
      *(v190 + 16) = v97;
      v189 = swift_allocObject();
      *(v189 + 16) = 0;
      if (sub_1CF9E6DF8())
      {
        v104 = 0;
        v206 = (v100 + 16);
        v185 = (v101 + 7);
        v184 = v100 + 32;
        v183 = v100 + 8;
        while (1)
        {
          v105 = sub_1CF9E6DC8();
          sub_1CF9E6D78();
          if (v105)
          {
            v106 = *(v100 + 16);
            v107 = v102;
            v106(v102, (v103 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v104), v99);
            v108 = v195;
          }

          else
          {
            v131 = sub_1CF9E7998();
            v132 = v195;
            if (v101 != 8)
            {
              goto LABEL_26;
            }

            v107 = v102;
            aBlock = v131;
            v106 = *v206;
            (*v206)(v102, &aBlock, v99);
            swift_unknownObjectRelease();
            v108 = v132;
          }

          v109 = v104 + 1;
          v110 = v193;
          if (__OFADD__(v104, 1))
          {
            break;
          }

          v205 = v104;
          v111 = v188;
          v204 = v109;
          dispatch_group_enter(v188);
          v112 = swift_allocObject();
          v210 = v112;
          swift_weakInit();
          v106(v110, v107, v99);
          v113 = (*(v100 + 80) + 96) & ~*(v100 + 80);
          v114 = (v185 + v113) & 0xFFFFFFFFFFFFFFF8;
          v115 = (v114 + 15) & 0xFFFFFFFFFFFFFFF8;
          v116 = (v115 + 15) & 0xFFFFFFFFFFFFFFF8;
          v117 = swift_allocObject();
          v118 = v110;
          v119 = v117;
          v120 = v187;
          *(v117 + 2) = v202;
          *(v117 + 3) = v120;
          v121 = v199;
          *(v117 + 4) = v200;
          *(v117 + 5) = v121;
          v122 = v201;
          *(v117 + 6) = v186;
          *(v117 + 7) = v122;
          *(v117 + 8) = v111;
          *(v117 + 9) = v112;
          *(v117 + 10) = v108;
          *(v117 + 11) = v198;
          (*(v207 + 32))(&v117[v113], v118, AssociatedTypeWitness);
          v123 = v197;
          *(v119 + v114) = v197;
          *(v119 + v115) = v190;
          v124 = (v119 + v116);
          v125 = v207;
          v126 = v192;
          *v124 = sub_1CF5E153C;
          v124[1] = v126;
          *(v119 + ((v116 + 23) & 0xFFFFFFFFFFFFFFF8)) = v189;
          v127 = v194;
          sub_1CEFD09A0(v123);
          v128 = v196;

          v129 = v111;
          v130 = v205;

          v100 = v125;

          v99 = AssociatedTypeWitness;

          v98 = v128;
          sub_1CF5978E4(v127, v123, v128, sub_1CF5E02A4, v119);

          v102 = v127;
          (*(v125 + 8))(v127, v99);
          v103 = v203;
          v101 = v191;

          v104 = (v130 + 1);
          if (v204 == sub_1CF9E6DF8())
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
      }

      else
      {
LABEL_21:

        v133 = v208;
        v210 = v208[8];
        v134 = swift_allocObject();
        v135 = v201;
        *(v134 + 16) = v200;
        *(v134 + 24) = v135;
        *(v134 + 32) = v165;
        *(v134 + 40) = v133;
        *(v134 + 48) = v167;
        *(v134 + 56) = v166 & 1;
        v136 = v198;
        *(v134 + 64) = v195;
        *(v134 + 72) = v136;
        v137 = v197;
        *(v134 + 80) = v197;
        *(v134 + 88) = v98;
        v138 = v182;
        *(v134 + 96) = v190;
        *(v134 + 104) = v138;
        v139 = v171;
        *(v134 + 112) = v168;
        *(v134 + 120) = v139;
        v140 = v189;
        *(v134 + 128) = v179;
        *(v134 + 136) = v140;
        sub_1CEFD09A0(v137);

        v141 = v210;

        v142 = fpfs_current_log();
        v210 = fpfs_adopt_log();
        v143 = swift_allocObject();
        aBlock = sub_1CF9E73C8();
        v212 = v144;
        MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
        v145 = sub_1CF9E7988();
        MEMORY[0x1D3868CC0](v145);

        sub_1CF9E6978();

        v146 = __fp_log_fork();

        *(v143 + 16) = v146;
        v147 = swift_allocObject();
        *(v147 + 16) = v142;
        *(v147 + 24) = v143;
        v208 = v143;
        *(v147 + 32) = v141;
        *(v147 + 40) = "waitForPropagation(for:startingRowID:request:barrierTimestamp:previousError:jobs:with:completionHandler:)";
        *(v147 + 48) = 105;
        *(v147 + 56) = 2;
        *(v147 + 64) = sub_1CF5E03CC;
        *(v147 + 72) = v134;
        v215 = sub_1CF2B9F54;
        v216 = v147;
        aBlock = MEMORY[0x1E69E9820];
        v212 = 1107296256;
        v213 = sub_1CEFCA444;
        v214 = &block_descriptor_470;
        v148 = _Block_copy(&aBlock);
        v149 = v141;
        AssociatedTypeWitness = v142;

        v150 = v173;
        sub_1CF9E63F8();
        v217 = MEMORY[0x1E69E7CC0];
        sub_1CF5DFB70(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
        sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
        v151 = v175;
        v152 = v178;
        sub_1CF9E77B8();
        v153 = v188;
        sub_1CF9E7308();
        _Block_release(v148);
        (*(v177 + 8))(v151, v152);
        (*(v174 + 8))(v150, v176);

        v154 = v210;
        v155 = fpfs_adopt_log();

        v156 = fpfs_current_or_default_log();
        v157 = v169;
        sub_1CF9E6128();
        v158 = v170;
        v159 = sub_1CF9E6108();
        v160 = sub_1CF9E7298();

        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          *v161 = 138412290;
          v163 = [v158 leave];
          *(v161 + 4) = v163;
          *v162 = v163;
          _os_log_impl(&dword_1CEFC7000, v159, v160, "%@", v161, 0xCu);
          sub_1CEFCCC44(v162, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v162, -1, -1);
          MEMORY[0x1D386CDC0](v161, -1, -1);
        }

        (*(v180 + 8))(v157, v181);
      }
    }
  }
}

uint64_t sub_1CF5CAB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v27 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE230, qword_1CF9FCE30);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ThrottlingKey();
  v11 = sub_1CEFCCCEC(qword_1EC4C1C30, &qword_1EC4BE230, qword_1CF9FCE30);
  result = sub_1CF054A5C(sub_1CF5E0490, v15, v9, v10, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  *a9 = result;
  return result;
}

uint64_t sub_1CF5CAD18@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID();
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, a2, AssociatedTypeWitness);
  result = swift_storeEnumTagMultiPayload();
  *(a3 + v4) = v7;
  return result;
}

void sub_1CF5CAE80(uint64_t a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v135 = a6;
  v136 = a8;
  v134 = a7;
  v137 = a3;
  v123 = a1;
  v128 = a17;
  v126 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = sub_1CF9E75D8();
  v118 = *(v20 - 8);
  v119 = v20;
  v21 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v122 = &v107 - v22;
  v121 = *(AssociatedTypeWitness - 8);
  v23 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v120 = &v107 - v25;
  v26 = sub_1CF9E64A8();
  v132 = *(v26 - 8);
  v133 = v26;
  v27 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = a16;
  v125 = a13;
  v30 = swift_getAssociatedTypeWitness();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v124 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v107 - v35;
  v37 = sub_1CF9E6118();
  v130 = *(v37 - 8);
  v131 = v37;
  v38 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v107 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  if (!a2)
  {

    swift_beginAccess();
    *(a12 + 16) = 1;
    goto LABEL_10;
  }

  v113 = a5;
  v116 = v29;
  v129 = Strong;
  v42 = a2;
  v43 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v115 = v31;
  v111 = *(v31 + 16);
  v111(v36, v134, v30);
  v44 = v136;
  sub_1CEFD09A0(v136);
  v45 = a2;
  sub_1CEFD09A0(v44);

  v46 = sub_1CF9E6108();
  v47 = sub_1CF9E72C8();

  v117 = a2;

  v112 = v47;
  v114 = v46;
  v48 = os_log_type_enabled(v46, v47);
  v110 = AssociatedTypeWitness;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v146[0] = v109;
    *v49 = 136446978;
    *(v49 + 4) = sub_1CEFD0DF0(v113, v135, v146);
    *(v49 + 12) = 2080;
    v50 = v124;
    v111(v124, v36, v30);
    v51 = *(v115 + 8);
    v51(v36, v30);
    v52 = v127;
    v135 = v40;
    v53 = v125;
    v54 = *(swift_getAssociatedConformanceWitness() + 16);
    v55 = sub_1CF9E7F98();
    v57 = v56;
    v51(v50, v30);
    v58 = sub_1CEFD0DF0(v55, v57, v146);

    *(v49 + 14) = v58;
    *(v49 + 22) = 2080;
    v59 = v136;
    v60 = sub_1CF665B0C(v136, v53, v126, v52, v128);
    v62 = v61;
    sub_1CF5DE5B8(v59);
    sub_1CF5DE5B8(v59);
    v63 = sub_1CEFD0DF0(v60, v62, v146);

    *(v49 + 24) = v63;
    *(v49 + 32) = 2112;
    v64 = v114;
    swift_getErrorValue();
    v65 = Error.prettyDescription.getter(v138);
    *(v49 + 34) = v65;
    v66 = v108;
    *v108 = v65;
    _os_log_impl(&dword_1CEFC7000, v64, v112, "🚧  %{public}s of %s failed for %s: %@", v49, 0x2Au);
    sub_1CEFCCC44(v66, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v66, -1, -1);
    v67 = v109;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v67, -1, -1);
    MEMORY[0x1D386CDC0](v49, -1, -1);

    (*(v130 + 8))(v135, v131);
  }

  else
  {
    v68 = v136;
    sub_1CF5DE5B8(v136);
    (*(v115 + 8))(v36, v30);
    sub_1CF5DE5B8(v68);

    (*(v130 + 8))(v40, v131);
  }

  v69 = *(v129 + 64);
  v70 = v116;
  *v116 = v69;
  v72 = v132;
  v71 = v133;
  (*(v132 + 104))(v70, *MEMORY[0x1E69E8020], v133);
  v73 = v69;
  LOBYTE(v69) = sub_1CF9E64D8();
  (*(v72 + 8))(v70, v71);
  if (v69)
  {
    swift_beginAccess();
    if (*(a9 + 16))
    {
    }

    else
    {
      sub_1CEFCCBDC(v123, &v144, &unk_1EC4C1B30, &qword_1CFA05300);
      if (v145)
      {
        sub_1CF054EA0(&v144, v146);
        v74 = v147;
        v75 = v148;
        v76 = __swift_project_boxed_opaque_existential_1(v146, v147);
        v77 = *(**(v129 + 16) + 160);
        v78 = *(v75 + 8);

        v79 = v122;
        v77(v134, v76, v74, v78);

        v80 = v121;
        v81 = v110;
        v82 = (*(v121 + 48))(v79, 1, v110);
        if (v82 != 1)
        {
          (*(v80 + 32))(v120, v79, v81);
          type metadata accessor for NSFileProviderError(0);
          *&v144 = -2005;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1CF9FA440;
          v94 = *MEMORY[0x1E696AA08];
          *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          *(inited + 40) = v95;
          v96 = v117;
          swift_getErrorValue();
          v97 = v139;
          v98 = v140;
          *(inited + 72) = v140;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
          (*(*(v98 - 8) + 16))(boxed_opaque_existential_0, v97, v98);
          v100 = *MEMORY[0x1E69671A0];
          *(inited + 80) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          *(inited + 88) = v101;
          *(inited + 120) = v81;
          v102 = __swift_allocate_boxed_opaque_existential_0((inited + 96));
          v103 = v120;
          (*(v80 + 16))(v102, v120, v81);
          sub_1CF4E04E8(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
          swift_arrayDestroy();
          sub_1CF5DFB70(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
          sub_1CF9E57D8();
          v104 = v141;
          v105 = sub_1CF9E57E8();

          (*(v80 + 8))(v103, v81);
          swift_beginAccess();
          v106 = *(a9 + 16);
          *(a9 + 16) = v105;

          __swift_destroy_boxed_opaque_existential_1(v146);
          goto LABEL_10;
        }

        (*(v118 + 8))(v79, v119);
        __swift_destroy_boxed_opaque_existential_1(v146);
      }

      else
      {
        sub_1CEFCCC44(&v144, &unk_1EC4C1B30, &qword_1CFA05300);
      }

      type metadata accessor for NSFileProviderError(0);
      v146[0] = -2005;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      v83 = swift_initStackObject();
      *(v83 + 16) = xmmword_1CF9FA450;
      v84 = *MEMORY[0x1E696AA08];
      *(v83 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v83 + 40) = v85;
      v86 = v117;
      swift_getErrorValue();
      v87 = v142;
      v88 = v143;
      *(v83 + 72) = v143;
      v89 = __swift_allocate_boxed_opaque_existential_0((v83 + 48));
      (*(*(v88 - 8) + 16))(v89, v87, v88);
      sub_1CF4E04E8(v83);
      swift_setDeallocating();
      sub_1CEFCCC44(v83 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      sub_1CF5DFB70(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
      sub_1CF9E57D8();
      v90 = v144;
      v91 = sub_1CF9E57E8();

      swift_beginAccess();
      v92 = *(a9 + 16);
      *(a9 + 16) = v91;
    }

LABEL_10:
    dispatch_group_leave(v137);
    return;
  }

  __break(1u);
}

void sub_1CF5CBA94(uint64_t a1, uint64_t **a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, void *), uint64_t a13, uint64_t a14)
{
  v84 = a5;
  v85 = a7;
  v80 = *a2;
  v81 = a8;
  v19 = sub_1CF9E6118();
  v82 = *(v19 - 8);
  v83 = v19;
  v20 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v77 - v24;
  v26 = sub_1CF9E64A8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = (&v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    v31 = a2[8];
    *v30 = v31;
    (*(v27 + 104))(v30, *MEMORY[0x1E69E8020], v26);
    v32 = v31;
    LOBYTE(v31) = sub_1CF9E64D8();
    v33 = (*(v27 + 8))(v30, v26);
    if (v31)
    {
      v34 = (a9 + 16);
      if (a4)
      {
        v81 = a13;
        swift_beginAccess();
        v35 = *v34;
        v36 = a6;
        if (*v34)
        {
          v79 = a12;
          v37 = v35;
          v38 = fpfs_current_or_default_log();
          v39 = v25;
          sub_1CF9E6128();
          v40 = v37;
          v41 = v85;
          sub_1CEFD09A0(v85);

          v42 = sub_1CF9E6108();
          v43 = sub_1CF9E72C8();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v78 = v39;
            v46 = v45;
            v47 = swift_slowAlloc();
            v86[0] = v47;
            *v44 = 136446722;
            *(v44 + 4) = sub_1CEFD0DF0(v84, v36, v86);
            *(v44 + 12) = 2080;
            v48 = sub_1CF665B0C(v41, v80[77], v80[78], v80[79], v80[80]);
            v49 = v41;
            v50 = v48;
            v52 = v51;
            sub_1CF5DE5B8(v49);
            v53 = sub_1CEFD0DF0(v50, v52, v86);

            *(v44 + 14) = v53;
            *(v44 + 22) = 2112;
            v54 = [v40 fp_prettyDescription];
            *(v44 + 24) = v54;
            *v46 = v54;
            _os_log_impl(&dword_1CEFC7000, v42, v43, "🚧  finished %{public}s for %s with error: %@", v44, 0x20u);
            sub_1CEFCCC44(v46, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v46, -1, -1);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v47, -1, -1);
            MEMORY[0x1D386CDC0](v44, -1, -1);

            (*(v82 + 8))(v78, v83);
          }

          else
          {
            sub_1CF5DE5B8(v41);

            (*(v82 + 8))(v39, v83);
          }

          swift_beginAccess();
          v75 = *(a14 + 16);
          v76 = v40;
          v79(v75, v35);
        }

        else
        {
          v63 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v64 = v85;
          sub_1CEFD09A0(v85);

          v65 = sub_1CF9E6108();
          v66 = sub_1CF9E72C8();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v86[0] = v68;
            *v67 = 136446466;
            *(v67 + 4) = sub_1CEFD0DF0(v84, v36, v86);
            *(v67 + 12) = 2080;
            v69 = sub_1CF665B0C(v64, v80[77], v80[78], v80[79], v80[80]);
            v70 = v64;
            v71 = v69;
            v73 = v72;
            sub_1CF5DE5B8(v70);
            v74 = sub_1CEFD0DF0(v71, v73, v86);

            *(v67 + 14) = v74;
            _os_log_impl(&dword_1CEFC7000, v65, v66, "🚧  finished %{public}s for %s", v67, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v68, -1, -1);
            MEMORY[0x1D386CDC0](v67, -1, -1);
          }

          else
          {
            sub_1CF5DE5B8(v64);
          }

          (*(v82 + 8))(v22, v83);
          swift_beginAccess();
          a12(*(a14 + 16), 0);
        }
      }

      else
      {
        MEMORY[0x1EEE9AC00](v33);
        *(&v77 - 14) = v56;
        *(&v77 - 13) = v55;
        v57 = v84;
        v58 = v85;
        *(&v77 - 12) = a2;
        *(&v77 - 11) = v57;
        *(&v77 - 10) = a6;
        *(&v77 - 9) = a3;
        v59 = v81;
        *(&v77 - 8) = v58;
        *(&v77 - 7) = v59;
        *(&v77 - 6) = v34;
        *(&v77 - 5) = v60;
        *(&v77 - 4) = v61;
        *(&v77 - 3) = a12;
        *(&v77 - 2) = v62;
        sub_1CF59896C("waitForPropagation(for:startingRowID:request:barrierTimestamp:previousError:jobs:with:completionHandler:)", 0x69uLL, 2, sub_1CF5E0418, (&v77 - 16), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1CF5CC1A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void **a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = a1[3];
  v16 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v15);
  swift_beginAccess();
  v18 = *a8;
  v19 = v18;
  sub_1CF5C96FC(a3, a4, a5, a6, a7, v18, a9, a10, v17, a11, a12, v15, v16);
}

uint64_t sub_1CF5CC278(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a2;
  v28 = a7;
  v29 = a8;
  v31 = a6;
  v32 = a5;
  v33 = a4;
  v30 = a3;
  v10 = *v8;
  v26 = *(*v8 + 640);
  v11 = *(v10 + 624);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v26 - v16;
  v27 = "move-out of descendents";
  (*(v13 + 16))(&v26 - v16, a1, AssociatedTypeWitness, v15);
  v18 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v10;
  *(v20 + 2) = *(v10 + 616);
  *(v20 + 3) = v11;
  v22 = v28;
  v23 = v29;
  *(v20 + 4) = v28;
  *(v20 + 5) = *(v21 + 632);
  *(v20 + 6) = v26;
  *(v20 + 7) = v23;
  *(v20 + 8) = v8;
  (*(v13 + 32))(&v20[v18], v17, AssociatedTypeWitness);
  v24 = v30;
  *&v20[v19] = v30;

  sub_1CF5C96FC(0xD000000000000020, v27 | 0x8000000000000000, 0, v34, v24, 0, sub_1CF5E05DC, v20, v33, v32, v31, v22, v23);
}

uint64_t sub_1CF5CC4C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  result = (*(**(a3 + 40) + 600))(a4, a2, a5, *(a3 + qword_1EDEBBC68), *(a3 + qword_1EDEBBC68 + 8), v12, v10, v11);
  if (v5)
  {
    return v14 & 1;
  }

  return result;
}

uint64_t sub_1CF5CC5AC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a2;
  v28 = a7;
  v29 = a8;
  v31 = a6;
  v32 = a5;
  v33 = a4;
  v30 = a3;
  v10 = *v8;
  v26 = *(*v8 + 640);
  v11 = *(v10 + 624);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v26 - v16;
  v27 = ":with:completionHandler:)";
  (*(v13 + 16))(&v26 - v16, a1, AssociatedTypeWitness, v15);
  v18 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v10;
  *(v20 + 2) = *(v10 + 616);
  *(v20 + 3) = v11;
  v22 = v28;
  v23 = v29;
  *(v20 + 4) = v28;
  *(v20 + 5) = *(v21 + 632);
  *(v20 + 6) = v26;
  *(v20 + 7) = v23;
  *(v20 + 8) = v8;
  (*(v13 + 32))(&v20[v18], v17, AssociatedTypeWitness);
  v24 = v30;
  *&v20[v19] = v30;

  sub_1CF5C96FC(0xD000000000000017, v27 | 0x8000000000000000, 0, v34, v24, 0, sub_1CF5E04C8, v20, v33, v32, v31, v22, v23);
}

uint64_t sub_1CF5CC7FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  result = (*(**(a3 + 40) + 592))(a4, a2, a5, *(a3 + qword_1EDEBBC68), *(a3 + qword_1EDEBBC68 + 8), v12, v10, v11);
  if (v5)
  {
    return v14 & 1;
  }

  return result;
}

uint64_t sub_1CF5CC8E0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a2;
  v29 = a7;
  v30 = a8;
  v32 = a6;
  v33 = a5;
  v34 = a4;
  v31 = a3;
  v10 = *v8;
  v27 = *(*v8 + 632);
  v11 = *(v10 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v27 - v16;
  v28 = "r previousError ";
  (*(v13 + 16))(&v27 - v16, a1, AssociatedTypeWitness, v15);
  v18 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = v11;
  v21 = *(v10 + 624);
  v22 = v10;
  v23 = v29;
  v24 = v30;
  *(v20 + 3) = v21;
  *(v20 + 4) = v23;
  *(v20 + 5) = v27;
  *(v20 + 6) = *(v22 + 640);
  *(v20 + 7) = v24;
  *(v20 + 8) = v8;
  (*(v13 + 32))(&v20[v18], v17, AssociatedTypeWitness);
  v25 = v31;
  *&v20[v19] = v31;

  sub_1CF5C96FC(0xD000000000000017, v28 | 0x8000000000000000, 0, v35, v25, 0, sub_1CF5E01A4, v20, v34, v33, v32, v23, v24);
}

uint64_t sub_1CF5CCB30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  result = (*(**(a3 + 32) + 608))(a4, a2, a5, *(a3 + qword_1EDEBBC68), *(a3 + qword_1EDEBBC68 + 8), v12, v10, v11);
  if (v5)
  {
    return v14 & 1;
  }

  return result;
}

uint64_t sub_1CF5CCC14(uint64_t a1, int a2, unint64_t a3, uint64_t a4, void (*a5)(__int128 *, id), uint64_t a6)
{
  v39 = a4;
  v38 = a2;
  v41 = a1;
  v10 = *v6;
  v11 = *(*v6 + 632);
  v12 = *(*v6 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v14 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  if (v6[152] == 1)
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    v20 = FPDomainUnavailableError();
    a5(&v42, v20);

    return sub_1CEFCCC44(&v42, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  else
  {
    v35 = a3;
    v37 = a5;
    v36 = a6;
    v22 = qword_1EC4EBD80;
    swift_beginAccess();
    v23 = *&v6[v22];

    v24 = *(v10 + 624);
    v25 = *(v10 + 640);
    *&v42 = v12;
    *(&v42 + 1) = v24;
    *&v43 = v11;
    *(&v43 + 1) = v25;
    *&v42 = type metadata accessor for UserRequest();
    *(&v42 + 1) = &type metadata for JobCode;
    *&v43 = &type metadata for NSecTimestamp;
    *(&v43 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
    swift_getTupleTypeMetadata();
    sub_1CF9E6E58();
    v26 = *(swift_getAssociatedConformanceWitness() + 40);
    sub_1CF9E6728();

    if (v46[0])
    {

      v27 = v40;
      (*(v40 + 16))(v16, v41, AssociatedTypeWitness);
    }

    else
    {
      v28 = *(v40 + 16);
      v28(v19, v41, AssociatedTypeWitness);
      v46[0] = sub_1CF9E6DA8();
      swift_beginAccess();
      sub_1CF9E6708();
      v27 = v40;
      sub_1CF9E6738();
      swift_endAccess();
      v28(v16, v41, AssociatedTypeWitness);
    }

    v29 = sub_1CF5A56C0();
    sub_1CF9E6708();
    v30 = sub_1CF9E6718();
    v32 = v37;
    if (*v31)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = v36;
      *&v42 = v35;
      BYTE8(v42) = v38;
      *&v43 = v39;
      *(&v43 + 1) = sub_1CF5E14E4;
      v44 = v33;
      sub_1CEFD09A0(v35);

      sub_1CF9E6E18();
    }

    v30(v45, 0);
    (*(v27 + 8))(v16, AssociatedTypeWitness);
    return (v29)(v46, 0);
  }
}

uint64_t sub_1CF5CD088(void *a1)
{
  v3 = *(v1 + 616);
  v4 = *(v1 + 632);
  v5 = type metadata accessor for FileTreeError();
  v6 = sub_1CF9E75D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v25 - v9;
  v30 = a1;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v12 = swift_dynamicCast();
  v13 = *(*(v5 - 8) + 56);
  if (v12)
  {
    v14 = *(v5 - 8);
    v13(v10, 0, 1, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      (*(v14 + 8))(v10, v5);
      return 0;
    }

    else
    {
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v25[-6], " at originalError previousError ");
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v17 = swift_getAssociatedTypeWitness();
      v18 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v20 = swift_getAssociatedConformanceWitness();
      v25[1] = v17;
      v25[2] = v18;
      v25[3] = AssociatedConformanceWitness;
      v25[4] = v20;
      type metadata accessor for FileItemVersion();
      v27 = sub_1CF9E75D8();
      v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      v29 = v28;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v22 = TupleTypeMetadata[12];

      AssociatedTypeWitness = v17;
      v27 = v18;
      v28 = AssociatedConformanceWitness;
      v29 = v20;
      type metadata accessor for FileItemVersion();
      v23 = sub_1CF9E75D8();
      (*(*(v23 - 8) + 8))(&v10[v22], v23);
      v24 = swift_getAssociatedTypeWitness();
      (*(*(v24 - 8) + 8))(v10, v24);
      return 1;
    }
  }

  else
  {
    v13(v10, 1, 1, v5);
    (*(v7 + 8))(v10, v6);
    return 0;
  }
}

void sub_1CF5CD4AC(uint64_t a1, unint64_t a2, void (**a3)(uint64_t, uint64_t *, uint64_t), unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, void), uint64_t a9, void (**a10)(uint64_t, uint64_t *, uint64_t), NSObject *a11, void *a12, uint64_t (*a13)())
{
  v172 = a3;
  v169 = a2;
  v170 = a6;
  v167 = a5;
  v168 = a4;
  v166 = a1;
  v163 = *v13;
  v16 = v163;
  v146 = sub_1CF9E63A8();
  v147 = *(v146 - 8);
  v17 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v150 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1CF9E6448();
  v149 = *(v151 - 8);
  v19 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v148 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v16 + 632);
  v177 = v13;
  v22 = *(v16 + 616);
  v162 = v21;
  v161 = v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v176 = *(AssociatedTypeWitness - 8);
  v23 = v176[8];
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v174 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v175 = &v135 - v25;
  v26 = sub_1CF9E6118();
  v152 = *(v26 - 8);
  v27 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v160 = &v135 - v31;
  v181 = a12;
  v182 = a13;
  v165 = a13;
  v32 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
  v33 = *(*(a12 - 1) + 16);
  v164 = a12;
  v33(v32, a7, a12);
  v34 = v173;
  v35 = a8;
  v36 = a8(&aBlock, v172);
  v38 = v37;
  v40 = v39;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (!v34)
  {
    v142 = v40;
    v137 = v38;
    v136 = v23;
    v158 = v35;
    v138 = a9;
    v141 = v29;
    v145 = v26;
    v172 = a10;
    v173 = a11;
    v41 = [objc_allocWithZone(FPLoggerScope) init];
    v42 = fpfs_current_or_default_log();
    v43 = v160;
    sub_1CF9E6128();
    v44 = v168;
    sub_1CEFD09A0(v168);
    v45 = v36;

    sub_1CEFD09A0(v44);

    v46 = v41;
    v47 = v169;

    v48 = sub_1CF9E6108();
    v49 = sub_1CF9E7298();

    v50 = os_log_type_enabled(v48, v49);
    v140 = 0;
    v139 = v46;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v157 = v52;
      v159 = swift_slowAlloc();
      aBlock = v159;
      *v51 = 138413314;
      v53 = [v46 enter];
      *(v51 + 4) = v53;
      *v52 = v53;
      *(v51 + 12) = 2082;
      *(v51 + 14) = sub_1CEFD0DF0(v166, v47, &aBlock);
      *(v51 + 22) = 2080;
      v54 = sub_1CF9E6F58();
      v56 = sub_1CEFD0DF0(v54, v55, &aBlock);

      *(v51 + 24) = v56;
      *(v51 + 32) = 2080;
      v57 = sub_1CF665B0C(v44, v161, *(v163 + 624), v162, *(v163 + 640));
      v59 = v58;
      sub_1CF5DE5B8(v44);
      sub_1CF5DE5B8(v44);
      v60 = sub_1CEFD0DF0(v57, v59, &aBlock);

      *(v51 + 34) = v60;
      *(v51 + 42) = 2080;
      v61 = MEMORY[0x1D3868FE0](v45, AssociatedTypeWitness);
      v63 = v62;
      v64 = v45;
      swift_bridgeObjectRelease_n();
      v65 = sub_1CEFD0DF0(v61, v63, &aBlock);

      *(v51 + 44) = v65;
      _os_log_impl(&dword_1CEFC7000, v48, v49, "%@ 🚧  waiting for ingestion of %{public}s prior to %s for %s: %s", v51, 0x34u);
      v66 = v157;
      sub_1CEFCCC44(v157, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v66, -1, -1);
      v67 = v159;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v67, -1, -1);
      MEMORY[0x1D386CDC0](v51, -1, -1);
    }

    else
    {

      sub_1CF5DE5B8(v44);
      v64 = v45;

      sub_1CF5DE5B8(v44);
    }

    (*(v152 + 8))(v43, v145);
    v68 = v177;
    v69 = v170;
    v70 = swift_allocObject();
    *(v70 + 16) = 0;
    v71 = swift_allocObject();
    v72 = v172;
    v73 = v173;
    v71[2] = v70;
    v71[3] = v72;
    v71[4] = v73;

    v173 = dispatch_group_create();
    v74 = v158;
    v75 = v176;
    v144 = v70;
    v143 = v71;
    if (v69)
    {
      v76 = sub_1CF9E57E8();
    }

    else
    {
      v76 = 0;
    }

    v77 = v167;
    v160 = swift_allocObject();
    *(v160 + 2) = v76;
    v159 = swift_allocObject();
    *(v159 + 16) = 0;
    v78 = v64;
    v79 = AssociatedTypeWitness;
    if (sub_1CF9E6DF8())
    {
      v80 = 0;
      v172 = (v75 + 2);
      v157 = (v136 + 7);
      v156 = v75 + 4;
      v155 = v75 + 1;
      v154 = BYTE1(v142);
      v153 = v78;
      while (1)
      {
        v81 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v81)
        {
          v82 = v78 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + v75[9] * v80;
          v83 = v75[2];
          v84 = v175;
          v83(v175, v82, v79);
        }

        else
        {
          v102 = sub_1CF9E7998();
          v84 = v175;
          if (v136 != 8)
          {
            goto LABEL_22;
          }

          aBlock = v102;
          v83 = *v172;
          (*v172)(v175, &aBlock, v79);
          swift_unknownObjectRelease();
        }

        v85 = v174;
        if (__OFADD__(v80, 1))
        {
          break;
        }

        v170 = v80 + 1;
        AssociatedTypeWitness = v80;
        v86 = v173;
        dispatch_group_enter(v173);
        v83(v85, v84, v79);
        v87 = v176;
        v88 = (*(v176 + 80) + 88) & ~*(v176 + 80);
        v89 = (v157 + v88) & 0xFFFFFFFFFFFFFFF8;
        v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
        v91 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
        v92 = swift_allocObject();
        v92[2] = v161;
        v93 = v163;
        v94 = v164;
        v92[3] = *(v163 + 624);
        v92[4] = v94;
        v92[5] = v162;
        v95 = *(v93 + 640);
        v97 = v165;
        v96 = v166;
        v92[6] = v95;
        v92[7] = v97;
        v92[8] = v86;
        v92[9] = v96;
        v92[10] = v169;
        (v87[4])(v92 + v88, v174, v79);
        v98 = v168;
        *(v92 + v89) = v168;
        *(v92 + v90) = v177;
        v68 = v177;
        *(v92 + v91) = v160;
        *(v92 + ((v91 + 15) & 0xFFFFFFFFFFFFFFF8)) = v159;
        v74 = v158;
        sub_1CEFD09A0(v98);
        v77 = v167;

        v99 = v173;
        v100 = AssociatedTypeWitness;

        v78 = v153;

        v101 = v175;
        sub_1CF5CCC14(v175, v154, v98, v77, sub_1CF5DFE6C, v92);
        v75 = v176;

        (v75[1])(v101, v79);
        v80 = v100 + 1;
        if (v170 == sub_1CF9E6DF8())
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
LABEL_17:

      v103 = v77;
      v104 = v68[8];
      v105 = swift_allocObject();
      v106 = v165;
      *(v105 + 16) = v164;
      *(v105 + 24) = v106;
      v107 = v137;
      *(v105 + 32) = v144;
      *(v105 + 40) = v107;
      *(v105 + 48) = v142 & 1;
      v108 = v166;
      *(v105 + 56) = v68;
      *(v105 + 64) = v108;
      *(v105 + 72) = v169;
      v109 = v168;
      *(v105 + 80) = v168;
      *(v105 + 88) = v103;
      *(v105 + 96) = v160;
      *(v105 + 104) = v74;
      *(v105 + 112) = v138;
      *(v105 + 120) = sub_1CF5DFE4C;
      v110 = v159;
      *(v105 + 128) = v143;
      *(v105 + 136) = v110;
      sub_1CEFD09A0(v109);

      v111 = v104;

      v112 = fpfs_current_log();
      v177 = fpfs_adopt_log();
      v113 = swift_allocObject();
      aBlock = sub_1CF9E73C8();
      v179 = v114;
      MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
      v115 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v115);

      sub_1CF9E6978();

      v116 = __fp_log_fork();

      *(v113 + 16) = v116;
      v117 = swift_allocObject();
      *(v117 + 16) = v112;
      *(v117 + 24) = v113;
      *(v117 + 32) = v111;
      *(v117 + 40) = "waitForIngestion(of:startingRowID:request:barrierTimestamp:previousError:connection:jobs:completionHandler:)";
      *(v117 + 48) = 108;
      *(v117 + 56) = 2;
      *(v117 + 64) = sub_1CF5DFF6C;
      *(v117 + 72) = v105;
      v182 = sub_1CEFD5064;
      v183 = v117;
      aBlock = MEMORY[0x1E69E9820];
      v179 = 1107296256;
      v180 = sub_1CEFCA444;
      v181 = &block_descriptor_437_0;
      v118 = _Block_copy(&aBlock);
      v119 = v111;
      v176 = v112;

      v120 = v148;
      sub_1CF9E63F8();
      v184 = MEMORY[0x1E69E7CC0];
      sub_1CF5DFB70(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v121 = v150;
      v122 = v146;
      sub_1CF9E77B8();
      v123 = v119;
      v124 = v173;
      sub_1CF9E7308();
      _Block_release(v118);
      (*(v147 + 8))(v121, v122);
      (*(v149 + 8))(v120, v151);

      v125 = v177;
      v126 = fpfs_adopt_log();

      v127 = fpfs_current_or_default_log();
      v128 = v141;
      sub_1CF9E6128();
      v129 = v139;
      v130 = sub_1CF9E6108();
      v131 = sub_1CF9E7298();

      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        *v132 = 138412290;
        v134 = [v129 leave];
        *(v132 + 4) = v134;
        *v133 = v134;
        _os_log_impl(&dword_1CEFC7000, v130, v131, "%@", v132, 0xCu);
        sub_1CEFCCC44(v133, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v133, -1, -1);
        MEMORY[0x1D386CDC0](v132, -1, -1);
      }

      (*(v152 + 8))(v128, v145);
    }
  }
}

uint64_t sub_1CF5CE4C8(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  result = swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    return a4(a1 & 1, a2);
  }

  return result;
}

void sub_1CF5CE558(uint64_t a1, void *a2, NSObject *a3, uint64_t a4, NSObject *a5, char *a6, unint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v100 = a7;
  v94 = a6;
  v96 = a5;
  v93 = a4;
  v13 = *a8;
  v14 = *a8;
  v99 = sub_1CF9E64A8();
  v98 = *(v99 - 8);
  v15 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v97 = (&v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v13 + 632);
  v18 = *(v13 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = *(AssociatedTypeWitness - 8);
  v20 = v95[8];
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v92 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v82 - v23;
  v25 = sub_1CF9E6118();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_4;
  }

  v31 = a2;
  v90 = v28;
  v91 = v27;
  v32 = *(v14 + 624);
  v33 = *(v14 + 640);
  v106[0] = v18;
  v106[1] = v32;
  v88 = v32;
  v89 = v17;
  v106[2] = v17;
  v106[3] = v33;
  type metadata accessor for ConcreteDatabase();
  v34 = v31;
  v35 = v31;
  if (sub_1CF5CD088(v31))
  {

LABEL_4:
    swift_beginAccess();
    *(a10 + 16) = 1;
LABEL_13:
    dispatch_group_leave(a3);
    return;
  }

  v86 = v33;
  v85 = v18;
  v87 = a3;
  v36 = fpfs_current_or_default_log();
  v37 = v30;
  sub_1CF9E6128();
  v38 = v95;
  v39 = v95[2];
  v39(v24, v94, AssociatedTypeWitness);
  v40 = v100;
  sub_1CEFD09A0(v100);
  v41 = v34;
  sub_1CEFD09A0(v40);
  v42 = v96;

  v94 = v37;
  v43 = v42;
  v44 = sub_1CF9E6108();
  v45 = sub_1CF9E72C8();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v83 = v45;
    v47 = v46;
    v82 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v106[0] = v84;
    *v47 = 136446978;
    *(v47 + 4) = sub_1CEFD0DF0(v93, v43, v106);
    *(v47 + 12) = 2080;
    v96 = v44;
    v48 = v92;
    v39(v92, v24, AssociatedTypeWitness);
    v49 = v38[1];
    v49(v24, AssociatedTypeWitness);
    v95 = v34;
    v50 = v89;
    v51 = v85;
    v52 = *(swift_getAssociatedConformanceWitness() + 16);
    v53 = sub_1CF9E7F98();
    v55 = v54;
    v49(v48, AssociatedTypeWitness);
    v56 = sub_1CEFD0DF0(v53, v55, v106);

    *(v47 + 14) = v56;
    *(v47 + 22) = 2080;
    v57 = v100;
    v58 = sub_1CF665B0C(v100, v51, v88, v50, v86);
    v60 = v59;
    sub_1CF5DE5B8(v57);
    sub_1CF5DE5B8(v57);
    v61 = sub_1CEFD0DF0(v58, v60, v106);

    *(v47 + 24) = v61;
    *(v47 + 32) = 2112;
    v62 = v95;
    swift_getErrorValue();
    v63 = Error.prettyDescription.getter(v101);
    *(v47 + 34) = v63;
    v64 = v82;
    *v82 = v63;
    v65 = v96;
    _os_log_impl(&dword_1CEFC7000, v96, v83, "🚧  %{public}s of %s failed for %s: %@", v47, 0x2Au);
    sub_1CEFCCC44(v64, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v64, -1, -1);
    v66 = v84;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v66, -1, -1);
    MEMORY[0x1D386CDC0](v47, -1, -1);

    (*(v90 + 8))(v94, v91);
  }

  else
  {
    v67 = v100;
    sub_1CF5DE5B8(v100);
    (v38[1])(v24, AssociatedTypeWitness);
    sub_1CF5DE5B8(v67);

    (*(v90 + 8))(v94, v91);
    v62 = v34;
  }

  v68 = a8[8];
  v69 = v97;
  *v97 = v68;
  v70 = v98;
  v71 = v99;
  (*(v98 + 104))(v69, *MEMORY[0x1E69E8020], v99);
  v72 = v68;
  LOBYTE(v68) = sub_1CF9E64D8();
  (*(v70 + 8))(v69, v71);
  if (v68)
  {
    swift_beginAccess();
    if (*(a9 + 16))
    {
    }

    else
    {
      type metadata accessor for NSFileProviderError(0);
      v102 = -2005;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FA450;
      v74 = *MEMORY[0x1E696AA08];
      *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 40) = v75;
      swift_getErrorValue();
      v76 = v103;
      v77 = v104;
      *(inited + 72) = v104;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      (*(*(v77 - 8) + 16))(boxed_opaque_existential_0, v76, v77);
      sub_1CF4E04E8(inited);
      swift_setDeallocating();
      sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      sub_1CF5DFB70(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
      sub_1CF9E57D8();
      v79 = v105;
      v80 = sub_1CF9E57E8();

      swift_beginAccess();
      v81 = *(a9 + 16);
      *(a9 + 16) = v80;
    }

    a3 = v87;
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1CF5CEE58(uint64_t a1, uint64_t a2, char a3, uint64_t **a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, void *), uint64_t a13, uint64_t a14)
{
  v91 = a6;
  v92 = a7;
  v90 = a5;
  v87 = *a4;
  v88 = a8;
  v18 = sub_1CF9E6118();
  v89 = *(v18 - 8);
  v19 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v84 - v23;
  v25 = sub_1CF9E64A8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = (&v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    v85 = a13;
    v86 = a12;
    v84 = a14;
    v30 = (a9 + 16);
    if (a3)
    {
      v88 = v18;
      swift_beginAccess();
      v31 = *v30;
      if (*v30)
      {
        v32 = v31;
        v33 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v34 = v32;
        v35 = v92;
        sub_1CEFD09A0(v92);
        v36 = v91;

        v37 = sub_1CF9E6108();
        v38 = sub_1CF9E72C8();

        v39 = os_log_type_enabled(v37, v38);
        v40 = v86;
        if (v39)
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v93[0] = swift_slowAlloc();
          v43 = v93[0];
          *v41 = 136446722;
          *(v41 + 4) = sub_1CEFD0DF0(v90, v36, v93);
          *(v41 + 12) = 2080;
          v44 = sub_1CF665B0C(v35, v87[77], v87[78], v87[79], v87[80]);
          v45 = v35;
          v47 = v46;
          sub_1CF5DE5B8(v45);
          v48 = sub_1CEFD0DF0(v44, v47, v93);

          *(v41 + 14) = v48;
          *(v41 + 22) = 2112;
          v49 = [v34 fp_prettyDescription];
          *(v41 + 24) = v49;
          *v42 = v49;
          _os_log_impl(&dword_1CEFC7000, v37, v38, "🚧  finished ingestions of %{public}s for %s with error: %@", v41, 0x20u);
          sub_1CEFCCC44(v42, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v42, -1, -1);
          swift_arrayDestroy();
          v50 = v43;
          v40 = v86;
          MEMORY[0x1D386CDC0](v50, -1, -1);
          MEMORY[0x1D386CDC0](v41, -1, -1);
        }

        else
        {
          sub_1CF5DE5B8(v35);
        }

        (*(v89 + 8))(v24, v88);
        v79 = v84;
        swift_beginAccess();
        v80 = *(v79 + 16);
        v81 = v34;
        v40(v80, v31);
      }

      else
      {
        v64 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v65 = v92;
        sub_1CEFD09A0(v92);
        v66 = v91;

        v67 = sub_1CF9E6108();
        v68 = sub_1CF9E72C8();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v71 = v66;
          v72 = v70;
          v93[0] = v70;
          *v69 = 136446466;
          *(v69 + 4) = sub_1CEFD0DF0(v90, v71, v93);
          *(v69 + 12) = 2080;
          v73 = sub_1CF665B0C(v65, v87[77], v87[78], v87[79], v87[80]);
          v74 = v65;
          v75 = v73;
          v77 = v76;
          sub_1CF5DE5B8(v74);
          v78 = sub_1CEFD0DF0(v75, v77, v93);

          *(v69 + 14) = v78;
          _os_log_impl(&dword_1CEFC7000, v67, v68, "🚧  finished ingestions of %{public}s for %s", v69, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v72, -1, -1);
          MEMORY[0x1D386CDC0](v69, -1, -1);
        }

        else
        {
          sub_1CF5DE5B8(v65);
        }

        (*(v89 + 8))(v21, v88);
        v82 = v86;
        v83 = v84;
        swift_beginAccess();
        v82(*(v83 + 16), 0);
      }
    }

    else
    {
      v51 = a4[8];
      *v29 = v51;
      (*(v26 + 104))(v29, *MEMORY[0x1E69E8020], v25);
      v52 = v51;
      LOBYTE(v51) = sub_1CF9E64D8();
      v53 = (*(v26 + 8))(v29, v25);
      if (v51)
      {
        v54 = MEMORY[0x1EEE9AC00](v53);
        *(&v84 - 14) = v56;
        *(&v84 - 13) = v55;
        v58 = v90;
        v57 = v91;
        *(&v84 - 12) = a4;
        *(&v84 - 11) = v58;
        *(&v84 - 10) = v57;
        *(&v84 - 9) = a2;
        v59 = v88;
        *(&v84 - 8) = v92;
        *(&v84 - 7) = v59;
        *(&v84 - 6) = v30;
        *(&v84 - 5) = v60;
        v62 = v85;
        v61 = v86;
        *(&v84 - 4) = v63;
        *(&v84 - 3) = v61;
        *(&v84 - 2) = v62;
        ((*a4)[54])(2, sub_1CF5DFFB8, v54);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1CF5CF584(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void **a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = a1[3];
  v16 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v15);
  swift_beginAccess();
  v18 = *a8;
  v19 = v18;
  sub_1CF5CD4AC(a3, a4, a5, a6, a7, v18, v17, a9, a10, a11, a12, v15, v16);
}

uint64_t sub_1CF5CF660(unint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(uint64_t, uint64_t *, uint64_t), NSObject *a5, void *a6, uint64_t (*a7)())
{
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = v7;
  v15[5] = a2;

  sub_1CF5CD4AC(0x206E776F6E6B6E75, 0xED0000736D657469, 0, a1, a2, 0, a3, sub_1CF5DFE2C, v15, a4, a5, a6, a7);
}

uint64_t sub_1CF5CF754(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  result = (*(**(a3 + 24) + 560))(a2, a4, *(a3 + qword_1EDEBBC68), *(a3 + qword_1EDEBBC68 + 8), v10, v8, v9);
  if (v4)
  {
    return v12 & 1 | 0x300u;
  }

  return result;
}

uint64_t sub_1CF5CF828(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(uint64_t, uint64_t *, uint64_t), NSObject *a6, void *a7, uint64_t (*a8)())
{
  v9 = v8;
  v34 = a7;
  v35 = a8;
  v37 = a6;
  v38 = a5;
  v39 = a2;
  v40 = a4;
  v36 = a3;
  v33 = a1;
  v10 = *v8;
  v11 = *(*v8 + 616);
  v30 = *(*v8 + 632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v29 - v16;
  v41 = 0;
  v42 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x6C6562206E616373, 0xEB0000000020776FLL, v15);
  v18 = *(swift_getAssociatedConformanceWitness() + 16);
  v19 = v33;
  sub_1CF9E7FE8();
  v31 = v42;
  v32 = v41;
  (*(v13 + 16))(v17, v19, AssociatedTypeWitness);
  v20 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = v11;
  v23 = *(v10 + 624);
  v24 = v10;
  v25 = v34;
  v26 = v35;
  *(v22 + 3) = v23;
  *(v22 + 4) = v25;
  *(v22 + 5) = v30;
  *(v22 + 6) = *(v24 + 640);
  *(v22 + 7) = v26;
  *(v22 + 8) = v9;
  (*(v13 + 32))(&v22[v20], v17, AssociatedTypeWitness);
  v27 = v36;
  *&v22[v21] = v36;

  sub_1CF5CD4AC(v32, v31, 0, v39, v27, 0, v40, sub_1CF5DFFE4, v22, v38, v37, v25, v26);
}

uint64_t sub_1CF5CFADC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  result = (*(**(a3 + 24) + 568))(a4, a2, a5, *(a3 + qword_1EDEBBC68), *(a3 + qword_1EDEBBC68 + 8), v12, v10, v11);
  if (v5)
  {
    return v14 & 1 | 0x600u;
  }

  return result;
}

uint64_t sub_1CF5CFBB8(uint64_t (*a1)(void *), uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4[82] & 0x20) == 0)
  {
    return a1(a3);
  }

  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E7298();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1CEFC7000, v15, v16, "Materialization or eviction waiting for flush", v17, 2u);
    MEMORY[0x1D386CDC0](v17, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v20 = *(*a4 + 456);
  swift_retain_n();
  v21 = a3;
  v20("itemDidMaterializeOrEvict(id:operation:error:with:)", 51, 2, 0, 0, 0, sub_1CF5E14F0, v18, sub_1CF5E1524, v19);
}

uint64_t sub_1CF5CFE1C(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void), uint64_t a4, uint64_t a5, uint64_t a6, ValueMetadata *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = a6;
  v32 = a7;
  v33 = a5;
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v19 = a2;
  v20 = sub_1CF9E6108();
  v21 = sub_1CF9E7298();

  if (os_log_type_enabled(v20, v21))
  {
    v29 = a4;
    v30 = a3;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    if (a2)
    {
      v24 = a2;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = v25;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    *(v22 + 4) = v25;
    *v23 = v26;
    _os_log_impl(&dword_1CEFC7000, v20, v21, "materializtion after injection failed with %@ skipping error", v22, 0xCu);
    sub_1CEFCCC44(v23, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v23, -1, -1);
    MEMORY[0x1D386CDC0](v22, -1, -1);
    a3 = v30;
  }

  (*(v14 + 8))(v17, v13);
  v34 = v31;
  v35 = v32;
  v36 = a9;
  v37 = a10;
  v34 = type metadata accessor for UserRequest();
  v35 = &type metadata for MaterializationRequestOptions;
  v36 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  v37 = sub_1CF9E6448();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a3(*(v33 + *(TupleTypeMetadata + 96)), *(v33 + *(TupleTypeMetadata + 96) + 8), 0);
}

uint64_t sub_1CF5D00A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a2;
  v46 = a5;
  v47 = a1;
  v48 = a4;
  v6 = *a3;
  v7 = sub_1CF9E6118();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v6[77];
  v43 = v6[78];
  v11 = v6[79];
  v44 = v6[80];
  v49 = v10;
  v50 = v43;
  v51 = v11;
  v52 = v44;
  v12 = type metadata accessor for ConcreteDatabase.MaterializationRequest();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - v17;
  v19 = *(v13 + 16);
  v19(&v39 - v17, v45, v12);
  v19(v16, v18, v12);
  v20 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v21 = v46;
  v22 = swift_allocObject();
  v45 = v10;
  *(v22 + 2) = v10;
  v23 = v43;
  v24 = v48;
  *(v22 + 3) = v43;
  *(v22 + 4) = v24;
  v39 = v11;
  *(v22 + 5) = v11;
  v25 = v44;
  *(v22 + 6) = v44;
  *(v22 + 7) = v21;
  (*(v13 + 32))(&v22[v20], v18, v12);
  if ((*(a3 + 82) & 0x20) != 0)
  {
    v27 = a3;
    v28 = v47;
    (*(v13 + 8))(v16, v12);
    v29 = fpfs_current_or_default_log();
    v30 = v40;
    sub_1CF9E6128();
    v31 = sub_1CF9E6108();
    v32 = sub_1CF9E7298();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1CEFC7000, v31, v32, "Materialization or eviction waiting for flush", v33, 2u);
      MEMORY[0x1D386CDC0](v33, -1, -1);
    }

    (*(v41 + 8))(v30, v42);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1CF5DED18;
    *(v34 + 24) = v22;
    v35 = swift_allocObject();
    v35[2] = sub_1CF5DED18;
    v35[3] = v22;
    v36 = v28;
    v35[4] = v28;
    v37 = *(*v27 + 456);
    swift_retain_n();
    v38 = v36;
    v37("itemDidMaterializeOrEvict(id:operation:error:with:)", 51, 2, 0, 0, 0, sub_1CF5E14F0, v34, sub_1CF5DEDFC, v35);
  }

  else
  {
    sub_1CF5D4EF4(v47, v16, v45, v23, v48, v39, v25, v21, &unk_1F4C0A6A8, sub_1CF5E14AC);

    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_1CF5D0548(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v69 = a7;
  v70 = a8;
  v63 = a6;
  v77 = a1;
  v78 = a5;
  v67 = a4;
  v66 = a2;
  v65 = a12;
  v64 = a11;
  v68 = a9;
  v13 = *a3;
  v73 = sub_1CF9E63A8();
  v76 = *(v73 - 8);
  v14 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6448();
  v74 = *(v16 - 8);
  v75 = v16;
  v17 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v13[77];
  v59 = v13[79];
  v20 = v59;
  v21 = v19;
  v61 = v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = AssociatedTypeWitness;
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = &v55 - v25;
  v56 = &v55 - v25;
  v60 = v13[78];
  *&v27 = v21;
  *(&v27 + 1) = v60;
  v58 = v13[80];
  v28 = a3;
  v57 = a3;
  *&v29 = v20;
  *(&v29 + 1) = v58;
  v81 = v29;
  aBlock = v27;
  v30 = type metadata accessor for ConcreteDatabase.MaterializationRequest();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v55 - v33;
  v62 = v28[8];
  (*(v31 + 16))(&v55 - v33, v63, v30);
  (*(v23 + 16))(v26, a10, AssociatedTypeWitness);
  v35 = (*(v31 + 80) + 96) & ~*(v31 + 80);
  v36 = (v32 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (*(v23 + 80) + v38 + 8) & ~*(v23 + 80);
  v40 = swift_allocObject();
  v41 = v60;
  *(v40 + 16) = v61;
  *(v40 + 24) = v41;
  v42 = v59;
  *(v40 + 32) = v64;
  *(v40 + 40) = v42;
  v43 = v65;
  *(v40 + 48) = v58;
  *(v40 + 56) = v43;
  *(v40 + 64) = v77;
  v66 &= 1u;
  *(v40 + 72) = v66;
  v44 = v78;
  *(v40 + 80) = v67;
  *(v40 + 88) = v44;
  (*(v31 + 32))(v40 + v35, v34, v30);
  v45 = (v40 + v36);
  v46 = v70;
  *v45 = v69;
  v45[1] = v46;
  v47 = v68;
  *(v40 + v37) = v68;
  *(v40 + v38) = v57;
  (*(v23 + 32))(v40 + v39, v56, v55);
  v82 = sub_1CF5DEAC4;
  v83 = v40;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v81 = sub_1CEFCA444;
  *(&v81 + 1) = &block_descriptor_32;
  v48 = _Block_copy(&aBlock);
  v49 = v62;
  sub_1CEFCF530(v77, v66);

  v50 = v47;

  v51 = v71;
  sub_1CF9E63F8();
  v79 = MEMORY[0x1E69E7CC0];
  sub_1CF5DFB70(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v53 = v72;
  v52 = v73;
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v51, v53, v48);
  _Block_release(v48);

  (*(v76 + 8))(v53, v52);
  (*(v74 + 8))(v51, v75);
}

char *sub_1CF5D0B84(uint64_t a1, char a2, void (**a3)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a4)(char *, uint64_t, uint64_t), char *a5, void (*a6)(void, unsigned int (*)(char *, uint64_t, uint64_t), uint64_t), uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v118 = a8;
  v117 = a7;
  v116 = a6;
  v150 = a5;
  v147 = a4;
  v148 = a3;
  v114 = a1;
  v11 = *(*a9 + 616);
  v12 = *(*a9 + 624);
  v13 = *a9;
  v14 = *(*a9 + 632);
  v121 = a9;
  v15 = *(v13 + 640);
  v152 = type metadata accessor for UserRequest();
  v153 = &type metadata for MaterializationRequestOptions;
  v154 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  v155 = sub_1CF9E6448();
  v156 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v17 = *(TupleTypeMetadata - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v112 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v151 = (&v112 - v26);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v112 - v27;
  v149 = v29;
  v132 = sub_1CF9E75D8();
  v30 = *(v132 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v132);
  v140 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v139 = &v112 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v131 = (&v112 - v36);
  if (a2)
  {
    return (v148)(v114);
  }

  v120 = a10;
  v152 = v11;
  v153 = v12;
  v154 = v14;
  v155 = v15;
  v38 = *&v150[*(type metadata accessor for ConcreteDatabase.MaterializationRequest() + 56)];
  v152 = v11;
  v153 = v12;
  v141 = v15;
  v142 = v14;
  v154 = v14;
  v155 = v15;
  type metadata accessor for UserRequest();
  v39 = *(v38 + 64);
  v130 = v38 + 64;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v39;
  v127 = v24 + 8;
  v122 = v21 + 8;
  v119 = v28 + 8;
  v115 = (v40 + 63) >> 6;
  v150 = (v17 + 16);
  v147 = (v17 + 48);
  v148 = (v17 + 56);
  v129 = (v30 + 32);
  v125 = (v17 + 8);
  v124 = v38;

  v43 = 0;
  v113 = (v114 + 40);
  v143 = v11;
  v128 = v12;
  v44 = v149;
  v126 = v17;
  v123 = v21;
  v146 = v24;
  v45 = v140;
  v133 = v28;
  while (v42)
  {
    v46 = v43;
LABEL_19:
    v49 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    (*(v17 + 16))(v45, *(v124 + 56) + *(v17 + 72) * (v49 | (v46 << 6)), v44);
    v50 = 0;
LABEL_20:
    v51 = *v148;
    v52 = 1;
    (*v148)(v45, v50, 1, v44);
    v53 = *v147;
    if ((*v147)(v45, 1, v44) != 1)
    {
      v54 = *(v44 + 80);
      v55 = *(v44 + 96);
      v144 = *v45;
      v138 = *(v45 + 2);
      v56 = sub_1CF9E6448();
      v57 = *(*(v56 - 8) + 32);
      v145 = v53;
      v58 = v133;
      v57(v133 + v54, &v45[v54], v56);
      v59 = swift_allocObject();
      v60 = v139;
      *(v59 + 16) = *&v140[v55];
      v61 = *(v149 + 80);
      v62 = &v60[*(v149 + 96)];
      *v60 = v144;
      *(v60 + 2) = v138;
      v63 = v58 + v54;
      v53 = v145;
      v57(&v60[v61], v63, v56);
      v44 = v149;
      v52 = 0;
      *v62 = sub_1CF5E14AC;
      v62[1] = v59;
    }

    v64 = v139;
    v51(v139, v52, 1, v44);
    v65 = v131;
    (*v129)(v131, v64, v132);
    if (v53(v65, 1, v44) == 1)
    {
    }

    v66 = v65[1];
    v67 = v65[2];
    v68 = *(v44 + 80);
    v69 = *(v44 + 96);
    v71 = *(v65 + v69);
    v70 = *(v65 + v69 + 8);
    v72 = v151;
    v73 = (v151 + v69);
    v138 = *v65;
    *v151 = v138;
    *(v72 + 1) = v66;
    v137 = v66;
    *(v72 + 2) = v67;
    v74 = sub_1CF9E6448();
    v75 = v65;
    v76 = v74;
    v77 = *(v74 - 8);
    v78 = *(v77 + 32);
    v136 = v68;
    v78(&v72[v68], v75 + v68, v74);
    *&v144 = v71;
    *v73 = v71;
    v73[1] = v70;
    v145 = v70;
    v79 = v146;
    v80 = *v150;
    (*v150)(v146, v72, v44);
    v81 = *v79;

    v82 = *(v44 + 80);
    v83 = *&v127[*(v44 + 96)];

    v84 = sub_1CF6656D8(v81);
    sub_1CF5DE5B8(v81);
    if (v84)
    {
      v85 = *(v77 + 8);
      v85(&v146[v82], v76);
      if ([v84 selectedForMaterialization])
      {
        v116(v144, v145, v118);

LABEL_7:
        v44 = v149;
        goto LABEL_8;
      }

      v135 = v85;
    }

    else
    {
      v135 = *(v77 + 8);
      v135(&v146[v82], v76);
    }

    v86 = v123;
    v44 = v149;
    v80(v123, v151, v149);
    v87 = *v86;

    v88 = *(v44 + 80);
    v89 = *&v122[*(v44 + 96)];

    v90 = sub_1CF6656D8(v87);
    sub_1CF5DE5B8(v87);
    v134 = v80;
    if (v90)
    {
      v91 = [v90 requestedExtent];
      v93 = v92;

      v94 = v86 + v88;
      v95 = v135;
      result = (v135)(v94, v76);
      if (v91 != -1)
      {
        v96 = v133;
        if (v93 != -1)
        {
          v97 = &v91[v93];
          if (__OFADD__(v91, v93))
          {
            goto LABEL_54;
          }

          if (v97 < v91)
          {
            goto LABEL_55;
          }

          v98 = *(v114 + 16) + 1;
          v99 = v113;
          while (--v98)
          {
            v100 = *(v99 - 1);
            if (v97 < v100)
            {
              break;
            }

            v102 = *v99;
            v99 += 2;
            v101 = v102;
            if (v91 >= v100 && v91 < v101 && v101 >= v97)
            {
              v116(v144, v145, v118);
              goto LABEL_7;
            }
          }
        }

        v44 = v149;
        goto LABEL_48;
      }

      v44 = v149;
    }

    else
    {
      v105 = v86 + v88;
      v95 = v135;
      v135(v105, v76);
    }

    v96 = v133;
LABEL_48:
    v106 = v76;
    v107 = v151;
    v108 = sub_1CF53499C(v120, v138, v137, v151 + v136, v144, v145);
    v134(v96, v107, v44);
    sub_1CF5DE5B8(*v96);
    v109 = v96[2];
    v110 = *(v44 + 80);
    v111 = *&v119[*(v44 + 96)];

    v95(v96 + v110, v106);
    result = [v109 totalUnitCount];
    if (__OFADD__(result, 1))
    {
      goto LABEL_53;
    }

    [v109 setTotalUnitCount_];
    [v109 addChild:v108 withPendingUnitCount:1];

LABEL_8:
    result = (*v125)(v151, v44);
    v17 = v126;
    v45 = v140;
  }

  if (v115 <= v43 + 1)
  {
    v47 = v43 + 1;
  }

  else
  {
    v47 = v115;
  }

  v48 = v47 - 1;
  while (1)
  {
    v46 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v46 >= v115)
    {
      v42 = 0;
      v50 = 1;
      v43 = v48;
      goto LABEL_20;
    }

    v42 = *(v130 + 8 * v46);
    ++v43;
    if (v42)
    {
      v43 = v46;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1CF5D1668(unsigned __int8 a1, void *a2, int a3, unint64_t a4, uint64_t a5, void *a6, char *a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t (*a11)())
{
  v170 = a8;
  v176 = a7;
  v177 = a5;
  v179 = a4;
  v180 = a6;
  LODWORD(v192) = a3;
  v189 = a1;
  v12 = sub_1CF9E6118();
  v168 = *(v12 - 8);
  v169 = v12;
  v13 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v167 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v166 = *(v178 - 8);
  v15 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v164 = &v162 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C0, &unk_1CFA058B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v165 = (&v162 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BC0, &qword_1CFA07A68);
  v172 = *(v20 - 8);
  v173 = v20;
  v21 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v174 = &v162 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DD0, &unk_1CF9FCB30);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v187 = &v162 - v25;
  v175 = sub_1CF9E6448();
  v183 = *(v175 - 8);
  v26 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v171 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v191 = &v162 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v184 = *(v31 - 8);
  v185 = v31;
  v32 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v181 = &v162 - v33;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v188 = *(v190 - 8);
  v34 = *(v188 + 64);
  v35 = MEMORY[0x1EEE9AC00](v190);
  v36 = &v162 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v162 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v162 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v186 = &v162 - v43;
  v44 = a2;
  v199 = a2;
  v45 = v192;
  v200 = v192;
  v162 = a9;
  v197 = a9;
  v163 = a10;
  v198 = a10;
  v46 = qword_1EDEBBC70;
  swift_beginAccess();
  v193 = a11;
  v182 = v46;
  v47 = *(a11 + v46);
  if (!*(v47 + 16))
  {
    goto LABEL_12;
  }

  v48 = sub_1CF7BF2C0(v44, v45);
  if ((v49 & 1) == 0)
  {
    goto LABEL_12;
  }

  v50 = v188;
  sub_1CEFCCBDC(*(v47 + 56) + *(v188 + 72) * v48, v42, &unk_1EC4C04C0, &qword_1CFA07B10);
  v51 = v186;
  sub_1CEFE55D0(v42, v186, &unk_1EC4C04C0, &qword_1CFA07B10);
  if (*v51 != v189)
  {
    sub_1CEFCCBDC(v51, v39, &unk_1EC4C04C0, &qword_1CFA07B10);
    sub_1CEFCCBDC(v39, v36, &unk_1EC4C04C0, &qword_1CFA07B10);
    v57 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v58 = swift_allocObject();
    sub_1CEFE55D0(v39, v58 + v57, &unk_1EC4C04C0, &qword_1CFA07B10);
    v59 = v193;
    if ((*(v193 + 82) & 0x20) != 0)
    {
      sub_1CEFCCC44(v36, &unk_1EC4C04C0, &qword_1CFA07B10);
      v62 = fpfs_current_or_default_log();
      v63 = v167;
      sub_1CF9E6128();
      v64 = sub_1CF9E6108();
      v65 = sub_1CF9E7298();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_1CEFC7000, v64, v65, "Wait for materialization waiting for flush", v66, 2u);
        MEMORY[0x1D386CDC0](v66, -1, -1);
      }

      (*(v168 + 8))(v63, v169);
      v67 = swift_allocObject();
      *(v67 + 16) = sub_1CF5DE6B8;
      *(v67 + 24) = v58;
      v68 = swift_allocObject();
      *(v68 + 16) = sub_1CF5DE6B8;
      *(v68 + 24) = v58;
      v69 = *(*v59 + 456);
      swift_retain_n();
      v69("waitFor(operation:of:request:options:progress:qos:skipCheckingTargetState:with:completion:)", 91, 2, 0, 0, 0, sub_1CF5E14F0, v67, sub_1CF5E14C8, v68);
    }

    else
    {
      sub_1CF4810BC();
      v60 = swift_allocError();
      *v61 = 0;
      sub_1CF5D49B4(v60, v36);

      sub_1CEFCCC44(v36, &unk_1EC4C04C0, &qword_1CFA07B10);
    }

    v70 = v199;
    v71 = v200;
    v72 = v187;
    (*(v50 + 56))(v187, 1, 1, v190);
    swift_beginAccess();
    sub_1CF1CA348(v72, v70, v71);
    swift_endAccess();

    sub_1CEFCCC44(v51, &unk_1EC4C04C0, &qword_1CFA07B10);
LABEL_12:
    v73 = v193;
    v74 = v191;
    (*(**(v193 + 4) + 240))(&v199, 1, &v197, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v75 = v185;
    if ((*(v184 + 48))(v74, 1, v185) == 1)
    {
      sub_1CEFCCC44(v74, &qword_1EC4C1B40, &unk_1CF9FCB70);
      if (v200 < 2u || v199)
      {
        sub_1CF4810BC();
        v110 = swift_allocError();
        *v111 = 1;
        sub_1CF5D5580(v110, v73);

        return 0;
      }

      v76 = &v187[*(v190 + 52)];
      sub_1CF9E6408();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B48, &qword_1CFA0CCF0);
      v77 = *(v172 + 72);
      v78 = (*(v172 + 80) + 32) & ~*(v172 + 80);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_1CF9FA450;
      v80 = (v79 + v78);
      v82 = v173;
      v81 = v174;
      v83 = v178;
      v84 = *(v173 + 48) + *(v178 + 80);
      v85 = v183;
      v86 = v175;
      (*(v183 + 16))(&v174[v84], v176, v175);
      v87 = v180;
      v192 = v80;
      *v80 = v180;
      v88 = v80 + *(v82 + 48);
      v89 = v179;
      v90 = v177;
      *v88 = v179;
      *(v88 + 1) = v90;
      *(v88 + 2) = v87;
      (*(v85 + 32))(&v88[*(v83 + 80)], &v81[v84], v86);
      v91 = &v88[*(v83 + 96)];
      *v91 = nullsub_1;
      *(v91 + 1) = 0;
      v92 = sub_1CF4E4B1C(v79);
      swift_setDeallocating();
      sub_1CEFD09A0(v89);
      v93 = v87;
      sub_1CEFCCC44(v192, &qword_1EC4C0BC0, &qword_1CFA07A68);
      swift_deallocClassInstance();
      v95 = v187;
      v94 = v188;
      *v187 = v189;
      *(v95 + *(v190 + 56)) = v92;
      (*(v94 + 56))(v95, 0, 1);
      swift_beginAccess();
      sub_1CF1CA348(v95, 0, 2);
      swift_endAccess();
      return 1;
    }

    v96 = v181;
    sub_1CEFE55D0(v74, v181, &unk_1EC4BE360, &qword_1CF9FE650);
    v97 = (v96 + *(v75 + 48));
    v98 = *v97;
    if (v98 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      v99 = swift_allocError();
      v101 = v100;
      sub_1CF5DE680(v196);
      *v101 = v196[0];
      v102 = v196[1];
      v103 = v196[2];
      v104 = v196[4];
      *(v101 + 48) = v196[3];
      *(v101 + 64) = v104;
      *(v101 + 16) = v102;
      *(v101 + 32) = v103;
      v105 = v196[5];
      v106 = v196[6];
      v107 = v196[7];
      *(v101 + 128) = v196[8];
      *(v101 + 96) = v106;
      *(v101 + 112) = v107;
      *(v101 + 80) = v105;
      v108 = v99;
LABEL_18:
      sub_1CF5D5580(v108, v73);

LABEL_19:
      sub_1CEFCCC44(v96, &unk_1EC4BE360, &qword_1CF9FE650);
      return 0;
    }

    if ((v170 & 1) == 0)
    {
      if ((v189 | 2) == 3)
      {
        if (v97[*(type metadata accessor for ItemMetadata() + 80)] == 1)
        {
          sub_1CF5D5580(0, v73);
          goto LABEL_25;
        }
      }

      else
      {
        v132 = *(v73 + 2);
        sub_1CF7EB934(v199, v200, v162, v163, v196);
        memcpy(v195, v196, sizeof(v195));
        v136 = sub_1CEFF755C(v195);
        if (v136 == 1)
        {
          memcpy(v194, v196, sizeof(v194));
          sub_1CEFCCC44(v194, &unk_1EC4BFC20, &unk_1CFA0A290);
          sub_1CF4810BC();
          v108 = swift_allocError();
          v99 = v108;
          *v137 = 1;
          goto LABEL_18;
        }

        memcpy(v194, v196, sizeof(v194));
        if (v194[32])
        {
          sub_1CF4810BC();
          v138 = swift_allocError();
          *v139 = 1;
          sub_1CF5D5580(v138, v73);

          sub_1CEFCCC44(v194, &unk_1EC4BFC20, &unk_1CFA0A290);
          goto LABEL_19;
        }

        v140 = BYTE1(v194[17]);
        if (v97[*(type metadata accessor for ItemMetadata() + 80)])
        {
          sub_1CEFCCC44(v194, &unk_1EC4BFC20, &unk_1CFA0A290);
        }

        else
        {
          sub_1CEFCCC44(v194, &unk_1EC4BFC20, &unk_1CFA0A290);
          if (v140 == 6)
          {
            sub_1CF5D5580(0, v73);
            if (!v189)
            {
              v112 = &unk_1EC4BFDB0;
              v113 = &unk_1CF9FAE50;
LABEL_26:
              v114 = __swift_instantiateConcreteTypeFromMangledNameV2(v112, v113);
              v115 = *(v73 + 3);
              v116 = sub_1CF8DCAA0();
              v117 = *(v116 + 52);
              v118 = (*(v116 + 48) + 7) & 0x1FFFFFFF8;
              v119 = swift_allocObject();
              *(v119 + 16) = xmmword_1CF9FA450;
              *(v119 + 32) = v114;
              v133 = (*(*v115 + 312))(v96, v119, &v197, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

              if (v133 >> 62)
              {
                v134 = sub_1CF9E7818();
              }

              else
              {
                v134 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v135 = v134 != 0;
              sub_1CEFCCC44(v96, &unk_1EC4BE360, &qword_1CF9FE650);

              return v135;
            }

LABEL_25:
            v112 = &qword_1EC4BDA50;
            v113 = &unk_1CFA05480;
            goto LABEL_26;
          }
        }
      }

      v98 = *v97;
    }

    v141 = v171;
    if (v98 == 1)
    {
      sub_1CF9E6408();
    }

    else
    {
      sub_1CF9E6418();
    }

    v192 = v199;
    v142 = *(v190 + 52);
    v143 = *(v183 + 16);
    LODWORD(v191) = v200;
    v144 = v175;
    v143(&v187[v142], v141, v175);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B48, &qword_1CFA0CCF0);
    v145 = *(v172 + 72);
    v146 = (*(v172 + 80) + 32) & ~*(v172 + 80);
    v147 = swift_allocObject();
    *(v147 + 16) = xmmword_1CF9FA450;
    v148 = (v147 + v146);
    v149 = v173;
    v150 = v174;
    v151 = v178;
    v152 = *(v173 + 48) + *(v178 + 80);
    v143(&v174[v152], v176, v144);
    v153 = v180;
    *v148 = v180;
    v154 = v148 + *(v149 + 48);
    v155 = v179;
    v156 = v177;
    *v154 = v179;
    *(v154 + 1) = v156;
    *(v154 + 2) = v153;
    (*(v183 + 32))(&v154[*(v151 + 80)], &v150[v152], v144);
    v157 = &v154[*(v151 + 96)];
    *v157 = nullsub_1;
    *(v157 + 1) = 0;
    v158 = sub_1CF4E4B1C(v147);
    swift_setDeallocating();
    sub_1CEFD09A0(v155);
    v159 = v153;
    sub_1CEFCCC44(v148, &qword_1EC4C0BC0, &qword_1CFA07A68);
    swift_deallocClassInstance();
    v161 = v187;
    v160 = v188;
    *v187 = v189;
    *(v161 + *(v190 + 56)) = v158;
    (*(v160 + 56))(v161, 0, 1);
    swift_beginAccess();
    sub_1CF1CA348(v161, v192, v191);
    swift_endAccess();
    (*(v183 + 8))(v171, v144);
    sub_1CEFCCC44(v181, &unk_1EC4BE360, &qword_1CF9FE650);
    return 1;
  }

  v52 = v199;
  v53 = v200;
  v54 = sub_1CF5A5660();
  v55 = sub_1CF598710(v195, v52, v53);
  if ((*(v50 + 48))(v56, 1, v190))
  {
    (v55)(v195, 0);
    (v54)(v196, 0);
  }

  else
  {
    v120 = v178;
    v121 = *(v178 + 80);
    v192 = v55;
    v193 = v54;
    v122 = v183;
    v123 = v164;
    v124 = v175;
    (*(v183 + 16))(&v164[v121], v176, v175);
    v125 = v179;
    v126 = v180;
    v127 = v165;
    v128 = v177;
    *v165 = v179;
    *(v127 + 8) = v128;
    *(v127 + 16) = v126;
    v129 = v124;
    v51 = v186;
    (*(v122 + 32))(v127 + *(v120 + 80), &v123[v121], v129);
    v130 = (v127 + *(v120 + 96));
    *v130 = nullsub_1;
    v130[1] = 0;
    (*(v166 + 56))(v127, 0, 1, v120);
    v131 = *(v190 + 56);
    sub_1CEFD09A0(v125);
    sub_1CF1CA0F4(v127, v126);
    (v192)(v195, 0);
    (v193)(v196, 0);
  }

  sub_1CEFCCC44(v51, &unk_1EC4C04C0, &qword_1CFA07B10);
  return 2;
}

uint64_t sub_1CF5D2970(int a1, void (*a2)(void, void), unint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, uint64_t a8, uint64_t (*a9)(void *), uint64_t a10, void (*a11)(void, void), uint64_t a12)
{
  v265 = a8;
  v226 = a7;
  v242 = a6;
  v247 = a5;
  v244 = a4;
  v246 = a3;
  v273 = a2;
  v261 = a1;
  v269 = a12;
  v271 = a11;
  v268 = a10;
  v267 = a9;
  v13 = *(*v12 + 616);
  v14 = *(*v12 + 624);
  v15 = *(*v12 + 632);
  v16 = *(*v12 + 640);
  v277 = type metadata accessor for UserRequest();
  v278 = &type metadata for MaterializationRequestOptions;
  v241 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  v279 = v241;
  v280 = sub_1CF9E6448();
  v281 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v231 = *(TupleTypeMetadata2 - 8);
  v18 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v233 = &v217 - v19;
  v245 = sub_1CF9E6448();
  v249 = *(v245 - 8);
  v20 = *(v249 + 64);
  v21 = MEMORY[0x1EEE9AC00](v245);
  v248 = &v217 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v230 = &v217 - v23;
  v277 = v13;
  v278 = v14;
  v279 = v15;
  v280 = v16;
  v24 = type metadata accessor for ItemReconciliation();
  v221 = sub_1CF9E75D8();
  v220 = *(v221 - 8);
  v25 = *(v220 + 64);
  v26 = MEMORY[0x1EEE9AC00](v221);
  v225 = &v217 - v27;
  v223 = v24;
  v224 = *(v24 - 8);
  v28 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v222 = &v217 - v29;
  v30 = type metadata accessor for SnapshotItem();
  v239 = sub_1CF9E75D8();
  v238 = *(v239 - 8);
  v31 = *(v238 + 64);
  v32 = MEMORY[0x1EEE9AC00](v239);
  v263 = &v217 - v33;
  v254 = v30;
  v251 = *(v30 - 8);
  v34 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v240 = &v217 - v35;
  v236 = sub_1CF9E6118();
  v235 = *(v236 - 8);
  v36 = *(v235 + 64);
  v37 = MEMORY[0x1EEE9AC00](v236);
  v234 = &v217 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = *(TupleTypeMetadata - 8);
  v39 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v227 = &v217 - v40;
  v243 = TupleTypeMetadata;
  v41 = sub_1CF9E75D8();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v229 = (&v217 - v43);
  v272 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v266 = *(AssociatedTypeWitness - 8);
  v45 = *(v266 + 64);
  v46 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v258 = &v217 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v250 = &v217 - v48;
  v277 = v13;
  v278 = v14;
  v259 = v14;
  v279 = v15;
  v280 = v16;
  v260 = v16;
  v49 = type metadata accessor for ConcreteDatabase.MaterializationRequest();
  v256 = sub_1CF9E75D8();
  v255 = *(v256 - 8);
  v50 = *(v255 + 64);
  v51 = MEMORY[0x1EEE9AC00](v256);
  v253 = &v217 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v55 = &v217 - v54;
  v56 = *(v49 - 1);
  v57 = *(v56 + 64);
  v58 = MEMORY[0x1EEE9AC00](v53);
  v257 = (&v217 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = MEMORY[0x1EEE9AC00](v58);
  v61 = &v217 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v217 - v62;
  v64 = qword_1EDEBBC70;
  swift_beginAccess();
  v270 = v12;
  v252 = v64;
  v65 = *(v12 + v64);
  v262 = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = *(AssociatedConformanceWitness + 40);

  v264 = v66;
  sub_1CF9E6728();

  v67 = *(v56 + 48);
  if (v67(v55, 1, v49) == 1)
  {
    v257 = v49;
    (*(v255 + 8))(v55, v256);
    v68 = v270;
    v69 = v269;
    goto LABEL_12;
  }

  v255 = *(v56 + 32);
  (v255)(v63, v55, v49);
  v70 = v63;
  if (*v63 != v261)
  {
    v219 = AssociatedTypeWitness;
    v74 = *(v56 + 16);
    v218 = v63;
    v74(v61);
    (v74)(v257, v61, v49);
    v75 = (*(v56 + 80) + 64) & ~*(v56 + 80);
    v76 = swift_allocObject();
    v77 = v272;
    v78 = v259;
    *(v76 + 2) = v272;
    *(v76 + 3) = v78;
    v256 = v56;
    v79 = v271;
    v80 = v262;
    *(v76 + 4) = v271;
    *(v76 + 5) = v80;
    v81 = v260;
    v82 = v269;
    *(v76 + 6) = v260;
    *(v76 + 7) = v82;
    (v255)(&v76[v75], v61, v49);
    v83 = v49;
    v68 = v270;
    v84 = *(v270 + 82);
    v250 = v76;
    if ((v84 & 0x20) != 0)
    {
      v56 = v256;
      v91 = v257;
      v92 = v83;
      v257 = *(v256 + 8);
      (v257)(v91, v83);
      v93 = fpfs_current_or_default_log();
      v94 = v234;
      sub_1CF9E6128();
      v95 = sub_1CF9E6108();
      v96 = sub_1CF9E7298();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_1CEFC7000, v95, v96, "Wait for materialization waiting for flush", v97, 2u);
        MEMORY[0x1D386CDC0](v97, -1, -1);
      }

      (*(v235 + 8))(v94, v236);
      v98 = swift_allocObject();
      *(v98 + 16) = sub_1CF5DE574;
      *(v98 + 24) = v76;
      v99 = swift_allocObject();
      *(v99 + 16) = sub_1CF5DE574;
      *(v99 + 24) = v76;
      v100 = (*v68)[57];
      swift_retain_n();
      v100("waitFor(operation:of:request:options:progress:qos:skipCheckingTargetState:with:completion:)", 91, 2, 0, 0, 0, sub_1CF5E14F0, v98, sub_1CF5DE594, v99);

      v83 = v92;
      v89 = v269;
      v90 = v257;
    }

    else
    {
      sub_1CF4810BC();
      v85 = swift_allocError();
      *v86 = 0;
      v87 = v257;
      v88 = v81;
      v89 = v269;
      sub_1CF5D4EF4(v85, v257, v77, v78, v79, v80, v88, v269, &unk_1F4C0A220, sub_1CF5DE5FC);

      v56 = v256;
      v90 = *(v256 + 8);
      (v90)(v87, v83);
    }

    AssociatedTypeWitness = v219;
    (*(v266 + 16))(v258, v273, v219);
    (*(v56 + 56))(v253, 1, 1, v83);
    swift_beginAccess();
    sub_1CF9E6708();
    sub_1CF9E6738();
    swift_endAccess();

    v257 = v83;
    (v90)(v218, v83);
    v69 = v89;
LABEL_12:
    v101 = v263;
    v102 = v273;
    (*(*v68[4] + 240))(v273, 1, v265, v271, v69);
    v104 = v251;
    v105 = v101;
    v106 = v101;
    v107 = v254;
    v108 = (*(v251 + 48))(v105, 1, v254);
    if (v108 == 1)
    {
      (*(v238 + 8))(v106, v239);
      v109 = v258;
      (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness);
      v110 = *(v264 + 8);
      v111 = sub_1CF9E6868();
      v112 = v266;
      (*(v266 + 8))(v109, AssociatedTypeWitness);
      if (v111)
      {
        (*(v112 + 16))(v109, v102, AssociatedTypeWitness);
        sub_1CF9E6408();
        v277 = v272;
        v278 = v259;
        v279 = v262;
        v280 = v260;
        v277 = type metadata accessor for UserRequest();
        v278 = &type metadata for MaterializationRequestOptions;
        v256 = v56;
        v113 = v245;
        v279 = v241;
        v280 = v245;
        v281 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
        v273 = swift_getTupleTypeMetadata();
        swift_getTupleTypeMetadata2();
        sub_1CF9E7FA8();
        v114 = *(v231 + 72);
        v115 = *(v231 + 80);
        swift_allocObject();
        v271 = sub_1CF9E6D68();
        v117 = v116;
        v118 = TupleTypeMetadata2;
        v119 = *(TupleTypeMetadata2 + 48);
        v120 = v243;
        v121 = *(v243 + 80);
        v219 = AssociatedTypeWitness;
        v122 = v119 + v121;
        v123 = v249;
        v124 = v233;
        (*(v249 + 16))(&v233[v119 + v121], v242, v113);
        v125 = v247;
        *v117 = v247;
        v126 = v117 + *(v118 + 48);
        v127 = v246;
        v128 = v244;
        *v126 = v246;
        *(v126 + 1) = v128;
        *(v126 + 2) = v125;
        (*(v123 + 32))(&v126[*(v120 + 80)], &v124[v122], v113);
        v129 = &v126[*(v120 + 96)];
        v130 = swift_allocObject();
        v131 = v268;
        *(v130 + 16) = v267;
        *(v130 + 24) = v131;
        *v129 = sub_1CF5DE548;
        *(v129 + 1) = v130;
        v132 = sub_1CF045898(v271);
        sub_1CEFD09A0(v127);
        v133 = v125;

        v134 = sub_1CF04F294(v132, MEMORY[0x1E69E5FE0], v273, MEMORY[0x1E69E5FE8]);

        v135 = v253;
        sub_1CF5B76D4(v261, v248, v134, v253);
        (*(v256 + 56))(v135, 0, 1, v257);
        swift_beginAccess();
        sub_1CF9E6708();
        sub_1CF9E6738();
        swift_endAccess();
        return 1;
      }

      sub_1CF4810BC();
      v156 = swift_allocError();
      *v157 = 1;
      sub_1CF5D57A0(v156, v68, v267, v268);

      return 0;
    }

    v256 = v56;
    v136 = v240;
    (*(v104 + 32))(v240, v106, v107);
    WitnessTable = swift_getWitnessTable();
    sub_1CF06D940(v107, WitnessTable, &v277);
    if (v277 == 2)
    {
      type metadata accessor for FileTreeError();
      swift_getWitnessTable();
      v138 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      sub_1CF5D57A0(v138, v68, v267, v268);

      (*(v104 + 8))(v136, v107);
      return 0;
    }

    v158 = v136;
    v159 = v271;
    if (v226)
    {
      goto LABEL_40;
    }

    if ((v261 | 2) == 3)
    {
      if ((sub_1CF937C7C(v254, WitnessTable) & 1) == 0)
      {
LABEL_40:
        sub_1CF06D940(v254, WitnessTable, &v277);
        v191 = v262;
        v192 = v230;
        if (v277 == 1)
        {
          sub_1CF9E6408();
        }

        else
        {
          sub_1CF9E6418();
        }

        v193 = *(v266 + 16);
        v219 = AssociatedTypeWitness;
        v193(v258, v273, AssociatedTypeWitness);
        v194 = *(v249 + 16);
        v195 = v192;
        v196 = v245;
        v194(v248, v195);
        v277 = v272;
        v278 = v259;
        v279 = v191;
        v280 = v260;
        v277 = type metadata accessor for UserRequest();
        v278 = &type metadata for MaterializationRequestOptions;
        v279 = v241;
        v280 = v196;
        v197 = v196;
        v281 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
        v273 = swift_getTupleTypeMetadata();
        v271 = swift_getTupleTypeMetadata2();
        sub_1CF9E7FA8();
        v198 = *(v231 + 72);
        v199 = *(v231 + 80);
        swift_allocObject();
        v103 = 1;
        v270 = sub_1CF9E6D68();
        v201 = v200;
        v202 = TupleTypeMetadata2;
        v203 = v243;
        v204 = *(TupleTypeMetadata2 + 48) + *(v243 + 80);
        v205 = v233;
        (v194)(&v233[v204], v242, v197);
        v206 = v247;
        *v201 = v247;
        v207 = v201 + *(v202 + 48);
        v208 = v246;
        v209 = v244;
        *v207 = v246;
        *(v207 + 1) = v209;
        *(v207 + 2) = v206;
        (*(v249 + 32))(&v207[*(v203 + 80)], &v205[v204], v197);
        v210 = &v207[*(v203 + 96)];
        v211 = swift_allocObject();
        v212 = v268;
        *(v211 + 16) = v267;
        *(v211 + 24) = v212;
        *v210 = sub_1CF5E1588;
        *(v210 + 1) = v211;
        v213 = sub_1CF045898(v270);
        sub_1CEFD09A0(v208);
        v214 = v206;

        v215 = sub_1CF04F294(v213, MEMORY[0x1E69E5FE0], v273, MEMORY[0x1E69E5FE8]);

        v216 = v253;
        sub_1CF5B76D4(v261, v248, v215, v253);
        (*(v256 + 56))(v216, 0, 1, v257);
        swift_beginAccess();
        sub_1CF9E6708();
        sub_1CF9E6738();
        swift_endAccess();
        (*(v249 + 8))(v230, v197);
        (*(v251 + 8))(v240, v254);
        return v103;
      }

      sub_1CF5D57A0(0, v68, v267, v268);
    }

    else
    {
      v175 = v68[2];
      v176 = v225;
      sub_1CF68DDB0(v273, v265, v271, v69, v225);
      v179 = v224;
      v180 = v176;
      v181 = v176;
      v182 = v223;
      v183 = (*(v224 + 48))(v180, 1, v223);
      if (v183 == 1)
      {
        (*(v220 + 8))(v181, v221);
        sub_1CF4810BC();
        v184 = swift_allocError();
        *v185 = 1;
        sub_1CF5D57A0(v184, v68, v267, v268);

LABEL_34:
        (*(v251 + 8))(v158, v254);
        return 0;
      }

      v186 = v222;
      (*(v179 + 32))();
      v187 = &v186[*(v182 + 52)];
      if (*&v187[*(type metadata accessor for ItemReconciliationHalf() + 36)])
      {
        sub_1CF4810BC();
        v188 = swift_allocError();
        *v189 = 1;
        sub_1CF5D57A0(v188, v68, v267, v268);

        (*(v224 + 8))(v186, v182);
        goto LABEL_34;
      }

      if (sub_1CF937C7C(v254, WitnessTable))
      {
        (*(v224 + 8))(v222, v182);
        goto LABEL_40;
      }

      v190 = v222[*(type metadata accessor for ItemReconciliationHalf() + 56)];
      (*(v224 + 8))();
      if (v190 != 6)
      {
        goto LABEL_40;
      }

      sub_1CF5D57A0(0, v68, v267, v268);
      if (!v261)
      {
        v160 = v272;
        v162 = v259;
        v277 = v272;
        v278 = v259;
        v163 = v262;
        v161 = v260;
        v279 = v262;
        v280 = v260;
        v164 = type metadata accessor for Materialization.EvictItem();
        goto LABEL_29;
      }
    }

    v160 = v272;
    v161 = v260;
    v162 = v259;
    v163 = v262;
    v277 = v272;
    v278 = v259;
    v279 = v262;
    v280 = v260;
    v164 = type metadata accessor for Materialization.MaterializeItem();
LABEL_29:
    v165 = v164;
    v166 = v68[3];
    v277 = v160;
    v278 = v162;
    v279 = v163;
    v280 = v161;
    type metadata accessor for ItemJob();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v168 = sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
    v169 = *(v168 + 52);
    v170 = (*(v168 + 48) + 7) & 0x1FFFFFFF8;
    swift_allocObject();
    v171 = sub_1CF9E6D68();
    *v172 = v165;
    v173 = sub_1CF045898(v171);
    v174 = v240;
    v177 = (*(*v166 + 312))(v240, v173, v265, v159, v69);

    v277 = v177;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    v178 = sub_1CF9E7128();
    (*(v251 + 8))(v174, v254);

    return (v178 & 1) == 0;
  }

  v71 = v266;
  v72 = v250;
  (*(v266 + 16))(v250, v273, AssociatedTypeWitness);
  v273 = sub_1CF5A5660();
  sub_1CF9E6708();
  v271 = sub_1CF9E6718();
  if (v67(v73, 1, v49))
  {
    v271(v275, 0);
    (*(v71 + 8))(v72, AssociatedTypeWitness);
  }

  else
  {
    v218 = v70;
    v139 = v243;
    v140 = *(v243 + 80);
    v256 = v56;
    v141 = v249;
    v142 = v227;
    v143 = v49;
    v144 = v245;
    (*(v249 + 16))(&v227[v140], v242, v245);
    v145 = v246;
    v219 = AssociatedTypeWitness;
    v146 = v229;
    v147 = v244;
    *v229 = v246;
    *(v146 + 1) = v147;
    v148 = v247;
    *(v146 + 2) = v247;
    (*(v141 + 32))(&v146[*(v139 + 80)], &v142[v140], v144);
    v149 = &v146[*(v139 + 96)];
    v150 = swift_allocObject();
    v151 = v268;
    *(v150 + 16) = v267;
    *(v150 + 24) = v151;
    *v149 = sub_1CF5E1588;
    *(v149 + 1) = v150;
    v152 = v139;
    v70 = v218;
    (*(v228 + 56))(v146, 0, 1, v152);
    v274 = v148;
    v153 = *(v143 + 14);
    sub_1CEFD09A0(v145);
    v154 = v148;
    v56 = v256;

    v277 = v272;
    v278 = v259;
    v279 = v262;
    v280 = v260;
    v277 = type metadata accessor for UserRequest();
    v278 = &type metadata for MaterializationRequestOptions;
    v279 = v241;
    v280 = v144;
    v49 = v143;
    v281 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
    swift_getTupleTypeMetadata();
    sub_1CF9E6708();
    sub_1CF9E6738();
    v271(v275, 0);
    (*(v266 + 8))(v250, v219);
  }

  v273(v276, 0);
  (*(v56 + 8))(v70, v49);
  return 2;
}

uint64_t sub_1CF5D49B4(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v63 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C0, &unk_1CFA058B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v67 = (&v55 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v55 - v16;
  v17 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10) + 56));
  v18 = *(v17 + 64);
  v56 = v17 + 64;
  v57 = v4;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v55 = (v19 + 63) >> 6;
  v70 = (v4 + 48);
  v71 = (v4 + 56);
  v58 = v17;

  v23 = 0;
  v62 = v13;
  if (v21)
  {
    while (1)
    {
      v24 = v23;
LABEL_11:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      sub_1CEFCCBDC(*(v58 + 56) + *(v57 + 72) * (v26 | (v24 << 6)), v13, &unk_1EC4C04B0, &unk_1CF9FCB20);
      v27 = 0;
      v69 = v24;
LABEL_12:
      v28 = *v71;
      v29 = 1;
      (*v71)(v13, v27, 1, v3);
      v30 = *v70;
      if ((*v70)(v13, 1, v3) != 1)
      {
        v31 = *(v3 + 80);
        v32 = *(v3 + 96);
        v61 = *v13;
        v33 = *(v13 + 2);
        v59 = v32;
        v60 = v33;
        v34 = sub_1CF9E6448();
        v35 = *(*(v34 - 8) + 32);
        *&v68 = v30;
        v36 = v66;
        v35(&v66[v31], &v13[v31], v34);
        v37 = swift_allocObject();
        *(v37 + 16) = *&v13[v59];
        v38 = *(v3 + 80);
        v39 = v67;
        v40 = (v67 + *(v3 + 96));
        *v67 = v61;
        *(v39 + 2) = v60;
        v35(v39 + v38, &v36[v31], v34);
        v30 = v68;
        v29 = 0;
        *v40 = sub_1CF5E14AC;
        v40[1] = v37;
      }

      v41 = v67;
      v28(v67, v29, 1, v3);
      v42 = v65;
      sub_1CEFE55D0(v41, v65, &qword_1EC4BE1C0, &unk_1CFA058B0);
      if (v30(v42, 1, v3) == 1)
      {
      }

      v43 = *(v42 + 16);
      v44 = *(v3 + 80);
      v45 = *(v3 + 96);
      v46 = v66;
      *v66 = *v42;
      *(v46 + 16) = v43;
      v47 = sub_1CF9E6448();
      v48 = *(v47 - 8);
      v49 = *(v48 + 32);
      v68 = *(v42 + v45);
      v49(v46 + v44, v42 + v44, v47);
      *(v46 + v45) = v68;
      v50 = v63;
      sub_1CEFCCBDC(v46, v63, &unk_1EC4C04B0, &unk_1CF9FCB20);
      sub_1CF5DE5B8(*v50);

      v51 = *(v3 + 80);
      v52 = v50 + *(v3 + 96);
      v53 = *(v52 + 8);
      (*v52)(v64);

      v54 = v46;
      v13 = v62;
      sub_1CEFCCC44(v54, &unk_1EC4C04B0, &unk_1CF9FCB20);
      result = (*(v48 + 8))(v50 + v51, v47);
      v23 = v69;
      if (!v21)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v55 <= v23 + 1)
    {
      v25 = v23 + 1;
    }

    else
    {
      v25 = v55;
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v55)
      {
        v69 = v25 - 1;
        v21 = 0;
        v27 = 1;
        goto LABEL_12;
      }

      v21 = *(v56 + 8 * v24);
      ++v23;
      if (v21)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5D4EF4(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v69 = a10;
  v68 = a9;
  v88 = type metadata accessor for UserRequest();
  v89 = &type metadata for MaterializationRequestOptions;
  v90 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  v91 = sub_1CF9E6448();
  v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v17 = *(TupleTypeMetadata - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = (&v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v81 = (&v65 - v22);
  v79 = sub_1CF9E75D8();
  v85 = *(v79 - 8);
  v23 = *(v85 + 64);
  v24 = MEMORY[0x1EEE9AC00](v79);
  v80 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v82 = (&v65 - v27);
  MEMORY[0x1EEE9AC00](v26);
  v78 = &v65 - v28;
  v88 = a3;
  v89 = a4;
  v90 = a6;
  v91 = a7;
  v29 = *(a2 + *(type metadata accessor for ConcreteDatabase.MaterializationRequest() + 56));
  v88 = a3;
  v89 = a4;
  v90 = a6;
  v91 = a7;
  type metadata accessor for UserRequest();
  v30 = *(v29 + 64);
  v66 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v65 = (v31 + 63) >> 6;
  v83 = (v17 + 16);
  v86 = (v17 + 48);
  v87 = (v17 + 56);
  v77 = (v85 + 32);
  v71 = v17;
  v76 = (v17 + 8);
  v72 = v29;

  v35 = 0;
  v70 = a1;
  v67 = v21;
  if (v33)
  {
    while (1)
    {
      v36 = v35;
      v37 = v80;
LABEL_12:
      v39 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      (*(v71 + 16))(v37, *(v72 + 56) + *(v71 + 72) * (v39 | (v36 << 6)), TupleTypeMetadata);
      v40 = 0;
      v85 = v36;
LABEL_13:
      v41 = *v87;
      v42 = 1;
      (*v87)(v37, v40, 1, TupleTypeMetadata);
      v43 = *v86;
      if ((*v86)(v37, 1, TupleTypeMetadata) != 1)
      {
        v44 = *(TupleTypeMetadata + 80);
        v73 = *(TupleTypeMetadata + 96);
        v75 = *v37;
        v74 = *(v37 + 2);
        v45 = sub_1CF9E6448();
        v46 = *(*(v45 - 8) + 32);
        *&v84 = v43;
        v47 = v81;
        v46(v81 + v44, &v37[v44], v45);
        v48 = swift_allocObject();
        *(v48 + 16) = *&v37[v73];
        v49 = *(TupleTypeMetadata + 80);
        v50 = v82;
        v51 = (v82 + *(TupleTypeMetadata + 96));
        *v82 = v75;
        *(v50 + 2) = v74;
        v52 = v47 + v44;
        v43 = v84;
        a1 = v70;
        v46(v50 + v49, v52, v45);
        v21 = v67;
        v42 = 0;
        *v51 = v69;
        v51[1] = v48;
      }

      v53 = v82;
      v41(v82, v42, 1, TupleTypeMetadata);
      v54 = v78;
      (*v77)(v78, v53, v79);
      if (v43(v54, 1, TupleTypeMetadata) == 1)
      {
      }

      v55 = *(v54 + 2);
      v56 = *(TupleTypeMetadata + 80);
      v57 = *(TupleTypeMetadata + 96);
      v58 = v81;
      *v81 = *v54;
      *(v58 + 2) = v55;
      v59 = sub_1CF9E6448();
      v60 = *(v59 - 8);
      v61 = *(v60 + 32);
      v84 = *&v54[v57];
      v61(v58 + v56, &v54[v56], v59);
      *(v58 + v57) = v84;
      (*v83)(v21, v58, TupleTypeMetadata);
      sub_1CF5DE5B8(*v21);

      v62 = *(TupleTypeMetadata + 80);
      v63 = v21 + *(TupleTypeMetadata + 96);
      v64 = *(v63 + 1);
      (*v63)(a1);

      (*v76)(v58, TupleTypeMetadata);
      result = (*(v60 + 8))(v21 + v62, v59);
      v35 = v85;
      if (!v33)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v65 <= v35 + 1)
    {
      v38 = v35 + 1;
    }

    else
    {
      v38 = v65;
    }

    v37 = v80;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v65)
      {
        v85 = v38 - 1;
        v33 = 0;
        v40 = 1;
        goto LABEL_13;
      }

      v33 = *(v66 + 8 * v36);
      ++v35;
      if (v33)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5D5580(void *a1, _BYTE *a2)
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2[82] & 0x20) != 0)
  {
    v10 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v11 = sub_1CF9E6108();
    v12 = sub_1CF9E7298();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1CEFC7000, v11, v12, "Wait for materialization waiting for flush", v13, 2u);
      MEMORY[0x1D386CDC0](v13, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    v14 = swift_allocObject();
    v14[2] = nullsub_1;
    v14[3] = 0;
    v14[4] = a1;
    v15 = *(*a2 + 456);
    v16 = a1;
    v15("waitFor(operation:of:request:options:progress:qos:skipCheckingTargetState:with:completion:)", 91, 2, 0, 0, 0, nullsub_1, 0, sub_1CF5E150C, v14);
  }

  return result;
}