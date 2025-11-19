uint64_t sub_2141CCCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214373120(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141CCCD8(uint64_t a1)
{
  v2 = sub_214302AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141CCD14(uint64_t a1)
{
  v2 = sub_214302AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141CCD50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v66 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F98, &qword_2146F5510);
  v77 = *(v7 - 8);
  v8 = *(v77 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v66 - v9;
  v11 = type metadata accessor for IMCompositionIndication();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_214302AE0();
  v17 = v78;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v18 = v11;
  v78 = v6;
  v75 = v14;
  LOBYTE(v80) = 0;
  sub_214302B34();
  sub_2146DA1C8();
  v19 = v85;
  LOBYTE(v85) = 1;
  sub_2142EC0C4();
  v20 = v78;
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v80) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v21 = *(&v85 + 1);
  v74 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v80) = 3;
  sub_2142E11FC();
  sub_2146DA1C8();
  v72 = v7;
  v73 = v10;
  v68 = v85;
  v67 = BYTE8(v85);
  v23 = v75;
  sub_213FB2E54(v20, &v75[v18[5]], &qword_27C913090, &unk_2146E9DB0);
  sub_2146A89E8(&v85);
  v24 = v86;
  v25 = v87;
  LOBYTE(v20) = v88;
  sub_2146A8B08(&v80);
  v26 = v81;
  v27 = v82;
  v28 = v83;
  v29 = v84;
  *v23 = v19;
  v30 = &v23[v18[6]];
  *v30 = v85;
  *(v30 + 2) = v24;
  *(v30 + 3) = v25;
  v30[32] = v20;
  v31 = &v23[v18[7]];
  *v31 = v80;
  *(v31 + 2) = v26;
  v31[24] = v27;
  v31[25] = v28;
  v31[26] = v29;
  v32 = v21;
  v34 = *v30;
  v33 = *(v30 + 1);
  v35 = *(v30 + 2);
  v36 = *(v30 + 3);
  LODWORD(v26) = v30[32];
  *&v80 = v74;
  *(&v80 + 1) = v32;
  v89 = v26;
  v90 = v26;
  *&v85 = 0xD000000000000023;
  *(&v85 + 1) = 0x8000000214790040;
  v86 = 0xD00000000000001CLL;
  v87 = 0x800000021478A360;

  v69 = v36;
  v70 = v35;
  sub_213FDC9D0(v35, v36);
  v71 = v34;
  v37 = v34(&v80, &v90, &v85);
  v38 = v32;
  v66 = 0x800000021478A360;
  v39 = v68;
  if (v37)
  {
    sub_213FDC6D0(v70, v69);
    v40 = v66;

    v41 = *(v30 + 1);
    v42 = *(v30 + 2);
    v43 = *(v30 + 3);

    sub_213FDC6D0(v42, v43);
    *v30 = v71;
    *(v30 + 1) = v33;
    *(v30 + 2) = v74;
    *(v30 + 3) = v38;
    v30[32] = v89;
    v45 = *v31;
    v44 = *(v31 + 1);
    v71 = *(v31 + 2);
    v89 = v31[24];
    LODWORD(v70) = v31[25];
    v46 = v31[26];
    v47 = v39;
    *&v80 = v39;
    BYTE8(v80) = v67;
    LODWORD(v74) = v46;
    v90 = v46;
    *&v85 = 0xD000000000000027;
    *(&v85 + 1) = 0x8000000214790070;
    v86 = 0xD00000000000001CLL;
    v87 = v40;

    v48 = v45(&v80, &v90, &v85);
    v49 = v77;
    v50 = v72;
    v61 = v73;
    if (v48)
    {

      sub_213FB2DF4(v78, &qword_27C913090, &unk_2146E9DB0);
      (*(v49 + 8))(v61, v50);
      v62 = *(v31 + 1);

      *v31 = v45;
      *(v31 + 1) = v44;
      *(v31 + 2) = v47;
      v31[24] = v67;
      v31[25] = 0;
      v31[26] = v74;
      sub_214328704(v75, v76, type metadata accessor for IMCompositionIndication);
      return __swift_destroy_boxed_opaque_existential_1(v79);
    }

    sub_214031C4C();
    swift_allocError();
    *v63 = 0xD000000000000027;
    v63[1] = 0x8000000214790070;
    v64 = v66;
    v63[2] = 0xD00000000000001CLL;
    v63[3] = v64;
    swift_willThrow();
    sub_213FB2DF4(v78, &qword_27C913090, &unk_2146E9DB0);
    (*(v49 + 8))(v61, v50);
    v65 = *(v31 + 1);

    *v31 = v45;
    *(v31 + 1) = v44;
    *(v31 + 2) = v71;
    v31[24] = v89;
    v31[25] = v70;
    v31[26] = v74;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD000000000000023;
    v51[1] = 0x8000000214790040;
    v52 = v66;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = v52;
    swift_willThrow();

    v53 = v77;
    v54 = v72;
    sub_213FB2DF4(v78, &qword_27C913090, &unk_2146E9DB0);
    (*(v53 + 8))(v73, v54);
    v55 = *(v30 + 1);
    v56 = *(v30 + 2);
    v57 = *(v30 + 3);

    sub_213FDC6D0(v56, v57);
    v58 = v70;
    *v30 = v71;
    *(v30 + 1) = v33;
    v59 = v69;
    *(v30 + 2) = v58;
    *(v30 + 3) = v59;
    v30[32] = v89;
  }

  v60 = v75;
  __swift_destroy_boxed_opaque_existential_1(v79);
  return sub_21432887C(v60, type metadata accessor for IMCompositionIndication);
}

uint64_t sub_2141CD530(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908FB0, &qword_2146F5518);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214302AE0();
  sub_2146DAA28();
  LOBYTE(v19) = *v3;
  v21 = 0;
  sub_214302B88();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = type metadata accessor for IMCompositionIndication();
  v12 = v11[5];
  LOBYTE(v19) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  sub_2142EC30C();
  sub_2146DA388();
  v13 = &v3[v11[6]];
  v14 = *(v13 + 3);
  if (v14 != 1)
  {
    v19 = *(v13 + 2);
    v20 = v14;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v15 = &v3[v11[7]];
    if ((v15[25] & 1) == 0)
    {
      v16 = v15[24];
      v19 = *(v15 + 2);
      LOBYTE(v20) = v16 & 1;
      v21 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
      sub_2142E1C30();
      sub_2146DA388();
      return (*(v6 + 8))(v9, v5);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141CD82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int16 *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a6;
  v13 = type metadata accessor for IMDispositionNotification();
  v14 = v13[5];
  v15 = sub_2146D8B08();
  v34 = *(v15 - 8);
  v35 = v15;
  (*(v34 + 16))(a7 + v14, a3);
  v36 = a4;
  sub_213FB2E54(a4, a7 + v13[6], &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(a5, a7 + v13[7], &unk_27C9131A0, &unk_2146E9D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2140676DC;
  *(v17 + 24) = 0;
  *(inited + 32) = v17;
  sub_214042B80(inited, &v38);
  v18 = v40;
  v19 = v39;
  *a7 = v38;
  *(a7 + 16) = v19;
  *(a7 + 32) = v18;
  *(a7 + v13[8]) = v12;
  v21 = *a7;
  v20 = *(a7 + 8);
  v22 = *(a7 + 24);
  v31 = *(a7 + 16);
  v23 = *(a7 + 32);
  v37[0] = a1;
  v37[1] = a2;
  v41 = v23;
  v42 = v23;
  *&v38 = 0xD000000000000023;
  *(&v38 + 1) = 0x80000002147900A0;
  *&v39 = 0xD00000000000001CLL;
  *(&v39 + 1) = 0x800000021478A360;

  v24 = v21(v37, &v42, &v38);
  if (v33)
  {
  }

  else
  {
    if (v24)
    {

      sub_213FB2DF4(a5, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v36, &unk_27C9131A0, &unk_2146E9D10);
      (*(v34 + 8))(a3, v35);
      v25 = *(a7 + 8);
      v26 = *(a7 + 24);

      *a7 = v21;
      *(a7 + 8) = v20;
      *(a7 + 16) = a1;
      *(a7 + 24) = a2;
      *(a7 + 32) = v41;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD000000000000023;
    v28[1] = 0x80000002147900A0;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(a5, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v36, &unk_27C9131A0, &unk_2146E9D10);
  (*(v34 + 8))(a3, v35);
  v29 = *(a7 + 8);
  v30 = *(a7 + 24);

  *a7 = v21;
  *(a7 + 8) = v20;
  *(a7 + 16) = v31;
  *(a7 + 24) = v22;
  *(a7 + 32) = v41;
  return sub_21432887C(a7, type metadata accessor for IMDispositionNotification);
}

uint64_t sub_2141CDBD8()
{
  v1 = *v0;
  v2 = 0x496567617373656DLL;
  v3 = 0x6E65697069636572;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x6163696669746F6ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D697465746164;
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

uint64_t sub_2141CDC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214373294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141CDCB4(uint64_t a1)
{
  v2 = sub_214302BDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141CDCF0(uint64_t a1)
{
  v2 = sub_214302BDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141CDD2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = *(*(v62 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v62);
  v59 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v60 = &v49 - v6;
  v7 = sub_2146D8B08();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908FC0, &qword_2146F5520);
  v63 = *(v11 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  v15 = type metadata accessor for IMDispositionNotification();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v19 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_214302BDC();
  v21 = v64;
  sub_2146DAA08();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v55 = v15;
  v56 = v18;
  v57 = v10;
  v22 = v61;
  v64 = v7;
  LOBYTE(v67) = 0;
  v53 = sub_2146DA168();
  v54 = v23;
  LOBYTE(v67) = 1;
  sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578]);
  v24 = v64;
  sub_2146DA1C8();
  LOBYTE(v67) = 2;
  sub_2142E27A8();
  sub_2146DA1C8();
  LOBYTE(v67) = 3;
  sub_2146DA1C8();
  v25 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908FD0, &qword_2146F5528);
  LOBYTE(v66[0]) = 4;
  sub_214302C30();
  sub_2146DA1C8();
  v27 = v67;
  v28 = v55;
  v29 = v56;
  (*(v25 + 16))(&v56[v55[5]], v57, v24);
  sub_213FB2E54(v60, v29 + v28[6], &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v59, v29 + v28[7], &unk_27C9131A0, &unk_2146E9D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2140676DC;
  *(v31 + 24) = 0;
  *(inited + 32) = v31;
  sub_214042B80(inited, &v67);
  v32 = v69;
  v33 = v68;
  *v29 = v67;
  *(v29 + 16) = v33;
  *(v29 + 32) = v32;
  *(v29 + v28[8]) = v27;
  v34 = *v29;
  v35 = *(v29 + 8);
  v36 = *(v29 + 24);
  v50 = *(v29 + 16);
  v37 = *(v29 + 32);
  v66[0] = v53;
  v66[1] = v54;
  v70 = v37;
  *&v67 = 0xD000000000000023;
  *(&v67 + 1) = 0x80000002147900A0;
  v52 = 0x80000002147900A0;
  *&v68 = 0xD00000000000001CLL;
  *(&v68 + 1) = 0x800000021478A360;
  v51 = 0x800000021478A360;
  v55 = v36;

  v62 = v34;
  v38 = v34(v66, &v70, &v67);
  v39 = v51;
  v40 = v52;
  if (v38)
  {

    sub_213FB2DF4(v59, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v60, &unk_27C9131A0, &unk_2146E9D10);
    (*(v25 + 8))(v57, v64);
    (*(v63 + 8))(v14, v11);
    v41 = *(v29 + 8);
    v42 = *(v29 + 24);

    *v29 = v62;
    *(v29 + 8) = v35;
    v43 = v54;
    *(v29 + 16) = v53;
    *(v29 + 24) = v43;
    *(v29 + 32) = v37;
    sub_214328704(v29, v58, type metadata accessor for IMDispositionNotification);
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  LODWORD(v58) = v37;
  sub_214031C4C();
  swift_allocError();
  *v44 = 0xD000000000000023;
  v44[1] = v40;
  v44[2] = 0xD00000000000001CLL;
  v44[3] = v39;
  swift_willThrow();

  sub_213FB2DF4(v59, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v60, &unk_27C9131A0, &unk_2146E9D10);
  (*(v25 + 8))(v57, v64);
  (*(v63 + 8))(v14, v11);
  v45 = v56;
  v46 = *(v56 + 1);
  v47 = *(v56 + 3);

  *v45 = v62;
  *(v45 + 8) = v35;
  v48 = v55;
  *(v45 + 16) = v50;
  *(v45 + 24) = v48;
  *(v45 + 32) = v58;
  __swift_destroy_boxed_opaque_existential_1(v65);
  return sub_21432887C(v45, type metadata accessor for IMDispositionNotification);
}

uint64_t sub_2141CE5EC(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908FE8, &qword_2146F5530);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214302BDC();
  sub_2146DAA28();
  if (*(v4 + 24))
  {
    v12 = *(v4 + 16);
    v24 = 0;

    sub_2146DA328();
    if (v3)
    {
      (*(v7 + 8))(v10, v6);
    }

    else
    {

      v14 = type metadata accessor for IMDispositionNotification();
      v15 = v14[5];
      v23 = 1;
      sub_2146D8B08();
      sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578]);
      sub_2146DA388();
      v16 = v14[6];
      v22 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      sub_2142E2910();
      sub_2146DA388();
      v17 = v14[7];
      v21 = 3;
      sub_2146DA388();
      v20 = *(v4 + v14[8]);
      v19 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908FD0, &qword_2146F5528);
      sub_214302D08();
      sub_2146DA388();
      return (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2141CE944@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, unint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v48 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2140676DC;
  *(v11 + 24) = 0;
  *(v10 + 32) = v11;
  sub_214042B80(v10, &v55);
  v12 = v55;
  v13 = v56;
  v14 = v58;
  v39 = v57;
  v15 = v59;
  sub_21453594C(&v76);
  v51 = v76;
  v83 = v77;
  v40 = v78;
  v53 = v79;
  v54 = v80;
  sub_214535C88(v74);
  v46 = v74[1];
  v47 = v74[0];
  v41 = v74[2];
  v42 = v74[3];
  v50 = v75;
  v76 = a1;
  v77 = a2;
  v45 = v15;
  LOBYTE(v74[0]) = v15;
  v55 = 0xD000000000000012;
  v56 = 0x80000002147900D0;
  v57 = 0xD00000000000001CLL;
  v58 = 0x800000021478A360;

  v16 = v43;
  v44 = v12;
  v17 = v12(&v76, v74, &v55);
  if (v16)
  {

    v18 = v50;
    v19 = v51;
    v20 = v13;
LABEL_6:

    v24 = v39;
    v25 = v40;
    v26 = v46;
    v22 = v47;
    v27 = v42;
    v28 = v53;
LABEL_7:
    v55 = v44;
    v56 = v20;
    v57 = v24;
    v58 = v14;
    v59 = v45;
    v60 = v48;
    v61 = *&v81[7];
    v62 = v82;
    v63 = v19;
    v64 = v83;
    v65 = v25;
    v66 = v28;
    v67 = v54;
    *v68 = *v81;
    *&v68[3] = *&v81[3];
    v69 = v22;
    v70 = v26;
    v71 = v41;
    v72 = v27;
    v73 = v18;
    return sub_214302DE0(&v55);
  }

  v35 = a1;
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000012;
    v23[1] = 0x80000002147900D0;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    v18 = v50;
    v19 = v51;
    v20 = v13;
    goto LABEL_6;
  }

  v20 = v13;

  v76 = a4;
  v77 = a5;
  LOBYTE(v74[0]) = v54;
  v55 = 0xD000000000000016;
  v56 = 0x80000002147900F0;
  v57 = 0xD00000000000001CLL;
  v58 = 0x800000021478A360;

  v21 = v51(&v76, v74, &v55);
  v19 = v51;
  v22 = v47;
  v26 = v46;
  v27 = v42;
  if ((v21 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000016;
    v31[1] = 0x80000002147900F0;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    v14 = a2;
    v18 = v50;
    v28 = v53;

    v24 = v35;
    v25 = v40;
    goto LABEL_7;
  }

  v76 = a6;
  v77 = a7;
  LOBYTE(v74[0]) = v50;
  v55 = 0xD000000000000014;
  v56 = 0x8000000214790110;
  v57 = 0xD00000000000001CLL;
  v58 = 0x800000021478A360;

  v30 = v47(&v76, v74, &v55);
  v32 = a2;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD000000000000014;
    v34[1] = 0x8000000214790110;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = 0x800000021478A360;
    swift_willThrow();

    v18 = v50;

    v14 = v32;
    v25 = a4;
    v19 = v51;
    v28 = a5;
    v24 = v35;
    goto LABEL_7;
  }

  result = swift_bridgeObjectRelease_n();
  *a8 = v44;
  *(a8 + 8) = v13;
  *(a8 + 16) = v35;
  *(a8 + 24) = a2;
  *(a8 + 32) = v45;
  *(a8 + 33) = v48;
  v33 = v83;
  *(a8 + 40) = v51;
  *(a8 + 48) = v33;
  *(a8 + 56) = a4;
  *(a8 + 64) = a5;
  *(a8 + 72) = v54;
  *(a8 + 80) = v47;
  *(a8 + 88) = v46;
  *(a8 + 96) = a6;
  *(a8 + 104) = a7;
  *(a8 + 112) = v50;
  return result;
}

uint64_t sub_2141CEF5C()
{
  v1 = 0x496567617373656DLL;
  v2 = 0x534952556D6F7266;
  if (*v0 != 2)
  {
    v2 = 0x7274534952556F74;
  }

  if (*v0)
  {
    v1 = 0x746C75736572;
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

uint64_t sub_2141CEFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437345C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141CF014(uint64_t a1)
{
  v2 = sub_214302E34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141CF050(uint64_t a1)
{
  v2 = sub_214302E34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141CF08C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909000, &qword_2146F5538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v104 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214302E34();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v104);
  }

  v12 = v6;
  LOBYTE(v77) = 0;
  v13 = sub_2146DA168();
  v15 = v14;
  v68 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909010, &qword_2146F5540);
  LOBYTE(v69) = 1;
  sub_214302E88();
  sub_2146DA1C8();
  v16 = v77;
  LOBYTE(v77) = 2;
  v18 = sub_2146DA168();
  v67 = v19;
  v66 = v16;
  v100 = 3;
  v47 = sub_2146DA168();
  v49 = v18;
  v61 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2140676DC;
  *(v22 + 24) = 0;
  *(v21 + 32) = v22;
  sub_214042B80(v21, &v77);
  v65 = v77;
  v50 = v78;
  v64 = v79;
  LODWORD(v21) = v80;
  sub_21453594C(&v69);
  v59 = v69;
  v51 = v70;
  v62 = *(&v69 + 1);
  v63 = *(&v70 + 1);
  v60 = v71;
  sub_214535C88(&v95);
  v58 = v96;
  v52 = v97;
  v56 = v95;
  v57 = v98;
  v54 = v21;
  v55 = v99;
  *&v69 = v68;
  *(&v69 + 1) = v15;
  LOBYTE(v95) = v21;
  v48 = 0xD000000000000012;
  *&v77 = 0xD000000000000012;
  *(&v77 + 1) = 0x80000002147900D0;
  v53 = 0x80000002147900D0;
  v78 = 0xD00000000000001CLL;
  v79 = 0x800000021478A360;

  v23 = (v65)(&v69, &v95, &v77);
  v24 = v53;
  if ((v23 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = v48;
    v27[1] = v24;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v64;
    v29 = *(&v65 + 1);
    v61 = *(&v65 + 1);
    v68 = v50;
LABEL_8:
    v30 = v51;
    goto LABEL_9;
  }

  v50 = 0;

  *&v69 = v49;
  *(&v69 + 1) = v67;
  LOBYTE(v95) = v60;
  *&v77 = 0xD000000000000016;
  *(&v77 + 1) = 0x80000002147900F0;
  v64 = 0x80000002147900F0;
  v78 = 0xD00000000000001CLL;
  v79 = 0x800000021478A360;

  v25 = v50;
  v26 = v59(&v69, &v95, &v77);
  if (v25)
  {

LABEL_14:

    v61 = v62;
    v28 = v15;
    v29 = *(&v65 + 1);
    goto LABEL_8;
  }

  if ((v26 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    v32 = v64;
    *v33 = 0xD000000000000016;
    v33[1] = v32;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_14;
  }

  v95 = v47;
  v96 = v61;
  LOBYTE(v69) = v55;
  v63 = 0xD000000000000014;
  v64 = 0x800000021478A360;
  *&v77 = 0xD000000000000014;
  *(&v77 + 1) = 0x8000000214790110;
  v78 = 0xD00000000000001CLL;
  v79 = 0x800000021478A360;

  v31 = v56(&v95, &v69, &v77);
  v34 = v64;
  if (v31)
  {

    (*(v12 + 8))(v9, v5);

    v35 = v58;

    v69 = v65;
    v36 = v68;
    *&v70 = v68;
    *(&v70 + 1) = v15;
    LOBYTE(v71) = v54;
    BYTE1(v71) = v66;
    *(&v71 + 2) = v102;
    WORD3(v71) = v103;
    *(&v71 + 1) = v59;
    *&v72 = v62;
    v37 = v49;
    *(&v72 + 1) = v49;
    *&v73 = v67;
    BYTE8(v73) = v60;
    *(&v73 + 9) = *v101;
    HIDWORD(v73) = *&v101[3];
    *&v74 = v56;
    *(&v74 + 1) = v35;
    *&v75 = v47;
    *(&v75 + 1) = v61;
    v38 = v55;
    v76 = v55;
    v39 = v73;
    v40 = v74;
    v41 = v75;
    *(a2 + 112) = v55;
    *(a2 + 80) = v40;
    *(a2 + 96) = v41;
    v42 = v69;
    v43 = v70;
    v44 = v71;
    *(a2 + 48) = v72;
    *(a2 + 64) = v39;
    *(a2 + 16) = v43;
    *(a2 + 32) = v44;
    *a2 = v42;
    sub_214302F60(&v69, &v77);
    __swift_destroy_boxed_opaque_existential_1(v104);
    v77 = v65;
    v78 = v36;
    v79 = v15;
    v80 = v54;
    v81 = v66;
    v82 = v102;
    v83 = v103;
    v84 = v59;
    v85 = v62;
    v86 = v37;
    v87 = v67;
    v88 = v60;
    *v89 = *v101;
    *&v89[3] = *&v101[3];
    v90 = v56;
    v91 = v35;
    v92 = v47;
    v93 = v61;
    v94 = v38;
    return sub_214302DE0(&v77);
  }

  sub_214031C4C();
  swift_allocError();
  *v45 = v63;
  v45[1] = 0x8000000214790110;
  v45[2] = 0xD00000000000001CLL;
  v45[3] = v34;
  swift_willThrow();

  v61 = v58;
  v28 = v15;
  v30 = v49;
  v63 = v67;
  v29 = *(&v65 + 1);
LABEL_9:
  (*(v12 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(v104);
  *&v77 = v65;
  *(&v77 + 1) = v29;
  v78 = v68;
  v79 = v28;
  v80 = v54;
  v81 = v66;
  v82 = v102;
  v83 = v103;
  v84 = v59;
  v85 = v62;
  v86 = v30;
  v87 = v63;
  v88 = v60;
  *v89 = *v101;
  *&v89[3] = *&v101[3];
  v90 = v56;
  v91 = v58;
  v92 = v52;
  v93 = v57;
  v94 = v55;
  return sub_214302DE0(&v77);
}

uint64_t sub_2141CF974(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909028, &qword_2146F5548);
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v18 = *(v1 + 33);
  v10 = *(v1 + 64);
  v16 = *(v1 + 56);
  v17 = v10;
  v11 = *(v1 + 104);
  v14 = *(v1 + 96);
  v15 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214302E34();
  sub_2146DAA28();
  if (v9)
  {
    v24 = 0;

    sub_2146DA328();
    if (v2)
    {
LABEL_3:
      (*(v19 + 8))(v7, v4);
    }

    v23 = v18;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909010, &qword_2146F5540);
    sub_214302FBC();
    sub_2146DA388();
    if (v17)
    {
      v21 = 2;

      sub_2146DA328();

      if (v15)
      {
        v20 = 3;

        sub_2146DA328();
        goto LABEL_3;
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 sub_2141CFC80@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v17 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[2] = sub_213FDC8D0;
  v8[3] = 0;
  v8[4] = 1;
  v8[5] = sub_21403C354;
  v8[6] = 0;
  *(v7 + 16) = sub_21438F670;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042CD0(inited, &v14);
  v9 = v15;

  sub_213FDCA18(v9.n128_i64[0], v9.n128_u64[1]);
  sub_214032024(a1, a2, 2, 0xD00000000000001DLL, 0x8000000214790130, 0xD00000000000001CLL, 0x800000021478A360);

  sub_213FDC6BC(v9.n128_i64[0], v9.n128_u64[1]);
  sub_213FB54FC(a1, a2);

  if (v3)
  {
    v10 = v15;

    sub_213FDC6BC(v10.n128_i64[0], v10.n128_u64[1]);
  }

  else
  {
    v12 = v16;
    result = v15;
    v13 = v17;
    *v17 = v14;
    v13[1] = result;
    v13[2].n128_u8[0] = v12;
  }

  return result;
}

uint64_t sub_2141CFE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F666E49656C6966 && a2 == 0xED00006F746F7250)
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

uint64_t sub_2141CFF24(uint64_t a1)
{
  v2 = sub_214303094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141CFF60(uint64_t a1)
{
  v2 = sub_214303094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141CFF9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909040, &qword_2146F5550);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303094();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21406116C();
    sub_2146DA1C8();
    v21[0] = a2;
    v12 = *(&v24 + 1);
    v27 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146E9BF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
    v14 = swift_allocObject();
    v15 = swift_allocObject();
    v15[2] = sub_213FDC8D0;
    v15[3] = 0;
    v15[4] = 1;
    v15[5] = sub_21403C354;
    v15[6] = 0;
    *(v14 + 16) = sub_21438F670;
    *(v14 + 24) = v15;
    *(inited + 32) = v14;
    sub_214042CD0(inited, &v24);
    v16 = v25;
    v22 = *(&v25 + 1);
    v23 = v25;
    v21[1] = "IMRevoke.toURIString";
    v21[2] = *(&v24 + 1);

    sub_213FDCA18(v16, *(&v16 + 1));
    v17 = v27;
    sub_214032024(v27, v12, 2, 0xD00000000000001DLL, 0x8000000214790130, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v17, v12);
    (*(v6 + 8))(v9, v5);

    sub_213FDC6BC(v23, v22);
    v18 = v26;
    v19 = v25;
    v20 = v21[0];
    *v21[0] = v24;
    *(v20 + 16) = v19;
    *(v20 + 32) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_2141D034C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(a2 + 42) = result;
  return result;
}

uint64_t sub_2141D0388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49)
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

uint64_t sub_2141D0414(uint64_t a1)
{
  v2 = sub_2143030E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D0450(uint64_t a1)
{
  v2 = sub_2143030E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D048C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909058, &qword_2146F5560);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143030E8();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21430313C();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
    a2[2] = v14[0];
    *(a2 + 42) = *(v14 + 10);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D060C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909070, &qword_2146F5568);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = v1[1];
  v16 = *v1;
  v17 = v8;
  v18[0] = v1[2];
  *(v18 + 10) = *(v1 + 42);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303190(&v16, &v13);
  sub_2143030E8();
  sub_2146DAA28();
  v13 = v16;
  v14 = v17;
  v15[0] = v18[0];
  *(v15 + 10) = *(v18 + 10);
  sub_2143031EC();
  sub_2146DA388();
  v11[0] = v13;
  v11[1] = v14;
  v12[0] = v15[0];
  *(v12 + 10) = *(v15 + 10);
  sub_214303240(v11);
  return (*(v4 + 8))(v7, v3);
}

__n128 sub_2141D07F4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(a2 + 42) = result;
  return result;
}

uint64_t sub_2141D0828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x766972506F6567 && a2 == 0xE700000000000000)
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

uint64_t sub_2141D08B0(uint64_t a1)
{
  v2 = sub_214303294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D08EC(uint64_t a1)
{
  v2 = sub_214303294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D0928@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909080, &qword_2146F5570);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303294();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2143032E8();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
    a2[2] = v14[0];
    *(a2 + 42) = *(v14 + 10);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D0AA8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909098, &qword_2146F5578);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = v1[1];
  v16 = *v1;
  v17 = v8;
  v18[0] = v1[2];
  *(v18 + 10) = *(v1 + 42);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430333C(&v16, &v13);
  sub_214303294();
  sub_2146DAA28();
  v13 = v16;
  v14 = v17;
  v15[0] = v18[0];
  *(v15 + 10) = *(v18 + 10);
  sub_214303398();
  sub_2146DA388();
  v11[0] = v13;
  v11[1] = v14;
  v12[0] = v15[0];
  *(v12 + 10) = *(v15 + 10);
  sub_2143033EC(v11);
  return (*(v4 + 8))(v7, v3);
}

__n128 RCSEnvelope.init(with:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 42);
  *(a2 + 42) = result;
  return result;
}

uint64_t sub_2141D0CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x61636F4C68737570 && a2 == 0xEC0000006E6F6974)
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

uint64_t sub_2141D0D58(uint64_t a1)
{
  v2 = sub_214303440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D0D94(uint64_t a1)
{
  v2 = sub_214303440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RCSEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9090A8, &qword_2146F5580);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303440();
  sub_2146DAA08();
  if (!v2)
  {
    sub_214303494();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
    a2[2] = v14[0];
    *(a2 + 42) = *(v14 + 10);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RCSEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9090C0, &qword_2146F5588);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = v1[1];
  v16 = *v1;
  v17 = v8;
  v18[0] = v1[2];
  *(v18 + 10) = *(v1 + 42);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143034E8(&v16, &v13);
  sub_214303440();
  sub_2146DAA28();
  v13 = v16;
  v14 = v17;
  v15[0] = v18[0];
  *(v15 + 10) = *(v18 + 10);
  sub_214303544();
  sub_2146DA388();
  v11[0] = v13;
  v11[1] = v14;
  v12[0] = v15[0];
  *(v12 + 10) = *(v15 + 10);
  sub_214303598(v11);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2141D1138@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *a3;
  sub_21408AC04(a1, a4, &qword_27C9090D0, &qword_2146F5590);
  result = type metadata accessor for SIPConferenceInfo(0);
  v9 = (a4 + *(result + 20));
  *v9 = v5;
  v9[1] = v6;
  *(a4 + *(result + 24)) = v7;
  return result;
}

uint64_t sub_2141D11AC()
{
  v1 = 0x7372657375;
  if (*v0 != 1)
  {
    v1 = 0x6574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7470697263736564;
  }
}

uint64_t sub_2141D1208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143735D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141D1230(uint64_t a1)
{
  v2 = sub_2143035EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D126C(uint64_t a1)
{
  v2 = sub_2143035EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D12A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9090D0, &qword_2146F5590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9090D8, &qword_2146F5598);
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143035EC();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v22;
    LOBYTE(v24) = 0;
    sub_214303640();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9090F8, &qword_2146F55A0);
    v26 = 1;
    sub_2143036F4();
    sub_2146DA1C8();
    v16 = v25;
    v21 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909110, &qword_2146F55A8);
    v26 = 2;
    sub_2143037CC();
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v23);
    v17 = v24;
    sub_21408AC04(v7, v14, &qword_27C9090D0, &qword_2146F5590);
    v18 = type metadata accessor for SIPConferenceInfo(0);
    v19 = (v14 + *(v18 + 20));
    *v19 = v21;
    v19[1] = v16;
    *(v14 + *(v18 + 24)) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D15C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909128, &qword_2146F55B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143035EC();
  sub_2146DAA28();
  LOBYTE(v17) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9090D0, &qword_2146F5590);
  sub_2143038A4();
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for SIPConferenceInfo(0);
    v12 = (v3 + *(v11 + 20));
    v13 = v12[1];
    v17 = *v12;
    v18 = v13;
    v16 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9090F8, &qword_2146F55A0);
    sub_214303958();
    sub_2146DA388();

    LOBYTE(v17) = *(v3 + *(v11 + 24));
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909110, &qword_2146F55A8);
    sub_214303A30();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2141D1830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737473696CLL && a2 == 0xE500000000000000)
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

