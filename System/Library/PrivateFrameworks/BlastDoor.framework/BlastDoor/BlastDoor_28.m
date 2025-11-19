uint64_t sub_21428414C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BD08, &qword_2146F6970);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = v1[5];
  v50 = v1[4];
  v51 = v8;
  v9 = v1[7];
  v52 = v1[6];
  v53 = v9;
  v10 = v1[1];
  v46 = *v1;
  v47 = v10;
  v11 = v1[3];
  v48 = v1[2];
  v49 = v11;
  v12 = *(v1 + 16);
  v24 = *(v1 + 17);
  v25 = v12;
  v13 = *(v1 + 20);
  v22 = *(v1 + 21);
  v23 = v13;
  v21 = *(v1 + 23);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214318F7C();
  sub_2146DAA28();
  v42 = v50;
  v43 = v51;
  v44 = v52;
  v45 = v53;
  v38 = v46;
  v39 = v47;
  v40 = v48;
  v41 = v49;
  v37 = 0;
  sub_213FB2E54(&v46, &v29, &qword_27C90BC98, &unk_214763E30);
  v15 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BC98, &unk_214763E30);
  sub_214319410();
  v16 = v54;
  sub_2146DA388();
  if (v16)
  {
    v33 = v42;
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    sub_213FB2DF4(&v29, &qword_27C90BC98, &unk_214763E30);
    return (*(v4 + 8))(v7, v15);
  }

  v18 = v23;
  v17 = v24;
  v19 = v22;
  v33 = v42;
  v34 = v43;
  v35 = v44;
  v36 = v45;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  v32 = v41;
  sub_213FB2DF4(&v29, &qword_27C90BC98, &unk_214763E30);
  v26 = v25;
  v28 = 1;
  sub_213FBE134(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BCB0, &qword_2146F6950);
  sub_2143194E8();
  sub_2146DA388();
  sub_213FB7170(v26);
  v26 = v17;
  v28 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BCC8, &qword_2146F6958);
  sub_2143195C0();
  sub_2146DA388();
  if (v19 != 1)
  {
    v26 = v18;
    v27 = v19;
    v28 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v26 = v21;
    v28 = 4;
    sub_213FBE134(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BCF0, &qword_2146F6968);
    sub_21431971C();
    sub_2146DA388();
    sub_213FB7170(v26);
    return (*(v4 + 8))(v7, v15);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 sub_214284588@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 144);
  *(a4 + 128) = *(a1 + 128);
  *(a4 + 144) = v4;
  v5 = *(a1 + 176);
  *(a4 + 160) = *(a1 + 160);
  *(a4 + 176) = v5;
  v6 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v6;
  v7 = *(a1 + 112);
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = v7;
  v8 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(a4 + 32) = result;
  *(a4 + 48) = v10;
  *(a4 + 192) = a2;
  *(a4 + 200) = a3;
  return result;
}

unint64_t sub_2142845C0()
{
  if (*v0)
  {
    result = 1701869940;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_2142845F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000214797710 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_2142846E0(uint64_t a1)
{
  v2 = sub_2143197F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21428471C(uint64_t a1)
{
  v2 = sub_2143197F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214284758@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BD58, &qword_2146F6978);
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v47);
  v8 = &v20[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143197F4();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BD68, &qword_2146F6980);
    v34 = 0;
    sub_214319848();
    v11 = v47;
    sub_2146DA1C8();
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v30 = v43;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    v25 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v20[15] = 1;
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v10 + 8))(v8, v11);
    v12 = v31;
    v13 = v32;
    v14 = v29;
    a2[8] = v30;
    a2[9] = v12;
    v15 = v33;
    a2[10] = v13;
    a2[11] = v15;
    v16 = v27;
    a2[4] = v26;
    a2[5] = v16;
    a2[6] = v28;
    a2[7] = v14;
    v17 = v23;
    *a2 = v22;
    a2[1] = v17;
    v18 = v25;
    a2[2] = v24;
    a2[3] = v18;
    a2[12] = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142849E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BD80, &qword_2146F6988);
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = v1[9];
  v45 = v1[8];
  v46 = v7;
  v8 = v1[11];
  v47 = v1[10];
  v48 = v8;
  v9 = v1[5];
  v41 = v1[4];
  v42 = v9;
  v10 = v1[7];
  v43 = v1[6];
  v44 = v10;
  v11 = v1[1];
  v37 = *v1;
  v38 = v11;
  v12 = v1[3];
  v39 = v1[2];
  v40 = v12;
  v13 = *(v1 + 24);
  v17 = *(v1 + 25);
  v18 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(&v37, &v25, &qword_27C90BD68, &qword_2146F6980);
  sub_2143197F4();
  sub_2146DAA28();
  v33 = v45;
  v34 = v46;
  v35 = v47;
  v36 = v48;
  v29 = v41;
  v30 = v42;
  v31 = v43;
  v32 = v44;
  v25 = v37;
  v26 = v38;
  v27 = v39;
  v28 = v40;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BD68, &qword_2146F6980);
  sub_214319920();
  v15 = v19;
  sub_2146DA388();
  v23[9] = v34;
  v23[10] = v35;
  v23[11] = v36;
  v23[4] = v29;
  v23[5] = v30;
  v23[6] = v31;
  v23[7] = v32;
  v23[8] = v33;
  v23[0] = v25;
  v23[1] = v26;
  v23[2] = v27;
  v23[3] = v28;
  sub_213FB2DF4(v23, &qword_27C90BD68, &qword_2146F6980);
  if (!v15)
  {
    v21 = v18;
    v22 = v17;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
  }

  return (*(v49 + 8))(v6, v3);
}

