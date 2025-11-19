uint64_t sub_214164F44(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9079A8, &qword_2146F4C48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v9 = *v1;
  v8 = v1[1];
  v40 = v1[2];
  v41 = v8;
  v10 = v1[6];
  v38 = v1[5];
  v39 = v10;
  v11 = v1[11];
  v36 = v1[10];
  v37 = v11;
  v12 = v1[13];
  v34 = v1[14];
  v35 = v12;
  LODWORD(v12) = *(v1 + 120);
  v32 = *(v1 + 121);
  v33 = v12;
  v45 = *(v1 + 122);
  v13 = v1[19];
  v30 = v1[18];
  v31 = v13;
  v29 = *(v1 + 161);
  v14 = v1[24];
  v27 = v1[23];
  v28 = v14;
  v25 = v1[26];
  v26 = *(v1 + 216);
  v23 = v1[28];
  v24 = *(v1 + 232);
  v15 = *(v1 + 233);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F69B4();
  sub_2146DAA28();
  LOBYTE(v43) = 0;
  v17 = v42;
  sub_2146DA378();
  if (v17)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = v39;
  v43 = v41;
  v44 = v40;
  v46 = 1;
  sub_213FDCA18(v41, v40);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v20 = sub_2142E1CAC();
  sub_2146DA388();
  v41 = v20;
  v42 = v19;
  sub_213FDC6BC(v43, v44);
  if (!v18)
  {
    goto LABEL_9;
  }

  LOBYTE(v43) = 2;

  sub_2146DA328();

  if (!v37)
  {
    goto LABEL_9;
  }

  LOBYTE(v43) = 3;

  sub_2146DA328();
  v22 = v45;

  v43 = v35;
  v44 = v34;
  v46 = 4;
  sub_213FDCA18(v35, v34);
  sub_2146DA388();
  sub_213FDC6BC(v43, v44);
  LOBYTE(v43) = v33;
  v46 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v40 = sub_2142E1D30();
  sub_2146DA388();
  LOBYTE(v43) = v32;
  v46 = 6;
  sub_2146DA388();
  LOBYTE(v43) = v22;
  v46 = 7;
  sub_2146DA388();
  if (v31 >> 60 == 11)
  {
    goto LABEL_9;
  }

  v43 = v30;
  v44 = v31;
  v46 = 8;
  sub_213FDCA18(v30, v31);
  sub_2146DA388();
  sub_213FDC6BC(v43, v44);
  LOBYTE(v43) = v29;
  v46 = 9;
  sub_2146DA388();
  if (v28 >> 60 == 11)
  {
LABEL_9:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v43 = v27;
    v44 = v28;
    v46 = 10;
    sub_213FDCA18(v27, v28);
    sub_2146DA388();
    sub_213FDC6BC(v43, v44);
    v43 = v25;
    LOBYTE(v44) = v26;
    v46 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    v43 = v23;
    LOBYTE(v44) = v24;
    v46 = 12;
    sub_2146DA388();
    LOBYTE(v43) = v15;
    v46 = 13;
    sub_2146DA388();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_214165568@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, unint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, unint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a3;
  v42 = *a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_214059900;
  *(v13 + 24) = 0;
  *(inited + 32) = v13;
  v36 = a8;
  sub_213FDCA18(a7, a8);
  sub_214042B80(inited, &v45);
  v15 = v45;
  v14 = v46;
  v16 = v48;
  v33 = v47;
  v17 = v49;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_2146E9BF0;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_214059900;
  *(v19 + 24) = 0;
  *(v18 + 32) = v19;
  sub_214042B80(v18, &v63);
  v37 = v63;
  v34 = v65;
  v43 = v66;
  v44 = v64;
  v38 = v67;
  v63 = a2;
  v64 = v71;
  v62 = v17;
  v45 = 0xD00000000000001ALL;
  v46 = 0x800000021478ED30;
  v47 = 0xD00000000000001CLL;
  v48 = 0x800000021478A360;

  v20 = v39;
  v40 = v15;
  v21 = v15(&v63, &v62, &v45);
  if (v20)
  {

    v22 = v36;
    sub_213FDC6BC(a7, v36);
LABEL_6:

    v23 = v14;
    v24 = v38;

    v28 = v33;
    v25 = v37;
LABEL_7:
    v45 = a1;
    v46 = v40;
    v47 = v23;
    v48 = v28;
    v49 = v16;
    v50 = v17;
    *v51 = v70[0];
    *&v51[3] = *(v70 + 3);
    v52 = v25;
    v53 = v44;
    v54 = v34;
    v55 = v43;
    v56 = v24;
    v57 = v42;
    v59 = v69;
    v58 = v68;
    v60 = a7;
    v61 = v22;
    return sub_2142F6A64(&v45);
  }

  if ((v21 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD00000000000001ALL;
    v27[1] = 0x800000021478ED30;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();

    v22 = v36;
    sub_213FDC6BC(a7, v36);
    goto LABEL_6;
  }

  v23 = v14;

  v63 = a4;
  v64 = a5;
  v24 = v38;
  v62 = v38;
  v45 = 0xD00000000000001ELL;
  v46 = 0x800000021478ED50;
  v47 = 0xD00000000000001CLL;
  v48 = 0x800000021478A360;

  v25 = v37;
  v26 = v37(&v63, &v62, &v45);
  v22 = v36;
  if ((v26 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD00000000000001ELL;
    v30[1] = 0x800000021478ED50;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a7, v36);

    v16 = v71;

    v28 = a2;
    goto LABEL_7;
  }

  sub_213FDC6BC(a7, v36);

  *a9 = a1;
  *(a9 + 8) = v40;
  *(a9 + 16) = v14;
  *(a9 + 24) = a2;
  *(a9 + 32) = v71;
  *(a9 + 40) = v17;
  *(a9 + 48) = v37;
  *(a9 + 56) = v44;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = v38;
  *(a9 + 81) = v42;
  *(a9 + 88) = a7;
  *(a9 + 96) = v36;
  return result;
}

uint64_t sub_214165A70()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x7069636974726170;
  v4 = 0x6E4565746F6D6572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x496E6F6973736573;
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

uint64_t sub_214165B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436A48C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214165B54(uint64_t a1)
{
  v2 = sub_2142F6AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214165B90(uint64_t a1)
{
  v2 = sub_2142F6AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214165BCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9079B0, &qword_2146F4C50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142F6AB8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v96);
  }

  v12 = v6;
  LOBYTE(v73) = 0;
  v64 = sub_2146DA1B8();
  LOBYTE(v73) = 1;
  v13 = sub_2146DA168();
  v16 = v15;
  v63 = v13;
  LOBYTE(v73) = 2;
  v17 = sub_2146DA168();
  v19 = v18;
  v62 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9079C0, &qword_2146F4C58);
  LOBYTE(v65) = 3;
  sub_2142F6B0C();
  sub_2146DA1C8();
  v60 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v90 = 4;
  sub_2142E1278();
  sub_2146DA1C8();
  v61 = v91;
  v59 = v92;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v53 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_214059900;
  *(v21 + 24) = 0;
  *(inited + 32) = v21;
  sub_213FDCA18(v61, v59);
  sub_214042B80(inited, &v73);
  v58 = v74;
  v47 = v75;
  v55 = v76;
  v56 = v73;
  v57 = v77;
  v22 = swift_initStackObject();
  *(v22 + 16) = v53;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214059900;
  *(v23 + 24) = 0;
  *(v22 + 32) = v23;
  sub_214042B80(v22, &v65);
  v54 = *(&v65 + 1);
  v51 = v65;
  *&v53 = *(&v66 + 1);
  v48 = v66;
  LODWORD(v52) = v67;
  *&v65 = v63;
  *(&v65 + 1) = v16;
  LOBYTE(v72[0]) = v57;
  v46 = 0xD00000000000001ALL;
  v73 = 0xD00000000000001ALL;
  v74 = 0x800000021478ED30;
  v49 = 0x800000021478ED30;
  v50 = 0x800000021478A360;
  v75 = 0xD00000000000001CLL;
  v76 = 0x800000021478A360;

  v24 = v56(&v65, v72, &v73);
  v25 = v46;
  v26 = v49;
  if (v24)
  {
    v27 = v50;
    v47 = 0;

    v72[0] = v62;
    v72[1] = v19;
    LOBYTE(v65) = v52;
    v73 = 0xD00000000000001ELL;
    v74 = 0x800000021478ED50;
    v55 = 0x800000021478ED50;
    v75 = 0xD00000000000001CLL;
    v76 = v27;

    v28 = v47;
    v29 = v51(v72, &v65, &v73);
    if (v28)
    {
    }

    else
    {
      v34 = v55;
      if (v29)
      {

        sub_213FDC6BC(v61, v59);
        (*(v12 + 8))(v9, v5);

        v35 = v54;

        v36 = v63;
        v37 = v64;
        *&v65 = v64;
        *(&v65 + 1) = v56;
        *&v66 = v58;
        *(&v66 + 1) = v63;
        *&v67 = v16;
        BYTE8(v67) = v57;
        HIDWORD(v67) = *(v95 + 3);
        *(&v67 + 9) = v95[0];
        *&v68 = v51;
        *(&v68 + 1) = v35;
        *&v69 = v62;
        *(&v69 + 1) = v19;
        LOBYTE(v70) = v52;
        BYTE1(v70) = v60;
        WORD3(v70) = v94;
        *(&v70 + 2) = v93;
        *(&v70 + 1) = v61;
        v71 = v59;
        v38 = v69;
        v39 = v70;
        *(a2 + 96) = v59;
        *(a2 + 64) = v38;
        *(a2 + 80) = v39;
        v40 = v65;
        v41 = v66;
        v42 = v68;
        *(a2 + 32) = v67;
        *(a2 + 48) = v42;
        *a2 = v40;
        *(a2 + 16) = v41;
        sub_2142F6BE4(&v65, &v73);
        __swift_destroy_boxed_opaque_existential_1(v96);
        v73 = v37;
        v74 = v56;
        v75 = v58;
        v76 = v36;
        v77 = v16;
        v78 = v57;
        *v79 = v95[0];
        *&v79[3] = *(v95 + 3);
        v80 = v51;
        v81 = v35;
        v82 = v62;
        v83 = v19;
        v84 = v52;
        v85 = v60;
        v86 = v93;
        v87 = v94;
        v88 = v61;
        v89 = v59;
        return sub_2142F6A64(&v73);
      }

      sub_214031C4C();
      swift_allocError();
      *v43 = 0xD00000000000001ELL;
      v43[1] = v34;
      v44 = v50;
      v43[2] = 0xD00000000000001CLL;
      v43[3] = v44;
      swift_willThrow();
    }

    sub_213FDC6BC(v61, v59);
    v62 = v54;
    v32 = v16;
    v33 = v58;
    v31 = v59;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = v25;
    v30[1] = v26;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = v50;
    swift_willThrow();

    v31 = v59;
    sub_213FDC6BC(v61, v59);
    v32 = v55;
    v33 = v58;
    v62 = v58;
    v63 = v47;
  }

  (*(v12 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(v96);
  v73 = v64;
  v74 = v56;
  v75 = v33;
  v76 = v63;
  v77 = v32;
  v78 = v57;
  *v79 = v95[0];
  *&v79[3] = *(v95 + 3);
  v80 = v51;
  v81 = v54;
  v82 = v48;
  v83 = v53;
  v84 = v52;
  v85 = v60;
  v86 = v93;
  v87 = v94;
  v88 = v61;
  v89 = v31;
  return sub_2142F6A64(&v73);
}

uint64_t sub_2141663F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9079D8, &qword_2146F4C60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = *v1;
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[9];
  v26 = v1[8];
  v27 = v9;
  v31 = *(v1 + 81);
  v12 = v1[12];
  v24 = v1[11];
  v25 = v11;
  v14 = a1[3];
  v13 = a1[4];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_2142F6AB8();
  sub_2146DAA28();
  LOBYTE(v29) = 0;
  v18 = v28;
  sub_2146DA378();
  if (v18)
  {
    return (*(v4 + 8))(v7, v17);
  }

  v28 = v12;
  v20 = v24;
  v21 = v25;
  if (v10)
  {
    LOBYTE(v29) = 1;

    sub_2146DA328();

    if (v21)
    {
      LOBYTE(v29) = 2;

      sub_2146DA328();
      v22 = v28;

      LOBYTE(v29) = v31;
      v32 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9079C0, &qword_2146F4C58);
      sub_2142F6C40();
      sub_2146DA388();
      v29 = v20;
      v30 = v22;
      v32 = 4;
      sub_213FDCA18(v20, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
      sub_2142E1CAC();
      sub_2146DA388();
      sub_213FDC6BC(v29, v30);
      return (*(v4 + 8))(v7, v17);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214166778@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, unint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v66 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_214059900;
  *(v12 + 24) = 0;
  *(inited + 32) = v12;
  v35 = a7;
  sub_213FDCA18(a6, a7);
  sub_214042B80(inited, &v43);
  v14 = v43;
  v13 = v44;
  v15 = v46;
  v32 = v45;
  v16 = v47;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_214059900;
  *(v18 + 24) = 0;
  *(v17 + 32) = v18;
  sub_214042B80(v17, &v59);
  v36 = v59;
  v33 = v61;
  v41 = v62;
  v42 = v60;
  v37 = v63;
  v59 = a2;
  v60 = v66;
  v58 = v16;
  v43 = 0xD00000000000001BLL;
  v44 = 0x800000021478ED70;
  v45 = 0xD00000000000001CLL;
  v46 = 0x800000021478A360;

  v19 = v38;
  v39 = v14;
  v20 = v14(&v59, &v58, &v43);
  if (v19)
  {

    v21 = v35;
    sub_213FDC6BC(a6, v35);
LABEL_6:

    v22 = v13;
    v23 = v37;

    v27 = v32;
    v24 = v36;
LABEL_7:
    v43 = a1;
    v44 = v39;
    v45 = v22;
    v46 = v27;
    v47 = v15;
    v48 = v16;
    *v49 = v65[0];
    *&v49[3] = *(v65 + 3);
    v50 = v24;
    v51 = v42;
    v52 = v33;
    v53 = v41;
    v54 = v23;
    *v55 = v64[0];
    *&v55[3] = *(v64 + 3);
    v56 = a6;
    v57 = v21;
    return sub_2142F6D18(&v43);
  }

  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD00000000000001BLL;
    v26[1] = 0x800000021478ED70;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();

    v21 = v35;
    sub_213FDC6BC(a6, v35);
    goto LABEL_6;
  }

  v22 = v13;

  v59 = a4;
  v60 = a5;
  v23 = v37;
  v58 = v37;
  v43 = 0xD00000000000001FLL;
  v44 = 0x800000021478ED90;
  v45 = 0xD00000000000001CLL;
  v46 = 0x800000021478A360;

  v24 = v36;
  v25 = v36(&v59, &v58, &v43);
  v21 = v35;
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD00000000000001FLL;
    v29[1] = 0x800000021478ED90;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a6, v35);

    v15 = v66;

    v27 = a2;
    goto LABEL_7;
  }

  sub_213FDC6BC(a6, v35);

  *a8 = a1;
  *(a8 + 8) = v39;
  *(a8 + 16) = v13;
  *(a8 + 24) = a2;
  *(a8 + 32) = v66;
  *(a8 + 40) = v16;
  *(a8 + 48) = v36;
  *(a8 + 56) = v42;
  *(a8 + 64) = a4;
  *(a8 + 72) = a5;
  *(a8 + 80) = v37;
  *(a8 + 88) = a6;
  *(a8 + 96) = v35;
  return result;
}

unint64_t sub_214166C68()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x7069636974726170;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x496E6F6973736573;
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