uint64_t sub_2141D18B4(uint64_t a1)
{
  v2 = sub_214303B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D18F0(uint64_t a1)
{
  v2 = sub_214303B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D192C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909160, &qword_2146F55B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303B08();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909170, &qword_2146F55C0);
    sub_214303B5C();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D1AAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909188, &qword_2146F55C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303B08();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909170, &qword_2146F55C0);
  sub_214303C34();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

__n128 sub_2141D1C50@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v17 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[2] = sub_213FDC8D0;
  v8[3] = 0;
  v8[4] = 1;
  v8[5] = sub_21403C354;
  v8[6] = 0;
  *(v7 + 16) = sub_21438F670;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042CD0(inited, &v14);
  v9 = v15;

  sub_213FDCA18(v9.n128_i64[0], v9.n128_u64[1]);
  sub_214032024(a1, a2, 2, 0xD000000000000018, 0x8000000214790150, 0xD00000000000001CLL, 0x800000021478A360);

  sub_213FDC6BC(v9.n128_i64[0], v9.n128_u64[1]);
  sub_213FB54FC(a1, a2);

  if (v3)
  {
    v10 = v15;

    sub_213FDC6BC(v10.n128_i64[0], v10.n128_u64[1]);
  }

  else
  {
    v12 = v16;
    result = v15;
    v13 = v17;
    *v17 = v14;
    v13[1] = result;
    v13[2].n128_u8[0] = v12;
  }

  return result;
}

