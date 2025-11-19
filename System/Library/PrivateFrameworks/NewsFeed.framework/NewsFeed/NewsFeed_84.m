uint64_t sub_1D62CC354(uint64_t a1)
{
  v3 = v1;
  v28 = *v1;
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v22 = v6;
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for WebEmbedDataVisualizationDataRequest(0) + 24);
  v24 = a1;
  v25 = v9;
  v26 = v3;
  v27 = a1;
  v20 = type metadata accessor for WebEmbedDataVisualizationDataResult(0);
  sub_1D725BDCC();
  v23 = *(v5 + 16);
  v19 = v4;
  v23(v8, a1 + v9, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v21 = *(v5 + 32);
  v21(v11 + v10, v8, v4);
  v12 = sub_1D725B92C();
  sub_1D725BAAC();

  v13 = v19;
  v23(v8, v24 + v25, v19);
  v14 = swift_allocObject();
  v21(v14 + v10, v8, v13);
  v15 = sub_1D725B92C();
  v16 = sub_1D725BADC();

  return v16;
}

uint64_t sub_1D62CC5F0()
{
  if (qword_1EDF0E798 != -1)
  {
    swift_once();
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7273AE0;
  type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v1 = sub_1D72583DC();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D5B7E2C0();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  sub_1D7262EDC();
  sub_1D725C30C();
}

uint64_t sub_1D62CC718()
{
  if (qword_1EDF0E798 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7270C10;
  type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v1 = sub_1D72583DC();
  v3 = v2;
  v4 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1D5B7E2C0();
  *(v0 + 64) = v5;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  sub_1D725C30C();
}

uint64_t sub_1D62CC8A4()
{
  sub_1D5D077AC(0, &qword_1EDF3B8E0, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D62CC928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v56 = a3;
  v52 = a2;
  v4 = sub_1D725895C();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebEmbedDataVisualization();
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62D5684(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = sub_1D72585BC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v55;
  sub_1D62CCFA8(v15);
  if (v21)
  {

    (*(v17 + 56))(v15, 1, 1, v16);
    sub_1D62D4718(v15, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    if (qword_1EDF0E798 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D7273AE0;
    v23 = sub_1D72583DC();
    v25 = v24;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1D5B7E2C0();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    sub_1D725C30C();

    v26 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
    return (*(*(v26 - 8) + 56))(v56, 1, 1, v26);
  }

  else
  {
    v47 = v11;
    v49 = v7;
    v55 = 0;
    (*(v17 + 56))(v15, 0, 1, v16);
    (*(v17 + 32))(v20, v15, v16);
    sub_1D725B86C();
    v50 = a1;
    v48 = v16;
    v28 = v20;
    if (v57)
    {
      v29 = *(v57 + 16);

      os_unfair_lock_lock((v29 + 24));
      v46 = *(v29 + 16);

      os_unfair_lock_unlock((v29 + 24));
    }

    else
    {
      v46 = MEMORY[0x1E69E7CD0];
    }

    v30 = v52;
    v31 = v47;
    v44 = type metadata accessor for WebEmbedDataVisualization;
    sub_1D62D47DC(v52, v47, type metadata accessor for WebEmbedDataVisualization);
    LODWORD(v52) = swift_getEnumCaseMultiPayload() == 1;
    sub_1D5BF1B4C(v31, type metadata accessor for WebEmbedDataVisualization);
    v32 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
    v33 = v32[7];
    v47 = *(v17 + 16);
    v34 = v56;
    v45 = v28;
    v35 = v48;
    v47(v56 + v33, v28, v48);
    sub_1D62D5684(0, &qword_1EDF01F70, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6F90]);
    v36 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D7273AE0;
    sub_1D62D47DC(v30, v37 + v36, v44);
    v38 = sub_1D5EEFCFC(v37, v46);
    swift_setDeallocating();
    sub_1D5BF1B4C(v37 + v36, type metadata accessor for WebEmbedDataVisualization);
    swift_deallocClassInstance();
    v39 = v49;
    sub_1D725894C();
    v40 = sub_1D725893C();
    v42 = v41;
    (*(v53 + 8))(v39, v54);
    (*(v17 + 8))(v45, v35);
    *v34 = v40;
    *(v34 + 8) = v42;
    *(v34 + 16) = v52;
    v47(v34 + v32[6], v50, v35);
    *(v34 + v32[8]) = v38;
    return (*(*(v32 - 1) + 56))(v34, 0, 1, v32);
  }
}

uint64_t sub_1D62CCFA8@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D62D5684(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v21 - v5;
  sub_1D62D5684(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v2);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v21 - v9;
  v11 = sub_1D7257C7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7257BCC();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D62D4718(v10, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    sub_1D62D4788();
    swift_allocError();
    *v16 = 3;
    return swift_willThrow();
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    sub_1D7257C1C();
    sub_1D7257BDC();
    v18 = sub_1D72585BC();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v6, 1, v18) == 1)
    {
      sub_1D62D4718(v6, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D62D4788();
      swift_allocError();
      *v20 = 4;
      swift_willThrow();
      return (*(v12 + 8))(v15, v11);
    }

    else
    {
      (*(v12 + 8))(v15, v11);
      return (*(v19 + 32))(a1, v6, v18);
    }
  }
}

uint64_t sub_1D62CD300@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D725B86C();
  if (v15)
  {
    v3 = *(v15 + 16);

    os_unfair_lock_lock((v3 + 24));
    v4 = *(v3 + 16);

    os_unfair_lock_unlock((v3 + 24));

    v5 = sub_1D5F215E4(v4);
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  if (qword_1EDF0E798 != -1)
  {
    swift_once();
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7270C10;
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D5B7E2C0();
  *(v8 + 64) = v10;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v11 = sub_1D72583DC();
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = v11;
  *(v8 + 80) = v12;
  sub_1D7262EDC();
  sub_1D725C30C();

  sub_1D6CCF50C(a1);
  return sub_1D62D47DC(a1, a2, type metadata accessor for WebEmbedDataVisualizationDataResult);
}

uint64_t sub_1D62CD4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D725B86C();
  if (v16)
  {
    v5 = *(v16 + 16);

    os_unfair_lock_lock((v5 + 24));
    v6 = *(v5 + 16);

    os_unfair_lock_unlock((v5 + 24));

    v7 = sub_1D5F215E4(v6);
    v9 = v8;
  }

  else
  {
    v9 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
  }

  if (qword_1EDF0E798 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7279970;
  v11 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D5B7E2C0();
  *(v10 + 64) = v12;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  v13 = sub_1D72583DC();
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = v13;
  *(v10 + 80) = v14;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  *(v10 + 136) = v11;
  *(v10 + 144) = v12;
  *(v10 + 112) = 0;
  *(v10 + 120) = 0xE000000000000000;
  sub_1D725C30C();

  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  result = sub_1D5F1FC7C(a3);
  if (result)
  {
    sub_1D6CCF888(a3, result, 30);
  }

  return result;
}

uint64_t sub_1D62CD730(uint64_t a1)
{
  v20 = *v1;
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v17 = v6;
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1;
  v22 = a1;
  v15 = v1;
  v19 = a1;
  type metadata accessor for WebEmbedDataVisualizationDataResult(0);
  sub_1D725BDCC();
  v18 = *(v4 + 16);
  v18(v7, a1, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v16 = *(v4 + 32);
  v16(v9 + v8, v7, v3);
  v10 = sub_1D725B92C();
  sub_1D725BAAC();

  v18(v7, v19, v3);
  v11 = swift_allocObject();
  v16(v11 + v8, v7, v3);
  v12 = sub_1D725B92C();
  v13 = sub_1D725BADC();

  return v13;
}

uint64_t sub_1D62CD9B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725895C();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v53 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  MEMORY[0x1EEE9AC00](v52, v7);
  v56 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D72585BC();
  v57 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v60 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62D5684(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v50 - v14;
  v16 = type metadata accessor for WebEmbedDataVisualization();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v59 = v50 - v23;
  v24 = *(a1 + 72);
  v25 = a2;
  sub_1D725B86C();
  v26 = v61;
  if (!v61)
  {
    goto LABEL_4;
  }

  v51 = v9;
  v27 = a1;
  v24 = *(v61 + 16);

  os_unfair_lock_lock((v24 + 24));
  v28 = *(v24 + 16);

  os_unfair_lock_unlock((v24 + 24));

  sub_1D5FCFDD0(v28, v15);

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_1D62D4718(v15, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
LABEL_4:
    sub_1D62D4788();
    swift_allocError();
    *v29 = 2;
    swift_willThrow();
    return v24;
  }

  v30 = v59;
  sub_1D5BE74F4(v15, v59, type metadata accessor for WebEmbedDataVisualization);
  v31 = v60;
  v24 = v27;
  v32 = v58;
  sub_1D62CCFA8(v60);
  if (v32)
  {
    sub_1D5BF1B4C(v30, type metadata accessor for WebEmbedDataVisualization);
  }

  else
  {
    sub_1D62D47DC(v30, v20, type metadata accessor for WebEmbedDataVisualization);
    LODWORD(v58) = swift_getEnumCaseMultiPayload() == 1;
    sub_1D5BF1B4C(v20, type metadata accessor for WebEmbedDataVisualization);
    v33 = v52;
    v34 = *(v52 + 24);
    v50[1] = v27;
    v35 = v31;
    v36 = *(v57 + 16);
    v37 = v56;
    v38 = v25;
    v39 = v51;
    v36(&v56[v34], v38, v51);
    v36(&v37[*(v33 + 28)], v35, v39);
    v40 = v37;
    v41 = *(v26 + 16);

    os_unfair_lock_lock((v41 + 24));
    v42 = *(v41 + 16);

    os_unfair_lock_unlock((v41 + 24));

    v43 = v53;
    sub_1D725894C();
    v44 = sub_1D725893C();
    v46 = v45;
    (*(v54 + 8))(v43, v55);
    *v40 = v44;
    *(v40 + 8) = v46;
    *(v40 + 16) = v58;
    *(v40 + *(v33 + 32)) = v42;
    v47 = sub_1D62CC354(v40);
    v48 = v59;
    v24 = v47;

    sub_1D5BF1B4C(v40, type metadata accessor for WebEmbedDataVisualizationDataRequest);
    (*(v57 + 8))(v60, v51);
    sub_1D5BF1B4C(v48, type metadata accessor for WebEmbedDataVisualization);
  }

  return v24;
}

void sub_1D62CDFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D725B86C();
  if (v12)
  {
    v5 = *(v12 + 16);

    os_unfair_lock_lock((v5 + 24));
    v6 = *(v5 + 16);

    os_unfair_lock_unlock((v5 + 24));

    if (*(v6 + 16))
    {
      (sub_1D62CE158)(a3, v6, *(a1 + 16), 0);

      return;
    }
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7273AE0;
  v8 = sub_1D72583DC();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D5B7E2C0();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_1D5B5A498(0, &qword_1EDF3C6A0);
  v11 = sub_1D72638FC();
  sub_1D7262EDC();
  sub_1D725C30C();
}

void sub_1D62CE158(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v58 = a4;
  v7 = sub_1D7261B5C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v50 - v14;
  v16 = sub_1D72585BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    v57 = v20;
    v59 = a1;
    v51 = v11;
    v52 = v15;
    v22 = a3;
    v53 = v8;
    v54 = v7;
    if (qword_1EDF0E798 != -1)
    {
      swift_once();
    }

    v55 = qword_1EDFFC588;
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7279970;
    v56 = a2;
    v24 = sub_1D5F215E4(a2);
    v26 = v25;
    v27 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v28 = sub_1D5B7E2C0();
    v29 = v28;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    v30 = MEMORY[0x1E69E6438];
    *(v23 + 96) = MEMORY[0x1E69E63B0];
    *(v23 + 104) = v30;
    v31 = (v58 & 1) == 0;
    v58 &= 1u;
    v50 = v22;
    if (v31)
    {
      v32 = v22;
    }

    else
    {
      v32 = 0;
    }

    *(v23 + 64) = v28;
    *(v23 + 72) = v32;
    v33 = v59;
    v34 = sub_1D72583DC();
    *(v23 + 136) = v27;
    *(v23 + 144) = v29;
    *(v23 + 112) = v34;
    *(v23 + 120) = v35;
    sub_1D7262EDC();
    sub_1D725C30C();

    v36 = swift_allocObject();
    swift_weakInit();
    v37 = *(v17 + 16);
    v38 = v33;
    v39 = v57;
    v37(&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v57);
    v40 = (*(v17 + 80) + 24) & ~*(v17 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v36;
    (*(v17 + 32))(v41 + v40, &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v39);
    aBlock[4] = sub_1D62D5298;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_32;
    v42 = _Block_copy(aBlock);
    type metadata accessor for WebEmbedDataSourceWorkItem();
    swift_allocObject();
    v43 = v56;

    v44 = sub_1D70DDDF0(v43, v42);
    _Block_release(v42);

    v37(v21, v59, v39);
    aBlock[0] = v44;

    sub_1D725B87C();
    if (v58)
    {

      sub_1D72630AC();
    }

    else
    {
      v45 = v51;
      sub_1D7261B4C();
      v46 = v52;
      sub_1D7261BAC();
      v47 = *(v53 + 8);
      v48 = v45;
      v49 = v54;
      v47(v48, v54);
      sub_1D726306C();
      v47(v46, v49);
    }
  }
}

void sub_1D62CE628(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D725B86C();
  if (v13)
  {
    v5 = *(v13 + 16);

    os_unfair_lock_lock((v5 + 24));
    v6 = *(v5 + 16);

    os_unfair_lock_unlock((v5 + 24));

    if (*(v6 + 16))
    {
      v7 = sub_1D62D54D0(a1, 30);
      sub_1D62CE158(a3, v6, *&v7, 0);

      return;
    }
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7273AE0;
  v9 = sub_1D72583DC();
  v11 = v10;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1D5B7E2C0();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  sub_1D5B5A498(0, &qword_1EDF3C6A0);
  v12 = sub_1D72638FC();
  sub_1D7262EDC();
  sub_1D725C30C();
}

uint64_t sub_1D62CE7CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D62CD730(a2);
  }

  return result;
}

uint64_t sub_1D62CE838(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebEmbedDatastoreCacheKey();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  sub_1D62D47DC(a2, v7, type metadata accessor for WebEmbedDataVisualization);
  sub_1D62D47DC(v7, v11, type metadata accessor for WebEmbedDataVisualization);
  v28[0] = sub_1D6D28818();

  sub_1D6CD315C(v28);

  sub_1D5BF1B4C(v7, type metadata accessor for WebEmbedDataVisualization);
  *&v11[*(v8 + 20)] = v28[0];
  swift_beginAccess();
  v12 = a1[7];
  if (!*(v12 + 16) || (v13 = sub_1D6D6303C(v11), (v14 & 1) == 0))
  {
    swift_endAccess();
    return sub_1D5BF1B4C(v11, type metadata accessor for WebEmbedDatastoreCacheKey);
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  swift_endAccess();

  sub_1D5BF1B4C(v11, type metadata accessor for WebEmbedDatastoreCacheKey);
  if (v15 >> 62)
  {
    v16 = sub_1D7263BFC();
    if (!v16)
    {
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
    }
  }

  if (v16 < 1)
  {
    __break(1u);

    __break(1u);
    return result;
  }

  v17 = 0;
  v18 = v15 & 0xC000000000000001;
  v26 = v15 & 0xC000000000000001;
  do
  {
    if (v18)
    {
      v19 = MEMORY[0x1DA6FB460](v17, v15);
    }

    else
    {
      v19 = *(v15 + 8 * v17 + 32);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v28[3] = type metadata accessor for WebEmbedDataSourceManager();
      v28[4] = &off_1F5142C60;
      v28[0] = a1;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = v15;
        v21 = *(v19 + 24);
        ObjectType = swift_getObjectType();
        v23 = *(v21 + 8);

        v24 = v21;
        v15 = v20;
        v18 = v26;
        v23(v28, v27, v27, ObjectType, v24);
        swift_unknownObjectRelease();
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {
    }

    ++v17;
  }

  while (v16 != v17);
}

uint64_t sub_1D62CEB68(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebEmbedDataVisualization();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7264A0C();
  sub_1D62D47DC(a1, v14, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE74F4(v14, v9, type metadata accessor for GenericDataVisualization);
    sub_1D72621EC();
    sub_1D5BF1B4C(v9, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v17 = *v14;
    SportsDataVisualization.identifier.getter();
    sub_1D72621EC();
  }

  sub_1D7264A5C();
  v15 = sub_1D7263B9C();
  *(a3 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
  result = sub_1D5BE74F4(a1, a3[6] + *(v11 + 72) * v15, type metadata accessor for WebEmbedDataVisualization);
  *(a3[7] + 8 * v15) = a2;
  ++a3[2];
  return result;
}

void *sub_1D62CEDB4(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1D62D4D4C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1D62CEE44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1D62D57AC();
  result = sub_1D726412C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_1D7264A0C();

    v33 = v21;
    sub_1D72621EC();
    result = sub_1D7264A5C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D62CF078(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1D62D56E8(0, &qword_1EDF1A330, sub_1D5EE6520);
  result = sub_1D726412C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_1D7264A0C();
    v22 = v21;

    sub_1D72621EC();
    result = sub_1D7264A5C();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
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
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D62CF2C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1D62D55EC();
  result = sub_1D726412C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_1D7264A0C();

    sub_1D5EE6588(v21);
    sub_1D72621EC();
    result = sub_1D7264A5C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D62CF500(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for WebEmbedDataVisualization();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v26 - v14;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1D62D50E4();
  result = sub_1D726412C();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_16:
    v23 = v20 | (v19 << 6);
    sub_1D62D47DC(a4[6] + *(v27 + 72) * v23, v15, type metadata accessor for WebEmbedDataVisualization);
    v24 = *(a4[7] + 8 * v23);
    sub_1D5BE74F4(v15, v11, type metadata accessor for WebEmbedDataVisualization);

    result = sub_1D62CEB68(v11, v24, v17);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    if (!a3)
    {
      return v17;
    }
  }

  v21 = v19;
  while (1)
  {
    v19 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v22 = a1[v19];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D62CF710(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SharedItem();
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v42 = &v39 - v13;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v41 = v12;
  sub_1D62D56E8(0, &qword_1EC8857A0, type metadata accessor for SharedItem);
  result = sub_1D726412C();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v18 = result + 64;
  v19 = v41;
  v40 = a4;
  while (v16)
  {
    v20 = __clz(__rbit64(v16));
    v44 = (v16 - 1) & v16;
LABEL_16:
    v23 = v20 | (v17 << 6);
    v24 = a4[7];
    v25 = (a4[6] + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = v42;
    v45 = *(v43 + 72);
    sub_1D62D47DC(v24 + v45 * v23, v42, type metadata accessor for SharedItem);
    sub_1D5BE74F4(v28, v19, type metadata accessor for SharedItem);
    sub_1D7264A0C();

    sub_1D72621EC();
    result = sub_1D7264A5C();
    v29 = -1 << *(v15 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v19 = v41;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v18 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v19 = v41;
LABEL_26:
    *(v18 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v15 + 48) + 16 * v32);
    *v37 = v27;
    v37[1] = v26;
    result = sub_1D5BE74F4(v19, *(v15 + 56) + v32 * v45, type metadata accessor for SharedItem);
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v16 = v44;
    if (!a3)
    {
      return v15;
    }
  }

  v21 = v17;
  while (1)
  {
    v17 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v22 = a1[v17];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v44 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D62CFA6C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D7264A0C();
  sub_1D72621EC();
  v6 = sub_1D7264A5C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D72646CC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D5FFFF14();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1D62D2678(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1D62CFBA8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D72649FC();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D600007C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1D62D283C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1D62CFC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v83 = (&v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v8, v9);
  v82 = (&v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v74 - v13);
  v86 = type metadata accessor for WebEmbedDatastoreCacheKey();
  v15 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1D72585BC();
  v19 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v20);
  v94 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v95 = &v74 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v74 - v27;
  v74 = v2;
  v87 = *v2;
  sub_1D7264A0C();
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  v89 = a1;
  v29 = sub_1D6D28818();
  MEMORY[0x1DA6FC0B0](*(v29 + 16));
  v30 = v29;
  v31 = *(v29 + 16);
  v85 = v8;
  v84 = v14;
  v77 = v19;
  v76 = a2;
  v75 = v15;
  v90 = v18;
  if (v31)
  {
    v33 = v19 + 16;
    v32 = *(v19 + 16);
    v34 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v93 = v30;
    v35 = v30 + v34;
    v36 = *(v33 + 56);
    do
    {
      v37 = v96;
      v32(v28, v35, v96);
      sub_1D62D48B4(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
      sub_1D7261E8C();
      (*(v33 - 8))(v28, v37);
      v35 += v36;
      --v31;
    }

    while (v31);

    a2 = v76;
    v15 = v75;
    v14 = v84;
    v18 = v90;
    v19 = v77;
  }

  else
  {
  }

  v38 = sub_1D7264A5C();
  v39 = -1 << *(v87 + 32);
  v40 = v38 & ~v39;
  v79 = v87 + 56;
  if (((*(v87 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
  {
    v72 = 1;
    return (*(v15 + 56))(a2, v72, 1, v86);
  }

  v78 = ~v39;
  v81 = *(v15 + 72);
  v92 = v19 + 16;
  v93 = (v19 + 8);
  while (1)
  {
    v41 = v81 * v40;
    sub_1D62D47DC(*(v87 + 48) + v81 * v40, v18, type metadata accessor for WebEmbedDatastoreCacheKey);
    sub_1D62D47DC(v18, v14, type metadata accessor for WebEmbedDataVisualization);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v80 = v41;
    if (EnumCaseMultiPayload == 1)
    {
      v43 = v83;
      sub_1D5BE74F4(v14, v83, type metadata accessor for GenericDataVisualization);
      v98 = 0x3A636972656E6567;
      v99 = 0xE90000000000003ALL;
      MEMORY[0x1DA6F9910](*v43, v43[1]);
      v45 = v98;
      v44 = v99;
      sub_1D5BF1B4C(v43, type metadata accessor for GenericDataVisualization);
    }

    else
    {
      v97 = *v14;
      v98 = 0x3A3A7374726F7073;
      v99 = 0xE800000000000000;
      v46 = SportsDataVisualization.identifier.getter();
      MEMORY[0x1DA6F9910](v46);

      v45 = v98;
      v44 = v99;
    }

    v47 = v82;
    sub_1D62D47DC(v89, v82, type metadata accessor for WebEmbedDataVisualization);
    v48 = swift_getEnumCaseMultiPayload();
    v88 = v40;
    if (v48 != 1)
    {
      break;
    }

    v49 = v83;
    sub_1D5BE74F4(v47, v83, type metadata accessor for GenericDataVisualization);
    v98 = 0x3A636972656E6567;
    v99 = 0xE90000000000003ALL;
    MEMORY[0x1DA6F9910](*v49, v49[1]);
    v51 = v98;
    v50 = v99;
    sub_1D5BF1B4C(v49, type metadata accessor for GenericDataVisualization);
    if (v45 == v51)
    {
      goto LABEL_16;
    }

LABEL_18:
    v53 = sub_1D72646CC();

    if (v53)
    {
      goto LABEL_19;
    }

LABEL_8:
    v18 = v90;
    sub_1D5BF1B4C(v90, type metadata accessor for WebEmbedDatastoreCacheKey);
    v40 = (v88 + 1) & v78;
    v14 = v84;
    if (((*(v79 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
    {
      v72 = 1;
      v15 = v75;
      a2 = v76;
      return (*(v15 + 56))(a2, v72, 1, v86);
    }
  }

  v97 = *v47;
  v98 = 0x3A3A7374726F7073;
  v99 = 0xE800000000000000;
  v52 = SportsDataVisualization.identifier.getter();
  MEMORY[0x1DA6F9910](v52);

  v50 = v99;
  if (v45 != v98)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (v44 != v50)
  {
    goto LABEL_18;
  }

LABEL_19:
  v54 = *(v86 + 20);
  v55 = *&v90[v54];
  v56 = *(v89 + v54);
  v57 = *(v55 + 16);
  if (v57 != *(v56 + 16))
  {
    goto LABEL_8;
  }

  if (v57 && v55 != v56)
  {
    v58 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v59 = v55 + v58;
    v60 = v56 + v58;
    v91 = *(v77 + 72);
    v61 = *(v77 + 16);
    do
    {
      v62 = v95;
      v61(v95, v59, v96);
      v63 = v94;
      v64 = v96;
      v65 = v61;
      v61(v94, v60, v96);
      sub_1D62D48B4(&unk_1EDF45B60, MEMORY[0x1E6968FB0]);
      v66 = v62;
      v67 = sub_1D7261FBC();
      v68 = *v93;
      (*v93)(v63, v64);
      v68(v66, v64);
      if ((v67 & 1) == 0)
      {
        goto LABEL_8;
      }

      v60 += v91;
      v59 += v91;
      --v57;
      v61 = v65;
    }

    while (v57);
  }

  sub_1D5BF1B4C(v90, type metadata accessor for WebEmbedDatastoreCacheKey);
  v69 = v74;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v69;
  v98 = *v69;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D6000BA0();
    v71 = v98;
  }

  a2 = v76;
  sub_1D5BE74F4(*(v71 + 48) + v80, v76, type metadata accessor for WebEmbedDatastoreCacheKey);
  sub_1D62D29C0(v88);
  v72 = 0;
  *v69 = v98;
  v15 = v75;
  return (*(v15 + 56))(a2, v72, 1, v86);
}

unint64_t sub_1D62D05C8@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  result = sub_1D6953BC0();
  v6 = -1 << *(v4 + 32);
  v7 = result & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 <= 2)
      {
        if (*(*(v4 + 48) + v7))
        {
          if (v9 == 1)
          {
            v10 = 0x726564616568;
          }

          else
          {
            v10 = 0x7265746F6F66;
          }

          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xE600000000000000;
          v10 = 0x74756F79616CLL;
        }
      }

      else if (*(*(v4 + 48) + v7) > 4u)
      {
        if (v9 == 5)
        {
          v11 = 0xE700000000000000;
          v10 = 0x7972617262696CLL;
        }

        else
        {
          v10 = 0x756F72676B636162;
          v11 = 0xEA0000000000646ELL;
        }
      }

      else
      {
        if (v9 == 3)
        {
          v10 = 0x6C6C6177796170;
        }

        else
        {
          v10 = 0x656D656874;
        }

        if (v9 == 3)
        {
          v11 = 0xE700000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }
      }

      v12 = 0x756F72676B636162;
      if (a1 == 5)
      {
        v12 = 0x7972617262696CLL;
      }

      v13 = 0xEA0000000000646ELL;
      if (a1 == 5)
      {
        v13 = 0xE700000000000000;
      }

      v14 = 0x6C6C6177796170;
      if (a1 != 3)
      {
        v14 = 0x656D656874;
      }

      v15 = 0xE500000000000000;
      if (a1 == 3)
      {
        v15 = 0xE700000000000000;
      }

      if (a1 <= 4u)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0x7265746F6F66;
      if (a1 == 1)
      {
        v16 = 0x726564616568;
      }

      if (!a1)
      {
        v16 = 0x74756F79616CLL;
      }

      v17 = a1 <= 2u ? v16 : v12;
      v18 = a1 <= 2u ? 0xE600000000000000 : v13;
      if (v10 == v17 && v11 == v18)
      {
        break;
      }

      v19 = sub_1D72646CC();

      if (v19)
      {
        goto LABEL_46;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

LABEL_46:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v22;
    v24 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D6000EE0();
      v21 = v24;
    }

    *a2 = *(*(v21 + 48) + v7);
    result = sub_1D62D32E8(v7);
    *v22 = v24;
  }

  else
  {
LABEL_44:
    *a2 = 7;
  }

  return result;
}

unint64_t sub_1D62D0890@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  sub_1D7264A0C();
  sub_1D72621EC();

  result = sub_1D7264A5C();
  v6 = -1 << *(v4 + 32);
  v7 = result & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v26 = ~v6;
    v27 = a1;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      v9 = v8 == 2 ? 0x6867696C68676968 : 0x64657463656C6573;
      v10 = v8 == 2 ? 0xEB00000000646574 : 0xE800000000000000;
      v11 = *(*(v4 + 48) + v7) ? 0x64657375636F66 : 0x64656C6261736964;
      v12 = *(*(v4 + 48) + v7) ? 0xE700000000000000 : 0xE800000000000000;
      v13 = *(*(v4 + 48) + v7) <= 1u ? v11 : v9;
      v14 = *(*(v4 + 48) + v7) <= 1u ? v12 : v10;
      v15 = v27 == 2 ? 0x6867696C68676968 : 0x64657463656C6573;
      v16 = v27 == 2 ? 0xEB00000000646574 : 0xE800000000000000;
      v17 = v27 ? 0x64657375636F66 : 0x64656C6261736964;
      v18 = v27 ? 0xE700000000000000 : 0xE800000000000000;
      v19 = v27 <= 1 ? v17 : v15;
      v20 = v27 <= 1 ? v18 : v16;
      if (v13 == v19 && v14 == v20)
      {
        break;
      }

      v21 = sub_1D72646CC();

      if (v21)
      {
        goto LABEL_45;
      }

      v7 = (v7 + 1) & v26;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v24;
    v28 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D6000BF4();
      v23 = v28;
    }

    *a2 = *(*(v23 + 48) + v7);
    result = sub_1D62D3570(v7);
    *v24 = v28;
  }

  else
  {
LABEL_43:
    *a2 = 4;
  }

  return result;
}

uint64_t sub_1D62D0B28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = type metadata accessor for FeedLayoutCacheKey();
  v55 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v2;
  v71 = *v2;
  sub_1D7264A0C();
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v63 = a1[7];
  v15 = a1[9];
  v62 = a1[8];
  v61 = v15;
  v74 = v9;
  v75 = v8;
  sub_1D72621EC();
  v73 = v10;
  v67 = v11;
  sub_1D72621EC();
  v66 = v12;
  v65 = v13;
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](*(v14 + 16));
  v64 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = v64 + 40;
    do
    {

      sub_1D72621EC();

      v17 += 16;
      --v16;
    }

    while (v16);
  }

  sub_1D72621EC();
  sub_1D5BE251C(v76, v61);
  v18 = a1[10];
  v60 = *(a1 + 17);
  v59 = *(a1 + 15);
  v58 = *(a1 + 13);
  v57 = *(a1 + 11);
  v54 = v18;
  MEMORY[0x1DA6FC0B0]();
  sub_1D5BE7138(v57.f64[0], v57.f64[1]);
  sub_1D5BE7138(v58.f64[0], v58.f64[1]);
  v19 = v59.f64[0];
  if (v59.f64[0] == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v19);
  v20 = v59.f64[1];
  if (v59.f64[1] == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v20);
  v21 = v60.f64[0];
  if (v60.f64[0] == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v21);
  v22 = v60.f64[1];
  if (v60.f64[1] == 0.0)
  {
    v22 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v22);
  v56 = v4;
  v23 = (a1 + *(v4 + 24));
  sub_1D5BE7138(*v23, v23[1]);
  sub_1D72621EC();
  v24 = type metadata accessor for FeedLayoutCacheDynamicKey();
  sub_1D725A19C();
  sub_1D62D48B4(&qword_1EDF3BFB0, MEMORY[0x1E69D7280]);
  sub_1D7261E8C();
  sub_1D7264A2C();
  sub_1D7264A2C();
  v25 = *(v24 + 36);
  v51 = v23;
  sub_1D5BE71D0(v76, *(v23 + v25));
  v26 = sub_1D7264A5C();
  v27 = -1 << *(v71 + 32);
  v28 = v26 & ~v27;
  v70 = v71 + 56;
  if (((*(v71 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
  {
    return (*(v55 + 56))(v52, 1, 1, v56);
  }

  v68 = ~v27;
  v69 = *(v55 + 72);
  v53 = (v64 + 40);
  v50 = xmmword_1D728D640;
  while (1)
  {
    if (v29 = v69 * v28, sub_1D62D47DC(*(v71 + 48) + v69 * v28, v7, type metadata accessor for FeedLayoutCacheKey), v30 = *v7, v31 = *(v7 + 1), v33 = *(v7 + 2), v32 = *(v7 + 3), v35 = *(v7 + 4), v34 = *(v7 + 5), v37 = *(v7 + 6), v36 = *(v7 + 7), v38 = *(v7 + 8), v72 = *(v7 + 9), v30 == v75) && v31 == v74 || (sub_1D72646CC())
    {
      if (v33 == v73 && v32 == v67 || (sub_1D72646CC()) && (v35 == v66 && v34 == v65 || (sub_1D72646CC()))
      {
        v39 = *(v37 + 16);
        if (v39 == *(v64 + 16))
        {
          if (v39 && v37 != v64)
          {
            v40 = (v37 + 40);
            v41 = v53;
            do
            {
              v42 = *(v40 - 1) == *(v41 - 1) && *v40 == *v41;
              if (!v42 && (sub_1D72646CC() & 1) == 0)
              {
                goto LABEL_14;
              }

              v40 += 2;
              v41 += 2;
            }

            while (--v39);
          }

          if (v36 == v63 && v38 == v62 || (sub_1D72646CC()) && (sub_1D5BFC390(v72, v61) & 1) != 0 && *(v7 + 10) == v54 && vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(v7 + 88), v57), vceqq_f64(*(v7 + 104), v58)), vuzp1q_s32(vceqq_f64(*(v7 + 120), v59), vceqq_f64(*(v7 + 136), v60))), v50)) == 255 && (sub_1D5C1968C(&v7[*(v56 + 24)], v51))
          {
            break;
          }
        }
      }
    }

LABEL_14:
    sub_1D5BF1B4C(v7, type metadata accessor for FeedLayoutCacheKey);
    v28 = (v28 + 1) & v68;
    if (((*(v70 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
      return (*(v55 + 56))(v52, 1, 1, v56);
    }
  }

  sub_1D5BF1B4C(v7, type metadata accessor for FeedLayoutCacheKey);
  v43 = v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v43;
  v76[0] = *v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D60014AC();
    v45 = v76[0];
  }

  v46 = v52;
  sub_1D5BE74F4(*(v45 + 48) + v29, v52, type metadata accessor for FeedLayoutCacheKey);
  sub_1D62D37AC(v28);
  *v43 = v76[0];
  return (*(v55 + 56))(v46, 0, 1, v56);
}

uint64_t sub_1D62D1278(__int16 a1)
{
  v3 = 0x70616373646E616CLL;
  v4 = *v1;
  sub_1D7264A0C();
  sub_1D6E23ADC(a1);
  sub_1D72621EC();

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v3 = 0x7469617274726F70;
    v5 = 0xE800000000000000;
  }

  sub_1D72621EC();

  v6 = sub_1D7264A5C();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 512;
  }

  v34 = v1;
  v35 = ~v7;
  v9 = 0x7258656E6F685069;
  while (2)
  {
    v10 = (*(v4 + 48) + 2 * v8);
    v11 = v10[1];
    v12 = 0xE800000000000000;
    v13 = v9;
    switch(*v10)
    {
      case 1:
        goto LABEL_9;
      case 2:
        v12 = 0xEB0000000078614DLL;
LABEL_9:
        v13 = 0x7358656E6F685069;
        break;
      case 3:
        v13 = 0x4553656E6F685069;
        break;
      case 4:
        v13 = 0x3131656E6F685069;
        break;
      case 5:
        v13 = 0x3131656E6F685069;
        goto LABEL_31;
      case 6:
        v13 = 0x3131656E6F685069;
        goto LABEL_47;
      case 7:
        v13 = 0x3231656E6F685069;
        break;
      case 8:
        v13 = 0x3231656E6F685069;
        goto LABEL_36;
      case 9:
        v13 = 0x3231656E6F685069;
        goto LABEL_31;
      case 0xA:
        v13 = 0x3231656E6F685069;
        goto LABEL_47;
      case 0xB:
        v13 = 0x3331656E6F685069;
        break;
      case 0xC:
        v13 = 0x3331656E6F685069;
LABEL_36:
        v12 = 0xEC000000696E694DLL;
        break;
      case 0xD:
        v13 = 0x3331656E6F685069;
        goto LABEL_31;
      case 0xE:
        v13 = 0x3331656E6F685069;
        goto LABEL_47;
      case 0xF:
        v13 = 0x3431656E6F685069;
        break;
      case 0x10:
        v13 = 0x3431656E6F685069;
        goto LABEL_27;
      case 0x11:
        v13 = 0x3431656E6F685069;
        goto LABEL_31;
      case 0x12:
        v13 = 0x3431656E6F685069;
        goto LABEL_47;
      case 0x13:
        v13 = 0x3531656E6F685069;
        break;
      case 0x14:
        v13 = 0x3531656E6F685069;
        goto LABEL_27;
      case 0x15:
        v13 = 0x3531656E6F685069;
        goto LABEL_31;
      case 0x16:
        v13 = 0x3531656E6F685069;
        goto LABEL_47;
      case 0x17:
        v13 = 0x3631656E6F685069;
        break;
      case 0x18:
        v13 = 0x3631656E6F685069;
LABEL_27:
        v12 = 0xEC00000073756C50;
        break;
      case 0x19:
        v13 = 0x3631656E6F685069;
LABEL_31:
        v12 = 0xEB000000006F7250;
        break;
      case 0x1A:
        v13 = 0x3631656E6F685069;
LABEL_47:
        v12 = 0xEE0078614D6F7250;
        break;
      case 0x1B:
        v12 = 0xE400000000000000;
        v13 = 1684099177;
        break;
      case 0x1C:
        v12 = 0xE700000000000000;
        v13 = 0x72694164615069;
        break;
      case 0x1D:
        v13 = 0x696E694D64615069;
        break;
      case 0x1E:
        v14 = 895430705;
        goto LABEL_39;
      case 0x1F:
        v12 = 0xEA00000000003131;
        goto LABEL_40;
      case 0x20:
        v14 = 962540081;
LABEL_39:
        v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_40:
        v13 = 0x5F6F725064615069;
        break;
      case 0x21:
        v12 = 0xE300000000000000;
        v13 = 6513005;
        break;
      case 0x22:
        v13 = 0x6465727265666E69;
        break;
      default:
        break;
    }

    v15 = 0xE800000000000000;
    v16 = v9;
    switch(a1)
    {
      case 1:
        goto LABEL_50;
      case 2:
        v15 = 0xEB0000000078614DLL;
LABEL_50:
        if (v13 != 0x7358656E6F685069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 3:
        if (v13 != 0x4553656E6F685069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 4:
        if (v13 != 0x3131656E6F685069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 5:
        v19 = 0x3131656E6F685069;
        goto LABEL_81;
      case 6:
        v18 = 0x3131656E6F685069;
        goto LABEL_107;
      case 7:
        if (v13 != 0x3231656E6F685069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 8:
        v17 = 0x3231656E6F685069;
        goto LABEL_87;
      case 9:
        v19 = 0x3231656E6F685069;
        goto LABEL_81;
      case 10:
        v18 = 0x3231656E6F685069;
        goto LABEL_107;
      case 11:
        if (v13 != 0x3331656E6F685069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 12:
        v17 = 0x3331656E6F685069;
LABEL_87:
        v20 = 1768843597;
        goto LABEL_88;
      case 13:
        v19 = 0x3331656E6F685069;
        goto LABEL_81;
      case 14:
        v18 = 0x3331656E6F685069;
        goto LABEL_107;
      case 15:
        if (v13 != 0x3431656E6F685069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 16:
        v17 = 0x3431656E6F685069;
        goto LABEL_77;
      case 17:
        v19 = 0x3431656E6F685069;
        goto LABEL_81;
      case 18:
        v18 = 0x3431656E6F685069;
        goto LABEL_107;
      case 19:
        if (v13 != 0x3531656E6F685069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 20:
        v17 = 0x3531656E6F685069;
        goto LABEL_77;
      case 21:
        v19 = 0x3531656E6F685069;
        goto LABEL_81;
      case 22:
        v18 = 0x3531656E6F685069;
        goto LABEL_107;
      case 23:
        if (v13 != 0x3631656E6F685069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 24:
        v17 = 0x3631656E6F685069;
LABEL_77:
        v20 = 1937075280;
LABEL_88:
        v15 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v13 != v17)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 25:
        v19 = 0x3631656E6F685069;
LABEL_81:
        v15 = 0xEB000000006F7250;
        if (v13 != v19)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 26:
        v18 = 0x3631656E6F685069;
LABEL_107:
        v15 = 0xEE0078614D6F7250;
        if (v13 != v18)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 27:
        v15 = 0xE400000000000000;
        if (v13 != 1684099177)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 28:
        v15 = 0xE700000000000000;
        if (v13 != 0x72694164615069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 29:
        v9 = 0x696E694D64615069;
        goto LABEL_103;
      case 30:
        v21 = 895430705;
        goto LABEL_92;
      case 31:
        v15 = 0xEA00000000003131;
        goto LABEL_93;
      case 32:
        v21 = 962540081;
LABEL_92:
        v15 = v21 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_93:
        if (v13 != 0x5F6F725064615069)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 33:
        v15 = 0xE300000000000000;
        if (v13 != 6513005)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      case 34:
        if (v13 != 0x6465727265666E69)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      default:
LABEL_103:
        if (v13 != v9)
        {
          goto LABEL_108;
        }

LABEL_104:
        if (v12 == v15)
        {
        }

        else
        {
LABEL_108:
          v22 = sub_1D72646CC();

          if ((v22 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        if (v11)
        {
          v23 = 0x70616373646E616CLL;
        }

        else
        {
          v23 = 0x7469617274726F70;
        }

        if (v11)
        {
          v24 = 0xE900000000000065;
        }

        else
        {
          v24 = 0xE800000000000000;
        }

        if (v23 != v3 || v24 != v5)
        {
          v26 = sub_1D72646CC();

          if (v26)
          {
            goto LABEL_123;
          }

LABEL_6:
          v8 = (v8 + 1) & v35;
          v9 = v16;
          if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            return 512;
          }

          continue;
        }

LABEL_123:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = *v34;
        v36 = *v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6000C1C();
          v29 = v36;
        }

        v30 = (*(v29 + 48) + 2 * v8);
        v31 = *v30;
        v32 = v30[1];
        sub_1D62D3C8C(v8);
        *v34 = v36;
        if (v32)
        {
          v33 = 256;
        }

        else
        {
          v33 = 0;
        }

        return v33 | v31;
    }
  }
}

uint64_t sub_1D62D1B60(unint64_t a1, unsigned __int8 a2)
{
  v5 = *v2;
  sub_1D7264A0C();
  if (a2)
  {
    v6 = qword_1D72B6458[a1];
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
    v6 = a1;
  }

  MEMORY[0x1DA6FC0B0](v6);
  v7 = sub_1D7264A5C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(v5 + 48) + 16 * v9;
    v12 = *v11;
    if (*(v11 + 8) != 1)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        if ((a2 & (a1 == 2)) != 0)
        {
          goto LABEL_20;
        }
      }

      else if ((a2 & (a1 > 2)) != 0)
      {
        goto LABEL_20;
      }
    }

    else if (v12)
    {
      if ((a2 & (a1 == 1)) != 0)
      {
        goto LABEL_20;
      }
    }

    else if ((a2 & (a1 == 0)) != 0)
    {
      goto LABEL_20;
    }

LABEL_7:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if ((a2 & 1) != 0 || v12 != a1)
  {
    goto LABEL_7;
  }

LABEL_20:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v17 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D600193C();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 16 * v9);
  sub_1D62D3EAC(v9);
  result = v15;
  *v2 = v17;
  return result;
}

uint64_t sub_1D62D1D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WebEmbedDataVisualization();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v43 - v15);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v43 - v23);
  v53 = *v2;
  sub_1D7264A0C();
  sub_1D62D47DC(a1, v24, type metadata accessor for WebEmbedDataVisualization);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v52 = v16;
  v45 = v2;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5BE74F4(v24, v7, type metadata accessor for GenericDataVisualization);
    sub_1D72621EC();
    sub_1D5BF1B4C(v7, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v54 = *v24;
    SportsDataVisualization.identifier.getter();
    sub_1D72621EC();

    v16 = v52;
  }

  v26 = sub_1D7264A5C();
  v27 = -1 << *(v53 + 32);
  v28 = v26 & ~v27;
  v50 = v53 + 56;
  if (((*(v53 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
  {
    v37 = 1;
    v38 = v46;
    return (*(v9 + 56))(v38, v37, 1, v8);
  }

  v47 = a1;
  v48 = ~v27;
  v44 = v9;
  v51 = *(v9 + 72);
  while (1)
  {
    v29 = *(v53 + 48);
    v49 = v51 * v28;
    sub_1D62D47DC(v29 + v51 * v28, v20, type metadata accessor for WebEmbedDataVisualization);
    sub_1D62D47DC(v20, v16, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D5BE74F4(v16, v7, type metadata accessor for GenericDataVisualization);
      v55 = 0x3A636972656E6567;
      v56 = 0xE90000000000003ALL;
      MEMORY[0x1DA6F9910](*v7, v7[1]);
      v31 = v55;
      v30 = v56;
      sub_1D5BF1B4C(v7, type metadata accessor for GenericDataVisualization);
    }

    else
    {
      v54 = *v16;
      v55 = 0x3A3A7374726F7073;
      v56 = 0xE800000000000000;
      v32 = SportsDataVisualization.identifier.getter();
      MEMORY[0x1DA6F9910](v32);

      v31 = v55;
      v30 = v56;
    }

    sub_1D62D47DC(a1, v12, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1D5BE74F4(v12, v7, type metadata accessor for GenericDataVisualization);
    v55 = 0x3A636972656E6567;
    v56 = 0xE90000000000003ALL;
    MEMORY[0x1DA6F9910](*v7, v7[1]);
    v34 = v55;
    v33 = v56;
    sub_1D5BF1B4C(v7, type metadata accessor for GenericDataVisualization);
    if (v31 == v34)
    {
      goto LABEL_13;
    }

LABEL_14:
    v36 = sub_1D72646CC();

    sub_1D5BF1B4C(v20, type metadata accessor for WebEmbedDataVisualization);
    if (v36)
    {
      goto LABEL_19;
    }

    v28 = (v28 + 1) & v48;
    v16 = v52;
    if (((*(v50 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
      v37 = 1;
      v38 = v46;
      goto LABEL_22;
    }
  }

  v54 = *v12;
  v55 = 0x3A3A7374726F7073;
  v56 = 0xE800000000000000;
  v35 = SportsDataVisualization.identifier.getter();
  MEMORY[0x1DA6F9910](v35);

  a1 = v47;

  v33 = v56;
  if (v31 != v55)
  {
    goto LABEL_14;
  }

LABEL_13:
  if (v30 != v33)
  {
    goto LABEL_14;
  }

  sub_1D5BF1B4C(v20, type metadata accessor for WebEmbedDataVisualization);
LABEL_19:
  v39 = v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v39;
  v55 = *v39;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D600083C();
    v41 = v55;
  }

  v38 = v46;
  sub_1D5BE74F4(*(v41 + 48) + v49, v46, type metadata accessor for WebEmbedDataVisualization);
  sub_1D62D4090(v28);
  v37 = 0;
  *v39 = v55;
LABEL_22:
  v9 = v44;
  return (*(v9 + 56))(v38, v37, 1, v8);
}

uint64_t sub_1D62D2310(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D7264A0C();
  sub_1D72621EC();

  v5 = sub_1D7264A5C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 6;
  }

  v23 = v1;
  v8 = ~v6;
  v9 = a1;
  while (1)
  {
    v10 = *(*(v4 + 48) + v7);
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        v12 = 0xE600000000000000;
        v11 = 0x73656D656874;
      }

      else
      {
        if (v10 == 4)
        {
          v11 = 0x6C6C6177796170;
        }

        else
        {
          v11 = 0x756F72676B636162;
        }

        if (v10 == 4)
        {
          v12 = 0xE700000000000000;
        }

        else
        {
          v12 = 0xEB0000000073646ELL;
        }
      }
    }

    else if (*(*(v4 + 48) + v7))
    {
      if (v10 == 1)
      {
        v11 = 0x73726564616568;
      }

      else
      {
        v11 = 0x737265746F6F66;
      }

      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xE700000000000000;
      v11 = 0x7374756F79616CLL;
    }

    v13 = 0x756F72676B636162;
    if (v9 == 4)
    {
      v13 = 0x6C6C6177796170;
    }

    v14 = 0xEB0000000073646ELL;
    if (v9 == 4)
    {
      v14 = 0xE700000000000000;
    }

    if (v9 == 3)
    {
      v13 = 0x73656D656874;
      v14 = 0xE600000000000000;
    }

    v15 = 0x737265746F6F66;
    if (v9 == 1)
    {
      v15 = 0x73726564616568;
    }

    if (!v9)
    {
      v15 = 0x7374756F79616CLL;
    }

    v16 = v9 <= 2 ? v15 : v13;
    v17 = v9 <= 2 ? 0xE700000000000000 : v14;
    if (v11 == v16 && v12 == v17)
    {
      break;
    }

    v18 = sub_1D72646CC();

    if (v18)
    {
      goto LABEL_40;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 6;
    }
  }

LABEL_40:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v2;
  v24 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D600103C();
    v21 = v24;
  }

  v19 = *(*(v21 + 48) + v7);
  sub_1D62D4484(v7);
  *v23 = v24;
  return v19;
}

unint64_t sub_1D62D2678(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D7263B8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D7264A0C();

        sub_1D72621EC();
        v10 = sub_1D7264A5C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1D62D283C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D7263B8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1D72649FC() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1D62D29C0(unint64_t a1)
{
  v3 = sub_1D72585BC();
  v65 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v63 = (&v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v10, v11);
  v71 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v70 = (&v60 - v15);
  v62 = type metadata accessor for WebEmbedDatastoreCacheKey();
  v16 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v17);
  v77 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = *v1 + 56;
  v21 = -1 << *(*v1 + 32);
  v22 = (a1 + 1) & ~v21;
  v23 = v22 >> 6;
  v24 = 1 << v22;
  if (((1 << v22) & *(v20 + 8 * (v22 >> 6))) != 0)
  {
    v78 = (a1 + 1) & ~v21;
    v25 = ~v21;

    v26 = sub_1D7263B8C();
    if ((*(v20 + 8 * v23) & v24) != 0)
    {
      v64 = v6;
      v69 = v20;
      v27 = 0;
      v66 = (v26 + 1) & v25;
      v28 = *(v16 + 72);
      v29 = (v65 + 8);
      v68 = v10;
      v31 = v77;
      v30 = v78;
      v67 = v19;
      v74 = v28;
      v75 = v25;
      v61 = (v65 + 8);
      while (1)
      {
        v34 = *(v19 + 48);
        v78 = v30;
        v35 = v28 * v30;
        sub_1D62D47DC(v34 + v28 * v30, v31, type metadata accessor for WebEmbedDatastoreCacheKey);
        sub_1D7264A0C();
        v36 = v70;
        sub_1D62D47DC(v31, v70, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v37 = v63;
          sub_1D5BE74F4(v36, v63, type metadata accessor for GenericDataVisualization);
          v81 = 0x3A636972656E6567;
          v82 = 0xE90000000000003ALL;
          MEMORY[0x1DA6F9910](*v37, v37[1]);
          sub_1D5BF1B4C(v37, type metadata accessor for GenericDataVisualization);
        }

        else
        {
          v38 = *v36;
          v81 = 0x3A3A7374726F7073;
          v82 = 0xE800000000000000;
          v80 = v38;
          v39 = SportsDataVisualization.identifier.getter();
          MEMORY[0x1DA6F9910](v39);
        }

        sub_1D72621EC();

        v40 = v71;
        sub_1D62D47DC(v77, v71, type metadata accessor for WebEmbedDataVisualization);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v76 = a1;
        if (EnumCaseMultiPayload == 1)
        {
          v42 = sub_1D6D2968C();
          v43 = sub_1D6D29D78();
          v81 = v42;
          sub_1D6985118(v43);
          v44 = MEMORY[0x1E6968FB0];
          sub_1D62D5684(0, &qword_1EDF05400, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
          sub_1D62D5234(&qword_1EDF053F0, &qword_1EDF05400, v44);
          sub_1D62D48B4(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
          v45 = sub_1D72623CC();

          sub_1D5BF1B4C(v40, type metadata accessor for WebEmbedDataVisualization);
        }

        else
        {
          v46 = *v40;
          if (*v40 >> 61 == 2)
          {
            v45 = *(*((v46 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_allDataSourceUrls);
          }

          else
          {
            v81 = *v40;
            v47 = sub_1D6F86D04();
            v80 = v46;
            v48 = sub_1D6F87060();
            v79 = v47;
            sub_1D6985118(v48);
            v81 = v79;
            v49 = MEMORY[0x1E6968FB0];
            sub_1D62D5684(0, &qword_1EDF05400, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
            sub_1D62D5234(&qword_1EDF053F0, &qword_1EDF05400, v49);
            sub_1D62D48B4(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
            v45 = sub_1D72623CC();
            v29 = v61;
          }
        }

        MEMORY[0x1DA6FC0B0](*(v45 + 16));
        v50 = *(v45 + 16);
        if (v50)
        {
          v72 = v35;
          v73 = v27;
          v51 = v45 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
          v52 = *(v65 + 72);
          v53 = *(v65 + 16);
          v54 = v64;
          do
          {
            v53(v54, v51, v3);
            sub_1D62D48B4(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
            sub_1D7261E8C();
            (*v29)(v54, v3);
            v51 += v52;
            --v50;
          }

          while (v50);

          v35 = v72;
          v27 = v73;
        }

        else
        {
        }

        v55 = sub_1D7264A5C();
        v31 = v77;
        sub_1D5BF1B4C(v77, type metadata accessor for WebEmbedDatastoreCacheKey);
        v32 = v75;
        a1 = v76;
        v56 = v55 & v75;
        if (v76 >= v66)
        {
          break;
        }

        v19 = v67;
        v33 = v78;
        v28 = v74;
        if (v56 < v66)
        {
          goto LABEL_25;
        }

LABEL_26:
        if (v28 * v76 < v35 || *(v19 + 48) + v28 * v76 >= (*(v19 + 48) + v35 + v28))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v33;
          if (v28 * v76 == v35)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v28 = v74;
        v32 = v75;
        v33 = v78;
        a1 = v78;
LABEL_6:
        v30 = (v33 + 1) & v32;
        if (((*(v69 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {

          v20 = v69;
          goto LABEL_33;
        }
      }

      v19 = v67;
      v33 = v78;
      v28 = v74;
      if (v56 < v66)
      {
        goto LABEL_6;
      }

LABEL_25:
      if (v76 < v56)
      {
        goto LABEL_6;
      }

      goto LABEL_26;
    }

LABEL_33:
    *(v20 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v20 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v57 = *(v19 + 16);
  v58 = __OFSUB__(v57, 1);
  v59 = v57 - 1;
  if (v58)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v59;
    ++*(v19 + 36);
  }
}

unint64_t sub_1D62D32E8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D7263B8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D7264A0C();
        sub_1D72621EC();

        v10 = sub_1D7264A5C() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1D62D3570(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D7263B8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D7264A0C();
        sub_1D72621EC();

        v10 = sub_1D7264A5C() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1D62D37AC(unint64_t a1)
{
  v44 = type metadata accessor for FeedLayoutCacheKey();
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1D7263B8C();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = *(v3 + 72);
      v43 = v7;
      v42 = v8;
      v41 = v11;
      v40 = (v12 + 1) & v11;
      v39 = v13;
      while (1)
      {
        v14 = *(v7 + 48);
        v45 = v13 * v10;
        v46 = a1;
        sub_1D62D47DC(v14 + v13 * v10, v6, type metadata accessor for FeedLayoutCacheKey);
        sub_1D7264A0C();
        v15 = *(v6 + 6);
        v16 = *(v6 + 9);
        sub_1D72621EC();
        sub_1D72621EC();
        sub_1D72621EC();
        MEMORY[0x1DA6FC0B0](*(v15 + 16));
        v17 = *(v15 + 16);
        if (v17)
        {
          v18 = v15 + 40;
          do
          {

            sub_1D72621EC();

            v18 += 16;
            --v17;
          }

          while (v17);
        }

        sub_1D72621EC();
        sub_1D5BE251C(v47, v16);
        v19 = *(v6 + 11);
        v20 = *(v6 + 12);
        v21 = *(v6 + 13);
        v22 = *(v6 + 14);
        v23 = *(v6 + 15);
        v24 = *(v6 + 16);
        v26 = *(v6 + 17);
        v25 = *(v6 + 18);
        MEMORY[0x1DA6FC0B0](*(v6 + 10));
        sub_1D5BE7138(v19, v20);
        sub_1D5BE7138(v21, v22);
        v27 = v23 == 0.0 ? 0.0 : v23;
        MEMORY[0x1DA6FC0E0](*&v27);
        v28 = v24 == 0.0 ? 0.0 : v24;
        MEMORY[0x1DA6FC0E0](*&v28);
        v29 = v26 == 0.0 ? 0.0 : v26;
        MEMORY[0x1DA6FC0E0](*&v29);
        v30 = v25 == 0.0 ? 0.0 : v25;
        MEMORY[0x1DA6FC0E0](*&v30);
        v31 = &v6[*(v44 + 24)];
        sub_1D5BE7138(*v31, v31[1]);
        sub_1D72621EC();
        v32 = type metadata accessor for FeedLayoutCacheDynamicKey();
        sub_1D725A19C();
        sub_1D62D48B4(&qword_1EDF3BFB0, MEMORY[0x1E69D7280]);
        sub_1D7261E8C();
        sub_1D7264A2C();
        sub_1D7264A2C();
        sub_1D5BE71D0(v47, *(v31 + *(v32 + 36)));
        v33 = sub_1D7264A5C();
        sub_1D5BF1B4C(v6, type metadata accessor for FeedLayoutCacheKey);
        v34 = v41;
        v35 = v33 & v41;
        a1 = v46;
        if (v46 >= v40)
        {
          break;
        }

        v7 = v43;
        v8 = v42;
        v13 = v39;
        if (v35 < v40)
        {
          goto LABEL_26;
        }

LABEL_27:
        if (v13 * v46 < v45 || *(v7 + 48) + v13 * v46 >= (*(v7 + 48) + v45 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v10;
          if (v13 * v46 == v45)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v10;
LABEL_6:
        v10 = (v10 + 1) & v34;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v7 = v43;
      v8 = v42;
      v13 = v39;
      if (v35 < v40)
      {
        goto LABEL_6;
      }

LABEL_26:
      if (v46 < v35)
      {
        goto LABEL_6;
      }

      goto LABEL_27;
    }

LABEL_31:

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }
}

unint64_t sub_1D62D3C8C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D7263B8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 2 * v6);
        sub_1D7264A0C();
        sub_1D6E23ADC(v10);
        sub_1D72621EC();

        sub_1D72621EC();

        v11 = sub_1D7264A5C() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 2 * v2);
          v14 = (v12 + 2 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1D62D3EAC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D7263B8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = 16 * v6;
        v11 = *(v3 + 48) + 16 * v6;
        v12 = *v11;
        v13 = *(v11 + 8);
        sub_1D7264A0C();
        if (v13)
        {
          v12 = qword_1D72B6458[v12];
        }

        else
        {
          MEMORY[0x1DA6FC0B0](2);
        }

        MEMORY[0x1DA6FC0B0](v12);
        v14 = sub_1D7264A5C() & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_14;
        }

        if (v2 >= v14)
        {
LABEL_14:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + v10);
          if (16 * v2 != v10 || (v2 = v6, v16 >= v17 + 1))
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1D62D4090(unint64_t a1)
{
  v3 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v31 - v13;
  v15 = *v1;
  v16 = *v1 + 56;
  v17 = -1 << *(*v1 + 32);
  v18 = (a1 + 1) & ~v17;
  if (((1 << v18) & *(v16 + 8 * (v18 >> 6))) != 0)
  {
    v34 = v12;
    v19 = ~v17;

    v20 = sub_1D7263B8C();
    if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) != 0)
    {
      v21 = (v20 + 1) & v19;
      v22 = *(v34 + 72);
      v31 = v21;
      v33 = v22;
      while (1)
      {
        v23 = *(v15 + 48);
        v34 = v22 * v18;
        sub_1D62D47DC(v23 + v22 * v18, v14, type metadata accessor for WebEmbedDataVisualization);
        sub_1D7264A0C();
        sub_1D62D47DC(v14, v9, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v24 = v32;
          sub_1D5BE74F4(v9, v32, type metadata accessor for GenericDataVisualization);
          sub_1D72621EC();
          sub_1D5BF1B4C(v24, type metadata accessor for GenericDataVisualization);
        }

        else
        {
          v35 = *v9;
          SportsDataVisualization.identifier.getter();
          sub_1D72621EC();

          v21 = v31;
        }

        v25 = sub_1D7264A5C();
        sub_1D5BF1B4C(v14, type metadata accessor for WebEmbedDataVisualization);
        v26 = v25 & v19;
        if (a1 >= v21)
        {
          break;
        }

        v22 = v33;
        if (v26 < v21)
        {
          goto LABEL_14;
        }

LABEL_15:
        v27 = v22 * a1;
        if ((v22 * a1) < v34 || *(v15 + 48) + v22 * a1 >= *(v15 + 48) + v34 + v22)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v18;
          if (v27 == v34)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v18;
LABEL_6:
        v18 = (v18 + 1) & v19;
        if (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v22 = v33;
      if (v26 < v21)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (a1 < v26)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_19:

    *(v16 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v16 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v28 = *(v15 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v30;
    ++*(v15 + 36);
  }
}

unint64_t sub_1D62D4484(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D7263B8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D7264A0C();
        sub_1D72621EC();

        v10 = sub_1D7264A5C() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1D62D46F4(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_1D62D4704(a1, a2);
  }

  return a1;
}

uint64_t sub_1D62D4704(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1D62D4718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D62D5684(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D62D4788()
{
  result = qword_1EDF097C8[0];
  if (!qword_1EDF097C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF097C8);
  }

  return result;
}

uint64_t sub_1D62D47DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D62D4844()
{
  result = qword_1EC885780;
  if (!qword_1EC885780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885780);
  }

  return result;
}

uint64_t sub_1D62D48B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D62D4918()
{
  if (!qword_1EDF04990)
  {
    sub_1D5D077AC(255, &unk_1EDF04980, MEMORY[0x1E69E62F8]);
    sub_1D5B67994(255, &qword_1EDF1AE00, &qword_1EDF3C5D0, MEMORY[0x1E69E7280], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04990);
    }
  }
}

uint64_t objectdestroy_20Tm_0()
{
  v1 = (type metadata accessor for WebEmbedDataVisualizationDataRequest(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);
  v5(v2 + v1[9], v4);

  return swift_deallocObject();
}

uint64_t sub_1D62D4BBC()
{
  type metadata accessor for WebEmbedDataVisualizationDataRequest(0);

  return sub_1D62CC718();
}

uint64_t sub_1D62D4C2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v3 = off_1F5123180;
  type metadata accessor for WebEmbedDataVisualizationDataService(0);
  return v3(v2);
}

void sub_1D62D4D4C(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t))
{
  v25 = a2;
  v29 = a4;
  v26 = a1;
  v5 = type metadata accessor for WebEmbedDataVisualization();
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v9 = 0;
  v30 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = v30;
    sub_1D62D47DC(v30[6] + *(v28 + 72) * v20, v8, type metadata accessor for WebEmbedDataVisualization);
    v22 = *(v21[7] + 8 * v20);

    v23 = v29(v8, v22);

    sub_1D5BF1B4C(v8, type metadata accessor for WebEmbedDataVisualization);
    if (v23)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1D62CF500(v26, v25, v27, v30);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_15;
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1D62D4F64(uint64_t a1, uint64_t (*a2)(char *, uint64_t))
{
  v3 = v2;
  v5 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 > 0xD)
  {
    v13 = 8 * (v8 >> 6);

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      sub_1D62CEDB4(v14, v9, v5, a2);
      MEMORY[0x1DA6FD500](v14, -1, -1);
      return;
    }

    v10 = v13;
  }

  MEMORY[0x1EEE9AC00](a1, v10);
  v12 = v15 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v12, v11);
  sub_1D62D4D4C(v12, v9, v5, a2);
  if (v3)
  {
    swift_willThrow();
  }
}

void sub_1D62D50E4()
{
  if (!qword_1EC885790)
  {
    type metadata accessor for WebEmbedDataVisualization();
    type metadata accessor for WebEmbedDatastore();
    sub_1D62D48B4(&qword_1EDF0BB88, type metadata accessor for WebEmbedDataVisualization);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC885790);
    }
  }
}

void sub_1D62D5190()
{
  if (!qword_1EC885798)
  {
    type metadata accessor for WebEmbedDatastoreCacheKey();
    sub_1D62D5684(255, &unk_1EDF1AF40, type metadata accessor for WeakWebEmbedDataSourceManagerObserver, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC885798);
    }
  }
}

uint64_t sub_1D62D5234(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D62D5684(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D62D5298()
{
  v1 = *(sub_1D72585BC() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D62CE7CC(v2, v3);
}

uint64_t objectdestroy_26Tm()
{
  v1 = sub_1D72585BC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D62D543C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_1D72585BC() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

double sub_1D62D54D0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedDataVisualizationDataServiceError();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  v8 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (!v7[8])
      {
        a2 = *v7;
      }
    }

    else
    {
      sub_1D5BF1B4C(v7, type metadata accessor for WebEmbedDataVisualizationDataServiceError);
    }
  }

  return a2;
}

void sub_1D62D55EC()
{
  if (!qword_1EDF1A328)
  {
    sub_1D62D5684(255, &qword_1EDF1A6D0, sub_1D5EE6520, MEMORY[0x1E69E6720]);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A328);
    }
  }
}

void sub_1D62D5684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D62D56E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726413C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D62D574C()
{
  if (!qword_1EC8857A8)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8857A8);
    }
  }
}

void sub_1D62D57AC()
{
  if (!qword_1EDF03EB0)
  {
    sub_1D5B5A498(255, &qword_1EDF3C6B0);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03EB0);
    }
  }
}

uint64_t sub_1D62D5828(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    if (!v4)
    {
      break;
    }

LABEL_8:
    v4 &= v4 - 1;
    sub_1D5BF4D9C();
    v10 = sub_1D72639FC();
    if (v10[2] == 3)
    {
      v20 = v10[4];
      v11 = v10[7];
      v19 = v10[6];
      v22 = v10[5];

      v21 = v11;

      v18 = sub_1D72639FC();

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D6993324(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1D6993324((v12 > 1), v13 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v13 + 1;
      v14 = (v8 + 40 * v13);
      v14[4] = v20;
      v14[5] = v22;
      v14[6] = v19;
      v14[7] = v21;
      v14[8] = v18;
    }

    else
    {
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      MEMORY[0x1EEE9AC00](v15, v16);
      sub_1D62D74AC(0, &qword_1EDF053B0, MEMORY[0x1E69D6430], MEMORY[0x1E69E62F8]);
      v17 = sub_1D725BDCC();

      return v17;
    }

    v4 = *(v1 + 8 * v7);
    ++v9;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D62D5B00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1D7263ECC();
    sub_1D62D74AC(0, &qword_1EDF17A80, MEMORY[0x1E69B40B8], MEMORY[0x1E69D6B18]);
    v5 = (a1 + 64);
    do
    {
      v6 = *(v5 - 4);
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v5 += 5;
      v11 = swift_allocObject();
      v11[2] = v6;
      v11[3] = v7;
      v11[4] = v8;
      v11[5] = v9;
      v11[6] = v10;
      v11[7] = a2;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      sub_1D725BA6C();
      v12 = sub_1D725B92C();
      sub_1D725A9BC();
      sub_1D725BAAC();

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      --v2;
    }

    while (v2);
  }

  sub_1D62D7444(0);
  v13 = sub_1D725B92C();
  sub_1D62D7478(0);
  sub_1D62D7610(&qword_1EDF05378, sub_1D62D7478);
  v14 = sub_1D725BA3C();

  return v14;
}

uint64_t sub_1D62D5D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v6 = sub_1D725895C();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = sub_1D72607EC();
  v3[18] = v7;
  v8 = *(v7 - 8);
  v3[19] = v8;
  v3[20] = *(v8 + 64);
  v3[21] = swift_task_alloc();
  v9 = swift_task_alloc();
  v3[22] = v9;
  v10 = swift_task_alloc();
  v3[23] = v10;
  *v10 = v3;
  v10[1] = sub_1D62D5F0C;

  return sub_1D62D65BC(v9, a2, a3);
}

uint64_t sub_1D62D5F0C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1D62D64A4;
  }

  else
  {
    v2 = sub_1D62D6020;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62D6020()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v24 = v8[5];
  v25 = *(v0 + 160);
  v22 = v8[6];
  __swift_project_boxed_opaque_existential_1(v8 + 2, v24);
  sub_1D725894C();
  v23 = sub_1D725893C();
  v11 = v10;
  *(v0 + 200) = v10;
  (*(v7 + 8))(v5, v6);
  (*(v3 + 16))(v2, v1, v4);
  *(v0 + 16) = *v9;
  *(v0 + 32) = *(v9 + 16);
  *(v0 + 80) = *(v9 + 32);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v0 + 208) = v13;
  (*(v3 + 32))(v13 + v12, v2, v4);
  v14 = v13 + ((v25 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = *(v9 + 32);
  v16 = *(v9 + 16);
  *v14 = *v9;
  *(v14 + 16) = v16;
  *(v14 + 32) = v15;
  v17 = *(v22 + 8);
  sub_1D5E422A8(v0 + 16, v0 + 48);
  sub_1D5E422A8(v0 + 32, v0 + 64);
  sub_1D62D75AC(v0 + 80, v0 + 88);
  v21 = (v17 + *v17);
  v18 = swift_task_alloc();
  *(v0 + 216) = v18;
  *v18 = v0;
  v18[1] = sub_1D62D62A4;
  v19 = *(v0 + 96);

  return (v21)(v19, v23, v11, sub_1D62D7510, v13, v24, v22);
}

uint64_t sub_1D62D62A4()
{
  *(*v1 + 224) = v0;

  if (v0)
  {

    v2 = sub_1D62D6524;
  }

  else
  {

    v2 = sub_1D62D6408;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62D6408()
{
  (*(v0[19] + 8))(v0[22], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D62D64A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D62D6524()
{
  (*(v0[19] + 8))(v0[22], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D62D65BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D62D65E0, 0, 0);
}

uint64_t sub_1D62D65E0()
{
  v1 = v0[4];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (v3 == sub_1D726207C() && v2 == v4)
  {
  }

  else
  {
    v6 = sub_1D72646CC();

    if ((v6 & 1) == 0)
    {
      v7 = v0[5];
      v8 = v7[10];
      v9 = v7[11];
      __swift_project_boxed_opaque_existential_1(v7 + 7, v8);
      v0[6] = (*(v9 + 8))(v3, v2, v8, v9);
      v10 = swift_task_alloc();
      v0[7] = v10;
      *v10 = v0;
      v10[1] = sub_1D62D67A4;

      return MEMORY[0x1EEE44EE0](v0 + 2);
    }
  }

  v11 = v0[3];
  v12 = *MEMORY[0x1E69B4088];
  v13 = sub_1D72607EC();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  v14 = v0[1];

  return v14();
}

uint64_t sub_1D62D67A4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5E792F8;
  }

  else
  {

    v2 = sub_1D62D68C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62D68C0()
{
  v1 = v0[3];
  *v1 = v0[2];
  v2 = *MEMORY[0x1E69B4080];
  v3 = sub_1D72607EC();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1D62D696C(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v35 = a2;
  v36 = sub_1D7260BFC();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v4);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D72607EC();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D726080C();
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D726068C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D72606AC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v14 + 104))(v17, *MEMORY[0x1E69B4010], v13);
  sub_1D726069C();
  sub_1D62D7610(&qword_1EDF3AA20, MEMORY[0x1E69B4028]);
  sub_1D72609FC();
  (*(v19 + 8))(v22, v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v29 + 16))(v28, v35, v30);
  (*(v34 + 104))(v31, *MEMORY[0x1E69B4308], v36);

  v23 = v27;
  sub_1D72607FC();
  sub_1D62D7610(&qword_1EDF168B8, MEMORY[0x1E69B40A0]);
  v24 = v32;
  sub_1D72609FC();
  return (*(v33 + 8))(v23, v24);
}

uint64_t sub_1D62D6DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v35 = sub_1D725ABEC();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v3);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72608BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v29 - v12;
  sub_1D62D74AC(0, &unk_1EDF43A30, MEMORY[0x1E69B40B8], MEMORY[0x1E69D6C08]);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v32 = &v29 - v17;
  v18 = *(v6 + 16);
  v18(v13, a1, v5, v16);
  (v18)(v9, v13, v5);
  v19 = sub_1D726084C();
  v29 = v20;
  v30 = v19;
  v21 = sub_1D726087C();
  v23 = v22;
  v24 = sub_1D72608AC();
  v25 = *(v6 + 8);
  v34 = v6 + 8;
  v31 = v25;
  v25(v9, v5);
  v38 = v30;
  v39 = v29;
  v40 = v21;
  v41 = v23;
  v42 = v24;
  v30 = v13;
  (v18)(v9, v13, v5);
  if (qword_1EDF17DA0 != -1)
  {
    swift_once();
  }

  v26 = v35;
  v27 = __swift_project_value_buffer(v35, qword_1EDF17DA8);
  (*(v33 + 16))(v36, v27, v26);
  sub_1D62D713C();

  sub_1D725BF4C();
  v31(v30, v5);
  return sub_1D725A9AC();
}

uint64_t sub_1D62D713C()
{
  v1 = v0[1];
  v23 = *v0;
  v22 = v1;
  v17 = v23;
  v18 = v1;
  v21 = *(v0 + 4);
  v16[2] = v21;
  sub_1D5E422A8(&v23, v16);
  sub_1D5E422A8(&v22, v16);
  sub_1D62D75AC(&v21, v16);
  sub_1D5BBE0A8();
  sub_1D62D7610(&qword_1EDF3C840, sub_1D5BBE0A8);
  v2 = sub_1D7261F3C();
  v4 = v3;
  sub_1D62D7658(&v21);
  v19 = v2;
  v20 = v4;
  v16[0] = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 3, 0);
  v5 = v16[0];
  v6 = v17;
  v8 = *(v16[0] + 16);
  v7 = *(v16[0] + 24);
  v9 = v8 + 1;

  if (v8 >= v7 >> 1)
  {
    sub_1D5BFC364((v7 > 1), v8 + 1, 1);
    v5 = v16[0];
  }

  *(v5 + 16) = v9;
  *(v5 + 16 * v8 + 32) = v6;
  v10 = *(v5 + 24);
  v11 = v8 + 2;

  if (v9 >= v10 >> 1)
  {
    sub_1D5BFC364((v10 > 1), v8 + 2, 1);
    v5 = v16[0];
  }

  *(v5 + 16) = v11;
  *(v5 + 16 * v9 + 32) = v22;
  v12 = *(v5 + 24);

  if ((v8 + 3) > (v12 >> 1))
  {
    sub_1D5BFC364((v12 > 1), v8 + 3, 1);
    v5 = v16[0];
  }

  *(v5 + 16) = v8 + 3;
  v13 = v5 + 16 * v11;
  *(v13 + 32) = v2;
  *(v13 + 40) = v4;
  swift_arrayDestroy();
  v16[0] = v5;
  v14 = sub_1D7261F3C();

  return v14;
}

uint64_t sub_1D62D7398(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D62D5D88(a1, v1 + 16, v4);
}

void sub_1D62D74AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D62D7510(void *a1)
{
  v3 = *(sub_1D72607EC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1D62D696C(a1, v1 + v4, v5);
}

uint64_t sub_1D62D75AC(uint64_t a1, uint64_t a2)
{
  sub_1D5BBE0A8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D62D7610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D62D7658(uint64_t a1)
{
  sub_1D5BBE0A8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DebugFormatWorkspace()
{
  result = qword_1EC8857B8;
  if (!qword_1EC8857B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D62D7738()
{
  type metadata accessor for DebugFormatWorkspaceKind();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FeedContext();
    if (v1 <= 0x3F)
    {
      sub_1D62D786C();
      if (v2 <= 0x3F)
      {
        sub_1D62DBE68(319, &qword_1EC8857D0, type metadata accessor for DebugFormatPackageInventory, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1D62DBE68(319, &qword_1EC8857D8, type metadata accessor for DebugFormatWorkspaceGroup, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D62D786C()
{
  if (!qword_1EDF34BC0[0])
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF34BC0);
    }
  }
}

id sub_1D62D78BC(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  if (v1[11])
  {
    v4 = *(a1 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_cloudContext);

    v5 = [v4 tagController];

    v6 = sub_1D726203C();

    v7 = [v5 slowCachedTagForID_];

    if (v7)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v26[4] = sub_1D62D8018;
      v26[5] = v8;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 1107296256;
      v26[2] = sub_1D6E0CD34;
      v26[3] = &block_descriptor_33;
      v10 = _Block_copy(v26);
      swift_unknownObjectRetain();
      v11 = [v9 initWithDynamicProvider_];
      swift_unknownObjectRelease();

      _Block_release(v10);

      return v11;
    }

    else
    {

      v15._countAndFlagsBits = v3;
      v15._object = v2;
      FeedKind.init(rawValue:)(v15);
      v16 = objc_opt_self();
      if (LOBYTE(v26[0]) == 28 || LOBYTE(v26[0]) == 27)
      {
        v22 = [v16 systemBackgroundColor];
      }

      else
      {
        v23 = v16;
        v24 = [v16 secondarySystemBackgroundColor];
        v25 = [v23 systemBackgroundColor];
        v22 = [v23 ts:v24 dynamicColor:v25 withDarkStyleVariant:?];
      }

      return v22;
    }
  }

  else
  {

    v13._countAndFlagsBits = v3;
    v13._object = v2;
    FeedKind.init(rawValue:)(v13);
    v14 = objc_opt_self();
    if (LOBYTE(v26[0]) == 28 || LOBYTE(v26[0]) == 27)
    {
      v17 = [v14 systemBackgroundColor];

      return v17;
    }

    else
    {
      v18 = v14;
      v19 = [v14 secondarySystemBackgroundColor];
      v20 = [v18 systemBackgroundColor];
      v21 = [v18 ts:v19 dynamicColor:v20 withDarkStyleVariant:?];

      return v21;
    }
  }
}

uint64_t sub_1D62D7C2C()
{
  v1 = type metadata accessor for DebugFormatWorkspaceKind();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62DAA70(v0, v4, type metadata accessor for DebugFormatWorkspaceKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    sub_1D62DAA14(v4);
    if (*(v0 + *(type metadata accessor for DebugFormatWorkspace() + 20) + 48) == 1)
    {
      v14 = &unk_1F50FBD80;
    }

    else
    {
      v14 = &unk_1F50FBDA8;
    }
  }

  else if (EnumCaseMultiPayload - 3 >= 2)
  {
    v16 = v0 + *(type metadata accessor for DebugFormatWorkspace() + 28);
    v17 = *(v16 + 208);
    v36 = *(v16 + 192);
    v37 = v17;
    v38 = *(v16 + 224);
    v39 = *(v16 + 240);
    v18 = *(v16 + 144);
    v32 = *(v16 + 128);
    v33 = v18;
    v19 = *(v16 + 176);
    v34 = *(v16 + 160);
    v35 = v19;
    v20 = *(v16 + 80);
    v28 = *(v16 + 64);
    v29 = v20;
    v21 = *(v16 + 112);
    v30 = *(v16 + 96);
    v31 = v21;
    v22 = *(v16 + 48);
    v26 = *(v16 + 32);
    v27 = v22;
    v23 = *(v16 + 16);
    v24 = *v16;
    v25 = v23;
    if (sub_1D5DEA380(&v24) == 1)
    {
      v14 = &unk_1F50FBD08;
    }

    else
    {
      v14 = &unk_1F50FBD30;
    }
  }

  else
  {
    v6 = v0 + *(type metadata accessor for DebugFormatWorkspace() + 28);
    v7 = *(v6 + 208);
    v36 = *(v6 + 192);
    v37 = v7;
    v38 = *(v6 + 224);
    v39 = *(v6 + 240);
    v8 = *(v6 + 144);
    v32 = *(v6 + 128);
    v33 = v8;
    v9 = *(v6 + 176);
    v34 = *(v6 + 160);
    v35 = v9;
    v10 = *(v6 + 80);
    v28 = *(v6 + 64);
    v29 = v10;
    v11 = *(v6 + 112);
    v30 = *(v6 + 96);
    v31 = v11;
    v12 = *(v6 + 48);
    v26 = *(v6 + 32);
    v27 = v12;
    v13 = *(v6 + 16);
    v24 = *v6;
    v25 = v13;
    if (sub_1D5DEA380(&v24) != 1)
    {
      return MEMORY[0x1E69E7CD0];
    }

    v14 = &unk_1F50FBD58;
  }

  return sub_1D5E28560(v14);
}

uint64_t sub_1D62D7E20(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

id sub_1D62D7E58(void *a1, void *a2)
{
  v3 = [a1 userInterfaceStyle];
  v4 = [a2 theme];
  if (v3 != 2)
  {
    if (v4)
    {
      v5 = [v4 feedBackgroundColor];
      swift_unknownObjectRelease();
      if (v5)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v7 = objc_opt_self();
    v8 = [v7 secondarySystemBackgroundColor];
    v5 = [v7 systemBackgroundColor];
    v6 = [v7 ts:v8 dynamicColor:v5 withDarkStyleVariant:?];

    goto LABEL_9;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [v4 darkStyleFeedBackgroundColor];
  swift_unknownObjectRelease();
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_7:
  v6 = [v5 ne_color];
LABEL_9:

  return v6;
}

uint64_t sub_1D62D8020(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D62D8040, 0, 0);
}

uint64_t sub_1D62D8040()
{
  v1 = v0[11];
  if (*(*(v1 + *(type metadata accessor for DebugFormatWorkspace() + 36)) + 16))
  {
    type metadata accessor for DebugFormatWorkspaceGroup();

    sub_1D725B77C();

    v2 = v0[7];
    v0[12] = v2;
    v3 = swift_task_alloc();
    v0[13] = v3;
    v4 = type metadata accessor for DebugFormatBindingResult();
    v5 = sub_1D5B49474(0, &qword_1EDF3C5D0);
    *v3 = v0;
    v3[1] = sub_1D62D81E4;
    v6 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 8, v2, v4, v5, v6);
  }

  else
  {
    v7 = v0[10];
    *v7 = 0;
    v7[1] = 0;
    *(v0[10] + 16) = -1;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D62D81E4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D62D8464;
  }

  else
  {
    v2 = sub_1D62D8314;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62D8314()
{
  v1 = *(v0[8] + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
  v2 = *(v1 + 16);

  if (v2 && (v3 = sub_1D5B69D90(0x6373654464656546, 0xEE00726F74706972), (v4 & 1) != 0))
  {
    sub_1D5B68374(*(v1 + 56) + 40 * v3, (v0 + 2));
    sub_1D5B49474(0, qword_1EDF431A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v0[9] = 0;
    }

    v5 = v0[9];
    if (v5)
    {
      v6 = 0;
      v7 = v0[10];
      *v7 = v5;
      v7[1] = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = v0[10];
  *v8 = 0;
  v8[1] = 0;
  v6 = -1;
LABEL_9:
  *(v0[10] + 16) = v6;
  v9 = v0[1];

  return v9();
}

uint64_t sub_1D62D847C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D62D849C, 0, 0);
}

uint64_t sub_1D62D849C()
{
  v1 = v0[11];
  if (*(*(v1 + *(type metadata accessor for DebugFormatWorkspace() + 36)) + 16))
  {
    type metadata accessor for DebugFormatWorkspaceGroup();

    sub_1D725B77C();

    v2 = v0[7];
    v0[12] = v2;
    v3 = swift_task_alloc();
    v0[13] = v3;
    v4 = type metadata accessor for DebugFormatBindingResult();
    v5 = sub_1D5B49474(0, &qword_1EDF3C5D0);
    *v3 = v0;
    v3[1] = sub_1D62D8640;
    v6 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 8, v2, v4, v5, v6);
  }

  else
  {
    v7 = v0[10];
    *v7 = 0;
    v7[1] = 0;
    *(v0[10] + 16) = -1;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D62D8640()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D62D8998;
  }

  else
  {
    v2 = sub_1D62D8774;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62D8774()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
  v2 = *(v1 + 16);

  if (!v2 || (v3 = sub_1D5B69D90(0x6373654464656546, 0xEE00726F74706972), (v4 & 1) == 0))
  {

LABEL_9:

    v9 = *(v0 + 80);
    *v9 = 0;
    v9[1] = 0;
    v8 = -1;
    goto LABEL_10;
  }

  sub_1D5B68374(*(v1 + 56) + 40 * v3, v0 + 16);
  sub_1D5B49474(0, qword_1EDF431A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 72) = 0;
  }

  v5 = *(v0 + 72);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [objc_msgSend(*(v0 + 72) backingTag)];
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = *(v0 + 80);

    *v7 = v5;
    v7[1] = v6;
    v8 = 1;
LABEL_10:
    *(*(v0 + 80) + 16) = v8;
    v10 = *(v0 + 8);
    goto LABEL_11;
  }

  type metadata accessor for FormatLayoutError();
  sub_1D5B57390(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v10 = *(v0 + 8);
LABEL_11:

  return v10();
}

void sub_1D62D89B0(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for DebugFormatWorkspace();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      if (*(a2 + *(v11 + 20) + 152))
      {
        sub_1D62DAA70(a2, &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspace);
        v43 = (*(v8 + 80) + 16) & ~*(v8 + 80);
        v15 = swift_allocObject();
        sub_1D62DBECC(v12, v15 + v43, type metadata accessor for DebugFormatWorkspace);
        v16 = &unk_1D72B6608;
        goto LABEL_16;
      }
    }

    else if (v13 == 4)
    {
      v17 = a2 + *(v11 + 28);
      v18 = *(v17 + 208);
      v19 = *(v17 + 176);
      v65 = *(v17 + 192);
      v66 = v18;
      v20 = *(v17 + 208);
      v67 = *(v17 + 224);
      v21 = *(v17 + 144);
      v22 = *(v17 + 112);
      v61 = *(v17 + 128);
      v62 = v21;
      v23 = *(v17 + 144);
      v24 = *(v17 + 176);
      v63 = *(v17 + 160);
      v64 = v24;
      v25 = *(v17 + 80);
      v26 = *(v17 + 48);
      v57 = *(v17 + 64);
      v58 = v25;
      v27 = *(v17 + 80);
      v28 = *(v17 + 112);
      v59 = *(v17 + 96);
      v60 = v28;
      v29 = *(v17 + 16);
      v53 = *v17;
      v54 = v29;
      v30 = *(v17 + 48);
      v32 = *v17;
      v31 = *(v17 + 16);
      v55 = *(v17 + 32);
      v56 = v30;
      v81 = v65;
      v82 = v20;
      v83 = *(v17 + 224);
      v77 = v61;
      v78 = v23;
      v79 = v63;
      v80 = v19;
      v73 = v57;
      v74 = v27;
      v75 = v59;
      v76 = v22;
      v69 = v32;
      v70 = v31;
      v68 = *(v17 + 240);
      v84 = *(v17 + 240);
      v71 = v55;
      v72 = v26;
      if (sub_1D5DEA380(&v69) != 1)
      {
        v33 = swift_allocObject();
        v34 = v82;
        *(v33 + 208) = v81;
        *(v33 + 224) = v34;
        *(v33 + 240) = v83;
        *(v33 + 256) = v84;
        v35 = v78;
        *(v33 + 144) = v77;
        *(v33 + 160) = v35;
        v36 = v80;
        *(v33 + 176) = v79;
        *(v33 + 192) = v36;
        v37 = v74;
        *(v33 + 80) = v73;
        *(v33 + 96) = v37;
        v38 = v76;
        *(v33 + 112) = v75;
        *(v33 + 128) = v38;
        v39 = v70;
        *(v33 + 16) = v69;
        *(v33 + 32) = v39;
        v40 = v72;
        *(v33 + 48) = v71;
        *(v33 + 64) = v40;
        v41 = swift_allocObject();
        *(v41 + 16) = &unk_1D72B65E8;
        *(v41 + 24) = v33;
        *a3 = &unk_1D72B65F8;
        a3[1] = v41;
        v51[12] = v65;
        v51[13] = v66;
        v51[14] = v67;
        v52 = v68;
        v51[8] = v61;
        v51[9] = v62;
        v51[10] = v63;
        v51[11] = v64;
        v51[4] = v57;
        v51[5] = v58;
        v51[6] = v59;
        v51[7] = v60;
        v51[0] = v53;
        v51[1] = v54;
        v51[2] = v55;
        v51[3] = v56;
        sub_1D62DAD08(v51, &v50);
        return;
      }
    }

    else if (*(a2 + *(v11 + 20) + 88))
    {
      v85 = v3;
      v45 = objc_opt_self();

      v46 = sub_1D726203C();

      LODWORD(v45) = [v45 isSportsEventIdentifier_];

      if (v45)
      {
        sub_1D62DAA70(a2, &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspace);
        v47 = (*(v8 + 80) + 16) & ~*(v8 + 80);
        v48 = swift_allocObject();
        sub_1D62DBECC(&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v48 + v47, type metadata accessor for DebugFormatWorkspace);
        *a3 = &unk_1D72B65D8;
        a3[1] = v48;
        return;
      }
    }
  }

  else if (*a1)
  {
    if (v13 == 1)
    {
      if (*(a2 + *(v11 + 20) + 136))
      {
        sub_1D62DAA70(a2, &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspace);
        v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
        v15 = swift_allocObject();
        sub_1D62DBECC(v12, v15 + v14, type metadata accessor for DebugFormatWorkspace);
        v16 = &unk_1D72B6628;
LABEL_16:
        *a3 = v16;
        a3[1] = v15;
        return;
      }
    }

    else if (*(a2 + *(v11 + 20) + 120))
    {
      sub_1D62DAA70(a2, &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspace);
      v44 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v15 = swift_allocObject();
      sub_1D62DBECC(v12, v15 + v44, type metadata accessor for DebugFormatWorkspace);
      v16 = &unk_1D72B6618;
      goto LABEL_16;
    }
  }

  else if (*(a2 + *(v11 + 20) + 104))
  {
    sub_1D62DAA70(a2, &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspace);
    v42 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v15 = swift_allocObject();
    sub_1D62DBECC(v12, v15 + v42, type metadata accessor for DebugFormatWorkspace);
    v16 = &unk_1D72B6638;
    goto LABEL_16;
  }

  *a3 = 0;
  a3[1] = 0;
}

uint64_t sub_1D62D8F58(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D62D8F78, 0, 0);
}

uint64_t sub_1D62D8F78()
{
  v1 = v0[13];
  if (*(*(v1 + *(type metadata accessor for DebugFormatWorkspace() + 36)) + 16))
  {
    type metadata accessor for DebugFormatWorkspaceGroup();

    sub_1D725B77C();

    v2 = v0[10];
    v0[14] = v2;
    v3 = swift_task_alloc();
    v0[15] = v3;
    v4 = type metadata accessor for DebugFormatBindingResult();
    v5 = sub_1D5B49474(0, &qword_1EDF3C5D0);
    *v3 = v0;
    v3[1] = sub_1D62D9118;
    v6 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 11, v2, v4, v5, v6);
  }

  else
  {
    v7 = v0[12];
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D62D9118()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1D62D9454;
  }

  else
  {
    v2 = sub_1D62D9248;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62D9248()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
  v2 = *(v1 + 16);

  if (v2 && (v3 = sub_1D5B69D90(0x756F724764656546, 0xEC00000067615470), (v4 & 1) != 0))
  {
    sub_1D5B68374(*(v1 + 56) + 40 * v3, v0 + 16);
    sub_1D5B49474(0, qword_1EDF431A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = 0;
    }

    v5 = *(v0 + 56);
    if (v5)
    {
      v6 = *(v0 + 64);
      v7 = *(v0 + 96);
      v7[3] = &type metadata for FeedTag;
      v7[4] = sub_1D5EE5BA8();
      v8 = swift_allocObject();
      *v7 = v8;
      v9 = [swift_unknownObjectRetain() identifier];
      v10 = sub_1D726207C();
      v12 = v11;

      *(v8 + 96) = xmmword_1D7279980;
      *(v8 + 112) = 0u;
      *(v8 + 128) = 0u;
      *(v8 + 144) = 0u;
      *(v8 + 160) = 0;
      sub_1D5F587AC(v5, v6);

      *(v8 + 16) = v10;
      *(v8 + 24) = v12;
      *(v8 + 32) = v5;
      *(v8 + 40) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0xE000000000000000;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      v13 = MEMORY[0x1E69E7CD0];
      *(v8 + 80) = 0;
      *(v8 + 88) = v13;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v14 = *(v0 + 96);
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
LABEL_9:
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D62D946C(uint64_t a1, uint64_t a2)
{
  *(v2 + 656) = a2;
  *(v2 + 648) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D62D9490, 0, 0);
}

uint64_t sub_1D62D9490()
{
  v1 = v0[82];
  if (*(*(v1 + *(type metadata accessor for DebugFormatWorkspace() + 36)) + 16))
  {
    type metadata accessor for DebugFormatWorkspaceGroup();

    sub_1D725B77C();

    v2 = v0[79];
    v0[83] = v2;
    v3 = swift_task_alloc();
    v0[84] = v3;
    v4 = type metadata accessor for DebugFormatBindingResult();
    v5 = sub_1D5B49474(0, &qword_1EDF3C5D0);
    *v3 = v0;
    v3[1] = sub_1D62D9630;
    v6 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 80, v2, v4, v5, v6);
  }

  else
  {
    v7 = v0[81];
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D62D9630()
{
  *(*v1 + 680) = v0;

  if (v0)
  {
    v2 = sub_1D62D9964;
  }

  else
  {
    v2 = sub_1D62D9760;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62D9760()
{
  v1 = (v0 + 304);
  v2 = *(*(v0 + 640) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
  v3 = *(v2 + 16);

  if (v3 && (v4 = sub_1D5B69D90(0x7573734964656546, 0xE900000000000065), (v5 & 1) != 0))
  {
    sub_1D5B68374(*(v2 + 56) + 40 * v4, v0 + 592);
    sub_1D5B49474(0, qword_1EDF431A0);
    if (swift_dynamicCast())
    {
      nullsub_1();
      goto LABEL_7;
    }

    v6 = (v0 + 448);
  }

  else
  {
    v6 = (v0 + 160);
  }

  sub_1D5D62850(v6);
  v7 = v6[7];
  *(v0 + 112) = v6[6];
  *(v0 + 128) = v7;
  *(v0 + 137) = *(v6 + 121);
  v8 = v6[3];
  *(v0 + 48) = v6[2];
  *(v0 + 64) = v8;
  v9 = v6[5];
  *(v0 + 80) = v6[4];
  *(v0 + 96) = v9;
  v10 = v6[1];
  *(v0 + 16) = *v6;
  *(v0 + 32) = v10;
LABEL_7:

  v11 = *(v0 + 128);
  *(v0 + 400) = *(v0 + 112);
  *(v0 + 416) = v11;
  *(v0 + 425) = *(v0 + 137);
  v12 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v12;
  v13 = *(v0 + 96);
  *(v0 + 368) = *(v0 + 80);
  *(v0 + 384) = v13;
  v14 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v0 + 320) = v14;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0((v0 + 304)) == 1)
  {

    v15 = *(v0 + 648);
    *(v15 + 32) = 0;
    *v15 = 0u;
    *(v15 + 16) = 0u;
  }

  else
  {
    v16 = *(v0 + 648);
    v16[3] = &type metadata for FeedIssue;
    v16[4] = sub_1D5EE5AA4();
    v17 = swift_allocObject();
    *v16 = v17;

    v18 = *(v0 + 416);
    v17[7] = *(v0 + 400);
    v17[8] = v18;
    *(v17 + 137) = *(v0 + 425);
    v19 = *(v0 + 352);
    v17[3] = *(v0 + 336);
    v17[4] = v19;
    v20 = *(v0 + 384);
    v17[5] = *(v0 + 368);
    v17[6] = v20;
    v21 = *(v0 + 320);
    v17[1] = *v1;
    v17[2] = v21;
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D62D997C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_1D62DBE68(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D62D9A3C, 0, 0);
}

uint64_t sub_1D62D9A3C()
{
  v1 = v0[5];
  if (*(*(v1 + *(type metadata accessor for DebugFormatWorkspace() + 36)) + 16))
  {
    type metadata accessor for DebugFormatWorkspaceGroup();

    sub_1D725B77C();

    v2 = v0[2];
    v0[7] = v2;
    v3 = swift_task_alloc();
    v0[8] = v3;
    v4 = type metadata accessor for DebugFormatBindingResult();
    v5 = sub_1D5B49474(0, &qword_1EDF3C5D0);
    *v3 = v0;
    v3[1] = sub_1D62D9BE4;
    v6 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 3, v2, v4, v5, v6);
  }

  else
  {
    v7 = v0[4];
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D62D9BE4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D62D9EB4;
  }

  else
  {
    v2 = sub_1D62D9D14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62D9D14()
{
  if (!v0[3])
  {
    goto LABEL_4;
  }

  v1 = v0[6];

  sub_1D678EE20(v2, v1);

  v3 = type metadata accessor for FeedHeadline(0);
  v4 = (*(*(v3 - 8) + 48))(v1, 1, v3);
  v5 = v0[6];
  if (v4 == 1)
  {

    sub_1D62DBDF8(v5, qword_1EDF42030, type metadata accessor for FeedHeadline);
LABEL_4:
    v6 = v0[4];
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    goto LABEL_6;
  }

  v7 = v0[4];
  v7[3] = v3;
  v7[4] = sub_1D5B57390(&qword_1EDF34AD0, type metadata accessor for FeedHeadline);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  sub_1D62DBECC(v5, boxed_opaque_existential_1, type metadata accessor for FeedHeadline);

LABEL_6:

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D62D9EB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D62D9F18(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_1D62DBE68(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D62D9FD8, 0, 0);
}

uint64_t sub_1D62D9FD8()
{
  v1 = v0[5];
  if (*(*(v1 + *(type metadata accessor for DebugFormatWorkspace() + 36)) + 16))
  {
    type metadata accessor for DebugFormatWorkspaceGroup();

    sub_1D725B77C();

    v2 = v0[2];
    v0[7] = v2;
    v3 = swift_task_alloc();
    v0[8] = v3;
    v4 = type metadata accessor for DebugFormatBindingResult();
    v5 = sub_1D5B49474(0, &qword_1EDF3C5D0);
    *v3 = v0;
    v3[1] = sub_1D62DA180;
    v6 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 3, v2, v4, v5, v6);
  }

  else
  {
    v7 = v0[4];
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D62DA180()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D62DC08C;
  }

  else
  {
    v2 = sub_1D62DA2B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62DA2B0()
{
  if (!v0[3])
  {
    goto LABEL_4;
  }

  v1 = v0[6];

  sub_1D678EE54(v2, v1);

  v3 = type metadata accessor for FeedRecipe();
  v4 = (*(*(v3 - 8) + 48))(v1, 1, v3);
  v5 = v0[6];
  if (v4 == 1)
  {

    sub_1D62DBDF8(v5, qword_1EDF34D20, type metadata accessor for FeedRecipe);
LABEL_4:
    v6 = v0[4];
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    goto LABEL_6;
  }

  v7 = v0[4];
  v7[3] = v3;
  v7[4] = sub_1D5B57390(&qword_1EDF12E00, type metadata accessor for FeedRecipe);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  sub_1D62DBECC(v5, boxed_opaque_existential_1, type metadata accessor for FeedRecipe);

LABEL_6:

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D62DA450(uint64_t a1, uint64_t a2)
{
  *(v2 + 264) = a1;
  *(v2 + 272) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D62DA470, 0, 0);
}

uint64_t sub_1D62DA470()
{
  v1 = v0[33];
  v2 = v0[34];
  v1[3] = &type metadata for FeedPaywall;
  v1[4] = sub_1D62DBF34();
  v3 = swift_allocObject();
  *v1 = v3;
  v4 = *(v2 + 48);
  v6 = *v2;
  v5 = *(v2 + 16);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 16) = v6;
  *(v3 + 32) = v5;
  v7 = *(v2 + 112);
  v9 = *(v2 + 64);
  v8 = *(v2 + 80);
  *(v3 + 112) = *(v2 + 96);
  *(v3 + 128) = v7;
  *(v3 + 80) = v9;
  *(v3 + 96) = v8;
  v10 = *(v2 + 176);
  v12 = *(v2 + 128);
  v11 = *(v2 + 144);
  *(v3 + 176) = *(v2 + 160);
  *(v3 + 192) = v10;
  *(v3 + 144) = v12;
  *(v3 + 160) = v11;
  v14 = *(v2 + 208);
  v13 = *(v2 + 224);
  v15 = *(v2 + 192);
  *(v3 + 256) = *(v2 + 240);
  *(v3 + 224) = v14;
  *(v3 + 240) = v13;
  *(v3 + 208) = v15;
  sub_1D62DAD08(v2, (v0 + 2));
  v16 = v0[1];

  return v16();
}

uint64_t sub_1D62DA54C(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D62DA56C, 0, 0);
}

uint64_t sub_1D62DA56C()
{
  v1 = v0[15];
  if (*(*(v1 + *(type metadata accessor for DebugFormatWorkspace() + 36)) + 16))
  {
    type metadata accessor for DebugFormatWorkspaceGroup();

    sub_1D725B77C();

    v2 = v0[12];
    v0[16] = v2;
    v3 = swift_task_alloc();
    v0[17] = v3;
    v4 = type metadata accessor for DebugFormatBindingResult();
    v5 = sub_1D5B49474(0, &qword_1EDF3C5D0);
    *v3 = v0;
    v3[1] = sub_1D62DA70C;
    v6 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 13, v2, v4, v5, v6);
  }

  else
  {
    v7 = v0[14];
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D62DA70C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1D62DA9FC;
  }

  else
  {
    v2 = sub_1D62DA83C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D62DA83C()
{
  v1 = *(*(v0 + 104) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
  v2 = *(v1 + 16);

  if (v2 && (v3 = sub_1D5B69D90(0x726F705364656546, 0xEF746E6576457374), (v4 & 1) != 0))
  {
    sub_1D5B68374(*(v1 + 56) + 40 * v3, v0 + 16);
    sub_1D5B49474(0, qword_1EDF431A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }

    v5 = *(v0 + 64);
    if (v5)
    {
      v6 = *(v0 + 112);
      v7 = *(v0 + 88);
      v9 = *(v0 + 72);
      v8 = *(v0 + 80);
      v10 = *(v0 + 56);
      v6[3] = &type metadata for FeedSportsEvent;
      v6[4] = sub_1D62DC038();
      v11 = swift_allocObject();
      *v6 = v11;

      *(v11 + 16) = v10;
      *(v11 + 24) = v5;
      *(v11 + 32) = v9;
      *(v11 + 40) = v8;
      *(v11 + 48) = v7 & 1;
      goto LABEL_9;
    }
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  v12 = *(v0 + 112);
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
LABEL_9:
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D62DAA14(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatWorkspaceKind();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62DAA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D62DAAD8(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D62DA54C(a1, v1 + v5);
}

uint64_t sub_1D62DABB4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D5B64684;

  return sub_1D62DA450(a1, v1 + 16);
}

uint64_t sub_1D62DAC50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D5BD7030(a1, v4);
}

uint64_t sub_1D62DAD64(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D62D9F18(a1, v1 + v5);
}

uint64_t sub_1D62DAE40(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D62D997C(a1, v1 + v5);
}

uint64_t sub_1D62DAF1C(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D62D946C(a1, v1 + v5);
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = type metadata accessor for DebugFormatWorkspace();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  type metadata accessor for DebugFormatWorkspaceKind();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for DebugFormatCacheFile();
    if ((*(*(v11 - 8) + 48))(v0 + v3, 1, v11))
    {
      goto LABEL_41;
    }

    v12 = v4 + *(v11 + 28);
    v8 = sub_1D725BD1C();
    v9 = *(*(v8 - 8) + 8);
    v9(v12, v8);
    type metadata accessor for DebugFormatCacheFileMetadata();

    v10 = v4 + *(v11 + 32);
    type metadata accessor for FormatFile();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
LABEL_7:

        v13 = type metadata accessor for FormatContent(0);
        v14 = *(v13 + 20);
        v15 = sub_1D725891C();
        (*(*(v15 - 8) + 8))(v10 + v14, v15);

        v16 = *(v13 + 44);
        v17 = sub_1D72608BC();
        v18 = *(v17 - 8);
        if (!(*(v18 + 48))(v10 + v16, 1, v17))
        {
          (*(v18 + 8))(v10 + v16, v17);
        }

        goto LABEL_9;
      case 1u:
LABEL_23:

        if (*(v10 + 106) != 255)
        {
          v28 = *(v10 + 104) | (*(v10 + 106) << 16);
          sub_1D60CF684(*(v10 + 96), v28, SBYTE2(v28));
        }

        goto LABEL_40;
      case 2u:
LABEL_16:

        if (*(v10 + 72) >= 3uLL)
        {
        }

        goto LABEL_39;
      case 3u:
LABEL_19:

        if (*(v10 + 56) >= 0x10uLL)
        {
        }

        goto LABEL_39;
      case 4u:
LABEL_13:

        goto LABEL_39;
      case 5u:
LABEL_25:

        if (*(v10 + 168) >= 3uLL)
        {
        }

        v42 = type metadata accessor for FormatPackage();
        v29 = v10 + v42[23];

        v45 = type metadata accessor for FormatCompilerOptions(0);
        v46 = v29 + *(v45 + 24);
        if (*(v46 + 8) != 1)
        {
        }

        v41 = v29;
        v30 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
        v49 = sub_1D725B76C();
        v43 = *(v49 - 8);
        v44 = *(v43 + 48);
        if (!v44(v46 + v30, 1))
        {
          (*(v43 + 8))(v46 + v30, v49);
        }

        v47 = *(v45 + 28);
        if (!(v44)(v41 + v47, 1, v49))
        {
          (*(v43 + 8))(v41 + v47, v49);
        }

        v9(v10 + v42[24], v8);
        v31 = v42[25];
        if (!(v44)(v10 + v31, 1, v49))
        {
          (*(v43 + 8))(v10 + v31, v49);
        }

        goto LABEL_39;
      case 6u:
LABEL_36:

        goto LABEL_39;
      case 7u:
LABEL_22:

        goto LABEL_40;
      case 8u:
LABEL_38:

        goto LABEL_39;
      case 9u:
LABEL_15:

        goto LABEL_39;
      case 0xAu:
LABEL_37:

        sub_1D60CF6F4(*(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80));
        goto LABEL_40;
      case 0xBu:
LABEL_10:

        v19 = v10 + *(type metadata accessor for FormatBindingContent() + 28);

        v20 = type metadata accessor for FormatContent(0);
        v21 = *(v20 + 20);
        v22 = sub_1D725891C();
        (*(*(v22 - 8) + 8))(v19 + v21, v22);

        v23 = *(v20 + 44);
        v24 = sub_1D72608BC();
        v25 = *(v24 - 8);
        v48 = v23;
        v26 = v19 + v23;
        v27 = v24;
        if (!(*(v25 + 48))(v26, 1, v24))
        {
          (*(v25 + 8))(v19 + v48, v27);
        }

LABEL_9:

        goto LABEL_39;
      case 0xCu:
LABEL_14:

LABEL_39:

        break;
      default:
        goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for DebugFormatCacheFile();
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {

      v7 = v4 + *(v6 + 28);
      v8 = sub_1D725BD1C();
      v9 = *(*(v8 - 8) + 8);
      v9(v7, v8);
      type metadata accessor for DebugFormatCacheFileMetadata();

      v10 = v4 + *(v6 + 32);
      type metadata accessor for FormatFile();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_7;
        case 1u:
          goto LABEL_23;
        case 2u:
          goto LABEL_16;
        case 3u:
          goto LABEL_19;
        case 4u:
          goto LABEL_13;
        case 5u:
          goto LABEL_25;
        case 6u:
          goto LABEL_36;
        case 7u:
          goto LABEL_22;
        case 8u:
          goto LABEL_38;
        case 9u:
          goto LABEL_15;
        case 0xAu:
          goto LABEL_37;
        case 0xBu:
          goto LABEL_10;
        case 0xCu:
          goto LABEL_14;
        default:
          break;
      }

LABEL_40:
      sub_1D60CF7A4();
      sub_1D5B952F8(*(v10 + *(v32 + 44)), *(v10 + *(v32 + 44) + 8));
    }
  }

LABEL_41:

  v33 = (v4 + *(v1 + 24));

  v34 = type metadata accessor for FeedContext();
  v35 = v33 + v34[5];
  v36 = type metadata accessor for BundleSession();
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v37 = *(v36 + 20);
    v38 = sub_1D725891C();
    v4 = v0 + v3;
    (*(*(v38 - 8) + 8))(&v35[v37], v38);
  }

  if (*(v33 + v34[12] + 8) - 1 >= 3)
  {
  }

  v39 = (v4 + *(v1 + 28));
  if (v39[1])
  {

    if (v39[17] >= 3uLL)
    {
    }

    swift_unknownObjectRelease();

    if (v39[30] >= 0x12uLL)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D62DBD1C(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D62D8F58(a1, v1 + v5);
}

uint64_t sub_1D62DBDF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D62DBE68(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D62DBE68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D62DBECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D62DBF34()
{
  result = qword_1EC8857F8;
  if (!qword_1EC8857F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8857F8);
  }

  return result;
}

uint64_t objectdestroy_13Tm_0()
{

  if (*(v0 + 152) >= 3uLL)
  {
  }

  swift_unknownObjectRelease();

  if (*(v0 + 256) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1D62DC038()
{
  result = qword_1EDF15110;
  if (!qword_1EDF15110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15110);
  }

  return result;
}

uint64_t _s8NewsFeed17FormatPatternModeO2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((v2 & 0x80000000) == 0)
  {
    if ((v3 & 0x80000000) == 0)
    {

      return sub_1D6DDE758(v2, v3);
    }

    return 0;
  }

  if ((v3 & 0x80000000) == 0)
  {
    return 0;
  }

  v5 = (v2 & 1) == 0;
  if (v2)
  {
    v6 = 0x6F546D6F74746F62;
  }

  else
  {
    v6 = 0x746F426F54706F74;
  }

  if (v5)
  {
    v7 = 0xEB000000006D6F74;
  }

  else
  {
    v7 = 0xEB00000000706F54;
  }

  if (v3)
  {
    v8 = 0x6F546D6F74746F62;
  }

  else
  {
    v8 = 0x746F426F54706F74;
  }

  if (v3)
  {
    v9 = 0xEB00000000706F54;
  }

  else
  {
    v9 = 0xEB000000006D6F74;
  }

  if (v6 == v8 && v7 == v9)
  {

    return 1;
  }

  else
  {
    v11 = sub_1D72646CC();

    return v11 & 1;
  }
}

unint64_t sub_1D62DC1C4(uint64_t a1)
{
  result = sub_1D62DC1EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D62DC1EC()
{
  result = qword_1EC885800;
  if (!qword_1EC885800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885800);
  }

  return result;
}

unint64_t sub_1D62DC240(void *a1)
{
  a1[1] = sub_1D62DC278();
  a1[2] = sub_1D62DC2CC();
  result = sub_1D62DC320();
  a1[3] = result;
  return result;
}

unint64_t sub_1D62DC278()
{
  result = qword_1EDF10BA8;
  if (!qword_1EDF10BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10BA8);
  }

  return result;
}

unint64_t sub_1D62DC2CC()
{
  result = qword_1EDF10BB0;
  if (!qword_1EDF10BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10BB0);
  }

  return result;
}

unint64_t sub_1D62DC320()
{
  result = qword_1EC885808;
  if (!qword_1EC885808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885808);
  }

  return result;
}

uint64_t FeedAppConfigManager.__allocating_init(appConfigManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  type metadata accessor for FormatFeedConfigManager();
  swift_allocObject();
  *(v2 + 24) = sub_1D5B7B960();
  return v2;
}

uint64_t FeedAppConfigManagerType.feedEditionConfig.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDF38CD8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_1EDF38CE8;
  *a1 = qword_1EDF38CE0;
  a1[1] = v2;
}

uint64_t FeedAppConfigManager.init(appConfigManager:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for FormatFeedConfigManager();
  swift_allocObject();
  *(v1 + 24) = sub_1D5B7B960();
  return v1;
}

id FeedAppConfigManager.timesOfDayConfiguration.getter()
{
  v1 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
  if ([v1 respondsToSelector_])
  {
    v2 = [v1 timesOfDayConfiguration];
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

double FeedAppConfigManager.feedEditionConfig.getter@<D0>(_OWORD *a1@<X8>)
{
  swift_getObjectType();
  FCNewsAppConfigurationManager.todayFeedEditionConfig.getter(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t FeedAppConfigManager.formatFeedConfig.getter@<X0>(void *a1@<X8>)
{
  sub_1D5EE679C([*(v1 + 16) possiblyUnfetchedAppConfiguration], a1);

  return swift_unknownObjectRelease();
}

unint64_t FeedAppConfigManager.puzzleRanksByPuzzleTypeID.getter()
{
  v1 = [objc_msgSend(*(v0 + 16) appConfiguration)];
  swift_unknownObjectRelease();
  v2 = [v1 puzzleRanksByPuzzleTypeID];

  if (v2)
  {
    sub_1D62DC978();
    v3 = sub_1D7261D3C();

    return v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];

    return sub_1D605B3C8(v5);
  }
}

uint64_t FeedAppConfigManager.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t FeedAppConfigManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D62DC734@<X0>(void *a1@<X8>)
{
  sub_1D5EE679C([*(*v1 + 16) possiblyUnfetchedAppConfiguration], a1);

  return swift_unknownObjectRelease();
}

unint64_t sub_1D62DC798()
{
  v1 = [objc_msgSend(*(*v0 + 16) appConfiguration)];
  swift_unknownObjectRelease();
  v2 = [v1 puzzleRanksByPuzzleTypeID];

  if (v2)
  {
    sub_1D62DC978();
    v3 = sub_1D7261D3C();

    return v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];

    return sub_1D605B3C8(v5);
  }
}

uint64_t sub_1D62DC86C()
{

  return swift_deallocClassInstance();
}

void *sub_1D62DC8CC()
{
  v1 = *(*v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_1D62DC8F8@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 40);
  *a1 = *(*v1 + 32);
  a1[1] = v2;
}

void sub_1D62DC978()
{
  if (!qword_1EDF04A60)
  {
    sub_1D5B5A498(255, &qword_1EDF04670);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04A60);
    }
  }
}

uint64_t sub_1D62DCAC8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = MEMORY[0x1DA6FA1E0](result, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v14 = result;
  v7 = v4 - a2;
  if (v4 != a2)
  {
    if (a2 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = a2;
    }

    v9 = v8 - a2;
    v10 = (a1 + 16 * a2 + 8);
    while (v9)
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      sub_1D5B860D0(&v13, v12, v11);

      --v9;
      v10 += 2;
      if (!--v7)
      {
        return v14;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1D62DCBF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA6FA1E0](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D5FE917C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D62DCC68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D6007548();
  result = MEMORY[0x1DA6FA1E0](v2, &type metadata for DebugFormatWorkspaceDevice, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 33);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 2;
      if (v7)
      {
        v8 = 256;
      }

      else
      {
        v8 = 0;
      }

      sub_1D5FEEEB0(v9, v8 | v6);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1D62DCCF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D5F62384();
  result = MEMORY[0x1DA6FA1E0](v2, &type metadata for FormatScoreDataVisualizationTrait, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1D5FF0100(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D62DCD64(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for UIUserInterfaceIdiom(0);
  v4 = v3;
  v5 = sub_1D5C19444(&qword_1EC880048, type metadata accessor for UIUserInterfaceIdiom);
  result = MEMORY[0x1DA6FA1E0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1D5FF02C0(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1D62DCE10(uint64_t a1)
{
  v2 = sub_1D726098C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D5C19444(&unk_1EDF168A8, MEMORY[0x1E69B4188]);
  result = MEMORY[0x1DA6FA1E0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v2);
      sub_1D5FF03B8(v10, v6);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_1D62DCFE0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1DA6FA1E0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

unint64_t sub_1D62DD060(uint64_t a1)
{
  result = sub_1D5B577E4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D62DD088(uint64_t a1)
{
  result = sub_1D5B4CD5C(&qword_1EDF45B80, MEMORY[0x1E6968FB0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D62DD0E0(uint64_t a1)
{
  result = sub_1D5B4CD5C(&qword_1EDF45B20, MEMORY[0x1E6969530]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D62DD138(uint64_t a1)
{
  result = sub_1D5B4CD5C(&qword_1EC8836B0, MEMORY[0x1E69D6B38]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D62DD190(void *a1)
{
  v2 = MEMORY[0x1E69D6B38];
  a1[1] = sub_1D5B4CD5C(&qword_1EDF43A48, MEMORY[0x1E69D6B38]);
  a1[2] = sub_1D5B4CD5C(&qword_1EDF178C0, v2);
  result = sub_1D5B4CD5C(&qword_1EDF178B8, v2);
  a1[3] = result;
  return result;
}

uint64_t sub_1D62DD23C(void *a1)
{
  v2 = MEMORY[0x1E69D6A58];
  a1[1] = sub_1D5B4CD5C(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58]);
  a1[2] = sub_1D5B4CD5C(&qword_1EDF3BAA8, v2);
  result = sub_1D5B4CD5C(&qword_1EC881E90, v2);
  a1[3] = result;
  return result;
}

uint64_t sub_1D62DD368(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D62DD400(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D62DD4AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_1D62DD4F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D62DD564(uint64_t a1, void *a2)
{
  v5 = sub_1D725A19C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7259EDC();
  v10 = *(a1 + 56);
  if ((~v10 & 0xF000000000000007) != 0)
  {
    v27[1] = v10;

    v19 = sub_1D5F4FDC4(a2);
    if (v2)
    {
      (*(v6 + 8))(v9, v5);
      return sub_1D5C8500C(v10);
    }

    else
    {
      v20 = v19;
      sub_1D725A18C();
      v22 = v21;
      if (qword_1EDF34BB8 != -1)
      {
        swift_once();
      }

      sub_1D7264C3C();
      if (v29 == 1)
      {
        [v20 pointSize];
        v24 = v23;
        sub_1D7264C3C();
        v25 = round(v22 * (v24 * 4.0) * 0.25);
        if (!v28)
        {
          v25 = v24;
        }

        v26 = [v20 fontWithSize_];
        sub_1D5C8500C(v10);
        (*(v6 + 8))(v9, v5);

        return v26;
      }

      else
      {
        sub_1D5C8500C(v10);
        (*(v6 + 8))(v9, v5);
        return v20;
      }
    }
  }

  else
  {
    v11 = [objc_opt_self() systemFontOfSize_];
    sub_1D725A18C();
    v13 = v12;
    if (qword_1EDF34BB8 != -1)
    {
      swift_once();
    }

    sub_1D7264C3C();
    if (v31 == 1)
    {
      [v11 pointSize];
      v15 = v14;
      sub_1D7264C3C();
      v16 = round(v13 * (v15 * 4.0) * 0.25);
      if (!v30)
      {
        v16 = v15;
      }

      v17 = [v11 fontWithSize_];
      (*(v6 + 8))(v9, v5);

      return v17;
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      return v11;
    }
  }
}

id sub_1D62DD8C8(id a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4)
  {
    v9 = *(a3 + 56);
    v10 = *(a4 + 56);
    if ((~v9 & 0xF000000000000007) != 0)
    {
      v19 = *(a3 + 56);
      if ((~v10 & 0xF000000000000007) != 0)
      {
        v18 = v10;

        sub_1D62B8444(v10);
        sub_1D62B8444(v9);
        sub_1D62B8444(v9);
        v12 = static FormatFont.== infix(_:_:)(&v19, &v18);

        sub_1D5C8500C(v9);
        if (v12)
        {

          goto LABEL_12;
        }

LABEL_9:
        v11 = sub_1D62DD564(a4, a5);

        return v11;
      }

      sub_1D62B8444(v10);
      sub_1D62B8444(v9);
      sub_1D62B8444(v9);
    }

    else
    {
      if ((~v10 & 0xF000000000000007) == 0)
      {
        sub_1D62B8444(*(a4 + 56));
        sub_1D62B8444(v9);
        sub_1D5C8500C(v9);
        goto LABEL_12;
      }

      sub_1D62B8444(v10);
      sub_1D62B8444(v9);
    }

    sub_1D5C8500C(v9);
    sub_1D5C8500C(v10);
    goto LABEL_9;
  }

LABEL_12:
  v13 = [a1 fontDescriptor];
  v14 = [v13 symbolicTraits];

  v15 = [a1 fontDescriptor];
  v16 = [v15 fontDescriptorWithSymbolicTraits_];

  if (v16)
  {
    v11 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];

    if (v11)
    {
      return v11;
    }
  }

  return a1;
}

uint64_t sub_1D62DDAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v48 = a2;
  v3 = sub_1D7257F9C();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725815C();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v40 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v38 - v14;
  sub_1D725814C();
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = *v2;
  v38 = v51;
  v16 = sub_1D7257EDC();
  sub_1D62DEAA4(&qword_1EDF3C418, MEMORY[0x1E69DBE88]);
  v44 = v16;
  v17 = sub_1D725812C();
  sub_1D62DE3AC();
  sub_1D62DE440();
  sub_1D725830C();
  v17(v53, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v57 = *(v2 + 8);
  v51 = v57;
  v49 = sub_1D62DE494;
  sub_1D62DF980(&v57, v53, sub_1D62DE494);
  v18 = sub_1D725812C();
  sub_1D62DE4FC();
  sub_1D725830C();
  v18(v53, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v56 = *(v2 + 16);
  v51 = v56;
  sub_1D62DF980(&v56, v53, sub_1D62DE494);
  v19 = sub_1D725812C();
  sub_1D62DE550();
  v20 = v15;
  sub_1D725830C();
  v19(v53, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v51 = *(v2 + 72);
  v52 = *(v2 + 80);
  v21 = sub_1D725812C();
  sub_1D62DE5A4();
  sub_1D725830C();
  v21(v53, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v51 = *(v2 + 24);
  v52 = *(v2 + 32);
  v22 = sub_1D725812C();
  sub_1D62DE614();
  sub_1D725830C();
  v22(v53, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v55 = *(v2 + 40);
  v51 = v55;
  sub_1D62DF980(&v55, v53, v49);
  v23 = sub_1D725812C();
  sub_1D62DE668();
  sub_1D725830C();
  v23(v53, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v51 = *(v2 + 48);
  v52 = *(v2 + 56);
  v24 = sub_1D725812C();
  sub_1D62DE6D8();
  sub_1D725830C();
  v24(v53, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v54 = *(v2 + 64);
  v51 = v54;
  sub_1D62DF980(&v54, v53, v49);
  v25 = sub_1D725812C();
  sub_1D62DE72C();
  sub_1D725830C();
  v25(v53, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v51 = *(v2 + 88);
  v52 = *(v2 + 96);
  v26 = sub_1D725812C();
  sub_1D62DE79C();
  sub_1D725830C();
  v26(v53, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v50 = v45;
  v51 = sub_1D62DE8BC(sub_1D62DE8B4);
  v27 = sub_1D725812C();
  sub_1D62DEA50();
  sub_1D725830C();
  v27(v53, 0);

  v28 = *(v2 + 120);
  if (v28 == 18)
  {
    return (*(v46 + 32))(v48, v15, v47);
  }

  v30 = v39;
  sub_1D67E0574(v38, v28);
  v32 = v46;
  v31 = v47;
  v33 = v40;
  (*(v46 + 32))(v40, v30, v47);
  v35 = v42;
  v34 = v43;
  v36 = v41;
  (*(v42 + 104))(v41, *MEMORY[0x1E69686E8], v43);
  sub_1D725813C();
  (*(v35 + 8))(v36, v34);
  v37 = *(v32 + 8);
  v37(v33, v31);
  return (v37)(v20, v31);
}

void sub_1D62DE3AC()
{
  if (!qword_1EDF3C3E8)
  {
    sub_1D7257EDC();
    sub_1D62DEAA4(&qword_1EDF3C418, MEMORY[0x1E69DBE88]);
    v0 = sub_1D725831C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C3E8);
    }
  }
}

unint64_t sub_1D62DE440()
{
  result = qword_1EDF3C430;
  if (!qword_1EDF3C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C430);
  }

  return result;
}

void sub_1D62DE494()
{
  if (!qword_1EDF1A698)
  {
    sub_1D5B5A498(255, qword_1EDF1A6A0);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A698);
    }
  }
}

unint64_t sub_1D62DE4FC()
{
  result = qword_1EDF3C448;
  if (!qword_1EDF3C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C448);
  }

  return result;
}

unint64_t sub_1D62DE550()
{
  result = qword_1EDF3C450;
  if (!qword_1EDF3C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C450);
  }

  return result;
}

unint64_t sub_1D62DE5A4()
{
  result = qword_1EDF3C420;
  if (!qword_1EDF3C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C420);
  }

  return result;
}

unint64_t sub_1D62DE614()
{
  result = qword_1EDF3C458;
  if (!qword_1EDF3C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C458);
  }

  return result;
}

unint64_t sub_1D62DE668()
{
  result = qword_1EDF3C460;
  if (!qword_1EDF3C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C460);
  }

  return result;
}

unint64_t sub_1D62DE6D8()
{
  result = qword_1EDF3C438;
  if (!qword_1EDF3C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C438);
  }

  return result;
}

unint64_t sub_1D62DE72C()
{
  result = qword_1EDF3C440;
  if (!qword_1EDF3C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C440);
  }

  return result;
}

unint64_t sub_1D62DE79C()
{
  result = qword_1EDF3C470;
  if (!qword_1EDF3C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C470);
  }

  return result;
}

uint64_t sub_1D62DE7F0()
{
  v0 = sub_1D7257F3C();
  MEMORY[0x1EEE9AC00](v0, v1);
  sub_1D7257F1C();
  sub_1D62DEAA4(&qword_1EC885818, MEMORY[0x1E6968678]);
  return sub_1D726234C();
}

id sub_1D62DE8BC(void (*a1)(id, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, uint64_t))
{
  v3 = *(v1 + 104);
  v4 = *(v3 + 244);
  v3 = (v3 + 296);
  v48 = v4;
  v5 = v3[11];
  v46 = v3[10];
  v47 = v5;
  v6 = v3[7];
  v42 = v3[6];
  v43 = v6;
  v7 = v3[9];
  v44 = v3[8];
  v45 = v7;
  v8 = v3[3];
  v38 = v3[2];
  v39 = v8;
  v9 = v3[5];
  v40 = v3[4];
  v41 = v9;
  v10 = v3[1];
  v36 = *v3;
  v37 = v10;
  if (sub_1D5D39FB4(&v36) == 1)
  {
    return 0;
  }

  v33 = v42;
  v34 = v43;
  v35 = v44;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  v32 = v41;
  v27 = v36;
  v28 = v37;
  result = FormatParagraphStyle.paragraphStyle.getter();
  if ((v46 & 1) == 0)
  {
    v19 = result;
    v20 = *(&v45 + 1);
    a1(result, v12, v13, v14, v15, v16, v17, v18, v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35);
    if (v21)
    {
      v22 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
      [v22 setParagraphStyle_];
      v23 = *v1;
      v24 = sub_1D726203C();

      [v23 ts:v24 tightenedLineSpacingForString:v20 minimumLineSpacingMultiple:?];
      v26 = v25;

      [v22 setLineSpacing_];
      return v22;
    }

    else
    {
      return v19;
    }
  }

  return result;
}

unint64_t sub_1D62DEA50()
{
  result = qword_1EDF3C468;
  if (!qword_1EDF3C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C468);
  }

  return result;
}

uint64_t sub_1D62DEAA4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D62DEAEC(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  v5 = sub_1D62DED0C();
  v6 = [a1 imageWithConfiguration_];

  [v4 setImage_];
  sub_1D5B5A498(0, &qword_1EDF1A7E0);
  v7 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  v8 = [v7 length];
  [v7 addAttribute:*MEMORY[0x1E69DB648] value:*v2 range:{0, v8}];
  v9 = *(v2 + 104);
  v45 = *(v9 + 488);
  v10 = *(v9 + 472);
  v43 = *(v9 + 456);
  v44 = v10;
  v11 = *(v9 + 408);
  v39 = *(v9 + 392);
  v40 = v11;
  v12 = *(v9 + 440);
  v41 = *(v9 + 424);
  v42 = v12;
  v13 = *(v9 + 344);
  v35 = *(v9 + 328);
  v36 = v13;
  v14 = *(v9 + 376);
  v37 = *(v9 + 360);
  v38 = v14;
  v15 = *(v9 + 312);
  v33 = *(v9 + 296);
  v34 = v15;
  if (sub_1D5D39FB4(&v33) != 1)
  {
    v30 = v43;
    v31 = v44;
    LOWORD(v32) = v45;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    v25 = v38;
    v20 = v33;
    v21 = v34;
    v16 = FormatParagraphStyle.paragraphStyle.getter();
    [v7 addAttribute:*MEMORY[0x1E69DB688] value:v16 range:{0, v8, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32}];
  }

  if ((*(v2 + 96) & 1) == 0)
  {
    v17 = *MEMORY[0x1E69DB610];
    v18 = sub_1D725A62C();
    [v7 addAttribute:v17 value:v18 range:{0, v8}];
  }

  return v7;
}

id sub_1D62DED0C()
{
  v1 = v0;
  v17 = MEMORY[0x1E69E7CC0];
  v2 = v0[1];
  if (v2)
  {
    v3 = v2;
    MEMORY[0x1DA6F9CE0]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
  }

  v4 = v0[2];
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 clearColor];
    sub_1D5B5A498(0, qword_1EDF1A6A0);
    v8 = sub_1D726370C();

    if (v8)
    {
    }

    else
    {
      v9 = v6;
      MEMORY[0x1DA6F9CE0]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
    }
  }

  v10 = *v1;
  v11 = objc_opt_self();
  v12 = [v11 configurationWithFont_];
  sub_1D5B5A498(0, qword_1EDF1A6A0);
  v13 = sub_1D726265C();

  v14 = [v11 configurationWithPaletteColors_];

  v15 = [v12 configurationByApplyingConfiguration_];
  return v15;
}

id sub_1D62DEF44(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  [v4 setImage_];
  sub_1D5B5A498(0, &qword_1EDF1A7E0);
  v5 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  v6 = [v5 length];
  [v5 addAttribute:*MEMORY[0x1E69DB648] value:*v2 range:{0, v6}];
  v7 = *(v2 + 104);
  v47 = *(v7 + 488);
  v8 = *(v7 + 472);
  v45 = *(v7 + 456);
  v46 = v8;
  v9 = *(v7 + 408);
  v41 = *(v7 + 392);
  v42 = v9;
  v10 = *(v7 + 440);
  v43 = *(v7 + 424);
  v44 = v10;
  v11 = *(v7 + 344);
  v37 = *(v7 + 328);
  v38 = v11;
  v12 = *(v7 + 376);
  v39 = *(v7 + 360);
  v40 = v12;
  v13 = *(v7 + 312);
  v35 = *(v7 + 296);
  v36 = v13;
  if (sub_1D5D39FB4(&v35) == 1)
  {
    if (*(v2 + 96))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v32 = v45;
    v33 = v46;
    LOWORD(v34) = v47;
    v28 = v41;
    v29 = v42;
    v30 = v43;
    v31 = v44;
    v24 = v37;
    v25 = v38;
    v26 = v39;
    v27 = v40;
    v22 = v35;
    v23 = v36;
    v19 = FormatParagraphStyle.paragraphStyle.getter();
    [v5 addAttribute:*MEMORY[0x1E69DB688] value:v19 range:{0, v6, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34}];

    if (*(v2 + 96))
    {
LABEL_3:
      v14 = *(v2 + 8);
      if (!v14)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v20 = *MEMORY[0x1E69DB610];
  v21 = sub_1D725A62C();
  [v5 addAttribute:v20 value:v21 range:{0, v6}];

  v14 = *(v2 + 8);
  if (v14)
  {
LABEL_4:
    [v5 addAttribute:*MEMORY[0x1E69DB650] value:v14 range:{0, v6}];
  }

LABEL_5:
  v15 = *(v2 + 16);
  if (v15)
  {
    v16 = *MEMORY[0x1E69DB600];
    v17 = v15;
    [v5 addAttribute:v16 value:v17 range:{0, v6}];
  }

  return v5;
}

uint64_t sub_1D62DF1B0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 104) + 288);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = (v3 + 32);

  do
  {
    v13 = *v7++;
    v12 = v13;
    if (v13)
    {
      if (v12 == 1)
      {
        sub_1D5BF4D9C();
        v8 = sub_1D7263A2C();
      }

      else
      {
        sub_1D5BF4D9C();
        v8 = sub_1D7263A5C();
      }
    }

    else
    {
      sub_1D5BF4D9C();
      v8 = sub_1D7263A3C();
    }

    v10 = v8;
    v11 = v9;

    --v4;
  }

  while (v4);
  v14 = v10 == a1 && v11 == a2;
  if (v14 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  return v10;
}

void sub_1D62DF2F4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _OWORD *a5@<X8>)
{
  v11 = *(a2 + 144);
  v99[4] = *(a2 + 128);
  v99[5] = v11;
  v12 = *(a2 + 176);
  v99[6] = *(a2 + 160);
  v99[7] = v12;
  v13 = *(a2 + 80);
  v99[0] = *(a2 + 64);
  v99[1] = v13;
  v14 = *(a2 + 112);
  v99[2] = *(a2 + 96);
  v99[3] = v14;
  sub_1D62DF980(v99, &v83, sub_1D62DF9E8);
  v15 = sub_1D6AE96CC(v99, a3);
  if (v5)
  {

    sub_1D62DFA38(v99);
  }

  else
  {
    v16 = v15;
    sub_1D62DFA38(v99);
    v17 = *(a2 + 144);
    v79 = *(a2 + 128);
    v80 = v17;
    v18 = *(a2 + 176);
    v81 = *(a2 + 160);
    v82 = v18;
    v19 = *(a2 + 80);
    v76[0] = *(a2 + 64);
    v76[1] = v19;
    v20 = *(a2 + 112);
    v77 = *(a2 + 96);
    v78 = v20;
    v89 = v81;
    v90 = v18;
    v87 = v79;
    v88 = v17;
    v85 = v77;
    v86 = v20;
    v83 = v76[0];
    v84 = v19;
    if (sub_1D5CFD0B8(&v83) == 1)
    {
      v59 = 0;
    }

    else
    {
      v71 = v87;
      v72 = v88;
      v73 = v89;
      v74 = v90;
      v67 = v83;
      v68 = v84;
      v69 = v85;
      v70 = v86;
      v21 = sub_1D5CFD35C(&v67);
      v22 = sub_1D5CFD34C(&v67);
      if (v21)
      {
        v59 = [objc_opt_self() clearColor];
      }

      else
      {
        v23 = *(v22 + 8);
        sub_1D62DF980(v76, &v60, sub_1D62DF9E8);

        sub_1D5FA6CB0(a3, v23, v75);

        *&v60 = v75[0];
        v59 = FormatColor.color.getter(v24);

        sub_1D62DFA38(v76);
      }
    }

    v25 = *(a2 + 536);
    if (v25 == 9)
    {
      v56 = 0;
      v26 = 1;
    }

    else
    {
      v27 = 1024;
      v28 = 0x8000;
      if (v25 == 7)
      {
        v29 = 0;
      }

      else
      {
        v28 = 0;
        v29 = 1;
      }

      if (v25 == 6)
      {
        v29 = 0;
      }

      else
      {
        v27 = v28;
      }

      v30 = 512;
      if (v25 != 4)
      {
        v30 = 768;
      }

      if (v25 <= 5u)
      {
        v27 = v30;
        v29 = 0;
      }

      v31 = 9;
      if (v25 != 2)
      {
        v31 = 256;
      }

      v32 = 1;
      if (v25)
      {
        v32 = 2;
      }

      if (v25 <= 1u)
      {
        v31 = v32;
      }

      if (v25 <= 3u)
      {
        v33 = v31;
      }

      else
      {
        v33 = v27;
      }

      v56 = v33;
      if (v25 <= 3u)
      {
        v26 = 0;
      }

      else
      {
        v26 = v29;
      }
    }

    v34 = 0;
    v98 = v26;
    if (v25 != 9)
    {
      v35 = *(a2 + 544);
      if ((v35 & 0xF000000000000007) != 0xF000000000000007)
      {
        sub_1D5CFCFAC(*(a2 + 544));
        sub_1D5FA6CB0(a3, v35, &v67);
        v36 = sub_1D62B5D00(v25, v35);
        *&v60 = v67;
        v37 = FormatColor.color.getter(v36);

        v34 = v37;
      }
    }

    v38 = *(a2 + 520);
    v39 = v38 == 9 || v38 == 8;
    v40 = v39;
    if (v39)
    {
      v41 = 0;
    }

    else
    {
      v41 = qword_1D72B6CC0[v38];
    }

    v57 = v34;
    v58 = v16;
    v42 = 0;
    v96 = v40;
    if (v38 != 9)
    {
      v43 = *(a2 + 528);
      if ((v43 & 0xF000000000000007) != 0xF000000000000007)
      {
        sub_1D5CFCFAC(*(a2 + 528));
        sub_1D5FA6CB0(a3, v43, &v67);
        v44 = sub_1D62B5D00(v38, v43);
        *&v60 = v67;
        v45 = FormatColor.color.getter(v44);

        v42 = v45;
        v34 = v57;
      }
    }

    v46 = *(a2 + 560);
    if (v46)
    {
      v54 = a5;
      v55 = v42;
      *&v67 = a3;
      v47 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v48 = v47();
      v49 = sub_1D5E02AFC(v48, v46);

      a5 = v54;
      v42 = v55;
      v34 = v57;
    }

    else
    {
      v49 = 0.0;
    }

    v92 = v46 == 0;
    v50 = *(a2 + 496);
    v94 = *(a2 + 504);
    *&v60 = a1;
    *(&v60 + 1) = v58;
    *&v61 = v59;
    *(&v61 + 1) = v56;
    LOBYTE(v62) = v98;
    *(&v62 + 1) = *v97;
    DWORD1(v62) = *&v97[3];
    *(&v62 + 1) = v34;
    *&v63 = v41;
    BYTE8(v63) = v96;
    HIDWORD(v63) = *&v95[3];
    *(&v63 + 9) = *v95;
    *&v64 = v42;
    *(&v64 + 1) = v50;
    LOBYTE(v65) = v94;
    DWORD1(v65) = *&v93[3];
    *(&v65 + 1) = *v93;
    *(&v65 + 1) = v49;
    v66[0] = v46 == 0;
    *&v66[4] = *&v91[3];
    *&v66[1] = *v91;
    *&v66[8] = a2;
    *&v66[16] = a3;
    v66[24] = a4;
    *&v67 = a1;
    *(&v67 + 1) = v58;
    *&v68 = v59;
    *(&v68 + 1) = v56;
    LOBYTE(v69) = v98;
    DWORD1(v69) = *&v97[3];
    *(&v69 + 1) = *v97;
    *(&v69 + 1) = v34;
    *&v70 = v41;
    BYTE8(v70) = v96;
    HIDWORD(v70) = *&v95[3];
    *(&v70 + 9) = *v95;
    *&v71 = v42;
    *(&v71 + 1) = v50;
    LOBYTE(v72) = v94;
    DWORD1(v72) = *&v93[3];
    *(&v72 + 1) = *v93;
    *(&v72 + 1) = v49;
    LOBYTE(v73) = v46 == 0;
    DWORD1(v73) = *&v91[3];
    *(&v73 + 1) = *v91;
    *(&v73 + 1) = a2;
    *&v74 = a3;
    BYTE8(v74) = a4;
    sub_1D61FFF18(&v60, v75);
    sub_1D61FFF74(&v67);
    v51 = v65;
    a5[4] = v64;
    a5[5] = v51;
    a5[6] = *v66;
    *(a5 + 105) = *&v66[9];
    v52 = v61;
    *a5 = v60;
    a5[1] = v52;
    v53 = v63;
    a5[2] = v62;
    a5[3] = v53;
  }
}

uint64_t sub_1D62DF980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D62DF9E8()
{
  if (!qword_1EDF34688)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF34688);
    }
  }
}

uint64_t sub_1D62DFA38(uint64_t a1)
{
  sub_1D62DF9E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatSupplementaryNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v19[3] = type metadata accessor for FormatNodeBinderContext();
  v19[4] = &protocol witness table for FormatNodeBinderContext;
  v19[0] = a2;

  sub_1D62E1698(v19, &v20);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  v17 = v24;
  v18[0] = v25[0];
  *(v18 + 9) = *(v25 + 9);
  v13 = v20;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v11 = v24;
  v12[0] = v25[0];
  *(v12 + 9) = *(v25 + 9);
  v7 = v20;
  v8 = v21;
  v9 = v22;
  v10 = v23;
  v6 = sub_1D62E1964(&v7, a2);
  v11 = v17;
  v12[0] = v18[0];
  *(v12 + 9) = *(v18 + 9);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  FormatSupplementary.bind(binder:context:)(a1, v6);
  FormatSupplementaryNode.bindChildren(binder:context:)(a1, v6);

  return sub_1D62E2300(&v13);
}

uint64_t sub_1D62DFC84()
{
  v2 = v0;
  v4 = v0[4];
  v3 = v0[5];
  swift_beginAccess();
  v5 = v0[2];
  v6 = v2[3];
  swift_beginAccess();
  v7 = v2[12];
  sub_1D62E30D8(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  *(v8 + 24) = v9;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = 0;
  *(v8 + 76) = 0x2000;
  *(v8 + 72) = 0;
  v73 = v8;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();

  sub_1D6C4D418(v10);
  if (v1)
  {
  }

  else
  {
    v58 = v4;
    v59 = v7;

    sub_1D62A09D4(&v73);
    v12 = v7;
    if (v7 >> 62)
    {
LABEL_31:
      v49 = v12;
      v13 = sub_1D7263BFC();
      v12 = v49;
    }

    else
    {
      v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v58;
    if (v13)
    {
      v15 = 0;
      v54 = v12 & 0xFFFFFFFFFFFFFF8;
      v55 = v12 & 0xC000000000000001;
      v52 = v12 + 32;
      v53 = v6;
      v50 = v13;
      v51 = v3;
      do
      {
        if (v55)
        {
          v20 = MEMORY[0x1DA6FB460](v15, v12);
          v19 = MEMORY[0x1E69E7CC0];
          v21 = __OFADD__(v15, 1);
          v22 = v15 + 1;
          if (v21)
          {
LABEL_28:
            __break(1u);
          }
        }

        else
        {
          v19 = MEMORY[0x1E69E7CC0];
          if (v15 >= *(v54 + 16))
          {
            __break(1u);
            goto LABEL_31;
          }

          v20 = *(v52 + 8 * v15);

          v21 = __OFADD__(v15, 1);
          v22 = v15 + 1;
          if (v21)
          {
            goto LABEL_28;
          }
        }

        v56 = v22;
        v23 = swift_allocObject();
        *(v23 + 16) = v19;
        *(v23 + 24) = v19;
        *(v23 + 32) = 0u;
        *(v23 + 48) = 0u;
        *(v23 + 64) = 0;
        *(v23 + 76) = -512;
        *(v23 + 72) = 0;
        v72 = v23;
        swift_beginAccess();
        v57 = v20;
        v24 = *(*(v20 + 32) + 16);

        if (v24)
        {
          v26 = (v25 + 72);
          do
          {
            v65 = v24;
            v27 = *(v26 - 3);
            v28 = v26[1];
            v29 = v26[2];
            v30 = v26[3];
            v31 = v26[4];
            v32 = v26[5];
            v33 = v26[6];
            v67 = *v26;
            v66 = v32;
            v68 = v30;
            if (v27)
            {
              v34 = *v26;
              v61 = *(v26 - 1);
              v62 = *(v26 - 5);
              v60 = *(v26 - 4);

              v63 = v31;
              v64 = v28;
              sub_1D5CFDAE4(v34, v28, v29, v30, v31, v32, v33);

              v35 = v72;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v45 = swift_allocObject();
                swift_beginAccess();
                v46 = v35[2];
                v70[0] = v35[1];
                v70[1] = v46;
                v71[0] = v35[3];
                *(v71 + 14) = *(v35 + 62);
                memmove((v45 + 16), v35 + 1, 0x3EuLL);
                sub_1D5EB9AB0(v70, v69);

                v72 = v45;
                v35 = v45;
              }

              swift_beginAccess();
              v36 = *(v35 + 3);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v35 + 3) = v36;
              v38 = v27;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v36 = sub_1D698F85C(0, *(v36 + 2) + 1, 1, v36);
                *(v35 + 3) = v36;
              }

              v40 = *(v36 + 2);
              v39 = *(v36 + 3);
              if (v40 >= v39 >> 1)
              {
                v36 = sub_1D698F85C((v39 > 1), v40 + 1, 1, v36);
              }

              *(v36 + 2) = v40 + 1;
              v41 = &v36[32 * v40];
              *(v41 + 4) = v60;
              *(v41 + 5) = v38;
              *(v41 + 3) = v61;
              *(v35 + 3) = v36;
              swift_endAccess();
              v42 = v63;
              v28 = v64;
              v43 = v62;
            }

            else
            {
              v44 = *v26;
              v43 = *(v26 - 5);

              sub_1D5CFDAE4(v44, v28, v29, v68, v31, v32, v33);
              v42 = v31;
            }

            *&v70[0] = v43;

            sub_1D6299090(&v72);

            sub_1D5CFDD14(v67, v28, v29, v68, v42, v66, v33);
            v26 += 13;
            v24 = v65 - 1;
          }

          while (v65 != 1);
        }

        v16 = swift_allocObject();
        v17 = *(v57 + 24);
        v18 = v72;
        *(v16 + 16) = *(v57 + 16);
        *(v16 + 24) = v17;
        *(v16 + 32) = v18;

        sub_1D6C4D24C(v16 | 0x2000000000000000);

        v3 = v51;
        v15 = v56;
        v6 = v53;
        v12 = v59;
        v14 = v58;
      }

      while (v56 != v50);
    }

    v47 = swift_allocObject();
    *(v47 + 16) = v14;
    *(v47 + 24) = v3;
    *(v47 + 32) = 2;

    sub_1D6C4D24C(v47 | 0x5000000000000000);

    v48 = swift_allocObject();
    *(v48 + 16) = v73;

    sub_1D6C4D24C(v48);
  }
}

uint64_t FormatSupplementaryNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatSupplementaryNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatSupplementaryNode.supplementaryIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t FormatSupplementaryNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

uint64_t FormatSupplementaryNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t FormatSupplementaryNode.styles.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t FormatSupplementaryNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t FormatSupplementaryNode.options.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t FormatSupplementaryNode.blocks.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t FormatSupplementaryNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[17];
  v5 = v1[18];
  v6 = v1[19];
  v7 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatSupplementaryNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 48));

  sub_1D5EB2398(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));
  return v0;
}

uint64_t FormatSupplementaryNode.__deallocating_deinit()
{
  FormatSupplementaryNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_1D62E08C4(uint64_t a1, uint64_t *a2)
{
  v64 = a2;
  v67 = type metadata accessor for FormatOption();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v3);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v6 = *(a1 + 64);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v70 = MEMORY[0x1E69E7CC0];

    sub_1D69979A0(0, v7, 0);
    v8 = v70;
    v9 = v7 - 1;
    for (i = 32; ; i += 64)
    {
      v11 = *(v6 + i);
      v12 = *(v6 + i + 16);
      v13 = *(v6 + i + 48);
      v74 = *(v6 + i + 32);
      v75 = v13;
      v72 = v11;
      v73 = v12;
      v14 = swift_allocObject();
      v15 = *(v6 + i + 48);
      v17 = *(v6 + i);
      v16 = *(v6 + i + 16);
      *(v14 + 48) = *(v6 + i + 32);
      *(v14 + 64) = v15;
      *(v14 + 16) = v17;
      *(v14 + 32) = v16;
      sub_1D5C8C900(&v72, v71);
      v70 = v8;
      v19 = *(v8 + 16);
      v18 = *(v8 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D69979A0((v18 > 1), v19 + 1, 1);
        v8 = v70;
      }

      *(v8 + 16) = v19 + 1;
      *(v8 + 8 * v19 + 32) = v14 | 0xA000000000000000;
      if (!v9)
      {
        break;
      }

      --v9;
    }
  }

  v20 = v68;
  swift_beginAccess();
  v21 = *(v20 + 72);
  v22 = *(v21 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v69 = MEMORY[0x1E69E7CC0];

    sub_1D69979A0(0, v22, 0);
    v23 = v69;
    v24 = v22 - 1;
    for (j = 32; ; j += 64)
    {
      v26 = *(v21 + j);
      v27 = *(v21 + j + 16);
      v28 = *(v21 + j + 48);
      v74 = *(v21 + j + 32);
      v75 = v28;
      v72 = v26;
      v73 = v27;
      v29 = swift_allocObject();
      v30 = *(v21 + j + 48);
      v32 = *(v21 + j);
      v31 = *(v21 + j + 16);
      *(v29 + 48) = *(v21 + j + 32);
      *(v29 + 64) = v30;
      *(v29 + 16) = v32;
      *(v29 + 32) = v31;
      sub_1D5C8C900(&v72, v71);
      v69 = v23;
      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D69979A0((v33 > 1), v34 + 1, 1);
        v23 = v69;
      }

      *(v23 + 16) = v34 + 1;
      *(v23 + 8 * v34 + 32) = v29 | 0x5000000000000000;
      if (!v24)
      {
        break;
      }

      --v24;
    }
  }

  *&v72 = v8;
  sub_1D6985C70(v23);
  sub_1D6B0BBC4(v72);

  v35 = v65;
  v36 = *(v65 + 72);
  swift_beginAccess();

  v38 = sub_1D5D6021C(v37, v36);
  v64 = sub_1D6B0ACE8(v38, 0);

  v39 = *(v35 + 88);
  v40 = *(v39 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    v71[0] = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v40, 0);
    v41 = v71[0];
    v42 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v65 = v39;
    v43 = v39 + v42;
    v44 = *(v66 + 72);
    do
    {
      sub_1D5D252BC(v43, v5, type metadata accessor for FormatOption);
      v45 = swift_allocBox();
      sub_1D62E3070(v5, v46, type metadata accessor for FormatOption);
      v71[0] = v41;
      v48 = *(v41 + 16);
      v47 = *(v41 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1D5D24610((v47 > 1), v48 + 1, 1);
        v41 = v71[0];
      }

      *(v41 + 16) = v48 + 1;
      *(v41 + 8 * v48 + 32) = v45 | 0xA000000000000000;
      v43 += v44;
      --v40;
    }

    while (v40);
  }

  v49 = v68;
  swift_beginAccess();
  v50 = *(v49 + 88);
  v51 = *(v50 + 16);
  v52 = MEMORY[0x1E69E7CC0];
  if (v51)
  {
    v69 = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v51, 0);
    v52 = v69;
    v53 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v65 = v50;
    v54 = v50 + v53;
    v55 = *(v66 + 72);
    do
    {
      sub_1D5D252BC(v54, v5, type metadata accessor for FormatOption);
      v56 = swift_allocBox();
      sub_1D62E3070(v5, v57, type metadata accessor for FormatOption);
      v69 = v52;
      v59 = *(v52 + 16);
      v58 = *(v52 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1D5D24610((v58 > 1), v59 + 1, 1);
        v52 = v69;
      }

      *(v52 + 16) = v59 + 1;
      *(v52 + 8 * v59 + 32) = v56 | 0x5000000000000000;
      v54 += v55;
      --v51;
    }

    while (v51);
  }

  v69 = v41;
  sub_1D6985C44(v52);
  sub_1D6B0C068(v69);

  swift_beginAccess();

  v61 = sub_1D6B0C570(v60);

  return v61;
}

void sub_1D62E0F20(double **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v11 = MEMORY[0x1E69E6720];
  sub_1D62E3300(0, &qword_1EDF43998, MEMORY[0x1E69D86D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v75 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v67 - v17;
  sub_1D62E3300(0, &unk_1EDF439A0, MEMORY[0x1E69D8558], v11);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v72 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (&v67 - v24);
  v26 = *a1;
  v73 = *a1;
  if (a2 && (v27 = *(a2 + 74), v27 != 255))
  {
    v71 = *(a2 + 64);
    v29 = *(a2 + 72) | (v27 << 16);
    v31 = v26[2];
    v30 = v26[3];
    v33 = v26[4];
    v32 = v26[5];
    v69 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
    v34 = type metadata accessor for GroupLayoutContext();
    if (HIWORD(v29))
    {
      if (HIWORD(v29) == 1)
      {
        if ((v29 & 0x100) != 0)
        {
          v68 = a3 + *(v34 + 20);
          v76.origin.x = v31;
          v76.origin.y = v30;
          v76.size.width = v33;
          v76.size.height = v32;
          Height = CGRectGetHeight(v76);
          v38 = Height + Height;
          if (v29 != 0xFF)
          {
            v38 = sub_1D62E2940(v38, a3, v68 + v69, v71, v29);
            if (v5)
            {
              return;
            }
          }
        }

        else
        {
          v74 = a3;
          v35 = off_1F51AF338[0];
          type metadata accessor for FormatNodeContext();
          v36 = v35();
          v37 = sub_1D5E02AFC(v36, v71);

          if (v5)
          {
            return;
          }

          v38 = v37;
        }

        *v25 = v38;
        v41 = MEMORY[0x1E69D8548];
      }

      else if (BYTE1(v29) == 255)
      {
        v41 = MEMORY[0x1E69D8550];
      }

      else
      {
        if ((v29 & 0x100) != 0)
        {
          v68 = a3 + *(v34 + 20);
          v77.origin.x = v31;
          v77.origin.y = v30;
          v77.size.width = v33;
          v77.size.height = v32;
          v66 = CGRectGetHeight(v77);
          v65 = v66 + v66;
          if (v29 != 0xFF)
          {
            v65 = sub_1D62E2940(v65, a3, v68 + v69, v71, v29);
            if (v5)
            {
              return;
            }
          }
        }

        else
        {
          v74 = a3;
          v62 = off_1F51AF338[0];
          type metadata accessor for FormatNodeContext();
          v63 = v62();
          v64 = sub_1D5E02AFC(v63, v71);

          if (v5)
          {
            return;
          }

          v65 = v64;
        }

        *v25 = v65;
        v41 = MEMORY[0x1E69D8520];
      }
    }

    else
    {
      v39 = sub_1D725F14C();
      if (v71)
      {
        v40 = MEMORY[0x1E69D8530];
      }

      else
      {
        v40 = MEMORY[0x1E69D8528];
      }

      (*(*(v39 - 8) + 104))(v25, *v40, v39);
      v41 = MEMORY[0x1E69D8538];
    }

    v43 = *v41;
    v44 = sub_1D725F15C();
    (*(*(v44 - 8) + 104))(v25, v43, v44);
    sub_1D725F15C();
    (*(*(v44 - 8) + 56))(v25, 0, 1, v44);
  }

  else
  {
    v28 = sub_1D725F15C();
    (*(*(v28 - 8) + 56))(v25, 1, 1, v28);
    if (!a2)
    {
      goto LABEL_22;
    }
  }

  v45 = *(a2 + 75);
  if (v45 == 2)
  {
    v47 = MEMORY[0x1E69D86C8];
  }

  else
  {
    if (v45 == 3)
    {
LABEL_22:
      v46 = sub_1D725F49C();
      (*(*(v46 - 8) + 56))(v18, 1, 1, v46);
      goto LABEL_28;
    }

    v48 = sub_1D725F5BC();
    v49 = MEMORY[0x1E69D8748];
    if ((v45 & 1) == 0)
    {
      v49 = MEMORY[0x1E69D8740];
    }

    (*(*(v48 - 8) + 104))(v18, *v49, v48);
    v47 = MEMORY[0x1E69D86B8];
  }

  v50 = *v47;
  v51 = sub_1D725F49C();
  v52 = *(v51 - 8);
  (*(v52 + 104))(v18, v50, v51);
  (*(v52 + 56))(v18, 0, 1, v51);
LABEL_28:
  v53 = *(a4 + 56);
  v70 = a5;
  v71 = v5;
  if (v53 && (v54 = *(v53 + 16), swift_beginAccess(), *(*(v54 + 16) + 16)))
  {
  }

  else
  {
    v54 = 0;
  }

  v55 = *(a4 + 104);
  LODWORD(v69) = *(a4 + 112);
  v56 = MEMORY[0x1E69D8558];
  v57 = v72;
  sub_1D62E2534(v25, v72, &unk_1EDF439A0, MEMORY[0x1E69D8558]);
  v58 = MEMORY[0x1E69D86D0];
  v59 = v75;
  sub_1D62E2534(v18, v75, &qword_1EDF43998, MEMORY[0x1E69D86D0]);
  type metadata accessor for FormatSupplementaryNodeLayoutAttributes();
  v60 = swift_allocObject();
  *(v60 + 16) = v73;
  *(v60 + 24) = a2;
  *(v60 + 32) = v54;
  *(v60 + 40) = v55;
  *(v60 + 48) = v69;
  sub_1D62E2534(v57, v60 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_pinTrait, &unk_1EDF439A0, v56);
  sub_1D62E2534(v59, v60 + OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_rubberbandTrait, &qword_1EDF43998, v58);
  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  *v70 = v61 | 0x3000000000000000;
}

uint64_t sub_1D62E1698@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  sub_1D5CA4820();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28[-v12];
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v16 = (*(v14 + 8))(v15, v14) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries;
  swift_beginAccess();
  v17 = *(v16 + 8);

  if (*(v17 + 16) && (v18 = sub_1D5B69D90(*(v3 + 32), *(v3 + 40)), (v19 & 1) != 0))
  {
    sub_1D5D252BC(*(v17 + 56) + *(v35 + 72) * v18, v9, sub_1D5CA4820);
    sub_1D62E3070(v9, v13, sub_1D5CA4820);

    v20 = v13[5];
    v33 = v13[4];
    v34[0] = v20;
    *(v34 + 9) = *(v13 + 89);
    v21 = v13[1];
    v29 = *v13;
    v30 = v21;
    v22 = v13[3];
    v31 = v13[2];
    v32 = v22;
    sub_1D62E340C(&v29, v28);
    result = sub_1D62E32A0(v13, sub_1D5CA4820);
    v24 = v34[0];
    a2[4] = v33;
    a2[5] = v24;
    *(a2 + 89) = *(v34 + 9);
    v25 = v30;
    *a2 = v29;
    a2[1] = v25;
    v26 = v32;
    a2[2] = v31;
    a2[3] = v26;
  }

  else
  {

    type metadata accessor for FormatLayoutError();
    sub_1D62E2458(&qword_1EDF2F560, 255, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v27 = v3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1D62E1964(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v100 = a2;
  v5 = type metadata accessor for GroupLayoutContext();
  v90 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v91 = v7;
  v94 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for FormatOption();
  v8 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v9);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *(a1 + 72);
  v12 = *(a1 + 88);
  swift_beginAccess();
  v13 = v3[3];
  v96 = v3[2];
  v97 = v13;
  v14 = *(v12 + 16);
  v98 = v3;
  if (v14)
  {
    *&v103 = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v14, 0);
    v15 = v103;
    v16 = *(v8 + 80);
    v93 = v12;
    v17 = v12 + ((v16 + 32) & ~v16);
    v101 = v8;
    v18 = *(v8 + 72);
    do
    {
      sub_1D5D252BC(v17, v11, type metadata accessor for FormatOption);
      v19 = swift_allocBox();
      sub_1D62E3070(v11, v20, type metadata accessor for FormatOption);
      *&v103 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D5D24610((v21 > 1), v22 + 1, 1);
        v15 = v103;
      }

      *(v15 + 16) = v22 + 1;
      *(v15 + 8 * v22 + 32) = v19 | 0xA000000000000000;
      v17 += v18;
      --v14;
    }

    while (v14);

    v3 = v98;
    v8 = v101;
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v23 = v3[11];
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    *&v103 = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v24, 0);
    v25 = v103;
    v26 = *(v8 + 80);
    v93 = v23;
    v27 = v23 + ((v26 + 32) & ~v26);
    v101 = *(v8 + 72);
    do
    {
      sub_1D5D252BC(v27, v11, type metadata accessor for FormatOption);
      v28 = swift_allocBox();
      sub_1D62E3070(v11, v29, type metadata accessor for FormatOption);
      *&v103 = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1D5D24610((v30 > 1), v31 + 1, 1);
        v25 = v103;
      }

      *(v25 + 16) = v31 + 1;
      *(v25 + 8 * v31 + 32) = v28 | 0x5000000000000000;
      v27 += v101;
      --v24;
    }

    while (v24);

    v3 = v98;
  }

  *&v103 = v15;
  sub_1D6985C44(v25);
  v32 = v103;
  swift_beginAccess();
  v33 = v95;

  v35 = sub_1D5D6021C(v34, v33);
  swift_beginAccess();
  v36 = v3[12];
  v111 = 0;
  memset(v110, 0, sizeof(v110));
  v109 = 0;
  v37 = v100;

  v99 = sub_1D6E8DE74(v96, v97);

  swift_beginAccess();
  v109 = 1;
  v38 = v37;

  v39 = *(v37 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);
  if (*(v35 + 16) && (sub_1D6D0A744(v39, v35) & 1) == 0)
  {
    v40 = 1;
    v109 = 1;

    v39 = sub_1D5D6021C(v41, v39);
  }

  else
  {

    v40 = 0;
  }

  v42 = *(v32 + 16);
  v101 = v35;
  v95 = v39;
  if (v42)
  {
    v43 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
    v44 = sub_1D6F619D8(v32);

    if (v44)
    {
      v96 = v44;
      v92 = 1;
      v109 = 1;
    }

    else
    {
      v92 = v40;

      v96 = v43;
    }

    v38 = v100;
  }

  else
  {
    v92 = v40;

    v96 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
  }

  v45 = *(v38 + 40);
  v93 = *(v38 + 32);

  v97 = sub_1D6BEC5F4(v36, v38, &v109);

  v47 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
  v46 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 8);
  v48 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 16);
  v49 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 24);
  v50 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 32);
  v51 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 40);
  v52 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
  sub_1D62E312C(v47, v46, v48, v49, v50, v51, *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48));
  v53 = sub_1D6BEC878(v110, v38, &v109);
  v55 = *(v38 + 80);
  v56 = *(v38 + 112);
  v106 = *(v38 + 96);
  v107 = v56;
  v108 = *(v38 + 128);
  v57 = *(v38 + 64);
  v103 = *(v38 + 48);
  v104 = v57;
  v105 = v55;
  v98 = v45;
  if (v109 == 1)
  {
    v81 = v47;
    v82 = v54;
    v83 = v48;
    v84 = v53;
    v85 = v52;
    v86 = v51;
    v87 = v50;
    v88 = v49;
    v89 = v46;
    if (v92)
    {
      sub_1D62E3300(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
      v58 = v94;
      sub_1D5D252BC(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v94, type metadata accessor for GroupLayoutContext);
      v59 = (*(v90 + 80) + 16) & ~*(v90 + 80);
      v60 = (v91 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
      v61 = swift_allocObject();
      sub_1D62E3070(v58, v61 + v59, type metadata accessor for GroupLayoutContext);
      v62 = v95;
      v63 = v96;
      *(v61 + v60) = v96;
      *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v62;
      sub_1D5CF6A5C(&v103, v102);

      v64 = sub_1D725A80C();
      v38 = v100;
      v65 = v64;
    }

    else
    {
      v66 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions);
      sub_1D5CF6A5C(&v103, v102);
      v65 = v66;

      v58 = v94;
      v62 = v95;
      v63 = v96;
    }

    v67 = *(v38 + 16);
    sub_1D5D252BC(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v58, type metadata accessor for GroupLayoutContext);
    v68 = *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData);
    sub_1D5B68374(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, v102);
    type metadata accessor for FormatNodeBinderContext();
    v38 = swift_allocObject();
    v69 = v99;
    *(v38 + 16) = v67;
    *(v38 + 24) = v69;
    v70 = v106;
    v71 = v107;
    *(v38 + 80) = v105;
    *(v38 + 96) = v70;
    *(v38 + 112) = v71;
    *(v38 + 128) = v108;
    v72 = v104;
    *(v38 + 48) = v103;
    *(v38 + 64) = v72;
    *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v63;
    *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v62;
    sub_1D5D252BC(v58, v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);
    v73 = v98;
    *(v38 + 32) = v93;
    *(v38 + 40) = v73;
    *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v97;
    *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v68;
    sub_1D5B68374(v102, v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
    v74 = v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
    v75 = v89;
    *v74 = v81;
    *(v74 + 8) = v75;
    v76 = v87;
    v77 = v88;
    *(v74 + 16) = v83;
    *(v74 + 24) = v77;
    *(v74 + 32) = v76;
    *(v74 + 40) = v86;
    *(v74 + 48) = v85;
    v78 = (v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
    v79 = v82;
    *v78 = v84;
    v78[1] = v79;

    __swift_destroy_boxed_opaque_existential_1(v102);
    sub_1D62E32A0(v58, type metadata accessor for GroupLayoutContext);
    sub_1D62E3214(v110);
    *(v38 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v65;
  }

  else
  {

    sub_1D62E31A0(v47, v46, v48, v49, v50, v51, v52);

    sub_1D62E3214(v110);
  }

  return v38;
}