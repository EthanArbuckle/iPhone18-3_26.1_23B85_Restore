uint64_t sub_2141E63D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214375320(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141E63F8(uint64_t a1)
{
  v2 = sub_2143064C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E6434(uint64_t a1)
{
  v2 = sub_2143064C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E6470@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9096E0, &qword_2146F5798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143064C8();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9096F0, &qword_2146F57A0);
    v26 = 0;
    sub_21430651C();
    sub_2146DA1C8();
    v11 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909708, &qword_2146F57A8);
    v26 = 1;
    sub_2143065F4();
    sub_2146DA1C8();
    v25 = v11;
    v23 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v26 = 2;
    v13 = sub_2142E1378();
    sub_2146DA1C8();
    v22 = v24;
    v26 = 3;
    sub_2146DA1C8();
    v21 = v24;
    v26 = 4;
    sub_2146DA1C8();
    v20 = v13;
    LODWORD(v13) = v24;
    v26 = 5;
    sub_214306750();
    sub_2146DA1C8();
    v18 = v24;
    v19 = v13;
    v26 = 6;
    sub_2146DA1C8();
    HIDWORD(v17) = v24;
    v26 = 7;
    sub_2146DA1C8();
    LOBYTE(v13) = v22;
    LOBYTE(v11) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909738, &qword_2146F57B8);
    v26 = 8;
    sub_2143067A4();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v14 = v23;
    v15 = v24;
    *a2 = v25;
    *(a2 + 8) = v14;
    *(a2 + 16) = v13;
    *(a2 + 17) = v21;
    v16 = v18;
    *(a2 + 18) = v19;
    *(a2 + 19) = v16;
    *(a2 + 20) = BYTE4(v17);
    *(a2 + 21) = v11;
    *(a2 + 22) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141E68B4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909750, &qword_2146F57C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = *v1;
  v26 = *(v1 + 1);
  v28 = v1[16];
  v10 = v1[17];
  v24 = v1[18];
  v25 = v10;
  v11 = v1[19];
  v22 = v1[20];
  v23 = v11;
  v12 = v1[21];
  v20 = *(v1 + 22);
  v21 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143064C8();
  sub_2146DAA28();
  LOBYTE(v27) = v9;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9096F0, &qword_2146F57A0);
  sub_21430687C();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = v28;
  v16 = v24;
  v15 = v25;
  v27 = v26;
  v29 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909708, &qword_2146F57A8);
  sub_214306954();
  sub_2146DA388();
  LOBYTE(v27) = v14;
  v29 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  v26 = v8;
  sub_2146DA388();
  LOBYTE(v27) = v15;
  v29 = 3;
  sub_2146DA388();
  LOBYTE(v27) = v16;
  v29 = 4;
  sub_2146DA388();
  LOBYTE(v27) = v23;
  v29 = 5;
  sub_214306AB0();
  sub_2146DA388();
  LOBYTE(v27) = v22;
  v29 = 6;
  sub_2146DA388();
  LOBYTE(v27) = v21;
  v29 = 7;
  sub_2146DA388();
  LODWORD(v27) = v20;
  v29 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909738, &qword_2146F57B8);
  sub_214306B04();
  v17 = v26;
  sub_2146DA388();
  return (*(v5 + 8))(v17, v4);
}