uint64_t sub_2141D1E40(uint64_t a1)
{
  v2 = sub_214303D0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D1E7C(uint64_t a1)
{
  v2 = sub_214303D0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D1EB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9091A0, &qword_2146F55D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303D0C();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21406116C();
    sub_2146DA1C8();
    v21[0] = a2;
    v12 = *(&v24 + 1);
    v27 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146E9BF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
    v14 = swift_allocObject();
    v15 = swift_allocObject();
    v15[2] = sub_213FDC8D0;
    v15[3] = 0;
    v15[4] = 1;
    v15[5] = sub_21403C354;
    v15[6] = 0;
    *(v14 + 16) = sub_21438F670;
    *(v14 + 24) = v15;
    *(inited + 32) = v14;
    sub_214042CD0(inited, &v24);
    v16 = v25;
    v22 = *(&v25 + 1);
    v23 = v25;
    v21[1] = "MLSFileTransfer.fileInfoProto";
    v21[2] = *(&v24 + 1);

    sub_213FDCA18(v16, *(&v16 + 1));
    v17 = v27;
    sub_214032024(v27, v12, 2, 0xD000000000000018, 0x8000000214790150, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v17, v12);
    (*(v6 + 8))(v9, v5);

    sub_213FDC6BC(v23, v22);
    v18 = v26;
    v19 = v25;
    v20 = v21[0];
    *v21[0] = v24;
    *(v20 + 16) = v19;
    *(v20 + 32) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *sub_2141D2268@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2141D22A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000214795B80 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000214795BA0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2141D238C(uint64_t a1)
{
  v2 = sub_214303DA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D23C8(uint64_t a1)
{
  v2 = sub_214303DA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D2404@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9091B8, &qword_2146F55E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303DA8();
  sub_2146DAA08();
  if (!v2)
  {
    v15 = 0;
    sub_214303DFC();
    sub_2146DA1C8();
    v11 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9091D0, &qword_2146F55E8);
    v15 = 1;
    sub_214303E50();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D25F8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9091E8, &qword_2146F55F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214303DA8();

  sub_2146DAA28();
  v14 = v9;
  v13 = 0;
  sub_214303F04();
  sub_2146DA388();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9091D0, &qword_2146F55E8);
    sub_214303F58();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2141D2848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000214795BC0 == a2)
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

uint64_t sub_2141D28DC(uint64_t a1)
{
  v2 = sub_21430400C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D2918(uint64_t a1)
{
  v2 = sub_21430400C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D2954@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for IMS3GPPCharacteristic();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909208, &qword_2146F55F8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430400C();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v17;
    sub_214328930(&qword_27C909218, type metadata accessor for IMS3GPPCharacteristic);
    v14 = v18;
    sub_2146DA1C8();
    (*(v8 + 8))(v11, v7);
    sub_214328704(v14, v13, type metadata accessor for IMS3GPPCharacteristic);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D2B60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909220, &unk_2146F5600);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430400C();
  sub_2146DAA28();
  type metadata accessor for IMS3GPPCharacteristic();
  sub_214328930(&qword_27C909228, type metadata accessor for IMS3GPPCharacteristic);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2141D2CF0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909220, &unk_2146F5600);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430400C();
  sub_2146DAA28();
  type metadata accessor for IMS3GPPCharacteristic();
  sub_214328930(&qword_27C909228, type metadata accessor for IMS3GPPCharacteristic);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

__n128 sub_2141D2E68@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = *a3;
  *(a6 + 32) = v9;
  *(a6 + 40) = v10;
  v11 = type metadata accessor for GSMARCSApplicationCharacteristic(0);
  sub_21408AC04(a4, a6 + *(v11 + 24), &qword_27C909230, &unk_214747860);
  v12 = a6 + *(v11 + 28);
  v13 = *(a5 + 112);
  *(v12 + 96) = *(a5 + 96);
  *(v12 + 112) = v13;
  *(v12 + 128) = *(a5 + 128);
  v14 = *(a5 + 48);
  *(v12 + 32) = *(a5 + 32);
  *(v12 + 48) = v14;
  v15 = *(a5 + 80);
  *(v12 + 64) = *(a5 + 64);
  *(v12 + 80) = v15;
  result = *(a5 + 16);
  *v12 = *a5;
  *(v12 + 16) = result;
  return result;
}

unint64_t sub_2141D2F20()
{
  v1 = 0x6665527070416F74;
  v2 = 0xD00000000000001ALL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_2141D2FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143736E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141D2FD0(uint64_t a1)
{
  v2 = sub_214304060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D300C(uint64_t a1)
{
  v2 = sub_214304060();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D3048@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909230, &unk_214747860);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909238, &qword_2146F5610);
  v35 = *(v37 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v10 = &v29 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304060();
  v57 = v10;
  sub_2146DAA08();
  if (v2)
  {
    v28 = a1;
  }

  else
  {
    v34 = a1;
    v12 = v35;
    v13 = v36;
    LOBYTE(v48) = 0;
    v14 = v37;
    v32 = sub_2146DA168();
    v33 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909248, &qword_2146F5618);
    LOBYTE(v38) = 1;
    sub_2143040B4();
    sub_2146DA1C8();
    v16 = v12;
    v30 = v48;
    v17 = v49;
    v31 = WORD4(v49);
    LOBYTE(v48) = 2;
    sub_21430418C();
    sub_2146DA1C8();
    v18 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909270, &qword_2146F5620);
    v47 = 3;
    sub_214304240();
    sub_2146DA1C8();
    (*(v16 + 8))(v57, v14);
    v44 = v54;
    v45 = v55;
    v46 = v56;
    v40 = v50;
    v41 = v51;
    v42 = v52;
    v43 = v53;
    v38 = v48;
    v39 = v49;
    v20 = type metadata accessor for GSMARCSApplicationCharacteristic(0);
    sub_21408AC04(v7, v13 + *(v20 + 24), &qword_27C909230, &unk_214747860);
    v21 = v33;
    *v13 = v32;
    *(v13 + 8) = v21;
    v22 = *(&v30 + 1);
    *(v13 + 16) = v18;
    *(v13 + 24) = v22;
    *(v13 + 32) = v17;
    *(v13 + 40) = v31;
    v23 = v13 + *(v20 + 28);
    v24 = v45;
    *(v23 + 96) = v44;
    *(v23 + 112) = v24;
    *(v23 + 128) = v46;
    v25 = v41;
    *(v23 + 32) = v40;
    *(v23 + 48) = v25;
    v26 = v43;
    *(v23 + 64) = v42;
    *(v23 + 80) = v26;
    v27 = v39;
    *v23 = v38;
    *(v23 + 16) = v27;
    v28 = v34;
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_2141D346C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909288, &qword_2146F5628);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304060();
  sub_2146DAA28();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v39) = 0;
  sub_2146DA328();
  if (!v2)
  {
    v13 = v3[3];
    v14 = v3[4];
    v15 = *(v3 + 20);
    *&v39 = v3[2];
    *(&v39 + 1) = v13;
    *&v40 = v14;
    WORD4(v40) = v15;
    LOBYTE(v30) = 1;
    sub_213FDC9D0(v39, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909248, &qword_2146F5618);
    sub_214304318();
    sub_2146DA388();
    sub_213FDC6D0(v39, *(&v39 + 1));
    v16 = type metadata accessor for GSMARCSApplicationCharacteristic(0);
    v17 = *(v16 + 24);
    v49 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909230, &unk_214747860);
    sub_2143043F0();
    sub_2146DA388();
    v18 = (v3 + *(v16 + 28));
    v19 = v18[5];
    v20 = v18[7];
    v45 = v18[6];
    v46 = v20;
    v21 = v18[1];
    v22 = v18[3];
    v41 = v18[2];
    v42 = v22;
    v23 = v18[3];
    v24 = v18[5];
    v43 = v18[4];
    v44 = v24;
    v25 = v18[1];
    v39 = *v18;
    v40 = v25;
    v26 = v18[7];
    v36 = v45;
    v37 = v26;
    v32 = v41;
    v33 = v23;
    v34 = v43;
    v35 = v19;
    v47 = *(v18 + 32);
    v38 = *(v18 + 32);
    v30 = v39;
    v31 = v21;
    v48 = 3;
    sub_213FB2E54(&v39, v28, &qword_27C909270, &qword_2146F5620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909270, &qword_2146F5620);
    sub_2143044A4();
    sub_2146DA388();
    v28[6] = v36;
    v28[7] = v37;
    v29 = v38;
    v28[2] = v32;
    v28[3] = v33;
    v28[4] = v34;
    v28[5] = v35;
    v28[0] = v30;
    v28[1] = v31;
    sub_213FB2DF4(v28, &qword_27C909270, &qword_2146F5620);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2141D37F0@<X0>(char a1@<W0>, uint64_t (*a2)(void, void, void)@<X1>, char a3@<W2>, uint64_t (*a4)(void, void, void)@<X3>, char a5@<W4>, uint64_t (*a6)(void, void, void)@<X5>, char a7@<W6>, uint64_t (*a8)(void, void, void)@<X7>, uint64_t a9@<X8>, char a10, char *a11)
{
  v65 = *a11;
  sub_21461FC88(&v74);
  v14 = v74;
  v13 = v75;
  v52 = v76;
  v71 = v77;
  v15 = BYTE1(v77);
  v16 = BYTE2(v77);
  sub_21461FCC4(&v114);
  v72 = v114;
  v133 = v115;
  v53 = v116;
  v58 = v117;
  v17 = v118;
  v73 = v119;
  sub_21461FD00(v110);
  v67 = v110[0];
  v70 = v110[1];
  v54 = v110[2];
  v66 = v111;
  v18 = v112;
  v68 = v113;
  sub_21461FD3C(v106);
  v63 = v106[0];
  v69 = v106[1];
  v57 = v106[2];
  v64 = v109;
  v123 = v15;
  v122 = v17;
  v121 = v18;
  v120 = v108;
  v127 = v18;
  v55 = v108;
  v56 = v107;
  v124 = v108;
  v114 = a2;
  LOBYTE(v115) = a3 & 1;
  v61 = v16;
  LOBYTE(v110[0]) = v16;
  v74 = 0xD000000000000028;
  v75 = 0x8000000214790170;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v19 = v13;
  v20 = v59;
  v60 = v14;
  v21 = v14(&v114, v110, &v74);
  if (v20)
  {

LABEL_6:
    v24 = v63;
    v25 = v68;
    v26 = v66;

    v27 = v52;
    v28 = v53;
    v29 = v64;
    v30 = v67;
    v31 = v58;
    v32 = v55;
    v33 = v54;
LABEL_7:
    LOBYTE(v74) = a1;
    *(&v74 + 1) = v132[0];
    HIDWORD(v74) = *(v132 + 3);
    v75 = v60;
    v76 = v19;
    v77 = v27;
    v78 = v71;
    v79 = v123;
    v80 = v61;
    v81 = v130;
    v82 = v131;
    v83 = v72;
    v84 = v133;
    v85 = v28;
    v86 = v31;
    v87 = v122;
    v88 = v73;
    v89 = v128;
    v90 = v129;
    v91 = v30;
    v92 = v70;
    v93 = v33;
    v94 = v26;
    v95 = v127;
    v96 = v25;
    v97 = v125;
    v98 = v126;
    v99 = v24;
    v100 = v69;
    v101 = v57;
    v102 = v56;
    v103 = v32;
    v104 = v29;
    v105 = v65;
    return sub_21430457C(&v74);
  }

  v44 = v18;
  v45 = a2;
  if ((v21 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000028;
    v23[1] = 0x8000000214790170;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v71 = a3 & 1;

  v123 = 0;
  v114 = a4;
  LOBYTE(v115) = a5 & 1;
  LOBYTE(v110[0]) = v73;
  v74 = 0xD00000000000002BLL;
  v75 = 0x80000002147901A0;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v22 = v72(&v114, v110, &v74);
  v25 = v68;
  v30 = v67;
  v31 = v58;
  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD00000000000002BLL;
    v36[1] = 0x80000002147901A0;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();
    v24 = v63;

    v29 = v64;
    v27 = v45;
    v32 = v55;
    v28 = v53;
    v33 = v54;
    v26 = v66;
    goto LABEL_7;
  }

  v31 = a5 & 1;

  v122 = 0;
  v114 = a6;
  LOBYTE(v115) = a7 & 1;
  LOBYTE(v110[0]) = v68;
  v74 = 0xD000000000000038;
  v75 = 0x80000002147901D0;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v35 = v67(&v114, v110, &v74);
  if ((v35 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD000000000000038;
    v38[1] = 0x80000002147901D0;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = 0x800000021478A360;
    swift_willThrow();
    v24 = v63;

    v127 = v44;
    v28 = a4;
    v29 = v64;
    v27 = v45;
    v32 = v55;
    v33 = v54;
LABEL_14:
    v26 = v66;
    goto LABEL_7;
  }

  v66 = a7 & 1;

  v127 = 0;
  v114 = a8;
  LOBYTE(v115) = a10 & 1;
  v29 = v64;
  LOBYTE(v110[0]) = v64;
  v74 = 0xD00000000000002ELL;
  v75 = 0x8000000214790210;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v37 = v63(&v114, v110, &v74);
  v24 = v63;
  v30 = v67;
  if ((v37 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD00000000000002ELL;
    v43[1] = 0x8000000214790210;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();
    v25 = v68;
    v33 = a6;

    v32 = v55;
    v124 = v55;
    v28 = a4;
    v27 = v45;
    goto LABEL_14;
  }

  v124 = 0;
  v39 = v123;
  v40 = v122;
  v41 = v127;
  *a9 = a1;
  *(a9 + 1) = v132[0];
  *(a9 + 4) = *(v132 + 3);
  *(a9 + 8) = v60;
  *(a9 + 16) = v19;
  *(a9 + 24) = v45;
  *(a9 + 32) = v71;
  *(a9 + 33) = v39;
  *(a9 + 34) = v61;
  v42 = v130;
  *(a9 + 39) = v131;
  *(a9 + 35) = v42;
  *(a9 + 40) = v72;
  *(a9 + 48) = v133;
  *(a9 + 56) = a4;
  *(a9 + 64) = v31;
  *(a9 + 65) = v40;
  *(a9 + 66) = v73;
  *(a9 + 71) = v129;
  *(a9 + 67) = v128;
  *(a9 + 72) = v67;
  *(a9 + 80) = v70;
  *(a9 + 88) = a6;
  *(a9 + 96) = v66;
  *(a9 + 97) = v41;
  *(a9 + 98) = v68;
  *(a9 + 99) = v125;
  *(a9 + 103) = v126;
  *(a9 + 104) = v63;
  *(a9 + 112) = v69;
  *(a9 + 120) = a8;
  *(a9 + 128) = a10 & 1;
  *(a9 + 129) = 0;
  *(a9 + 130) = v64;
  *(a9 + 131) = v65;
  return result;
}

unint64_t sub_2141D3FAC()
{
  v1 = *v0;
  v2 = 0x456F666E49706163;
  v3 = 0xD00000000000001DLL;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001DLL;
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

uint64_t sub_2141D408C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214373850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141D40B4(uint64_t a1)
{
  v2 = sub_2143045D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D40F0(uint64_t a1)
{
  v2 = sub_2143045D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D412C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9092C0, &qword_2146F5630);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v58 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143045D0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v93 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v94) = 0;
  sub_2142E1378();
  sub_2146DA1C8();
  v10 = v8;
  v92 = v5;
  v11 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v94) = 1;
  sub_2142E11FC();
  v12 = v4;
  sub_2146DA1C8();
  v91 = v11;
  v13 = v103;
  v14 = v104;
  LOBYTE(v94) = 2;
  sub_2146DA1C8();
  v90 = v14;
  v89 = v13;
  v16 = v103;
  v17 = v104;
  LOBYTE(v94) = 3;
  sub_2146DA1C8();
  v88 = v17;
  v87 = v16;
  v18 = v103;
  v19 = v104;
  LOBYTE(v94) = 4;
  sub_2146DA1C8();
  v85 = v19;
  v86 = v18;
  v20 = v103;
  v21 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9092D0, &qword_2146F5638);
  v149 = 5;
  sub_214304624();
  sub_2146DA1C8();
  v61 = v21;
  v60 = v20;
  v66 = v12;
  LOBYTE(v19) = v90;
  v79 = v150;
  sub_21461FC88(&v103);
  v22 = v104;
  v67 = v103;
  v63 = v105;
  v62 = v106;
  LOBYTE(v12) = BYTE1(v106);
  v23 = BYTE2(v106);
  sub_21461FCC4(&v94);
  v84 = *(&v94 + 1);
  v82 = v94;
  v76 = v95;
  v75 = BYTE8(v95);
  v24 = BYTE9(v95);
  v81 = BYTE10(v95);
  sub_21461FD00(&v139);
  v78 = v139;
  v80 = v140;
  v70 = v141;
  v69 = v142;
  LODWORD(v20) = v143;
  v77 = v144;
  sub_21461FD3C(v135);
  v72 = v135[0];
  v74 = v135[1];
  v65 = v135[2];
  v64 = v136;
  v73 = v138;
  v148 = v12;
  v147 = v24;
  v146 = v20;
  v145 = v137;
  v154 = v20;
  v71 = v137;
  v151 = v137;
  *&v94 = v89;
  BYTE8(v94) = v19;
  v68 = v23;
  LOBYTE(v139) = v23;
  v25 = v67;
  v103 = 0xD000000000000028;
  v104 = 0x8000000214790170;
  v105 = 0xD00000000000001CLL;
  v106 = 0x800000021478A360;

  v83 = v22;
  v26 = v25(&v94, &v139, &v103);
  HIDWORD(v58) = v20;
  v59 = 0x800000021478A360;
  if (v26)
  {
    v27 = v59;

    v148 = 0;
    *&v94 = v87;
    BYTE8(v94) = v88;
    LOBYTE(v139) = v81;
    v103 = 0xD00000000000002BLL;
    v104 = 0x80000002147901A0;
    v105 = 0xD00000000000001CLL;
    v106 = v27;

    v28 = v82(&v94, &v139, &v103);
    v36 = v79;
    if (v28)
    {
      v37 = v59;

      v147 = 0;
      *&v94 = v86;
      BYTE8(v94) = v85;
      LOBYTE(v139) = v77;
      v103 = 0xD000000000000038;
      v104 = 0x80000002147901D0;
      v105 = 0xD00000000000001CLL;
      v106 = v37;

      if (v78(&v94, &v139, &v103))
      {
        v40 = v59;

        v154 = 0;
        v139 = v60;
        LOBYTE(v140) = v61;
        LOBYTE(v94) = v73;
        v103 = 0xD00000000000002ELL;
        v104 = 0x8000000214790210;
        v105 = 0xD00000000000001CLL;
        v106 = v40;

        if (v72(&v139, &v94, &v103))
        {

          (*(v92 + 8))(v10, v66);
          v43 = v74;

          v151 = 0;
          LOBYTE(v94) = v91;
          *(&v94 + 1) = v159[0];
          DWORD1(v94) = *(v159 + 3);
          *(&v94 + 1) = v25;
          *&v95 = v83;
          *(&v95 + 1) = v89;
          LOBYTE(v96) = v90;
          LODWORD(v92) = v148;
          BYTE1(v96) = v148;
          BYTE2(v96) = v68;
          *(&v96 + 3) = v157;
          BYTE7(v96) = v158;
          *(&v96 + 1) = v82;
          *&v97 = v84;
          *(&v97 + 1) = v87;
          LOBYTE(v98) = v88;
          LODWORD(v76) = v147;
          BYTE1(v98) = v147;
          BYTE2(v98) = v81;
          *(&v98 + 3) = v155;
          BYTE7(v98) = v156;
          *(&v98 + 1) = v78;
          *&v99 = v80;
          *(&v99 + 1) = v86;
          LOBYTE(v100) = v85;
          v71 = v154;
          BYTE1(v100) = v154;
          v44 = v77;
          BYTE2(v100) = v77;
          *(&v100 + 3) = v152;
          BYTE7(v100) = v153;
          v45 = v72;
          *(&v100 + 1) = v72;
          *&v101 = v43;
          v46 = v60;
          *(&v101 + 1) = v60;
          LOWORD(v102) = v61;
          v75 = 0;
          v47 = v73;
          BYTE2(v102) = v73;
          HIBYTE(v102) = v36;
          v48 = v94;
          v49 = v95;
          v50 = v97;
          v51 = v160;
          *(v160 + 32) = v96;
          *(v51 + 48) = v50;
          *v51 = v48;
          *(v51 + 16) = v49;
          v52 = v98;
          v53 = v99;
          v54 = v100;
          v55 = v101;
          *(v51 + 128) = v102;
          *(v51 + 96) = v54;
          *(v51 + 112) = v55;
          *(v51 + 64) = v52;
          *(v51 + 80) = v53;
          sub_2143046FC(&v94, &v103);
          __swift_destroy_boxed_opaque_existential_1(v93);
          LOBYTE(v103) = v91;
          *(&v103 + 1) = v159[0];
          HIDWORD(v103) = *(v159 + 3);
          v104 = v67;
          v105 = v83;
          v106 = v89;
          v107 = v90;
          v108 = v92;
          v109 = v68;
          v110 = v157;
          v111 = v158;
          v112 = v82;
          v113 = v84;
          v114 = v87;
          v115 = v88;
          v116 = v76;
          v117 = v81;
          v118 = v155;
          v119 = v156;
          v120 = v78;
          v121 = v80;
          v122 = v86;
          v123 = v85;
          v124 = v71;
          v125 = v44;
          v126 = v152;
          v127 = v153;
          v128 = v45;
          v129 = v74;
          v130 = v46;
          v131 = v61;
          v132 = v75;
          v133 = v47;
          v134 = v36;
          return sub_21430457C(&v103);
        }

        sub_214031C4C();
        swift_allocError();
        *v56 = 0xD00000000000002ELL;
        v56[1] = 0x8000000214790210;
        v57 = v59;
        v56[2] = 0xD00000000000001CLL;
        v56[3] = v57;
        swift_willThrow();
        (*(v92 + 8))(v10, v66);

        v151 = v71;
        v76 = v87;
        v75 = v88;
        v70 = v86;
        v69 = v85;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v41 = 0xD000000000000038;
        v41[1] = 0x80000002147901D0;
        v42 = v59;
        v41[2] = 0xD00000000000001CLL;
        v41[3] = v42;
        swift_willThrow();
        (*(v92 + 8))(v10, v66);

        v154 = BYTE4(v58);
        v76 = v87;
        v75 = v88;
      }

      v34 = v90;
      v35 = v91;
      v33 = v89;
      v31 = v81;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v38 = 0xD00000000000002BLL;
      v38[1] = 0x80000002147901A0;
      v39 = v59;
      v38[2] = 0xD00000000000001CLL;
      v38[3] = v39;
      swift_willThrow();
      (*(v92 + 8))(v10, v66);
      v31 = v81;

      v34 = v90;
      v35 = v91;
      v33 = v89;
    }

    v32 = v83;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000028;
    v29[1] = 0x8000000214790170;
    v30 = v59;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = v30;
    swift_willThrow();
    (*(v92 + 8))(v10, v66);
    v31 = v81;
    v32 = v83;

    v33 = v63;
    v34 = v62;
    v35 = v91;
  }

  __swift_destroy_boxed_opaque_existential_1(v93);
  LOBYTE(v103) = v35;
  *(&v103 + 1) = v159[0];
  HIDWORD(v103) = *(v159 + 3);
  v104 = v25;
  v105 = v32;
  v106 = v33;
  v107 = v34;
  v108 = v148;
  v109 = v68;
  v110 = v157;
  v111 = v158;
  v112 = v82;
  v113 = v84;
  v114 = v76;
  v115 = v75;
  v116 = v147;
  v117 = v31;
  v118 = v155;
  v119 = v156;
  v120 = v78;
  v121 = v80;
  v122 = v70;
  v123 = v69;
  v124 = v154;
  v125 = v77;
  v126 = v152;
  v127 = v153;
  v128 = v72;
  v129 = v74;
  v130 = v65;
  v131 = v64;
  v132 = v71;
  v133 = v73;
  v134 = v79;
  return sub_21430457C(&v103);
}

uint64_t sub_2141D4E58(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9092E8, &qword_2146F5640);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v31 = *(v1 + 3);
  v35 = v1[32];
  v30 = v1[33];
  v9 = *(v1 + 7);
  v10 = v1[64];
  v26 = v1[65];
  v27 = v10;
  v25 = *(v1 + 11);
  v11 = v1[96];
  v23 = v1[97];
  v24 = v11;
  v12 = *(v1 + 15);
  v28 = v9;
  v29 = v12;
  LODWORD(v9) = v1[128];
  v21 = v1[129];
  v22 = v9;
  v13 = v1[131];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143045D0();
  sub_2146DAA28();
  LOBYTE(v33) = v8;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  v15 = v32;
  sub_2146DA388();
  if (v15)
  {
    return (*(v4 + 8))(v7, v3);
  }

  if (v30)
  {
    goto LABEL_14;
  }

  v33 = v31;
  v34 = v35 & 1;
  v36 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2142E1C30();
  sub_2146DA388();
  v17 = v4;
  if (v26)
  {
    goto LABEL_14;
  }

  v18 = v13;
  v33 = v28;
  v34 = v27 & 1;
  v36 = 2;
  sub_2146DA388();
  v19 = v29;
  if (v23 & 1) != 0 || (v33 = v25, v34 = v24 & 1, v36 = 3, sub_2146DA388(), (v21))
  {
LABEL_14:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v33 = v19;
    v34 = v22 & 1;
    v36 = 4;
    sub_2146DA388();
    LOBYTE(v33) = v18;
    v36 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9092D0, &qword_2146F5638);
    sub_214304758();
    sub_2146DA388();
    return (*(v17 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_2141D527C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E656449707061 && a2 == 0xEE00737265696669)
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

uint64_t sub_2141D530C(uint64_t a1)
{
  v2 = sub_214304830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D5348(uint64_t a1)
{
  v2 = sub_214304830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D5384@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909300, &qword_2146F5648);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304830();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909310, &qword_2146F5650);
    sub_214304884();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D5504(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909338, &unk_2146F5660);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304830();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909310, &qword_2146F5650);
  sub_2143049E0();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2141D56A8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, uint64_t (*a12)(__int128 *, __int128 *, unint64_t *), uint64_t a13, uint64_t *a14, unsigned __int8 a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, unsigned __int8 a19, uint64_t a20)
{
  v182 = a3;
  v154 = a8;
  v155 = a7;
  v156 = a6;
  v157 = a5;
  v179 = a4;
  v187 = a2;
  LODWORD(v185) = a15;
  v22 = type metadata accessor for SwiftRegexValidator();
  v174 = *(v22 - 8);
  v23 = *(v174 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v180 = *a11;
  v26 = *(a11 + 2);
  v27 = *(a11 + 24);
  v175 = v25;
  v176 = v27;
  v28 = *a14;
  v177 = v26;
  v178 = v28;
  v29 = a9 + *(type metadata accessor for IMS3GPPCharacteristic() + 68);
  v184 = a20;
  sub_213FB2E54(a20, v29, &qword_27C909358, qword_214773860);
  sub_21464DFC0(&v223);
  v191 = v223;
  v228 = v224;
  v189 = v225;
  v190 = v226;
  v181 = v227;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v30 = swift_allocObject();
  v192 = xmmword_2146E9BF0;
  *(v30 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v31 = swift_allocObject();
  v32 = swift_allocObject();
  v188 = xmmword_2146ED240;
  *(v32 + 16) = xmmword_2146ED240;
  *(v31 + 16) = sub_21438F468;
  *(v31 + 24) = v32;
  *(v30 + 32) = v31;
  sub_21404328C(v30, &v219);
  v173 = v219;
  v171 = v220;
  v169 = v222;
  v170 = v221;
  v33 = swift_allocObject();
  *(v33 + 16) = v192;
  v34 = swift_allocObject();
  v35 = swift_allocObject();
  *(v35 + 16) = v188;
  *(v34 + 16) = sub_21438F468;
  *(v34 + 24) = v35;
  *(v33 + 32) = v34;
  sub_21404328C(v33, &v215);
  v172 = v215;
  v167 = v216;
  v165 = v218;
  v166 = v217;
  v36 = swift_allocObject();
  *(v36 + 16) = v192;
  v37 = swift_allocObject();
  v38 = swift_allocObject();
  *(v38 + 16) = v188;
  *(v37 + 16) = sub_21438F468;
  *(v37 + 24) = v38;
  *(v36 + 32) = v37;
  sub_21404328C(v36, &v211);
  v168 = v211;
  v163 = v212;
  v161 = v214;
  v162 = v213;
  v39 = swift_allocObject();
  *(v39 + 16) = v192;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v40 = swift_allocObject();
  *(v40 + 16) = sub_2140676DC;
  *(v40 + 24) = 0;
  *(v39 + 32) = v40;
  sub_214042B80(v39, &v207);
  v164 = v207;
  v159 = v209;
  v160 = v208;
  v158 = v210;
  v41 = swift_allocObject();
  *(v41 + 16) = v192;
  if (qword_27C903148 != -1)
  {
    swift_once();
  }

  v186 = a13;
  *&v188 = a10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v43 = __swift_project_value_buffer(v42, qword_27CA19DA8);
  (*(*(v42 - 8) + 16))(&v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v42);
  v44 = swift_allocObject();
  v45 = (*(v174 + 80) + 16) & ~*(v174 + 80);
  v46 = swift_allocObject();
  sub_214328704(v24, v46 + v45, type metadata accessor for SwiftRegexValidator);
  *(v44 + 16) = sub_21438F684;
  *(v44 + 24) = v46;
  *(v41 + 32) = v44;
  sub_214042B80(v41, &v203);
  v47 = v204;
  v48 = v205;
  LOBYTE(v44) = v206;
  sub_21464E0E0(&v198);
  v49 = v199;
  LOBYTE(v45) = v200;
  v50 = v201;
  v51 = v202;
  sub_21464E11C(&v193);
  *a9 = v175;
  *(a9 + 41) = v179 & 1;
  *(a9 + 64) = v171;
  v52 = v169;
  *(a9 + 72) = v170;
  *(a9 + 73) = v52;
  *(a9 + 96) = v167;
  v53 = v165;
  *(a9 + 104) = v166;
  *(a9 + 105) = v53;
  *(a9 + 128) = v163;
  v54 = v161;
  *(a9 + 136) = v162;
  *(a9 + 137) = v54;
  v55 = v159;
  *(a9 + 160) = v160;
  *(a9 + 168) = v55;
  *(a9 + 176) = v158;
  *(a9 + 200) = v177;
  *(a9 + 208) = v176;
  *(a9 + 232) = v47;
  *(a9 + 240) = v48;
  *(a9 + 248) = v44;
  *(a9 + 256) = v178;
  *(a9 + 264) = v185 & 1;
  *(a9 + 288) = v49;
  *(a9 + 296) = v45;
  v56 = v194;
  *(a9 + 297) = v50;
  v57 = v195;
  *(a9 + 298) = v51;
  v58 = v196;
  *(a9 + 320) = v56;
  LOBYTE(v56) = v197;
  v59 = v190;
  v60 = v191;
  v61 = v228;
  *(a9 + 8) = v191;
  *(a9 + 16) = v61;
  v62 = v189;
  *(a9 + 24) = v189;
  *(a9 + 32) = v59;
  v63 = v181;
  *(a9 + 40) = v181;
  v64 = v172;
  *(a9 + 48) = v173;
  *(a9 + 80) = v64;
  *(a9 + 112) = v168;
  *(a9 + 144) = v164;
  *(a9 + 184) = v180;
  *(a9 + 216) = v203;
  *(a9 + 272) = v198;
  *(a9 + 304) = v193;
  *(a9 + 328) = v57;
  *(a9 + 329) = v58;
  v185 = a9;
  *(a9 + 330) = v56;
  v65 = v182;
  *&v207 = v187;
  *(&v207 + 1) = v182;
  LOBYTE(v203) = v63;
  v223 = 0xD00000000000001ALL;
  v224 = 0x8000000214790240;
  v225 = 0xD00000000000001CLL;
  v226 = 0x800000021478A360;

  sub_213FDC9D0(v62, v59);
  v66 = v183;
  v67 = v60(&v207, &v203, &v223);
  *&v192 = v66;
  if (v66)
  {

LABEL_9:

    sub_213FB2DF4(v184, &qword_27C909358, qword_214773860);
    v84 = v185;
    v85 = v185[2];
    v86 = v185[3];
    v87 = v185[4];

    sub_213FDC6D0(v86, v87);
    v88 = v228;
    *(v84 + 8) = v191;
    *(v84 + 16) = v88;
    v89 = v190;
    *(v84 + 24) = v189;
    *(v84 + 32) = v89;
    *(v84 + 40) = v63;
    return sub_21432887C(v84, type metadata accessor for IMS3GPPCharacteristic);
  }

  v183 = 0x800000021478A360;
  if ((v67 & 1) == 0)
  {
    sub_214031C4C();
    v81 = swift_allocError();
    *v82 = 0xD00000000000001ALL;
    v82[1] = 0x8000000214790240;
    v83 = v183;
    v82[2] = 0xD00000000000001CLL;
    v82[3] = v83;
    *&v192 = v81;
    swift_willThrow();

    goto LABEL_9;
  }

  sub_213FDC6D0(v189, v190);
  v68 = v183;

  v69 = v185;
  v70 = v185[2];
  v71 = v185[3];
  v72 = v185[4];

  sub_213FDC6D0(v71, v72);
  v73 = v228;
  *(v69 + 8) = v191;
  *(v69 + 16) = v73;
  *(v69 + 24) = v187;
  *(v69 + 32) = v65;
  *(v69 + 40) = v63;
  v75 = *(v69 + 48);
  v74 = *(v69 + 56);
  v76 = *(v69 + 64);
  v77 = *(v69 + 72);
  v78 = *(v69 + 73);
  LOBYTE(v203) = v77;
  *&v207 = v157;
  LOBYTE(v198) = v78;
  v223 = 0xD00000000000001DLL;
  v224 = 0x8000000214790260;
  v225 = 0xD00000000000001CLL;
  v226 = v68;

  v79 = v192;
  v80 = v75(&v207, &v198, &v223);
  if (v79)
  {
    *&v192 = v76;

    sub_213FB2DF4(v184, &qword_27C909358, qword_214773860);

LABEL_13:
    v97 = *(v69 + 56);

    *(v69 + 48) = v75;
    *(v69 + 56) = v74;
    *(v69 + 64) = v192;
    *(v69 + 72) = v77;
    *(v69 + 73) = v78;
    return sub_21432887C(v69, type metadata accessor for IMS3GPPCharacteristic);
  }

  if ((v80 & 1) == 0)
  {
    *&v192 = v76;

    sub_214031C4C();
    swift_allocError();
    *v96 = 0xD00000000000001DLL;
    v96[1] = 0x8000000214790260;
    v96[2] = 0xD00000000000001CLL;
    v96[3] = v68;
    swift_willThrow();
    sub_213FB2DF4(v184, &qword_27C909358, qword_214773860);
    v77 = v203;
    goto LABEL_13;
  }

  v91 = *(v69 + 56);

  *(v69 + 48) = v75;
  *(v69 + 56) = v74;
  *(v69 + 64) = v157;
  *(v69 + 72) = 0;
  *(v69 + 73) = v78;
  v93 = *(v69 + 80);
  v92 = *(v69 + 88);
  *&v192 = *(v69 + 96);
  v94 = *(v69 + 105);
  LOBYTE(v203) = *(v69 + 104);
  *&v207 = v156;
  LOBYTE(v198) = v94;
  v223 = 0xD00000000000001DLL;
  v224 = 0x8000000214790280;
  v225 = 0xD00000000000001CLL;
  v226 = v68;

  v95 = v93(&v207, &v198, &v223);
  if ((v95 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v103 = 0xD00000000000001DLL;
    v103[1] = 0x8000000214790280;
    v103[2] = 0xD00000000000001CLL;
    v103[3] = v68;
    swift_willThrow();
    sub_213FB2DF4(v184, &qword_27C909358, qword_214773860);
    v104 = v203;
    v105 = *(v69 + 88);

    *(v69 + 80) = v93;
    *(v69 + 88) = v92;
    *(v69 + 96) = v192;
    *(v69 + 104) = v104;
    *(v69 + 105) = v94;
    return sub_21432887C(v69, type metadata accessor for IMS3GPPCharacteristic);
  }

  v98 = *(v69 + 88);

  *(v69 + 80) = v93;
  *(v69 + 88) = v92;
  *(v69 + 96) = v156;
  *(v69 + 104) = 0;
  *(v69 + 105) = v94;
  v100 = *(v69 + 112);
  v99 = *(v69 + 120);
  *&v192 = *(v69 + 128);
  v101 = *(v69 + 137);
  LOBYTE(v203) = *(v69 + 136);
  *&v207 = v155;
  LOBYTE(v198) = v101;
  v223 = 0xD00000000000001DLL;
  v224 = 0x80000002147902A0;
  v225 = 0xD00000000000001CLL;
  v226 = v68;

  v102 = v100(&v207, &v198, &v223);
  if ((v102 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v112 = 0xD00000000000001DLL;
    v112[1] = 0x80000002147902A0;
    v112[2] = 0xD00000000000001CLL;
    v112[3] = v68;
    swift_willThrow();
    sub_213FB2DF4(v184, &qword_27C909358, qword_214773860);
    v113 = v203;
    v114 = *(v69 + 120);

    *(v69 + 112) = v100;
    *(v69 + 120) = v99;
    *(v69 + 128) = v192;
    *(v69 + 136) = v113;
    *(v69 + 137) = v101;
    return sub_21432887C(v69, type metadata accessor for IMS3GPPCharacteristic);
  }

  v106 = *(v69 + 120);

  *(v69 + 112) = v100;
  *(v69 + 120) = v99;
  *(v69 + 128) = v155;
  *(v69 + 136) = 0;
  *(v69 + 137) = v101;
  v108 = *(v69 + 144);
  v107 = *(v69 + 152);
  v109 = *(v69 + 168);
  v191 = *(v69 + 160);
  v110 = *(v69 + 176);
  *&v207 = v154;
  *(&v207 + 1) = v188;
  LODWORD(v192) = v110;
  LOBYTE(v203) = v110;
  v223 = 0xD000000000000029;
  v224 = 0x80000002147902C0;
  v225 = 0xD00000000000001CLL;
  v226 = v68;

  v228 = v108;
  v111 = v108(&v207, &v203, &v223);
  if ((v111 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v123 = 0xD000000000000029;
    v123[1] = 0x80000002147902C0;
    v123[2] = 0xD00000000000001CLL;
    v123[3] = v68;
    swift_willThrow();

    sub_213FB2DF4(v184, &qword_27C909358, qword_214773860);
    v124 = *(v69 + 152);
    v125 = *(v69 + 168);

    *(v69 + 144) = v228;
    *(v69 + 152) = v107;
    *(v69 + 160) = v191;
    *(v69 + 168) = v109;
    *(v69 + 176) = v192;
    return sub_21432887C(v69, type metadata accessor for IMS3GPPCharacteristic);
  }

  v115 = v68;

  v116 = *(v69 + 152);
  v117 = *(v69 + 168);

  *(v69 + 144) = v228;
  *(v69 + 152) = v107;
  v118 = v188;
  *(v69 + 160) = v154;
  *(v69 + 168) = v118;
  *(v69 + 176) = v192;
  v120 = *(v69 + 216);
  v119 = *(v69 + 224);
  v121 = *(v69 + 240);
  v228 = *(v69 + 232);
  LODWORD(v118) = *(v69 + 248);
  v191 = a12;
  *&v207 = a12;
  *(&v207 + 1) = v186;
  LODWORD(v192) = v118;
  LOBYTE(v203) = v118;
  v223 = 0xD00000000000002BLL;
  v224 = 0x80000002147902F0;
  v225 = 0xD00000000000001CLL;
  v226 = v68;

  v122 = v120(&v207, &v203, &v223);
  if ((v122 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v135 = 0xD00000000000002BLL;
    v135[1] = 0x80000002147902F0;
    v135[2] = 0xD00000000000001CLL;
    v135[3] = v68;
    swift_willThrow();

    sub_213FB2DF4(v184, &qword_27C909358, qword_214773860);
    v136 = *(v69 + 224);
    v137 = *(v69 + 240);

    *(v69 + 216) = v120;
    *(v69 + 224) = v119;
    *(v69 + 232) = v228;
    *(v69 + 240) = v121;
    *(v69 + 248) = v192;
    return sub_21432887C(v69, type metadata accessor for IMS3GPPCharacteristic);
  }

  LODWORD(v228) = a17;

  v126 = *(v69 + 224);
  v127 = *(v69 + 240);

  *(v69 + 216) = v120;
  *(v69 + 224) = v119;
  v128 = v186;
  *(v69 + 232) = v191;
  *(v69 + 240) = v128;
  *(v69 + 248) = v192;
  v130 = *(v69 + 272);
  v129 = *(v69 + 280);
  v131 = *(v69 + 288);
  v189 = a16;
  v190 = v131;
  LODWORD(v192) = *(v69 + 296);
  LODWORD(v191) = *(v69 + 297);
  v132 = *(v69 + 298);
  *&v207 = a16;
  v133 = v228;
  BYTE8(v207) = v228 & 1;
  LOBYTE(v203) = v132;
  v223 = 0xD000000000000026;
  v224 = 0x8000000214790320;
  v225 = 0xD00000000000001CLL;
  v226 = v115;

  v134 = v130(&v207, &v203, &v223);
  if ((v134 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v145 = 0xD000000000000026;
    v145[1] = 0x8000000214790320;
    v146 = v183;
    v145[2] = 0xD00000000000001CLL;
    v145[3] = v146;
    swift_willThrow();
    sub_213FB2DF4(v184, &qword_27C909358, qword_214773860);
    v69 = v185;
    v147 = v185[35];

    *(v69 + 272) = v130;
    *(v69 + 280) = v129;
    *(v69 + 288) = v190;
    *(v69 + 296) = v192;
    *(v69 + 297) = v191;
    *(v69 + 298) = v132;
    return sub_21432887C(v69, type metadata accessor for IMS3GPPCharacteristic);
  }

  LODWORD(v192) = a19;

  v138 = v185;
  v139 = v185[35];

  v138[34] = v130;
  v138[35] = v129;
  v138[36] = v189;
  *(v138 + 296) = v133 & 1;
  *(v138 + 297) = 0;
  *(v138 + 298) = v132;
  v141 = v138[38];
  v140 = v138[39];
  v228 = v138[40];
  LODWORD(v191) = *(v138 + 328);
  LODWORD(v190) = *(v138 + 329);
  v142 = *(v138 + 330);
  v189 = a18;
  *&v207 = a18;
  v143 = v192;
  BYTE8(v207) = v192 & 1;
  LOBYTE(v203) = v142;
  v223 = 0xD000000000000025;
  v224 = 0x8000000214790350;
  v225 = 0xD00000000000001CLL;
  v226 = v183;

  v144 = v141(&v207, &v203, &v223);
  if ((v144 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v150 = 0xD000000000000025;
    v150[1] = 0x8000000214790350;
    v151 = v183;
    v150[2] = 0xD00000000000001CLL;
    v150[3] = v151;
    swift_willThrow();
    sub_213FB2DF4(v184, &qword_27C909358, qword_214773860);
    v69 = v185;
    v152 = v185[39];

    *(v69 + 304) = v141;
    *(v69 + 312) = v140;
    *(v69 + 320) = v228;
    *(v69 + 328) = v191;
    *(v69 + 329) = v190;
    *(v69 + 330) = v142;
    return sub_21432887C(v69, type metadata accessor for IMS3GPPCharacteristic);
  }

  sub_213FB2DF4(v184, &qword_27C909358, qword_214773860);
  v148 = v185;
  v149 = v185[39];

  v148[38] = v141;
  v148[39] = v140;
  v148[40] = v189;
  *(v148 + 328) = v143 & 1;
  *(v148 + 329) = 0;
  *(v148 + 330) = v142;
  return result;
}

unint64_t sub_2141D6910(char a1)
{
  result = 0x4449707061;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x315472656D6974;
      break;
    case 4:
      result = 0x325472656D6974;
      break;
    case 5:
      result = 0x345472656D6974;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000024;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x46435343506F626CLL;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x7972746552676572;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2141D6AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214373A64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141D6AEC(uint64_t a1)
{
  v2 = sub_214304B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D6B28(uint64_t a1)
{
  v2 = sub_214304B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D6B64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v238 = a2;
  v3 = type metadata accessor for SwiftRegexValidator();
  v240 = *(v3 - 8);
  v4 = *(v240 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v239 = &v195[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909358, qword_214773860);
  v5 = *(*(v242 - 8) + 64);
  MEMORY[0x28223BE20](v242);
  v241 = &v195[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909360, &qword_2146F5670);
  v243 = *(v7 - 8);
  v244 = v7;
  v8 = *(v243 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v195[-v9];
  v11 = type metadata accessor for IMS3GPPCharacteristic();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v195[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304B3C();
  v16 = v280;
  sub_2146DAA08();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  *&v235 = v11;
  v236 = v4;
  v237 = v14;
  v280 = a1;
  LOBYTE(v259) = 0;
  sub_21430498C();
  sub_2146DA1C8();
  v18 = v275;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v259) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v234 = v18;
  v20 = v275;
  v19 = v276;
  LOBYTE(v275) = 2;
  v232 = sub_2146DA178();
  *&v233 = v20;
  *(&v233 + 1) = v19;
  LOBYTE(v275) = 3;
  v21 = sub_2146DA1A8();
  LOBYTE(v275) = 4;
  v22 = sub_2146DA1A8();
  v231 = v21;
  v23 = v22;
  LOBYTE(v275) = 5;
  v24 = sub_2146DA1A8();
  v230 = v23;
  v25 = v24;
  LOBYTE(v275) = 6;
  v26 = sub_2146DA168();
  v228 = v25;
  v229 = v27;
  v28 = v26;
  LOBYTE(v259) = 7;
  sub_214304B90();
  sub_2146DA1C8();
  v224 = v28;
  v29 = v276;
  v226 = v275;
  v30 = v277;
  v225 = v278;
  LOBYTE(v275) = 8;
  v31 = sub_2146DA168();
  v227 = v32;
  v33 = v29;
  v222 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909378, &qword_2146F5678);
  LOBYTE(v259) = 9;
  sub_214304BE4();
  v223 = v10;
  sub_2146DA1C8();
  v34 = v275;
  LOBYTE(v275) = 10;
  v221 = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v259) = 11;
  sub_2142E11FC();
  sub_2146DA1C8();
  v220 = v275;
  v219 = v276;
  LOBYTE(v259) = 12;
  sub_2146DA1C8();
  v212 = v275;
  v211 = v276;
  LOBYTE(v275) = 13;
  sub_214304CBC();
  sub_2146DA1C8();
  v242 = 0;
  sub_213FB2E54(v241, &v237[*(v235 + 68)], &qword_27C909358, qword_214773860);
  sub_21464DFC0(&v275);
  v216 = v276;
  v217 = v275;
  v214 = v277;
  v215 = v278;
  v218 = v279;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v35 = swift_allocObject();
  v235 = xmmword_2146E9BF0;
  *(v35 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v36 = swift_allocObject();
  v37 = swift_allocObject();
  v213 = xmmword_2146ED240;
  *(v37 + 16) = xmmword_2146ED240;
  *(v36 + 16) = sub_21438F468;
  *(v36 + 24) = v37;
  *(v35 + 32) = v36;
  sub_21404328C(v35, &v271);
  v210 = v271;
  v208 = v272;
  v206 = v274;
  v207 = v273;
  v38 = swift_allocObject();
  *(v38 + 16) = v235;
  v39 = swift_allocObject();
  v40 = swift_allocObject();
  *(v40 + 16) = v213;
  *(v39 + 16) = sub_21438F468;
  *(v39 + 24) = v40;
  *(v38 + 32) = v39;
  sub_21404328C(v38, &v267);
  v209 = v267;
  v205 = v268;
  v203 = v270;
  v204 = v269;
  v41 = swift_allocObject();
  *(v41 + 16) = v235;
  v42 = swift_allocObject();
  v43 = swift_allocObject();
  *(v43 + 16) = v213;
  *(v42 + 16) = sub_21438F468;
  *(v42 + 24) = v43;
  *(v41 + 32) = v42;
  sub_21404328C(v41, &v263);
  v213 = v263;
  v201 = v264;
  v199 = v266;
  v200 = v265;
  v44 = swift_allocObject();
  *(v44 + 16) = v235;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v45 = swift_allocObject();
  *(v45 + 16) = sub_2140676DC;
  *(v45 + 24) = 0;
  *(v44 + 32) = v45;
  sub_214042B80(v44, &v259);
  v202 = v259;
  v197 = v261;
  v198 = v260;
  v196 = v262;
  v46 = swift_allocObject();
  *(v46 + 16) = v235;
  if (qword_27C903148 != -1)
  {
    swift_once();
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v48 = __swift_project_value_buffer(v47, qword_27CA19DA8);
  v49 = v239;
  (*(*(v47 - 8) + 16))(v239, v48, v47);
  v50 = swift_allocObject();
  v51 = (*(v240 + 80) + 16) & ~*(v240 + 80);
  v52 = swift_allocObject();
  sub_214328704(v49, v52 + v51, type metadata accessor for SwiftRegexValidator);
  *(v50 + 16) = sub_21438F684;
  *(v50 + 24) = v52;
  *(v46 + 32) = v50;
  sub_214042B80(v46, &v255);
  v53 = v256;
  v240 = v257;
  LOBYTE(v52) = v258;
  sub_21464E0E0(&v250);
  v54 = v251;
  LODWORD(v239) = v252;
  LOBYTE(v49) = v253;
  v55 = v254;
  sub_21464E11C(&v245);
  v56 = v237;
  *v237 = v234;
  *(v56 + 41) = v232 & 1;
  *(v56 + 64) = v208;
  v57 = v206;
  *(v56 + 72) = v207;
  *(v56 + 73) = v57;
  *(v56 + 96) = v205;
  v58 = v203;
  *(v56 + 104) = v204;
  *(v56 + 105) = v58;
  *(v56 + 128) = v201;
  v59 = v199;
  *(v56 + 136) = v200;
  *(v56 + 137) = v59;
  v60 = v197;
  *(v56 + 160) = v198;
  *(v56 + 168) = v60;
  *(v56 + 176) = v196;
  *(v56 + 184) = v226;
  *(v56 + 192) = v33;
  *(v56 + 200) = v30;
  *(v56 + 208) = v225;
  v61 = v240;
  *(v56 + 232) = v53;
  *(v56 + 240) = v61;
  *(v56 + 248) = v52;
  *(v56 + 256) = v34;
  *(v56 + 264) = v221 & 1;
  *(v56 + 288) = v54;
  *(v56 + 296) = v239;
  v62 = v246;
  *(v56 + 297) = v49;
  v63 = v247;
  *(v56 + 298) = v55;
  v64 = v248;
  *(v56 + 320) = v62;
  LOBYTE(v62) = v249;
  v65 = v216;
  v66 = v217;
  *(v56 + 8) = v217;
  *(v56 + 16) = v65;
  v68 = v214;
  v67 = v215;
  *(v56 + 24) = v214;
  *(v56 + 32) = v67;
  v69 = v218;
  *(v56 + 40) = v218;
  v70 = v209;
  *(v56 + 48) = v210;
  *(v56 + 80) = v70;
  *(v56 + 112) = v213;
  *(v56 + 144) = v202;
  *(v56 + 216) = v255;
  *(v56 + 272) = v250;
  *(v56 + 304) = v245;
  *(v56 + 328) = v63;
  *(v56 + 329) = v64;
  *(v56 + 330) = v62;
  v259 = v233;
  LOBYTE(v255) = v69;
  v275 = 0xD00000000000001ALL;
  v276 = 0x8000000214790240;
  v277 = 0xD00000000000001CLL;
  v278 = 0x800000021478A360;
  v240 = 0x800000021478A360;

  sub_213FDC9D0(v68, v67);
  v71 = v242;
  v72 = v66(&v259, &v255, &v275);
  v242 = v71;
  if (v71)
  {

LABEL_11:

    sub_213FB2DF4(v241, &qword_27C909358, qword_214773860);
    (*(v243 + 8))(v223, v244);
    v88 = v237;
    v89 = *(v237 + 2);
    v90 = *(v237 + 3);
    v91 = *(v237 + 4);

    sub_213FDC6D0(v90, v91);
    v92 = v216;
    *(v88 + 8) = v217;
    *(v88 + 16) = v92;
    v93 = v215;
    *(v88 + 24) = v214;
    *(v88 + 32) = v93;
    *(v88 + 40) = v218;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v280);
    return sub_21432887C(v237, type metadata accessor for IMS3GPPCharacteristic);
  }

  if ((v72 & 1) == 0)
  {
    sub_214031C4C();
    v85 = swift_allocError();
    *v86 = 0xD00000000000001ALL;
    v86[1] = 0x8000000214790240;
    v87 = v240;
    v86[2] = 0xD00000000000001CLL;
    v86[3] = v87;
    v242 = v85;
    swift_willThrow();
    goto LABEL_11;
  }

  sub_213FDC6D0(v214, v215);
  v73 = v240;

  v74 = v237;
  v75 = *(v237 + 2);
  v76 = *(v237 + 3);
  v77 = *(v237 + 4);

  sub_213FDC6D0(v76, v77);
  v78 = v216;
  *(v74 + 8) = v217;
  *(v74 + 16) = v78;
  v79 = *(&v233 + 1);
  *(v74 + 24) = v233;
  *(v74 + 32) = v79;
  *(v74 + 40) = v218;
  v81 = *(v74 + 48);
  v80 = *(v74 + 56);
  v239 = *(v74 + 64);
  v82 = *(v74 + 73);
  LOBYTE(v255) = *(v74 + 72);
  *&v259 = v231;
  LOBYTE(v250) = v82;
  v275 = 0xD00000000000001DLL;
  v276 = 0x8000000214790260;
  v277 = 0xD00000000000001CLL;
  v278 = v73;

  v83 = v242;
  v84 = v81(&v259, &v250, &v275);
  v242 = v83;
  if (v83)
  {

    sub_213FB2DF4(v241, &qword_27C909358, qword_214773860);
    (*(v243 + 8))(v223, v244);

LABEL_17:
    v105 = v255;
    v106 = v237;
    v107 = *(v237 + 7);

    *(v106 + 48) = v81;
    *(v106 + 56) = v80;
    *(v106 + 64) = v239;
    *(v106 + 72) = v105;
    *(v106 + 73) = v82;
    goto LABEL_12;
  }

  if ((v84 & 1) == 0)
  {

    sub_214031C4C();
    v102 = swift_allocError();
    *v103 = 0xD00000000000001DLL;
    v103[1] = 0x8000000214790260;
    v104 = v240;
    v103[2] = 0xD00000000000001CLL;
    v103[3] = v104;
    v242 = v102;
    swift_willThrow();
    sub_213FB2DF4(v241, &qword_27C909358, qword_214773860);
    (*(v243 + 8))(v223, v244);
    goto LABEL_17;
  }

  v94 = v240;

  v95 = v237;
  v96 = *(v237 + 7);

  *(v95 + 48) = v81;
  *(v95 + 56) = v80;
  *(v95 + 64) = v231;
  *(v95 + 72) = 0;
  *(v95 + 73) = v82;
  v98 = *(v95 + 80);
  v97 = *(v95 + 88);
  v239 = *(v95 + 96);
  v99 = *(v95 + 105);
  LOBYTE(v255) = *(v95 + 104);
  *&v259 = v230;
  LOBYTE(v250) = v99;
  v275 = 0xD00000000000001DLL;
  v276 = 0x8000000214790280;
  v277 = 0xD00000000000001CLL;
  v278 = v94;

  v100 = v242;
  v101 = v98(&v259, &v250, &v275);
  v242 = v100;
  if (v100)
  {

    sub_213FB2DF4(v241, &qword_27C909358, qword_214773860);
    (*(v243 + 8))(v223, v244);

LABEL_22:
    v119 = v255;
    v120 = v237;
    v121 = *(v237 + 11);

    *(v120 + 80) = v98;
    *(v120 + 88) = v97;
    *(v120 + 96) = v239;
    *(v120 + 104) = v119;
    *(v120 + 105) = v99;
    goto LABEL_12;
  }

  if ((v101 & 1) == 0)
  {

    sub_214031C4C();
    v116 = swift_allocError();
    *v117 = 0xD00000000000001DLL;
    v117[1] = 0x8000000214790280;
    v118 = v240;
    v117[2] = 0xD00000000000001CLL;
    v117[3] = v118;
    v242 = v116;
    swift_willThrow();
    sub_213FB2DF4(v241, &qword_27C909358, qword_214773860);
    (*(v243 + 8))(v223, v244);
    goto LABEL_22;
  }

  v108 = v240;

  v109 = v237;
  v110 = *(v237 + 11);

  *(v109 + 80) = v98;
  *(v109 + 88) = v97;
  *(v109 + 96) = v230;
  *(v109 + 104) = 0;
  *(v109 + 105) = v99;
  v112 = *(v109 + 112);
  v111 = *(v109 + 120);
  v239 = *(v109 + 128);
  v113 = *(v109 + 137);
  LOBYTE(v255) = *(v109 + 136);
  *&v259 = v228;
  LOBYTE(v250) = v113;
  v275 = 0xD00000000000001DLL;
  v276 = 0x80000002147902A0;
  v277 = 0xD00000000000001CLL;
  v278 = v108;

  v114 = v242;
  v115 = v112(&v259, &v250, &v275);
  v242 = v114;
  if (v114)
  {

    sub_213FB2DF4(v241, &qword_27C909358, qword_214773860);
    (*(v243 + 8))(v223, v244);

LABEL_27:
    v134 = v255;
    v135 = v237;
    v136 = *(v237 + 15);

    *(v135 + 112) = v112;
    *(v135 + 120) = v111;
    *(v135 + 128) = v239;
    *(v135 + 136) = v134;
    *(v135 + 137) = v113;
    goto LABEL_12;
  }

  if ((v115 & 1) == 0)
  {

    sub_214031C4C();
    v131 = swift_allocError();
    *v132 = 0xD00000000000001DLL;
    v132[1] = 0x80000002147902A0;
    v133 = v240;
    v132[2] = 0xD00000000000001CLL;
    v132[3] = v133;
    v242 = v131;
    swift_willThrow();
    sub_213FB2DF4(v241, &qword_27C909358, qword_214773860);
    (*(v243 + 8))(v223, v244);
    goto LABEL_27;
  }

  v122 = v240;

  v123 = v237;
  v124 = *(v237 + 15);

  *(v123 + 112) = v112;
  *(v123 + 120) = v111;
  *(v123 + 128) = v228;
  *(v123 + 136) = 0;
  *(v123 + 137) = v113;
  v126 = *(v123 + 144);
  v125 = *(v123 + 152);
  v127 = *(v123 + 168);
  v239 = *(v123 + 160);
  v128 = *(v123 + 176);
  *&v259 = v224;
  *(&v259 + 1) = v229;
  LOBYTE(v255) = v128;
  v275 = 0xD000000000000029;
  v276 = 0x80000002147902C0;
  v277 = 0xD00000000000001CLL;
  v278 = v122;

  v129 = v242;
  v130 = v126(&v259, &v255, &v275);
  v242 = v129;
  if (v129)
  {

LABEL_32:

    sub_213FB2DF4(v241, &qword_27C909358, qword_214773860);
    (*(v243 + 8))(v223, v244);
    v152 = v237;
    v153 = *(v237 + 19);
    v154 = *(v237 + 21);

    *(v152 + 144) = v126;
    *(v152 + 152) = v125;
    *(v152 + 160) = v239;
    *(v152 + 168) = v127;
    *(v152 + 176) = v128;
    goto LABEL_12;
  }

  if ((v130 & 1) == 0)
  {
    sub_214031C4C();
    v149 = swift_allocError();
    *v150 = 0xD000000000000029;
    v150[1] = 0x80000002147902C0;
    v151 = v240;
    v150[2] = 0xD00000000000001CLL;
    v150[3] = v151;
    v242 = v149;
    swift_willThrow();

    goto LABEL_32;
  }

  v137 = v240;

  v138 = v237;
  v139 = *(v237 + 19);
  v140 = *(v237 + 21);

  *(v138 + 144) = v126;
  *(v138 + 152) = v125;
  v141 = v229;
  *(v138 + 160) = v224;
  *(v138 + 168) = v141;
  *(v138 + 176) = v128;
  v143 = *(v138 + 216);
  v142 = *(v138 + 224);
  v144 = *(v138 + 240);
  v239 = *(v138 + 232);
  v145 = *(v138 + 248);
  *&v259 = v222;
  *(&v259 + 1) = v227;
  LOBYTE(v255) = v145;
  v275 = 0xD00000000000002BLL;
  v276 = 0x80000002147902F0;
  v277 = 0xD00000000000001CLL;
  v278 = v137;

  v146 = v242;
  v147 = v143;
  v148 = v143(&v259, &v255, &v275);
  v242 = v146;
  if (v146)
  {

LABEL_37:

    sub_213FB2DF4(v241, &qword_27C909358, qword_214773860);
    (*(v243 + 8))(v223, v244);
    v170 = v237;
    v171 = *(v237 + 28);
    v172 = *(v237 + 30);

    *(v170 + 216) = v147;
    *(v170 + 224) = v142;
    *(v170 + 232) = v239;
    *(v170 + 240) = v144;
    *(v170 + 248) = v145;
    goto LABEL_12;
  }

  if ((v148 & 1) == 0)
  {
    sub_214031C4C();
    v167 = swift_allocError();
    *v168 = 0xD00000000000002BLL;
    v168[1] = 0x80000002147902F0;
    v169 = v240;
    v168[2] = 0xD00000000000001CLL;
    v168[3] = v169;
    v242 = v167;
    swift_willThrow();
    goto LABEL_37;
  }

  v155 = v240;

  v156 = v237;
  v157 = *(v237 + 28);
  v158 = *(v237 + 30);

  *(v156 + 216) = v143;
  *(v156 + 224) = v142;
  v159 = v227;
  *(v156 + 232) = v222;
  *(v156 + 240) = v159;
  *(v156 + 248) = v145;
  v161 = *(v156 + 272);
  v160 = *(v156 + 280);
  v162 = *(v156 + 288);
  v163 = *(v156 + 296);
  LODWORD(v239) = *(v156 + 297);
  v164 = *(v156 + 298);
  *&v259 = v220;
  BYTE8(v259) = v219;
  LOBYTE(v255) = v164;
  v275 = 0xD000000000000026;
  v276 = 0x8000000214790320;
  v277 = 0xD00000000000001CLL;
  v278 = v155;

  v165 = v242;
  v166 = v161(&v259, &v255, &v275);
  v242 = v165;
  if (v165)
  {
    sub_213FB2DF4(v241, &qword_27C909358, qword_214773860);
    (*(v243 + 8))(v223, v244);

LABEL_42:
    v186 = v237;
    v187 = *(v237 + 35);

    *(v186 + 272) = v161;
    *(v186 + 280) = v160;
    *(v186 + 288) = v162;
    *(v186 + 296) = v163;
    *(v186 + 297) = v239;
    *(v186 + 298) = v164;
    goto LABEL_12;
  }

  if ((v166 & 1) == 0)
  {
    sub_214031C4C();
    v183 = swift_allocError();
    *v184 = 0xD000000000000026;
    v184[1] = 0x8000000214790320;
    v185 = v240;
    v184[2] = 0xD00000000000001CLL;
    v184[3] = v185;
    v242 = v183;
    swift_willThrow();
    sub_213FB2DF4(v241, &qword_27C909358, qword_214773860);
    (*(v243 + 8))(v223, v244);
    goto LABEL_42;
  }

  v173 = v240;

  v174 = v237;
  v175 = *(v237 + 35);

  *(v174 + 272) = v161;
  *(v174 + 280) = v160;
  *(v174 + 288) = v220;
  *(v174 + 296) = v219;
  *(v174 + 297) = 0;
  *(v174 + 298) = v164;
  v177 = *(v174 + 304);
  v176 = *(v174 + 312);
  v178 = *(v174 + 320);
  LODWORD(v239) = *(v174 + 328);
  v179 = *(v174 + 329);
  v180 = *(v174 + 330);
  *&v259 = v212;
  BYTE8(v259) = v211;
  LOBYTE(v255) = v180;
  v275 = 0xD000000000000025;
  v276 = 0x8000000214790350;
  v277 = 0xD00000000000001CLL;
  v278 = v173;

  v181 = v242;
  v182 = v177(&v259, &v255, &v275);
  v242 = v181;
  if (v181)
  {
    sub_213FB2DF4(v241, &qword_27C909358, qword_214773860);
    (*(v243 + 8))(v223, v244);

LABEL_46:
    v193 = v237;
    v194 = *(v237 + 39);

    *(v193 + 304) = v177;
    *(v193 + 312) = v176;
    *(v193 + 320) = v178;
    *(v193 + 328) = v239;
    *(v193 + 329) = v179;
    *(v193 + 330) = v180;
    goto LABEL_12;
  }

  if ((v182 & 1) == 0)
  {
    sub_214031C4C();
    v190 = swift_allocError();
    *v191 = 0xD000000000000025;
    v191[1] = 0x8000000214790350;
    v192 = v240;
    v191[2] = 0xD00000000000001CLL;
    v191[3] = v192;
    v242 = v190;
    swift_willThrow();
    sub_213FB2DF4(v241, &qword_27C909358, qword_214773860);
    (*(v243 + 8))(v223, v244);
    goto LABEL_46;
  }

  sub_213FB2DF4(v241, &qword_27C909358, qword_214773860);
  (*(v243 + 8))(v223, v244);
  v188 = v237;
  v189 = *(v237 + 39);

  *(v188 + 304) = v177;
  *(v188 + 312) = v176;
  *(v188 + 320) = v212;
  *(v188 + 328) = v211;
  *(v188 + 330) = v180;
  sub_214328704(v188, v238, type metadata accessor for IMS3GPPCharacteristic);
  return __swift_destroy_boxed_opaque_existential_1(v280);
}

uint64_t sub_2141D8510(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9093A0, &qword_2146F5680);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304B3C();
  sub_2146DAA28();
  LOBYTE(v26) = *v3;
  v30 = 0;
  sub_214304AE8();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = *(v3 + 32);
  if (v11 != 1)
  {
    v26 = *(v3 + 24);
    v27 = v11;
    v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v12 = *(v3 + 41);
    LOBYTE(v26) = 2;
    sub_2146DA338();
    if ((*(v3 + 72) & 1) == 0)
    {
      v13 = *(v3 + 64);
      LOBYTE(v26) = 3;
      sub_2146DA368();
      if ((*(v3 + 104) & 1) == 0)
      {
        v14 = *(v3 + 96);
        LOBYTE(v26) = 4;
        sub_2146DA368();
        if ((*(v3 + 136) & 1) == 0)
        {
          v15 = *(v3 + 128);
          LOBYTE(v26) = 5;
          sub_2146DA368();
          if (*(v3 + 168))
          {
            v17 = *(v3 + 160);
            LOBYTE(v26) = 6;

            sub_2146DA328();

            v18 = *(v3 + 192);
            v19 = *(v3 + 200);
            v20 = *(v3 + 208);
            v26 = *(v3 + 184);
            v27 = v18;
            v28 = v19;
            v29 = v20;
            v30 = 7;
            sub_214304D70();

            sub_2146DA388();

            if (*(v3 + 240))
            {
              v21 = *(v3 + 232);
              LOBYTE(v26) = 8;

              sub_2146DA328();

              v26 = *(v3 + 256);
              v30 = 9;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909378, &qword_2146F5678);
              sub_214304DC4();
              sub_2146DA388();

              v22 = *(v3 + 264);
              LOBYTE(v26) = 10;
              sub_2146DA338();
              if ((*(v3 + 297) & 1) == 0)
              {
                v23 = *(v3 + 296);
                v26 = *(v3 + 288);
                LOBYTE(v27) = v23 & 1;
                v30 = 11;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
                sub_2142E1C30();
                sub_2146DA388();
                if ((*(v3 + 329) & 1) == 0)
                {
                  v24 = *(v3 + 328);
                  v26 = *(v3 + 320);
                  LOBYTE(v27) = v24 & 1;
                  v30 = 12;
                  sub_2146DA388();
                  v25 = *(type metadata accessor for IMS3GPPCharacteristic() + 68);
                  LOBYTE(v26) = 13;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909358, qword_214773860);
                  sub_214304E9C();
                  sub_2146DA388();
                  return (*(v6 + 8))(v9, v5);
                }
              }
            }
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141D8B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000214795DD0 == a2)
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

uint64_t sub_2141D8BC4(uint64_t a1)
{
  v2 = sub_214304F50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D8C00(uint64_t a1)
{
  v2 = sub_214304F50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D8C3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for IMSGSMACharacteristic();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9093D0, &qword_2146F5688);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304F50();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v17;
    sub_214328930(&qword_27C9093E0, type metadata accessor for IMSGSMACharacteristic);
    v14 = v18;
    sub_2146DA1C8();
    (*(v8 + 8))(v11, v7);
    sub_214328704(v14, v13, type metadata accessor for IMSGSMACharacteristic);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D8E48(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9093E8, &qword_2146F5690);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304F50();
  sub_2146DAA28();
  type metadata accessor for IMSGSMACharacteristic();
  sub_214328930(&qword_27C9093F0, type metadata accessor for IMSGSMACharacteristic);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2141D8FD8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9093E8, &qword_2146F5690);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304F50();
  sub_2146DAA28();
  type metadata accessor for IMSGSMACharacteristic();
  sub_214328930(&qword_27C9093F0, type metadata accessor for IMSGSMACharacteristic);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

_BYTE *sub_2141D9150@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, _BYTE *a9@<X8>, char *a10)
{
  v10 = *a2;
  v11 = *a3;
  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  v15 = *a7;
  v16 = *a8;
  v17 = *a10;
  *a9 = *result;
  a9[1] = v10;
  a9[2] = v11;
  a9[3] = v12;
  a9[4] = v13;
  a9[5] = v14;
  a9[6] = v15;
  a9[7] = v16;
  a9[8] = v17;
  return result;
}

unint64_t sub_2141D91A0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6C616E6769537370;
    v6 = 0x6964654D54527370;
    if (a1 != 2)
    {
      v6 = 0xD000000000000013;
    }

    if (a1)
    {
      v5 = 0x616964654D7370;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E67695369666977;
    v2 = 0x6964654D69666977;
    if (a1 != 7)
    {
      v2 = 0x654D545269666977;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x52616964654D7370;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2141D9300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214373ECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141D9328(uint64_t a1)
{
  v2 = sub_214304FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141D9364(uint64_t a1)
{
  v2 = sub_214304FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141D93A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9093F8, &qword_2146F5698);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304FA4();
  sub_2146DAA08();
  if (!v2)
  {
    v28 = 0;
    sub_214304FF8();
    sub_2146DA1C8();
    v26 = a2;
    v11 = v29;
    v28 = 1;
    v12 = sub_21430504C();
    sub_2146DA1C8();
    v25 = v12;
    v27 = v11;
    v13 = v29;
    v28 = 2;
    sub_2143050A0();
    sub_2146DA1C8();
    v24 = v13;
    LOBYTE(v13) = v29;
    v28 = 3;
    sub_2146DA1C8();
    v14 = v13;
    v15 = v29;
    v28 = 4;
    sub_2146DA1C8();
    LODWORD(v25) = v15;
    v16 = v29;
    v28 = 5;
    sub_2146DA1C8();
    v23 = v16;
    LOBYTE(v16) = v29;
    v28 = 6;
    sub_2143050F4();
    sub_2146DA1C8();
    LOBYTE(v12) = v29;
    v28 = 7;
    sub_214305148();
    sub_2146DA1C8();
    HIDWORD(v22) = v29;
    v28 = 8;
    sub_21430519C();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v18 = v29;
    v19 = v26;
    *v26 = v27;
    v20 = v25;
    v19[1] = v24;
    v19[2] = v14;
    v19[3] = v20;
    v21 = BYTE4(v22);
    v19[4] = v23;
    v19[5] = v16;
    v19[6] = v12;
    v19[7] = v21;
    v19[8] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141D9784(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909438, &qword_2146F56A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = *v1;
  v23 = v1[1];
  v10 = v1[2];
  v21 = v1[3];
  v22 = v10;
  v11 = v1[4];
  v19 = v1[5];
  v20 = v11;
  v12 = v1[6];
  v17 = v1[7];
  v18 = v12;
  HIDWORD(v16) = v1[8];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214304FA4();
  sub_2146DAA28();
  v25 = v9;
  v24 = 0;
  sub_2143051F0();
  sub_2146DA388();
  if (!v2)
  {
    v14 = v22;
    v25 = v23;
    v24 = 1;
    sub_214305244();
    sub_2146DA388();
    v25 = v14;
    v24 = 2;
    sub_214305298();
    sub_2146DA388();
    v25 = v21;
    v24 = 3;
    sub_2146DA388();
    v25 = v20;
    v24 = 4;
    sub_2146DA388();
    v25 = v19;
    v24 = 5;
    sub_2146DA388();
    v25 = v18;
    v24 = 6;
    sub_2143052EC();
    sub_2146DA388();
    v25 = v17;
    v24 = 7;
    sub_214305340();
    sub_2146DA388();
    v25 = BYTE4(v16);
    v24 = 8;
    sub_214305394();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2141D9B88@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v88 = a2;
  v13 = *a3;
  v14 = type metadata accessor for IMSGSMACharacteristic();
  v72 = a4;
  sub_213FB2E54(a4, a9 + v14[6], &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(a11, a9 + v14[10], &unk_27C904F30, &unk_2146EFA20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2140676DC;
  *(v16 + 24) = 0;
  *(inited + 32) = v16;
  sub_214042B80(inited, &v84);
  v17 = v85;
  v18 = v86;
  v19 = v87;
  sub_2144A3110(&v80);
  v21 = v81;
  v20 = v82;
  v22 = v83;
  sub_2144A3144(v78);
  v23 = v79;
  *a9 = v84;
  *(a9 + 16) = v17;
  *(a9 + 24) = v18;
  *(a9 + 32) = v19;
  *(a9 + 33) = v13;
  v24 = a9 + v14[7];
  *v24 = v80;
  *(v24 + 16) = v21;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  v25 = a9 + v14[8];
  v26 = v78[1];
  *v25 = v78[0];
  *(v25 + 16) = v26;
  *(v25 + 32) = v23;
  v27 = a9 + v14[9];
  *(v27 + 8) = *(a10 + 8);
  *v27 = *a10;
  v29 = *a9;
  v28 = *(a9 + 8);
  v31 = *(a9 + 16);
  v30 = *(a9 + 24);
  LOBYTE(v27) = *(a9 + 32);
  *&v80 = a1;
  *(&v80 + 1) = v88;
  v70 = v27;
  LOBYTE(v78[0]) = v27;
  *&v84 = 0xD00000000000001CLL;
  *(&v84 + 1) = 0x8000000214790380;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;

  v32 = v29(&v80, v78, &v84);
  if (v77)
  {

LABEL_6:

    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v72, &unk_27C9131A0, &unk_2146E9D10);
    v44 = *(a9 + 8);
    v45 = *(a9 + 24);

    *a9 = v29;
    *(a9 + 8) = v28;
    *(a9 + 16) = v31;
    *(a9 + 24) = v30;
    *(a9 + 32) = v70;
    return sub_21432887C(a9, type metadata accessor for IMSGSMACharacteristic);
  }

  v67 = v25;
  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD00000000000001CLL;
    v43[1] = 0x8000000214790380;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v33 = *(a9 + 8);
  v34 = *(a9 + 24);

  *a9 = v29;
  *(a9 + 8) = v28;
  v35 = v88;
  *(a9 + 16) = a1;
  *(a9 + 24) = v35;
  *(a9 + 32) = v70;
  v37 = *v24;
  v36 = *(v24 + 8);
  v38 = *(v24 + 16);
  v39 = *(v24 + 24);
  v40 = *(v24 + 32);
  *&v80 = a5;
  *(&v80 + 1) = a6;
  LODWORD(v88) = v40;
  LOBYTE(v78[0]) = v40;
  *&v84 = 0xD00000000000001ELL;
  *(&v84 + 1) = 0x80000002147903A0;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;
  v41 = v38;

  sub_213FDC9D0(v41, v39);
  v75 = v37;
  v42 = v37(&v80, v78, &v84);
  if ((v42 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v56 = 0xD00000000000001ELL;
    v56[1] = 0x80000002147903A0;
    v56[2] = 0xD00000000000001CLL;
    v56[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v72, &unk_27C9131A0, &unk_2146E9D10);
    v57 = *(v24 + 8);
    v58 = *(v24 + 16);
    v59 = *(v24 + 24);

    sub_213FDC6D0(v58, v59);
    *v24 = v75;
    *(v24 + 8) = v36;
    *(v24 + 16) = v41;
    *(v24 + 24) = v39;
    *(v24 + 32) = v88;
    return sub_21432887C(a9, type metadata accessor for IMSGSMACharacteristic);
  }

  sub_213FDC6D0(v41, v39);

  v47 = *(v24 + 8);
  v48 = *(v24 + 16);
  v49 = *(v24 + 24);

  sub_213FDC6D0(v48, v49);
  *v24 = v37;
  *(v24 + 8) = v36;
  *(v24 + 16) = a5;
  *(v24 + 24) = a6;
  *(v24 + 32) = v88;
  v51 = *v25;
  v50 = *(v25 + 8);
  v52 = *(v25 + 16);
  v53 = *(v25 + 24);
  v54 = *(v25 + 32);
  *&v80 = a7;
  *(&v80 + 1) = a8;
  v76 = v54;
  LOBYTE(v78[0]) = v54;
  *&v84 = 0xD000000000000022;
  *(&v84 + 1) = 0x80000002147903C0;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;

  sub_213FDC9D0(v52, v53);
  v88 = v51;
  v55 = v51(&v80, v78, &v84);
  if ((v55 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v63 = 0xD000000000000022;
    v63[1] = 0x80000002147903C0;
    v63[2] = 0xD00000000000001CLL;
    v63[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v72, &unk_27C9131A0, &unk_2146E9D10);
    v64 = *(v25 + 8);
    v65 = *(v25 + 16);
    v66 = *(v25 + 24);

    sub_213FDC6D0(v65, v66);
    *v67 = v88;
    *(v67 + 8) = v50;
    *(v67 + 16) = v52;
    *(v67 + 24) = v53;
    *(v67 + 32) = v76;
    return sub_21432887C(a9, type metadata accessor for IMSGSMACharacteristic);
  }

  sub_213FDC6D0(v52, v53);

  sub_213FB2DF4(a11, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2DF4(v72, &unk_27C9131A0, &unk_2146E9D10);
  v60 = *(v25 + 8);
  v61 = *(v25 + 16);
  v62 = *(v25 + 24);

  result = sub_213FDC6D0(v61, v62);
  *v25 = v88;
  *(v25 + 8) = v50;
  *(v25 + 16) = a7;
  *(v25 + 24) = a8;
  *(v25 + 32) = v76;
  return result;
}

uint64_t sub_2141DA274()
{
  v1 = *v0;
  v2 = 0x666552707061;
  v3 = 0x726F70736E617274;
  if (v1 != 5)
  {
    v3 = 0x756C615664697575;
  }

  v4 = 0x656D614E72657375;
  if (v1 != 3)
  {
    v4 = 0x7373615072657375;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6570795468747561;
  if (v1 != 1)
  {
    v5 = 0x6D6C616572;
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

uint64_t sub_2141DA360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143741DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141DA388(uint64_t a1)
{
  v2 = sub_2143053E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141DA3C4(uint64_t a1)
{
  v2 = sub_2143053E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141DA400@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v3 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v95 = &v83 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v83 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909470, &qword_2146F56A8);
  v97 = *(v9 - 8);
  v10 = *(v97 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v83 - v11;
  v13 = type metadata accessor for IMSGSMACharacteristic();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2143053E8();
  v19 = v98;
  sub_2146DAA08();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v99);
  }

  v92 = v13;
  v93 = v8;
  v98 = v16;
  LOBYTE(v106) = 0;
  v20 = sub_2146DA168();
  v22 = v21;
  v23 = v20;
  LOBYTE(v102) = 1;
  sub_21430543C();
  sub_2146DA1C8();
  LODWORD(v91) = v106;
  LOBYTE(v106) = 2;
  sub_2142E27A8();
  sub_2146DA1C8();
  v90 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v102) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v89 = v22;
  v25 = v106;
  LOBYTE(v102) = 4;
  sub_2146DA1C8();
  v26 = v93;
  v88 = v25;
  v27 = v106;
  v114 = 5;
  sub_214305490();
  sub_2146DA1C8();
  v87 = *(&v27 + 1);
  v110 = v112;
  v111 = v113;
  LOBYTE(v106) = 6;
  sub_2142EFBA8();
  v28 = v95;
  sub_2146DA1C8();
  v84 = v27;
  v29 = v92;
  v30 = v26;
  v31 = v98;
  sub_213FB2E54(v30, &v98[v92[6]], &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v28, v31 + v29[10], &unk_27C904F30, &unk_2146EFA20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_2140676DC;
  *(v33 + 24) = 0;
  *(inited + 32) = v33;
  sub_214042B80(inited, &v106);
  v34 = v107;
  v35 = v108;
  LOBYTE(v28) = v109;
  sub_2144A3110(&v102);
  v36 = v103;
  v96 = v104;
  LODWORD(v86) = v105;
  sub_2144A3144(v100);
  v37 = v101;
  *v31 = v106;
  *(v31 + 16) = v34;
  *(v31 + 24) = v35;
  *(v31 + 32) = v28;
  *(v31 + 33) = v91;
  v38 = v31 + v29[7];
  *v38 = v102;
  v39 = v96;
  *(v38 + 16) = v36;
  *(v38 + 24) = v39;
  v85 = v38;
  *(v38 + 32) = v86;
  v40 = v31 + v29[8];
  v41 = v100[1];
  *v40 = v100[0];
  *(v40 + 16) = v41;
  v86 = v40;
  *(v40 + 32) = v37;
  v42 = v31 + v29[9];
  *(v42 + 8) = v111;
  *v42 = v110;
  v44 = *v31;
  v43 = *(v31 + 8);
  v45 = *(v31 + 24);
  v91 = *(v31 + 16);
  v46 = *(v31 + 32);
  *&v102 = v90;
  *(&v102 + 1) = v89;
  LOBYTE(v100[0]) = v46;
  *&v106 = 0xD00000000000001CLL;
  *(&v106 + 1) = 0x8000000214790380;
  v107 = 0xD00000000000001CLL;
  v108 = 0x800000021478A360;
  v92 = v45;

  v96 = v44;
  v47 = v44(&v102, v100, &v106);
  if (v47)
  {
    v91 = v12;
    v83 = v9;

    v48 = v98;
    v49 = *(v98 + 1);
    v50 = *(v98 + 3);

    *v48 = v96;
    *(v48 + 8) = v43;
    v51 = v89;
    *(v48 + 16) = v90;
    *(v48 + 24) = v51;
    *(v48 + 32) = v46;
    v52 = *v85;
    v53 = *(v85 + 8);
    v54 = *(v85 + 16);
    v55 = *(v85 + 24);
    v56 = *(v85 + 32);
    v102 = v88;
    LOBYTE(v100[0]) = v56;
    *&v106 = 0xD00000000000001ELL;
    *(&v106 + 1) = 0x80000002147903A0;
    v107 = 0xD00000000000001CLL;
    v108 = 0x800000021478A360;

    v57 = v54;
    sub_213FDC9D0(v54, v55);
    v58 = v52(&v102, v100, &v106);
    if (v58)
    {
      sub_213FDC6D0(v54, v55);

      v64 = v85;
      v65 = *(v85 + 8);
      v66 = *(v85 + 16);
      v67 = *(v85 + 24);

      sub_213FDC6D0(v66, v67);
      *v64 = v52;
      *(v64 + 8) = v53;
      v68 = *(&v88 + 1);
      *(v64 + 16) = v88;
      *(v64 + 24) = v68;
      *(v64 + 32) = v56;
      v52 = *v86;
      v53 = *(v86 + 8);
      v69 = *(v86 + 16);
      v55 = *(v86 + 24);
      v56 = *(v86 + 32);
      *&v102 = v84;
      *(&v102 + 1) = v87;
      LOBYTE(v100[0]) = v56;
      *&v106 = 0xD000000000000022;
      *(&v106 + 1) = 0x80000002147903C0;
      v107 = 0xD00000000000001CLL;
      v108 = 0x800000021478A360;

      v57 = v69;
      sub_213FDC9D0(v69, v55);
      v70 = v52(&v102, v100, &v106);
      if (v70)
      {
        sub_213FDC6D0(v69, v55);

        sub_213FB2DF4(v95, &unk_27C904F30, &unk_2146EFA20);
        sub_213FB2DF4(v93, &unk_27C9131A0, &unk_2146E9D10);
        (*(v97 + 8))(v91, v83);
        v77 = v86;
        v78 = *(v86 + 8);
        v79 = *(v86 + 16);
        v80 = *(v86 + 24);

        sub_213FDC6D0(v79, v80);
        *v77 = v52;
        *(v77 + 8) = v53;
        v81 = v87;
        *(v77 + 16) = v84;
        *(v77 + 24) = v81;
        *(v77 + 32) = v56;
        sub_214328704(v98, v94, type metadata accessor for IMSGSMACharacteristic);
        return __swift_destroy_boxed_opaque_existential_1(v99);
      }

      sub_214031C4C();
      swift_allocError();
      *v82 = 0xD000000000000022;
      v82[1] = 0x80000002147903C0;
      v82[2] = 0xD00000000000001CLL;
      v82[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FB2DF4(v95, &unk_27C904F30, &unk_2146EFA20);
      sub_213FB2DF4(v93, &unk_27C9131A0, &unk_2146E9D10);
      (*(v97 + 8))(v91, v83);
      v72 = &v106 + 8;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v71 = 0xD00000000000001ELL;
      v71[1] = 0x80000002147903A0;
      v71[2] = 0xD00000000000001CLL;
      v71[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FB2DF4(v95, &unk_27C904F30, &unk_2146EFA20);
      sub_213FB2DF4(v93, &unk_27C9131A0, &unk_2146E9D10);
      (*(v97 + 8))(v91, v83);
      v72 = &v106;
    }

    v73 = *(v72 - 32);
    v74 = *(v73 + 8);
    v75 = *(v73 + 16);
    v76 = *(v73 + 24);

    sub_213FDC6D0(v75, v76);
    *v73 = v52;
    *(v73 + 8) = v53;
    *(v73 + 16) = v57;
    *(v73 + 24) = v55;
    *(v73 + 32) = v56;
    v60 = v98;
  }

  else
  {
    LODWORD(v94) = v46;
    sub_214031C4C();
    swift_allocError();
    *v59 = 0xD00000000000001CLL;
    v59[1] = 0x8000000214790380;
    v59[2] = 0xD00000000000001CLL;
    v59[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v95, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v93, &unk_27C9131A0, &unk_2146E9D10);
    (*(v97 + 8))(v12, v9);
    v60 = v98;
    v61 = *(v98 + 1);
    v62 = *(v98 + 3);

    *v60 = v96;
    *(v60 + 8) = v43;
    v63 = v92;
    *(v60 + 16) = v91;
    *(v60 + 24) = v63;
    *(v60 + 32) = v94;
  }

  __swift_destroy_boxed_opaque_existential_1(v99);
  return sub_21432887C(v60, type metadata accessor for IMSGSMACharacteristic);
}

uint64_t sub_2141DB17C(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909490, &qword_2146F56B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143053E8();
  sub_2146DAA28();
  if (!*(v4 + 24))
  {
    goto LABEL_7;
  }

  v12 = *(v4 + 16);
  LOBYTE(v24) = 0;

  sub_2146DA328();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
  }

  LOBYTE(v24) = *(v4 + 33);
  LOBYTE(v22) = 1;
  sub_2143054E4();
  sub_2146DA388();
  v14 = type metadata accessor for IMSGSMACharacteristic();
  v15 = v14[6];
  LOBYTE(v24) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  sub_2142E2910();
  sub_2146DA388();
  v16 = v4 + v14[7];
  v17 = *(v16 + 24);
  if (v17 == 1)
  {
    goto LABEL_7;
  }

  v24 = *(v16 + 16);
  v25 = v17;
  LOBYTE(v22) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v18 = v4 + v14[8];
  v19 = *(v18 + 24);
  if (v19 == 1)
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v24 = *(v18 + 16);
    v25 = v19;
    v27 = 4;
    sub_2146DA388();
    v20 = (v4 + v14[9]);
    v22 = *v20;
    v23 = *(v20 + 8);
    v26 = 5;
    sub_214305538();
    sub_2146DA388();
    v21 = v14[10];
    LOBYTE(v22) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    sub_2142EFE18();
    sub_2146DA388();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_2141DB56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v25[0] = a4;
  v7 = type metadata accessor for SwiftRegexValidator();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903220 != -1)
  {
    swift_once();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v13 = __swift_project_value_buffer(v12, qword_27CA19E98);
  (*(*(v12 - 8) + 16))(v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v14 = swift_allocObject();
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_214328704(v10, v16 + v15, type metadata accessor for SwiftRegexValidator);
  *(v14 + 16) = sub_21438F684;
  *(v14 + 24) = v16;
  *(inited + 32) = v14;
  sub_214042B80(inited, &v27);
  v18 = v27;
  v17 = v28;
  v19 = v31;
  v26[0] = a1;
  v26[1] = a2;
  v33 = v31;
  v27 = 0xD000000000000017;
  v28 = 0x80000002147903F0;
  v29 = 0xD00000000000001CLL;
  v30 = 0x800000021478A360;

  v20 = v25[1];
  v21 = v18(v26, &v33, &v27);
  if (v20)
  {
  }

  else
  {
    if (v21)
    {

      v23 = v25[0];
      *v25[0] = v18;
      *(v23 + 8) = v17;
      *(v23 + 16) = a1;
      *(v23 + 24) = a2;
      *(v23 + 32) = v19;
      *(v23 + 33) = v32;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000017;
    v24[1] = 0x80000002147903F0;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_2141DB8AC()
{
  if (*v0)
  {
    result = 0x5473736572646461;
  }

  else
  {
    result = 0x73736572646461;
  }

  *v0;
  return result;
}

uint64_t sub_2141DB8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5473736572646461 && a2 == 0xEB00000000657079)
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

uint64_t sub_2141DB9D0(uint64_t a1)
{
  v2 = sub_21430558C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141DBA0C(uint64_t a1)
{
  v2 = sub_21430558C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141DBA48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v4 = type metadata accessor for SwiftRegexValidator();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9094A8, &qword_2146F56B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_21430558C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v34 = v7;
  LOBYTE(v39) = 0;
  v13 = sub_2146DA168();
  v15 = v14;
  v33 = v13;
  LOBYTE(v38[0]) = 1;
  sub_2143055E0();
  sub_2146DA1C8();
  v32 = v15;
  v44 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v18 = inited;
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903220 != -1)
  {
    swift_once();
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v20 = __swift_project_value_buffer(v19, qword_27CA19E98);
  (*(*(v19 - 8) + 16))(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v21 = swift_allocObject();
  v22 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v23 = swift_allocObject();
  sub_214328704(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for SwiftRegexValidator);
  *(v21 + 16) = sub_21438F684;
  *(v21 + 24) = v23;
  *(v18 + 32) = v21;
  sub_214042B80(v18, &v39);
  v24 = v39;
  v25 = v40;
  v26 = v42;
  v27 = v43;
  v38[0] = v33;
  v38[1] = v32;
  v45 = v43;
  v39 = 0xD000000000000017;
  v40 = 0x80000002147903F0;
  v41 = 0xD00000000000001CLL;
  v42 = 0x800000021478A360;
  v36 = v26;

  if (v24(v38, &v45, &v39))
  {
    v28 = v24;

    (*(v34 + 8))(v10, v6);

    v29 = v35;
    *v35 = v28;
    v29[1] = v25;
    v30 = v32;
    v29[2] = v33;
    v29[3] = v30;
    *(v29 + 32) = v27;
    *(v29 + 33) = v44;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000017;
    v31[1] = 0x80000002147903F0;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v34 + 8))(v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_2141DBF90(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9094C0, &qword_2146F56C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v14 = *(v1 + 33);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430558C();
  sub_2146DAA28();
  if (v9)
  {
    v17 = 0;

    v11 = v13[1];
    sub_2146DA328();
    if (v11)
    {
      (*(v4 + 8))(v7, v3);
    }

    else
    {

      v16 = v14;
      v15 = 1;
      sub_214305634();
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

uint64_t sub_2141DC1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6573736572646461 && a2 == 0xE900000000000073)
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

uint64_t sub_2141DC278(uint64_t a1)
{
  v2 = sub_214305688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141DC2B4(uint64_t a1)
{
  v2 = sub_214305688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141DC2F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9094D0, &qword_2146F56C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214305688();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9094E0, &qword_2146F56D0);
    sub_2143056DC();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141DC470(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9094F8, &qword_2146F56D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214305688();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9094E0, &qword_2146F56D0);
  sub_2143057B4();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2141DC614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v87 = a12;
  v63 = *a4;
  sub_213FB2E54(a1, a9, &qword_27C909510, &qword_2146F56E0);
  v15 = type metadata accessor for MessagingCharacteristic(0);
  v71 = a2;
  sub_213FB2E54(a2, a9 + v15[5], &qword_27C909518, &qword_2146F56E8);
  v72 = a8;
  sub_213FB2E54(a8, a9 + v15[10], &qword_27C909520, &qword_2146F56F0);
  sub_213FB2E54(a10, a9 + v15[11], &qword_27C909528, &qword_2146F56F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2146ED240;
  *(v17 + 16) = sub_21438F468;
  *(v17 + 24) = v18;
  *(inited + 32) = v17;
  sub_21404328C(inited, &v83);
  v19 = v84;
  LOBYTE(v17) = v85;
  v20 = v86;
  sub_2145154D0(&v78);
  v21 = v79;
  LOBYTE(a8) = v80;
  LOBYTE(a2) = v81;
  v60 = v82;
  sub_21451550C(&v75);
  v22 = v77;
  v23 = a9 + v15[6];
  *v23 = v83;
  *(v23 + 16) = v19;
  *(v23 + 24) = v17;
  *(v23 + 25) = v20;
  *(a9 + v15[7]) = v63;
  *(a9 + v15[8]) = a5;
  v24 = a9 + v15[9];
  *v24 = v78;
  *(v24 + 16) = v21;
  *(v24 + 24) = a8;
  *(v24 + 25) = a2;
  *(v24 + 26) = v60;
  v25 = a9 + v15[12];
  v26 = v76;
  *v25 = v75;
  *(v25 + 16) = v26;
  *(v25 + 32) = v22;
  v28 = *v23;
  v27 = *(v23 + 8);
  v61 = *(v23 + 16);
  v29 = *(v23 + 24);
  v30 = *(v23 + 25);
  LOBYTE(v83) = v29;
  *&v78 = a3;
  v65 = v30;
  v74 = v30;
  *&v75 = 0xD00000000000002ELL;
  *(&v75 + 1) = 0x8000000214790410;
  *&v76 = 0xD00000000000001CLL;
  *(&v76 + 1) = 0x800000021478A360;

  v31 = v28(&v78, &v74, &v75);
  if (v70)
  {

    sub_213FB2DF4(a10, &qword_27C909528, &qword_2146F56F8);
    sub_213FB2DF4(v72, &qword_27C909520, &qword_2146F56F0);
    sub_213FB2DF4(v71, &qword_27C909518, &qword_2146F56E8);
    sub_213FB2DF4(a1, &qword_27C909510, &qword_2146F56E0);

LABEL_6:
    v38 = *(v23 + 8);

    *v23 = v28;
    *(v23 + 8) = v27;
    *(v23 + 16) = v61;
    *(v23 + 24) = v29;
    *(v23 + 25) = v65;
    return sub_21432887C(a9, type metadata accessor for MessagingCharacteristic);
  }

  v57 = v25;
  if ((v31 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD00000000000002ELL;
    v37[1] = 0x8000000214790410;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a10, &qword_27C909528, &qword_2146F56F8);
    sub_213FB2DF4(v72, &qword_27C909520, &qword_2146F56F0);
    sub_213FB2DF4(v71, &qword_27C909518, &qword_2146F56E8);
    sub_213FB2DF4(a1, &qword_27C909510, &qword_2146F56E0);
    v29 = v83;
    goto LABEL_6;
  }

  v32 = *(v23 + 8);

  *v23 = v28;
  *(v23 + 8) = v27;
  *(v23 + 16) = a3;
  *(v23 + 24) = 0;
  *(v23 + 25) = v65;
  v34 = *v24;
  v33 = *(v24 + 8);
  v68 = *(v24 + 16);
  v66 = *(v24 + 24);
  v62 = *(v24 + 25);
  v35 = *(v24 + 26);
  *&v78 = a6;
  BYTE8(v78) = a7 & 1;
  LOBYTE(v83) = v35;
  *&v75 = 0xD00000000000002BLL;
  *(&v75 + 1) = 0x8000000214790440;
  *&v76 = 0xD00000000000001CLL;
  *(&v76 + 1) = 0x800000021478A360;

  v36 = v34(&v78, &v83, &v75);
  if ((v36 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v47 = 0xD00000000000002BLL;
    v47[1] = 0x8000000214790440;
    v47[2] = 0xD00000000000001CLL;
    v47[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a10, &qword_27C909528, &qword_2146F56F8);
    sub_213FB2DF4(v72, &qword_27C909520, &qword_2146F56F0);
    sub_213FB2DF4(v71, &qword_27C909518, &qword_2146F56E8);
    sub_213FB2DF4(a1, &qword_27C909510, &qword_2146F56E0);
    v48 = *(v24 + 8);

    *v24 = v34;
    *(v24 + 8) = v33;
    *(v24 + 16) = v68;
    *(v24 + 24) = v66;
    *(v24 + 25) = v62;
    *(v24 + 26) = v35;
    return sub_21432887C(a9, type metadata accessor for MessagingCharacteristic);
  }

  v40 = *(v24 + 8);

  *v24 = v34;
  *(v24 + 8) = v33;
  *(v24 + 16) = a6;
  *(v24 + 24) = a7 & 1;
  *(v24 + 25) = 0;
  *(v24 + 26) = v35;
  v42 = *v25;
  v41 = *(v25 + 8);
  v43 = *(v25 + 16);
  v44 = *(v57 + 24);
  v45 = *(v57 + 32);
  *&v78 = a11;
  *(&v78 + 1) = v87;
  v69 = v45;
  LOBYTE(v83) = v45;
  *&v75 = 0xD000000000000035;
  *(&v75 + 1) = 0x8000000214790470;
  *&v76 = 0xD00000000000001CLL;
  *(&v76 + 1) = 0x800000021478A360;

  sub_213FDC9D0(v43, v44);
  v46 = v42(&v78, &v83, &v75);
  if (v46)
  {
    sub_213FDC6D0(v43, v44);

    sub_213FB2DF4(a10, &qword_27C909528, &qword_2146F56F8);
    sub_213FB2DF4(v72, &qword_27C909520, &qword_2146F56F0);
    sub_213FB2DF4(v71, &qword_27C909518, &qword_2146F56E8);
    sub_213FB2DF4(a1, &qword_27C909510, &qword_2146F56E0);
    v49 = *(v57 + 8);
    v50 = *(v57 + 16);
    v51 = *(v57 + 24);

    result = sub_213FDC6D0(v50, v51);
    *v57 = v42;
    *(v57 + 8) = v41;
    v52 = v87;
    *(v57 + 16) = a11;
    *(v57 + 24) = v52;
    *(v57 + 32) = v69;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v53 = 0xD000000000000035;
    v53[1] = 0x8000000214790470;
    v53[2] = 0xD00000000000001CLL;
    v53[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a10, &qword_27C909528, &qword_2146F56F8);
    sub_213FB2DF4(v72, &qword_27C909520, &qword_2146F56F0);
    sub_213FB2DF4(v71, &qword_27C909518, &qword_2146F56E8);
    sub_213FB2DF4(a1, &qword_27C909510, &qword_2146F56E0);
    v54 = *(v57 + 8);
    v55 = *(v57 + 16);
    v56 = *(v57 + 24);

    sub_213FDC6D0(v55, v56);
    *v57 = v42;
    *(v57 + 8) = v41;
    *(v57 + 16) = v43;
    *(v57 + 24) = v44;
    *(v57 + 32) = v69;
    return sub_21432887C(a9, type metadata accessor for MessagingCharacteristic);
  }

  return result;
}

unint64_t sub_2141DCEFC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    v6 = 0xD000000000000012;
    if (!a1)
    {
      v6 = 0xD00000000000001BLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD00000000000001ALL;
    v2 = 0xD00000000000001DLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 == 4)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2141DD000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214374430(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141DD028(uint64_t a1)
{
  v2 = sub_21430588C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141DD064(uint64_t a1)
{
  v2 = sub_21430588C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141DD0A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909528, &qword_2146F56F8);
  v3 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v83 = &v70 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909520, &qword_2146F56F0);
  v5 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v85 = &v70 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909518, &qword_2146F56E8);
  v7 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v70 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909510, &qword_2146F56E0);
  v9 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909530, &qword_2146F5700);
  v89 = *(v12 - 8);
  v13 = *(v89 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v70 - v14;
  v16 = type metadata accessor for MessagingCharacteristic(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430588C();
  v21 = v103;
  sub_2146DAA08();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v80 = v16;
  v103 = v19;
  LOBYTE(v91) = 0;
  sub_2143058E0();
  sub_2146DA1C8();
  v22 = v11;
  LOBYTE(v91) = 1;
  sub_214305994();
  sub_2146DA1C8();
  LOBYTE(v91) = 2;
  v88 = sub_2146DA1A8();
  LOBYTE(v94) = 3;
  sub_214305A48();
  sub_2146DA1C8();
  v24 = v91;
  LOBYTE(v91) = 4;
  LODWORD(v87) = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v94) = 5;
  sub_2142E11FC();
  sub_2146DA1C8();
  v79 = v22;
  v25 = v91;
  LODWORD(v22) = BYTE8(v91);
  LOBYTE(v91) = 6;
  sub_214305A9C();
  sub_2146DA1C8();
  v78 = v22;
  v84 = v25;
  LOBYTE(v91) = 7;
  sub_214305B50();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v94) = 8;
  sub_2142E12FC();
  sub_2146DA1C8();
  v76 = v15;
  v77 = v12;
  v82 = *(&v91 + 1);
  v70 = v91;
  v26 = v103;
  sub_213FB2E54(v79, v103, &qword_27C909510, &qword_2146F56E0);
  v27 = v80;
  sub_213FB2E54(v86, v26 + v80[5], &qword_27C909518, &qword_2146F56E8);
  sub_213FB2E54(v85, v26 + v27[10], &qword_27C909520, &qword_2146F56F0);
  sub_213FB2E54(v83, v26 + v27[11], &qword_27C909528, &qword_2146F56F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v29 = swift_allocObject();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2146ED240;
  *(v29 + 16) = sub_21438F468;
  *(v29 + 24) = v30;
  *(inited + 32) = v29;
  sub_21404328C(inited, &v99);
  v31 = v100;
  v32 = v101;
  v71 = v102;
  sub_2145154D0(&v94);
  v75 = v95;
  LODWORD(v74) = v96;
  v73 = v97;
  v72 = v98;
  sub_21451550C(&v91);
  v33 = v93;
  v34 = v26 + v27[6];
  *v34 = v99;
  *(v34 + 16) = v31;
  *(v34 + 24) = v32;
  *(v34 + 25) = v71;
  *(v26 + v27[7]) = v24;
  *(v26 + v27[8]) = v87 & 1;
  v35 = v26 + v27[9];
  *v35 = v94;
  *(v35 + 16) = v75;
  *(v35 + 24) = v74;
  *(v35 + 25) = v73;
  *(v35 + 26) = v72;
  v36 = v26 + v27[12];
  v37 = v92;
  *v36 = v91;
  *(v36 + 16) = v37;
  *(v36 + 32) = v33;
  v38 = *v34;
  v39 = *(v34 + 8);
  v74 = *(v34 + 16);
  v40 = *(v34 + 25);
  LOBYTE(v99) = *(v34 + 24);
  *&v94 = v88;
  LODWORD(v80) = v40;
  v90 = v40;
  *&v91 = 0xD00000000000002ELL;
  *(&v91 + 1) = 0x8000000214790410;
  *&v92 = 0xD00000000000001CLL;
  *(&v92 + 1) = 0x800000021478A360;
  v87 = 0x800000021478A360;

  v75 = v38;
  if (v38(&v94, &v90, &v91))
  {
    v41 = v87;

    v42 = *(v34 + 8);

    *v34 = v75;
    *(v34 + 8) = v39;
    *(v34 + 16) = v88;
    *(v34 + 24) = 0;
    *(v34 + 25) = v80;
    v44 = *v35;
    v43 = *(v35 + 8);
    v88 = *(v35 + 16);
    LODWORD(v80) = *(v35 + 24);
    LODWORD(v75) = *(v35 + 25);
    v45 = *(v35 + 26);
    *&v94 = v84;
    BYTE8(v94) = v78;
    LOBYTE(v99) = v45;
    *&v91 = 0xD00000000000002BLL;
    *(&v91 + 1) = 0x8000000214790440;
    *&v92 = 0xD00000000000001CLL;
    *(&v92 + 1) = v41;

    if (v44(&v94, &v99, &v91))
    {
      v50 = v87;

      v51 = *(v35 + 8);

      *v35 = v44;
      *(v35 + 8) = v43;
      *(v35 + 16) = v84;
      *(v35 + 24) = v78;
      *(v35 + 25) = 0;
      *(v35 + 26) = v45;
      v53 = *v36;
      v52 = *(v36 + 8);
      v55 = *(v36 + 16);
      v54 = *(v36 + 24);
      v56 = *(v36 + 32);
      *&v94 = v70;
      *(&v94 + 1) = v82;
      LODWORD(v84) = v56;
      LOBYTE(v99) = v56;
      *&v91 = 0xD000000000000035;
      *(&v91 + 1) = 0x8000000214790470;
      *&v92 = 0xD00000000000001CLL;
      *(&v92 + 1) = v50;

      v80 = v54;
      sub_213FDC9D0(v55, v54);
      v88 = v53;
      if (v53(&v94, &v99, &v91))
      {
        sub_213FDC6D0(v55, v80);

        sub_213FB2DF4(v83, &qword_27C909528, &qword_2146F56F8);
        sub_213FB2DF4(v85, &qword_27C909520, &qword_2146F56F0);
        sub_213FB2DF4(v86, &qword_27C909518, &qword_2146F56E8);
        sub_213FB2DF4(v79, &qword_27C909510, &qword_2146F56E0);
        (*(v89 + 8))(v76, v77);
        v60 = *(v36 + 8);
        v61 = *(v36 + 16);
        v62 = *(v36 + 24);

        sub_213FDC6D0(v61, v62);
        *v36 = v88;
        *(v36 + 8) = v52;
        v63 = v82;
        *(v36 + 16) = v70;
        *(v36 + 24) = v63;
        *(v36 + 32) = v84;
        sub_214328704(v103, v81, type metadata accessor for MessagingCharacteristic);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      sub_214031C4C();
      swift_allocError();
      *v64 = 0xD000000000000035;
      v64[1] = 0x8000000214790470;
      v65 = v87;
      v64[2] = 0xD00000000000001CLL;
      v64[3] = v65;
      swift_willThrow();

      sub_213FB2DF4(v83, &qword_27C909528, &qword_2146F56F8);
      sub_213FB2DF4(v85, &qword_27C909520, &qword_2146F56F0);
      sub_213FB2DF4(v86, &qword_27C909518, &qword_2146F56E8);
      sub_213FB2DF4(v79, &qword_27C909510, &qword_2146F56E0);
      (*(v89 + 8))(v76, v77);
      v66 = *(v36 + 8);
      v67 = *(v36 + 16);
      v68 = *(v36 + 24);

      sub_213FDC6D0(v67, v68);
      *v36 = v88;
      *(v36 + 8) = v52;
      v69 = v80;
      *(v36 + 16) = v55;
      *(v36 + 24) = v69;
      *(v36 + 32) = v84;
    }

    else
    {

      sub_214031C4C();
      swift_allocError();
      *v57 = 0xD00000000000002BLL;
      v57[1] = 0x8000000214790440;
      v58 = v87;
      v57[2] = 0xD00000000000001CLL;
      v57[3] = v58;
      swift_willThrow();
      sub_213FB2DF4(v83, &qword_27C909528, &qword_2146F56F8);
      sub_213FB2DF4(v85, &qword_27C909520, &qword_2146F56F0);
      sub_213FB2DF4(v86, &qword_27C909518, &qword_2146F56E8);
      sub_213FB2DF4(v79, &qword_27C909510, &qword_2146F56E0);
      (*(v89 + 8))(v76, v77);
      v59 = *(v35 + 8);

      *v35 = v44;
      *(v35 + 8) = v43;
      *(v35 + 16) = v88;
      *(v35 + 24) = v80;
      *(v35 + 25) = v75;
      *(v35 + 26) = v45;
    }
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD00000000000002ELL;
    v46[1] = 0x8000000214790410;
    v47 = v87;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = v47;
    swift_willThrow();
    sub_213FB2DF4(v83, &qword_27C909528, &qword_2146F56F8);
    sub_213FB2DF4(v85, &qword_27C909520, &qword_2146F56F0);
    sub_213FB2DF4(v86, &qword_27C909518, &qword_2146F56E8);
    sub_213FB2DF4(v79, &qword_27C909510, &qword_2146F56E0);
    (*(v89 + 8))(v76, v77);
    v48 = v99;
    v49 = *(v34 + 8);

    *v34 = v75;
    *(v34 + 8) = v39;
    *(v34 + 16) = v74;
    *(v34 + 24) = v48;
    *(v34 + 25) = v80;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21432887C(v103, type metadata accessor for MessagingCharacteristic);
}

uint64_t sub_2141DE248(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909588, &qword_2146F5708);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430588C();
  sub_2146DAA28();
  LOBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909510, &qword_2146F56E0);
  sub_214305C04();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = type metadata accessor for MessagingCharacteristic(0);
  v12 = v11[5];
  LOBYTE(v24) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909518, &qword_2146F56E8);
  sub_214305CB8();
  sub_2146DA388();
  v13 = v3 + v11[6];
  if ((*(v13 + 24) & 1) == 0)
  {
    v14 = *(v13 + 16);
    LOBYTE(v24) = 2;
    sub_2146DA368();
    LOBYTE(v24) = *(v3 + v11[7]);
    v26 = 3;
    sub_214305D6C();
    sub_2146DA388();
    v15 = *(v3 + v11[8]);
    LOBYTE(v24) = 4;
    sub_2146DA338();
    v16 = v3 + v11[9];
    if ((*(v16 + 25) & 1) == 0)
    {
      v17 = *(v16 + 24);
      v24 = *(v16 + 16);
      LOBYTE(v25) = v17 & 1;
      v26 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
      sub_2142E1C30();
      sub_2146DA388();
      v18 = v11[10];
      LOBYTE(v24) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909520, &qword_2146F56F0);
      sub_214305DC0();
      sub_2146DA388();
      v19 = v11[11];
      LOBYTE(v24) = 7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909528, &qword_2146F56F8);
      sub_214305E74();
      sub_2146DA388();
      v20 = v3 + v11[12];
      v21 = *(v20 + 24);
      if (v21 != 1)
      {
        v24 = *(v20 + 16);
        v25 = v21;
        v26 = 8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
        sub_214045AC0();
        sub_2146DA388();
        return (*(v6 + 8))(v9, v5);
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141DE698@<X0>(uint64_t (*a1)(void, char *, __int128 *)@<X0>, uint64_t (*a2)(void, char *, __int128 *)@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(type metadata accessor for StandaloneMsgCharacteristic(0) + 24);
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  v41 = a4;
  (*(v9 + 16))(a5 + v7, a4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2146ED240;
  *(v11 + 16) = sub_21438F468;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  sub_21404328C(inited, &v47);
  v14 = v47;
  v13 = v48;
  v15 = v49;
  v16 = v50;
  v17 = v51;
  sub_214515A80(&v44);
  v18 = v45;
  v19 = v46;
  v20 = BYTE1(v46);
  v21 = BYTE2(v46);
  *a5 = v14;
  *(a5 + 8) = v13;
  *(a5 + 16) = v15;
  *(a5 + 24) = v16;
  *(a5 + 25) = v17;
  *(a5 + 32) = v44;
  *(a5 + 48) = v18;
  *(a5 + 56) = v19;
  *(a5 + 57) = v20;
  *(a5 + 58) = v21;
  v52 = v16;
  v47 = a1;
  v53 = v17;
  *&v44 = 0xD000000000000023;
  *(&v44 + 1) = 0x80000002147904B0;
  v45 = 0xD00000000000001CLL;
  v46 = 0x800000021478A360;

  v22 = v14(&v47, &v53, &v44);
  if (v40)
  {
    (*(v9 + 8))(v41, v8);

LABEL_6:
    v30 = v52;
    v31 = *(a5 + 8);

    *a5 = v14;
    *(a5 + 8) = v13;
    *(a5 + 16) = v15;
    *(a5 + 24) = v30;
    *(a5 + 25) = v17;
    return sub_21432887C(a5, type metadata accessor for StandaloneMsgCharacteristic);
  }

  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000023;
    v29[1] = 0x80000002147904B0;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v9 + 8))(v41, v8);
    goto LABEL_6;
  }

  v23 = *(a5 + 8);

  *a5 = v14;
  *(a5 + 8) = v13;
  *(a5 + 16) = a1;
  *(a5 + 24) = 0;
  *(a5 + 25) = v17;
  v25 = *(a5 + 32);
  v24 = *(a5 + 40);
  v26 = *(a5 + 48);
  v39 = *(a5 + 56);
  v27 = *(a5 + 58);
  v52 = *(a5 + 57);
  v47 = a2;
  LOBYTE(v48) = a3 & 1;
  v53 = v27;
  v43 = v26;
  *&v44 = 0xD00000000000002ALL;
  *(&v44 + 1) = 0x80000002147904E0;
  v45 = 0xD00000000000001CLL;
  v46 = 0x800000021478A360;

  v28 = v25(&v47, &v53, &v44);
  if ((v28 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD00000000000002ALL;
    v34[1] = 0x80000002147904E0;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v9 + 8))(v41, v8);
    v35 = v52;
    v36 = *(a5 + 40);

    *(a5 + 32) = v25;
    *(a5 + 40) = v24;
    *(a5 + 48) = v43;
    *(a5 + 56) = v39;
    *(a5 + 57) = v35;
    *(a5 + 58) = v27;
    return sub_21432887C(a5, type metadata accessor for StandaloneMsgCharacteristic);
  }

  (*(v9 + 8))(v41, v8);
  v33 = *(a5 + 40);

  *(a5 + 32) = v25;
  *(a5 + 40) = v24;
  *(a5 + 48) = a2;
  *(a5 + 56) = a3 & 1;
  *(a5 + 57) = 0;
  *(a5 + 58) = v27;
  return result;
}

uint64_t sub_2141DEB3C()
{
  v1 = 0x766F686374697773;
  if (*v0 != 1)
  {
    v1 = 0x7265646F6C707865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657A695378616DLL;
  }
}

uint64_t sub_2141DEBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214374704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141DEBD4(uint64_t a1)
{
  v2 = sub_214305F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141DEC10(uint64_t a1)
{
  v2 = sub_214305F28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141DEC4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_2146D8958();
  v70 = *(v3 - 8);
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9095D8, &qword_2146F5710);
  v71 = *(v7 - 8);
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - v9;
  v11 = type metadata accessor for StandaloneMsgCharacteristic(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_214305F28();
  v17 = v72;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v18 = v11;
  v68 = v6;
  v72 = v14;
  LOBYTE(v74) = 0;
  v19 = v10;
  v20 = sub_2146DA1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v77) = 1;
  sub_2142E11FC();
  sub_2146DA1C8();
  v21 = v71;
  v66 = v74;
  v67 = v20;
  LODWORD(v20) = BYTE8(v74);
  LOBYTE(v74) = 2;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260]);
  v22 = v68;
  sub_2146DA1C8();
  v61 = v20;
  v65 = v19;
  v24 = v22;
  v25 = v72;
  (*(v70 + 16))(&v72[*(v18 + 24)], v24, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2146ED240;
  *(v27 + 16) = sub_21438F468;
  *(v27 + 24) = v28;
  *(inited + 32) = v27;
  sub_21404328C(inited, &v77);
  v62 = v3;
  v30 = v77;
  v29 = v78;
  v31 = v79;
  LOBYTE(v19) = v80;
  LODWORD(v27) = v81;
  sub_214515A80(&v74);
  v32 = v75;
  v33 = v76;
  v34 = BYTE1(v76);
  v35 = BYTE2(v76);
  *v25 = v30;
  *(v25 + 1) = v29;
  *(v25 + 2) = v31;
  v25[24] = v19;
  v25[25] = v27;
  *(v25 + 2) = v74;
  *(v25 + 6) = v32;
  v25[56] = v33;
  v25[57] = v34;
  v25[58] = v35;
  v82 = v19;
  v77 = v67;
  LODWORD(v64) = v27;
  v83 = v27;
  v36 = v30;
  *&v74 = 0xD000000000000023;
  *(&v74 + 1) = 0x80000002147904B0;
  v75 = 0xD00000000000001CLL;
  v76 = 0x800000021478A360;

  v63 = v29;
  v37 = v30(&v77, &v83, &v74);
  v38 = v62;
  if (v37)
  {

    v39 = v72;
    v40 = *(v72 + 1);

    v41 = v63;
    *v39 = v36;
    *(v39 + 1) = v41;
    *(v39 + 2) = v67;
    v39[24] = 0;
    v39[25] = v64;
    v43 = *(v39 + 4);
    v42 = *(v39 + 5);
    v64 = *(v39 + 6);
    LODWORD(v63) = v39[56];
    v44 = v39[58];
    v82 = v39[57];
    v45 = v66;
    v77 = v66;
    LOBYTE(v78) = v61;
    LODWORD(v67) = v44;
    v83 = v44;
    *&v74 = 0xD00000000000002ALL;
    *(&v74 + 1) = 0x80000002147904E0;
    v75 = 0xD00000000000001CLL;
    v76 = 0x800000021478A360;

    v46 = v43(&v77, &v83, &v74);
    v60 = 0x800000021478A360;
    v52 = v70;
    v53 = v71;
    if (v46)
    {

      (*(v52 + 8))(v68, v38);
      (*(v53 + 8))(v65, v7);
      v54 = v72;
      v55 = *(v72 + 5);

      *(v54 + 32) = v43;
      *(v54 + 40) = v42;
      *(v54 + 48) = v45;
      *(v54 + 56) = v61;
      *(v54 + 57) = 0;
      *(v54 + 58) = v67;
      sub_214328704(v54, v69, type metadata accessor for StandaloneMsgCharacteristic);
      return __swift_destroy_boxed_opaque_existential_1(v73);
    }

    sub_214031C4C();
    swift_allocError();
    *v56 = 0xD00000000000002ALL;
    v56[1] = 0x80000002147904E0;
    v57 = v60;
    v56[2] = 0xD00000000000001CLL;
    v56[3] = v57;
    swift_willThrow();
    (*(v52 + 8))(v68, v38);
    (*(v53 + 8))(v65, v7);
    v58 = v82;
    v49 = v72;
    v59 = *(v72 + 5);

    *(v49 + 32) = v43;
    *(v49 + 40) = v42;
    *(v49 + 48) = v64;
    *(v49 + 56) = v63;
    *(v49 + 57) = v58;
    *(v49 + 58) = v67;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v47 = 0xD000000000000023;
    v47[1] = 0x80000002147904B0;
    v47[2] = 0xD00000000000001CLL;
    v47[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v70 + 8))(v68, v38);
    (*(v21 + 8))(v65, v7);
    v48 = v82;
    v49 = v72;
    v50 = *(v72 + 1);

    v51 = v63;
    *v49 = v36;
    *(v49 + 8) = v51;
    *(v49 + 16) = v31;
    *(v49 + 24) = v48;
    *(v49 + 25) = v64;
  }

  __swift_destroy_boxed_opaque_existential_1(v73);
  return sub_21432887C(v49, type metadata accessor for StandaloneMsgCharacteristic);
}

uint64_t sub_2141DF4B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9095E8, &qword_2146F5718);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214305F28();
  sub_2146DAA28();
  if ((*(v3 + 24) & 1) == 0)
  {
    v11 = *(v3 + 16);
    v18 = 0;
    sub_2146DA368();
    if (v2)
    {
      return (*(v6 + 8))(v9, v5);
    }

    if ((*(v3 + 57) & 1) == 0)
    {
      v12 = *(v3 + 56);
      v16 = *(v3 + 48);
      v17 = v12 & 1;
      v15[15] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
      sub_2142E1C30();
      sub_2146DA388();
      v13 = *(type metadata accessor for StandaloneMsgCharacteristic(0) + 24);
      v15[14] = 2;
      sub_2146D8958();
      sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260]);
      sub_2146DA388();
      return (*(v6 + 8))(v9, v5);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141DF754@<X0>(uint64_t (*a1)(void, void, void)@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, unsigned __int8 a12, char a13, __int128 a14)
{
  v150 = a1;
  v16 = type metadata accessor for ChatCharacteristic(0);
  v118 = a3;
  sub_213FB2E54(a3, a9 + v16[5], &unk_27C9131A0, &unk_2146E9D10);
  sub_214515C94(&v145);
  v17 = v146;
  v109 = v148;
  v111 = v147;
  v107 = v149;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2146ED240;
  *(v19 + 16) = sub_21438F468;
  *(v19 + 24) = v20;
  *(inited + 32) = v19;
  sub_21404328C(inited, &v141);
  v106 = v142;
  v105 = v143;
  v103 = v144;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_2146E9BF0;
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2146ED240;
  *(v22 + 16) = sub_21438F468;
  *(v22 + 24) = v23;
  *(v21 + 32) = v22;
  sub_21404328C(v21, &v137);
  v102 = v138;
  v100 = v139;
  v98 = v140;
  sub_214515CD0(&v132);
  v97 = v133;
  LOBYTE(inited) = v135;
  v95 = v136;
  v96 = v134;
  sub_214515D0C(&v127);
  v24 = v128;
  LOBYTE(v19) = v129;
  v94 = v130;
  v25 = v131;
  sub_214515D48(&v124);
  v26 = v126;
  *a9 = v145;
  *(a9 + 16) = v17;
  *(a9 + 24) = v111;
  *(a9 + 25) = v109;
  *(a9 + 26) = v107;
  *(a9 + v16[6]) = a4;
  *(a9 + v16[7]) = a5;
  v27 = a9 + v16[8];
  *v27 = v141;
  *(v27 + 16) = v106;
  *(v27 + 24) = v105;
  *(v27 + 25) = v103;
  v28 = a9 + v16[9];
  *v28 = v137;
  *(v28 + 16) = v102;
  *(v28 + 24) = v100;
  *(v28 + 25) = v98;
  v29 = a9 + v16[10];
  *v29 = v132;
  *(v29 + 16) = v97;
  *(v29 + 24) = v96;
  *(v29 + 25) = inited;
  *(v29 + 26) = v95;
  v30 = a9 + v16[11];
  *v30 = v127;
  *(v30 + 16) = v24;
  *(v30 + 24) = v19;
  *(v30 + 25) = v94;
  *(v30 + 26) = v25;
  *(a9 + v16[12]) = a13;
  v31 = a9 + v16[13];
  v32 = v125;
  *v31 = v124;
  *(v31 + 16) = v32;
  *(v31 + 32) = v26;
  v34 = *a9;
  v33 = *(a9 + 8);
  v112 = *(a9 + 16);
  v108 = *(a9 + 25);
  v110 = *(a9 + 24);
  v119 = a9;
  v35 = *(a9 + 26);
  *&v145 = v150;
  BYTE8(v145) = a2 & 1;
  v115 = v35;
  LOBYTE(v132) = v35;
  *&v124 = 0xD000000000000024;
  *(&v124 + 1) = 0x8000000214790510;
  *&v125 = 0xD00000000000001CLL;
  *(&v125 + 1) = 0x800000021478A360;

  v36 = v34(&v145, &v132, &v124);
  if (v116)
  {

    sub_213FB2DF4(v118, &unk_27C9131A0, &unk_2146E9D10);

LABEL_6:
    v43 = *(a9 + 8);

    *a9 = v34;
    *(a9 + 8) = v33;
    *(a9 + 16) = v112;
    *(a9 + 24) = v110;
    *(a9 + 25) = v108;
    *(a9 + 26) = v115;
    v44 = a9;
    return sub_21432887C(v44, type metadata accessor for ChatCharacteristic);
  }

  v104 = v28;
  v99 = v31;
  v101 = v30;
  if ((v36 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000024;
    v42[1] = 0x8000000214790510;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v118, &unk_27C9131A0, &unk_2146E9D10);
    goto LABEL_6;
  }

  v37 = *(a9 + 8);

  *a9 = v34;
  *(a9 + 8) = v33;
  *(a9 + 16) = v150;
  *(a9 + 24) = a2 & 1;
  *(a9 + 25) = 0;
  *(a9 + 26) = v115;
  v39 = *v27;
  v38 = *(v27 + 8);
  v121 = *(v27 + 16);
  v40 = *(v27 + 25);
  LOBYTE(v132) = *(v27 + 24);
  *&v145 = a6;
  LODWORD(v150) = v40;
  LOBYTE(v127) = v40;
  *&v124 = 0xD00000000000001ELL;
  *(&v124 + 1) = 0x8000000214790540;
  *&v125 = 0xD00000000000001CLL;
  *(&v125 + 1) = 0x800000021478A360;

  v41 = v39(&v145, &v127, &v124);
  if ((v41 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD00000000000001ELL;
    v51[1] = 0x8000000214790540;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v118, &unk_27C9131A0, &unk_2146E9D10);
    v52 = v132;
    v53 = *(v27 + 8);

    *v27 = v39;
    *(v27 + 8) = v38;
    *(v27 + 16) = v121;
    *(v27 + 24) = v52;
    *(v27 + 25) = v150;
    v44 = a9;
    return sub_21432887C(v44, type metadata accessor for ChatCharacteristic);
  }

  v46 = *(v27 + 8);

  *v27 = v39;
  *(v27 + 8) = v38;
  *(v27 + 16) = a6;
  *(v27 + 24) = 0;
  *(v27 + 25) = v150;
  v48 = *v28;
  v47 = *(v28 + 8);
  v150 = *(v28 + 16);
  v49 = *(v28 + 25);
  LOBYTE(v132) = *(v28 + 24);
  *&v145 = a7;
  LOBYTE(v127) = v49;
  *&v124 = 0xD00000000000001ALL;
  *(&v124 + 1) = 0x8000000214790560;
  *&v125 = 0xD00000000000001CLL;
  *(&v125 + 1) = 0x800000021478A360;

  v50 = v48(&v145, &v127, &v124);
  if ((v50 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v60 = 0xD00000000000001ALL;
    v60[1] = 0x8000000214790560;
    v60[2] = 0xD00000000000001CLL;
    v60[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v118, &unk_27C9131A0, &unk_2146E9D10);
    v61 = v132;
    v62 = *(v104 + 8);

    *v104 = v48;
    *(v104 + 8) = v47;
    *(v104 + 16) = v150;
    *(v104 + 24) = v61;
    *(v104 + 25) = v49;
LABEL_14:
    v44 = a9;
    return sub_21432887C(v44, type metadata accessor for ChatCharacteristic);
  }

  v54 = *(v28 + 8);

  *v28 = v48;
  *(v28 + 8) = v47;
  *(v28 + 16) = a7;
  *(v28 + 24) = 0;
  *(v28 + 25) = v49;
  v56 = *v29;
  v55 = *(v29 + 8);
  v150 = *(v29 + 16);
  v122 = *(v29 + 24);
  v57 = *(v29 + 25);
  v58 = *(v29 + 26);
  *&v145 = a8;
  BYTE8(v145) = a10 & 1;
  LOBYTE(v132) = v58;
  *&v124 = 0xD000000000000024;
  *(&v124 + 1) = 0x8000000214790580;
  *&v125 = 0xD00000000000001CLL;
  *(&v125 + 1) = 0x800000021478A360;

  v59 = v56(&v145, &v132, &v124);
  if ((v59 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v71 = 0xD000000000000024;
    v71[1] = 0x8000000214790580;
    v71[2] = 0xD00000000000001CLL;
    v71[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v118, &unk_27C9131A0, &unk_2146E9D10);
    v72 = *(v29 + 8);

    *v29 = v56;
    *(v29 + 8) = v55;
    *(v29 + 16) = v150;
    *(v29 + 24) = v122;
    *(v29 + 25) = v57;
    *(v29 + 26) = v58;
    goto LABEL_14;
  }

  LODWORD(v150) = a12;

  v63 = *(v29 + 8);

  *v29 = v56;
  *(v29 + 8) = v55;
  *(v29 + 16) = a8;
  *(v29 + 24) = a10 & 1;
  *(v29 + 25) = 0;
  *(v29 + 26) = v58;
  v64 = *v101;
  v65 = *(v101 + 8);
  v66 = *(v101 + 16);
  v67 = *(v101 + 24);
  v123 = *(v101 + 25);
  v68 = *(v101 + 26);
  *&v145 = a11;
  v69 = v64;
  BYTE8(v145) = v150 & 1;
  LOBYTE(v132) = v68;
  *&v124 = 0xD000000000000028;
  *(&v124 + 1) = 0x80000002147905B0;
  *&v125 = 0xD00000000000001CLL;
  *(&v125 + 1) = 0x800000021478A360;

  v70 = v69(&v145, &v132, &v124);
  v73 = v67;
  v74 = v150;
  if ((v70 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v82 = 0xD000000000000028;
    v82[1] = 0x80000002147905B0;
    v82[2] = 0xD00000000000001CLL;
    v82[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v118, &unk_27C9131A0, &unk_2146E9D10);
    v83 = *(v101 + 8);

    *v101 = v69;
    *(v101 + 8) = v65;
    *(v101 + 16) = v66;
    *(v101 + 24) = v73;
    *(v101 + 25) = v123;
    *(v101 + 26) = v68;
LABEL_21:
    v44 = v119;
    return sub_21432887C(v44, type metadata accessor for ChatCharacteristic);
  }

  v75 = *(v101 + 8);

  *v101 = v69;
  *(v101 + 8) = v65;
  *(v101 + 16) = a11;
  *(v101 + 24) = v74 & 1;
  *(v101 + 25) = 0;
  *(v101 + 26) = v68;
  v77 = *v99;
  v76 = *(v99 + 8);
  v78 = *(v99 + 16);
  v79 = *(v99 + 24);
  v80 = *(v99 + 32);
  v145 = a14;
  v117 = v80;
  LOBYTE(v132) = v80;
  *&v124 = 0xD000000000000025;
  *(&v124 + 1) = 0x80000002147905E0;
  *&v125 = 0xD00000000000001CLL;
  *(&v125 + 1) = 0x800000021478A360;

  sub_213FDC9D0(v78, v79);
  v150 = v77;
  v81 = v77(&v145, &v132, &v124);
  if ((v81 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v87 = 0xD000000000000025;
    v87[1] = 0x80000002147905E0;
    v87[2] = 0xD00000000000001CLL;
    v87[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v118, &unk_27C9131A0, &unk_2146E9D10);
    v88 = *(v99 + 8);
    v89 = *(v99 + 16);
    v90 = *(v99 + 24);

    sub_213FDC6D0(v89, v90);
    *v99 = v150;
    *(v99 + 8) = v76;
    *(v99 + 16) = v78;
    *(v99 + 24) = v79;
    *(v99 + 32) = v117;
    goto LABEL_21;
  }

  sub_213FDC6D0(v78, v79);

  sub_213FB2DF4(v118, &unk_27C9131A0, &unk_2146E9D10);
  v84 = *(v99 + 8);
  v85 = *(v99 + 16);
  v86 = *(v99 + 24);

  result = sub_213FDC6D0(v85, v86);
  *v99 = v150;
  *(v99 + 8) = v76;
  *(v99 + 16) = a14;
  *(v99 + 32) = v117;
  return result;
}

uint64_t sub_2141E0478(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 == 8)
    {
      v5 = 0x6767697254736663;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000015;
    }

    v6 = 0x657A695378616DLL;
    if (a1 != 5)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656363416F747561;
    v2 = 0xD000000000000013;
    if (a1 != 3)
    {
      v2 = 0x656D6954656C6469;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (a1)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2141E05DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214374828(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141E0604(uint64_t a1)
{
  v2 = sub_214305F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E0640(uint64_t a1)
{
  v2 = sub_214305F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E067C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v5 = &v105 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9095F0, &qword_2146F5720);
  v7 = *(v6 - 8);
  v137 = v6;
  v138 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v105 - v9;
  v11 = type metadata accessor for ChatCharacteristic(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214305F7C();
  v16 = v165;
  sub_2146DAA08();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v132 = v11;
  v165 = v5;
  v133 = v14;
  v134 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v160) = 0;
  sub_2142E11FC();
  sub_2146DA1C8();
  v17 = v10;
  v18 = v139;
  v19 = BYTE8(v139);
  LOBYTE(v139) = 1;
  sub_2142E27A8();
  sub_2146DA1C8();
  v131 = v19;
  v136 = v18;
  LOBYTE(v139) = 2;
  v21 = sub_2146DA178();
  LOBYTE(v139) = 3;
  v130 = sub_2146DA178();
  LOBYTE(v139) = 4;
  v22 = sub_2146DA1A8();
  v129 = v21;
  v23 = v22;
  LOBYTE(v139) = 5;
  v128 = sub_2146DA1A8();
  LOBYTE(v160) = 6;
  sub_2146DA1C8();
  v24 = v139;
  v127 = BYTE8(v139);
  LOBYTE(v160) = 7;
  sub_2146DA1C8();
  v126 = v24;
  v25 = v139;
  v26 = BYTE8(v139);
  LOBYTE(v139) = 8;
  LODWORD(v124) = sub_2146DA178();
  v122 = v26;
  v123 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v160) = 9;
  sub_2142E12FC();
  v125 = v17;
  sub_2146DA1C8();
  v121 = *(&v139 + 1);
  v106 = v139;
  v28 = v132;
  v27 = v133;
  sub_213FB2E54(v165, &v133[v132[5]], &unk_27C9131A0, &unk_2146E9D10);
  sub_214515C94(&v160);
  v120 = v161;
  LODWORD(v119) = v162;
  LODWORD(v118) = v163;
  LODWORD(v117) = v164;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v113 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v30 = swift_allocObject();
  v31 = swift_allocObject();
  v112 = xmmword_2146ED240;
  *(v31 + 16) = xmmword_2146ED240;
  *(v30 + 16) = sub_21438F468;
  *(v30 + 24) = v31;
  *(inited + 32) = v30;
  sub_21404328C(inited, &v156);
  v116 = v157;
  v114 = v159;
  v115 = v158;
  v32 = swift_initStackObject();
  *(v32 + 16) = v113;
  v33 = swift_allocObject();
  v34 = swift_allocObject();
  *(v34 + 16) = v112;
  *(v33 + 16) = sub_21438F468;
  *(v33 + 24) = v34;
  *(v32 + 32) = v33;
  sub_21404328C(v32, &v152);
  *&v113 = v153;
  v111 = v155;
  LODWORD(v112) = v154;
  sub_214515CD0(&v147);
  v110 = v148;
  v108 = v150;
  v109 = v149;
  v107 = v151;
  sub_214515D0C(&v142);
  v35 = v143;
  LOBYTE(v33) = v144;
  v36 = v145;
  LOBYTE(v30) = v146;
  sub_214515D48(&v139);
  *v27 = v160;
  *(v27 + 16) = v120;
  *(v27 + 24) = v119;
  *(v27 + 25) = v118;
  *(v27 + 26) = v117;
  *(v27 + v28[6]) = v129 & 1;
  *(v27 + v28[7]) = v130 & 1;
  v37 = v27 + v28[8];
  *v37 = v156;
  *(v37 + 16) = v116;
  v38 = v114;
  *(v37 + 24) = v115;
  v120 = v37;
  *(v37 + 25) = v38;
  v39 = v27 + v28[9];
  *v39 = v152;
  *(v39 + 16) = v113;
  v40 = v111;
  *(v39 + 24) = v112;
  v119 = v39;
  *(v39 + 25) = v40;
  v41 = v27 + v28[10];
  *v41 = v147;
  *(v41 + 16) = v110;
  v42 = v108;
  *(v41 + 24) = v109;
  *(v41 + 25) = v42;
  v118 = v41;
  *(v41 + 26) = v107;
  v43 = v27 + v28[11];
  *v43 = v142;
  *(v43 + 16) = v35;
  *(v43 + 24) = v33;
  *(v43 + 25) = v36;
  v117 = v43;
  *(v43 + 26) = v30;
  *(v27 + v28[12]) = v124 & 1;
  LOBYTE(v43) = v141;
  v44 = v27 + v28[13];
  v45 = v140;
  *v44 = v139;
  *(v44 + 16) = v45;
  v124 = v44;
  *(v44 + 32) = v43;
  v47 = *v27;
  v46 = *(v27 + 8);
  v132 = *(v27 + 16);
  LODWORD(v44) = *(v27 + 24);
  v129 = *(v27 + 25);
  v130 = v44;
  v48 = *(v27 + 26);
  *&v160 = v136;
  BYTE8(v160) = v131;
  LOBYTE(v147) = v48;
  *&v139 = 0xD000000000000024;
  *(&v139 + 1) = 0x8000000214790510;
  *&v140 = 0xD00000000000001CLL;
  *(&v140 + 1) = 0x800000021478A360;

  if ((v47(&v160, &v147, &v139) & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v55 = 0xD000000000000024;
    v55[1] = 0x8000000214790510;
    v55[2] = 0xD00000000000001CLL;
    v55[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v165, &unk_27C9131A0, &unk_2146E9D10);
    (*(v138 + 8))(v125, v137);
    v56 = v133;
    v57 = *(v133 + 1);

    *v56 = v47;
    *(v56 + 8) = v46;
    *(v56 + 16) = v132;
    v58 = v129;
    *(v56 + 24) = v130;
    *(v56 + 25) = v58;
    *(v56 + 26) = v48;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v134);
    return sub_21432887C(v133, type metadata accessor for ChatCharacteristic);
  }

  v49 = v133;
  v50 = *(v133 + 1);

  *v49 = v47;
  *(v49 + 8) = v46;
  *(v49 + 16) = v136;
  *(v49 + 24) = v131;
  *(v49 + 25) = 0;
  *(v49 + 26) = v48;
  v52 = *v120;
  v51 = *(v120 + 8);
  v136 = *(v120 + 16);
  v53 = *(v120 + 25);
  LOBYTE(v147) = *(v120 + 24);
  *&v160 = v23;
  LOBYTE(v142) = v53;
  *&v139 = 0xD00000000000001ELL;
  *(&v139 + 1) = 0x8000000214790540;
  *&v140 = 0xD00000000000001CLL;
  *(&v140 + 1) = 0x800000021478A360;

  v54 = v52(&v160, &v142, &v139);
  if ((v54 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v65 = 0xD00000000000001ELL;
    v65[1] = 0x8000000214790540;
    v65[2] = 0xD00000000000001CLL;
    v65[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v165, &unk_27C9131A0, &unk_2146E9D10);
    (*(v138 + 8))(v125, v137);
    v66 = v147;
    v67 = v120;
    v68 = *(v120 + 8);

    *v67 = v52;
    *(v67 + 8) = v51;
    *(v67 + 16) = v136;
    *(v67 + 24) = v66;
    *(v67 + 25) = v53;
    goto LABEL_6;
  }

  v59 = v120;
  v60 = *(v120 + 8);

  *v59 = v52;
  *(v59 + 8) = v51;
  *(v59 + 16) = v23;
  *(v59 + 24) = 0;
  *(v59 + 25) = v53;
  v62 = *v119;
  v61 = *(v119 + 8);
  v132 = *(v119 + 16);
  v63 = *(v119 + 25);
  LOBYTE(v147) = *(v119 + 24);
  *&v160 = v128;
  LODWORD(v136) = v63;
  LOBYTE(v142) = v63;
  *&v139 = 0xD00000000000001ALL;
  *(&v139 + 1) = 0x8000000214790560;
  *&v140 = 0xD00000000000001CLL;
  *(&v140 + 1) = 0x800000021478A360;

  v64 = v62(&v160, &v142, &v139);
  if ((v64 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v76 = 0xD00000000000001ALL;
    v76[1] = 0x8000000214790560;
    v76[2] = 0xD00000000000001CLL;
    v76[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v165, &unk_27C9131A0, &unk_2146E9D10);
    (*(v138 + 8))(v125, v137);
    v77 = v147;
    v78 = v119;
    v79 = *(v119 + 8);

    *v78 = v62;
    *(v78 + 8) = v61;
    *(v78 + 16) = v132;
    *(v78 + 24) = v77;
    *(v78 + 25) = v136;
    goto LABEL_6;
  }

  v69 = v119;
  v70 = *(v119 + 8);

  *v69 = v62;
  *(v69 + 8) = v61;
  *(v69 + 16) = v128;
  *(v69 + 24) = 0;
  *(v69 + 25) = v136;
  v72 = *v118;
  v71 = *(v118 + 8);
  v73 = *(v118 + 16);
  LODWORD(v136) = *(v118 + 24);
  LODWORD(v132) = *(v118 + 25);
  v74 = *(v118 + 26);
  *&v160 = v126;
  BYTE8(v160) = v127;
  LOBYTE(v147) = v74;
  *&v139 = 0xD000000000000024;
  *(&v139 + 1) = 0x8000000214790580;
  *&v140 = 0xD00000000000001CLL;
  *(&v140 + 1) = 0x800000021478A360;

  v75 = v72(&v160, &v147, &v139);
  if ((v75 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v83 = 0xD000000000000024;
    v83[1] = 0x8000000214790580;
    v83[2] = 0xD00000000000001CLL;
    v83[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v165, &unk_27C9131A0, &unk_2146E9D10);
    (*(v138 + 8))(v125, v137);
    v84 = v118;
LABEL_16:
    v85 = *(v84 + 8);

    *v84 = v72;
    *(v84 + 8) = v71;
    *(v84 + 16) = v73;
    *(v84 + 24) = v136;
    *(v84 + 25) = v132;
    *(v84 + 26) = v74;
    goto LABEL_6;
  }

  v80 = v118;
  v81 = *(v118 + 8);

  *v80 = v72;
  *(v80 + 8) = v71;
  *(v80 + 16) = v126;
  *(v80 + 24) = v127;
  *(v80 + 25) = 0;
  *(v80 + 26) = v74;
  v72 = *v117;
  v71 = *(v117 + 8);
  v73 = *(v117 + 16);
  LODWORD(v136) = *(v117 + 24);
  LODWORD(v132) = *(v117 + 25);
  v74 = *(v117 + 26);
  *&v160 = v123;
  BYTE8(v160) = v122;
  LOBYTE(v147) = v74;
  *&v139 = 0xD000000000000028;
  *(&v139 + 1) = 0x80000002147905B0;
  *&v140 = 0xD00000000000001CLL;
  *(&v140 + 1) = 0x800000021478A360;

  v82 = v72(&v160, &v147, &v139);
  if ((v82 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v94 = 0xD000000000000028;
    v94[1] = 0x80000002147905B0;
    v94[2] = 0xD00000000000001CLL;
    v94[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v165, &unk_27C9131A0, &unk_2146E9D10);
    (*(v138 + 8))(v125, v137);
    v84 = v117;
    goto LABEL_16;
  }

  v86 = v117;
  v87 = *(v117 + 8);

  *v86 = v72;
  *(v86 + 8) = v71;
  *(v86 + 16) = v123;
  *(v86 + 24) = v122;
  *(v86 + 25) = 0;
  *(v86 + 26) = v74;
  v89 = *v124;
  v88 = *(v124 + 8);
  v90 = *(v124 + 16);
  v91 = *(v124 + 24);
  v92 = *(v124 + 32);
  *&v160 = v106;
  *(&v160 + 1) = v121;
  LODWORD(v136) = v92;
  LOBYTE(v147) = v92;
  *&v139 = 0xD000000000000025;
  *(&v139 + 1) = 0x80000002147905E0;
  *&v140 = 0xD00000000000001CLL;
  *(&v140 + 1) = 0x800000021478A360;

  sub_213FDC9D0(v90, v91);
  v93 = v89(&v160, &v147, &v139);
  if ((v93 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v100 = 0xD000000000000025;
    v100[1] = 0x80000002147905E0;
    v100[2] = 0xD00000000000001CLL;
    v100[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v165, &unk_27C9131A0, &unk_2146E9D10);
    (*(v138 + 8))(v125, v137);
    v101 = v124;
    v102 = *(v124 + 8);
    v103 = *(v124 + 16);
    v104 = *(v124 + 24);

    sub_213FDC6D0(v103, v104);
    *v101 = v89;
    *(v101 + 8) = v88;
    *(v101 + 16) = v90;
    *(v101 + 24) = v91;
    *(v101 + 32) = v136;
    goto LABEL_6;
  }

  sub_213FDC6D0(v90, v91);

  sub_213FB2DF4(v165, &unk_27C9131A0, &unk_2146E9D10);
  (*(v138 + 8))(v125, v137);
  v95 = v124;
  v96 = *(v124 + 8);
  v97 = *(v124 + 16);
  v98 = *(v124 + 24);

  sub_213FDC6D0(v97, v98);
  *v95 = v89;
  *(v95 + 8) = v88;
  v99 = v121;
  *(v95 + 16) = v106;
  *(v95 + 24) = v99;
  *(v95 + 32) = v136;
  sub_214328704(v133, v135, type metadata accessor for ChatCharacteristic);
  return __swift_destroy_boxed_opaque_existential_1(v134);
}

uint64_t sub_2141E1858(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909600, &qword_2146F5728);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214305F7C();
  sub_2146DAA28();
  if ((*(v3 + 25) & 1) == 0)
  {
    v11 = *(v3 + 24);
    v30 = *(v3 + 16);
    LOBYTE(v31) = v11 & 1;
    v32 = 0;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    if (v2)
    {
      return (*(v6 + 8))(v9, v5);
    }

    v29[1] = v12;
    v13 = type metadata accessor for ChatCharacteristic(0);
    v14 = v13[5];
    LOBYTE(v30) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    sub_2142E2910();
    sub_2146DA388();
    v15 = *(v3 + v13[6]);
    LOBYTE(v30) = 2;
    sub_2146DA338();
    v16 = *(v3 + v13[7]);
    LOBYTE(v30) = 3;
    sub_2146DA338();
    v17 = v3 + v13[8];
    if ((*(v17 + 24) & 1) == 0)
    {
      v18 = *(v17 + 16);
      LOBYTE(v30) = 4;
      sub_2146DA368();
      v19 = v3 + v13[9];
      if ((*(v19 + 24) & 1) == 0)
      {
        v20 = *(v19 + 16);
        LOBYTE(v30) = 5;
        sub_2146DA368();
        v21 = v3 + v13[10];
        if ((*(v21 + 25) & 1) == 0)
        {
          v22 = *(v21 + 24);
          v30 = *(v21 + 16);
          LOBYTE(v31) = v22 & 1;
          v32 = 6;
          sub_2146DA388();
          v23 = v3 + v13[11];
          if ((*(v23 + 25) & 1) == 0)
          {
            v24 = *(v23 + 24);
            v30 = *(v23 + 16);
            LOBYTE(v31) = v24 & 1;
            v32 = 7;
            sub_2146DA388();
            v25 = *(v3 + v13[12]);
            LOBYTE(v30) = 8;
            sub_2146DA338();
            v26 = v3 + v13[13];
            v27 = *(v26 + 24);
            if (v27 != 1)
            {
              v30 = *(v26 + 16);
              v31 = v27;
              v32 = 9;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
              sub_214045AC0();
              sub_2146DA388();
              return (*(v6 + 8))(v9, v5);
            }
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141E1CB8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  LOBYTE(v107) = a2;
  v135 = a1;
  *(&v107 + 1) = a11;
  v16 = type metadata accessor for FileTransferCharacteristic(0);
  v110 = a5;
  sub_213FB2E54(a5, a9 + v16[7], &unk_27C9131A0, &unk_2146E9D10);
  v109 = a6;
  sub_213FB2E54(a6, a9 + v16[8], &unk_27C9131A0, &unk_2146E9D10);
  sub_214516664(&v130);
  v103 = v131;
  v99 = v133;
  v101 = v132;
  v98 = v134;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146ED240;
  *(v18 + 16) = sub_21438F468;
  *(v18 + 24) = v19;
  *(inited + 32) = v18;
  sub_21404328C(inited, &v126);
  v20 = v127;
  v95 = v128;
  v93 = v129;
  sub_2145167DC(&v122);
  v91 = v124;
  v92 = v123;
  v90 = v125;
  sub_214516810(&v118);
  v21 = v119;
  v22 = v120;
  LOBYTE(inited) = v121;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_2146E9BF0;
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2146ED240;
  *(v24 + 16) = sub_21438F468;
  *(v24 + 24) = v25;
  *(v23 + 32) = v24;
  sub_21404328C(v23, &v114);
  v26 = v115;
  v27 = v116;
  v28 = v117;
  *a9 = v130;
  *(a9 + 16) = v103;
  *(a9 + 24) = v101;
  *(a9 + 25) = v99;
  *(a9 + 26) = v98;
  *(a9 + 32) = v126;
  *(a9 + 48) = v20;
  *(a9 + 56) = v95;
  *(a9 + 57) = v93;
  *(a9 + 58) = a4;
  v29 = a9 + v16[9];
  *v29 = v122;
  *(v29 + 16) = v92;
  *(v29 + 24) = v91;
  *(v29 + 32) = v90;
  v30 = a9 + v16[10];
  *v30 = v118;
  *(v30 + 16) = v21;
  *(v30 + 24) = v22;
  *(v30 + 32) = inited;
  *(a9 + v16[11]) = a12;
  v31 = a9 + v16[12];
  *v31 = v114;
  *(v31 + 16) = v26;
  *(v31 + 24) = v27;
  *(v31 + 25) = v28;
  v33 = *a9;
  v32 = *(a9 + 8);
  v104 = *(a9 + 16);
  v100 = *(a9 + 25);
  v102 = *(a9 + 24);
  v34 = *(a9 + 26);
  *&v118 = v135;
  BYTE8(v118) = v107 & 1;
  v106 = v34;
  LOBYTE(v130) = v34;
  *&v122 = 0xD000000000000023;
  *(&v122 + 1) = 0x8000000214790610;
  v123 = 0xD00000000000001CLL;
  v124 = 0x800000021478A360;

  v35 = v33(&v118, &v130, &v122);
  if (v113)
  {

    sub_213FB2DF4(v109, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v110, &unk_27C9131A0, &unk_2146E9D10);

LABEL_6:
    v44 = *(a9 + 8);

    *a9 = v33;
    *(a9 + 8) = v32;
    *(a9 + 16) = v104;
    *(a9 + 24) = v102;
    *(a9 + 25) = v100;
    *(a9 + 26) = v106;
    return sub_21432887C(a9, type metadata accessor for FileTransferCharacteristic);
  }

  v96 = v30;
  v97 = v29;
  v94 = v31;
  v36 = v135;
  if ((v35 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD000000000000023;
    v43[1] = 0x8000000214790610;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v109, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v110, &unk_27C9131A0, &unk_2146E9D10);
    goto LABEL_6;
  }

  v37 = *(a9 + 8);

  *a9 = v33;
  *(a9 + 8) = v32;
  *(a9 + 16) = v36;
  *(a9 + 24) = v107 & 1;
  *(a9 + 25) = 0;
  *(a9 + 26) = v106;
  v39 = *(a9 + 32);
  v38 = *(a9 + 40);
  v40 = *(a9 + 48);
  v41 = *(a9 + 57);
  LOBYTE(v130) = *(a9 + 56);
  *&v118 = a3;
  LODWORD(v135) = v41;
  LOBYTE(v126) = v41;
  *&v122 = 0xD000000000000026;
  *(&v122 + 1) = 0x8000000214790640;
  v123 = 0xD00000000000001CLL;
  v124 = 0x800000021478A360;

  v42 = v39(&v118, &v126, &v122);
  if ((v42 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v54 = 0xD000000000000026;
    v54[1] = 0x8000000214790640;
    v54[2] = 0xD00000000000001CLL;
    v54[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v109, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v110, &unk_27C9131A0, &unk_2146E9D10);
    v55 = v130;
    v56 = *(a9 + 40);

    *(a9 + 32) = v39;
    *(a9 + 40) = v38;
    *(a9 + 48) = v40;
    *(a9 + 56) = v55;
    *(a9 + 57) = v135;
    return sub_21432887C(a9, type metadata accessor for FileTransferCharacteristic);
  }

  v46 = *(a9 + 40);

  *(a9 + 32) = v39;
  *(a9 + 40) = v38;
  *(a9 + 48) = a3;
  *(a9 + 56) = 0;
  *(a9 + 57) = v135;
  v47 = v29;
  v49 = *v29;
  v48 = *(v29 + 8);
  v51 = *(v29 + 16);
  v50 = *(v29 + 24);
  v52 = *(v29 + 32);
  *&v118 = a7;
  *(&v118 + 1) = a8;
  LOBYTE(v130) = v52;
  *&v122 = 0xD000000000000030;
  *(&v122 + 1) = 0x8000000214790670;
  v123 = 0xD00000000000001CLL;
  v124 = 0x800000021478A360;

  v135 = v50;
  sub_213FDC9D0(v51, v50);
  v53 = v49(&v118, &v130, &v122);
  if ((v53 & 1) == 0)
  {
    v108 = v52;
    sub_214031C4C();
    swift_allocError();
    *v66 = 0xD000000000000030;
    v66[1] = 0x8000000214790670;
    v66[2] = 0xD00000000000001CLL;
    v66[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v109, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v110, &unk_27C9131A0, &unk_2146E9D10);
    v67 = *(v29 + 8);
    v68 = *(v29 + 16);
    v69 = *(v29 + 24);

    sub_213FDC6D0(v68, v69);
    *v29 = v49;
    *(v29 + 8) = v48;
    v70 = v135;
    *(v29 + 16) = v51;
    *(v29 + 24) = v70;
    v71 = v108;
LABEL_14:
    *(v47 + 32) = v71;
    return sub_21432887C(a9, type metadata accessor for FileTransferCharacteristic);
  }

  *&v107 = a10;
  sub_213FDC6D0(v51, v135);

  v57 = *(v29 + 8);
  v58 = *(v29 + 16);
  v59 = *(v29 + 24);

  sub_213FDC6D0(v58, v59);
  *v97 = v49;
  *(v97 + 8) = v48;
  *(v97 + 16) = a7;
  *(v97 + 24) = a8;
  *(v97 + 32) = v52;
  v47 = v96;
  v61 = *v96;
  v60 = *(v96 + 8);
  v62 = *(v96 + 16);
  v63 = *(v96 + 24);
  v64 = *(v96 + 32);
  v118 = v107;
  LODWORD(v135) = v64;
  LOBYTE(v130) = v64;
  *&v122 = 0xD000000000000034;
  *(&v122 + 1) = 0x80000002147906B0;
  v123 = 0xD00000000000001CLL;
  v124 = 0x800000021478A360;

  sub_213FDC9D0(v62, v63);
  v112 = v61;
  v65 = v61(&v118, &v130, &v122);
  if ((v65 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v80 = 0xD000000000000034;
    v80[1] = 0x80000002147906B0;
    v80[2] = 0xD00000000000001CLL;
    v80[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v109, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v110, &unk_27C9131A0, &unk_2146E9D10);
    v81 = *(v96 + 8);
    v82 = *(v96 + 16);
    v83 = *(v96 + 24);

    sub_213FDC6D0(v82, v83);
    *v96 = v61;
    *(v96 + 8) = v60;
    *(v96 + 16) = v62;
    *(v96 + 24) = v63;
    v71 = v135;
    goto LABEL_14;
  }

  sub_213FDC6D0(v62, v63);

  v72 = *(v96 + 8);
  v73 = *(v96 + 16);
  v74 = *(v96 + 24);

  sub_213FDC6D0(v73, v74);
  *v96 = v112;
  *(v96 + 8) = v60;
  *(v96 + 16) = a10;
  *(v96 + 24) = a11;
  *(v96 + 32) = v135;
  v75 = *v94;
  v76 = *(v94 + 8);
  v135 = *(v94 + 16);
  v77 = *(v94 + 25);
  LOBYTE(v130) = *(v94 + 24);
  *&v118 = a13;
  LOBYTE(v126) = v77;
  *&v122 = 0xD000000000000031;
  *(&v122 + 1) = 0x80000002147906F0;
  v123 = 0xD00000000000001CLL;
  v124 = 0x800000021478A360;
  v78 = v75;

  v79 = v78(&v118, &v126, &v122);
  if ((v79 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v85 = 0xD000000000000031;
    v85[1] = 0x80000002147906F0;
    v85[2] = 0xD00000000000001CLL;
    v85[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v109, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v110, &unk_27C9131A0, &unk_2146E9D10);
    v86 = v130;
    v87 = *(v94 + 8);

    *v94 = v78;
    *(v94 + 8) = v76;
    *(v94 + 16) = v135;
    *(v94 + 24) = v86;
    *(v94 + 25) = v77;
    return sub_21432887C(a9, type metadata accessor for FileTransferCharacteristic);
  }

  sub_213FB2DF4(v109, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v110, &unk_27C9131A0, &unk_2146E9D10);
  v84 = *(v94 + 8);

  *v94 = v78;
  *(v94 + 8) = v76;
  *(v94 + 16) = a13;
  *(v94 + 24) = 0;
  *(v94 + 25) = v77;
  return result;
}

unint64_t sub_2141E2884(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v3 = 0x657A69536E726177;
    v4 = 0x656363416F747561;
    if (a1 != 2)
    {
      v4 = 0xD000000000000014;
    }

    if (a1)
    {
      v3 = 0x53656C694678616DLL;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (a1 == 7)
    {
      v1 = 0x6C6C614670747468;
    }

    else
    {
      v1 = 0xD000000000000016;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000019;
    }

    if (a1 <= 5u)
    {
      return 0xD000000000000015;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2141E29D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214374B60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141E29F8(uint64_t a1)
{
  v2 = sub_214305FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E2A34(uint64_t a1)
{
  v2 = sub_214305FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E2A70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v155 = a2;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = *(*(v157 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v157);
  v156 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v128 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909608, &qword_2146F5730);
  v158 = *(v8 - 8);
  v159 = v8;
  v9 = *(v158 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v128 - v10;
  v12 = type metadata accessor for FileTransferCharacteristic(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214305FD0();
  v17 = v181;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v152 = v12;
  v153 = v15;
  v154 = v7;
  v181 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v164) = 0;
  sub_2142E11FC();
  sub_2146DA1C8();
  v19 = v168;
  v20 = BYTE8(v168);
  LOBYTE(v168) = 1;
  v21 = sub_2146DA1A8();
  v151 = v19;
  v22 = v21;
  LOBYTE(v168) = 2;
  v23 = sub_2146DA178();
  v150 = v20;
  LODWORD(v149) = v23;
  v148 = v22;
  LOBYTE(v168) = 3;
  sub_2142E27A8();
  sub_2146DA1C8();
  LOBYTE(v168) = 4;
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v164) = 5;
  sub_2142E12FC();
  sub_2146DA1C8();
  v24 = *(&v168 + 1);
  v147 = v168;
  LOBYTE(v164) = 6;
  sub_2146DA1C8();
  v25 = *(&v168 + 1);
  v145 = v168;
  v146 = v24;
  LOBYTE(v168) = 7;
  v26 = sub_2146DA178();
  v157 = 0;
  v144 = v25;
  v143 = v26;
  LOBYTE(v168) = 8;
  v142 = sub_2146DA1A8();
  v157 = 0;
  v141 = v11;
  v28 = v152;
  v27 = v153;
  sub_213FB2E54(v154, &v153[*(v152 + 28)], &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v156, v27 + v28[8], &unk_27C9131A0, &unk_2146E9D10);
  sub_214516664(&v176);
  v29 = v177;
  v30 = v178;
  v140 = v179;
  LODWORD(v139) = v180;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v138 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v32 = swift_allocObject();
  v33 = swift_allocObject();
  v128 = xmmword_2146ED240;
  *(v33 + 16) = xmmword_2146ED240;
  *(v32 + 16) = sub_21438F468;
  *(v32 + 24) = v33;
  *(inited + 32) = v32;
  sub_21404328C(inited, &v172);
  v134 = v173;
  v132 = v175;
  v133 = v174;
  sub_2145167DC(&v168);
  v136 = v170;
  v137 = v169;
  v135 = v171;
  sub_214516810(&v164);
  v130 = v166;
  v131 = v165;
  v129 = v167;
  v34 = swift_initStackObject();
  *(v34 + 16) = v138;
  v35 = swift_allocObject();
  v36 = swift_allocObject();
  *(v36 + 16) = v128;
  *(v35 + 16) = sub_21438F468;
  *(v35 + 24) = v36;
  *(v34 + 32) = v35;
  sub_21404328C(v34, &v160);
  v37 = v161;
  v38 = v162;
  *v27 = v176;
  *(v27 + 16) = v29;
  *(v27 + 24) = v30;
  *(v27 + 25) = v140;
  *(v27 + 26) = v139;
  *(v27 + 32) = v172;
  *(v27 + 48) = v134;
  v39 = v132;
  *(v27 + 56) = v133;
  *(v27 + 57) = v39;
  *(v27 + 58) = v149 & 1;
  v40 = v27 + v28[9];
  *v40 = v168;
  v41 = v136;
  *(v40 + 16) = v137;
  *(v40 + 24) = v41;
  *(v40 + 32) = v135;
  v42 = v27 + v28[10];
  *v42 = v164;
  *(v42 + 16) = v131;
  *(v42 + 24) = v130;
  v139 = v42;
  *(v42 + 32) = v129;
  *(v27 + v28[11]) = v143 & 1;
  LOBYTE(v42) = v163;
  v43 = v27 + v28[12];
  *v43 = v160;
  *(v43 + 16) = v37;
  *(v43 + 24) = v38;
  *&v138 = v43;
  *(v43 + 25) = v42;
  v45 = *v27;
  v44 = *(v27 + 8);
  v149 = *(v27 + 16);
  v143 = *(v27 + 24);
  v140 = *(v27 + 25);
  v46 = *(v27 + 26);
  *&v164 = v151;
  BYTE8(v164) = v150;
  v47 = v46;
  LOBYTE(v176) = v46;
  *&v168 = 0xD000000000000023;
  *(&v168 + 1) = 0x8000000214790610;
  v169 = 0xD00000000000001CLL;
  v170 = 0x800000021478A360;
  v152 = 0x800000021478A360;

  v48 = v157;
  v49 = v45(&v164, &v176, &v168);
  v157 = v48;
  if (v48)
  {

    sub_213FB2DF4(v156, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v154, &unk_27C9131A0, &unk_2146E9D10);
    (*(v158 + 8))(v141, v159);

LABEL_9:
    v63 = v153;
    v64 = *(v153 + 1);

    *v63 = v45;
    *(v63 + 8) = v44;
    *(v63 + 16) = v149;
    *(v63 + 24) = v143;
    *(v63 + 25) = v140;
    *(v63 + 26) = v47;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v181);
    return sub_21432887C(v153, type metadata accessor for FileTransferCharacteristic);
  }

  if ((v49 & 1) == 0)
  {

    sub_214031C4C();
    v60 = swift_allocError();
    *v61 = 0xD000000000000023;
    v61[1] = 0x8000000214790610;
    v62 = v152;
    v61[2] = 0xD00000000000001CLL;
    v61[3] = v62;
    v157 = v60;
    swift_willThrow();
    sub_213FB2DF4(v156, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v154, &unk_27C9131A0, &unk_2146E9D10);
    (*(v158 + 8))(v141, v159);
    goto LABEL_9;
  }

  v50 = v152;

  v51 = v153;
  v52 = *(v153 + 1);

  *v51 = v45;
  *(v51 + 8) = v44;
  *(v51 + 16) = v151;
  *(v51 + 24) = v150;
  *(v51 + 25) = 0;
  *(v51 + 26) = v47;
  v54 = *(v51 + 32);
  v53 = *(v51 + 40);
  v55 = *(v51 + 48);
  v56 = *(v51 + 56);
  v57 = *(v51 + 57);
  LOBYTE(v176) = v56;
  *&v164 = v148;
  LODWORD(v151) = v57;
  LOBYTE(v172) = v57;
  *&v168 = 0xD000000000000026;
  *(&v168 + 1) = 0x8000000214790640;
  v169 = 0xD00000000000001CLL;
  v170 = v50;

  v58 = v157;
  v59 = v54(&v164, &v172, &v168);
  v157 = v58;
  if (v58)
  {

    sub_213FB2DF4(v156, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v154, &unk_27C9131A0, &unk_2146E9D10);
    (*(v158 + 8))(v141, v159);

LABEL_15:
    v79 = v153;
    v80 = *(v153 + 5);

    *(v79 + 32) = v54;
    *(v79 + 40) = v53;
    *(v79 + 48) = v55;
    *(v79 + 56) = v56;
    *(v79 + 57) = v151;
    goto LABEL_10;
  }

  if ((v59 & 1) == 0)
  {

    sub_214031C4C();
    v76 = swift_allocError();
    *v77 = 0xD000000000000026;
    v77[1] = 0x8000000214790640;
    v78 = v152;
    v77[2] = 0xD00000000000001CLL;
    v77[3] = v78;
    v157 = v76;
    swift_willThrow();
    sub_213FB2DF4(v156, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v154, &unk_27C9131A0, &unk_2146E9D10);
    (*(v158 + 8))(v141, v159);
    v56 = v176;
    goto LABEL_15;
  }

  v65 = v152;

  v66 = v153;
  v67 = *(v153 + 5);

  *(v66 + 32) = v54;
  *(v66 + 40) = v53;
  *(v66 + 48) = v148;
  *(v66 + 56) = 0;
  *(v66 + 57) = v151;
  v69 = *v40;
  v68 = *(v40 + 8);
  v71 = *(v40 + 16);
  v70 = *(v40 + 24);
  v72 = *(v40 + 32);
  *&v164 = v147;
  *(&v164 + 1) = v146;
  LODWORD(v151) = v72;
  LOBYTE(v176) = v72;
  *&v168 = 0xD000000000000030;
  *(&v168 + 1) = 0x8000000214790670;
  v169 = 0xD00000000000001CLL;
  v170 = v65;

  v73 = v70;
  sub_213FDC9D0(v71, v70);
  v74 = v157;
  v75 = v69(&v164, &v176, &v168);
  v157 = v74;
  if (v74)
  {

LABEL_20:

    sub_213FB2DF4(v156, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v154, &unk_27C9131A0, &unk_2146E9D10);
    (*(v158 + 8))(v141, v159);
    v96 = *(v40 + 8);
    v97 = *(v40 + 16);
    v98 = *(v40 + 24);

    sub_213FDC6D0(v97, v98);
    *v40 = v69;
    *(v40 + 8) = v68;
    *(v40 + 16) = v71;
    *(v40 + 24) = v73;
    *(v40 + 32) = v151;
    goto LABEL_10;
  }

  if ((v75 & 1) == 0)
  {
    sub_214031C4C();
    v93 = swift_allocError();
    *v94 = 0xD000000000000030;
    v94[1] = 0x8000000214790670;
    v95 = v152;
    v94[2] = 0xD00000000000001CLL;
    v94[3] = v95;
    v157 = v93;
    swift_willThrow();

    goto LABEL_20;
  }

  sub_213FDC6D0(v71, v73);
  v81 = v152;

  v82 = *(v40 + 8);
  v83 = *(v40 + 16);
  v84 = *(v40 + 24);

  sub_213FDC6D0(v83, v84);
  *v40 = v69;
  *(v40 + 8) = v68;
  v85 = v146;
  *(v40 + 16) = v147;
  *(v40 + 24) = v85;
  *(v40 + 32) = v151;
  v87 = *v139;
  v86 = *(v139 + 8);
  v88 = *(v139 + 16);
  v89 = *(v139 + 24);
  v90 = *(v139 + 32);
  *&v164 = v145;
  *(&v164 + 1) = v144;
  LODWORD(v151) = v90;
  LOBYTE(v176) = v90;
  *&v168 = 0xD000000000000034;
  *(&v168 + 1) = 0x80000002147906B0;
  v169 = 0xD00000000000001CLL;
  v170 = v81;

  sub_213FDC9D0(v88, v89);
  v91 = v157;
  v92 = v87(&v164, &v176, &v168);
  v157 = v91;
  if (v91)
  {

LABEL_25:

    sub_213FB2DF4(v156, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v154, &unk_27C9131A0, &unk_2146E9D10);
    (*(v158 + 8))(v141, v159);
    v115 = v139;
    v116 = *(v139 + 8);
    v117 = *(v139 + 16);
    v118 = *(v139 + 24);

    sub_213FDC6D0(v117, v118);
    *v115 = v87;
    *(v115 + 8) = v86;
    *(v115 + 16) = v88;
    *(v115 + 24) = v89;
    *(v115 + 32) = v151;
    goto LABEL_10;
  }

  if ((v92 & 1) == 0)
  {
    sub_214031C4C();
    v112 = swift_allocError();
    *v113 = 0xD000000000000034;
    v113[1] = 0x80000002147906B0;
    v114 = v152;
    v113[2] = 0xD00000000000001CLL;
    v113[3] = v114;
    v157 = v112;
    swift_willThrow();
    goto LABEL_25;
  }

  sub_213FDC6D0(v88, v89);
  v99 = v152;

  v100 = v139;
  v101 = *(v139 + 8);
  v102 = *(v139 + 16);
  v103 = *(v139 + 24);

  sub_213FDC6D0(v102, v103);
  *v100 = v87;
  *(v100 + 8) = v86;
  v104 = v144;
  *(v100 + 16) = v145;
  *(v100 + 24) = v104;
  *(v100 + 32) = v151;
  v106 = *v138;
  v105 = *(v138 + 8);
  v107 = *(v138 + 16);
  v108 = *(v138 + 24);
  v109 = *(v138 + 25);
  LOBYTE(v176) = v108;
  *&v164 = v142;
  LOBYTE(v172) = v109;
  *&v168 = 0xD000000000000031;
  *(&v168 + 1) = 0x80000002147906F0;
  v169 = 0xD00000000000001CLL;
  v170 = v99;

  v151 = v105;
  v110 = v157;
  v111 = v106(&v164, &v172, &v168);
  v157 = v110;
  if (v110)
  {
    sub_213FB2DF4(v156, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v154, &unk_27C9131A0, &unk_2146E9D10);
    (*(v158 + 8))(v141, v159);

LABEL_29:
    v125 = v138;
    v126 = *(v138 + 8);

    v127 = v151;
    *v125 = v106;
    *(v125 + 8) = v127;
    *(v125 + 16) = v107;
    *(v125 + 24) = v108;
    *(v125 + 25) = v109;
    goto LABEL_10;
  }

  if ((v111 & 1) == 0)
  {
    sub_214031C4C();
    v122 = swift_allocError();
    *v123 = 0xD000000000000031;
    v123[1] = 0x80000002147906F0;
    v124 = v152;
    v123[2] = 0xD00000000000001CLL;
    v123[3] = v124;
    v157 = v122;
    swift_willThrow();
    sub_213FB2DF4(v156, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v154, &unk_27C9131A0, &unk_2146E9D10);
    (*(v158 + 8))(v141, v159);
    v108 = v176;
    goto LABEL_29;
  }

  sub_213FB2DF4(v156, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v154, &unk_27C9131A0, &unk_2146E9D10);
  (*(v158 + 8))(v141, v159);
  v119 = v138;
  v120 = *(v138 + 8);

  v121 = v151;
  *v119 = v106;
  *(v119 + 8) = v121;
  *(v119 + 16) = v142;
  *(v119 + 24) = 0;
  *(v119 + 25) = v109;
  sub_214328704(v153, v155, type metadata accessor for FileTransferCharacteristic);
  return __swift_destroy_boxed_opaque_existential_1(v181);
}

uint64_t sub_2141E3BBC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909618, &qword_2146F5738);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214305FD0();
  sub_2146DAA28();
  if (*(v3 + 25))
  {
    goto LABEL_10;
  }

  v11 = *(v3 + 24);
  v25 = *(v3 + 16);
  LOBYTE(v26) = v11 & 1;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2142E1C30();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  if (*(v3 + 56))
  {
    goto LABEL_10;
  }

  v12 = *(v3 + 48);
  LOBYTE(v25) = 1;
  sub_2146DA368();
  v14 = *(v3 + 58);
  LOBYTE(v25) = 2;
  sub_2146DA338();
  v15 = type metadata accessor for FileTransferCharacteristic(0);
  v16 = v15[7];
  LOBYTE(v25) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  sub_2142E2910();
  sub_2146DA388();
  v17 = v15[8];
  LOBYTE(v25) = 4;
  sub_2146DA388();
  v18 = v3 + v15[9];
  v19 = *(v18 + 24);
  if (v19 == 1)
  {
    goto LABEL_10;
  }

  v25 = *(v18 + 16);
  v26 = v19;
  v27 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v20 = v3 + v15[10];
  v21 = *(v20 + 24);
  if (v21 == 1)
  {
    goto LABEL_10;
  }

  v25 = *(v20 + 16);
  v26 = v21;
  v27 = 6;
  sub_2146DA388();
  v22 = *(v3 + v15[11]);
  LOBYTE(v25) = 7;
  sub_2146DA338();
  v23 = v3 + v15[12];
  if (*(v23 + 24))
  {
LABEL_10:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v24 = *(v23 + 16);
    LOBYTE(v25) = 8;
    sub_2146DA368();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_2141E3FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a6;
  sub_21408AC04(a1, a7, &unk_27C9131A0, &unk_2146E9D10);
  v13 = type metadata accessor for ChatbotCharacteristic(0);
  sub_21408AC04(a2, a7 + v13[5], &unk_27C9131A0, &unk_2146E9D10);
  result = sub_21408AC04(a3, a7 + v13[6], &unk_27C9131A0, &unk_2146E9D10);
  *(a7 + v13[7]) = a4;
  *(a7 + v13[8]) = a5;
  *(a7 + v13[9]) = v12;
  return result;
}

unint64_t sub_2141E40A0()
{
  v1 = *v0;
  v2 = 0x466F666E49746F62;
  v3 = 0xD000000000000018;
  v4 = 0x4479636176697270;
  if (v1 != 4)
  {
    v4 = 0x4D746F6274616863;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_2141E418C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214374E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141E41B4(uint64_t a1)
{
  v2 = sub_214306024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E41F0(uint64_t a1)
{
  v2 = sub_214306024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E422C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = *(*(v30 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909620, &qword_2146F5740);
  v12 = *(v31 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v31);
  v15 = &v28 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_214306024();
  v18 = v32;
  sub_2146DAA08();
  if (!v18)
  {
    v32 = v9;
    v19 = v12;
    v40 = 0;
    sub_2142E27A8();
    v20 = v31;
    sub_2146DA1C8();
    v39 = 1;
    sub_2146DA1C8();
    v38 = 2;
    v21 = v6;
    sub_2146DA1C8();
    v37 = 3;
    v23 = v19;
    v24 = sub_2146DA178();
    v36 = 4;
    LOBYTE(v19) = sub_2146DA178();
    v34 = 5;
    sub_214306078();
    sub_2146DA1C8();
    (*(v23 + 8))(v15, v20);
    v25 = v35;
    v26 = v29;
    sub_21408AC04(v11, v29, &unk_27C9131A0, &unk_2146E9D10);
    v27 = type metadata accessor for ChatbotCharacteristic(0);
    sub_21408AC04(v32, v26 + v27[5], &unk_27C9131A0, &unk_2146E9D10);
    sub_21408AC04(v21, v26 + v27[6], &unk_27C9131A0, &unk_2146E9D10);
    *(v26 + v27[7]) = v24 & 1;
    *(v26 + v27[8]) = v19 & 1;
    *(v26 + v27[9]) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_2141E4678(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909638, &qword_2146F5748);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306024();
  sub_2146DAA28();
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  sub_2142E2910();
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for ChatbotCharacteristic(0);
    v12 = v11[5];
    v23 = 1;
    sub_2146DA388();
    v13 = v11[6];
    v22 = 2;
    sub_2146DA388();
    v14 = *(v3 + v11[7]);
    v21 = 3;
    sub_2146DA338();
    v15 = *(v3 + v11[8]);
    v20 = 4;
    sub_2146DA338();
    v19 = *(v3 + v11[9]);
    v18 = 5;
    sub_2143060CC();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2141E4920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21468BE34(&v11);
  v5 = v11;
  v4 = v12;
  v6 = v14;
  v16 = a1;
  v15 = v14;
  v11 = 0xD00000000000002FLL;
  v12 = 0x8000000214790730;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  v7 = v5(&v16, &v15, &v11);
  if (v2)
  {
  }

  else
  {
    if (v7)
    {

      result = swift_bridgeObjectRelease_n();
      *a2 = v5;
      *(a2 + 8) = v4;
      *(a2 + 16) = a1;
      *(a2 + 24) = v6;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v9 = 0xD00000000000002FLL;
    v9[1] = 0x8000000214790730;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2141E4ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x697469746E656469 && a2 == 0xEA00000000007365)
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

uint64_t sub_2141E4B5C(uint64_t a1)
{
  v2 = sub_214306120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E4B98(uint64_t a1)
{
  v2 = sub_214306120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E4BD4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unint64_t *, char *, unint64_t *)@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909648, &qword_2146F5750);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306120();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2142E15CC();
  sub_2146DA1C8();
  v18 = a2;
  v12 = v23;
  sub_21468BE34(&v23);
  v14 = v23;
  v13 = v24;
  v21 = v12;
  v22 = v25;
  v28 = v12;
  v19 = v26;
  v27 = v26;
  v23 = 0xD00000000000002FLL;
  v24 = 0x8000000214790730;
  v25 = 0xD00000000000001CLL;
  v26 = 0x800000021478A360;

  v20 = v13;
  if (v14(&v28, &v27, &v23))
  {

    (*(v6 + 8))(v9, v5);

    v15 = v20;

    v16 = v18;
    *v18 = v14;
    v16[1] = v15;
    v16[2] = v21;
    *(v16 + 24) = v19;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v17 = 0xD00000000000002FLL;
  v17[1] = 0x8000000214790730;
  v17[2] = 0xD00000000000001CLL;
  v17[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141E4EFC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909658, &qword_2146F5758);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306120();
  sub_2146DAA28();
  if (v8)
  {
    v11[1] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2141E50D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_2146D8958();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for ServerCharacteristic();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_2141E516C()
{
  v1 = 0x746E656449707061;
  if (*v0 != 1)
  {
    v1 = 0x6469766F72506469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1852076390;
  }
}

uint64_t sub_2141E51D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214375074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141E51F8(uint64_t a1)
{
  v2 = sub_214306174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E5234(uint64_t a1)
{
  v2 = sub_214306174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E5270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_2146D8958();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909660, &qword_2146F5760);
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v25);
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306174();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v24;
    v29 = 0;
    sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260]);
    v15 = v25;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909328, &qword_2146F5658);
    v28 = 1;
    sub_214304908();
    sub_2146DA1C8();
    v22 = v26;
    v27 = 2;
    v17 = sub_2146DA178();
    (*(v13 + 8))(v11, v15);
    v18 = *(v14 + 32);
    v19 = v23;
    v18(v23, v7, v4);
    v20 = type metadata accessor for ServerCharacteristic();
    *(v19 + *(v20 + 20)) = v22;
    *(v19 + *(v20 + 24)) = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141E55CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909670, &qword_2146F5768);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306174();
  sub_2146DAA28();
  v16 = 0;
  sub_2146D8958();
  sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260]);
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for ServerCharacteristic();
    v15 = *(v3 + *(v11 + 20));
    v14[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909328, &qword_2146F5658);
    sub_214304A64();
    sub_2146DA388();
    v12 = *(v3 + *(v11 + 24));
    v14[14] = 2;
    sub_2146DA338();
  }

  return (*(v6 + 8))(v9, v5);
}

_BYTE *sub_2141E5810@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, _BYTE *a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  *a5 = *result;
  a5[1] = v5;
  a5[2] = v6;
  a5[3] = v7;
  return result;
}

unint64_t sub_2141E5834()
{
  v1 = 0x4F61746144736D6DLL;
  if (*v0 != 2)
  {
    v1 = 0x61746144636E7973;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0xD000000000000013;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2141E58C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437519C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141E58EC(uint64_t a1)
{
  v2 = sub_2143061C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E5928(uint64_t a1)
{
  v2 = sub_2143061C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E5964@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909678, &qword_2146F5770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143061C8();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909688, &qword_2146F5778);
    v23 = 0;
    sub_21430621C();
    sub_2146DA1C8();
    v16 = v24;
    v21 = 1;
    sub_2146DA1C8();
    v15 = v22;
    v19 = 2;
    sub_2146DA1C8();
    HIDWORD(v14) = v20;
    v17 = 3;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v18;
    v13 = v15;
    *a2 = v16;
    a2[1] = v13;
    a2[2] = BYTE4(v14);
    a2[3] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141E5BD8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9096A0, &qword_2146F5780);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v16 = v1[2];
  v17 = v10;
  HIDWORD(v15) = v1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143061C8();
  sub_2146DAA28();
  v25 = v9;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909688, &qword_2146F5778);
  sub_2143062F4();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v12 = BYTE4(v15);
  v13 = v16;
  v23 = v17;
  v22 = 1;
  sub_2146DA388();
  v21 = v13;
  v20 = 2;
  sub_2146DA388();
  v19 = v12;
  v18 = 3;
  sub_2146DA388();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2141E5E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000214796130 == a2)
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

uint64_t sub_2141E5EF8(uint64_t a1)
{
  v2 = sub_2143063CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E5F34(uint64_t a1)
{
  v2 = sub_2143063CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E5F70@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9096B8, &qword_2146F5788);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143063CC();
  sub_2146DAA08();
  if (!v2)
  {
    sub_214306420();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141E60DC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9096D0, &qword_2146F5790);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143063CC();
  sub_2146DAA28();
  v11[3] = *v2;
  sub_214306474();
  sub_2146DA388();
  return (*(v5 + 8))(v8, v4);
}

_BYTE *sub_2141E6258@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char *a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, int *a10)
{
  v10 = *a6;
  v11 = *a10;
  *a9 = *result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 18) = a5;
  *(a9 + 19) = v10;
  *(a9 + 20) = a7;
  *(a9 + 21) = a8;
  *(a9 + 22) = v11;
  return result;
}

unint64_t sub_2141E6290(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6874754174616863;
    if (a1 != 2)
    {
      v5 = 0x61684370756F7267;
    }

    v6 = 0xD000000000000010;
    if (a1)
    {
      v6 = 0xD00000000000001BLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7550636F6C6F6567;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x687475417466;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}