uint64_t sub_214284CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  LOBYTE(v21) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 200;
  *(v10 + 24) = v21;
  *(v9 + 16) = sub_21438F518;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  sub_214042B80(inited, &v21);
  v11 = v21;
  v12 = v22;
  v13 = v25;
  v20[0] = a1;
  v20[1] = a2;
  v26 = v25;
  v21 = 0xD00000000000001CLL;
  v22 = 0x8000000214792D30;
  v23 = 0xD00000000000001CLL;
  v24 = 0x800000021478A360;

  v14 = v11(v20, &v26, &v21);
  if (v5)
  {
  }

  else
  {
    if (v14)
    {

      *a5 = v11;
      *(a5 + 8) = v12;
      *(a5 + 16) = a1;
      *(a5 + 24) = a2;
      *(a5 + 32) = v13;
      *(a5 + 40) = a3;
      *(a5 + 48) = a4;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD00000000000001CLL;
    v16[1] = 0x8000000214792D30;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_214284F24()
{
  if (*v0)
  {
    result = 0x6C6562616CLL;
  }

  else
  {
    result = 0x73736572646461;
  }

  *v0;
  return result;
}

uint64_t sub_214284F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
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

uint64_t sub_214285034(uint64_t a1)
{
  v2 = sub_2143199F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214285070(uint64_t a1)
{
  v2 = sub_2143199F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142850AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BD98, &qword_2146F6990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143199F8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v34 = v11;
  LOBYTE(v36) = 1;
  v14 = sub_2146DA168();
  v32 = v16;
  v29 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v18 = swift_allocObject();
  v33 = v13;
  v19 = v18;
  LOBYTE(v36) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 200;
  *(v20 + 24) = v36;
  *(v19 + 16) = sub_21438F518;
  *(v19 + 24) = v20;
  *(inited + 32) = v19;
  sub_214042B80(inited, &v36);
  v22 = v36;
  v21 = v37;
  v35[0] = v34;
  v35[1] = v33;
  v41 = v40;
  v42 = v40;
  v36 = 0xD00000000000001CLL;
  v37 = 0x8000000214792D30;
  v30 = 0x8000000214792D30;
  v31 = v39;
  v38 = 0xD00000000000001CLL;
  v39 = 0x800000021478A360;

  v28 = v22;
  v23 = v22(v35, &v42, &v36);
  v24 = v33;
  if (v23)
  {

    (*(v6 + 8))(v9, v5);

    *a2 = v28;
    *(a2 + 8) = v21;
    *(a2 + 16) = v34;
    *(a2 + 24) = v24;
    *(a2 + 32) = v41;
    v25 = v32;
    *(a2 + 40) = v29;
    *(a2 + 48) = v25;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v26 = v30;
    *v27 = 0xD00000000000001CLL;
    v27[1] = v26;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142854C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BDA8, &qword_2146F6998);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v14[1] = v1[6];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143199F8();
  sub_2146DAA28();
  if (v9)
  {
    v16 = 0;

    v12 = v14[3];
    sub_2146DA328();
    if (v12)
    {
      (*(v4 + 8))(v7, v3);
    }

    else
    {

      v15 = 1;
      sub_2146DA328();
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

uint64_t sub_2142856EC(uint64_t a1)
{
  v2 = sub_214319A4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214285728(uint64_t a1)
{
  v2 = sub_214319A4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214285764@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BDB0, &qword_2146F69A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214319A4C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BDC0, &qword_2146F69A8);
    sub_214319AA0();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142858E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BDE8, &qword_2146F69B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214319A4C();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BDC0, &qword_2146F69A8);
  sub_214319BFC();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_214285A88@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, void (*a5)(void, void, void, void)@<X4>, uint64_t a6@<X5>, void (**a7)(void, void, void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t *a14)
{
  v143 = a8;
  v155 = a7;
  v144 = a6;
  v171 = a5;
  v156 = a4;
  v150 = a3;
  v149 = a2;
  v151 = a13;
  v152 = a12;
  v153 = a11;
  v154 = a10;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v16 = *(*(v141 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v141);
  v137 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v139 = &v136 - v20;
  MEMORY[0x28223BE20](v19);
  v140 = &v136 - v21;
  v148 = *a14;
  sub_2145C1278(&v167);
  v147 = v168;
  v146 = v169;
  v145 = v170;
  sub_2145C13C4(&v162);
  v22 = v163;
  v23 = v164;
  v24 = v165;
  sub_2145C13F8(&v158);
  v25 = v159;
  v26 = v160;
  v27 = v161;
  v28 = type metadata accessor for Chatbot.BotInfo(0);
  v142 = v28[9];
  sub_2145C1548((a9 + v142));
  v138 = v28[10];
  sub_2145C169C((a9 + v138));
  v136 = v28[11];
  sub_2145C17F0((a9 + v136));
  v29 = a1[11];
  *(a9 + 160) = a1[10];
  *(a9 + 176) = v29;
  *(a9 + 192) = a1[12];
  v30 = a1[7];
  *(a9 + 96) = a1[6];
  *(a9 + 112) = v30;
  v31 = a1[9];
  *(a9 + 128) = a1[8];
  *(a9 + 144) = v31;
  v32 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v32;
  v33 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v33;
  v34 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v34;
  v35 = v150;
  *(a9 + 208) = v149;
  *(a9 + 216) = v35;
  *(a9 + 224) = v167;
  v36 = v146;
  *(a9 + 240) = v147;
  *(a9 + 248) = v36;
  *(a9 + 256) = v145;
  *(a9 + 264) = v162;
  *(a9 + 280) = v22;
  *(a9 + 288) = v23;
  *(a9 + 296) = v24;
  *(a9 + 304) = v158;
  *(a9 + 320) = v25;
  *(a9 + 328) = v26;
  *(a9 + 336) = v27;
  *(a9 + v28[12]) = v148;
  v38 = *(a9 + 224);
  v37 = *(a9 + 232);
  v39 = *(a9 + 240);
  v40 = *(a9 + 248);
  v41 = *(a9 + 256);
  *&v162 = v156;
  *(&v162 + 1) = v171;
  LODWORD(v149) = v41;
  LOBYTE(v158) = v41;
  *&v167 = 0xD000000000000018;
  *(&v167 + 1) = 0x8000000214792D50;
  v168 = 0xD00000000000001CLL;
  v169 = 0x800000021478A360;

  sub_213FDC9D0(v39, v40);
  v42 = v157;
  v150 = v38;
  v43 = v38(&v162, &v158, &v167);
  if (v42)
  {
    v157 = v42;

LABEL_7:

    sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v152, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v153, &unk_27C9131A0, &unk_2146E9D10);
    v60 = *(a9 + 232);
    v61 = *(a9 + 240);
    v62 = *(a9 + 248);

    sub_213FDC6D0(v61, v62);
    *(a9 + 224) = v150;
    *(a9 + 232) = v37;
    *(a9 + 240) = v39;
    *(a9 + 248) = v40;
    *(a9 + 256) = v149;
    return sub_21432887C(a9, type metadata accessor for Chatbot.BotInfo);
  }

  v148 = 0x800000021478A360;
  if ((v43 & 1) == 0)
  {
    sub_214031C4C();
    v57 = swift_allocError();
    *v58 = 0xD000000000000018;
    v58[1] = 0x8000000214792D50;
    v59 = v148;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = v59;
    v157 = v57;
    swift_willThrow();
    goto LABEL_7;
  }

  v157 = 0;
  sub_213FDC6D0(v39, v40);
  v44 = v148;

  v45 = *(a9 + 232);
  v46 = *(a9 + 240);
  v47 = *(a9 + 248);

  sub_213FDC6D0(v46, v47);
  *(a9 + 224) = v150;
  *(a9 + 232) = v37;
  v48 = v155;
  v49 = v171;
  *(a9 + 240) = v156;
  *(a9 + 248) = v49;
  *(a9 + 256) = v149;
  v51 = *(a9 + 264);
  v50 = *(a9 + 272);
  v53 = *(a9 + 280);
  v52 = *(a9 + 288);
  v54 = *(a9 + 296);
  *&v162 = v144;
  *(&v162 + 1) = v48;
  LODWORD(v156) = v54;
  LOBYTE(v158) = v54;
  *&v167 = 0xD000000000000015;
  *(&v167 + 1) = 0x8000000214792D70;
  v168 = 0xD00000000000001CLL;
  v169 = v44;

  sub_213FDC9D0(v53, v52);
  v55 = v157;
  v171 = v51;
  v56 = v51(&v162, &v158, &v167);
  if (v55)
  {
    v157 = v55;

LABEL_13:

    v80 = v153;
    sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v152, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v80, &unk_27C9131A0, &unk_2146E9D10);
    v81 = *(a9 + 272);
    v82 = *(a9 + 280);
    v83 = *(a9 + 288);

    sub_213FDC6D0(v82, v83);
    *(a9 + 264) = v171;
    *(a9 + 272) = v50;
    *(a9 + 280) = v53;
    *(a9 + 288) = v52;
    *(a9 + 296) = v156;
    return sub_21432887C(a9, type metadata accessor for Chatbot.BotInfo);
  }

  if ((v56 & 1) == 0)
  {
    sub_214031C4C();
    v77 = swift_allocError();
    *v78 = 0xD000000000000015;
    v78[1] = 0x8000000214792D70;
    v79 = v148;
    v78[2] = 0xD00000000000001CLL;
    v78[3] = v79;
    v157 = v77;
    swift_willThrow();

    goto LABEL_13;
  }

  v157 = 0;
  sub_213FDC6D0(v53, v52);
  v64 = v148;

  v65 = *(a9 + 272);
  v66 = *(a9 + 280);
  v67 = *(a9 + 288);

  sub_213FDC6D0(v66, v67);
  *(a9 + 264) = v171;
  *(a9 + 272) = v50;
  v69 = v154;
  v68 = v155;
  *(a9 + 280) = v144;
  *(a9 + 288) = v68;
  *(a9 + 296) = v156;
  v71 = *(a9 + 304);
  v70 = *(a9 + 312);
  v72 = *(a9 + 320);
  v73 = *(a9 + 328);
  v74 = *(a9 + 336);
  *&v162 = v143;
  *(&v162 + 1) = v69;
  LODWORD(v156) = v74;
  LOBYTE(v158) = v74;
  *&v167 = 0xD000000000000016;
  *(&v167 + 1) = 0x8000000214792D90;
  v168 = 0xD00000000000001CLL;
  v169 = v64;

  sub_213FDC9D0(v72, v73);
  v75 = v157;
  v171 = v71;
  v76 = v71(&v162, &v158, &v167);
  if (v75)
  {
    v157 = v75;

LABEL_17:

    sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v152, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v153, &unk_27C9131A0, &unk_2146E9D10);
    v98 = *(a9 + 312);
    v99 = *(a9 + 320);
    v100 = *(a9 + 328);

    sub_213FDC6D0(v99, v100);
    *(a9 + 304) = v171;
    *(a9 + 312) = v70;
    *(a9 + 320) = v72;
    *(a9 + 328) = v73;
    *(a9 + 336) = v156;
    return sub_21432887C(a9, type metadata accessor for Chatbot.BotInfo);
  }

  if ((v76 & 1) == 0)
  {
    sub_214031C4C();
    v95 = swift_allocError();
    *v96 = 0xD000000000000016;
    v96[1] = 0x8000000214792D90;
    v97 = v148;
    v96[2] = 0xD00000000000001CLL;
    v96[3] = v97;
    v157 = v95;
    swift_willThrow();
    goto LABEL_17;
  }

  sub_213FDC6D0(v72, v73);
  v84 = v148;

  v85 = *(a9 + 312);
  v86 = *(a9 + 320);
  v87 = *(a9 + 328);

  sub_213FDC6D0(v86, v87);
  *(a9 + 304) = v171;
  *(a9 + 312) = v70;
  v88 = v154;
  *(a9 + 320) = v143;
  *(a9 + 328) = v88;
  *(a9 + 336) = v156;
  v89 = v142;
  v90 = v140;
  sub_213FB2E54(a9 + v142, v140, &qword_27C903F38, &unk_2146E9D40);
  v91 = *v90;
  v92 = *(v90 + 8);
  v93 = v141;
  LOBYTE(v162) = *(v90 + *(v141 + 32));
  *&v167 = 0xD000000000000022;
  *(&v167 + 1) = 0x8000000214792DB0;
  v168 = 0xD00000000000001CLL;
  v169 = v84;
  v94 = v91(v153, &v162, &v167);
  if ((v94 & 1) == 0)
  {
    sub_214031C4C();
    v114 = swift_allocError();
    *v115 = 0xD000000000000022;
    v115[1] = 0x8000000214792DB0;
    v115[2] = 0xD00000000000001CLL;
    v115[3] = v84;
    v157 = v114;
    swift_willThrow();
    sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v152, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v153, &unk_27C9131A0, &unk_2146E9D10);
    v116 = a9 + v89;
    v117 = v90;
LABEL_22:
    sub_21402EDB8(v117, v116, &qword_27C903F38, &unk_2146E9D40);
    return sub_21432887C(a9, type metadata accessor for Chatbot.BotInfo);
  }

  v157 = 0;

  v101 = v89;
  v102 = *(v93 + 28);
  sub_213FB2DF4(v90 + v102, &qword_27C903F40, &unk_2146F1C50);
  sub_213FB2E54(v153, v90 + v102, &unk_27C9131A0, &unk_2146E9D10);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v104 = v84;
  v105 = (*(v103 - 8) + 56);
  v171 = *v105;
  v171(v90 + v102, 0, 1, v103);
  v106 = v90;
  v107 = v104;
  sub_21402EDB8(v106, a9 + v101, &qword_27C903F38, &unk_2146E9D40);
  v108 = v139;
  sub_213FB2E54(a9 + v138, v139, &qword_27C903F38, &unk_2146E9D40);
  v109 = *v108;
  v110 = *(v108 + 8);
  LOBYTE(v162) = *(v108 + *(v141 + 32));
  *&v167 = 0xD00000000000001ALL;
  *(&v167 + 1) = 0x8000000214792DE0;
  v168 = 0xD00000000000001CLL;
  v169 = v107;
  v111 = v152;
  v112 = v157;
  v113 = v109(v152, &v162, &v167);
  if (v112)
  {
    v157 = v112;
    sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v111, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v153, &unk_27C9131A0, &unk_2146E9D10);

LABEL_26:
    v116 = a9 + v138;
    v130 = &v167 + 8;
LABEL_27:
    v117 = *(v130 - 32);
    goto LABEL_22;
  }

  v155 = v105;
  v156 = v103;
  if ((v113 & 1) == 0)
  {
    sub_214031C4C();
    v127 = swift_allocError();
    *v128 = 0xD00000000000001ALL;
    v128[1] = 0x8000000214792DE0;
    v129 = v148;
    v128[2] = 0xD00000000000001CLL;
    v128[3] = v129;
    v157 = v127;
    swift_willThrow();
    sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v111, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v153, &unk_27C9131A0, &unk_2146E9D10);
    goto LABEL_26;
  }

  v118 = v148;

  v119 = v141;
  v120 = *(v141 + 28);
  v121 = v139;
  sub_213FB2DF4(v139 + v120, &qword_27C903F40, &unk_2146F1C50);
  sub_213FB2E54(v111, v121 + v120, &unk_27C9131A0, &unk_2146E9D10);
  v171(v121 + v120, 0, 1, v156);
  sub_21402EDB8(v121, a9 + v138, &qword_27C903F38, &unk_2146E9D40);
  v122 = v137;
  sub_213FB2E54(a9 + v136, v137, &qword_27C903F38, &unk_2146E9D40);
  v123 = *v122;
  v124 = *(v122 + 8);
  LOBYTE(v162) = *(v122 + *(v119 + 32));
  *&v167 = 0xD000000000000025;
  *(&v167 + 1) = 0x8000000214792E00;
  v168 = 0xD00000000000001CLL;
  v169 = v118;
  v125 = v151;
  v126 = v123(v151, &v162, &v167);
  v157 = 0;
  if ((v126 & 1) == 0)
  {
    sub_214031C4C();
    v133 = swift_allocError();
    *v134 = 0xD000000000000025;
    v134[1] = 0x8000000214792E00;
    v135 = v148;
    v134[2] = 0xD00000000000001CLL;
    v134[3] = v135;
    v157 = v133;
    swift_willThrow();
    sub_213FB2DF4(v125, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v152, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v153, &unk_27C9131A0, &unk_2146E9D10);
    v116 = a9 + v136;
    v130 = &v166;
    goto LABEL_27;
  }

  sub_213FB2DF4(v152, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v153, &unk_27C9131A0, &unk_2146E9D10);
  v131 = *(v119 + 28);
  v132 = v137;
  sub_213FB2DF4(v137 + v131, &qword_27C903F40, &unk_2146F1C50);
  sub_21408AC04(v125, v132 + v131, &unk_27C9131A0, &unk_2146E9D10);
  v171(v132 + v131, 0, 1, v156);
  return sub_21402EDB8(v132, a9 + v136, &qword_27C903F38, &unk_2146E9D40);
}

unint64_t sub_2142869DC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E6F6973726576;
    v6 = 0x72656469766F7270;
    if (a1 != 2)
    {
      v6 = 0x6C69616D65;
    }

    if (!a1)
    {
      v5 = 0xD000000000000013;
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
    v1 = 0x5565746973626577;
    v2 = 0xD000000000000015;
    if (a1 != 7)
    {
      v2 = 0x73736572646461;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x72756F6C6F63;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
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

uint64_t sub_214286B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438477C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214286B38(uint64_t a1)
{
  v2 = sub_214319D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214286B74(uint64_t a1)
{
  v2 = sub_214319D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214286BB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = *(*(v160 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v160);
  v157 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v158 = &v138 - v7;
  MEMORY[0x28223BE20](v6);
  v161 = &v138 - v8;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v159 = *(v164 - 8);
  v9 = *(v159 + 64);
  v10 = MEMORY[0x28223BE20](v164);
  v162 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v163 = &v138 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v138 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BE08, &qword_2146F69C0);
  v17 = *(v16 - 8);
  v165 = v16;
  v166 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = type metadata accessor for Chatbot.BotInfo(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214319D58();
  v24 = v167;
  sub_2146DAA08();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v153 = v19;
  v154 = v22;
  v167 = v15;
  v155 = a1;
  v207 = 0;
  sub_214319DAC();
  sub_2146DA1C8();
  v190 = v203;
  v191 = v204;
  v192 = v205;
  v186 = v199;
  v187 = v200;
  v188 = v201;
  v189 = v202;
  v182 = v195;
  v183 = v196;
  v184 = v197;
  v185 = v198;
  v180 = v193;
  v181 = v194;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v172) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v26 = v176;
  LOBYTE(v172) = 2;
  sub_2146DA1C8();
  v152 = v26;
  v27 = v176;
  LOBYTE(v172) = 3;
  sub_2146DA1C8();
  v151 = v27;
  v28 = *(&v176 + 1);
  v150 = v176;
  LOBYTE(v172) = 4;
  sub_2146DA1C8();
  v148 = v176;
  v149 = v28;
  v29 = *(&v176 + 1);
  LOBYTE(v176) = 5;
  sub_2142E27A8();
  sub_2146DA1C8();
  v147 = v29;
  LOBYTE(v176) = 6;
  sub_2146DA1C8();
  LOBYTE(v176) = 7;
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BE20, &qword_2146F69C8);
  LOBYTE(v172) = 8;
  sub_214319E54();
  sub_2146DA1C8();
  v30 = *(&v151 + 1);
  v146 = 0;
  v31 = v176;
  sub_2145C1278(&v176);
  v32 = v177;
  v33 = v178;
  LODWORD(v145) = v179;
  sub_2145C13C4(&v172);
  v143 = v174;
  v144 = v173;
  v206 = v175;
  sub_2145C13F8(&v168);
  v34 = v170;
  v142 = v169;
  v141 = v171;
  v36 = v153;
  v35 = v154;
  v140 = *(v153 + 36);
  sub_2145C1548(v154 + v140);
  v139 = v36[10];
  sub_2145C169C(v35 + v139);
  v138 = v36[11];
  sub_2145C17F0(v35 + v138);
  v37 = v191;
  *(v35 + 10) = v190;
  *(v35 + 11) = v37;
  *(v35 + 12) = v192;
  v38 = v187;
  *(v35 + 6) = v186;
  *(v35 + 7) = v38;
  v39 = v189;
  *(v35 + 8) = v188;
  *(v35 + 9) = v39;
  v40 = v183;
  *(v35 + 2) = v182;
  *(v35 + 3) = v40;
  v41 = v185;
  *(v35 + 4) = v184;
  *(v35 + 5) = v41;
  v42 = v181;
  *v35 = v180;
  *(v35 + 1) = v42;
  v43 = *(&v152 + 1);
  v35[26] = v152;
  v35[27] = v43;
  *(v35 + 14) = v176;
  v35[30] = v32;
  v35[31] = v33;
  *(v35 + 256) = v145;
  *(v35 + 33) = v172;
  v44 = v143;
  v35[35] = v144;
  v35[36] = v44;
  *(v35 + 296) = v206;
  *(v35 + 19) = v168;
  v35[40] = v142;
  v35[41] = v34;
  *(v35 + 336) = v141;
  *(v35 + v36[12]) = v31;
  v45 = v35[28];
  v46 = v35[29];
  v47 = v35[30];
  v48 = v35[31];
  v49 = *(v35 + 256);
  *&v172 = v151;
  *(&v172 + 1) = v30;
  DWORD2(v152) = v49;
  LOBYTE(v168) = v49;
  *&v176 = 0xD000000000000018;
  *(&v176 + 1) = 0x8000000214792D50;
  v177 = 0xD00000000000001CLL;
  v178 = 0x800000021478A360;
  v153 = 0x800000021478A360;

  v145 = v48;
  sub_213FDC9D0(v47, v48);
  *&v152 = v46;
  if ((v45(&v172, &v168, &v176) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v63 = 0xD000000000000018;
    v63[1] = 0x8000000214792D50;
    v63[2] = 0xD00000000000001CLL;
    v63[3] = v153;
    swift_willThrow();

    sub_213FB2DF4(v162, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v163, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
    (*(v166 + 8))(v146, v165);
    v64 = v154;
    v65 = v154[29];
    v66 = v154[30];
    v67 = v154[31];

    sub_213FDC6D0(v66, v67);
    v68 = v152;
    v64[28] = 0;
    v64[29] = v68;
    v69 = v145;
    v64[30] = 0;
    v64[31] = v69;
    *(v64 + 256) = BYTE8(v152);
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v155);
    return sub_21432887C(v154, type metadata accessor for Chatbot.BotInfo);
  }

  sub_213FDC6D0(0, v145);
  v50 = v153;

  v51 = v154;
  v52 = v154[29];
  v53 = v154[30];
  v54 = v154[31];

  sub_213FDC6D0(v53, v54);
  v55 = v152;
  v51[28] = 0;
  v51[29] = v55;
  v56 = *(&v151 + 1);
  v51[30] = v151;
  v51[31] = v56;
  *(v51 + 256) = BYTE8(v152);
  v58 = v51[33];
  v57 = v51[34];
  v59 = v51[35];
  v60 = v51[36];
  v61 = *(v51 + 296);
  *&v172 = v150;
  *(&v172 + 1) = v149;
  DWORD2(v152) = v61;
  LOBYTE(v168) = v61;
  *&v176 = 0xD000000000000015;
  *(&v176 + 1) = 0x8000000214792D70;
  v177 = 0xD00000000000001CLL;
  v178 = v50;

  *(&v151 + 1) = v59;
  *&v152 = v60;
  sub_213FDC9D0(v59, v60);
  v62 = v58(&v172, &v168, &v176);
  if ((v62 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v82 = 0xD000000000000015;
    v82[1] = 0x8000000214792D70;
    v83 = v153;
    v82[2] = 0xD00000000000001CLL;
    v82[3] = v83;
    swift_willThrow();

    sub_213FB2DF4(v162, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v163, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
    (*(v166 + 8))(v146, v165);
    v84 = v154;
    v85 = v154[34];
    v86 = v154[35];
    v87 = v154[36];

    sub_213FDC6D0(v86, v87);
    v84[33] = v58;
    v84[34] = v57;
    v88 = v152;
    v84[35] = *(&v151 + 1);
    v84[36] = v88;
    *(v84 + 296) = BYTE8(v152);
    goto LABEL_6;
  }

  sub_213FDC6D0(*(&v151 + 1), v152);
  v70 = v153;

  v71 = v154;
  v72 = v154[34];
  v73 = v154[35];
  v74 = v154[36];

  sub_213FDC6D0(v73, v74);
  v71[33] = v58;
  v71[34] = v57;
  v75 = v149;
  v71[35] = v150;
  v71[36] = v75;
  *(v71 + 296) = BYTE8(v152);
  v77 = v71[38];
  v76 = v71[39];
  v78 = v71[40];
  v79 = v71[41];
  v80 = *(v71 + 336);
  *&v172 = v148;
  *(&v172 + 1) = v147;
  DWORD2(v152) = v80;
  LOBYTE(v168) = v80;
  *&v176 = 0xD000000000000016;
  *(&v176 + 1) = 0x8000000214792D90;
  v177 = 0xD00000000000001CLL;
  v178 = v70;

  *(&v151 + 1) = v78;
  *&v152 = v79;
  sub_213FDC9D0(v78, v79);
  v81 = v77(&v172, &v168, &v176);
  if ((v81 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v99 = 0xD000000000000016;
    v99[1] = 0x8000000214792D90;
    v100 = v153;
    v99[2] = 0xD00000000000001CLL;
    v99[3] = v100;
    swift_willThrow();

    sub_213FB2DF4(v162, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v163, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
    (*(v166 + 8))(v146, v165);
    v101 = v154;
    v102 = v154[39];
    v103 = v154[40];
    v104 = v154[41];

    sub_213FDC6D0(v103, v104);
    v101[38] = v77;
    v101[39] = v76;
    v105 = v152;
    v101[40] = *(&v151 + 1);
    v101[41] = v105;
    *(v101 + 336) = BYTE8(v152);
    goto LABEL_6;
  }

  sub_213FDC6D0(*(&v151 + 1), v152);
  v89 = v153;

  v90 = v154;
  v91 = v154[39];
  v92 = v154[40];
  v93 = v154[41];

  sub_213FDC6D0(v92, v93);
  v90[38] = v77;
  v90[39] = v76;
  v94 = v147;
  v90[40] = v148;
  v90[41] = v94;
  *(v90 + 336) = BYTE8(v152);
  v95 = v161;
  sub_213FB2E54(v90 + v140, v161, &qword_27C903F38, &unk_2146E9D40);
  v96 = *v95;
  v97 = *(v95 + 8);
  LOBYTE(v172) = *(v95 + *(v160 + 32));
  *&v176 = 0xD000000000000022;
  *(&v176 + 1) = 0x8000000214792DB0;
  v177 = 0xD00000000000001CLL;
  v178 = v89;
  v98 = v96(v167, &v172, &v176);
  if ((v98 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v117 = 0xD000000000000022;
    v117[1] = 0x8000000214792DB0;
    v118 = v153;
    v117[2] = 0xD00000000000001CLL;
    v117[3] = v118;
    swift_willThrow();
    sub_213FB2DF4(v162, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v163, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
    (*(v166 + 8))(v146, v165);
    v119 = v154 + v140;
    v120 = v161;
LABEL_16:
    sub_21402EDB8(v120, v119, &qword_27C903F38, &unk_2146E9D40);
    goto LABEL_6;
  }

  v106 = v153;

  v108 = v160;
  v107 = v161;
  v109 = *(v160 + 28);
  sub_213FB2DF4(v161 + v109, &qword_27C903F40, &unk_2146F1C50);
  sub_213FB2E54(v167, v107 + v109, &unk_27C9131A0, &unk_2146E9D10);
  v110 = *(v159 + 56);
  v159 += 56;
  *(&v152 + 1) = v110;
  v110(v107 + v109, 0, 1, v164);
  v111 = v154;
  sub_21402EDB8(v107, v154 + v140, &qword_27C903F38, &unk_2146E9D40);
  v112 = v111 + v139;
  v113 = v158;
  sub_213FB2E54(v112, v158, &qword_27C903F38, &unk_2146E9D40);
  v114 = *v113;
  v115 = *(v113 + 8);
  LOBYTE(v172) = *(v113 + *(v108 + 32));
  *&v176 = 0xD00000000000001ALL;
  *(&v176 + 1) = 0x8000000214792DE0;
  v177 = 0xD00000000000001CLL;
  v178 = v106;
  v116 = v114(v163, &v172, &v176);
  if ((v116 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v131 = 0xD00000000000001ALL;
    v131[1] = 0x8000000214792DE0;
    v132 = v153;
    v131[2] = 0xD00000000000001CLL;
    v131[3] = v132;
    swift_willThrow();
    sub_213FB2DF4(v162, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v163, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
    (*(v166 + 8))(v146, v165);
    v119 = v154 + v139;
    v120 = v158;
    goto LABEL_16;
  }

  v121 = v153;

  v122 = v160;
  v123 = *(v160 + 28);
  v124 = v158;
  sub_213FB2DF4(v158 + v123, &qword_27C903F40, &unk_2146F1C50);
  sub_213FB2E54(v163, v124 + v123, &unk_27C9131A0, &unk_2146E9D10);
  (*(&v152 + 1))(v124 + v123, 0, 1, v164);
  v125 = v154;
  sub_21402EDB8(v124, v154 + v139, &qword_27C903F38, &unk_2146E9D40);
  v126 = v125 + v138;
  v127 = v157;
  sub_213FB2E54(v126, v157, &qword_27C903F38, &unk_2146E9D40);
  v128 = *v127;
  v129 = *(v127 + 8);
  LOBYTE(v172) = *(v127 + *(v122 + 32));
  *&v176 = 0xD000000000000025;
  *(&v176 + 1) = 0x8000000214792E00;
  v177 = 0xD00000000000001CLL;
  v178 = v121;
  v130 = v128(v162, &v172, &v176);
  if ((v130 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v136 = 0xD000000000000025;
    v136[1] = 0x8000000214792E00;
    v137 = v153;
    v136[2] = 0xD00000000000001CLL;
    v136[3] = v137;
    swift_willThrow();
    sub_213FB2DF4(v162, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v163, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
    (*(v166 + 8))(v146, v165);
    v119 = v154 + v138;
    v120 = v157;
    goto LABEL_16;
  }

  sub_213FB2DF4(v163, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
  (*(v166 + 8))(v146, v165);
  v133 = *(v160 + 28);
  v134 = v157;
  sub_213FB2DF4(v157 + v133, &qword_27C903F40, &unk_2146F1C50);
  sub_21408AC04(v162, v134 + v133, &unk_27C9131A0, &unk_2146E9D10);
  (*(&v152 + 1))(v134 + v133, 0, 1, v164);
  v135 = v154;
  sub_21402EDB8(v134, v154 + v138, &qword_27C903F38, &unk_2146E9D40);
  sub_214328704(v135, v156, type metadata accessor for Chatbot.BotInfo);
  return __swift_destroy_boxed_opaque_existential_1(v155);
}

uint64_t sub_214288190(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v60 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v62 = &v54 - v9;
  MEMORY[0x28223BE20](v8);
  v64 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v12 = *(v11 - 8);
  v65 = v11;
  v66 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v59 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v61 = &v54 - v17;
  MEMORY[0x28223BE20](v16);
  v63 = &v54 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BE38, &qword_2146F69D0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214319D58();
  sub_2146DAA28();
  v25 = v2[10];
  v26 = v2[8];
  v105 = v2[9];
  v106 = v25;
  v27 = v2[10];
  v28 = v2[12];
  v107 = v2[11];
  v108 = v28;
  v29 = v2[6];
  v30 = v2[4];
  v101 = v2[5];
  v102 = v29;
  v31 = v2[6];
  v32 = v2[8];
  v103 = v2[7];
  v104 = v32;
  v33 = v2[2];
  v34 = *v2;
  v97 = v2[1];
  v98 = v33;
  v35 = v2[2];
  v36 = v2[4];
  v99 = v2[3];
  v100 = v36;
  v37 = *v2;
  v93 = v27;
  v94 = v107;
  v95 = v2[12];
  v96 = v37;
  v89 = v31;
  v90 = v103;
  v91 = v26;
  v92 = v105;
  v85 = v35;
  v86 = v99;
  v87 = v30;
  v88 = v101;
  v83 = v34;
  v84 = v97;
  v82 = 0;
  sub_214319F2C(&v96, &v69);
  sub_214319F88();
  v38 = v109;
  sub_2146DA388();
  if (v38)
  {
    v78 = v92;
    v79 = v93;
    v80 = v94;
    v81 = v95;
    v76 = v90;
    v77 = v91;
    v71 = v85;
    v72 = v86;
    v74 = v88;
    v75 = v89;
    v73 = v87;
    v69 = v83;
    v70 = v84;
    sub_214319E00(&v69);
    return (*(v20 + 8))(v23, v19);
  }

  v109 = v20;
  v78 = v92;
  v79 = v93;
  v80 = v94;
  v81 = v95;
  v76 = v90;
  v77 = v91;
  v71 = v85;
  v72 = v86;
  v74 = v88;
  v75 = v89;
  v73 = v87;
  v69 = v83;
  v70 = v84;
  sub_214319E00(&v69);
  v68 = v2[13];
  v67 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v40 = *(v2 + 31);
  if (v40 != 1)
  {
    *&v68 = *(v2 + 30);
    *(&v68 + 1) = v40;
    v67 = 2;
    sub_2146DA388();
    v41 = v66;
    v42 = *(v2 + 36);
    if (v42 != 1)
    {
      *&v68 = *(v2 + 35);
      *(&v68 + 1) = v42;
      v67 = 3;
      sub_2146DA388();
      v43 = *(v2 + 41);
      if (v43 != 1)
      {
        *&v68 = *(v2 + 40);
        *(&v68 + 1) = v43;
        v67 = 4;
        sub_2146DA388();
        v57 = v19;
        v58 = v23;
        v56 = type metadata accessor for Chatbot.BotInfo(0);
        v44 = v2 + v56[9];
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
        v45 = v44 + *(v54 + 28);
        v46 = v64;
        sub_213FB2E54(v45, v64, &qword_27C903F40, &unk_2146F1C50);
        v47 = *(v41 + 48);
        v48 = v65;
        v66 = v41 + 48;
        v55 = v47;
        if (v47(v46, 1, v65) != 1)
        {
          v49 = v63;
          sub_21408AC04(v46, v63, &unk_27C9131A0, &unk_2146E9D10);
          LOBYTE(v68) = 5;
          sub_2142E2910();
          sub_2146DA388();
          sub_213FB2DF4(v49, &unk_27C9131A0, &unk_2146E9D10);
          v46 = v62;
          sub_213FB2E54(v2 + v56[10] + *(v54 + 28), v62, &qword_27C903F40, &unk_2146F1C50);
          if (v55(v46, 1, v48) != 1)
          {
            v50 = v61;
            sub_21408AC04(v46, v61, &unk_27C9131A0, &unk_2146E9D10);
            LOBYTE(v68) = 6;
            sub_2146DA388();
            sub_213FB2DF4(v50, &unk_27C9131A0, &unk_2146E9D10);
            v46 = v60;
            sub_213FB2E54(v2 + v56[11] + *(v54 + 28), v60, &qword_27C903F40, &unk_2146F1C50);
            if (v55(v46, 1, v48) != 1)
            {
              v51 = v59;
              sub_21408AC04(v46, v59, &unk_27C9131A0, &unk_2146E9D10);
              LOBYTE(v68) = 7;
              v53 = v57;
              v52 = v58;
              sub_2146DA388();
              sub_213FB2DF4(v51, &unk_27C9131A0, &unk_2146E9D10);
              *&v68 = *(v2 + v56[12]);
              v67 = 8;
              sub_213FBE134(v68);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BE20, &qword_2146F69C8);
              sub_214319FDC();
              sub_2146DA388();
              sub_213FB7170(v68);
              return (*(v109 + 8))(v52, v53);
            }
          }
        }

        sub_213FB2DF4(v46, &qword_27C903F40, &unk_2146F1C50);
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214288A44@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo(0);
  v27 = a4;
  sub_213FB2E54(a4, a5 + *(v10 + 24), &qword_27C913090, &unk_2146E9DB0);
  sub_2145C234C(&v31);
  v12 = v31;
  v11 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  *a5 = a1;
  *(a5 + 8) = v12;
  *(a5 + 16) = v11;
  *(a5 + 24) = v13;
  *(a5 + 32) = v14;
  *(a5 + 40) = v15;
  v30[0] = a2;
  v30[1] = a3;
  v36 = v15;
  v37 = v15;
  v31 = 0xD000000000000030;
  v32 = 0x8000000214792E30;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  sub_213FDC9D0(v13, v14);
  v16 = v28;
  v29 = v12;
  v17 = v12(v30, &v37, &v31);
  if (v16)
  {
  }

  else
  {
    v26 = a3;
    if (v17)
    {
      sub_213FDC6D0(v13, v14);

      sub_213FB2DF4(v27, &qword_27C913090, &unk_2146E9DB0);
      v18 = *(a5 + 16);
      v19 = *(a5 + 24);
      v20 = *(a5 + 32);

      result = sub_213FDC6D0(v19, v20);
      *(a5 + 8) = v12;
      *(a5 + 16) = v11;
      *(a5 + 24) = a2;
      *(a5 + 32) = v26;
      *(a5 + 40) = v36;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000030;
    v22[1] = 0x8000000214792E30;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(v27, &qword_27C913090, &unk_2146E9DB0);
  v23 = *(a5 + 16);
  v24 = *(a5 + 24);
  v25 = *(a5 + 32);

  sub_213FDC6D0(v24, v25);
  *(a5 + 8) = v29;
  *(a5 + 16) = v11;
  *(a5 + 24) = v13;
  *(a5 + 32) = v14;
  *(a5 + 40) = v36;
  return sub_21432887C(a5, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
}

uint64_t sub_214288CA0()
{
  v1 = 0x6974617269707865;
  if (*v0 == 1)
  {
    v1 = 0x6465696669726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465696669726576;
  }
}

uint64_t sub_214288CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214384A68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214288D24(uint64_t a1)
{
  v2 = sub_21431A0B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214288D60(uint64_t a1)
{
  v2 = sub_21431A0B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214288D9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BE58, &qword_2146F69D8);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_21431A0B4();
  v17 = v47;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v47 = v6;
  v18 = v46;
  LOBYTE(v50) = 0;
  LODWORD(v44) = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v49[0]) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v42 = v50;
  v43 = v51;
  LOBYTE(v50) = 2;
  sub_2142EC0C4();
  sub_2146DA1C8();
  v41 = v7;
  sub_213FB2E54(v47, &v14[*(v11 + 24)], &qword_27C913090, &unk_2146E9DB0);
  sub_2145C234C(&v50);
  v21 = v50;
  v20 = v51;
  v22 = v52;
  v23 = v53;
  v24 = v54;
  *v14 = v44 & 1;
  *(v14 + 1) = v21;
  *(v14 + 2) = v20;
  *(v14 + 3) = v22;
  *(v14 + 4) = v23;
  v14[40] = v24;
  v49[0] = v42;
  v49[1] = v43;
  v55 = v24;
  v56 = v24;
  v50 = 0xD000000000000030;
  v51 = 0x8000000214792E30;
  v52 = 0xD00000000000001CLL;
  v53 = 0x800000021478A360;

  v39 = v23;
  v40 = v22;
  sub_213FDC9D0(v22, v23);
  v38 = v20;
  v44 = v21;
  v25 = v21(v49, &v56, &v50);
  v26 = v43;
  if (v25)
  {
    sub_213FDC6D0(v40, v39);

    sub_213FB2DF4(v47, &qword_27C913090, &unk_2146E9DB0);
    (*(v18 + 8))(v10, v41);
    v27 = *(v14 + 2);
    v28 = *(v14 + 3);
    v29 = *(v14 + 4);

    sub_213FDC6D0(v28, v29);
    v30 = v45;
    v31 = v38;
    *(v14 + 1) = v44;
    *(v14 + 2) = v31;
    *(v14 + 3) = v42;
    *(v14 + 4) = v26;
    v14[40] = v55;
    sub_214328704(v14, v30, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  sub_214031C4C();
  swift_allocError();
  *v32 = 0xD000000000000030;
  v32[1] = 0x8000000214792E30;
  v32[2] = 0xD00000000000001CLL;
  v32[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v47, &qword_27C913090, &unk_2146E9DB0);
  (*(v18 + 8))(v10, v41);
  v33 = *(v14 + 2);
  v34 = *(v14 + 3);
  v35 = *(v14 + 4);

  sub_213FDC6D0(v34, v35);
  v36 = v38;
  *(v14 + 1) = v44;
  *(v14 + 2) = v36;
  v37 = v39;
  *(v14 + 3) = v40;
  *(v14 + 4) = v37;
  v14[40] = v55;
  __swift_destroy_boxed_opaque_existential_1(v48);
  return sub_21432887C(v14, type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo);
}

uint64_t sub_2142892E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BE68, &qword_2146F69E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431A0B4();
  sub_2146DAA28();
  v11 = *v3;
  LOBYTE(v16) = 0;
  sub_2146DA338();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + 4);
  if (v12 != 1)
  {
    v16 = *(v3 + 3);
    v17 = v12;
    v15[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v13 = *(type metadata accessor for Chatbot.VerificationInfo.VerifiedInfo(0) + 24);
    LOBYTE(v16) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    sub_2142EC30C();
    sub_2146DA388();
    return (*(v6 + 8))(v9, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2142895A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000214797770 == a2)
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

uint64_t sub_214289638(uint64_t a1)
{
  v2 = sub_21431A108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214289674(uint64_t a1)
{
  v2 = sub_21431A108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142896B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Chatbot.VerificationInfo(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BE70, &qword_2146F69E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431A108();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v17;
    sub_214328930(&qword_27C90BE80, type metadata accessor for Chatbot.VerificationInfo);
    v14 = v18;
    sub_2146DA1C8();
    (*(v8 + 8))(v11, v7);
    sub_214328704(v14, v13, type metadata accessor for Chatbot.VerificationInfo);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142898BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BE88, &qword_2146F69F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431A108();
  sub_2146DAA28();
  type metadata accessor for Chatbot.VerificationInfo(0);
  sub_214328930(&qword_27C90BE90, type metadata accessor for Chatbot.VerificationInfo);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_214289A4C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BE88, &qword_2146F69F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431A108();
  sub_2146DAA28();
  type metadata accessor for Chatbot.VerificationInfo(0);
  sub_214328930(&qword_27C90BE90, type metadata accessor for Chatbot.VerificationInfo);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_214289BC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v25 - v12);
  v14 = *a2;
  sub_2143287C0(a1, a5, type metadata accessor for Chatbot.BotInfo);
  v15 = type metadata accessor for Chatbot.Info(0);
  sub_213FB2E54(a4, a5 + v15[7], &qword_27C90BE98, &qword_2146F69F8);
  v16 = v15[6];
  sub_2145C25D8((a5 + v16));
  *(a5 + v15[5]) = v14;
  v26 = v16;
  sub_213FB2E54(a5 + v16, v13, &qword_27C903F38, &unk_2146E9D40);
  v17 = *v13;
  v18 = v13[1];
  v28 = *(v13 + *(v10 + 32));
  v27[0] = 0xD000000000000022;
  v27[1] = 0x8000000214792E70;
  v27[2] = 0xD00000000000001CLL;
  v27[3] = 0x800000021478A360;
  v19 = v25;
  v20 = v17(a3, &v28, v27);
  if (v19)
  {
    sub_213FB2DF4(a4, &qword_27C90BE98, &qword_2146F69F8);
    sub_213FB2DF4(a3, &unk_27C9131A0, &unk_2146E9D10);
    sub_21432887C(a1, type metadata accessor for Chatbot.BotInfo);
  }

  else
  {
    if (v20)
    {

      sub_213FB2DF4(a4, &qword_27C90BE98, &qword_2146F69F8);
      sub_21432887C(a1, type metadata accessor for Chatbot.BotInfo);
      v21 = *(v10 + 28);
      sub_213FB2DF4(v13 + v21, &qword_27C903F40, &unk_2146F1C50);
      sub_21408AC04(a3, v13 + v21, &unk_27C9131A0, &unk_2146E9D10);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      (*(*(v22 - 8) + 56))(v13 + v21, 0, 1, v22);
      return sub_21402EDB8(v13, a5 + v26, &qword_27C903F38, &unk_2146E9D40);
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000022;
    v24[1] = 0x8000000214792E70;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a4, &qword_27C90BE98, &qword_2146F69F8);
    sub_213FB2DF4(a3, &unk_27C9131A0, &unk_2146E9D10);
    sub_21432887C(a1, type metadata accessor for Chatbot.BotInfo);
  }

  sub_21402EDB8(v13, a5 + v26, &qword_27C903F38, &unk_2146E9D40);
  return sub_21432887C(a5, type metadata accessor for Chatbot.Info);
}

unint64_t sub_214289F74()
{
  v1 = 0x6F666E49746F62;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0x6669726556746F62;
  }

  if (*v0)
  {
    v1 = 0x6574736973726570;
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

uint64_t sub_21428A00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214384B90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21428A034(uint64_t a1)
{
  v2 = sub_21431A15C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21428A070(uint64_t a1)
{
  v2 = sub_21431A15C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21428A0AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v45 = &v39 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BE98, &qword_2146F69F8);
  v5 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v39 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v42 = *(v47 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v39 - v8;
  v49 = type metadata accessor for Chatbot.BotInfo(0);
  v10 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BEA0, &qword_2146F6A00);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  v17 = type metadata accessor for Chatbot.Info(0);
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v21 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_21431A15C();
  v23 = v51;
  sub_2146DAA08();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v24 = v50;
  v41 = v9;
  v25 = v48;
  LOBYTE(v53[0]) = 0;
  sub_214328930(&qword_27C90BEB0, type metadata accessor for Chatbot.BotInfo);
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BEB8, &qword_2146F6A08);
  v54 = 1;
  sub_21431A1B0();
  sub_2146DA1C8();
  v51 = v12;
  v49 = v53[0];
  LOBYTE(v53[0]) = 2;
  sub_2142E27A8();
  sub_2146DA1C8();
  LOBYTE(v53[0]) = 3;
  sub_21431A288();
  sub_2146DA1C8();
  v40 = v16;
  v46 = v13;
  v27 = v41;
  sub_2143287C0(v51, v20, type metadata accessor for Chatbot.BotInfo);
  sub_213FB2E54(v24, &v20[v17[7]], &qword_27C90BE98, &qword_2146F69F8);
  v28 = v17[6];
  sub_2145C25D8(&v20[v28]);
  *&v20[v17[5]] = v49;
  v49 = v28;
  v39 = v20;
  v29 = &v20[v28];
  v30 = v45;
  sub_213FB2E54(v29, v45, &qword_27C903F38, &unk_2146E9D40);
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = v44;
  v54 = *(v30 + *(v44 + 32));
  v53[0] = 0xD000000000000022;
  v53[1] = 0x8000000214792E70;
  v53[2] = 0xD00000000000001CLL;
  v53[3] = 0x800000021478A360;
  if (v31(v27, &v54, v53))
  {

    sub_213FB2DF4(v24, &qword_27C90BE98, &qword_2146F69F8);
    sub_21432887C(v51, type metadata accessor for Chatbot.BotInfo);
    (*(v25 + 8))(v40, v46);
    v34 = *(v33 + 28);
    v35 = v45;
    sub_213FB2DF4(v45 + v34, &qword_27C903F40, &unk_2146F1C50);
    sub_21408AC04(v41, v35 + v34, &unk_27C9131A0, &unk_2146E9D10);
    (*(v42 + 56))(v35 + v34, 0, 1, v47);
    v36 = v39;
    sub_21402EDB8(v35, &v39[v49], &qword_27C903F38, &unk_2146E9D40);
    sub_214328704(v36, v43, type metadata accessor for Chatbot.Info);
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  sub_214031C4C();
  swift_allocError();
  *v37 = 0xD000000000000022;
  v37[1] = 0x8000000214792E70;
  v37[2] = 0xD00000000000001CLL;
  v37[3] = 0x800000021478A360;
  swift_willThrow();
  sub_213FB2DF4(v24, &qword_27C90BE98, &qword_2146F69F8);
  sub_213FB2DF4(v41, &unk_27C9131A0, &unk_2146E9D10);
  sub_21432887C(v51, type metadata accessor for Chatbot.BotInfo);
  (*(v25 + 8))(v40, v46);
  v38 = v39;
  sub_21402EDB8(v45, &v39[v49], &qword_27C903F38, &unk_2146E9D40);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return sub_21432887C(v38, type metadata accessor for Chatbot.Info);
}

uint64_t sub_21428A8B4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BEE0, &qword_2146F6A10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431A15C();
  sub_2146DAA28();
  v36 = 0;
  type metadata accessor for Chatbot.BotInfo(0);
  sub_214328930(&qword_27C90BEE8, type metadata accessor for Chatbot.BotInfo);
  v17 = v31;
  sub_2146DA388();
  if (v17)
  {
    return (*(v12 + 8))(v15, v11);
  }

  v28 = v10;
  v31 = v12;
  v19 = v30;
  v20 = type metadata accessor for Chatbot.Info(0);
  v32 = *(v2 + v20[5]);
  v35 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BEB8, &qword_2146F6A08);
  sub_21431A33C();
  sub_2146DA388();

  v21 = v20[6];
  v27 = v2;
  v22 = v2 + v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v22 + *(v23 + 28), v19, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v29 + 48))(v19, 1, v7) != 1)
  {
    v24 = v19;
    v25 = v28;
    sub_21408AC04(v24, v28, &unk_27C9131A0, &unk_2146E9D10);
    v34 = 2;
    sub_2142E2910();
    sub_2146DA388();
    sub_213FB2DF4(v25, &unk_27C9131A0, &unk_2146E9D10);
    v12 = v31;
    v26 = v20[7];
    v33 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BE98, &qword_2146F69F8);
    sub_21431A414();
    sub_2146DA388();
    return (*(v12 + 8))(v15, v11);
  }

  sub_213FB2DF4(v19, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21428AD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  LOBYTE(v19) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 100;
  *(v9 + 24) = v19;
  *(v8 + 16) = sub_21438F518;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_214042B80(inited, &v19);
  v10 = v19;
  v11 = v20;
  v12 = v23;
  v18[0] = a1;
  v18[1] = a2;
  v24 = v23;
  v19 = 0xD00000000000001ALL;
  v20 = 0x8000000214792EA0;
  v21 = 0xD00000000000001CLL;
  v22 = 0x800000021478A360;

  v13 = v10(v18, &v24, &v19);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = v10;
      *(a4 + 8) = v11;
      *(a4 + 16) = a1;
      *(a4 + 24) = a2;
      *(a4 + 32) = v12;
      *(a4 + 40) = a3;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD00000000000001ALL;
    v15[1] = 0x8000000214792EA0;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_21428AF94(uint64_t a1)
{
  v2 = sub_21431A4C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21428AFD0(uint64_t a1)
{
  v2 = sub_21431A4C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21428B00C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BF10, &qword_2146F6A18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431A4C8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v33 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BF20, &qword_2146F6A20);
  LOBYTE(v34[0]) = 1;
  sub_21431A51C();
  sub_2146DA1C8();
  v32 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  LOBYTE(v35) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = 100;
  *(v17 + 24) = v35;
  *(v16 + 16) = sub_21438F518;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  sub_214042B80(inited, &v35);
  v19 = v35;
  v18 = v36;
  v20 = v38;
  v34[0] = v33;
  v34[1] = v13;
  v40 = v39;
  v41 = v39;
  v35 = 0xD00000000000001ALL;
  v36 = 0x8000000214792EA0;
  v29 = 0x800000021478A360;
  v30 = 0x8000000214792EA0;
  v37 = 0xD00000000000001CLL;
  v38 = 0x800000021478A360;
  v31 = v20;

  v28 = v19;
  v21 = v19(v34, &v41, &v35);
  v27 = v13;
  v22 = v29;
  v23 = v30;
  if (v21)
  {

    (*(v6 + 8))(v9, v5);

    v24 = v27;
    *a2 = v28;
    *(a2 + 8) = v18;
    v25 = v32;
    *(a2 + 16) = v33;
    *(a2 + 24) = v24;
    *(a2 + 32) = v40;
    *(a2 + 40) = v25;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD00000000000001ALL;
    v26[1] = v23;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = v22;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21428B454(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BF38, &qword_2146F6A28);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = v1[2];
  v8 = v1[3];
  v13 = v1[5];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431A4C8();
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BF20, &qword_2146F6A20);
      sub_21431A5D0();
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

uint64_t sub_21428B6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  LOBYTE(v19) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 100;
  *(v9 + 24) = v19;
  *(v8 + 16) = sub_21438F518;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_214042B80(inited, &v19);
  v10 = v19;
  v11 = v20;
  v12 = v23;
  v18[0] = a1;
  v18[1] = a2;
  v24 = v23;
  v19 = 0xD00000000000001ALL;
  v20 = 0x8000000214792EC0;
  v21 = 0xD00000000000001CLL;
  v22 = 0x800000021478A360;

  v13 = v10(v18, &v24, &v19);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = v10;
      *(a4 + 8) = v11;
      *(a4 + 16) = a1;
      *(a4 + 24) = a2;
      *(a4 + 32) = v12;
      *(a4 + 40) = a3;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD00000000000001ALL;
    v15[1] = 0x8000000214792EC0;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_21428B8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5479616C70736964 && a2 == 0xEB00000000747865;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
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

uint64_t sub_21428B9B4(uint64_t a1)
{
  v2 = sub_21431A684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21428B9F0(uint64_t a1)
{
  v2 = sub_21431A684();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21428BA2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BF50, &qword_2146F6A30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431A684();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v33 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BF60, &qword_2146F6A38);
  LOBYTE(v34[0]) = 1;
  sub_21431A6D8();
  sub_2146DA1C8();
  v32 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  LOBYTE(v35) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = 100;
  *(v17 + 24) = v35;
  *(v16 + 16) = sub_21438F518;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  sub_214042B80(inited, &v35);
  v19 = v35;
  v18 = v36;
  v20 = v38;
  v34[0] = v33;
  v34[1] = v13;
  v40 = v39;
  v41 = v39;
  v35 = 0xD00000000000001ALL;
  v36 = 0x8000000214792EC0;
  v29 = 0x800000021478A360;
  v30 = 0x8000000214792EC0;
  v37 = 0xD00000000000001CLL;
  v38 = 0x800000021478A360;
  v31 = v20;

  v28 = v19;
  v21 = v19(v34, &v41, &v35);
  v27 = v13;
  v22 = v29;
  v23 = v30;
  if (v21)
  {

    (*(v6 + 8))(v9, v5);

    v24 = v27;
    *a2 = v28;
    *(a2 + 8) = v18;
    v25 = v32;
    *(a2 + 16) = v33;
    *(a2 + 24) = v24;
    *(a2 + 32) = v40;
    *(a2 + 40) = v25;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD00000000000001ALL;
    v26[1] = v23;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = v22;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21428BE74(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BF78, &qword_2146F6A40);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = v1[2];
  v8 = v1[3];
  v13 = v1[5];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431A684();
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BF60, &qword_2146F6A38);
      sub_21431A78C();
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

uint64_t sub_21428C0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
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

uint64_t sub_21428C154(uint64_t a1)
{
  v2 = sub_21431A840();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21428C190(uint64_t a1)
{
  v2 = sub_21431A840();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21428C1CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BF90, &qword_2146F6A48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431A840();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BFA0, &qword_2146F6A50);
    sub_21431A894();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21428C34C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BFB8, &qword_2146F6A58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431A840();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BFA0, &qword_2146F6A50);
  sub_21431A948();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_21428C4F0@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2145C27C0(&v32);
  v8 = v32;
  v9 = v33;
  v10 = v35;
  *v43 = *v37;
  *&v43[3] = *&v37[3];
  v26 = v39;
  v27 = v38;
  v21 = v40;
  v22 = v34;
  v29 = v41;
  v30 = a1;
  v28 = v42;
  v24 = v36;
  v44 = v36;
  v31 = a2;
  v32 = 0xD000000000000015;
  v33 = 0x8000000214792EE0;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  v25 = v8;
  v11 = v8(&v30, &v44, &v32);
  if (v5)
  {

    a1 = v22;
LABEL_6:
    v12 = v28;
    v13 = v26;
    v14 = v27;
LABEL_7:

    v32 = v25;
    v33 = v9;
    v34 = a1;
    v35 = v10;
    v36 = v24;
    *v37 = *v43;
    *&v37[3] = *&v43[3];
    v38 = v14;
    v39 = v13;
    v40 = v21;
    v41 = v29;
    v42 = v12;
    return sub_21431A9FC(&v32);
  }

  if ((v11 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD000000000000015;
    v16[1] = 0x8000000214792EE0;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();

    a1 = v22;
    goto LABEL_6;
  }

  v30 = a3;
  v31 = a4;
  v12 = v28;
  v44 = v28;
  v32 = 0xD000000000000022;
  v33 = 0x8000000214792F00;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  v13 = v26;

  v14 = v27;
  v15 = v27(&v30, &v44, &v32);
  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD000000000000022;
    v18[1] = 0x8000000214792F00;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    v10 = a2;
    goto LABEL_7;
  }

  result = swift_bridgeObjectRelease_n();
  *a5 = v25;
  *(a5 + 8) = v9;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = v24;
  *(a5 + 33) = *v43;
  *(a5 + 36) = *&v43[3];
  *(a5 + 40) = v27;
  *(a5 + 48) = v26;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v28;
  return result;
}

unint64_t sub_21428C874()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 1635017060;
  }

  *v0;
  return result;
}

uint64_t sub_21428C8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000214797790 == a2)
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

uint64_t sub_21428C990(uint64_t a1)
{
  v2 = sub_21431AA50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21428C9CC(uint64_t a1)
{
  v2 = sub_21431AA50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21428CA08@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BFD0, &qword_2146F6A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431AA50();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v54) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v47 = a2;
  v14 = v11;
  v65 = 1;
  v36 = sub_2146DA168();
  v42 = v16;
  v67 = v14;
  sub_2145C27C0(&v54);
  v17 = v55;
  v48 = v54;
  v18 = v57;
  v37 = v56;
  v66[0] = *v59;
  *(v66 + 3) = *&v59[3];
  v43 = v60;
  v46 = v61;
  v38 = v62;
  v45 = v63;
  v44 = v64;
  *&v49 = v67;
  v40 = v13;
  *(&v49 + 1) = v13;
  v41 = v58;
  LOBYTE(v53[0]) = v58;
  v54 = 0xD000000000000015;
  v55 = 0x8000000214792EE0;
  v56 = 0xD00000000000001CLL;
  v57 = 0x800000021478A360;
  v39 = v18;

  v19 = v48(&v49, v53, &v54);
  v20 = v39;
  v35 = v17;
  if (v19)
  {

    v53[0] = v36;
    v53[1] = v42;
    LOBYTE(v49) = v44;
    v54 = 0xD000000000000022;
    v55 = 0x8000000214792F00;
    v56 = 0xD00000000000001CLL;
    v57 = 0x800000021478A360;

    v21 = v43(v53, &v49, &v54);
    v20 = v40;
    if (v21)
    {

      (*(v6 + 8))(v9, v5);

      v24 = v46;

      v25 = v48;
      *&v49 = v48;
      v26 = v35;
      *(&v49 + 1) = v35;
      *&v50 = v67;
      *(&v50 + 1) = v20;
      v27 = v41;
      LOBYTE(v51) = v41;
      *(&v51 + 1) = v66[0];
      DWORD1(v51) = *(v66 + 3);
      v28 = v43;
      *(&v51 + 1) = v43;
      *v52 = v24;
      *&v52[8] = v36;
      *&v52[16] = v42;
      v29 = v44;
      v52[24] = v44;
      v30 = v49;
      v31 = v47;
      *(v47 + 57) = *&v52[9];
      v32 = v50;
      v33 = *v52;
      v31[2] = v51;
      v31[3] = v33;
      *v31 = v30;
      v31[1] = v32;
      sub_21431AAA4(&v49, &v54);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v54 = v25;
      v55 = v26;
      v56 = v67;
      v57 = v20;
      v58 = v27;
      *v59 = v66[0];
      *&v59[3] = *(v66 + 3);
      v60 = v28;
      v61 = v24;
      v62 = v36;
      v63 = v42;
      v64 = v29;
      return sub_21431A9FC(&v54);
    }

    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD000000000000022;
    v34[1] = 0x8000000214792F00;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = 0x800000021478A360;
    swift_willThrow();

    v23 = v35;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000015;
    v22[1] = 0x8000000214792EE0;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();

    v23 = v35;
    v67 = v37;
  }

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
  v54 = v48;
  v55 = v23;
  v56 = v67;
  v57 = v20;
  v58 = v41;
  *v59 = v66[0];
  *&v59[3] = *(v66 + 3);
  v60 = v43;
  v61 = v46;
  v62 = v38;
  v63 = v45;
  v64 = v44;
  return sub_21431A9FC(&v54);
}

uint64_t sub_21428D150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  LOBYTE(v23) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 100;
  *(v10 + 24) = v23;
  *(v9 + 16) = sub_21438F518;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  sub_214042B80(inited, &v23);
  v11 = *a3;
  *&v35[23] = a3[1];
  v12 = a3[3];
  *&v35[39] = a3[2];
  *&v35[55] = v12;
  *&v35[64] = *(a3 + 57);
  v14 = v23;
  v13 = v24;
  v15 = v26;
  v36 = v25;
  v16 = v27;
  *&v35[7] = v11;
  v34[0] = a1;
  v34[1] = a2;
  v33 = v27;
  v23 = 0xD000000000000024;
  v24 = 0x8000000214792F30;
  v25 = 0xD00000000000001CLL;
  v26 = 0x800000021478A360;

  v17 = v14(v34, &v33, &v23);
  if (v4)
  {
  }

  else
  {
    if (v17)
    {

      result = swift_bridgeObjectRelease_n();
      v19 = *v35;
      *(a4 + 49) = *&v35[16];
      v20 = *&v35[48];
      *(a4 + 65) = *&v35[32];
      *(a4 + 81) = v20;
      *(a4 + 97) = *&v35[64];
      *a4 = v14;
      *(a4 + 8) = v13;
      *(a4 + 16) = a1;
      *(a4 + 24) = a2;
      *(a4 + 32) = v16;
      *(a4 + 33) = v19;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000024;
    v21[1] = 0x8000000214792F30;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
  }

  v29 = *&v35[16];
  v30 = *&v35[32];
  v31 = *&v35[48];
  v32 = *&v35[64];
  v23 = v14;
  v24 = v13;
  v25 = v36;
  v26 = v15;
  v27 = v16;
  v28 = *v35;
  return sub_21431AB00(&v23);
}

uint64_t sub_21428D3F4()
{
  if (*v0)
  {
    result = 0x6B63616274736F70;
  }

  else
  {
    result = 0x5479616C70736964;
  }

  *v0;
  return result;
}

uint64_t sub_21428D438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5479616C70736964 && a2 == 0xEB00000000747865;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xE800000000000000)
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

uint64_t sub_21428D518(uint64_t a1)
{
  v2 = sub_21431AB54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21428D554(uint64_t a1)
{
  v2 = sub_21431AB54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21428D590@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BFE8, &unk_2146F6A70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21431AB54();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v44 = a2;
  v45 = v6;
  LOBYTE(v49) = 0;
  v12 = sub_2146DA168();
  v14 = v13;
  v43 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BFF8, &qword_214763E40);
  v65 = 1;
  sub_21431ABA8();
  sub_2146DA1C8();
  v62 = v67;
  v63 = v68;
  *v64 = v69[0];
  *&v64[9] = *(v69 + 9);
  v61 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v17 = v14;
  v18 = swift_allocObject();
  LOBYTE(v49) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = 100;
  *(v19 + 24) = v49;
  *(v18 + 16) = sub_21438F518;
  *(v18 + 24) = v19;
  *(inited + 32) = v18;
  sub_213FB2E54(&v61, &v49, &qword_27C90BFF8, &qword_214763E40);
  sub_214042B80(inited, &v49);
  *(&v60[1] + 7) = v62;
  *(&v60[2] + 7) = v63;
  *(&v60[3] + 7) = *v64;
  v60[4] = *&v64[9];
  v21 = v49;
  v20 = v50;
  v22 = v52;
  v39 = v51;
  *(v60 + 7) = v61;
  v59[0] = v43;
  v59[1] = v17;
  v41 = v53;
  LOBYTE(v46) = v53;
  v49 = 0xD000000000000024;
  v50 = 0x8000000214792F30;
  v51 = 0xD00000000000001CLL;
  v52 = 0x800000021478A360;
  v40 = v22;

  v42 = v21;
  v23 = v21(v59, &v46, &v49);
  v38 = v17;
  if (v23)
  {

    sub_213FB2DF4(&v61, &qword_27C90BFF8, &qword_214763E40);
    (*(v45 + 8))(v9, v5);

    v24 = v42;
    v25 = v43;
    *&v46 = v42;
    *(&v46 + 1) = v20;
    v26 = v38;
    *&v47 = v43;
    *(&v47 + 1) = v38;
    v27 = v41;
    v48[0] = v41;
    *&v48[1] = v60[0];
    *&v48[17] = v60[1];
    *&v48[65] = v60[4];
    *&v48[49] = v60[3];
    *&v48[33] = v60[2];
    v28 = v46;
    v29 = v47;
    v30 = *&v48[16];
    v31 = v44;
    *(v44 + 32) = *v48;
    *(v31 + 48) = v30;
    *v31 = v28;
    *(v31 + 16) = v29;
    v32 = *&v48[32];
    v33 = *&v48[48];
    v34 = *&v48[64];
    *(v31 + 112) = v48[80];
    *(v31 + 80) = v33;
    *(v31 + 96) = v34;
    *(v31 + 64) = v32;
    sub_21431AC80(&v46, &v49);
    __swift_destroy_boxed_opaque_existential_1(v70);
    v55 = v60[1];
    v56 = v60[2];
    v57 = v60[3];
    v58 = v60[4];
    v49 = v24;
    v50 = v20;
    v51 = v25;
    v52 = v26;
    v53 = v27;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD000000000000024;
    v35[1] = 0x8000000214792F30;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(&v61, &qword_27C90BFF8, &qword_214763E40);
    (*(v45 + 8))(v9, v5);
    v36 = v40;

    __swift_destroy_boxed_opaque_existential_1(v70);
    v55 = v60[1];
    v56 = v60[2];
    v57 = v60[3];
    v58 = v60[4];
    v49 = v42;
    v50 = v20;
    v51 = v39;
    v52 = v36;
    v53 = v41;
  }

  v54 = v60[0];
  return sub_21431AB00(&v49);
}

uint64_t sub_21428DB1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C010, &qword_2146F6A80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 56);
  v11 = *(v1 + 88);
  v24 = *(v1 + 72);
  v25[0] = v11;
  *(v25 + 9) = *(v1 + 97);
  v22 = *(v1 + 40);
  v23 = v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431AB54();
  sub_2146DAA28();
  if (v8)
  {
    LOBYTE(v18) = 0;

    v13 = v26;
    sub_2146DA328();
    if (v13)
    {
      (*(v4 + 8))(v7, v3);
    }

    else
    {

      v20 = v24;
      v21[0] = v25[0];
      *(v21 + 9) = *(v25 + 9);
      v18 = v22;
      v19 = v23;
      v17 = 1;
      sub_213FB2E54(&v22, v15, &qword_27C90BFF8, &qword_214763E40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90BFF8, &qword_214763E40);
      sub_21431ACDC();
      sub_2146DA388();
      v15[2] = v20;
      *v16 = v21[0];
      *&v16[9] = *(v21 + 9);
      v15[1] = v19;
      v15[0] = v18;
      sub_213FB2DF4(v15, &qword_27C90BFF8, &qword_214763E40);
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

__n128 sub_21428DE0C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = *(a1 + 112);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

uint64_t sub_21428DE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL)
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

uint64_t sub_21428DEC8(uint64_t a1)
{
  v2 = sub_21431ADB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21428DF04(uint64_t a1)
{
  v2 = sub_21431ADB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21428DF40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C028, &qword_2146F6A88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431ADB4();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21431AE08();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v20;
    *(a2 + 64) = v19;
    *(a2 + 80) = v11;
    *(a2 + 96) = v21;
    *(a2 + 112) = v22;
    v12 = v16;
    *a2 = *&v15[8];
    *(a2 + 16) = v12;
    v13 = v18;
    *(a2 + 32) = v17;
    *(a2 + 48) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21428E0DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C040, &qword_2146F6A90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = v1[5];
  v27 = v1[4];
  v28 = v8;
  v29 = v1[6];
  v30 = *(v1 + 112);
  v9 = v1[1];
  v23 = *v1;
  v24 = v9;
  v10 = v1[3];
  v25 = v1[2];
  v26 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431AC80(&v23, &v15);
  sub_21431ADB4();
  sub_2146DAA28();
  v19 = v27;
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v18 = v26;
  sub_21431AE5C();
  sub_2146DA388();
  v13[4] = v19;
  v13[5] = v20;
  v13[6] = v21;
  v14 = v22;
  v13[0] = v15;
  v13[1] = v16;
  v13[2] = v17;
  v13[3] = v18;
  sub_21431AB00(v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_21428E2E8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = *a3;
  v29 = *a4;
  sub_2145C2910(&v34);
  v11 = v34;
  v10 = v35;
  v12 = v37;
  v24 = v36;
  v13 = v38;
  sub_2145C2BC8(&v48);
  v27 = v48;
  v31 = v49;
  v32 = v50;
  v33 = v51;
  v25 = v52;
  v48 = a1;
  v49 = a2;
  v26 = v13;
  v55 = v13;
  v34 = 0xD000000000000023;
  v35 = 0x8000000214792F60;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  v14 = v11(&v48, &v55, &v34);
  if (v7)
  {

LABEL_6:

    v17 = v27;

    a1 = v24;
    v15 = v25;
LABEL_7:
    v34 = v11;
    v35 = v10;
    v36 = a1;
    v37 = v12;
    v38 = v26;
    v39 = v28;
    v40 = v29;
    v41 = v53;
    v42 = v54;
    v43 = v17;
    v44 = v31;
    v45 = v32;
    v46 = v33;
    v47 = v15;
    return sub_21431AEB0(&v34);
  }

  v21 = a2;
  if ((v14 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD000000000000023;
    v18[1] = 0x8000000214792F60;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v48 = a5;
  v49 = a6;
  v15 = v25;
  v55 = v25;
  v34 = 0xD000000000000024;
  v35 = 0x8000000214792F90;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  sub_213FDC9D0(v32, v33);
  v16 = v27(&v48, &v55, &v34);
  v17 = v27;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000024;
    v20[1] = 0x8000000214792F90;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v32, v33);
    v12 = v21;
    goto LABEL_7;
  }

  sub_213FDC6D0(v32, v33);

  result = sub_213FDC6D0(v32, v33);
  *a7 = v11;
  *(a7 + 8) = v10;
  *(a7 + 16) = a1;
  *(a7 + 24) = v21;
  *(a7 + 32) = v26;
  *(a7 + 33) = v28;
  *(a7 + 34) = v29;
  *(a7 + 40) = v27;
  *(a7 + 48) = v31;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
  *(a7 + 72) = v25;
  return result;
}

uint64_t sub_21428E68C()
{
  v1 = 0x6E697274536C7275;
  v2 = 0x65646F4D77656976;
  if (*v0 != 2)
  {
    v2 = 0x6574656D61726170;
  }

  if (*v0)
  {
    v1 = 0x746163696C707061;
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

uint64_t sub_21428E71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214384D0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21428E744(uint64_t a1)
{
  v2 = sub_21431AF04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21428E780(uint64_t a1)
{
  v2 = sub_21431AF04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21428E7BC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C050, &qword_2146F6A98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431AF04();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v56) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v74 = v11;
  LOBYTE(v51) = 1;
  sub_21431AF58();
  sub_2146DA1C8();
  v14 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C068, &qword_2146F6AA0);
  LOBYTE(v51) = 2;
  sub_21431AFAC();
  sub_2146DA1C8();
  v49 = v14;
  v50 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v69 = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v36 = v70;
  v43 = v71;
  sub_2145C2910(&v56);
  v16 = v57;
  v48 = v56;
  v37 = v58;
  v47 = v59;
  v17 = v60;
  sub_2145C2BC8(&v51);
  v44 = *(&v51 + 1);
  v41 = v51;
  v46 = v52;
  v42 = v53;
  *&v51 = v74;
  *(&v51 + 1) = v13;
  v40 = v17;
  LOBYTE(v55[0]) = v17;
  v56 = 0xD000000000000023;
  v57 = 0x8000000214792F60;
  v38 = 0x8000000214792F60;
  v58 = 0xD00000000000001CLL;
  v59 = 0x800000021478A360;
  v45 = 0x800000021478A360;

  v39 = v16;
  v18 = v48(&v51, v55, &v56);
  v19 = v38;
  if (v18)
  {

    v20 = v39;

    v55[0] = v36;
    v55[1] = v43;
    LOBYTE(v51) = v42;
    v56 = 0xD000000000000024;
    v57 = 0x8000000214792F90;
    v47 = 0x8000000214792F90;
    v58 = 0xD00000000000001CLL;
    v59 = v45;

    sub_213FDC9D0(v46, *(&v46 + 1));
    v21 = v41(v55, &v51, &v56);
    v25 = v47;
    if (v21)
    {
      sub_213FDC6D0(v46, *(&v46 + 1));

      (*(v6 + 8))(v9, v5);
      v26 = v44;

      sub_213FDC6D0(v46, *(&v46 + 1));
      *&v51 = v48;
      *(&v51 + 1) = v20;
      v27 = v74;
      *&v52 = v74;
      *(&v52 + 1) = v13;
      LOBYTE(v53) = v40;
      v28 = v49;
      BYTE1(v53) = v49;
      BYTE2(v53) = v50;
      v29 = v41;
      *(&v53 + 1) = v41;
      *v54 = v26;
      *&v54[8] = v36;
      *&v54[16] = v43;
      v30 = v42;
      v54[24] = v42;
      v31 = *v54;
      a2[2] = v53;
      a2[3] = v31;
      *(a2 + 57) = *&v54[9];
      v32 = v52;
      *a2 = v51;
      a2[1] = v32;
      sub_21431B084(&v51, &v56);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v56 = v48;
      v57 = v39;
      v58 = v27;
      v59 = v13;
      v60 = v40;
      v61 = v28;
      v62 = v50;
      v65 = v29;
      v66 = v26;
      *&v67 = v36;
      *(&v67 + 1) = v43;
      v68 = v30;
      return sub_21431AEB0(&v56);
    }

    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD000000000000024;
    v33[1] = v25;
    v34 = v45;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = v34;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);

    sub_213FDC6D0(v46, *(&v46 + 1));
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000023;
    v22[1] = v19;
    v23 = v45;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = v23;
    swift_willThrow();

    v20 = v39;
    (*(v6 + 8))(v9, v5);
    v13 = v47;

    v74 = v37;
  }

  v24 = v49;
  __swift_destroy_boxed_opaque_existential_1(a1);
  v56 = v48;
  v57 = v20;
  v58 = v74;
  v59 = v13;
  v60 = v40;
  v61 = v24;
  v62 = v50;
  v63 = v72;
  v64 = v73;
  v65 = v41;
  v66 = v44;
  v67 = v46;
  v68 = v42;
  return sub_21431AEB0(&v56);
}

uint64_t sub_21428EFD8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C080, &qword_2146F6AA8);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v19 = *(v1 + 33);
  v15 = *(v1 + 34);
  v10 = *(v1 + 56);
  v13 = *(v1 + 64);
  v14 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431AF04();
  sub_2146DAA28();
  if (!v8)
  {
    goto LABEL_6;
  }

  LOBYTE(v17) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v16 + 8))(v7, v4);
  }

  LOBYTE(v17) = v19;
  v20 = 1;
  sub_21431B0E0();
  sub_2146DA388();
  LOBYTE(v17) = v15;
  v20 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C068, &qword_2146F6AA0);
  sub_21431B134();
  sub_2146DA388();
  if (v13 == 1)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v17 = v14;
    v18 = v13;
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v16 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_21428F2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - v9);
  sub_2145C2E48(a4);
  v12 = *a4;
  v11 = *(a4 + 8);
  v13 = *(a4 + 24);
  v34 = *(a4 + 16);
  v35 = v13;
  v14 = *(a4 + 32);
  v42[0] = a1;
  v42[1] = a2;
  v43 = v14;
  v44 = v14;
  v38 = 0xD000000000000030;
  v39 = 0x8000000214792FC0;
  v40 = 0xD00000000000001CLL;
  v41 = 0x800000021478A360;

  v15 = v36;
  v36 = v12;
  v16 = v12(v42, &v44, &v38);
  if (v15)
  {

LABEL_6:

    sub_213FB2DF4(v37, &unk_27C9131A0, &unk_2146E9D10);
    v25 = *(a4 + 8);
    v26 = *(a4 + 24);

    *a4 = v36;
    *(a4 + 8) = v11;
    v27 = v35;
    *(a4 + 16) = v34;
    *(a4 + 24) = v27;
    *(a4 + 32) = v43;
    return sub_21432887C(a4, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
  }

  v33 = v7;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000030;
    v24[1] = 0x8000000214792FC0;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v17 = *(a4 + 8);
  v18 = *(a4 + 24);

  *a4 = v36;
  *(a4 + 8) = v11;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = v43;
  v19 = *(type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(0) + 20);
  sub_213FB2E54(a4 + v19, v10, &qword_27C903F38, &unk_2146E9D40);
  v20 = *v10;
  v21 = v10[1];
  LOBYTE(v42[0]) = *(v10 + *(v33 + 32));
  v38 = 0xD000000000000030;
  v39 = 0x8000000214793000;
  v40 = 0xD00000000000001CLL;
  v41 = 0x800000021478A360;
  v22 = v37;
  v23 = v20(v37, v42, &v38);
  if ((v23 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000030;
    v31[1] = 0x8000000214793000;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v22, &unk_27C9131A0, &unk_2146E9D10);
    sub_21402EDB8(v10, a4 + v19, &qword_27C903F38, &unk_2146E9D40);
    return sub_21432887C(a4, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
  }

  v29 = *(v33 + 28);
  sub_213FB2DF4(v10 + v29, &qword_27C903F40, &unk_2146F1C50);
  sub_21408AC04(v22, v10 + v29, &unk_27C9131A0, &unk_2146E9D10);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v30 - 8) + 56))(v10 + v29, 0, 1, v30);
  return sub_21402EDB8(v10, a4 + v19, &qword_27C903F38, &unk_2146E9D40);
}

uint64_t sub_21428F6FC(uint64_t a1)
{
  v2 = sub_21431B20C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21428F738(uint64_t a1)
{
  v2 = sub_21431B20C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21428F774@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v69 = (&v57 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v67 = *(v5 - 8);
  v6 = *(v67 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C0A0, &qword_2146F6AB0);
  v71 = *(v9 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - v11;
  v13 = type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_21431B20C();
  v19 = v72;
  sub_2146DAA08();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v65 = v13;
  v66 = v5;
  v72 = v16;
  LOBYTE(v74) = 0;
  v20 = sub_2146DA168();
  v22 = v21;
  v64 = v20;
  LOBYTE(v74) = 1;
  sub_2142E27A8();
  sub_2146DA1C8();
  v60 = v8;
  v24 = v72;
  sub_2145C2E48(v72);
  v26 = *v24;
  v25 = *(v24 + 8);
  v27 = *(v24 + 24);
  v59 = *(v24 + 16);
  v28 = *(v24 + 32);
  v78[0] = v64;
  v78[1] = v22;
  v61 = v22;
  v62 = v27;
  v79 = v28;
  v80 = v28;
  v74 = 0xD000000000000030;
  v75 = 0x8000000214792FC0;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v63 = v25;
  v29 = v26(v78, &v80, &v74);
  v57 = v26;
  v58 = 0x800000021478A360;
  if (v29)
  {
    v30 = v58;

    v31 = *(v24 + 8);
    v32 = *(v24 + 24);

    v33 = v63;
    v34 = v64;
    *v24 = v57;
    *(v24 + 8) = v33;
    v35 = v61;
    *(v24 + 16) = v34;
    *(v24 + 24) = v35;
    *(v24 + 32) = v79;
    v65 = *(v65 + 20);
    v36 = v24 + v65;
    v37 = v8;
    v38 = v69;
    sub_213FB2E54(v36, v69, &qword_27C903F38, &unk_2146E9D40);
    v39 = *v38;
    v40 = v38[1];
    v41 = v70;
    LOBYTE(v78[0]) = *(v38 + *(v70 + 32));
    v74 = 0xD000000000000030;
    v75 = 0x8000000214793000;
    v76 = 0xD00000000000001CLL;
    v77 = v30;
    v42 = v39(v37, v78, &v74);
    v43 = v71;
    if (v42)
    {

      (*(v43 + 8))(v12, v9);
      v53 = *(v41 + 28);
      sub_213FB2DF4(v38 + v53, &qword_27C903F40, &unk_2146F1C50);
      sub_21408AC04(v37, v38 + v53, &unk_27C9131A0, &unk_2146E9D10);
      (*(v67 + 56))(v38 + v53, 0, 1, v66);
      v54 = v72;
      sub_21402EDB8(v38, &v72[v65], &qword_27C903F38, &unk_2146E9D40);
      sub_214328704(v54, v68, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
      return __swift_destroy_boxed_opaque_existential_1(v73);
    }

    sub_214031C4C();
    swift_allocError();
    *v55 = 0xD000000000000030;
    v55[1] = 0x8000000214793000;
    v56 = v58;
    v55[2] = 0xD00000000000001CLL;
    v55[3] = v56;
    swift_willThrow();
    sub_213FB2DF4(v37, &unk_27C9131A0, &unk_2146E9D10);
    (*(v43 + 8))(v12, v9);
    v50 = v72;
    sub_21402EDB8(v38, &v72[v65], &qword_27C903F38, &unk_2146E9D40);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v44 = 0xD000000000000030;
    v44[1] = 0x8000000214792FC0;
    v45 = v58;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = v45;
    swift_willThrow();

    v46 = v71;
    v47 = v57;
    sub_213FB2DF4(v60, &unk_27C9131A0, &unk_2146E9D10);
    (*(v46 + 8))(v12, v9);
    v48 = *(v24 + 8);
    v49 = *(v72 + 3);

    v50 = v72;

    v51 = v63;
    *v50 = v47;
    *(v50 + 8) = v51;
    v52 = v62;
    *(v50 + 16) = v59;
    *(v50 + 24) = v52;
    *(v50 + 32) = v79;
  }

  __swift_destroy_boxed_opaque_existential_1(v73);
  return sub_21432887C(v50, type metadata accessor for Chatbot.DialerAction.DialPhoneNumber);
}

uint64_t sub_21428FEBC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C0B0, &qword_2146F6AB8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B20C();
  sub_2146DAA28();
  if (!*(v2 + 24))
  {
    goto LABEL_8;
  }

  v18 = *(v2 + 16);
  v28 = 0;

  v19 = v26;
  sub_2146DA328();
  if (v19)
  {
    (*(v13 + 8))(v16, v12);
  }

  v21 = v2 + *(type metadata accessor for Chatbot.DialerAction.DialPhoneNumber(0) + 20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v21 + *(v22 + 28), v7, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v24 + 48))(v7, 1, v25) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C903F40, &unk_2146F1C50);
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  sub_21408AC04(v7, v11, &unk_27C9131A0, &unk_2146E9D10);
  v27 = 1;
  sub_2142E2910();
  sub_2146DA388();
  sub_213FB2DF4(v11, &unk_27C9131A0, &unk_2146E9D10);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_21429026C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a5;
  v61 = a4;
  v55 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v52 - v11);
  sub_2145C306C(a6);
  v14 = *a6;
  v13 = *(a6 + 8);
  v15 = *(a6 + 24);
  v56 = *(a6 + 16);
  v57 = v15;
  v16 = *(a6 + 32);
  v66 = a1;
  v67 = a2;
  LODWORD(v58) = v16;
  v68 = v16;
  v62 = 0xD000000000000031;
  v63 = 0x8000000214793040;
  v64 = 0xD00000000000001CLL;
  v65 = 0x800000021478A360;

  v17 = v59;
  v59 = v14;
  v18 = v14(&v66, &v68, &v62);
  if (v17)
  {

LABEL_6:

    sub_213FB2DF4(v60, &unk_27C9131A0, &unk_2146E9D10);
    v28 = *(a6 + 8);
    v29 = *(a6 + 24);

    *a6 = v59;
    *(a6 + 8) = v13;
    v30 = v57;
    *(a6 + 16) = v56;
    *(a6 + 24) = v30;
    *(a6 + 32) = v58;
    return sub_21432887C(a6, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
  }

  v53 = v9;
  v54 = v12;
  if ((v18 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD000000000000031;
    v27[1] = 0x8000000214793040;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v19 = *(a6 + 8);
  v20 = *(a6 + 24);

  *a6 = v59;
  *(a6 + 8) = v13;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = v58;
  v22 = *(a6 + 40);
  v21 = *(a6 + 48);
  v23 = *(a6 + 56);
  v24 = *(a6 + 64);
  v25 = *(a6 + 72);
  v66 = v55;
  v67 = v61;
  LODWORD(v59) = v25;
  v68 = v25;
  v62 = 0xD00000000000002DLL;
  v63 = 0x8000000214793080;
  v64 = 0xD00000000000001CLL;
  v65 = 0x800000021478A360;

  sub_213FDC9D0(v23, v24);
  v26 = v22(&v66, &v68, &v62);
  v58 = 0x800000021478A360;
  if ((v26 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD00000000000002DLL;
    v43[1] = 0x8000000214793080;
    v44 = v58;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = v44;
    swift_willThrow();

    sub_213FB2DF4(v60, &unk_27C9131A0, &unk_2146E9D10);
    v45 = *(a6 + 48);
    v46 = *(a6 + 56);
    v47 = *(a6 + 64);

    sub_213FDC6D0(v46, v47);
    *(a6 + 40) = v22;
    *(a6 + 48) = v21;
    *(a6 + 56) = v23;
    *(a6 + 64) = v24;
    *(a6 + 72) = v59;
    return sub_21432887C(a6, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
  }

  sub_213FDC6D0(v23, v24);
  v32 = v58;

  v33 = *(a6 + 48);
  v34 = *(a6 + 56);
  v35 = *(a6 + 64);

  sub_213FDC6D0(v34, v35);
  *(a6 + 40) = v22;
  *(a6 + 48) = v21;
  v36 = v61;
  *(a6 + 56) = v55;
  *(a6 + 64) = v36;
  *(a6 + 72) = v59;
  v37 = *(type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(0) + 24);
  v38 = v54;
  sub_213FB2E54(a6 + v37, v54, &qword_27C903F38, &unk_2146E9D40);
  v39 = *v38;
  v40 = v38[1];
  v41 = v53;
  LOBYTE(v66) = *(v38 + *(v53 + 32));
  v62 = 0xD000000000000031;
  v63 = 0x80000002147930B0;
  v64 = 0xD00000000000001CLL;
  v65 = v32;
  v42 = v60;
  if ((v39(v60, &v66, &v62) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD000000000000031;
    v50[1] = 0x80000002147930B0;
    v51 = v58;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = v51;
    swift_willThrow();
    sub_213FB2DF4(v42, &unk_27C9131A0, &unk_2146E9D10);
    sub_21402EDB8(v38, a6 + v37, &qword_27C903F38, &unk_2146E9D40);
    return sub_21432887C(a6, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
  }

  v48 = *(v41 + 28);
  sub_213FB2DF4(v38 + v48, &qword_27C903F40, &unk_2146F1C50);
  sub_21408AC04(v42, v38 + v48, &unk_27C9131A0, &unk_2146E9D10);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v49 - 8) + 56))(v38 + v48, 0, 1, v49);
  return sub_21402EDB8(v38, a6 + v37, &qword_27C903F38, &unk_2146E9D40);
}

uint64_t sub_214290810()
{
  v1 = 0x7463656A627573;
  if (*v0 != 1)
  {
    v1 = 0x6B6361626C6C6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_21429087C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214384E88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142908A4(uint64_t a1)
{
  v2 = sub_21431B260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142908E0(uint64_t a1)
{
  v2 = sub_21431B260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21429091C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v92 = &v77 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v89 = *(v5 - 8);
  v6 = *(v89 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v77 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C0B8, &qword_2146F6AC0);
  v93 = *(v9 - 8);
  v10 = *(v93 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v77 - v11;
  v13 = type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_21431B260();
  v19 = v94;
  sub_2146DAA08();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v95);
  }

  v94 = v5;
  v87 = v16;
  v88 = v8;
  v20 = v93;
  LOBYTE(v96) = 0;
  v21 = sub_2146DA168();
  v23 = v22;
  v24 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v100) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v85 = v24;
  v86 = v23;
  v26 = v96;
  v25 = v97;
  LOBYTE(v96) = 2;
  sub_2142E27A8();
  sub_2146DA1C8();
  v78 = v26;
  v84 = v25;
  v28 = v87;
  sub_2145C306C(v87);
  v30 = *v28;
  v29 = v28[1];
  v31 = v28[3];
  v79 = v28[2];
  v32 = *(v28 + 32);
  v100 = v85;
  v101 = v86;
  LODWORD(v82) = v32;
  v102 = v32;
  v96 = 0xD000000000000031;
  v97 = 0x8000000214793040;
  v80 = 0x8000000214793040;
  v98 = 0xD00000000000001CLL;
  v99 = 0x800000021478A360;
  v81 = v31;

  v83 = v29;
  v33 = v30(&v100, &v102, &v96);
  v34 = v30;
  v35 = v80;
  v36 = v88;
  if (v33)
  {
    v77 = 0x800000021478A360;

    v37 = v87;
    v38 = v87[1];
    v39 = v87[3];

    v40 = v83;
    *v37 = v34;
    v37[1] = v40;
    v41 = v86;
    v37[2] = v85;
    v37[3] = v41;
    *(v37 + 32) = v82;
    v43 = v37[5];
    v42 = v37[6];
    v44 = v37[7];
    v45 = v37[8];
    v46 = *(v37 + 72);
    v100 = v78;
    v101 = v84;
    LODWORD(v86) = v46;
    v102 = v46;
    v96 = 0xD00000000000002DLL;
    v97 = 0x8000000214793080;
    v82 = 0x8000000214793080;
    v98 = 0xD00000000000001CLL;
    v99 = v77;

    v85 = v44;
    v83 = v45;
    sub_213FDC9D0(v44, v45);
    v47 = v43;
    v48 = v43(&v100, &v102, &v96);
    v55 = v88;
    if (v48)
    {
      sub_213FDC6D0(v85, v83);

      v56 = v47;
      v57 = v87;
      v58 = v87[6];
      v85 = v87[7];
      v83 = v87[8];

      sub_213FDC6D0(v85, v83);
      v57[5] = v56;
      v57[6] = v42;
      v59 = v84;
      v57[7] = v78;
      v57[8] = v59;
      *(v57 + 72) = v86;
      v50 = v57;
      v86 = *(v13 + 24);
      v60 = v92;
      sub_213FB2E54(v57 + v86, v92, &qword_27C903F38, &unk_2146E9D40);
      v61 = *v60;
      v62 = *(v60 + 8);
      v63 = v91;
      LOBYTE(v100) = *(v60 + *(v91 + 32));
      v96 = 0xD000000000000031;
      v97 = 0x80000002147930B0;
      v85 = 0x80000002147930B0;
      v98 = 0xD00000000000001CLL;
      v99 = v77;
      v64 = v61(v88, &v100, &v96);
      v72 = v85;
      if (v64)
      {

        (*(v20 + 8))(v12, v9);
        v73 = *(v63 + 28);
        v74 = v92;
        sub_213FB2DF4(v92 + v73, &qword_27C903F40, &unk_2146F1C50);
        sub_21408AC04(v88, v74 + v73, &unk_27C9131A0, &unk_2146E9D10);
        (*(v89 + 56))(v74 + v73, 0, 1, v94);
        sub_21402EDB8(v74, v50 + v86, &qword_27C903F38, &unk_2146E9D40);
        sub_214328704(v50, v90, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
        return __swift_destroy_boxed_opaque_existential_1(v95);
      }

      sub_214031C4C();
      swift_allocError();
      *v75 = 0xD000000000000031;
      v75[1] = v72;
      v76 = v77;
      v75[2] = 0xD00000000000001CLL;
      v75[3] = v76;
      swift_willThrow();
      sub_213FB2DF4(v88, &unk_27C9131A0, &unk_2146E9D10);
      (*(v20 + 8))(v12, v9);
      sub_21402EDB8(v92, v50 + v86, &qword_27C903F38, &unk_2146E9D40);
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      v65 = v82;
      *v66 = 0xD00000000000002DLL;
      v66[1] = v65;
      v67 = v77;
      v66[2] = 0xD00000000000001CLL;
      v66[3] = v67;
      swift_willThrow();

      sub_213FB2DF4(v55, &unk_27C9131A0, &unk_2146E9D10);
      (*(v20 + 8))(v12, v9);
      v50 = v87;
      v68 = v87[6];
      v69 = v87[7];
      v70 = v87[8];

      sub_213FDC6D0(v69, v70);
      v50[5] = v47;
      v50[6] = v42;
      v71 = v83;
      v50[7] = v85;
      v50[8] = v71;
      *(v50 + 72) = v86;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v49 = 0xD000000000000031;
    v49[1] = v35;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v36, &unk_27C9131A0, &unk_2146E9D10);
    (*(v20 + 8))(v12, v9);
    v50 = v87;
    v51 = v87[1];
    v52 = v87[3];

    v53 = v83;
    *v50 = v34;
    v50[1] = v53;
    v54 = v81;
    v50[2] = v79;
    v50[3] = v54;
    *(v50 + 32) = v82;
  }

  __swift_destroy_boxed_opaque_existential_1(v95);
  return sub_21432887C(v50, type metadata accessor for Chatbot.DialerAction.DialEnrichedCall);
}

uint64_t sub_2142912D0(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v28 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v26 = *(v9 - 8);
  v27 = v9;
  v10 = *(v26 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C0C8, &qword_2146F6AC8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B260();
  sub_2146DAA28();
  if (v4[3])
  {
    v19 = v4[2];
    LOBYTE(v29) = 0;

    sub_2146DA328();
    if (v3)
    {
      (*(v14 + 8))(v17, v13);
    }

    v21 = v4[8];
    if (v21 != 1)
    {
      v29 = v4[7];
      v30 = v21;
      v31 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v22 = v28;
      v23 = v4 + *(type metadata accessor for Chatbot.DialerAction.DialEnrichedCall(0) + 24);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
      sub_213FB2E54(&v23[*(v24 + 28)], v22, &qword_27C903F40, &unk_2146F1C50);
      if ((*(v26 + 48))(v22, 1, v27) != 1)
      {
        sub_21408AC04(v22, v12, &unk_27C9131A0, &unk_2146E9D10);
        LOBYTE(v29) = 2;
        sub_2142E2910();
        sub_2146DA388();
        sub_213FB2DF4(v12, &unk_27C9131A0, &unk_2146E9D10);
        return (*(v14 + 8))(v17, v13);
      }

      sub_213FB2DF4(v22, &qword_27C903F40, &unk_2146F1C50);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2142916E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - v9);
  sub_2145C371C(a4);
  v12 = *a4;
  v11 = *(a4 + 8);
  v13 = *(a4 + 24);
  v34 = *(a4 + 16);
  v35 = v13;
  v14 = *(a4 + 32);
  v42[0] = a1;
  v42[1] = a2;
  v43 = v14;
  v44 = v14;
  v38 = 0xD00000000000002ELL;
  v39 = 0x80000002147930F0;
  v40 = 0xD00000000000001CLL;
  v41 = 0x800000021478A360;

  v15 = v36;
  v36 = v12;
  v16 = v12(v42, &v44, &v38);
  if (v15)
  {

LABEL_6:

    sub_213FB2DF4(v37, &unk_27C9131A0, &unk_2146E9D10);
    v25 = *(a4 + 8);
    v26 = *(a4 + 24);

    *a4 = v36;
    *(a4 + 8) = v11;
    v27 = v35;
    *(a4 + 16) = v34;
    *(a4 + 24) = v27;
    *(a4 + 32) = v43;
    return sub_21432887C(a4, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
  }

  v33 = v7;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD00000000000002ELL;
    v24[1] = 0x80000002147930F0;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v17 = *(a4 + 8);
  v18 = *(a4 + 24);

  *a4 = v36;
  *(a4 + 8) = v11;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = v43;
  v19 = *(type metadata accessor for Chatbot.DialerAction.DialVideoCall(0) + 20);
  sub_213FB2E54(a4 + v19, v10, &qword_27C903F38, &unk_2146E9D40);
  v20 = *v10;
  v21 = v10[1];
  LOBYTE(v42[0]) = *(v10 + *(v33 + 32));
  v38 = 0xD00000000000002ELL;
  v39 = 0x8000000214793120;
  v40 = 0xD00000000000001CLL;
  v41 = 0x800000021478A360;
  v22 = v37;
  v23 = v20(v37, v42, &v38);
  if ((v23 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD00000000000002ELL;
    v31[1] = 0x8000000214793120;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v22, &unk_27C9131A0, &unk_2146E9D10);
    sub_21402EDB8(v10, a4 + v19, &qword_27C903F38, &unk_2146E9D40);
    return sub_21432887C(a4, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
  }

  v29 = *(v33 + 28);
  sub_213FB2DF4(v10 + v29, &qword_27C903F40, &unk_2146F1C50);
  sub_21408AC04(v22, v10 + v29, &unk_27C9131A0, &unk_2146E9D10);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v30 - 8) + 56))(v10 + v29, 0, 1, v30);
  return sub_21402EDB8(v10, a4 + v19, &qword_27C903F38, &unk_2146E9D40);
}

uint64_t sub_214291B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEB000000004C5255)
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

uint64_t sub_214291BE8(uint64_t a1)
{
  v2 = sub_21431B2B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214291C24(uint64_t a1)
{
  v2 = sub_21431B2B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214291C60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v69 = (&v57 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v67 = *(v5 - 8);
  v6 = *(v67 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C0D0, &qword_2146F6AD0);
  v71 = *(v9 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - v11;
  v13 = type metadata accessor for Chatbot.DialerAction.DialVideoCall(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_21431B2B4();
  v19 = v72;
  sub_2146DAA08();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v65 = v13;
  v66 = v5;
  v72 = v16;
  LOBYTE(v74) = 0;
  v20 = sub_2146DA168();
  v22 = v21;
  v64 = v20;
  LOBYTE(v74) = 1;
  sub_2142E27A8();
  sub_2146DA1C8();
  v60 = v8;
  v24 = v72;
  sub_2145C371C(v72);
  v26 = *v24;
  v25 = *(v24 + 8);
  v27 = *(v24 + 24);
  v59 = *(v24 + 16);
  v28 = *(v24 + 32);
  v78[0] = v64;
  v78[1] = v22;
  v61 = v22;
  v62 = v27;
  v79 = v28;
  v80 = v28;
  v74 = 0xD00000000000002ELL;
  v75 = 0x80000002147930F0;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v63 = v25;
  v29 = v26(v78, &v80, &v74);
  v57 = v26;
  v58 = 0x800000021478A360;
  if (v29)
  {
    v30 = v58;

    v31 = *(v24 + 8);
    v32 = *(v24 + 24);

    v33 = v63;
    v34 = v64;
    *v24 = v57;
    *(v24 + 8) = v33;
    v35 = v61;
    *(v24 + 16) = v34;
    *(v24 + 24) = v35;
    *(v24 + 32) = v79;
    v65 = *(v65 + 20);
    v36 = v24 + v65;
    v37 = v8;
    v38 = v69;
    sub_213FB2E54(v36, v69, &qword_27C903F38, &unk_2146E9D40);
    v39 = *v38;
    v40 = v38[1];
    v41 = v70;
    LOBYTE(v78[0]) = *(v38 + *(v70 + 32));
    v74 = 0xD00000000000002ELL;
    v75 = 0x8000000214793120;
    v76 = 0xD00000000000001CLL;
    v77 = v30;
    v42 = v39(v37, v78, &v74);
    v43 = v71;
    if (v42)
    {

      (*(v43 + 8))(v12, v9);
      v53 = *(v41 + 28);
      sub_213FB2DF4(v38 + v53, &qword_27C903F40, &unk_2146F1C50);
      sub_21408AC04(v37, v38 + v53, &unk_27C9131A0, &unk_2146E9D10);
      (*(v67 + 56))(v38 + v53, 0, 1, v66);
      v54 = v72;
      sub_21402EDB8(v38, &v72[v65], &qword_27C903F38, &unk_2146E9D40);
      sub_214328704(v54, v68, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
      return __swift_destroy_boxed_opaque_existential_1(v73);
    }

    sub_214031C4C();
    swift_allocError();
    *v55 = 0xD00000000000002ELL;
    v55[1] = 0x8000000214793120;
    v56 = v58;
    v55[2] = 0xD00000000000001CLL;
    v55[3] = v56;
    swift_willThrow();
    sub_213FB2DF4(v37, &unk_27C9131A0, &unk_2146E9D10);
    (*(v43 + 8))(v12, v9);
    v50 = v72;
    sub_21402EDB8(v38, &v72[v65], &qword_27C903F38, &unk_2146E9D40);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v44 = 0xD00000000000002ELL;
    v44[1] = 0x80000002147930F0;
    v45 = v58;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = v45;
    swift_willThrow();

    v46 = v71;
    v47 = v57;
    sub_213FB2DF4(v60, &unk_27C9131A0, &unk_2146E9D10);
    (*(v46 + 8))(v12, v9);
    v48 = *(v24 + 8);
    v49 = *(v72 + 3);

    v50 = v72;

    v51 = v63;
    *v50 = v47;
    *(v50 + 8) = v51;
    v52 = v62;
    *(v50 + 16) = v59;
    *(v50 + 24) = v52;
    *(v50 + 32) = v79;
  }

  __swift_destroy_boxed_opaque_existential_1(v73);
  return sub_21432887C(v50, type metadata accessor for Chatbot.DialerAction.DialVideoCall);
}

uint64_t sub_2142923A8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C0E0, &qword_2146F6AD8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B2B4();
  sub_2146DAA28();
  if (!*(v2 + 24))
  {
    goto LABEL_8;
  }

  v18 = *(v2 + 16);
  v28 = 0;

  v19 = v26;
  sub_2146DA328();
  if (v19)
  {
    (*(v13 + 8))(v16, v12);
  }

  v21 = v2 + *(type metadata accessor for Chatbot.DialerAction.DialVideoCall(0) + 20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v21 + *(v22 + 28), v7, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v24 + 48))(v7, 1, v25) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C903F40, &unk_2146F1C50);
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  sub_21408AC04(v7, v11, &unk_27C9131A0, &unk_2146E9D10);
  v27 = 1;
  sub_2142E2910();
  sub_2146DA388();
  sub_213FB2DF4(v11, &unk_27C9131A0, &unk_2146E9D10);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_214292758@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[1];
  v24 = *a1;
  v25 = v6;
  *v26 = a1[2];
  *&v26[10] = *(a1 + 42);
  sub_2145C3B6C(&v16);
  v7 = v16;
  v8 = v17;
  v23[0] = a2;
  v23[1] = a3;
  v27 = v18;
  v28 = v18;
  *&v16 = 0xD000000000000020;
  *(&v16 + 1) = 0x8000000214793150;
  *&v17 = 0xD00000000000001CLL;
  *(&v17 + 1) = 0x800000021478A360;

  sub_213FDC9D0(v8, *(&v8 + 1));
  v9 = (v7)(v23, &v28, &v16);
  if (v15)
  {
  }

  else
  {
    if (v9)
    {
      sub_213FDC6D0(v8, *(&v8 + 1));

      result = sub_213FDC6D0(v8, *(&v8 + 1));
      v11 = v25;
      *a4 = v24;
      *(a4 + 16) = v11;
      v12 = *&v26[16];
      *(a4 + 32) = *v26;
      *(a4 + 48) = v12;
      *(a4 + 64) = v7;
      *(a4 + 80) = a2;
      *(a4 + 88) = a3;
      *(a4 + 96) = v27;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD000000000000020;
    v13[1] = 0x8000000214793150;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v8, *(&v8 + 1));
  v16 = v24;
  v17 = v25;
  v18 = *v26;
  v19 = *&v26[16];
  v20 = v7;
  v21 = v8;
  v22 = v27;
  return sub_21431B308(&v16);
}

uint64_t sub_214292948()
{
  if (*v0)
  {
    result = 0x6C6562616CLL;
  }

  else
  {
    result = 0x646F6874656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_21429297C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646F6874656DLL && a2 == 0xE600000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
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

uint64_t sub_214292A50(uint64_t a1)
{
  v2 = sub_21431B35C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214292A8C(uint64_t a1)
{
  v2 = sub_21431B35C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214292AC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C0E8, &qword_2146F6AE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21431B35C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  v12 = v6;
  v41 = a2;
  v62 = 0;
  sub_21431B3B0();
  sub_2146DA1C8();
  v59 = v63;
  v60 = v64;
  *v61 = v65[0];
  *&v61[10] = *(v65 + 10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v56 = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v14 = v58;
  v38 = v57;
  sub_21431B458(&v59, &v46);
  sub_2145C3B6C(&v46);
  v15 = *(&v46 + 1);
  v40 = v46;
  v16 = v47;
  v66 = v59;
  v67 = v60;
  *v68 = *v61;
  *&v68[10] = *&v61[10];
  v55[0] = v38;
  v55[1] = v14;
  v36 = v14;
  v37 = v48;
  LOBYTE(v42[0]) = v48;
  *&v46 = 0xD000000000000020;
  *(&v46 + 1) = 0x8000000214793150;
  *&v47 = 0xD00000000000001CLL;
  *(&v47 + 1) = 0x800000021478A360;

  v35 = v16 >> 64;
  v39 = v16;
  sub_213FDC9D0(v16, *(&v16 + 1));
  v17 = v15;
  if (v40(v55, v42, &v46))
  {
    v18 = v35;
    sub_213FDC6D0(v39, v35);

    sub_21431B404(&v59);
    (*(v12 + 8))(v9, v5);
    v19 = v17;

    sub_213FDC6D0(v39, v18);
    v20 = v66;
    v21 = v67;
    v42[0] = v66;
    v42[1] = v67;
    v22 = *v68;
    v23 = *&v68[16];
    v42[2] = *v68;
    v42[3] = *&v68[16];
    v24 = v40;
    v25 = v41;
    *&v43 = v40;
    *(&v43 + 1) = v17;
    v26 = v38;
    v27 = v36;
    *&v44 = v38;
    *(&v44 + 1) = v36;
    v28 = v37;
    v45 = v37;
    *(v41 + 96) = v37;
    *v25 = v20;
    v25[1] = v21;
    v25[2] = v22;
    v25[3] = v23;
    v29 = v44;
    v25[4] = v43;
    v25[5] = v29;
    sub_21431B4B4(v42, &v46);
    __swift_destroy_boxed_opaque_existential_1(v69);
    v46 = v66;
    v47 = v67;
    v48 = *v68;
    v49 = *&v68[16];
    v50 = v24;
    v51 = v19;
    v52 = v26;
    v53 = v27;
    v54 = v28;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD000000000000020;
    v30[1] = 0x8000000214793150;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    sub_21431B404(&v59);
    (*(v12 + 8))(v9, v5);
    v31 = v15;

    v32 = v39;
    v33 = v35;
    sub_213FDC6D0(v39, v35);
    __swift_destroy_boxed_opaque_existential_1(v69);
    v46 = v66;
    v47 = v67;
    v48 = *v68;
    v49 = *&v68[16];
    v50 = v40;
    v51 = v31;
    v52 = v32;
    v53 = v33;
    v54 = v37;
  }

  return sub_21431B308(&v46);
}

uint64_t sub_214292F50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C100, &qword_2146F6AE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = v1[1];
  v25 = *v1;
  v26 = v8;
  v27[0] = v1[2];
  *(v27 + 10) = *(v1 + 42);
  v9 = *(v1 + 11);
  v14 = *(v1 + 10);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B35C();
  sub_2146DAA28();
  v22 = v25;
  v23 = v26;
  v24[0] = v27[0];
  *(v24 + 10) = *(v27 + 10);
  v21 = 0;
  sub_21431B458(&v25, &v18);
  sub_21431B510();
  v11 = v28;
  sub_2146DA388();
  if (v11)
  {
    v18 = v22;
    v19 = v23;
    *v20 = v24[0];
    *&v20[10] = *(v24 + 10);
    sub_21431B404(&v18);
    return (*(v4 + 8))(v7, v3);
  }

  v12 = v14;
  v18 = v22;
  v19 = v23;
  *v20 = v24[0];
  *&v20[10] = *(v24 + 10);
  sub_21431B404(&v18);
  if (v9 != 1)
  {
    v16 = v12;
    v17 = v9;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v4 + 8))(v7, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21429322C@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_2145C3DF8(&v31);
  v8 = v31;
  v7 = v32;
  v9 = *&v33;
  v10 = v34;
  v41 = *(&v34 + 2);
  v42 = HIWORD(v34);
  v27 = v36;
  v23 = v37;
  v24 = v35;
  v11 = v38;
  v25 = v39;
  v43 = v34;
  v40 = v38;
  v30 = v34 & 1;
  v29 = a2;
  v26 = BYTE1(v34);
  v28 = BYTE1(v34);
  v31 = 0xD00000000000002FLL;
  v32 = 0x8000000214793180;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v12 = v8(&v29, &v28, &v31);
  if (v3)
  {

LABEL_6:
    v15 = v24;

    v43 = v10 & 1;
    v13 = v25;
    v14 = v27;
LABEL_7:
    v31 = v8;
    v32 = v7;
    v33 = *&v9;
    LOBYTE(v34) = v43;
    BYTE1(v34) = v26;
    *(&v34 + 2) = v41;
    HIWORD(v34) = v42;
    v35 = v15;
    v36 = v14;
    v37 = v23;
    v38 = v40;
    v39 = v13;
    return sub_21431B564(&v31);
  }

  v22 = a1;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v17 = 0xD00000000000002FLL;
    v17[1] = 0x8000000214793180;
    v17[2] = 0xD00000000000001CLL;
    v17[3] = 0x800000021478A360;
    swift_willThrow();
    v10 = v30;
    goto LABEL_6;
  }

  v43 = 0;
  v30 = v11 & 1;
  v29 = a3;
  v13 = v25;
  v28 = v25;
  v31 = 0xD000000000000030;
  v32 = 0x80000002147931B0;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;
  v14 = v27;

  v15 = v24;
  v16 = v24(&v29, &v28, &v31);
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000030;
    v20[1] = 0x80000002147931B0;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
    v21 = v30;

    v40 = v21 & 1;
    v9 = a2;
    goto LABEL_7;
  }

  v40 = 0;
  v19 = v43;
  *v22 = v8;
  *(v22 + 8) = v7;
  *(v22 + 16) = a2;
  *(v22 + 24) = v19;
  *(v22 + 25) = v26;
  *(v22 + 26) = v41;
  *(v22 + 30) = v42;
  *(v22 + 32) = v24;
  *(v22 + 40) = v27;
  *(v22 + 48) = a3;
  *(v22 + 56) = 0;
  *(v22 + 57) = v25;
  return result;
}

uint64_t sub_214293568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
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

uint64_t sub_21429364C(uint64_t a1)
{
  v2 = sub_21431B5B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214293688(uint64_t a1)
{
  v2 = sub_21431B5B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142936C4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C110, &qword_2146F6AF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B5B8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v56) = 0;
  sub_2146DA188();
  v12 = v11;
  v65 = 1;
  sub_2146DA188();
  v15 = v14;
  sub_2145C3DF8(&v56);
  v16 = v57;
  v50 = v56;
  v17 = v58;
  v67 = *(&v59 + 2);
  v68 = HIWORD(v59);
  v47 = v60;
  v49 = v61;
  v44 = v62;
  v46 = v64;
  v69 = v59;
  v42 = v63;
  v66 = v63;
  LODWORD(v43) = v59;
  LOBYTE(v54) = v59 & 1;
  *&v51 = v12;
  v45 = BYTE1(v59);
  v55[0] = BYTE1(v59);
  v56 = 0xD00000000000002FLL;
  v57 = 0x8000000214793180;
  v58 = 0xD00000000000001CLL;
  v59 = 0x800000021478A360;

  v48 = v16;
  v18 = v50(&v51, v55, &v56);
  v41 = 0x800000021478A360;
  if (v18)
  {
    v19 = v41;
    v43 = 0;

    v69 = 0;
    v55[0] = v42 & 1;
    v54 = v15;
    v20 = v46;
    LOBYTE(v51) = v46;
    v56 = 0xD000000000000030;
    v57 = 0x80000002147931B0;
    v58 = 0xD00000000000001CLL;
    v59 = v19;

    v21 = v43;
    v22 = v47;
    v23 = v47(&v54, &v51, &v56);
    v24 = v22;
    if (v21)
    {
      (*(v6 + 8))(v9, v5);

      v25 = v42;
    }

    else
    {
      if (v23)
      {

        (*(v6 + 8))(v9, v5);
        v30 = v49;

        v66 = 0;
        v31 = v50;
        *&v51 = v50;
        v32 = v48;
        *(&v51 + 1) = v48;
        *&v52 = v12;
        v33 = v69;
        BYTE8(v52) = v69;
        v34 = v45;
        BYTE9(v52) = v45;
        *(&v52 + 10) = v67;
        HIWORD(v52) = v68;
        *v53 = v22;
        *&v53[8] = v30;
        *&v53[16] = v15;
        v53[24] = 0;
        v53[25] = v20;
        v35 = v51;
        v36 = v52;
        v37 = *v53;
        *(a2 + 42) = *&v53[10];
        a2[1] = v36;
        a2[2] = v37;
        *a2 = v35;
        sub_21431B60C(&v51, &v56);
        __swift_destroy_boxed_opaque_existential_1(a1);
        v56 = v31;
        v57 = v32;
        v58 = v12;
        LOBYTE(v59) = v33;
        BYTE1(v59) = v34;
        *(&v59 + 2) = v67;
        HIWORD(v59) = v68;
        v60 = v47;
        v61 = v30;
        v62 = v15;
        v63 = 0;
        goto LABEL_9;
      }

      sub_214031C4C();
      swift_allocError();
      *v38 = 0xD000000000000030;
      v38[1] = 0x80000002147931B0;
      v39 = v41;
      v38[2] = 0xD00000000000001CLL;
      v38[3] = v39;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      v25 = v55[0];
    }

    v66 = v25 & 1;
    v17 = v12;
    v29 = v48;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD00000000000002FLL;
    v26[1] = 0x8000000214793180;
    v27 = v41;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = v27;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    v28 = v54;
    v24 = v47;
    v29 = v48;

    v69 = v28 & 1;
    v20 = v46;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v56 = v50;
  v57 = v29;
  v58 = v17;
  LOBYTE(v59) = v69;
  BYTE1(v59) = v45;
  *(&v59 + 2) = v67;
  HIWORD(v59) = v68;
  v60 = v24;
  v61 = v49;
  v62 = v44;
  v63 = v66;
LABEL_9:
  v64 = v20;
  return sub_21431B564(&v56);
}

uint64_t sub_214293D60(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v17[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  v13 = *(v4 + 48);
  v18 = *(v4 + 56);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v17[0])();
  sub_2146DAA28();
  if (v12)
  {
    goto LABEL_6;
  }

  v20 = 0;
  v15 = v17[1];
  sub_2146DA348();
  if (v15)
  {
    return (*(v7 + 8))(v10, v6);
  }

  if (v18)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v19 = 1;
    sub_2146DA348();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_214293F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 200;
  *(v7 + 16) = sub_21438F758;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v17);
  v10 = v17;
  v9 = v18;
  v11 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD00000000000002CLL;
  v18 = 0x80000002147931F0;
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
    *v14 = 0xD00000000000002CLL;
    v14[1] = 0x80000002147931F0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2142941BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7274537972657571 && a2 == 0xEB00000000676E69)
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

uint64_t sub_214294248(uint64_t a1)
{
  v2 = sub_21431B668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214294284(uint64_t a1)
{
  v2 = sub_21431B668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142942C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C128, &qword_2146F6B00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B668();
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
  v16 = swift_allocObject();
  *(v16 + 16) = 200;
  *(v15 + 16) = sub_21438F758;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_214042B80(inited, &v31);
  v18 = v31;
  v17 = v32;
  v30[0] = v28;
  v30[1] = v29;
  v36 = v35;
  v37 = v35;
  v31 = 0xD00000000000002CLL;
  v32 = 0x80000002147931F0;
  v26 = 0x80000002147931F0;
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
  *v23 = 0xD00000000000002CLL;
  v23[1] = v20;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142946B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v22 - v9);
  v11 = *(type metadata accessor for Chatbot.MapAction.ShowLocation(0) + 20);
  sub_2145C4100((a3 + v11));
  v12 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v12;
  *(a3 + 96) = *(a1 + 96);
  v13 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v13;
  v14 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v14;
  sub_213FB2E54(a3 + v11, v10, &qword_27C903F38, &unk_2146E9D40);
  v15 = *v10;
  v16 = v10[1];
  v23 = *(v10 + *(v7 + 32));
  v22[0] = 0xD00000000000002ALL;
  v22[1] = 0x8000000214793220;
  v22[2] = 0xD00000000000001CLL;
  v22[3] = 0x800000021478A360;
  v17 = v15(a2, &v23, v22);
  if (v3)
  {
    sub_213FB2DF4(a2, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    if (v17)
    {

      v18 = *(v7 + 28);
      sub_213FB2DF4(v10 + v18, &qword_27C903F40, &unk_2146F1C50);
      sub_21408AC04(a2, v10 + v18, &unk_27C9131A0, &unk_2146E9D10);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      (*(*(v19 - 8) + 56))(v10 + v18, 0, 1, v19);
      return sub_21402EDB8(v10, a3 + v11, &qword_27C903F38, &unk_2146E9D40);
    }

    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD00000000000002ALL;
    v21[1] = 0x8000000214793220;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a2, &unk_27C9131A0, &unk_2146E9D10);
  }

  sub_21402EDB8(v10, a3 + v11, &qword_27C903F38, &unk_2146E9D40);
  return sub_21432887C(a3, type metadata accessor for Chatbot.MapAction.ShowLocation);
}

uint64_t sub_214294980()
{
  if (*v0)
  {
    result = 0x6B6361626C6C6166;
  }

  else
  {
    result = 0x6E6F697461636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_2142949C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEB000000004C5255)
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

uint64_t sub_214294AA4(uint64_t a1)
{
  v2 = sub_21431B6BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214294AE0(uint64_t a1)
{
  v2 = sub_21431B6BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214294B1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v40 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C140, &qword_2146F6B10);
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Chatbot.MapAction.ShowLocation(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_21431B6BC();
  v19 = v41;
  sub_2146DAA08();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v41 = v5;
  v20 = v39;
  v21 = v40;
  v58[1] = 0;
  sub_21431B710();
  sub_2146DA1C8();
  v48 = v55;
  v49 = v56;
  v50 = v57;
  v44 = v51;
  v45 = v52;
  v47 = v54;
  v46 = v53;
  LOBYTE(v43[0]) = 1;
  sub_2142E27A8();
  sub_2146DA1C8();
  v34 = v12;
  v35 = v9;
  v23 = *(v13 + 20);
  sub_2145C4100(&v16[v23]);
  v24 = v49;
  *(v16 + 4) = v48;
  *(v16 + 5) = v24;
  v16[96] = v50;
  v25 = v45;
  *v16 = v44;
  *(v16 + 1) = v25;
  v26 = v47;
  *(v16 + 2) = v46;
  *(v16 + 3) = v26;
  v33 = v23;
  sub_213FB2E54(&v16[v23], v21, &qword_27C903F38, &unk_2146E9D40);
  v27 = *v21;
  v28 = v21[1];
  v58[0] = *(v21 + *(v38 + 32));
  v43[0] = 0xD00000000000002ALL;
  v43[1] = 0x8000000214793220;
  v43[2] = 0xD00000000000001CLL;
  v43[3] = 0x800000021478A360;
  v29 = v27(v8, v58, v43);
  v30 = v34;
  if (v29)
  {

    (*(v20 + 8))(v30, v35);
    v31 = *(v38 + 28);
    sub_213FB2DF4(v21 + v31, &qword_27C903F40, &unk_2146F1C50);
    sub_21408AC04(v8, v21 + v31, &unk_27C9131A0, &unk_2146E9D10);
    (*(v36 + 56))(v21 + v31, 0, 1, v41);
    sub_21402EDB8(v21, &v16[v33], &qword_27C903F38, &unk_2146E9D40);
    sub_214328704(v16, v37, type metadata accessor for Chatbot.MapAction.ShowLocation);
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  sub_214031C4C();
  swift_allocError();
  *v32 = 0xD00000000000002ALL;
  v32[1] = 0x8000000214793220;
  v32[2] = 0xD00000000000001CLL;
  v32[3] = 0x800000021478A360;
  swift_willThrow();
  sub_213FB2DF4(v8, &unk_27C9131A0, &unk_2146E9D10);
  (*(v20 + 8))(v30, v35);
  sub_21402EDB8(v21, &v16[v33], &qword_27C903F38, &unk_2146E9D40);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return sub_21432887C(v16, type metadata accessor for Chatbot.MapAction.ShowLocation);
}

uint64_t sub_214295174(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C158, &qword_2146F6B18);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B6BC();
  sub_2146DAA28();
  v16 = v2[3];
  v17 = v2[5];
  v52 = v2[4];
  v53 = v17;
  v18 = v2[1];
  v49[0] = *v2;
  v49[1] = v18;
  v19 = v2[3];
  v21 = *v2;
  v20 = v2[1];
  v50 = v2[2];
  v51 = v19;
  v45 = v16;
  v46 = v52;
  v47 = v2[5];
  v42 = v21;
  v54 = *(v2 + 96);
  v48 = *(v2 + 96);
  v43 = v20;
  v44 = v50;
  v41 = 0;
  sub_21431B4B4(v49, &v34);
  sub_21431B764();
  v22 = v55;
  sub_2146DA388();
  if (v22)
  {
    v38 = v46;
    v39 = v47;
    v40 = v48;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v37 = v45;
    sub_21431B308(&v34);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v55 = v11;
    v24 = v29;
    v38 = v46;
    v39 = v47;
    v40 = v48;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v37 = v45;
    sub_21431B308(&v34);
    v25 = v2 + *(type metadata accessor for Chatbot.MapAction.ShowLocation(0) + 20);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
    v27 = v32;
    sub_213FB2E54(v25 + *(v26 + 28), v32, &qword_27C903F40, &unk_2146F1C50);
    if ((*(v30 + 48))(v27, 1, v31) == 1)
    {
      sub_213FB2DF4(v32, &qword_27C903F40, &unk_2146F1C50);
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      sub_21408AC04(v32, v24, &unk_27C9131A0, &unk_2146E9D10);
      v33 = 1;
      sub_2142E2910();
      sub_2146DA388();
      sub_213FB2DF4(v24, &unk_27C9131A0, &unk_2146E9D10);
      return (*(v55 + 8))(v14, v10);
    }
  }

  return result;
}

uint64_t sub_2142955DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v82 = a7;
  v88 = a6;
  v80 = a5;
  *&v90 = a3;
  *(&v90 + 1) = a4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v11 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v78 = (&v76 - v12);
  v13 = sub_2146D8B08();
  v83 = *(v13 - 8);
  v14 = *(v83 + 16);
  v86 = a1;
  v14(a8, a1, v13);
  Event = type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);
  v16 = a8 + Event[5];
  v84 = a2;
  v85 = v13;
  v14(v16, a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v18 = swift_allocObject();
  LOBYTE(v95) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = 100;
  *(v19 + 24) = v95;
  *(v18 + 16) = sub_21438F518;
  *(v18 + 24) = v19;
  *(inited + 32) = v18;
  sub_214042B80(inited, &v95);
  v20 = v96;
  v21 = v97;
  LOBYTE(inited) = v98;
  sub_2145C42BC(&v91);
  v22 = v92;
  v23 = v93;
  v24 = v94;
  v77 = Event[8];
  sub_2145C4408((a8 + v77));
  v25 = a8 + Event[6];
  *v25 = v95;
  *(v25 + 16) = v20;
  *(v25 + 24) = v21;
  *(v25 + 32) = inited;
  v26 = Event[7];
  v87 = a8;
  v27 = a8 + v26;
  *v27 = v91;
  *(v27 + 16) = v22;
  *(v27 + 24) = v23;
  *(v27 + 32) = v24;
  v29 = *v25;
  v28 = *(v25 + 8);
  v30 = *(v25 + 24);
  v81 = *(v25 + 16);
  v31 = *(v25 + 32);
  v91 = v90;
  v99 = v31;
  *&v95 = 0xD000000000000028;
  *(&v95 + 1) = 0x8000000214793250;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  v32 = v89;
  v33 = v29(&v91, &v99, &v95);
  v89 = v32;
  if (v32)
  {

LABEL_7:

    sub_213FB2DF4(v82, &unk_27C9131A0, &unk_2146E9D10);
    v46 = *(v83 + 8);
    v47 = v85;
    v46(v84, v85);
    v46(v86, v47);
    v48 = *(v25 + 8);
    v49 = *(v25 + 24);

    *v25 = v29;
    *(v25 + 8) = v28;
    *(v25 + 16) = v81;
    *(v25 + 24) = v30;
    *(v25 + 32) = v31;
    v50 = v87;
    return sub_21432887C(v50, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  }

  if ((v33 & 1) == 0)
  {
    sub_214031C4C();
    v44 = swift_allocError();
    *v45 = 0xD000000000000028;
    v45[1] = 0x8000000214793250;
    v45[2] = 0xD00000000000001CLL;
    v45[3] = 0x800000021478A360;
    v89 = v44;
    swift_willThrow();
    goto LABEL_7;
  }

  v34 = *(v25 + 8);
  v35 = *(v25 + 24);

  *v25 = v29;
  *(v25 + 8) = v28;
  v36 = *(&v90 + 1);
  *(v25 + 16) = v90;
  *(v25 + 24) = v36;
  *(v25 + 32) = v31;
  v38 = *v27;
  v37 = *(v27 + 8);
  v39 = *(v27 + 16);
  v40 = *(v27 + 24);
  v41 = *(v27 + 32);
  *&v91 = v80;
  *(&v91 + 1) = v88;
  LODWORD(v90) = v41;
  v99 = v41;
  *&v95 = 0xD00000000000002ELL;
  *(&v95 + 1) = 0x8000000214793280;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  sub_213FDC9D0(v39, v40);
  v42 = v89;
  *(&v90 + 1) = v38;
  v43 = v38(&v91, &v99, &v95);
  if (v42)
  {

LABEL_12:

    sub_213FB2DF4(v82, &unk_27C9131A0, &unk_2146E9D10);
    v64 = *(v83 + 8);
    v65 = v85;
    v64(v84, v85);
    v64(v86, v65);
    v66 = *(v27 + 8);
    v67 = *(v27 + 16);
    v68 = *(v27 + 24);

    sub_213FDC6D0(v67, v68);
    *v27 = *(&v90 + 1);
    *(v27 + 8) = v37;
    *(v27 + 16) = v39;
    *(v27 + 24) = v40;
    *(v27 + 32) = v90;
    v50 = v87;
    return sub_21432887C(v50, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  }

  if ((v43 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v63 = 0xD00000000000002ELL;
    v63[1] = 0x8000000214793280;
    v63[2] = 0xD00000000000001CLL;
    v63[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_12;
  }

  sub_213FDC6D0(v39, v40);

  v52 = *(v27 + 8);
  v53 = *(v27 + 16);
  v54 = *(v27 + 24);

  sub_213FDC6D0(v53, v54);
  *v27 = *(&v90 + 1);
  *(v27 + 8) = v37;
  v55 = v88;
  *(v27 + 16) = v80;
  *(v27 + 24) = v55;
  *(v27 + 32) = v90;
  v56 = v87;
  v57 = v77;
  v58 = v78;
  sub_213FB2E54(v87 + v77, v78, &qword_27C903F38, &unk_2146E9D40);
  v59 = *v58;
  v60 = v58[1];
  LOBYTE(v91) = *(v58 + *(v79 + 32));
  *&v95 = 0xD00000000000002ELL;
  *(&v95 + 1) = 0x80000002147932B0;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;
  v61 = v82;
  v62 = v59(v82, &v91, &v95);
  if ((v62 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v73 = 0xD00000000000002ELL;
    v73[1] = 0x80000002147932B0;
    v73[2] = 0xD00000000000001CLL;
    v73[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v61, &unk_27C9131A0, &unk_2146E9D10);
    v74 = *(v83 + 8);
    v75 = v85;
    v74(v84, v85);
    v74(v86, v75);
    sub_21402EDB8(v58, v56 + v57, &qword_27C903F38, &unk_2146E9D40);
    v50 = v56;
    return sub_21432887C(v50, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  }

  v69 = *(v83 + 8);
  v70 = v85;
  v69(v84, v85);
  v69(v86, v70);
  v71 = *(v79 + 28);
  sub_213FB2DF4(v58 + v71, &qword_27C903F40, &unk_2146F1C50);
  sub_21408AC04(v61, v58 + v71, &unk_27C9131A0, &unk_2146E9D10);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v72 - 8) + 56))(v58 + v71, 0, 1, v72);
  return sub_21402EDB8(v58, v56 + v57, &qword_27C903F38, &unk_2146E9D40);
}

uint64_t sub_214295E94()
{
  v1 = *v0;
  v2 = 0x6D69547472617473;
  v3 = 0x656C746974;
  v4 = 0x7470697263736564;
  if (v1 != 3)
  {
    v4 = 0x6B6361626C6C6166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D6954646E65;
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

uint64_t sub_214295F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214384FA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214295F68(uint64_t a1)
{
  v2 = sub_21431B7B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214295FA4(uint64_t a1)
{
  v2 = sub_21431B7B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214295FE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v117 = &v101 - v4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v114 = *(v118 - 1);
  v5 = *(v114 + 64);
  MEMORY[0x28223BE20](v118);
  v119 = &v101 - v6;
  v122 = sub_2146D8B08();
  v120 = *(v122 - 8);
  v7 = v120[8];
  v8 = MEMORY[0x28223BE20](v122);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v101 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C168, &qword_2146F6B20);
  v121 = *(v13 - 8);
  v14 = *(v121 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v101 - v15;
  Event = type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);
  v18 = *(*(Event - 8) + 64);
  MEMORY[0x28223BE20](Event);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v21 = a1[4];
  v124 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_21431B7B8();
  v23 = v123;
  sub_2146DAA08();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v124);
  }

  v24 = Event;
  v123 = v10;
  v25 = v121;
  LOBYTE(v129) = 0;
  sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578]);
  v26 = v122;
  sub_2146DA1C8();
  LOBYTE(v129) = 1;
  sub_2146DA1C8();
  v113 = v12;
  LOBYTE(v129) = 2;
  *&v112 = sub_2146DA168();
  *(&v112 + 1) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v125) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v111 = v129;
  LOBYTE(v129) = 4;
  sub_2142E27A8();
  sub_2146DA1C8();
  v109 = v13;
  v29 = v120[2];
  v105 = v20;
  v29(v20, v113, v26);
  v29(&v20[v24[5]], v123, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v31 = swift_allocObject();
  LOBYTE(v129) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 100;
  *(v32 + 24) = v129;
  *(v31 + 16) = sub_21438F518;
  *(v31 + 24) = v32;
  *(inited + 32) = v31;
  sub_214042B80(inited, &v129);
  v110 = v130;
  v108 = v131;
  LODWORD(v107) = v132;
  sub_2145C42BC(&v125);
  v33 = v126;
  v34 = v127;
  LODWORD(v106) = v128;
  v35 = v105;
  v102 = v24[8];
  sub_2145C4408(&v105[v102]);
  v36 = &v35[v24[6]];
  *v36 = v129;
  v37 = v108;
  *(v36 + 2) = v110;
  *(v36 + 3) = v37;
  v36[32] = v107;
  v38 = &v35[v24[7]];
  *v38 = v125;
  *(v38 + 2) = v33;
  *(v38 + 3) = v34;
  v38[32] = v106;
  v40 = *v36;
  v39 = *(v36 + 1);
  v41 = *(v36 + 3);
  v103 = *(v36 + 2);
  v42 = v36[32];
  v125 = v112;
  LODWORD(v108) = v42;
  v133 = v42;
  *&v129 = 0xD000000000000028;
  *(&v129 + 1) = 0x8000000214793250;
  v104 = 0x8000000214793250;
  v130 = 0xD00000000000001CLL;
  v131 = 0x800000021478A360;
  v106 = v41;

  v107 = v40;
  v43 = v40(&v125, &v133, &v129);
  v110 = 0;
  v44 = v104;
  v101 = 0x800000021478A360;
  v45 = v119;
  if ((v43 & 1) == 0)
  {
    sub_214031C4C();
    v58 = swift_allocError();
    *v59 = 0xD000000000000028;
    v59[1] = v44;
    v60 = v101;
    v59[2] = 0xD00000000000001CLL;
    v59[3] = v60;
    v110 = v58;
    swift_willThrow();

    v61 = v109;
    sub_213FB2DF4(v45, &unk_27C9131A0, &unk_2146E9D10);
    v62 = v120[1];
    v63 = v122;
    v62(v123, v122);
    v62(v113, v63);
    (*(v25 + 8))(v16, v61);
    v64 = *(v36 + 1);
    v65 = *(v36 + 3);

    *v36 = v107;
    *(v36 + 1) = v39;
    v66 = v106;
    *(v36 + 2) = v103;
    *(v36 + 3) = v66;
    v36[32] = v108;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v124);
    return sub_21432887C(v20, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  }

  v46 = v101;

  v47 = *(v36 + 1);
  v48 = *(v36 + 3);

  *v36 = v107;
  *(v36 + 1) = v39;
  v49 = *(&v112 + 1);
  *(v36 + 2) = v112;
  *(v36 + 3) = v49;
  v36[32] = v108;
  v50 = v38;
  v52 = *v38;
  v51 = *(v38 + 1);
  v53 = *(v38 + 2);
  v54 = *(v38 + 3);
  v55 = v50[32];
  v125 = v111;
  LODWORD(v112) = v55;
  v133 = v55;
  *&v129 = 0xD00000000000002ELL;
  *(&v129 + 1) = 0x8000000214793280;
  v130 = 0xD00000000000001CLL;
  v131 = v46;

  v108 = v53;
  v107 = v54;
  sub_213FDC9D0(v53, v54);
  v106 = v51;
  v56 = v110;
  *(&v112 + 1) = v52;
  v57 = v52(&v125, &v133, &v129);
  v110 = v56;
  if (v56)
  {
    v118 = v50;

LABEL_13:

    sub_213FB2DF4(v119, &unk_27C9131A0, &unk_2146E9D10);
    v84 = v120[1];
    v85 = v122;
    v84(v123, v122);
    v84(v113, v85);
    (*(v25 + 8))(v16, v109);
    v86 = v118;
    v87 = v118[1];
    v88 = v118[2];
    v89 = v118[3];

    sub_213FDC6D0(v88, v89);
    v90 = v106;
    *v86 = *(&v112 + 1);
    v86[1] = v90;
    v91 = v107;
    v86[2] = v108;
    v86[3] = v91;
    *(v86 + 32) = v112;
    goto LABEL_8;
  }

  if ((v57 & 1) == 0)
  {
    v118 = v50;
    sub_214031C4C();
    v81 = swift_allocError();
    *v82 = 0xD00000000000002ELL;
    v82[1] = 0x8000000214793280;
    v83 = v101;
    v82[2] = 0xD00000000000001CLL;
    v82[3] = v83;
    v110 = v81;
    swift_willThrow();
    goto LABEL_13;
  }

  sub_213FDC6D0(v108, v107);
  v67 = v101;

  v68 = *(v50 + 1);
  v69 = *(v50 + 2);
  v70 = *(v50 + 3);

  sub_213FDC6D0(v69, v70);
  v71 = v106;
  *v50 = *(&v112 + 1);
  *(v50 + 1) = v71;
  v72 = *(&v111 + 1);
  *(v50 + 2) = v111;
  *(v50 + 3) = v72;
  v50[32] = v112;
  v73 = v117;
  sub_213FB2E54(&v20[v102], v117, &qword_27C903F38, &unk_2146E9D40);
  v74 = *v73;
  v75 = *(v73 + 8);
  LOBYTE(v125) = *(v73 + *(v116 + 32));
  *&v129 = 0xD00000000000002ELL;
  *(&v129 + 1) = 0x80000002147932B0;
  v130 = 0xD00000000000001CLL;
  v131 = v67;
  v76 = v119;
  v77 = v110;
  v78 = v74(v119, &v125, &v129);
  v110 = v77;
  if (v77)
  {
    sub_213FB2DF4(v76, &unk_27C9131A0, &unk_2146E9D10);
    v79 = v120[1];
    v80 = v122;
    v79(v123, v122);
    v79(v113, v80);
    (*(v25 + 8))(v16, v109);

LABEL_17:
    sub_21402EDB8(v117, &v20[v102], &qword_27C903F38, &unk_2146E9D40);
    goto LABEL_8;
  }

  if ((v78 & 1) == 0)
  {
    sub_214031C4C();
    v96 = swift_allocError();
    *v97 = 0xD00000000000002ELL;
    v97[1] = 0x80000002147932B0;
    v98 = v101;
    v97[2] = 0xD00000000000001CLL;
    v97[3] = v98;
    v110 = v96;
    swift_willThrow();
    sub_213FB2DF4(v119, &unk_27C9131A0, &unk_2146E9D10);
    v99 = v120[1];
    v100 = v122;
    v99(v123, v122);
    v99(v113, v100);
    (*(v25 + 8))(v16, v109);
    goto LABEL_17;
  }

  v92 = v120[1];
  v93 = v122;
  v92(v123, v122);
  v92(v113, v93);
  (*(v25 + 8))(v16, v109);
  v94 = *(v116 + 28);
  v95 = v117;
  sub_213FB2DF4(v117 + v94, &qword_27C903F40, &unk_2146F1C50);
  sub_21408AC04(v119, v95 + v94, &unk_27C9131A0, &unk_2146E9D10);
  (*(v114 + 56))(v95 + v94, 0, 1, v118);
  sub_21402EDB8(v95, &v20[v102], &qword_27C903F38, &unk_2146E9D40);
  sub_214328704(v20, v115, type metadata accessor for Chatbot.CalendarAction.CreateEvent);
  return __swift_destroy_boxed_opaque_existential_1(v124);
}

uint64_t sub_214296EE8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C178, &qword_2146F6B28);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B7B8();
  sub_2146DAA28();
  LOBYTE(v39) = 0;
  sub_2146D8B08();
  sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578]);
  v18 = v2;
  v19 = v38;
  sub_2146DA388();
  if (v19)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v38 = v11;
  Event = type metadata accessor for Chatbot.CalendarAction.CreateEvent(0);
  v21 = Event[5];
  LOBYTE(v39) = 1;
  sub_2146DA388();
  v23 = v18 + Event[6];
  if (*(v23 + 24))
  {
    v24 = v13;
    v25 = *(v23 + 16);
    LOBYTE(v39) = 2;

    sub_2146DA328();

    v26 = v18 + Event[7];
    v27 = *(v26 + 24);
    if (v27 != 1)
    {
      v39 = *(v26 + 16);
      v40 = v27;
      v41 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v28 = v37;
      v29 = v12;
      v30 = v18 + Event[8];
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
      v32 = v35;
      sub_213FB2E54(v30 + *(v31 + 28), v35, &qword_27C903F40, &unk_2146F1C50);
      if ((*(v28 + 48))(v32, 1, v36) != 1)
      {
        v33 = v32;
        v34 = v38;
        sub_21408AC04(v33, v38, &unk_27C9131A0, &unk_2146E9D10);
        LOBYTE(v39) = 4;
        sub_2142E2910();
        sub_2146DA388();
        sub_213FB2DF4(v34, &unk_27C9131A0, &unk_2146E9D10);
        return (*(v24 + 8))(v16, v29);
      }

      sub_213FB2DF4(v32, &qword_27C903F40, &unk_2146F1C50);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21429740C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2145C4A54(&v32);
  v9 = v32;
  v8 = v33;
  v10 = v34;
  v11 = v35;
  *v43 = *v37;
  *&v43[3] = *&v37[3];
  v26 = v38;
  v22 = v40;
  v28 = v41;
  v29 = v39;
  v23 = v36;
  v24 = v42;
  v30 = a1;
  v31 = a2;
  v44 = v36;
  v32 = 0xD000000000000034;
  v33 = 0x80000002147932E0;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  v25 = v9;
  v12 = v9(&v30, &v44, &v32);
  if (v5)
  {

LABEL_6:
    v13 = v24;
    v14 = v26;
LABEL_7:

    v32 = v25;
    v33 = v8;
    v34 = v10;
    v35 = v11;
    v36 = v23;
    *v37 = *v43;
    *&v37[3] = *&v43[3];
    v38 = v14;
    v39 = v29;
    v40 = v22;
    v41 = v28;
    v42 = v13;
    return sub_21431B80C(&v32);
  }

  v19 = a2;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD000000000000034;
    v16[1] = 0x80000002147932E0;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v30 = a3;
  v31 = a4;
  v13 = v24;
  v44 = v24;
  v32 = 0xD00000000000002DLL;
  v33 = 0x8000000214793320;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  v14 = v26;
  v15 = v26(&v30, &v44, &v32);
  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD00000000000002DLL;
    v18[1] = 0x8000000214793320;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    v10 = a1;
    v11 = v19;
    goto LABEL_7;
  }

  result = swift_bridgeObjectRelease_n();
  *a5 = v25;
  *(a5 + 8) = v8;
  *(a5 + 16) = a1;
  *(a5 + 24) = v19;
  *(a5 + 32) = v23;
  *(a5 + 33) = *v43;
  *(a5 + 36) = *&v43[3];
  *(a5 + 40) = v26;
  *(a5 + 48) = v29;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v24;
  return result;
}

uint64_t sub_21429778C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
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

uint64_t sub_21429786C(uint64_t a1)
{
  v2 = sub_21431B860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142978A8(uint64_t a1)
{
  v2 = sub_21431B860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142978E4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C180, &qword_2146F6B30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B860();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v55) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v49 = a2;
  v14 = v11;
  v66 = 1;
  v37 = sub_2146DA168();
  v44 = v16;
  v68 = v14;
  sub_2145C4A54(&v55);
  v18 = v55;
  v17 = v56;
  v19 = v58;
  v38 = v57;
  v67[0] = *v60;
  *(v67 + 3) = *&v60[3];
  v45 = v61;
  v48 = v62;
  v39 = v63;
  v47 = v64;
  v46 = v65;
  *&v50 = v68;
  v41 = v13;
  *(&v50 + 1) = v13;
  v42 = v59;
  LOBYTE(v54[0]) = v59;
  v55 = 0xD000000000000034;
  v56 = 0x80000002147932E0;
  v57 = 0xD00000000000001CLL;
  v58 = 0x800000021478A360;
  v40 = v19;

  v43 = v18;
  v20 = v18(&v50, v54, &v55);
  v21 = v40;
  v36 = v17;
  if (v20)
  {

    v54[0] = v37;
    v54[1] = v44;
    LOBYTE(v50) = v46;
    v55 = 0xD00000000000002DLL;
    v56 = 0x8000000214793320;
    v57 = 0xD00000000000001CLL;
    v58 = 0x800000021478A360;

    v22 = v45(v54, &v50, &v55);
    v21 = v41;
    if (v22)
    {

      (*(v6 + 8))(v9, v5);

      v25 = v48;

      v26 = v43;
      *&v50 = v43;
      v27 = v36;
      *(&v50 + 1) = v36;
      *&v51 = v68;
      *(&v51 + 1) = v21;
      v28 = v42;
      LOBYTE(v52) = v42;
      *(&v52 + 1) = v67[0];
      DWORD1(v52) = *(v67 + 3);
      v29 = v45;
      *(&v52 + 1) = v45;
      *v53 = v25;
      *&v53[8] = v37;
      *&v53[16] = v44;
      v30 = v46;
      v53[24] = v46;
      v31 = v50;
      v32 = v49;
      *(v49 + 57) = *&v53[9];
      v33 = v51;
      v34 = *v53;
      v32[2] = v52;
      v32[3] = v34;
      *v32 = v31;
      v32[1] = v33;
      sub_21431B8B4(&v50, &v55);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v55 = v26;
      v56 = v27;
      v57 = v68;
      v58 = v21;
      v59 = v28;
      *v60 = v67[0];
      *&v60[3] = *(v67 + 3);
      v61 = v29;
      v62 = v25;
      v63 = v37;
      v64 = v44;
      v65 = v30;
      return sub_21431B80C(&v55);
    }

    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD00000000000002DLL;
    v35[1] = 0x8000000214793320;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    v24 = v36;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000034;
    v23[1] = 0x80000002147932E0;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    v24 = v36;
    v68 = v38;
  }

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
  v55 = v43;
  v56 = v24;
  v57 = v68;
  v58 = v21;
  v59 = v42;
  *v60 = v67[0];
  *&v60[3] = *(v67 + 3);
  v61 = v45;
  v62 = v48;
  v63 = v39;
  v64 = v47;
  v65 = v46;
  return sub_21431B80C(&v55);
}

uint64_t sub_214297FF4(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[8];
  v17[1] = v4[7];
  v18 = v13;
  v19 = v11;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA28();
  if (v12)
  {
    v23 = 0;

    v15 = v20;
    sub_2146DA328();
    if (v15)
    {
      (*(v21 + 8))(v10, v7);
    }

    if (v18)
    {
      v22 = 1;

      sub_2146DA328();
      (*(v21 + 8))(v10, v7);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214298238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v22 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21403281C;
  *(v8 + 24) = 0;
  *(inited + 32) = v8;
  sub_214042B80(inited, &v17);
  v10 = v17;
  v9 = v18;
  v11 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v23 = v21;
  v17 = 0xD000000000000039;
  v18 = 0x8000000214793350;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  v12 = v10(v16, &v23, &v17);
  if (v4)
  {
  }

  else
  {
    if (v12)
    {

      *a4 = v10;
      *(a4 + 8) = v9;
      *(a4 + 16) = a1;
      *(a4 + 24) = a2;
      *(a4 + 32) = v11;
      *(a4 + 33) = v22;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD000000000000039;
    v14[1] = 0x8000000214793350;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_214298438()
{
  if (*v0)
  {
    result = 0x707954616964656DLL;
  }

  else
  {
    result = 0x6D754E656E6F6870;
  }

  *v0;
  return result;
}

uint64_t sub_214298480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
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

uint64_t sub_214298568(uint64_t a1)
{
  v2 = sub_21431B910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142985A4(uint64_t a1)
{
  v2 = sub_21431B910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142985E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C198, &qword_2146F6B40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B910();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v30 = v11;
  LOBYTE(v31[0]) = 1;
  sub_21431B964();
  sub_2146DA1C8();
  v37 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21403281C;
  *(v16 + 24) = 0;
  *(inited + 32) = v16;
  sub_214042B80(inited, &v32);
  v17 = v13;
  v19 = v32;
  v18 = v33;
  v20 = v35;
  v31[0] = v30;
  v31[1] = v17;
  v27 = v17;
  v28 = 0x8000000214793350;
  HIDWORD(v25) = v36;
  v38 = v36;
  v32 = 0xD000000000000039;
  v33 = 0x8000000214793350;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;
  v29 = v20;

  v26 = v19;
  v21 = v19(v31, &v38, &v32);
  v22 = v27;
  if (v21)
  {

    (*(v6 + 8))(v9, v5);

    *a2 = v26;
    *(a2 + 8) = v18;
    *(a2 + 16) = v30;
    *(a2 + 24) = v22;
    *(a2 + 32) = BYTE4(v25);
    *(a2 + 33) = v37;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v23 = v28;
    *v24 = 0xD000000000000039;
    v24[1] = v23;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142989D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C1B0, &qword_2146F6B48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v14 = *(v1 + 33);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431B910();
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
      sub_21431B9B8();
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

uint64_t sub_214298C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v5;
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = *(a1 + 112);
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  v7 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v7;
  v8 = type metadata accessor for Chatbot.Action(0);
  return sub_214328704(a2, a3 + *(v8 + 20), type metadata accessor for Chatbot.Action.ActionType);
}

uint64_t sub_214298C9C()
{
  if (*v0)
  {
    result = 0x6E6F69746361;
  }

  else
  {
    result = 0x6974736567677573;
  }

  *v0;
  return result;
}

uint64_t sub_214298CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
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

uint64_t sub_214298DB8(uint64_t a1)
{
  v2 = sub_21431BA0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214298DF4(uint64_t a1)
{
  v2 = sub_21431BA0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214298E30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for Chatbot.Action.ActionType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C1C0, &qword_2146F6B50);
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v41);
  v11 = &v22 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BA0C();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v7;
    v15 = v22;
    v32 = 0;
    sub_21431AE08();
    v16 = v41;
    sub_2146DA1C8();
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v24 = v33;
    v25 = v34;
    v31 = v40;
    v26 = v35;
    v27 = v36;
    v23 = 1;
    sub_214328930(&qword_27C90C1D0, type metadata accessor for Chatbot.Action.ActionType);
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v16);
    v17 = type metadata accessor for Chatbot.Action(0);
    sub_214328704(v14, v15 + *(v17 + 20), type metadata accessor for Chatbot.Action.ActionType);
    v18 = v29;
    *(v15 + 64) = v28;
    *(v15 + 80) = v18;
    *(v15 + 96) = v30;
    *(v15 + 112) = v31;
    v19 = v25;
    *v15 = v24;
    *(v15 + 16) = v19;
    v20 = v27;
    *(v15 + 32) = v26;
    *(v15 + 48) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214299154(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C1D8, &qword_2146F6B58);
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BA0C();
  sub_2146DAA28();
  v10 = v3[5];
  v11 = v3[3];
  v34 = v3[4];
  v35 = v10;
  v12 = v3[5];
  v36 = v3[6];
  v13 = v3[1];
  v31[0] = *v3;
  v31[1] = v13;
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  v32 = v3[2];
  v33 = v14;
  v27 = v34;
  v28 = v12;
  v29 = v3[6];
  v23 = v16;
  v24 = v15;
  v37 = *(v3 + 112);
  v30 = *(v3 + 112);
  v25 = v32;
  v26 = v11;
  v22 = 0;
  sub_21431AC80(v31, v20);
  sub_21431AE5C();
  sub_2146DA388();
  v20[4] = v27;
  v20[5] = v28;
  v20[6] = v29;
  v21 = v30;
  v20[0] = v23;
  v20[1] = v24;
  v20[2] = v25;
  v20[3] = v26;
  sub_21431AB00(v20);
  if (!v2)
  {
    v17 = *(type metadata accessor for Chatbot.Action(0) + 20);
    v19[15] = 1;
    type metadata accessor for Chatbot.Action.ActionType(0);
    sub_214328930(&qword_27C90C1E0, type metadata accessor for Chatbot.Action.ActionType);
    sub_2146DA388();
  }

  return (*(v38 + 8))(v8, v5);
}

uint64_t sub_214299420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)(uint64_t a1, char *a2)@<X8>, char a10, unsigned __int8 *a11, uint64_t a12, uint64_t a13)
{
  v164 = a3;
  v151 = a8;
  v152 = a6;
  v166 = a7;
  v167 = a5;
  v156 = a4;
  v157 = a2;
  v171 = a1;
  v165 = a13;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v14 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v155 = &v150 - v15;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v16 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v192 = &v150 - v17;
  LODWORD(v170) = *a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v172 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v19 = sub_214069764(&unk_282654778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v20 + 16) = sub_21438F524;
  *(v20 + 24) = v21;
  *(inited + 32) = v20;
  sub_214042F80(inited, a9);
  v22 = swift_initStackObject();
  *(v22 + 16) = v172;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214064194;
  *(v23 + 24) = 0;
  *(v22 + 32) = v23;
  sub_214042B80(v22, &v188);
  v24 = v189;
  v25 = v190;
  LODWORD(v168) = v191;
  v26 = swift_initStackObject();
  *(v26 + 16) = v172;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2146ED240;
  *(v27 + 16) = sub_21438F468;
  *(v27 + 24) = v28;
  *(v26 + 32) = v27;
  sub_21404328C(v26, &v184);
  *&v172 = v185;
  LODWORD(v162) = v186;
  LODWORD(v161) = v187;
  v29 = type metadata accessor for Chatbot.CardMedia(0);
  v153 = v29[7];
  sub_2145C4DD8(a9 + v153);
  sub_2145C4F2C(&v180);
  v30 = v182;
  v160 = v181;
  LODWORD(v159) = v183;
  sub_2145C4F60(&v175);
  v31 = v176;
  LOBYTE(v26) = v177;
  LODWORD(v158) = v178;
  LOBYTE(v27) = v179;
  sub_2145C50A4(v173);
  v32 = v174;
  v33 = a9;
  v34 = a9 + v29[5];
  *v34 = v188;
  *(v34 + 2) = v24;
  *(v34 + 3) = v25;
  v34[32] = v168;
  v35 = v33 + v29[6];
  *v35 = v184;
  *(v35 + 16) = v172;
  *(v35 + 24) = v162;
  *(v35 + 25) = v161;
  v36 = v33 + v29[8];
  *v36 = v180;
  *(v36 + 16) = v160;
  *(v36 + 24) = v30;
  *(v36 + 32) = v159;
  v37 = v33 + v29[9];
  *v37 = v175;
  *(v37 + 16) = v31;
  *(v37 + 24) = v26;
  *(v37 + 25) = v158;
  *(v37 + 26) = v27;
  *(v33 + v29[10]) = v170;
  v38 = v33 + v29[11];
  v39 = v173[1];
  *v38 = v173[0];
  *(v38 + 16) = v39;
  *(v38 + 32) = v32;
  *&v172 = 0x8000000214793390;
  v170 = v33;
  v40 = v192;
  sub_213FB2E54(v33, v192, &unk_27C9131D0, &qword_2146EAA70);
  v41 = *v40;
  v42 = *(v40 + 8);
  LOBYTE(v180) = *(v40 + *(v169 + 32));
  *&v188 = 0xD00000000000001ALL;
  *(&v188 + 1) = v172;
  v189 = 0xD00000000000001CLL;
  v190 = 0x800000021478A360;
  v168 = 0x800000021478A360;
  v43 = v171;
  v44 = v163;
  v45 = v41();
  if (v44)
  {

    sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
    v46 = sub_2146D8958();
    (*(*(v46 - 8) + 8))(v43, v46);

LABEL_6:
    v65 = v170;
    sub_21402EDB8(v192, v170, &unk_27C9131D0, &qword_2146EAA70);
    v66 = v65;
    return sub_21432887C(v66, type metadata accessor for Chatbot.CardMedia);
  }

  v162 = v35;
  v163 = v34;
  v47 = v164;
  v160 = v37;
  v161 = v36;
  v159 = v38;
  if ((v45 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    v61 = v172;
    *v62 = 0xD00000000000001ALL;
    v62[1] = v61;
    v63 = v168;
    v62[2] = 0xD00000000000001CLL;
    v62[3] = v63;
    swift_willThrow();
    sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
    v64 = sub_2146D8958();
    (*(*(v64 - 8) + 8))(v171, v64);
    goto LABEL_6;
  }

  v48 = v168;

  v49 = *(v169 + 28);
  v50 = v192;
  sub_213FB2DF4(v192 + v49, &unk_27C9131A0, &unk_2146E9D10);
  v51 = sub_2146D8958();
  v52 = *(v51 - 8);
  (*(v52 + 16))(v50 + v49, v171, v51);
  *&v172 = v52;
  v53 = *(v52 + 56);
  v169 = v51;
  v53(v50 + v49, 0, 1, v51);
  sub_21402EDB8(v50, v170, &unk_27C9131D0, &qword_2146EAA70);
  v55 = *v163;
  v54 = v163[1];
  v56 = v163[3];
  v158 = v163[2];
  v57 = *(v163 + 32);
  *&v180 = v157;
  *(&v180 + 1) = v47;
  v58 = v47;
  LODWORD(v192) = v57;
  LOBYTE(v173[0]) = v57;
  *&v188 = 0xD000000000000022;
  *(&v188 + 1) = 0x80000002147933B0;
  v189 = 0xD00000000000001CLL;
  v190 = v48;

  v59 = v55;
  v60 = v55(&v180, v173, &v188);
  v68 = v170;
  if ((v60 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v78 = 0xD000000000000022;
    v78[1] = 0x80000002147933B0;
    v79 = v168;
    v78[2] = 0xD00000000000001CLL;
    v78[3] = v79;
    swift_willThrow();

    v80 = v163;

    sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
    (*(v172 + 8))(v171, v169);
    v81 = v80[1];
    v82 = v80[3];

    *v80 = v59;
    v80[1] = v54;
    v80[2] = v158;
    v80[3] = v56;
    *(v80 + 32) = v192;
LABEL_11:
    v66 = v68;
    return sub_21432887C(v66, type metadata accessor for Chatbot.CardMedia);
  }

  v69 = v168;

  v70 = v163;
  v71 = v163[1];
  v72 = v163[3];

  *v70 = v59;
  v70[1] = v54;
  v70[2] = v157;
  v70[3] = v58;
  *(v70 + 32) = v192;
  v74 = *v162;
  v73 = *(v162 + 8);
  v164 = *(v162 + 16);
  v75 = *(v162 + 25);
  LOBYTE(v173[0]) = *(v162 + 24);
  v76 = v156;
  *&v180 = v156;
  LODWORD(v192) = v75;
  LOBYTE(v175) = v75;
  *&v188 = 0xD00000000000001FLL;
  *(&v188 + 1) = 0x80000002147933E0;
  v189 = 0xD00000000000001CLL;
  v190 = v69;

  v77 = v74(&v180, &v175, &v188);
  if ((v77 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v92 = 0xD00000000000001FLL;
    v92[1] = 0x80000002147933E0;
    v93 = v168;
    v92[2] = 0xD00000000000001CLL;
    v92[3] = v93;
    swift_willThrow();
    sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
    (*(v172 + 8))(v171, v169);
    v94 = v173[0];
    v95 = v162;
    v96 = *(v162 + 8);

    *v95 = v74;
    *(v95 + 8) = v73;
    *(v95 + 16) = v164;
    *(v95 + 24) = v94;
    *(v95 + 25) = v192;
    goto LABEL_11;
  }

  v83 = v168;

  v84 = v162;
  v85 = *(v162 + 8);

  *v84 = v74;
  *(v84 + 8) = v73;
  *(v84 + 16) = v76;
  *(v84 + 24) = 0;
  *(v84 + 25) = v192;
  v86 = v153;
  v87 = v155;
  sub_213FB2E54(v68 + v153, v155, &qword_27C903F38, &unk_2146E9D40);
  v88 = *v87;
  v89 = *(v87 + 8);
  LOBYTE(v180) = *(v87 + *(v154 + 32));
  *&v188 = 0xD00000000000001ELL;
  *(&v188 + 1) = 0x8000000214793400;
  v189 = 0xD00000000000001CLL;
  v190 = v83;
  v90 = v167;
  v91 = v88(v167, &v180, &v188);
  if ((v91 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v108 = 0xD00000000000001ELL;
    v108[1] = 0x8000000214793400;
    v109 = v168;
    v108[2] = 0xD00000000000001CLL;
    v108[3] = v109;
    swift_willThrow();
    sub_213FB2DF4(v90, &unk_27C9131A0, &unk_2146E9D10);
    (*(v172 + 8))(v171, v169);
    sub_21402EDB8(v155, v68 + v86, &qword_27C903F38, &unk_2146E9D40);
    v66 = v68;
    return sub_21432887C(v66, type metadata accessor for Chatbot.CardMedia);
  }

  v97 = v155;
  v98 = *(v154 + 28);
  sub_213FB2DF4(v155 + v98, &qword_27C903F40, &unk_2146F1C50);
  v192 = 0;
  sub_213FB2E54(v90, v97 + v98, &unk_27C9131A0, &unk_2146E9D10);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v99 - 8) + 56))(v97 + v98, 0, 1, v99);
  sub_21402EDB8(v97, v68 + v86, &qword_27C903F38, &unk_2146E9D40);
  v100 = v161;
  v102 = *v161;
  v101 = *(v161 + 8);
  v104 = *(v161 + 16);
  v103 = *(v161 + 24);
  v105 = *(v161 + 32);
  *&v180 = v152;
  *(&v180 + 1) = v166;
  LODWORD(v164) = v105;
  LOBYTE(v173[0]) = v105;
  *&v188 = 0xD000000000000026;
  *(&v188 + 1) = 0x8000000214793420;
  v189 = 0xD00000000000001CLL;
  v190 = v168;

  v162 = v103;
  sub_213FDC9D0(v104, v103);
  v106 = v192;
  v163 = v102;
  v107 = (v102)(&v180, v173, &v188);
  v192 = v106;
  if (v106)
  {
    v160 = v104;

LABEL_23:

    sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
    (*(v172 + 8))(v171, v169);
    v124 = *(v100 + 8);
    v125 = *(v100 + 16);
    v126 = *(v100 + 24);

    sub_213FDC6D0(v125, v126);
    *v100 = v163;
    *(v100 + 8) = v101;
    v127 = v162;
    *(v100 + 16) = v160;
    *(v100 + 24) = v127;
    *(v100 + 32) = v164;
    return sub_21432887C(v68, type metadata accessor for Chatbot.CardMedia);
  }

  if ((v107 & 1) == 0)
  {
    v160 = v104;
    sub_214031C4C();
    v121 = swift_allocError();
    *v122 = 0xD000000000000026;
    v122[1] = 0x8000000214793420;
    v123 = v168;
    v122[2] = 0xD00000000000001CLL;
    v122[3] = v123;
    v192 = v121;
    swift_willThrow();

    goto LABEL_23;
  }

  sub_213FDC6D0(v104, v162);
  v110 = v168;

  v111 = *(v100 + 8);
  v112 = *(v100 + 16);
  v113 = *(v100 + 24);

  sub_213FDC6D0(v112, v113);
  *v100 = v163;
  *(v100 + 8) = v101;
  v114 = v166;
  *(v100 + 16) = v152;
  *(v100 + 24) = v114;
  *(v100 + 32) = v164;
  v115 = v160;
  v117 = *v160;
  v116 = *(v160 + 8);
  v164 = *(v160 + 16);
  LODWORD(v166) = *(v160 + 24);
  v118 = *(v160 + 26);
  LOBYTE(v173[0]) = *(v160 + 25);
  *&v180 = v151;
  BYTE8(v180) = a10 & 1;
  LOBYTE(v175) = v118;
  *&v188 = 0xD000000000000023;
  *(&v188 + 1) = 0x8000000214793450;
  v189 = 0xD00000000000001CLL;
  v190 = v110;

  v119 = v192;
  v120 = v117(&v180, &v175, &v188);
  if (v119)
  {

    sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
    (*(v172 + 8))(v171, v169);

LABEL_27:
    v137 = v173[0];
    v138 = *(v115 + 8);

    *v115 = v117;
    *(v115 + 8) = v116;
    *(v115 + 16) = v164;
    *(v115 + 24) = v166;
    *(v115 + 25) = v137;
    *(v115 + 26) = v118;
    return sub_21432887C(v170, type metadata accessor for Chatbot.CardMedia);
  }

  if ((v120 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v135 = 0xD000000000000023;
    v135[1] = 0x8000000214793450;
    v136 = v168;
    v135[2] = 0xD00000000000001CLL;
    v135[3] = v136;
    swift_willThrow();
    sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
    (*(v172 + 8))(v171, v169);
    goto LABEL_27;
  }

  v128 = *(v115 + 8);

  *v115 = v117;
  *(v115 + 8) = v116;
  *(v115 + 16) = v151;
  *(v115 + 24) = a10 & 1;
  *(v115 + 25) = 0;
  *(v115 + 26) = v118;
  v130 = *v159;
  v129 = *(v159 + 8);
  v131 = *(v159 + 16);
  v132 = *(v159 + 24);
  v133 = *(v159 + 32);
  v166 = a12;
  *&v180 = a12;
  *(&v180 + 1) = v165;
  LODWORD(v192) = v133;
  LOBYTE(v173[0]) = v133;
  *&v188 = 0xD000000000000024;
  *(&v188 + 1) = 0x8000000214793480;
  v189 = 0xD00000000000001CLL;
  v190 = v168;

  sub_213FDC9D0(v131, v132);
  v134 = v130(&v180, v173, &v188);
  if ((v134 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v144 = 0xD000000000000024;
    v144[1] = 0x8000000214793480;
    v145 = v168;
    v144[2] = 0xD00000000000001CLL;
    v144[3] = v145;
    swift_willThrow();

    sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
    (*(v172 + 8))(v171, v169);
    v146 = v159;
    v147 = *(v159 + 8);
    v148 = *(v159 + 16);
    v149 = *(v159 + 24);

    sub_213FDC6D0(v148, v149);
    *v146 = v130;
    *(v146 + 8) = v129;
    *(v146 + 16) = v131;
    *(v146 + 24) = v132;
    *(v146 + 32) = v192;
    v66 = v170;
    return sub_21432887C(v66, type metadata accessor for Chatbot.CardMedia);
  }

  sub_213FDC6D0(v131, v132);

  sub_213FB2DF4(v167, &unk_27C9131A0, &unk_2146E9D10);
  (*(v172 + 8))(v171, v169);
  v139 = v159;
  v140 = *(v159 + 8);
  v141 = *(v159 + 16);
  v142 = *(v159 + 24);

  result = sub_213FDC6D0(v141, v142);
  *v139 = v130;
  *(v139 + 8) = v129;
  v143 = v165;
  *(v139 + 16) = v166;
  *(v139 + 24) = v143;
  *(v139 + 32) = v192;
  return result;
}

uint64_t sub_21429A634()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x746867696568;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000011;
    if (v1 == 4)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 5u)
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
    v2 = 0x4C5255616964656DLL;
    v3 = 0x6C6946616964656DLL;
    if (v1 != 2)
    {
      v3 = 0x69616E626D756874;
    }

    if (*v0)
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
}

uint64_t sub_21429A74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214385164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21429A774(uint64_t a1)
{
  v2 = sub_21431BA60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21429A7B0(uint64_t a1)
{
  v2 = sub_21431BA60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21429A7EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v165 = &v142 - v4;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v5 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v167 = &v142 - v6;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v163 = *(v168 - 8);
  v7 = *(v163 + 64);
  MEMORY[0x28223BE20](v168);
  v169 = &v142 - v8;
  v172 = sub_2146D8958();
  v170 = *(v172 - 8);
  v9 = *(v170 + 64);
  MEMORY[0x28223BE20](v172);
  v173 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C1E8, &qword_2146F6B60);
  v171 = *(v11 - 8);
  v12 = *(v171 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v142 - v13;
  v15 = type metadata accessor for Chatbot.CardMedia(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BA60();
  v20 = v193;
  sub_2146DAA08();
  if (v20)
  {
    v21 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v22 = v15;
  v193 = a1;
  v161 = v18;
  LOBYTE(v189) = 0;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260]);
  sub_2146DA1C8();
  LOBYTE(v189) = 1;
  *&v160 = sub_2146DA168();
  *(&v160 + 1) = v24;
  LOBYTE(v189) = 2;
  v159 = sub_2146DA1A8();
  LOBYTE(v189) = 3;
  sub_2142E27A8();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v181) = 4;
  *&v158 = sub_2142E12FC();
  sub_2146DA1C8();
  v157 = v189;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v181) = 5;
  sub_2142E11FC();
  sub_2146DA1C8();
  v156 = v189;
  v155 = BYTE8(v189);
  LOBYTE(v181) = 6;
  sub_21431BAB4();
  sub_2146DA1C8();
  LODWORD(v154) = v189;
  LOBYTE(v181) = 7;
  sub_2146DA1C8();
  v151 = v14;
  v152 = v11;
  v153 = *(&v189 + 1);
  v142 = v189;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v158 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v26 = sub_214069764(&unk_282654778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v27 + 16) = sub_21438F524;
  *(v27 + 24) = v28;
  *(inited + 32) = v27;
  v29 = v161;
  sub_214042F80(inited, v161);
  v30 = swift_initStackObject();
  *(v30 + 16) = v158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_214064194;
  *(v31 + 24) = 0;
  *(v30 + 32) = v31;
  sub_214042B80(v30, &v189);
  v32 = v190;
  v150 = v191;
  LODWORD(v149) = v192;
  v33 = swift_initStackObject();
  *(v33 + 16) = v158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v34 = swift_allocObject();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2146ED240;
  *(v34 + 16) = sub_21438F468;
  *(v34 + 24) = v35;
  *(v33 + 32) = v34;
  sub_21404328C(v33, &v185);
  v36 = v186;
  LODWORD(v158) = v187;
  LODWORD(v148) = v188;
  v37 = v22;
  v143 = v22[7];
  sub_2145C4DD8(v29 + v143);
  sub_2145C4F2C(&v181);
  v146 = v183;
  v147 = v182;
  v145 = v184;
  sub_2145C4F60(&v176);
  v38 = v177;
  LOBYTE(v22) = v178;
  LOBYTE(v26) = v179;
  v144 = v180;
  sub_2145C50A4(v174);
  v39 = v175;
  v40 = v29 + v37[5];
  *v40 = v189;
  v41 = v150;
  *(v40 + 2) = v32;
  *(v40 + 3) = v41;
  v150 = v40;
  v40[32] = v149;
  v42 = v29 + v37[6];
  *v42 = v185;
  *(v42 + 2) = v36;
  v42[24] = v158;
  *&v158 = v42;
  v42[25] = v148;
  v43 = v29 + v37[8];
  *v43 = v181;
  v44 = v146;
  *(v43 + 2) = v147;
  *(v43 + 3) = v44;
  v149 = v43;
  LOBYTE(v44) = v144;
  v43[32] = v145;
  v45 = v29 + v37[9];
  *v45 = v176;
  *(v45 + 2) = v38;
  v45[24] = v22;
  v45[25] = v26;
  v148 = v45;
  v45[26] = v44;
  *(v29 + v37[10]) = v154;
  v46 = v29 + v37[11];
  v47 = v174[1];
  *v46 = v174[0];
  *(v46 + 1) = v47;
  v147 = v46;
  v46[32] = v39;
  v48 = v167;
  sub_213FB2E54(v29, v167, &unk_27C9131D0, &qword_2146EAA70);
  v49 = *v48;
  v50 = *(v48 + 8);
  LOBYTE(v181) = *(v48 + *(v166 + 32));
  *&v189 = 0xD00000000000001ALL;
  *(&v189 + 1) = 0x8000000214793390;
  v190 = 0xD00000000000001CLL;
  v191 = 0x800000021478A360;
  v51 = v49(v173, &v181, &v189);
  v154 = 0x800000021478A360;
  if ((v51 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v69 = 0xD00000000000001ALL;
    v69[1] = 0x8000000214793390;
    v69[2] = 0xD00000000000001CLL;
    v69[3] = v154;
    swift_willThrow();
    sub_213FB2DF4(v169, &unk_27C9131A0, &unk_2146E9D10);
    (*(v170 + 8))(v173, v172);
    (*(v171 + 8))(v151, v152);
    v70 = v161;
    v71 = &unk_27C9131D0;
    v72 = &qword_2146EAA70;
    v73 = v167;
    v74 = v161;
    goto LABEL_9;
  }

  v52 = v154;

  v53 = v167;
  v54 = *(v166 + 28);
  sub_213FB2DF4(v167 + v54, &unk_27C9131A0, &unk_2146E9D10);
  v55 = v170;
  v56 = v172;
  (*(v170 + 16))(v53 + v54, v173, v172);
  (*(v55 + 56))(v53 + v54, 0, 1, v56);
  sub_21402EDB8(v53, v161, &unk_27C9131D0, &qword_2146EAA70);
  v58 = *v150;
  v57 = *(v150 + 8);
  v59 = *(v150 + 24);
  v166 = *(v150 + 16);
  v60 = *(v150 + 32);
  v181 = v160;
  LODWORD(v167) = v60;
  LOBYTE(v174[0]) = v60;
  *&v189 = 0xD000000000000022;
  *(&v189 + 1) = 0x80000002147933B0;
  v190 = 0xD00000000000001CLL;
  v191 = v52;

  if ((v58(&v181, v174, &v189) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v75 = 0xD000000000000022;
    v75[1] = 0x80000002147933B0;
    v76 = v154;
    v75[2] = 0xD00000000000001CLL;
    v75[3] = v76;
    swift_willThrow();

    sub_213FB2DF4(v169, &unk_27C9131A0, &unk_2146E9D10);
    (*(v170 + 8))(v173, v172);
    (*(v171 + 8))(v151, v152);
    v77 = v150;
    v78 = *(v150 + 8);
    v79 = *(v150 + 24);

    *v77 = v58;
    *(v77 + 8) = v57;
    *(v77 + 16) = v166;
    *(v77 + 24) = v59;
    *(v77 + 32) = v167;
LABEL_12:
    v70 = v161;
    goto LABEL_10;
  }

  v61 = v154;

  v62 = v150;
  v63 = *(v150 + 8);
  v64 = *(v150 + 24);

  *v62 = v58;
  *(v62 + 8) = v57;
  v65 = *(&v160 + 1);
  *(v62 + 16) = v160;
  *(v62 + 24) = v65;
  *(v62 + 32) = v167;
  v67 = *v158;
  v66 = *(v158 + 8);
  v167 = *(v158 + 16);
  v68 = *(v158 + 25);
  LOBYTE(v174[0]) = *(v158 + 24);
  *&v181 = v159;
  LOBYTE(v176) = v68;
  *&v189 = 0xD00000000000001FLL;
  *(&v189 + 1) = 0x80000002147933E0;
  v190 = 0xD00000000000001CLL;
  v191 = v61;

  if ((v67(&v181, &v176, &v189) & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v86 = 0xD00000000000001FLL;
    v86[1] = 0x80000002147933E0;
    v87 = v154;
    v86[2] = 0xD00000000000001CLL;
    v86[3] = v87;
    swift_willThrow();
    sub_213FB2DF4(v169, &unk_27C9131A0, &unk_2146E9D10);
    (*(v170 + 8))(v173, v172);
    (*(v171 + 8))(v151, v152);
    v88 = v174[0];
    v89 = v158;
    v90 = *(v158 + 8);

    *v89 = v67;
    *(v89 + 8) = v66;
    *(v89 + 16) = v167;
    *(v89 + 24) = v88;
    *(v89 + 25) = v68;
    goto LABEL_12;
  }

  v80 = v154;

  v81 = v158;
  v82 = *(v158 + 8);

  *v81 = v67;
  *(v81 + 8) = v66;
  *(v81 + 16) = v159;
  *(v81 + 24) = 0;
  *(v81 + 25) = v68;
  v83 = v165;
  sub_213FB2E54(v161 + v143, v165, &qword_27C903F38, &unk_2146E9D40);
  v84 = *v83;
  v85 = *(v83 + 8);
  LOBYTE(v181) = *(v83 + *(v164 + 32));
  *&v189 = 0xD00000000000001ELL;
  *(&v189 + 1) = 0x8000000214793400;
  v190 = 0xD00000000000001CLL;
  v191 = v80;
  if (v84(v169, &v181, &v189))
  {
    v91 = v154;

    v92 = v165;
    v93 = *(v164 + 28);
    sub_213FB2DF4(v165 + v93, &qword_27C903F40, &unk_2146F1C50);
    sub_213FB2E54(v169, v92 + v93, &unk_27C9131A0, &unk_2146E9D10);
    (*(v163 + 56))(v92 + v93, 0, 1, v168);
    sub_21402EDB8(v92, v161 + v143, &qword_27C903F38, &unk_2146E9D40);
    v95 = *v149;
    v94 = *(v149 + 1);
    v96 = *(v149 + 2);
    v97 = *(v149 + 3);
    v98 = v149[32];
    v181 = v157;
    LOBYTE(v174[0]) = v98;
    *&v189 = 0xD000000000000026;
    *(&v189 + 1) = 0x8000000214793420;
    v190 = 0xD00000000000001CLL;
    v191 = v91;

    v167 = v96;
    sub_213FDC9D0(v96, v97);
    v168 = v95;
    if (v95(&v181, v174, &v189))
    {
      sub_213FDC6D0(v167, v97);
      v101 = v154;

      v102 = v149;
      v103 = *(v149 + 1);
      v104 = *(v149 + 2);
      v105 = *(v149 + 3);

      sub_213FDC6D0(v104, v105);
      *v102 = v168;
      *(v102 + 1) = v94;
      v106 = *(&v157 + 1);
      *(v102 + 2) = v157;
      *(v102 + 3) = v106;
      v102[32] = v98;
      v108 = *v148;
      v107 = *(v148 + 1);
      v109 = *(v148 + 2);
      LODWORD(v168) = v148[24];
      v110 = v148[26];
      LOBYTE(v174[0]) = v148[25];
      *&v181 = v156;
      BYTE8(v181) = v155;
      LOBYTE(v176) = v110;
      *&v189 = 0xD000000000000023;
      *(&v189 + 1) = 0x8000000214793450;
      v190 = 0xD00000000000001CLL;
      v191 = v101;

      if (v108(&v181, &v176, &v189))
      {
        v118 = v154;

        v119 = v148;
        v120 = *(v148 + 1);

        *v119 = v108;
        *(v119 + 1) = v107;
        *(v119 + 2) = v156;
        v119[24] = v155;
        v119[25] = 0;
        v119[26] = v110;
        v122 = *v147;
        v121 = *(v147 + 1);
        v123 = *(v147 + 2);
        v124 = *(v147 + 3);
        v125 = v147[32];
        *&v181 = v142;
        *(&v181 + 1) = v153;
        LODWORD(v168) = v125;
        LOBYTE(v174[0]) = v125;
        *&v189 = 0xD000000000000024;
        *(&v189 + 1) = 0x8000000214793480;
        v190 = 0xD00000000000001CLL;
        v191 = v118;

        v167 = v123;
        sub_213FDC9D0(v123, v124);
        if (v122(&v181, v174, &v189))
        {
          sub_213FDC6D0(v167, v124);

          sub_213FB2DF4(v169, &unk_27C9131A0, &unk_2146E9D10);
          (*(v170 + 8))(v173, v172);
          (*(v171 + 8))(v151, v152);
          v131 = v147;
          v132 = *(v147 + 1);
          v133 = *(v147 + 2);
          v134 = *(v147 + 3);

          sub_213FDC6D0(v133, v134);
          *v131 = v122;
          *(v131 + 1) = v121;
          v135 = v153;
          *(v131 + 2) = v142;
          *(v131 + 3) = v135;
          v131[32] = v168;
          sub_214328704(v161, v162, type metadata accessor for Chatbot.CardMedia);
          v21 = v193;
          return __swift_destroy_boxed_opaque_existential_1(v21);
        }

        sub_214031C4C();
        swift_allocError();
        *v136 = 0xD000000000000024;
        v136[1] = 0x8000000214793480;
        v137 = v154;
        v136[2] = 0xD00000000000001CLL;
        v136[3] = v137;
        swift_willThrow();

        sub_213FB2DF4(v169, &unk_27C9131A0, &unk_2146E9D10);
        (*(v170 + 8))(v173, v172);
        (*(v171 + 8))(v151, v152);
        v138 = v147;
        v139 = *(v147 + 1);
        v140 = *(v147 + 2);
        v141 = *(v147 + 3);

        sub_213FDC6D0(v140, v141);
        *v138 = v122;
        *(v138 + 1) = v121;
        *(v138 + 2) = v167;
        *(v138 + 3) = v124;
        v138[32] = v168;
      }

      else
      {

        sub_214031C4C();
        swift_allocError();
        *v126 = 0xD000000000000023;
        v126[1] = 0x8000000214793450;
        v127 = v154;
        v126[2] = 0xD00000000000001CLL;
        v126[3] = v127;
        swift_willThrow();
        sub_213FB2DF4(v169, &unk_27C9131A0, &unk_2146E9D10);
        (*(v170 + 8))(v173, v172);
        (*(v171 + 8))(v151, v152);
        v128 = v174[0];
        v129 = v148;
        v130 = *(v148 + 1);

        *v129 = v108;
        *(v129 + 1) = v107;
        *(v129 + 2) = v109;
        v129[24] = v168;
        v129[25] = v128;
        v129[26] = v110;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v111 = 0xD000000000000026;
      v111[1] = 0x8000000214793420;
      v112 = v154;
      v111[2] = 0xD00000000000001CLL;
      v111[3] = v112;
      swift_willThrow();

      sub_213FB2DF4(v169, &unk_27C9131A0, &unk_2146E9D10);
      (*(v170 + 8))(v173, v172);
      (*(v171 + 8))(v151, v152);
      v113 = v149;
      v114 = *(v149 + 1);
      v115 = *(v149 + 2);
      v116 = *(v149 + 3);

      sub_213FDC6D0(v115, v116);
      v117 = v167;
      *v113 = v168;
      *(v113 + 1) = v94;
      *(v113 + 2) = v117;
      *(v113 + 3) = v97;
      v113[32] = v98;
    }

    goto LABEL_12;
  }

  sub_214031C4C();
  swift_allocError();
  *v99 = 0xD00000000000001ELL;
  v99[1] = 0x8000000214793400;
  v100 = v154;
  v99[2] = 0xD00000000000001CLL;
  v99[3] = v100;
  swift_willThrow();
  sub_213FB2DF4(v169, &unk_27C9131A0, &unk_2146E9D10);
  (*(v170 + 8))(v173, v172);
  (*(v171 + 8))(v151, v152);
  v71 = &qword_27C903F38;
  v72 = &unk_2146E9D40;
  v70 = v161;
  v74 = (v161 + v143);
  v73 = v165;
LABEL_9:
  sub_21402EDB8(v73, v74, v71, v72);
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v193);
  return sub_21432887C(v70, type metadata accessor for Chatbot.CardMedia);
}

uint64_t sub_21429BE9C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v45 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v46 = *(v48 - 8);
  v5 = *(v46 + 64);
  v6 = MEMORY[0x28223BE20](v48);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - v8;
  v10 = sub_2146D8958();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C200, &qword_2146F6B68);
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BA60();
  v20 = v50;
  sub_2146DAA28();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v20 + *(v21 + 28), v9, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v42 = &unk_27C9131A0;
    v43 = &unk_2146E9D10;
    v44 = v9;
    goto LABEL_12;
  }

  (*(v11 + 32))(v14, v9, v10);
  LOBYTE(v53) = 0;
  sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260]);
  v22 = v51;
  sub_2146DA388();
  v23 = v15;
  if (v22)
  {
    (*(v11 + 8))(v14, v10);
    return (*(v52 + 8))(v18, v15);
  }

  else
  {
    (*(v11 + 8))(v14, v10);
    v25 = type metadata accessor for Chatbot.CardMedia(0);
    v26 = v20 + *(v25 + 20);
    if (!*(v26 + 24))
    {
      goto LABEL_13;
    }

    v27 = v25;
    v28 = *(v26 + 16);
    LOBYTE(v53) = 1;

    sub_2146DA328();

    v29 = v20 + v27[6];
    if (*(v29 + 24))
    {
      goto LABEL_13;
    }

    v30 = *(v29 + 16);
    LOBYTE(v53) = 2;
    sub_2146DA368();
    v31 = v18;
    v32 = v20;
    v33 = v20 + v27[7];
    v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) + 28);
    v20 = v47;
    sub_213FB2E54(v34, v47, &qword_27C903F40, &unk_2146F1C50);
    if ((*(v46 + 48))(v20, 1, v48) == 1)
    {
      goto LABEL_14;
    }

    v35 = v20;
    v20 = v49;
    sub_21408AC04(v35, v49, &unk_27C9131A0, &unk_2146E9D10);
    LOBYTE(v53) = 3;
    sub_2142E2910();
    sub_2146DA388();
    sub_213FB2DF4(v20, &unk_27C9131A0, &unk_2146E9D10);
    v36 = v32 + v27[8];
    v37 = *(v36 + 24);
    if (v37 == 1)
    {
      goto LABEL_13;
    }

    v20 = v32;
    v53 = *(v36 + 16);
    v54 = v37;
    v55 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v38 = v32 + v27[9];
    if (*(v38 + 25))
    {
      goto LABEL_13;
    }

    v39 = *(v38 + 24);
    v53 = *(v38 + 16);
    LOBYTE(v54) = v39 & 1;
    v55 = 5;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    LOBYTE(v53) = *(v32 + v27[10]);
    v55 = 6;
    sub_21431BB08();
    sub_2146DA388();
    v40 = v32 + v27[11];
    v41 = *(v40 + 24);
    if (v41 == 1)
    {
LABEL_13:
      while (1)
      {
        sub_2146DA018();
        __break(1u);
LABEL_14:
        v42 = &qword_27C903F40;
        v43 = &unk_2146F1C50;
        v44 = v20;
LABEL_12:
        sub_213FB2DF4(v44, v42, v43);
      }
    }

    v53 = *(v40 + 16);
    v54 = v41;
    v55 = 7;
    sub_2146DA388();
    return (*(v52 + 8))(v31, v23);
  }
}

uint64_t sub_21429C614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  LOBYTE(v17) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 200;
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
  v17 = 0xD00000000000001DLL;
  v18 = 0x80000002147934B0;
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
    *v14 = 0xD00000000000001DLL;
    v14[1] = 0x80000002147934B0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21429C85C(uint64_t a1)
{
  v2 = sub_21431BB5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21429C898(uint64_t a1)
{
  v2 = sub_21431BB5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21429C8D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C210, &qword_2146F6B70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BB5C();
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
  *(v16 + 16) = 200;
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
  v31 = 0xD00000000000001DLL;
  v32 = 0x80000002147934B0;
  v26 = 0x80000002147934B0;
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
  *v23 = 0xD00000000000001DLL;
  v23[1] = v20;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21429CCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  LOBYTE(v17) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 2000;
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
  v18 = 0x80000002147934D0;
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
    v14[1] = 0x80000002147934D0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21429CEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6156676E69727473 && a2 == 0xEB0000000065756CLL)
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

uint64_t sub_21429CF84(uint64_t a1)
{
  v2 = sub_21431BBB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21429CFC0(uint64_t a1)
{
  v2 = sub_21431BBB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21429CFFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C228, &qword_2146F6B80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BBB0();
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
  *(v16 + 16) = 2000;
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
  v32 = 0x80000002147934D0;
  v26 = 0x80000002147934D0;
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

uint64_t sub_21429D3C8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v15 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = *(v4 + 24);
  v14 = *(v4 + 16);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_2146DAA28();
  if (v11)
  {

    sub_2146DA328();
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21429D5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  sub_214328704(a1, a6, a3);
  v10 = a4(0);
  return sub_214328704(a2, a6 + *(v10 + 20), a5);
}

uint64_t sub_21429D658(uint64_t a1)
{
  v2 = sub_21431BC04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21429D694(uint64_t a1)
{
  v2 = sub_21431BC04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21429D6D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C240, &qword_2146F6B90);
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = *(v22 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BC04();
  v16 = v24;
  sub_2146DAA08();
  if (!v16)
  {
    v17 = v22;
    v26 = 0;
    sub_214328930(&qword_27C90C250, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
    sub_2146DA1C8();
    v25 = 1;
    sub_214328930(&qword_27C90C258, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content);
    sub_2146DA1C8();
    (*(v17 + 8))(v14, v23);
    v19 = v21;
    sub_214328704(v10, v21, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
    v20 = type metadata accessor for Chatbot.GeneralPurposeCardMessage(0);
    sub_214328704(v6, v19 + *(v20 + 20), type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21429D9F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C260, &qword_2146F6B98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431BC04();
  sub_2146DAA28();
  v11[15] = 0;
  type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout(0);
  sub_214328930(&qword_27C90C268, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
  sub_2146DA388();
  if (!v1)
  {
    v9 = *(type metadata accessor for Chatbot.GeneralPurposeCardMessage(0) + 20);
    v11[14] = 1;
    type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content(0);
    sub_214328930(&qword_27C90C270, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Content);
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_21429DC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v21 - v10);
  v12 = *(type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout(0) + 24);
  sub_2145C5B2C(&a4[v12]);
  *a4 = a1;
  *(a4 + 1) = a2;
  v22 = v12;
  sub_213FB2E54(&a4[v12], v11, &qword_27C903F38, &unk_2146E9D40);
  v13 = *v11;
  v14 = v11[1];
  v24 = *(v11 + *(v8 + 32));
  v23[0] = 0xD000000000000040;
  v23[1] = 0x8000000214793500;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  v15 = v21;
  v16 = v13(a3, &v24, v23);
  if (v15)
  {
    sub_213FB2DF4(a3, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    if (v16)
    {

      v17 = *(v8 + 28);
      sub_213FB2DF4(v11 + v17, &qword_27C903F40, &unk_2146F1C50);
      sub_21408AC04(a3, v11 + v17, &unk_27C9131A0, &unk_2146E9D10);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      (*(*(v18 - 8) + 56))(v11 + v17, 0, 1, v18);
      return sub_21402EDB8(v11, &a4[v22], &qword_27C903F38, &unk_2146E9D40);
    }

    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000040;
    v20[1] = 0x8000000214793500;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a3, &unk_27C9131A0, &unk_2146E9D10);
  }

  sub_21402EDB8(v11, &a4[v22], &qword_27C903F38, &unk_2146E9D40);
  return sub_21432887C(a4, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout);
}

uint64_t sub_21429DEE4()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x4C5255656C797473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F46656C746974;
  }
}

uint64_t sub_21429DF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214385404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21429DF78(uint64_t a1)
{
  v2 = sub_21431BC58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21429DFB4(uint64_t a1)
{
  v2 = sub_21431BC58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21429DFF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v42 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C278, &qword_2146F6BA0);
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v13 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_21431BC58();
  v19 = v44;
  sub_2146DAA08();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v44 = v8;
  v38 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C288, &qword_2146F6BA8);
  v47 = 0;
  sub_21431BCAC();
  sub_2146DA1C8();
  v20 = v46[0];
  v47 = 1;
  sub_2146DA1C8();
  v21 = v46[0];
  LOBYTE(v46[0]) = 2;
  sub_2142E27A8();
  sub_2146DA1C8();
  v36 = v12;
  v37 = v9;
  v23 = *(v13 + 24);
  v24 = v20;
  v25 = v38;
  sub_2145C5B2C(v38 + v23);
  *v25 = v24;
  v25[1] = v21;
  v26 = v42;
  sub_213FB2E54(v25 + v23, v42, &qword_27C903F38, &unk_2146E9D40);
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + *(v41 + 32));
  v30 = v44;
  v47 = v29;
  v46[0] = 0xD000000000000040;
  v46[1] = 0x8000000214793500;
  v46[2] = 0xD00000000000001CLL;
  v46[3] = 0x800000021478A360;
  v31 = v27(v44, &v47, v46);
  v32 = v43;
  if (v31)
  {

    (*(v32 + 8))(v36, v37);
    v33 = *(v41 + 28);
    v34 = v42;
    sub_213FB2DF4(v42 + v33, &qword_27C903F40, &unk_2146F1C50);
    sub_21408AC04(v30, v34 + v33, &unk_27C9131A0, &unk_2146E9D10);
    (*(v39 + 56))(v34 + v33, 0, 1, v5);
    sub_21402EDB8(v34, v25 + v23, &qword_27C903F38, &unk_2146E9D40);
    sub_214328704(v25, v40, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout);
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  sub_214031C4C();
  swift_allocError();
  *v35 = 0xD000000000000040;
  v35[1] = 0x8000000214793500;
  v35[2] = 0xD00000000000001CLL;
  v35[3] = 0x800000021478A360;
  swift_willThrow();
  sub_213FB2DF4(v30, &unk_27C9131A0, &unk_2146E9D10);
  (*(v32 + 8))(v36, v37);
  sub_21402EDB8(v42, v25 + v23, &qword_27C903F38, &unk_2146E9D40);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_21432887C(v25, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout);
}