uint64_t sub_2141E6CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[0] = a3;
  v5 = type metadata accessor for SwiftRegexValidator();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903228 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v11 = __swift_project_value_buffer(v10, qword_27CA19EB0);
  (*(*(v10 - 8) + 16))(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_214328704(v8, v14 + v13, type metadata accessor for SwiftRegexValidator);
  *(v12 + 16) = sub_21438F684;
  *(v12 + 24) = v14;
  *(inited + 32) = v12;
  sub_214042B80(inited, &v25);
  v16 = v25;
  v15 = v26;
  v17 = v29;
  v24[0] = a1;
  v24[1] = a2;
  v30 = v29;
  v25 = 0xD000000000000019;
  v26 = 0x8000000214790760;
  v27 = 0xD00000000000001CLL;
  v28 = 0x800000021478A360;

  v18 = v23[1];
  v19 = v16(v24, &v30, &v25);
  if (v18)
  {
  }

  else
  {
    if (v19)
    {

      result = swift_bridgeObjectRelease_n();
      v21 = v23[0];
      *v23[0] = v16;
      *(v21 + 8) = v15;
      *(v21 + 16) = a1;
      *(v21 + 24) = a2;
      *(v21 + 32) = v17;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000019;
    v22[1] = 0x8000000214790760;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2141E701C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_2141E70A0(uint64_t a1)
{
  v2 = sub_214306BDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E70DC(uint64_t a1)
{
  v2 = sub_214306BDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E7118@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  v4 = type metadata accessor for SwiftRegexValidator();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909798, &qword_2146F57C8);
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306BDC();
  sub_2146DAA08();
  if (v2)
  {
    v12 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v11 = sub_2146DA168();
  v29 = v6;
  v30 = v9;
  v31 = v11;
  v32 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v16 = inited;
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903228 != -1)
  {
    swift_once();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v18 = __swift_project_value_buffer(v17, qword_27CA19EB0);
  (*(*(v17 - 8) + 16))(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  v20 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v21 = swift_allocObject();
  sub_214328704(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for SwiftRegexValidator);
  *(v19 + 16) = sub_21438F684;
  *(v19 + 24) = v21;
  *(v16 + 32) = v19;
  sub_214042B80(v16, &v37);
  v23 = v37;
  v22 = v38;
  v24 = v41;
  v36[0] = v31;
  v36[1] = v32;
  v42 = v41;
  v37 = 0xD000000000000019;
  v38 = 0x8000000214790760;
  v39 = 0xD00000000000001CLL;
  v40 = 0x800000021478A360;

  if (v23(v36, &v42, &v37))
  {

    (*(v35 + 8))(v30, v29);

    v12 = a1;
    v25 = v33;
    *v33 = v23;
    v25[1] = v22;
    v26 = v32;
    v25[2] = v31;
    v25[3] = v26;
    *(v25 + 32) = v24;
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  sub_214031C4C();
  swift_allocError();
  *v27 = 0xD000000000000019;
  v27[1] = 0x8000000214790760;
  v27[2] = 0xD00000000000001CLL;
  v27[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v35 + 8))(v30, v29);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141E7620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = type metadata accessor for SwiftRegexValidator();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  sub_2146D8D98();
  (*(v10 + 32))(v8, v13, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v15 = swift_allocObject();
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_214328704(v8, v17 + v16, type metadata accessor for SwiftRegexValidator);
  *(v15 + 16) = sub_21438F684;
  *(v15 + 24) = v17;
  *(inited + 32) = v15;
  sub_214042B80(inited, &v30);
  v19 = v30;
  v18 = v31;
  v20 = v34;
  v29[0] = a1;
  v29[1] = a2;
  v35 = v34;
  v30 = 0xD000000000000019;
  v31 = 0x8000000214790780;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v21 = v28;
  v22 = v19(v29, &v35, &v30);
  if (v21)
  {
  }

  else
  {
    v28 = a2;
    v23 = v27;
    if (v22)
    {

      result = swift_bridgeObjectRelease_n();
      *v23 = v19;
      *(v23 + 8) = v18;
      v25 = v28;
      *(v23 + 16) = a1;
      *(v23 + 24) = v25;
      *(v23 + 32) = v20;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000019;
    v26[1] = 0x8000000214790780;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2141E79C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E647369736DLL && a2 == 0xE600000000000000)
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

uint64_t sub_2141E7A4C(uint64_t a1)
{
  v2 = sub_214306C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E7A88(uint64_t a1)
{
  v2 = sub_214306C30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E7AC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for SwiftRegexValidator();
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9097B0, &qword_2146F57D8);
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306C30();
  v14 = v42;
  sub_2146DAA08();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = v5;
  v15 = v39;
  v16 = v40;
  v17 = sub_2146DA168();
  v33 = v12;
  v34 = v9;
  v35 = v17;
  v36 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  sub_2146D8D98();
  v21 = v16;
  (*(v15 + 32))(v16, v8, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v22 = swift_allocObject();
  v23 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v24 = swift_allocObject();
  sub_214328704(v21, v24 + v23, type metadata accessor for SwiftRegexValidator);
  *(v22 + 16) = sub_21438F684;
  *(v22 + 24) = v24;
  *(inited + 32) = v22;
  sub_214042B80(inited, &v44);
  v26 = v44;
  v25 = v45;
  v27 = v48;
  v43[0] = v35;
  v43[1] = v36;
  v49 = v48;
  v44 = 0xD000000000000019;
  v45 = 0x8000000214790780;
  v46 = 0xD00000000000001CLL;
  v47 = 0x800000021478A360;

  v28 = v26(v43, &v49, &v44);
  if (v28)
  {

    (*(v41 + 8))(v33, v34);

    v29 = v37;
    *v37 = v26;
    v29[1] = v25;
    v30 = v36;
    v29[2] = v35;
    v29[3] = v30;
    *(v29 + 32) = v27;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v31 = 0xD000000000000019;
  v31[1] = 0x8000000214790780;
  v31[2] = 0xD00000000000001CLL;
  v31[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v41 + 8))(v33, v34);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141E8034@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21469BB98(&v30);
  v6 = v30;
  v5 = v31;
  v7 = v33;
  v40 = *(&v33 + 2);
  v41 = HIWORD(v33);
  v26 = v35;
  v27 = v34;
  v21 = v32;
  v22 = v36;
  v8 = v37;
  v23 = v38;
  v42 = v33;
  v39 = v37;
  v29 = v33 & 1;
  v28 = a1;
  v25 = BYTE1(v33);
  v43 = BYTE1(v33);
  v30 = 0xD00000000000001DLL;
  v31 = 0x80000002147907A0;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v24 = v6;
  v9 = v6(&v28, &v43, &v30);
  if (v3)
  {

LABEL_6:
    v13 = v27;

    v42 = v7 & 1;
    a1 = v21;
    v10 = v23;
    v11 = v26;
LABEL_7:
    v30 = v24;
    v31 = v5;
    v32 = a1;
    LOBYTE(v33) = v42;
    BYTE1(v33) = v25;
    *(&v33 + 2) = v40;
    HIWORD(v33) = v41;
    v34 = v13;
    v35 = v11;
    v36 = v22;
    v37 = v39;
    v38 = v10;
    return sub_214306DDC(&v30);
  }

  if ((v9 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD00000000000001DLL;
    v14[1] = 0x80000002147907A0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
    v7 = v29;
    goto LABEL_6;
  }

  v42 = 0;
  v29 = v8 & 1;
  v28 = a2;
  v10 = v23;
  v43 = v23;
  v30 = 0xD00000000000001ELL;
  v31 = 0x80000002147907C0;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;
  v11 = v26;

  v12 = v27(&v28, &v43, &v30);
  v13 = v27;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v17 = 0xD00000000000001ELL;
    v17[1] = 0x80000002147907C0;
    v17[2] = 0xD00000000000001CLL;
    v17[3] = 0x800000021478A360;
    swift_willThrow();
    v18 = v29;

    v39 = v18 & 1;
    goto LABEL_7;
  }

  v39 = 0;
  v16 = v42;
  *a3 = v24;
  *(a3 + 8) = v5;
  *(a3 + 16) = a1;
  *(a3 + 24) = v16;
  *(a3 + 25) = v25;
  *(a3 + 26) = v40;
  *(a3 + 30) = v41;
  *(a3 + 32) = v27;
  *(a3 + 40) = v26;
  *(a3 + 48) = a2;
  *(a3 + 56) = 0;
  *(a3 + 57) = v23;
  return result;
}

uint64_t sub_2141E8370()
{
  if (*v0)
  {
    result = 0x79746964696C6176;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_2141E83AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79746964696C6176 && a2 == 0xE800000000000000)
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

uint64_t sub_2141E8488(uint64_t a1)
{
  v2 = sub_214306E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E84C4(uint64_t a1)
{
  v2 = sub_214306E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E8500@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9097C8, &qword_2146F57E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306E30();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v57) = 0;
  v11 = sub_2146DA1A8();
  v71 = 1;
  v41 = sub_2146DA1A8();
  sub_21469BB98(&v57);
  v13 = v58;
  v51 = v57;
  v44 = v59;
  v67 = *(&v60 + 2);
  v68 = HIWORD(v60);
  v48 = v61;
  v50 = v62;
  v45 = v63;
  v49 = v65;
  v70 = v60;
  v42 = v64;
  v66 = v64;
  v43 = v60;
  LOBYTE(v55) = v60 & 1;
  v40 = v11;
  *&v52 = v11;
  v46 = BYTE1(v60);
  v56[0] = BYTE1(v60);
  v57 = 0xD00000000000001DLL;
  v58 = 0x80000002147907A0;
  v59 = 0xD00000000000001CLL;
  v60 = 0x800000021478A360;

  v47 = v13;
  v14 = v51(&v52, v56, &v57);
  v39 = 0x800000021478A360;
  if (v14)
  {
    v15 = v39;

    v16 = v47;

    v70 = 0;
    v56[0] = v42 & 1;
    v55 = v41;
    LOBYTE(v52) = v49;
    v57 = 0xD00000000000001ELL;
    v58 = 0x80000002147907C0;
    v59 = 0xD00000000000001CLL;
    v60 = v15;

    v17 = v48;
    v18 = v48(&v55, &v52, &v57);
    v19 = v17;
    if (v18)
    {

      (*(v6 + 8))(v9, v5);
      v25 = v50;

      v66 = 0;
      v26 = v16;
      v27 = v51;
      *&v52 = v51;
      *(&v52 + 1) = v26;
      v28 = v40;
      *&v53 = v40;
      LODWORD(v45) = v70;
      BYTE8(v53) = v70;
      v29 = v46;
      BYTE9(v53) = v46;
      *(&v53 + 10) = v67;
      HIWORD(v53) = v68;
      *v54 = v17;
      *&v54[8] = v25;
      v30 = v41;
      *&v54[16] = v41;
      v54[24] = 0;
      v31 = v49;
      v54[25] = v49;
      v32 = v52;
      v33 = v53;
      v34 = *v54;
      *(a2 + 42) = *&v54[10];
      a2[1] = v33;
      a2[2] = v34;
      *a2 = v32;
      sub_214306E84(&v52, &v57);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v57 = v27;
      v58 = v47;
      v59 = v28;
      LOBYTE(v60) = v45;
      BYTE1(v60) = v29;
      *(&v60 + 2) = v67;
      HIWORD(v60) = v68;
      v61 = v48;
      v62 = v25;
      v63 = v30;
      v64 = 0;
      v65 = v31;
      return sub_214306DDC(&v57);
    }

    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD00000000000001ELL;
    v35[1] = 0x80000002147907C0;
    v36 = v39;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = v36;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    v37 = v56[0];

    v66 = v37 & 1;
    v23 = &v69;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD00000000000001DLL;
    v20[1] = 0x80000002147907A0;
    v21 = v39;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = v21;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    v22 = v55;
    v19 = v48;
    v16 = v47;

    v70 = v22 & 1;
    v23 = &v72;
  }

  v24 = *(v23 - 32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v57 = v51;
  v58 = v16;
  v59 = v24;
  LOBYTE(v60) = v70;
  BYTE1(v60) = v46;
  *(&v60 + 2) = v67;
  HIWORD(v60) = v68;
  v61 = v19;
  v62 = v50;
  v63 = v45;
  v64 = v66;
  v65 = v49;
  return sub_214306DDC(&v57);
}

uint64_t sub_2141E8B6C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9097D8, &qword_2146F57F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v13[0] = *(v1 + 48);
  v14 = *(v1 + 56);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306E30();
  sub_2146DAA28();
  if (v9)
  {
    goto LABEL_7;
  }

  v16 = 0;
  v11 = v13[1];
  sub_2146DA368();
  if (v11)
  {
    return (*(v4 + 8))(v7, v3);
  }

  if (v14)
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v15 = 1;
    sub_2146DA368();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

__n128 sub_2141E8D88@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a1[1];
  *v12 = a1[2];
  *&v12[10] = *(a1 + 42);
  v7 = *(a2 + 32);
  v8 = *(a4 + 32);
  *a6 = *a1;
  *(a6 + 16) = v6;
  *(a6 + 32) = *v12;
  *(a6 + 48) = *&v12[16];
  v9 = *(a2 + 16);
  *(a6 + 64) = *a2;
  *(a6 + 80) = v9;
  *(a6 + 96) = v7;
  *(a6 + 104) = *a3;
  result = *a4;
  v11 = *(a4 + 16);
  *(a6 + 120) = *a4;
  *(a6 + 136) = v11;
  *(a6 + 152) = v8;
  *(a6 + 160) = a5;
  return result;
}

unint64_t sub_2141E8DE8()
{
  v1 = *v0;
  v2 = 0xD00000000000001BLL;
  v3 = 0xD00000000000001ALL;
  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  *v0;
  if (*v0 <= 1u)
  {
    result = v4;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_2141E8E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214375618(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141E8E9C(uint64_t a1)
{
  v2 = sub_214306EE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E8ED8(uint64_t a1)
{
  v2 = sub_214306EE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E8F14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9097E0, &qword_2146F57F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214306EE0();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9097F0, &qword_2146F5800);
    v43 = 0;
    sub_214306F34();
    sub_2146DA1C8();
    v37 = *&v39[5];
    v38 = *&v39[7];
    *v39 = *v40;
    *(&v39[1] + 2) = *&v40[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909808, &qword_2146F5808);
    LOBYTE(v36) = 1;
    sub_21430700C();
    sub_2146DA1C8();
    v11 = *(&v33 + 1);
    v31 = v33;
    v12 = *(&v34 + 1);
    v32 = v34;
    v41 = v35[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909820, &qword_2146F5810);
    LOBYTE(v36) = 2;
    sub_2143070E4();
    sub_2146DA1C8();
    v29 = v11;
    v30 = v12;
    v13 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909838, &qword_2146F5818);
    LOBYTE(v36) = 3;
    sub_2143071BC();
    sub_2146DA1C8();
    v28 = v13;
    v25 = v33;
    v26 = v34;
    v27 = v35[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909850, &qword_2146F5820);
    v42 = 4;
    sub_2143072D8();
    sub_2146DA1C8();
    v14 = v30;
    v15 = v32;
    v16 = v29;
    (*(v6 + 8))(v9, v5);
    v18 = v36;
    v19 = v38;
    *v35 = *v39;
    *&v35[10] = *(&v39[1] + 2);
    v33 = v37;
    v34 = v38;
    *a2 = v37;
    *(a2 + 16) = v19;
    v20 = *&v35[16];
    *(a2 + 32) = *v35;
    *(a2 + 48) = v20;
    *(a2 + 64) = v31;
    *(a2 + 72) = v16;
    *(a2 + 80) = v15;
    *(a2 + 88) = v14;
    *(a2 + 96) = v41;
    v21 = *(&v28 + 1);
    *(a2 + 104) = v28;
    *(a2 + 112) = v21;
    v22 = *(&v25 + 1);
    *(a2 + 120) = v25;
    *(a2 + 128) = v22;
    v23 = *(&v26 + 1);
    *(a2 + 136) = v26;
    *(a2 + 144) = v23;
    *(a2 + 152) = v27;
    *(a2 + 160) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141E9508(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909878, &qword_2146F5830);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = v1[1];
  v47 = *v1;
  v48 = v8;
  *v49 = v1[2];
  *&v49[10] = *(v1 + 42);
  v9 = *(v1 + 9);
  v33 = *(v1 + 8);
  v32 = v9;
  v10 = *(v1 + 11);
  v31 = *(v1 + 10);
  v30 = v10;
  v29 = *(v1 + 96);
  v11 = *(v1 + 14);
  v28 = *(v1 + 13);
  v27 = v11;
  v12 = *(v1 + 16);
  v22 = *(v1 + 15);
  v23 = v12;
  v13 = *(v1 + 18);
  v26 = *(v1 + 17);
  v25 = v13;
  v24 = *(v1 + 152);
  v21 = *(v1 + 20);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(&v47, &v44, &qword_27C9097F0, &qword_2146F5800);
  sub_214306EE0();
  v15 = v3;
  sub_2146DAA28();
  v44 = v47;
  v45 = v48;
  *v46 = *v49;
  *&v46[10] = *&v49[10];
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9097F0, &qword_2146F5800);
  sub_214307410();
  v16 = v50;
  sub_2146DA388();
  if (v16)
  {
    v40 = v44;
    v41 = v45;
    *v42 = *v46;
    *&v42[10] = *&v46[10];
    sub_213FB2DF4(&v40, &qword_27C9097F0, &qword_2146F5800);
  }

  else
  {
    v17 = v27;
    v18 = v28;
    v40 = v44;
    v41 = v45;
    *v42 = *v46;
    *&v42[10] = *&v46[10];
    sub_213FB2DF4(&v40, &qword_27C9097F0, &qword_2146F5800);
    v35 = v33;
    v36 = v32;
    v37 = v31;
    v38 = v30;
    v39 = v29;
    v34 = 1;
    sub_21431C5DC(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909808, &qword_2146F5808);
    sub_2143074E8();
    sub_2146DA388();
    sub_21431E10C(v35);
    v35 = v18;
    v36 = v17;
    v34 = 2;
    sub_2143075C0(v18, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909820, &qword_2146F5810);
    sub_214307600();
    sub_2146DA388();
    sub_214307294(v35, v36);
    v35 = v22;
    v36 = v23;
    v37 = v26;
    v38 = v25;
    v39 = v24;
    v34 = 3;
    sub_21431C5DC(v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909838, &qword_2146F5818);
    sub_2143076D8();
    sub_2146DA388();
    sub_21431E10C(v35);
    v35 = v21;
    v34 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909850, &qword_2146F5820);
    sub_2143077B0();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v15);
}

uint64_t sub_2141E9AC4@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_21448CC80(&v40);
  v8 = v40;
  v9 = v41;
  v10 = v42;
  v11 = v43;
  v12 = v44;
  sub_21448CE58(&v52);
  v33 = v53;
  v34 = v52;
  v39 = v54;
  v38 = v55;
  v32 = v56;
  v52 = a2;
  v53 = a3;
  v35 = v12;
  v57 = v12;
  v40 = 0xD000000000000022;
  v41 = 0x80000002147907E0;
  v42 = 0xD00000000000001CLL;
  v43 = 0x800000021478A360;

  v31 = v10;
  v13 = v10;
  v14 = v11;
  sub_213FDC9D0(v13, v11);
  v15 = v8(&v52, &v57, &v40);
  v16 = v8;
  if (v30)
  {

LABEL_6:

    v18 = v33;
    v22 = v31;
    v23 = v9;

    sub_213FDC6D0(v31, v11);
    v17 = v32;
    v19 = v34;
LABEL_7:
    v40 = a1;
    v41 = v16;
    v42 = v23;
    v43 = v22;
    v44 = v14;
    v45 = v35;
    *v46 = *v58;
    *&v46[3] = *&v58[3];
    v47 = v19;
    v48 = v18;
    v49 = v39;
    v50 = v38;
    v51 = v17;
    return sub_2143078E8(&v40);
  }

  v27 = a3;
  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000022;
    v21[1] = 0x80000002147907E0;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v26 = v8;
  sub_213FDC6D0(v31, v11);

  sub_213FDC6D0(v31, v11);
  v52 = a4;
  v53 = a5;
  v17 = v32;
  v57 = v32;
  v40 = 0xD000000000000022;
  v41 = 0x8000000214790810;
  v42 = 0xD00000000000001CLL;
  v43 = 0x800000021478A360;
  v18 = v33;

  sub_213FDC9D0(v39, v38);
  v19 = v34;
  v20 = v34(&v52, &v57, &v40);
  v16 = v26;
  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD000000000000022;
    v25[1] = 0x8000000214790810;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();

    v22 = a2;

    sub_213FDC6D0(v39, v38);
    v14 = v27;
    v23 = v9;
    goto LABEL_7;
  }

  sub_213FDC6D0(v39, v38);

  result = sub_213FDC6D0(v39, v38);
  *a6 = a1;
  *(a6 + 8) = v26;
  *(a6 + 16) = v9;
  *(a6 + 24) = a2;
  *(a6 + 32) = v27;
  *(a6 + 40) = v35;
  *(a6 + 48) = v34;
  *(a6 + 56) = v33;
  *(a6 + 64) = a4;
  *(a6 + 72) = a5;
  *(a6 + 80) = v32;
  return result;
}

uint64_t sub_2141E9E88()
{
  v1 = 0x65636E6F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6469706176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73646F6874656DLL;
  }
}

uint64_t sub_2141E9EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143757C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141E9F04(uint64_t a1)
{
  v2 = sub_21430793C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141E9F40(uint64_t a1)
{
  v2 = sub_21430793C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141E9F7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9098D8, &qword_2146F5838);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430793C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9098E8, &qword_2146F5840);
  LOBYTE(v61) = 0;
  sub_214307990();
  sub_2146DA1C8();
  v85 = a2;
  v11 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v61) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v60 = v11;
  v12 = v69;
  v59 = v68;
  v80 = 2;
  sub_2146DA1C8();
  v46 = v81;
  v54 = v82;
  sub_21448CC80(&v68);
  v14 = v69;
  v58 = v68;
  v15 = v70;
  v47 = v71;
  v16 = v72;
  sub_21448CE58(&v61);
  v56 = *(&v61 + 1);
  v52 = v61;
  v55 = *(&v62 + 1);
  v57 = v62;
  v51 = v63;
  *&v61 = v59;
  v49 = v12;
  *(&v61 + 1) = v12;
  v50 = v16;
  LOBYTE(v67[0]) = v16;
  v68 = 0xD000000000000022;
  v69 = 0x80000002147907E0;
  v70 = 0xD00000000000001CLL;
  v71 = 0x800000021478A360;

  v48 = v15;
  v17 = v15;
  v18 = v47;
  sub_213FDC9D0(v17, v47);
  v53 = v14;
  v19 = v58(&v61, v67, &v68);
  v44 = 0x80000002147907E0;
  v45 = 0x800000021478A360;
  if (v19)
  {
    v20 = v48;
    sub_213FDC6D0(v48, v18);
    v21 = v45;

    sub_213FDC6D0(v20, v18);
    v67[0] = v46;
    v67[1] = v54;
    v22 = v51;
    LOBYTE(v61) = v51;
    v68 = 0xD000000000000022;
    v69 = 0x8000000214790810;
    v70 = 0xD00000000000001CLL;
    v71 = v21;

    sub_213FDC9D0(v57, v55);
    v23 = v52(v67, &v61, &v68);
    v31 = v49;
    if (v23)
    {
      v32 = v55;
      sub_213FDC6D0(v57, v55);

      (*(v6 + 8))(v9, v5);
      v33 = v56;

      sub_213FDC6D0(v57, v32);
      *&v61 = v60;
      v34 = v58;
      *(&v61 + 1) = v58;
      v35 = v53;
      *&v62 = v53;
      *(&v62 + 1) = v59;
      *&v63 = v31;
      v36 = v50;
      BYTE8(v63) = v50;
      v37 = v52;
      *&v64 = v52;
      *(&v64 + 1) = v33;
      *&v65 = v46;
      *(&v65 + 1) = v54;
      v66 = v22;
      v38 = v85;
      *(v85 + 80) = v22;
      v39 = v64;
      v38[2] = v63;
      v38[3] = v39;
      v38[4] = v65;
      v40 = v62;
      *v38 = v61;
      v38[1] = v40;
      sub_214307A68(&v61, &v68);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v68 = v60;
      v69 = v34;
      v70 = v35;
      v71 = v59;
      v72 = v31;
      v73 = v36;
      v75 = v37;
      v76 = v33;
      v77 = v46;
      v30 = &v82;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD000000000000022;
    v41[1] = 0x8000000214790810;
    v42 = v45;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = v42;
    swift_willThrow();

    v43 = v59;
    (*(v6 + 8))(v9, v5);

    sub_213FDC6D0(v57, v55);
    v28 = v43;
    v18 = v31;
    v29 = v60;
    v27 = v53;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v24 = v44;
    *v25 = 0xD000000000000022;
    v25[1] = v24;
    v26 = v45;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = v26;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);
    v27 = v53;

    v28 = v48;
    sub_213FDC6D0(v48, v18);
    v29 = v60;
    v22 = v51;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v68 = v29;
  v69 = v58;
  v70 = v27;
  v71 = v28;
  v72 = v18;
  v73 = v50;
  *v74 = *v84;
  *&v74[3] = *&v84[3];
  v75 = v52;
  v76 = v56;
  v77 = v57;
  v30 = &v83;
LABEL_8:
  v78 = *(v30 - 32);
  v79 = v22;
  return sub_2143078E8(&v68);
}

uint64_t sub_2141EA7B0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909900, &qword_2146F5848);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[9];
  v17 = v1[8];
  v18 = v9;
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430793C();
  sub_2146DAA28();
  v20 = v8;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9098E8, &qword_2146F5840);
  sub_214307AC4();
  v13 = v19;
  sub_2146DA388();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v14 = v17;
  if (v10 != 1)
  {
    v20 = v18;
    v21 = v10;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (v16 != 1)
    {
      v20 = v14;
      v21 = v16;
      v22 = 2;
      sub_2146DA388();
      return (*(v4 + 8))(v7, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141EAA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656E697375427369 && a2 == 0xEA00000000007373)
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

uint64_t sub_2141EAAF4(uint64_t a1)
{
  v2 = sub_214307B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141EAB30(uint64_t a1)
{
  v2 = sub_214307B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141EABB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, _BYTE *a5@<X8>)
{
  v17 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v5)
  {
    v13 = v17;
    v14 = sub_2146DA178();
    (*(v18 + 8))(v11, v8);
    *v13 = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141EAD58(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v15 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = *v4;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_2146DAA28();
  sub_2146DA338();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2141EAEF4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_2146DAA28();
  sub_2146DA338();
  return (*(v9 + 8))(v12, v8);
}

__n128 sub_2141EB034@<Q0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>)
{
  v58 = a8;
  v40.n128_u64[0] = a2;
  v40.n128_u64[1] = a3;
  v28 = *a1;
  v9 = *a6;
  v29 = a6[1];
  v10 = a6[2];
  sub_2146679F4(&v43);
  v11 = v43;
  v13 = v44;
  v12 = v45;
  v14 = v46.n128_u64[0];
  v15 = v46.n128_i8[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = sub_2142E0AD0();
  sub_2140433DC(inited, v56);
  v33 = v56[0];
  v37 = v56[2];
  v38 = v56[1];
  v32 = v57;
  v43 = v11;
  v44 = v13;
  v45 = v12;
  v46.n128_u64[0] = v14;
  v46.n128_u8[8] = v15;

  sub_2142E5A68(v13);
  sub_21403220C(v9, v29, v10, 2, 0x2E6567617373654DLL, 0xEF746E65746E6F63, 0xD00000000000001CLL, 0x800000021478A360);
  sub_214031CE0(v9);

  if (v34)
  {

    v35 = v43;
    v17 = v44;
    v18 = v45;
    v30 = v46.n128_u64[0];
    v19 = v46.n128_i8[8];

    sub_214032578(v13);
    v43 = v40;
    v44 = a4;
    v45 = a5;
    v46 = v35;
    v47 = v17;
    v48 = v18;
    v49 = v30;
    v50 = v19;
    v51 = v33;
    v52 = v38;
    v53 = v37;
    v54 = v32;
    v55 = v58;
    sub_214091594(&v43);
  }

  else
  {
    v36 = v43;
    v25 = v44;
    v26 = v45;
    v31 = v46.n128_u64[0];
    v20 = v46.n128_i8[8];

    sub_214032578(v13);
    v43.n128_u64[0] = v33;
    v43.n128_u64[1] = v38;
    v44 = v37;
    LOBYTE(v45) = v32;

    sub_2140325F8(a7, v28, 0xD000000000000029, 0x8000000214790840, 0xD00000000000001CLL, 0x800000021478A360);

    v21 = v43;
    v22 = v44;
    v23 = v45;

    *a9 = v40;
    a9[1].n128_u64[0] = a4;
    a9[1].n128_u64[1] = a5;
    result = v36;
    a9[2] = v36;
    a9[3].n128_u64[0] = v25;
    a9[3].n128_u64[1] = v26;
    a9[4].n128_u64[0] = v31;
    a9[4].n128_u8[8] = v20;
    a9[5] = v21;
    a9[6].n128_u64[0] = v22;
    a9[6].n128_u8[8] = v23;
    a9[7].n128_u64[0] = v58;
  }

  return result;
}

unint64_t sub_2141EB394()
{
  v1 = *v0;
  v2 = 0x7865546E69616C70;
  v3 = 0xD000000000000032;
  if (v1 != 4)
  {
    v3 = 0x7475626972747461;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000021;
  }

  v4 = 0xD000000000000010;
  if (v1 != 1)
  {
    v4 = 0x746E65746E6F63;
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

uint64_t sub_2141EB478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143758D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141EB4A0(uint64_t a1)
{
  v2 = sub_214307BF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141EB4DC(uint64_t a1)
{
  v2 = sub_214307BF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141EB518@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909930, &qword_2146F5860);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214307BF0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v63 = a1;
  v64 = v5;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_2146DA9F8();
  if (qword_27C903238 != -1)
  {
    swift_once();
  }

  v12 = sub_2146DA008();
  v13 = __swift_project_value_buffer(v12, qword_27CA19EC8);
  v14 = v4;
  if (*(v11 + 16))
  {
    v15 = sub_21408C508(v13);
    v16 = v8;
    if (v17)
    {
      sub_2140537E4(*(v11 + 56) + 32 * v15, &v76);

      if (swift_dynamicCast())
      {
        v18 = v65;
      }

      else
      {
        v18 = 2;
      }
    }

    else
    {

      v18 = 2;
    }
  }

  else
  {

    v18 = 2;
    v16 = v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v65) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v62 = v18;
  v19 = v76;
  LOBYTE(v65) = 1;
  sub_2146DA1C8();
  v61 = v19;
  v20 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
  LOBYTE(v65) = 2;
  sub_2142E4F74();
  sub_2146DA1C8();
  v60 = *(&v20 + 1);
  v22 = *(&v76 + 1);
  v58 = v20;
  *&v59 = v76;
  v23 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v65) = 3;
  sub_2142E15CC();
  sub_2146DA1C8();
  v56 = v22;
  v57 = v23;
  v24 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905928, &qword_2146F3EC0);
  v91 = 5;
  sub_2142E4E9C();
  sub_2146DA1C8();
  v49 = v24;
  v50 = v92;
  sub_2146679F4(&v76);
  v25 = *(&v76 + 1);
  v51 = v76;
  v26 = v78;
  v55 = v77;
  v27 = v79;
  LODWORD(v48) = BYTE8(v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2146E9BF0;
  *(v28 + 32) = sub_2142E0AD0();
  sub_2140433DC(v28, &v65);
  v54 = v65;
  v52 = v66;
  v53 = BYTE8(v66);
  *&v76 = v51;
  *(&v76 + 1) = v25;
  v29 = v55;
  v77 = v55;
  v78 = v26;
  *&v79 = v27;
  BYTE8(v79) = v48;
  v46 = v25;

  v47 = v27;
  v48 = v26;
  sub_2142E5A68(v29);
  v51 = "BlastDoor/Untrusted.swift";
  v30 = v59;
  sub_21403220C(v59, v56, v57, 2, 0x2E6567617373654DLL, 0xEF746E65746E6F63, 0xD00000000000001CLL, 0x800000021478A360);
  sub_214031CE0(v30);
  v31 = v51;

  v59 = v76;
  v57 = v77;
  v44 = v78;
  v45 = v79;
  LODWORD(v56) = BYTE8(v79);

  sub_214032578(v55);
  v73 = v54;
  v74 = v52;
  v75 = v53;

  v55 = *(&v54 + 1);

  sub_2140325F8(v49, v62, 0xD000000000000029, 0x8000000214790840, 0xD00000000000001CLL, v31 | 0x8000000000000000);
  v32 = v64;
  v33 = v58;

  (*(v32 + 8))(v16, v14);
  v34 = v73;
  v64 = v73;
  v35 = v74;
  LOBYTE(v32) = v75;

  *&v65 = v61;
  *(&v65 + 1) = *(&v19 + 1);
  *&v66 = v33;
  v36 = v60;
  *(&v66 + 1) = v60;
  v67 = v59;
  *&v68 = v57;
  *(&v68 + 1) = v44;
  *&v69 = v45;
  LOBYTE(v25) = v56;
  BYTE8(v69) = v56;
  HIDWORD(v69) = *(v94 + 3);
  *(&v69 + 9) = v94[0];
  v70 = v34;
  *&v71 = v35;
  BYTE8(v71) = v32;
  HIDWORD(v71) = *&v93[3];
  *(&v71 + 9) = *v93;
  v37 = v50;
  v72 = v50;
  v38 = v69;
  v39 = v71;
  v40 = v95;
  *(v95 + 112) = v50;
  v40[5] = v34;
  v40[6] = v39;
  v41 = v65;
  v42 = v66;
  v43 = v67;
  v40[3] = v68;
  v40[4] = v38;
  v40[1] = v42;
  v40[2] = v43;
  *v40 = v41;
  sub_214091538(&v65, &v76);
  __swift_destroy_boxed_opaque_existential_1(v63);
  *&v76 = v61;
  *(&v76 + 1) = *(&v19 + 1);
  v77 = v58;
  v78 = v36;
  v79 = v59;
  v80 = v57;
  v81 = v44;
  v82 = v45;
  v83 = v25;
  *v84 = v94[0];
  *&v84[3] = *(v94 + 3);
  v85 = v64;
  v86 = *(&v34 + 1);
  v87 = v35;
  v88 = v32;
  *&v89[3] = *&v93[3];
  *v89 = *v93;
  v90 = v37;
  return sub_214091594(&v76);
}

uint64_t sub_2141EBEA4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909938, &qword_2146F5868);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v25 = v1[3];
  v26 = v10;
  v11 = v1[6];
  v23 = v1[7];
  v24 = v11;
  v12 = v1[8];
  v20 = v1[12];
  v21 = v12;
  v22 = v1[14];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214307BF0();
  sub_2146DAA28();
  v28 = v8;
  v29 = v9;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v14 = v27;
  sub_2146DA388();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = v23;
  v15 = v24;
  v28 = v26;
  v29 = v25;
  v31 = 1;
  sub_2146DA388();
  if (v15 != 1)
  {
    v28 = v15;
    v29 = v16;
    v30 = v21;
    v31 = 2;
    sub_214031CA0(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
    sub_2142E5278();
    sub_2146DA388();
    sub_214031CE0(v28);
    v17 = v22;
    if (v20)
    {
      v28 = v20;
      v31 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
      sub_2142E1F00();
      sub_2146DA388();
      v28 = v17;
      v31 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905928, &qword_2146F3EC0);
      sub_2142E51A0();
      sub_2146DA388();
      return (*(v4 + 8))(v7, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141EC210@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_213FB2E54(a2, a6 + 8, &qword_27C909940, &qword_2146F5870);
  sub_214667EE4(&v31);
  v12 = v31;
  v11 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  *a6 = a1;
  *(a6 + 488) = v12;
  *(a6 + 496) = v11;
  *(a6 + 504) = v13;
  *(a6 + 512) = v14;
  *(a6 + 520) = v15;
  *(a6 + 528) = a5;
  v30[0] = a3;
  v30[1] = a4;
  v36 = v15;
  v37 = v15;
  v31 = 0xD000000000000025;
  v32 = 0x8000000214790870;
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
    v26 = a4;
    if (v17)
    {
      sub_213FDC6D0(v13, v14);

      sub_213FB2DF4(v27, &qword_27C909940, &qword_2146F5870);
      v18 = *(a6 + 496);
      v19 = *(a6 + 504);
      v20 = *(a6 + 512);

      result = sub_213FDC6D0(v19, v20);
      *(a6 + 488) = v12;
      *(a6 + 496) = v11;
      *(a6 + 504) = a3;
      *(a6 + 512) = v26;
      *(a6 + 520) = v36;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000025;
    v22[1] = 0x8000000214790870;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(v27, &qword_27C909940, &qword_2146F5870);
  v23 = *(a6 + 496);
  v24 = *(a6 + 504);
  v25 = *(a6 + 512);

  sub_213FDC6D0(v24, v25);
  *(a6 + 488) = v29;
  *(a6 + 496) = v11;
  *(a6 + 504) = v13;
  *(a6 + 512) = v14;
  *(a6 + 520) = v36;
  return sub_214307C44(a6);
}

unint64_t sub_2141EC450()
{
  v1 = 0x6873696E69467369;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = 1852793705;
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

uint64_t sub_2141EC4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214375AEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141EC4F4(uint64_t a1)
{
  v2 = sub_214307C98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141EC530(uint64_t a1)
{
  v2 = sub_214307C98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141EC56C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909948, &qword_2146F5878);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214307C98();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v12 = v6;
  v39 = a2;
  v47[0] = 0;
  v13 = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909940, &qword_2146F5870);
  LOBYTE(v42) = 1;
  sub_214307CEC();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v41[0]) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v14 = v43;
  v38 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v41[0]) = 3;
  sub_2142E1548();
  sub_2146DA1C8();
  v36 = v5;
  v37 = v14;
  v35 = v42;
  sub_213FB2E54(v47, &v48[1], &qword_27C909940, &qword_2146F5870);
  sub_214667EE4(&v42);
  v17 = v42;
  v16 = v43;
  v18 = v44;
  v19 = v45;
  LOBYTE(v48[0]) = v13 & 1;
  v48[61] = v42;
  v48[62] = v43;
  v48[63] = v44;
  v48[64] = v45;
  LOBYTE(v48[65]) = v46;
  v48[66] = v35;
  v20 = v38;
  v41[0] = v38;
  v41[1] = v37;
  v34 = v46;
  v40 = v46;
  v42 = 0xD000000000000025;
  v43 = 0x8000000214790870;
  v31 = 0x8000000214790870;
  v44 = 0xD00000000000001CLL;
  v45 = 0x800000021478A360;

  v32 = v19;
  v33 = v18;
  sub_213FDC9D0(v18, v19);
  v35 = v17;
  v21 = v17(v41, &v40, &v42);
  v22 = v20;
  v23 = v31;
  v24 = v36;
  if (v21)
  {
    sub_213FDC6D0(v33, v32);

    sub_213FB2DF4(v47, &qword_27C909940, &qword_2146F5870);
    (*(v12 + 8))(v9, v24);
    v25 = v48[63];
    v26 = v48[64];

    sub_213FDC6D0(v25, v26);
    v48[61] = v35;
    v48[62] = v16;
    v48[63] = v22;
    v48[64] = v37;
    LOBYTE(v48[65]) = v34;
    memcpy(v39, v48, 0x218uLL);
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  sub_214031C4C();
  swift_allocError();
  *v27 = 0xD000000000000025;
  v27[1] = v23;
  v27[2] = 0xD00000000000001CLL;
  v27[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v47, &qword_27C909940, &qword_2146F5870);
  (*(v12 + 8))(v9, v24);
  v28 = v48[63];
  v29 = v48[64];

  sub_213FDC6D0(v28, v29);
  v48[61] = v35;
  v48[62] = v16;
  v48[63] = v33;
  v48[64] = v32;
  LOBYTE(v48[65]) = v34;
  __swift_destroy_boxed_opaque_existential_1(v49);
  return sub_214307C44(v48);
}

uint64_t sub_2141ECA78(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909950, &qword_2146F5880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214307C98();
  sub_2146DAA28();
  v11 = *v3;
  LOBYTE(v16) = 0;
  sub_2146DA338();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  LOBYTE(v16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909940, &qword_2146F5870);
  sub_214307DC4();
  sub_2146DA388();
  v12 = v3[64];
  if (v12 != 1)
  {
    v16 = v3[63];
    v17 = v12;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v16 = v3[66];
    v15 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
    return (*(v6 + 8))(v9, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

double sub_2141ECD28@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11)
{
  v51 = a8;
  *(&v27 + 1) = a3;
  *&v27 = a2;
  v13 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146E9BF0;
  *(v14 + 32) = sub_2142E0AD0();
  sub_2140433DC(v14, &v31);
  v48 = v31;
  v49 = v32;
  v50 = v33;

  sub_2140325F8(a11, v13, 0xD000000000000029, 0x80000002147908A0, 0xD00000000000001CLL, 0x800000021478A360);

  v15 = v49;
  if (v26)
  {
    v16 = v50;

    v17 = a10[5];
    v41 = a10[4];
    v42 = v17;
    v43 = a10[6];
    v18 = a10[1];
    v37 = *a10;
    v38 = v18;
    v19 = a10[3];
    v39 = a10[2];
    v31 = v27;
    v32 = a4;
    v33 = a5;
    v34 = a6 & 1;
    v35 = a7;
    v36 = v51;
    v44 = *(a10 + 14);
    v40 = v19;
    v45 = v48;
    v46 = v15;
    v47 = v16;
    sub_214307E9C(&v31);
  }

  else
  {
    v21 = v50;

    v22 = a10[5];
    *(a9 + 120) = a10[4];
    *(a9 + 136) = v22;
    *(a9 + 152) = a10[6];
    v23 = a10[1];
    *(a9 + 56) = *a10;
    *(a9 + 72) = v23;
    v24 = a10[3];
    *(a9 + 88) = a10[2];
    *a9 = v27;
    *(a9 + 16) = a4;
    *(a9 + 24) = a5;
    *(a9 + 32) = a6 & 1;
    v25 = v51;
    *(a9 + 40) = a7;
    *(a9 + 48) = v25;
    *(a9 + 168) = *(a10 + 14);
    *(a9 + 104) = v24;
    result = *&v48;
    *(a9 + 176) = v48;
    *(a9 + 192) = v15;
    *(a9 + 200) = v21;
  }

  return result;
}

unint64_t sub_2141ECF98()
{
  v1 = *v0;
  v2 = 0x436567617373656DLL;
  v3 = 0xD000000000000032;
  if (v1 == 4)
  {
    v3 = 0xD000000000000021;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000015;
  v5 = 0xD00000000000001DLL;
  if (v1 == 1)
  {
    v5 = 0xD000000000000016;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2141ED068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214375C64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141ED090(uint64_t a1)
{
  v2 = sub_214307EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141ED0CC(uint64_t a1)
{
  v2 = sub_214307EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141ED108@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v110 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909958, &qword_2146F5888);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v44 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214307EF0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v52 = v5;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_2146DA9F8();
  if (qword_27C903238 != -1)
  {
    swift_once();
  }

  v12 = sub_2146DA008();
  v13 = __swift_project_value_buffer(v12, qword_27CA19EC8);
  v14 = v4;
  if (*(v11 + 16))
  {
    v15 = sub_21408C508(v13);
    v16 = v8;
    if (v17)
    {
      sub_2140537E4(*(v11 + 56) + 32 * v15, &v58);

      v18 = swift_dynamicCast();
      v19 = v53;
      if (!v18)
      {
        v19 = 2;
      }
    }

    else
    {

      v19 = 2;
    }

    LODWORD(v51) = v19;
  }

  else
  {

    LODWORD(v51) = 2;
    v16 = v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v53) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v50 = a1;
  v20 = v58;
  v21 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905938, &unk_2146F3ED0);
  LOBYTE(v53) = 1;
  sub_2142E504C();
  sub_2146DA1C8();
  *&v49 = v20;
  *(&v49 + 1) = v21;
  v22 = v59;
  v48 = v58;
  LODWORD(v21) = v60;
  LOBYTE(v53) = 2;
  sub_2146DA1C8();
  v46 = v21;
  v47 = v22;
  v24 = v58;
  v23 = v59;
  v92 = 3;
  sub_214301BF0();
  sub_2146DA1C8();
  v25 = v52;
  v88 = v97;
  v89 = v98;
  v90 = v99;
  v91 = v100;
  v84 = v93;
  v85 = v94;
  v86 = v95;
  v87 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  v82 = 4;
  sub_2142E15CC();
  sub_2146DA1C8();
  v44[0] = v23;
  v45 = v24;
  v26 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2146E9BF0;
  sub_214091538(&v84, &v58);
  *(v27 + 32) = sub_2142E0AD0();
  sub_2140433DC(v27, &v58);
  v28 = v59;
  LOBYTE(v53) = v46;
  v105 = v88;
  v106 = v89;
  v107 = v90;
  v108 = v91;
  v101 = v84;
  v102 = v85;
  v103 = v86;
  v104 = v87;
  v46 = v46;
  v78 = v58;
  v79 = v59;
  v80 = v60;
  v81 = v61;
  v44[1] = v60;

  v44[2] = v28;

  sub_2140325F8(v26, v51, 0xD000000000000029, 0x80000002147908A0, 0xD00000000000001CLL, 0x800000021478A360);

  sub_214091594(&v84);
  (*(v25 + 8))(v16, v14);
  v29 = v78;
  v30 = v79;
  v51 = v79;
  v52 = v78;
  v31 = v80;
  v32 = v81;

  v33 = *(&v49 + 1);
  v53 = v49;
  *&v54 = v48;
  *(&v54 + 1) = v47;
  LOBYTE(v55) = v46;
  *(&v55 + 1) = v109[0];
  DWORD1(v55) = *(v109 + 3);
  v34 = v45;
  v35 = v44[0];
  *(&v55 + 1) = v45;
  *&v56[0] = v44[0];
  *(&v56[4] + 8) = v105;
  *(&v56[5] + 8) = v106;
  *(&v56[6] + 8) = v107;
  *(v56 + 8) = v101;
  *(&v56[1] + 8) = v102;
  *(&v56[2] + 8) = v103;
  *(&v56[3] + 8) = v104;
  *(&v56[7] + 1) = v108;
  *&v57[0] = v29;
  *(&v57[0] + 1) = v30;
  *&v57[1] = v31;
  BYTE8(v57[1]) = v32;
  v36 = v56[4];
  v37 = v110;
  v110[6] = v56[3];
  v37[7] = v36;
  v38 = v56[6];
  v37[8] = v56[5];
  v37[9] = v38;
  v39 = v56[0];
  v37[2] = v55;
  v37[3] = v39;
  v40 = v56[2];
  v37[4] = v56[1];
  v37[5] = v40;
  v41 = v54;
  *v37 = v53;
  v37[1] = v41;
  v42 = v57[0];
  v37[10] = v56[7];
  v37[11] = v42;
  *(v37 + 185) = *(v57 + 9);
  sub_214307F44(&v53, &v58);
  __swift_destroy_boxed_opaque_existential_1(v50);
  v70 = v105;
  v71 = v106;
  v72 = v107;
  v66 = v101;
  v67 = v102;
  v68 = v103;
  v58 = v49;
  v59 = v33;
  v60 = v48;
  v61 = v47;
  v62 = v46;
  *v63 = v109[0];
  *&v63[3] = *(v109 + 3);
  v64 = v34;
  v65 = v35;
  v69 = v104;
  v73 = v108;
  v74 = v52;
  v75 = v51;
  v76 = v31;
  v77 = v32;
  return sub_214307E9C(&v58);
}

uint64_t sub_2141ED938(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909968, &qword_2146F5890);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v23 = v1[3];
  v24 = v9;
  v22 = *(v1 + 32);
  v10 = v1[5];
  v20 = v1[6];
  v21 = v10;
  v11 = *(v1 + 17);
  v43 = *(v1 + 15);
  v44 = v11;
  v45 = *(v1 + 19);
  v46 = v1[21];
  v12 = *(v1 + 9);
  v39 = *(v1 + 7);
  v40 = v12;
  v13 = *(v1 + 13);
  v41 = *(v1 + 11);
  v42 = v13;
  v19 = v1[24];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214307EF0();
  sub_2146DAA28();
  *&v31 = v8;
  *(&v31 + 1) = v7;
  LOBYTE(v28[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v15 = v47;
  sub_2146DA388();
  if (v15)
  {
    return (*(v25 + 8))(v6, v3);
  }

  v17 = v25;
  *&v31 = v24;
  *(&v31 + 1) = v23;
  LOBYTE(v32) = v22;
  LOBYTE(v28[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905938, &unk_2146F3ED0);
  sub_2142E5350();
  sub_2146DA388();
  *&v31 = v21;
  *(&v31 + 1) = v20;
  LOBYTE(v28[0]) = 2;
  sub_2146DA388();
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  v31 = v39;
  v32 = v40;
  v33 = v41;
  v34 = v42;
  v30 = 3;
  sub_214091538(&v39, v28);
  sub_214301CA0();
  sub_2146DA388();
  v28[4] = v35;
  v28[5] = v36;
  v28[6] = v37;
  v29 = v38;
  v28[0] = v31;
  v28[1] = v32;
  v28[2] = v33;
  v28[3] = v34;
  sub_214091594(v28);
  if (v19)
  {
    v27 = v19;
    v26 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    return (*(v17 + 8))(v6, v3);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double AudioMessage.init(with:content:participantDestinationIdentifiers:inlineAudioMessages:)@<D0>(char *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a4;
  v14 = *a2;
  v15 = *(a2 + 2);
  v8 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = sub_2142E0AD0();
  sub_2140433DC(inited, &v16);
  v22 = v16;
  v23 = v17;
  v24 = v18;

  sub_2140325F8(a3, v8, 0xD00000000000002ELL, 0x80000002147908D0, 0xD00000000000001CLL, 0x800000021478A360);

  v10 = v23;
  if (v5)
  {
    v11 = v24;

    v16 = v14;
    v17 = v15;
    v18 = v22;
    v19 = v10;
    v20 = v11;
    v21 = v25;
    sub_214307FA0(&v16);
  }

  else
  {
    v13 = v24;

    *a5 = v14;
    *(a5 + 16) = v15;
    result = *&v22;
    *(a5 + 24) = v22;
    *(a5 + 40) = v10;
    *(a5 + 48) = v13;
    *(a5 + 56) = v25;
  }

  return result;
}

unint64_t sub_2141EDF60()
{
  v1 = 0x746E65746E6F63;
  v2 = 0xD000000000000032;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000021;
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

uint64_t sub_2141EDFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214375E6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141EE010(uint64_t a1)
{
  v2 = sub_214307FF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141EE04C(uint64_t a1)
{
  v2 = sub_214307FF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioMessage.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909970, &qword_2146F5898);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v36 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214307FF4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_2146DA9F8();
  if (qword_27C903238 != -1)
  {
    swift_once();
  }

  v13 = sub_2146DA008();
  v14 = __swift_project_value_buffer(v13, qword_27CA19EC8);
  if (*(v12 + 16) && (v15 = sub_21408C508(v14), (v16 & 1) != 0))
  {
    sub_2140537E4(*(v12 + 56) + 32 * v15, &v45);

    if (swift_dynamicCast())
    {
      v17 = v42;
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {

    v17 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
  LOBYTE(v42) = 0;
  sub_2142E4F74();
  sub_2146DA1C8();
  LODWORD(v59) = v17;
  v41 = a2;
  v18 = v45;
  v19 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v42) = 1;
  sub_2142E15CC();
  sub_2146DA1C8();
  v40 = *(&v18 + 1);
  v38 = v18;
  v39 = v19;
  v20 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
  v56 = 3;
  sub_2142E554C();
  sub_2146DA1C8();
  v37 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = sub_2142E0AD0();
  sub_2140433DC(inited, &v45);
  v22 = *(&v45 + 1);
  v53 = v45;
  v54 = v46;
  v55 = v47;
  v36[1] = v46;

  v36[2] = v22;

  v36[0] = "antDestinationIdentifiers";
  sub_2140325F8(v20, v59, 0xD00000000000002ELL, 0x80000002147908D0, 0xD00000000000001CLL, 0x800000021478A360);
  v23 = (v6 + 8);
  v24 = v40;
  v25 = v38;

  (*v23)(v9, v5);
  v26 = v53;
  v59 = v53;
  v27 = v54;
  v28 = v25;
  v29 = v55;

  *&v42 = v25;
  *(&v42 + 1) = v24;
  v30 = v39;
  *v43 = v39;
  *&v43[8] = v26;
  *&v43[24] = v27;
  LOBYTE(v44) = v29;
  *(&v44 + 1) = *v58;
  DWORD1(v44) = *&v58[3];
  v31 = v37;
  *(&v44 + 1) = v37;
  v32 = *v43;
  v33 = v41;
  *v41 = v42;
  v33[1] = v32;
  v34 = v44;
  v33[2] = *&v43[16];
  v33[3] = v34;
  sub_214308048(&v42, &v45);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v45 = v28;
  *(&v45 + 1) = v40;
  v46 = v30;
  v47 = v59;
  v48 = *(&v26 + 1);
  v49 = v27;
  v50 = v29;
  *v51 = *v58;
  *&v51[3] = *&v58[3];
  v52 = v31;
  return sub_214307FA0(&v45);
}

uint64_t AudioMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909980, &qword_2146F58A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[5];
  v20 = v1[7];
  v21 = v11;
  v13 = a1[3];
  v12 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_214307FF4();
  sub_2146DAA28();
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = 0;
  sub_214031CA0(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
  sub_2142E5278();
  v17 = v22;
  sub_2146DA388();
  sub_214031CE0(v23);
  if (v17)
  {
    return (*(v4 + 8))(v7, v16);
  }

  v18 = v20;
  if (v21)
  {
    v23 = v21;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v23 = v18;
    v26 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
    sub_2142E562C();
    sub_2146DA388();
    return (*(v4 + 8))(v7, v16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t TextMessage.init(with:messageSubType:replyToGUID:threadIdentifierGUID:threadOriginatorFallbackHash:expressiveSendStyleIdentifier:groupID:currentGroupName:groupParticipantVersion:groupProtocolVersion:groupPhotoCreationTime:transcriptBackgroundVersion:messageSummaryInfo:isAutoReply:availabilityVerificationRecipientChannelIDPrefix:availabilityVerificationRecipientEncryptionValidationToken:availabilityOffGridRecipientSubscriptionValidationToken:availabilityOffGridRecipientEncryptionValidationToken:seenAsOffGrid:lastPublisherOfOffGridStatus:nicknameInformation:truncatedNicknameRecordKey:isExpirable:isSOS:isCritical:replicationSourceID:scheduleType:scheduledDate:replicatedFallbackGUIDs:isBIAMessage:biaReferenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, __int128 *a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, __int128 a33, const void *a34, uint64_t a35, uint64_t a36, char a37, char a38, char a39, uint64_t a40, char a41, char *a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47)
{
  v187 = a5;
  v156 = *a42;
  sub_2143287C0(a1, a9, type metadata accessor for Metadata);
  v50 = type metadata accessor for TextMessage(0);
  v163 = a2;
  sub_2143287C0(a2, a9 + v50[5], type metadata accessor for TextMessage.MessageType);
  v162 = a3;
  sub_213FB2E54(a3, a9 + v50[6], &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(a43, a9 + v50[31], &qword_27C913090, &unk_2146E9DB0);
  sub_214668284(&v183);
  v52 = v184;
  v51 = v185;
  LOBYTE(a3) = v186;
  sub_2146682B8(&v179);
  v54 = v180;
  v53 = v181;
  v153 = v182;
  sub_2146682EC(&v175);
  v149 = v177;
  v150 = v176;
  v154 = v178;
  sub_214668320(&v171);
  v151 = v173;
  v152 = v172;
  v155 = v174;
  sub_214668354(v169);
  v55 = a9 + v50[7];
  *(v55 + 16) = v52;
  *(v55 + 24) = v51;
  *(v55 + 32) = a3;
  *v55 = v183;
  v56 = a9 + v50[8];
  *(v56 + 16) = v54;
  *(v56 + 24) = v53;
  *v56 = v179;
  v148 = v56;
  *(v56 + 32) = v153;
  v57 = a9 + v50[9];
  *(v57 + 16) = v150;
  *(v57 + 24) = v149;
  *v57 = v175;
  *(v57 + 32) = v154;
  v58 = a9 + v50[10];
  *(v58 + 16) = v152;
  *(v58 + 24) = v151;
  *v58 = v171;
  *(v58 + 32) = v155;
  v59 = (a9 + v50[11]);
  *v59 = a12;
  v59[1] = a13;
  v60 = a9 + v50[12];
  *v60 = a14;
  *(v60 + 8) = a15 & 1;
  v61 = a9 + v50[13];
  *v61 = a16;
  *(v61 + 8) = a17 & 1;
  v62 = a9 + v50[14];
  *v62 = a18;
  *(v62 + 8) = a19 & 1;
  v63 = a9 + v50[15];
  *v63 = a20;
  *(v63 + 8) = a21 & 1;
  v64 = a22[3];
  v65 = a22[4];
  v66 = *(a22 + 73);
  v67 = *a22;
  v68 = a22[1];
  v69 = (a9 + v50[16]);
  v69[2] = a22[2];
  v69[3] = v64;
  v69[4] = v65;
  *(v69 + 73) = v66;
  *v69 = v67;
  v69[1] = v68;
  *(a9 + v50[17]) = a23;
  v70 = (a9 + v50[18]);
  *v70 = a24;
  v70[1] = a25;
  v71 = (a9 + v50[19]);
  *v71 = a26;
  v71[1] = a27;
  v72 = (a9 + v50[20]);
  *v72 = a28;
  v72[1] = a29;
  v73 = (a9 + v50[21]);
  *v73 = a30;
  v73[1] = a31;
  *(a9 + v50[22]) = a32;
  LOBYTE(v73) = v170;
  v74 = a9 + v50[23];
  v75 = v169[1];
  *v74 = v169[0];
  *(v74 + 16) = v75;
  *(v74 + 32) = v73;
  memcpy((a9 + v50[24]), a34, 0x109uLL);
  v76 = (a9 + v50[25]);
  *v76 = a35;
  v76[1] = a36;
  *(a9 + v50[26]) = a37;
  *(a9 + v50[27]) = a38;
  *(a9 + v50[28]) = a39;
  v77 = a9 + v50[29];
  *v77 = a40;
  *(v77 + 8) = a41 & 1;
  *(a9 + v50[30]) = v156;
  *(a9 + v50[32]) = a44;
  *(a9 + v50[33]) = a45;
  v160 = a9;
  v78 = (a9 + v50[34]);
  *v78 = a46;
  v78[1] = a47;
  v79 = *v55;
  v80 = *(v55 + 8);
  v81 = *(v55 + 16);
  v82 = *(v55 + 24);
  v83 = *(v55 + 32);
  *&v179 = a4;
  *(&v179 + 1) = v187;
  v161 = v83;
  LOBYTE(v175) = v83;
  *&v183 = 0xD000000000000020;
  *(&v183 + 1) = 0x8000000214790900;
  v184 = 0xD00000000000001CLL;
  v185 = 0x800000021478A360;

  sub_213FDC9D0(v81, v82);
  v84 = v79(&v179, &v175, &v183);
  if (v168)
  {

LABEL_6:

    sub_213FB2DF4(a43, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v162, &unk_27C904F30, &unk_2146EFA20);
    sub_21432887C(v163, type metadata accessor for TextMessage.MessageType);
    sub_21432887C(a1, type metadata accessor for Metadata);
    v96 = *(v55 + 8);
    v97 = *(v55 + 16);
    v98 = *(v55 + 24);

    sub_213FDC6D0(v97, v98);
    *v55 = v79;
    *(v55 + 8) = v80;
    *(v55 + 16) = v81;
    *(v55 + 24) = v82;
    *(v55 + 32) = v161;
    return sub_21432887C(v160, type metadata accessor for TextMessage);
  }

  v159 = v57;
  v157 = v74;
  v158 = v58;
  if ((v84 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v95 = 0xD000000000000020;
    v95[1] = 0x8000000214790900;
    v95[2] = 0xD00000000000001CLL;
    v95[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v81, v82);

  v85 = *(v55 + 8);
  v86 = *(v55 + 16);
  v87 = *(v55 + 24);

  sub_213FDC6D0(v86, v87);
  *v55 = v79;
  *(v55 + 8) = v80;
  v88 = v187;
  *(v55 + 16) = a4;
  *(v55 + 24) = v88;
  *(v55 + 32) = v161;
  v90 = *v148;
  v89 = *(v148 + 8);
  v91 = *(v148 + 16);
  v92 = *(v148 + 24);
  v93 = *(v148 + 32);
  *&v179 = a6;
  *(&v179 + 1) = a7;
  LOBYTE(v175) = v93;
  *&v183 = 0xD000000000000028;
  *(&v183 + 1) = 0x8000000214790930;
  v184 = 0xD00000000000001CLL;
  v185 = 0x800000021478A360;

  sub_213FDC9D0(v91, v92);
  v94 = v90(&v179, &v175, &v183);
  if ((v94 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v109 = 0xD000000000000028;
    v109[1] = 0x8000000214790930;
    v109[2] = 0xD00000000000001CLL;
    v109[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a43, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v162, &unk_27C904F30, &unk_2146EFA20);
    sub_21432887C(v163, type metadata accessor for TextMessage.MessageType);
    sub_21432887C(a1, type metadata accessor for Metadata);
    v110 = *(v148 + 8);
    v111 = *(v148 + 16);
    v112 = *(v148 + 24);

    sub_213FDC6D0(v111, v112);
    *v148 = v90;
    *(v148 + 8) = v89;
    *(v148 + 16) = v91;
    *(v148 + 24) = v92;
    *(v148 + 32) = v93;
    return sub_21432887C(v160, type metadata accessor for TextMessage);
  }

  sub_213FDC6D0(v91, v92);

  v100 = *(v148 + 8);
  v101 = *(v148 + 16);
  v102 = *(v148 + 24);

  sub_213FDC6D0(v101, v102);
  *v148 = v90;
  *(v148 + 8) = v89;
  *(v148 + 16) = a6;
  *(v148 + 24) = a7;
  *(v148 + 32) = v93;
  v104 = *v57;
  v103 = *(v159 + 8);
  v106 = *(v159 + 16);
  v105 = *(v159 + 24);
  v107 = *(v159 + 32);
  *&v179 = a8;
  *(&v179 + 1) = a10;
  LOBYTE(v175) = v107;
  *&v183 = 0xD000000000000029;
  *(&v183 + 1) = 0x8000000214790960;
  v184 = 0xD00000000000001CLL;
  v185 = 0x800000021478A360;

  sub_213FDC9D0(v106, v105);
  v108 = v104(&v179, &v175, &v183);
  if ((v108 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v122 = 0xD000000000000029;
    v122[1] = 0x8000000214790960;
    v122[2] = 0xD00000000000001CLL;
    v122[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a43, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v162, &unk_27C904F30, &unk_2146EFA20);
    sub_21432887C(v163, type metadata accessor for TextMessage.MessageType);
    sub_21432887C(a1, type metadata accessor for Metadata);
    v123 = *(v159 + 8);
    v124 = *(v159 + 16);
    v125 = *(v159 + 24);

    sub_213FDC6D0(v124, v125);
    *v159 = v104;
    *(v159 + 8) = v103;
    *(v159 + 16) = v106;
    *(v159 + 24) = v105;
    *(v159 + 32) = v107;
    return sub_21432887C(v160, type metadata accessor for TextMessage);
  }

  sub_213FDC6D0(v106, v105);

  v113 = *(v159 + 8);
  v114 = *(v159 + 16);
  v115 = *(v159 + 24);

  sub_213FDC6D0(v114, v115);
  *v159 = v104;
  *(v159 + 8) = v103;
  *(v159 + 16) = a8;
  *(v159 + 24) = a10;
  *(v159 + 32) = v107;
  v117 = *v158;
  v116 = *(v158 + 8);
  v118 = *(v158 + 16);
  v119 = *(v158 + 24);
  v120 = *(v158 + 32);
  v179 = a11;
  v167 = v120;
  LOBYTE(v175) = v120;
  *&v183 = 0xD000000000000013;
  *(&v183 + 1) = 0x8000000214790990;
  v184 = 0xD00000000000001CLL;
  v185 = 0x800000021478A360;

  sub_213FDC9D0(v118, v119);
  v187 = v117;
  v121 = v117(&v179, &v175, &v183);
  if ((v121 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v135 = 0xD000000000000013;
    v135[1] = 0x8000000214790990;
    v135[2] = 0xD00000000000001CLL;
    v135[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a43, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v162, &unk_27C904F30, &unk_2146EFA20);
    sub_21432887C(v163, type metadata accessor for TextMessage.MessageType);
    sub_21432887C(a1, type metadata accessor for Metadata);
    v136 = *(v158 + 8);
    v137 = *(v158 + 16);
    v138 = *(v158 + 24);

    sub_213FDC6D0(v137, v138);
    *v158 = v187;
    *(v158 + 8) = v116;
    *(v158 + 16) = v118;
    *(v158 + 24) = v119;
    *(v158 + 32) = v167;
    return sub_21432887C(v160, type metadata accessor for TextMessage);
  }

  sub_213FDC6D0(v118, v119);

  v126 = *(v158 + 8);
  v127 = *(v158 + 16);
  v128 = *(v158 + 24);

  sub_213FDC6D0(v127, v128);
  *v158 = v187;
  *(v158 + 8) = v116;
  *(v158 + 16) = a11;
  *(v158 + 32) = v167;
  v130 = *v157;
  v129 = *(v157 + 8);
  v131 = *(v157 + 16);
  v132 = *(v157 + 24);
  v133 = *(v157 + 32);
  v179 = a33;
  LODWORD(v187) = v133;
  LOBYTE(v175) = v133;
  *&v183 = 0xD000000000000028;
  *(&v183 + 1) = 0x80000002147909B0;
  v184 = 0xD00000000000001CLL;
  v185 = 0x800000021478A360;

  sub_213FDC9D0(v131, v132);
  v134 = v130(&v179, &v175, &v183);
  if ((v134 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v142 = 0xD000000000000028;
    v142[1] = 0x80000002147909B0;
    v142[2] = 0xD00000000000001CLL;
    v142[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a43, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v162, &unk_27C904F30, &unk_2146EFA20);
    sub_21432887C(v163, type metadata accessor for TextMessage.MessageType);
    sub_21432887C(a1, type metadata accessor for Metadata);
    v143 = *(v157 + 8);
    v144 = *(v157 + 16);
    v145 = *(v157 + 24);

    sub_213FDC6D0(v144, v145);
    *v157 = v130;
    *(v157 + 8) = v129;
    *(v157 + 16) = v131;
    *(v157 + 24) = v132;
    *(v157 + 32) = v187;
    return sub_21432887C(v160, type metadata accessor for TextMessage);
  }

  sub_213FDC6D0(v131, v132);

  sub_213FB2DF4(a43, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v162, &unk_27C904F30, &unk_2146EFA20);
  sub_21432887C(v163, type metadata accessor for TextMessage.MessageType);
  sub_21432887C(a1, type metadata accessor for Metadata);
  v139 = *(v157 + 8);
  v140 = *(v157 + 16);
  v141 = *(v157 + 24);

  result = sub_213FDC6D0(v140, v141);
  *v157 = v130;
  *(v157 + 8) = v129;
  *(v157 + 16) = a33;
  *(v157 + 32) = v187;
  return result;
}

unint64_t sub_2141EF878(char a1)
{
  result = 0x617461646174656DLL;
  switch(a1)
  {
    case 1:
      result = 0x536567617373656DLL;
      break;
    case 2:
      result = 0x476F54796C706572;
      break;
    case 3:
    case 9:
      result = 0xD000000000000014;
      break;
    case 4:
    case 19:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0x444970756F7267;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
    case 28:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x65526F7475417369;
      break;
    case 14:
      result = 0xD000000000000030;
      break;
    case 15:
      result = 0xD00000000000003ALL;
      break;
    case 16:
      result = 0xD000000000000037;
      break;
    case 17:
      result = 0xD000000000000035;
      break;
    case 18:
      result = 0x664F73416E656573;
      break;
    case 20:
      result = 0xD000000000000013;
      break;
    case 21:
      result = 0xD00000000000001ALL;
      break;
    case 22:
      result = 0x6172697078457369;
      break;
    case 23:
      result = 0x534F537369;
      break;
    case 24:
      result = 0x6369746972437369;
      break;
    case 25:
      result = 0xD000000000000013;
      break;
    case 26:
    case 27:
      result = 0x656C756465686373;
      break;
    case 29:
      result = 0x73654D4149427369;
      break;
    case 30:
      result = 0x7265666552616962;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2141EFC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214375FD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141EFC50(uint64_t a1)
{
  v2 = sub_2143080A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141EFC8C(uint64_t a1)
{
  v2 = sub_2143080A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v194 = a2;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v3 = *(*(v193 - 8) + 64);
  MEMORY[0x28223BE20](v193);
  v195 = &v149 - v4;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v5 = *(*(v196 - 8) + 64);
  MEMORY[0x28223BE20](v196);
  v197 = &v149 - v6;
  v198 = type metadata accessor for TextMessage.MessageType(0);
  v7 = *(*(v198 - 8) + 64);
  MEMORY[0x28223BE20](v198);
  v9 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for Metadata();
  v10 = *(*(v199 - 1) + 64);
  MEMORY[0x28223BE20](v199);
  v201 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909988, &qword_2146F58A8);
  v200 = *(v12 - 8);
  v13 = *(v200 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v149 - v14;
  v16 = type metadata accessor for TextMessage(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v21 = a1[4];
  v234 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2143080A4();
  v22 = v202;
  sub_2146DAA08();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v234);
  }

  v191 = v16;
  v192 = v19;
  v202 = v9;
  v222[0] = 0;
  sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
  v23 = v15;
  sub_2146DA1C8();
  v222[0] = 1;
  sub_214328930(&qword_280B2FA98, type metadata accessor for TextMessage.MessageType);
  sub_2146DA1C8();
  v222[0] = 2;
  sub_2142EFBA8();
  sub_2146DA1C8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v221[0] = 3;
  v199 = sub_2142E12FC();
  sub_2146DA1C8();
  v25 = *&v222[8];
  v198 = *v222;
  v221[0] = 4;
  sub_2146DA1C8();
  v196 = v25;
  v27 = *v222;
  v221[0] = 5;
  sub_2146DA1C8();
  v190 = v27;
  v28 = *v222;
  v221[0] = 6;
  sub_2146DA1C8();
  v188 = v24;
  v189 = *(&v28 + 1);
  v29 = *&v222[8];
  v187 = *v222;
  v221[0] = 7;
  sub_2146DA1C8();
  v185 = *v222;
  v186 = v29;
  v30 = *&v222[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  v221[0] = 8;
  sub_2142E3570();
  sub_2146DA1C8();
  v183 = *v222;
  v184 = v12;
  v182 = v222[8];
  v221[0] = 9;
  v31 = v23;
  sub_2146DA1C8();
  v181 = *v222;
  v180 = v222[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
  v221[0] = 10;
  sub_2142E18D0();
  sub_2146DA1C8();
  v179 = *v222;
  v178 = v222[8];
  v221[0] = 11;
  sub_2146DA1C8();
  v32 = *v222;
  v33 = v222[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909990, &qword_2146F58B0);
  v228 = 12;
  sub_2143080F8();
  sub_2146DA1C8();
  v225 = v231;
  v226 = v232;
  *v227 = v233[0];
  *&v227[9] = *(v233 + 9);
  v223 = v229;
  v224 = v230;
  v222[0] = 13;
  v177 = sub_2146DA178();
  v221[0] = 14;
  sub_2146DA1C8();
  v176 = *v222;
  v221[0] = 15;
  sub_2146DA1C8();
  v175 = *v222;
  v221[0] = 16;
  sub_2146DA1C8();
  v174 = *v222;
  v221[0] = 17;
  sub_2146DA1C8();
  v173 = *&v222[8];
  v170 = *v222;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v221[0] = 18;
  v171 = sub_2142E1378();
  v172 = v34;
  sub_2146DA1C8();
  v169 = v222[0];
  v221[0] = 19;
  sub_2146DA1C8();
  v168 = *v222;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909998, &qword_2146F58B8);
  v221[271] = 20;
  sub_2143081D0();
  sub_2146DA1C8();
  memcpy(v221, v222, 0x109uLL);
  LOBYTE(v213) = 21;
  sub_2146DA1C8();
  v167 = v217;
  LOBYTE(v217) = 22;
  v166 = sub_2146DA178();
  LOBYTE(v217) = 23;
  v165 = sub_2146DA178();
  LOBYTE(v217) = 24;
  v164 = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v213) = 25;
  sub_2142E11FC();
  sub_2146DA1C8();
  v163 = v217;
  v162 = BYTE8(v217);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9099A0, &qword_2146F58C0);
  LOBYTE(v213) = 26;
  sub_214308254();
  sub_2146DA1C8();
  v161 = v217;
  LOBYTE(v217) = 27;
  sub_2142EC0C4();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v213) = 28;
  sub_2142E1548();
  sub_2146DA1C8();
  v193 = v217;
  LOBYTE(v213) = 29;
  sub_2146DA1C8();
  LODWORD(v172) = v217;
  LOBYTE(v213) = 30;
  sub_2146DA1C8();
  v199 = 0;
  v171 = *(&v217 + 1);
  v188 = v217;
  v35 = v192;
  sub_2143287C0(v201, v192, type metadata accessor for Metadata);
  v36 = v191;
  sub_2143287C0(v202, v35 + v191[5], type metadata accessor for TextMessage.MessageType);
  sub_213FB2E54(v197, v35 + v36[6], &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v195, v35 + v36[31], &qword_27C913090, &unk_2146E9DB0);
  sub_214668284(&v217);
  v149 = v219;
  v150 = v218;
  v155 = v220;
  sub_2146682B8(&v213);
  v151 = v214;
  v160 = v215;
  LODWORD(v159) = v216;
  sub_2146682EC(&v209);
  v157 = v211;
  v158 = v210;
  v156 = v212;
  sub_214668320(&v205);
  v153 = v207;
  v154 = v206;
  v152 = v208;
  sub_214668354(v203);
  v37 = *&v227[9];
  v38 = v35 + v36[7];
  v39 = v149;
  *(v38 + 16) = v150;
  *(v38 + 24) = v39;
  *v38 = v217;
  *(v38 + 32) = v155;
  v40 = v35 + v36[8];
  v41 = v151;
  LOBYTE(v39) = v204;
  *v40 = v213;
  v42 = v160;
  *(v40 + 16) = v41;
  *(v40 + 24) = v42;
  v160 = v40;
  *(v40 + 32) = v159;
  v43 = v35 + v36[9];
  *v43 = v209;
  v44 = v157;
  *(v43 + 16) = v158;
  *(v43 + 24) = v44;
  v159 = v43;
  *(v43 + 32) = v156;
  v45 = v35 + v36[10];
  *v45 = v205;
  v46 = v153;
  *(v45 + 16) = v154;
  *(v45 + 24) = v46;
  v158 = v45;
  *(v45 + 32) = v152;
  v47 = (v35 + v36[11]);
  *v47 = v185;
  v47[1] = v30;
  v48 = v35 + v36[12];
  *v48 = v183;
  *(v48 + 8) = v182;
  v49 = v35 + v36[13];
  *v49 = v181;
  *(v49 + 8) = v180;
  v50 = v35 + v36[14];
  *v50 = v179;
  LOBYTE(v46) = v177;
  *(v50 + 8) = v178;
  v51 = v35 + v36[15];
  *v51 = v32;
  *(v51 + 8) = v33;
  v52 = (v35 + v36[16]);
  v53 = v226;
  v52[2] = v225;
  v52[3] = v53;
  v52[4] = *v227;
  *(v52 + 73) = v37;
  v54 = v224;
  *v52 = v223;
  v52[1] = v54;
  *(v35 + v36[17]) = v46 & 1;
  v55 = (v35 + v36[18]);
  v56 = *(&v176 + 1);
  *v55 = v176;
  v55[1] = v56;
  v57 = (v35 + v36[19]);
  v58 = *(&v175 + 1);
  *v57 = v175;
  v57[1] = v58;
  v59 = (v35 + v36[20]);
  v60 = *(&v174 + 1);
  *v59 = v174;
  v59[1] = v60;
  v61 = (v35 + v36[21]);
  v62 = v173;
  *v61 = v170;
  v61[1] = v62;
  *(v35 + v36[22]) = v169;
  v63 = v35 + v36[23];
  v64 = v203[1];
  *v63 = v203[0];
  *(v63 + 16) = v64;
  v183 = v63;
  *(v63 + 32) = v39;
  memcpy((v35 + v36[24]), v221, 0x109uLL);
  v65 = (v35 + v36[25]);
  v66 = *(&v167 + 1);
  *v65 = v167;
  v65[1] = v66;
  *(v35 + v36[26]) = v166 & 1;
  *(v35 + v36[27]) = v165 & 1;
  *(v35 + v36[28]) = v164 & 1;
  v67 = v35 + v36[29];
  *v67 = v163;
  LOBYTE(v66) = v161;
  *(v67 + 8) = v162;
  *(v35 + v36[30]) = v66;
  *(v35 + v36[32]) = v193;
  *(v35 + v36[33]) = v172;
  v68 = (v35 + v36[34]);
  v69 = v171;
  *v68 = v188;
  v68[1] = v69;
  v71 = *v38;
  v70 = *(v38 + 8);
  v72 = *(v38 + 16);
  v73 = *(v38 + 24);
  v74 = v38;
  v75 = *(v38 + 32);
  *&v213 = v198;
  *(&v213 + 1) = v196;
  LODWORD(v191) = v75;
  LOBYTE(v209) = v75;
  *&v217 = 0xD000000000000020;
  *(&v217 + 1) = 0x8000000214790900;
  v218 = 0xD00000000000001CLL;
  v193 = 0x800000021478A360;
  v219 = 0x800000021478A360;

  v188 = v72;
  v185 = v73;
  sub_213FDC9D0(v72, v73);
  v76 = v199;
  v77 = v71(&v213, &v209, &v217);
  if (!v76)
  {
    if ((v77 & 1) == 0)
    {
      sub_214031C4C();
      swift_allocError();
      *v87 = 0xD000000000000020;
      v87[1] = 0x8000000214790900;
      v88 = v193;
      v87[2] = 0xD00000000000001CLL;
      v87[3] = v88;
      swift_willThrow();
      goto LABEL_9;
    }

    sub_213FDC6D0(v188, v185);
    v78 = v193;

    v79 = *(v38 + 8);
    v199 = *(v38 + 16);
    v80 = *(v38 + 24);

    sub_213FDC6D0(v199, v80);
    *v38 = v71;
    *(v38 + 8) = v70;
    v81 = v196;
    *(v38 + 16) = v198;
    *(v38 + 24) = v81;
    *(v38 + 32) = v191;
    v83 = *v160;
    v82 = *(v160 + 8);
    v84 = *(v160 + 16);
    v85 = *(v160 + 24);
    v86 = *(v160 + 32);
    v213 = v190;
    LODWORD(v198) = v86;
    LOBYTE(v209) = v86;
    *&v217 = 0xD000000000000028;
    *(&v217 + 1) = 0x8000000214790930;
    v218 = 0xD00000000000001CLL;
    v219 = v78;

    v196 = v84;
    sub_213FDC9D0(v84, v85);
    v199 = v83;
    if ((v83)(&v213, &v209, &v217))
    {
      sub_213FDC6D0(v196, v85);
      v94 = v193;

      v95 = v160;
      v96 = *(v160 + 8);
      v97 = *(v160 + 16);
      v98 = *(v160 + 24);

      sub_213FDC6D0(v97, v98);
      *v95 = v199;
      *(v95 + 8) = v82;
      v99 = *(&v190 + 1);
      *(v95 + 16) = v190;
      *(v95 + 24) = v99;
      *(v95 + 32) = v198;
      v100 = *v159;
      v82 = *(v159 + 8);
      v101 = *(v159 + 16);
      v85 = *(v159 + 24);
      v102 = *(v159 + 32);
      *&v213 = v28;
      *(&v213 + 1) = v189;
      LODWORD(v198) = v102;
      LOBYTE(v209) = v102;
      *&v217 = 0xD000000000000029;
      *(&v217 + 1) = 0x8000000214790960;
      v218 = 0xD00000000000001CLL;
      v219 = v94;

      v196 = v101;
      sub_213FDC9D0(v101, v85);
      v199 = v100;
      if ((v100)(&v213, &v209, &v217))
      {
        sub_213FDC6D0(v196, v85);
        v108 = v193;

        v109 = v159;
        v110 = *(v159 + 8);
        v111 = *(v159 + 16);
        v112 = *(v159 + 24);

        sub_213FDC6D0(v111, v112);
        *v109 = v199;
        *(v109 + 8) = v82;
        v113 = v189;
        *(v109 + 16) = v28;
        *(v109 + 24) = v113;
        *(v109 + 32) = v198;
        v115 = *v158;
        v114 = *(v158 + 8);
        v116 = *(v158 + 16);
        v117 = *(v158 + 24);
        v118 = *(v158 + 32);
        *&v213 = v187;
        *(&v213 + 1) = v186;
        LODWORD(v199) = v118;
        LOBYTE(v209) = v118;
        *&v217 = 0xD000000000000013;
        *(&v217 + 1) = 0x8000000214790990;
        v218 = 0xD00000000000001CLL;
        v219 = v108;

        v198 = v116;
        sub_213FDC9D0(v116, v117);
        v119 = v115;
        if ((v115(&v213, &v209, &v217) & 1) == 0)
        {
          sub_214031C4C();
          swift_allocError();
          *v133 = 0xD000000000000013;
          v133[1] = 0x8000000214790990;
          v133[2] = 0xD00000000000001CLL;
          v133[3] = v193;
          swift_willThrow();

          sub_213FB2DF4(v195, &qword_27C913090, &unk_2146E9DB0);
          sub_213FB2DF4(v197, &unk_27C904F30, &unk_2146EFA20);
          sub_21432887C(v202, type metadata accessor for TextMessage.MessageType);
          sub_21432887C(v201, type metadata accessor for Metadata);
          (*(v200 + 8))(v31, v184);
          v134 = v158;
          v135 = *(v158 + 8);
          v136 = *(v158 + 16);
          v137 = *(v158 + 24);

          sub_213FDC6D0(v136, v137);
          *v134 = v119;
          *(v134 + 8) = v114;
          *(v134 + 16) = v198;
          *(v134 + 24) = v117;
          *(v134 + 32) = v199;
          goto LABEL_11;
        }

        sub_213FDC6D0(v198, v117);
        v122 = v193;

        v123 = v158;
        v124 = *(v158 + 8);
        v125 = *(v158 + 16);
        v126 = *(v158 + 24);

        sub_213FDC6D0(v125, v126);
        *v123 = v119;
        *(v123 + 8) = v114;
        v127 = v186;
        *(v123 + 16) = v187;
        *(v123 + 24) = v127;
        *(v123 + 32) = v199;
        v129 = *v183;
        v128 = *(v183 + 8);
        v130 = *(v183 + 16);
        v131 = *(v183 + 24);
        v132 = *(v183 + 32);
        v213 = v168;
        LODWORD(v198) = v132;
        LOBYTE(v209) = v132;
        *&v217 = 0xD000000000000028;
        *(&v217 + 1) = 0x80000002147909B0;
        v218 = 0xD00000000000001CLL;
        v219 = v122;

        sub_213FDC9D0(v130, v131);
        v199 = v129;
        if (((v129)(&v213, &v209, &v217) & 1) == 0)
        {
          sub_214031C4C();
          swift_allocError();
          *v143 = 0xD000000000000028;
          v143[1] = 0x80000002147909B0;
          v144 = v193;
          v143[2] = 0xD00000000000001CLL;
          v143[3] = v144;
          swift_willThrow();

          sub_213FB2DF4(v195, &qword_27C913090, &unk_2146E9DB0);
          sub_213FB2DF4(v197, &unk_27C904F30, &unk_2146EFA20);
          sub_21432887C(v202, type metadata accessor for TextMessage.MessageType);
          sub_21432887C(v201, type metadata accessor for Metadata);
          (*(v200 + 8))(v31, v184);
          v145 = v183;
          v146 = *(v183 + 8);
          v147 = *(v183 + 16);
          v148 = *(v183 + 24);

          sub_213FDC6D0(v147, v148);
          *v145 = v199;
          *(v145 + 8) = v128;
          *(v145 + 16) = v130;
          *(v145 + 24) = v131;
          *(v145 + 32) = v198;
          goto LABEL_11;
        }

        sub_213FDC6D0(v130, v131);

        sub_213FB2DF4(v195, &qword_27C913090, &unk_2146E9DB0);
        sub_213FB2DF4(v197, &unk_27C904F30, &unk_2146EFA20);
        sub_21432887C(v202, type metadata accessor for TextMessage.MessageType);
        sub_21432887C(v201, type metadata accessor for Metadata);
        (*(v200 + 8))(v31, v184);
        v138 = v183;
        v139 = *(v183 + 8);
        v140 = *(v183 + 16);
        v141 = *(v183 + 24);

        sub_213FDC6D0(v140, v141);
        *v138 = v199;
        *(v138 + 8) = v128;
        v142 = *(&v168 + 1);
        *(v138 + 16) = v168;
        *(v138 + 24) = v142;
        *(v138 + 32) = v198;
        sub_214328704(v192, v194, type metadata accessor for TextMessage);
        return __swift_destroy_boxed_opaque_existential_1(v234);
      }

      sub_214031C4C();
      swift_allocError();
      *v120 = 0xD000000000000029;
      v120[1] = 0x8000000214790960;
      v121 = v193;
      v120[2] = 0xD00000000000001CLL;
      v120[3] = v121;
      swift_willThrow();

      sub_213FB2DF4(v195, &qword_27C913090, &unk_2146E9DB0);
      sub_213FB2DF4(v197, &unk_27C904F30, &unk_2146EFA20);
      sub_21432887C(v202, type metadata accessor for TextMessage.MessageType);
      sub_21432887C(v201, type metadata accessor for Metadata);
      (*(v200 + 8))(v31, v184);
      v74 = v159;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v103 = 0xD000000000000028;
      v103[1] = 0x8000000214790930;
      v104 = v193;
      v103[2] = 0xD00000000000001CLL;
      v103[3] = v104;
      swift_willThrow();

      sub_213FB2DF4(v195, &qword_27C913090, &unk_2146E9DB0);
      sub_213FB2DF4(v197, &unk_27C904F30, &unk_2146EFA20);
      sub_21432887C(v202, type metadata accessor for TextMessage.MessageType);
      sub_21432887C(v201, type metadata accessor for Metadata);
      (*(v200 + 8))(v31, v184);
      v74 = v160;
    }

    v105 = *(v74 + 8);
    v106 = *(v74 + 16);
    v107 = *(v74 + 24);

    sub_213FDC6D0(v106, v107);
    *v74 = v199;
    *(v74 + 8) = v82;
    *(v74 + 16) = v196;
    *(v74 + 24) = v85;
    v93 = v198;
    goto LABEL_10;
  }

LABEL_9:

  sub_213FB2DF4(v195, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v197, &unk_27C904F30, &unk_2146EFA20);
  sub_21432887C(v202, type metadata accessor for TextMessage.MessageType);
  sub_21432887C(v201, type metadata accessor for Metadata);
  (*(v200 + 8))(v31, v184);
  v89 = *(v38 + 8);
  v90 = *(v38 + 16);
  v91 = *(v38 + 24);

  sub_213FDC6D0(v90, v91);
  *v38 = v71;
  *(v38 + 8) = v70;
  v92 = v185;
  *(v38 + 16) = v188;
  *(v38 + 24) = v92;
  v93 = v191;
LABEL_10:
  *(v74 + 32) = v93;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v234);
  return sub_21432887C(v192, type metadata accessor for TextMessage);
}

uint64_t TextMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9099A8, &qword_2146F58C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v48 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143080A4();
  sub_2146DAA28();
  v56[0] = 0;
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = type metadata accessor for TextMessage(0);
  v12 = v11[5];
  v56[0] = 1;
  type metadata accessor for TextMessage.MessageType(0);
  sub_214328930(&qword_280B2FAA0, type metadata accessor for TextMessage.MessageType);
  sub_2146DA388();
  v13 = v11[6];
  v56[0] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  sub_2142EFE18();
  sub_2146DA388();
  v75 = v11;
  v14 = v3 + v11[7];
  v15 = *(v14 + 24);
  if (v15 != 1)
  {
    *v56 = *(v14 + 16);
    *&v56[8] = v15;
    v55[0] = 3;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v17 = sub_214045AC0();
    sub_2146DA388();
    v50 = v17;
    v51 = v16;
    v18 = v75;
    v19 = v3 + v75[8];
    v20 = *(v19 + 24);
    if (v20 != 1)
    {
      *v56 = *(v19 + 16);
      *&v56[8] = v20;
      v55[0] = 4;
      sub_2146DA388();
      v21 = v3 + v18[9];
      v22 = *(v21 + 24);
      if (v22 != 1)
      {
        *v56 = *(v21 + 16);
        *&v56[8] = v22;
        v55[0] = 5;
        sub_2146DA388();
        v23 = v3 + v18[10];
        v24 = *(v23 + 24);
        if (v24 != 1)
        {
          *v56 = *(v23 + 16);
          *&v56[8] = v24;
          v55[0] = 6;
          sub_2146DA388();
          *v56 = *(v3 + v18[11]);
          v55[0] = 7;
          sub_2146DA388();
          v25 = (v3 + v18[12]);
          v26 = *v25;
          LOBYTE(v25) = *(v25 + 8);
          *v56 = v26;
          v56[8] = v25;
          v55[0] = 8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
          v49 = sub_2142E3778();
          sub_2146DA388();
          v27 = (v3 + v18[13]);
          v28 = *v27;
          LOBYTE(v27) = *(v27 + 8);
          *v56 = v28;
          v56[8] = v27;
          v55[0] = 9;
          sub_2146DA388();
          v29 = (v3 + v18[14]);
          v30 = *v29;
          LOBYTE(v29) = *(v29 + 8);
          *v56 = v30;
          v56[8] = v29;
          v55[0] = 10;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
          sub_2142E2204();
          sub_2146DA388();
          v31 = (v3 + v75[15]);
          v32 = *v31;
          LOBYTE(v31) = *(v31 + 8);
          v73 = v32;
          v74 = v31;
          v72 = 11;
          sub_2146DA388();
          v33 = (v3 + v75[16]);
          v34 = v33[3];
          v35 = v33[1];
          v69 = v33[2];
          v70 = v34;
          v36 = v33[3];
          *v71 = v33[4];
          *&v71[9] = *(v33 + 73);
          v37 = v33[1];
          v68[0] = *v33;
          v68[1] = v37;
          v65 = v69;
          v66 = v36;
          v67[0] = v33[4];
          *(v67 + 9) = *(v33 + 73);
          v63 = v68[0];
          v64 = v35;
          v62 = 12;
          sub_213FB2E54(v68, v56, &qword_27C909990, &qword_2146F58B0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909990, &qword_2146F58B0);
          sub_21430832C();
          sub_2146DA388();
          v60[2] = v65;
          v60[3] = v66;
          *v61 = v67[0];
          *&v61[9] = *(v67 + 9);
          v60[0] = v63;
          v60[1] = v64;
          sub_213FB2DF4(v60, &qword_27C909990, &qword_2146F58B0);
          v38 = *(v3 + v75[17]);
          v56[0] = 13;
          sub_2146DA338();
          *v56 = *(v3 + v75[18]);
          v55[0] = 14;
          sub_2146DA388();
          *v56 = *(v3 + v75[19]);
          v55[0] = 15;
          sub_2146DA388();
          *v56 = *(v3 + v75[20]);
          v55[0] = 16;
          sub_2146DA388();
          *v56 = *(v3 + v75[21]);
          v55[0] = 17;
          sub_2146DA388();
          v56[0] = *(v3 + v75[22]);
          v55[0] = 18;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
          v49 = sub_2142E1D30();
          sub_2146DA388();
          v39 = v3 + v75[23];
          v40 = *(v39 + 24);
          if (v40 != 1)
          {
            v58 = *(v39 + 16);
            v59 = v40;
            v57 = 19;
            sub_2146DA388();
            v41 = v75[24];
            memcpy(v56, (v3 + v41), sizeof(v56));
            memcpy(v55, (v3 + v41), sizeof(v55));
            v54[271] = 20;
            sub_213FB2E54(v56, v54, &qword_27C909998, &qword_2146F58B8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909998, &qword_2146F58B8);
            sub_214308404();
            sub_2146DA388();
            memcpy(v54, v55, 0x109uLL);
            sub_213FB2DF4(v54, &qword_27C909998, &qword_2146F58B8);
            v53 = *(v3 + v75[25]);
            v52 = 21;
            sub_2146DA388();
            v42 = *(v3 + v75[26]);
            LOBYTE(v53) = 22;
            sub_2146DA338();
            v43 = *(v3 + v75[27]);
            LOBYTE(v53) = 23;
            sub_2146DA338();
            v44 = *(v3 + v75[28]);
            LOBYTE(v53) = 24;
            sub_2146DA338();
            v45 = (v3 + v75[29]);
            v46 = *v45;
            LOBYTE(v45) = *(v45 + 8);
            *&v53 = v46;
            BYTE8(v53) = v45;
            v52 = 25;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
            sub_2142E1C30();
            sub_2146DA388();
            LOBYTE(v53) = *(v3 + v75[30]);
            v52 = 26;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9099A0, &qword_2146F58C0);
            sub_214308488();
            sub_2146DA388();
            v48[1] = v75[31];
            LOBYTE(v53) = 27;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
            sub_2142EC30C();
            sub_2146DA388();
            *&v53 = *(v3 + v75[32]);
            v52 = 28;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
            sub_2140459AC();
            sub_2146DA388();
            LOBYTE(v53) = *(v3 + v75[33]);
            v52 = 29;
            sub_2146DA388();
            v53 = *(v3 + v75[34]);
            v52 = 30;
            sub_2146DA388();
            return (*(v6 + 8))(v9, v5);
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void *sub_2141F2990@<X0>(void *__src@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, 0x122uLL);
  result = memcpy(a4, __dst, 0x128uLL);
  *(a4 + 296) = a2;
  *(a4 + 304) = a3 & 1;
  return result;
}

unint64_t sub_2141F2A08()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_2141F2A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000214794090 == a2)
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

uint64_t sub_2141F2B24(uint64_t a1)
{
  v2 = sub_214308560();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F2B60(uint64_t a1)
{
  v2 = sub_214308560();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F2B9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9099B0, &qword_2146F58D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308560();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v15;
    v20[319] = 0;
    sub_2143085B4();
    sub_2146DA1C8();
    memcpy(v19, v20, sizeof(v19));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v20[318] = 1;
    sub_2142E11FC();
    sub_2146DA1C8();
    (*(v5 + 8))(v8, v4);
    v11 = v17;
    v12 = v18;
    memcpy(v16, v19, 0x122uLL);
    v20[312] = v18;
    memcpy(v10, v16, 0x128uLL);
    *(v10 + 296) = v11;
    *(v10 + 304) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141F2DE8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9099C8, &qword_2146F58D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  memcpy(v17, v1, 0x122uLL);
  v12 = *(v1 + 296);
  v18 = *(v1 + 304);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430865C(v17, v16);
  sub_214308560();
  sub_2146DAA28();
  memcpy(v16, v17, 0x122uLL);
  v20 = 0;
  sub_2143086B8();
  sub_2146DA388();
  memcpy(v15, v16, 0x122uLL);
  sub_214308608(v15);
  if (!v2)
  {
    v13 = v12;
    v14 = v18;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2141F302C@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t (*a11)(void, void, void), uint64_t a12, uint64_t (*a13)(void, void, void), unsigned __int8 a14, uint64_t a15, char a16, uint64_t (*a17)(void, void, void), uint64_t a18, char a19)
{
  sub_21449B840(&v94);
  v21 = v94;
  v20 = v95;
  v23 = v96;
  v22 = v97;
  v24 = v98;
  sub_21449B874(&v154);
  v69 = v154;
  v92 = v155;
  v170 = v156;
  v93 = v157;
  v91 = v158;
  sub_21449B8A8(v152);
  v84 = v152[0];
  v89 = v152[2];
  v87 = v152[1];
  v88 = v152[3];
  v85 = v153;
  sub_21449B8E4(v150);
  v80 = v150[0];
  v81 = v150[1];
  v82 = v150[3];
  v83 = v150[2];
  v74 = v151;
  sub_21449BA90(v148);
  v75 = v148[0];
  v73 = v148[2];
  v77 = v148[1];
  v78 = v148[3];
  v76 = v149;
  sub_21449BACC(v144);
  v70 = v144[0];
  v72 = v144[1];
  v58 = v144[2];
  v63 = v145;
  v25 = v146;
  v71 = v147;
  sub_21449BC10(v142);
  v64 = v142[0];
  v66 = v142[2];
  v67 = v142[3];
  v68 = v142[1];
  v65 = v143;
  v160 = v25;
  v159 = a16 & 1;
  v164 = v25;
  v154 = a2;
  v155 = a3;
  v59 = v24;
  LOBYTE(v152[0]) = v24;
  v94 = 0xD00000000000001FLL;
  v95 = 0x80000002147909E0;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  v26 = v23;
  sub_213FDC9D0(v23, v22);
  v62 = v20;
  v27 = v21(&v154, v152, &v94);
  if (v60)
  {

    v29 = v69;
    v28 = v70;
    v30 = v62;
LABEL_6:
    v33 = v26;

    v34 = v22;
    sub_213FDC6D0(v26, v22);
    v35 = v74;
    v36 = v58;
    v37 = v73;
    v38 = v59;
LABEL_7:
    v94 = a1;
    v95 = v21;
    v96 = v30;
    v97 = v33;
    v98 = v34;
    v99 = v38;
    v101 = v29;
    v102 = v92;
    v103 = v170;
    v104 = v93;
    *v100 = v169[0];
    *&v100[3] = *(v169 + 3);
    v105 = v91;
    *v106 = *v168;
    *&v106[3] = *&v168[3];
    v107 = v84;
    v108 = v87;
    v109 = v89;
    v110 = v88;
    v111 = v85;
    *v112 = *v167;
    *&v112[3] = *&v167[3];
    v113 = v80;
    v114 = v81;
    v115 = v83;
    v116 = v82;
    v117 = v35;
    *&v118[3] = *&v166[3];
    *v118 = *v166;
    v119 = v75;
    v120 = v77;
    v121 = v37;
    v122 = v78;
    v123 = v76;
    *&v124[3] = *&v165[3];
    *v124 = *v165;
    v125 = v28;
    v126 = v72;
    v127 = v36;
    v128 = v63;
    v129 = v164;
    v130 = v71;
    v132 = v163;
    v131 = v162;
    v133 = a15;
    v134 = a16 & 1;
    *&v135[3] = *(v161 + 3);
    *v135 = v161[0];
    v136 = v64;
    v137 = v68;
    v138 = v66;
    v139 = v67;
    v140 = v65;
    v141 = a19 & 1;
    return sub_21430870C(&v94);
  }

  v53 = a2;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD00000000000001FLL;
    v32[1] = 0x80000002147909E0;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    v29 = v69;
    v28 = v70;
    v30 = v62;
    goto LABEL_6;
  }

  sub_213FDC6D0(v23, v22);

  v30 = v20;

  sub_213FDC6D0(v23, v22);
  v154 = a4;
  v155 = a5;
  LOBYTE(v152[0]) = v91;
  v94 = 0xD00000000000001CLL;
  v95 = 0x8000000214790A00;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  sub_213FDC9D0(v170, v93);
  v29 = v69;
  v31 = v69(&v154, v152, &v94);
  v35 = v74;
  v38 = v59;
  if ((v31 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD00000000000001CLL;
    v42[1] = 0x8000000214790A00;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v70;

    sub_213FDC6D0(v170, v93);
    v33 = a2;
    v34 = a3;
LABEL_13:
    v36 = v58;
    v37 = v73;
    goto LABEL_7;
  }

  v40 = v170;
  sub_213FDC6D0(v170, v93);

  sub_213FDC6D0(v40, v93);
  v154 = a6;
  v155 = a7;
  LOBYTE(v152[0]) = v85;
  v94 = 0xD00000000000001ELL;
  v95 = 0x8000000214790A20;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  sub_213FDC9D0(v89, v88);
  if ((v84(&v154, v152, &v94) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD00000000000001ELL;
    v43[1] = 0x8000000214790A20;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v70;

    sub_213FDC6D0(v89, v88);
    v33 = a2;
    v34 = a3;
    v170 = a4;
    v93 = a5;
    goto LABEL_13;
  }

  sub_213FDC6D0(v89, v88);

  sub_213FDC6D0(v89, v88);
  v154 = a8;
  v155 = a10;
  LOBYTE(v152[0]) = v74;
  v94 = 0xD00000000000001FLL;
  v95 = 0x8000000214790A40;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  sub_213FDC9D0(v83, v82);
  if ((v80(&v154, v152, &v94) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v44 = 0xD00000000000001FLL;
    v44[1] = 0x8000000214790A40;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v70;

    sub_213FDC6D0(v83, v82);
    v33 = a2;
    v34 = a3;
    v170 = a4;
    v93 = a5;
    v88 = a7;
    v89 = a6;
    goto LABEL_13;
  }

  sub_213FDC6D0(v83, v82);

  sub_213FDC6D0(v83, v82);
  v154 = a11;
  v155 = a12;
  LOBYTE(v152[0]) = v76;
  v94 = 0xD000000000000022;
  v95 = 0x8000000214790A60;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  sub_213FDC9D0(v73, v78);
  v41 = v75(&v154, v152, &v94);
  if ((v41 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v47 = 0xD000000000000022;
    v47[1] = 0x8000000214790A60;
    v47[2] = 0xD00000000000001CLL;
    v47[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v70;
    v33 = a2;

    v37 = v73;
    sub_213FDC6D0(v73, v78);
    v34 = a3;
    v170 = a4;
    v93 = a5;
    v88 = a7;
    v89 = a6;
    v82 = a10;
    v83 = a8;
LABEL_19:
    v35 = v74;
    v36 = v58;
    goto LABEL_7;
  }

  LODWORD(v170) = a14;
  sub_213FDC6D0(v73, v78);

  sub_213FDC6D0(v73, v78);
  v154 = a13;
  v45 = v170;
  LOBYTE(v155) = v170 & 1;
  LOBYTE(v152[0]) = v71;
  v94 = 0xD00000000000001DLL;
  v95 = 0x8000000214790A90;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  v46 = v70(&v154, v152, &v94);
  if ((v46 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v49 = 0xD00000000000001DLL;
    v49[1] = 0x8000000214790A90;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = 0x800000021478A360;
    swift_willThrow();
    v29 = v69;
    v28 = v70;
    v37 = a11;

    v34 = a3;
    v164 = v25;
    v33 = v53;
    v170 = a4;
    v93 = a5;
    v88 = a7;
    v89 = a6;
    v82 = a10;
    v83 = a8;
    v78 = a12;
    goto LABEL_19;
  }

  v63 = v45 & 1;

  v164 = 0;
  v154 = a17;
  v155 = a18;
  LOBYTE(v152[0]) = v65;
  v94 = 0xD00000000000001BLL;
  v95 = 0x8000000214790AB0;
  v96 = 0xD00000000000001CLL;
  v97 = 0x800000021478A360;

  sub_213FDC9D0(v66, v67);
  v48 = v64(&v154, v152, &v94);
  if ((v48 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v52 = 0xD00000000000001BLL;
    v52[1] = 0x8000000214790AB0;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v66, v67);
    v33 = a2;
    v34 = a3;
    v170 = a4;
    v93 = a5;
    v88 = a7;
    v89 = a6;
    v36 = a13;
    v82 = a10;
    v83 = a8;
    v37 = a11;
    v28 = v70;
    v78 = a12;
    v35 = v74;
    v30 = v62;
    v29 = v69;
    goto LABEL_7;
  }

  sub_213FDC6D0(v66, v67);

  result = sub_213FDC6D0(v66, v67);
  *a9 = a1;
  *(a9 + 8) = v21;
  *(a9 + 16) = v62;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = v59;
  *(a9 + 48) = v69;
  *(a9 + 56) = v92;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 41) = v169[0];
  *(a9 + 44) = *(v169 + 3);
  *(a9 + 80) = v91;
  *(a9 + 81) = *v168;
  *(a9 + 84) = *&v168[3];
  v50 = v164;
  *(a9 + 88) = v84;
  *(a9 + 96) = v87;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 120) = v85;
  *(a9 + 121) = *v167;
  *(a9 + 124) = *&v167[3];
  *(a9 + 128) = v80;
  *(a9 + 136) = v81;
  *(a9 + 144) = a8;
  *(a9 + 152) = a10;
  *(a9 + 160) = v74;
  *(a9 + 164) = *&v166[3];
  *(a9 + 161) = *v166;
  *(a9 + 168) = v75;
  *(a9 + 176) = v77;
  *(a9 + 184) = a11;
  *(a9 + 192) = a12;
  *(a9 + 200) = v76;
  *(a9 + 204) = *&v165[3];
  *(a9 + 201) = *v165;
  *(a9 + 208) = v70;
  *(a9 + 216) = v72;
  *(a9 + 224) = a13;
  *(a9 + 232) = v63;
  *(a9 + 233) = v50;
  *(a9 + 234) = v71;
  *(a9 + 239) = v163;
  *(a9 + 235) = v162;
  *(a9 + 240) = a15;
  *(a9 + 248) = a16 & 1;
  v51 = v161[0];
  *(a9 + 252) = *(v161 + 3);
  *(a9 + 249) = v51;
  *(a9 + 256) = v64;
  *(a9 + 264) = v68;
  *(a9 + 272) = a17;
  *(a9 + 280) = a18;
  *(a9 + 288) = v65;
  *(a9 + 289) = a19 & 1;
  return result;
}

unint64_t sub_2141F3F60(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0x644974616863;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6974707972636E65;
    if (a1 != 5)
    {
      v7 = 0x657A6953656C6966;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x726566736E617274;
    v2 = 0x644972656E776FLL;
    v3 = 0x727574616E676973;
    if (a1 != 3)
    {
      v3 = 0x5574736575716572;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2141F40C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214376954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141F40E8(uint64_t a1)
{
  v2 = sub_214308760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F4124(uint64_t a1)
{
  v2 = sub_214308760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F4160@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9099D8, &qword_2146F58E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v64 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v198 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214308760();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v198);
  }

  v121 = a2;
  LOBYTE(v123) = 0;
  v120 = sub_2146DA228();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v122[0]) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v119 = v6;
  v13 = v123;
  v14 = v124;
  LOBYTE(v122[0]) = 2;
  sub_2146DA1C8();
  v118 = v13;
  v15 = v123;
  v16 = v124;
  LOBYTE(v122[0]) = 3;
  sub_2146DA1C8();
  v115 = v15;
  v116 = v16;
  v117 = v14;
  v17 = v123;
  v18 = v124;
  LOBYTE(v122[0]) = 4;
  sub_2146DA1C8();
  v113 = v17;
  v114 = v18;
  v112 = v123;
  v19 = v124;
  LOBYTE(v122[0]) = 5;
  sub_2146DA1C8();
  v108 = v123;
  v110 = v124;
  v111 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v122[0]) = 6;
  v109 = sub_2142E3570();
  sub_2146DA1C8();
  v20 = v123;
  v107 = v124;
  LOBYTE(v122[0]) = 7;
  sub_2146DA1C8();
  v105 = v20;
  v106 = v123;
  LODWORD(v109) = v124;
  LOBYTE(v122[0]) = 8;
  sub_2146DA1C8();
  v99 = v123;
  v103 = v5;
  v104 = v124;
  v188 = 9;
  v21 = sub_2146DA178();
  sub_21449B840(&v123);
  v101 = v123;
  v22 = v124;
  v23 = v125;
  v24 = v126;
  v25 = v127;
  sub_21449B874(v122);
  v93 = v122[0];
  v97 = v122[2];
  v95 = v122[1];
  v96 = v122[3];
  v94 = LOBYTE(v122[4]);
  sub_21449B8A8(&v181);
  v88 = v181;
  v92 = v183;
  v90 = v182;
  v91 = v184;
  v89 = v185;
  sub_21449B8E4(v179);
  v83 = v179[0];
  v87 = v179[2];
  v85 = v179[1];
  v86 = v179[3];
  v84 = v180;
  sub_21449BA90(v177);
  v78 = v177[0];
  v82 = v177[2];
  v80 = v177[1];
  v81 = v177[3];
  v79 = v178;
  sub_21449BACC(v173);
  v75 = v173[0];
  v77 = v173[1];
  v69 = v173[2];
  v68 = v174;
  LODWORD(v19) = v175;
  v76 = v176;
  sub_21449BC10(v171);
  v70 = v171[0];
  v72 = v171[2];
  v73 = v171[3];
  v74 = v171[1];
  v71 = v172;
  v187 = v19;
  v186 = v109;
  v66 = v25;
  v67 = v21 & 1;
  v65 = v19;
  v192 = v19;
  v122[0] = v118;
  v122[1] = v117;
  LOBYTE(v181) = v25;
  v123 = 0xD00000000000001FLL;
  v124 = 0x80000002147909E0;
  v125 = 0xD00000000000001CLL;
  v98 = 0x800000021478A360;
  v126 = 0x800000021478A360;

  v102 = v23;
  v26 = v24;
  sub_213FDC9D0(v23, v24);
  v100 = v22;
  if (v101(v122, &v181, &v123))
  {
    v27 = v102;
    sub_213FDC6D0(v102, v24);
    v28 = v98;

    sub_213FDC6D0(v27, v24);
    v122[0] = v115;
    v122[1] = v116;
    LOBYTE(v181) = v94;
    v123 = 0xD00000000000001CLL;
    v124 = 0x8000000214790A00;
    v125 = 0xD00000000000001CLL;
    v126 = v28;

    sub_213FDC9D0(v97, v96);
    if (v93(v122, &v181, &v123))
    {
      v29 = v96;
      v30 = v97;
      sub_213FDC6D0(v97, v96);
      v31 = v98;

      sub_213FDC6D0(v30, v29);
      v122[0] = v113;
      v122[1] = v114;
      LOBYTE(v181) = v89;
      v123 = 0xD00000000000001ELL;
      v124 = 0x8000000214790A20;
      v125 = 0xD00000000000001CLL;
      v126 = v31;

      sub_213FDC9D0(v92, v91);
      if (v88(v122, &v181, &v123))
      {
        v32 = v91;
        v33 = v92;
        sub_213FDC6D0(v92, v91);
        v34 = v98;

        sub_213FDC6D0(v33, v32);
        v122[0] = v112;
        v122[1] = v111;
        LOBYTE(v181) = v84;
        v123 = 0xD00000000000001FLL;
        v124 = 0x8000000214790A40;
        v125 = 0xD00000000000001CLL;
        v126 = v34;

        sub_213FDC9D0(v87, v86);
        if (v83(v122, &v181, &v123))
        {
          v43 = v86;
          v42 = v87;
          sub_213FDC6D0(v87, v86);
          v44 = v98;

          sub_213FDC6D0(v42, v43);
          v122[0] = v108;
          v122[1] = v110;
          LOBYTE(v181) = v79;
          v123 = 0xD000000000000022;
          v124 = 0x8000000214790A60;
          v125 = 0xD00000000000001CLL;
          v126 = v44;

          sub_213FDC9D0(v82, v81);
          if (v78(v122, &v181, &v123))
          {
            v48 = v81;
            v47 = v82;
            sub_213FDC6D0(v82, v81);
            v49 = v98;

            sub_213FDC6D0(v47, v48);
            v122[0] = v105;
            LOBYTE(v122[1]) = v107;
            LOBYTE(v181) = v76;
            v123 = 0xD00000000000001DLL;
            v124 = 0x8000000214790A90;
            v125 = 0xD00000000000001CLL;
            v126 = v49;

            if (v75(v122, &v181, &v123))
            {
              v52 = v98;

              v192 = 0;
              v181 = v99;
              v182 = v104;
              LOBYTE(v122[0]) = v71;
              v123 = 0xD00000000000001BLL;
              v124 = 0x8000000214790AB0;
              v125 = 0xD00000000000001CLL;
              v126 = v52;

              sub_213FDC9D0(v72, v73);
              if (v70(&v181, v122, &v123))
              {
                v55 = v72;
                v56 = v73;
                sub_213FDC6D0(v72, v73);

                (*(v119 + 8))(v9, v103);
                v57 = v74;

                sub_213FDC6D0(v55, v56);
                HIDWORD(v122[20]) = *&v194[3];
                *(&v122[20] + 1) = *v194;
                HIDWORD(v122[25]) = *&v193[3];
                *(&v122[25] + 1) = *v193;
                *(&v122[29] + 3) = v190;
                HIDWORD(v122[31]) = *&v189[3];
                *(&v122[31] + 1) = *v189;
                v122[0] = v120;
                v122[1] = v101;
                v122[2] = v100;
                v122[3] = v118;
                v122[4] = v117;
                LOBYTE(v122[5]) = v66;
                *(&v122[5] + 1) = v197[0];
                HIDWORD(v122[5]) = *(v197 + 3);
                v58 = v93;
                v122[6] = v93;
                v122[7] = v95;
                v60 = v115;
                v59 = v116;
                v122[8] = v115;
                v122[9] = v116;
                LOBYTE(v55) = v94;
                LOBYTE(v122[10]) = v94;
                *(&v122[10] + 1) = *v196;
                HIDWORD(v122[10]) = *&v196[3];
                v122[11] = v88;
                v122[12] = v90;
                v122[13] = v113;
                v122[14] = v114;
                LOBYTE(v122[15]) = v89;
                *(&v122[15] + 1) = *v195;
                HIDWORD(v122[15]) = *&v195[3];
                v122[16] = v83;
                v122[17] = v85;
                v122[18] = v112;
                v122[19] = v111;
                LOBYTE(v122[20]) = v84;
                v122[21] = v78;
                v122[22] = v80;
                v122[23] = v108;
                v122[24] = v110;
                LOBYTE(v122[25]) = v79;
                v122[26] = v75;
                v122[27] = v77;
                v61 = v105;
                v122[28] = v105;
                LOBYTE(v122[29]) = v107;
                HIBYTE(v122[29]) = v191;
                LODWORD(v119) = v192;
                BYTE1(v122[29]) = v192;
                BYTE2(v122[29]) = v76;
                v122[30] = v106;
                LOBYTE(v122[31]) = v109;
                v122[32] = v70;
                v122[33] = v57;
                v62 = v99;
                v122[34] = v99;
                v122[35] = v104;
                LOBYTE(v122[36]) = v71;
                BYTE1(v122[36]) = v67;
                memcpy(v121, v122, 0x122uLL);
                sub_2143087B4(v122, &v123);
                __swift_destroy_boxed_opaque_existential_1(v198);
                v123 = v120;
                v124 = v101;
                v125 = v100;
                v126 = v118;
                v127 = v117;
                v128 = v66;
                v130 = v58;
                v131 = v95;
                v132 = v60;
                v133 = v59;
                v134 = v55;
                *v129 = v197[0];
                *&v129[3] = *(v197 + 3);
                *v135 = *v196;
                *&v135[3] = *&v196[3];
                v136 = v88;
                v137 = v90;
                v138 = v113;
                v139 = v114;
                v140 = v89;
                *v141 = *v195;
                *&v141[3] = *&v195[3];
                v142 = v83;
                v143 = v85;
                v144 = v112;
                v145 = v111;
                v146 = v84;
                *&v147[3] = *&v194[3];
                *v147 = *v194;
                v148 = v78;
                v149 = v80;
                v150 = v108;
                v151 = v110;
                v152 = v79;
                *&v153[3] = *&v193[3];
                *v153 = *v193;
                v154 = v75;
                v155 = v77;
                v156 = v61;
                v157 = v107;
                v158 = v119;
                v159 = v76;
                v161 = v191;
                v160 = v190;
                v162 = v106;
                v163 = v109;
                *&v164[3] = *&v189[3];
                *v164 = *v189;
                v165 = v70;
                v166 = v74;
                v167 = v62;
                v37 = v104;
                goto LABEL_10;
              }

              sub_214031C4C();
              swift_allocError();
              *v63 = 0xD00000000000001BLL;
              v63[1] = 0x8000000214790AB0;
              v63[2] = 0xD00000000000001CLL;
              v63[3] = v98;
              swift_willThrow();

              (*(v119 + 8))(v9, v103);

              sub_213FDC6D0(v72, v73);
              v26 = v117;
              v102 = v118;
              v96 = v116;
              v97 = v115;
              v91 = v114;
              v92 = v113;
              v86 = v111;
              v87 = v112;
              v81 = v110;
              v82 = v108;
              v69 = v105;
              v68 = v107;
            }

            else
            {

              sub_214031C4C();
              swift_allocError();
              *v53 = 0xD00000000000001DLL;
              v53[1] = 0x8000000214790A90;
              v54 = v98;
              v53[2] = 0xD00000000000001CLL;
              v53[3] = v54;
              swift_willThrow();
              (*(v119 + 8))(v9, v103);

              v26 = v117;
              v102 = v118;
              v192 = v65;
              v96 = v116;
              v97 = v115;
              v91 = v114;
              v92 = v113;
              v86 = v111;
              v87 = v112;
              v81 = v110;
              v82 = v108;
            }
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v50 = 0xD000000000000022;
            v50[1] = 0x8000000214790A60;
            v51 = v98;
            v50[2] = 0xD00000000000001CLL;
            v50[3] = v51;
            swift_willThrow();

            (*(v119 + 8))(v9, v103);

            sub_213FDC6D0(v82, v81);
            v26 = v117;
            v102 = v118;
            v96 = v116;
            v97 = v115;
            v91 = v114;
            v92 = v113;
            v86 = v111;
            v87 = v112;
          }
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v45 = 0xD00000000000001FLL;
          v45[1] = 0x8000000214790A40;
          v46 = v98;
          v45[2] = 0xD00000000000001CLL;
          v45[3] = v46;
          swift_willThrow();

          (*(v119 + 8))(v9, v103);

          sub_213FDC6D0(v87, v86);
          v26 = v117;
          v102 = v118;
          v96 = v116;
          v97 = v115;
          v91 = v114;
          v92 = v113;
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v40 = 0xD00000000000001ELL;
        v40[1] = 0x8000000214790A20;
        v41 = v98;
        v40[2] = 0xD00000000000001CLL;
        v40[3] = v41;
        swift_willThrow();

        (*(v119 + 8))(v9, v103);

        sub_213FDC6D0(v92, v91);
        v26 = v117;
        v102 = v118;
        v96 = v116;
        v97 = v115;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v38 = 0xD00000000000001CLL;
      v38[1] = 0x8000000214790A00;
      v39 = v98;
      v38[2] = 0xD00000000000001CLL;
      v38[3] = v39;
      swift_willThrow();

      (*(v119 + 8))(v9, v103);

      sub_213FDC6D0(v97, v96);
      v26 = v117;
      v102 = v118;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD00000000000001FLL;
    v35[1] = 0x80000002147909E0;
    v36 = v98;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = v36;
    swift_willThrow();

    (*(v119 + 8))(v9, v103);

    sub_213FDC6D0(v102, v24);
  }

  __swift_destroy_boxed_opaque_existential_1(v198);
  v123 = v120;
  v124 = v101;
  v125 = v100;
  v126 = v102;
  v127 = v26;
  v128 = v66;
  v130 = v93;
  v131 = v95;
  v132 = v97;
  v133 = v96;
  *v129 = v197[0];
  *&v129[3] = *(v197 + 3);
  v134 = v94;
  *v135 = *v196;
  *&v135[3] = *&v196[3];
  v136 = v88;
  v137 = v90;
  v138 = v92;
  v139 = v91;
  v140 = v89;
  *v141 = *v195;
  *&v141[3] = *&v195[3];
  v142 = v83;
  v143 = v85;
  v144 = v87;
  v145 = v86;
  v146 = v84;
  *&v147[3] = *&v194[3];
  *v147 = *v194;
  v148 = v78;
  v149 = v80;
  v150 = v82;
  v151 = v81;
  v152 = v79;
  *&v153[3] = *&v193[3];
  *v153 = *v193;
  v154 = v75;
  v155 = v77;
  v156 = v69;
  v157 = v68;
  v158 = v192;
  v159 = v76;
  v161 = v191;
  v160 = v190;
  v162 = v106;
  v163 = v109;
  *&v164[3] = *&v189[3];
  *v164 = *v189;
  v165 = v70;
  v166 = v74;
  v37 = v73;
  v167 = v72;
LABEL_10:
  v168 = v37;
  v169 = v71;
  v170 = v67;
  return sub_21430870C(&v123);
}

uint64_t sub_2141F56E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9099E8, &qword_2146F58E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = *v1;
  v9 = v1[4];
  v39 = v1[3];
  v40 = v9;
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[14];
  v34 = v1[13];
  v35 = v10;
  v33 = v12;
  v13 = v1[18];
  v31 = v1[19];
  v32 = v13;
  v14 = v1[24];
  v37 = v1[23];
  v38 = v11;
  v30 = v14;
  v36 = v1[28];
  v44 = *(v1 + 232);
  v29 = *(v1 + 233);
  v28 = v1[30];
  v27 = *(v1 + 248);
  v15 = v1[34];
  v25 = v1[35];
  v26 = v15;
  v16 = *(v1 + 289);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308760();
  v18 = v3;
  sub_2146DAA28();
  LOBYTE(v42) = 0;
  v19 = v41;
  sub_2146DA3E8();
  if (v19)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v20 = v38;
  v21 = v37;
  LODWORD(v41) = v16;
  if (v40 == 1)
  {
    goto LABEL_12;
  }

  v42 = v39;
  v43 = v40;
  v45 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v20 == 1)
  {
    goto LABEL_12;
  }

  v42 = v35;
  v43 = v20;
  v45 = 2;
  sub_2146DA388();
  v22 = v36;
  if (v33 == 1)
  {
    goto LABEL_12;
  }

  v42 = v34;
  v43 = v33;
  v45 = 3;
  sub_2146DA388();
  if (v31 == 1)
  {
    goto LABEL_12;
  }

  v42 = v32;
  v43 = v31;
  v45 = 4;
  sub_2146DA388();
  if (v30 == 1)
  {
    goto LABEL_12;
  }

  v42 = v21;
  v43 = v30;
  v45 = 5;
  sub_2146DA388();
  if (v29)
  {
    goto LABEL_12;
  }

  v42 = v22;
  LOBYTE(v43) = v44 & 1;
  v45 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  sub_2142E3778();
  sub_2146DA388();
  v42 = v28;
  LOBYTE(v43) = v27;
  v45 = 7;
  sub_2146DA388();
  if (v25 == 1)
  {
LABEL_12:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v42 = v26;
    v43 = v25;
    v45 = 8;
    sub_2146DA388();
    LOBYTE(v42) = 9;
    sub_2146DA338();
    return (*(v4 + 8))(v7, v18);
  }

  return result;
}

uint64_t sub_2141F5BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21449BC44(&v17);
  v5 = v17;
  v6 = v18;
  v7 = v19;
  v8 = v20;
  v9 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD00000000000001CLL;
  v18 = 0x8000000214790AD0;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;
  v10 = v5;

  sub_213FDC9D0(v7, v8);
  v11 = v10(v16, &v22, &v17);
  if (v15)
  {

    sub_213FDC6D0(v7, v8);
  }

  else
  {
    if (v11)
    {
      sub_213FDC6D0(v7, v8);

      sub_213FDC6D0(v7, v8);

      *a3 = v10;
      *(a3 + 8) = v6;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v9;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD00000000000001CLL;
    v13[1] = 0x8000000214790AD0;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v7, v8);
  }

  return sub_213FDC6D0(v7, v8);
}

uint64_t sub_2141F5DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x644974616863 && a2 == 0xE600000000000000)
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

uint64_t sub_2141F5E28(uint64_t a1)
{
  v2 = sub_214308810();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F5E64(uint64_t a1)
{
  v2 = sub_214308810();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F5EA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9099F0, &qword_2146F58F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308810();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_2142E12FC();
  sub_2146DA1C8();
  v25 = a2;
  v12 = v32;
  v13 = v33;
  sub_21449BC44(&v32);
  v14 = v33;
  v29 = v32;
  v15 = v34;
  v16 = v35;
  v26 = v12;
  v27 = v13;
  v31[0] = v12;
  v31[1] = v13;
  v37 = v36;
  v38 = v36;
  v32 = 0xD00000000000001CLL;
  v33 = 0x8000000214790AD0;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  v30 = v15;
  v28 = v16;
  sub_213FDC9D0(v15, v16);
  v17 = v29(v31, &v38, &v32);
  if (v17)
  {
    v18 = v28;
    sub_213FDC6D0(v30, v28);

    (*(v6 + 8))(v9, v5);

    sub_213FDC6D0(v30, v18);
    v19 = v25;
    *v25 = v29;
    v19[1] = v14;
    v20 = v27;
    v19[2] = v26;
    v19[3] = v20;
    *(v19 + 32) = v37;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v21 = 0xD00000000000001CLL;
  v21[1] = 0x8000000214790AD0;
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  v22 = v30;
  v23 = v28;
  sub_213FDC6D0(v30, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_213FDC6D0(v22, v23);
}

uint64_t sub_2141F6268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_2141F62F0(uint64_t a1)
{
  v2 = sub_214308864();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F632C(uint64_t a1)
{
  v2 = sub_214308864();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F6368@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A08, &qword_2146F5900);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308864();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v13;
    sub_2143088B8();
    sub_2146DA1C8();
    (*(v5 + 8))(v8, v4);
    memcpy(v10, v12, 0x131uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141F64E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A20, &qword_2146F5908);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  memcpy(v12, v1, 0x131uLL);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430890C(v12, v11);
  sub_214308864();
  sub_2146DAA28();
  memcpy(v11, v12, 0x131uLL);
  sub_214308968();
  sub_2146DA388();
  memcpy(v10, v11, 0x131uLL);
  sub_2143089BC(v10);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2141F66AC@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v41 = *a7;
  v42 = a7[1];
  v43 = a7[2];
  sub_21403188C(v77);
  v11 = v77[0];
  v12 = v77[1];
  v34 = v77[2];
  v35 = v78;
  v13 = v79;
  v14 = v80;
  sub_2140319D0(&v53);
  v51 = v53;
  v52 = v54;
  v49 = v55;
  v84 = v56;
  v46 = v57;
  sub_214031A04(&v72);
  v38 = v73;
  v39 = v72;
  v47 = v74;
  v48 = v75;
  v36 = v76;
  v81 = v13;
  v72 = a1;
  LOBYTE(v73) = a2 & 1;
  v40 = v14;
  LOBYTE(v77[0]) = v14;
  v53 = 0xD000000000000026;
  v54 = 0x8000000214790AF0;
  v55 = 0xD00000000000001CLL;
  v56 = 0x800000021478A360;

  v50 = v12;
  v37 = v11;
  v15 = v11(&v72, v77, &v53);
  if (v8)
  {

LABEL_6:
    v20 = v39;
    v22 = v49;
    v21 = v50;

    a1 = v34;
    v16 = v35;
    v23 = v36;
    v17 = v46;
    v24 = v38;
LABEL_7:
    v53 = v37;
    v54 = v21;
    v55 = a1;
    LOBYTE(v56) = v16;
    BYTE1(v56) = v81;
    BYTE2(v56) = v40;
    *(&v56 + 3) = *&v83[7];
    HIBYTE(v56) = v83[11];
    v57 = v51;
    v58 = v52;
    v59 = v22;
    v60 = v84;
    v61 = v17;
    *&v62[3] = *&v83[3];
    *v62 = *v83;
    v63 = v20;
    v64 = v24;
    v65 = v47;
    v66 = v48;
    v67 = v23;
    *v68 = v82[0];
    *&v68[3] = *(v82 + 3);
    v69 = v41;
    v70 = v42;
    v71 = v43;
    return sub_214308A10(&v53);
  }

  if ((v15 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD000000000000026;
    v19[1] = 0x8000000214790AF0;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v16 = a2 & 1;

  v81 = 0;
  v72 = a3;
  v73 = a4;
  v17 = v46;
  LOBYTE(v77[0]) = v46;
  v53 = 0xD000000000000024;
  v54 = 0x8000000214790B20;
  v55 = 0xD00000000000001CLL;
  v56 = 0x800000021478A360;

  sub_213FDC9D0(v49, v84);
  v18 = v51(&v72, v77, &v53);
  v23 = v36;
  if ((v18 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD000000000000024;
    v28[1] = 0x8000000214790B20;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();

    v24 = v38;
    v20 = v39;

    v22 = v49;
    sub_213FDC6D0(v49, v84);
LABEL_11:
    v21 = v50;
    goto LABEL_7;
  }

  v26 = v84;
  sub_213FDC6D0(v49, v84);

  sub_213FDC6D0(v49, v26);
  v72 = a5;
  v73 = a6;
  LOBYTE(v77[0]) = v36;
  v53 = 0xD000000000000029;
  v54 = 0x8000000214790B50;
  v55 = 0xD00000000000001CLL;
  v56 = 0x800000021478A360;
  v24 = v38;

  sub_213FDC9D0(v47, v48);
  v20 = v39;
  v27 = v39(&v72, v77, &v53);
  v17 = v46;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD000000000000029;
    v30[1] = 0x8000000214790B50;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v47, v48);
    v22 = a3;
    v84 = a4;
    goto LABEL_11;
  }

  sub_213FDC6D0(v47, v48);

  result = sub_213FDC6D0(v47, v48);
  v29 = v81;
  *a8 = v37;
  *(a8 + 8) = v50;
  *(a8 + 16) = a1;
  *(a8 + 24) = v16;
  *(a8 + 25) = v29;
  *(a8 + 26) = v40;
  *(a8 + 32) = v51;
  *(a8 + 40) = v52;
  *(a8 + 48) = a3;
  *(a8 + 56) = a4;
  *(a8 + 64) = v46;
  *(a8 + 72) = v39;
  *(a8 + 80) = v38;
  *(a8 + 88) = a5;
  *(a8 + 96) = a6;
  *(a8 + 104) = v36;
  *(a8 + 112) = v41;
  *(a8 + 120) = v42;
  *(a8 + 128) = v43;
  return result;
}

unint64_t sub_2141F6C2C()
{
  v1 = 0x614C656372756F73;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x74616C736E617274;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_2141F6CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214376CAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141F6CF4(uint64_t a1)
{
  v2 = sub_214308A64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F6D30(uint64_t a1)
{
  v2 = sub_214308A64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F6D6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A30, &qword_2146F5910);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308A64();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v69 = v5;
  v10 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v70) = 0;
  sub_2142E11FC();
  sub_2146DA1C8();
  v67 = v79;
  v68 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v70) = 1;
  sub_2142E12FC();
  v11 = v8;
  sub_2146DA1C8();
  v12 = a1;
  v13 = v79;
  *(&v66 + 1) = v80;
  LOBYTE(v70) = 2;
  sub_2146DA1C8();
  *&v66 = v13;
  v15 = v79;
  v14 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
  v103 = 3;
  sub_2142E4F74();
  sub_2146DA1C8();
  v46 = v15;
  v54 = v104;
  v55 = v14;
  v49 = v11;
  v50 = v105;
  v51 = v106;
  sub_21403188C(&v96);
  v18 = v96;
  v17 = v97;
  v48 = v98;
  v47 = v99;
  LOBYTE(v15) = v100;
  LODWORD(v14) = v101;
  sub_2140319D0(&v79);
  v62 = v79;
  v60 = v81;
  v64 = v82;
  v65 = v80;
  v63 = v83;
  sub_214031A04(&v70);
  v56 = v70;
  v58 = v71;
  v59 = *(&v70 + 1);
  v57 = v72;
  v102 = v15;
  *&v70 = v67;
  BYTE8(v70) = v68;
  v53 = v14;
  LOBYTE(v96) = v14;
  v79 = 0xD000000000000026;
  v80 = 0x8000000214790AF0;
  v81 = 0xD00000000000001CLL;
  v82 = 0x800000021478A360;

  v61 = v17;
  v52 = v18;
  v19 = v18(&v70, &v96, &v79);
  v20 = *(&v66 + 1);
  if (v19)
  {

    v102 = 0;
    *&v70 = v66;
    *(&v70 + 1) = v20;
    LOBYTE(v96) = v63;
    v79 = 0xD000000000000024;
    v80 = 0x8000000214790B20;
    v81 = 0xD00000000000001CLL;
    v82 = 0x800000021478A360;

    sub_213FDC9D0(v60, v64);
    v21 = v62(&v70, &v96, &v79);
    v45 = 0x800000021478A360;
    if (v21)
    {
      v28 = v60;
      sub_213FDC6D0(v60, v64);
      v29 = v45;

      sub_213FDC6D0(v28, v64);
      v96 = v46;
      v97 = v55;
      LOBYTE(v70) = v57;
      v79 = 0xD000000000000029;
      v80 = 0x8000000214790B50;
      v81 = 0xD00000000000001CLL;
      v82 = v29;

      sub_213FDC9D0(v58, *(&v58 + 1));
      v30 = v56(&v96, &v70, &v79);
      if (v30)
      {
        v33 = v58;
        sub_213FDC6D0(v58, *(&v58 + 1));

        (*(v69 + 8))(v49, v4);
        v34 = v59;

        sub_213FDC6D0(v33, *(&v33 + 1));
        *&v70 = v52;
        *(&v70 + 1) = v61;
        *&v71 = v67;
        BYTE8(v71) = v68;
        LODWORD(v69) = v102;
        BYTE9(v71) = v102;
        BYTE10(v71) = v53;
        *(&v71 + 11) = v109;
        HIBYTE(v71) = v110;
        *&v72 = v62;
        *(&v72 + 1) = v65;
        v73 = v66;
        LOBYTE(v74) = v63;
        *(&v74 + 1) = *v108;
        DWORD1(v74) = *&v108[3];
        v35 = v56;
        *(&v74 + 1) = v56;
        *&v75 = v34;
        *(&v75 + 1) = v46;
        *&v76 = v55;
        BYTE8(v76) = v57;
        *(&v76 + 9) = *v107;
        HIDWORD(v76) = *&v107[3];
        v37 = v50;
        v36 = v51;
        *&v77 = v54;
        *(&v77 + 1) = v50;
        v78 = v51;
        *(v10 + 128) = v51;
        v38 = v73;
        *(v10 + 32) = v72;
        *(v10 + 48) = v38;
        v39 = v71;
        *v10 = v70;
        *(v10 + 16) = v39;
        v40 = v75;
        *(v10 + 64) = v74;
        *(v10 + 80) = v40;
        v41 = v77;
        *(v10 + 96) = v76;
        *(v10 + 112) = v41;
        sub_214308AB8(&v70, &v79);
        __swift_destroy_boxed_opaque_existential_1(v12);
        v79 = v52;
        v80 = v61;
        v81 = v67;
        LOBYTE(v82) = v68;
        BYTE1(v82) = v69;
        BYTE2(v82) = v53;
        *(&v82 + 3) = v109;
        HIBYTE(v82) = v110;
        v83 = v62;
        v84 = v65;
        v85 = v66;
        v86 = v63;
        *v87 = *v108;
        *&v87[3] = *&v108[3];
        v88 = v35;
        v89 = v34;
        *&v90 = v46;
        *(&v90 + 1) = v55;
        v91 = v57;
        *&v92[3] = *&v107[3];
        *v92 = *v107;
        v93 = v54;
        v94 = v37;
        v95 = v36;
        return sub_214308A10(&v79);
      }

      sub_214031C4C();
      swift_allocError();
      *v42 = 0xD000000000000029;
      v42[1] = 0x8000000214790B50;
      v43 = v45;
      v42[2] = 0xD00000000000001CLL;
      v42[3] = v43;
      swift_willThrow();

      v44 = *(&v66 + 1);
      (*(v69 + 8))(v49, v4);

      sub_213FDC6D0(v58, *(&v58 + 1));
      v26 = v66;
      v27 = v44;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v31 = 0xD000000000000024;
      v31[1] = 0x8000000214790B20;
      v32 = v45;
      v31[2] = 0xD00000000000001CLL;
      v31[3] = v32;
      swift_willThrow();

      (*(v69 + 8))(v49, v4);

      v26 = v60;
      v27 = v64;
      sub_213FDC6D0(v60, v64);
    }

    v25 = v68;
    v24 = v67;
    v23 = v61;
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000026;
    v22[1] = 0x8000000214790AF0;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v69 + 8))(v49, v4);
    v23 = v61;

    v24 = v48;
    v25 = v47;
    v26 = v60;
    v27 = v64;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  v79 = v52;
  v80 = v23;
  v81 = v24;
  LOBYTE(v82) = v25;
  BYTE1(v82) = v102;
  BYTE2(v82) = v53;
  *(&v82 + 3) = v109;
  HIBYTE(v82) = v110;
  v83 = v62;
  v84 = v65;
  *&v85 = v26;
  *(&v85 + 1) = v27;
  v86 = v63;
  *v87 = *v108;
  *&v87[3] = *&v108[3];
  v88 = v56;
  v89 = v59;
  v90 = v58;
  v91 = v57;
  *v92 = *v107;
  *&v92[3] = *&v107[3];
  v93 = v54;
  v94 = v50;
  v95 = v51;
  return sub_214308A10(&v79);
}

uint64_t sub_2141F7788(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A40, &qword_2146F5918);
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 25);
  v10 = *(v1 + 48);
  v21 = *(v1 + 56);
  v22 = v10;
  v11 = *(v1 + 88);
  v19 = *(v1 + 96);
  v20 = v11;
  v12 = *(v1 + 112);
  v17 = *(v1 + 120);
  v18 = v12;
  v16 = *(v1 + 128);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308A64();
  sub_2146DAA28();
  if ((v9 & 1) == 0)
  {
    v25 = v7;
    LOBYTE(v26) = v8 & 1;
    v28 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    v14 = v23;
    sub_2146DA388();
    if (v14)
    {
      return (*(v24 + 8))(v6, v3);
    }

    if (v21 != 1)
    {
      v25 = v22;
      v26 = v21;
      v28 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      if (v19 != 1)
      {
        v25 = v20;
        v26 = v19;
        v28 = 2;
        sub_2146DA388();
        v25 = v18;
        v26 = v17;
        v27 = v16;
        v28 = 3;
        sub_214031CA0(v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905930, &qword_2146F3EC8);
        sub_2142E5278();
        sub_2146DA388();
        sub_214031CE0(v25);
        return (*(v24 + 8))(v6, v3);
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141F7AB4(uint64_t a1)
{
  v2 = sub_214308B14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F7AF0(uint64_t a1)
{
  v2 = sub_214308B14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F7BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21408E674(&v11);
  v5 = v11;
  v4 = v12;
  v6 = v14;
  v16 = a1;
  v15 = v14;
  v11 = 0xD000000000000034;
  v12 = 0x8000000214790B80;
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
    *v9 = 0xD000000000000034;
    v9[1] = 0x8000000214790B80;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2141F7D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000021 && 0x8000000214793E80 == a2)
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

uint64_t sub_2141F7E24(uint64_t a1)
{
  v2 = sub_214308B68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F7E60(uint64_t a1)
{
  v2 = sub_214308B68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F7E9C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unint64_t *, char *, unint64_t *)@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A60, &qword_2146F5930);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308B68();
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
  sub_21408E674(&v23);
  v14 = v23;
  v13 = v24;
  v21 = v12;
  v22 = v25;
  v28 = v12;
  v19 = v26;
  v27 = v26;
  v23 = 0xD000000000000034;
  v24 = 0x8000000214790B80;
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
  *v17 = 0xD000000000000034;
  v17[1] = 0x8000000214790B80;
  v17[2] = 0xD00000000000001CLL;
  v17[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141F81C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A70, &qword_2146F5938);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308B68();
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

int *sub_2141F839C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  v14 = sub_2146D8B88();
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  result = type metadata accessor for VideoMessageMetadata();
  *(a6 + result[5]) = v11;
  *(a6 + result[6]) = v12;
  *(a6 + result[7]) = v13;
  *(a6 + result[8]) = a5;
  *(a6 + result[9]) = a7;
  return result;
}

uint64_t sub_2141F8468()
{
  v1 = *v0;
  v2 = 0x444955556C6C6163;
  v3 = 0x516567617373656DLL;
  v4 = 0x617461646174656DLL;
  if (v1 != 4)
  {
    v4 = 0x6E6F697461727564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x707954616964656DLL;
  if (v1 != 1)
  {
    v5 = 0x72656469766F7270;
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

uint64_t sub_2141F853C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214376E30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141F8564(uint64_t a1)
{
  v2 = sub_214308BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F85A0(uint64_t a1)
{
  v2 = sub_214308BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F85DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_2146D8B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A78, &qword_2146F5940);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v12 = &v26[-v11];
  v14 = a1[3];
  v13 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_214308BBC();
  sub_2146DAA08();
  if (!v2)
  {
    v15 = v5;
    v42 = 0;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0]);
    v16 = v32;
    sub_2146DA1C8();
    v40 = 1;
    sub_21405B360();
    sub_2146DA1C8();
    v30 = v41;
    v38 = 2;
    sub_21405B48C();
    sub_2146DA1C8();
    v18 = v39;
    v36 = 3;
    sub_21405B1F8();
    sub_2146DA1C8();
    v29 = v18;
    v19 = v37;
    v35 = 4;
    v20 = sub_2146DA1B8();
    v27 = v19;
    v28 = v20;
    v34 = 5;
    sub_2146DA188();
    v22 = v21;
    (*(v9 + 8))(v12, v16);
    v23 = v31;
    (*(v15 + 32))(v31, v8, v4);
    v24 = type metadata accessor for VideoMessageMetadata();
    v25 = v29;
    *(v23 + v24[5]) = v30;
    *(v23 + v24[6]) = v25;
    *(v23 + v24[7]) = v27;
    *(v23 + v24[8]) = v28;
    *(v23 + v24[9]) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_2141F89EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A88, &qword_2146F5948);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308BBC();
  sub_2146DAA28();
  v15[15] = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for VideoMessageMetadata();
    v15[14] = *(v3 + v11[5]);
    v15[13] = 1;
    sub_21405B3B4();
    sub_2146DA388();
    v15[12] = *(v3 + v11[6]);
    v15[11] = 2;
    sub_21405B4E0();
    sub_2146DA388();
    v15[10] = *(v3 + v11[7]);
    v15[9] = 3;
    sub_21405B24C();
    sub_2146DA388();
    v12 = *(v3 + v11[8]);
    v15[8] = 4;
    sub_2146DA378();
    v13 = *(v3 + v11[9]);
    v15[7] = 5;
    sub_2146DA348();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2141F8CD0(uint64_t a1)
{
  v2 = sub_214308C10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141F8D0C(uint64_t a1)
{
  v2 = sub_214308C10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141F8D48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909A90, &qword_2146F5950);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308C10();
  sub_2146DAA08();
  if (!v2)
  {
    v21 = 0;
    sub_214308C64();
    sub_2146DA1C8();
    v11 = v17;
    v20 = v18;
    v16 = BYTE1(v18);
    v21 = 1;
    sub_214308CB8();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v19;
    *a2 = v11;
    *(a2 + 16) = v20;
    *(a2 + 17) = v16;
    v13 = v18;
    *(a2 + 24) = v17;
    *(a2 + 40) = v13;
    *(a2 + 56) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141F8F58(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909AB0, &qword_2146F5958);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 8);
  v10 = v1[4];
  v17 = v1[3];
  v18 = v10;
  v11 = v1[6];
  v16 = v1[5];
  v19 = v11;
  v27 = *(v1 + 56);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308C10();

  sub_2146DAA28();
  v22 = v7;
  v23 = v8;
  LOWORD(v24) = v9;
  v28 = 0;
  sub_214308D0C();
  v13 = v20;
  sub_2146DA388();

  if (!v13)
  {
    v22 = v17;
    v23 = v18;
    v24 = v16;
    v25 = v19;
    v26 = v27;
    v28 = 1;
    sub_214308D60();

    sub_2146DA388();
  }

  return (*(v21 + 8))(v6, v3);
}

uint64_t sub_2141F9198@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v34 = v14;
  v15 = *(v14 + 16);
  v36 = v16;
  v37 = a4;
  v15(&v30 - v12, a4);
  sub_214424A00(&v42);
  v39 = v42;
  v40 = v43;
  v41 = v44;
  sub_214424ACC(a1, &v39, v13, a5);
  v17 = type metadata accessor for WalletPassSharingSpecializedMessage();
  v35 = a5;
  sub_214424B84(&v42);
  v31 = a2;
  v38[0] = a2;
  v38[1] = a3;
  v18 = v44;
  v45 = v44;
  v39.n128_u64[0] = 0xD000000000000035;
  v39.n128_u64[1] = 0x8000000214790BC0;
  *&v40 = 0xD00000000000001CLL;
  *(&v40 + 1) = 0x800000021478A360;
  v19 = v42.n128_u64[0];
  v32 = v42;
  v20 = v42.n128_u64[1];
  v21 = v33;
  v22 = (v42.n128_u64[0])(v38, &v45, &v39);
  if (v21)
  {

    v23 = v32;
  }

  else
  {
    if (v22)
    {

      *&v43 = v31;
      *(&v43 + 1) = a3;
      v39.n128_u64[0] = v19;
      v39.n128_u64[1] = v20;
      *&v40 = v31;
      *(&v40 + 1) = a3;
      v41 = v18;
      v24 = sub_214424BD0(&v39);
      return (*(v34 + 8))(v37, v36, v24);
    }

    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000035;
    v26[1] = 0x8000000214790BC0;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();

    v23 = v42;
    v18 = v44;
  }

  v39 = v23;
  v40 = v43;
  v41 = v18;
  v27 = v35;
  v28 = sub_214424BD0(&v39);
  (*(v34 + 8))(v37, v36, v28);
  return (*(*(v17 - 8) + 8))(v27, v17, v29);
}

uint64_t sub_2141F94A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021478BCE0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2141F95C8(char a1)
{
  if (!a1)
  {
    return 0x6E6F6973726576;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x64616F6C796170;
}

uint64_t sub_2141F9640()
{
  sub_2146DA958();
  sub_213FDC894(v2, *v0);
  return sub_2146DA9B8();
}

uint64_t sub_2141F9688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2141F94A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141F96B0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_214377044();
  *a2 = result;
  return result;
}

uint64_t sub_2141F96DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2141F9730(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2141F9784@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v46 = type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload();
  v44 = *(v46 - 8);
  v7 = *(v44 + 64);
  v8 = MEMORY[0x28223BE20](v46);
  v48 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v38 - v10;
  _s10CodingKeysOMa_315();
  swift_getWitnessTable();
  v49 = sub_2146DA258();
  v47 = *(v49 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v13 = &v38 - v12;
  v42 = a3;
  v14 = type metadata accessor for WalletPassSharingSpecializedMessage();
  v43 = *(v14 - 8);
  v15 = *(v43 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v50;
  sub_2146DAA08();
  if (!v19)
  {
    v20 = v48;
    v40 = a2;
    v50 = v17;
    v21 = v47;
    v55.n128_u8[0] = 0;
    v22 = v13;
    v23 = sub_2146DA218();
    v55.n128_u8[0] = 1;
    v24 = sub_2146DA168();
    v58 = v23;
    *&v39 = v24;
    *(&v39 + 1) = v25;
    v55.n128_u8[0] = 2;
    v26 = v46;
    swift_getWitnessTable();
    v27 = v45;
    sub_2146DA1C8();
    v38 = v22;
    (*(v44 + 16))(v20, v27, v26);
    sub_214424A00(&v55);
    v52 = v55;
    v53 = v56;
    v54 = v57;
    sub_214424ACC(v58, &v52, v20, v50);
    sub_214424B84(&v55);
    v51 = v39;
    v29 = v55;
    v30 = v57;
    v59 = v57;
    v52.n128_u64[0] = 0xD000000000000035;
    v52.n128_u64[1] = 0x8000000214790BC0;
    v48 = 0x8000000214790BC0;
    *&v53 = 0xD00000000000001CLL;
    *(&v53 + 1) = 0x800000021478A360;
    v31 = (v55.n128_u64[0])(&v51, &v59, &v52);
    v32 = v48;
    if (v31)
    {
      v42 = *(&v56 + 1);

      v56 = v39;
      v52 = v29;
      v53 = v39;
      v54 = v30;
      v33 = v50;
      v34 = sub_214424BD0(&v52);
      (*(v44 + 8))(v45, v46, v34);
      (*(v21 + 8))(v38, v49);
      (*(v43 + 32))(v41, v33, v14);
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v35 = 0xD000000000000035;
      v35[1] = v32;
      v35[2] = 0xD00000000000001CLL;
      v35[3] = 0x800000021478A360;
      swift_willThrow();

      v52 = v55;
      v53 = v56;
      v54 = v57;
      v36 = v50;
      v37 = sub_214424BD0(&v52);
      (*(v44 + 8))(v45, v46, v37);
      (*(v21 + 8))(v38, v49);
      (*(v43 + 8))(v36, v14);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141F9DAC(void *a1, uint64_t a2)
{
  v19 = a2;
  v3 = v2;
  v5 = *(a2 + 16);
  v18[0] = *(a2 + 24);
  v18[1] = v5;
  _s10CodingKeysOMa_315();
  swift_getWitnessTable();
  v6 = sub_2146DA3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DAA28();
  v12 = *v3;
  v23 = 0;
  v13 = v20;
  sub_2146DA3D8();
  if (v13)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v15 = v7;
  v16 = v19;
  sub_214426140();
  v22 = 1;

  sub_2146DA328();

  v17 = *(v16 + 40);
  v21 = 2;
  type metadata accessor for WalletPassSharingSpecializedMessage.WalletPassSharingSpecializedMessagePayload();
  swift_getWitnessTable();
  sub_2146DA388();
  return (*(v15 + 8))(v10, v6);
}

__n128 sub_2141FA06C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 24) = *a2;
  v5 = *(a2 + 32);
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 40) = v4;
  *(a3 + 56) = v5;
  return result;
}

uint64_t sub_2141FA094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44636972656E6567 && a2 == 0xEB00000000617461;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C707061 && a2 == 0xE500000000000000)
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

uint64_t sub_2141FA170(uint64_t a1)
{
  v2 = sub_214308DCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141FA1AC(uint64_t a1)
{
  v2 = sub_214308DCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141FA1E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909AC8, &qword_2146F5960);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308DCC();
  sub_2146DAA08();
  if (!v2)
  {
    v21 = 0;
    sub_214308E20();
    sub_2146DA1C8();
    v11 = v17;
    v20 = v18;
    v16 = BYTE1(v18);
    v21 = 1;
    sub_214308E74();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v19;
    *a2 = v11;
    *(a2 + 16) = v20;
    *(a2 + 17) = v16;
    v13 = v18;
    *(a2 + 24) = v17;
    *(a2 + 40) = v13;
    *(a2 + 56) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141FA3F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909AE8, &qword_2146F5968);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 8);
  v10 = v1[4];
  v17 = v1[3];
  v18 = v10;
  v11 = v1[6];
  v16 = v1[5];
  v19 = v11;
  v27 = *(v1 + 56);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308DCC();

  sub_2146DAA28();
  v22 = v7;
  v23 = v8;
  LOWORD(v24) = v9;
  v28 = 0;
  sub_214308EC8();
  v13 = v20;
  sub_2146DA388();

  if (!v13)
  {
    v22 = v17;
    v23 = v18;
    v24 = v16;
    v25 = v19;
    v26 = v27;
    v28 = 1;
    sub_214308F1C();

    sub_2146DA388();
  }

  return (*(v21 + 8))(v6, v3);
}

uint64_t sub_2141FA638@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char *a10, unsigned __int8 a11)
{
  v77 = a4;
  v80 = a8;
  v81 = a6;
  v74 = a7;
  v75 = a5;
  v76 = a3;
  v83 = a2;
  LODWORD(v82) = a11;
  v79 = a10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v72 - v15);
  v17 = type metadata accessor for WalletCloudStoreZoneInvitationMessage();
  v18 = v17[5];
  sub_2144DC944(&v18[a9]);
  sub_2144DCAF0(&v86);
  v19 = v87;
  v20 = v88;
  v21 = v89;
  sub_2144DCC4C(v84);
  v22 = v85;
  *a9 = a1;
  v23 = &a9[v17[6]];
  v24 = v77;
  *v23 = v76;
  *(v23 + 1) = v24;
  v25 = &a9[v17[7]];
  *v25 = v86;
  *(v25 + 2) = v19;
  *(v25 + 3) = v20;
  v25[32] = v21;
  v26 = v83;
  v27 = &a9[v17[8]];
  v28 = v84[1];
  *v27 = v84[0];
  *(v27 + 1) = v28;
  v27[32] = v22;
  v29 = &a9[v17[9]];
  *v29 = v79;
  v29[8] = v82 & 1;
  v79 = v18;
  v82 = a9;
  sub_213FB2E54(&v18[a9], v16, &qword_27C903F38, &unk_2146E9D40);
  v30 = *v16;
  v31 = v16[1];
  LOBYTE(v84[0]) = *(v16 + *(v13 + 32));
  *&v86 = 0xD00000000000002ELL;
  *(&v86 + 1) = 0x8000000214790C00;
  v87 = 0xD00000000000001CLL;
  v88 = 0x800000021478A360;
  v32 = v78;
  v33 = v30(v26, v84, &v86);
  if (v32)
  {

    sub_213FB2DF4(v26, &unk_27C9131A0, &unk_2146E9D10);

LABEL_6:
    v44 = v82;
    sub_21402EDB8(v16, &v79[v82], &qword_27C903F38, &unk_2146E9D40);
    return sub_21432887C(v44, type metadata accessor for WalletCloudStoreZoneInvitationMessage);
  }

  v77 = v27;
  v78 = v25;
  if ((v33 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD00000000000002ELL;
    v43[1] = 0x8000000214790C00;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v83, &unk_27C9131A0, &unk_2146E9D10);
    goto LABEL_6;
  }

  v34 = *(v13 + 28);
  sub_213FB2DF4(v16 + v34, &qword_27C903F40, &unk_2146F1C50);
  sub_213FB2E54(v83, v16 + v34, &unk_27C9131A0, &unk_2146E9D10);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  (*(*(v35 - 8) + 56))(v16 + v34, 0, 1, v35);
  sub_21402EDB8(v16, &v79[v82], &qword_27C903F38, &unk_2146E9D40);
  v36 = v78;
  v38 = *v78;
  v37 = *(v78 + 1);
  v40 = *(v78 + 2);
  v39 = *(v78 + 3);
  v41 = v78[32];
  *&v84[0] = v75;
  *(&v84[0] + 1) = v81;
  LODWORD(v76) = v41;
  v90 = v41;
  *&v86 = 0xD000000000000039;
  *(&v86 + 1) = 0x8000000214790C30;
  v87 = 0xD00000000000001CLL;
  v88 = 0x800000021478A360;

  v73 = v39;
  sub_213FDC9D0(v40, v39);
  v79 = v38;
  v42 = (v38)(v84, &v90, &v86);
  if ((v42 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD000000000000039;
    v58[1] = 0x8000000214790C30;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v83, &unk_27C9131A0, &unk_2146E9D10);
    v59 = *(v36 + 1);
    v60 = *(v36 + 2);
    v61 = *(v36 + 3);

    sub_213FDC6D0(v60, v61);
    *v36 = v79;
    *(v36 + 1) = v37;
    v62 = v73;
    *(v36 + 2) = v40;
    *(v36 + 3) = v62;
    v63 = v76;
LABEL_12:
    v36[32] = v63;
    v44 = v82;
    return sub_21432887C(v44, type metadata accessor for WalletCloudStoreZoneInvitationMessage);
  }

  v72 = 0;
  sub_213FDC6D0(v40, v73);

  v46 = *(v36 + 1);
  v47 = *(v36 + 2);
  v48 = *(v36 + 3);

  sub_213FDC6D0(v47, v48);
  *v36 = v79;
  *(v36 + 1) = v37;
  v50 = v80;
  v49 = v81;
  *(v36 + 2) = v75;
  *(v36 + 3) = v49;
  v36[32] = v76;
  v36 = v77;
  v52 = *v77;
  v51 = *(v77 + 1);
  v53 = *(v77 + 2);
  v54 = *(v77 + 3);
  v55 = v77[32];
  *&v84[0] = v74;
  *(&v84[0] + 1) = v50;
  LODWORD(v79) = v55;
  v90 = v55;
  *&v86 = 0xD00000000000002ELL;
  *(&v86 + 1) = 0x8000000214790C70;
  v87 = 0xD00000000000001CLL;
  v88 = 0x800000021478A360;

  sub_213FDC9D0(v53, v54);
  v56 = v72;
  v81 = v52;
  v57 = v52(v84, &v90, &v86);
  if (v56)
  {

LABEL_16:

    sub_213FB2DF4(v83, &unk_27C9131A0, &unk_2146E9D10);
    v69 = *(v36 + 1);
    v70 = *(v36 + 2);
    v71 = *(v36 + 3);

    sub_213FDC6D0(v70, v71);
    *v36 = v81;
    *(v36 + 1) = v51;
    *(v36 + 2) = v53;
    *(v36 + 3) = v54;
    v63 = v79;
    goto LABEL_12;
  }

  if ((v57 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v68 = 0xD00000000000002ELL;
    v68[1] = 0x8000000214790C70;
    v68[2] = 0xD00000000000001CLL;
    v68[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_16;
  }

  sub_213FDC6D0(v53, v54);

  sub_213FB2DF4(v83, &unk_27C9131A0, &unk_2146E9D10);
  v64 = *(v36 + 1);
  v65 = *(v36 + 2);
  v66 = v50;
  v67 = *(v36 + 3);

  result = sub_213FDC6D0(v65, v67);
  *v36 = v81;
  *(v36 + 1) = v51;
  *(v36 + 2) = v74;
  *(v36 + 3) = v66;
  v36[32] = v79;
  return result;
}

unint64_t sub_2141FAD14()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x656D614E656E6F7ALL;
  if (v1 != 4)
  {
    v3 = 0x6165724365746164;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 1)
  {
    v4 = 0x4C52556572616873;
  }

  else
  {
    v4 = 0xD000000000000014;
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

uint64_t sub_2141FADD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437704C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141FAE00(uint64_t a1)
{
  v2 = sub_214308F70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141FAE3C(uint64_t a1)
{
  v2 = sub_214308F70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141FAE78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v98 = &v84[-v4];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v96 = *(v99 - 8);
  v5 = *(v96 + 64);
  MEMORY[0x28223BE20](v99);
  v7 = &v84[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B00, &qword_2146F5970);
  v100 = *(v8 - 8);
  v9 = *(v100 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v84[-v10];
  v12 = type metadata accessor for WalletCloudStoreZoneInvitationMessage();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v84[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308F70();
  v17 = v101;
  sub_2146DAA08();
  if (v17)
  {
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  v93 = v15;
  v94 = v7;
  v101 = a1;
  v19 = v99;
  v20 = v100;
  LOBYTE(v104) = 0;
  LODWORD(v92) = sub_2146DA218();
  LOBYTE(v104) = 1;
  sub_2142E27A8();
  v21 = v94;
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v102[0]) = 2;
  sub_2142E1278();
  sub_2146DA1C8();
  v91 = v104;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v102[0]) = 3;
  v23 = sub_2142E12FC();
  *(&v90 + 1) = v22;
  *&v90 = v23;
  sub_2146DA1C8();
  v89 = v104;
  LOBYTE(v102[0]) = 4;
  sub_2146DA1C8();
  v90 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v102[0]) = 5;
  sub_2142E35EC();
  sub_2146DA1C8();
  v88 = v8;
  v25 = v104;
  v108 = BYTE8(v104);
  v26 = v12;
  v27 = *(v12 + 20);
  v28 = v93;
  sub_2144DC944(v93 + v27);
  sub_2144DCAF0(&v104);
  v87 = v105;
  v86 = v106;
  v85 = v107;
  sub_2144DCC4C(v102);
  v29 = v103;
  *v28 = v92;
  v30 = (v28 + v26[6]);
  v31 = *(&v91 + 1);
  *v30 = v91;
  v30[1] = v31;
  v32 = v28 + v26[7];
  *v32 = v104;
  v33 = v86;
  *(v32 + 2) = v87;
  *(v32 + 3) = v33;
  v87 = v32;
  v32[32] = v85;
  v34 = v28 + v26[8];
  v35 = v102[1];
  *v34 = v102[0];
  *(v34 + 1) = v35;
  v86 = v34;
  v34[32] = v29;
  v36 = v28 + v26[9];
  *v36 = v25;
  v36[8] = v108;
  *(&v91 + 1) = v27;
  v37 = v28 + v27;
  v38 = v98;
  sub_213FB2E54(v37, v98, &qword_27C903F38, &unk_2146E9D40);
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v102[0]) = v38[*(v97 + 32)];
  *&v104 = 0xD00000000000002ELL;
  *(&v104 + 1) = 0x8000000214790C00;
  *&v91 = 0x8000000214790C00;
  v105 = 0xD00000000000001CLL;
  v106 = 0x800000021478A360;
  v92 = 0x800000021478A360;
  v41 = v39(v21, v102, &v104);
  v42 = v91;
  v43 = v88;
  if (v41)
  {
    v44 = v92;

    v45 = v98;
    v46 = *(v97 + 28);
    sub_213FB2DF4(&v98[v46], &qword_27C903F40, &unk_2146F1C50);
    sub_213FB2E54(v21, &v45[v46], &unk_27C9131A0, &unk_2146E9D10);
    (*(v96 + 56))(&v45[v46], 0, 1, v19);
    sub_21402EDB8(v45, v93 + *(&v91 + 1), &qword_27C903F38, &unk_2146E9D40);
    v48 = *v87;
    v47 = *(v87 + 8);
    v49 = *(v87 + 16);
    v50 = *(v87 + 24);
    v51 = *(v87 + 32);
    v102[0] = v89;
    LODWORD(v98) = v51;
    v109 = v51;
    *&v104 = 0xD000000000000039;
    *(&v104 + 1) = 0x8000000214790C30;
    v105 = 0xD00000000000001CLL;
    v106 = v44;
    v52 = v49;

    v97 = v50;
    sub_213FDC9D0(v52, v50);
    v99 = v48;
    if (v48(v102, &v109, &v104))
    {
      sub_213FDC6D0(v52, v97);
      v56 = v92;

      v57 = v87;
      v58 = *(v87 + 8);
      v59 = *(v87 + 16);
      v60 = *(v87 + 24);

      sub_213FDC6D0(v59, v60);
      *v57 = v99;
      *(v57 + 8) = v47;
      v61 = *(&v89 + 1);
      *(v57 + 16) = v89;
      *(v57 + 24) = v61;
      *(v57 + 32) = v98;
      v63 = *v86;
      v62 = *(v86 + 8);
      v65 = *(v86 + 16);
      v64 = *(v86 + 24);
      v66 = *(v86 + 32);
      v102[0] = v90;
      LODWORD(v98) = v66;
      v109 = v66;
      *&v104 = 0xD00000000000002ELL;
      *(&v104 + 1) = 0x8000000214790C70;
      v105 = 0xD00000000000001CLL;
      v106 = v56;

      sub_213FDC9D0(v65, v64);
      v99 = v63;
      if (v63(v102, &v109, &v104))
      {
        sub_213FDC6D0(v65, v64);

        sub_213FB2DF4(v94, &unk_27C9131A0, &unk_2146E9D10);
        (*(v20 + 8))(v11, v88);
        v74 = v86;
        v75 = *(v86 + 8);
        v76 = *(v86 + 16);
        v77 = *(v86 + 24);

        sub_213FDC6D0(v76, v77);
        *v74 = v99;
        *(v74 + 8) = v62;
        v78 = *(&v90 + 1);
        *(v74 + 16) = v90;
        *(v74 + 24) = v78;
        *(v74 + 32) = v98;
        sub_214328704(v93, v95, type metadata accessor for WalletCloudStoreZoneInvitationMessage);
        v18 = v101;
        return __swift_destroy_boxed_opaque_existential_1(v18);
      }

      sub_214031C4C();
      swift_allocError();
      *v79 = 0xD00000000000002ELL;
      v79[1] = 0x8000000214790C70;
      v80 = v92;
      v79[2] = 0xD00000000000001CLL;
      v79[3] = v80;
      swift_willThrow();

      sub_213FB2DF4(v94, &unk_27C9131A0, &unk_2146E9D10);
      (*(v20 + 8))(v11, v88);
      v69 = v86;
      v81 = *(v86 + 8);
      v82 = *(v86 + 16);
      v83 = *(v86 + 24);

      sub_213FDC6D0(v82, v83);
      *v69 = v99;
      *(v69 + 8) = v62;
      *(v69 + 16) = v65;
      *(v69 + 24) = v64;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v67 = 0xD000000000000039;
      v67[1] = 0x8000000214790C30;
      v68 = v92;
      v67[2] = 0xD00000000000001CLL;
      v67[3] = v68;
      swift_willThrow();

      sub_213FB2DF4(v94, &unk_27C9131A0, &unk_2146E9D10);
      (*(v20 + 8))(v11, v88);
      v69 = v87;
      v70 = *(v87 + 8);
      v71 = *(v87 + 16);
      v72 = *(v87 + 24);

      sub_213FDC6D0(v71, v72);
      *v69 = v99;
      *(v69 + 8) = v47;
      v73 = v97;
      *(v69 + 16) = v52;
      *(v69 + 24) = v73;
    }

    *(v69 + 32) = v98;
    v55 = v101;
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v53 = 0xD00000000000002ELL;
    v53[1] = v42;
    v54 = v92;
    v53[2] = 0xD00000000000001CLL;
    v53[3] = v54;
    swift_willThrow();
    sub_213FB2DF4(v21, &unk_27C9131A0, &unk_2146E9D10);
    (*(v20 + 8))(v11, v43);
    v55 = v101;
    sub_21402EDB8(v98, v93 + *(&v91 + 1), &qword_27C903F38, &unk_2146E9D40);
  }

  __swift_destroy_boxed_opaque_existential_1(v55);
  return sub_21432887C(v93, type metadata accessor for WalletCloudStoreZoneInvitationMessage);
}

uint64_t sub_2141FBAB8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B10, &qword_2146F5978);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308F70();
  sub_2146DAA28();
  v18 = *v2;
  LOBYTE(v38) = 0;
  v19 = v37;
  sub_2146DA3D8();
  if (v19)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v34 = type metadata accessor for WalletCloudStoreZoneInvitationMessage();
  v20 = *(v34 + 20);
  v37 = v2;
  v21 = v2 + v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(&v21[*(v22 + 28)], v7, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v35 + 48))(v7, 1, v36) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C903F40, &unk_2146F1C50);
  }

  else
  {
    sub_21408AC04(v7, v11, &unk_27C9131A0, &unk_2146E9D10);
    LOBYTE(v38) = 1;
    sub_2142E2910();
    sub_2146DA388();
    sub_213FB2DF4(v11, &unk_27C9131A0, &unk_2146E9D10);
    v23 = v34;
    v24 = v37;
    v25 = (v37 + *(v34 + 24));
    v26 = v25[1];
    v38 = *v25;
    v39 = v26;
    v40 = 2;
    sub_213FDCA18(v38, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v38, v39);
    v27 = v24 + v23[7];
    v28 = *(v27 + 24);
    if (v28 != 1)
    {
      v38 = *(v27 + 16);
      v39 = v28;
      v40 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v29 = v24 + v23[8];
      v30 = *(v29 + 24);
      if (v30 != 1)
      {
        v38 = *(v29 + 16);
        v39 = v30;
        v40 = 4;
        sub_2146DA388();
        v31 = v24 + v23[9];
        v32 = *v31;
        LOBYTE(v31) = *(v31 + 8);
        v38 = v32;
        LOBYTE(v39) = v31;
        v40 = 5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
        sub_2142E37F4();
        sub_2146DA388();
        return (*(v13 + 8))(v16, v12);
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141FBFCC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _DWORD *a8@<X8>)
{
  v13 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage();
  v56 = a2;
  sub_213FB2E54(a2, a8 + v13[5], &qword_27C904EC8, "</\r");
  sub_214601E1C(&v60);
  v14 = v61;
  v15 = v62;
  v16 = v63;
  sub_2146020FC(v58);
  v17 = v59;
  *a8 = a1;
  v18 = a8 + v13[6];
  *v18 = a3;
  v18[4] = BYTE4(a3) & 1;
  v19 = a8 + v13[7];
  *v19 = v60;
  *(v19 + 2) = v14;
  *(v19 + 3) = v15;
  v19[32] = v16;
  v53 = a8;
  v20 = a8 + v13[8];
  v21 = v58[1];
  *v20 = v58[0];
  *(v20 + 1) = v21;
  v20[32] = v17;
  v22 = *v19;
  v23 = *(v19 + 1);
  v25 = *(v19 + 2);
  v24 = *(v19 + 3);
  v26 = v19[32];
  v27 = a4;
  *&v58[0] = a4;
  v28 = v22;
  *(&v58[0] + 1) = a5;
  v64 = v26;
  v65 = v26;
  *&v60 = 0xD000000000000038;
  *(&v60 + 1) = 0x8000000214790CA0;
  v61 = 0xD00000000000001CLL;
  v62 = 0x800000021478A360;

  sub_213FDC9D0(v25, v24);
  v29 = v28(v58, &v65, &v60);
  if (v55)
  {

LABEL_6:
    sub_213FB2DF4(v56, &qword_27C904EC8, "</\r");
    v40 = *(v19 + 1);
    v41 = *(v19 + 2);
    v42 = *(v19 + 3);

    sub_213FDC6D0(v41, v42);
    *v19 = v28;
    *(v19 + 1) = v23;
    *(v19 + 2) = v25;
    *(v19 + 3) = v24;
    v19[32] = v64;
    return sub_21432887C(v53, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
  }

  if ((v29 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000038;
    v39[1] = 0x8000000214790CA0;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v25, v24);

  v30 = *(v19 + 1);
  v31 = *(v19 + 2);
  v32 = *(v19 + 3);

  sub_213FDC6D0(v31, v32);
  *v19 = v28;
  *(v19 + 1) = v23;
  *(v19 + 2) = v27;
  *(v19 + 3) = a5;
  v19[32] = v64;
  v33 = *v20;
  v34 = *(v20 + 1);
  v35 = *(v20 + 2);
  v36 = *(v20 + 3);
  v37 = v20[32];
  *&v58[0] = a6;
  *(&v58[0] + 1) = a7;
  v64 = v37;
  v65 = v37;
  *&v60 = 0xD00000000000003DLL;
  *(&v60 + 1) = 0x8000000214790CE0;
  v61 = 0xD00000000000001CLL;
  v62 = 0x800000021478A360;

  sub_213FDC9D0(v35, v36);
  v38 = v33(v58, &v65, &v60);
  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD00000000000003DLL;
    v48[1] = 0x8000000214790CE0;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v56, &qword_27C904EC8, "</\r");
    v49 = *(v20 + 1);
    v50 = *(v20 + 2);
    v51 = *(v20 + 3);

    sub_213FDC6D0(v50, v51);
    *v20 = v33;
    *(v20 + 1) = v34;
    *(v20 + 2) = v35;
    *(v20 + 3) = v36;
    v20[32] = v64;
    return sub_21432887C(v53, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
  }

  sub_213FDC6D0(v35, v36);

  sub_213FB2DF4(v56, &qword_27C904EC8, "</\r");
  v44 = v33;
  v45 = *(v20 + 1);
  v46 = *(v20 + 2);
  v47 = *(v20 + 3);

  result = sub_213FDC6D0(v46, v47);
  *v20 = v44;
  *(v20 + 1) = v34;
  *(v20 + 2) = a6;
  *(v20 + 3) = a7;
  v20[32] = v64;
  return result;
}

uint64_t sub_2141FC420()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x646F43726F727265;
  v4 = 0x6D6F44726F727265;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6974617469766E69;
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

uint64_t sub_2141FC4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214377258(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141FC4F8(uint64_t a1)
{
  v2 = sub_214308FC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141FC534(uint64_t a1)
{
  v2 = sub_214308FC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141FC570@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v70 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B18, &qword_2146F5980);
  v84 = *(v7 - 8);
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v70 - v9;
  v11 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_214308FC4();
  v17 = v85;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  v85 = v6;
  v82 = v14;
  v18 = v84;
  LOBYTE(v89) = 0;
  v19 = v10;
  LODWORD(v81) = sub_2146DA218();
  LOBYTE(v89) = 1;
  sub_214309018();
  v20 = v85;
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v87[0]) = 2;
  sub_2142E6128();
  sub_2146DA1C8();
  LODWORD(v80) = v89;
  LODWORD(v79) = BYTE4(v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v87[0]) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v78 = v89;
  LOBYTE(v87[0]) = 4;
  sub_2146DA1C8();
  v77 = v7;
  v76 = *(&v89 + 1);
  v73 = v89;
  v22 = v82;
  sub_213FB2E54(v20, v82 + v11[5], &qword_27C904EC8, "</\r");
  sub_214601E1C(&v89);
  v23 = v90;
  v24 = v91;
  LODWORD(v75) = v92;
  sub_2146020FC(v87);
  v25 = v88;
  *v22 = v81;
  v26 = v22 + v11[6];
  *v26 = v80;
  v26[4] = v79;
  v27 = v22 + v11[7];
  *v27 = v89;
  *(v27 + 2) = v23;
  *(v27 + 3) = v24;
  v27[32] = v75;
  v28 = v22 + v11[8];
  v29 = v87[1];
  *v28 = v87[0];
  *(v28 + 1) = v29;
  v28[32] = v25;
  v31 = *v27;
  v30 = *(v27 + 1);
  v32 = *(v27 + 2);
  v33 = *(v27 + 3);
  v34 = v27[32];
  v87[0] = v78;
  LODWORD(v80) = v34;
  v93 = v34;
  *&v89 = 0xD000000000000038;
  *(&v89 + 1) = 0x8000000214790CA0;
  v74 = 0x8000000214790CA0;
  v90 = 0xD00000000000001CLL;
  v91 = 0x800000021478A360;

  v79 = v32;
  v75 = v33;
  sub_213FDC9D0(v32, v33);
  v35 = v30;
  v81 = v31;
  v36 = v31(v87, &v93, &v89);
  v37 = v74;
  v71 = v28;
  v72 = 0x800000021478A360;
  v38 = *(&v78 + 1);
  if ((v36 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD000000000000038;
    v51[1] = v37;
    v52 = v72;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = v52;
    swift_willThrow();

    sub_213FB2DF4(v85, &qword_27C904EC8, "</\r");
    (*(v18 + 8))(v19, v77);
    v53 = *(v27 + 1);
    v54 = *(v27 + 2);
    v55 = *(v27 + 3);

    sub_213FDC6D0(v54, v55);
    v56 = v82;
    *v27 = v81;
    *(v27 + 1) = v35;
    v57 = v75;
    *(v27 + 2) = v79;
    *(v27 + 3) = v57;
    v27[32] = v80;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v86);
    return sub_21432887C(v56, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
  }

  sub_213FDC6D0(v79, v75);
  v39 = v72;

  v40 = *(v27 + 1);
  v41 = *(v27 + 2);
  v42 = *(v27 + 3);

  sub_213FDC6D0(v41, v42);
  *v27 = v81;
  *(v27 + 1) = v35;
  *(v27 + 2) = v78;
  *(v27 + 3) = v38;
  v27[32] = v80;
  v43 = v71;
  v45 = *v71;
  v44 = *(v71 + 1);
  v47 = *(v71 + 2);
  v46 = *(v71 + 3);
  v48 = v71[32];
  v49 = v76;
  *&v87[0] = v73;
  *(&v87[0] + 1) = v76;
  LODWORD(v79) = v48;
  v93 = v48;
  *&v89 = 0xD00000000000003DLL;
  *(&v89 + 1) = 0x8000000214790CE0;
  *&v78 = 0x8000000214790CE0;
  v90 = 0xD00000000000001CLL;
  v91 = v39;

  *(&v78 + 1) = v46;
  sub_213FDC9D0(v47, v46);
  v80 = v45;
  v50 = v45(v87, &v93, &v89);
  v81 = 0;
  v58 = v78;
  if ((v50 & 1) == 0)
  {
    v62 = v47;
    sub_214031C4C();
    v63 = swift_allocError();
    *v64 = 0xD00000000000003DLL;
    v64[1] = v58;
    v65 = v72;
    v64[2] = 0xD00000000000001CLL;
    v64[3] = v65;
    v81 = v63;
    swift_willThrow();

    sub_213FB2DF4(v85, &qword_27C904EC8, "</\r");
    (*(v18 + 8))(v19, v77);
    v66 = *(v43 + 1);
    v67 = *(v43 + 2);
    v68 = *(v43 + 3);

    sub_213FDC6D0(v67, v68);
    *v43 = v80;
    *(v43 + 1) = v44;
    v69 = *(&v78 + 1);
    *(v43 + 2) = v62;
    *(v43 + 3) = v69;
    v43[32] = v79;
    v56 = v82;
    goto LABEL_7;
  }

  sub_213FDC6D0(v47, *(&v78 + 1));

  sub_213FB2DF4(v85, &qword_27C904EC8, "</\r");
  (*(v18 + 8))(v19, v77);
  v59 = *(v43 + 1);
  v60 = *(v43 + 2);
  v61 = *(v43 + 3);

  sub_213FDC6D0(v60, v61);
  *v43 = v80;
  *(v43 + 1) = v44;
  *(v43 + 2) = v73;
  *(v43 + 3) = v49;
  v43[32] = v79;
  sub_214328704(v82, v83, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
  return __swift_destroy_boxed_opaque_existential_1(v86);
}

uint64_t sub_2141FCE58(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B38, &qword_2146F5988);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214308FC4();
  sub_2146DAA28();
  v11 = *v3;
  LOBYTE(v21) = 0;
  sub_2146DA3D8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage();
  v13 = v12[5];
  LOBYTE(v21) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  sub_2143090CC();
  sub_2146DA388();
  v14 = v3 + v12[6];
  v15 = *v14;
  LOBYTE(v14) = v14[4];
  LODWORD(v21) = v15;
  BYTE4(v21) = v14;
  v23 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  sub_2146DA388();
  v16 = v3 + v12[7];
  v17 = *(v16 + 3);
  if (v17 != 1)
  {
    v21 = *(v16 + 2);
    v22 = v17;
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v18 = v3 + v12[8];
    v19 = *(v18 + 3);
    if (v19 != 1)
    {
      v21 = *(v18 + 2);
      v22 = v19;
      v23 = 4;
      sub_2146DA388();
      return (*(v6 + 8))(v9, v5);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141FD188()
{
  v1 = 0x6974617469766E69;
  if (*v0 != 1)
  {
    v1 = 0x737574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_2141FD1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214377424(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141FD20C(uint64_t a1)
{
  v2 = sub_214309180();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141FD248(uint64_t a1)
{
  v2 = sub_214309180();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141FD284@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-v6];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B50, &qword_2146F5990);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24);
  v11 = &v21[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309180();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v7;
    v15 = v23;
    v16 = v24;
    v29 = 0;
    v22 = sub_2146DA218();
    v28 = 1;
    sub_214309018();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    v27 = 2;
    sub_2142E6128();
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v16);
    LODWORD(v16) = v25;
    v18 = v26;
    v19 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage();
    sub_21408AC04(v14, v15 + *(v19 + 20), &qword_27C904EC8, "</\r");
    *v15 = v22;
    v20 = v15 + *(v19 + 24);
    *v20 = v16;
    v20[4] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141FD548(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B60, &qword_2146F5998);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309180();
  sub_2146DAA28();
  v11 = *v3;
  v21 = 0;
  sub_2146DA3D8();
  if (!v2)
  {
    v12 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage();
    v13 = *(v12 + 20);
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
    sub_2143090CC();
    sub_2146DA388();
    v14 = v3 + *(v12 + 24);
    v15 = *v14;
    LOBYTE(v14) = v14[4];
    v18 = v15;
    v19 = v14;
    v17[7] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    sub_2142E62D8();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2141FD774@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11)
{
  sub_213FDCA18(a10, a11);
  sub_21467180C(&v50);
  v15 = v50;
  v14 = v51;
  v16 = v52;
  v17 = v53;
  v18 = v54;
  sub_2146719C4(&v69);
  v48 = v69;
  v80 = v70;
  v49 = v71;
  v38 = v72;
  v42 = v73;
  v43 = a1;
  v37 = BYTE4(a1) & 1;
  v69 = a2;
  v70 = a3;
  v39 = v18;
  v74[0] = v18;
  v50 = 0xD00000000000002DLL;
  v51 = 0x8000000214790D20;
  v52 = 0xD00000000000001CLL;
  v53 = 0x800000021478A360;

  v36 = v16;
  v19 = v16;
  v20 = v17;
  sub_213FDC9D0(v19, v17);
  v21 = v40;
  v41 = v15;
  v22 = v15(&v69, v74, &v50);
  if (v21)
  {

    v23 = a11;
    sub_213FDC6BC(a10, a11);

    v24 = v14;
LABEL_6:

    v29 = v36;
    sub_213FDC6D0(v36, v17);
    v25 = v42;
    v30 = a10;
    v26 = v38;
LABEL_7:
    LODWORD(v50) = v43;
    BYTE4(v50) = v37;
    *(&v50 + 5) = v78;
    HIBYTE(v50) = v79;
    v51 = v41;
    v52 = v24;
    v53 = v29;
    v54 = v20;
    v55 = v39;
    *v56 = v77[0];
    *&v56[3] = *(v77 + 3);
    v57 = a4;
    v58 = a5;
    v59 = v48;
    v60 = v80;
    v61 = v49;
    v62 = v26;
    v63 = v25;
    v64 = a8;
    v66 = v76;
    v65 = v75;
    v67 = v30;
    v68 = v23;
    return sub_21404B8A0(&v50);
  }

  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000002DLL;
    v28[1] = 0x8000000214790D20;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();

    v23 = a11;
    sub_213FDC6BC(a10, a11);

    v24 = v14;
    goto LABEL_6;
  }

  sub_213FDC6D0(v36, v17);

  v24 = v14;

  sub_213FDC6D0(v36, v17);
  v69 = a6;
  v70 = a7;
  v25 = v42;
  v74[0] = v42;
  v50 = 0xD000000000000033;
  v51 = 0x8000000214790D50;
  v52 = 0xD00000000000001CLL;
  v53 = 0x800000021478A360;

  v26 = v38;
  sub_213FDC9D0(v49, v38);
  v27 = v48(&v69, v74, &v50);
  v23 = a11;
  v30 = a10;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD000000000000033;
    v33[1] = 0x8000000214790D50;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a10, a11);

    v20 = a3;

    sub_213FDC6D0(v49, v38);
    v29 = a2;
    goto LABEL_7;
  }

  sub_213FDC6D0(v49, v38);
  sub_213FDC6BC(a10, a11);
  v32 = v80;

  result = sub_213FDC6D0(v49, v38);
  *a9 = v43;
  *(a9 + 4) = v37;
  *(a9 + 8) = v41;
  *(a9 + 16) = v14;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = v39;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = v48;
  *(a9 + 72) = v32;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = v42;
  *(a9 + 97) = a8;
  *(a9 + 104) = a10;
  *(a9 + 112) = a11;
  return result;
}

uint64_t sub_2141FDC6C()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x6552656369766564;
  v4 = 0x7374726F70707573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C646E6168;
  if (v1 != 1)
  {
    v5 = 0x44495344746C61;
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

uint64_t sub_2141FDD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214377540(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141FDD64(uint64_t a1)
{
  v2 = sub_2143091D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141FDDA0(uint64_t a1)
{
  v2 = sub_2143091D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141FDDDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B68, &qword_2146F59A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2143091D4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v110);
  }

  v75 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v76) = 0;
  sub_2142E6128();
  sub_2146DA1C8();
  v12 = v85;
  v74 = BYTE4(v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v76) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v72 = v12;
  v73 = *(&v85 + 1);
  v14 = v85;
  LOBYTE(v76) = 2;
  sub_2146DA1C8();
  v71 = v85;
  LOBYTE(v76) = 3;
  sub_2146DA1C8();
  v70 = v14;
  v15 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v76) = 4;
  sub_2142E1378();
  sub_2146DA1C8();
  v16 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v102 = 5;
  sub_2142E1278();
  sub_2146DA1C8();
  v65 = *(&v15 + 1);
  v56 = v15;
  v60 = v16;
  v59 = v103;
  v61 = v104;
  sub_213FDCA18(v103, v104);
  sub_21467180C(&v85);
  v17 = *(&v85 + 1);
  v18 = v86;
  v68 = v87;
  v69 = v85;
  v19 = v88;
  sub_2146719C4(&v76);
  v63 = v76;
  v66 = v77;
  v67 = *(&v76 + 1);
  v64 = v78;
  *&v76 = v70;
  *(&v76 + 1) = v73;
  v58 = v19;
  LOBYTE(v84[0]) = v19;
  *&v85 = 0xD00000000000002DLL;
  *(&v85 + 1) = 0x8000000214790D20;
  v86 = 0xD00000000000001CLL;
  v87 = 0x800000021478A360;

  v57 = v18;
  v20 = v18;
  v21 = v68;
  sub_213FDC9D0(v20, v68);
  v62 = v17;
  v22 = v69(&v76, v84, &v85);
  v54 = 0x8000000214790D20;
  v55 = 0x800000021478A360;
  if (v22)
  {
    v23 = v57;
    sub_213FDC6D0(v57, v21);
    v24 = v55;

    sub_213FDC6D0(v23, v21);
    v84[0] = v56;
    v84[1] = v65;
    LOBYTE(v76) = v64;
    *&v85 = 0xD000000000000033;
    *(&v85 + 1) = 0x8000000214790D50;
    v86 = 0xD00000000000001CLL;
    v87 = v24;

    sub_213FDC9D0(v66, *(&v66 + 1));
    v25 = v63(v84, &v76, &v85);
    v26 = v75;
    if (v25)
    {
      v39 = v66;
      sub_213FDC6D0(v66, *(&v66 + 1));

      v40 = v59;
      sub_213FDC6BC(v59, v61);
      (*(v26 + 8))(v9, v5);
      v41 = v67;

      sub_213FDC6D0(v39, *(&v39 + 1));
      LODWORD(v76) = v72;
      BYTE4(v76) = v74;
      *(&v76 + 5) = v108;
      BYTE7(v76) = v109;
      *(&v76 + 1) = v69;
      *&v77 = v62;
      v42 = v71;
      v43 = v73;
      *(&v77 + 1) = v70;
      *&v78 = v73;
      BYTE8(v78) = v58;
      HIDWORD(v78) = *&v107[3];
      *(&v78 + 9) = *v107;
      v44 = *(&v71 + 1);
      v79 = v71;
      *&v80 = v63;
      *(&v80 + 1) = v41;
      *&v81 = v56;
      *(&v81 + 1) = v65;
      LOBYTE(v82) = v64;
      BYTE1(v82) = v60;
      WORD3(v82) = v106;
      *(&v82 + 2) = v105;
      *(&v82 + 1) = v40;
      v45 = v61;
      v83 = v61;
      v47 = v80;
      v46 = v81;
      v48 = v82;
      *(a2 + 112) = v61;
      *(a2 + 80) = v46;
      *(a2 + 96) = v48;
      v49 = v76;
      v50 = v77;
      v51 = v78;
      *(a2 + 48) = v79;
      *(a2 + 64) = v47;
      *(a2 + 16) = v50;
      *(a2 + 32) = v51;
      *a2 = v49;
      sub_214309228(&v76, &v85);
      __swift_destroy_boxed_opaque_existential_1(v110);
      LODWORD(v85) = v72;
      BYTE4(v85) = v74;
      *(&v85 + 5) = v108;
      BYTE7(v85) = v109;
      *(&v85 + 1) = v69;
      v86 = v62;
      v87 = v70;
      v88 = v43;
      v89 = v58;
      *v90 = *v107;
      *&v90[3] = *&v107[3];
      v91 = v42;
      v92 = v44;
      v93 = v63;
      v94 = v41;
      *&v95 = v56;
      *(&v95 + 1) = v65;
      v96 = v64;
      v97 = v60;
      v99 = v106;
      v98 = v105;
      v100 = v59;
      v101 = v45;
      return sub_21404B8A0(&v85);
    }

    sub_214031C4C();
    swift_allocError();
    *v52 = 0xD000000000000033;
    v52[1] = 0x8000000214790D50;
    v53 = v55;
    v52[2] = 0xD00000000000001CLL;
    v52[3] = v53;
    swift_willThrow();

    v32 = v59;
    sub_213FDC6BC(v59, v61);
    (*(v26 + 8))(v9, v5);

    sub_213FDC6D0(v66, *(&v66 + 1));
    v35 = v70;
    v38 = v71;
    v36 = v73;
    v37 = v72;
    v33 = v61;
    v34 = v62;
  }

  else
  {
    v27 = v5;
    sub_214031C4C();
    swift_allocError();
    v29 = v54;
    v28 = v55;
    *v30 = 0xD00000000000002DLL;
    v30[1] = v29;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = v28;
    swift_willThrow();

    v31 = v75;
    v32 = v59;
    v33 = v61;
    sub_213FDC6BC(v59, v61);
    (*(v31 + 8))(v9, v27);
    v34 = v62;

    v35 = v57;
    v36 = v68;
    sub_213FDC6D0(v57, v68);
    v37 = v72;
    v38 = v71;
  }

  __swift_destroy_boxed_opaque_existential_1(v110);
  LODWORD(v85) = v37;
  BYTE4(v85) = v74;
  *(&v85 + 5) = v108;
  BYTE7(v85) = v109;
  *(&v85 + 1) = v69;
  v86 = v34;
  v87 = v35;
  v88 = v36;
  v89 = v58;
  *v90 = *v107;
  *&v90[3] = *&v107[3];
  v91 = v38;
  v92 = *(&v71 + 1);
  v93 = v63;
  v94 = v67;
  v95 = v66;
  v96 = v64;
  v97 = v60;
  v99 = v106;
  v98 = v105;
  v100 = v32;
  v101 = v33;
  return sub_21404B8A0(&v85);
}

uint64_t sub_2141FE6FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B78, &unk_2146F59A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = *(v1 + 4);
  v10 = *(v1 + 4);
  v28 = *(v1 + 3);
  v29 = v10;
  v11 = *(v1 + 6);
  v12 = *(v1 + 7);
  v13 = *(v1 + 10);
  v22 = *(v1 + 11);
  v23 = v13;
  v33 = *(v1 + 97);
  v14 = *(v1 + 14);
  v26 = *(v1 + 13);
  v27 = v11;
  v24 = v14;
  v25 = v12;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143091D4();
  sub_2146DAA28();
  LODWORD(v31) = v8;
  BYTE4(v31) = v9;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  v16 = v30;
  sub_2146DA388();
  if (v16)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = v27;
  v18 = v26;
  if (v29 != 1)
  {
    v31 = v28;
    v32 = v29;
    v34 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v31 = v17;
    v32 = v25;
    v34 = 2;
    sub_2146DA388();
    if (v22 != 1)
    {
      v31 = v23;
      v32 = v22;
      v34 = 3;
      sub_2146DA388();
      v19 = v24;
      LOBYTE(v31) = v33;
      v34 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
      sub_2142E1D30();
      sub_2146DA388();
      v31 = v18;
      v32 = v19;
      v34 = 5;
      sub_213FDCA18(v18, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
      sub_2142E1CAC();
      sub_2146DA388();
      sub_213FDC6BC(v31, v32);
      return (*(v4 + 8))(v7, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141FEAAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040F0, &qword_2146EAA40);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  v18[2] = sub_213FB7994;
  v18[3] = 0;
  v18[4] = 10;
  v18[5] = sub_21403C354;
  v18[6] = 0;
  *(v17 + 16) = sub_214309284;
  *(v17 + 24) = v18;
  *(inited + 32) = v17;
  v27 = a1;
  sub_21402D9F8(a1, a2);
  sub_21402D9F8(a3, a4);
  sub_21402D9F8(a5, a6);
  sub_214044818(inited, &v30);
  v20 = v30;
  v19 = v31;
  v21 = v32;
  v42 = a8;
  v26 = v33;
  v41 = v33;
  v30 = 0xD000000000000023;
  v31 = 0x8000000214790D90;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v22 = v20(&v42, &v41, &v30);
  if (!v28)
  {
    if (v22)
    {

      sub_213FB54FC(a5, a6);
      sub_213FB54FC(a3, a4);
      sub_213FB54FC(v27, a2);

      *a9 = v27;
      *(a9 + 8) = a2;
      *(a9 + 16) = a3;
      *(a9 + 24) = a4;
      *(a9 + 32) = a5;
      *(a9 + 40) = a6;
      *(a9 + 48) = a7;
      *(a9 + 56) = v20;
      *(a9 + 64) = v19;
      *(a9 + 72) = a8;
      *(a9 + 80) = v26;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000023;
    v24[1] = 0x8000000214790D90;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB54FC(a5, a6);
  sub_213FB54FC(a3, a4);
  sub_213FB54FC(v27, a2);

  v30 = v27;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = v20;
  v38 = v19;
  v39 = v21;
  v40 = v26;
  return sub_2143092A4(&v30);
}

uint64_t sub_2141FEDE8()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x727574616E676973;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74736566696E616DLL;
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

uint64_t sub_2141FEEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437774C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141FEED0(uint64_t a1)
{
  v2 = sub_2143092F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141FEF0C(uint64_t a1)
{
  v2 = sub_2143092F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141FEF48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B80, &qword_2146F59B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143092F8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v62 = a2;
  LOBYTE(v63) = 0;
  sub_21406116C();
  sub_2146DA1C8();
  v12 = v69;
  v11 = v70;
  LOBYTE(v63) = 1;
  sub_2146DA1C8();
  v60 = v12;
  v61 = v11;
  v14 = v69;
  v13 = v70;
  LOBYTE(v63) = 2;
  sub_2146DA1C8();
  v58 = v14;
  v59 = v13;
  v16 = v69;
  v17 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
  LOBYTE(v63) = 3;
  sub_2142FFE4C(&qword_27C908A50);
  sub_2146DA1C8();
  v57 = v16;
  v56 = v17;
  v18 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B90, &qword_2146F59C0);
  v81 = 4;
  sub_21430934C();
  sub_2146DA1C8();
  v19 = v59;
  v20 = v60;
  v53 = v18;
  v55 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v21 = v20;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040F0, &qword_2146EAA40);
  v23 = v19;
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  v25[2] = sub_213FB7994;
  v25[3] = 0;
  v25[4] = 10;
  v25[5] = sub_21403C354;
  v25[6] = 0;
  *(v24 + 16) = sub_21438F51C;
  *(v24 + 24) = v25;
  *(inited + 32) = v24;
  sub_21402D9F8(v21, v61);
  sub_21402D9F8(v58, v23);
  sub_21402D9F8(v57, v56);
  sub_214044818(inited, &v69);
  v27 = v69;
  v26 = v70;
  v28 = v71;
  v80 = v55;
  v50 = v72;
  LOBYTE(v63) = v72;
  v69 = 0xD000000000000023;
  v70 = 0x8000000214790D90;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478A360;
  v54 = v28;

  v51 = v26;
  v52 = v27;
  v29 = v27(&v80, &v63, &v69);
  v30 = v56;
  if (v29)
  {

    sub_213FB54FC(v57, v30);
    v31 = v58;
    sub_213FB54FC(v58, v59);
    v32 = v60;
    v33 = v61;
    sub_213FB54FC(v60, v61);
    (*(v6 + 8))(v9, v5);

    v34 = v51;

    *&v63 = v32;
    *(&v63 + 1) = v33;
    v64 = __PAIR128__(v59, v31);
    v35 = v59;
    *&v65 = v57;
    *(&v65 + 1) = v30;
    v36 = v53;
    *&v66 = v53;
    v37 = v52;
    *(&v66 + 1) = v52;
    v38 = v55;
    *&v67 = v34;
    *(&v67 + 1) = v55;
    LOBYTE(v32) = v50;
    v68 = v50;
    v39 = v62;
    *(v62 + 80) = v50;
    v40 = v66;
    v39[2] = v65;
    v39[3] = v40;
    v39[4] = v67;
    v41 = v64;
    *v39 = v63;
    v39[1] = v41;
    sub_21430942C(&v63, &v69);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v69 = v60;
    v70 = v61;
    v71 = v58;
    v72 = v35;
    v73 = v57;
    v74 = v30;
    v75 = v36;
    v76 = v37;
    v77 = v34;
    v78 = v38;
    v79 = v32;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000023;
    v42[1] = 0x8000000214790D90;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB54FC(v57, v30);
    v43 = v60;
    v44 = v58;
    v45 = v59;
    sub_213FB54FC(v58, v59);
    v46 = v61;
    sub_213FB54FC(v43, v61);
    (*(v6 + 8))(v9, v5);
    v47 = v54;

    v48 = v51;

    __swift_destroy_boxed_opaque_existential_1(a1);
    v69 = v43;
    v70 = v46;
    v71 = v44;
    v72 = v45;
    v73 = v57;
    v74 = v56;
    v75 = v53;
    v76 = v52;
    v77 = v48;
    v78 = v47;
    v79 = v50;
  }

  return sub_2143092A4(&v69);
}

uint64_t sub_2141FF7F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909BA8, &qword_2146F59C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v26 = v1[3];
  v27 = v10;
  v11 = v1[4];
  v24 = v1[5];
  v25 = v11;
  v12 = v1[6];
  v22 = v1[9];
  v23 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143092F8();
  sub_2146DAA28();
  v29 = v8;
  v30 = v9;
  v31 = 0;
  v14 = v8;
  v15 = v3;
  sub_21402D9F8(v14, v9);
  sub_214061684();
  v16 = v28;
  sub_2146DA388();
  if (v16)
  {
    sub_213FB54FC(v29, v30);
    return (*(v4 + 8))(v7, v15);
  }

  v18 = v24;
  v17 = v25;
  v19 = v23;
  sub_213FB54FC(v29, v30);
  v29 = v27;
  v30 = v26;
  v31 = 1;
  sub_21402D9F8(v27, v26);
  sub_2146DA388();
  sub_213FB54FC(v29, v30);
  v29 = v17;
  v30 = v18;
  v31 = 2;
  sub_21402D9F8(v17, v18);
  sub_2146DA388();
  sub_213FB54FC(v29, v30);
  v29 = v19;
  v31 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
  sub_2142FFE4C(&qword_27C908A60);
  sub_2146DA388();
  if (v22)
  {
    v29 = v22;
    v31 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909B90, &qword_2146F59C0);
    sub_214309488();
    sub_2146DA388();
    return (*(v4 + 8))(v7, v15);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141FFB68@<X0>(int a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  LOBYTE(v36) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 256;
  *(v10 + 24) = v36;
  *(v9 + 16) = sub_214309568;
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  sub_214042B80(inited, &v36);
  v12 = v36;
  v11 = v37;
  v13 = v39;
  v26 = v38;
  v14 = v40;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v16 + 16) = sub_21438F460;
  *(v16 + 24) = v17;
  *(v15 + 32) = v16;
  sub_214042CD0(v15, &v49);
  v29 = v50;
  v33 = v51;
  v34 = v49;
  v32 = v52;
  v56 = v53;
  v49 = a2;
  v50 = a3;
  v48 = v14;
  v36 = 0xD000000000000030;
  v37 = 0x8000000214790DC0;
  v38 = 0xD00000000000001CLL;
  v39 = 0x800000021478A360;

  v18 = v12(&v49, &v48, &v36);
  if (v27)
  {
    sub_213FB54FC(a4, a5);
  }

  else
  {
    v28 = a3;
    if (v18)
    {

      v36 = v34;
      v37 = v29;
      v38 = v33;
      v39 = v32;
      LOBYTE(v40) = v56;

      sub_213FDCA18(v33, v32);
      sub_214032024(a4, a5, 2, 0xD000000000000034, 0x8000000214790E00, 0xD00000000000001CLL, 0x800000021478A360);
      sub_213FB54FC(a4, a5);

      v19 = v37;
      v35 = v36;
      v20 = v38;
      v21 = v39;
      v22 = v40;

      result = sub_213FDC6BC(v33, v32);
      *a6 = v55;
      *(a6 + 8) = v12;
      *(a6 + 16) = v11;
      *(a6 + 24) = a2;
      *(a6 + 32) = v28;
      *(a6 + 40) = v14;
      *(a6 + 48) = v35;
      *(a6 + 56) = v19;
      *(a6 + 64) = v20;
      *(a6 + 72) = v21;
      *(a6 + 80) = v22;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000030;
    v24[1] = 0x8000000214790DC0;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB54FC(a4, a5);
  }

  LODWORD(v36) = v55;
  v37 = v12;
  v38 = v11;
  v39 = v26;
  v40 = v13;
  v41 = v14;
  *v42 = v54[0];
  *&v42[3] = *(v54 + 3);
  v43 = v34;
  v44 = v29;
  v45 = v33;
  v46 = v32;
  v47 = v56;
  return sub_21404B84C(&v36);
}

uint64_t sub_2141FFFA8()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_214200008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214377920(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214200030(uint64_t a1)
{
  v2 = sub_214309580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21420006C(uint64_t a1)
{
  v2 = sub_214309580();

  return MEMORY[0x2821FE720](a1, v2);
}