uint64_t sub_214166CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436A65C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214166D20(uint64_t a1)
{
  v2 = sub_2142F6D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214166D5C(uint64_t a1)
{
  v2 = sub_2142F6D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214166D98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9079F0, &qword_2146F4C68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142F6D6C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v92);
  }

  v12 = v6;
  LOBYTE(v72) = 0;
  v63 = sub_2146DA1B8();
  LOBYTE(v72) = 1;
  v13 = sub_2146DA168();
  v16 = v15;
  v62 = v13;
  LOBYTE(v72) = 2;
  v17 = sub_2146DA168();
  v61 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v87 = 3;
  sub_2142E1278();
  sub_2146DA1C8();
  v46 = v17;
  v19 = v88;
  v60 = v89;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v55 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_214059900;
  *(v21 + 24) = 0;
  *(inited + 32) = v21;
  v54 = v19;
  sub_213FDCA18(v19, v60);
  sub_214042B80(inited, &v72);
  v58 = v72;
  v59 = v73;
  v47 = v74;
  v57 = v75;
  LODWORD(v19) = v76;
  v22 = swift_initStackObject();
  *(v22 + 16) = v55;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214059900;
  *(v23 + 24) = 0;
  *(v22 + 32) = v23;
  sub_214042B80(v22, &v64);
  v56 = *(&v64 + 1);
  v52 = v64;
  *&v55 = *(&v65 + 1);
  v48 = v65;
  LODWORD(v53) = v66;
  *&v64 = v62;
  *(&v64 + 1) = v16;
  v51 = v19;
  LOBYTE(v71[0]) = v19;
  v72 = 0xD00000000000001BLL;
  v73 = 0x800000021478ED70;
  v49 = 0x800000021478A360;
  v50 = 0x800000021478ED70;
  v74 = 0xD00000000000001CLL;
  v75 = 0x800000021478A360;

  v24 = v58(&v64, v71, &v72);
  v25 = v49;
  v26 = v50;
  if (v24)
  {
    v47 = 0;

    v71[0] = v46;
    v71[1] = v61;
    LOBYTE(v64) = v53;
    v72 = 0xD00000000000001FLL;
    v73 = 0x800000021478ED90;
    v74 = 0xD00000000000001CLL;
    v75 = v25;

    v27 = v47;
    v28 = v52(v71, &v64, &v72);
    if (v27)
    {

      v29 = v54;
      v30 = v60;
    }

    else
    {
      v35 = v60;
      if (v28)
      {

        v36 = v60;
        sub_213FDC6BC(v54, v60);
        (*(v12 + 8))(v9, v5);

        v37 = v56;

        v38 = v63;
        *&v64 = v63;
        *(&v64 + 1) = v58;
        *&v65 = v59;
        *(&v65 + 1) = v62;
        *&v66 = v16;
        BYTE8(v66) = v51;
        *&v67 = v52;
        *(&v67 + 1) = v37;
        *&v68 = v46;
        *(&v68 + 1) = v61;
        LOBYTE(v69) = v53;
        *(&v69 + 1) = *v90;
        DWORD1(v69) = *&v90[3];
        *(&v69 + 1) = v54;
        v70 = v36;
        v39 = v65;
        *a2 = v64;
        *(a2 + 16) = v39;
        v40 = v66;
        v41 = v67;
        v42 = v68;
        v43 = v69;
        *(a2 + 96) = v36;
        *(a2 + 64) = v42;
        *(a2 + 80) = v43;
        *(a2 + 32) = v40;
        *(a2 + 48) = v41;
        sub_2142F6DC0(&v64, &v72);
        __swift_destroy_boxed_opaque_existential_1(v92);
        v72 = v38;
        v73 = v58;
        v74 = v59;
        v75 = v62;
        v76 = v16;
        v77 = v51;
        *v78 = v91[0];
        *&v78[3] = *(v91 + 3);
        v79 = v52;
        v80 = v37;
        v81 = v46;
        v82 = v61;
        v83 = v53;
        *v84 = *v90;
        *&v84[3] = *&v90[3];
        v85 = v54;
        v86 = v36;
        return sub_2142F6D18(&v72);
      }

      sub_214031C4C();
      swift_allocError();
      *v44 = 0xD00000000000001FLL;
      v44[1] = 0x800000021478ED90;
      v44[2] = 0xD00000000000001CLL;
      v44[3] = v25;
      swift_willThrow();

      v29 = v54;
      v30 = v35;
    }

    sub_213FDC6BC(v29, v30);
    v61 = v56;
    v33 = v16;
    v32 = v54;
    v34 = v59;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD00000000000001BLL;
    v31[1] = v26;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = v25;
    swift_willThrow();

    v32 = v54;
    sub_213FDC6BC(v54, v60);
    v33 = v57;
    v34 = v59;
    v61 = v59;
    v62 = v47;
  }

  (*(v12 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(v92);
  v72 = v63;
  v73 = v58;
  v74 = v34;
  v75 = v62;
  v76 = v33;
  v77 = v51;
  *v78 = v91[0];
  *&v78[3] = *(v91 + 3);
  v79 = v52;
  v80 = v56;
  v81 = v48;
  v82 = v55;
  v83 = v53;
  *v84 = *v90;
  *&v84[3] = *&v90[3];
  v85 = v32;
  v86 = v60;
  return sub_2142F6D18(&v72);
}

uint64_t sub_214167544(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A00, &qword_2146F4C70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[9];
  v23 = v1[8];
  v24 = v9;
  v12 = v1[12];
  v21 = v1[11];
  v22 = v11;
  v20 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F6D6C();
  sub_2146DAA28();
  LOBYTE(v26) = 0;
  v14 = v25;
  sub_2146DA378();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = v21;
  v16 = v22;
  if (v10 && (LOBYTE(v26) = 1, , sub_2146DA328(), , v16))
  {
    LOBYTE(v26) = 2;

    sub_2146DA328();
    v18 = v17;
    v19 = v20;

    v26 = v18;
    v27 = v19;
    v28 = 3;
    sub_213FDCA18(v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v26, v27);
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

__n128 sub_214167870@<Q0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, char a12, uint64_t a13, unint64_t a14, char a15, uint64_t a16, unint64_t a17, char a18, uint64_t (*a19)(void, void, void), uint64_t a20, char a21, uint64_t (*a22)(void, void, void), uint64_t a23, char a24, char a25)
{
  v66 = *a1;
  sub_213FDCA18(a10, a11);
  sub_213FDCA18(a16, a17);
  sub_2143BB2C8(&v80);
  v25 = v80;
  v27 = v81;
  v26 = v82;
  v28 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_214059900;
  *(v30 + 24) = 0;
  *(v29 + 32) = v30;
  sub_214042B80(v29, &v115);
  v130 = v115;
  v74 = v116;
  v31 = v118;
  v57 = v117;
  v78 = v119;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2146E9BF0;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_214059900;
  *(v33 + 24) = 0;
  *(v32 + 32) = v33;
  sub_214042B80(v32, v113);
  v77 = v113[1];
  v59 = v113[2];
  v75 = v113[0];
  v76 = v113[3];
  v73 = v114;
  v120 = a4 & 1;
  v80 = v25;
  v81 = v27;
  v82 = v26;
  LOBYTE(v83) = v28;

  v60 = v26;
  v61 = v27;
  sub_21404F7E0(v27, v26);
  sub_214032118(a13, a14, 2, 0xD00000000000002DLL, 0x800000021478EDB0, 0xD00000000000001CLL, 0x800000021478A360);
  if (v62)
  {
    sub_213FDC6BC(a13, a14);
    v34 = a16;
    v35 = a17;
    sub_213FDC6BC(a16, a17);
    v36 = a10;
    v79 = v31;
    sub_213FDC6BC(a10, a11);

    v63 = v80;
    v37 = v81;
    v38 = v82;
    v39 = v83;

    sub_214032564(v61, v60);
    v40 = v63;
    v41 = a11;
    v42 = v78;
    v43 = v130;
    v44 = v74;
    v45 = v73;
    v46 = v57;
    v47 = v79;
LABEL_6:
    v80.n128_u8[0] = v66;
    *(v80.n128_u32 + 1) = v129[0];
    v80.n128_u32[1] = *(v129 + 3);
    v80.n128_u64[1] = a2;
    v81 = a3;
    LOBYTE(v82) = a4 & 1;
    BYTE1(v82) = a5;
    BYTE2(v82) = a6;
    BYTE3(v82) = a7;
    BYTE4(v82) = a8;
    *(&v82 + 5) = v127;
    HIBYTE(v82) = v128;
    v83 = v36;
    v84 = v41;
    v85 = a12;
    *&v86[3] = *&v126[3];
    *v86 = *v126;
    v87 = v40;
    v88 = v37;
    v89 = v38;
    v90 = v39;
    v91 = a15;
    v93 = v125;
    v92 = v124;
    v94 = v34;
    v95 = v35;
    v96 = a18;
    *&v97[3] = *(v123 + 3);
    *v97 = v123[0];
    v98 = v43;
    v99 = v44;
    v100 = v46;
    v101 = v47;
    v102 = v42;
    v103 = a21 & 1;
    v105 = v122;
    v104 = v121;
    v106 = v75;
    v107 = v77;
    v108 = v59;
    v109 = v76;
    v110 = v45;
    v111 = a24;
    v112 = a25;
    sub_2142F6E1C(&v80);
    return result;
  }

  v64 = v80;
  v55 = v82;
  v56 = v81;
  v54 = v83;

  sub_214032564(v27, v26);
  v115 = a19;
  v116 = a20;
  LOBYTE(v113[0]) = v78;
  v80.n128_u64[0] = 0xD000000000000022;
  v80.n128_u64[1] = 0x800000021478EDE0;
  v81 = 0xD00000000000001CLL;
  v82 = 0x800000021478A360;

  v44 = v74;
  v48 = v31;
  if ((v130(&v115, v113, &v80) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD000000000000022;
    v50[1] = 0x800000021478EDE0;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a13, a14);
    v34 = a16;
    v35 = a17;
    sub_213FDC6BC(a16, a17);
    v36 = a10;
    v43 = v130;
    sub_213FDC6BC(a10, a11);

    v47 = v48;
    v41 = a11;
    v45 = v73;
    v38 = v55;
    v37 = v56;
    v40 = v64;
    v39 = v54;
    v42 = v78;
    v46 = v57;
    goto LABEL_6;
  }

  v115 = a22;
  v116 = a23;
  v45 = v73;
  LOBYTE(v113[0]) = v73;
  v80.n128_u64[0] = 0xD00000000000001ELL;
  v80.n128_u64[1] = 0x800000021478EE10;
  v81 = 0xD00000000000001CLL;
  v82 = 0x800000021478A360;

  v49 = v75(&v115, v113, &v80);
  v36 = a10;
  v35 = a17;
  if ((v49 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v53 = 0xD00000000000001ELL;
    v53[1] = 0x800000021478EE10;
    v53[2] = 0xD00000000000001CLL;
    v53[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a13, a14);
    v34 = a16;
    sub_213FDC6BC(a16, a17);
    sub_213FDC6BC(a10, a11);

    v41 = a11;
    v46 = a19;
    v44 = v74;
    v47 = a20;
    v43 = v130;
    v38 = v55;
    v37 = v56;
    v40 = v64;
    v39 = v54;
    v42 = v78;
    goto LABEL_6;
  }

  sub_213FDC6BC(a13, a14);
  sub_213FDC6BC(a16, a17);
  sub_213FDC6BC(a10, a11);

  *a9 = v66;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 1) = v129[0];
  *(a9 + 4) = *(v129 + 3);
  *(a9 + 24) = a4 & 1;
  *(a9 + 25) = a5;
  *(a9 + 26) = a6;
  *(a9 + 27) = a7;
  *(a9 + 28) = a8;
  *(a9 + 29) = v127;
  *(a9 + 31) = v128;
  *(a9 + 32) = a10;
  *(a9 + 40) = a11;
  *(a9 + 48) = a12;
  *(a9 + 52) = *&v126[3];
  *(a9 + 49) = *v126;
  result = v64;
  *(a9 + 56) = v64;
  *(a9 + 72) = v56;
  *(a9 + 80) = v55;
  *(a9 + 88) = v54;
  *(a9 + 89) = a15;
  *(a9 + 94) = v125;
  *(a9 + 90) = v124;
  *(a9 + 96) = a16;
  *(a9 + 104) = a17;
  *(a9 + 112) = a18;
  v52 = v123[0];
  *(a9 + 116) = *(v123 + 3);
  *(a9 + 113) = v52;
  *(a9 + 120) = v130;
  *(a9 + 128) = v74;
  *(a9 + 136) = a19;
  *(a9 + 144) = a20;
  *(a9 + 152) = v78;
  *(a9 + 153) = a21 & 1;
  *(a9 + 160) = v75;
  *(a9 + 168) = v77;
  *(a9 + 176) = a22;
  *(a9 + 184) = a23;
  *(a9 + 192) = v73;
  *(a9 + 193) = a24;
  *(a9 + 194) = a25;
  return result;
}

unint64_t sub_2141681A4(char a1)
{
  result = 0x726F70736E617274;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 1651469410;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
    case 17:
      result = 0xD00000000000001CLL;
      break;
    case 11:
    case 14:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0x7069636974726170;
      break;
    case 15:
      result = 0x496E6F6973736573;
      break;
    case 16:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2141683B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436A7D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141683E4(uint64_t a1)
{
  v2 = sub_2142F6E70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214168420(uint64_t a1)
{
  v2 = sub_2142F6E70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416845C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A08, &qword_2146F4C78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v154 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142F6E70();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v154);
  }

  v91 = a2;
  v92 = v6;
  LOBYTE(v93) = 0;
  sub_2142F6EC4();
  sub_2146DA1C8();
  v12 = v104;
  LOBYTE(v104) = 1;
  v90 = sub_2146DA1B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v93) = 2;
  sub_2142E3570();
  sub_2146DA1C8();
  v89 = v12;
  v14 = v104;
  v15 = v5;
  v16 = BYTE8(v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v93) = 3;
  v17 = sub_2142E1378();
  sub_2146DA1C8();
  v87 = v14;
  v88 = v16;
  LODWORD(v14) = v104;
  LOBYTE(v93) = 4;
  sub_2146DA1C8();
  v18 = v104;
  LOBYTE(v93) = 5;
  sub_2146DA1C8();
  v86 = v18;
  v19 = v104;
  LOBYTE(v93) = 6;
  sub_2146DA1C8();
  v85 = v17;
  v83 = v19;
  v20 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v93) = 7;
  v84 = sub_2142E1278();
  sub_2146DA1C8();
  v81 = v20;
  v82 = v14;
  v21 = v104;
  LOBYTE(v93) = 8;
  sub_2146DA1C8();
  v80 = *(&v21 + 1);
  v79 = v104;
  LOBYTE(v93) = 9;
  v22 = v15;
  sub_2146DA1C8();
  v78 = v104;
  LOBYTE(v93) = 10;
  sub_2146DA1C8();
  v23 = v104;
  LOBYTE(v93) = 11;
  sub_2146DA1C8();
  v77 = *(&v104 + 1);
  v84 = v104;
  LOBYTE(v93) = 12;
  sub_2146DA1C8();
  v75 = v104;
  LOBYTE(v104) = 13;
  v74 = sub_2146DA168();
  v76 = v24;
  LOBYTE(v104) = 14;
  LODWORD(v73) = sub_2146DA178();
  LOBYTE(v104) = 15;
  v71 = sub_2146DA168();
  v72 = v25;
  LOBYTE(v93) = 16;
  sub_2146DA1C8();
  v70 = v104;
  v143 = 17;
  sub_2146DA1C8();
  v53 = v144;
  sub_213FDCA18(v21, v80);
  sub_213FDCA18(v84, v77);
  sub_2143BB2C8(&v104);
  v57 = v104;
  v85 = v105;
  v68 = *(&v104 + 1);
  v69 = v106;
  LODWORD(v56) = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v26 = swift_allocObject();
  v63 = xmmword_2146E9BF0;
  *(v26 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_214059900;
  *(v27 + 24) = 0;
  *(v26 + 32) = v27;
  sub_214042B80(v26, &v93);
  v64 = v93;
  v59 = v94;
  v66 = *(&v93 + 1);
  v67 = *(&v94 + 1);
  v65 = v95;
  v28 = swift_allocObject();
  *(v28 + 16) = v63;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_214059900;
  *(v29 + 24) = 0;
  *(v28 + 32) = v29;
  sub_214042B80(v28, &v137);
  v60 = v137;
  v52 = v139;
  v62 = v140;
  *&v63 = v138;
  v61 = v141;
  v142 = v88;
  v58 = v73 & 1;
  *&v104 = v57;
  v30 = v69;
  *(&v104 + 1) = v68;
  v31 = v85;
  v105 = v85;
  v106 = v69;
  LOBYTE(v107) = v56;

  sub_21404F7E0(v31, v30);
  v57 = "IDSSessionDecline.participantID";
  v73 = 0x800000021478A360;
  sub_214032118(v78, *(&v78 + 1), 2, 0xD00000000000002DLL, 0x800000021478EDB0, 0xD00000000000001CLL, 0x800000021478A360);
  v32 = v73;

  v56 = v104;
  v57 = v105;
  v55 = v106;
  v54 = v107;

  sub_214032564(v85, v69);
  *&v93 = v74;
  *(&v93 + 1) = v76;
  LOBYTE(v137) = v65;
  *&v104 = 0xD000000000000022;
  *(&v104 + 1) = 0x800000021478EDE0;
  v105 = 0xD00000000000001CLL;
  v106 = v32;

  if (v64(&v93, &v137, &v104))
  {
    v33 = v73;

    v137 = v71;
    v138 = v72;
    LOBYTE(v93) = v61;
    *&v104 = 0xD00000000000001ELL;
    *(&v104 + 1) = 0x800000021478EE10;
    v105 = 0xD00000000000001CLL;
    v106 = v33;

    if (v60(&v137, &v93, &v104))
    {

      sub_213FDC6BC(v78, *(&v78 + 1));

      v36 = v77;
      sub_213FDC6BC(v84, v77);
      v51 = v21;
      v37 = v80;
      sub_213FDC6BC(v21, v80);
      (*(v92 + 8))(v9, v22);

      v38 = v63;

      *(&v93 + 1) = v153[0];
      DWORD1(v93) = *(v153 + 3);
      *(&v93 + 1) = v90;
      *&v94 = v87;
      BYTE8(v94) = v88;
      BYTE9(v94) = v82;
      BYTE10(v94) = v86;
      BYTE11(v94) = v83;
      BYTE12(v94) = v81;
      *(&v94 + 13) = v151;
      HIBYTE(v94) = v152;
      *&v95 = v21;
      *(&v95 + 1) = v37;
      LOBYTE(v96[0]) = v79;
      *(v96 + 1) = *v150;
      DWORD1(v96[0]) = *&v150[3];
      *(v96 + 8) = v56;
      *(&v96[1] + 1) = v57;
      *&v97 = v55;
      BYTE8(v97) = v54;
      BYTE9(v97) = v23;
      *(&v97 + 10) = v148;
      HIWORD(v97) = v149;
      *&v98 = v84;
      *(&v98 + 1) = v36;
      LOBYTE(v99) = v75;
      DWORD1(v99) = *&v147[3];
      *(&v99 + 1) = *v147;
      *(&v99 + 1) = v64;
      *&v100 = v66;
      *(&v100 + 1) = v74;
      *&v101 = v76;
      BYTE8(v101) = v65;
      BYTE9(v101) = v58;
      HIWORD(v101) = v146;
      *(&v101 + 10) = v145;
      *&v102 = v60;
      *(&v102 + 1) = v38;
      *v103 = v71;
      *&v103[8] = v72;
      v103[16] = v61;
      v103[17] = v70;
      LOBYTE(v37) = v53;
      v103[18] = v53;
      v39 = v91;
      *(v91 + 191) = *&v103[15];
      LOBYTE(v38) = v89;
      LOBYTE(v93) = v89;
      v40 = v93;
      v41 = v94;
      v42 = v96[0];
      v39[2] = v95;
      v39[3] = v42;
      *v39 = v40;
      v39[1] = v41;
      v43 = v96[1];
      v44 = v97;
      v45 = v99;
      v39[6] = v98;
      v39[7] = v45;
      v39[4] = v43;
      v39[5] = v44;
      v46 = v100;
      v47 = v101;
      v48 = *v103;
      v39[10] = v102;
      v39[11] = v48;
      v39[8] = v46;
      v39[9] = v47;
      sub_2142F6F18(&v93, &v104);
      __swift_destroy_boxed_opaque_existential_1(v154);
      LOBYTE(v104) = v38;
      *(&v104 + 1) = v90;
      v105 = v87;
      *(&v104 + 1) = v153[0];
      DWORD1(v104) = *(v153 + 3);
      LOBYTE(v106) = v88;
      BYTE1(v106) = v82;
      BYTE2(v106) = v86;
      BYTE3(v106) = v83;
      BYTE4(v106) = v81;
      *(&v106 + 5) = v151;
      HIBYTE(v106) = v152;
      v107 = v51;
      v108 = v80;
      v109 = v79;
      *v110 = *v150;
      *&v110[3] = *&v150[3];
      v111 = v56;
      v112 = v57;
      v113 = v55;
      v114 = v54;
      v115 = v23;
      v116 = v148;
      v117 = v149;
      v118 = v84;
      v119 = v77;
      v120 = v75;
      *&v121[3] = *&v147[3];
      *v121 = *v147;
      v122 = v64;
      v123 = v66;
      v124 = v74;
      v125 = v76;
      v126 = v65;
      v127 = v58;
      v129 = v146;
      v128 = v145;
      v130 = v60;
      v131 = v63;
      v132 = v71;
      v133 = v72;
      v134 = v61;
      v135 = v70;
      v136 = v37;
      return sub_2142F6E1C(&v104);
    }

    sub_214031C4C();
    swift_allocError();
    *v49 = 0xD00000000000001ELL;
    v49[1] = 0x800000021478EE10;
    v50 = v73;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = v50;
    swift_willThrow();
    sub_213FDC6BC(v78, *(&v78 + 1));

    sub_213FDC6BC(v84, v77);
    sub_213FDC6BC(v21, v80);
    (*(v92 + 8))(v9, v22);

    v59 = v74;
    v67 = v76;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD000000000000022;
    v34[1] = 0x800000021478EDE0;
    v35 = v73;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = v35;
    swift_willThrow();

    sub_213FDC6BC(v78, *(&v78 + 1));

    sub_213FDC6BC(v84, v77);
    sub_213FDC6BC(v21, v80);
    (*(v92 + 8))(v9, v22);
  }

  __swift_destroy_boxed_opaque_existential_1(v154);
  LOBYTE(v104) = v89;
  *(&v104 + 1) = v90;
  v105 = v87;
  *(&v104 + 1) = v153[0];
  DWORD1(v104) = *(v153 + 3);
  LOBYTE(v106) = v88;
  BYTE1(v106) = v82;
  BYTE2(v106) = v86;
  BYTE3(v106) = v83;
  BYTE4(v106) = v81;
  *(&v106 + 5) = v151;
  HIBYTE(v106) = v152;
  v107 = v21;
  v108 = v80;
  v109 = v79;
  *&v110[3] = *&v150[3];
  *v110 = *v150;
  v111 = v56;
  v112 = v57;
  v113 = v55;
  v114 = v54;
  v115 = v23;
  v117 = v149;
  v116 = v148;
  v118 = v84;
  v119 = v77;
  v120 = v75;
  *&v121[3] = *&v147[3];
  *v121 = *v147;
  v122 = v64;
  v123 = v66;
  v124 = v59;
  v125 = v67;
  v126 = v65;
  v127 = v58;
  v129 = v146;
  v128 = v145;
  v130 = v60;
  v131 = v63;
  v132 = v52;
  v133 = v62;
  v134 = v61;
  v135 = v70;
  v136 = v53;
  return sub_2142F6E1C(&v104);
}

uint64_t sub_21416964C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A20, &qword_2146F4C80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  v7 = *(v1 + 1);
  v48 = *(v1 + 2);
  v49 = v7;
  v53 = v1[24];
  LODWORD(v7) = v1[25];
  v46 = v1[26];
  v47 = v7;
  LODWORD(v7) = v1[27];
  v44 = v1[28];
  v45 = v7;
  v8 = *(v1 + 5);
  v42 = *(v1 + 4);
  v43 = v8;
  v41 = v1[48];
  v9 = *(v1 + 9);
  v39 = *(v1 + 10);
  v40 = v9;
  v38 = v1[89];
  v10 = *(v1 + 13);
  v36 = *(v1 + 12);
  v37 = v10;
  v34 = v1[112];
  v11 = *(v1 + 17);
  v35 = *(v1 + 18);
  v31 = v1[153];
  v12 = *(v1 + 23);
  v30 = *(v1 + 22);
  v32 = v12;
  v33 = v11;
  v13 = v1[193];
  v14 = v1[194];
  v16 = a1[3];
  v15 = a1[4];
  v17 = a1;
  v19 = &v28 - v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_2142F6E70();
  v20 = v3;
  sub_2146DAA28();
  LOBYTE(v51) = v6;
  v54 = 0;
  sub_2142F6F74();
  v21 = v50;
  sub_2146DA388();
  if (v21)
  {
    return (*(v4 + 8))(v19, v3);
  }

  v23 = v53;
  v24 = v48;
  v25 = v47;
  LODWORD(v50) = v13;
  HIDWORD(v28) = v14;
  v29 = v4;
  LOBYTE(v51) = 1;
  sub_2146DA378();
  v51 = v24;
  LOBYTE(v52) = v23;
  v54 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  sub_2142E3778();
  sub_2146DA388();
  LOBYTE(v51) = v25;
  v54 = 3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v27 = sub_2142E1D30();
  sub_2146DA388();
  LOBYTE(v51) = v46;
  v54 = 4;
  sub_2146DA388();
  LOBYTE(v51) = v45;
  v54 = 5;
  sub_2146DA388();
  LOBYTE(v51) = v44;
  v54 = 6;
  sub_2146DA388();
  v48 = v27;
  v49 = v26;
  v51 = v42;
  v52 = v43;
  v54 = 7;
  sub_213FDCA18(v42, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  sub_2142E1CAC();
  sub_2146DA388();
  sub_213FDC6BC(v51, v52);
  LOBYTE(v51) = v41;
  v54 = 8;
  sub_2146DA388();
  if (v39 >> 60 == 11)
  {
    goto LABEL_7;
  }

  v51 = v40;
  v52 = v39;
  v54 = 9;
  sub_213FDCA18(v40, v39);
  sub_2146DA388();
  sub_213FDC6BC(v51, v52);
  LOBYTE(v51) = v38;
  v54 = 10;
  sub_2146DA388();
  v51 = v36;
  v52 = v37;
  v54 = 11;
  sub_213FDCA18(v36, v37);
  sub_2146DA388();
  sub_213FDC6BC(v51, v52);
  LOBYTE(v51) = v34;
  v54 = 12;
  sub_2146DA388();
  if (!v35)
  {
    goto LABEL_7;
  }

  LOBYTE(v51) = 13;

  sub_2146DA328();

  LOBYTE(v51) = 14;
  sub_2146DA338();
  if (v32)
  {
    LOBYTE(v51) = 15;

    sub_2146DA328();

    LOBYTE(v51) = v50;
    v54 = 16;
    sub_2146DA388();
    LOBYTE(v51) = BYTE4(v28);
    v54 = 17;
    sub_2146DA388();
    return (*(v29 + 8))(v19, v20);
  }

  else
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214169DEC@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, unint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, unint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v33 = *a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2140676DC;
  *(v10 + 24) = 0;
  *(inited + 32) = v10;
  sub_214042B80(inited, &v36);
  v11 = v36;
  v12 = v37;
  v13 = v39;
  v27 = v38;
  v14 = v40;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_2146E9BF0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2140676DC;
  *(v16 + 24) = 0;
  *(v15 + 32) = v16;
  sub_214042B80(v15, &v50);
  v34 = v50;
  v35 = v51;
  v26 = v52;
  v56 = v53;
  v29 = v54;
  v30 = v14;
  v50 = a2;
  v51 = a3;
  v49 = v14;
  v36 = 0xD00000000000001ELL;
  v37 = 0x800000021478EE30;
  v38 = 0xD00000000000001CLL;
  v39 = 0x800000021478A360;

  v17 = v11(&v50, &v49, &v36);
  if (v31)
  {

    v18 = v27;
    v19 = v29;
  }

  else
  {
    v18 = v27;
    if (v17)
    {

      v50 = a4;
      v51 = a5;
      v19 = v29;
      v49 = v29;
      v36 = 0xD000000000000022;
      v37 = 0x800000021478EE50;
      v38 = 0xD00000000000001CLL;
      v39 = 0x800000021478A360;

      v20 = v34(&v50, &v49, &v36);
      if (v20)
      {

        result = swift_bridgeObjectRelease_n();
        *a7 = a1;
        *(a7 + 8) = v11;
        *(a7 + 16) = v12;
        *(a7 + 24) = a2;
        *(a7 + 32) = a3;
        *(a7 + 40) = v30;
        *(a7 + 48) = v34;
        *(a7 + 56) = v35;
        *(a7 + 64) = a4;
        *(a7 + 72) = a5;
        *(a7 + 80) = v29;
        *(a7 + 81) = v33;
        return result;
      }

      sub_214031C4C();
      swift_allocError();
      *v23 = 0xD000000000000022;
      v23[1] = 0x800000021478EE50;
      v23[2] = 0xD00000000000001CLL;
      v23[3] = 0x800000021478A360;
      swift_willThrow();

      v13 = a3;
      v18 = a2;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v21 = 0xD00000000000001ELL;
      v21[1] = 0x800000021478EE30;
      v21[2] = 0xD00000000000001CLL;
      v21[3] = 0x800000021478A360;
      swift_willThrow();

      v19 = v29;
    }
  }

  v36 = a1;
  v37 = v11;
  v38 = v12;
  v39 = v18;
  v40 = v13;
  v41 = v30;
  *v42 = v55[0];
  *&v42[3] = *(v55 + 3);
  v43 = v34;
  v44 = v35;
  v45 = v26;
  v46 = v56;
  v47 = v19;
  v48 = v33;
  return sub_2142F6FC8(&v36);
}

unint64_t sub_21416A238()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x7069636974726170;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = 0x496E6F6973736573;
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

uint64_t sub_21416A2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436AD78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21416A2F0(uint64_t a1)
{
  v2 = sub_2142F701C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416A32C(uint64_t a1)
{
  v2 = sub_2142F701C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416A368@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A30, &qword_2146F4C88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142F701C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

  v12 = v6;
  LOBYTE(v67) = 0;
  v59 = sub_2146DA1B8();
  LOBYTE(v67) = 1;
  v13 = sub_2146DA168();
  v16 = v15;
  *(&v58 + 1) = v13;
  LOBYTE(v67) = 2;
  v17 = sub_2146DA168();
  v19 = v18;
  v54 = v17;
  v80 = 3;
  sub_21406AF94();
  sub_2146DA1C8();
  v51 = v19;
  v48 = v81;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v52 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_2140676DC;
  *(v21 + 24) = 0;
  *(inited + 32) = v21;
  sub_214042B80(inited, &v67);
  v57 = v67;
  *&v58 = v68;
  v45 = v69;
  v55 = v70;
  v56 = v71;
  v22 = swift_initStackObject();
  *(v22 + 16) = v52;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2140676DC;
  *(v23 + 24) = 0;
  *(v22 + 32) = v23;
  sub_214042B80(v22, &v60);
  v53 = *(&v60 + 1);
  v49 = v60;
  *&v52 = *(&v61 + 1);
  v46 = v61;
  v50 = v62;
  *&v60 = *(&v58 + 1);
  *(&v60 + 1) = v16;
  LOBYTE(v66[0]) = v56;
  v67 = 0xD00000000000001ELL;
  v68 = 0x800000021478EE30;
  v47 = 0x800000021478EE30;
  v69 = 0xD00000000000001CLL;
  v70 = 0x800000021478A360;

  v24 = v57(&v60, v66, &v67);
  v25 = v47;
  v44 = 0x800000021478A360;
  v26 = v55;
  if (v24)
  {
    v27 = v44;
    v45 = 0;

    v66[0] = v54;
    v66[1] = v51;
    LOBYTE(v60) = v50;
    v67 = 0xD000000000000022;
    v68 = 0x800000021478EE50;
    v69 = 0xD00000000000001CLL;
    v70 = v27;

    v28 = v45;
    v29 = v49(v66, &v60, &v67);
    if (v28)
    {
    }

    else
    {
      if (v29)
      {

        (*(v12 + 8))(v9, v5);

        v35 = v53;

        v36 = *(&v58 + 1);
        v38 = v57;
        v37 = v58;
        *&v60 = v59;
        *(&v60 + 1) = v57;
        v61 = v58;
        *&v62 = v16;
        v39 = v56;
        BYTE8(v62) = v56;
        *&v63 = v49;
        *(&v63 + 1) = v35;
        *&v64 = v54;
        *(&v64 + 1) = v51;
        LOBYTE(v65) = v50;
        HIBYTE(v65) = v48;
        v40 = v63;
        *(a2 + 32) = v62;
        *(a2 + 48) = v40;
        *(a2 + 64) = v64;
        *(a2 + 80) = v65;
        v41 = v61;
        *a2 = v60;
        *(a2 + 16) = v41;
        sub_2142F7070(&v60, &v67);
        __swift_destroy_boxed_opaque_existential_1(v83);
        v67 = v59;
        v68 = v38;
        v69 = v37;
        v70 = v36;
        v71 = v16;
        v72 = v39;
        *v73 = v82[0];
        *&v73[3] = *(v82 + 3);
        v74 = v49;
        v75 = v35;
        v76 = v54;
        v34 = v51;
        goto LABEL_9;
      }

      sub_214031C4C();
      swift_allocError();
      *v42 = 0xD000000000000022;
      v42[1] = 0x800000021478EE50;
      v43 = v44;
      v42[2] = 0xD00000000000001CLL;
      v42[3] = v43;
      swift_willThrow();
    }

    v32 = v16;
    v33 = v58;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD00000000000001ELL;
    v30[1] = v25;
    v31 = v44;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = v31;
    swift_willThrow();

    v32 = v26;
    v33 = v58;
    *(&v58 + 1) = v45;
  }

  (*(v12 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(v83);
  v67 = v59;
  v68 = v57;
  v69 = v33;
  v70 = *(&v58 + 1);
  v71 = v32;
  v72 = v56;
  *v73 = v82[0];
  *&v73[3] = *(v82 + 3);
  v74 = v49;
  v75 = v53;
  v76 = v46;
  v34 = v52;
LABEL_9:
  v77 = v34;
  v78 = v50;
  v79 = v48;
  return sub_2142F6FC8(&v67);
}

uint64_t sub_21416AA94(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A40, &qword_2146F4C90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[9];
  v20 = v1[8];
  v21 = v9;
  v19 = v11;
  v18 = *(v1 + 81);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F701C();
  sub_2146DAA28();
  v27 = 0;
  v13 = v22;
  sub_2146DA378();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v15 = v18;
  v16 = v19;
  if (v10 && (v26 = 1, , sub_2146DA328(), , v16))
  {
    v25 = 2;

    sub_2146DA328();

    v24 = v15;
    v23 = 3;
    sub_21406AFE8();
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

uint64_t sub_21416ADA4(uint64_t a1)
{
  v2 = sub_2142F70CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416ADE0(uint64_t a1)
{
  v2 = sub_2142F70CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416AE1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A48, &qword_2146F4C98);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F70CC();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v17;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
    v14 = v18;
    sub_2146DA1C8();
    (*(v8 + 8))(v11, v7);
    sub_214328704(v14, v13, type metadata accessor for Metadata);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21416B028(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A58, &qword_2146F4CA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F70CC();
  sub_2146DAA28();
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21416B1B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A58, &qword_2146F4CA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F70CC();
  sub_2146DAA28();
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

__n128 sub_21416B330@<Q0>(void *__src@<X3>, uint64_t a2@<X0>, char a3@<W1>, char a4@<W2>, const void *a5@<X4>, const void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = (a8 + 1624);
  v15 = *(a7 + 32);
  v22 = a3 & 1;
  memcpy(&__srca[6], __src, 0x201uLL);
  memcpy(&v20[7], a5, 0x231uLL);
  memcpy(&v19[7], a6, 0x201uLL);
  v16 = v22;
  *a8 = a2;
  *(a8 + 8) = v16;
  *(a8 + 9) = a4;
  memcpy((a8 + 10), __srca, 0x207uLL);
  memcpy((a8 + 529), v20, 0x238uLL);
  memcpy((a8 + 1097), v19, 0x208uLL);
  result = *a7;
  v18 = *(a7 + 16);
  *v14 = *a7;
  v14[1] = v18;
  *(a8 + 1656) = v15;
  return result;
}

uint64_t sub_21416B42C()
{
  v1 = *v0;
  v2 = 0x726F70736E617274;
  v3 = 0x6552657469766E69;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F707365527369;
  if (v1 != 1)
  {
    v5 = 0x6552657469766E69;
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

uint64_t sub_21416B514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436AEF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21416B53C(uint64_t a1)
{
  v2 = sub_2142F7120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416B578(uint64_t a1)
{
  v2 = sub_2142F7120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416B5B4(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A60, &qword_2146F4CA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = v2[3];
  v11 = v2[4];
  v23 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v10);
  sub_2142F7120();
  sub_2146DAA08();
  if (!v1)
  {
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v32[0] = 0;
    sub_2142E11FC();
    v13 = v5;
    sub_2146DA1C8();
    v14 = v33[0];
    v15 = v33[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v32[0] = 1;
    sub_2142E1378();
    sub_2146DA1C8();
    v22 = v14;
    LODWORD(v14) = LOBYTE(v33[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A70, &qword_2146F4CB0);
    v35[543] = 2;
    sub_2142F7174();
    sub_2146DA1C8();
    HIDWORD(v21) = v14;
    memcpy(v34, v35, sizeof(v34));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A88, &qword_2146F4CB8);
    v35[542] = 3;
    sub_2142F724C();
    sub_2146DA1C8();
    memcpy(v32, v33, sizeof(v32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907AA0, &qword_2146F4CC0);
    v35[541] = 4;
    sub_2142F7324();
    sub_2146DA1C8();
    memcpy(v30, v31, sizeof(v30));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907AB8, &qword_2146F4CC8);
    v35[540] = 5;
    sub_2142F73FC();
    sub_2146DA1C8();
    (*(v12 + 8))(v9, v13);
    v17 = v4;
    v18 = (v4 + 1624);
    v19 = v29;
    v35[536] = v15;
    memcpy(&v26[6], v34, 0x201uLL);
    memcpy(&v25[7], v32, 0x231uLL);
    memcpy(&v24[7], v30, 0x201uLL);
    *v17 = v22;
    *(v17 + 8) = v15;
    *(v17 + 9) = BYTE4(v21);
    memcpy((v17 + 10), v26, 0x207uLL);
    memcpy((v17 + 529), v25, 0x238uLL);
    memcpy((v17 + 1097), v24, 0x208uLL);
    v20 = v28;
    *v18 = v27;
    v18[1] = v20;
    *(v17 + 1656) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_21416BAC0(uint64_t a1)
{
  v23 = v2;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907AD0, &unk_2146F4CD0);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v38 = *(v1 + 9);
  memcpy(v35, v1 + 2, 0x201uLL);
  memcpy(v36, v1 + 67, 0x231uLL);
  memcpy(v37, v1 + 138, 0x201uLL);
  v10 = v1[203];
  v20 = v1[204];
  v21 = v10;
  v11 = v1[205];
  v18 = v1[206];
  v19 = v11;
  HIDWORD(v17) = *(v1 + 1656);
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2142F7120();
  sub_2146DAA28();
  v32[0] = v8;
  LOBYTE(v32[1]) = v9;
  v31[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2142E1C30();
  v13 = v23;
  sub_2146DA388();
  if (v13)
  {
    return (*(v22 + 8))(v7, v4);
  }

  v16 = v21;
  v15 = v22;
  LOBYTE(v32[0]) = v38;
  v31[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  sub_2146DA388();
  memcpy(v34, v35, sizeof(v34));
  v42 = 2;
  sub_213FB2E54(v35, v32, &qword_27C907A70, &qword_2146F4CB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A70, &qword_2146F4CB0);
  sub_2142F74D4();
  sub_2146DA388();
  memcpy(v33, v34, 0x201uLL);
  sub_213FB2DF4(v33, &qword_27C907A70, &qword_2146F4CB0);
  memcpy(v32, v36, 0x231uLL);
  v41 = 3;
  sub_213FB2E54(v36, v31, &qword_27C907A88, &qword_2146F4CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907A88, &qword_2146F4CB8);
  sub_2142F75AC();
  sub_2146DA388();
  memcpy(v31, v32, 0x231uLL);
  sub_213FB2DF4(v31, &qword_27C907A88, &qword_2146F4CB8);
  memcpy(v30, v37, sizeof(v30));
  v40 = 4;
  sub_213FB2E54(v37, v29, &qword_27C907AA0, &qword_2146F4CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907AA0, &qword_2146F4CC0);
  sub_2142F7684();
  sub_2146DA388();
  memcpy(v29, v30, 0x201uLL);
  sub_213FB2DF4(v29, &qword_27C907AA0, &qword_2146F4CC0);
  v24 = v16;
  v25 = v20;
  v26 = v19;
  v27 = v18;
  v28 = BYTE4(v17);
  v39 = 5;
  sub_21431326C(v16, v20, v19, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907AB8, &qword_2146F4CC8);
  sub_2142F775C();
  sub_2146DA388();
  sub_214313220(v24, v25, v26, v27);
  return (*(v15 + 8))(v7, v4);
}

uint64_t sub_21416C03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for LiteRelayTextMessage();
  result = sub_21408AC04(a3, a6 + *(v10 + 20), &qword_27C904DD0, &unk_214741A90);
  v12 = (a6 + *(v10 + 24));
  *v12 = a4;
  v12[1] = a5;
  return result;
}

uint64_t sub_21416C0BC()
{
  v1 = 0x6B636162706174;
  if (*v0 != 1)
  {
    v1 = 0x6E65644974616863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7865546E69616C70;
  }
}

uint64_t sub_21416C130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436B114(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21416C158(uint64_t a1)
{
  v2 = sub_2142F7834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416C194(uint64_t a1)
{
  v2 = sub_2142F7834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416C1D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B18, &qword_2146F4CE0);
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v27);
  v11 = &v22 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7834();
  sub_2146DAA08();
  if (!v2)
  {
    v24 = v7;
    v25 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v30 = 0;
    sub_2142E12FC();
    v13 = v27;
    sub_2146DA1C8();
    v14 = v29;
    v23 = v28;
    LOBYTE(v28) = 1;
    sub_2142F7888();
    sub_2146DA1C8();
    v15 = v14;
    v30 = 2;
    sub_2146DA1C8();
    (*(v25 + 8))(v11, v13);
    v16 = v28;
    v17 = v29;
    v18 = type metadata accessor for LiteRelayTextMessage();
    v19 = v26;
    sub_21408AC04(v24, v26 + *(v18 + 20), &qword_27C904DD0, &unk_214741A90);
    *v19 = v23;
    v19[1] = v15;
    v20 = (v19 + *(v18 + 24));
    *v20 = v16;
    v20[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21416C4FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B30, &qword_2146F4CE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7834();
  sub_2146DAA28();
  v15 = *v3;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v14 = type metadata accessor for LiteRelayTextMessage();
    v11 = *(v14 + 20);
    LOBYTE(v15) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
    sub_2142F793C();
    sub_2146DA388();
    v15 = *(v3 + *(v14 + 24));
    v16 = 2;
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21416C73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  v10 = type metadata accessor for LiteTextMessage(0);
  sub_21408AC04(a4, a6 + *(v10 + 24), &unk_27C904F30, &unk_2146EFA20);
  return sub_21408AC04(a5, a6 + *(v10 + 28), &qword_27C904DD0, &unk_214741A90);
}

unint64_t sub_21416C7D4()
{
  v1 = 0x7865546E69616C70;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x6B636162706174;
  }

  if (*v0)
  {
    v1 = 0x746365666665;
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

uint64_t sub_21416C85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436B23C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21416C884(uint64_t a1)
{
  v2 = sub_2142F79F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416C8C0(uint64_t a1)
{
  v2 = sub_2142F79F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416C8FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B40, &qword_2146F4CF0);
  v11 = *(v34 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v34);
  v14 = &v29 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142F79F0();
  v17 = v35;
  sub_2146DAA08();
  if (!v17)
  {
    v32 = v3;
    v35 = v10;
    v18 = v11;
    v19 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v39 = 0;
    sub_2142E12FC();
    v20 = v34;
    sub_2146DA1C8();
    v21 = v37;
    v22 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B50, &qword_2146F4CF8);
    v39 = 1;
    sub_2142F7A44();
    sub_2146DA1C8();
    v30 = v21;
    v31 = v22;
    LOBYTE(v22) = v37;
    LOBYTE(v37) = 2;
    sub_2142EFBA8();
    sub_2146DA1C8();
    LOBYTE(v37) = 3;
    sub_2142F7888();
    v24 = v19;
    sub_2146DA1C8();
    v25 = v31;
    (*(v18 + 8))(v14, v20);
    v26 = type metadata accessor for LiteTextMessage(0);
    v27 = v22;
    v28 = v33;
    sub_21408AC04(v35, v33 + *(v26 + 24), &unk_27C904F30, &unk_2146EFA20);
    sub_21408AC04(v24, v28 + *(v26 + 28), &qword_27C904DD0, &unk_214741A90);
    *v28 = v30;
    *(v28 + 8) = v25;
    *(v28 + 16) = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_21416CCF8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B60, &qword_2146F4D00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F79F0();
  sub_2146DAA28();
  v17 = *v3;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    LOBYTE(v17) = *(v3 + 16);
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B50, &qword_2146F4CF8);
    sub_2142F7AC8();
    sub_2146DA388();
    v11 = type metadata accessor for LiteTextMessage(0);
    v12 = *(v11 + 24);
    LOBYTE(v17) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    sub_2142EFE18();
    sub_2146DA388();
    v13 = *(v11 + 28);
    LOBYTE(v17) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
    sub_2142F793C();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LiteTapback.init(with:associatedMessageType:associatedMessageEmoji:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = sub_2146D8B88();
  v28 = *(v10 - 8);
  v31 = a1;
  v29 = v10;
  (*(v28 + 16))(a5, a1);
  sub_214084004(&v33);
  v12 = v33;
  v11 = v34;
  v13 = v35;
  v14 = v36;
  v15 = v37;
  v16 = type metadata accessor for LiteTapback(0);
  *(a5 + *(v16 + 20)) = v9;
  v27 = a5;
  v17 = a5 + *(v16 + 24);
  *v17 = v12;
  *(v17 + 8) = v11;
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  *(v17 + 32) = v15;
  v32[0] = a3;
  v32[1] = a4;
  v38 = v15;
  v39 = v15;
  v33 = 0xD000000000000022;
  v34 = 0x800000021478EE80;
  v35 = 0xD00000000000001CLL;
  v36 = 0x800000021478A360;

  sub_213FDC9D0(v13, v14);
  v18 = v12(v32, &v39, &v33);
  if (v30)
  {
  }

  else
  {
    if (v18)
    {
      sub_213FDC6D0(v13, v14);

      (*(v28 + 8))(v31, v29);
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);

      result = sub_213FDC6D0(v20, v21);
      *v17 = v12;
      *(v17 + 8) = v11;
      *(v17 + 16) = a3;
      *(v17 + 24) = a4;
      *(v17 + 32) = v38;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000022;
    v23[1] = 0x800000021478EE80;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();
  }

  (*(v28 + 8))(v31, v29);
  v24 = *(v17 + 8);
  v25 = *(v17 + 16);
  v26 = *(v17 + 24);

  sub_213FDC6D0(v25, v26);
  *v17 = v12;
  *(v17 + 8) = v11;
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  *(v17 + 32) = v38;
  return sub_21432887C(v27, type metadata accessor for LiteTapback);
}

unint64_t sub_21416D24C()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    result = v2;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_21416D29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436B3AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21416D2C4(uint64_t a1)
{
  v2 = sub_2142F7B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416D300(uint64_t a1)
{
  v2 = sub_2142F7B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiteTapback.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_2146D8B88();
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B70, &qword_2146F4D08);
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v11 = type metadata accessor for LiteTapback(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142F7B4C();
  v17 = v54;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v54 = v11;
  v18 = v14;
  v19 = v53;
  LOBYTE(v57) = 0;
  sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0]);
  sub_2146DA1C8();
  v20 = v10;
  v50 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B80, &qword_2146F4D10);
  LOBYTE(v56[0]) = 1;
  sub_2142F7BA0();
  sub_2146DA1C8();
  v21 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v56[0]) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v47 = v57;
  v48 = v58;
  (*(v52 + 16))(v18, v50, v3);
  sub_214084004(&v57);
  v23 = v57;
  v24 = v58;
  v49 = v57;
  v25 = v21;
  v27 = v59;
  v26 = v60;
  v28 = v54;
  *(v18 + *(v54 + 20)) = v25;
  v29 = v61;
  v30 = *(v28 + 24);
  v54 = v18;
  v31 = v18 + v30;
  *v31 = v23;
  *(v31 + 8) = v24;
  *(v31 + 16) = v27;
  *(v31 + 24) = v26;
  *(v31 + 32) = v29;
  v56[0] = v47;
  v56[1] = v48;
  v62 = v29;
  v63 = v29;
  v57 = 0xD000000000000022;
  v58 = 0x800000021478EE80;
  v44 = 0x800000021478EE80;
  v59 = 0xD00000000000001CLL;
  v60 = 0x800000021478A360;

  v45 = v26;
  v46 = v27;
  sub_213FDC9D0(v27, v26);
  v32 = v24;
  v33 = v49(v56, &v63, &v57);
  v34 = v44;
  if (v33)
  {
    sub_213FDC6D0(v46, v45);

    (*(v52 + 8))(v50, v3);
    (*(v19 + 8))(v20, v7);
    v35 = *(v31 + 8);
    v36 = *(v31 + 16);
    v37 = *(v31 + 24);

    sub_213FDC6D0(v36, v37);
    *v31 = v49;
    *(v31 + 8) = v32;
    v38 = v48;
    *(v31 + 16) = v47;
    *(v31 + 24) = v38;
    *(v31 + 32) = v62;
    sub_214328704(v54, v51, type metadata accessor for LiteTapback);
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  sub_214031C4C();
  swift_allocError();
  *v39 = 0xD000000000000022;
  v39[1] = v34;
  v39[2] = 0xD00000000000001CLL;
  v39[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v52 + 8))(v50, v3);
  (*(v19 + 8))(v20, v7);
  v40 = *(v31 + 8);
  v41 = *(v31 + 16);
  v42 = *(v31 + 24);

  sub_213FDC6D0(v41, v42);
  *v31 = v49;
  *(v31 + 8) = v32;
  v43 = v45;
  *(v31 + 16) = v46;
  *(v31 + 24) = v43;
  *(v31 + 32) = v62;
  __swift_destroy_boxed_opaque_existential_1(v55);
  return sub_21432887C(v54, type metadata accessor for LiteTapback);
}

uint64_t LiteTapback.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B90, &qword_2146F4D18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7B4C();
  sub_2146DAA28();
  LOBYTE(v16) = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = type metadata accessor for LiteTapback(0);
  LOBYTE(v16) = *(v3 + *(v11 + 20));
  v18 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B80, &qword_2146F4D10);
  sub_2142F7C24();
  sub_2146DA388();
  v12 = v3 + *(v11 + 24);
  v13 = *(v12 + 24);
  if (v13 != 1)
  {
    v16 = *(v12 + 16);
    v17 = v13;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v6 + 8))(v9, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21416DBDC(uint64_t a1)
{
  v2 = sub_2142F7CA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416DC18(uint64_t a1)
{
  v2 = sub_2142F7CA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416DD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2143287C0(a1, a3, type metadata accessor for Metadata);
  sub_214493FFC(&v20);
  v6 = v20;
  v5 = v21;
  v7 = v22;
  v8 = v23;
  v9 = a3 + *(type metadata accessor for MarkAsReviewedCommand() + 20);
  *v9 = v6;
  *(v9 + 8) = v5;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v25 = a2;
  v19 = v8;
  v24 = v8;
  v20 = 0xD000000000000027;
  v21 = 0x800000021478EEB0;
  v22 = 0xD00000000000001CLL;
  v23 = 0x800000021478A360;

  v10 = v6(&v25, &v24, &v20);
  if (v17)
  {
  }

  else
  {
    if (v10)
    {

      sub_21432887C(a1, type metadata accessor for Metadata);
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);

      *v9 = v6;
      *(v9 + 8) = v5;
      *(v9 + 16) = a2;
      *(v9 + 24) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD000000000000027;
    v14[1] = 0x800000021478EEB0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21432887C(a1, type metadata accessor for Metadata);
  v15 = *(v9 + 8);
  v16 = *(v9 + 16);

  *v9 = v6;
  *(v9 + 8) = v5;
  *(v9 + 16) = v7;
  *(v9 + 24) = v19;
  return sub_21432887C(a3, type metadata accessor for MarkAsReviewedCommand);
}

unint64_t sub_21416DF30()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x617461646174656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_21416DF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002147950E0 == a2)
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

uint64_t sub_21416E054(uint64_t a1)
{
  v2 = sub_2142F7CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416E090(uint64_t a1)
{
  v2 = sub_2142F7CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416E0CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for Metadata();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907BB8, &qword_2146F4D30);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = type metadata accessor for MarkAsReviewedCommand();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142F7CFC();
  v17 = v40;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  LOBYTE(v42) = 0;
  sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v47) = 1;
  sub_2142E15CC();
  sub_2146DA1C8();
  v19 = v42;
  v40 = v6;
  sub_2143287C0(v6, v14, type metadata accessor for Metadata);
  sub_214493FFC(&v42);
  v20 = v42;
  v21 = v43;
  v22 = v44;
  v23 = v45;
  v24 = *(v11 + 20);
  v36 = v14;
  v25 = &v14[v24];
  *v25 = v42;
  *(v25 + 1) = v21;
  *(v25 + 2) = v22;
  v25[24] = v23;
  v47 = v19;
  v35 = v23;
  v46 = v23;
  v42 = 0xD000000000000027;
  v43 = 0x800000021478EEB0;
  v44 = 0xD00000000000001CLL;
  v45 = 0x800000021478A360;
  v34 = v22;

  v37 = v20;
  v26 = v20(&v47, &v46, &v42);
  if (v26)
  {

    sub_21432887C(v40, type metadata accessor for Metadata);
    (*(v39 + 8))(v10, v7);
    v27 = *(v25 + 1);
    v28 = *(v25 + 2);

    v29 = v36;
    *v25 = v37;
    *(v25 + 1) = v21;
    *(v25 + 2) = v19;
    v25[24] = v35;
    sub_214328704(v29, v38, type metadata accessor for MarkAsReviewedCommand);
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  sub_214031C4C();
  swift_allocError();
  *v30 = 0xD000000000000027;
  v30[1] = 0x800000021478EEB0;
  v30[2] = 0xD00000000000001CLL;
  v30[3] = 0x800000021478A360;
  swift_willThrow();

  sub_21432887C(v40, type metadata accessor for Metadata);
  (*(v39 + 8))(v10, v7);
  v31 = *(v25 + 1);
  v32 = *(v25 + 2);

  *v25 = v37;
  *(v25 + 1) = v21;
  *(v25 + 2) = v34;
  v25[24] = v35;
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_21432887C(v36, type metadata accessor for MarkAsReviewedCommand);
}

uint64_t sub_21416E5EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907BC8, &qword_2146F4D38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7CFC();
  sub_2146DAA28();
  v15 = 0;
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = *(v3 + *(type metadata accessor for MarkAsReviewedCommand() + 20) + 16);
  if (v11)
  {
    v14 = v11;
    v13[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    return (*(v6 + 8))(v9, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21416E84C(uint64_t a1)
{
  v2 = sub_2142F7D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416E888(uint64_t a1)
{
  v2 = sub_2142F7D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416E8C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907BD0, &qword_2146F4D40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7D50();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v17;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
    v14 = v18;
    sub_2146DA1C8();
    (*(v8 + 8))(v11, v7);
    sub_214328704(v14, v13, type metadata accessor for Metadata);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21416EAD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907BE0, &qword_2146F4D48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7D50();
  sub_2146DAA28();
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21416EC60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907BE0, &qword_2146F4D48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7D50();
  sub_2146DAA28();
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

__n128 sub_21416EDD8@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, __n128 *a6@<X8>)
{
  v6 = a5[1].n128_u64[0];
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  a6[1].n128_u64[0] = a3;
  a6[1].n128_u64[1] = a4;
  result = *a5;
  a6[2] = *a5;
  a6[3].n128_u64[0] = v6;
  return result;
}

uint64_t sub_21416EDF4()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7865546E69616C70;
  }
}

uint64_t sub_21416EE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436B4D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21416EE88(uint64_t a1)
{
  v2 = sub_2142F7DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416EEC4(uint64_t a1)
{
  v2 = sub_2142F7DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21416EF00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907BE8, &qword_2146F4D50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7DA4();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v22 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v11 = *(&v20 + 1);
    v18 = v20;
    v22 = 1;
    sub_2146DA1C8();
    v12 = v11;
    v13 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
    v22 = 2;
    sub_2142E4F74();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v15 = v21;
    v16 = v20;
    v17 = v19;
    *v19 = v18;
    v17[1] = v12;
    *(v17 + 1) = v13;
    *(v17 + 2) = v16;
    v17[6] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21416F190(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907BF8, &qword_2146F4D58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v21 = v1[3];
  v22 = v10;
  v11 = v1[4];
  v19 = v1[5];
  v20 = v11;
  v18 = v1[6];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7DA4();

  sub_2146DAA28();
  v24 = v8;
  v25 = v9;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v13 = v23;
  sub_2146DA388();

  if (!v13)
  {
    v15 = v19;
    v14 = v20;
    v24 = v22;
    v25 = v21;
    v27 = 1;
    sub_2146DA388();
    v24 = v14;
    v25 = v15;
    v26 = v18;
    v27 = 2;
    sub_214031CA0(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
    sub_2142E5278();
    sub_2146DA388();
    sub_214031CE0(v24);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t BIAPayload.init(with:icon:hero:title:subtitle:userInteractionParadigm:id:displayContent:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  v111 = a2;
  sub_213FB2E54(a3, a9 + 40, &qword_27C907C00, &unk_2146F4D60);
  v91 = a4;
  sub_213FB2E54(a4, a9 + 480, &qword_27C907C00, &unk_2146F4D60);
  v14 = type metadata accessor for BIAPayload(0);
  sub_213FB2E54(a10, a9 + v14[9], &qword_27C907C08, &qword_21473BF00);
  sub_214409FCC(&v107);
  v89 = v108;
  v85 = v109;
  v84 = v110;
  sub_21440A3C0(&v103);
  v15 = v104;
  v16 = v105;
  v17 = v106;
  sub_21440A7B4(&v99);
  v18 = v100;
  v19 = v101;
  v20 = v102;
  sub_21440ABA8(v97);
  v21 = v98;
  *a9 = v107;
  *(a9 + 16) = v89;
  *(a9 + 24) = v85;
  *(a9 + 32) = v84;
  *(a9 + 920) = v103;
  *(a9 + 936) = v15;
  *(a9 + 944) = v16;
  *(a9 + 952) = v17;
  *(a9 + 960) = v99;
  *(a9 + 976) = v18;
  *(a9 + 984) = v19;
  *(a9 + 992) = v20;
  v22 = a9 + v14[10];
  v23 = v97[1];
  *v22 = v97[0];
  *(v22 + 16) = v23;
  *(v22 + 32) = v21;
  v24 = a9 + v14[11];
  v25 = *(a12 + 48);
  *(v24 + 32) = *(a12 + 32);
  *(v24 + 48) = v25;
  *(v24 + 64) = *(a12 + 64);
  *(v24 + 80) = *(a12 + 80);
  v26 = *(a12 + 16);
  *v24 = *a12;
  *(v24 + 16) = v26;
  v28 = *a9;
  v27 = *(a9 + 8);
  v29 = *(a9 + 16);
  v30 = *(a9 + 24);
  LOBYTE(v24) = *(a9 + 32);
  *&v103 = a1;
  *(&v103 + 1) = v111;
  v90 = v24;
  LOBYTE(v99) = v24;
  *&v107 = 0xD000000000000016;
  *(&v107 + 1) = 0x800000021478EEE0;
  v108 = 0xD00000000000001CLL;
  v109 = 0x800000021478A360;

  v86 = v29;
  sub_213FDC9D0(v29, v30);
  v31 = v87;
  v88 = v28;
  v32 = v28(&v103, &v99, &v107);
  if (v31)
  {

LABEL_6:

    sub_213FB2DF4(a10, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v91, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(a3, &qword_27C907C00, &unk_2146F4D60);
    v44 = *(a9 + 8);
    v45 = *(a9 + 16);
    v46 = *(a9 + 24);

    sub_213FDC6D0(v45, v46);
    *a9 = v28;
    *(a9 + 8) = v27;
    *(a9 + 16) = v86;
    *(a9 + 24) = v30;
    *(a9 + 32) = v90;
    return sub_21432887C(a9, type metadata accessor for BIAPayload);
  }

  v81 = v22;
  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD000000000000016;
    v43[1] = 0x800000021478EEE0;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v86, v30);

  v33 = *(a9 + 8);
  v34 = *(a9 + 16);
  v35 = *(a9 + 24);

  sub_213FDC6D0(v34, v35);
  *a9 = v88;
  *(a9 + 8) = v27;
  v36 = v111;
  *(a9 + 16) = a1;
  *(a9 + 24) = v36;
  *(a9 + 32) = v90;
  v37 = *(a9 + 920);
  v38 = *(a9 + 928);
  v39 = *(a9 + 936);
  v40 = *(a9 + 944);
  v41 = *(a9 + 952);
  *&v103 = a5;
  *(&v103 + 1) = a6;
  LOBYTE(v99) = v41;
  *&v107 = 0xD000000000000010;
  *(&v107 + 1) = 0x800000021478EF00;
  v108 = 0xD00000000000001CLL;
  v109 = 0x800000021478A360;

  sub_213FDC9D0(v39, v40);
  v111 = v37;
  v42 = v37(&v103, &v99, &v107);
  if ((v42 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v57 = 0xD000000000000010;
    v57[1] = 0x800000021478EF00;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a10, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v91, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(a3, &qword_27C907C00, &unk_2146F4D60);
    v58 = *(a9 + 928);
    v59 = *(a9 + 936);
    v60 = *(a9 + 944);

    sub_213FDC6D0(v59, v60);
    *(a9 + 920) = v111;
    *(a9 + 928) = v38;
    *(a9 + 936) = v39;
    *(a9 + 944) = v40;
    *(a9 + 952) = v41;
    return sub_21432887C(a9, type metadata accessor for BIAPayload);
  }

  sub_213FDC6D0(v39, v40);

  v48 = *(a9 + 928);
  v49 = *(a9 + 936);
  v50 = *(a9 + 944);

  sub_213FDC6D0(v49, v50);
  *(a9 + 920) = v111;
  *(a9 + 928) = v38;
  *(a9 + 936) = a5;
  *(a9 + 944) = a6;
  *(a9 + 952) = v41;
  v51 = *(a9 + 960);
  v52 = *(a9 + 968);
  v53 = *(a9 + 976);
  v54 = *(a9 + 984);
  v55 = *(a9 + 992);
  *&v103 = a7;
  *(&v103 + 1) = a8;
  v96 = v55;
  LOBYTE(v99) = v55;
  *&v107 = 0xD000000000000013;
  *(&v107 + 1) = 0x800000021478EF20;
  v108 = 0xD00000000000001CLL;
  v109 = 0x800000021478A360;

  sub_213FDC9D0(v53, v54);
  v111 = v51;
  v56 = v51(&v103, &v99, &v107);
  if ((v56 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v70 = 0xD000000000000013;
    v70[1] = 0x800000021478EF20;
    v70[2] = 0xD00000000000001CLL;
    v70[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a10, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v91, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(a3, &qword_27C907C00, &unk_2146F4D60);
    v71 = *(a9 + 968);
    v72 = *(a9 + 976);
    v73 = *(a9 + 984);

    sub_213FDC6D0(v72, v73);
    *(a9 + 960) = v111;
    *(a9 + 968) = v52;
    *(a9 + 976) = v53;
    *(a9 + 984) = v54;
    *(a9 + 992) = v96;
    return sub_21432887C(a9, type metadata accessor for BIAPayload);
  }

  sub_213FDC6D0(v53, v54);

  v61 = *(a9 + 968);
  v62 = *(a9 + 976);
  v63 = *(a9 + 984);

  sub_213FDC6D0(v62, v63);
  *(a9 + 960) = v111;
  *(a9 + 968) = v52;
  *(a9 + 976) = a7;
  *(a9 + 984) = a8;
  *(a9 + 992) = v96;
  v65 = *v81;
  v64 = *(v81 + 8);
  v66 = *(v81 + 16);
  v67 = *(v81 + 24);
  v68 = *(v81 + 32);
  v103 = a11;
  LODWORD(v111) = v68;
  LOBYTE(v99) = v68;
  strcpy(&v107, "BIAPayload.id");
  HIWORD(v107) = -4864;
  v108 = 0xD00000000000001CLL;
  v109 = 0x800000021478A360;

  sub_213FDC9D0(v66, v67);
  v69 = v65(&v103, &v99, &v107);
  if ((v69 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    strcpy(v77, "BIAPayload.id");
    *(v77 + 7) = -4864;
    *(v77 + 2) = 0xD00000000000001CLL;
    *(v77 + 3) = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a10, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v91, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(a3, &qword_27C907C00, &unk_2146F4D60);
    v78 = *(v81 + 8);
    v79 = *(v81 + 16);
    v80 = *(v81 + 24);

    sub_213FDC6D0(v79, v80);
    *v81 = v65;
    *(v81 + 8) = v64;
    *(v81 + 16) = v66;
    *(v81 + 24) = v67;
    *(v81 + 32) = v111;
    return sub_21432887C(a9, type metadata accessor for BIAPayload);
  }

  sub_213FDC6D0(v66, v67);

  sub_213FB2DF4(a10, &qword_27C907C08, &qword_21473BF00);
  sub_213FB2DF4(v91, &qword_27C907C00, &unk_2146F4D60);
  sub_213FB2DF4(a3, &qword_27C907C00, &unk_2146F4D60);
  v74 = *(v81 + 8);
  v75 = *(v81 + 16);
  v76 = *(v81 + 24);

  result = sub_213FDC6D0(v75, v76);
  *v81 = v65;
  *(v81 + 8) = v64;
  *(v81 + 16) = a11;
  *(v81 + 32) = v111;
  return result;
}

uint64_t sub_21416FD98()
{
  v1 = *v0;
  v2 = 0x636E657265666572;
  v3 = 25705;
  if (v1 != 6)
  {
    v3 = 0x4379616C70736964;
  }

  v4 = 0x656C746974627573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1869768040;
  if (v1 != 2)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = 1852793705;
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

uint64_t sub_21416FE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436B5FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21416FEB4(uint64_t a1)
{
  v2 = sub_2142F7DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21416FEF0(uint64_t a1)
{
  v2 = sub_2142F7DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BIAPayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C08, &qword_21473BF00);
  v3 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v5 = &v119 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C10, &qword_2146F4D70);
  v136 = *(v6 - 8);
  v137 = v6;
  v7 = *(v136 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v119 - v8;
  v10 = type metadata accessor for BIAPayload(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7DF8();
  v15 = v167;
  sub_2146DAA08();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v132 = v10;
  v167 = v5;
  v133 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v165[0] = 0;
  v16 = sub_2142E12FC();
  sub_2146DA1C8();
  v130 = v16;
  v131 = a1;
  v129 = v166[0];
  v17 = v166[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C00, &unk_2146F4D60);
  v165[0] = 1;
  sub_2142F7E4C();
  v18 = v9;
  sub_2146DA1C8();
  v128 = v17;
  LOBYTE(v159) = 2;
  sub_2146DA1C8();
  LOBYTE(v152) = 3;
  sub_2146DA1C8();
  v20 = v159;
  LOBYTE(v152) = 4;
  sub_2146DA1C8();
  v127 = v20;
  v21 = v159;
  LOBYTE(v159) = 5;
  sub_2142F7F24();
  v22 = v167;
  sub_2146DA1C8();
  LOBYTE(v152) = 6;
  sub_2146DA1C8();
  v130 = v21;
  v23 = *(&v159 + 1);
  v126 = v159;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C40, &qword_2146F4D78);
  v158 = 7;
  sub_2142F7FD8();
  sub_2146DA1C8();
  v135 = 0;
  v124 = v23;
  v125 = *(&v21 + 1);
  v123 = v18;
  v154 = v161;
  v155 = v162;
  v156 = v163;
  v157 = v164;
  v152 = v159;
  v153 = v160;
  v24 = v133;
  sub_213FB2E54(v166, (v133 + 5), &qword_27C907C00, &unk_2146F4D60);
  sub_213FB2E54(v165, (v24 + 60), &qword_27C907C00, &unk_2146F4D60);
  v25 = v132;
  sub_213FB2E54(v22, v24 + v132[9], &qword_27C907C08, &qword_21473BF00);
  sub_214409FCC(&v148);
  v26 = v149;
  v122 = v150;
  LODWORD(v121) = v151;
  sub_21440A3C0(&v144);
  v27 = v145;
  v28 = v146;
  LODWORD(v120) = v147;
  sub_21440A7B4(&v140);
  v29 = v141;
  v30 = v142;
  v31 = v143;
  sub_21440ABA8(v138);
  v32 = v139;
  *v24 = v148;
  v33 = v122;
  v24[2] = v26;
  v24[3] = v33;
  *(v24 + 32) = v121;
  *(v24 + 115) = v144;
  v24[117] = v27;
  v24[118] = v28;
  *(v24 + 952) = v120;
  *(v24 + 60) = v140;
  v24[122] = v29;
  v24[123] = v30;
  *(v24 + 992) = v31;
  v34 = v24 + v25[10];
  v35 = v138[1];
  *v34 = v138[0];
  *(v34 + 1) = v35;
  v121 = v34;
  v34[32] = v32;
  v36 = v24 + v25[11];
  v37 = v155;
  *(v36 + 2) = v154;
  *(v36 + 3) = v37;
  *(v36 + 4) = v156;
  v36[80] = v157;
  v38 = v153;
  *v36 = v152;
  *(v36 + 1) = v38;
  v40 = *v24;
  v39 = v24[1];
  v41 = v24[2];
  v42 = v24[3];
  LODWORD(v34) = *(v24 + 32);
  *&v144 = v129;
  *(&v144 + 1) = v128;
  LODWORD(v132) = v34;
  LOBYTE(v140) = v34;
  *&v148 = 0xD000000000000016;
  *(&v148 + 1) = 0x800000021478EEE0;
  v149 = 0xD00000000000001CLL;
  v150 = 0x800000021478A360;

  v43 = v41;
  sub_213FDC9D0(v41, v42);
  v44 = v135;
  v122 = v40;
  v45 = v40(&v144, &v140, &v148);
  v135 = v44;
  if (v44)
  {

LABEL_10:

    sub_213FB2DF4(v167, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v165, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v166, &qword_27C907C00, &unk_2146F4D60);
    (*(v136 + 8))(v123, v137);
    v63 = v133;
    v64 = v133[1];
    v65 = v133[2];
    v66 = v133[3];

    sub_213FDC6D0(v65, v66);
    *v63 = v122;
    v63[1] = v39;
    v67 = v63;
    v63[2] = v43;
    v63[3] = v42;
    *(v63 + 32) = v132;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v131);
    return sub_21432887C(v67, type metadata accessor for BIAPayload);
  }

  v120 = 0x800000021478A360;
  if ((v45 & 1) == 0)
  {
    sub_214031C4C();
    v61 = swift_allocError();
    *v62 = 0xD000000000000016;
    v62[1] = 0x800000021478EEE0;
    v62[2] = 0xD00000000000001CLL;
    v62[3] = v120;
    v135 = v61;
    swift_willThrow();
    goto LABEL_10;
  }

  sub_213FDC6D0(v43, v42);
  v46 = v120;

  v47 = v133;
  v48 = v133[1];
  v49 = v133[2];
  v50 = v133[3];

  sub_213FDC6D0(v49, v50);
  *v47 = v122;
  v47[1] = v39;
  v51 = v128;
  v47[2] = v129;
  v47[3] = v51;
  *(v47 + 32) = v132;
  v52 = v47[115];
  v53 = v47[116];
  v54 = v47[117];
  v55 = v47[118];
  v56 = *(v47 + 952);
  v144 = v127;
  v57 = v56;
  LOBYTE(v140) = v56;
  *&v148 = 0xD000000000000010;
  *(&v148 + 1) = 0x800000021478EF00;
  v149 = 0xD00000000000001CLL;
  v150 = v46;

  v58 = v55;
  sub_213FDC9D0(v54, v55);
  v59 = v135;
  v60 = v52(&v144, &v140, &v148);
  v135 = v59;
  if (v59)
  {

LABEL_16:

    sub_213FB2DF4(v167, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v165, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v166, &qword_27C907C00, &unk_2146F4D60);
    (*(v136 + 8))(v123, v137);
    v85 = v133;
    v86 = v133[116];
    v87 = v133[117];
    v88 = v133[118];

    sub_213FDC6D0(v87, v88);
    v85[115] = v52;
    v85[116] = v53;
    v67 = v85;
    v85[117] = v54;
    v85[118] = v58;
    *(v85 + 952) = v57;
    goto LABEL_11;
  }

  if ((v60 & 1) == 0)
  {
    sub_214031C4C();
    v82 = swift_allocError();
    *v83 = 0xD000000000000010;
    v83[1] = 0x800000021478EF00;
    v84 = v120;
    v83[2] = 0xD00000000000001CLL;
    v83[3] = v84;
    v135 = v82;
    swift_willThrow();
    goto LABEL_16;
  }

  sub_213FDC6D0(v54, v58);
  v68 = v120;

  v69 = v133;
  v70 = v133[116];
  v71 = v133[117];
  v72 = v133[118];

  sub_213FDC6D0(v71, v72);
  v69[115] = v52;
  v69[116] = v53;
  v73 = *(&v127 + 1);
  v69[117] = v127;
  v69[118] = v73;
  *(v69 + 952) = v57;
  v74 = v69[120];
  v75 = v69[121];
  v76 = v69[122];
  v77 = v69[123];
  v78 = *(v69 + 992);
  *&v144 = v130;
  *(&v144 + 1) = v125;
  LODWORD(v132) = v78;
  LOBYTE(v140) = v78;
  *&v148 = 0xD000000000000013;
  *(&v148 + 1) = 0x800000021478EF20;
  v149 = 0xD00000000000001CLL;
  v150 = v68;

  v79 = v77;
  sub_213FDC9D0(v76, v77);
  v80 = v135;
  v81 = v74(&v144, &v140, &v148);
  v135 = v80;
  if (v80)
  {

LABEL_21:

    sub_213FB2DF4(v167, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v165, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v166, &qword_27C907C00, &unk_2146F4D60);
    (*(v136 + 8))(v123, v137);
    v103 = v133;
    v104 = v133[121];
    v105 = v133[122];
    v106 = v133[123];

    sub_213FDC6D0(v105, v106);
    v103[120] = v74;
    v103[121] = v75;
    v67 = v103;
    v103[122] = v76;
    v103[123] = v79;
    *(v103 + 992) = v132;
    goto LABEL_11;
  }

  if ((v81 & 1) == 0)
  {
    sub_214031C4C();
    v101 = swift_allocError();
    *v102 = 0xD000000000000013;
    v102[1] = 0x800000021478EF20;
    v102[2] = 0xD00000000000001CLL;
    v102[3] = v120;
    v135 = v101;
    swift_willThrow();
    goto LABEL_21;
  }

  sub_213FDC6D0(v76, v79);
  v89 = v120;

  v90 = v133;
  v91 = v133[121];
  v92 = v133[122];
  v93 = v133[123];

  sub_213FDC6D0(v92, v93);
  v90[120] = v74;
  v90[121] = v75;
  v90[122] = v130;
  v90[123] = v125;
  *(v90 + 992) = v132;
  v95 = *v121;
  v94 = *(v121 + 1);
  v96 = *(v121 + 2);
  v97 = *(v121 + 3);
  v98 = v121[32];
  *&v144 = v126;
  *(&v144 + 1) = v124;
  LODWORD(v130) = v98;
  LOBYTE(v140) = v98;
  strcpy(&v148, "BIAPayload.id");
  HIWORD(v148) = -4864;
  v149 = 0xD00000000000001CLL;
  v150 = v89;

  sub_213FDC9D0(v96, v97);
  v99 = v135;
  v132 = v95;
  v100 = (v95)(&v144, &v140, &v148);
  v135 = v99;
  if (v99)
  {

LABEL_25:

    sub_213FB2DF4(v167, &qword_27C907C08, &qword_21473BF00);
    sub_213FB2DF4(v165, &qword_27C907C00, &unk_2146F4D60);
    sub_213FB2DF4(v166, &qword_27C907C00, &unk_2146F4D60);
    (*(v136 + 8))(v123, v137);
    v115 = v121;
    v116 = *(v121 + 1);
    v117 = *(v121 + 2);
    v118 = *(v121 + 3);

    sub_213FDC6D0(v117, v118);
    *v115 = v132;
    *(v115 + 1) = v94;
    *(v115 + 2) = v96;
    *(v115 + 3) = v97;
    v115[32] = v130;
    v67 = v133;
    goto LABEL_11;
  }

  if ((v100 & 1) == 0)
  {
    sub_214031C4C();
    v113 = swift_allocError();
    strcpy(v114, "BIAPayload.id");
    *(v114 + 7) = -4864;
    *(v114 + 2) = 0xD00000000000001CLL;
    *(v114 + 3) = v120;
    v135 = v113;
    swift_willThrow();
    goto LABEL_25;
  }

  sub_213FDC6D0(v96, v97);

  sub_213FB2DF4(v167, &qword_27C907C08, &qword_21473BF00);
  sub_213FB2DF4(v165, &qword_27C907C00, &unk_2146F4D60);
  sub_213FB2DF4(v166, &qword_27C907C00, &unk_2146F4D60);
  (*(v136 + 8))(v123, v137);
  v107 = v121;
  v108 = *(v121 + 1);
  v109 = *(v121 + 2);
  v110 = *(v121 + 3);

  sub_213FDC6D0(v109, v110);
  v111 = v133;
  *v107 = v132;
  *(v107 + 1) = v94;
  v112 = v124;
  *(v107 + 2) = v126;
  *(v107 + 3) = v112;
  v107[32] = v130;
  sub_214328704(v111, v134, type metadata accessor for BIAPayload);
  return __swift_destroy_boxed_opaque_existential_1(v131);
}

uint64_t BIAPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C58, &unk_2146F4D80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F7DF8();
  sub_2146DAA28();
  v11 = v3[3];
  if (v11 == 1)
  {
    goto LABEL_8;
  }

  *&v36[0] = v3[2];
  *(&v36[0] + 1) = v11;
  LOBYTE(v30) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v26 = v12;
  v27 = v6;
  LOBYTE(v36[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C00, &unk_2146F4D60);
  sub_2142F80B0();
  sub_2146DA388();
  LOBYTE(v36[0]) = 2;
  sub_2146DA388();
  v14 = v3[118];
  if (v14 == 1)
  {
    goto LABEL_8;
  }

  *&v36[0] = v3[117];
  *(&v36[0] + 1) = v14;
  LOBYTE(v30) = 3;
  sub_2146DA388();
  v15 = v3[123];
  if (v15 == 1)
  {
    goto LABEL_8;
  }

  *&v36[0] = v3[122];
  *(&v36[0] + 1) = v15;
  LOBYTE(v30) = 4;
  sub_2146DA388();
  v16 = type metadata accessor for BIAPayload(0);
  v17 = v16[9];
  LOBYTE(v36[0]) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C08, &qword_21473BF00);
  sub_2142F8188();
  sub_2146DA388();
  v18 = v3 + v16[10];
  v19 = *(v18 + 3);
  if (v19 == 1)
  {
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v41 = *(v18 + 2);
    v42 = v19;
    v44 = 6;
    sub_2146DA388();
    v20 = v3 + v16[11];
    v21 = *(v20 + 3);
    v22 = *(v20 + 1);
    v37 = *(v20 + 2);
    v38 = v21;
    v23 = *(v20 + 3);
    v39 = *(v20 + 4);
    v24 = *(v20 + 1);
    v36[0] = *v20;
    v36[1] = v24;
    v32 = v37;
    v33 = v23;
    v34 = *(v20 + 4);
    v40 = v20[80];
    v35 = v20[80];
    v30 = v36[0];
    v31 = v22;
    v43 = 7;
    sub_213FB2E54(v36, v28, &qword_27C907C40, &qword_2146F4D78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C40, &qword_2146F4D78);
    sub_2142F823C();
    sub_2146DA388();
    v25 = (v27 + 8);
    v28[2] = v32;
    v28[3] = v33;
    v28[4] = v34;
    v29 = v35;
    v28[0] = v30;
    v28[1] = v31;
    sub_213FB2DF4(v28, &qword_27C907C40, &qword_2146F4D78);
    return (*v25)(v9, v5);
  }

  return result;
}

uint64_t sub_21417140C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1, char *a2)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v24[-1] - v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v9 = sub_214069764(&unk_282654B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v10 + 16) = sub_21409A858;
  *(v10 + 24) = v11;
  *(inited + 32) = v10;
  sub_214042F80(inited, a2);
  sub_213FB2E54(a2, v7, &unk_27C9131D0, &qword_2146EAA70);
  v12 = *v7;
  v13 = v7[1];
  v25 = *(v7 + *(v4 + 32));
  v24[0] = 0x752E4C5255414942;
  v24[1] = 0xEA00000000006C72;
  v24[2] = 0xD00000000000001CLL;
  v24[3] = 0x800000021478A360;
  v14 = v23;
  v15 = v12(a1, &v25, v24);
  if (v14)
  {
    v16 = sub_2146D8958();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  else
  {
    if (v15)
    {

      v17 = *(v4 + 28);
      sub_213FB2DF4(v7 + v17, &unk_27C9131A0, &unk_2146E9D10);
      v18 = sub_2146D8958();
      v19 = *(v18 - 8);
      (*(v19 + 32))(v7 + v17, a1, v18);
      (*(v19 + 56))(v7 + v17, 0, 1, v18);
      return sub_21402EDB8(v7, a2, &unk_27C9131D0, &qword_2146EAA70);
    }

    sub_214031C4C();
    swift_allocError();
    *v21 = 0x752E4C5255414942;
    v21[1] = 0xEA00000000006C72;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
    v22 = sub_2146D8958();
    (*(*(v22 - 8) + 8))(a1, v22);
  }

  sub_21402EDB8(v7, a2, &unk_27C9131D0, &qword_2146EAA70);
  return sub_21432887C(a2, type metadata accessor for BIAURL);
}

uint64_t sub_214171790(uint64_t a1)
{
  v2 = sub_2142F8314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141717CC(uint64_t a1)
{
  v2 = sub_2142F8314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214171808@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v3 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v5 = &v38 - v4;
  v6 = sub_2146D8958();
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C90, &qword_2146F4D90);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = type metadata accessor for BIAURL(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v19 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2142F8314();
  v20 = v47;
  sub_2146DAA08();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v42 = v17;
  v47 = v5;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260]);
  sub_2146DA1C8();
  v21 = v10;
  v40 = v6;
  v41 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v24 = sub_214069764(&unk_282654448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v25 = swift_allocObject();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v25 + 16) = sub_21438F524;
  *(v25 + 24) = v26;
  *(inited + 32) = v25;
  v27 = v42;
  sub_214042F80(inited, v42);
  v28 = v47;
  sub_213FB2E54(v27, v47, &unk_27C9131D0, &qword_2146EAA70);
  v29 = v44;
  v30 = *v28;
  v31 = v28[1];
  v50 = *(v28 + *(v44 + 32));
  v49[0] = 0x752E4C5255414942;
  v49[1] = 0xEA00000000006C72;
  v49[2] = 0xD00000000000001CLL;
  v49[3] = 0x800000021478A360;
  v32 = v30(v9, &v50, v49);
  v39 = 0x800000021478A360;
  v33 = v45;
  v34 = v46;
  if (v32)
  {

    (*(v34 + 8))(v41, v21);
    v35 = *(v29 + 28);
    sub_213FB2DF4(v28 + v35, &unk_27C9131A0, &unk_2146E9D10);
    v36 = v40;
    (*(v33 + 32))(v28 + v35, v9, v40);
    (*(v33 + 56))(v28 + v35, 0, 1, v36);
    sub_21402EDB8(v28, v27, &unk_27C9131D0, &qword_2146EAA70);
    sub_214328704(v27, v43, type metadata accessor for BIAURL);
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  sub_214031C4C();
  swift_allocError();
  *v37 = 0x752E4C5255414942;
  v37[1] = 0xEA00000000006C72;
  v37[2] = 0xD00000000000001CLL;
  v37[3] = v39;
  swift_willThrow();
  (*(v33 + 8))(v9, v40);
  (*(v34 + 8))(v41, v21);
  sub_21402EDB8(v28, v27, &unk_27C9131D0, &qword_2146EAA70);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return sub_21432887C(v27, type metadata accessor for BIAURL);
}

uint64_t sub_214171DE8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_2146D8958();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907CA0, &qword_2146F4D98);
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v20);
  v14 = &v19 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F8314();
  sub_2146DAA28();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v19 + *(v16 + 28), v5, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_213FB2DF4(v5, &unk_27C9131A0, &unk_2146E9D10);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260]);
    v17 = v20;
    sub_2146DA388();
    (*(v7 + 8))(v10, v6);
    return (*(v11 + 8))(v14, v17);
  }

  return result;
}

uint64_t sub_21417214C@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, unint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v45 = *a3;
  sub_21440B6F8(&v52);
  v11 = v52;
  v10 = v53;
  v12 = v55;
  v36 = v54;
  v13 = v56;
  sub_21440BA6C(&v73);
  v48 = v73;
  v80 = v74;
  v37 = v75;
  v51 = v76;
  v39 = v77;
  sub_21440BDE0(v71);
  v44 = v71[0];
  v38 = v71[2];
  v49 = v71[3];
  v50 = v71[1];
  v42 = v13;
  v43 = v72;
  v73 = a1;
  v74 = a2;
  LOBYTE(v71[0]) = v13;
  v52 = 0xD000000000000019;
  v53 = 0x800000021478EF40;
  v54 = 0xD00000000000001CLL;
  v55 = 0x800000021478A360;

  v14 = v40;
  v41 = v11;
  v15 = v11(&v73, v71, &v52);
  if (v14)
  {

    v16 = v44;
    v17 = v10;
LABEL_6:

    v24 = v36;
    v23 = v37;
    v21 = v43;
    v18 = v39;
    v19 = v48;
    v25 = v51;
LABEL_7:
    v52 = v41;
    v53 = v17;
    v54 = v24;
    v55 = v12;
    v56 = v42;
    v57 = v45;
    v58 = *&v78[7];
    v59 = v79;
    v60 = v19;
    v61 = v80;
    v62 = v23;
    v63 = v25;
    v64 = v18;
    *v65 = *v78;
    *&v65[3] = *&v78[3];
    v66 = v16;
    v67 = v50;
    v68 = v38;
    v69 = v49;
    v70 = v21;
    return sub_2142F8368(&v52);
  }

  v31 = a1;
  v32 = a2;
  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000019;
    v22[1] = 0x800000021478EF40;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();

    v16 = v44;
    v17 = v10;
    goto LABEL_6;
  }

  v17 = v10;

  v73 = a4;
  v74 = a5;
  v18 = v39;
  LOBYTE(v71[0]) = v39;
  v52 = 0xD00000000000001CLL;
  v53 = 0x800000021478EF60;
  v54 = 0xD00000000000001CLL;
  v55 = 0x800000021478A360;

  v19 = v48;
  v20 = v48(&v73, v71, &v52);
  v21 = v43;
  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000001CLL;
    v28[1] = 0x800000021478EF60;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();

    v16 = v44;
    v12 = v32;
    v25 = v51;

    v24 = v31;
    v23 = v37;
    goto LABEL_7;
  }

  v73 = a6;
  v74 = a7;
  LOBYTE(v71[0]) = v43;
  v52 = 0xD00000000000001FLL;
  v53 = 0x800000021478EF80;
  v54 = 0xD00000000000001CLL;
  v55 = 0x800000021478A360;

  v27 = v44(&v73, v71, &v52);
  v16 = v44;
  v19 = v48;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD00000000000001FLL;
    v30[1] = 0x800000021478EF80;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    v23 = a4;
    v25 = a5;
    v24 = v31;
    v12 = v32;
    goto LABEL_7;
  }

  result = swift_bridgeObjectRelease_n();
  *a8 = v41;
  *(a8 + 8) = v10;
  *(a8 + 16) = v31;
  *(a8 + 24) = v32;
  *(a8 + 32) = v42;
  *(a8 + 33) = v45;
  v29 = v80;
  *(a8 + 40) = v48;
  *(a8 + 48) = v29;
  *(a8 + 56) = a4;
  *(a8 + 64) = a5;
  *(a8 + 72) = v39;
  *(a8 + 80) = v44;
  *(a8 + 88) = v50;
  *(a8 + 96) = a6;
  *(a8 + 104) = a7;
  *(a8 + 112) = v43;
  return result;
}

uint64_t sub_2141726D4()
{
  v1 = 25705;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x656C746974627573;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_214172738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436B898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214172760(uint64_t a1)
{
  v2 = sub_2142F83BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417279C(uint64_t a1)
{
  v2 = sub_2142F83BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141727D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907CA8, &qword_2146F4DA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v53 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v113 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142F83BC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v113);
  }

  v12 = v6;
  LOBYTE(v85) = 0;
  v13 = sub_2146DA168();
  v15 = v14;
  v76 = v13;
  LOBYTE(v77) = 1;
  sub_2142F8410();
  sub_2146DA1C8();
  v16 = v85;
  LOBYTE(v85) = 2;
  v17 = sub_2146DA168();
  v20 = v19;
  *(&v72 + 1) = v17;
  v75 = v16;
  v109 = 3;
  v54 = sub_2146DA168();
  v59 = v9;
  v63 = v21;
  v61 = v20;
  sub_21440B6F8(&v85);
  v22 = v86;
  v55 = v87;
  v73 = v88;
  v74 = v85;
  v23 = v89;
  sub_21440BA6C(&v77);
  *&v72 = *(&v77 + 1);
  v69 = v77;
  v67 = *(&v78 + 1);
  v56 = v78;
  v70 = v79;
  sub_21440BDE0(&v104);
  v66 = v105;
  v57 = v106;
  v64 = v104;
  v65 = v107;
  v62 = v108;
  *&v77 = v76;
  *(&v77 + 1) = v15;
  v60 = v23;
  LOBYTE(v104) = v23;
  v85 = 0xD000000000000019;
  v86 = 0x800000021478EF40;
  v58 = 0x800000021478EF40;
  v87 = 0xD00000000000001CLL;
  v88 = 0x800000021478A360;
  v71 = 0x800000021478A360;

  v68 = v22;
  v24 = v74(&v77, &v104, &v85);
  v25 = v58;
  v26 = v61;
  if (v24)
  {
    v27 = v71;

    *&v77 = *(&v72 + 1);
    *(&v77 + 1) = v26;
    LOBYTE(v104) = v70;
    v85 = 0xD00000000000001CLL;
    v86 = 0x800000021478EF60;
    v87 = 0xD00000000000001CLL;
    v88 = v27;

    v28 = v69(&v77, &v104, &v85);
    if ((v28 & 1) == 0)
    {
      v29 = v5;
      sub_214031C4C();
      swift_allocError();
      *v38 = 0xD00000000000001CLL;
      v38[1] = 0x800000021478EF60;
      v38[2] = 0xD00000000000001CLL;
      v38[3] = v71;
      swift_willThrow();

      v33 = v67;
      v32 = v68;
      v71 = v72;
      v35 = v59;
      v34 = v56;
      goto LABEL_8;
    }

    v36 = v71;

    v104 = v54;
    v105 = v63;
    LOBYTE(v77) = v62;
    v85 = 0xD00000000000001FLL;
    v86 = 0x800000021478EF80;
    v73 = 0x800000021478EF80;
    v87 = 0xD00000000000001CLL;
    v88 = v36;

    v37 = v64(&v104, &v77, &v85);
    v39 = v73;
    if (v37)
    {

      (*(v12 + 8))(v59, v5);

      v40 = v66;

      *&v77 = v74;
      *(&v77 + 1) = v68;
      v41 = v76;
      *&v78 = v76;
      *(&v78 + 1) = v15;
      LOBYTE(v79) = v60;
      BYTE1(v79) = v75;
      *(&v79 + 2) = v111;
      WORD3(v79) = v112;
      v42 = *(&v72 + 1);
      *(&v79 + 1) = v69;
      v80 = v72;
      *&v81 = v61;
      BYTE8(v81) = v70;
      *(&v81 + 9) = *v110;
      HIDWORD(v81) = *&v110[3];
      *&v82 = v64;
      *(&v82 + 1) = v40;
      v43 = v54;
      *&v83 = v54;
      *(&v83 + 1) = v63;
      v73 = v15;
      v44 = v62;
      v84 = v62;
      v45 = v81;
      v46 = v82;
      v47 = v83;
      *(a2 + 112) = v62;
      *(a2 + 80) = v46;
      *(a2 + 96) = v47;
      v48 = v77;
      v49 = v78;
      v50 = v79;
      *(a2 + 48) = v80;
      *(a2 + 64) = v45;
      *(a2 + 16) = v49;
      *(a2 + 32) = v50;
      *a2 = v48;
      sub_2142F8464(&v77, &v85);
      __swift_destroy_boxed_opaque_existential_1(v113);
      v85 = v74;
      v86 = v68;
      v87 = v41;
      v88 = v73;
      v89 = v60;
      v90 = v75;
      v91 = v111;
      v92 = v112;
      v93 = v69;
      v94 = v72;
      v95 = v42;
      v96 = v61;
      v97 = v70;
      *v98 = *v110;
      *&v98[3] = *&v110[3];
      v99 = v64;
      v100 = v40;
      v101 = v43;
      v102 = v63;
      v103 = v44;
      return sub_2142F8368(&v85);
    }

    v29 = v5;
    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD00000000000001FLL;
    v51[1] = v39;
    v52 = v71;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = v52;
    swift_willThrow();

    v33 = v61;
    v71 = v66;
    v34 = *(&v72 + 1);
    v32 = v68;
  }

  else
  {
    v29 = v5;
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD000000000000019;
    v30[1] = v25;
    v31 = v71;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = v31;
    swift_willThrow();

    v15 = v73;
    v33 = v67;
    v32 = v68;
    v71 = v68;
    v34 = v56;
    v76 = v55;
  }

  v35 = v59;
LABEL_8:
  (*(v12 + 8))(v35, v29);

  __swift_destroy_boxed_opaque_existential_1(v113);
  v85 = v74;
  v86 = v32;
  v87 = v76;
  v88 = v15;
  v89 = v60;
  v90 = v75;
  v91 = v111;
  v92 = v112;
  v93 = v69;
  v94 = v72;
  v95 = v34;
  v96 = v33;
  v97 = v70;
  *v98 = *v110;
  *&v98[3] = *&v110[3];
  v99 = v64;
  v100 = v66;
  v101 = v57;
  v102 = v65;
  v103 = v62;
  return sub_2142F8368(&v85);
}

uint64_t sub_214173070(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907CC0, &qword_2146F4DA8);
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
  sub_2142F83BC();
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
    sub_2142F84C0();
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

uint64_t sub_214173368@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = *a1;
  sub_21440C4C0(&v29);
  v9 = v29;
  v10 = v30;
  v11 = v32;
  v22 = v31;
  v12 = v33;
  sub_21440C834(&v42);
  v23 = v42;
  v21 = v44;
  v27 = v45;
  v28 = v43;
  v49 = v12;
  v50 = v46;
  v42 = a2;
  v43 = a3;
  v41 = v12;
  v29 = 0xD000000000000021;
  v30 = 0x800000021478EFA0;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  v25 = v9;
  v13 = v9(&v42, &v41, &v29);
  if (v6)
  {

    a2 = v22;
    v14 = v23;
  }

  else if (v13)
  {

    v42 = a4;
    v43 = a5;
    v41 = v50;
    v29 = 0xD000000000000024;
    v30 = 0x800000021478EFD0;
    v31 = 0xD00000000000001CLL;
    v32 = 0x800000021478A360;

    v14 = v23;
    v15 = v23(&v42, &v41, &v29);
    if (v15)
    {

      result = swift_bridgeObjectRelease_n();
      *a6 = v24;
      *(a6 + 8) = v25;
      *(a6 + 16) = v10;
      *(a6 + 24) = a2;
      *(a6 + 32) = a3;
      *(a6 + 40) = v49;
      *(a6 + 48) = v23;
      *(a6 + 56) = v28;
      *(a6 + 64) = a4;
      *(a6 + 72) = a5;
      *(a6 + 80) = v50;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD000000000000024;
    v18[1] = 0x800000021478EFD0;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    v11 = a3;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD000000000000021;
    v16[1] = 0x800000021478EFA0;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();

    a2 = v22;
    v14 = v23;
  }

  LOBYTE(v29) = v24;
  *(&v29 + 1) = v48[0];
  HIDWORD(v29) = *(v48 + 3);
  v30 = v25;
  v31 = v10;
  v32 = a2;
  v33 = v11;
  v34 = v49;
  *v35 = *v47;
  *&v35[3] = *&v47[3];
  v36 = v14;
  v37 = v28;
  v38 = v21;
  v39 = v27;
  v40 = v50;
  return sub_2142F8514(&v29);
}

uint64_t sub_21417371C()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_21417376C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436B9F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214173794(uint64_t a1)
{
  v2 = sub_2142F8568();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141737D0(uint64_t a1)
{
  v2 = sub_2142F8568();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21417380C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907CD0, &qword_2146F4DB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F8568();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v50) = 0;
  sub_2142F8410();
  sub_2146DA1C8();
  v11 = v57;
  LOBYTE(v57) = 1;
  v12 = sub_2146DA168();
  v72 = v14;
  v15 = v12;
  v69 = 2;
  v36 = sub_2146DA168();
  v44 = v16;
  v40 = v11;
  sub_21440C4C0(&v57);
  v17 = v58;
  v48 = v57;
  v37 = v59;
  v49 = v60;
  v18 = v61;
  sub_21440C834(&v50);
  v46 = *(&v50 + 1);
  v42 = v50;
  v45 = *(&v51 + 1);
  v38 = v51;
  v43 = v52;
  v47 = v15;
  *&v50 = v15;
  *(&v50 + 1) = v72;
  v39 = v18;
  LOBYTE(v56[0]) = v18;
  v57 = 0xD000000000000021;
  v58 = 0x800000021478EFA0;
  v59 = 0xD00000000000001CLL;
  v60 = 0x800000021478A360;
  v41 = 0x800000021478A360;

  v19 = v48(&v50, v56, &v57);
  v35 = v17;
  if (v19)
  {
    v20 = v41;

    v56[0] = v36;
    v56[1] = v44;
    LOBYTE(v50) = v43;
    v57 = 0xD000000000000024;
    v58 = 0x800000021478EFD0;
    v59 = 0xD00000000000001CLL;
    v60 = v20;

    v21 = v42(v56, &v50, &v57);
    if (v21)
    {

      (*(v6 + 8))(v9, v5);

      v25 = v46;

      LOBYTE(v50) = v40;
      v26 = v48;
      *(&v50 + 1) = v48;
      *&v51 = v35;
      v27 = v47;
      *(&v51 + 1) = v47;
      *&v52 = v72;
      v28 = v39;
      BYTE8(v52) = v39;
      v29 = v42;
      *&v53 = v42;
      *(&v53 + 1) = v25;
      *&v54 = v36;
      *(&v54 + 1) = v44;
      v30 = v43;
      v55 = v43;
      *(a2 + 80) = v43;
      v31 = v53;
      *(a2 + 32) = v52;
      *(a2 + 48) = v31;
      *(a2 + 64) = v54;
      v32 = v51;
      *a2 = v50;
      *(a2 + 16) = v32;
      sub_2142F85BC(&v50, &v57);
      __swift_destroy_boxed_opaque_existential_1(a1);
      LOBYTE(v57) = v40;
      v58 = v26;
      v59 = v35;
      v60 = v27;
      v61 = v72;
      v62 = v28;
      v64 = v29;
      v65 = v25;
      v66 = v36;
      v67 = v44;
      v68 = v30;
      return sub_2142F8514(&v57);
    }

    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD000000000000024;
    v33[1] = 0x800000021478EFD0;
    v34 = v41;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = v34;
    swift_willThrow();

    v49 = v72;
    v24 = v35;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000021;
    v22[1] = 0x800000021478EFA0;
    v23 = v41;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = v23;
    swift_willThrow();

    v24 = v35;
    v47 = v37;
  }

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v57) = v40;
  *(&v57 + 1) = v71[0];
  HIDWORD(v57) = *(v71 + 3);
  v58 = v48;
  v59 = v24;
  v60 = v47;
  v61 = v49;
  v62 = v39;
  *v63 = *v70;
  *&v63[3] = *&v70[3];
  v64 = v42;
  v65 = v46;
  v66 = v38;
  v67 = v45;
  v68 = v43;
  return sub_2142F8514(&v57);
}

uint64_t sub_214173F78(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907CE0, &qword_2146F4DB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 3);
  v10 = *(v1 + 4);
  v11 = *(v1 + 9);
  v16[1] = *(v1 + 8);
  v16[2] = v9;
  v16[0] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F8568();
  sub_2146DAA28();
  v20 = v8;
  v19 = 0;
  sub_2142F84C0();
  v13 = v16[3];
  sub_2146DA388();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v15 = v16[0];
  if (v10 && (v18 = 1, , sub_2146DA328(), , v15))
  {
    v17 = 2;

    sub_2146DA328();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214174224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = type metadata accessor for BIALabeledUserAction(0);
  v40 = a5;
  sub_2143287C0(a5, a6 + *(v9 + 24), type metadata accessor for BIAUserAction);
  sub_21440CDF0(&v43);
  v11 = v43;
  v10 = v44;
  v12 = v45;
  v13 = v46;
  v14 = v47;
  sub_21440D164(v41);
  v15 = v41[1];
  *(a6 + 40) = v41[0];
  v16 = v42;
  *a6 = v11;
  *(a6 + 8) = v10;
  v35 = v12;
  *(a6 + 16) = v12;
  *(a6 + 24) = v13;
  *(a6 + 32) = v14;
  *(a6 + 56) = v15;
  *(a6 + 72) = v16;
  *&v41[0] = a1;
  *(&v41[0] + 1) = a2;
  v48 = v14;
  v43 = 0xD00000000000001ALL;
  v44 = 0x800000021478F000;
  v45 = 0xD00000000000001CLL;
  v46 = 0x800000021478A360;

  v17 = v11(v41, &v48, &v43);
  if (v38)
  {

LABEL_6:
    sub_21432887C(v40, type metadata accessor for BIAUserAction);
    v26 = *(a6 + 8);
    v27 = *(a6 + 24);

    *a6 = v11;
    *(a6 + 8) = v10;
    *(a6 + 16) = v35;
    *(a6 + 24) = v13;
    *(a6 + 32) = v14;
    return sub_21432887C(a6, type metadata accessor for BIALabeledUserAction);
  }

  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD00000000000001ALL;
    v25[1] = 0x800000021478F000;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v18 = *(a6 + 8);
  v19 = *(a6 + 24);

  *a6 = v11;
  *(a6 + 8) = v10;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = v14;
  v21 = *(a6 + 40);
  v20 = *(a6 + 48);
  v22 = *(a6 + 64);
  v37 = *(a6 + 56);
  v23 = *(a6 + 72);
  *&v41[0] = a3;
  *(&v41[0] + 1) = a4;
  v48 = v23;
  v43 = 0xD00000000000001ELL;
  v44 = 0x800000021478F020;
  v45 = 0xD00000000000001CLL;
  v46 = 0x800000021478A360;

  v24 = v21(v41, &v48, &v43);
  if ((v24 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD00000000000001ELL;
    v31[1] = 0x800000021478F020;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    sub_21432887C(v40, type metadata accessor for BIAUserAction);
    v32 = *(a6 + 48);
    v33 = *(a6 + 64);

    *(a6 + 40) = v21;
    *(a6 + 48) = v20;
    *(a6 + 56) = v37;
    *(a6 + 64) = v22;
    *(a6 + 72) = v23;
    return sub_21432887C(a6, type metadata accessor for BIALabeledUserAction);
  }

  sub_21432887C(v40, type metadata accessor for BIAUserAction);
  v29 = *(a6 + 48);
  v30 = *(a6 + 64);

  *(a6 + 40) = v21;
  *(a6 + 48) = v20;
  *(a6 + 56) = a3;
  *(a6 + 64) = a4;
  *(a6 + 72) = v23;
  return result;
}

uint64_t sub_2141745F4()
{
  v1 = 0x6D614E6567616D69;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
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

uint64_t sub_21417464C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436BB04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214174674(uint64_t a1)
{
  v2 = sub_2142F8618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141746B0(uint64_t a1)
{
  v2 = sub_2142F8618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141746EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = type metadata accessor for BIAUserAction(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907CE8, &qword_2146F4DC0);
  v84 = *(v7 - 8);
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v71 - v9;
  v11 = type metadata accessor for BIALabeledUserAction(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2142F8618();
  v17 = v85;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  v82 = v6;
  v85 = v14;
  LOBYTE(v89) = 0;
  v19 = v7;
  v18 = sub_2146DA168();
  v21 = v20;
  v22 = v18;
  LOBYTE(v89) = 1;
  v23 = sub_2146DA168();
  v25 = v24;
  v80 = v23;
  v81 = v22;
  LOBYTE(v89) = 2;
  sub_214328930(&qword_27C907CF8, type metadata accessor for BIAUserAction);
  v26 = v82;
  sub_2146DA1C8();
  v79 = v25;
  v28 = v85;
  sub_2143287C0(v26, v85 + *(v11 + 24), type metadata accessor for BIAUserAction);
  sub_21440CDF0(&v89);
  v73 = v21;
  v29 = v89;
  v30 = v90;
  v74 = v89;
  v32 = v91;
  v31 = v92;
  v33 = v93;
  sub_21440D164(v87);
  v34 = v87[1];
  *(v28 + 5) = v87[0];
  v35 = v88;
  *v28 = v29;
  v28[1] = v30;
  v72 = v32;
  v28[2] = v32;
  v28[3] = v31;
  v36 = v73;
  *(v28 + 32) = v33;
  *(v28 + 7) = v34;
  *(v28 + 72) = v35;
  *&v87[0] = v81;
  *(&v87[0] + 1) = v36;
  LODWORD(v78) = v33;
  v94 = v33;
  v89 = 0xD00000000000001ALL;
  v90 = 0x800000021478F000;
  v75 = 0x800000021478F000;
  v91 = 0xD00000000000001CLL;
  v92 = 0x800000021478A360;
  v76 = v31;

  v77 = v30;
  v37 = v74;
  v38 = v74(v87, &v94, &v89);
  v39 = v37;
  v40 = v75;
  v71 = 0x800000021478A360;
  v41 = v36;
  if (v38)
  {
    v72 = v19;
    v42 = v71;

    v43 = v85;
    v44 = v85[1];
    v45 = v85[3];

    v46 = v77;
    *v43 = v39;
    v43[1] = v46;
    v43[2] = v81;
    v43[3] = v41;
    *(v43 + 32) = v78;
    v47 = v43[5];
    v48 = v43[6];
    v49 = v43[8];
    v76 = v43[7];
    v50 = *(v43 + 72);
    v51 = v79;
    *&v87[0] = v80;
    *(&v87[0] + 1) = v79;
    LODWORD(v81) = v50;
    v94 = v50;
    v89 = 0xD00000000000001ELL;
    v90 = 0x800000021478F020;
    v91 = 0xD00000000000001CLL;
    v92 = v42;
    v77 = v49;

    v78 = v47;
    v52 = v47(v87, &v94, &v89);
    v60 = v72;
    v61 = v84;
    if (v52)
    {

      sub_21432887C(v82, type metadata accessor for BIAUserAction);
      (*(v61 + 8))(v10, v60);
      v62 = v85;
      v63 = v85[6];
      v64 = v51;
      v65 = v85[8];

      *(v62 + 40) = v78;
      *(v62 + 48) = v48;
      *(v62 + 56) = v80;
      *(v62 + 64) = v64;
      *(v62 + 72) = v81;
      sub_214328704(v62, v83, type metadata accessor for BIALabeledUserAction);
      return __swift_destroy_boxed_opaque_existential_1(v86);
    }

    sub_214031C4C();
    swift_allocError();
    *v66 = 0xD00000000000001ELL;
    v66[1] = 0x800000021478F020;
    v67 = v71;
    v66[2] = 0xD00000000000001CLL;
    v66[3] = v67;
    swift_willThrow();

    sub_21432887C(v82, type metadata accessor for BIAUserAction);
    (*(v61 + 8))(v10, v60);
    v55 = v85;
    v68 = v85[6];
    v69 = v85[8];

    *(v55 + 40) = v78;
    *(v55 + 48) = v48;
    v70 = v77;
    *(v55 + 56) = v76;
    *(v55 + 64) = v70;
    *(v55 + 72) = v81;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v53 = 0xD00000000000001ALL;
    v53[1] = v40;
    v54 = v71;
    v53[2] = 0xD00000000000001CLL;
    v53[3] = v54;
    swift_willThrow();

    sub_21432887C(v82, type metadata accessor for BIAUserAction);
    (*(v84 + 8))(v10, v19);
    v55 = v85;
    v56 = v85[1];
    v57 = v85[3];

    v58 = v77;
    *v55 = v39;
    *(v55 + 8) = v58;
    v59 = v76;
    *(v55 + 16) = v72;
    *(v55 + 24) = v59;
    *(v55 + 32) = v78;
  }

  __swift_destroy_boxed_opaque_existential_1(v86);
  return sub_21432887C(v55, type metadata accessor for BIALabeledUserAction);
}

uint64_t sub_214174E9C(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D00, &qword_2146F4DC8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F8618();
  sub_2146DAA28();
  if (v4[3])
  {
    v12 = v4[2];
    v16[15] = 0;

    sub_2146DA328();
    if (v3)
    {
      (*(v7 + 8))(v10, v6);
    }

    if (v4[8])
    {
      v13 = v4[7];
      v16[14] = 1;

      sub_2146DA328();

      v14 = *(type metadata accessor for BIALabeledUserAction(0) + 24);
      v16[13] = 2;
      type metadata accessor for BIAUserAction(0);
      sub_214328930(&qword_27C907D08, type metadata accessor for BIAUserAction);
      sub_2146DA388();
      return (*(v7 + 8))(v10, v6);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214175154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a3;
  v11 = type metadata accessor for BIABinaryChoiceButton(0);
  v25 = a4;
  sub_2143287C0(a4, a5 + *(v11 + 24), type metadata accessor for BIAUserAction);
  sub_21440D608(&v27);
  v13 = v27;
  v12 = v28;
  v14 = v29;
  v15 = v30;
  v16 = v31;
  *a5 = v27;
  *(a5 + 8) = v12;
  v24 = v14;
  *(a5 + 16) = v14;
  *(a5 + 24) = v15;
  *(a5 + 32) = v16;
  *(a5 + 33) = v10;
  v26[0] = a1;
  v26[1] = a2;
  v32 = v16;
  v33 = v16;
  v27 = 0xD00000000000001BLL;
  v28 = 0x800000021478F040;
  v29 = 0xD00000000000001CLL;
  v30 = 0x800000021478A360;

  v17 = v13(v26, &v33, &v27);
  if (v5)
  {
  }

  else
  {
    if (v17)
    {

      sub_21432887C(v25, type metadata accessor for BIAUserAction);
      v18 = *(a5 + 8);
      v19 = *(a5 + 24);

      *a5 = v13;
      *(a5 + 8) = v12;
      *(a5 + 16) = a1;
      *(a5 + 24) = a2;
      *(a5 + 32) = v32;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD00000000000001BLL;
    v21[1] = 0x800000021478F040;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21432887C(v25, type metadata accessor for BIAUserAction);
  v22 = *(a5 + 8);
  v23 = *(a5 + 24);

  *a5 = v13;
  *(a5 + 8) = v12;
  *(a5 + 16) = v24;
  *(a5 + 24) = v15;
  *(a5 + 32) = v32;
  return sub_21432887C(a5, type metadata accessor for BIABinaryChoiceButton);
}

uint64_t sub_214175398()
{
  v1 = 1701605234;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
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

uint64_t sub_2141753E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436BC1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21417540C(uint64_t a1)
{
  v2 = sub_2142F866C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214175448(uint64_t a1)
{
  v2 = sub_2142F866C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214175484@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for BIAUserAction(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D10, &unk_2146F4DD0);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v11 = type metadata accessor for BIABinaryChoiceButton(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2142F866C();
  v17 = v48;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v48 = v6;
  v45 = v14;
  LOBYTE(v51) = 0;
  v18 = sub_2146DA168();
  v20 = v19;
  v21 = v18;
  LOBYTE(v50[0]) = 1;
  sub_2142F86C0();
  sub_2146DA1C8();
  v44 = v21;
  v56 = v51;
  LOBYTE(v51) = 2;
  sub_214328930(&qword_27C907CF8, type metadata accessor for BIAUserAction);
  v22 = v48;
  sub_2146DA1C8();
  v42 = v7;
  v24 = v45;
  sub_2143287C0(v22, &v45[*(v11 + 24)], type metadata accessor for BIAUserAction);
  sub_21440D608(&v51);
  v26 = v51;
  v25 = v52;
  v27 = v53;
  v28 = v54;
  v29 = v55;
  *v24 = v51;
  *(v24 + 8) = v25;
  v41 = v27;
  *(v24 + 16) = v27;
  *(v24 + 24) = v28;
  *(v24 + 32) = v29;
  *(v24 + 33) = v56;
  v50[0] = v44;
  v50[1] = v20;
  v56 = v29;
  v57 = v29;
  v51 = 0xD00000000000001BLL;
  v52 = 0x800000021478F040;
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000021478A360;

  v43 = v26;
  v30 = v26(v50, &v57, &v51);
  v31 = v42;
  if (v30)
  {

    sub_21432887C(v48, type metadata accessor for BIAUserAction);
    (*(v47 + 8))(v10, v31);
    v32 = *(v24 + 8);
    v33 = v24;
    v34 = *(v24 + 24);

    v35 = v44;
    *v33 = v43;
    *(v33 + 8) = v25;
    *(v33 + 16) = v35;
    *(v33 + 24) = v20;
    *(v33 + 32) = v56;
    sub_214328704(v33, v46, type metadata accessor for BIABinaryChoiceButton);
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v46 = v28;
  sub_214031C4C();
  swift_allocError();
  *v36 = 0xD00000000000001BLL;
  v36[1] = 0x800000021478F040;
  v36[2] = 0xD00000000000001CLL;
  v36[3] = 0x800000021478A360;
  swift_willThrow();

  sub_21432887C(v48, type metadata accessor for BIAUserAction);
  (*(v47 + 8))(v10, v31);
  v37 = *(v24 + 8);
  v38 = v24;
  v39 = *(v24 + 24);

  *v38 = v43;
  *(v38 + 8) = v25;
  v40 = v46;
  *(v38 + 16) = v41;
  *(v38 + 24) = v40;
  *(v38 + 32) = v56;
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_21432887C(v38, type metadata accessor for BIABinaryChoiceButton);
}

uint64_t sub_2141759E8(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D28, &qword_21477C7A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F866C();
  sub_2146DAA28();
  if (*(v4 + 24))
  {
    v12 = *(v4 + 16);
    v15[15] = 0;

    sub_2146DA328();
    if (v3)
    {
      (*(v7 + 8))(v10, v6);
    }

    else
    {

      v15[14] = *(v4 + 33);
      v15[13] = 1;
      sub_2142F8714();
      sub_2146DA388();
      v14 = *(type metadata accessor for BIABinaryChoiceButton(0) + 24);
      v15[12] = 2;
      type metadata accessor for BIAUserAction(0);
      sub_214328930(&qword_27C907D08, type metadata accessor for BIAUserAction);
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

uint64_t sub_214175C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_21440D97C(&v17);
  v7 = v17;
  v8 = v18;
  v9 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD000000000000014;
  v18 = 0x800000021478F060;
  v10 = v7;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  v11 = v10(v16, &v22, &v17);
  if (v4)
  {
  }

  else
  {
    if (v11)
    {

      *a4 = v10;
      *(a4 + 8) = v8;
      *(a4 + 16) = a1;
      *(a4 + 24) = a2;
      *(a4 + 32) = v9;
      *(a4 + 40) = a3;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD000000000000014;
    v13[1] = 0x800000021478F060;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_214175E30()
{
  if (*v0)
  {
    result = 0x736E6F69746361;
  }

  else
  {
    result = 0x6C6562616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_214175E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
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

uint64_t sub_214175F40(uint64_t a1)
{
  v2 = sub_2142F8768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214175F7C(uint64_t a1)
{
  v2 = sub_2142F8768();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214175FB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D38, &unk_2146F4DE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F8768();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v30) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D48, &qword_21477C7C0);
  LOBYTE(v29[0]) = 1;
  sub_2142F87BC();
  sub_2146DA1C8();
  v27 = v30;
  sub_21440D97C(&v30);
  v15 = v31;
  v28 = v30;
  v29[0] = v11;
  v29[1] = v13;
  v30 = 0xD000000000000014;
  v35 = v34;
  v36 = v34;
  v25 = 0x800000021478F060;
  v26 = v33;
  v31 = 0x800000021478F060;
  v32 = 0xD00000000000001CLL;
  v23 = 0x800000021478A360;
  v33 = 0x800000021478A360;

  v24 = v15;
  v16 = v28(v29, &v36, &v30);
  v17 = v23;
  if (v16)
  {

    (*(v6 + 8))(v9, v5);

    v18 = v24;

    v19 = v27;
    *a2 = v28;
    *(a2 + 8) = v18;
    *(a2 + 16) = v11;
    *(a2 + 24) = v13;
    *(a2 + 32) = v35;
    *(a2 + 40) = v19;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v20 = v25;
    *v21 = 0xD000000000000014;
    v21[1] = v20;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = v17;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_214176384(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D70, &qword_2146F4DF8);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = v1[2];
  v8 = v1[3];
  v13 = v1[5];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F8768();
  sub_2146DAA28();
  if (v8)
  {
    v17 = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v14 + 8))(v7, v4);
    }

    else
    {

      v15 = v13;
      v16 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D48, &qword_21477C7C0);
      sub_2142F88F4();
      sub_2146DA388();
      return (*(v14 + 8))(v7, v4);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2141765DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = type metadata accessor for BusinessMessage(0);
  v43 = a5;
  sub_213FB2E54(a5, a6 + *(v9 + 24), &qword_27C907D90, &qword_2146F4E00);
  sub_214406CE8(&v47);
  v11 = v47;
  v10 = v48;
  v12 = v49;
  v13 = v50;
  v14 = v51;
  sub_2144070DC(v45);
  v15 = v45[1];
  *(a6 + 40) = v45[0];
  v16 = v46;
  *a6 = v11;
  *(a6 + 8) = v10;
  *(a6 + 16) = v12;
  *(a6 + 24) = v13;
  *(a6 + 32) = v14;
  *(a6 + 56) = v15;
  *(a6 + 72) = v16;
  *&v45[0] = a1;
  *(&v45[0] + 1) = a2;
  v52 = v14;
  v53 = v14;
  v17 = v13;
  v47 = 0xD000000000000021;
  v48 = 0x800000021478F080;
  v49 = 0xD00000000000001CLL;
  v50 = 0x800000021478A360;

  sub_213FDC9D0(v12, v13);
  v18 = v11(v45, &v53, &v47);
  if (v42)
  {

LABEL_6:
    sub_213FB2DF4(v43, &qword_27C907D90, &qword_2146F4E00);
    v29 = *(a6 + 8);
    v30 = *(a6 + 16);
    v31 = *(a6 + 24);

    sub_213FDC6D0(v30, v31);
    *a6 = v11;
    *(a6 + 8) = v10;
    *(a6 + 16) = v12;
    *(a6 + 24) = v17;
    *(a6 + 32) = v52;
    return sub_21432887C(a6, type metadata accessor for BusinessMessage);
  }

  if ((v18 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD000000000000021;
    v28[1] = 0x800000021478F080;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = v13;
    goto LABEL_6;
  }

  sub_213FDC6D0(v12, v13);

  v19 = *(a6 + 8);
  v20 = *(a6 + 16);
  v21 = *(a6 + 24);

  sub_213FDC6D0(v20, v21);
  *a6 = v11;
  *(a6 + 8) = v10;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = v52;
  v23 = *(a6 + 40);
  v22 = *(a6 + 48);
  v25 = *(a6 + 56);
  v24 = *(a6 + 64);
  v26 = *(a6 + 72);
  *&v45[0] = a3;
  *(&v45[0] + 1) = a4;
  v52 = v26;
  v53 = v26;
  v47 = 0xD000000000000017;
  v48 = 0x800000021478F0B0;
  v49 = 0xD00000000000001CLL;
  v50 = 0x800000021478A360;

  sub_213FDC9D0(v25, v24);
  v27 = v23(v45, &v53, &v47);
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000017;
    v36[1] = 0x800000021478F0B0;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v43, &qword_27C907D90, &qword_2146F4E00);
    v37 = *(a6 + 48);
    v38 = *(a6 + 56);
    v39 = *(a6 + 64);

    sub_213FDC6D0(v38, v39);
    *(a6 + 40) = v23;
    *(a6 + 48) = v22;
    *(a6 + 56) = v25;
    *(a6 + 64) = v24;
    *(a6 + 72) = v52;
    return sub_21432887C(a6, type metadata accessor for BusinessMessage);
  }

  sub_213FDC6D0(v25, v24);

  sub_213FB2DF4(v43, &qword_27C907D90, &qword_2146F4E00);
  v33 = *(a6 + 48);
  v34 = *(a6 + 56);
  v35 = *(a6 + 64);

  result = sub_213FDC6D0(v34, v35);
  *(a6 + 40) = v23;
  *(a6 + 48) = v22;
  *(a6 + 56) = a3;
  *(a6 + 64) = a4;
  *(a6 + 72) = v52;
  return result;
}

unint64_t sub_2141769E8()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x656A624F746F6F72;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_214176A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436BD2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214176A74(uint64_t a1)
{
  v2 = sub_2142F8A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214176AB0(uint64_t a1)
{
  v2 = sub_2142F8A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214176AEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D90, &qword_2146F4E00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v70 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D98, &qword_2146F4E08);
  v81 = *(v7 - 8);
  v8 = *(v81 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v70 - v9;
  v11 = type metadata accessor for BusinessMessage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142F8A2C();
  v17 = v82;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

  v79 = v6;
  v82 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v84[0]) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v18 = v7;
  v19 = v86;
  v20 = v87;
  LOBYTE(v84[0]) = 1;
  sub_2146DA1C8();
  v21 = v87;
  v78 = v86;
  LOBYTE(v86) = 2;
  sub_2142F8A80();
  v22 = v79;
  sub_2146DA1C8();
  v77 = v21;
  v24 = v82;
  sub_213FB2E54(v22, v82 + *(v11 + 24), &qword_27C907D90, &qword_2146F4E00);
  sub_214406CE8(&v86);
  v25 = v19;
  v26 = v86;
  v73 = v87;
  v74 = 0;
  v28 = v88;
  v27 = v89;
  v29 = v90;
  sub_2144070DC(v84);
  v30 = v84[1];
  *(v24 + 5) = v84[0];
  v31 = v85;
  v32 = v73;
  *v24 = v26;
  v24[1] = v32;
  v24[2] = v28;
  v24[3] = v27;
  *(v24 + 32) = v29;
  *(v24 + 7) = v30;
  *(v24 + 72) = v31;
  v72 = v25;
  *&v84[0] = v25;
  *(&v84[0] + 1) = v20;
  v91 = v29;
  v92 = v29;
  v33 = v26;
  v86 = 0xD000000000000021;
  v87 = 0x800000021478F080;
  v88 = 0xD00000000000001CLL;
  v89 = 0x800000021478A360;
  v34 = v32;

  v75 = v28;
  v76 = v27;
  v35 = v28;
  v36 = v34;
  sub_213FDC9D0(v35, v27);
  v37 = v74;
  v38 = v26(v84, &v92, &v86);
  if (v37)
  {

LABEL_9:

    sub_213FB2DF4(v79, &qword_27C907D90, &qword_2146F4E00);
    (*(v81 + 8))(v10, v18);
    v54 = v82;
    v55 = v82[1];
    v56 = v82[2];
    v57 = v82[3];

    sub_213FDC6D0(v56, v57);
    *v54 = v33;
    *(v54 + 8) = v36;
    v58 = v76;
    *(v54 + 16) = v75;
    *(v54 + 24) = v58;
    *(v54 + 32) = v91;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v83);
    return sub_21432887C(v54, type metadata accessor for BusinessMessage);
  }

  v74 = 0x800000021478A360;
  v39 = v72;
  v71 = v20;
  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v52 = 0xD000000000000021;
    v52[1] = 0x800000021478F080;
    v53 = v74;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = v53;
    swift_willThrow();
    goto LABEL_9;
  }

  v70 = v18;
  sub_213FDC6D0(v75, v76);
  v40 = v74;

  v41 = v82;
  v42 = v82[1];
  v43 = v82[2];
  v44 = v82[3];

  sub_213FDC6D0(v43, v44);
  *v41 = v33;
  v41[1] = v36;
  v45 = v71;
  v41[2] = v39;
  v41[3] = v45;
  *(v41 + 32) = v91;
  v47 = v41[5];
  v46 = v41[6];
  v48 = v41[7];
  v49 = v41[8];
  v50 = *(v41 + 72);
  *&v84[0] = v78;
  *(&v84[0] + 1) = v77;
  v91 = v50;
  v92 = v50;
  v86 = 0xD000000000000017;
  v87 = 0x800000021478F0B0;
  v88 = 0xD00000000000001CLL;
  v89 = v40;

  v76 = v48;
  sub_213FDC9D0(v48, v49);
  v51 = v47(v84, &v92, &v86);
  v59 = v70;
  v60 = v81;
  if ((v51 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v66 = 0xD000000000000017;
    v66[1] = 0x800000021478F0B0;
    v66[2] = 0xD00000000000001CLL;
    v66[3] = v74;
    swift_willThrow();

    sub_213FB2DF4(v79, &qword_27C907D90, &qword_2146F4E00);
    (*(v60 + 8))(v10, v59);
    v54 = v82;
    v67 = v82[6];
    v68 = v82[7];
    v69 = v82[8];

    sub_213FDC6D0(v68, v69);
    *(v54 + 40) = v47;
    *(v54 + 48) = v46;
    *(v54 + 56) = v76;
    *(v54 + 64) = v49;
    *(v54 + 72) = v91;
    goto LABEL_10;
  }

  sub_213FDC6D0(v76, v49);

  sub_213FB2DF4(v79, &qword_27C907D90, &qword_2146F4E00);
  (*(v60 + 8))(v10, v59);
  v61 = v82;
  v62 = v82[6];
  v63 = v82[7];
  v64 = v82[8];

  sub_213FDC6D0(v63, v64);
  *(v61 + 40) = v47;
  *(v61 + 48) = v46;
  v65 = v77;
  *(v61 + 56) = v78;
  *(v61 + 64) = v65;
  *(v61 + 72) = v91;
  sub_214328704(v61, v80, type metadata accessor for BusinessMessage);
  return __swift_destroy_boxed_opaque_existential_1(v83);
}

uint64_t sub_214177274(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907DB8, &qword_2146F4E10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F8A2C();
  sub_2146DAA28();
  v11 = v3[3];
  if (v11 == 1)
  {
    goto LABEL_6;
  }

  v17 = v3[2];
  v18 = v11;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[8];
  if (v13 == 1)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v17 = v3[7];
    v18 = v13;
    v16 = 1;
    sub_2146DA388();
    v14 = *(type metadata accessor for BusinessMessage(0) + 24);
    LOBYTE(v17) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D90, &qword_2146F4E00);
    sub_2142F8B34();
    sub_2146DA388();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

__n128 sub_214177538@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOWORD(v21[0]) = 0;
  sub_2140615D0(v21);
  v4 = v21[8];
  v5 = v21[10];
  v6 = v21[11];
  *(a2 + 392) = v21[9];
  *(a2 + 408) = v5;
  *(a2 + 424) = v6;
  v7 = v21[4];
  v8 = v21[6];
  v9 = v21[7];
  *(a2 + 328) = v21[5];
  *(a2 + 344) = v8;
  *(a2 + 360) = v9;
  *(a2 + 376) = v4;
  v10 = v21[1];
  *(a2 + 248) = v21[0];
  v11 = v21[2];
  v12 = v21[3];
  *(a2 + 264) = v10;
  *(a2 + 280) = v11;
  *(a2 + 296) = v12;
  *(a2 + 312) = v7;
  *(a2 + 240) = 0;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v13 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v13;
  *(a2 + 224) = *(a1 + 224);
  *(a2 + 240) = *(a1 + 240);
  v14 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v14;
  v15 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v15;
  v16 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v16;
  v17 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v17;
  v18 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v18;
  result = *(a1 + 32);
  v20 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v20;
  return result;
}

uint64_t sub_214177640(uint64_t a1)
{
  v2 = sub_2142F8BE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417767C(uint64_t a1)
{
  v2 = sub_2142F8BE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141776FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, char *a5@<X8>)
{
  v27 = a5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v26 = *(v31 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v5)
  {
    v13 = v26;
    v12 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    sub_21432076C(&qword_280B30CB8, &qword_27C905500, &qword_2146F2BE0);
    v14 = v31;
    sub_2146DA1C8();
    (*(v13 + 8))(v10, v14);
    LOWORD(v29[0]) = 0;
    sub_2140615D0(v29);
    v15 = v29[8];
    v16 = v29[10];
    v17 = v29[11];
    *(v12 + 392) = v29[9];
    *(v12 + 408) = v16;
    *(v12 + 424) = v17;
    v18 = v29[4];
    v19 = v29[6];
    v20 = v29[7];
    *(v12 + 328) = v29[5];
    *(v12 + 344) = v19;
    *(v12 + 360) = v20;
    *(v12 + 376) = v15;
    v21 = v29[1];
    *(v12 + 248) = v29[0];
    v22 = v29[2];
    v23 = v29[3];
    *(v12 + 264) = v21;
    *(v12 + 280) = v22;
    *(v12 + 296) = v23;
    *(v12 + 312) = v18;
    *(v12 + 30) = 0;
    *(v12 + 13) = 0u;
    *(v12 + 14) = 0u;
    *(v12 + 11) = 0u;
    *(v12 + 12) = 0u;
    *(v12 + 9) = 0u;
    *(v12 + 10) = 0u;
    *(v12 + 7) = 0u;
    *(v12 + 8) = 0u;
    *(v12 + 5) = 0u;
    *(v12 + 6) = 0u;
    *(v12 + 3) = 0u;
    *(v12 + 4) = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    memcpy(v28, v30, sizeof(v28));
    sub_213FB2DF4(v12, &qword_27C905500, &qword_2146F2BE0);
    memcpy(v12, v28, 0x1B8uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141779B8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_21432076C(qword_280B2E688, &qword_27C905500, &qword_2146F2BE0);
  sub_2146DA388();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_214177B9C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_2146DAA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_21432076C(qword_280B2E688, &qword_27C905500, &qword_2146F2BE0);
  sub_2146DA388();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_214177D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v70 = a10;
  v59 = a16[1];
  v60 = *a16;
  v27 = type metadata accessor for MessagesAppBalloon();
  v65 = a3;
  sub_213FB2E54(a3, a9 + v27[5], &unk_27C904F30, &unk_2146EFA20);
  v64 = a6;
  sub_213FB2E54(a6, a9 + v27[7], &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(a13, a9 + v27[11], &qword_27C904850, &unk_2146EDB40);
  sub_213FB2E54(a21, a9 + v27[16], &qword_27C904848, &unk_2146F4E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v29 = swift_allocObject();
  v30 = swift_allocObject();
  *(v30 + 16) = 0xD000000000000017;
  *(v30 + 24) = 0x800000021478F0D0;
  *(v29 + 16) = sub_21409A7EC;
  *(v29 + 24) = v30;
  *(inited + 32) = v29;
  sub_214042A28(inited, &v67);
  v31 = v69;
  *a9 = a1;
  a9[1] = a2;
  v32 = (a9 + v27[6]);
  *v32 = a4;
  v32[1] = a5;
  v33 = (a9 + v27[8]);
  v34 = a7[5];
  v33[4] = a7[4];
  v33[5] = v34;
  *(v33 + 89) = *(a7 + 89);
  v35 = a7[1];
  *v33 = *a7;
  v33[1] = v35;
  v36 = a7[3];
  v33[2] = a7[2];
  v33[3] = v36;
  v37 = a9 + v27[9];
  *v37 = a8;
  v37[8] = v70 & 1;
  v38 = (a9 + v27[10]);
  *v38 = a11;
  v38[1] = a12;
  v39 = a9 + v27[12];
  v40 = v68;
  *v39 = v67;
  *(v39 + 1) = v40;
  v39[32] = v31;
  v41 = (a9 + v27[13]);
  *v41 = v60;
  v41[1] = v59;
  v42 = (a9 + v27[14]);
  *v42 = a17;
  v42[1] = a18;
  v43 = (a9 + v27[15]);
  *v43 = a19;
  v43[1] = a20;
  v45 = *v39;
  v44 = *(v39 + 1);
  v46 = *(v39 + 2);
  v47 = *(v39 + 3);
  LOBYTE(v38) = v39[32];
  v66[0] = a14;
  v66[1] = a15;
  v62 = v38;
  v71 = v38;
  *&v67 = 0xD00000000000001ELL;
  *(&v67 + 1) = 0x800000021478F0F0;
  *&v68 = 0xD00000000000001CLL;
  *(&v68 + 1) = 0x800000021478A360;

  sub_213FDC9D0(v46, v47);
  v48 = v45(v66, &v71, &v67);
  if (v63)
  {
  }

  else
  {
    if (v48)
    {
      sub_213FDC6D0(v46, v47);

      sub_213FB2DF4(a21, &qword_27C904848, &unk_2146F4E30);
      sub_213FB2DF4(a13, &qword_27C904850, &unk_2146EDB40);
      sub_213FB2DF4(v64, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v65, &unk_27C904F30, &unk_2146EFA20);
      v49 = *(v39 + 1);
      v50 = *(v39 + 2);
      v51 = *(v39 + 3);

      result = sub_213FDC6D0(v50, v51);
      *v39 = v45;
      *(v39 + 1) = v44;
      *(v39 + 2) = a14;
      *(v39 + 3) = a15;
      v39[32] = v62;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v53 = 0xD00000000000001ELL;
    v53[1] = 0x800000021478F0F0;
    v53[2] = 0xD00000000000001CLL;
    v53[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(a21, &qword_27C904848, &unk_2146F4E30);
  sub_213FB2DF4(a13, &qword_27C904850, &unk_2146EDB40);
  sub_213FB2DF4(v64, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v65, &unk_27C904F30, &unk_2146EFA20);
  v54 = *(v39 + 1);
  v55 = *(v39 + 2);
  v56 = *(v39 + 3);

  sub_213FDC6D0(v55, v56);
  *v39 = v45;
  *(v39 + 1) = v44;
  *(v39 + 2) = v46;
  *(v39 + 3) = v47;
  v39[32] = v62;
  return sub_21432887C(a9, type metadata accessor for MessagesAppBalloon);
}

unint64_t sub_214178224(char a1)
{
  result = 0x74786574646CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 7107189;
      break;
    case 4:
      result = 0x74756F79616CLL;
      break;
    case 5:
      result = 0x6449707061;
      break;
    case 6:
      result = 0x656D614E707061;
      break;
    case 7:
      result = 0x6E6F6349707061;
      break;
    case 8:
      result = 0x6C4374756F79616CLL;
      break;
    case 9:
      result = 0x6F79614C6576696CLL;
      break;
    case 10:
      result = 1635017060;
      break;
    case 11:
      result = 0x6F69736E65747865;
      break;
    case 12:
      result = 0x61746144707061;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_214178388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436BE58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141783B0(uint64_t a1)
{
  v2 = sub_2142F8C3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141783EC(uint64_t a1)
{
  v2 = sub_2142F8C3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214178428@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904848, &unk_2146F4E30);
  v3 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v89 = &v73 - v4;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v91 = &v73 - v6;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v7 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v9 = &v73 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907DE8, &unk_2146F4E40);
  v93 = *(v10 - 8);
  v11 = *(v93 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v73 - v12;
  v14 = type metadata accessor for MessagesAppBalloon();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v18 = a1[4];
  v115 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_2142F8C3C();
  v20 = v94;
  sub_2146DAA08();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v115);
  }

  v85 = v14;
  v86 = v17;
  v94 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v109) = 0;
  v21 = sub_2142E12FC();
  sub_2146DA1C8();
  v22 = v10;
  v84 = v21;
  v23 = v100;
  v24 = v101;
  LOBYTE(v100) = 1;
  sub_2142EFBA8();
  sub_2146DA1C8();
  v92 = v23;
  LOBYTE(v109) = 2;
  sub_2146DA1C8();
  v27 = v100;
  v26 = v101;
  LOBYTE(v100) = 3;
  sub_2142E27A8();
  sub_2146DA1C8();
  v83 = v26;
  v90 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907DF8, &qword_214755E10);
  v108 = 4;
  sub_2142F8C90();
  sub_2146DA1C8();
  v106 = v113;
  *v107 = v114[0];
  *&v107[9] = *(v114 + 9);
  v102 = v109;
  v103 = v110;
  v104 = v111;
  v105 = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v97) = 5;
  sub_2142E11FC();
  sub_2146DA1C8();
  v28 = v100;
  v82 = v101;
  LOBYTE(v97) = 6;
  sub_2146DA1C8();
  v80 = v100;
  v81 = v28;
  v29 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904850, &unk_2146EDB40);
  LOBYTE(v97) = 7;
  sub_2142F8D68();
  sub_2146DA1C8();
  v79 = v29;
  LOBYTE(v96[0]) = 8;
  sub_2146DA1C8();
  v84 = *(&v97 + 1);
  v78 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907E20, &qword_2146F4E50);
  LOBYTE(v96[0]) = 9;
  sub_2142F8E40();
  v30 = v22;
  v31 = v13;
  sub_2146DA1C8();
  v77 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v96[0]) = 10;
  sub_2142E1278();
  sub_2146DA1C8();
  v76 = v97;
  LOBYTE(v97) = 11;
  v74 = sub_2146DA168();
  v75 = v32;
  LOBYTE(v97) = 12;
  sub_2142F8F18();
  sub_2146DA1C8();
  v88 = 0;
  v34 = v85;
  v33 = v86;
  sub_213FB2E54(v94, v86 + v85[5], &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v91, v33 + v34[7], &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(&v100, v33 + v34[11], &qword_27C904850, &unk_2146EDB40);
  sub_213FB2E54(v89, v33 + v34[16], &qword_27C904848, &unk_2146F4E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v73 = 0x800000021478F0D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v36 = swift_allocObject();
  v37 = swift_allocObject();
  v38 = v73;
  *(v37 + 16) = 0xD000000000000017;
  *(v37 + 24) = v38;
  *(v36 + 16) = sub_21409A874;
  *(v36 + 24) = v37;
  *(inited + 32) = v36;
  sub_214042A28(inited, &v97);
  v39 = v99;
  v40 = v90;
  *v33 = v92;
  v33[1] = v40;
  v41 = (v33 + v34[6]);
  v42 = v83;
  *v41 = v27;
  v41[1] = v42;
  v43 = (v33 + v34[8]);
  v44 = *v107;
  v43[4] = v106;
  v43[5] = v44;
  *(v43 + 89) = *&v107[9];
  v45 = v103;
  *v43 = v102;
  v43[1] = v45;
  v46 = v105;
  v43[2] = v104;
  v43[3] = v46;
  v47 = v33 + v34[9];
  *v47 = v81;
  v47[8] = v82;
  v48 = (v33 + v34[10]);
  v49 = v79;
  *v48 = v80;
  v48[1] = v49;
  v50 = v33 + v34[12];
  v51 = v98;
  *v50 = v97;
  *(v50 + 1) = v51;
  v50[32] = v39;
  v52 = (v33 + v34[13]);
  v53 = *(&v77 + 1);
  *v52 = v77;
  v52[1] = v53;
  v54 = (v33 + v34[14]);
  v55 = *(&v76 + 1);
  *v54 = v76;
  v54[1] = v55;
  v56 = (v33 + v34[15]);
  v57 = v75;
  *v56 = v74;
  v56[1] = v57;
  v59 = *v50;
  v58 = *(v50 + 1);
  v60 = *(v50 + 2);
  v61 = *(v50 + 3);
  LODWORD(v57) = v50[32];
  v96[0] = v78;
  v96[1] = v84;
  LODWORD(v90) = v57;
  v95 = v57;
  *&v97 = 0xD00000000000001ELL;
  *(&v97 + 1) = 0x800000021478F0F0;
  *&v98 = 0xD00000000000001CLL;
  *(&v98 + 1) = 0x800000021478A360;

  v85 = v60;
  v83 = v61;
  sub_213FDC9D0(v60, v61);
  v62 = v88;
  v92 = v59;
  v63 = v59(v96, &v95, &v97);
  if (v62)
  {
  }

  else
  {
    if (v63)
    {
      sub_213FDC6D0(v85, v83);

      sub_213FB2DF4(v89, &qword_27C904848, &unk_2146F4E30);
      sub_213FB2DF4(&v100, &qword_27C904850, &unk_2146EDB40);
      sub_213FB2DF4(v91, &unk_27C9131A0, &unk_2146E9D10);
      sub_213FB2DF4(v94, &unk_27C904F30, &unk_2146EFA20);
      (*(v93 + 8))(v31, v30);
      v64 = *(v50 + 1);
      v65 = *(v50 + 2);
      v66 = *(v50 + 3);

      sub_213FDC6D0(v65, v66);
      *v50 = v92;
      *(v50 + 1) = v58;
      v67 = v84;
      *(v50 + 2) = v78;
      *(v50 + 3) = v67;
      v50[32] = v90;
      sub_214328704(v86, v87, type metadata accessor for MessagesAppBalloon);
      return __swift_destroy_boxed_opaque_existential_1(v115);
    }

    sub_214031C4C();
    swift_allocError();
    *v68 = 0xD00000000000001ELL;
    v68[1] = 0x800000021478F0F0;
    v68[2] = 0xD00000000000001CLL;
    v68[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(v89, &qword_27C904848, &unk_2146F4E30);
  sub_213FB2DF4(&v100, &qword_27C904850, &unk_2146EDB40);
  sub_213FB2DF4(v91, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v94, &unk_27C904F30, &unk_2146EFA20);
  (*(v93 + 8))(v31, v30);
  v69 = *(v50 + 1);
  v70 = *(v50 + 2);
  v71 = *(v50 + 3);

  sub_213FDC6D0(v70, v71);
  *v50 = v92;
  *(v50 + 1) = v58;
  v72 = v83;
  *(v50 + 2) = v85;
  *(v50 + 3) = v72;
  v50[32] = v90;
  __swift_destroy_boxed_opaque_existential_1(v115);
  return sub_21432887C(v86, type metadata accessor for MessagesAppBalloon);
}

uint64_t sub_2141792D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907E48, &qword_2146F4E58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F8C3C();
  sub_2146DAA28();
  v54[0] = *v3;
  LOBYTE(v48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = type metadata accessor for MessagesAppBalloon();
  v60 = v3;
  v42 = v11;
  v12 = *(v11 + 20);
  LOBYTE(v54[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  sub_2142EFE18();
  v13 = v60;
  sub_2146DA388();
  v54[0] = *(v13 + v42[6]);
  LOBYTE(v48) = 2;
  sub_2146DA388();
  v14 = v42[7];
  v59 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  sub_2142E2910();
  v15 = v60;
  sub_2146DA388();
  v16 = (v15 + v42[8]);
  v17 = v16[3];
  v18 = v16[5];
  v57 = v16[4];
  *v58 = v18;
  *&v58[9] = *(v16 + 89);
  v19 = v16[1];
  v54[0] = *v16;
  v54[1] = v19;
  v20 = v16[3];
  v22 = *v16;
  v21 = v16[1];
  v55 = v16[2];
  v56 = v20;
  v23 = v16[5];
  v52 = v57;
  v53[0] = v23;
  *(v53 + 9) = *(v16 + 89);
  v48 = v22;
  v49 = v21;
  v50 = v55;
  v51 = v17;
  v47 = 4;
  sub_213FB2E54(v54, v45, &qword_27C907DF8, &qword_214755E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907DF8, &qword_214755E10);
  sub_2142F8FCC();
  sub_2146DA388();
  v45[4] = v52;
  *v46 = v53[0];
  *&v46[9] = *(v53 + 9);
  v45[0] = v48;
  v45[1] = v49;
  v45[2] = v50;
  v45[3] = v51;
  sub_213FB2DF4(v45, &qword_27C907DF8, &qword_214755E10);
  v24 = v60;
  v25 = v60 + v42[9];
  v26 = *v25;
  LOBYTE(v25) = v25[8];
  *&v43 = v26;
  BYTE8(v43) = v25;
  v44 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2142E1C30();
  sub_2146DA388();
  v43 = *(v24 + v42[10]);
  v44 = 6;
  sub_2146DA388();
  v27 = v42[11];
  LOBYTE(v43) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904850, &unk_2146EDB40);
  sub_2142F90A4();
  v28 = v60;
  sub_2146DA388();
  v29 = v28 + v42[12];
  v30 = *(v29 + 24);
  if (v30 != 1)
  {
    *&v43 = *(v29 + 16);
    *(&v43 + 1) = v30;
    v44 = 8;
    sub_2146DA388();
    v31 = v42;
    v32 = (v28 + v42[13]);
    v33 = v32[1];
    *&v43 = *v32;
    *(&v43 + 1) = v33;
    v44 = 9;
    sub_213FDC9D0(v43, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907E20, &qword_2146F4E50);
    sub_2142F917C();
    sub_2146DA388();
    sub_213FDC6D0(v43, *(&v43 + 1));
    v34 = (v28 + v31[14]);
    v35 = v34[1];
    *&v43 = *v34;
    *(&v43 + 1) = v35;
    v44 = 10;
    sub_213FDCA18(v43, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v43, *(&v43 + 1));
    v36 = (v60 + v42[15]);
    v37 = *v36;
    v38 = v36[1];
    LOBYTE(v43) = 11;
    sub_2146DA328();
    v39 = v42[16];
    LOBYTE(v43) = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904848, &unk_2146F4E30);
    sub_2142F9254();
    sub_2146DA388();
    return (*(v6 + 8))(v9, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141799D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  v17 = type metadata accessor for MessagesAppCustomAcknowledgement();
  sub_21408AC04(a3, a9 + v17[5], &unk_27C904F30, &unk_2146EFA20);
  v18 = (a9 + v17[6]);
  *v18 = a4;
  v18[1] = a5;
  result = sub_21408AC04(a6, a9 + v17[7], &unk_27C9131A0, &unk_2146E9D10);
  v20 = a9 + v17[8];
  *v20 = a7;
  v20[8] = a8 & 1;
  v21 = (a9 + v17[9]);
  *v21 = a10;
  v21[1] = a11;
  return result;
}

unint64_t sub_214179AB4()
{
  v1 = *v0;
  v2 = 0x74786574646CLL;
  v3 = 7107189;
  v4 = 0x6449707061;
  if (v1 != 4)
  {
    v4 = 0x656D614E707061;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_214179B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436C278(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214179B90(uint64_t a1)
{
  v2 = sub_2142F9308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214179BCC(uint64_t a1)
{
  v2 = sub_2142F9308();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214179C08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907E90, &qword_2146F4E60);
  v11 = *(v44 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v44);
  v14 = &v37 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142F9308();
  v43 = v14;
  v17 = v45;
  sub_2146DAA08();
  if (!v17)
  {
    v40 = v6;
    v41 = v10;
    v45 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v49 = 0;
    v18 = sub_2142E12FC();
    v19 = v43;
    v20 = v44;
    sub_2146DA1C8();
    v39 = v18;
    v22 = v47;
    v21 = v48;
    LOBYTE(v47) = 1;
    sub_2142EFBA8();
    sub_2146DA1C8();
    v38 = v22;
    v49 = 2;
    sub_2146DA1C8();
    v25 = v47;
    v24 = v48;
    LOBYTE(v47) = 3;
    sub_2142E27A8();
    sub_2146DA1C8();
    v37 = v25;
    v26 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v49 = 4;
    sub_2142E11FC();
    sub_2146DA1C8();
    v27 = v47;
    v28 = v48;
    v49 = 5;
    sub_2146DA1C8();
    LODWORD(v39) = v28;
    (*(v45 + 8))(v19, v20);
    v29 = v47;
    v30 = v48;
    v31 = type metadata accessor for MessagesAppCustomAcknowledgement();
    v32 = v42;
    sub_21408AC04(v41, v42 + v31[5], &unk_27C904F30, &unk_2146EFA20);
    sub_21408AC04(v40, v32 + v31[7], &unk_27C9131A0, &unk_2146E9D10);
    v33 = v37;
    *v32 = v38;
    v32[1] = v26;
    v34 = (v32 + v31[6]);
    *v34 = v33;
    v34[1] = v24;
    v35 = v32 + v31[8];
    *v35 = v27;
    v35[8] = v39;
    v36 = (v32 + v31[9]);
    *v36 = v29;
    v36[1] = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_21417A11C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907EA0, &qword_2146F4E68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F9308();
  sub_2146DAA28();
  v20 = *v3;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (!v2)
  {
    v19 = type metadata accessor for MessagesAppCustomAcknowledgement();
    v11 = v19[5];
    LOBYTE(v20) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    sub_2142EFE18();
    sub_2146DA388();
    v12 = v19;
    v20 = *(v3 + v19[6]);
    v21 = 2;
    sub_2146DA388();
    v13 = v12[7];
    LOBYTE(v20) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    sub_2142E2910();
    sub_2146DA388();
    v14 = v19;
    v15 = v3 + v19[8];
    v16 = *v15;
    LOBYTE(v15) = v15[8];
    *&v20 = v16;
    BYTE8(v20) = v15;
    v21 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    v20 = *(v3 + v14[9]);
    v21 = 5;
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

int *sub_21417A450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a6;
  v14 = a6[1];
  v15 = sub_2146D8B88();
  (*(*(v15 - 8) + 32))(a7, a1, v15);
  result = type metadata accessor for Metadata();
  v17 = a7 + result[5];
  *v17 = a2;
  *(v17 + 8) = a3 & 1;
  *(a7 + result[6]) = a4;
  *(a7 + result[7]) = a5;
  v18 = (a7 + result[8]);
  *v18 = v13;
  v18[1] = v14;
  return result;
}

unint64_t sub_21417A52C()
{
  v1 = *v0;
  v2 = 0x476567617373656DLL;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x43656761726F7473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D617473656D6974;
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

uint64_t sub_21417A5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436C478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21417A614(uint64_t a1)
{
  v2 = sub_2142F935C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417A650(uint64_t a1)
{
  v2 = sub_2142F935C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21417A68C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_2146D8B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907EA8, &qword_2146F4E70);
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v30);
  v12 = &v25 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2142F935C();
  sub_2146DAA08();
  if (!v2)
  {
    v15 = v5;
    LOBYTE(v32) = 0;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0]);
    v16 = v30;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
    v35 = 1;
    sub_2142E18D0();
    sub_2146DA1C8();
    v28 = v32;
    v17 = v33;
    LOBYTE(v32) = 2;
    v18 = sub_2146DA178();
    v27 = v17;
    v34 = v18;
    LOBYTE(v32) = 3;
    v26 = sub_2146DA178();
    v35 = 4;
    sub_2142F93B0();
    sub_2146DA1C8();
    (*(v9 + 8))(v12, v16);
    v20 = v32;
    LOBYTE(v16) = BYTE1(v32);
    v21 = v29;
    (*(v15 + 32))(v29, v8, v4);
    v22 = type metadata accessor for Metadata();
    v23 = v21 + v22[5];
    *v23 = v28;
    *(v23 + 8) = v27;
    *(v21 + v22[6]) = v34 & 1;
    *(v21 + v22[7]) = v26 & 1;
    v24 = (v21 + v22[8]);
    *v24 = v20;
    v24[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_21417AA44(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907EB0, &qword_2146F4E78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F935C();
  sub_2146DAA28();
  LOBYTE(v21) = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for Metadata();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    v21 = v13;
    v22 = v12;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
    sub_2142E2204();
    sub_2146DA388();
    v14 = *(v3 + v11[6]);
    LOBYTE(v21) = 2;
    sub_2146DA338();
    v15 = *(v3 + v11[7]);
    LOBYTE(v21) = 3;
    sub_2146DA338();
    v16 = (v3 + v11[8]);
    v17 = *v16;
    LOBYTE(v16) = v16[1];
    LOBYTE(v21) = v17;
    BYTE1(v21) = v16;
    v20 = 4;
    sub_2142F9404();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21417AD10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t sub_21417AD2C()
{
  v1 = *v0;
  v2 = 0x467463656A627573;
  v3 = 0x6973736573736F70;
  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0x766978656C666572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F467463656A626FLL;
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

uint64_t sub_21417ADF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436C648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21417AE18(uint64_t a1)
{
  v2 = sub_2142F9458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417AE54(uint64_t a1)
{
  v2 = sub_2142F9458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21417AE90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907EB8, &qword_2146F4E80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F9458();
  sub_2146DAA08();
  if (!v2)
  {
    v26 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v28 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v11 = *(&v27 + 1);
    v25 = v27;
    v28 = 1;
    sub_2146DA1C8();
    v24 = v11;
    v23 = *(&v27 + 1);
    v12 = v27;
    v28 = 2;
    sub_2146DA1C8();
    v22 = __PAIR128__(*(&v27 + 1), v12);
    v13 = v27;
    v28 = 3;
    sub_2146DA1C8();
    v21 = v27;
    v28 = 4;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v15 = v13;
    v16 = v26;
    v17 = v24;
    *v26 = v25;
    v16[1] = v17;
    v18 = *(&v22 + 1);
    v19 = v23;
    v16[2] = v22;
    v16[3] = v19;
    v16[4] = v15;
    v16[5] = v18;
    v20 = *(&v21 + 1);
    v16[6] = v21;
    v16[7] = v20;
    *(v16 + 4) = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21417B1FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907EC8, &qword_2146F4E88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v25 = v1[3];
  v26 = v10;
  v11 = v1[4];
  v23 = v1[5];
  v24 = v11;
  v12 = v1[7];
  v21 = v1[6];
  v22 = v12;
  v13 = v1[9];
  v19 = v1[8];
  v20 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F9458();

  sub_2146DAA28();
  v28 = v9;
  v29 = v8;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v15 = v27;
  sub_2146DA388();
  if (v15)
  {
  }

  else
  {
    v16 = v24;

    v28 = v26;
    v29 = v25;
    v30 = 1;
    sub_2146DA388();
    v28 = v16;
    v29 = v23;
    v30 = 2;
    sub_2146DA388();
    v28 = v21;
    v29 = v22;
    v30 = 3;
    sub_2146DA388();
    v28 = v19;
    v29 = v20;
    v30 = 4;
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

__n128 sub_21417B4C4@<Q0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *&v4[7] = *a2;
  *&v4[23] = a2[1];
  *&v4[39] = a2[2];
  *&v4[55] = a2[3];
  *&v4[71] = a2[4];
  *a3 = *a1;
  *(a3 + 1) = *v4;
  *(a3 + 17) = *&v4[16];
  result = *&v4[32];
  *(a3 + 80) = *&v4[79];
  *(a3 + 65) = *&v4[64];
  *(a3 + 49) = *&v4[48];
  *(a3 + 33) = *&v4[32];
  return result;
}

uint64_t sub_21417B528()
{
  if (*v0)
  {
    result = 0x6E756F6E6F7270;
  }

  else
  {
    result = 0x65676175676E616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_21417B564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E756F6E6F7270 && a2 == 0xE700000000000000)
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

uint64_t sub_21417B640(uint64_t a1)
{
  v2 = sub_2142F94AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417B67C(uint64_t a1)
{
  v2 = sub_2142F94AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21417B6B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907ED0, &qword_2146F4E90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F94AC();
  sub_2146DAA08();
  if (!v2)
  {
    v22 = 0;
    sub_2142F9500();
    sub_2146DA1C8();
    v11 = v17;
    v22 = 1;
    sub_2142F9554();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *&v16[39] = v19;
    *&v16[23] = v18;
    *&v16[55] = v20;
    *&v16[71] = v21;
    *&v16[7] = v17;
    v12 = *&v16[48];
    *(a2 + 33) = *&v16[32];
    *(a2 + 49) = v12;
    *(a2 + 65) = *&v16[64];
    v13 = *&v16[16];
    *(a2 + 1) = *v16;
    *a2 = v11;
    *(a2 + 80) = *&v16[79];
    *(a2 + 17) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21417B8E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907EF0, &qword_2146F4E98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 24);
  v10 = *(v1 + 56);
  v23 = *(v1 + 40);
  v24 = v10;
  v25 = *(v1 + 72);
  v21 = *(v1 + 8);
  v22 = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F94AC();
  sub_2146DAA28();
  LOBYTE(v16) = v8;
  LOBYTE(v15[0]) = 0;
  sub_2142F95A8();
  v12 = v14[1];
  sub_2146DA388();
  if (!v12)
  {
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    v26 = 1;
    sub_2142F95FC(&v21, v15);
    sub_2142F9658();
    sub_2146DA388();
    v15[2] = v18;
    v15[3] = v19;
    v15[4] = v20;
    v15[0] = v16;
    v15[1] = v17;
    sub_2142F96AC(v15);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21417BB4C()
{
  v1 = 0x7053664F74726170;
  v2 = 0x7265626D756ELL;
  if (*v0 != 2)
  {
    v2 = 0x72506D6F74737563;
  }

  if (!*v0)
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

uint64_t sub_21417BBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436C81C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21417BC04(uint64_t a1)
{
  v2 = sub_2142F9700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417BC40(uint64_t a1)
{
  v2 = sub_2142F9700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Morphology.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907F08, &qword_2146F4EA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F9700();
  sub_2146DAA08();
  if (!v2)
  {
    v22 = 0;
    sub_2142F9754();
    sub_2146DA1C8();
    v11 = v23;
    v20 = 1;
    sub_2142F97A8();
    sub_2146DA1C8();
    v12 = v21;
    v18 = 2;
    sub_2142F97FC();
    sub_2146DA1C8();
    HIDWORD(v15) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907F30, &qword_2146F4EA8);
    v17 = 3;
    sub_2142F9850();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    *(a2 + 1) = v12;
    *(a2 + 2) = BYTE4(v15);
    *(a2 + 8) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Morphology.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907F48, &qword_2146F4EB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v17 = v1[2];
  v18 = v10;
  v16 = *(v1 + 1);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F9700();
  sub_2146DAA28();
  v26 = v9;
  v25 = 0;
  sub_2142F9928();
  sub_2146DA388();
  if (!v2)
  {
    v12 = v17;
    v13 = v16;
    v24 = v18;
    v23 = 1;
    sub_2142F997C();
    sub_2146DA388();
    v22 = v12;
    v21 = 2;
    sub_2142F99D0();
    sub_2146DA388();
    v19 = v13;
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907F30, &qword_2146F4EA8);
    sub_2142F9A24();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21417C174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_21417C1FC(uint64_t a1)
{
  v2 = sub_2142F9AFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417C238(uint64_t a1)
{
  v2 = sub_2142F9AFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NameAndPhoto.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907F78, &qword_2146F4EB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F9AFC();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v13;
    sub_2142F9B50();
    sub_2146DA1C8();
    (*(v5 + 8))(v8, v4);
    memcpy(v10, v12, 0x261uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t NameAndPhoto.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907F90, &qword_2146F4EC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  memcpy(v12, v1, 0x261uLL);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F9BA4(v12, v11);
  sub_2142F9AFC();
  sub_2146DAA28();
  memcpy(v11, v12, 0x261uLL);
  sub_2142F9C00();
  sub_2146DA388();
  memcpy(v10, v11, 0x261uLL);
  sub_2142F9C54(v10);
  return (*(v4 + 8))(v7, v3);
}

__n128 sub_21417C5B8@<Q0>(char a1@<W0>, _DWORD *a2@<X1>, _OWORD *a3@<X2>, uint64_t *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10)
{
  v10 = *a4;
  v11 = a4[4];
  v12 = *(a4 + 40);
  v13 = *a6;
  v14 = a6[4];
  v15 = *(a6 + 40);
  v16 = *a7;
  v17 = a7[4];
  v18 = *(a7 + 40);
  v19 = *a8;
  v20 = a8[4];
  v21 = *(a8 + 40);
  *&v30[35] = a3[2];
  *&v30[19] = a3[1];
  *&v30[3] = *a3;
  *&v30[99] = a3[6];
  *&v30[83] = a3[5];
  *&v30[67] = a3[4];
  *&v30[51] = a3[3];
  *&v30[163] = a3[10];
  *&v30[147] = a3[9];
  *&v30[131] = a3[8];
  *&v30[115] = a3[7];
  *&v30[220] = *(a3 + 217);
  *&v30[211] = a3[13];
  *&v30[195] = a3[12];
  *&v30[179] = a3[11];
  v29 = *(a4 + 8);
  *(&v28[1] + 7) = a5[1];
  *(&v28[2] + 7) = a5[2];
  *(&v28[3] + 7) = a5[3];
  v28[4] = *(a5 + 57);
  *(v28 + 7) = *a5;
  v27 = *(a6 + 8);
  v26 = *(a7 + 8);
  v25 = *(a8 + 8);
  *&v24[7] = *a10;
  *&v24[23] = a10[1];
  *&v24[80] = *(a10 + 73);
  *&v24[71] = a10[4];
  *&v24[55] = a10[3];
  *&v24[39] = a10[2];
  *a9 = a1;
  *(a9 + 1) = *a2;
  *(a9 + 37) = *&v30[32];
  *(a9 + 21) = *&v30[16];
  *(a9 + 5) = *v30;
  *(a9 + 101) = *&v30[96];
  *(a9 + 85) = *&v30[80];
  *(a9 + 69) = *&v30[64];
  *(a9 + 53) = *&v30[48];
  *(a9 + 165) = *&v30[160];
  *(a9 + 149) = *&v30[144];
  *(a9 + 133) = *&v30[128];
  *(a9 + 117) = *&v30[112];
  *(a9 + 225) = *&v30[220];
  *(a9 + 213) = *&v30[208];
  *(a9 + 197) = *&v30[192];
  *(a9 + 181) = *&v30[176];
  *(a9 + 248) = v10;
  *(a9 + 256) = v29;
  *(a9 + 264) = *(a4 + 1);
  *(a9 + 280) = v11;
  *(a9 + 288) = v12;
  *(a9 + 321) = v28[2];
  *(a9 + 337) = v28[3];
  *(a9 + 353) = v28[4];
  *(a9 + 289) = v28[0];
  *(a9 + 305) = v28[1];
  *(a9 + 376) = v13;
  *(a9 + 384) = v27;
  *(a9 + 392) = *(a6 + 1);
  *(a9 + 408) = v14;
  *(a9 + 416) = v15;
  *(a9 + 424) = v16;
  *(a9 + 432) = v26;
  *(a9 + 440) = *(a7 + 1);
  *(a9 + 456) = v17;
  *(a9 + 464) = v18;
  *(a9 + 472) = v19;
  *(a9 + 480) = v25;
  *(a9 + 488) = *(a8 + 1);
  *(a9 + 504) = v20;
  *(a9 + 512) = v21;
  v22 = (a9 + 513);
  *v22 = *v24;
  v22[1] = *&v24[16];
  result = *&v24[32];
  v22[4] = *&v24[64];
  v22[5] = *&v24[80];
  v22[2] = *&v24[32];
  v22[3] = *&v24[48];
  return result;
}

uint64_t sub_21417C800(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000014;
    if (a1 != 2)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000014;
    if (!a1)
    {
      v6 = 0xD00000000000001CLL;
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
    v1 = 0x6F6C6C41796E6564;
    v2 = 0x694C657669746361;
    v3 = 0x4C6465726F6E6769;
    if (a1 != 7)
    {
      v3 = 0x644964726F636572;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    if (a1 != 4)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21417C958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436C994(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21417C980(uint64_t a1)
{
  v2 = sub_2142F9CA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417C9BC(uint64_t a1)
{
  v2 = sub_2142F9CA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21417C9F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907FA0, &qword_2146F4EC8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v49.i8[-v9];
  v11 = a1[3];
  v12 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2142F9CA8();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    LOBYTE(v97) = 0;
    sub_2142E1378();
    sub_2146DA1C8();
    v14 = v112;
    LOBYTE(v97) = 1;
    sub_2142F9CFC();
    sub_2146DA1C8();
    v3.i32[0] = v112;
    v111 = 2;
    sub_2142F9D50();
    sub_2146DA1C8();
    v109 = v124;
    *v110 = v125[0];
    *&v110[9] = *(v125 + 9);
    v105 = v120;
    v106 = v121;
    v108 = v123;
    v107 = v122;
    v101 = v116;
    v102 = v117;
    v103 = v118;
    v104 = v119;
    v97 = v112;
    v98 = v113;
    v99 = v114;
    v100 = v115;
    LOBYTE(v93) = 3;
    sub_2142F9DA4();
    sub_2146DA1C8();
    v73 = v14;
    v71 = v83;
    v72 = v82;
    v16 = *(&v83 + 1);
    v17 = v84;
    v69 = BYTE8(v82);
    v70 = BYTE8(v84);
    v92 = 4;
    sub_2142F9E4C();
    sub_2146DA1C8();
    v67 = v16;
    v68 = v17;
    v90 = v95;
    *v91 = v96[0];
    *&v91[9] = *(v96 + 9);
    v88 = v93;
    v89 = v94;
    v87 = 5;
    sub_2142F9EA0();
    sub_2146DA1C8();
    v63 = BYTE8(v82);
    v66 = *(&v83 + 1);
    v18 = v83;
    v64 = v82;
    v65 = v84;
    LODWORD(v17) = BYTE8(v84);
    v87 = 6;
    sub_2142F9F48();
    sub_2146DA1C8();
    v61 = v17;
    v62 = v18;
    v60 = v82;
    v59 = BYTE8(v82);
    v19 = *(&v83 + 1);
    v58 = v83;
    v20 = v84;
    v57 = BYTE8(v84);
    v87 = 7;
    sub_2142F9F9C();
    sub_2146DA1C8();
    v55 = v19;
    v56 = v20;
    LOBYTE(v19) = BYTE8(v82);
    v51 = v83;
    v52 = v82;
    v53 = v84;
    v54 = *(&v83 + 1);
    v50 = BYTE8(v84);
    v87 = 8;
    sub_2142F9FF0();
    sub_2146DA1C8();
    v21 = v65;
    v49 = vmovl_u8(v3);
    (*(v13 + 8))(v10, v6);
    *(&v81[11] + 3) = v108;
    *(&v81[12] + 3) = v109;
    *(&v81[13] + 3) = *v110;
    *(&v81[13] + 12) = *&v110[9];
    *(&v81[7] + 3) = v104;
    *(&v81[8] + 3) = v105;
    *(&v81[9] + 3) = v106;
    *(&v81[10] + 3) = v107;
    *(&v81[3] + 3) = v100;
    *(&v81[4] + 3) = v101;
    *(&v81[5] + 3) = v102;
    *(&v81[6] + 3) = v103;
    *(v81 + 3) = v97;
    *(&v81[1] + 3) = v98;
    *(&v81[2] + 3) = v99;
    v80 = v69;
    *(&v79[1] + 7) = v89;
    *(&v79[2] + 7) = v90;
    *(&v79[3] + 7) = *v91;
    v79[4] = *&v91[9];
    *(v79 + 7) = v88;
    v22 = v63;
    v78 = v63;
    v23 = v59;
    v77 = v59;
    v76 = v19;
    *(v75 + 7) = v82;
    *(&v75[1] + 7) = v83;
    v75[5] = *&v86[9];
    *(&v75[4] + 7) = *v86;
    *(&v75[3] + 7) = v85;
    *(&v75[2] + 7) = v84;
    v24 = v69;
    *a2 = v73;
    *(a2 + 1) = vuzp1_s8(*v49.i8, *v49.i8).u32[0];
    v25 = v81[0];
    v26 = v81[1];
    v27 = v81[3];
    *(a2 + 37) = v81[2];
    *(a2 + 21) = v26;
    *(a2 + 5) = v25;
    v28 = v81[4];
    v29 = v81[5];
    v30 = v81[7];
    *(a2 + 101) = v81[6];
    *(a2 + 85) = v29;
    *(a2 + 69) = v28;
    *(a2 + 53) = v27;
    v31 = v81[8];
    v32 = v81[9];
    v33 = v81[11];
    *(a2 + 165) = v81[10];
    *(a2 + 149) = v32;
    *(a2 + 133) = v31;
    *(a2 + 117) = v30;
    v34 = v81[12];
    v35 = v81[13];
    *(a2 + 225) = *(&v81[13] + 12);
    *(a2 + 213) = v35;
    *(a2 + 197) = v34;
    *(a2 + 181) = v33;
    *(a2 + 248) = v72;
    *(a2 + 256) = v24;
    v36 = v67;
    *(a2 + 264) = v71;
    *(a2 + 272) = v36;
    *(a2 + 280) = v68;
    *(a2 + 288) = v70;
    v37 = v79[1];
    v38 = v79[3];
    v39 = v79[4];
    *(a2 + 321) = v79[2];
    *(a2 + 337) = v38;
    *(a2 + 353) = v39;
    *(a2 + 289) = v79[0];
    *(a2 + 305) = v37;
    *(a2 + 376) = v64;
    *(a2 + 384) = v22;
    v40 = v66;
    *(a2 + 392) = v62;
    *(a2 + 400) = v40;
    *(a2 + 408) = v21;
    *(a2 + 416) = v61;
    *(a2 + 424) = v60;
    *(a2 + 432) = v23;
    v42 = v55;
    v41 = v56;
    *(a2 + 440) = v58;
    *(a2 + 448) = v42;
    *(a2 + 456) = v41;
    *(a2 + 464) = v57;
    v43 = v51;
    *(a2 + 472) = v52;
    *(a2 + 480) = v19;
    v44 = v53;
    v45 = v54;
    *(a2 + 488) = v43;
    *(a2 + 496) = v45;
    *(a2 + 504) = v44;
    *(a2 + 512) = v50;
    v46 = v75[3];
    *(a2 + 545) = v75[2];
    *(a2 + 561) = v46;
    v47 = v75[5];
    *(a2 + 577) = v75[4];
    *(a2 + 593) = v47;
    v48 = v75[1];
    *(a2 + 513) = v75[0];
    *(a2 + 529) = v48;
  }

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t sub_21417D2BC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907FF0, &qword_2146F4ED0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - v7;
  v68 = *v1;
  v2.i32[0] = *(v1 + 1);
  v9 = *(v1 + 184);
  v10 = *(v1 + 216);
  v114 = *(v1 + 200);
  v115[0] = v10;
  *(v115 + 9) = *(v1 + 225);
  v11 = *(v1 + 120);
  v12 = *(v1 + 152);
  v110 = *(v1 + 136);
  v111 = v12;
  v13 = *(v1 + 168);
  v113 = v9;
  v112 = v13;
  v14 = *(v1 + 56);
  v15 = *(v1 + 88);
  v106 = *(v1 + 72);
  v107 = v15;
  v16 = *(v1 + 104);
  v109 = v11;
  v108 = v16;
  v17 = *(v1 + 24);
  v102 = *(v1 + 8);
  v103 = v17;
  v18 = *(v1 + 40);
  v105 = v14;
  v104 = v18;
  v19 = *(v1 + 31);
  v20 = v1[256];
  v21 = *(v1 + 34);
  *&v65 = *(v1 + 33);
  *(&v65 + 1) = v21;
  v66 = *(v1 + 35);
  v67 = v19;
  LODWORD(v21) = v1[288];
  v63 = v20;
  v64 = v21;
  v22 = *(v1 + 344);
  v118 = *(v1 + 328);
  v119[0] = v22;
  *(v119 + 9) = *(v1 + 353);
  v23 = *(v1 + 296);
  v117 = *(v1 + 312);
  v116 = v23;
  v24 = *(v1 + 47);
  v59 = v1[384];
  v25 = *(v1 + 50);
  v58 = *(v1 + 49);
  v60 = v24;
  v61 = v25;
  v62 = *(v1 + 51);
  v57 = v1[416];
  v26 = *(v1 + 53);
  v53 = v1[432];
  v27 = *(v1 + 56);
  v52 = *(v1 + 55);
  v54 = v26;
  v55 = v27;
  v56 = *(v1 + 57);
  v51 = v1[464];
  v28 = *(v1 + 59);
  v47 = v1[480];
  v29 = *(v1 + 62);
  v46 = *(v1 + 61);
  v48 = v28;
  v49 = v29;
  v50 = *(v1 + 63);
  v30 = v1[512];
  v31 = *(v1 + 568);
  v122 = *(v1 + 552);
  v123 = v31;
  v124[0] = *(v1 + 584);
  *(v124 + 9) = *(v1 + 593);
  v32 = *(v1 + 536);
  v120 = *(v1 + 520);
  v121 = v32;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F9CA8();
  sub_2146DAA28();
  LOBYTE(v88) = v68;
  LOBYTE(v85[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  v34 = v69;
  sub_2146DA388();
  if (!v34)
  {
    v35 = v67;
    LODWORD(v69) = v30;
    v36 = vmovl_u8(v2).u64[0];
    LODWORD(v88) = vuzp1_s8(v36, v36).u32[0];
    LOBYTE(v85[0]) = 1;
    sub_2142FA044();
    sub_2146DA388();
    v100 = v114;
    v101[0] = v115[0];
    *(v101 + 9) = *(v115 + 9);
    v96 = v110;
    v97 = v111;
    v98 = v112;
    v99 = v113;
    v92 = v106;
    v93 = v107;
    v94 = v108;
    v95 = v109;
    v88 = v102;
    v89 = v103;
    v90 = v104;
    v91 = v105;
    v87 = 2;
    sub_2142FA098(&v102, v85);
    sub_2142FA0F4();
    sub_2146DA388();
    v85[12] = v100;
    *v86 = v101[0];
    *&v86[9] = *(v101 + 9);
    v85[8] = v96;
    v85[9] = v97;
    v85[10] = v98;
    v85[11] = v99;
    v85[4] = v92;
    v85[5] = v93;
    v85[6] = v94;
    v85[7] = v95;
    v85[0] = v88;
    v85[1] = v89;
    v85[2] = v90;
    v85[3] = v91;
    sub_2142F9DF8(v85);
    *&v73 = v35;
    BYTE8(v73) = v63;
    v74 = v65;
    v37 = v66;
    *&v75 = v66;
    BYTE8(v75) = v64;
    LOBYTE(v70[0]) = 3;

    sub_213FBE134(v37);
    sub_2142FA148();
    sub_2146DA388();
    v38 = v75;

    sub_213FB7170(v38);
    v83 = v118;
    v84[0] = v119[0];
    *(v84 + 9) = *(v119 + 9);
    v81 = v116;
    v82 = v117;
    v80 = 4;
    sub_2142FA19C(&v116, &v73);
    sub_2142FA1F8();
    sub_2146DA388();
    v78[2] = v83;
    *v79 = v84[0];
    *&v79[9] = *(v84 + 9);
    v78[0] = v81;
    v78[1] = v82;
    sub_2142F9EF4(v78);
    *&v73 = v60;
    BYTE8(v73) = v59;
    *&v74 = v58;
    *(&v74 + 1) = v61;
    v39 = v62;
    *&v75 = v62;
    BYTE8(v75) = v57;
    LOBYTE(v70[0]) = 5;

    sub_213FBE134(v39);
    sub_2142FA24C();
    sub_2146DA388();
    v40 = v75;

    sub_213FB7170(v40);
    *&v73 = v54;
    BYTE8(v73) = v53;
    *&v74 = v52;
    *(&v74 + 1) = v55;
    v41 = v56;
    *&v75 = v56;
    BYTE8(v75) = v51;
    LOBYTE(v70[0]) = 6;

    sub_213FBE134(v41);
    sub_2142FA2A0();
    sub_2146DA388();
    v42 = v75;

    sub_213FB7170(v42);
    *&v73 = v48;
    BYTE8(v73) = v47;
    *&v74 = v46;
    *(&v74 + 1) = v49;
    v43 = v50;
    *&v75 = v50;
    BYTE8(v75) = v69;
    LOBYTE(v70[0]) = 7;

    sub_213FBE134(v43);
    sub_2142FA2F4();
    sub_2146DA388();
    v44 = v75;

    sub_213FB7170(v44);
    v75 = v122;
    v76 = v123;
    v77[0] = v124[0];
    *(v77 + 9) = *(v124 + 9);
    v73 = v120;
    v74 = v121;
    v72 = 8;
    sub_2142FA348(&v120, v70);
    sub_2142FA3A4();
    sub_2146DA388();
    v70[2] = v75;
    v70[3] = v76;
    *v71 = v77[0];
    *&v71[9] = *(v77 + 9);
    v70[0] = v73;
    v70[1] = v74;
    sub_2142FA3F8(v70);
  }

  return (*(v5 + 8))(v8, v4);
}

double sub_21417DAB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, unint64_t a16)
{
  v142 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  v18[2] = sub_214059904;
  v18[3] = 0;
  v18[4] = 16;
  *(v17 + 16) = sub_2142FA44C;
  *(v17 + 24) = v18;
  *(v16 + 32) = v17;
  sub_214042B80(v16, &v81);
  v19 = v81;
  v20 = v83;
  v37 = v82;
  v21 = v84;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  v24[2] = sub_214059904;
  v24[3] = 0;
  v24[4] = 16;
  v24[5] = sub_21403C354;
  v24[6] = 0;
  *(v23 + 16) = sub_21438F670;
  *(v23 + 24) = v24;
  *(v22 + 32) = v23;
  sub_214042CD0(v22, &v129);
  v75 = v129;
  v40 = v130;
  v42 = v131;
  v80 = v132;
  v73 = v133;
  sub_2146AAE04(v127);
  v78 = v127[0];
  v44 = v127[1];
  v45 = v127[2];
  v66 = v127[3];
  v76 = v128;
  sub_2146AAF74(v125);
  v65 = v125[0];
  v47 = v125[1];
  v70 = v125[2];
  v59 = v125[3];
  v63 = v126;
  sub_2146AB0E4(v123);
  v55 = v123[0];
  v58 = v123[2];
  v49 = v123[1];
  v50 = v123[3];
  v56 = v124;
  sub_2146AB254(&v119);
  v53 = v119;
  v51 = v120;
  v54 = v121;
  v52 = v122;
  v134 = a14 & 1;
  v129 = a1;
  v130 = v142;
  LOBYTE(v127[0]) = v21;
  *&v81 = 0xD00000000000002BLL;
  *(&v81 + 1) = 0x800000021478F110;
  v82 = 0xD00000000000001CLL;
  v83 = 0x800000021478A360;

  v25 = (v19)(&v129, v127, &v81);
  if (!v39)
  {
    if (v25)
    {

      *&v81 = v75;
      *(&v81 + 1) = v40;
      v82 = v42;
      v83 = v80;
      v84 = v73;

      sub_213FDCA18(v42, v80);
      sub_214032024(a3, a4, 2, 0xD000000000000032, 0x800000021478F140, 0xD00000000000001CLL, 0x800000021478A360);

      v27 = v81;
      v35 = v82;
      v38 = v83;
      v74 = v84;

      sub_213FDC6BC(v42, v80);
      *&v81 = v78;
      *(&v81 + 1) = v44;
      v82 = v45;
      v83 = v66;
      v84 = v76;

      sub_21404F7E0(v45, v66);
      sub_214032118(a5, a6, 2, 0xD000000000000025, 0x800000021478F180, 0xD00000000000001CLL, 0x800000021478A360);

      v28 = v81;
      v41 = v82;
      v43 = v83;
      v77 = v84;

      sub_214032564(v45, v66);
      *&v81 = v65;
      *(&v81 + 1) = v47;
      v82 = v70;
      v83 = v59;
      v84 = v63;

      sub_21404F7E0(v70, v59);
      sub_214032118(a7, a8, 2, 0xD00000000000002BLL, 0x800000021478F1B0, 0xD00000000000001CLL, 0x800000021478A360);

      v29 = v81;
      v46 = v82;
      v67 = v83;
      v64 = v84;

      sub_214032564(v70, v59);
      *&v81 = v55;
      *(&v81 + 1) = v49;
      v82 = v58;
      v83 = v50;
      v84 = v56;

      sub_21404F7E0(v58, v50);
      sub_214032118(a10, a11, 2, 0xD000000000000029, 0x800000021478F1E0, 0xD00000000000001CLL, 0x800000021478A360);

      v30 = v81;
      v48 = v82;
      v60 = v83;
      v57 = v84;

      sub_214032564(v58, v50);
      v81 = v53;
      v82 = v51;
      v83 = v54;
      v84 = v52;

      sub_21404F7E0(v51, v54);
      sub_214032118(a15, a16, 2, 0xD000000000000028, 0x800000021478F210, 0xD00000000000001CLL, 0x800000021478A360);
      sub_213FDC6BC(a15, a16);
      sub_213FDC6BC(a10, a11);
      sub_213FDC6BC(a7, a8);
      sub_213FDC6BC(a5, a6);
      sub_213FB54FC(a3, a4);

      v31 = v82;
      v32 = v83;
      v33 = v84;

      sub_214032564(v51, v54);
      *a9 = v19;
      *(a9 + 16) = a1;
      *(a9 + 24) = v142;
      *(a9 + 32) = v21;
      *(a9 + 33) = v141[0];
      *(a9 + 36) = *(v141 + 3);
      *(a9 + 40) = v27;
      *(a9 + 56) = v35;
      *(a9 + 64) = v38;
      *(a9 + 72) = v74;
      *(a9 + 73) = *v140;
      *(a9 + 76) = *&v140[3];
      *(a9 + 80) = v28;
      *(a9 + 96) = v41;
      *(a9 + 104) = v43;
      *(a9 + 112) = v77;
      *(a9 + 113) = *v139;
      *(a9 + 116) = *&v139[3];
      *(a9 + 120) = v29;
      *(a9 + 136) = v46;
      *(a9 + 144) = v67;
      *(a9 + 152) = v64;
      *(a9 + 153) = *v138;
      *(a9 + 156) = *&v138[3];
      *(a9 + 160) = v30;
      *(a9 + 176) = v48;
      *(a9 + 184) = v60;
      *(a9 + 192) = v57;
      *(a9 + 193) = a12 & 1;
      *(a9 + 198) = v137;
      *(a9 + 194) = v136;
      *(a9 + 200) = a13;
      *(a9 + 208) = a14 & 1;
      *(a9 + 212) = *(v135 + 3);
      *(a9 + 209) = v135[0];
      result = *&v81;
      *(a9 + 216) = v81;
      *(a9 + 232) = v31;
      *(a9 + 240) = v32;
      *(a9 + 248) = v33;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD00000000000002BLL;
    v26[1] = 0x800000021478F110;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6BC(a15, a16);
  sub_213FDC6BC(a10, a11);
  sub_213FDC6BC(a7, a8);
  sub_213FDC6BC(a5, a6);
  sub_213FB54FC(a3, a4);

  v81 = v19;
  v82 = v37;
  v83 = v20;
  v84 = v21;
  *v85 = v141[0];
  *&v85[3] = *(v141 + 3);
  v86 = v75;
  v87 = v40;
  v88 = v42;
  v89 = v80;
  v90 = v73;
  *v91 = *v140;
  *&v91[3] = *&v140[3];
  v92 = v78;
  v93 = v44;
  v94 = v45;
  v95 = v66;
  v96 = v76;
  *&v97[3] = *&v139[3];
  *v97 = *v139;
  v98 = v65;
  v99 = v47;
  v100 = v70;
  v101 = v59;
  v102 = v63;
  *v103 = *v138;
  *&v103[3] = *&v138[3];
  v104 = v55;
  v105 = v49;
  v106 = v58;
  v107 = v50;
  v108 = v56;
  v109 = a12 & 1;
  v111 = v137;
  v110 = v136;
  v112 = a13;
  v113 = a14 & 1;
  *&v114[3] = *(v135 + 3);
  *v114 = v135[0];
  v115 = v53;
  v116 = v51;
  v117 = v54;
  v118 = v52;
  sub_2142FA450(&v81);
  return result;
}

unint64_t sub_21417E8A0()
{
  v1 = *v0;
  if (v1 == 6)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD000000000000014;
  if (v1 != 4)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000010;
  if (v1 != 2)
  {
    v4 = 0xD000000000000016;
  }

  v5 = 0xD00000000000001DLL;
  if (!*v0)
  {
    v5 = 0xD000000000000016;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    result = v5;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_21417E97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436CC9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21417E9A4(uint64_t a1)
{
  v2 = sub_2142FA4A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21417E9E0(uint64_t a1)
{
  v2 = sub_2142FA4A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21417EA1C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908038, &qword_2146F4ED8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v73 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v197 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142FA4A4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v197);
  }

  v124 = a2;
  v125 = v6;
  v141[0] = 0;
  v12 = sub_2146DA168();
  v14 = v13;
  v123 = v12;
  LOBYTE(v126) = 1;
  sub_21406116C();
  sub_2146DA1C8();
  v122 = v14;
  v15 = *v141;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v126) = 2;
  v17 = sub_2142E1278();
  sub_2146DA1C8();
  v120 = *(&v15 + 1);
  v121 = v15;
  v18 = *v141;
  v19 = v16;
  v20 = *&v141[8];
  LOBYTE(v126) = 3;
  sub_2146DA1C8();
  v118 = v20;
  v119 = v18;
  v21 = *v141;
  LOBYTE(v126) = 4;
  sub_2146DA1C8();
  v114 = v17;
  v115 = v19;
  v116 = *(&v21 + 1);
  v117 = v21;
  v23 = *v141;
  v141[0] = 5;
  v112 = sub_2146DA178();
  v113 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
  LOBYTE(v126) = 6;
  sub_2142E14CC();
  sub_2146DA1C8();
  v110 = *v141;
  v111 = v141[8];
  v187 = 7;
  sub_2146DA1C8();
  v91 = *(&v23 + 1);
  v83 = v9;
  v84 = v5;
  v86 = v188;
  v87 = v189;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v24 = swift_allocObject();
  v109 = xmmword_2146E9BF0;
  *(v24 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v25 = swift_allocObject();
  v26 = swift_allocObject();
  v26[2] = sub_214059904;
  v26[3] = 0;
  v26[4] = 16;
  *(v25 + 16) = sub_21438F678;
  *(v25 + 24) = v26;
  *(v24 + 32) = v25;
  sub_214042B80(v24, v141);
  v114 = *&v141[8];
  v115 = *v141;
  v27 = *&v141[24];
  v80 = *&v141[16];
  LODWORD(v25) = v142;
  v28 = swift_allocObject();
  *(v28 + 16) = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v29 = swift_allocObject();
  v30 = swift_allocObject();
  v30[2] = sub_214059904;
  v30[3] = 0;
  v30[4] = 16;
  v30[5] = sub_21403C354;
  v30[6] = 0;
  *(v29 + 16) = sub_21438F670;
  *(v29 + 24) = v30;
  *(v28 + 32) = v29;
  sub_214042CD0(v28, &v126);
  v108 = *(&v126 + 1);
  v102 = v126;
  v107 = *(&v127 + 1);
  *&v109 = v127;
  v106 = v128;
  sub_2146AAE04(&v182);
  v104 = v182;
  v98 = v183;
  v105 = v184;
  v103 = v185;
  sub_2146AAF74(v180);
  v97 = v180[0];
  v101 = v180[2];
  v99 = v180[1];
  v100 = v180[3];
  v96 = v181;
  sub_2146AB0E4(&v176);
  v94 = v176;
  v92 = v177;
  v95 = v178;
  v93 = v179;
  sub_2146AB254(&v172);
  v88 = v172;
  v89 = v173;
  v90 = v174;
  v82 = v175;
  v85 = v112 & 1;
  v186 = v111;
  *&v126 = v123;
  *(&v126 + 1) = v122;
  v112 = v25;
  LOBYTE(v182) = v25;
  *v141 = 0xD00000000000002BLL;
  *&v141[8] = 0x800000021478F110;
  *&v141[16] = 0xD00000000000001CLL;
  *&v141[24] = 0x800000021478A360;
  v81 = v27;

  v31 = v115(&v126, &v182, v141);
  v32 = v115;
  if (v31)
  {

    *v141 = v102;
    v33 = v109;
    *&v141[8] = v108;
    *&v141[16] = v109;
    v34 = v107;
    *&v141[24] = v107;
    v142 = v106;

    sub_213FDCA18(v33, v34);
    sub_214032024(v121, v120, 2, 0xD000000000000032, 0x800000021478F140, 0xD00000000000001CLL, 0x800000021478A360);

    v43 = *&v141[8];
    v102 = *v141;
    v80 = *&v141[24];
    v81 = *&v141[16];
    v106 = v142;

    sub_213FDC6BC(v109, v107);
    *v141 = v104;
    v44 = v98;
    *&v141[16] = v98;
    v45 = v105;
    *&v141[24] = v105;
    v142 = v103;

    sub_21404F7E0(v44, v45);
    sub_214032118(v119, v118, 2, 0xD000000000000025, 0x800000021478F180, 0xD00000000000001CLL, 0x800000021478A360);

    v78 = *&v141[8];
    *&v104 = *v141;
    v79 = *&v141[16];
    v103 = v142;

    sub_214032564(v98, v105);
    *v141 = v97;
    v46 = v100;
    *&v141[8] = v99;
    v47 = v101;
    *&v141[16] = v101;
    *&v141[24] = v100;
    v142 = v96;

    sub_21404F7E0(v47, v46);
    sub_214032118(v117, v116, 2, 0xD00000000000002BLL, 0x800000021478F1B0, 0xD00000000000001CLL, 0x800000021478A360);

    v77 = *&v141[8];
    v97 = *v141;
    v98 = *&v141[24];
    v96 = v142;

    sub_214032564(v101, v100);
    *v141 = v94;
    v48 = v92;
    *&v141[16] = v92;
    v49 = v95;
    *&v141[24] = v95;
    v142 = v93;

    sub_21404F7E0(v48, v49);
    sub_214032118(v113, v91, 2, 0xD000000000000029, 0x800000021478F1E0, 0xD00000000000001CLL, 0x800000021478A360);

    v75 = *&v141[8];
    *&v94 = *v141;
    v76 = *&v141[16];
    v93 = v142;

    sub_214032564(v92, v95);
    v182 = v88;
    v50 = v89;
    v51 = v90;
    v183 = v89;
    v184 = v90;
    v185 = v82;

    sub_21404F7E0(v50, v51);
    sub_214032118(v86, v87, 2, 0xD000000000000028, 0x800000021478F210, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v113, v91);
    sub_213FDC6BC(v117, v116);
    sub_213FDC6BC(v119, v118);
    sub_213FB54FC(v121, v120);
    sub_213FDC6BC(v86, v87);
    (*(v125 + 8))(v83, v84);
    v120 = *(&v182 + 1);
    v52 = v182;
    v121 = v182;
    v53 = v183;
    v125 = v183;
    v119 = v184;
    v54 = v185;

    sub_214032564(v89, v90);
    *(&v128 + 1) = v196[0];
    DWORD1(v128) = *(v196 + 3);
    *(&v130 + 9) = *v195;
    HIDWORD(v130) = *&v195[3];
    *(&v133 + 1) = *v194;
    DWORD1(v133) = *&v194[3];
    *(&v135 + 9) = *v193;
    HIDWORD(v135) = *&v193[3];
    WORD3(v138) = v192;
    *(&v138 + 2) = v191;
    DWORD1(v139) = *&v190[3];
    *(&v139 + 1) = *v190;
    *(&v126 + 1) = v114;
    *&v127 = v123;
    *(&v127 + 1) = v122;
    LOBYTE(v128) = v112;
    *(&v128 + 1) = v102;
    v74 = v43;
    *&v129 = v43;
    v55 = v80;
    *(&v129 + 1) = v81;
    *&v130 = v80;
    BYTE8(v130) = v106;
    *&v131 = v104;
    *(&v131 + 1) = v78;
    v132 = v79;
    LOBYTE(v133) = v103;
    *(&v133 + 1) = v97;
    v134 = v77;
    *&v135 = v98;
    BYTE8(v135) = v96;
    *&v136 = v94;
    *(&v136 + 1) = v75;
    v137 = v76;
    LOBYTE(v138) = v93;
    BYTE1(v138) = v85;
    *(&v138 + 1) = v110;
    v56 = v111;
    LOBYTE(v139) = v111;
    *(&v139 + 1) = v52;
    v57 = v120;
    *&v140[0] = v120;
    *(&v140[0] + 1) = v53;
    v58 = v119;
    *&v140[1] = v119;
    BYTE8(v140[1]) = v54;
    v59 = *(v140 + 9);
    *&v126 = v32;
    v60 = v126;
    v61 = v127;
    v62 = v129;
    v63 = v124;
    v124[2] = v128;
    v63[3] = v62;
    *v63 = v60;
    v63[1] = v61;
    v64 = v130;
    v65 = v131;
    v66 = v133;
    v63[6] = v132;
    v63[7] = v66;
    v63[4] = v64;
    v63[5] = v65;
    v67 = v134;
    v68 = v135;
    v69 = v137;
    v63[10] = v136;
    v63[11] = v69;
    v63[8] = v67;
    v63[9] = v68;
    v70 = v138;
    v71 = v139;
    v72 = v140[0];
    *(v63 + 233) = v59;
    v63[13] = v71;
    v63[14] = v72;
    v63[12] = v70;
    sub_2142FA4F8(&v126, v141);
    __swift_destroy_boxed_opaque_existential_1(v197);
    *v141 = v32;
    *&v141[8] = v114;
    *&v141[16] = v123;
    *&v141[24] = v122;
    v142 = v112;
    *v143 = v196[0];
    *&v143[3] = *(v196 + 3);
    v144 = v102;
    v145 = v74;
    v146 = v81;
    v147 = v55;
    v148 = v106;
    *v149 = *v195;
    *&v149[3] = *&v195[3];
    *&v150 = v104;
    *(&v150 + 1) = v78;
    v151 = v79;
    v152 = v103;
    *v153 = *v194;
    *&v153[3] = *&v194[3];
    v154 = v97;
    v155 = v77;
    v156 = v98;
    v157 = v96;
    *v158 = *v193;
    *&v158[3] = *&v193[3];
    *&v159 = v94;
    *(&v159 + 1) = v75;
    v160 = v76;
    v161 = v93;
    v162 = v85;
    v164 = v192;
    v163 = v191;
    v165 = v110;
    v166 = v56;
    *&v167[3] = *&v190[3];
    *v167 = *v190;
    *&v168 = v121;
    *(&v168 + 1) = v57;
    v169 = v125;
    v170 = v58;
    v171 = v54;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD00000000000002BLL;
    v35[1] = 0x800000021478F110;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(v113, v91);
    v36 = v111;
    v37 = v114;
    sub_213FDC6BC(v117, v116);
    sub_213FDC6BC(v119, v118);
    sub_213FB54FC(v121, v120);
    sub_213FDC6BC(v86, v87);
    (*(v125 + 8))(v83, v84);
    v38 = v81;

    v123 = v80;
    v39 = v102;
    v40 = v82;
    v41 = v92;
    v42 = v98;
    __swift_destroy_boxed_opaque_existential_1(v197);
    *v141 = v115;
    *&v141[8] = v37;
    *&v141[16] = v123;
    *&v141[24] = v38;
    v142 = v112;
    *v143 = v196[0];
    *&v143[3] = *(v196 + 3);
    v144 = v39;
    v145 = v108;
    v146 = v109;
    v147 = v107;
    v148 = v106;
    *v149 = *v195;
    *&v149[3] = *&v195[3];
    v150 = v104;
    *&v151 = v42;
    *(&v151 + 1) = v105;
    v152 = v103;
    *&v153[3] = *&v194[3];
    *v153 = *v194;
    v154 = v97;
    *&v155 = v99;
    *(&v155 + 1) = v101;
    v156 = v100;
    v157 = v96;
    *&v158[3] = *&v193[3];
    *v158 = *v193;
    v159 = v94;
    *&v160 = v41;
    *(&v160 + 1) = v95;
    v161 = v93;
    v162 = v85;
    v164 = v192;
    v163 = v191;
    v165 = v110;
    v166 = v36;
    *&v167[3] = *&v190[3];
    *v167 = *v190;
    v168 = v88;
    v169 = v89;
    v170 = v90;
    v171 = v40;
  }

  return sub_2142FA450(v141);
}