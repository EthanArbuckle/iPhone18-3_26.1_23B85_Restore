unint64_t sub_21426A100()
{
  v1 = *v0;
  v2 = 0x65644965726F7473;
  v3 = 0x6B726F77747261;
  if (v1 != 5)
  {
    v3 = 0x4D6B726F77747261;
  }

  v4 = 0x614E6E6F73616573;
  if (v1 != 3)
  {
    v4 = 0x65726E6567;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x4E65646F73697065;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21426A200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143814D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21426A228(uint64_t a1)
{
  v2 = sub_214316E10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426A264(uint64_t a1)
{
  v2 = sub_214316E10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426A2A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B6B8, &qword_2146F6618);
  v8 = *(v45 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v45);
  v11 = &v34 - v10;
  v12 = a1[3];
  v13 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214316E10();
  v44 = v11;
  sub_2146DAA08();
  if (!v2)
  {
    v41 = v7;
    v42 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v47) = 0;
    sub_2142E12FC();
    v14 = v44;
    v15 = v45;
    sub_2146DA1C8();
    v16 = v55;
    LOBYTE(v47) = 1;
    sub_2146DA1C8();
    v40 = v16;
    v17 = *(&v55 + 1);
    v39 = v55;
    LOBYTE(v47) = 2;
    sub_2146DA1C8();
    v38 = v17;
    v19 = v55;
    LOBYTE(v47) = 3;
    sub_2146DA1C8();
    v37 = v19;
    v20 = *(&v55 + 1);
    v36 = v55;
    LOBYTE(v47) = 4;
    sub_2146DA1C8();
    v35 = v20;
    v21 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v54 = 5;
    sub_214314728();
    sub_2146DA1C8();
    v22 = v42;
    v34 = v21;
    v51 = v59;
    v52 = v60;
    *v53 = v61[0];
    *&v53[9] = *(v61 + 9);
    v47 = v55;
    v48 = v56;
    v49 = v57;
    v50 = v58;
    v46 = 6;
    sub_214316858();
    v23 = v41;
    sub_2146DA1C8();
    (*(v22 + 8))(v14, v15);
    v24 = type metadata accessor for LinkPresentation.TVEpisodeMetadata(0);
    v25 = v43;
    sub_21408AC04(v23, v43 + *(v24 + 40), &qword_27C904878, &unk_2146EDB68);
    v26 = *(&v40 + 1);
    *v25 = v40;
    *(v25 + 8) = v26;
    v27 = v38;
    *(v25 + 16) = v39;
    *(v25 + 24) = v27;
    v28 = *(&v37 + 1);
    *(v25 + 32) = v37;
    *(v25 + 40) = v28;
    v29 = v35;
    *(v25 + 48) = v36;
    *(v25 + 56) = v29;
    v30 = *(&v34 + 1);
    *(v25 + 64) = v34;
    *(v25 + 72) = v30;
    v31 = v52;
    *(v25 + 144) = v51;
    *(v25 + 160) = v31;
    *(v25 + 176) = *v53;
    *(v25 + 185) = *&v53[9];
    v32 = v48;
    *(v25 + 80) = v47;
    *(v25 + 96) = v32;
    v33 = v50;
    *(v25 + 112) = v49;
    *(v25 + 128) = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1(v62);
}

uint64_t sub_21426A820(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B6C8, &qword_2146F6620);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316E10();
  sub_2146DAA28();
  v10 = v2;
  v34[0] = *v2;
  LOBYTE(v27) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v11 = v42;
  sub_2146DA388();
  if (v11)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v34[0] = v2[1];
  LOBYTE(v27) = 1;
  sub_2146DA388();
  v34[0] = v2[2];
  LOBYTE(v27) = 2;
  v42 = v8;
  sub_2146DA388();
  v12 = v5;
  v34[0] = v10[3];
  LOBYTE(v27) = 3;
  sub_2146DA388();
  v41 = v10[4];
  v40 = 4;
  sub_2146DA388();
  v13 = v10[10];
  v14 = v10[8];
  v37 = v10[9];
  v38 = v13;
  v15 = v10[10];
  *v39 = v10[11];
  *&v39[9] = *(v10 + 185);
  v16 = v10[6];
  v34[0] = v10[5];
  v34[1] = v16;
  v17 = v10[8];
  v19 = v10[5];
  v18 = v10[6];
  v35 = v10[7];
  v36 = v17;
  v31 = v37;
  v32 = v15;
  v33[0] = v10[11];
  *(v33 + 9) = *(v10 + 185);
  v27 = v19;
  v28 = v18;
  v29 = v35;
  v30 = v14;
  v26 = 5;
  sub_213FB2E54(v34, v24, &qword_27C904868, &qword_2146EDB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
  sub_214315670();
  sub_2146DA388();
  v24[4] = v31;
  v24[5] = v32;
  *v25 = v33[0];
  *&v25[9] = *(v33 + 9);
  v24[0] = v27;
  v24[1] = v28;
  v24[2] = v29;
  v24[3] = v30;
  sub_213FB2DF4(v24, &qword_27C904868, &qword_2146EDB58);
  v20 = *(type metadata accessor for LinkPresentation.TVEpisodeMetadata(0) + 40);
  v23[15] = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  sub_214316990();
  v21 = v42;
  sub_2146DA388();
  return (*(v12 + 8))(v21, v4);
}

uint64_t sub_21426ACB8(uint64_t a1)
{
  v2 = sub_214316E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426ACF4(uint64_t a1)
{
  v2 = sub_214316E64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426AD30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B6D0, &qword_2146F6628);
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v41);
  v11 = &v33 - v10;
  v12 = a1[3];
  v13 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214316E64();
  sub_2146DAA08();
  if (!v2)
  {
    v37 = v4;
    v38 = v7;
    v39 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v43) = 0;
    sub_2142E12FC();
    v14 = v41;
    sub_2146DA1C8();
    v16 = *(&v51 + 1);
    v15 = v51;
    LOBYTE(v43) = 1;
    sub_2146DA1C8();
    v35 = __PAIR128__(*(&v51 + 1), v15);
    v17 = v51;
    v36 = v16;
    LOBYTE(v43) = 2;
    sub_2146DA1C8();
    v34 = v17;
    v19 = v51;
    LOBYTE(v43) = 3;
    sub_2146DA1C8();
    v33 = v19;
    v21 = *(&v51 + 1);
    v20 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v50 = 4;
    sub_214314728();
    sub_2146DA1C8();
    v22 = v39;
    v47 = v55;
    v48 = v56;
    *v49 = v57[0];
    *&v49[9] = *(v57 + 9);
    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v42 = 5;
    sub_214316858();
    v23 = v38;
    sub_2146DA1C8();
    (*(v22 + 8))(v11, v14);
    v24 = type metadata accessor for LinkPresentation.TVSeasonMetadata(0);
    v25 = v21;
    v26 = v40;
    sub_21408AC04(v23, v40 + *(v24 + 36), &qword_27C904878, &unk_2146EDB68);
    v27 = v36;
    *v26 = v35;
    *(v26 + 8) = v27;
    v28 = *(&v35 + 1);
    *(v26 + 16) = v34;
    *(v26 + 24) = v28;
    v29 = *(&v33 + 1);
    *(v26 + 32) = v33;
    *(v26 + 40) = v29;
    *(v26 + 48) = __PAIR128__(v25, v20);
    v30 = v48;
    *(v26 + 128) = v47;
    *(v26 + 144) = v30;
    *(v26 + 160) = *v49;
    *(v26 + 169) = *&v49[9];
    v31 = v44;
    *(v26 + 64) = v43;
    *(v26 + 80) = v31;
    v32 = v46;
    *(v26 + 96) = v45;
    *(v26 + 112) = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t sub_21426B234(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B6E0, &qword_2146F6630);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316E64();
  sub_2146DAA28();
  v40 = v3;
  v32[0] = *v3;
  LOBYTE(v25) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v12 = v40;
    v32[0] = v40[1];
    LOBYTE(v25) = 1;
    sub_2146DA388();
    v32[0] = v12[2];
    LOBYTE(v25) = 2;
    sub_2146DA388();
    v39 = v12[3];
    v38 = 3;
    sub_2146DA388();
    v13 = v40[9];
    v14 = v40[7];
    v35 = v40[8];
    v36 = v13;
    v15 = v40[9];
    *v37 = v40[10];
    *&v37[9] = *(v40 + 169);
    v16 = v40[5];
    v32[0] = v40[4];
    v32[1] = v16;
    v17 = v40[7];
    v19 = v40[4];
    v18 = v40[5];
    v33 = v40[6];
    v34 = v17;
    v29 = v35;
    v30 = v15;
    v31[0] = v40[10];
    *(v31 + 9) = *(v40 + 169);
    v25 = v19;
    v26 = v18;
    v27 = v33;
    v28 = v14;
    v24 = 4;
    sub_213FB2E54(v32, v22, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v22[4] = v29;
    v22[5] = v30;
    *v23 = v31[0];
    *&v23[9] = *(v31 + 9);
    v22[0] = v25;
    v22[1] = v26;
    v22[2] = v27;
    v22[3] = v28;
    sub_213FB2DF4(v22, &qword_27C904868, &qword_2146EDB58);
    v20 = *(type metadata accessor for LinkPresentation.TVSeasonMetadata(0) + 36);
    v21[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    sub_214316990();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21426B688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v11 = a7[5];
  *(a9 + 112) = a7[4];
  *(a9 + 128) = v11;
  *(a9 + 144) = a7[6];
  *(a9 + 153) = *(a7 + 105);
  v12 = a7[1];
  *(a9 + 48) = *a7;
  *(a9 + 64) = v12;
  v13 = a7[3];
  *(a9 + 80) = a7[2];
  *(a9 + 96) = v13;
  v14 = type metadata accessor for LinkPresentation.TVShowMetadata(0);
  return sub_21408AC04(a8, a9 + *(v14 + 32), &qword_27C904878, &unk_2146EDB68);
}

unint64_t sub_21426B718()
{
  v1 = *v0;
  v2 = 0x65644965726F7473;
  v3 = 1701667182;
  v4 = 0x6B726F77747261;
  if (v1 != 3)
  {
    v4 = 0x4D6B726F77747261;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21426B7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214381744(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21426B7F0(uint64_t a1)
{
  v2 = sub_214316EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426B82C(uint64_t a1)
{
  v2 = sub_214316EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426B868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B6E8, &qword_2146F6638);
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v33);
  v11 = &v26 - v10;
  v12 = a1[3];
  v13 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214316EB8();
  sub_2146DAA08();
  if (!v2)
  {
    v29 = v4;
    v30 = v7;
    v31 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v35) = 0;
    sub_2142E12FC();
    v14 = v33;
    sub_2146DA1C8();
    v15 = v43;
    LOBYTE(v35) = 1;
    sub_2146DA1C8();
    v28 = v15;
    v16 = v43;
    LOBYTE(v35) = 2;
    sub_2146DA1C8();
    v18 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v42 = 3;
    sub_214314728();
    sub_2146DA1C8();
    v27 = v18;
    v39 = v47;
    v40 = v48;
    *v41 = v49[0];
    *&v41[9] = *(v49 + 9);
    v35 = v43;
    v36 = v44;
    v37 = v45;
    v38 = v46;
    v34 = 4;
    sub_214316858();
    v19 = v30;
    sub_2146DA1C8();
    (*(v31 + 8))(v11, v14);
    v20 = type metadata accessor for LinkPresentation.TVShowMetadata(0);
    v21 = v32;
    sub_21408AC04(v19, v32 + *(v20 + 32), &qword_27C904878, &unk_2146EDB68);
    v22 = *(&v28 + 1);
    *v21 = v28;
    *(v21 + 8) = v22;
    *(v21 + 16) = v16;
    *(v21 + 32) = v27;
    *(v21 + 40) = *(&v18 + 1);
    v23 = v40;
    *(v21 + 112) = v39;
    *(v21 + 128) = v23;
    *(v21 + 144) = *v41;
    *(v21 + 153) = *&v41[9];
    v24 = v36;
    *(v21 + 48) = v35;
    *(v21 + 64) = v24;
    v25 = v38;
    *(v21 + 80) = v37;
    *(v21 + 96) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_21426BCE4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B6F8, &qword_2146F6640);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316EB8();
  sub_2146DAA28();
  v22 = v2;
  v34[0] = *v2;
  LOBYTE(v27) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v10 = v8;
  v11 = v42;
  sub_2146DA388();
  if (v11)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v13 = v22;
  v34[0] = v22[1];
  LOBYTE(v27) = 1;
  sub_2146DA388();
  v41 = v13[2];
  v40 = 2;
  sub_2146DA388();
  v14 = v13[8];
  v15 = v13[6];
  v37 = v13[7];
  v38 = v14;
  v16 = v13[8];
  *v39 = v13[9];
  *&v39[9] = *(v13 + 153);
  v17 = v13[4];
  v34[0] = v13[3];
  v34[1] = v17;
  v18 = v13[6];
  v20 = v13[3];
  v19 = v13[4];
  v35 = v13[5];
  v36 = v18;
  v31 = v37;
  v32 = v16;
  v33[0] = v13[9];
  *(v33 + 9) = *(v13 + 153);
  v27 = v20;
  v28 = v19;
  v29 = v35;
  v30 = v15;
  v26 = 3;
  sub_213FB2E54(v34, v24, &qword_27C904868, &qword_2146EDB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
  sub_214315670();
  sub_2146DA388();
  v24[4] = v31;
  v24[5] = v32;
  *v25 = v33[0];
  *&v25[9] = *(v33 + 9);
  v24[0] = v27;
  v24[1] = v28;
  v24[2] = v29;
  v24[3] = v30;
  sub_213FB2DF4(v24, &qword_27C904868, &qword_2146EDB58);
  v21 = *(type metadata accessor for LinkPresentation.TVShowMetadata(0) + 32);
  v23 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  sub_214316990();
  sub_2146DA388();
  return (*(v5 + 8))(v10, v4);
}

__n128 sub_21426C0F8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  v15 = a10[5];
  *(a9 + 128) = a10[4];
  *(a9 + 144) = v15;
  *(a9 + 160) = a10[6];
  *(a9 + 169) = *(a10 + 105);
  v16 = a10[1];
  *(a9 + 64) = *a10;
  *(a9 + 80) = v16;
  v17 = a10[3];
  *(a9 + 96) = a10[2];
  *(a9 + 112) = v17;
  v18 = type metadata accessor for LinkPresentation.MovieMetadata(0);
  sub_21408AC04(a11, a9 + v18[9], &qword_27C904878, &unk_2146EDB68);
  v19 = a9 + v18[10];
  v20 = *(a12 + 80);
  *(v19 + 64) = *(a12 + 64);
  *(v19 + 80) = v20;
  *(v19 + 96) = *(a12 + 96);
  *(v19 + 105) = *(a12 + 105);
  v21 = *(a12 + 16);
  *v19 = *a12;
  *(v19 + 16) = v21;
  result = *(a12 + 32);
  v23 = *(a12 + 48);
  *(v19 + 32) = result;
  *(v19 + 48) = v23;
  v24 = (a9 + v18[11]);
  *v24 = a13;
  v24[1] = a14;
  return result;
}

unint64_t sub_21426C1E4()
{
  v1 = *v0;
  v2 = 0x65644965726F7473;
  v3 = 0x676E69646E617262;
  if (v1 != 6)
  {
    v3 = 0x676E69646E617262;
  }

  v4 = 0x6B726F77747261;
  if (v1 != 4)
  {
    v4 = 0x4D6B726F77747261;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 2)
  {
    v5 = 0x65726E6567;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21426C2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214381910(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21426C320(uint64_t a1)
{
  v2 = sub_214316F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426C35C(uint64_t a1)
{
  v2 = sub_214316F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426C398@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B700, &qword_2146F6648);
  v8 = *(v54 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v54);
  v11 = &v42 - v10;
  v12 = a1[3];
  v13 = a1[4];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214316F0C();
  v53 = v11;
  sub_2146DAA08();
  if (!v2)
  {
    v49 = v4;
    v50 = v7;
    v51 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v73) = 0;
    sub_2142E12FC();
    v14 = v53;
    v15 = v54;
    sub_2146DA1C8();
    v16 = v81;
    LOBYTE(v73) = 1;
    v17 = v15;
    sub_2146DA1C8();
    v48 = v16;
    v19 = *(&v81 + 1);
    v18 = v81;
    LOBYTE(v73) = 2;
    sub_2146DA1C8();
    v47 = v19;
    v46 = *(&v81 + 1);
    v21 = v81;
    LOBYTE(v73) = 3;
    sub_2146DA1C8();
    v44 = v21;
    v45 = __PAIR128__(*(&v81 + 1), v18);
    v43 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v80 = 4;
    v22 = sub_214314728();
    sub_2146DA1C8();
    v42 = v22;
    v77 = v85;
    v78 = v86;
    *v79 = v87[0];
    *&v79[9] = *(v87 + 9);
    v73 = v81;
    v74 = v82;
    v75 = v83;
    v76 = v84;
    LOBYTE(v66) = 5;
    sub_214316858();
    v23 = v50;
    sub_2146DA1C8();
    v65 = 6;
    sub_2146DA1C8();
    v24 = v51;
    v25 = *(&v48 + 1);
    v62 = v70;
    v63 = v71;
    *v64 = v72[0];
    *&v64[9] = *(v72 + 9);
    v58 = v66;
    v59 = v67;
    v60 = v68;
    v61 = v69;
    v55 = 7;
    sub_2146DA1C8();
    (*(v24 + 8))(v14, v17);
    v26 = v56;
    v27 = v57;
    v28 = type metadata accessor for LinkPresentation.MovieMetadata(0);
    v29 = v25;
    v30 = v52;
    sub_21408AC04(v23, v52 + v28[9], &qword_27C904878, &unk_2146EDB68);
    *v30 = v48;
    *(v30 + 8) = v29;
    v31 = v47;
    *(v30 + 16) = v45;
    *(v30 + 24) = v31;
    v32 = v46;
    *(v30 + 32) = v44;
    *(v30 + 40) = v32;
    v33 = *(&v45 + 1);
    *(v30 + 48) = v43;
    *(v30 + 56) = v33;
    v34 = v78;
    *(v30 + 128) = v77;
    *(v30 + 144) = v34;
    *(v30 + 160) = *v79;
    *(v30 + 169) = *&v79[9];
    v35 = v74;
    *(v30 + 64) = v73;
    *(v30 + 80) = v35;
    v36 = v76;
    *(v30 + 96) = v75;
    *(v30 + 112) = v36;
    v37 = (v30 + v28[10]);
    v38 = v63;
    v37[4] = v62;
    v37[5] = v38;
    v37[6] = *v64;
    *(v37 + 105) = *&v64[9];
    v39 = v59;
    *v37 = v58;
    v37[1] = v39;
    v40 = v61;
    v37[2] = v60;
    v37[3] = v40;
    v41 = (v30 + v28[11]);
    *v41 = v26;
    v41[1] = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(v88);
}

uint64_t sub_21426CA50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B710, &qword_2146F6650);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v34 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316F0C();
  sub_2146DAA28();
  v80 = v3;
  v72[0] = *v3;
  LOBYTE(v65) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = v80;
  v72[0] = v80[1];
  LOBYTE(v65) = 1;
  sub_2146DA388();
  v72[0] = v11[2];
  LOBYTE(v65) = 2;
  v37 = v5;
  sub_2146DA388();
  v13 = v6;
  v79 = v11[3];
  v78 = 3;
  sub_2146DA388();
  v36 = 0;
  v14 = v11[9];
  v15 = v11[7];
  v75 = v11[8];
  v76 = v14;
  v16 = v11[9];
  *v77 = v11[10];
  *&v77[9] = *(v11 + 169);
  v17 = v11[5];
  v72[0] = v11[4];
  v72[1] = v17;
  v18 = v11[7];
  v20 = v11[4];
  v19 = v11[5];
  v73 = v11[6];
  v74 = v18;
  v69 = v75;
  v70 = v16;
  v71[0] = v11[10];
  *(v71 + 9) = *(v11 + 169);
  v65 = v20;
  v66 = v19;
  v67 = v73;
  v68 = v15;
  v64 = 4;
  sub_213FB2E54(v72, &v57, &qword_27C904868, &qword_2146EDB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
  v21 = sub_214315670();
  v22 = v36;
  sub_2146DA388();
  v36 = v22;
  if (v22)
  {
    v61 = v69;
    v62 = v70;
    *v63 = v71[0];
    *&v63[9] = *(v71 + 9);
    v57 = v65;
    v58 = v66;
    v59 = v67;
    v60 = v68;
    sub_213FB2DF4(&v57, &qword_27C904868, &qword_2146EDB58);
    return (*(v13 + 8))(v9, v37);
  }

  v34[1] = v21;
  v61 = v69;
  v62 = v70;
  *v63 = v71[0];
  *&v63[9] = *(v71 + 9);
  v57 = v65;
  v58 = v66;
  v59 = v67;
  v60 = v68;
  sub_213FB2DF4(&v57, &qword_27C904868, &qword_2146EDB58);
  v35 = type metadata accessor for LinkPresentation.MovieMetadata(0);
  v23 = v35[9];
  v56 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  sub_214316990();
  v24 = v36;
  sub_2146DA388();
  if (v24)
  {
    return (*(v13 + 8))(v9, v37);
  }

  v25 = (v80 + v35[10]);
  v26 = v25[5];
  v27 = v25[3];
  v53 = v25[4];
  v54 = v26;
  v28 = v25[5];
  *v55 = v25[6];
  *&v55[9] = *(v25 + 105);
  v29 = v25[1];
  v50[0] = *v25;
  v50[1] = v29;
  v30 = v25[3];
  v32 = *v25;
  v31 = v25[1];
  v51 = v25[2];
  v52 = v30;
  v47 = v53;
  v48 = v28;
  v49[0] = v25[6];
  *(v49 + 9) = *(v25 + 105);
  v43 = v32;
  v44 = v31;
  v45 = v51;
  v46 = v27;
  v42 = 6;
  sub_213FB2E54(v50, v40, &qword_27C904868, &qword_2146EDB58);
  sub_2146DA388();
  v40[4] = v47;
  v40[5] = v48;
  *v41 = v49[0];
  *&v41[9] = *(v49 + 9);
  v40[0] = v43;
  v40[1] = v44;
  v40[2] = v45;
  v40[3] = v46;
  sub_213FB2DF4(v40, &qword_27C904868, &qword_2146EDB58);
  v39 = *(v80 + v35[11]);
  v38 = 7;
  v33 = v37;
  sub_2146DA388();
  return (*(v13 + 8))(v9, v33);
}

unint64_t sub_21426D06C()
{
  v1 = *v0;
  v2 = 0x65644965726F7473;
  v3 = 0x65726E6567;
  v4 = 0x6B726F77747261;
  if (v1 != 4)
  {
    v4 = 0x4D6B726F77747261;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 1701667182;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21426D138(uint64_t a1)
{
  v2 = sub_214316F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426D174(uint64_t a1)
{
  v2 = sub_214316F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426D1B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B718, &qword_2146F6658);
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v41);
  v11 = &v33 - v10;
  v12 = a1[3];
  v13 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214316F60();
  sub_2146DAA08();
  if (!v2)
  {
    v37 = v4;
    v38 = v7;
    v39 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v43) = 0;
    sub_2142E12FC();
    v14 = v41;
    sub_2146DA1C8();
    v16 = *(&v51 + 1);
    v15 = v51;
    LOBYTE(v43) = 1;
    sub_2146DA1C8();
    v35 = __PAIR128__(*(&v51 + 1), v15);
    v17 = v51;
    v36 = v16;
    LOBYTE(v43) = 2;
    sub_2146DA1C8();
    v34 = v17;
    v19 = v51;
    LOBYTE(v43) = 3;
    sub_2146DA1C8();
    v33 = v19;
    v21 = *(&v51 + 1);
    v20 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v50 = 4;
    sub_214314728();
    sub_2146DA1C8();
    v22 = v39;
    v47 = v55;
    v48 = v56;
    *v49 = v57[0];
    *&v49[9] = *(v57 + 9);
    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v42 = 5;
    sub_214316858();
    v23 = v38;
    sub_2146DA1C8();
    (*(v22 + 8))(v11, v14);
    v24 = type metadata accessor for LinkPresentation.MovieBundleMetadata(0);
    v25 = v21;
    v26 = v40;
    sub_21408AC04(v23, v40 + *(v24 + 36), &qword_27C904878, &unk_2146EDB68);
    v27 = v36;
    *v26 = v35;
    *(v26 + 8) = v27;
    v28 = *(&v35 + 1);
    *(v26 + 16) = v34;
    *(v26 + 24) = v28;
    v29 = *(&v33 + 1);
    *(v26 + 32) = v33;
    *(v26 + 40) = v29;
    *(v26 + 48) = __PAIR128__(v25, v20);
    v30 = v48;
    *(v26 + 128) = v47;
    *(v26 + 144) = v30;
    *(v26 + 160) = *v49;
    *(v26 + 169) = *&v49[9];
    v31 = v44;
    *(v26 + 64) = v43;
    *(v26 + 80) = v31;
    v32 = v46;
    *(v26 + 96) = v45;
    *(v26 + 112) = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t sub_21426D6B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B728, &qword_2146F6660);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316F60();
  sub_2146DAA28();
  v40 = v3;
  v32[0] = *v3;
  LOBYTE(v25) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v12 = v40;
    v32[0] = v40[1];
    LOBYTE(v25) = 1;
    sub_2146DA388();
    v32[0] = v12[2];
    LOBYTE(v25) = 2;
    sub_2146DA388();
    v39 = v12[3];
    v38 = 3;
    sub_2146DA388();
    v13 = v40[9];
    v14 = v40[7];
    v35 = v40[8];
    v36 = v13;
    v15 = v40[9];
    *v37 = v40[10];
    *&v37[9] = *(v40 + 169);
    v16 = v40[5];
    v32[0] = v40[4];
    v32[1] = v16;
    v17 = v40[7];
    v19 = v40[4];
    v18 = v40[5];
    v33 = v40[6];
    v34 = v17;
    v29 = v35;
    v30 = v15;
    v31[0] = v40[10];
    *(v31 + 9) = *(v40 + 169);
    v25 = v19;
    v26 = v18;
    v27 = v33;
    v28 = v14;
    v24 = 4;
    sub_213FB2E54(v32, v22, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v22[4] = v29;
    v22[5] = v30;
    *v23 = v31[0];
    *&v23[9] = *(v31 + 9);
    v22[0] = v25;
    v22[1] = v26;
    v22[2] = v27;
    v22[3] = v28;
    sub_213FB2DF4(v22, &qword_27C904868, &qword_2146EDB58);
    v20 = *(type metadata accessor for LinkPresentation.MovieBundleMetadata(0) + 36);
    v21[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    sub_214316990();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21426DB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for LinkPresentation.EncodedToken(0);
  return sub_214328704(a3, a4 + *(v6 + 20), type metadata accessor for CloudKitSharingToken);
}

uint64_t sub_21426DB6C()
{
  if (*v0)
  {
    result = 0x6E656B6F74;
  }

  else
  {
    result = 0x656C646E6168;
  }

  *v0;
  return result;
}

uint64_t sub_21426DBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21426DC74(uint64_t a1)
{
  v2 = sub_214316FB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426DCB0(uint64_t a1)
{
  v2 = sub_214316FB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426DCEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for CloudKitSharingToken();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B730, &qword_2146F6668);
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316FB4();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v25 = 0;
    v14 = v23;
    v20 = sub_2146DA168();
    v21 = v15;
    v24 = 1;
    sub_214328930(&qword_27C9057A0, type metadata accessor for CloudKitSharingToken);
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v14);
    v16 = type metadata accessor for LinkPresentation.EncodedToken(0);
    v17 = v22;
    sub_214328704(v7, v22 + *(v16 + 20), type metadata accessor for CloudKitSharingToken);
    v18 = v21;
    *v17 = v20;
    v17[1] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21426DF7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B740, &qword_2146F6670);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214316FB4();
  sub_2146DAA28();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_2146DA328();
  if (!v2)
  {
    v13 = *(type metadata accessor for LinkPresentation.EncodedToken(0) + 20);
    v15[14] = 1;
    type metadata accessor for CloudKitSharingToken();
    sub_214328930(&qword_27C9057C0, type metadata accessor for CloudKitSharingToken);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_21426E164@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *&v14[71] = a8[4];
  *&v14[87] = a8[5];
  *&v14[103] = a8[6];
  *&v14[112] = *(a8 + 105);
  *&v14[7] = *a8;
  *&v14[23] = a8[1];
  *&v14[39] = a8[2];
  *&v14[55] = a8[3];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v10 = a7[3];
  *(a9 + 80) = a7[2];
  *(a9 + 96) = v10;
  v11 = a7[1];
  *(a9 + 48) = *a7;
  *(a9 + 64) = v11;
  *(a9 + 153) = *(a7 + 105);
  v12 = a7[6];
  *(a9 + 128) = a7[5];
  *(a9 + 144) = v12;
  *(a9 + 112) = a7[4];
  *(a9 + 217) = *&v14[48];
  *(a9 + 201) = *&v14[32];
  *(a9 + 185) = *&v14[16];
  *(a9 + 169) = *v14;
  result = *&v14[64];
  *(a9 + 265) = *&v14[96];
  *(a9 + 281) = *&v14[112];
  *(a9 + 249) = *&v14[80];
  *(a9 + 233) = *&v14[64];
  *(a9 + 304) = a10;
  return result;
}

uint64_t sub_21426E210()
{
  v1 = *v0;
  v2 = 0x746163696C707061;
  v3 = 1852793705;
  v4 = 0x69616E626D756874;
  if (v1 != 4)
  {
    v4 = 0x546465646F636E65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1684957547;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21426E2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214381DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21426E2F8(uint64_t a1)
{
  v2 = sub_214317008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426E334(uint64_t a1)
{
  v2 = sub_214317008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426E370@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B748, &qword_2146F6678);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214317008();
  sub_2146DAA08();
  if (!v2)
  {
    v36 = a2;
    v37 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v56) = 0;
    sub_2142E12FC();
    v12 = v5;
    sub_2146DA1C8();
    v13 = v64;
    LOBYTE(v56) = 1;
    sub_2146DA1C8();
    v35 = v13;
    v14 = *(&v64 + 1);
    v34 = v64;
    LOBYTE(v56) = 2;
    sub_2146DA1C8();
    v33 = v14;
    v15 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v63 = 3;
    sub_214314728();
    sub_2146DA1C8();
    v32 = v15;
    v60 = v68;
    v61 = v69;
    *v62 = v70[0];
    *&v62[9] = *(v70 + 9);
    v56 = v64;
    v57 = v65;
    v58 = v66;
    v59 = v67;
    v48 = 4;
    sub_2146DA1C8();
    v17 = *(&v35 + 1);
    v45 = v53;
    v46 = v54;
    *v47 = v55[0];
    *&v47[9] = *(v55 + 9);
    v41 = v49;
    v42 = v50;
    v43 = v51;
    v44 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B758, &qword_2146F6680);
    v39 = 5;
    sub_21431705C();
    sub_2146DA1C8();
    (*(v37 + 8))(v9, v12);
    v18 = v33;
    v19 = v40;
    *(&v38[4] + 7) = v45;
    *(&v38[5] + 7) = v46;
    *(&v38[6] + 7) = *v47;
    v38[7] = *&v47[9];
    *(v38 + 7) = v41;
    *(&v38[1] + 7) = v42;
    *(&v38[2] + 7) = v43;
    *(&v38[3] + 7) = v44;
    v20 = v36;
    v21 = v34;
    *v36 = v35;
    v20[1] = v17;
    v20[2] = v21;
    v20[3] = v18;
    v22 = *(&v32 + 1);
    v20[4] = v32;
    v20[5] = v22;
    v23 = v59;
    *(v20 + 5) = v58;
    *(v20 + 6) = v23;
    v24 = v57;
    *(v20 + 3) = v56;
    *(v20 + 4) = v24;
    *(v20 + 153) = *&v62[9];
    v25 = *v62;
    *(v20 + 8) = v61;
    *(v20 + 9) = v25;
    *(v20 + 7) = v60;
    v26 = v38[0];
    v27 = v38[1];
    v28 = v38[2];
    *(v20 + 217) = v38[3];
    *(v20 + 201) = v28;
    *(v20 + 185) = v27;
    *(v20 + 169) = v26;
    v29 = v38[4];
    v30 = v38[5];
    v31 = v38[7];
    *(v20 + 265) = v38[6];
    *(v20 + 281) = v31;
    *(v20 + 249) = v30;
    *(v20 + 233) = v29;
    v20[38] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(v71);
}

uint64_t sub_21426E8AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B768, &qword_2146F6688);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = *(v1 + 8);
  v67 = *v1;
  v8 = *(v1 + 16);
  v26 = *(v1 + 24);
  v27 = v8;
  v9 = *(v1 + 32);
  v24 = *(v1 + 40);
  v25 = v9;
  v10 = *(v1 + 128);
  v57 = *(v1 + 112);
  v58 = v10;
  v59[0] = *(v1 + 144);
  *(v59 + 9) = *(v1 + 153);
  v11 = *(v1 + 64);
  v53 = *(v1 + 48);
  v54 = v11;
  v12 = *(v1 + 96);
  v55 = *(v1 + 80);
  v56 = v12;
  v13 = *(v1 + 256);
  v64 = *(v1 + 240);
  v65 = v13;
  v66[0] = *(v1 + 272);
  *(v66 + 9) = *(v1 + 281);
  v14 = *(v1 + 192);
  v60 = *(v1 + 176);
  v61 = v14;
  v15 = *(v1 + 224);
  v62 = *(v1 + 208);
  v63 = v15;
  v23 = *(v1 + 304);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317008();

  sub_2146DAA28();
  *&v46 = v67;
  *(&v46 + 1) = v7;
  LOBYTE(v43[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v67 = v3;
  v30 = v6;
  v17 = v29;
  sub_2146DA388();
  if (v17)
  {

    return (*(v28 + 8))(v30, v67);
  }

  else
  {
    v19 = v25;
    v20 = v28;

    *&v46 = v27;
    *(&v46 + 1) = v26;
    LOBYTE(v43[0]) = 1;
    sub_2146DA388();
    *&v46 = v19;
    *(&v46 + 1) = v24;
    LOBYTE(v43[0]) = 2;
    sub_2146DA388();
    v50 = v57;
    v51 = v58;
    v52[0] = v59[0];
    *(v52 + 9) = *(v59 + 9);
    v46 = v53;
    v47 = v54;
    v48 = v55;
    v49 = v56;
    v45 = 3;
    sub_213FB2E54(&v53, v43, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v43[4] = v50;
    v43[5] = v51;
    *v44 = v52[0];
    *&v44[9] = *(v52 + 9);
    v43[0] = v46;
    v43[1] = v47;
    v43[2] = v48;
    v43[3] = v49;
    sub_213FB2DF4(v43, &qword_27C904868, &qword_2146EDB58);
    v40 = v64;
    v41 = v65;
    v42[0] = v66[0];
    *(v42 + 9) = *(v66 + 9);
    v36 = v60;
    v37 = v61;
    v38 = v62;
    v39 = v63;
    v35 = 4;
    sub_213FB2E54(&v60, v33, &qword_27C904868, &qword_2146EDB58);
    v21 = v30;
    sub_2146DA388();
    v33[4] = v40;
    v33[5] = v41;
    *v34 = v42[0];
    *&v34[9] = *(v42 + 9);
    v33[0] = v36;
    v33[1] = v37;
    v33[2] = v38;
    v33[3] = v39;
    sub_213FB2DF4(v33, &qword_27C904868, &qword_2146EDB58);
    v32 = v23;
    v31 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B758, &qword_2146F6680);
    sub_214317110();
    v22 = v67;
    sub_2146DA388();
    return (*(v20 + 8))(v21, v22);
  }
}

__n128 sub_21426EE38@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  v8 = *(a7 + 80);
  *(a8 + 112) = *(a7 + 64);
  *(a8 + 128) = v8;
  *(a8 + 144) = *(a7 + 96);
  *(a8 + 153) = *(a7 + 105);
  v9 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v9;
  result = *(a7 + 32);
  v11 = *(a7 + 48);
  *(a8 + 80) = result;
  *(a8 + 96) = v11;
  return result;
}

uint64_t sub_21426EE70()
{
  v1 = 0x656C746974;
  v2 = 0x6E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0x6567616D69;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21426EEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214381FF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21426EF08(uint64_t a1)
{
  v2 = sub_2143171C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426EF44(uint64_t a1)
{
  v2 = sub_2143171C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426EF80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B778, &qword_2146F6690);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143171C4();
  sub_2146DAA08();
  if (!v2)
  {
    v25 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v33 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v11 = *(&v26 + 1);
    v24 = v26;
    v33 = 1;
    sub_2146DA1C8();
    v23 = v11;
    v22 = *(&v26 + 1);
    v12 = v26;
    v33 = 2;
    sub_2146DA1C8();
    v13 = v12;
    v14 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v33 = 3;
    sub_214314728();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v16 = v25;
    v17 = v22;
    v18 = v23;
    *v25 = v24;
    v16[1] = v18;
    v16[2] = v13;
    v16[3] = v17;
    *(v16 + 2) = v14;
    v19 = v31;
    *(v16 + 7) = v30;
    *(v16 + 8) = v19;
    *(v16 + 9) = v32[0];
    *(v16 + 153) = *(v32 + 9);
    v20 = v27;
    *(v16 + 3) = v26;
    *(v16 + 4) = v20;
    v21 = v29;
    *(v16 + 5) = v28;
    *(v16 + 6) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21426F2A0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B788, &qword_2146F6698);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v21 = v1[3];
  v22 = v9;
  v10 = v1[4];
  v19 = v1[5];
  v20 = v10;
  v11 = *(v1 + 8);
  v38 = *(v1 + 7);
  v39 = v11;
  v40[0] = *(v1 + 9);
  *(v40 + 9) = *(v1 + 153);
  v12 = *(v1 + 4);
  v34 = *(v1 + 3);
  v35 = v12;
  v13 = *(v1 + 6);
  v36 = *(v1 + 5);
  v37 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143171C4();

  sub_2146DAA28();
  *&v27 = v7;
  *(&v27 + 1) = v8;
  LOBYTE(v24[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v15 = v41;
  sub_2146DA388();
  if (v15)
  {

    return (*(v23 + 8))(v6, v3);
  }

  else
  {
    v17 = v23;

    *&v27 = v22;
    *(&v27 + 1) = v21;
    LOBYTE(v24[0]) = 1;
    sub_2146DA388();
    *&v27 = v20;
    *(&v27 + 1) = v19;
    LOBYTE(v24[0]) = 2;
    sub_2146DA388();
    v31 = v38;
    v32 = v39;
    v33[0] = v40[0];
    *(v33 + 9) = *(v40 + 9);
    v27 = v34;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v26 = 3;
    sub_213FB2E54(&v34, v24, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v24[4] = v31;
    v24[5] = v32;
    *v25 = v33[0];
    *&v25[9] = *(v33 + 9);
    v24[0] = v27;
    v24[1] = v28;
    v24[2] = v29;
    v24[3] = v30;
    sub_213FB2DF4(v24, &qword_27C904868, &qword_2146EDB58);
    return (*(v17 + 8))(v6, 0);
  }
}

__n128 sub_21426F62C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  *&v12[71] = a4[4];
  *&v12[87] = a4[5];
  *&v12[103] = a4[6];
  *&v12[112] = *(a4 + 105);
  *&v12[7] = *a4;
  *&v12[23] = a4[1];
  *&v12[39] = a4[2];
  *&v12[55] = a4[3];
  *a8 = a1;
  *(a8 + 8) = a2;
  v8 = a3[3];
  *(a8 + 48) = a3[2];
  *(a8 + 64) = v8;
  v9 = a3[1];
  *(a8 + 16) = *a3;
  *(a8 + 32) = v9;
  *(a8 + 121) = *(a3 + 105);
  v10 = a3[6];
  *(a8 + 96) = a3[5];
  *(a8 + 112) = v10;
  *(a8 + 80) = a3[4];
  *(a8 + 185) = *&v12[48];
  *(a8 + 169) = *&v12[32];
  *(a8 + 153) = *&v12[16];
  *(a8 + 137) = *v12;
  result = *&v12[64];
  *(a8 + 249) = *&v12[112];
  *(a8 + 233) = *&v12[96];
  *(a8 + 217) = *&v12[80];
  *(a8 + 201) = *&v12[64];
  *(a8 + 268) = a5;
  *(a8 + 272) = a6;
  *(a8 + 276) = a7;
  return result;
}

unint64_t sub_21426F6D4()
{
  v1 = *v0;
  v2 = 1701667175;
  v3 = 0x664F7265626D756ELL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0x6567616D69;
  if (v1 != 1)
  {
    v4 = 1852793705;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21426F790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214382148(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21426F7B8(uint64_t a1)
{
  v2 = sub_214317218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21426F7F4(uint64_t a1)
{
  v2 = sub_214317218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21426F830@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B790, &qword_2146F66A0);
  v5 = *(v65 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v65);
  v8 = &v28 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317218();
  sub_2146DAA08();
  if (!v2)
  {
    v31 = a2;
    v32 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v50) = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v10 = *(&v58 + 1);
    v30 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v57 = 1;
    sub_214314728();
    sub_2146DA1C8();
    v29 = v10;
    v54 = v62;
    v55 = v63;
    *v56 = v64[0];
    *&v56[9] = *(v64 + 9);
    v50 = v58;
    v51 = v59;
    v52 = v60;
    v53 = v61;
    v42 = 2;
    sub_2146DA1C8();
    v39 = v47;
    v40 = v48;
    *v41 = v49[0];
    *&v41[9] = *(v49 + 9);
    v35 = v43;
    v36 = v44;
    v37 = v45;
    v38 = v46;
    v34 = 3;
    v11 = sub_2146DA218();
    v12 = v32;
    v13 = v11;
    v34 = 4;
    HIDWORD(v28) = sub_2146DA218();
    v34 = 5;
    v15 = v65;
    v16 = sub_2146DA218();
    (*(v12 + 8))(v8, v15);
    *(&v33[4] + 7) = v39;
    *(&v33[5] + 7) = v40;
    *(&v33[6] + 7) = *v41;
    v33[7] = *&v41[9];
    *(v33 + 7) = v35;
    *(&v33[1] + 7) = v36;
    *(&v33[2] + 7) = v37;
    *(&v33[3] + 7) = v38;
    v17 = v31;
    v18 = v29;
    *v31 = v30;
    v17[1] = v18;
    v19 = v53;
    *(v17 + 3) = v52;
    *(v17 + 4) = v19;
    v20 = v51;
    *(v17 + 1) = v50;
    *(v17 + 2) = v20;
    *(v17 + 121) = *&v56[9];
    v21 = *v56;
    *(v17 + 6) = v55;
    *(v17 + 7) = v21;
    *(v17 + 5) = v54;
    v22 = v33[0];
    v23 = v33[1];
    v24 = v33[2];
    *(v17 + 185) = v33[3];
    *(v17 + 169) = v24;
    *(v17 + 153) = v23;
    *(v17 + 137) = v22;
    v25 = v33[4];
    v26 = v33[5];
    v27 = v33[6];
    *(v17 + 249) = v33[7];
    *(v17 + 233) = v27;
    *(v17 + 217) = v26;
    *(v17 + 201) = v25;
    *(v17 + 67) = v13;
    *(v17 + 68) = HIDWORD(v28);
    *(v17 + 69) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21426FCD0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B7A0, &qword_2146F66A8);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - v5;
  v7 = v1[1];
  v22 = *v1;
  v8 = *(v1 + 6);
  v49 = *(v1 + 5);
  v50 = v8;
  v51[0] = *(v1 + 7);
  *(v51 + 9) = *(v1 + 121);
  v9 = *(v1 + 2);
  v45 = *(v1 + 1);
  v46 = v9;
  v10 = *(v1 + 4);
  v47 = *(v1 + 3);
  v48 = v10;
  v11 = *(v1 + 14);
  v56 = *(v1 + 13);
  v57 = v11;
  v58[0] = *(v1 + 15);
  *(v58 + 9) = *(v1 + 249);
  v12 = *(v1 + 10);
  v52 = *(v1 + 9);
  v53 = v12;
  v13 = *(v1 + 12);
  v54 = *(v1 + 11);
  v55 = v13;
  v14 = *(v1 + 67);
  v21[4] = *(v1 + 68);
  v21[5] = v14;
  v21[3] = *(v1 + 69);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317218();

  v16 = v6;
  sub_2146DAA28();
  *&v38 = v22;
  *(&v38 + 1) = v7;
  v17 = v3;
  LOBYTE(v35[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v18 = v59;
  sub_2146DA388();
  if (v18)
  {

    return (*(v23 + 8))(v16, v3);
  }

  else
  {
    v20 = v23;

    v42 = v49;
    v43 = v50;
    v44[0] = v51[0];
    *(v44 + 9) = *(v51 + 9);
    v38 = v45;
    v39 = v46;
    v40 = v47;
    v41 = v48;
    v37 = 1;
    sub_213FB2E54(&v45, v35, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v35[4] = v42;
    v35[5] = v43;
    *v36 = v44[0];
    *&v36[9] = *(v44 + 9);
    v35[0] = v38;
    v35[1] = v39;
    v35[2] = v40;
    v35[3] = v41;
    sub_213FB2DF4(v35, &qword_27C904868, &qword_2146EDB58);
    v32 = v56;
    v33 = v57;
    v34[0] = v58[0];
    *(v34 + 9) = *(v58 + 9);
    v28 = v52;
    v29 = v53;
    v30 = v54;
    v31 = v55;
    v27 = 2;
    sub_213FB2E54(&v52, v25, &qword_27C904868, &qword_2146EDB58);
    sub_2146DA388();
    v25[4] = v32;
    v25[5] = v33;
    *v26 = v34[0];
    *&v26[9] = *(v34 + 9);
    v25[0] = v28;
    v25[1] = v29;
    v25[2] = v30;
    v25[3] = v31;
    sub_213FB2DF4(v25, &qword_27C904868, &qword_2146EDB58);
    v24 = 3;
    sub_2146DA3D8();
    v24 = 4;
    sub_2146DA3D8();
    v24 = 5;
    sub_2146DA3D8();
    return (*(v20 + 8))(v16, v17);
  }
}

__n128 sub_2142701CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13, uint64_t a14)
{
  result = a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
  return result;
}

uint64_t sub_2142701F8()
{
  v1 = *v0;
  v2 = 0x746565727473;
  v3 = 0x7972746E756F63;
  if (v1 != 6)
  {
    v3 = 0x746E756F434F5349;
  }

  v4 = 0x6574617473;
  if (v1 != 4)
  {
    v4 = 0x6F436C6174736F70;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 2037672291;
  if (v1 != 2)
  {
    v5 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = 0x6C61636F4C627573;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_214270300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214382358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214270328(uint64_t a1)
{
  v2 = sub_21431726C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214270364(uint64_t a1)
{
  v2 = sub_21431726C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142703A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B7A8, &qword_2146F66B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431726C();
  sub_2146DAA08();
  if (!v2)
  {
    v38 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v40 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v11 = *(&v39 + 1);
    v37 = v39;
    v40 = 1;
    sub_2146DA1C8();
    v36 = v11;
    v35 = *(&v39 + 1);
    v12 = v39;
    v40 = 2;
    sub_2146DA1C8();
    v33 = v39;
    v34 = v12;
    v13 = *(&v39 + 1);
    v40 = 3;
    sub_2146DA1C8();
    v32 = v13;
    v31 = *(&v39 + 1);
    v14 = v39;
    v40 = 4;
    sub_2146DA1C8();
    v30 = __PAIR128__(*(&v39 + 1), v14);
    v15 = v39;
    v40 = 5;
    sub_2146DA1C8();
    v29 = __PAIR128__(*(&v39 + 1), v15);
    v16 = v39;
    v40 = 6;
    sub_2146DA1C8();
    v28 = __PAIR128__(*(&v39 + 1), v16);
    v17 = v39;
    v40 = 7;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v19 = v17;
    v20 = v38;
    v21 = v36;
    *v38 = v37;
    v20[1] = v21;
    v22 = v35;
    v20[2] = v34;
    v20[3] = v22;
    v23 = v32;
    v20[4] = v33;
    v20[5] = v23;
    v24 = v31;
    v20[6] = v30;
    v20[7] = v24;
    v25 = *(&v30 + 1);
    v20[8] = v29;
    v20[9] = v25;
    v26 = *(&v29 + 1);
    v20[10] = v28;
    v20[11] = v26;
    v27 = *(&v28 + 1);
    v20[12] = v19;
    v20[13] = v27;
    *(v20 + 7) = v39;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142708CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B7B8, &qword_2146F66B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v34 = v1[3];
  v35 = v10;
  v11 = v1[4];
  v32 = v1[5];
  v33 = v11;
  v12 = v1[7];
  v30 = v1[6];
  v31 = v12;
  v13 = v1[9];
  v28 = v1[8];
  v29 = v13;
  v14 = v1[11];
  v26 = v1[10];
  v27 = v14;
  v15 = v1[13];
  v24 = v1[12];
  v25 = v15;
  v16 = v1[15];
  v22 = v1[14];
  v23 = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431726C();

  sub_2146DAA28();
  v37 = v9;
  v38 = v8;
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v18 = v36;
  sub_2146DA388();
  if (v18)
  {
  }

  else
  {
    v19 = v33;

    v37 = v35;
    v38 = v34;
    v39 = 1;
    sub_2146DA388();
    v37 = v19;
    v38 = v32;
    v39 = 2;
    sub_2146DA388();
    v37 = v30;
    v38 = v31;
    v39 = 3;
    sub_2146DA388();
    v37 = v28;
    v38 = v29;
    v39 = 4;
    sub_2146DA388();
    v37 = v26;
    v38 = v27;
    v39 = 5;
    sub_2146DA388();
    v37 = v24;
    v38 = v25;
    v39 = 6;
    sub_2146DA388();
    v37 = v22;
    v38 = v23;
    v39 = 7;
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

__n128 sub_214270C54@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, _OWORD *a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 *a20, __int128 a21, uint64_t a22, char a23, _OWORD *a24, _OWORD *a25, _OWORD *a26, char a27)
{
  *&v47[71] = a24[4];
  *&v47[87] = a24[5];
  *&v47[103] = a24[6];
  *&v47[112] = *(a24 + 105);
  *&v47[7] = *a24;
  *&v47[23] = a24[1];
  *&v47[39] = a24[2];
  *&v47[55] = a24[3];
  *&v46[71] = a25[4];
  *&v46[87] = a25[5];
  *&v46[103] = a25[6];
  *&v46[112] = *(a25 + 105);
  *&v46[7] = *a25;
  *&v46[23] = a25[1];
  *&v46[39] = a25[2];
  *&v46[55] = a25[3];
  *&v45[55] = a26[3];
  *&v45[39] = a26[2];
  *&v45[23] = a26[1];
  *&v45[7] = *a26;
  *&v45[112] = *(a26 + 105);
  *&v45[103] = a26[6];
  *&v45[87] = a26[5];
  *&v45[71] = a26[4];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v27 = a5[5];
  *(a9 + 96) = a5[4];
  *(a9 + 112) = v27;
  v28 = a5[7];
  *(a9 + 128) = a5[6];
  *(a9 + 144) = v28;
  v29 = a5[1];
  *(a9 + 32) = *a5;
  *(a9 + 48) = v29;
  v30 = a5[3];
  *(a9 + 64) = a5[2];
  *(a9 + 80) = v30;
  *(a9 + 160) = a6;
  *(a9 + 168) = a7;
  v31 = a8[5];
  *(a9 + 240) = a8[4];
  *(a9 + 256) = v31;
  *(a9 + 272) = a8[6];
  *(a9 + 281) = *(a8 + 105);
  v32 = a8[1];
  *(a9 + 176) = *a8;
  *(a9 + 192) = v32;
  v33 = a8[3];
  *(a9 + 208) = a8[2];
  *(a9 + 224) = v33;
  *(a9 + 304) = a10;
  *(a9 + 320) = a11;
  *(a9 + 336) = a12;
  *(a9 + 344) = a13 & 1;
  *(a9 + 352) = a14;
  *(a9 + 360) = a15;
  v34 = a16[7];
  *(a9 + 464) = a16[6];
  *(a9 + 480) = v34;
  v35 = a16[5];
  *(a9 + 432) = a16[4];
  *(a9 + 448) = v35;
  v36 = a16[3];
  *(a9 + 400) = a16[2];
  *(a9 + 416) = v36;
  v37 = a16[1];
  *(a9 + 368) = *a16;
  *(a9 + 384) = v37;
  *(a9 + 496) = a17;
  *(a9 + 512) = a18;
  *(a9 + 520) = a19;
  v38 = *a20;
  v39 = a20[1];
  v40 = a20[3];
  *(a9 + 560) = a20[2];
  *(a9 + 576) = v40;
  *(a9 + 528) = v38;
  *(a9 + 544) = v39;
  v41 = a20[4];
  v42 = a20[5];
  v43 = a20[7];
  *(a9 + 624) = a20[6];
  *(a9 + 640) = v43;
  *(a9 + 592) = v41;
  *(a9 + 608) = v42;
  *(a9 + 656) = a21;
  *(a9 + 672) = a22;
  *(a9 + 680) = a23 & 1;
  *(a9 + 713) = *&v47[32];
  *(a9 + 729) = *&v47[48];
  *(a9 + 681) = *v47;
  *(a9 + 697) = *&v47[16];
  *(a9 + 777) = *&v47[96];
  *(a9 + 793) = *&v47[112];
  *(a9 + 745) = *&v47[64];
  *(a9 + 761) = *&v47[80];
  *(a9 + 841) = *&v46[32];
  *(a9 + 857) = *&v46[48];
  *(a9 + 809) = *v46;
  *(a9 + 825) = *&v46[16];
  *(a9 + 905) = *&v46[96];
  *(a9 + 921) = *&v46[112];
  *(a9 + 873) = *&v46[64];
  *(a9 + 889) = *&v46[80];
  *(a9 + 969) = *&v45[32];
  *(a9 + 985) = *&v45[48];
  *(a9 + 937) = *v45;
  *(a9 + 953) = *&v45[16];
  result = *&v45[64];
  *(a9 + 1033) = *&v45[96];
  *(a9 + 1049) = *&v45[112];
  *(a9 + 1001) = *&v45[64];
  *(a9 + 1017) = *&v45[80];
  *(a9 + 1065) = a27;
  return result;
}

unint64_t sub_214270EB0(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x73736572646461;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
    case 4:
      result = 0x79726F6765746163;
      break;
    case 5:
      result = 0x7551686372616573;
      break;
    case 6:
      result = 0x6F69746365726964;
      break;
    case 7:
      result = 0x726F70736E617274;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
    case 13:
      result = 0xD000000000000021;
      break;
    case 10:
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD000000000000026;
      break;
    case 14:
      result = 0x65636E6174736964;
      break;
    case 15:
      result = 0x6567616D69;
      break;
    case 16:
      result = 0x67616D496B726164;
      break;
    case 17:
      result = 0x6F724665726F7473;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2142710C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214382600(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142710F0(uint64_t a1)
{
  v2 = sub_2143172C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21427112C(uint64_t a1)
{
  v2 = sub_2143172C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214271168@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B7C0, &unk_2146F66C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v70 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v206 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2143172C0();
  sub_2146DAA08();
  if (!v2)
  {
    v88 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v189) = 0;
    v12 = sub_2142E12FC();
    sub_2146DA1C8();
    v87 = a2;
    v13 = v198;
    LOBYTE(v189) = 1;
    sub_2146DA1C8();
    v84 = v13;
    v85 = v12;
    v86 = *(&v13 + 1);
    v14 = *(&v198 + 1);
    v83 = v198;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904890, &qword_2146EDB90);
    v197 = 2;
    v16 = sub_214317314();
    sub_2146DA1C8();
    v81 = v16;
    v82 = v14;
    v80 = v15;
    v193 = v202;
    v194 = v203;
    v195 = v204;
    v196 = v205;
    v189 = v198;
    v190 = v199;
    v191 = v200;
    v192 = v201;
    LOBYTE(v157) = 3;
    sub_2146DA1C8();
    v79 = v166;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v181 = 4;
    v19 = sub_214314728();
    sub_2146DA1C8();
    v77 = v18;
    v78 = v19;
    v178 = v186;
    v179 = v187;
    *v180 = v188[0];
    *&v180[9] = *(v188 + 9);
    v174 = v182;
    v175 = v183;
    v176 = v184;
    v177 = v185;
    LOBYTE(v157) = 5;
    sub_2146DA1C8();
    v76 = v166;
    LOBYTE(v157) = 6;
    sub_2146DA1C8();
    v75 = v166;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
    LOBYTE(v157) = 7;
    sub_2142E3570();
    sub_2146DA1C8();
    v74 = v166;
    v73 = BYTE8(v166);
    LOBYTE(v157) = 8;
    sub_2146DA1C8();
    v20 = v84;
    v72 = v166;
    v165 = 9;
    sub_2146DA1C8();
    v161 = v170;
    v162 = v171;
    v163 = v172;
    v164 = v173;
    v157 = v166;
    v158 = v167;
    v159 = v168;
    v160 = v169;
    LOBYTE(v140) = 10;
    sub_2146DA1C8();
    v71 = *(&v149 + 1);
    v21 = v149;
    LOBYTE(v140) = 11;
    sub_2146DA1C8();
    v70 = v149;
    v148 = 12;
    sub_2146DA1C8();
    v144 = v153;
    v145 = v154;
    v146 = v155;
    v147 = v156;
    v140 = v149;
    v141 = v150;
    v142 = v151;
    v143 = v152;
    LOBYTE(v125) = 13;
    sub_2146DA1C8();
    v85 = *(&v133 + 1);
    v22 = v133;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    LOBYTE(v125) = 14;
    sub_2142E35EC();
    sub_2146DA1C8();
    v23 = v133;
    LODWORD(v81) = BYTE8(v133);
    v132 = 15;
    sub_2146DA1C8();
    v129 = v137;
    v130 = v138;
    *v131 = v139[0];
    *&v131[9] = *(v139 + 9);
    v125 = v133;
    v126 = v134;
    v127 = v135;
    v128 = v136;
    v117 = 16;
    sub_2146DA1C8();
    v114 = v122;
    v115 = v123;
    *v116 = v124[0];
    *&v116[9] = *(v124 + 9);
    v110 = v118;
    v111 = v119;
    v112 = v120;
    v113 = v121;
    v102 = 17;
    sub_2146DA1C8();
    v99 = v107;
    v100 = v108;
    *v101 = v109[0];
    *&v101[9] = *(v109 + 9);
    v95 = v103;
    v96 = v104;
    v97 = v105;
    v98 = v106;
    v94 = 18;
    LODWORD(v80) = sub_2146DA178();
    (*(v88 + 8))(v9, v5);
    v93 = v73;
    v92 = v81;
    *(&v91[4] + 7) = v129;
    *(&v91[5] + 7) = v130;
    *(&v91[6] + 7) = *v131;
    v91[7] = *&v131[9];
    *(v91 + 7) = v125;
    *(&v91[1] + 7) = v126;
    *(&v91[2] + 7) = v127;
    *(&v91[3] + 7) = v128;
    *(&v90[4] + 7) = v114;
    *(&v90[5] + 7) = v115;
    *(&v90[6] + 7) = *v116;
    v90[7] = *&v116[9];
    *(v90 + 7) = v110;
    *(&v90[1] + 7) = v111;
    *(&v90[2] + 7) = v112;
    *(&v90[3] + 7) = v113;
    *(&v89[3] + 7) = v98;
    *(&v89[2] + 7) = v97;
    *(&v89[1] + 7) = v96;
    *(v89 + 7) = v95;
    v89[7] = *&v101[9];
    *(&v89[6] + 7) = *v101;
    *(&v89[5] + 7) = v100;
    *(&v89[4] + 7) = v99;
    v24 = v80 & 1;
    v25 = v73;
    v26 = v81;
    v28 = v86;
    v27 = v87;
    *v87 = v20;
    v27[1] = v28;
    v27[2] = v83;
    v27[3] = v82;
    v29 = v194;
    *(v27 + 6) = v193;
    *(v27 + 7) = v29;
    v30 = v196;
    *(v27 + 8) = v195;
    *(v27 + 9) = v30;
    v31 = v190;
    *(v27 + 2) = v189;
    *(v27 + 3) = v31;
    v32 = v192;
    *(v27 + 4) = v191;
    *(v27 + 5) = v32;
    *(v27 + 10) = v79;
    v33 = v174;
    v34 = v175;
    v35 = v177;
    *(v27 + 13) = v176;
    *(v27 + 14) = v35;
    *(v27 + 11) = v33;
    *(v27 + 12) = v34;
    v36 = v178;
    v37 = v179;
    v38 = *v180;
    *(v27 + 281) = *&v180[9];
    *(v27 + 16) = v37;
    *(v27 + 17) = v38;
    *(v27 + 15) = v36;
    *(v27 + 19) = v76;
    *(v27 + 20) = v75;
    v27[42] = v74;
    *(v27 + 344) = v25;
    *(v27 + 22) = v72;
    v39 = v157;
    v40 = v158;
    v41 = v160;
    *(v27 + 25) = v159;
    *(v27 + 26) = v41;
    *(v27 + 23) = v39;
    *(v27 + 24) = v40;
    v42 = v161;
    v43 = v162;
    v44 = v164;
    *(v27 + 29) = v163;
    *(v27 + 30) = v44;
    *(v27 + 27) = v42;
    *(v27 + 28) = v43;
    v45 = v71;
    v27[62] = v21;
    v27[63] = v45;
    *(v27 + 32) = v70;
    v46 = v140;
    v47 = v141;
    v48 = v143;
    *(v27 + 35) = v142;
    *(v27 + 36) = v48;
    *(v27 + 33) = v46;
    *(v27 + 34) = v47;
    v49 = v144;
    v50 = v145;
    v51 = v147;
    *(v27 + 39) = v146;
    *(v27 + 40) = v51;
    *(v27 + 37) = v49;
    *(v27 + 38) = v50;
    v27[82] = v22;
    v27[83] = v85;
    v27[84] = v23;
    *(v27 + 680) = v26;
    v52 = v91[0];
    v53 = v91[1];
    v54 = v91[3];
    *(v27 + 713) = v91[2];
    *(v27 + 729) = v54;
    *(v27 + 681) = v52;
    *(v27 + 697) = v53;
    v55 = v91[4];
    v56 = v91[5];
    v57 = v91[7];
    *(v27 + 777) = v91[6];
    *(v27 + 793) = v57;
    *(v27 + 745) = v55;
    *(v27 + 761) = v56;
    v58 = v90[0];
    v59 = v90[1];
    v60 = v90[3];
    *(v27 + 841) = v90[2];
    *(v27 + 857) = v60;
    *(v27 + 809) = v58;
    *(v27 + 825) = v59;
    v61 = v90[4];
    v62 = v90[5];
    v63 = v90[7];
    *(v27 + 905) = v90[6];
    *(v27 + 921) = v63;
    *(v27 + 873) = v61;
    *(v27 + 889) = v62;
    v64 = v89[0];
    v65 = v89[1];
    v66 = v89[3];
    *(v27 + 969) = v89[2];
    *(v27 + 985) = v66;
    *(v27 + 937) = v64;
    *(v27 + 953) = v65;
    v67 = v89[4];
    v68 = v89[5];
    v69 = v89[7];
    *(v27 + 1033) = v89[6];
    *(v27 + 1049) = v69;
    *(v27 + 1001) = v67;
    *(v27 + 1017) = v68;
    *(v27 + 1065) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(v206);
}

uint64_t sub_214272478(void *a1)
{
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B7D8, &qword_2146F66D0);
  v86 = *(v209 - 8);
  v3 = *(v86 + 64);
  MEMORY[0x28223BE20](v209);
  v5 = &v63 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v83 = *(v1 + 16);
  v84 = v6;
  v9 = *(v1 + 112);
  v161 = *(v1 + 96);
  v162 = v9;
  v10 = *(v1 + 144);
  v163 = *(v1 + 128);
  v164 = v10;
  v11 = *(v1 + 48);
  v157 = *(v1 + 32);
  v158 = v11;
  v12 = *(v1 + 80);
  v159 = *(v1 + 64);
  v160 = v12;
  v13 = *(v1 + 168);
  v81 = *(v1 + 160);
  v82 = v8;
  v14 = *(v1 + 256);
  v169 = *(v1 + 240);
  v170 = v14;
  v171[0] = *(v1 + 272);
  *(v171 + 9) = *(v1 + 281);
  v15 = *(v1 + 192);
  v165 = *(v1 + 176);
  v166 = v15;
  v16 = *(v1 + 224);
  v167 = *(v1 + 208);
  v168 = v16;
  v17 = *(v1 + 312);
  v79 = *(v1 + 304);
  v80 = v13;
  v18 = *(v1 + 328);
  v77 = *(v1 + 320);
  v78 = v17;
  v75 = *(v1 + 336);
  v76 = v18;
  v74 = *(v1 + 344);
  v19 = *(v1 + 352);
  v72 = *(v1 + 360);
  v73 = v19;
  v20 = *(v1 + 480);
  v178 = *(v1 + 464);
  v179 = v20;
  v21 = *(v1 + 448);
  v176 = *(v1 + 432);
  v177 = v21;
  v22 = *(v1 + 416);
  v174 = *(v1 + 400);
  v175 = v22;
  v23 = *(v1 + 384);
  v172 = *(v1 + 368);
  v173 = v23;
  v24 = *(v1 + 496);
  v70 = *(v1 + 504);
  v71 = v24;
  v25 = *(v1 + 512);
  v68 = *(v1 + 520);
  v69 = v25;
  v26 = *(v1 + 528);
  v27 = *(v1 + 544);
  v28 = *(v1 + 576);
  v182 = *(v1 + 560);
  v183 = v28;
  v180 = v26;
  v181 = v27;
  v29 = *(v1 + 592);
  v30 = *(v1 + 608);
  v31 = *(v1 + 640);
  v186 = *(v1 + 624);
  v187 = v31;
  v184 = v29;
  v185 = v30;
  v32 = *(v1 + 656);
  v66 = *(v1 + 664);
  v67 = v32;
  v65 = *(v1 + 672);
  v64 = *(v1 + 680);
  v33 = *(v1 + 688);
  v34 = *(v1 + 704);
  v35 = *(v1 + 736);
  v190 = *(v1 + 720);
  v191 = v35;
  v188 = v33;
  v189 = v34;
  v36 = *(v1 + 752);
  v37 = *(v1 + 768);
  v38 = *(v1 + 784);
  *(v194 + 9) = *(v1 + 793);
  v193 = v37;
  v194[0] = v38;
  v192 = v36;
  v39 = *(v1 + 816);
  v40 = *(v1 + 832);
  v41 = *(v1 + 864);
  v197 = *(v1 + 848);
  v198 = v41;
  v195 = v39;
  v196 = v40;
  v42 = *(v1 + 880);
  v43 = *(v1 + 896);
  v44 = *(v1 + 912);
  *(v201 + 9) = *(v1 + 921);
  v200 = v43;
  v201[0] = v44;
  v199 = v42;
  v45 = *(v1 + 944);
  v46 = *(v1 + 960);
  v47 = *(v1 + 992);
  v204 = *(v1 + 976);
  v205 = v47;
  v202 = v45;
  v203 = v46;
  v48 = *(v1 + 1008);
  v49 = *(v1 + 1024);
  v50 = *(v1 + 1040);
  *(v208 + 9) = *(v1 + 1049);
  v207 = v49;
  v208[0] = v50;
  v206 = v48;
  v63 = *(v1 + 1065);
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143172C0();

  v52 = v5;
  v53 = v209;
  sub_2146DAA28();
  *&v149 = v84;
  *(&v149 + 1) = v7;
  LOBYTE(v147[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v54 = v85;
  sub_2146DA388();
  if (v54)
  {

    return (*(v86 + 8))(v52, v53);
  }

  else
  {

    *&v149 = v83;
    *(&v149 + 1) = v82;
    LOBYTE(v147[0]) = 1;
    sub_2146DA388();
    v153 = v161;
    v154 = v162;
    v155 = v163;
    v156 = v164;
    v149 = v157;
    v150 = v158;
    v151 = v159;
    v152 = v160;
    v148 = 2;
    v56 = v52;
    sub_213FB2E54(&v157, v147, &qword_27C904890, &qword_2146EDB90);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904890, &qword_2146EDB90);
    v58 = sub_214317398();
    v85 = v56;
    sub_2146DA388();
    v59 = v86;
    v83 = v58;
    v84 = v57;
    v147[4] = v153;
    v147[5] = v154;
    v147[6] = v155;
    v147[7] = v156;
    v147[0] = v149;
    v147[1] = v150;
    v147[2] = v151;
    v147[3] = v152;
    sub_213FB2DF4(v147, &qword_27C904890, &qword_2146EDB90);
    *&v130 = v81;
    *(&v130 + 1) = v80;
    LOBYTE(v128[0]) = 3;
    sub_2146DA388();
    v144 = v169;
    v145 = v170;
    v146[0] = v171[0];
    *(v146 + 9) = *(v171 + 9);
    v140 = v165;
    v141 = v166;
    v142 = v167;
    v143 = v168;
    v139 = 4;
    v82 = 0;
    sub_213FB2E54(&v165, &v130, &qword_27C904868, &qword_2146EDB58);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v61 = sub_214315670();
    v62 = v82;
    sub_2146DA388();
    if (v62)
    {
      v134 = v144;
      v135 = v145;
      v136[0] = v146[0];
      *(v136 + 9) = *(v146 + 9);
      v130 = v140;
      v131 = v141;
      v132 = v142;
      v133 = v143;
      sub_213FB2DF4(&v130, &qword_27C904868, &qword_2146EDB58);
      return (*(v59 + 8))(v85, v209);
    }

    else
    {
      v81 = v61;
      v82 = v60;
      v137[4] = v144;
      v137[5] = v145;
      *v138 = v146[0];
      *&v138[9] = *(v146 + 9);
      v137[0] = v140;
      v137[1] = v141;
      v137[2] = v142;
      v137[3] = v143;
      sub_213FB2DF4(v137, &qword_27C904868, &qword_2146EDB58);
      *&v130 = v79;
      *(&v130 + 1) = v78;
      LOBYTE(v128[0]) = 5;
      sub_2146DA388();
      *&v130 = v77;
      *(&v130 + 1) = v76;
      LOBYTE(v128[0]) = 6;
      sub_2146DA388();
      *&v130 = v75;
      BYTE8(v130) = v74;
      LOBYTE(v128[0]) = 7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
      sub_2142E3778();
      sub_2146DA388();
      *&v130 = v73;
      *(&v130 + 1) = v72;
      LOBYTE(v128[0]) = 8;
      sub_2146DA388();
      v134 = v176;
      v135 = v177;
      v136[0] = v178;
      v136[1] = v179;
      v130 = v172;
      v131 = v173;
      v132 = v174;
      v133 = v175;
      v129 = 9;
      sub_213FB2E54(&v172, v128, &qword_27C904890, &qword_2146EDB90);
      sub_2146DA388();
      v128[4] = v134;
      v128[5] = v135;
      v128[6] = v136[0];
      v128[7] = v136[1];
      v128[0] = v130;
      v128[1] = v131;
      v128[2] = v132;
      v128[3] = v133;
      sub_213FB2DF4(v128, &qword_27C904890, &qword_2146EDB90);
      *&v120 = v71;
      *(&v120 + 1) = v70;
      LOBYTE(v118[0]) = 10;
      sub_2146DA388();
      *&v120 = v69;
      *(&v120 + 1) = v68;
      LOBYTE(v118[0]) = 11;
      sub_2146DA388();
      v124 = v184;
      v125 = v185;
      v126 = v186;
      v127 = v187;
      v120 = v180;
      v121 = v181;
      v122 = v182;
      v123 = v183;
      v119 = 12;
      sub_213FB2E54(&v180, v118, &qword_27C904890, &qword_2146EDB90);
      sub_2146DA388();
      v118[4] = v124;
      v118[5] = v125;
      v118[6] = v126;
      v118[7] = v127;
      v118[0] = v120;
      v118[1] = v121;
      v118[2] = v122;
      v118[3] = v123;
      sub_213FB2DF4(v118, &qword_27C904890, &qword_2146EDB90);
      *&v111 = v67;
      *(&v111 + 1) = v66;
      LOBYTE(v108[0]) = 13;
      sub_2146DA388();
      *&v111 = v65;
      BYTE8(v111) = v64;
      LOBYTE(v108[0]) = 14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
      sub_2142E37F4();
      sub_2146DA388();
      v115 = v192;
      v116 = v193;
      v117[0] = v194[0];
      *(v117 + 9) = *(v194 + 9);
      v111 = v188;
      v112 = v189;
      v113 = v190;
      v114 = v191;
      v110 = 15;
      sub_213FB2E54(&v188, v108, &qword_27C904868, &qword_2146EDB58);
      sub_2146DA388();
      v108[4] = v115;
      v108[5] = v116;
      *v109 = v117[0];
      *&v109[9] = *(v117 + 9);
      v108[0] = v111;
      v108[1] = v112;
      v108[2] = v113;
      v108[3] = v114;
      sub_213FB2DF4(v108, &qword_27C904868, &qword_2146EDB58);
      v105 = v199;
      v106 = v200;
      v107[0] = v201[0];
      *(v107 + 9) = *(v201 + 9);
      v101 = v195;
      v102 = v196;
      v103 = v197;
      v104 = v198;
      v100 = 16;
      sub_213FB2E54(&v195, v98, &qword_27C904868, &qword_2146EDB58);
      sub_2146DA388();
      v98[4] = v105;
      v98[5] = v106;
      *v99 = v107[0];
      *&v99[9] = *(v107 + 9);
      v98[0] = v101;
      v98[1] = v102;
      v98[2] = v103;
      v98[3] = v104;
      sub_213FB2DF4(v98, &qword_27C904868, &qword_2146EDB58);
      v95 = v206;
      v96 = v207;
      v97[0] = v208[0];
      *(v97 + 9) = *(v208 + 9);
      v91 = v202;
      v92 = v203;
      v93 = v204;
      v94 = v205;
      v90 = 17;
      sub_213FB2E54(&v202, v88, &qword_27C904868, &qword_2146EDB58);
      sub_2146DA388();
      v88[4] = v95;
      v88[5] = v96;
      *v89 = v97[0];
      *&v89[9] = *(v97 + 9);
      v88[0] = v91;
      v88[1] = v92;
      v88[2] = v93;
      v88[3] = v94;
      sub_213FB2DF4(v88, &qword_27C904868, &qword_2146EDB58);
      v87 = 18;
      sub_2146DA338();
      return (*(v86 + 8))(v85, v209);
    }
  }
}

__n128 sub_2142731F8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11)
{
  *&v19[68] = a4[4];
  *&v19[84] = a4[5];
  *&v19[100] = a4[6];
  *&v19[109] = *(a4 + 105);
  *&v19[4] = *a4;
  *&v19[20] = a4[1];
  *&v19[36] = a4[2];
  *&v19[52] = a4[3];
  *&v18[55] = a5[3];
  *&v18[39] = a5[2];
  *&v18[23] = a5[1];
  *&v18[7] = *a5;
  *&v18[112] = *(a5 + 105);
  *&v18[103] = a5[6];
  *&v18[87] = a5[5];
  *&v18[71] = a5[4];
  *&v17[55] = a6[3];
  *&v17[39] = a6[2];
  *&v17[23] = a6[1];
  *&v17[7] = *a6;
  *&v17[112] = *(a6 + 105);
  *&v17[103] = a6[6];
  *&v17[87] = a6[5];
  *&v17[71] = a6[4];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 68) = *&v19[48];
  *(a9 + 52) = *&v19[32];
  *(a9 + 36) = *&v19[16];
  *(a9 + 20) = *v19;
  *(a9 + 129) = *&v19[109];
  *(a9 + 116) = *&v19[96];
  *(a9 + 100) = *&v19[80];
  *(a9 + 84) = *&v19[64];
  *(a9 + 193) = *&v18[48];
  *(a9 + 177) = *&v18[32];
  *(a9 + 161) = *&v18[16];
  *(a9 + 145) = *v18;
  *(a9 + 257) = *&v18[112];
  *(a9 + 241) = *&v18[96];
  *(a9 + 225) = *&v18[80];
  *(a9 + 209) = *&v18[64];
  *(a9 + 305) = *&v17[32];
  *(a9 + 321) = *&v17[48];
  *(a9 + 273) = *v17;
  *(a9 + 289) = *&v17[16];
  *(a9 + 369) = *&v17[96];
  *(a9 + 385) = *&v17[112];
  *(a9 + 337) = *&v17[64];
  *(a9 + 353) = *&v17[80];
  *(a9 + 408) = a7;
  *(a9 + 416) = a8;
  *(a9 + 424) = a10;
  v11 = *a11;
  v12 = a11[1];
  v13 = a11[3];
  *(a9 + 464) = a11[2];
  *(a9 + 480) = v13;
  *(a9 + 432) = v11;
  *(a9 + 448) = v12;
  result = a11[4];
  v15 = a11[5];
  v16 = a11[6];
  *(a9 + 537) = *(a11 + 105);
  *(a9 + 512) = v15;
  *(a9 + 528) = v16;
  *(a9 + 496) = result;
  return result;
}

uint64_t sub_214273378()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x656873696C627570;
  if (v1 != 6)
  {
    v3 = 0x656873696C627570;
  }

  v4 = 0x67616D496B726164;
  if (v1 != 4)
  {
    v4 = 0x6573736572646461;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1852793705;
  if (v1 != 2)
  {
    v5 = 0x6567616D69;
  }

  if (*v0)
  {
    v2 = 0x664F7265626D756ELL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_214273488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214382C04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142734B0(uint64_t a1)
{
  v2 = sub_21431741C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142734EC(uint64_t a1)
{
  v2 = sub_21431741C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214273528@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B7E8, &qword_2146F66D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v109 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21431741C();
  sub_2146DAA08();
  if (!v2)
  {
    v51 = a2;
    v52 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v94) = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v12 = v102;
    LOBYTE(v102) = 1;
    v13 = sub_2146DA218();
    v50 = *(&v12 + 1);
    v48 = v12;
    v49 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v101 = 2;
    v14 = sub_214314728();
    sub_2146DA1C8();
    v98 = v106;
    v99 = v107;
    *v100 = v108[0];
    *&v100[9] = *(v108 + 9);
    v94 = v102;
    v95 = v103;
    v96 = v104;
    v97 = v105;
    v86 = 3;
    sub_2146DA1C8();
    v83 = v91;
    v84 = v92;
    *v85 = v93[0];
    *&v85[9] = *(v93 + 9);
    v79 = v87;
    v80 = v88;
    v81 = v89;
    v82 = v90;
    v71 = 4;
    sub_2146DA1C8();
    v68 = v76;
    v69 = v77;
    *v70 = v78[0];
    *&v70[9] = *(v78 + 9);
    v64 = v72;
    v65 = v73;
    v66 = v74;
    v67 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B7F8, &qword_2146F66E0);
    v63 = 5;
    sub_214317470();
    sub_2146DA1C8();
    v47 = v14;
    v16 = v56;
    v63 = 6;
    sub_2146DA1C8();
    v17 = v16;
    v19 = *(&v56 + 1);
    v18 = v56;
    v63 = 7;
    sub_2146DA1C8();
    (*(v52 + 8))(v9, v5);
    *(&v55[4] + 4) = v98;
    *(&v55[5] + 4) = v99;
    *(&v55[6] + 4) = *v100;
    *(&v55[6] + 13) = *&v100[9];
    *(v55 + 4) = v94;
    *(&v55[1] + 4) = v95;
    *(&v55[2] + 4) = v96;
    *(&v55[3] + 4) = v97;
    *(&v54[3] + 7) = v82;
    *(&v54[2] + 7) = v81;
    *(&v54[1] + 7) = v80;
    *(v54 + 7) = v79;
    v54[7] = *&v85[9];
    *(&v54[6] + 7) = *v85;
    *(&v54[5] + 7) = v84;
    *(&v54[4] + 7) = v83;
    *(&v53[3] + 7) = v67;
    *(&v53[2] + 7) = v66;
    *(&v53[1] + 7) = v65;
    *(v53 + 7) = v64;
    v53[7] = *&v70[9];
    *(&v53[6] + 7) = *v70;
    *(&v53[5] + 7) = v69;
    *(&v53[4] + 7) = v68;
    v20 = v18;
    v21 = v51;
    v22 = v50;
    *v51 = v48;
    v21[1] = v22;
    *(v21 + 4) = v49;
    v23 = v55[0];
    v24 = v55[1];
    v25 = v55[2];
    *(v21 + 68) = v55[3];
    *(v21 + 52) = v25;
    *(v21 + 36) = v24;
    *(v21 + 20) = v23;
    v26 = v55[4];
    v27 = v55[5];
    v28 = v55[6];
    *(v21 + 129) = *(&v55[6] + 13);
    *(v21 + 116) = v28;
    *(v21 + 100) = v27;
    *(v21 + 84) = v26;
    v29 = v54[0];
    v30 = v54[1];
    v31 = v54[2];
    *(v21 + 193) = v54[3];
    *(v21 + 177) = v31;
    *(v21 + 161) = v30;
    *(v21 + 145) = v29;
    v32 = v54[4];
    v33 = v54[5];
    v34 = v54[6];
    *(v21 + 257) = v54[7];
    *(v21 + 241) = v34;
    *(v21 + 225) = v33;
    *(v21 + 209) = v32;
    v35 = v53[0];
    v36 = v53[1];
    v37 = v53[3];
    *(v21 + 305) = v53[2];
    *(v21 + 321) = v37;
    *(v21 + 273) = v35;
    *(v21 + 289) = v36;
    v38 = v53[4];
    v39 = v53[5];
    v40 = v53[7];
    *(v21 + 369) = v53[6];
    *(v21 + 385) = v40;
    *(v21 + 337) = v38;
    *(v21 + 353) = v39;
    v21[51] = v17;
    *(v21 + 26) = __PAIR128__(v19, v20);
    v41 = v56;
    v42 = v57;
    v43 = v59;
    *(v21 + 29) = v58;
    *(v21 + 30) = v43;
    *(v21 + 27) = v41;
    *(v21 + 28) = v42;
    v44 = v60;
    v45 = v61;
    v46 = *v62;
    *(v21 + 537) = *&v62[9];
    *(v21 + 32) = v45;
    *(v21 + 33) = v46;
    *(v21 + 31) = v44;
  }

  return __swift_destroy_boxed_opaque_existential_1(v109);
}

uint64_t sub_214273CE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B818, &qword_2146F66F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = *(v1 + 8);
  v41 = *v1;
  LODWORD(v40) = *(v1 + 16);
  v9 = *(v1 + 104);
  v86 = *(v1 + 88);
  v87 = v9;
  v88[0] = *(v1 + 120);
  *(v88 + 9) = *(v1 + 129);
  v10 = *(v1 + 40);
  v82 = *(v1 + 24);
  v83 = v10;
  v11 = *(v1 + 72);
  v84 = *(v1 + 56);
  v85 = v11;
  v12 = *(v1 + 232);
  v93 = *(v1 + 216);
  v94 = v12;
  v95[0] = *(v1 + 248);
  *(v95 + 9) = *(v1 + 257);
  v13 = *(v1 + 168);
  v89 = *(v1 + 152);
  v90 = v13;
  v14 = *(v1 + 200);
  v91 = *(v1 + 184);
  v92 = v14;
  v15 = *(v1 + 280);
  v16 = *(v1 + 296);
  v17 = *(v1 + 312);
  v99 = *(v1 + 328);
  v98 = v17;
  v97 = v16;
  v96 = v15;
  v18 = *(v1 + 344);
  v19 = *(v1 + 360);
  v20 = *(v1 + 376);
  *(v102 + 9) = *(v1 + 385);
  v102[0] = v20;
  v101 = v19;
  v100 = v18;
  v21 = *(v1 + 408);
  v38 = *(v1 + 416);
  v39 = v21;
  v37 = *(v1 + 424);
  v22 = *(v1 + 432);
  v23 = *(v1 + 448);
  v24 = *(v1 + 480);
  v105 = *(v1 + 464);
  v106 = v24;
  v103 = v22;
  v104 = v23;
  v25 = *(v1 + 496);
  v26 = *(v1 + 512);
  v27 = *(v1 + 528);
  *(v109 + 9) = *(v1 + 537);
  v108 = v26;
  v109[0] = v27;
  v107 = v25;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431741C();

  sub_2146DAA28();
  *&v75 = v41;
  *(&v75 + 1) = v8;
  LOBYTE(v72[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v29 = v110;
  sub_2146DA388();
  if (v29)
  {

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v110 = v4;

    LOBYTE(v75) = 1;
    sub_2146DA3D8();
    v79 = v86;
    v80 = v87;
    v81[0] = v88[0];
    *(v81 + 9) = *(v88 + 9);
    v75 = v82;
    v76 = v83;
    v77 = v84;
    v78 = v85;
    v74 = 2;
    v31 = v7;
    v41 = v3;
    sub_213FB2E54(&v82, v72, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v32 = sub_214315670();
    v40 = v31;
    sub_2146DA388();
    v72[4] = v79;
    v72[5] = v80;
    *v73 = v81[0];
    *&v73[9] = *(v81 + 9);
    v72[0] = v75;
    v72[1] = v76;
    v72[2] = v77;
    v72[3] = v78;
    sub_213FB2DF4(v72, &qword_27C904868, &qword_2146EDB58);
    v69 = v93;
    v70 = v94;
    v71[0] = v95[0];
    *(v71 + 9) = *(v95 + 9);
    v65 = v89;
    v66 = v90;
    v67 = v91;
    v68 = v92;
    v64 = 3;
    sub_213FB2E54(&v89, v62, &qword_27C904868, &qword_2146EDB58);
    sub_2146DA388();
    v62[4] = v69;
    v62[5] = v70;
    *v63 = v71[0];
    *&v63[9] = *(v71 + 9);
    v62[0] = v65;
    v62[1] = v66;
    v62[2] = v67;
    v62[3] = v68;
    sub_213FB2DF4(v62, &qword_27C904868, &qword_2146EDB58);
    v59 = v100;
    v60 = v101;
    v61[0] = v102[0];
    *(v61 + 9) = *(v102 + 9);
    v55 = v96;
    v56 = v97;
    v57 = v98;
    v58 = v99;
    v54 = 4;
    v33 = v41;
    sub_213FB2E54(&v96, v52, &qword_27C904868, &qword_2146EDB58);
    v34 = v40;
    sub_2146DA388();
    v36 = v32;
    v52[4] = v59;
    v52[5] = v60;
    *v53 = v61[0];
    *&v53[9] = *(v61 + 9);
    v52[0] = v55;
    v52[1] = v56;
    v52[2] = v57;
    v52[3] = v58;
    sub_213FB2DF4(v52, &qword_27C904868, &qword_2146EDB58);
    *&v45 = v39;
    LOBYTE(v42[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B7F8, &qword_2146F66E0);
    sub_214317578();
    sub_2146DA388();
    v35 = v110;
    *&v45 = v38;
    *(&v45 + 1) = v37;
    LOBYTE(v42[0]) = 6;
    sub_2146DA388();
    v49 = v107;
    v50 = v108;
    v51[0] = v109[0];
    *(v51 + 9) = *(v109 + 9);
    v45 = v103;
    v46 = v104;
    v47 = v105;
    v48 = v106;
    v44 = 7;
    sub_213FB2E54(&v103, v42, &qword_27C904868, &qword_2146EDB58);
    sub_2146DA388();
    v42[4] = v49;
    v42[5] = v50;
    *v43 = v51[0];
    *&v43[9] = *(v51 + 9);
    v42[0] = v45;
    v42[1] = v46;
    v42[2] = v47;
    v42[3] = v48;
    sub_213FB2DF4(v42, &qword_27C904868, &qword_2146EDB58);
    return (*(v35 + 8))(v34, v33);
  }
}

__n128 sub_2142744B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v5 = *(a3 + 80);
  *(a5 + 80) = *(a3 + 64);
  *(a5 + 96) = v5;
  *(a5 + 112) = *(a3 + 96);
  *(a5 + 121) = *(a3 + 105);
  v6 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v6;
  result = *(a3 + 32);
  v8 = *(a3 + 48);
  *(a5 + 48) = result;
  *(a5 + 64) = v8;
  *(a5 + 140) = a4;
  return result;
}

uint64_t sub_2142744EC()
{
  v1 = 1852793705;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_21427453C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214382EC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214274564(uint64_t a1)
{
  v2 = sub_214317680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142745A0(uint64_t a1)
{
  v2 = sub_214317680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142745DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B830, &qword_2146F66F8);
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v8 = &v20 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317680();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v5;
    v22 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v24) = 0;
    sub_2142E12FC();
    v11 = v39;
    sub_2146DA1C8();
    v12 = *(&v32 + 1);
    v21 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v31 = 1;
    sub_214314728();
    sub_2146DA1C8();
    v20 = v12;
    v28 = v36;
    v29 = v37;
    *v30 = v38[0];
    *&v30[9] = *(v38 + 9);
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v23 = 2;
    v13 = sub_2146DA218();
    (*(v10 + 8))(v8, v11);
    v14 = v22;
    v15 = v20;
    *v22 = v21;
    v14[1] = v15;
    v16 = v29;
    *(v14 + 5) = v28;
    *(v14 + 6) = v16;
    *(v14 + 7) = *v30;
    *(v14 + 121) = *&v30[9];
    v17 = v25;
    *(v14 + 1) = v24;
    *(v14 + 2) = v17;
    v18 = v27;
    *(v14 + 3) = v26;
    *(v14 + 4) = v18;
    *(v14 + 35) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142748BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B840, &qword_2146F6700);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 6);
  v37 = *(v1 + 5);
  v38 = v9;
  v39[0] = *(v1 + 7);
  *(v39 + 9) = *(v1 + 121);
  v10 = *(v1 + 2);
  v33 = *(v1 + 1);
  v34 = v10;
  v11 = *(v1 + 4);
  v35 = *(v1 + 3);
  v36 = v11;
  v20[3] = *(v1 + 35);
  v13 = a1[3];
  v12 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_214317680();

  sub_2146DAA28();
  *&v26 = v7;
  *(&v26 + 1) = v8;
  LOBYTE(v23[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v17 = v40;
  sub_2146DA388();
  if (v17)
  {

    return (*(v21 + 8))(v6, v16);
  }

  else
  {
    v19 = v21;

    v30 = v37;
    v31 = v38;
    v32[0] = v39[0];
    *(v32 + 9) = *(v39 + 9);
    v26 = v33;
    v27 = v34;
    v28 = v35;
    v29 = v36;
    v25 = 1;
    sub_213FB2E54(&v33, v23, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v23[4] = v30;
    v23[5] = v31;
    *v24 = v32[0];
    *&v24[9] = *(v32 + 9);
    v23[0] = v26;
    v23[1] = v27;
    v23[2] = v28;
    v23[3] = v29;
    sub_213FB2DF4(v23, &qword_27C904868, &qword_2146EDB58);
    v22 = 2;
    sub_2146DA3D8();
    return (*(v19 + 8))(v6, v16);
  }
}

uint64_t sub_214274C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = a6[5];
  *(a9 + 104) = a6[4];
  *(a9 + 120) = v11;
  *(a9 + 136) = a6[6];
  *(a9 + 145) = *(a6 + 105);
  v12 = a6[1];
  *(a9 + 40) = *a6;
  *(a9 + 56) = v12;
  v13 = a6[3];
  *(a9 + 72) = a6[2];
  *(a9 + 88) = v13;
  v14 = a9 + 168;
  *(v14 + 105) = *(a7 + 105);
  v15 = a7[5];
  *(v14 + 96) = a7[6];
  v16 = a7[4];
  *(a9 + 248) = v15;
  *(a9 + 232) = v16;
  v17 = a7[2];
  *(a9 + 216) = a7[3];
  *(a9 + 200) = v17;
  v18 = *a7;
  *(a9 + 184) = a7[1];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 168) = v18;
  v19 = type metadata accessor for LinkPresentation.FileMetadata(0);
  return sub_21408AC04(a8, a9 + *(v19 + 36), &qword_27C913090, &unk_2146E9DB0);
}

uint64_t sub_214274CE4()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x69616E626D756874;
  v4 = 1852793705;
  if (v1 != 4)
  {
    v4 = 0x6E6F697461657263;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 1702521203;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_214274D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214382FE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214274DB4(uint64_t a1)
{
  v2 = sub_2143176D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214274DF0(uint64_t a1)
{
  v2 = sub_2143176D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214274E2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B848, &qword_2146F6708);
  v8 = *(v40 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v40);
  v11 = &v33 - v10;
  v12 = a1[3];
  v13 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2143176D4();
  v41 = v11;
  sub_2146DAA08();
  if (!v2)
  {
    v36 = v4;
    v37 = v7;
    v38 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v58) = 0;
    sub_2142E12FC();
    v14 = v40;
    sub_2146DA1C8();
    v15 = v66;
    LOBYTE(v58) = 1;
    sub_2146DA1C8();
    v35 = v15;
    v16 = v66;
    LOBYTE(v66) = 2;
    v17 = sub_2146DA228();
    v18 = v38;
    v33 = v17;
    v34 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v65 = 3;
    sub_214314728();
    sub_2146DA1C8();
    v62 = v70;
    v63 = v71;
    *v64 = v72[0];
    *&v64[9] = *(v72 + 9);
    v58 = v66;
    v59 = v67;
    v60 = v68;
    v61 = v69;
    v50 = 4;
    sub_2146DA1C8();
    v47 = v55;
    v48 = v56;
    *v49 = v57[0];
    *&v49[9] = *(v57 + 9);
    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v42 = 5;
    sub_2142EC0C4();
    v19 = v37;
    v20 = v41;
    sub_2146DA1C8();
    (*(v18 + 8))(v20, v14);
    v22 = type metadata accessor for LinkPresentation.FileMetadata(0);
    v23 = v39;
    sub_21408AC04(v19, v39 + *(v22 + 36), &qword_27C913090, &unk_2146E9DB0);
    v24 = v63;
    *(v23 + 104) = v62;
    *(v23 + 120) = v24;
    *(v23 + 136) = *v64;
    *(v23 + 145) = *&v64[9];
    v25 = v59;
    *(v23 + 40) = v58;
    *(v23 + 56) = v25;
    v26 = v61;
    *(v23 + 72) = v60;
    *(v23 + 88) = v26;
    *(v23 + 273) = *&v49[9];
    v27 = v48;
    *(v23 + 264) = *v49;
    v28 = v47;
    *(v23 + 248) = v27;
    *(v23 + 232) = v28;
    v29 = v45;
    *(v23 + 216) = v46;
    *(v23 + 200) = v29;
    v30 = v43;
    *(v23 + 184) = v44;
    v31 = *(&v35 + 1);
    *v23 = v35;
    *(v23 + 8) = v31;
    v32 = *(&v34 + 1);
    *(v23 + 16) = v34;
    *(v23 + 24) = v32;
    *(v23 + 32) = v33;
    *(v23 + 168) = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t sub_214275384(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B858, &qword_2146F6710);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143176D4();
  sub_2146DAA28();
  v54 = v3;
  v51[0] = *v3;
  LOBYTE(v44) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v51[0] = v54[1];
    LOBYTE(v44) = 1;
    sub_2146DA388();
    v11 = *(v54 + 4);
    v53 = 2;
    sub_2146DA3E8();
    v12 = *(v54 + 120);
    v51[4] = *(v54 + 104);
    v51[5] = v12;
    *v52 = *(v54 + 136);
    *&v52[9] = *(v54 + 145);
    v13 = *(v54 + 56);
    v51[0] = *(v54 + 40);
    v51[1] = v13;
    v14 = *(v54 + 88);
    v51[2] = *(v54 + 72);
    v51[3] = v14;
    v15 = *(v54 + 120);
    v48 = *(v54 + 104);
    v49 = v15;
    v50[0] = *(v54 + 136);
    *(v50 + 9) = *(v54 + 145);
    v16 = *(v54 + 56);
    v44 = *(v54 + 40);
    v45 = v16;
    v17 = *(v54 + 88);
    v46 = *(v54 + 72);
    v47 = v17;
    v43 = 3;
    sub_213FB2E54(v51, v41, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v27 = 0;
    v39[4] = v48;
    v39[5] = v49;
    v40[0] = v50[0];
    *(v40 + 9) = *(v50 + 9);
    v39[0] = v44;
    v39[1] = v45;
    v39[2] = v46;
    v39[3] = v47;
    sub_213FB2DF4(v39, &qword_27C904868, &qword_2146EDB58);
    v18 = *(v54 + 248);
    v41[4] = *(v54 + 232);
    v41[5] = v18;
    *v42 = *(v54 + 264);
    *&v42[9] = *(v54 + 273);
    v19 = *(v54 + 184);
    v41[0] = *(v54 + 168);
    v41[1] = v19;
    v20 = *(v54 + 216);
    v41[2] = *(v54 + 200);
    v41[3] = v20;
    v21 = *(v54 + 248);
    v36 = *(v54 + 232);
    v37 = v21;
    v38[0] = *(v54 + 264);
    *(v38 + 9) = *(v54 + 273);
    v22 = *(v54 + 184);
    v32 = *(v54 + 168);
    v33 = v22;
    v23 = *(v54 + 216);
    v34 = *(v54 + 200);
    v35 = v23;
    v31 = 4;
    sub_213FB2E54(v41, v29, &qword_27C904868, &qword_2146EDB58);
    v24 = v27;
    sub_2146DA388();
    v29[4] = v36;
    v29[5] = v37;
    *v30 = v38[0];
    *&v30[9] = *(v38 + 9);
    v29[0] = v32;
    v29[1] = v33;
    v29[2] = v34;
    v29[3] = v35;
    sub_213FB2DF4(v29, &qword_27C904868, &qword_2146EDB58);
    if (!v24)
    {
      v26 = *(type metadata accessor for LinkPresentation.FileMetadata(0) + 36);
      v28 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
      sub_2142EC30C();
      sub_2146DA388();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_214275920(uint64_t a1)
{
  v2 = sub_214317728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21427595C(uint64_t a1)
{
  v2 = sub_214317728();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_214275A50@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  v10 = *(a10 + 80);
  *(a9 + 128) = *(a10 + 64);
  *(a9 + 144) = v10;
  *(a9 + 160) = *(a10 + 96);
  *(a9 + 169) = *(a10 + 105);
  v11 = *(a10 + 16);
  *(a9 + 64) = *a10;
  *(a9 + 80) = v11;
  result = *(a10 + 32);
  v13 = *(a10 + 48);
  *(a9 + 96) = result;
  *(a9 + 112) = v13;
  return result;
}

uint64_t sub_214275A90()
{
  v1 = *v0;
  v2 = 0x64656E69626D6F63;
  v3 = 0x656C746974627573;
  v4 = 0x65746F6E746F6F66;
  if (v1 != 3)
  {
    v4 = 1852793705;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_214275B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143831F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214275B54(uint64_t a1)
{
  v2 = sub_21431777C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214275B90(uint64_t a1)
{
  v2 = sub_21431777C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214275BCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B878, &qword_2146F6728);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431777C();
  sub_2146DAA08();
  if (!v2)
  {
    v29 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v37 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v11 = *(&v30 + 1);
    v28 = v30;
    v37 = 1;
    sub_2146DA1C8();
    v27 = v11;
    v26 = *(&v30 + 1);
    v12 = v30;
    v37 = 2;
    sub_2146DA1C8();
    v25 = __PAIR128__(*(&v30 + 1), v12);
    v13 = v30;
    v37 = 3;
    sub_2146DA1C8();
    v14 = *(&v25 + 1);
    v15 = *(&v30 + 1);
    v24 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v37 = 4;
    sub_214314728();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v17 = v13;
    v18 = v29;
    v19 = v27;
    *v29 = v28;
    v18[1] = v19;
    v20 = v26;
    v18[2] = v25;
    v18[3] = v20;
    v18[4] = v17;
    v18[5] = v14;
    v18[6] = v24;
    v18[7] = v15;
    v21 = v35;
    *(v18 + 8) = v34;
    *(v18 + 9) = v21;
    *(v18 + 10) = v36[0];
    *(v18 + 169) = *(v36 + 9);
    v22 = v31;
    *(v18 + 4) = v30;
    *(v18 + 5) = v22;
    v23 = v33;
    *(v18 + 6) = v32;
    *(v18 + 7) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214275F94(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B888, &qword_2146F6730);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v24 = v1[3];
  v25 = v9;
  v10 = v1[4];
  v22 = v1[5];
  v23 = v10;
  v11 = v1[6];
  v20 = v1[7];
  v21 = v11;
  v12 = *(v1 + 9);
  v41 = *(v1 + 8);
  v42 = v12;
  v43[0] = *(v1 + 10);
  *(v43 + 9) = *(v1 + 169);
  v13 = *(v1 + 5);
  v37 = *(v1 + 4);
  v38 = v13;
  v14 = *(v1 + 7);
  v39 = *(v1 + 6);
  v40 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431777C();

  sub_2146DAA28();
  *&v30 = v7;
  *(&v30 + 1) = v8;
  LOBYTE(v27[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v16 = v44;
  sub_2146DA388();
  if (v16)
  {

    return (*(v26 + 8))(v6, v3);
  }

  else
  {
    v18 = v26;

    *&v30 = v25;
    *(&v30 + 1) = v24;
    LOBYTE(v27[0]) = 1;
    sub_2146DA388();
    *&v30 = v23;
    *(&v30 + 1) = v22;
    LOBYTE(v27[0]) = 2;
    sub_2146DA388();
    *&v30 = v21;
    *(&v30 + 1) = v20;
    LOBYTE(v27[0]) = 3;
    sub_2146DA388();
    v34 = v41;
    v35 = v42;
    v36[0] = v43[0];
    *(v36 + 9) = *(v43 + 9);
    v30 = v37;
    v31 = v38;
    v32 = v39;
    v33 = v40;
    v29 = 4;
    sub_213FB2E54(&v37, v27, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v27[4] = v34;
    v27[5] = v35;
    *v28 = v36[0];
    *&v28[9] = *(v36 + 9);
    v27[0] = v30;
    v27[1] = v31;
    v27[2] = v32;
    v27[3] = v33;
    sub_213FB2DF4(v27, &qword_27C904868, &qword_2146EDB58);
    return (*(v18 + 8))(v6, v3);
  }
}

__n128 sub_214276358@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  v6 = *(a5 + 80);
  *(a6 + 96) = *(a5 + 64);
  *(a6 + 112) = v6;
  *(a6 + 128) = *(a5 + 96);
  *(a6 + 137) = *(a5 + 105);
  v7 = *(a5 + 16);
  *(a6 + 32) = *a5;
  *(a6 + 48) = v7;
  result = *(a5 + 32);
  v9 = *(a5 + 48);
  *(a6 + 64) = result;
  *(a6 + 80) = v9;
  return result;
}

uint64_t sub_21427638C()
{
  v1 = 0x656C746974627573;
  if (*v0 != 1)
  {
    v1 = 0x6B726F77747261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_2142763E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143833A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21427640C(uint64_t a1)
{
  v2 = sub_2143177D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214276448(uint64_t a1)
{
  v2 = sub_2143177D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214276484@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B890, &qword_2146F6738);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143177D0();
  sub_2146DAA08();
  if (!v2)
  {
    v20 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v28 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v11 = *(&v21 + 1);
    v19 = v21;
    v28 = 1;
    sub_2146DA1C8();
    v12 = v11;
    v13 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v28 = 2;
    sub_214314728();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v15 = v20;
    *v20 = v19;
    v15[1] = v12;
    *(v15 + 1) = v13;
    v16 = v26;
    *(v15 + 6) = v25;
    *(v15 + 7) = v16;
    *(v15 + 8) = v27[0];
    *(v15 + 137) = *(v27 + 9);
    v17 = v22;
    *(v15 + 2) = v21;
    *(v15 + 3) = v17;
    v18 = v24;
    *(v15 + 4) = v23;
    *(v15 + 5) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21427672C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B8A0, &qword_2146F6740);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v10 = *(v1 + 7);
  v35 = *(v1 + 6);
  v36 = v10;
  v37[0] = *(v1 + 8);
  *(v37 + 9) = *(v1 + 137);
  v11 = *(v1 + 3);
  v31 = *(v1 + 2);
  v32 = v11;
  v12 = *(v1 + 5);
  v33 = *(v1 + 4);
  v34 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143177D0();

  sub_2146DAA28();
  *&v24 = v7;
  *(&v24 + 1) = v8;
  LOBYTE(v21[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v14 = v38;
  sub_2146DA388();

  if (v14)
  {
    return (*(v20 + 8))(v6, v3);
  }

  v16 = v20;
  *&v24 = v19;
  *(&v24 + 1) = v18;
  LOBYTE(v21[0]) = 1;
  sub_2146DA388();
  v28 = v35;
  v29 = v36;
  v30[0] = v37[0];
  *(v30 + 9) = *(v37 + 9);
  v24 = v31;
  v25 = v32;
  v26 = v33;
  v27 = v34;
  v23 = 2;
  sub_213FB2E54(&v31, v21, &qword_27C904868, &qword_2146EDB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
  sub_214315670();
  sub_2146DA388();
  v21[4] = v28;
  v21[5] = v29;
  *v22 = v30[0];
  *&v22[9] = *(v30 + 9);
  v21[0] = v24;
  v21[1] = v25;
  v21[2] = v26;
  v21[3] = v27;
  sub_213FB2DF4(v21, &qword_27C904868, &qword_2146EDB58);
  return (*(v16 + 8))(v6, v3);
}

uint64_t sub_214276A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = a6[5];
  *(a9 + 104) = a6[4];
  *(a9 + 120) = v13;
  *(a9 + 136) = a6[6];
  *(a9 + 145) = *(a6 + 105);
  v14 = a6[1];
  *(a9 + 40) = *a6;
  *(a9 + 56) = v14;
  v15 = a6[3];
  *(a9 + 72) = a6[2];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 88) = v15;
  v16 = type metadata accessor for LinkPresentation.PhotosMomentMetadata(0);
  sub_21408AC04(a7, a9 + v16[9], &qword_27C913090, &unk_2146E9DB0);
  sub_21408AC04(a8, a9 + v16[10], &qword_27C913090, &unk_2146E9DB0);
  return sub_21408AC04(a10, a9 + v16[11], &qword_27C913090, &unk_2146E9DB0);
}

unint64_t sub_214276B60()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0x734174736574616CLL;
  }

  v4 = 0x6F746F685079656BLL;
  if (v1 != 4)
  {
    v4 = 0x6974617269707865;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x756F436F65646976;
  if (v1 != 2)
  {
    v5 = 0x657449726568746FLL;
  }

  if (*v0)
  {
    v2 = 0x756F436F746F6870;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_214276C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143834B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214276CB0(uint64_t a1)
{
  v2 = sub_214317824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214276CEC(uint64_t a1)
{
  v2 = sub_214317824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214276D28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B8A8, &qword_2146F6748);
  v40 = *(v42 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v15 = &v34 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_214317824();
  v41 = v15;
  v18 = v43;
  sub_2146DAA08();
  if (!v18)
  {
    v43 = v3;
    v38 = v7;
    v19 = v12;
    v20 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v45) = 0;
    sub_2142E12FC();
    v21 = v42;
    v22 = v41;
    sub_2146DA1C8();
    v23 = v53;
    LOBYTE(v53) = 1;
    v36 = sub_2146DA228();
    v37 = v23;
    LOBYTE(v53) = 2;
    v24 = sub_2146DA228();
    LOBYTE(v53) = 3;
    v35 = sub_2146DA228();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v52 = 4;
    sub_214314728();
    sub_2146DA1C8();
    v34 = v24;
    v49 = v57;
    v50 = v58;
    *v51 = v59[0];
    *&v51[9] = *(v59 + 9);
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v48 = v56;
    v44 = 5;
    sub_2142EC0C4();
    sub_2146DA1C8();
    v44 = 6;
    sub_2146DA1C8();
    v44 = 7;
    sub_2146DA1C8();
    (*(v20 + 8))(v22, v21);
    v26 = type metadata accessor for LinkPresentation.PhotosMomentMetadata(0);
    v27 = v39;
    sub_21408AC04(v19, v39 + v26[9], &qword_27C913090, &unk_2146E9DB0);
    sub_21408AC04(v10, v27 + v26[10], &qword_27C913090, &unk_2146E9DB0);
    sub_21408AC04(v38, v27 + v26[11], &qword_27C913090, &unk_2146E9DB0);
    v28 = v50;
    *(v27 + 104) = v49;
    *(v27 + 120) = v28;
    *(v27 + 136) = *v51;
    *(v27 + 145) = *&v51[9];
    v29 = v46;
    *(v27 + 40) = v45;
    *(v27 + 56) = v29;
    v30 = v48;
    *(v27 + 72) = v47;
    v31 = *(&v37 + 1);
    *v27 = v37;
    *(v27 + 8) = v31;
    v33 = v34;
    v32 = v35;
    *(v27 + 16) = v36;
    *(v27 + 24) = v33;
    *(v27 + 32) = v32;
    *(v27 + 88) = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t sub_2142772D4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B8B8, &qword_2146F6750);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317824();
  sub_2146DAA28();
  v37[0] = *v3;
  LOBYTE(v30) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(v3 + 16);
    LOBYTE(v37[0]) = 1;
    sub_2146DA3E8();
    v12 = *(v3 + 24);
    LOBYTE(v37[0]) = 2;
    sub_2146DA3E8();
    v13 = *(v3 + 32);
    v39 = 3;
    sub_2146DA3E8();
    v14 = *(v3 + 120);
    v37[4] = *(v3 + 104);
    v37[5] = v14;
    *v38 = *(v3 + 136);
    *&v38[9] = *(v3 + 145);
    v15 = *(v3 + 56);
    v37[0] = *(v3 + 40);
    v37[1] = v15;
    v16 = *(v3 + 88);
    v37[2] = *(v3 + 72);
    v37[3] = v16;
    v17 = *(v3 + 120);
    v34 = *(v3 + 104);
    v35 = v17;
    v36[0] = *(v3 + 136);
    *(v36 + 9) = *(v3 + 145);
    v18 = *(v3 + 56);
    v30 = *(v3 + 40);
    v31 = v18;
    v19 = *(v3 + 88);
    v32 = *(v3 + 72);
    v33 = v19;
    v29 = 4;
    sub_213FB2E54(v37, v27, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v27[4] = v34;
    v27[5] = v35;
    *v28 = v36[0];
    *&v28[9] = *(v36 + 9);
    v27[0] = v30;
    v27[1] = v31;
    v27[2] = v32;
    v27[3] = v33;
    sub_213FB2DF4(v27, &qword_27C904868, &qword_2146EDB58);
    v40 = type metadata accessor for LinkPresentation.PhotosMomentMetadata(0);
    v20 = *(v40 + 36);
    v26 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    sub_2142EC30C();
    sub_2146DA388();
    v21 = v40;
    v22 = *(v40 + 40);
    v26 = 6;
    sub_2146DA388();
    v23 = *(v21 + 44);
    v26 = 7;
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21427771C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2142777A0(uint64_t a1)
{
  v2 = sub_214317878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142777DC(uint64_t a1)
{
  v2 = sub_214317878();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2142778D0()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x6567617373656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_214277910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000214797690 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2142779F4(uint64_t a1)
{
  v2 = sub_2143178CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214277A30(uint64_t a1)
{
  v2 = sub_2143178CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214277B3C(uint64_t a1)
{
  v2 = sub_214317920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214277B78(uint64_t a1)
{
  v2 = sub_214317920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214277C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for LinkPresentation.WalletPassMetadata(0);
  sub_21408AC04(a3, a5 + *(v8 + 20), &qword_27C913090, &unk_2146E9DB0);
  return sub_21408AC04(a4, a5 + *(v8 + 24), &qword_27C913090, &unk_2146E9DB0);
}

uint64_t sub_214277D04()
{
  v1 = 0x746144746E657665;
  if (*v0 != 1)
  {
    v1 = 0x6974617269707865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_214277D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214383778(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214277D90(uint64_t a1)
{
  v2 = sub_214317974();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214277DCC(uint64_t a1)
{
  v2 = sub_214317974();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214277E08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B908, &qword_2146F6788);
  v31 = *(v11 - 8);
  v32 = v11;
  v12 = *(v31 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317974();
  sub_2146DAA08();
  if (v2)
  {
    v24 = a1;
  }

  else
  {
    v28 = v10;
    v29 = a1;
    v16 = v31;
    v17 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v35 = 0;
    sub_2142E12FC();
    v18 = v32;
    sub_2146DA1C8();
    v19 = v34;
    v27 = v33;
    LOBYTE(v33) = 1;
    sub_2142EC0C4();
    sub_2146DA1C8();
    v26 = v19;
    LOBYTE(v33) = 2;
    sub_2146DA1C8();
    (*(v16 + 8))(v14, v18);
    v21 = type metadata accessor for LinkPresentation.WalletPassMetadata(0);
    v22 = v30;
    sub_21408AC04(v28, v30 + *(v21 + 20), &qword_27C913090, &unk_2146E9DB0);
    sub_21408AC04(v17, v22 + *(v21 + 24), &qword_27C913090, &unk_2146E9DB0);
    v23 = v26;
    *v22 = v27;
    v22[1] = v23;
    v24 = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_214278150(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B918, &qword_2146F6790);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317974();
  sub_2146DAA28();
  v15 = *v3;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for LinkPresentation.WalletPassMetadata(0);
    v12 = *(v11 + 20);
    LOBYTE(v15) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    sub_2142EC30C();
    sub_2146DA388();
    v13 = *(v11 + 24);
    LOBYTE(v15) = 2;
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_214278384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21427840C(uint64_t a1)
{
  v2 = sub_2143179C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214278448(uint64_t a1)
{
  v2 = sub_2143179C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21427853C(uint64_t a1)
{
  v2 = sub_214317A1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214278578(uint64_t a1)
{
  v2 = sub_214317A1C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_21427866C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  v9 = *(a3 + 80);
  *(a9 + 80) = *(a3 + 64);
  *(a9 + 96) = v9;
  *(a9 + 112) = *(a3 + 96);
  *(a9 + 121) = *(a3 + 105);
  v10 = *(a3 + 16);
  *(a9 + 16) = *a3;
  *(a9 + 32) = v10;
  result = *(a3 + 32);
  v12 = *(a3 + 48);
  *(a9 + 48) = result;
  *(a9 + 64) = v12;
  *(a9 + 144) = a4;
  *(a9 + 152) = a5;
  *(a9 + 160) = a6;
  *(a9 + 168) = a7;
  *(a9 + 176) = a8;
  return result;
}

unint64_t sub_2142786A8()
{
  v1 = *v0;
  v2 = 1852793705;
  v3 = 0x6E6F6974706163;
  v4 = 0x6E6F69746361;
  if (v1 != 3)
  {
    v4 = 0x6974634170696C63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_214278740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143838A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214278768(uint64_t a1)
{
  v2 = sub_214317A70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142787A4(uint64_t a1)
{
  v2 = sub_214317A70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142787E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B950, &qword_2146F67B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214317A70();
  sub_2146DAA08();
  if (!v2)
  {
    v29 = a2;
    v30 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v34) = 0;
    sub_2142E12FC();
    v12 = v5;
    sub_2146DA1C8();
    v13 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v41 = 1;
    sub_214314728();
    sub_2146DA1C8();
    v28 = v13;
    v38 = v46;
    v39 = v47;
    *v40 = v48[0];
    *&v40[9] = *(v48 + 9);
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v37 = v45;
    v31 = 2;
    sub_2146DA1C8();
    v15 = v32;
    v27 = v33;
    v31 = 3;
    sub_2146DA1C8();
    v16 = *(&v28 + 1);
    v17 = v15;
    v18 = v32;
    v19 = v33;
    LOBYTE(v32) = 4;
    v20 = sub_2146DA1A8();
    (*(v30 + 8))(v9, v12);
    v21 = v18;
    v22 = v29;
    v23 = v27;
    *v29 = v28;
    v22[1] = v16;
    v24 = v39;
    *(v22 + 5) = v38;
    *(v22 + 6) = v24;
    *(v22 + 7) = *v40;
    *(v22 + 121) = *&v40[9];
    v25 = v35;
    *(v22 + 1) = v34;
    *(v22 + 2) = v25;
    v26 = v37;
    *(v22 + 3) = v36;
    *(v22 + 4) = v26;
    v22[18] = v17;
    v22[19] = v23;
    v22[20] = v21;
    v22[21] = v19;
    v22[22] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_214278BE8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B960, &qword_2146F67C0);
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 6);
  v43 = *(v1 + 5);
  v44 = v9;
  v45[0] = *(v1 + 7);
  *(v45 + 9) = *(v1 + 121);
  v10 = *(v1 + 2);
  v39 = *(v1 + 1);
  v40 = v10;
  v11 = *(v1 + 4);
  v41 = *(v1 + 3);
  v42 = v11;
  v12 = v1[19];
  v23 = v1[18];
  v24 = v7;
  v13 = v1[21];
  v21 = v1[20];
  v22 = v12;
  v19 = v1[22];
  v20 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317A70();

  sub_2146DAA28();
  *&v32 = v24;
  *(&v32 + 1) = v8;
  LOBYTE(v29[0]) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v16 = v25;
  sub_2146DA388();
  if (v16)
  {

    return (*(v46 + 8))(v6, v3);
  }

  else
  {
    v25 = v15;

    v36 = v43;
    v37 = v44;
    v38[0] = v45[0];
    *(v38 + 9) = *(v45 + 9);
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v35 = v42;
    v31 = 1;
    sub_213FB2E54(&v39, v29, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v29[4] = v36;
    v29[5] = v37;
    *v30 = v38[0];
    *&v30[9] = *(v38 + 9);
    v29[0] = v32;
    v29[1] = v33;
    v29[2] = v34;
    v29[3] = v35;
    sub_213FB2DF4(v29, &qword_27C904868, &qword_2146EDB58);
    v27 = v23;
    v28 = v22;
    v26 = 2;
    sub_2146DA388();
    v27 = v21;
    v28 = v20;
    v26 = 3;
    sub_2146DA388();
    v18 = v46;
    LOBYTE(v27) = 4;
    sub_2146DA368();
    return (*(v18 + 8))(0, v3);
  }
}

uint64_t sub_214278FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_214279054(uint64_t a1)
{
  v2 = sub_214317AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214279090(uint64_t a1)
{
  v2 = sub_214317AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_214279184@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  sub_214075090(v67);
  v9 = v67[1];
  v48 = v67[0];
  v11 = v67[2];
  v10 = v67[3];
  v12 = v68;
  sub_2140750CC(v64);
  v43 = v64[0];
  v87 = v64[1];
  v49 = v65;
  v45 = v66;
  v13 = a5[5];
  *&v51[71] = a5[4];
  *&v51[87] = v13;
  *&v51[103] = a5[6];
  *&v51[112] = *(a5 + 105);
  v14 = a5[1];
  *&v51[7] = *a5;
  *&v51[23] = v14;
  v15 = a5[3];
  *&v51[39] = a5[2];
  *&v51[55] = v15;
  v16 = a6[2];
  *&v69[55] = a6[3];
  *&v69[39] = v16;
  v17 = *a6;
  *&v69[23] = a6[1];
  *&v69[7] = v17;
  *&v69[112] = *(a6 + 105);
  v18 = a6[5];
  *&v69[103] = a6[6];
  v19 = a6[4];
  *&v69[87] = v18;
  *&v69[71] = v19;
  v74 = *&v51[48];
  v73 = *&v51[32];
  v72 = *&v51[16];
  v71 = *v51;
  v78 = *&v51[112];
  v77 = *&v51[96];
  v76 = *&v51[80];
  v75 = *&v51[64];
  v81 = *&v69[32];
  v82 = *&v69[48];
  v79 = *v69;
  v80 = *&v69[16];
  v85 = *&v69[96];
  v86 = *&v69[112];
  v83 = *&v69[64];
  v84 = *&v69[80];
  *v69 = a1;
  *&v69[8] = a2;
  v44 = v12;
  LOBYTE(v67[0]) = v12;
  *v51 = 0xD00000000000002BLL;
  *&v51[8] = 0x8000000214792B70;
  *&v51[16] = 0xD00000000000001CLL;
  *&v51[24] = 0x800000021478A360;

  v42 = v10;
  sub_213FDC9D0(v11, v10);
  v20 = v48(v69, v67, v51);
  v21 = v48;
  if (v41)
  {

LABEL_6:

    v23 = v43;
    v26 = v9;

    v27 = v42;
    sub_213FDC6D0(v11, v42);
    v22 = v45;
LABEL_7:
    *v51 = v21;
    *&v51[8] = v26;
    *&v51[16] = v11;
    *&v51[24] = v27;
    v51[32] = v44;
    *&v51[33] = *v70;
    *&v51[36] = *&v70[3];
    *&v51[40] = v23;
    *&v51[48] = v87;
    *&v51[56] = v49;
    v51[72] = v22;
    v62 = v85;
    v63 = v86;
    v60 = v83;
    v61 = v84;
    *&v51[121] = v74;
    *&v51[105] = v73;
    *&v51[89] = v72;
    *&v51[73] = v71;
    v55 = v78;
    v54 = v77;
    v53 = v76;
    v52 = v75;
    v59 = v82;
    v58 = v81;
    v57 = v80;
    v56 = v79;
    sub_214317B18(v51);
    return result;
  }

  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD00000000000002BLL;
    v25[1] = 0x8000000214792B70;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v11, v10);

  sub_213FDC6D0(v11, v10);
  *v69 = a3;
  *&v69[8] = a4;
  v22 = v45;
  LOBYTE(v67[0]) = v45;
  *v51 = 0xD00000000000002ELL;
  *&v51[8] = 0x8000000214792BA0;
  *&v51[16] = 0xD00000000000001CLL;
  *&v51[24] = 0x800000021478A360;

  sub_213FDC9D0(v49, *(&v49 + 1));
  v23 = v43;
  v24 = v43(v69, v67, v51);
  v21 = v48;
  if ((v24 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD00000000000002ELL;
    v38[1] = 0x8000000214792BA0;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = 0x800000021478A360;
    swift_willThrow();

    v26 = v9;

    sub_213FDC6D0(v49, *(&v49 + 1));
    v11 = a1;
    v27 = a2;
    goto LABEL_7;
  }

  sub_213FDC6D0(v49, *(&v49 + 1));

  sub_213FDC6D0(v49, *(&v49 + 1));
  v29 = v84;
  *(a7 + 265) = v83;
  *(a7 + 281) = v29;
  v30 = v86;
  *(a7 + 297) = v85;
  *(a7 + 313) = v30;
  v31 = v80;
  *(a7 + 201) = v79;
  *(a7 + 217) = v31;
  v32 = v82;
  *(a7 + 233) = v81;
  *(a7 + 249) = v32;
  v33 = v76;
  *(a7 + 137) = v75;
  *(a7 + 153) = v33;
  v34 = v78;
  *(a7 + 169) = v77;
  *(a7 + 185) = v34;
  v35 = v72;
  *(a7 + 73) = v71;
  *(a7 + 89) = v35;
  result = *&v73;
  v36 = v74;
  *(a7 + 105) = v73;
  *a7 = v48;
  *(a7 + 8) = v9;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = v44;
  v37 = v87;
  *(a7 + 40) = v43;
  *(a7 + 48) = v37;
  *(a7 + 56) = a3;
  *(a7 + 64) = a4;
  *(a7 + 72) = v45;
  *(a7 + 121) = v36;
  return result;
}

uint64_t sub_214279704()
{
  v1 = 0x656C746974;
  v2 = 0x6B726F77747261;
  if (*v0 != 2)
  {
    v2 = 1852793705;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214279774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214383A60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21427979C(uint64_t a1)
{
  v2 = sub_214317B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142797D8(uint64_t a1)
{
  v2 = sub_214317B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214279814@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B980, &qword_2146F67D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v119 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214317B6C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v119);
  }

  v56 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v57[0]) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v55 = v6;
  v12 = v59;
  v13 = v60;
  LOBYTE(v57[0]) = 1;
  sub_2146DA1C8();
  v53 = v12;
  v54 = v13;
  v14 = v59;
  v15 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
  v110 = 2;
  sub_214314728();
  sub_2146DA1C8();
  v48 = v14;
  v107 = v115;
  v108 = v116;
  *v109 = *v117;
  *&v109[9] = *&v117[9];
  v103 = v111;
  v104 = v112;
  v105 = v113;
  v106 = v114;
  v95 = 3;
  sub_2146DA1C8();
  v41 = v15;
  v92 = v100;
  v93 = v101;
  *v94 = v102[0];
  *&v94[9] = *(v102 + 9);
  v88 = v96;
  v89 = v97;
  v90 = v98;
  v91 = v99;
  sub_214075090(&v59);
  v43 = v59;
  v52 = v60;
  v49 = v62;
  v50 = v61;
  v51 = v63;
  sub_2140750CC(v57);
  *(&v87[4] + 7) = v107;
  *(&v87[5] + 7) = v108;
  *(&v87[6] + 7) = *v109;
  v87[7] = *&v109[9];
  *(v87 + 7) = v103;
  *(&v87[1] + 7) = v104;
  *(&v87[2] + 7) = v105;
  *(&v87[3] + 7) = v106;
  *(&v86[3] + 7) = v91;
  *(&v86[2] + 7) = v90;
  *(&v86[1] + 7) = v89;
  *(v86 + 7) = v88;
  v86[7] = *&v94[9];
  *(&v86[6] + 7) = *v94;
  *(&v86[5] + 7) = v93;
  v44 = v57[0];
  v45 = v57[2];
  v46 = v57[3];
  v47 = v57[1];
  v42 = LOBYTE(v57[4]);
  *(&v86[4] + 7) = v92;
  v57[0] = v53;
  v57[1] = v54;
  LOBYTE(v58[0]) = v51;
  v59 = 0xD00000000000002BLL;
  v60 = 0x8000000214792B70;
  v61 = 0xD00000000000001CLL;
  v62 = 0x800000021478A360;

  sub_213FDC9D0(v50, v49);
  v17 = v43;
  v18 = v43(v57, v58, &v59);
  v19 = v17;
  v40 = 0x800000021478A360;
  if (v18)
  {
    v21 = v49;
    v20 = v50;
    sub_213FDC6D0(v50, v49);
    v22 = v40;

    v23 = v52;

    sub_213FDC6D0(v20, v21);
    v58[0] = v48;
    v58[1] = v41;
    LOBYTE(v57[0]) = v42;
    v59 = 0xD00000000000002ELL;
    v60 = 0x8000000214792BA0;
    v61 = 0xD00000000000001CLL;
    v62 = v22;

    sub_213FDC9D0(v45, v46);
    v24 = v44(v58, v57, &v59);
    v28 = v53;
    if (v24)
    {
      v30 = v45;
      v29 = v46;
      sub_213FDC6D0(v45, v46);

      (*(v55 + 8))(v9, v5);
      v31 = v47;

      sub_213FDC6D0(v30, v29);
      *(&v57[17] + 1) = v87[4];
      *(&v57[19] + 1) = v87[5];
      *(&v57[21] + 1) = v87[6];
      *(&v57[23] + 1) = v87[7];
      *(&v57[9] + 1) = v87[0];
      *(&v57[11] + 1) = v87[1];
      *(&v57[13] + 1) = v87[2];
      *(&v57[15] + 1) = v87[3];
      *(&v57[33] + 1) = v86[4];
      *(&v57[35] + 1) = v86[5];
      *(&v57[37] + 1) = v86[6];
      *(&v57[39] + 1) = v86[7];
      *(&v57[25] + 1) = v86[0];
      *(&v57[27] + 1) = v86[1];
      *(&v57[29] + 1) = v86[2];
      v32 = v43;
      v57[0] = v43;
      v57[1] = v23;
      v33 = v54;
      v57[2] = v28;
      v57[3] = v54;
      LOBYTE(v29) = v51;
      LOBYTE(v57[4]) = v51;
      v57[5] = v44;
      v57[6] = v31;
      v34 = v48;
      v35 = v41;
      v57[7] = v48;
      v57[8] = v41;
      v36 = v42;
      LOBYTE(v57[9]) = v42;
      *(&v57[31] + 1) = v86[3];
      memcpy(v56, v57, 0x149uLL);
      sub_214317BC0(v57, &v59);
      __swift_destroy_boxed_opaque_existential_1(v119);
      v59 = v32;
      v60 = v23;
      v61 = v53;
      v62 = v33;
      v63 = v29;
      *v64 = v118[0];
      *&v64[3] = *(v118 + 3);
      v65 = v44;
      v66 = v47;
      v67 = v34;
      v68 = v35;
      v69 = v36;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD00000000000002ELL;
    v37[1] = 0x8000000214792BA0;
    v38 = v40;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = v38;
    swift_willThrow();

    v19 = v43;
    (*(v55 + 8))(v9, v5);

    sub_213FDC6D0(v45, v46);
    v27 = v54;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD00000000000002BLL;
    v25[1] = 0x8000000214792B70;
    v26 = v40;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = v26;
    swift_willThrow();

    v23 = v52;
    v27 = v49;
    (*(v55 + 8))(v9, v5);

    v28 = v50;
    sub_213FDC6D0(v50, v27);
  }

  __swift_destroy_boxed_opaque_existential_1(v119);
  v59 = v19;
  v60 = v23;
  v61 = v28;
  v62 = v27;
  v63 = v51;
  *v64 = v118[0];
  *&v64[3] = *(v118 + 3);
  v65 = v44;
  v66 = v47;
  v67 = v45;
  v68 = v46;
  v69 = v42;
LABEL_8:
  v73 = v87[3];
  v72 = v87[2];
  v71 = v87[1];
  v70 = v87[0];
  v77 = v87[7];
  v76 = v87[6];
  v75 = v87[5];
  v74 = v87[4];
  v84 = v86[6];
  v85 = v86[7];
  v82 = v86[4];
  v83 = v86[5];
  v81 = v86[3];
  v80 = v86[2];
  v79 = v86[1];
  v78 = v86[0];
  return sub_214317B18(&v59);
}

uint64_t sub_21427A124(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B990, &qword_2146F67E0);
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 56);
  v21 = *(v1 + 64);
  v22 = v9;
  v10 = *(v1 + 160);
  v48 = *(v1 + 144);
  v49 = v10;
  v50[0] = *(v1 + 176);
  *(v50 + 9) = *(v1 + 185);
  v11 = *(v1 + 96);
  v44 = *(v1 + 80);
  v45 = v11;
  v12 = *(v1 + 128);
  v46 = *(v1 + 112);
  v47 = v12;
  v13 = *(v1 + 256);
  v53 = *(v1 + 240);
  v54 = v13;
  v14 = *(v1 + 224);
  v51 = *(v1 + 208);
  v52 = v14;
  *(v57 + 9) = *(v1 + 313);
  v15 = *(v1 + 304);
  v56 = *(v1 + 288);
  v57[0] = v15;
  v55 = *(v1 + 272);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317B6C();
  sub_2146DAA28();
  if (v8 != 1)
  {
    *&v37 = v7;
    *(&v37 + 1) = v8;
    LOBYTE(v34[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v17 = v23;
    sub_2146DA388();
    if (v17)
    {
      return (*(v58 + 8))(v6, v3);
    }

    if (v21 != 1)
    {
      *&v37 = v22;
      *(&v37 + 1) = v21;
      LOBYTE(v34[0]) = 1;
      sub_2146DA388();
      v41 = v48;
      v42 = v49;
      v43[0] = v50[0];
      *(v43 + 9) = *(v50 + 9);
      v37 = v44;
      v38 = v45;
      v39 = v46;
      v40 = v47;
      v36 = 2;
      sub_213FB2E54(&v44, v34, &qword_27C904868, &qword_2146EDB58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
      sub_214315670();
      sub_2146DA388();
      v34[4] = v41;
      v34[5] = v42;
      *v35 = v43[0];
      *&v35[9] = *(v43 + 9);
      v34[0] = v37;
      v34[1] = v38;
      v34[2] = v39;
      v34[3] = v40;
      sub_213FB2DF4(v34, &qword_27C904868, &qword_2146EDB58);
      v31 = v55;
      v32 = v56;
      v33[0] = v57[0];
      *(v33 + 9) = *(v57 + 9);
      v27 = v51;
      v28 = v52;
      v29 = v53;
      v30 = v54;
      v26 = 3;
      sub_213FB2E54(&v51, v24, &qword_27C904868, &qword_2146EDB58);
      sub_2146DA388();
      v18 = (v58 + 8);
      v24[4] = v31;
      v24[5] = v32;
      *v25 = v33[0];
      *&v25[9] = *(v33 + 9);
      v24[0] = v27;
      v24[1] = v28;
      v24[2] = v29;
      v24[3] = v30;
      sub_213FB2DF4(v24, &qword_27C904868, &qword_2146EDB58);
      return (*v18)(v6, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21427A5B8()
{
  if (*v0)
  {
    result = 0x6D617261506C7275;
  }

  else
  {
    result = 0x6D614E70756F7267;
  }

  *v0;
  return result;
}

uint64_t sub_21427A604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617261506C7275 && a2 == 0xED00007372657465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21427A6F0(uint64_t a1)
{
  v2 = sub_214317C1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21427A72C(uint64_t a1)
{
  v2 = sub_214317C1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21427A7F0(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v19 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v11 = *v4;
  v10 = v4[1];
  v12 = v4[2];
  v17 = v4[3];
  v18 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19();

  sub_2146DAA28();
  v22 = v11;
  v23 = v10;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v14 = v20;
  sub_2146DA388();

  if (!v14)
  {
    v22 = v18;
    v23 = v17;
    v24 = 1;
    sub_2146DA388();
  }

  return (*(v21 + 8))(v9, v6);
}

uint64_t sub_21427A9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v11 = a7[5];
  *(a9 + 112) = a7[4];
  *(a9 + 128) = v11;
  *(a9 + 144) = a7[6];
  *(a9 + 153) = *(a7 + 105);
  v12 = a7[1];
  *(a9 + 48) = *a7;
  *(a9 + 64) = v12;
  v13 = a7[3];
  *(a9 + 80) = a7[2];
  *(a9 + 96) = v13;
  *(a9 + 169) = a8;
  v14 = type metadata accessor for LinkPresentation.SharedObjectMetadata(0);
  return sub_21408AC04(a10, a9 + *(v14 + 36), &qword_27C904870, &qword_2146EDB60);
}

uint64_t sub_21427AA7C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 1852793705;
  v4 = 0x62616C6C6F437369;
  if (v1 != 4)
  {
    v4 = 0x696C616963657073;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627573;
  if (v1 != 1)
  {
    v5 = 0x74616D726F666E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21427AB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214383BC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21427AB74(uint64_t a1)
{
  v2 = sub_214317C70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21427ABB0(uint64_t a1)
{
  v2 = sub_214317C70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21427ABEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904870, &qword_2146EDB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B9B0, &qword_2146F67F8);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v11 = &v29 - v10;
  v12 = a1[3];
  v13 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214317C70();
  sub_2146DAA08();
  if (!v2)
  {
    v33 = v4;
    v34 = v7;
    v35 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v39) = 0;
    sub_2142E12FC();
    v14 = v37;
    sub_2146DA1C8();
    v15 = v47;
    LOBYTE(v39) = 1;
    sub_2146DA1C8();
    v32 = v15;
    v16 = v47;
    LOBYTE(v39) = 2;
    sub_2146DA1C8();
    v31 = v16;
    v18 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    v46 = 3;
    sub_214314728();
    sub_2146DA1C8();
    v19 = v35;
    v30 = v18;
    v43 = v51;
    v44 = v52;
    *v45 = v53[0];
    *&v45[9] = *(v53 + 9);
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    v38 = 4;
    v20 = sub_2146DA178();
    v38 = 5;
    sub_214315484();
    v21 = v34;
    sub_2146DA1C8();
    (*(v19 + 8))(v11, v14);
    v22 = type metadata accessor for LinkPresentation.SharedObjectMetadata(0);
    v23 = v36;
    sub_21408AC04(v21, v36 + *(v22 + 36), &qword_27C904870, &qword_2146EDB60);
    v24 = *(&v32 + 1);
    *v23 = v32;
    *(v23 + 8) = v24;
    *(v23 + 16) = v31;
    *(v23 + 24) = *(&v16 + 1);
    v25 = *(&v30 + 1);
    *(v23 + 32) = v30;
    *(v23 + 40) = v25;
    v26 = v44;
    *(v23 + 112) = v43;
    *(v23 + 128) = v26;
    *(v23 + 144) = *v45;
    *(v23 + 153) = *&v45[9];
    v27 = v40;
    *(v23 + 48) = v39;
    *(v23 + 64) = v27;
    v28 = v42;
    *(v23 + 80) = v41;
    *(v23 + 96) = v28;
    *(v23 + 169) = v20 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_21427B0B0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B9C0, &qword_2146F6800);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317C70();
  sub_2146DAA28();
  v22 = v2;
  v34[0] = *v2;
  LOBYTE(v27) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v10 = v42;
  sub_2146DA388();
  if (!v10)
  {
    v11 = v22;
    v34[0] = v22[1];
    LOBYTE(v27) = 1;
    sub_2146DA388();
    v41 = v11[2];
    v40 = 2;
    sub_2146DA388();
    v12 = v11[8];
    v13 = v11[6];
    v37 = v11[7];
    v38 = v12;
    v14 = v11[8];
    *v39 = v11[9];
    *&v39[9] = *(v11 + 153);
    v15 = v11[4];
    v34[0] = v11[3];
    v34[1] = v15;
    v16 = v11[6];
    v18 = v11[3];
    v17 = v11[4];
    v35 = v11[5];
    v36 = v16;
    v31 = v37;
    v32 = v14;
    v33[0] = v11[9];
    *(v33 + 9) = *(v11 + 153);
    v27 = v18;
    v28 = v17;
    v29 = v35;
    v30 = v13;
    v26 = 3;
    sub_213FB2E54(v34, v24, &qword_27C904868, &qword_2146EDB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904868, &qword_2146EDB58);
    sub_214315670();
    sub_2146DA388();
    v24[4] = v31;
    v24[5] = v32;
    *v25 = v33[0];
    *&v25[9] = *(v33 + 9);
    v24[0] = v27;
    v24[1] = v28;
    v24[2] = v29;
    v24[3] = v30;
    sub_213FB2DF4(v24, &qword_27C904868, &qword_2146EDB58);
    v19 = *(v11 + 169);
    v23 = 4;
    sub_2146DA338();
    v20 = *(type metadata accessor for LinkPresentation.SharedObjectMetadata(0) + 36);
    v23 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904870, &qword_2146EDB60);
    sub_2143163CC();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

__n128 sub_21427B4C4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  result = *a4;
  *(a5 + 24) = *a4;
  return result;
}

uint64_t sub_21427B4D8(uint64_t a1)
{
  v2 = sub_214317CC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21427B514(uint64_t a1)
{
  v2 = sub_214317CC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21427B550@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B9C8, &qword_2146F6808);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317CC4();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v18) = 0;
    v11 = sub_2146DA1A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v19 = 1;
    sub_2142E12FC();
    sub_2146DA1C8();
    v13 = *(&v18 + 1);
    v17 = v18;
    v19 = 2;
    sub_2140776FC();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v14 = v18;
    v15 = v17;
    *a2 = v11;
    *(a2 + 8) = v15;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21427B77C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B9D8, &qword_2146F6810);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v18 = v1[2];
  v19 = v9;
  v16 = v1[4];
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317CC4();
  sub_2146DAA28();
  LOBYTE(v20) = 0;
  sub_2146DA368();
  if (!v2)
  {
    v13 = v16;
    v14 = v17;
    v20 = v19;
    v21 = v18;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v20 = v14;
    v21 = v13;
    v22 = 2;
    sub_214077750();

    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21427B9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000214797440 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2146DA6A8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_21427BA58(uint64_t a1)
{
  v2 = sub_214317D18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21427BA94(uint64_t a1)
{
  v2 = sub_214317D18();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_21427BB88@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a4 + 32);
  *(a5 + 72) = *(a4 + 48);
  v6 = *(a4 + 80);
  *(a5 + 88) = *(a4 + 64);
  *(a5 + 104) = v6;
  result = *a4;
  v8 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *(a5 + 40) = v8;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 120) = *(a4 + 96);
  *(a5 + 56) = v5;
  return result;
}

uint64_t sub_21427BBC0(uint64_t a1)
{
  v2 = sub_214317D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21427BBFC(uint64_t a1)
{
  v2 = sub_214317D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21427BC38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90B9F8, &qword_2146F6828);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317D6C();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v19) = 0;
    v11 = sub_2146DA1A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v26 = 1;
    sub_2142E12FC();
    sub_2146DA1C8();
    v13 = *(&v19 + 1);
    v18 = v19;
    v26 = 2;
    sub_2140778A4();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v14 = v21;
    *(a2 + 72) = v22;
    v15 = v24;
    *(a2 + 88) = v23;
    *(a2 + 104) = v15;
    v16 = v20;
    *(a2 + 24) = v19;
    *(a2 + 40) = v16;
    v17 = v18;
    *a2 = v11;
    *(a2 + 8) = v17;
    *(a2 + 16) = v13;
    *(a2 + 120) = v25;
    *(a2 + 56) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21427BE94(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BA08, &qword_2146F6830);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v10 = *v1;
  v9 = v1[1];
  v20 = v1[2];
  v21 = v9;
  v11 = *(v1 + 9);
  v12 = *(v1 + 13);
  v35 = *(v1 + 11);
  v36 = v12;
  v37 = *(v1 + 120);
  v13 = *(v1 + 5);
  v31 = *(v1 + 3);
  v32 = v13;
  v33 = *(v1 + 7);
  v34 = v11;
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v14);
  sub_214317D6C();
  sub_2146DAA28();
  LOBYTE(v24) = 0;
  sub_2146DA368();
  if (!v2)
  {
    *&v24 = v21;
    *(&v24 + 1) = v20;
    LOBYTE(v22[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v38 = 2;
    sub_214317DC0(&v31, v22);
    sub_2140778F8();
    sub_2146DA388();
    v22[4] = v28;
    v22[5] = v29;
    v23 = v30;
    v22[0] = v24;
    v22[1] = v25;
    v22[2] = v26;
    v22[3] = v27;
    sub_214317E1C(v22);
  }

  return (*(v5 + 8))(v8, v18);
}

__n128 sub_21427C144@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a4 + 32);
  v10 = *(a5 + 32);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v7 = *(a4 + 16);
  *(a6 + 24) = *a4;
  *(a6 + 40) = v7;
  *(a6 + 56) = v6;
  result = *a5;
  v9 = *(a5 + 16);
  *(a6 + 64) = *a5;
  *(a6 + 80) = v9;
  *(a6 + 96) = v10;
  return result;
}

unint64_t sub_21427C184()
{
  v1 = 1701869940;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x746E616E696D6F64;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21427C20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214383EE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21427C234(uint64_t a1)
{
  v2 = sub_214317E70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21427C270(uint64_t a1)
{
  v2 = sub_214317E70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21427C2AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BA10, &qword_2146F6838);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317E70();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v24) = 0;
    v22 = sub_2146DA1A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v28 = 1;
    sub_2142E12FC();
    sub_2146DA1C8();
    v21 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908590, &qword_2146F50C8);
    v28 = 2;
    sub_2142FD5B0();
    sub_2146DA1C8();
    v19 = v25;
    v20 = v24;
    v18 = v26;
    v28 = 3;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v26;
    v13 = v18;
    v27 = v18;
    v23 = v26;
    v14 = v21;
    *a2 = v22;
    *(a2 + 8) = __PAIR128__(*(&v21 + 1), v14);
    v15 = v20;
    *(a2 + 40) = v19;
    *(a2 + 24) = v15;
    *(a2 + 56) = v13;
    v16 = v25;
    *(a2 + 64) = v24;
    *(a2 + 80) = v16;
    *(a2 + 96) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21427C57C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BA20, &qword_2146F6840);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v22 = v1[2];
  v23 = v9;
  v11 = *(v1 + 3);
  v19 = *(v1 + 5);
  v20 = v11;
  v27 = *(v1 + 56);
  v12 = *(v1 + 4);
  v17 = *(v1 + 5);
  v18 = v12;
  v21 = *(v1 + 96);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317E70();
  sub_2146DAA28();
  LOBYTE(v24) = 0;
  sub_2146DA368();
  if (!v2)
  {
    v14 = v27;
    v15 = v21;
    *&v24 = v23;
    *(&v24 + 1) = v22;
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v25 = v19;
    v24 = v20;
    v26 = v14;
    v28 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908590, &qword_2146F50C8);
    sub_2142FD688();
    sub_2146DA388();
    v25 = v17;
    v24 = v18;
    v26 = v15;
    v28 = 3;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21427C818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a6;
  v13 = *a7;
  v18 = *(a7 + 2);
  v19 = *(a7 + 1);
  sub_21408AC04(a1, a8, &unk_27C9131A0, &unk_2146E9D10);
  v14 = type metadata accessor for LinkPresentation.Video(0);
  result = sub_21408AC04(a2, a8 + v14[5], &unk_27C9131A0, &unk_2146E9D10);
  v16 = (a8 + v14[6]);
  *v16 = a3;
  v16[1] = a4;
  *(a8 + v14[7]) = a5;
  *(a8 + v14[8]) = v12;
  v17 = a8 + v14[9];
  *v17 = v13;
  *(v17 + 8) = v19;
  *(v17 + 16) = v18;
  return result;
}

uint64_t sub_21427C8F8()
{
  v1 = *v0;
  v2 = 0x5565627554756F79;
  v3 = 0x6F69647541736168;
  v4 = 0x656D686361747461;
  if (v1 != 4)
  {
    v4 = 0x69747265706F7270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E696D6165727473;
  if (v1 != 1)
  {
    v5 = 0x65707954656D696DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21427C9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214384064(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21427C9F4(uint64_t a1)
{
  v2 = sub_214317EC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21427CA30(uint64_t a1)
{
  v2 = sub_214317EC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21427CA6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BA28, &qword_2146F6848);
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v32);
  v14 = &v30 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_214317EC4();
  v33 = v14;
  sub_2146DAA08();
  if (!v2)
  {
    v17 = v31;
    v18 = v11;
    LOBYTE(v35) = 0;
    sub_2142E27A8();
    v19 = v32;
    sub_2146DA1C8();
    LOBYTE(v35) = 1;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v39 = 2;
    sub_2142E12FC();
    sub_2146DA1C8();
    v21 = v18;
    v22 = v35;
    v23 = v36;
    LOBYTE(v35) = 3;
    v38 = sub_2146DA178();
    v39 = 4;
    sub_214077A4C();
    sub_2146DA1C8();
    v30 = v35;
    v39 = 5;
    sub_214077B5C();
    sub_2146DA1C8();
    (*(v21 + 8))(v33, v19);
    LOBYTE(v21) = v35;
    v32 = v37;
    v33 = v36;
    v24 = v10;
    v25 = v17;
    sub_21408AC04(v24, v17, &unk_27C9131A0, &unk_2146E9D10);
    v26 = type metadata accessor for LinkPresentation.Video(0);
    sub_21408AC04(v8, v25 + v26[5], &unk_27C9131A0, &unk_2146E9D10);
    v27 = (v25 + v26[6]);
    *v27 = v22;
    v27[1] = v23;
    *(v25 + v26[7]) = v38 & 1;
    *(v25 + v26[8]) = v30;
    v28 = v25 + v26[9];
    *v28 = v21;
    v29 = v32;
    *(v28 + 8) = v33;
    *(v28 + 16) = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_21427CEC8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BA38, &qword_2146F6850);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317EC4();
  sub_2146DAA28();
  LOBYTE(v18) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  sub_2142E2910();
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for LinkPresentation.Video(0);
    v12 = v11[5];
    LOBYTE(v18) = 1;
    sub_2146DA388();
    v18 = *(v3 + v11[6]);
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v13 = *(v3 + v11[7]);
    LOBYTE(v18) = 3;
    sub_2146DA338();
    *&v18 = *(v3 + v11[8]);
    v20 = 4;
    sub_214077AA0();

    sub_2146DA388();

    v14 = v3 + v11[9];
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    LOBYTE(v18) = *v14;
    *(&v18 + 1) = v15;
    v19 = v16;
    v20 = 5;
    sub_214077BB0();

    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21427D1E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

unint64_t sub_21427D1F0()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x6F69647541736168;
  }

  *v0;
  return result;
}

uint64_t sub_21427D230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69647541736168 && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000214797440 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21427D314(uint64_t a1)
{
  v2 = sub_214317F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21427D350(uint64_t a1)
{
  v2 = sub_214317F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21427D38C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BA40, &qword_2146F6858);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317F18();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v14) = 0;
    v11 = sub_2146DA178();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v15 = 1;
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v14;
    *a2 = v11 & 1;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21427D564(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BA50, &qword_2146F6860);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13 = *(v1 + 2);
  v14 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317F18();
  sub_2146DAA28();
  LOBYTE(v15) = 0;
  sub_2146DA338();
  if (!v2)
  {
    v15 = v14;
    v16 = v13;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21427D734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21408AC04(a1, a4, &unk_27C9131A0, &unk_2146E9D10);
  result = type metadata accessor for LinkPresentation.Audio(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_21427D798()
{
  if (*v0)
  {
    result = 0x65707954656D696DLL;
  }

  else
  {
    result = 0x6E696D6165727473;
  }

  *v0;
  return result;
}

uint64_t sub_21427D7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E696D6165727473 && a2 == 0xEC0000004C525567;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65707954656D696DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21427D8BC(uint64_t a1)
{
  v2 = sub_214317F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21427D8F8(uint64_t a1)
{
  v2 = sub_214317F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21427D934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BA58, &qword_2146F6868);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317F6C();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v20;
    LOBYTE(v22) = 0;
    sub_2142E27A8();
    v15 = v21;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v24 = 1;
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v15);
    v17 = v22;
    v18 = v23;
    sub_21408AC04(v7, v14, &unk_27C9131A0, &unk_2146E9D10);
    v19 = (v14 + *(type metadata accessor for LinkPresentation.Audio(0) + 20));
    *v19 = v17;
    v19[1] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21427DBB8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BA68, &qword_2146F6870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317F6C();
  sub_2146DAA28();
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  sub_2142E2910();
  sub_2146DA388();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for LinkPresentation.Audio(0) + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21427DDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21403281C;
  *(v7 + 24) = 0;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v16);
  v9 = v16;
  v8 = v17;
  v10 = v20;
  v15[0] = a1;
  v15[1] = a2;
  v21 = v20;
  v16 = 0xD000000000000021;
  v17 = 0x8000000214792BD0;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  v11 = v9(v15, &v21, &v16);
  if (v3)
  {
  }

  else
  {
    if (v11)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v8;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD000000000000021;
    v13[1] = 0x8000000214792BD0;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21427DFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74537265626D756ELL && a2 == 0xE900000000000072)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21427E050(uint64_t a1)
{
  v2 = sub_214317FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21427E08C(uint64_t a1)
{
  v2 = sub_214317FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21427E0C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BA70, &qword_2146F6878);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214317FC0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2146DA168();
  v27 = a2;
  v31 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21403281C;
  *(v16 + 24) = 0;
  *(inited + 32) = v16;
  sub_214042B80(inited, &v33);
  v18 = v33;
  v17 = v34;
  v32[0] = v31;
  v32[1] = v14;
  v29 = v36;
  v30 = v14;
  v38 = v37;
  v39 = v37;
  v33 = 0xD000000000000021;
  v34 = 0x8000000214792BD0;
  v28 = 0x8000000214792BD0;
  v35 = 0xD00000000000001CLL;
  v36 = 0x800000021478A360;

  v19 = v18;
  v20 = v18(v32, &v39, &v33);
  v21 = v38;
  v26 = v19;
  if (v20)
  {

    (*(v6 + 8))(v9, v5);

    v22 = v27;
    *v27 = v26;
    v22[1] = v17;
    v23 = v30;
    v22[2] = v31;
    v22[3] = v23;
    *(v22 + 32) = v21;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  v24 = v28;
  *v25 = 0xD000000000000021;
  v25[1] = v24;
  v25[2] = 0xD00000000000001CLL;
  v25[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21427E4A0@<X0>(uint64_t (*a1)(void, char *, unint64_t *)@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void, char *, unint64_t *)@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a2;
  v32 = *a3;
  v33 = a3[1];
  v34 = a3[2];
  v35 = a3[3];
  v36 = *(a3 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  LOBYTE(v41) = 1;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = v41;
  *(v8 + 16) = sub_21438F518;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_214042B80(inited, &v41);
  v11 = v41;
  v10 = v42;
  v12 = v44;
  v29 = v43;
  v13 = v45;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_2146E9BF0;
  v15 = swift_allocObject();
  LOBYTE(v59) = 1;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = v59;
  *(v15 + 16) = sub_21438F518;
  *(v15 + 24) = v16;
  *(v14 + 32) = v15;
  sub_214042B80(v14, &v59);
  v37 = v59;
  v28 = v61;
  v39 = v62;
  v40 = v60;
  v38 = v63;
  v17 = a1;
  v59 = a1;
  v60 = v66;
  v58 = v13;
  v41 = 0xD00000000000001BLL;
  v42 = 0x8000000214792C00;
  v43 = 0xD00000000000001CLL;
  v44 = 0x800000021478A360;

  v18 = v11(&v59, &v58, &v41);
  if (v31)
  {

    v19 = v29;
  }

  else
  {
    v25 = a1;
    v19 = v29;
    if (v18)
    {

      v59 = a4;
      v60 = a5;
      v58 = v38;
      v41 = 0xD00000000000001ALL;
      v42 = 0x8000000214792C20;
      v43 = 0xD00000000000001CLL;
      v44 = 0x800000021478A360;

      v20 = v37(&v59, &v58, &v41);
      v22 = v66;
      v19 = v17;
      if (v20)
      {

        result = swift_bridgeObjectRelease_n();
        *a6 = v11;
        *(a6 + 8) = v10;
        *(a6 + 16) = v25;
        *(a6 + 24) = v22;
        *(a6 + 32) = v13;
        *(a6 + 40) = v32;
        *(a6 + 48) = v33;
        *(a6 + 56) = v34;
        *(a6 + 64) = v35;
        *(a6 + 72) = v36;
        *(a6 + 80) = v37;
        *(a6 + 88) = v40;
        *(a6 + 96) = a4;
        *(a6 + 104) = a5;
        *(a6 + 112) = v38;
        return result;
      }

      sub_214031C4C();
      swift_allocError();
      *v24 = 0xD00000000000001ALL;
      v24[1] = 0x8000000214792C20;
      v24[2] = 0xD00000000000001CLL;
      v24[3] = 0x800000021478A360;
      swift_willThrow();

      v12 = v22;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v21 = 0xD00000000000001BLL;
      v21[1] = 0x8000000214792C00;
      v21[2] = 0xD00000000000001CLL;
      v21[3] = 0x800000021478A360;
      swift_willThrow();
    }
  }

  v41 = v11;
  v42 = v10;
  v43 = v19;
  v44 = v12;
  v45 = v13;
  *v46 = v65[0];
  *&v46[3] = *(v65 + 3);
  v47 = v32;
  v48 = v33;
  v49 = v34;
  v50 = v35;
  v51 = v36;
  *v52 = v64[0];
  *&v52[3] = *(v64 + 3);
  v53 = v37;
  v54 = v40;
  v55 = v28;
  v56 = v39;
  v57 = v38;
  return sub_214318014(&v41);
}

uint64_t sub_21427E994()
{
  v1 = 0x7265626D756ELL;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_21427E9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214384278(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21427EA08(uint64_t a1)
{
  v2 = sub_214318068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21427EA44(uint64_t a1)
{
  v2 = sub_214318068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21427EA80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BA88, &qword_2146F6888);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v53 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v103 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214318068();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v103);
  }

  v73 = v6;
  LOBYTE(v83) = 0;
  v12 = sub_2146DA168();
  v14 = v13;
  v15 = v12;
  LOBYTE(v74) = 1;
  sub_2143180BC();
  sub_2146DA1C8();
  *&v71 = v15;
  *(&v71 + 1) = v14;
  v70 = v83;
  v72 = v84;
  v17 = v85;
  v16 = v86;
  LODWORD(v14) = v87;
  v100 = 2;
  v54 = sub_2146DA168();
  v60 = v19;
  v58 = v17;
  v59 = v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v20 = swift_allocObject();
  v63 = xmmword_2146E9BF0;
  *(v20 + 16) = xmmword_2146E9BF0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v21 = swift_allocObject();
  LOBYTE(v83) = 1;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = v83;
  *(v21 + 16) = sub_21438F518;
  *(v21 + 24) = v22;
  *(v20 + 32) = v21;
  v66 = v16;

  sub_214042B80(v20, &v83);
  v67 = v83;
  v69 = v84;
  v55 = v85;
  v65 = v86;
  v68 = v87;
  v23 = swift_allocObject();
  *(v23 + 16) = v63;
  v24 = swift_allocObject();
  LOBYTE(v74) = 1;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = v74;
  *(v24 + 16) = sub_21438F518;
  *(v24 + 24) = v25;
  *(v23 + 32) = v24;
  sub_214042B80(v23, &v74);
  v64 = *(&v74 + 1);
  v56 = v75;
  v62 = v74;
  *&v63 = *(&v75 + 1);
  v61 = v76;
  v74 = v71;
  LOBYTE(v82[0]) = v68;
  v83 = 0xD00000000000001BLL;
  v84 = 0x8000000214792C00;
  v57 = 0x8000000214792C00;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;

  v26 = v67(&v74, v82, &v83);
  v27 = v57;
  v53 = 0x800000021478A360;
  v28 = v60;
  if (v26)
  {
    v29 = v53;
    v55 = 0;

    v82[0] = v54;
    v82[1] = v28;
    LOBYTE(v74) = v61;
    v83 = 0xD00000000000001ALL;
    v84 = 0x8000000214792C20;
    v85 = 0xD00000000000001CLL;
    v86 = v29;

    v30 = v55;
    v31 = v62(v82, &v74, &v83);
    if (v30)
    {
    }

    else
    {
      v38 = v66;
      v39 = v72;
      if (v31)
      {

        (*(v73 + 8))(v9, v5);

        v40 = v64;

        *&v74 = v67;
        *(&v74 + 1) = v69;
        v41 = *(&v71 + 1);
        v75 = v71;
        LOBYTE(v76) = v68;
        *(&v76 + 1) = v102[0];
        DWORD1(v76) = *(v102 + 3);
        *(&v76 + 1) = v70;
        *&v77 = v39;
        v42 = v58;
        *(&v77 + 1) = v58;
        *&v78 = v38;
        BYTE8(v78) = v59;
        *(&v78 + 9) = *v101;
        HIDWORD(v78) = *&v101[3];
        *&v79 = v62;
        *(&v79 + 1) = v40;
        *&v80 = v54;
        *(&v80 + 1) = v60;
        v43 = v60;
        v44 = v61;
        v81 = v61;
        v46 = v78;
        v45 = v79;
        v47 = v80;
        *(a2 + 112) = v61;
        *(a2 + 80) = v45;
        *(a2 + 96) = v47;
        v48 = v74;
        v49 = v75;
        v50 = v76;
        *(a2 + 48) = v77;
        *(a2 + 64) = v46;
        *(a2 + 16) = v49;
        *(a2 + 32) = v50;
        *a2 = v48;
        sub_214318110(&v74, &v83);
        __swift_destroy_boxed_opaque_existential_1(v103);
        v83 = v67;
        v84 = v69;
        v85 = v71;
        v86 = v41;
        v87 = v68;
        *v88 = v102[0];
        *&v88[3] = *(v102 + 3);
        v89 = v70;
        v90 = v72;
        v91 = v42;
        v92 = v66;
        v93 = v59;
        *v94 = *v101;
        *&v94[3] = *&v101[3];
        v95 = v62;
        v96 = v40;
        v97 = v54;
        v98 = v43;
        v99 = v44;
        return sub_214318014(&v83);
      }

      sub_214031C4C();
      swift_allocError();
      *v51 = 0xD00000000000001ALL;
      v51[1] = 0x8000000214792C20;
      v52 = v53;
      v51[2] = 0xD00000000000001CLL;
      v51[3] = v52;
      swift_willThrow();
    }

    v35 = *(&v71 + 1);
    v34 = v72;
    v37 = v73;
    v36 = v69;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD00000000000001BLL;
    v32[1] = v27;
    v33 = v53;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = v33;
    swift_willThrow();

    v34 = v72;

    v35 = v65;
    v36 = v69;
    *&v71 = v55;
    v37 = v73;
  }

  (*(v37 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(v103);
  v83 = v67;
  v84 = v36;
  v85 = v71;
  v86 = v35;
  v87 = v68;
  *v88 = v102[0];
  *&v88[3] = *(v102 + 3);
  v89 = v70;
  v90 = v34;
  v91 = v58;
  v92 = v66;
  v93 = v59;
  *v94 = *v101;
  *&v94[3] = *&v101[3];
  v95 = v62;
  v96 = v64;
  v97 = v56;
  v98 = v63;
  v99 = v61;
  return sub_214318014(&v83);
}

uint64_t sub_21427F2EC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BAA0, &qword_2146F6890);
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 48);
  v18 = *(v1 + 40);
  v19 = v10;
  v11 = *(v1 + 56);
  v20 = *(v1 + 64);
  v27 = *(v1 + 72);
  v12 = *(v1 + 104);
  v15 = *(v1 + 96);
  v16 = v12;
  v17 = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214318068();
  sub_2146DAA28();
  if (v9)
  {
    LOBYTE(v22) = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v21 + 8))(v7, v4);
    }

    v22 = v18;
    v23 = v19;
    v24 = v17;
    v25 = v20;
    v26 = v27;
    v28 = 1;
    sub_21431816C();

    sub_2146DA388();

    if (v16)
    {
      LOBYTE(v22) = 2;

      sub_2146DA328();
      (*(v21 + 8))(v7, v4);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21427F5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v23 = *a3;
  v15 = *a4;
  sub_2145C03EC(&v18);
  v8 = v18;
  v9 = v19;
  v10 = v22;
  v17[0] = a1;
  v17[1] = a2;
  v24 = v22;
  v18 = 0xD000000000000014;
  v19 = 0x8000000214792C40;
  v11 = v8;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v12 = v11(v17, &v24, &v18);
  if (v5)
  {
  }

  else
  {
    if (v12)
    {

      *a5 = v11;
      *(a5 + 8) = v9;
      *(a5 + 16) = a1;
      *(a5 + 24) = a2;
      *(a5 + 32) = v10;
      *(a5 + 33) = v23;
      *(a5 + 34) = v15;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD000000000000014;
    v14[1] = 0x8000000214792C40;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_21427F794()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x6C6562616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6910581;
  }
}

uint64_t sub_21427F7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214384388(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21427F804(uint64_t a1)
{
  v2 = sub_2143181C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21427F840(uint64_t a1)
{
  v2 = sub_2143181C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21427F87C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BAB0, &qword_2146F6898);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143181C0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v32 = v11;
  LOBYTE(v33[0]) = 1;
  sub_214318214();
  sub_2146DA1C8();
  v14 = v34;
  LOBYTE(v33[0]) = 2;
  sub_214318268();
  sub_2146DA1C8();
  v39 = v14;
  v27 = v34;
  sub_2145C03EC(&v34);
  v17 = v34;
  v16 = v35;
  v18 = v37;
  v33[0] = v32;
  v33[1] = v13;
  v25 = v38;
  v40 = v38;
  v34 = 0xD000000000000014;
  v35 = 0x8000000214792C40;
  v28 = 0x800000021478A360;
  v29 = 0x8000000214792C40;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;
  v31 = v18;

  v30 = v16;
  v26 = v17;
  v19 = v17(v33, &v40, &v34);
  v20 = v28;
  v21 = v29;
  if (v19)
  {

    (*(v6 + 8))(v9, v5);

    v22 = v30;

    *a2 = v26;
    *(a2 + 8) = v22;
    *(a2 + 16) = v32;
    *(a2 + 24) = v13;
    *(a2 + 32) = v25;
    *(a2 + 33) = v39;
    *(a2 + 34) = v27;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000014;
    v23[1] = v21;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = v20;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21427FC60(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BAD0, &qword_2146F68A0);
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 33);
  v13 = *(v1 + 34);
  v14 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143181C0();
  sub_2146DAA28();
  if (v8)
  {
    v20 = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v15 + 8))(v7, v4);
    }

    else
    {

      v19 = v14;
      v18 = 1;
      sub_2143182BC();
      sub_2146DA388();
      v17 = v13;
      v16 = 2;
      sub_214318310();
      sub_2146DA388();
      return (*(v15 + 8))(v7, v4);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

__n128 sub_21427FEE8@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v9) = *(a1 + 112);
  result = a1[4];
  v4 = a1[6];
  v5 = *a1;
  v7 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  *(a3 + 80) = a1[5];
  *(a3 + 96) = v4;
  *(a3 + 48) = v8;
  *(a3 + 64) = result;
  *(a3 + 16) = v7;
  *(a3 + 32) = v6;
  *a3 = v5;
  *(a3 + 112) = v9;
  *(a3 + 120) = a2;
  return result;
}

uint64_t sub_21427FF34()
{
  if (*v0)
  {
    result = 0x6972746E45697275;
  }

  else
  {
    result = 0x6E6F6870656C6574;
  }

  *v0;
  return result;
}

uint64_t sub_21427FF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6870656C6574 && a2 == 0xED00006F666E4965;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6972746E45697275 && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21428006C(uint64_t a1)
{
  v2 = sub_214318364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142800A8(uint64_t a1)
{
  v2 = sub_214318364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142800E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BAE8, &qword_2146F68A8);
  v5 = *(v42 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v42);
  v8 = v21 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214318364();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v5;
    v33 = 0;
    sub_2143183B8();
    v11 = v42;
    sub_2146DA1C8();
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v28 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BB00, &qword_2146F68B0);
    v23 = 1;
    sub_21431840C();
    sub_2146DA1C8();
    (*(v10 + 8))(v8, v11);
    v12 = v24;
    v14 = v25;
    v13 = v26;
    v21[0] = v25;
    v21[1] = v26;
    LOBYTE(v22) = v32;
    v16 = v30;
    v15 = v31;
    v21[5] = v30;
    v21[6] = v31;
    v17 = v29;
    v21[3] = v28;
    v21[4] = v29;
    v21[2] = v27;
    v18 = v28;
    *(a2 + 32) = v27;
    *(a2 + 48) = v18;
    *a2 = v14;
    *(a2 + 16) = v13;
    v19 = v22;
    *(a2 + 80) = v16;
    *(a2 + 96) = v15;
    *(a2 + 64) = v17;
    *(a2 + 112) = v19;
    *(a2 + 120) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214280364(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BB18, &qword_2146F68B8);
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = v1[5];
  v32 = v1[4];
  v33 = v8;
  v34 = v1[6];
  v35 = *(v1 + 112);
  v9 = v1[1];
  v28 = *v1;
  v29 = v9;
  v10 = v1[3];
  v30 = v1[2];
  v31 = v10;
  v14 = *(v1 + 15);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214318110(&v28, &v20);
  sub_214318364();
  sub_2146DAA28();
  v24 = v32;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v23 = v31;
  v19 = 0;
  sub_2143184E4();
  sub_2146DA388();
  v17[4] = v24;
  v17[5] = v25;
  v17[6] = v26;
  v18 = v27;
  v17[0] = v20;
  v17[1] = v21;
  v17[2] = v22;
  v17[3] = v23;
  sub_214318014(v17);
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BB00, &qword_2146F68B0);
    sub_214318538();
    sub_2146DA388();
  }

  return (*(v36 + 8))(v7, v4);
}

uint64_t sub_21428060C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v47 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v39 - v10);
  sub_2145C08F8(a4);
  v48 = a4;
  sub_213FB2E54(a4, v11, &qword_27C903F38, &unk_2146E9D40);
  v12 = *v11;
  v13 = v11[1];
  LOBYTE(v49[0]) = *(v11 + *(v8 + 32));
  v50 = 0xD000000000000011;
  v51 = 0x8000000214792C60;
  v52 = 0xD00000000000001CLL;
  v53 = 0x800000021478A360;
  v14 = v12(a1, v49, &v50);
  if (v4)
  {

    sub_213FB2DF4(a1, &unk_27C9131A0, &unk_2146E9D10);

LABEL_6:
    v17 = v48;
    sub_21402EDB8(v11, v48, &qword_27C903F38, &unk_2146E9D40);
    return sub_21432887C(v17, type metadata accessor for Chatbot.Media);
  }

  v45 = a1;
  v46 = a3;
  if ((v14 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD000000000000011;
    v25[1] = 0x8000000214792C60;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v45, &unk_27C9131A0, &unk_2146E9D10);
    goto LABEL_6;
  }

  v15 = *(v8 + 28);
  sub_213FB2DF4(v11 + v15, &qword_27C903F40, &unk_2146F1C50);
  sub_213FB2E54(v45, v11 + v15, &unk_27C9131A0, &unk_2146E9D10);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v16 - 8) + 56))(v11 + v15, 0, 1, v16);
  v17 = v48;
  sub_21402EDB8(v11, v48, &qword_27C903F38, &unk_2146E9D40);
  v18 = v17 + *(type metadata accessor for Chatbot.Media(0) + 20);
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  v22 = *(v18 + 24);
  v23 = *(v18 + 32);
  v49[0] = v47;
  v49[1] = v46;
  v54 = v23;
  v55 = v23;
  v50 = 0xD000000000000019;
  v51 = 0x8000000214792C80;
  v40 = 0x8000000214792C80;
  v41 = 0x800000021478A360;
  v52 = 0xD00000000000001CLL;
  v53 = 0x800000021478A360;

  v42 = v22;
  v43 = v21;
  sub_213FDC9D0(v21, v22);
  v44 = v20;
  v24 = v20(v49, &v55, &v50);
  v28 = v40;
  v27 = v41;
  if ((v24 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD000000000000019;
    v33[1] = v28;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = v27;
    swift_willThrow();

    sub_213FB2DF4(v45, &unk_27C9131A0, &unk_2146E9D10);
    v34 = *(v18 + 8);
    v35 = *(v18 + 16);
    v36 = *(v18 + 24);

    sub_213FDC6D0(v35, v36);
    v37 = v43;
    *v18 = v44;
    *(v18 + 8) = v19;
    v38 = v42;
    *(v18 + 16) = v37;
    *(v18 + 24) = v38;
    *(v18 + 32) = v54;
    return sub_21432887C(v17, type metadata accessor for Chatbot.Media);
  }

  sub_213FDC6D0(v43, v42);

  sub_213FB2DF4(v45, &unk_27C9131A0, &unk_2146E9D10);
  v29 = *(v18 + 8);
  v30 = *(v18 + 16);
  v31 = *(v18 + 24);

  result = sub_213FDC6D0(v30, v31);
  *v18 = v44;
  *(v18 + 8) = v19;
  v32 = v46;
  *(v18 + 16) = v47;
  *(v18 + 24) = v32;
  *(v18 + 32) = v54;
  return result;
}

uint64_t sub_214280A78()
{
  if (*v0)
  {
    result = 0x72707265676E6966;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_214280AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72707265676E6966 && a2 == 0xEB00000000746E69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_214280B94(uint64_t a1)
{
  v2 = sub_214318610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214280BD0(uint64_t a1)
{
  v2 = sub_214318610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214280C0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = *(*(v62 - 1) + 64);
  MEMORY[0x28223BE20](v62);
  v63 = (&v52 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BB38, &qword_2146F68C0);
  v64 = *(v9 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - v11;
  v13 = type metadata accessor for Chatbot.Media(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_214318610();
  v19 = v65;
  sub_2146DAA08();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v59 = v13;
  v20 = v63;
  v65 = v16;
  LOBYTE(v68) = 0;
  sub_2142E27A8();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v67[0]) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v55 = v5;
  v56 = v68;
  v58 = v69;
  v22 = v65;
  sub_2145C08F8(v65);
  v23 = v20;
  sub_213FB2E54(v22, v20, &qword_27C903F38, &unk_2146E9D40);
  v24 = *v20;
  v25 = v20[1];
  v26 = v62;
  LOBYTE(v67[0]) = *(v23 + *(v62 + 8));
  v68 = 0xD000000000000011;
  v69 = 0x8000000214792C60;
  v57 = 0x8000000214792C60;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;
  v27 = v24(v8, v67, &v68);
  v28 = v57;
  v54 = 0x800000021478A360;
  if (v27)
  {
    v53 = v9;

    v29 = *(v26 + 28);
    v30 = v63;
    sub_213FB2DF4(v63 + v29, &qword_27C903F40, &unk_2146F1C50);
    v62 = v8;
    sub_213FB2E54(v8, v30 + v29, &unk_27C9131A0, &unk_2146E9D10);
    (*(v61 + 56))(v30 + v29, 0, 1, v55);
    v31 = v65;
    sub_21402EDB8(v30, v65, &qword_27C903F38, &unk_2146E9D40);
    v32 = &v31[*(v59 + 20)];
    v33 = *v32;
    v34 = *(v32 + 1);
    v35 = *(v32 + 2);
    v36 = *(v32 + 3);
    v37 = v32[32];
    v67[0] = v56;
    v67[1] = v58;
    LODWORD(v61) = v37;
    v72 = v37;
    v68 = 0xD000000000000019;
    v69 = 0x8000000214792C80;
    v55 = 0x8000000214792C80;
    v70 = 0xD00000000000001CLL;
    v71 = v54;

    v59 = v35;
    v57 = v36;
    sub_213FDC9D0(v35, v36);
    v63 = v33;
    v38 = (v33)(v67, &v72, &v68);
    v40 = v55;
    if (v38)
    {
      sub_213FDC6D0(v59, v57);

      sub_213FB2DF4(v62, &unk_27C9131A0, &unk_2146E9D10);
      (*(v64 + 8))(v12, v53);
      v41 = *(v32 + 1);
      v42 = *(v32 + 2);
      v43 = *(v32 + 3);

      sub_213FDC6D0(v42, v43);
      *v32 = v63;
      *(v32 + 1) = v34;
      v44 = v58;
      *(v32 + 2) = v56;
      *(v32 + 3) = v44;
      v32[32] = v61;
      sub_214328704(v31, v60, type metadata accessor for Chatbot.Media);
      return __swift_destroy_boxed_opaque_existential_1(v66);
    }

    sub_214031C4C();
    swift_allocError();
    *v45 = 0xD000000000000019;
    v45[1] = v40;
    v46 = v54;
    v45[2] = 0xD00000000000001CLL;
    v45[3] = v46;
    swift_willThrow();

    v47 = v64;
    sub_213FB2DF4(v62, &unk_27C9131A0, &unk_2146E9D10);
    (*(v47 + 8))(v12, v53);
    v48 = *(v32 + 1);
    v49 = *(v32 + 2);
    v50 = *(v32 + 3);

    sub_213FDC6D0(v49, v50);
    *v32 = v63;
    *(v32 + 1) = v34;
    v51 = v57;
    *(v32 + 2) = v59;
    *(v32 + 3) = v51;
    v32[32] = v61;
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000011;
    v39[1] = v28;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = v54;
    swift_willThrow();
    sub_213FB2DF4(v8, &unk_27C9131A0, &unk_2146E9D10);
    (*(v64 + 8))(v12, v9);
    v31 = v65;
    sub_21402EDB8(v63, v65, &qword_27C903F38, &unk_2146E9D40);
  }

  __swift_destroy_boxed_opaque_existential_1(v66);
  return sub_21432887C(v31, type metadata accessor for Chatbot.Media);
}

uint64_t sub_214281390(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BB48, &qword_2146F68C8);
  v22 = *(v11 - 8);
  v12 = *(v22 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214318610();
  sub_2146DAA28();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v23 + *(v16 + 28), v5, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_213FB2DF4(v5, &qword_27C903F40, &unk_2146F1C50);
  }

  else
  {
    sub_21408AC04(v5, v10, &unk_27C9131A0, &unk_2146E9D10);
    LOBYTE(v24) = 0;
    sub_2142E2910();
    v17 = v21[1];
    sub_2146DA388();
    sub_213FB2DF4(v10, &unk_27C9131A0, &unk_2146E9D10);
    if (v17)
    {
      return (*(v22 + 8))(v14, v11);
    }

    v18 = v23 + *(type metadata accessor for Chatbot.Media(0) + 20);
    v19 = *(v18 + 24);
    if (v19 != 1)
    {
      v24 = *(v18 + 16);
      v25 = v19;
      v26 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      return (*(v22 + 8))(v14, v11);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214281740@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_214328704(a1, a3, type metadata accessor for Chatbot.Media);
  result = type metadata accessor for Chatbot.MediaEntry(0);
  *(a3 + *(result + 24)) = v4;
  return result;
}

uint64_t sub_2142817A4()
{
  v1 = 0x616964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x54746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_214281800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438449C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214281828(uint64_t a1)
{
  v2 = sub_214318664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214281864(uint64_t a1)
{
  v2 = sub_214318664();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142818A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Chatbot.Media(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BB50, &qword_2146F68D0);
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214318664();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v17;
    v22 = 0;
    sub_2143186B8();
    sub_2146DA1C8();
    v21 = 1;
    sub_214328930(&qword_27C90BB68, type metadata accessor for Chatbot.Media);
    sub_2146DA1C8();
    v19 = 2;
    sub_21431870C();
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v18);
    v16 = v20;
    sub_214328704(v7, v14, type metadata accessor for Chatbot.Media);
    *(v14 + *(type metadata accessor for Chatbot.MediaEntry(0) + 24)) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214281B70(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BB78, &qword_2146F68D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214318664();
  sub_2146DAA28();
  v12[15] = 0;
  sub_214318760();
  sub_2146DA388();
  if (!v2)
  {
    v12[14] = 1;
    type metadata accessor for Chatbot.Media(0);
    sub_214328930(&qword_27C90BB88, type metadata accessor for Chatbot.Media);
    sub_2146DA388();
    v12[13] = *(v3 + *(type metadata accessor for Chatbot.MediaEntry(0) + 24));
    v12[12] = 2;
    sub_2143187B4();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_214281DBC(uint64_t a1)
{
  v2 = sub_214318808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214281DF8(uint64_t a1)
{
  v2 = sub_214318808();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214281E34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BB98, &qword_2146F68E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214318808();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BBA8, &qword_2146F68E8);
    sub_21431885C();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214281FB4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BBD0, &qword_2146F68F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214318808();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BBA8, &qword_2146F68E8);
  sub_214318994();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_214282158(uint64_t a1)
{
  v2 = sub_214318ACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214282194(uint64_t a1)
{
  v2 = sub_214318ACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142821D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BBF0, &qword_2146F6900);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214318ACC();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BC00, &qword_2146F6908);
    sub_214318B20();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214282350(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BC28, &qword_2146F6918);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214318ACC();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BC00, &qword_2146F6908);
  sub_214318C7C();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2142824F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  LOBYTE(v17) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 50;
  *(v8 + 24) = v17;
  *(v7 + 16) = sub_21438F518;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v17);
  v10 = v17;
  v9 = v18;
  v11 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD000000000000023;
  v18 = 0x8000000214792CA0;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  v12 = v10(v16, &v22, &v17);
  if (v3)
  {
  }

  else
  {
    if (v12)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v10;
      *(a3 + 8) = v9;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v11;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD000000000000023;
    v14[1] = 0x8000000214792CA0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214282734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2142827BC(uint64_t a1)
{
  v2 = sub_214318DD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142827F8(uint64_t a1)
{
  v2 = sub_214318DD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214282834@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BC48, &qword_2146F6920);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214318DD8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2146DA168();
  v25 = a2;
  v28 = v11;
  v29 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v15 = swift_allocObject();
  LOBYTE(v31) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = 50;
  *(v16 + 24) = v31;
  *(v15 + 16) = sub_21438F518;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_214042B80(inited, &v31);
  v18 = v31;
  v17 = v32;
  v30[0] = v28;
  v30[1] = v29;
  v36 = v35;
  v37 = v35;
  v31 = 0xD000000000000023;
  v32 = 0x8000000214792CA0;
  v26 = 0x8000000214792CA0;
  v27 = v34;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v19 = v18(v30, &v37, &v31);
  v20 = v26;
  if (v19)
  {

    (*(v6 + 8))(v9, v5);

    v21 = v25;
    *v25 = v18;
    v21[1] = v17;
    v22 = v29;
    v21[2] = v28;
    v21[3] = v22;
    *(v21 + 32) = v36;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v23 = 0xD000000000000023;
  v23[1] = v20;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214282C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  LOBYTE(v17) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 100;
  *(v8 + 24) = v17;
  *(v7 + 16) = sub_21438F518;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v17);
  v10 = v17;
  v9 = v18;
  v11 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD000000000000024;
  v18 = 0x8000000214792CD0;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  v12 = v10(v16, &v22, &v17);
  if (v3)
  {
  }

  else
  {
    if (v12)
    {

      *a3 = v10;
      *(a3 + 8) = v9;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v11;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD000000000000024;
    v14[1] = 0x8000000214792CD0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_214282E4C()
{
  if (*v0)
  {
    result = 0x65707954656D616ELL;
  }

  else
  {
    result = 0x4E79616C70736964;
  }

  *v0;
  return result;
}

uint64_t sub_214282E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65707954656D616ELL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_214282F70(uint64_t a1)
{
  v2 = sub_214318E2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214282FAC(uint64_t a1)
{
  v2 = sub_214318E2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214282FE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BC60, &qword_2146F6930);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214318E2C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v31 = v11;
  LOBYTE(v33) = 1;
  sub_214318E80();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  LOBYTE(v33) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = 100;
  *(v17 + 24) = v33;
  *(v16 + 16) = sub_21438F518;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  sub_214042B80(inited, &v33);
  v18 = v13;
  v20 = v33;
  v19 = v34;
  v21 = v36;
  v32[0] = v31;
  v32[1] = v18;
  v28 = v18;
  v29 = 0x8000000214792CD0;
  v38 = v37;
  v39 = v37;
  v33 = 0xD000000000000024;
  v34 = 0x8000000214792CD0;
  v35 = 0xD00000000000001CLL;
  v36 = 0x800000021478A360;
  v30 = v21;

  v27 = v20;
  v22 = v20(v32, &v39, &v33);
  v23 = v28;
  if (v22)
  {

    (*(v6 + 8))(v9, v5);

    *a2 = v27;
    *(a2 + 8) = v19;
    *(a2 + 16) = v31;
    *(a2 + 24) = v23;
    *(a2 + 32) = v38;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v24 = v29;
    *v25 = 0xD000000000000024;
    v25[1] = v24;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142833F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BC78, &qword_2146F6938);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214318E2C();
  sub_2146DAA28();
  if (v9)
  {
    v15 = 0;

    v11 = v13[1];
    sub_2146DA328();
    if (v11)
    {
      (*(v4 + 8))(v7, v3);
    }

    else
    {

      v14 = 1;
      sub_214318ED4();
      sub_2146DA388();
      return (*(v4 + 8))(v7, v3);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214283620@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v58 = a3;
  v11 = a1[5];
  v54 = a1[4];
  v55 = v11;
  v12 = a1[7];
  v56 = a1[6];
  v57 = v12;
  v13 = a1[1];
  v50 = *a1;
  v51 = v13;
  v14 = a1[3];
  v52 = a1[2];
  v53 = v14;
  v29 = *a2;
  v30 = *a6;
  sub_2145C0EC8(&v31);
  v15 = v31;
  v16 = *(&v32 + 1);
  v17 = a4;
  v48[0] = a4;
  v48[1] = a5;
  v18 = v32;
  v27 = v33;
  v47 = v33;
  *&v31 = 0xD000000000000027;
  *(&v31 + 1) = 0x8000000214792D00;
  *&v32 = 0xD00000000000001CLL;
  *(&v32 + 1) = 0x800000021478A360;

  sub_213FDC9D0(v18, v16);
  v19 = (v15)(v48, &v47, &v31);
  if (v28)
  {
  }

  else
  {
    if (v19)
    {
      sub_213FDC6D0(v18, v16);

      result = sub_213FDC6D0(v18, v16);
      v21 = a1[5];
      *(a7 + 64) = a1[4];
      *(a7 + 80) = v21;
      v22 = a1[7];
      *(a7 + 96) = a1[6];
      *(a7 + 112) = v22;
      v23 = a1[1];
      *a7 = *a1;
      *(a7 + 16) = v23;
      v24 = a1[3];
      *(a7 + 32) = a1[2];
      *(a7 + 48) = v24;
      v25 = v58;
      *(a7 + 128) = v29;
      *(a7 + 136) = v25;
      *(a7 + 144) = v15;
      *(a7 + 160) = v17;
      *(a7 + 168) = a5;
      *(a7 + 176) = v27;
      *(a7 + 184) = v30;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000027;
    v26[1] = 0x8000000214792D00;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v18, v16);
  v35 = v54;
  v36 = v55;
  v37 = v56;
  v38 = v57;
  v31 = v50;
  v32 = v51;
  v33 = v52;
  v34 = v53;
  v39 = v29;
  v40 = v58;
  v41 = v15;
  v42 = v18;
  v43 = v16;
  v44 = v27;
  *&v45[3] = *(v49 + 3);
  *v45 = v49[0];
  v46 = v30;
  return sub_214318F28(&v31);
}

unint64_t sub_2142838A4()
{
  v1 = *v0;
  v2 = 0x73694C616964656DLL;
  v3 = 0x7470697263736564;
  if (v1 != 3)
  {
    v3 = 0x79726F6765746163;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_214283958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143845B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214283980(uint64_t a1)
{
  v2 = sub_214318F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142839BC(uint64_t a1)
{
  v2 = sub_214318F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142839F8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BC88, &unk_2146F6940);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214318F7C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v110);
  }

  v12 = v6;
  v51 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BC98, &unk_214763E30);
  v92 = 0;
  sub_214318FD0();
  sub_2146DA1C8();
  v88 = v97;
  v89 = v98;
  v90 = v99;
  v91 = v100;
  v84 = v93;
  v85 = v94;
  v86 = v95;
  v87 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BCB0, &qword_2146F6950);
  LOBYTE(v52) = 1;
  sub_2143190A8();
  sub_2146DA1C8();
  v13 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BCC8, &qword_2146F6958);
  LOBYTE(v52) = 2;
  sub_214319180();
  sub_2146DA1C8();
  v50 = v13;
  v14 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v52) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v49 = v14;
  v15 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BCF0, &qword_2146F6968);
  v82 = 4;
  sub_2143192DC();
  sub_2146DA1C8();
  v46 = v83;
  sub_213FB2E54(&v84, &v64, &qword_27C90BC98, &unk_214763E30);
  sub_2145C0EC8(&v64);
  v17 = *(&v64 + 1);
  v18 = *(&v65 + 1);
  v47 = v65;
  v48 = v64;
  v106 = v88;
  v107 = v89;
  v108 = v90;
  v109 = v91;
  v102 = v84;
  v103 = v85;
  v104 = v86;
  v105 = v87;
  v41 = v15;
  v42 = 0x8000000214792D00;
  v81 = v15;
  v45 = v66;
  LOBYTE(v52) = v66;
  *&v64 = 0xD000000000000027;
  *(&v64 + 1) = 0x8000000214792D00;
  *&v65 = 0xD00000000000001CLL;
  *(&v65 + 1) = 0x800000021478A360;

  v44 = v18;
  sub_213FDC9D0(v47, v18);
  v43 = v17;
  v19 = v48(&v81, &v52, &v64);
  v20 = v42;
  v40 = *(&v15 + 1);
  if (v19)
  {
    v21 = v47;
    v22 = v44;
    sub_213FDC6D0(v47, v44);

    sub_213FB2DF4(&v84, &qword_27C90BC98, &unk_214763E30);
    (*(v12 + 8))(v9, v5);
    v23 = v43;

    sub_213FDC6D0(v21, v22);
    v56 = v106;
    v57 = v107;
    v58 = v108;
    v59 = v109;
    v52 = v102;
    v53 = v103;
    v54 = v104;
    v55 = v105;
    v24 = v49;
    *&v60 = v50;
    *(&v60 + 1) = v49;
    v25 = v48;
    *&v61 = v48;
    *(&v61 + 1) = v23;
    v26 = v40;
    *&v62 = v41;
    *(&v62 + 1) = v40;
    v27 = v45;
    LOBYTE(v63) = v45;
    v28 = v46;
    *(&v63 + 1) = v46;
    v29 = v107;
    v30 = v51;
    v51[4] = v106;
    v30[5] = v29;
    v31 = v59;
    v30[6] = v58;
    v30[7] = v31;
    v32 = v53;
    *v30 = v52;
    v30[1] = v32;
    v33 = v55;
    v30[2] = v54;
    v30[3] = v33;
    v34 = v61;
    v30[8] = v60;
    v30[9] = v34;
    v35 = v63;
    v30[10] = v62;
    v30[11] = v35;
    sub_2143193B4(&v52, &v64);
    __swift_destroy_boxed_opaque_existential_1(v110);
    v68 = v106;
    v69 = v107;
    v70 = v108;
    v71 = v109;
    v64 = v102;
    v65 = v103;
    v66 = v104;
    v67 = v105;
    v72 = v50;
    v73 = v24;
    v74 = v25;
    v75 = v23;
    v76 = v41;
    v77 = v26;
    v78 = v27;
    v80 = v28;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000027;
    v36[1] = v20;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(&v84, &qword_27C90BC98, &unk_214763E30);
    (*(v12 + 8))(v9, v5);
    v37 = v43;

    v38 = v47;
    v39 = v44;
    sub_213FDC6D0(v47, v44);
    __swift_destroy_boxed_opaque_existential_1(v110);
    v68 = v106;
    v69 = v107;
    v70 = v108;
    v71 = v109;
    v64 = v102;
    v65 = v103;
    v66 = v104;
    v67 = v105;
    v72 = v50;
    v73 = v49;
    v74 = v48;
    v75 = v37;
    v76 = v38;
    v77 = v39;
    v78 = v45;
    *&v79[3] = *&v101[3];
    *v79 = *v101;
    v80 = v46;
  }

  return sub_214318F28(&v64);
}