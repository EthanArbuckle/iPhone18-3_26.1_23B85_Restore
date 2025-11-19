uint64_t sub_2140FA2F0(uint64_t a1)
{
  v2 = sub_2142E97D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FA32C(uint64_t a1)
{
  v2 = sub_2142E97D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FA368@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906030, &qword_2146F4190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E97D4();
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
  v34 = 0x800000021478D6F0;
  v28 = 0x800000021478D6F0;
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

uint64_t sub_2140FA740@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_214543678(&v30);
  v9 = v30;
  v8 = v31;
  v10 = v32;
  v11 = v33;
  *v41 = *v35;
  *&v41[3] = *&v35[3];
  v25 = v37;
  v26 = v36;
  v20 = v38;
  v21 = v39;
  v27 = v40;
  v28 = a1;
  v29 = a2;
  v22 = v34;
  v42 = v34;
  v30 = 0xD000000000000020;
  v31 = 0x800000021478D720;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v23 = v9;
  v12 = v9(&v28, &v42, &v30);
  if (v5)
  {

LABEL_6:
    v13 = v21;
LABEL_7:

    v30 = v23;
    v31 = v8;
    v32 = v10;
    v33 = v11;
    v34 = v22;
    *v35 = *v41;
    *&v35[3] = *&v41[3];
    v36 = v26;
    v37 = v25;
    v38 = v20;
    v39 = v13;
    v40 = v27;
    return sub_2142E9828(&v30);
  }

  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD000000000000020;
    v15[1] = 0x800000021478D720;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v28 = a3;
  v29 = a4;
  v42 = v27;
  v30 = 0xD000000000000019;
  v31 = 0x800000021478D750;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;
  v13 = v21;

  v14 = v26(&v28, &v42, &v30);
  if ((v14 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v17 = 0xD000000000000019;
    v17[1] = 0x800000021478D750;
    v17[2] = 0xD00000000000001CLL;
    v17[3] = 0x800000021478A360;
    swift_willThrow();

    v11 = a2;
    v10 = a1;
    goto LABEL_7;
  }

  result = swift_bridgeObjectRelease_n();
  *a5 = v23;
  *(a5 + 8) = v8;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = v22;
  *(a5 + 33) = *v41;
  *(a5 + 36) = *&v41[3];
  *(a5 + 40) = v26;
  *(a5 + 48) = v25;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v27;
  return result;
}

uint64_t sub_2140FAAD0(uint64_t a1)
{
  v2 = sub_2142E987C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FAB0C(uint64_t a1)
{
  v2 = sub_2142E987C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FAB48@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906048, &qword_2146F41A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E987C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v56) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v50 = a2;
  v14 = v11;
  v67 = 1;
  v38 = sub_2146DA168();
  v45 = v16;
  v69 = v14;
  sub_214543678(&v56);
  v18 = v56;
  v17 = v57;
  v19 = v59;
  v39 = v58;
  v68[0] = *v61;
  *(v68 + 3) = *&v61[3];
  v46 = v62;
  v49 = v63;
  v40 = v64;
  v48 = v65;
  v47 = v66;
  *&v51 = v69;
  v42 = v13;
  *(&v51 + 1) = v13;
  v43 = v60;
  LOBYTE(v55[0]) = v60;
  v56 = 0xD000000000000020;
  v57 = 0x800000021478D720;
  v58 = 0xD00000000000001CLL;
  v59 = 0x800000021478A360;
  v41 = v19;

  v44 = v18;
  v20 = v18(&v51, v55, &v56);
  v21 = v41;
  v37 = v17;
  if (v20)
  {
    v39 = 0;

    v55[0] = v38;
    v55[1] = v45;
    LOBYTE(v51) = v47;
    v56 = 0xD000000000000019;
    v57 = 0x800000021478D750;
    v58 = 0xD00000000000001CLL;
    v59 = 0x800000021478A360;

    v22 = v39;
    v23 = v46(v55, &v51, &v56);
    if (v22)
    {

      v21 = v42;
    }

    else
    {
      v21 = v42;
      if (v23)
      {

        (*(v6 + 8))(v9, v5);

        v26 = v49;

        v27 = v44;
        *&v51 = v44;
        v28 = v37;
        *(&v51 + 1) = v37;
        *&v52 = v69;
        *(&v52 + 1) = v21;
        v29 = v43;
        LOBYTE(v53) = v43;
        *(&v53 + 1) = v68[0];
        DWORD1(v53) = *(v68 + 3);
        v30 = v46;
        *(&v53 + 1) = v46;
        *v54 = v26;
        *&v54[8] = v38;
        *&v54[16] = v45;
        v31 = v47;
        v54[24] = v47;
        v32 = v51;
        v33 = v50;
        *(v50 + 57) = *&v54[9];
        v34 = v52;
        v35 = *v54;
        v33[2] = v53;
        v33[3] = v35;
        *v33 = v32;
        v33[1] = v34;
        sub_2142E98D0(&v51, &v56);
        __swift_destroy_boxed_opaque_existential_1(a1);
        v56 = v27;
        v57 = v28;
        v58 = v69;
        v59 = v21;
        v60 = v29;
        *v61 = v68[0];
        *&v61[3] = *(v68 + 3);
        v62 = v30;
        v63 = v26;
        v64 = v38;
        v65 = v45;
        v66 = v31;
        return sub_2142E9828(&v56);
      }

      sub_214031C4C();
      swift_allocError();
      *v36 = 0xD000000000000019;
      v36[1] = 0x800000021478D750;
      v36[2] = 0xD00000000000001CLL;
      v36[3] = 0x800000021478A360;
      swift_willThrow();
    }

    v25 = v37;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000020;
    v24[1] = 0x800000021478D720;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();

    v25 = v37;
    v69 = v39;
  }

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
  v56 = v44;
  v57 = v25;
  v58 = v69;
  v59 = v21;
  v60 = v43;
  *v61 = v68[0];
  *&v61[3] = *(v68 + 3);
  v62 = v46;
  v63 = v49;
  v64 = v40;
  v65 = v48;
  v66 = v47;
  return sub_2142E9828(&v56);
}

uint64_t sub_2140FB28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  v17 = 0x800000021478D770;
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
    v13[1] = 0x800000021478D770;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2140FB488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562)
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

uint64_t sub_2140FB514(uint64_t a1)
{
  v2 = sub_2142E992C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FB550(uint64_t a1)
{
  v2 = sub_2142E992C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FB58C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906060, &qword_2146F41B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E992C();
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
  v34 = 0x800000021478D770;
  v28 = 0x800000021478D770;
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

uint64_t sub_2140FB980(uint64_t a1)
{
  v2 = sub_2142E9980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FB9BC(uint64_t a1)
{
  v2 = sub_2142E9980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FB9F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906078, &qword_2146F41C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9980();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2142E99D4();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140FBB64(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906090, &qword_2146F41C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9980();
  sub_2146DAA28();
  v12 = v8;
  sub_2142E9A28();
  sub_2146DA388();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2140FBCE0@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  sub_214680E74(&v48);
  v13 = v48;
  v12 = v49;
  v14 = v51;
  v33 = v50;
  v66[0] = *v53;
  *(v66 + 3) = *&v53[3];
  v43 = v56;
  v44 = v54;
  v41 = v55;
  v42 = v57;
  v68 = v58;
  v65[0] = *v59;
  *(v65 + 3) = *&v59[3];
  v37 = v61;
  v38 = v60;
  v39 = v63;
  v40 = v62;
  v35 = v64;
  v46 = a1;
  v47 = a2;
  v67 = v52;
  v45 = v52;
  v48 = 0xD000000000000021;
  v49 = 0x800000021478D7A0;
  v50 = 0xD00000000000001CLL;
  v51 = 0x800000021478A360;

  v36 = v13;
  v15 = v13(&v46, &v45, &v48);
  if (v8)
  {

    v16 = v38;
LABEL_6:
    v17 = v12;
    v18 = v42;

    a1 = v33;
    v21 = v35;
    v22 = v37;
    v23 = v43;
LABEL_7:
    v48 = v36;
    v49 = v17;
    v50 = a1;
    v51 = v14;
    v52 = v67;
    *v53 = v66[0];
    *&v53[3] = *(v66 + 3);
    v54 = v44;
    v55 = v41;
    v56 = v23;
    v57 = v18;
    v58 = v68;
    *v59 = v65[0];
    *&v59[3] = *(v65 + 3);
    v60 = v16;
    v61 = v22;
    v62 = v40;
    v63 = v39;
    v64 = v21;
    return sub_2142E9A7C(&v48);
  }

  v28 = a2;
  v29 = a6;
  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000021;
    v20[1] = 0x800000021478D7A0;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();

    v16 = v38;
    goto LABEL_6;
  }

  v17 = v12;

  v46 = a3;
  v47 = a4;
  v18 = a4;
  v45 = v68;
  v48 = 0xD000000000000021;
  v49 = 0x800000021478D7D0;
  v50 = 0xD00000000000001CLL;
  v51 = 0x800000021478A360;

  sub_213FDC9D0(v43, v42);
  v19 = v44(&v46, &v45, &v48);
  v21 = v35;
  if ((v19 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000021;
    v26[1] = 0x800000021478D7D0;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();

    v22 = v37;
    v16 = v38;

    v18 = v42;
    v23 = v43;
    sub_213FDC6D0(v43, v42);
    v14 = v28;
    goto LABEL_7;
  }

  sub_213FDC6D0(v43, v42);

  sub_213FDC6D0(v43, v42);
  v46 = a5;
  v47 = v29;
  v45 = v35;
  v48 = 0xD00000000000001DLL;
  v49 = 0x800000021478D800;
  v50 = 0xD00000000000001CLL;
  v51 = 0x800000021478A360;
  v22 = v37;

  sub_213FDC9D0(v40, v39);
  v25 = v38(&v46, &v45, &v48);
  v16 = v38;
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD00000000000001DLL;
    v27[1] = 0x800000021478D800;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = v12;

    sub_213FDC6D0(v40, v39);
    v14 = v28;
    v23 = a3;
    goto LABEL_7;
  }

  sub_213FDC6D0(v40, v39);

  result = sub_213FDC6D0(v40, v39);
  *a7 = v36;
  *(a7 + 8) = v12;
  *(a7 + 16) = a1;
  *(a7 + 24) = v28;
  *(a7 + 32) = v67;
  *(a7 + 33) = v66[0];
  *(a7 + 36) = *(v66 + 3);
  *(a7 + 40) = v44;
  *(a7 + 48) = v41;
  *(a7 + 56) = a3;
  *(a7 + 64) = a4;
  *(a7 + 72) = v68;
  *(a7 + 73) = v65[0];
  *(a7 + 76) = *(v65 + 3);
  *(a7 + 80) = v38;
  *(a7 + 88) = v37;
  *(a7 + 96) = a5;
  *(a7 + 104) = v29;
  *(a7 + 112) = v35;
  return result;
}

uint64_t sub_2140FC298()
{
  v1 = 0x6B6361626C6C6166;
  if (*v0 != 1)
  {
    v1 = 0x7463656A627573;
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

uint64_t sub_2140FC304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436177C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140FC32C(uint64_t a1)
{
  v2 = sub_2142E9AD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FC368(uint64_t a1)
{
  v2 = sub_2142E9AD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FC3A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9060A0, &qword_2146F41D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v104 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142E9AD0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v104);
  }

  v72 = v6;
  LOBYTE(v82) = 0;
  *&v71 = sub_2146DA168();
  *(&v71 + 1) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v73) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v13 = v82;
  v70 = v83;
  v99 = 2;
  sub_2146DA1C8();
  v53 = v13;
  v52 = v100;
  v58 = v101;
  sub_214680E74(&v82);
  v16 = v82;
  v15 = v83;
  v17 = v85;
  v54 = v84;
  v103[0] = *v87;
  *(v103 + 3) = *&v87[3];
  v69 = v89;
  v65 = v91;
  v66 = v88;
  v68 = v92;
  v102[0] = *v93;
  *(v102 + 3) = *&v93[3];
  v63 = v95;
  v64 = v90;
  v59 = v94;
  v60 = v96;
  v61 = v97;
  v62 = v98;
  v73 = v71;
  v57 = v86;
  LOBYTE(v81[0]) = v86;
  v82 = 0xD000000000000021;
  v83 = 0x800000021478D7A0;
  v84 = 0xD00000000000001CLL;
  v85 = 0x800000021478A360;
  v55 = v17;

  v67 = v15;
  v56 = v16;
  v18 = v16(&v73, v81, &v82);
  v19 = v70;
  if (v18)
  {

    *&v73 = v53;
    *(&v73 + 1) = v19;
    LOBYTE(v81[0]) = v68;
    v82 = 0xD000000000000021;
    v83 = 0x800000021478D7D0;
    v84 = 0xD00000000000001CLL;
    v85 = 0x800000021478A360;

    sub_213FDC9D0(v64, v65);
    v20 = v66(&v73, v81, &v82);
    v55 = 0x800000021478A360;
    v29 = v62;
    if (v20)
    {
      v31 = v64;
      v30 = v65;
      v54 = 0;
      sub_213FDC6D0(v64, v65);
      v32 = v55;

      sub_213FDC6D0(v31, v30);
      v81[0] = v52;
      v81[1] = v58;
      LOBYTE(v73) = v29;
      v82 = 0xD00000000000001DLL;
      v83 = 0x800000021478D800;
      v84 = 0xD00000000000001CLL;
      v85 = v32;

      sub_213FDC9D0(v60, v61);
      v33 = v54;
      v34 = v59(v81, &v73, &v82);
      if (v33)
      {

        v27 = v53;
      }

      else
      {
        v27 = v53;
        if (v34)
        {
          v38 = v60;
          v37 = v61;
          sub_213FDC6D0(v60, v61);

          (*(v72 + 8))(v9, v5);
          v39 = v63;

          sub_213FDC6D0(v38, v37);
          v40 = v66;
          *&v73 = v56;
          *(&v73 + 1) = v67;
          v41 = *(&v71 + 1);
          v74 = v71;
          LOBYTE(v75) = v57;
          *(&v75 + 1) = v103[0];
          DWORD1(v75) = *(v103 + 3);
          *(&v75 + 1) = v66;
          *&v76 = v69;
          *(&v76 + 1) = v27;
          *&v77 = v70;
          BYTE8(v77) = v68;
          *(&v77 + 9) = v102[0];
          HIDWORD(v77) = *(v102 + 3);
          v42 = v59;
          *&v78 = v59;
          *(&v78 + 1) = v39;
          *&v79 = v52;
          *(&v79 + 1) = v58;
          LOBYTE(v39) = v62;
          v80 = v62;
          v43 = v77;
          v44 = v78;
          v45 = v79;
          *(a2 + 112) = v62;
          *(a2 + 80) = v44;
          *(a2 + 96) = v45;
          v46 = v73;
          v47 = v74;
          v48 = v75;
          *(a2 + 48) = v76;
          *(a2 + 64) = v43;
          *(a2 + 16) = v47;
          *(a2 + 32) = v48;
          *a2 = v46;
          sub_2142E9B24(&v73, &v82);
          __swift_destroy_boxed_opaque_existential_1(v104);
          v82 = v56;
          v83 = v67;
          v84 = v71;
          v85 = v41;
          v86 = v57;
          *v87 = v103[0];
          *&v87[3] = *(v103 + 3);
          v88 = v40;
          v89 = v69;
          v90 = v27;
          v91 = v70;
          v92 = v68;
          *v93 = v102[0];
          *&v93[3] = *(v102 + 3);
          v94 = v42;
          v95 = v63;
          v96 = v52;
          v97 = v58;
          v98 = v39;
          return sub_2142E9A7C(&v82);
        }

        sub_214031C4C();
        swift_allocError();
        *v49 = 0xD00000000000001DLL;
        v49[1] = 0x800000021478D800;
        v50 = v55;
        v49[2] = 0xD00000000000001CLL;
        v49[3] = v50;
        swift_willThrow();
      }

      (*(v72 + 8))(v9, v5);

      sub_213FDC6D0(v60, v61);
      v22 = *(&v71 + 1);
      v24 = v71;
      v28 = v70;
      v23 = v67;
      v25 = v62;
      v26 = v59;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v35 = 0xD000000000000021;
      v35[1] = 0x800000021478D7D0;
      v36 = v55;
      v35[2] = 0xD00000000000001CLL;
      v35[3] = v36;
      swift_willThrow();

      v26 = v59;
      (*(v72 + 8))(v9, v5);

      v27 = v64;
      v28 = v65;
      sub_213FDC6D0(v64, v65);
      v22 = *(&v71 + 1);
      v24 = v71;
      v23 = v67;
      v25 = v62;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000021;
    v21[1] = 0x800000021478D7A0;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

    v22 = v55;

    (*(v72 + 8))(v9, v5);

    v23 = v67;

    v24 = v54;
    v25 = v62;
    v26 = v59;
    v27 = v64;
    v28 = v65;
  }

  __swift_destroy_boxed_opaque_existential_1(v104);
  v82 = v56;
  v83 = v23;
  v84 = v24;
  v85 = v22;
  v86 = v57;
  *v87 = v103[0];
  *&v87[3] = *(v103 + 3);
  v88 = v66;
  v89 = v69;
  v90 = v27;
  v91 = v28;
  v92 = v68;
  *v93 = v102[0];
  *&v93[3] = *(v102 + 3);
  v94 = v26;
  v95 = v63;
  v96 = v60;
  v97 = v61;
  v98 = v25;
  return sub_2142E9A7C(&v82);
}

uint64_t sub_2140FCC84(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9060B0, &qword_2146F41D8);
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[7];
  v17 = v1[8];
  v18 = v10;
  v11 = v1[12];
  v15 = v1[13];
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9AD0();
  sub_2146DAA28();
  if (!v8)
  {
    goto LABEL_7;
  }

  LOBYTE(v20) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v19 + 8))(v7, v4);
  }

  if (v17 == 1 || (v20 = v18, v21 = v17, v22 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v15 == 1))
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v20 = v16;
    v21 = v15;
    v22 = 2;
    sub_2146DA388();
    return (*(v19 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_2140FCF38@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_214620F9C(&v34);
  v10 = v34;
  v9 = v35;
  v11 = v37;
  v23 = v36;
  *v45 = *v39;
  *&v45[3] = *&v39[3];
  v27 = v40;
  v28 = v41;
  v30 = v42;
  v31 = v43;
  v24 = v44;
  v32 = a1;
  v33 = a2;
  v26 = v38;
  v46 = v38;
  v34 = 0xD00000000000001ELL;
  v35 = 0x800000021478D820;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  v29 = v9;
  v25 = v10;
  v12 = v10(&v32, &v46, &v34);
  if (v5)
  {

LABEL_6:

    v15 = v27;
    v17 = v29;

    a1 = v23;
    v13 = v24;
LABEL_7:
    v34 = v25;
    v35 = v17;
    v36 = a1;
    v37 = v11;
    v38 = v26;
    *v39 = *v45;
    *&v39[3] = *&v45[3];
    v40 = v15;
    v41 = v28;
    v42 = v30;
    v43 = v31;
    v44 = v13;
    return sub_2142E9B80(&v34);
  }

  v20 = a2;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD00000000000001ELL;
    v16[1] = 0x800000021478D820;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v32 = a3;
  v33 = a4;
  v13 = v24;
  v46 = v24;
  v34 = 0xD00000000000001ELL;
  v35 = 0x800000021478D840;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  sub_213FDC9D0(v30, v31);
  v14 = v27(&v32, &v46, &v34);
  v15 = v27;
  if ((v14 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD00000000000001ELL;
    v19[1] = 0x800000021478D840;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = v29;

    sub_213FDC6D0(v30, v31);
    v11 = v20;
    goto LABEL_7;
  }

  sub_213FDC6D0(v30, v31);

  result = sub_213FDC6D0(v30, v31);
  *a5 = v10;
  *(a5 + 8) = v29;
  *(a5 + 16) = a1;
  *(a5 + 24) = v20;
  *(a5 + 32) = v26;
  *(a5 + 33) = *v45;
  *(a5 + 36) = *&v45[3];
  *(a5 + 40) = v27;
  *(a5 + 48) = v28;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v24;
  return result;
}

uint64_t sub_2140FD2D4(uint64_t a1)
{
  v2 = sub_2142E9BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FD310(uint64_t a1)
{
  v2 = sub_2142E9BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FD34C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9060B8, &qword_2146F41E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9BD4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v62) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v72[7] = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v45 = v73;
  v51 = v74;
  sub_214620F9C(&v62);
  v16 = v63;
  v76 = v62;
  v17 = v65;
  v46 = v64;
  *v75 = *v67;
  *&v75[3] = *&v67[3];
  v50 = v68;
  v54 = v69;
  v55 = v70;
  v56 = v71;
  v52 = v72[0];
  v44 = v14;
  *&v57 = v14;
  *(&v57 + 1) = v13;
  v49 = v66;
  LOBYTE(v61[0]) = v66;
  v62 = 0xD00000000000001ELL;
  v63 = 0x800000021478D820;
  v47 = 0x800000021478D820;
  v64 = 0xD00000000000001CLL;
  v65 = 0x800000021478A360;
  v48 = v17;

  v53 = v16;
  v18 = v76(&v57, v61, &v62);
  v19 = v47;
  v43 = 0x800000021478A360;
  v42 = v13;
  if (v18)
  {
    v20 = v43;

    v61[0] = v45;
    v61[1] = v51;
    LOBYTE(v57) = v52;
    v62 = 0xD00000000000001ELL;
    v63 = 0x800000021478D840;
    v64 = 0xD00000000000001CLL;
    v65 = v20;

    sub_213FDC9D0(v55, v56);
    v21 = v50;
    v22 = v50(v61, &v57, &v62);
    v23 = v21;
    if (v22)
    {
      sub_213FDC6D0(v55, v56);

      (*(v6 + 8))(v9, v5);
      v30 = v54;

      sub_213FDC6D0(v55, v56);
      v31 = v76;
      *&v57 = v76;
      *(&v57 + 1) = v53;
      *&v58 = v44;
      v32 = v42;
      *(&v58 + 1) = v42;
      v33 = v49;
      LOBYTE(v59) = v49;
      *(&v59 + 1) = *v75;
      DWORD1(v59) = *&v75[3];
      *(&v59 + 1) = v21;
      *v60 = v30;
      v34 = v51;
      *&v60[8] = v45;
      *&v60[16] = v51;
      v35 = v52;
      v60[24] = v52;
      v36 = v57;
      v37 = v58;
      *(a2 + 57) = *&v60[9];
      v38 = *v60;
      a2[2] = v59;
      a2[3] = v38;
      *a2 = v36;
      a2[1] = v37;
      sub_2142E9C28(&v57, &v62);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v62 = v31;
      v63 = v53;
      v64 = v44;
      v65 = v32;
      v66 = v33;
      *v67 = *v75;
      *&v67[3] = *&v75[3];
      v68 = v50;
      v69 = v30;
      v70 = v45;
      v71 = v34;
      v72[0] = v35;
      return sub_2142E9B80(&v62);
    }

    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD00000000000001ELL;
    v39[1] = 0x800000021478D840;
    v40 = v43;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = v40;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);

    sub_213FDC6D0(v55, v56);
    v26 = v42;
    v27 = v53;
    v28 = &v70;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD00000000000001ELL;
    v24[1] = v19;
    v25 = v43;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = v25;
    swift_willThrow();

    v23 = v50;
    v26 = v48;
    (*(v6 + 8))(v9, v5);

    v27 = v53;

    v28 = v72;
  }

  v29 = *(v28 - 32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v62 = v76;
  v63 = v27;
  v64 = v29;
  v65 = v26;
  v66 = v49;
  *v67 = *v75;
  *&v67[3] = *&v75[3];
  v68 = v23;
  v69 = v54;
  v70 = v55;
  v71 = v56;
  v72[0] = v52;
  return sub_2142E9B80(&v62);
}

uint64_t sub_2140FDAFC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2146D6C10(&v34);
  v10 = v34;
  v9 = v35;
  v11 = v37;
  v23 = v36;
  *v45 = *v39;
  *&v45[3] = *&v39[3];
  v27 = v40;
  v28 = v41;
  v30 = v42;
  v31 = v43;
  v24 = v44;
  v32 = a1;
  v33 = a2;
  v26 = v38;
  v46 = v38;
  v34 = 0xD00000000000001ELL;
  v35 = 0x800000021478D860;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  v29 = v9;
  v25 = v10;
  v12 = v10(&v32, &v46, &v34);
  if (v5)
  {

LABEL_6:

    v15 = v27;
    v17 = v29;

    a1 = v23;
    v13 = v24;
LABEL_7:
    v34 = v25;
    v35 = v17;
    v36 = a1;
    v37 = v11;
    v38 = v26;
    *v39 = *v45;
    *&v39[3] = *&v45[3];
    v40 = v15;
    v41 = v28;
    v42 = v30;
    v43 = v31;
    v44 = v13;
    return sub_2142E9C84(&v34);
  }

  v20 = a2;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD00000000000001ELL;
    v16[1] = 0x800000021478D860;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v32 = a3;
  v33 = a4;
  v13 = v24;
  v46 = v24;
  v34 = 0xD00000000000001ELL;
  v35 = 0x800000021478D880;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  sub_213FDC9D0(v30, v31);
  v14 = v27(&v32, &v46, &v34);
  v15 = v27;
  if ((v14 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD00000000000001ELL;
    v19[1] = 0x800000021478D880;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = v29;

    sub_213FDC6D0(v30, v31);
    v11 = v20;
    goto LABEL_7;
  }

  sub_213FDC6D0(v30, v31);

  result = sub_213FDC6D0(v30, v31);
  *a5 = v10;
  *(a5 + 8) = v29;
  *(a5 + 16) = a1;
  *(a5 + 24) = v20;
  *(a5 + 32) = v26;
  *(a5 + 33) = *v45;
  *(a5 + 36) = *&v45[3];
  *(a5 + 40) = v27;
  *(a5 + 48) = v28;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v24;
  return result;
}

uint64_t sub_2140FDE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEB000000006C7255)
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

uint64_t sub_2140FDF7C(uint64_t a1)
{
  v2 = sub_2142E9CD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FDFB8(uint64_t a1)
{
  v2 = sub_2142E9CD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FDFF4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9060D0, &qword_2146F41F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9CD8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v62) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v72[7] = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v45 = v73;
  v51 = v74;
  sub_2146D6C10(&v62);
  v16 = v63;
  v76 = v62;
  v17 = v65;
  v46 = v64;
  *v75 = *v67;
  *&v75[3] = *&v67[3];
  v50 = v68;
  v54 = v69;
  v55 = v70;
  v56 = v71;
  v52 = v72[0];
  v44 = v14;
  *&v57 = v14;
  *(&v57 + 1) = v13;
  v49 = v66;
  LOBYTE(v61[0]) = v66;
  v62 = 0xD00000000000001ELL;
  v63 = 0x800000021478D860;
  v47 = 0x800000021478D860;
  v64 = 0xD00000000000001CLL;
  v65 = 0x800000021478A360;
  v48 = v17;

  v53 = v16;
  v18 = v76(&v57, v61, &v62);
  v19 = v47;
  v43 = 0x800000021478A360;
  v42 = v13;
  if (v18)
  {
    v20 = v43;

    v61[0] = v45;
    v61[1] = v51;
    LOBYTE(v57) = v52;
    v62 = 0xD00000000000001ELL;
    v63 = 0x800000021478D880;
    v64 = 0xD00000000000001CLL;
    v65 = v20;

    sub_213FDC9D0(v55, v56);
    v21 = v50;
    v22 = v50(v61, &v57, &v62);
    v23 = v21;
    if (v22)
    {
      sub_213FDC6D0(v55, v56);

      (*(v6 + 8))(v9, v5);
      v30 = v54;

      sub_213FDC6D0(v55, v56);
      v31 = v76;
      *&v57 = v76;
      *(&v57 + 1) = v53;
      *&v58 = v44;
      v32 = v42;
      *(&v58 + 1) = v42;
      v33 = v49;
      LOBYTE(v59) = v49;
      *(&v59 + 1) = *v75;
      DWORD1(v59) = *&v75[3];
      *(&v59 + 1) = v21;
      *v60 = v30;
      v34 = v51;
      *&v60[8] = v45;
      *&v60[16] = v51;
      v35 = v52;
      v60[24] = v52;
      v36 = v57;
      v37 = v58;
      *(a2 + 57) = *&v60[9];
      v38 = *v60;
      a2[2] = v59;
      a2[3] = v38;
      *a2 = v36;
      a2[1] = v37;
      sub_2142E9D2C(&v57, &v62);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v62 = v31;
      v63 = v53;
      v64 = v44;
      v65 = v32;
      v66 = v33;
      *v67 = *v75;
      *&v67[3] = *&v75[3];
      v68 = v50;
      v69 = v30;
      v70 = v45;
      v71 = v34;
      v72[0] = v35;
      return sub_2142E9C84(&v62);
    }

    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD00000000000001ELL;
    v39[1] = 0x800000021478D880;
    v40 = v43;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = v40;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);

    sub_213FDC6D0(v55, v56);
    v26 = v42;
    v27 = v53;
    v28 = &v70;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD00000000000001ELL;
    v24[1] = v19;
    v25 = v43;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = v25;
    swift_willThrow();

    v23 = v50;
    v26 = v48;
    (*(v6 + 8))(v9, v5);

    v27 = v53;

    v28 = v72;
  }

  v29 = *(v28 - 32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v62 = v76;
  v63 = v27;
  v64 = v29;
  v65 = v26;
  v66 = v49;
  *v67 = *v75;
  *&v67[3] = *&v75[3];
  v68 = v23;
  v69 = v54;
  v70 = v55;
  v71 = v56;
  v72[0] = v52;
  return sub_2142E9C84(&v62);
}

uint64_t sub_2140FE774(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[8];
  v19 = v4[7];
  v20 = v11;
  v18 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA28();
  if (!v12)
  {
    goto LABEL_7;
  }

  LOBYTE(v23) = 0;

  v15 = v21;
  sub_2146DA328();
  if (v15)
  {
    (*(v22 + 8))(v10, v7);
  }

  if (v18 == 1)
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v23 = v19;
    v24 = v18;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v22 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_2140FE9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_214681144(&v15);
  v6 = v15;
  v7 = v16;
  v8 = v19;
  v14[0] = a1;
  v14[1] = a2;
  v20 = v19;
  v15 = 0xD000000000000014;
  v16 = 0x800000021478D8A0;
  v9 = v6;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;

  v10 = v9(v14, &v20, &v15);
  if (v3)
  {
  }

  else
  {
    if (v10)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v7;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD000000000000014;
    v12[1] = 0x800000021478D8A0;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2140FEB80(uint64_t a1)
{
  v2 = sub_2142E9D88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FEBBC(uint64_t a1)
{
  v2 = sub_2142E9D88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FEBF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9060E8, &qword_2146F4200);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9D88();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2146DA168();
  v25 = a2;
  v14 = v13;
  v15 = v11;
  sub_214681144(&v31);
  v17 = v31;
  v16 = v32;
  v26 = v15;
  v30[0] = v15;
  v30[1] = v14;
  v28 = v14;
  v29 = v34;
  v36 = v35;
  v37 = v35;
  v31 = 0xD000000000000014;
  v32 = 0x800000021478D8A0;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v27 = v16;
  v18 = v17(v30, &v37, &v31);
  v24 = v17;
  if (v18)
  {

    (*(v6 + 8))(v9, v5);

    v19 = v27;

    v20 = v25;
    *v25 = v24;
    v20[1] = v19;
    v21 = v28;
    v20[2] = v26;
    v20[3] = v21;
    *(v20 + 32) = v36;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v22 = 0xD000000000000014;
  v22[1] = 0x800000021478D8A0;
  v22[2] = 0xD00000000000001CLL;
  v22[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140FEF74@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = *a1;
  sub_2145384E0(&v30);
  v8 = v30;
  v9 = v31;
  v10 = v33;
  v22 = v32;
  v11 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 200;
  *(v13 + 16) = sub_21438F758;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  sub_214042B80(inited, &v43);
  v28 = v44;
  v29 = v43;
  v23 = v45;
  v27 = v46;
  v50 = v11;
  v51 = v47;
  v43 = a2;
  v44 = a3;
  v42 = v11;
  v30 = 0xD000000000000014;
  v31 = 0x800000021478D8C0;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v15 = v8(&v43, &v42, &v30);
  if (v26)
  {

LABEL_6:
    a2 = v22;
LABEL_7:

    LOBYTE(v30) = v25;
    *(&v30 + 1) = v49[0];
    HIDWORD(v30) = *(v49 + 3);
    v31 = v8;
    v32 = v9;
    v33 = a2;
    v34 = v10;
    v35 = v50;
    *v36 = *v48;
    *&v36[3] = *&v48[3];
    v37 = v29;
    v38 = v28;
    v39 = v23;
    v40 = v27;
    v41 = v51;
    return sub_2142E9DDC(&v30);
  }

  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v17 = 0xD000000000000014;
    v17[1] = 0x800000021478D8C0;
    v17[2] = 0xD00000000000001CLL;
    v17[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v43 = a4;
  v44 = a5;
  v42 = v51;
  v30 = 0xD00000000000001BLL;
  v31 = 0x800000021478D8E0;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v16 = v29(&v43, &v42, &v30);
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD00000000000001BLL;
    v19[1] = 0x800000021478D8E0;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();

    v10 = a3;
    goto LABEL_7;
  }

  result = swift_bridgeObjectRelease_n();
  *a6 = v25;
  *(a6 + 8) = v8;
  *(a6 + 16) = v9;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = v50;
  *(a6 + 48) = v29;
  *(a6 + 56) = v28;
  *(a6 + 64) = a4;
  *(a6 + 72) = a5;
  *(a6 + 80) = v51;
  return result;
}

uint64_t sub_2140FF37C()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x6574656D61726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701080941;
  }
}

uint64_t sub_2140FF3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436189C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2140FF3F4(uint64_t a1)
{
  v2 = sub_2142E9E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2140FF430(uint64_t a1)
{
  v2 = sub_2142E9E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140FF46C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906100, &qword_2146F4210);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9E30();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v58) = 0;
  sub_2142E9E84();
  sub_2146DA1C8();
  v11 = v65;
  LOBYTE(v65) = 1;
  v12 = sub_2146DA168();
  v79 = v14;
  v15 = v12;
  v76[49] = 2;
  v42 = sub_2146DA168();
  v51 = v16;
  v47 = v11;
  sub_2145384E0(&v65);
  v55 = v65;
  v56 = v66;
  v44 = v67;
  v57 = v68;
  v49 = v15;
  v54 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = 200;
  *(v18 + 16) = sub_21438F758;
  *(v18 + 24) = v19;
  *(inited + 32) = v18;
  sub_214042B80(inited, &v58);
  v53 = *(&v58 + 1);
  v50 = v58;
  v52 = *(&v59 + 1);
  v45 = v59;
  v48 = v60;
  *&v58 = v49;
  *(&v58 + 1) = v79;
  LOBYTE(v64[0]) = v54;
  v43 = 0xD000000000000014;
  v65 = 0xD000000000000014;
  v66 = 0x800000021478D8C0;
  v46 = 0x800000021478D8C0;
  v67 = 0xD00000000000001CLL;
  v68 = 0x800000021478A360;

  v20 = v55(&v58, v64, &v65);
  v21 = v43;
  v22 = v46;
  v41 = 0x800000021478A360;
  if (v20)
  {
    v23 = v41;

    v64[0] = v42;
    v64[1] = v51;
    LOBYTE(v58) = v48;
    v57 = 0xD00000000000001BLL;
    v65 = 0xD00000000000001BLL;
    v66 = 0x800000021478D8E0;
    v67 = 0xD00000000000001CLL;
    v68 = v23;

    v24 = v50(v64, &v58, &v65);
    v30 = v57;
    if (v24)
    {

      (*(v6 + 8))(v9, v5);

      v31 = v53;

      LOBYTE(v58) = v47;
      *(&v58 + 1) = v55;
      v32 = v56;
      *&v59 = v56;
      v33 = v49;
      *(&v59 + 1) = v49;
      v34 = v79;
      *&v60 = v79;
      v35 = v54;
      BYTE8(v60) = v54;
      *&v61 = v50;
      *(&v61 + 1) = v31;
      *&v62 = v42;
      *(&v62 + 1) = v51;
      v36 = v48;
      v63 = v48;
      *(a2 + 80) = v48;
      v37 = v61;
      *(a2 + 32) = v60;
      *(a2 + 48) = v37;
      *(a2 + 64) = v62;
      v38 = v59;
      *a2 = v58;
      *(a2 + 16) = v38;
      sub_2142E9ED8(&v58, &v65);
      __swift_destroy_boxed_opaque_existential_1(a1);
      LOBYTE(v65) = v47;
      v66 = v55;
      v67 = v32;
      v68 = v33;
      v69 = v34;
      v70 = v35;
      *v71 = *v77;
      *&v71[3] = *&v77[3];
      v72 = v50;
      v73 = v31;
      v74 = v42;
      v75 = v51;
      v76[0] = v36;
      return sub_2142E9DDC(&v65);
    }

    sub_214031C4C();
    swift_allocError();
    *v39 = v30;
    v39[1] = 0x800000021478D8E0;
    v40 = v41;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = v40;
    swift_willThrow();

    v57 = v79;
    v27 = v56;
    v28 = v76;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v25 = v21;
    v25[1] = v22;
    v26 = v41;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = v26;
    swift_willThrow();

    v27 = v56;
    v28 = &v72;
  }

  v29 = *(v28 - 32);
  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v65) = v47;
  *(&v65 + 1) = *v78;
  HIDWORD(v65) = *&v78[3];
  v66 = v55;
  v67 = v27;
  v68 = v29;
  v69 = v57;
  v70 = v54;
  *v71 = *v77;
  *&v71[3] = *&v77[3];
  v72 = v50;
  v73 = v53;
  v74 = v45;
  v75 = v52;
  v76[0] = v48;
  return sub_2142E9DDC(&v65);
}

uint64_t sub_2140FFCBC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906118, &qword_2146F4218);
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
  sub_2142E9E30();
  sub_2146DAA28();
  v20 = v8;
  v19 = 0;
  sub_2142E9F34();
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

uint64_t sub_2140FFF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x68737550646E6573 && a2 == 0xE800000000000000)
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

uint64_t sub_214100008(uint64_t a1)
{
  v2 = sub_2142E9F88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214100044(uint64_t a1)
{
  v2 = sub_2142E9F88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214100170(uint64_t a1)
{
  v2 = sub_2142E9FDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141001AC(uint64_t a1)
{
  v2 = sub_2142E9FDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141001E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906140, &qword_2146F4230);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9FDC();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2142EA030();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214100354(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906158, &qword_2146F4238);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142E9FDC();
  sub_2146DAA28();
  v12 = v8;
  sub_2142EA084();
  sub_2146DA388();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2141004D0@<X0>(unint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, uint64_t a11)
{
  v12 = v11;
  sub_21464DAC4(&v73);
  v17 = v73;
  v16 = v74;
  v46 = v75;
  v67 = v76;
  v107 = *(&v76 + 3);
  v108 = HIBYTE(v76);
  v68 = v77;
  v110 = v78;
  v47 = v79;
  v61 = v80;
  v69 = v82;
  v105 = v84;
  v104 = v83;
  v62 = v85;
  v64 = v86;
  v65 = v88;
  v66 = v87;
  v63 = v89;
  v103[0] = *v90;
  *(v103 + 3) = *&v90[3];
  v55 = v91;
  v59 = v92;
  v48 = v93;
  v60 = v94;
  v49 = v95;
  *(v102 + 3) = *&v96[3];
  v102[0] = *v96;
  v53 = v98;
  v54 = v97;
  v56 = v99;
  v57 = v100;
  v51 = BYTE2(v76);
  v52 = v101;
  v109 = BYTE1(v76);
  v106 = v81;
  LOBYTE(v71) = a2 & 1;
  v73 = 0xD00000000000001ELL;
  v74 = 0x800000021478D900;
  v70 = a1;
  v72 = BYTE2(v76);
  v75 = 0xD00000000000001CLL;
  v76 = 0x800000021478A360;

  v50 = v17;
  v18 = v17(&v70, &v72, &v73);
  if (v12)
  {

LABEL_6:
    v22 = v54;
    v20 = v48;
    v23 = v16;

    a1 = v46;
    v24 = v47;
    v25 = v52;
    v26 = v53;
    v27 = v49;
    v28 = v55;
LABEL_7:
    v73 = v50;
    v74 = v23;
    v75 = a1;
    LOBYTE(v76) = v67;
    BYTE1(v76) = v109;
    BYTE2(v76) = v51;
    *(&v76 + 3) = v107;
    HIBYTE(v76) = v108;
    v77 = v68;
    v78 = v110;
    v79 = v24;
    v80 = v61;
    v81 = v106;
    v82 = v69;
    v83 = v104;
    v84 = v105;
    v85 = v62;
    v86 = v64;
    v87 = v66;
    v88 = v65;
    v89 = v63;
    *v90 = v103[0];
    *&v90[3] = *(v103 + 3);
    v91 = v28;
    v92 = v59;
    v93 = v20;
    v94 = v60;
    v95 = v27;
    *&v96[3] = *(v102 + 3);
    *v96 = v102[0];
    v97 = v22;
    v98 = v26;
    v99 = v56;
    v100 = v57;
    v101 = v25;
    return sub_2142EA0D8(&v73);
  }

  v40 = a8;
  if ((v18 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD00000000000001ELL;
    v21[1] = 0x800000021478D900;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v67 = a2 & 1;

  v109 = 0;
  v70 = a3;
  LOBYTE(v71) = a4 & 1;
  v72 = v69;
  v73 = 0xD00000000000001FLL;
  v74 = 0x800000021478D920;
  v75 = 0xD00000000000001CLL;
  v76 = 0x800000021478A360;

  v19 = v68(&v70, &v72, &v73);
  v20 = v48;
  v27 = v49;
  if ((v19 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD00000000000001FLL;
    v31[1] = 0x800000021478D920;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();
    v26 = v53;
    v22 = v54;
    v28 = v55;

    v25 = v52;
    v23 = v16;
    v24 = v47;
    goto LABEL_7;
  }

  v61 = a4 & 1;

  v106 = 0;
  v70 = a5;
  v71 = a6;
  v72 = v63;
  v73 = 0xD00000000000001BLL;
  v74 = 0x800000021478D940;
  v75 = 0xD00000000000001CLL;
  v76 = 0x800000021478A360;

  sub_213FDC9D0(v66, v65);
  v30 = v62(&v70, &v72, &v73);
  v28 = v55;
  v25 = v52;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD00000000000001BLL;
    v33[1] = 0x800000021478D940;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    v22 = v54;

    sub_213FDC6D0(v66, v65);
    v24 = a3;
LABEL_14:
    v26 = v53;
LABEL_15:
    v23 = v16;
    goto LABEL_7;
  }

  sub_213FDC6D0(v66, v65);

  sub_213FDC6D0(v66, v65);
  v70 = a7;
  v71 = v40;
  v72 = v49;
  v73 = 0xD00000000000001BLL;
  v74 = 0x800000021478D960;
  v75 = 0xD00000000000001CLL;
  v76 = 0x800000021478A360;

  sub_213FDC9D0(v48, v60);
  v32 = v55(&v70, &v72, &v73);
  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD00000000000001BLL;
    v35[1] = 0x800000021478D960;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    v22 = v54;

    sub_213FDC6D0(v48, v60);
    v24 = a3;
    v65 = a6;
    v66 = a5;
    goto LABEL_14;
  }

  sub_213FDC6D0(v48, v60);

  sub_213FDC6D0(v48, v60);
  v70 = a10;
  v71 = a11;
  v72 = v52;
  v73 = 0xD000000000000021;
  v74 = 0x800000021478D980;
  v75 = 0xD00000000000001CLL;
  v76 = 0x800000021478A360;
  v26 = v53;

  sub_213FDC9D0(v56, v57);
  v34 = v54(&v70, &v72, &v73);
  v22 = v54;
  if ((v34 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000021;
    v39[1] = 0x800000021478D980;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v55;

    sub_213FDC6D0(v56, v57);
    v24 = a3;
    v65 = a6;
    v66 = a5;
    v20 = a7;
    v60 = v40;
    goto LABEL_15;
  }

  sub_213FDC6D0(v56, v57);

  result = sub_213FDC6D0(v56, v57);
  v36 = v109;
  v37 = v106;
  *a9 = v50;
  *(a9 + 8) = v16;
  *(a9 + 16) = a1;
  *(a9 + 24) = v67;
  *(a9 + 25) = v36;
  *(a9 + 26) = v51;
  *(a9 + 27) = v107;
  *(a9 + 31) = v108;
  v38 = v110;
  *(a9 + 32) = v68;
  *(a9 + 40) = v38;
  *(a9 + 48) = a3;
  *(a9 + 56) = v61;
  *(a9 + 57) = v37;
  *(a9 + 58) = v69;
  *(a9 + 59) = v104;
  *(a9 + 63) = v105;
  *(a9 + 64) = v62;
  *(a9 + 72) = v64;
  *(a9 + 80) = a5;
  *(a9 + 88) = a6;
  *(a9 + 96) = v63;
  *(a9 + 97) = v103[0];
  *(a9 + 100) = *(v103 + 3);
  *(a9 + 104) = v55;
  *(a9 + 112) = v59;
  *(a9 + 120) = a7;
  *(a9 + 128) = v40;
  *(a9 + 136) = v49;
  *(a9 + 140) = *(v102 + 3);
  *(a9 + 137) = v102[0];
  *(a9 + 144) = v54;
  *(a9 + 152) = v53;
  *(a9 + 160) = a10;
  *(a9 + 168) = a11;
  *(a9 + 176) = v52;
  return result;
}

uint64_t sub_214100E7C()
{
  v1 = *v0;
  v2 = 0x656475746974616CLL;
  v3 = 0x7972657571;
  v4 = 0x6C6562616CLL;
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
    v2 = 0x64757469676E6F6CLL;
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

uint64_t sub_214100F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143619BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214100F44(uint64_t a1)
{
  v2 = sub_2142EA12C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214100F80(uint64_t a1)
{
  v2 = sub_2142EA12C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214100FBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906168, &qword_2146F4240);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v59 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA12C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v97) = 0;
  sub_2142E35EC();
  sub_2146DA1C8();
  v95 = a1;
  v96 = v5;
  v11 = v110;
  v12 = v111;
  LOBYTE(v97) = 1;
  v13 = v8;
  sub_2146DA1C8();
  v93 = v11;
  v94 = v12;
  v14 = v110;
  v15 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v97) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v92 = v15;
  v16 = v111;
  v90 = v110;
  v91 = v14;
  LOBYTE(v97) = 3;
  sub_2146DA1C8();
  v88 = v110;
  v89 = v16;
  v17 = v111;
  v138 = 4;
  sub_2146DA1C8();
  v78 = v17;
  v64 = v13;
  v65 = v4;
  v18 = v140;
  v61 = v139;
  sub_21464DAC4(&v110);
  v20 = v110;
  v19 = v111;
  v21 = v112;
  v62 = v113;
  v146 = *(&v113 + 3);
  v147 = HIBYTE(v113);
  v87 = v114;
  v63 = v115;
  v79 = v116;
  v80 = v118;
  v144 = v120;
  v143 = v119;
  v81 = v121;
  v85 = v123;
  v83 = v122;
  v84 = v124;
  v82 = v125;
  v142[0] = *v126;
  *(v142 + 3) = *&v126[3];
  v77 = v128;
  v74 = v129;
  v75 = v127;
  v73 = v130;
  v76 = v131;
  *(v141 + 3) = *&v132[3];
  v141[0] = *v132;
  v72 = v134;
  v69 = v133;
  v70 = v135;
  v71 = v136;
  v67 = BYTE2(v113);
  v68 = v137;
  v148 = BYTE1(v113);
  v145 = v117;
  v110 = 0xD00000000000001ELL;
  v111 = 0x800000021478D900;
  v22 = v93;
  *&v97 = v93;
  BYTE8(v97) = v94;
  LOBYTE(v109[0]) = BYTE2(v113);
  v112 = 0xD00000000000001CLL;
  v113 = 0x800000021478A360;

  v86 = v19;
  v66 = v20;
  v23 = v20(&v97, v109, &v110);
  v60 = v18;
  if ((v23 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD00000000000001ELL;
    v26[1] = 0x800000021478D900;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v96 + 8))(v64, v65);
    v27 = v86;

    v22 = v21;
    v28 = v62;
    v24 = v80;
LABEL_7:
    v30 = v73;
    v29 = v74;
    v31 = v63;
    goto LABEL_8;
  }

  v148 = 0;
  *&v97 = v91;
  BYTE8(v97) = v92;
  v24 = v80;
  LOBYTE(v109[0]) = v80;
  v110 = 0xD00000000000001FLL;
  v111 = 0x800000021478D920;
  v112 = 0xD00000000000001CLL;
  v113 = 0x800000021478A360;

  v25 = (v87)(&v97, v109, &v110);
  v32 = v89;
  if ((v25 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD00000000000001FLL;
    v34[1] = 0x800000021478D920;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v96 + 8))(v64, v65);

    v28 = v94;
    v27 = v86;
    goto LABEL_7;
  }

  v145 = 0;
  *&v97 = v90;
  *(&v97 + 1) = v32;
  LOBYTE(v109[0]) = v82;
  v110 = 0xD00000000000001BLL;
  v111 = 0x800000021478D940;
  v112 = 0xD00000000000001CLL;
  v113 = 0x800000021478A360;

  sub_213FDC9D0(v85, v84);
  v33 = v81(&v97, v109, &v110);
  if (v33)
  {
    v36 = v84;
    v35 = v85;
    sub_213FDC6D0(v85, v84);

    sub_213FDC6D0(v35, v36);
    *&v97 = v88;
    *(&v97 + 1) = v78;
    LOBYTE(v109[0]) = v76;
    v110 = 0xD00000000000001BLL;
    v111 = 0x800000021478D960;
    v112 = 0xD00000000000001CLL;
    v113 = 0x800000021478A360;

    sub_213FDC9D0(v74, v73);
    v37 = v75(&v97, v109, &v110);
    if (v37)
    {
      v40 = v73;
      v39 = v74;
      sub_213FDC6D0(v74, v73);

      sub_213FDC6D0(v39, v40);
      v109[0] = v61;
      v109[1] = v60;
      LOBYTE(v97) = v68;
      v110 = 0xD000000000000021;
      v111 = 0x800000021478D980;
      v112 = 0xD00000000000001CLL;
      v113 = 0x800000021478A360;

      sub_213FDC9D0(v70, v71);
      v41 = v69(v109, &v97, &v110);
      if (v41)
      {
        v44 = v70;
        v43 = v71;
        sub_213FDC6D0(v70, v71);

        (*(v96 + 8))(v64, v65);
        v45 = v72;

        sub_213FDC6D0(v44, v43);
        *&v97 = v66;
        *(&v97 + 1) = v86;
        *&v98 = v93;
        BYTE8(v98) = v94;
        HIDWORD(v105) = *(v141 + 3);
        *(&v105 + 9) = v141[0];
        LODWORD(v96) = v148;
        BYTE9(v98) = v148;
        BYTE10(v98) = v67;
        *(&v98 + 11) = v146;
        HIBYTE(v98) = v147;
        v99 = v87;
        *&v100 = v91;
        BYTE8(v100) = v92;
        HIBYTE(v100) = v144;
        *(&v100 + 11) = v143;
        *(&v103 + 1) = v142[0];
        DWORD1(v103) = *(v142 + 3);
        LOBYTE(v44) = v145;
        BYTE9(v100) = v145;
        LOBYTE(v43) = v80;
        BYTE10(v100) = v80;
        v46 = v83;
        *&v101 = v81;
        *(&v101 + 1) = v83;
        *&v102 = v90;
        *(&v102 + 1) = v89;
        LOBYTE(v103) = v82;
        v47 = v78;
        *(&v103 + 1) = v75;
        *&v104 = v77;
        *(&v104 + 1) = v88;
        *&v105 = v78;
        BYTE8(v105) = v76;
        *&v106 = v69;
        *(&v106 + 1) = v45;
        *&v107 = v61;
        *(&v107 + 1) = v60;
        v48 = v105;
        v49 = v106;
        v50 = v107;
        LOBYTE(v45) = v68;
        v51 = v149;
        *(v149 + 176) = v68;
        v51[9] = v49;
        v51[10] = v50;
        v51[8] = v48;
        v52 = v97;
        v53 = v98;
        v54 = v100;
        v51[2] = v99;
        v51[3] = v54;
        *v51 = v52;
        v51[1] = v53;
        v55 = v101;
        v56 = v102;
        v57 = v104;
        v51[6] = v103;
        v51[7] = v57;
        v51[4] = v55;
        v51[5] = v56;
        v108 = v45;
        sub_2142EA180(&v97, &v110);
        __swift_destroy_boxed_opaque_existential_1(v95);
        v110 = v66;
        v111 = v86;
        v112 = v93;
        LOBYTE(v113) = v94;
        BYTE1(v113) = v96;
        BYTE2(v113) = v67;
        *(&v113 + 3) = v146;
        HIBYTE(v113) = v147;
        v114 = v87;
        v115 = v91;
        v116 = v92;
        v117 = v44;
        v118 = v43;
        v119 = v143;
        v120 = v144;
        v121 = v81;
        v122 = v46;
        v123 = v90;
        v124 = v89;
        v125 = v82;
        *&v126[3] = *(v142 + 3);
        *v126 = v142[0];
        v127 = v75;
        v128 = v77;
        v129 = v88;
        v130 = v47;
        v131 = v76;
        *&v132[3] = *(v141 + 3);
        *v132 = v141[0];
        v133 = v69;
        v134 = v72;
        v135 = v61;
        v136 = v60;
        v137 = v45;
        return sub_2142EA0D8(&v110);
      }

      sub_214031C4C();
      swift_allocError();
      *v58 = 0xD000000000000021;
      v58[1] = 0x800000021478D980;
      v58[2] = 0xD00000000000001CLL;
      v58[3] = 0x800000021478A360;
      swift_willThrow();

      (*(v96 + 8))(v64, v65);

      sub_213FDC6D0(v70, v71);
      v79 = v92;
      v31 = v91;
      v29 = v88;
      v84 = v89;
      v85 = v90;
      v30 = v78;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v42 = 0xD00000000000001BLL;
      v42[1] = 0x800000021478D960;
      v42[2] = 0xD00000000000001CLL;
      v42[3] = 0x800000021478A360;
      swift_willThrow();

      (*(v96 + 8))(v64, v65);

      v30 = v73;
      v29 = v74;
      sub_213FDC6D0(v74, v73);
      v79 = v92;
      v31 = v91;
      v84 = v89;
      v85 = v90;
    }

    v28 = v94;
    v22 = v93;
    v24 = v80;
    v27 = v86;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD00000000000001BLL;
    v38[1] = 0x800000021478D940;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v96 + 8))(v64, v65);

    sub_213FDC6D0(v85, v84);
    v31 = v91;
    v79 = v92;
    v28 = v94;
    v22 = v93;
    v24 = v80;
    v27 = v86;
    v30 = v73;
    v29 = v74;
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v95);
  v110 = v66;
  v111 = v27;
  v112 = v22;
  LOBYTE(v113) = v28;
  BYTE1(v113) = v148;
  BYTE2(v113) = v67;
  *(&v113 + 3) = v146;
  HIBYTE(v113) = v147;
  v114 = v87;
  v115 = v31;
  v116 = v79;
  v117 = v145;
  v118 = v24;
  v120 = v144;
  v119 = v143;
  v121 = v81;
  v122 = v83;
  v123 = v85;
  v124 = v84;
  v125 = v82;
  *v126 = v142[0];
  *&v126[3] = *(v142 + 3);
  v127 = v75;
  v128 = v77;
  v129 = v29;
  v130 = v30;
  v131 = v76;
  *&v132[3] = *(v141 + 3);
  *v132 = v141[0];
  v133 = v69;
  v134 = v72;
  v135 = v70;
  v136 = v71;
  v137 = v68;
  return sub_2142EA0D8(&v110);
}

uint64_t sub_214101E54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906178, &qword_2146F4248);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 25);
  v23 = *(v1 + 48);
  v28 = *(v1 + 56);
  v22 = *(v1 + 57);
  v10 = *(v1 + 80);
  v20 = *(v1 + 88);
  v21 = v10;
  v11 = *(v1 + 120);
  v18 = *(v1 + 128);
  v19 = v11;
  v12 = *(v1 + 160);
  v16 = *(v1 + 168);
  v17 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA12C();
  sub_2146DAA28();
  if (v9)
  {
LABEL_13:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v26 = v7;
  LOBYTE(v27) = v8 & 1;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  sub_2142E37F4();
  v14 = v24;
  sub_2146DA388();
  if (!v14)
  {
    if ((v22 & 1) == 0)
    {
      v26 = v23;
      LOBYTE(v27) = v28 & 1;
      v29 = 1;
      sub_2146DA388();
      if (v20 != 1)
      {
        v26 = v21;
        v27 = v20;
        v29 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
        sub_214045AC0();
        sub_2146DA388();
        if (v18 != 1)
        {
          v26 = v19;
          v27 = v18;
          v29 = 3;
          sub_2146DA388();
          if (v16 != 1)
          {
            v26 = v17;
            v27 = v16;
            v29 = 4;
            sub_2146DA388();
            return (*(v25 + 8))(v6, v3);
          }
        }
      }
    }

    goto LABEL_13;
  }

  return (*(v25 + 8))(v6, v3);
}

uint64_t MBDChipAction.init(with:type:action:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *a2;
  *a4 = *a1;
  *(a4 + 8) = v6;
  v8 = *(a1 + 32);
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 32) = v8;
  *(a4 + 48) = v7;
  v9 = type metadata accessor for MBDChipAction();
  return sub_21408AC04(a3, a4 + *(v9 + 24), &qword_27C906180, &qword_2146F4250);
}

uint64_t sub_21410223C()
{
  v1 = 1701869940;
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
    return 0x6974736567677573;
  }
}

uint64_t sub_214102290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214361B70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141022B8(uint64_t a1)
{
  v2 = sub_2142EA1DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141022F4(uint64_t a1)
{
  v2 = sub_2142EA1DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDChipAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906180, &qword_2146F4250);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906188, &qword_2146F4258);
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v32);
  v11 = &v25 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA1DC();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v7;
    v39 = 0;
    sub_2142EA230();
    sub_2146DA1C8();
    v15 = v34;
    v16 = v36;
    v28 = v35;
    v29 = v33;
    v27 = v37;
    v30 = v38;
    v39 = 1;
    sub_2142EA284();
    sub_2146DA1C8();
    v25 = v15;
    v26 = v16;
    LOBYTE(v15) = v33;
    LOBYTE(v33) = 2;
    sub_2142EA2D8();
    v17 = v32;
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v17);
    v19 = type metadata accessor for MBDChipAction();
    v20 = v31;
    sub_21408AC04(v14, v31 + *(v19 + 24), &qword_27C906180, &qword_2146F4250);
    v21 = v25;
    *v20 = v29;
    *(v20 + 8) = v21;
    v22 = v26;
    v23 = v27;
    *(v20 + 16) = v28;
    *(v20 + 24) = v22;
    v24 = v30;
    *(v20 + 32) = v23;
    *(v20 + 40) = v24;
    *(v20 + 48) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MBDChipAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9061B8, &qword_2146F4260);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA1DC();
  sub_2146DAA28();
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[5];
  v18 = *v3;
  v19 = v11;
  v20 = v12;
  v21 = *(v3 + 3);
  v22 = v13;
  v17 = 0;
  sub_2142EA38C();

  sub_2146DA388();

  if (!v2)
  {
    LOBYTE(v18) = *(v3 + 48);
    v17 = 1;
    sub_2142EA3E0();
    sub_2146DA388();
    v14 = *(type metadata accessor for MBDChipAction() + 24);
    LOBYTE(v18) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906180, &qword_2146F4250);
    sub_2142EA434();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MBDChipReply.init(with:)(BlastDoor::MBDChipReply *__return_ptr retstr, BlastDoor::MBDChipSuggestion *with)
{
  object = with->displayText._object;
  retstr->suggestion.displayText._countAndFlagsBits = with->displayText._countAndFlagsBits;
  retstr->suggestion.displayText._object = object;
  inReplyToID = with->inReplyToID;
  retstr->suggestion.postback = with->postback;
  retstr->suggestion.inReplyToID = inReplyToID;
}

uint64_t sub_2141028E8(uint64_t a1)
{
  v2 = sub_2142EA4E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214102924(uint64_t a1)
{
  v2 = sub_2142EA4E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDChipReply.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9061E0, &qword_2146F4268);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA4E8();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2142EA230();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v15[1];
    v12 = v16;
    v13 = v17;
    *a2 = v15[0];
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 32) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MBDChipReply.encode(to:)(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9061F0, &qword_2146F4270);
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v17);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[3];
  v15 = v1[2];
  v16 = v7;
  v10 = v1[5];
  v14 = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA4E8();

  sub_2146DAA28();
  v18 = v16;
  v19 = v8;
  v20 = v15;
  v21 = v9;
  v22 = v14;
  v23 = v10;
  sub_2142EA38C();
  v12 = v17;
  sub_2146DA388();

  return (*(v3 + 8))(v6, v12);
}

uint64_t sub_214102CB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_214102CC8()
{
  v1 = 0x6B63616274736F70;
  if (*v0 != 1)
  {
    v1 = 0x54796C7065526E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5479616C70736964;
  }
}

uint64_t sub_214102D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214361C8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214102D5C(uint64_t a1)
{
  v2 = sub_2142EA53C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214102D98(uint64_t a1)
{
  v2 = sub_2142EA53C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214102DD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9061F8, &qword_2146F4278);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA53C();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v21) = 0;
    v11 = sub_2146DA168();
    v13 = v12;
    v19 = a2;
    v20 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v22 = 1;
    sub_2142E12FC();
    sub_2146DA1C8();
    v18 = v21;
    v22 = 2;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v15 = v21;
    v16 = v19;
    *v19 = v20;
    v16[1] = v13;
    v17 = *(&v18 + 1);
    v16[2] = v18;
    v16[3] = v17;
    *(v16 + 2) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214103044(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906208, &qword_2146F4280);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  v11 = v1[4];
  v18 = v1[5];
  v19 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA53C();
  sub_2146DAA28();
  LOBYTE(v23) = 0;
  v13 = v22;
  sub_2146DA328();
  if (!v13)
  {
    v15 = v18;
    v14 = v19;
    v23 = v21;
    v24 = v20;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v23 = v14;
    v24 = v15;
    v25 = 2;
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_21410325C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, char *a12, char *a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, unsigned __int8 a25, char *a26)
{
  *&v77 = a1;
  *(&v77 + 1) = a2;
  v85 = a25;
  v28 = *a8;
  v29 = *a10;
  v30 = *a11;
  v31 = *a12;
  v69 = *a13;
  v70 = *a14;
  v72 = *a26;
  v32 = type metadata accessor for CloudKitShareParticipant(0);
  v76 = a5;
  sub_2143287C0(a5, a9 + v32[6], type metadata accessor for CloudKitUserIdentity);
  sub_213FB2E54(a21, a9 + v32[19], &qword_27C9041D8, &qword_2146ED5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_21405980C;
  *(v34 + 24) = 0;
  *(inited + 32) = v34;
  sub_214042B80(inited, &v81);
  v35 = v82;
  v36 = v83;
  v37 = v84;
  sub_2144F5110(v79);
  *a9 = v81;
  v38 = v79[1];
  *(a9 + 40) = v79[0];
  v39 = v80;
  *(a9 + 16) = v35;
  *(a9 + 24) = v36;
  *(a9 + 32) = v37;
  *(a9 + 56) = v38;
  *(a9 + 72) = v39;
  *(a9 + v32[7]) = a6;
  *(a9 + v32[8]) = a7;
  *(a9 + v32[9]) = v28;
  *(a9 + v32[10]) = v29;
  *(a9 + v32[11]) = v30;
  *(a9 + v32[12]) = v31;
  *(a9 + v32[13]) = v69;
  *(a9 + v32[14]) = v70;
  v40 = (a9 + v32[15]);
  *v40 = a15;
  v40[1] = a16;
  v41 = (a9 + v32[16]);
  *v41 = a17;
  v41[1] = a18;
  *(a9 + v32[17]) = a19;
  *(a9 + v32[18]) = a20;
  v42 = (a9 + v32[20]);
  *v42 = a22;
  v42[1] = a23;
  *(a9 + v32[21]) = a24;
  *(a9 + v32[22]) = v85;
  *(a9 + v32[23]) = v72;
  v44 = *a9;
  v43 = *(a9 + 8);
  v46 = *(a9 + 16);
  v45 = *(a9 + 24);
  v47 = *(a9 + 32);
  v79[0] = v77;
  v86 = v47;
  *&v81 = 0xD000000000000026;
  *(&v81 + 1) = 0x800000021478D9B0;
  v82 = 0xD00000000000001CLL;
  v83 = 0x800000021478A360;

  v48 = v44(v79, &v86, &v81);
  if (v74)
  {

LABEL_6:
    sub_213FB2DF4(a21, &qword_27C9041D8, &qword_2146ED5C0);
    sub_21432887C(v76, type metadata accessor for CloudKitUserIdentity);
    v58 = *(a9 + 8);
    v59 = *(a9 + 24);

    *a9 = v44;
    *(a9 + 8) = v43;
    *(a9 + 16) = v46;
    *(a9 + 24) = v45;
    *(a9 + 32) = v47;
    return sub_21432887C(a9, type metadata accessor for CloudKitShareParticipant);
  }

  if ((v48 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v57 = 0xD000000000000026;
    v57[1] = 0x800000021478D9B0;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v49 = *(a9 + 8);
  v50 = *(a9 + 24);

  *a9 = v44;
  *(a9 + 8) = v43;
  *(a9 + 16) = v77;
  *(a9 + 32) = v47;
  v52 = *(a9 + 40);
  v51 = *(a9 + 48);
  v53 = *(a9 + 56);
  v54 = *(a9 + 64);
  v55 = *(a9 + 72);
  *&v79[0] = a3;
  *(&v79[0] + 1) = a4;
  v78 = v55;
  v86 = v55;
  *&v81 = 0xD000000000000022;
  *(&v81 + 1) = 0x800000021478D9E0;
  v82 = 0xD00000000000001CLL;
  v83 = 0x800000021478A360;

  sub_213FDC9D0(v53, v54);
  v56 = v52(v79, &v86, &v81);
  if ((v56 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v64 = 0xD000000000000022;
    v64[1] = 0x800000021478D9E0;
    v64[2] = 0xD00000000000001CLL;
    v64[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a21, &qword_27C9041D8, &qword_2146ED5C0);
    sub_21432887C(v76, type metadata accessor for CloudKitUserIdentity);
    v65 = *(a9 + 48);
    v66 = *(a9 + 56);
    v67 = *(a9 + 64);

    sub_213FDC6D0(v66, v67);
    *(a9 + 40) = v52;
    *(a9 + 48) = v51;
    *(a9 + 56) = v53;
    *(a9 + 64) = v54;
    *(a9 + 72) = v78;
    return sub_21432887C(a9, type metadata accessor for CloudKitShareParticipant);
  }

  sub_213FDC6D0(v53, v54);

  sub_213FB2DF4(a21, &qword_27C9041D8, &qword_2146ED5C0);
  sub_21432887C(v76, type metadata accessor for CloudKitUserIdentity);
  v61 = *(a9 + 48);
  v62 = *(a9 + 56);
  v63 = *(a9 + 64);

  result = sub_213FDC6D0(v62, v63);
  *(a9 + 40) = v52;
  *(a9 + 48) = v51;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v78;
  return result;
}

unint64_t sub_214103850(char a1)
{
  result = 0x7069636974726170;
  switch(a1)
  {
    case 1:
      result = 0x4972657469766E69;
      break;
    case 2:
      result = 0x6E65644972657375;
      break;
    case 3:
      result = 0x6E65727275437369;
      break;
    case 4:
      result = 0x6D644167724F7369;
      break;
    case 5:
      result = 1701605234;
      break;
    case 6:
    case 13:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x697373696D726570;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x69746365746F7270;
      break;
    case 12:
    case 19:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x6974617469766E69;
      break;
    case 16:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0xD000000000000017;
      break;
    case 18:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214103AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214361DAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214103AE8(uint64_t a1)
{
  v2 = sub_2142EA590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214103B24(uint64_t a1)
{
  v2 = sub_2142EA590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214103B60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v3 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v111 = &v90[-v4];
  v5 = type metadata accessor for CloudKitUserIdentity(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906210, &qword_2146F4288);
  v112 = *(v9 - 8);
  v10 = *(v112 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v90[-v11];
  v13 = type metadata accessor for CloudKitShareParticipant(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v90[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1[3];
  v17 = a1[4];
  v113 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2142EA590();
  v19 = v114;
  sub_2146DAA08();
  if (v19)
  {
    v114 = v19;
    return __swift_destroy_boxed_opaque_existential_1(v113);
  }

  v107 = v16;
  v108 = v8;
  LOBYTE(v117) = 0;
  v20 = sub_2146DA168();
  v114 = 0;
  v22 = v21;
  v23 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v115[0]) = 1;
  sub_2142E12FC();
  v24 = v114;
  sub_2146DA1C8();
  v114 = v24;
  v25 = v112;
  if (v24)
  {
    (*(v112 + 8))(v12, v9);
LABEL_7:

    return __swift_destroy_boxed_opaque_existential_1(v113);
  }

  *&v106 = v23;
  *(&v106 + 1) = v22;
  v26 = v117;
  LOBYTE(v117) = 2;
  sub_214328930(&qword_27C906220, type metadata accessor for CloudKitUserIdentity);
  v27 = v114;
  sub_2146DA1C8();
  if (v27)
  {
    v114 = v27;
    (*(v25 + 8))(v12, v9);

    goto LABEL_7;
  }

  v105 = v26;
  LOBYTE(v117) = 3;
  v121 = sub_2146DA178();
  LOBYTE(v117) = 4;
  v29 = sub_2146DA178();
  v114 = 0;
  v30 = v108;
  v31 = v29;
  LOBYTE(v115[0]) = 5;
  sub_2142EA5E4();
  v32 = v114;
  sub_2146DA1C8();
  v114 = v32;
  if (v32)
  {

    sub_21432887C(v30, type metadata accessor for CloudKitUserIdentity);
    (*(v25 + 8))(v12, v9);
    return __swift_destroy_boxed_opaque_existential_1(v113);
  }

  v33 = v117;
  LOBYTE(v115[0]) = 6;
  sub_2142EA638();
  v34 = v114;
  sub_2146DA1C8();
  v114 = v34;
  if (v34)
  {
LABEL_15:

    sub_21432887C(v108, type metadata accessor for CloudKitUserIdentity);
    (*(v112 + 8))(v12, v9);
    return __swift_destroy_boxed_opaque_existential_1(v113);
  }

  v104 = v33;
  v35 = v117;
  LOBYTE(v115[0]) = 7;
  sub_2142EA68C();
  v36 = v114;
  sub_2146DA1C8();
  if (v36)
  {
    v114 = v36;
    goto LABEL_15;
  }

  v103 = v117;
  LOBYTE(v115[0]) = 8;
  sub_2146DA1C8();
  v114 = 0;
  v101 = v117;
  LOBYTE(v115[0]) = 9;
  v102 = v9;
  v37 = v12;
  sub_2146DA1C8();
  v114 = 0;
  v38 = v117;
  LOBYTE(v115[0]) = 10;
  sub_2146DA1C8();
  v114 = 0;
  v100 = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v115[0]) = 11;
  sub_2142E1278();
  v39 = v114;
  sub_2146DA1C8();
  v114 = v39;
  if (v39)
  {

LABEL_18:
    sub_21432887C(v108, type metadata accessor for CloudKitUserIdentity);
    (*(v112 + 8))(v12, v102);
    return __swift_destroy_boxed_opaque_existential_1(v113);
  }

  v98 = *(&v117 + 1);
  v99 = v117;
  LOBYTE(v115[0]) = 12;
  sub_2146DA1C8();
  v114 = 0;
  v97 = v117;
  LOBYTE(v117) = 13;
  v96 = sub_2146DA178();
  v114 = 0;
  LOBYTE(v117) = 14;
  v95 = sub_2146DA178();
  v114 = 0;
  LOBYTE(v117) = 15;
  sub_2142E285C();
  v40 = v114;
  sub_2146DA1C8();
  v114 = v40;
  if (v40)
  {

    sub_213FDC6BC(v97, *(&v97 + 1));
    sub_213FDC6BC(v99, v98);
    goto LABEL_18;
  }

  LOBYTE(v115[0]) = 16;
  sub_2146DA1C8();
  v114 = 0;
  v41 = v117;
  LOBYTE(v117) = 17;
  LODWORD(v110) = sub_2146DA178();
  v114 = 0;
  LOBYTE(v117) = 18;
  v94 = sub_2146DA178();
  v114 = 0;
  LOBYTE(v115[0]) = 19;
  sub_2142EA6E0();
  v42 = v114;
  sub_2146DA1C8();
  v114 = v42;
  if (v42)
  {

    sub_213FDC6BC(v41, *(&v41 + 1));
    sub_213FDC6BC(v97, *(&v97 + 1));
    sub_213FDC6BC(v99, v98);
    sub_213FB2DF4(v111, &qword_27C9041D8, &qword_2146ED5C0);
    goto LABEL_18;
  }

  v93 = v117;
  v43 = v13;
  v44 = *(v13 + 24);
  v45 = v107;
  sub_2143287C0(v108, v107 + v44, type metadata accessor for CloudKitUserIdentity);
  sub_213FB2E54(v111, v45 + v43[19], &qword_27C9041D8, &qword_2146ED5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_214059900;
  *(v47 + 24) = 0;
  *(inited + 32) = v47;
  sub_214042B80(inited, &v117);
  v48 = v118;
  v92 = v119;
  v91 = v120;
  sub_2144F5110(v115);
  *v45 = v117;
  v49 = v115[1];
  *(v45 + 5) = v115[0];
  v50 = v116;
  v51 = v92;
  v45[2] = v48;
  v45[3] = v51;
  *(v45 + 32) = v91;
  *(v45 + 7) = v49;
  *(v45 + 72) = v50;
  *(v45 + v43[7]) = v121 & 1;
  *(v45 + v43[8]) = v31 & 1;
  *(v45 + v43[9]) = v104;
  *(v45 + v43[10]) = v35;
  *(v45 + v43[11]) = v103;
  *(v45 + v43[12]) = v101;
  *(v45 + v43[13]) = v38;
  *(v45 + v43[14]) = v100;
  v52 = (v45 + v43[15]);
  v53 = v98;
  *v52 = v99;
  v52[1] = v53;
  v54 = (v45 + v43[16]);
  v55 = *(&v97 + 1);
  *v54 = v97;
  v54[1] = v55;
  *(v45 + v43[17]) = v96 & 1;
  *(v45 + v43[18]) = v95 & 1;
  *(v45 + v43[20]) = v41;
  *(v45 + v43[21]) = v110 & 1;
  *(v45 + v43[22]) = v94 & 1;
  *(v45 + v43[23]) = v93;
  v57 = *v45;
  v56 = v45[1];
  v59 = v45[2];
  v58 = v45[3];
  v60 = *(v45 + 32);
  v115[0] = v106;
  v122 = v60;
  *&v117 = 0xD000000000000026;
  *(&v117 + 1) = 0x800000021478D9B0;
  v118 = 0xD00000000000001CLL;
  v119 = 0x800000021478A360;

  v61 = v114;
  v62 = v57(v115, &v122, &v117);
  v114 = v61;
  if (v61)
  {

LABEL_29:

    sub_213FB2DF4(v111, &qword_27C9041D8, &qword_2146ED5C0);
    sub_21432887C(v108, type metadata accessor for CloudKitUserIdentity);
    (*(v112 + 8))(v37, v102);
    v76 = v107;
    v77 = v107[1];
    v78 = v107[3];

    *v76 = v57;
    v76[1] = v56;
    v76[2] = v59;
    v76[3] = v58;
    *(v76 + 32) = v60;
    goto LABEL_30;
  }

  if ((v62 & 1) == 0)
  {
    sub_214031C4C();
    v74 = swift_allocError();
    *v75 = 0xD000000000000026;
    v75[1] = 0x800000021478D9B0;
    v75[2] = 0xD00000000000001CLL;
    v75[3] = 0x800000021478A360;
    v114 = v74;
    swift_willThrow();
    goto LABEL_29;
  }

  v63 = v107;
  v64 = v107[1];
  v65 = v107[3];

  *v63 = v57;
  v63[1] = v56;
  v66 = *(&v106 + 1);
  v63[2] = v106;
  v63[3] = v66;
  *(v63 + 32) = v60;
  v68 = v63[5];
  v67 = v63[6];
  v69 = v63[7];
  v70 = v63[8];
  v71 = *(v63 + 72);
  v115[0] = v105;
  v122 = v71;
  *&v117 = 0xD000000000000022;
  *(&v117 + 1) = 0x800000021478D9E0;
  v118 = 0xD00000000000001CLL;
  v119 = 0x800000021478A360;

  sub_213FDC9D0(v69, v70);
  v72 = v114;
  v73 = v68(v115, &v122, &v117);
  v114 = v72;
  if (v72)
  {
  }

  else
  {
    if (v73)
    {
      sub_213FDC6D0(v69, v70);

      sub_213FB2DF4(v111, &qword_27C9041D8, &qword_2146ED5C0);
      sub_21432887C(v108, type metadata accessor for CloudKitUserIdentity);
      (*(v112 + 8))(v37, v102);
      v79 = v107;
      v80 = v107[6];
      v81 = v107[7];
      v82 = v107[8];

      sub_213FDC6D0(v81, v82);
      v79[5] = v68;
      v79[6] = v67;
      v83 = *(&v105 + 1);
      v79[7] = v105;
      v79[8] = v83;
      *(v79 + 72) = v71;
      sub_214328704(v79, v109, type metadata accessor for CloudKitShareParticipant);
      return __swift_destroy_boxed_opaque_existential_1(v113);
    }

    sub_214031C4C();
    v84 = swift_allocError();
    *v85 = 0xD000000000000022;
    v85[1] = 0x800000021478D9E0;
    v85[2] = 0xD00000000000001CLL;
    v85[3] = 0x800000021478A360;
    v114 = v84;
    swift_willThrow();
  }

  sub_213FB2DF4(v111, &qword_27C9041D8, &qword_2146ED5C0);
  sub_21432887C(v108, type metadata accessor for CloudKitUserIdentity);
  (*(v112 + 8))(v37, v102);
  v86 = v107;
  v87 = v107[6];
  v88 = v107[7];
  v89 = v107[8];

  sub_213FDC6D0(v88, v89);
  v86[5] = v68;
  v86[6] = v67;
  v86[7] = v69;
  v86[8] = v70;
  *(v86 + 72) = v71;
LABEL_30:
  __swift_destroy_boxed_opaque_existential_1(v113);
  return sub_21432887C(v107, type metadata accessor for CloudKitShareParticipant);
}

uint64_t sub_214104B84(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906248, &unk_2146F4290);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA590();
  sub_2146DAA28();
  if (!v4[3])
  {
    goto LABEL_6;
  }

  v12 = v4[2];
  LOBYTE(v33) = 0;

  sub_2146DA328();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
  }

  v14 = v4[8];
  if (v14 == 1)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v33 = v4[7];
    v34 = v14;
    v35 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v15 = type metadata accessor for CloudKitShareParticipant(0);
    v16 = v15[6];
    LOBYTE(v33) = 2;
    type metadata accessor for CloudKitUserIdentity(0);
    sub_214328930(&qword_27C906250, type metadata accessor for CloudKitUserIdentity);
    sub_2146DA388();
    v17 = *(v4 + v15[7]);
    LOBYTE(v33) = 3;
    sub_2146DA338();
    v18 = *(v4 + v15[8]);
    LOBYTE(v33) = 4;
    sub_2146DA338();
    LOBYTE(v33) = *(v4 + v15[9]);
    v35 = 5;
    sub_2142EA734();
    sub_2146DA388();
    LOBYTE(v33) = *(v4 + v15[10]);
    v35 = 6;
    v19 = sub_2142EA788();
    sub_2146DA388();
    v32 = v19;
    LOBYTE(v33) = *(v4 + v15[11]);
    v35 = 7;
    v20 = sub_2142EA7DC();
    sub_2146DA388();
    v31 = v20;
    LOBYTE(v33) = *(v4 + v15[12]);
    v35 = 8;
    sub_2146DA388();
    LOBYTE(v33) = *(v4 + v15[13]);
    v35 = 9;
    sub_2146DA388();
    LOBYTE(v33) = *(v4 + v15[14]);
    v35 = 10;
    sub_2146DA388();
    v21 = (v4 + v15[15]);
    v22 = v21[1];
    v33 = *v21;
    v34 = v22;
    v35 = 11;
    sub_213FDCA18(v33, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v33, v34);
    v23 = (v4 + v15[16]);
    v24 = v23[1];
    v33 = *v23;
    v34 = v24;
    v35 = 12;
    sub_213FDCA18(v33, v24);
    sub_2146DA388();
    sub_213FDC6BC(v33, v34);
    v25 = *(v4 + v15[17]);
    LOBYTE(v33) = 13;
    sub_2146DA338();
    v26 = *(v4 + v15[18]);
    LOBYTE(v33) = 14;
    sub_2146DA338();
    v32 = v15[19];
    LOBYTE(v33) = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
    sub_2142E29C4();
    sub_2146DA388();
    v27 = (v4 + v15[20]);
    v28 = v27[1];
    v33 = *v27;
    v34 = v28;
    v35 = 16;
    sub_213FDCA18(v33, v28);
    sub_2146DA388();
    sub_213FDC6BC(v33, v34);
    v29 = *(v4 + v15[21]);
    LOBYTE(v33) = 17;
    sub_2146DA338();
    v30 = *(v4 + v15[22]);
    LOBYTE(v33) = 18;
    sub_2146DA338();
    LOBYTE(v33) = *(v4 + v15[23]);
    v35 = 19;
    sub_2142EA830();
    sub_2146DA388();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

void *sub_2141052B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = *(a1 + 144);
  *(a9 + 128) = *(a1 + 128);
  *(a9 + 144) = v20;
  *(a9 + 160) = *(a1 + 160);
  v21 = *(a1 + 80);
  *(a9 + 64) = *(a1 + 64);
  *(a9 + 80) = v21;
  v22 = *(a1 + 112);
  *(a9 + 96) = *(a1 + 96);
  *(a9 + 112) = v22;
  v23 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v23;
  v24 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v24;
  v25 = type metadata accessor for CloudKitUserIdentity(0);
  sub_21408AC04(a2, a9 + v25[5], &qword_27C917510, &unk_214757860);
  result = memcpy((a9 + v25[6]), a3, 0x110uLL);
  *(a9 + v25[7]) = a4;
  v27 = (a9 + v25[8]);
  *v27 = a5;
  v27[1] = a6;
  v28 = (a9 + v25[9]);
  *v28 = a7;
  v28[1] = a8;
  *(a9 + v25[10]) = a10;
  *(a9 + v25[11]) = a11;
  v29 = (a9 + v25[12]);
  *v29 = a12;
  v29[1] = a13;
  *(a9 + v25[13]) = a14;
  return result;
}

unint64_t sub_2141053F4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000015;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000016;
    if (a1 != 5)
    {
      v7 = 0x6465686361437369;
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
    v1 = 0x6F63655272657375;
    v2 = 0x6E4970756B6F6F6CLL;
    v3 = 0xD000000000000012;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x706D6F43656D616ELL;
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

uint64_t sub_214105568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214362414(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214105590(uint64_t a1)
{
  v2 = sub_2142EA884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141055CC(uint64_t a1)
{
  v2 = sub_2142EA884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214105608@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917510, &unk_214757860);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34[-v6];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906278, &qword_2146F42A0);
  v8 = *(v47 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v47);
  v11 = &v34[-v10];
  v13 = a1[3];
  v12 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2142EA884();
  v46 = v11;
  sub_2146DAA08();
  if (!v2)
  {
    v14 = v45;
    v44 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917500, &qword_2146F42A8);
    v64 = 0;
    sub_2142EA8D8();
    sub_2146DA1C8();
    v61 = v73;
    v62 = v74;
    v63 = v75;
    v57 = v69;
    v58 = v70;
    v59 = v71;
    v60 = v72;
    v53 = v65;
    v54 = v66;
    v55 = v67;
    v56 = v68;
    v52[0] = 1;
    sub_2142EA9B0();
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917520, &qword_2146F42B0);
    v51[279] = 2;
    sub_2142EAA64();
    sub_2146DA1C8();
    memcpy(v51, v52, 0x110uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    v50 = 3;
    sub_2142E15CC();
    sub_2146DA1C8();
    v43 = v48;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v50 = 4;
    v17 = sub_2142E1278();
    sub_2146DA1C8();
    v41 = v48;
    v42 = v49;
    v50 = 5;
    sub_2146DA1C8();
    v39 = v16;
    v40 = v17;
    v18 = v48;
    v19 = v49;
    LOBYTE(v48) = 6;
    v37 = sub_2146DA178();
    v38 = v18;
    LOBYTE(v48) = 7;
    v35 = sub_2146DA178();
    v36 = v19;
    v50 = 8;
    sub_2146DA1C8();
    v21 = v48;
    v20 = v49;
    LOBYTE(v48) = 9;
    v22 = sub_2146DA1E8();
    (*(v8 + 8))(v46, v47);
    v23 = type metadata accessor for CloudKitUserIdentity(0);
    sub_21408AC04(v44, v14 + v23[5], &qword_27C917510, &unk_214757860);
    v24 = v62;
    *(v14 + 128) = v61;
    *(v14 + 144) = v24;
    *(v14 + 160) = v63;
    v25 = v58;
    *(v14 + 64) = v57;
    *(v14 + 80) = v25;
    v26 = v60;
    *(v14 + 96) = v59;
    *(v14 + 112) = v26;
    v27 = v54;
    *v14 = v53;
    *(v14 + 16) = v27;
    v28 = v56;
    *(v14 + 32) = v55;
    *(v14 + 48) = v28;
    memcpy((v14 + v23[6]), v51, 0x110uLL);
    *(v14 + v23[7]) = v43;
    v29 = (v14 + v23[8]);
    v30 = v42;
    *v29 = v41;
    v29[1] = v30;
    v31 = (v14 + v23[9]);
    v32 = v36;
    *v31 = v38;
    v31[1] = v32;
    *(v14 + v23[10]) = v37 & 1;
    *(v14 + v23[11]) = v35 & 1;
    v33 = (v14 + v23[12]);
    *v33 = v21;
    v33[1] = v20;
    *(v14 + v23[13]) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t sub_214105D28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9062B8, &qword_2146F42B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v37 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EA884();
  sub_2146DAA28();
  v11 = v3[7];
  v12 = v3[9];
  v63 = v3[8];
  v64 = v12;
  v13 = v3[3];
  v14 = v3[5];
  v59 = v3[4];
  v60 = v14;
  v15 = v3[5];
  v16 = v3[7];
  v61 = v3[6];
  v62 = v16;
  v17 = v3[1];
  v56[0] = *v3;
  v56[1] = v17;
  v18 = v3[3];
  v20 = *v3;
  v19 = v3[1];
  v57 = v3[2];
  v58 = v18;
  v21 = v3[9];
  v53 = v63;
  v54 = v21;
  v49 = v59;
  v50 = v15;
  v52 = v11;
  v51 = v61;
  v45 = v20;
  v46 = v19;
  v65 = *(v3 + 20);
  v55 = *(v3 + 20);
  v48 = v13;
  v47 = v57;
  v69 = 0;
  sub_213FB2E54(v56, v42, &qword_27C917500, &qword_2146F42A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917500, &qword_2146F42A8);
  sub_2142EAB3C();
  sub_2146DA388();
  if (v2)
  {
    v42[8] = v53;
    v42[9] = v54;
    *&v42[10] = v55;
    v42[4] = v49;
    v42[5] = v50;
    v42[6] = v51;
    v42[7] = v52;
    v42[0] = v45;
    v42[1] = v46;
    v42[2] = v47;
    v42[3] = v48;
    sub_213FB2DF4(v42, &qword_27C917500, &qword_2146F42A8);
  }

  else
  {
    v43[8] = v53;
    v43[9] = v54;
    v44 = v55;
    v43[4] = v49;
    v43[5] = v50;
    v43[6] = v51;
    v43[7] = v52;
    v43[0] = v45;
    v43[1] = v46;
    v43[2] = v47;
    v43[3] = v48;
    sub_213FB2DF4(v43, &qword_27C917500, &qword_2146F42A8);
    v22 = type metadata accessor for CloudKitUserIdentity(0);
    v23 = v22[5];
    v68 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917510, &unk_214757860);
    sub_2142EAC14();
    sub_2146DA388();
    v24 = v22[6];
    memcpy(v42, v3 + v24, sizeof(v42));
    memcpy(v41, v3 + v24, sizeof(v41));
    v67 = 2;
    sub_213FB2E54(v42, v40, &qword_27C917520, &qword_2146F42B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917520, &qword_2146F42B0);
    sub_2142EACC8();
    sub_2146DA388();
    memcpy(v40, v41, sizeof(v40));
    sub_213FB2DF4(v40, &qword_27C917520, &qword_2146F42B0);
    v38 = *(v3 + v22[7]);
    v66 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v25 = (v3 + v22[8]);
    v26 = v25[1];
    v38 = *v25;
    v39 = v26;
    v66 = 4;
    sub_213FDCA18(v38, v26);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v28 = sub_2142E1CAC();
    v37[1] = v27;
    sub_2146DA388();
    sub_213FDC6BC(v38, v39);
    v29 = (v3 + v22[9]);
    v30 = v29[1];
    v38 = *v29;
    v39 = v30;
    v66 = 5;
    sub_213FDCA18(v38, v30);
    sub_2146DA388();
    v37[0] = v28;
    sub_213FDC6BC(v38, v39);
    v32 = *(v3 + v22[10]);
    LOBYTE(v38) = 6;
    sub_2146DA338();
    v33 = *(v3 + v22[11]);
    LOBYTE(v38) = 7;
    sub_2146DA338();
    v34 = (v3 + v22[12]);
    v35 = v34[1];
    v38 = *v34;
    v39 = v35;
    v66 = 8;
    sub_213FDCA18(v38, v35);
    sub_2146DA388();
    sub_213FDC6BC(v38, v39);
    v36 = *(v3 + v22[13]);
    LOBYTE(v38) = 9;
    sub_2146DA3A8();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_214106334@<D0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_213FDCA18(a7, a8);
  sub_2144F5508(&v62);
  v14 = v62;
  v13 = v63;
  v15 = v64;
  v49 = v65;
  v16 = v66;
  sub_2144F553C(&v88);
  v17 = *(a5 + 96);
  *(&v93[7] + 7) = *(a5 + 112);
  v18 = *(a5 + 144);
  *(&v93[8] + 7) = *(a5 + 128);
  *(&v93[9] + 7) = v18;
  v19 = *(a5 + 32);
  *(&v93[3] + 7) = *(a5 + 48);
  v20 = *(a5 + 80);
  *(&v93[4] + 7) = *(a5 + 64);
  *(&v93[5] + 7) = v20;
  *(&v93[6] + 7) = v17;
  v21 = *(a5 + 16);
  *(v93 + 7) = *a5;
  *(&v93[1] + 7) = v21;
  v53 = v89;
  v59 = v88;
  v60 = v90;
  v61 = v91;
  *(&v93[10] + 7) = *(a5 + 160);
  *(&v93[2] + 7) = v19;
  v54 = v92;
  v55 = a6 & 1;
  v88 = a1;
  v89 = a2;
  v56 = v16;
  v87 = v16;
  v62 = 0xD00000000000002BLL;
  v63 = 0x800000021478DA10;
  v64 = 0xD00000000000001CLL;
  v65 = 0x800000021478A360;

  v52 = v15;
  v22 = v15;
  v23 = v49;
  sub_213FDC9D0(v22, v49);
  v24 = v96;
  v57 = v14;
  v25 = v14(&v88, &v87, &v62);
  if (v24)
  {
    v96 = v24;

    v26 = a7;
    v27 = a8;
    v28 = a7;
LABEL_7:
    sub_213FDC6BC(v26, v27);

    v29 = v54;

    v37 = v52;
    sub_213FDC6D0(v52, v49);
    v33 = v28;
    v30 = v53;
    goto LABEL_8;
  }

  v46 = a1;
  v28 = a7;
  v27 = a8;
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    v35 = swift_allocError();
    *v36 = 0xD00000000000002BLL;
    v36[1] = 0x800000021478DA10;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    v96 = v35;
    swift_willThrow();

    v26 = a7;
    goto LABEL_7;
  }

  v96 = 0;
  sub_213FDC6D0(v52, v49);

  sub_213FDC6D0(v52, v49);
  v88 = a3;
  v89 = a4;
  v29 = v54;
  v87 = v54;
  v62 = 0xD00000000000002ALL;
  v63 = 0x800000021478DA40;
  v64 = 0xD00000000000001CLL;
  v65 = 0x800000021478A360;
  v30 = v53;

  sub_213FDC9D0(v60, v61);
  v31 = v96;
  v32 = v59(&v88, &v87, &v62);
  if (v31)
  {
    v96 = v31;

    v33 = a7;
    v34 = a7;
  }

  else
  {
    v33 = a7;
    if (v32)
    {
      v96 = 0;
      sub_213FDC6D0(v60, v61);
      sub_213FDC6BC(a7, a8);

      sub_213FDC6D0(v60, v61);
      v39 = v93[6];
      *(a9 + 185) = v93[7];
      v40 = v93[9];
      *(a9 + 201) = v93[8];
      *(a9 + 217) = v40;
      *(a9 + 232) = *(&v93[9] + 15);
      v41 = v93[2];
      *(a9 + 121) = v93[3];
      v42 = v93[5];
      *(a9 + 137) = v93[4];
      *(a9 + 153) = v42;
      *(a9 + 169) = v39;
      result = *v93;
      v43 = v93[1];
      *(a9 + 73) = v93[0];
      *(a9 + 89) = v43;
      *a9 = v57;
      *(a9 + 8) = v13;
      *(a9 + 16) = v46;
      *(a9 + 24) = a2;
      *(a9 + 32) = v16;
      *(a9 + 40) = v59;
      *(a9 + 48) = v53;
      *(a9 + 56) = a3;
      *(a9 + 64) = a4;
      *(a9 + 72) = v54;
      *(a9 + 105) = v41;
      *(a9 + 248) = v55;
      *(a9 + 256) = a7;
      *(a9 + 264) = a8;
      return result;
    }

    sub_214031C4C();
    v44 = swift_allocError();
    *v45 = 0xD00000000000002ALL;
    v45[1] = 0x800000021478DA40;
    v45[2] = 0xD00000000000001CLL;
    v45[3] = 0x800000021478A360;
    v96 = v44;
    swift_willThrow();

    v34 = a7;
  }

  sub_213FDC6BC(v34, a8);

  v37 = v46;

  sub_213FDC6D0(v60, v61);
  v23 = a2;
LABEL_8:
  v62 = v57;
  v63 = v13;
  v64 = v37;
  v65 = v23;
  v66 = v56;
  *v67 = v95[0];
  *&v67[3] = *(v95 + 3);
  v68 = v59;
  v69 = v30;
  v70 = v60;
  v71 = v61;
  v72 = v29;
  v75 = v93[2];
  v74 = v93[1];
  v73 = v93[0];
  v79 = v93[6];
  v78 = v93[5];
  v77 = v93[4];
  v76 = v93[3];
  *&v82[15] = *(&v93[9] + 15);
  *v82 = v93[9];
  v81 = v93[8];
  v80 = v93[7];
  v83 = v55;
  *v84 = v94[0];
  *&v84[3] = *(v94 + 3);
  v85 = v33;
  v86 = v27;
  sub_2142EADA0(&v62);
  return result;
}

uint64_t sub_2141068D4()
{
  v1 = *v0;
  v2 = 0x6464416C69616D65;
  v3 = 0x6F63655272657375;
  v4 = 0xD00000000000001BLL;
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
    v2 = 0x6D754E656E6F6870;
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

uint64_t sub_214106994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436275C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141069BC(uint64_t a1)
{
  v2 = sub_2142EADF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141069F8(uint64_t a1)
{
  v2 = sub_2142EADF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214106A34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9062F0, &qword_2146F42C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v114 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142EADF4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v114);
  }

  v57 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v58[0]) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v56 = v6;
  v12 = v60;
  v13 = v61;
  LOBYTE(v58[0]) = 1;
  sub_2146DA1C8();
  v55 = v12;
  v14 = v13;
  v15 = v60;
  v16 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917500, &qword_2146F42A8);
  v100 = 2;
  sub_2142EA8D8();
  sub_2146DA1C8();
  v98 = v110;
  v99 = v111;
  v93 = v105;
  v94 = v106;
  v96 = v108;
  v97 = v109;
  v95 = v107;
  v89 = v101;
  v90 = v102;
  v91 = v103;
  v92 = v104;
  LOBYTE(v60) = 3;
  LODWORD(v13) = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v86 = 4;
  sub_2142E1278();
  sub_2146DA1C8();
  v40 = v15;
  v18 = v87;
  LODWORD(v46) = v13;
  v19 = v88;
  sub_213FB2E54(&v89, &v60, &qword_27C917500, &qword_2146F42A8);
  v44 = v19;
  v45 = v18;
  sub_213FDCA18(v18, v19);
  sub_2144F5508(&v60);
  v20 = v61;
  v53 = v62;
  v54 = v60;
  v52 = v63;
  LODWORD(v15) = v64;
  sub_2144F553C(v58);
  *&v85[119] = v96;
  *&v85[135] = v97;
  *&v85[151] = v98;
  *&v85[55] = v92;
  *&v85[71] = v93;
  *&v85[87] = v94;
  *&v85[103] = v95;
  *&v85[7] = v89;
  *&v85[23] = v90;
  v47 = v58[0];
  v50 = v58[2];
  v51 = v58[1];
  v49 = v58[3];
  v48 = LOBYTE(v58[4]);
  *&v85[167] = v99;
  *&v85[39] = v91;
  v42 = v15;
  v43 = v46 & 1;
  v58[0] = v55;
  v58[1] = v14;
  v41 = v14;
  LOBYTE(v59[0]) = v15;
  v60 = 0xD00000000000002BLL;
  v61 = 0x800000021478DA10;
  v62 = 0xD00000000000001CLL;
  v63 = 0x800000021478A360;

  sub_213FDC9D0(v53, v52);
  v46 = v20;
  v21 = v54(v58, v59, &v60);
  v39 = 0x800000021478A360;
  if (v21)
  {
    v23 = v52;
    v22 = v53;
    sub_213FDC6D0(v53, v52);
    v41 = 0x800000021478DA10;
    v24 = v39;

    sub_213FDC6D0(v22, v23);
    v59[0] = v40;
    v59[1] = v16;
    LOBYTE(v58[0]) = v48;
    v60 = 0xD00000000000002ALL;
    v61 = 0x800000021478DA40;
    v53 = 0x800000021478DA40;
    v62 = 0xD00000000000001CLL;
    v63 = v24;

    sub_213FDC9D0(v50, v49);
    v25 = v47(v59, v58, &v60);
    v32 = v53;
    if (v25)
    {
      v33 = v49;
      sub_213FDC6D0(v50, v49);

      sub_213FDC6BC(v45, v44);
      sub_213FB2DF4(&v89, &qword_27C917500, &qword_2146F42A8);
      (*(v56 + 8))(v9, v5);

      sub_213FDC6D0(v50, v33);
      *(&v58[23] + 1) = *&v85[112];
      *(&v58[25] + 1) = *&v85[128];
      *(&v58[27] + 1) = *&v85[144];
      *&v58[29] = *&v85[159];
      *(&v58[15] + 1) = *&v85[48];
      *(&v58[17] + 1) = *&v85[64];
      *(&v58[19] + 1) = *&v85[80];
      *(&v58[21] + 1) = *&v85[96];
      *(&v58[9] + 1) = *v85;
      *(&v58[11] + 1) = *&v85[16];
      v34 = v54;
      v35 = v55;
      v36 = v46;
      v58[0] = v54;
      v58[1] = v46;
      v58[2] = v55;
      v58[3] = v14;
      LOBYTE(v33) = v42;
      LOBYTE(v58[4]) = v42;
      v58[5] = v47;
      v58[6] = v51;
      v58[7] = v40;
      v58[8] = v16;
      LOBYTE(v58[9]) = v48;
      *(&v58[13] + 1) = *&v85[32];
      LOBYTE(v58[31]) = v43;
      *(&v58[31] + 1) = *v112;
      HIDWORD(v58[31]) = *&v112[3];
      v58[32] = v45;
      v58[33] = v44;
      memcpy(v57, v58, 0x110uLL);
      sub_2142EAE48(v58, &v60);
      __swift_destroy_boxed_opaque_existential_1(v114);
      v60 = v34;
      v61 = v36;
      v62 = v35;
      v63 = v14;
      v64 = v33;
      *v65 = v113[0];
      *&v65[3] = *(v113 + 3);
      v66 = v47;
      v67 = v51;
      v68 = v40;
      v69 = v16;
      v70 = v48;
      v71 = *v85;
      v72 = *&v85[16];
      v73 = *&v85[32];
      v77 = *&v85[96];
      v76 = *&v85[80];
      v75 = *&v85[64];
      v74 = *&v85[48];
      *&v80[15] = *&v85[159];
      *v80 = *&v85[144];
      v79 = *&v85[128];
      v78 = *&v85[112];
      v81 = v43;
      *v82 = *v112;
      *&v82[3] = *&v112[3];
      v83 = v45;
      v84 = v44;
      return sub_2142EADA0(&v60);
    }

    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD00000000000002ALL;
    v37[1] = v32;
    v38 = v39;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = v38;
    swift_willThrow();

    v29 = v44;
    v28 = v45;
    sub_213FDC6BC(v45, v44);
    sub_213FB2DF4(&v89, &qword_27C917500, &qword_2146F42A8);
    (*(v56 + 8))(v9, v5);

    sub_213FDC6D0(v50, v49);
    v31 = v55;
    v30 = v46;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD00000000000002BLL;
    v26[1] = 0x800000021478DA10;
    v27 = v39;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = v27;
    swift_willThrow();

    v29 = v44;
    v28 = v45;
    sub_213FDC6BC(v45, v44);
    sub_213FB2DF4(&v89, &qword_27C917500, &qword_2146F42A8);
    (*(v56 + 8))(v9, v5);
    v30 = v46;

    v14 = v52;
    v31 = v53;
    sub_213FDC6D0(v53, v52);
  }

  __swift_destroy_boxed_opaque_existential_1(v114);
  v60 = v54;
  v61 = v30;
  v62 = v31;
  v63 = v14;
  v64 = v42;
  *v65 = v113[0];
  *&v65[3] = *(v113 + 3);
  v66 = v47;
  v67 = v51;
  v68 = v50;
  v69 = v49;
  v70 = v48;
  v71 = *v85;
  v72 = *&v85[16];
  v73 = *&v85[32];
  v77 = *&v85[96];
  v76 = *&v85[80];
  v75 = *&v85[64];
  v74 = *&v85[48];
  *&v80[15] = *&v85[159];
  *v80 = *&v85[144];
  v79 = *&v85[128];
  v78 = *&v85[112];
  v81 = v43;
  *v82 = *v112;
  *&v82[3] = *&v112[3];
  v83 = v28;
  v84 = v29;
  return sub_2142EADA0(&v60);
}

uint64_t sub_2141073E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906300, &qword_2146F42C8);
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 64);
  v23 = *(v1 + 56);
  v24 = v7;
  v22 = v9;
  v10 = *(v1 + 224);
  v51 = *(v1 + 208);
  v52 = v10;
  v53 = *(v1 + 240);
  v11 = *(v1 + 160);
  v47 = *(v1 + 144);
  v48 = v11;
  v12 = *(v1 + 192);
  v49 = *(v1 + 176);
  v50 = v12;
  v13 = *(v1 + 96);
  v43 = *(v1 + 80);
  v44 = v13;
  v14 = *(v1 + 128);
  v45 = *(v1 + 112);
  v46 = v14;
  v21 = *(v1 + 248);
  v15 = *(v1 + 256);
  v19 = *(v1 + 264);
  v20 = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EADF4();
  sub_2146DAA28();
  if (v8 != 1)
  {
    *&v32 = v24;
    *(&v32 + 1) = v8;
    LOBYTE(v29[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v17 = v25;
    sub_2146DA388();
    if (v17)
    {
      return (*(v54 + 8))(v6, v3);
    }

    if (v22 != 1)
    {
      *&v32 = v23;
      *(&v32 + 1) = v22;
      LOBYTE(v29[0]) = 1;
      sub_2146DA388();
      v40 = v51;
      v41 = v52;
      v42 = v53;
      v36 = v47;
      v37 = v48;
      v38 = v49;
      v39 = v50;
      v32 = v43;
      v33 = v44;
      v34 = v45;
      v35 = v46;
      v31 = 2;
      sub_213FB2E54(&v43, v29, &qword_27C917500, &qword_2146F42A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917500, &qword_2146F42A8);
      sub_2142EAB3C();
      sub_2146DA388();
      v29[7] = v39;
      v29[8] = v40;
      v29[9] = v41;
      v30 = v42;
      v29[4] = v36;
      v29[5] = v37;
      v29[6] = v38;
      v29[0] = v32;
      v29[1] = v33;
      v29[2] = v34;
      v29[3] = v35;
      sub_213FB2DF4(v29, &qword_27C917500, &qword_2146F42A8);
      LOBYTE(v27) = 3;
      sub_2146DA338();
      v27 = v20;
      v28 = v19;
      v26 = 4;
      sub_213FDCA18(v20, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
      sub_2142E1CAC();
      sub_2146DA388();
      sub_213FDC6BC(v27, v28);
      return (*(v54 + 8))(v6, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214107828@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, unint64_t a6@<X5>, uint64_t (*a7)(void, void, void)@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_2144F57F0(&v61);
  v12 = v61;
  v13 = v62;
  v14 = v64;
  v40 = v63;
  v15 = v65;
  sub_2144F5948(&v90);
  v59 = v90;
  v99 = v91;
  v41 = v92;
  v58 = v93;
  v60 = v94;
  sub_2144F5AA0(v88);
  v56 = v88[0];
  v57 = v88[1];
  v42 = v88[2];
  v55 = v88[3];
  v50 = v89;
  sub_2144F5BB4(v86);
  v46 = v86[0];
  v51 = v86[2];
  v52 = v86[3];
  v53 = v86[1];
  v47 = v87;
  v90 = a1;
  v91 = a2;
  v45 = v15;
  LOBYTE(v88[0]) = v15;
  v61 = 0xD00000000000001BLL;
  v62 = 0x800000021478DA70;
  v63 = 0xD00000000000001CLL;
  v64 = 0x800000021478A360;

  v16 = v43;
  v44 = v12;
  v17 = v12(&v90, v88, &v61);
  if (v16)
  {

    v18 = v46;
    v19 = v13;
LABEL_6:
    v20 = v58;

    a1 = v40;
    v24 = v47;
    v22 = v50;
LABEL_7:
    v25 = v55;
    v27 = v41;
    v26 = v42;
LABEL_8:
    v61 = v44;
    v62 = v19;
    v63 = a1;
    v64 = v14;
    v65 = v45;
    *v66 = v98[0];
    *&v66[3] = *(v98 + 3);
    v67 = v59;
    v68 = v99;
    v69 = v27;
    v70 = v20;
    v71 = v60;
    *v72 = *v97;
    *&v72[3] = *&v97[3];
    v73 = v56;
    v74 = v57;
    v75 = v26;
    v76 = v25;
    v77 = v22;
    *&v78[3] = *&v96[3];
    *v78 = *v96;
    v79 = v18;
    v80 = v53;
    v81 = v51;
    v82 = v52;
    v83 = v24;
    *v84 = v95[0];
    *&v84[3] = *(v95 + 3);
    v85 = a10;
    return sub_2142EAEA4(&v61);
  }

  v35 = a2;
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD00000000000001BLL;
    v23[1] = 0x800000021478DA70;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    v18 = v46;
    v19 = v13;
    goto LABEL_6;
  }

  v19 = v13;

  v20 = a4;
  v90 = a3;
  v91 = a4;
  LOBYTE(v88[0]) = v60;
  v61 = 0xD000000000000019;
  v62 = 0x800000021478DA90;
  v63 = 0xD00000000000001CLL;
  v64 = 0x800000021478A360;

  v21 = v59(&v90, v88, &v61);
  v22 = v50;
  if ((v21 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD000000000000019;
    v30[1] = 0x800000021478DA90;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    v18 = v46;
    v14 = v35;
    v20 = v58;

    v24 = v47;
    goto LABEL_7;
  }

  v90 = a5;
  v91 = a6;
  LOBYTE(v88[0]) = v50;
  v61 = 0xD00000000000001ALL;
  v62 = 0x800000021478DAB0;
  v63 = 0xD00000000000001CLL;
  v64 = 0x800000021478A360;

  v29 = v56(&v90, v88, &v61);
  if ((v29 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD00000000000001ALL;
    v32[1] = 0x800000021478DAB0;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    v18 = v46;
    v25 = v55;

    v14 = v35;
    v27 = a3;
    v24 = v47;
    v26 = v42;
    goto LABEL_8;
  }

  v90 = a7;
  v91 = a8;
  v24 = v47;
  LOBYTE(v88[0]) = v47;
  v61 = 0xD000000000000022;
  v62 = 0x800000021478DAD0;
  v63 = 0xD00000000000001CLL;
  v64 = 0x800000021478A360;

  sub_213FDC9D0(v51, v52);
  v31 = v46(&v90, v88, &v61);
  v18 = v46;
  v22 = v50;
  if ((v31 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD000000000000022;
    v34[1] = 0x800000021478DAD0;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v51, v52);
    v14 = v35;
    v27 = a3;
    v20 = a4;
    v26 = a5;
    v25 = a6;
    goto LABEL_8;
  }

  sub_213FDC6D0(v51, v52);

  result = sub_213FDC6D0(v51, v52);
  *a9 = v44;
  *(a9 + 8) = v13;
  *(a9 + 16) = a1;
  *(a9 + 24) = v35;
  *(a9 + 32) = v45;
  *(a9 + 33) = v98[0];
  *(a9 + 36) = *(v98 + 3);
  v33 = v99;
  *(a9 + 40) = v59;
  *(a9 + 48) = v33;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v60;
  *(a9 + 73) = *v97;
  *(a9 + 76) = *&v97[3];
  *(a9 + 80) = v56;
  *(a9 + 88) = v57;
  *(a9 + 96) = a5;
  *(a9 + 104) = a6;
  *(a9 + 112) = v50;
  *(a9 + 116) = *&v96[3];
  *(a9 + 113) = *v96;
  *(a9 + 120) = v46;
  *(a9 + 128) = v53;
  *(a9 + 136) = a7;
  *(a9 + 144) = a8;
  *(a9 + 152) = v47;
  *(a9 + 156) = *(v95 + 3);
  *(a9 + 153) = v95[0];
  *(a9 + 160) = a10;
  return result;
}

uint64_t sub_214108000()
{
  v1 = *v0;
  v2 = 0x614E64726F636572;
  v3 = 0x6D614E72656E776FLL;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x6573616261746164;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D614E656E6F7ALL;
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

uint64_t sub_2141080B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214362924(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141080DC(uint64_t a1)
{
  v2 = sub_2142EAEF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214108118(uint64_t a1)
{
  v2 = sub_2142EAEF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214108154@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906308, &qword_2146F42D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v65 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v141 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142EAEF8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v141);
  }

  v12 = v6;
  LOBYTE(v106) = 0;
  v13 = sub_2146DA168();
  v15 = v14;
  v94 = v13;
  LOBYTE(v106) = 1;
  v17 = v5;
  v16 = sub_2146DA168();
  v19 = v18;
  v93 = v16;
  LOBYTE(v106) = 2;
  *&v92 = sub_2146DA168();
  *(&v92 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v95) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v91 = v19;
  v90 = *(&v106 + 1);
  v22 = v106;
  v136 = 4;
  v23 = sub_2146DA1A8();
  v67 = v22;
  v72 = v17;
  v73 = v23;
  sub_2144F57F0(&v106);
  v89 = v106;
  v68 = v107;
  v88 = v108;
  v24 = v109;
  sub_2144F5948(&v95);
  v87 = *(&v95 + 1);
  v81 = v95;
  v85 = *(&v96 + 1);
  v69 = v96;
  v86 = v97;
  sub_2144F5AA0(&v131);
  v82 = v131;
  v84 = v132;
  v70 = v133;
  v80 = v134;
  v83 = v135;
  sub_2144F5BB4(v129);
  v75 = v129[0];
  v77 = v129[2];
  v78 = v129[3];
  v79 = v129[1];
  v76 = v130;
  *&v95 = v94;
  *(&v95 + 1) = v15;
  v74 = v24;
  LOBYTE(v131) = v24;
  *&v106 = 0xD00000000000001BLL;
  *(&v106 + 1) = 0x800000021478DA70;
  v71 = 0x800000021478DA70;
  v107 = 0xD00000000000001CLL;
  v108 = 0x800000021478A360;

  v25 = (v89)(&v95, &v131, &v106);
  v66 = 0x800000021478A360;
  v26 = v91;
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    v32 = v71;
    *v33 = 0xD00000000000001BLL;
    v33[1] = v32;
    v34 = v66;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = v34;
    swift_willThrow();

    v31 = v81;

    (*(v12 + 8))(v9, v72);
    v35 = v88;

    v36 = *(&v89 + 1);

    v94 = v68;
    v37 = v70;
    v38 = v85;
LABEL_8:
    v39 = v69;
    v40 = v80;
    goto LABEL_9;
  }

  v27 = v66;
  v68 = 0;

  *&v95 = v93;
  *(&v95 + 1) = v26;
  LOBYTE(v131) = v86;
  *&v106 = 0xD000000000000019;
  *(&v106 + 1) = 0x800000021478DA90;
  v107 = 0xD00000000000001CLL;
  v108 = v27;

  v28 = v68;
  v29 = v81;
  v30 = v81(&v95, &v131, &v106);
  v31 = v29;
  if (v28)
  {

LABEL_15:

    (*(v12 + 8))(v9, v72);
    v38 = v85;

    v35 = v15;
    v36 = *(&v89 + 1);
    v37 = v70;
    goto LABEL_8;
  }

  v68 = 0;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v44 = 0xD000000000000019;
    v44[1] = 0x800000021478DA90;
    v45 = v66;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = v45;
    swift_willThrow();

    goto LABEL_15;
  }

  v41 = v66;

  v95 = v92;
  LOBYTE(v131) = v83;
  v88 = 0xD00000000000001ALL;
  *&v106 = 0xD00000000000001ALL;
  *(&v106 + 1) = 0x800000021478DAB0;
  v107 = 0xD00000000000001CLL;
  v108 = v41;

  v42 = v68;
  v43 = v82(&v95, &v131, &v106);
  if (v42)
  {

LABEL_19:

    (*(v12 + 8))(v9, v72);
    v49 = v80;

    v35 = v15;
    v39 = v93;
    v38 = v91;
    v40 = v49;
    v31 = v81;
    v36 = *(&v89 + 1);
    v37 = v70;
    goto LABEL_9;
  }

  if ((v43 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v48 = v88;
    v48[1] = 0x800000021478DAB0;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = v66;
    swift_willThrow();
    goto LABEL_19;
  }

  v46 = v66;

  v131 = v67;
  v132 = v90;
  LOBYTE(v95) = v76;
  *&v106 = 0xD000000000000022;
  *(&v106 + 1) = 0x800000021478DAD0;
  v107 = 0xD00000000000001CLL;
  v108 = v46;

  sub_213FDC9D0(v77, v78);
  v47 = v75(&v131, &v95, &v106);
  if (v47)
  {
    v51 = v77;
    v50 = v78;
    sub_213FDC6D0(v77, v78);

    (*(v12 + 8))(v9, v72);
    v52 = v79;

    sub_213FDC6D0(v51, v50);
    v95 = v89;
    *&v96 = v94;
    *(&v96 + 1) = v15;
    LOBYTE(v97) = v74;
    *(&v97 + 1) = v140[0];
    DWORD1(v97) = *(v140 + 3);
    *(&v97 + 1) = v81;
    *&v98 = v87;
    v54 = v91;
    v53 = v92;
    *(&v98 + 1) = v93;
    *&v99 = v91;
    BYTE8(v99) = v86;
    *(&v99 + 9) = *v139;
    HIDWORD(v99) = *&v139[3];
    *&v100 = v82;
    *(&v100 + 1) = v84;
    v101 = v92;
    LOBYTE(v102) = v83;
    *(&v102 + 1) = *v138;
    DWORD1(v102) = *&v138[3];
    *(&v102 + 1) = v75;
    *&v103 = v52;
    *(&v103 + 1) = v67;
    *&v104 = v90;
    BYTE8(v104) = v76;
    HIDWORD(v104) = *&v137[3];
    *(&v104 + 9) = *v137;
    v55 = v73;
    v105 = v73;
    v56 = v103;
    v57 = v104;
    *(a2 + 160) = v73;
    *(a2 + 128) = v56;
    *(a2 + 144) = v57;
    v58 = v96;
    *a2 = v95;
    *(a2 + 16) = v58;
    v59 = v97;
    v60 = v98;
    v61 = v102;
    *(a2 + 96) = v101;
    *(a2 + 112) = v61;
    v62 = v100;
    *(a2 + 64) = v99;
    *(a2 + 80) = v62;
    *(a2 + 32) = v59;
    *(a2 + 48) = v60;
    sub_2142EAF4C(&v95, &v106);
    __swift_destroy_boxed_opaque_existential_1(v141);
    v106 = v89;
    v107 = v94;
    v108 = v15;
    v109 = v74;
    *v110 = v140[0];
    *&v110[3] = *(v140 + 3);
    v111 = v81;
    v112 = v87;
    v113 = v93;
    v114 = v54;
    v115 = v86;
    *v116 = *v139;
    *&v116[3] = *&v139[3];
    v117 = v82;
    v118 = v84;
    v119 = __PAIR128__(*(&v92 + 1), v53);
    v120 = v83;
    *&v121[3] = *&v138[3];
    *v121 = *v138;
    v122 = v75;
    v123 = v79;
    v124 = v67;
    v125 = v90;
    v126 = v76;
    *&v127[3] = *&v137[3];
    *v127 = *v137;
    v128 = v55;
    return sub_2142EAEA4(&v106);
  }

  sub_214031C4C();
  swift_allocError();
  *v63 = 0xD000000000000022;
  v63[1] = 0x800000021478DAD0;
  v64 = v66;
  v63[2] = 0xD00000000000001CLL;
  v63[3] = v64;
  swift_willThrow();

  (*(v12 + 8))(v9, v72);

  sub_213FDC6D0(v77, v78);
  v35 = v15;
  v40 = *(&v92 + 1);
  v39 = v93;
  v38 = v91;
  v37 = v92;
  v31 = v81;
  v36 = *(&v89 + 1);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v141);
  *&v106 = v89;
  *(&v106 + 1) = v36;
  v107 = v94;
  v108 = v35;
  v109 = v74;
  *v110 = v140[0];
  *&v110[3] = *(v140 + 3);
  v111 = v31;
  v112 = v87;
  v113 = v39;
  v114 = v38;
  v115 = v86;
  *v116 = *v139;
  *&v116[3] = *&v139[3];
  v117 = v82;
  v118 = v84;
  *&v119 = v37;
  *(&v119 + 1) = v40;
  v120 = v83;
  *&v121[3] = *&v138[3];
  *v121 = *v138;
  v122 = v75;
  v123 = v79;
  v124 = v77;
  v125 = v78;
  v126 = v76;
  *&v127[3] = *&v137[3];
  *v127 = *v137;
  v128 = v73;
  return sub_2142EAEA4(&v106);
}

uint64_t sub_214108D40(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906318, &qword_2146F42D8);
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[8];
  v20 = v1[7];
  v21 = v10;
  v11 = v1[12];
  v22 = v1[13];
  v12 = v1[18];
  v18 = v1[17];
  v19 = v11;
  v16 = v1[20];
  v17 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EAEF8();
  sub_2146DAA28();
  if (!v8)
  {
    goto LABEL_9;
  }

  LOBYTE(v24) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v23 + 8))(v7, v4);
  }

  if (!v21)
  {
    goto LABEL_9;
  }

  LOBYTE(v24) = 1;

  sub_2146DA328();
  v14 = v22;

  if (v14 && (LOBYTE(v24) = 2, , sub_2146DA328(), , v17 != 1))
  {
    v24 = v18;
    v25 = v17;
    v26 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    LOBYTE(v24) = 4;
    sub_2146DA368();
    return (*(v23 + 8))(v7, v4);
  }

  else
  {
LABEL_9:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

__n128 sub_214109090@<Q0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[2] = sub_214059908;
  v9[3] = 0;
  v9[4] = 0x100000;
  v9[5] = sub_21403C354;
  v9[6] = 0;
  *(v8 + 16) = sub_2142EAFA8;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_214042CD0(inited, &v18);
  v10 = v19;
  v11 = v20;

  sub_213FDCA18(v10, v11);
  v12 = v22;
  sub_214032024(a2, a3, 2, 0xD000000000000017, 0x800000021478DB00, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FB54FC(a2, a3);

  v13 = v19;
  v14 = v20;
  if (v12)
  {

    sub_213FDC6BC(v10, v11);

    sub_213FDC6BC(v13, v14);
  }

  else
  {
    v16 = v21;

    sub_213FDC6BC(v10, v11);
    result = v18;
    *a4 = a1;
    *(a4 + 8) = result;
    *(a4 + 24) = v13;
    *(a4 + 32) = v14;
    *(a4 + 40) = v16;
  }

  return result;
}

uint64_t sub_2141092A8()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_2141092D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_2141093B0(uint64_t a1)
{
  v2 = sub_2142EAFAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141093EC(uint64_t a1)
{
  v2 = sub_2142EAFAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214109428@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906320, &qword_2146F42E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EAFAC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29) = 0;
  v34 = sub_2146DA218();
  v35 = 1;
  sub_21406116C();
  sub_2146DA1C8();
  v28 = v29;
  v24 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  v13[2] = sub_214059908;
  v13[3] = 0;
  v13[4] = 0x100000;
  v13[5] = sub_21403C354;
  v13[6] = 0;
  *(v12 + 16) = sub_21438F670;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  sub_214042CD0(inited, &v29);
  v15 = v31;
  v14 = v32;
  v23[1] = "BlastDoor/Untrusted.swift";
  v23[2] = ".anonymousCKUserID";
  v25 = v30;

  v26 = v14;
  v27 = v15;
  sub_213FDCA18(v15, v14);
  v16 = v28;
  v17 = v24;
  sub_214032024(v28, v24, 2, 0xD000000000000017, 0x800000021478DB00, 0xD00000000000001CLL, 0x800000021478A360);

  sub_213FB54FC(v16, v17);
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  v18 = v30;
  v20 = v31;
  v21 = v32;
  LOBYTE(v17) = v33;

  sub_213FDC6BC(v27, v26);
  *a2 = v34;
  *(a2 + 8) = v19;
  *(a2 + 16) = v18;
  *(a2 + 24) = v20;
  *(a2 + 32) = v21;
  *(a2 + 40) = v17;

  sub_213FDCA18(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_213FDC6BC(v20, v21);
}

uint64_t sub_2141097E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906330, &qword_2146F42F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 4);
  v13[0] = *(v1 + 3);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EAFAC();
  sub_2146DAA28();
  LOBYTE(v14) = 0;
  v11 = v13[1];
  sub_2146DA3D8();
  if (v11)
  {
    return (*(v4 + 8))(v7, v3);
  }

  if (v9 >> 60 != 15)
  {
    v14 = v13[0];
    v15 = v9;
    v16 = 1;
    sub_21402D9F8(v13[0], v9);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v14, v15);
    return (*(v4 + 8))(v7, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

double sub_214109A04@<D0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  v11[2] = sub_214059908;
  v11[3] = 0;
  v11[4] = 0x100000;
  v11[5] = sub_21403C354;
  v11[6] = 0;
  *(v10 + 16) = sub_21438F670;
  *(v10 + 24) = v11;
  *(inited + 32) = v10;
  sub_214042CD0(inited, &v21);
  v12 = v22;
  v28 = a2;
  v25 = v21;
  v26 = v22;
  v27 = v23;

  sub_213FDCA18(v12, *(&v12 + 1));
  sub_214032024(a3, a4, 2, 0xD000000000000019, 0x800000021478DB20, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FB54FC(a3, a4);

  if (v19)
  {
    v13 = v26;
    v14 = v27;

    sub_213FDC6BC(v12, *(&v12 + 1));
    *&v21 = __PAIR64__(v28, a1);
    BYTE8(v21) = BYTE4(a2) & 1;
    v22 = v25;
    v23 = v13;
    v24 = v14;
    sub_2142EB000(&v21);
  }

  else
  {
    v16 = v26;
    v17 = v27;

    sub_213FDC6BC(v12, *(&v12 + 1));
    v18 = v28;
    *a5 = a1;
    *(a5 + 4) = v18;
    *(a5 + 8) = BYTE4(a2) & 1;
    result = *&v25;
    *(a5 + 16) = v25;
    *(a5 + 32) = v16;
    *(a5 + 48) = v17;
  }

  return result;
}

uint64_t sub_214109C6C()
{
  v1 = 0x54676E6972616873;
  if (*v0 != 1)
  {
    v1 = 0x6174614479656BLL;
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

uint64_t sub_214109CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214362AF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214109CF0(uint64_t a1)
{
  v2 = sub_2142EB054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214109D2C(uint64_t a1)
{
  v2 = sub_2142EB054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214109D68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906338, &qword_2146F42F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB054();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36) = 0;
  v31 = sub_2146DA218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v32) = 1;
  sub_2142E6128();
  sub_2146DA1C8();
  v11 = v36;
  v12 = BYTE4(v36);
  v46 = 2;
  sub_21406116C();
  sub_2146DA1C8();
  v27 = v11;
  v28 = v12;
  v30 = v44;
  v29 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  v15[2] = sub_214059908;
  v15[3] = 0;
  v15[4] = 0x100000;
  v15[5] = sub_21403C354;
  v15[6] = 0;
  *(v14 + 16) = sub_21438F670;
  *(v14 + 24) = v15;
  *(inited + 32) = v14;
  sub_214042CD0(inited, &v36);
  v16 = v37;
  v41 = v36;
  v42 = v37;
  v43 = v38;
  v24[1] = *(&v36 + 1);

  v25 = v16 >> 64;
  v26 = v16;
  sub_213FDCA18(v16, *(&v16 + 1));
  sub_214032024(v30, v29, 2, 0xD000000000000019, 0x800000021478DB20, 0xD00000000000001CLL, 0x800000021478A360);

  sub_213FB54FC(v30, v29);
  (*(v6 + 8))(v9, v5);
  v17 = v41;
  v30 = v41;
  v29 = *(&v42 + 1);
  v18 = v42;
  LOBYTE(v11) = v43;

  sub_213FDC6BC(v26, v25);
  v19 = v31;
  *&v32 = __PAIR64__(v27, v31);
  v20 = v27;
  BYTE8(v32) = v28;
  v33 = v17;
  *&v34 = v18;
  v21 = v29;
  *(&v34 + 1) = v29;
  v35 = v11;
  *(a2 + 48) = v11;
  v22 = v33;
  *a2 = v32;
  *(a2 + 16) = v22;
  *(a2 + 32) = v34;
  sub_2142EB0A8(&v32, &v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v36 = __PAIR64__(v20, v19);
  BYTE8(v36) = v28;
  *&v37 = v30;
  *(&v37 + 1) = *(&v17 + 1);
  v38 = v18;
  v39 = v21;
  v40 = v11;
  return sub_2142EB000(&v36);
}

uint64_t sub_21410A2B4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906348, &qword_2146F4300);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v21 = v1[1];
  v18 = *(v1 + 8);
  v10 = *(v1 + 4);
  v16 = *(v1 + 5);
  v17 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB054();
  sub_2146DAA28();
  LOBYTE(v19) = 0;
  sub_2146DA3D8();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v12 = v16;
  v13 = v17;
  LODWORD(v19) = v21;
  BYTE4(v19) = v18;
  v22 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  sub_2146DA388();
  if (v12 >> 60 != 15)
  {
    v19 = v13;
    v20 = v12;
    v22 = 2;
    sub_21402D9F8(v13, v12);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v19, v20);
    return (*(v5 + 8))(v8, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

double sub_21410A53C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1[1];
  v33 = *a1;
  v34 = v9;
  v35 = a1[2];
  LOBYTE(v36) = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = sub_214059908;
  v12[3] = 0;
  v12[4] = 0x100000;
  v12[5] = sub_21403C354;
  v12[6] = 0;
  *(v11 + 16) = sub_21438F670;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  sub_214042CD0(inited, &v21);
  v13 = v22;
  v37 = a4;
  v30 = v21;
  v31 = v22;
  v32 = v23;

  sub_213FDCA18(v13, *(&v13 + 1));
  sub_214032024(a2, a3, 2, 0xD000000000000024, 0x800000021478DB40, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FB54FC(a2, a3);

  if (v20)
  {
    v14 = v31;
    v15 = v32;

    sub_213FDC6BC(v13, *(&v13 + 1));
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v30;
    v26 = v14;
    v27 = v15;
    v28 = v37;
    v29 = BYTE4(a4) & 1;
    sub_2142EB104(&v21);
  }

  else
  {
    v17 = v31;
    v18 = v32;

    sub_213FDC6BC(v13, *(&v13 + 1));
    v19 = v34;
    *a5 = v33;
    *(a5 + 16) = v19;
    *(a5 + 32) = v35;
    *(a5 + 48) = v36;
    result = *&v30;
    *(a5 + 56) = v30;
    *(a5 + 72) = v17;
    *(a5 + 88) = v18;
    *(a5 + 92) = v37;
    *(a5 + 96) = BYTE4(a4) & 1;
  }

  return result;
}

uint64_t sub_21410A7E0()
{
  v1 = 0x4D64657070617277;
  if (*v0 != 1)
  {
    v1 = 0x7367616C66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_21410A83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214362C10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21410A864(uint64_t a1)
{
  v2 = sub_2142EB158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21410A8A0(uint64_t a1)
{
  v2 = sub_2142EB158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21410A8DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906350, &qword_2146F4308);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142EB158();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v61 = 0;
  sub_2142EB1AC();
  sub_2146DA1C8();
  v57 = v62;
  v58 = v63;
  v59 = v64;
  v60 = v65;
  LOBYTE(v39[0]) = 1;
  sub_21406116C();
  sub_2146DA1C8();
  v12 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  v54 = 2;
  sub_2142E6128();
  sub_2146DA1C8();
  v38 = *(&v12 + 1);
  v36 = v56;
  v37 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v14 = swift_allocObject();
  v31 = v6;
  v15 = v14;
  v16 = swift_allocObject();
  v16[2] = sub_214059908;
  v16[3] = 0;
  v16[4] = 0x100000;
  v16[5] = sub_21403C354;
  v16[6] = 0;
  *(v15 + 16) = sub_21438F670;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_2142EB0A8(&v57, &v42);
  sub_214042CD0(inited, &v42);
  v17 = v43;
  v66 = v57;
  v67 = v58;
  v68 = v59;
  LOBYTE(v69) = v60;
  v51 = v42;
  v52 = v43;
  v53 = v44;
  v32 = *(&v42 + 1);

  v33 = *(&v17 + 1);
  v34 = v17;
  sub_213FDCA18(v17, *(&v17 + 1));
  v35 = v12;
  sub_214032024(v12, v38, 2, 0xD000000000000024, 0x800000021478DB40, 0xD00000000000001CLL, 0x800000021478A360);
  v18 = (v31 + 8);

  sub_213FB54FC(v35, v38);
  sub_2142EB000(&v57);
  (*v18)(v9, v5);
  v19 = v51;
  v20 = v52;
  v21 = v53;
  LODWORD(v38) = v53;

  sub_213FDC6BC(v34, v33);
  v23 = v67;
  v22 = v68;
  v39[1] = v67;
  v39[2] = v68;
  v39[0] = v66;
  *v40 = v69;
  *&v40[8] = v19;
  *&v40[24] = v20;
  v40[40] = v21;
  v24 = v36;
  v25 = v37;
  *&v40[44] = v37;
  v41 = v36;
  *a2 = v66;
  *(a2 + 16) = v23;
  v26 = *v40;
  v27 = *&v40[16];
  v28 = *&v40[32];
  *(a2 + 96) = v24;
  *(a2 + 64) = v27;
  *(a2 + 80) = v28;
  *(a2 + 32) = v22;
  *(a2 + 48) = v26;
  sub_2142EB200(v39, &v42);
  __swift_destroy_boxed_opaque_existential_1(v70);
  v42 = v66;
  v43 = v67;
  v44 = v68;
  v45 = v69;
  v46 = v19;
  v47 = v20;
  v48 = v38;
  v49 = v25;
  v50 = v24;
  return sub_2142EB104(&v42);
}

uint64_t sub_21410AE60(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906368, &qword_2146F4310);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = v1[1];
  v32 = *v1;
  v33 = v8;
  v34 = v1[2];
  v35 = *(v1 + 48);
  v9 = *(v1 + 10);
  v19 = *(v1 + 9);
  v18 = *(v1 + 23);
  v17 = *(v1 + 96);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB158();
  sub_2146DAA28();
  v28 = v32;
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v27 = 0;
  sub_2142EB0A8(&v32, &v23);
  sub_2142EB25C();
  v11 = v36;
  sub_2146DA388();
  if (v11)
  {
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    sub_2142EB000(&v23);
    return (*(v4 + 8))(v7, v3);
  }

  v12 = v19;
  v13 = v17;
  v14 = v18;
  v23 = v28;
  v24 = v29;
  v25 = v30;
  v26 = v31;
  sub_2142EB000(&v23);
  if (v9 >> 60 != 15)
  {
    v21 = v12;
    v22 = v9;
    v20 = 1;
    sub_21402D9F8(v12, v9);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v21, v22);
    LODWORD(v21) = v14;
    BYTE4(v21) = v13;
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    sub_2142E62D8();
    sub_2146DA388();
    return (*(v4 + 8))(v7, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21410B1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
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

uint64_t sub_21410B26C(uint64_t a1)
{
  v2 = sub_2142EB2B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21410B2A8(uint64_t a1)
{
  v2 = sub_2142EB2B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21410B2E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906378, &qword_2146F4318);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB2B0();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906388, &qword_2146F4320);
    sub_2142EB304();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21410B464(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063A0, &qword_2146F4328);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB2B0();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906388, &qword_2146F4320);
  sub_2142EB3DC();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_21410B608@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t sub_21410B618()
{
  v1 = 0x73694C6572616873;
  if (*v0 != 1)
  {
    v1 = 0x7475626972747461;
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

uint64_t sub_21410B67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214362D2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21410B6A4(uint64_t a1)
{
  v2 = sub_2142EB4B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21410B6E0(uint64_t a1)
{
  v2 = sub_2142EB4B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21410B71C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063B8, &qword_2146F4330);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB4B4();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v17) = 0;
    v11 = sub_2146DA218();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063C8, &qword_2146F4338);
    v16 = 1;
    sub_2142EB508();
    sub_2146DA1C8();
    v13 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063E0, &qword_2146F4340);
    v16 = 2;
    sub_2142EB5E0();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v14 = v17;
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21410B950(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063F8, &qword_2146F4348);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v15 = *(v1 + 2);
  v16 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB4B4();
  sub_2146DAA28();
  LOBYTE(v18) = 0;
  sub_2146DA3D8();
  if (!v2)
  {
    v12 = v15;
    v18 = v16;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063C8, &qword_2146F4338);
    sub_2142EB6B8();
    sub_2146DA388();
    v18 = v12;
    v17 = 2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063E0, &qword_2146F4340);
    sub_2142EB790();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

__n128 sub_21410BB80@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[2] = sub_214059908;
  v8[3] = 0;
  v8[4] = 0x100000;
  v8[5] = sub_21403C354;
  v8[6] = 0;
  *(v7 + 16) = sub_21438F670;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042CD0(inited, &v40);
  v9 = v40;
  v10 = v41;
  v11 = v42;
  v12 = v43;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_2146E9BF0;
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  v15[2] = sub_214059908;
  v15[3] = 0;
  v15[4] = 0x100000;
  v15[5] = sub_21403C354;
  v15[6] = 0;
  *(v14 + 16) = sub_21438F670;
  *(v14 + 24) = v15;
  *(v13 + 32) = v14;
  sub_214042CD0(v13, v52);
  v27 = v52[0];
  v34 = v52[1];
  v35 = v52[2];
  v36 = v52[3];
  v26 = v53;
  v40 = v9;
  v41 = v10;
  v42 = v11;
  v43 = v12;

  sub_213FDCA18(v10, v11);
  sub_214032024(a1, a2, 2, 0xD00000000000001BLL, 0x800000021478DB70, 0xD00000000000001CLL, 0x800000021478A360);
  if (v31)
  {
    sub_213FB54FC(a4, a5);
    sub_213FB54FC(a1, a2);

    v32 = v40;
    v16 = v41;
    v17 = v42;
    v28 = v43;

    sub_213FDC6BC(v10, v11);
    v40 = v32;
    v41 = v16;
    v42 = v17;
    v43 = v28;
    v44 = v54;
    v45 = v55;
    v46 = v56;
    v47 = v27;
    v48 = v34;
    v49 = v35;
    v50 = v36;
    v51 = v26;
    sub_2142EB868(&v40);
  }

  else
  {

    v33 = v40;
    v23 = v41;
    v24 = v42;
    v29 = v43;

    sub_213FDC6BC(v10, v11);
    v40.n128_u64[0] = v27;
    v40.n128_u64[1] = v34;
    v41 = v35;
    v42 = v36;
    v43 = v26;

    sub_213FDCA18(v35, v36);
    sub_214032024(a4, a5, 2, 0xD00000000000001FLL, 0x800000021478DB90, 0xD00000000000001CLL, 0x800000021478A360);
    sub_213FB54FC(a4, a5);
    sub_213FB54FC(a1, a2);

    v18 = v40;
    v20 = v41;
    v19 = v42;
    v21 = v43;

    sub_213FDC6BC(v35, v36);
    result = v33;
    *a6 = v33;
    *(a6 + 16) = v23;
    *(a6 + 24) = v24;
    *(a6 + 32) = v29;
    *(a6 + 36) = v56;
    *(a6 + 40) = v18;
    *(a6 + 56) = v20;
    *(a6 + 64) = v19;
    *(a6 + 72) = v21;
  }

  return result;
}

uint64_t sub_21410BFAC()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x727574616E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646979656BLL;
  }
}

uint64_t sub_21410C000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214362E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21410C028(uint64_t a1)
{
  v2 = sub_2142EB8BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21410C064(uint64_t a1)
{
  v2 = sub_2142EB8BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21410C0A0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906420, &qword_2146F4350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142EB8BC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  v12 = v6;
  v53 = a2;
  LOBYTE(v54) = 0;
  sub_21406116C();
  sub_2146DA1C8();
  v13 = v5;
  v14 = v60;
  LOBYTE(v60) = 1;
  v15 = sub_2146DA218();
  v51 = *(&v14 + 1);
  v52 = v14;
  v50 = v15;
  v71 = 2;
  sub_2146DA1C8();
  v43 = v72;
  v44 = v73;
  *&v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *&v47[8] = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  *v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  v18[2] = sub_214059908;
  v18[3] = 0;
  v42 = sub_21403C354;
  v18[4] = 0x100000;
  v18[5] = sub_21403C354;
  v18[6] = 0;
  *(v17 + 16) = sub_21438F670;
  *(v17 + 24) = v18;
  *(inited + 32) = v17;
  sub_214042CD0(inited, &v60);
  v19 = *(&v60 + 1);
  v46 = v60;
  v20 = v62;
  v49 = v61;
  LODWORD(v45) = v63;
  v21 = swift_initStackObject();
  *(v21 + 16) = *&v47[8];
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  v23[2] = sub_214059908;
  v23[3] = 0;
  v23[4] = 0x100000;
  v23[5] = v42;
  v23[6] = 0;
  *(v22 + 16) = sub_21438F670;
  *(v22 + 24) = v23;
  *(v21 + 32) = v22;
  sub_214042CD0(v21, &v54);
  v48 = v54;
  *v47 = v55;
  v40 = v56[0];
  *&v60 = v46;
  *(&v60 + 1) = v19;
  v24 = v49;
  v61 = v49;
  v62 = v20;
  v63 = v45;
  v41 = v19;

  v42 = v20;
  sub_213FDCA18(v24, v20);
  v46 = "BlastDoor/Untrusted.swift";
  sub_214032024(v52, v51, 2, 0xD00000000000001BLL, 0x800000021478DB70, 0xD00000000000001CLL, 0x800000021478A360);
  v25 = v46;

  v45 = v60;
  v37 = v61;
  v39 = v62;
  v38 = v63;

  sub_213FDC6BC(v49, v42);
  v57 = v48;
  v26 = *v47;
  v58 = *v47;
  v59 = v40;
  v49 = *(&v48 + 1);

  sub_213FDCA18(v26, *(&v26 + 1));
  v27 = v25 | 0x8000000000000000;
  v29 = v43;
  v28 = v44;
  sub_214032024(v43, v44, 2, 0xD00000000000001FLL, 0x800000021478DB90, 0xD00000000000001CLL, v27);

  sub_213FB54FC(v52, v51);
  sub_213FB54FC(v29, v28);
  (*(v12 + 8))(v9, v13);
  v31 = v57;
  v52 = v57;
  v32 = v58;
  LOBYTE(v21) = v59;

  sub_213FDC6BC(*v47, *&v47[8]);
  v54 = v45;
  v33 = v37;
  *&v55 = v37;
  *(&v55 + 1) = v39;
  LOBYTE(v28) = v38;
  v56[0] = v38;
  *&v56[4] = v50;
  *&v56[8] = v31;
  *&v56[24] = v32;
  v56[40] = v21;
  v34 = *&v56[16];
  v35 = v53;
  v53[2] = *v56;
  v35[3] = v34;
  *(v35 + 57) = *&v56[25];
  v36 = v55;
  *v35 = v54;
  v35[1] = v36;
  sub_2142EB910(&v54, &v60);
  __swift_destroy_boxed_opaque_existential_1(v76);
  v60 = v45;
  v61 = v33;
  v62 = v39;
  v63 = v28;
  v64 = v74;
  v65 = v75;
  v66 = v50;
  v67 = v52;
  v68 = *(&v31 + 1);
  v69 = v32;
  v70 = v21;
  return sub_2142EB868(&v60);
}

uint64_t sub_21410C7E0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906430, &qword_2146F4358);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v19 = *(v1 + 36);
  v10 = *(v1 + 56);
  v14 = *(v1 + 64);
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB8BC();
  sub_2146DAA28();
  if (v8 >> 60 != 15)
  {
    v17 = v9;
    v18 = v8;
    v20 = 0;
    sub_21402D9F8(v9, v8);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v17, v18);
    if (v2)
    {
      return (*(v16 + 8))(v7, v4);
    }

    LOBYTE(v17) = 1;
    sub_2146DA3D8();
    if (v14 >> 60 != 15)
    {
      v17 = v15;
      v18 = v14;
      v20 = 2;
      sub_21402D9F8(v15, v14);
      sub_2146DA388();
      sub_213FB54FC(v17, v18);
      return (*(v16 + 8))(v7, v4);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

double sub_21410CA64@<D0>(int *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t *a11)
{
  v49 = *a1;
  v50 = *(a1 + 1);
  v51 = *(a1 + 2);
  v52 = *a4;
  v53 = *(a4 + 2);
  v54 = *(a4 + 3);
  v55 = *(a4 + 4);
  v56 = *(a4 + 5);
  v57 = *(a4 + 48);
  v58 = *a11;
  sub_21439F4F4(v93);
  v12 = v93[0];
  v13 = v93[1];
  v15 = v93[2];
  v14 = v93[3];
  v16 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  v19[2] = sub_214059908;
  v19[3] = 0;
  v19[4] = 0x100000;
  v19[5] = sub_21403C354;
  v19[6] = 0;
  *(v18 + 16) = sub_21438F670;
  *(v18 + 24) = v19;
  *(v17 + 32) = v18;
  sub_214042CD0(v17, v91);
  v62 = v91[0];
  v64 = v91[1];
  v40 = v91[2];
  v103 = v91[3];
  v63 = v92;
  sub_21439F65C(v89);
  v61 = v89[0];
  v47 = v89[2];
  v45 = v89[1];
  v46 = v89[3];
  v48 = v90;
  *&v65[64] = *(a10 + 57);
  v20 = a10[2];
  *&v65[55] = a10[3];
  *&v65[39] = v20;
  v21 = *a10;
  *&v65[23] = a10[1];
  *&v65[7] = v21;
  v101 = *&v65[48];
  v102[0] = *&v65[64];
  v99 = *&v65[16];
  v100 = *&v65[32];
  v98 = *v65;
  *v65 = v12;
  *&v65[8] = v13;
  *&v65[16] = v15;
  *&v65[24] = v14;
  v65[32] = v16;

  sub_21404F7E0(v15, v14);
  sub_214032118(a2, a3, 2, 0xD000000000000029, 0x800000021478DBB0, 0xD00000000000001CLL, 0x800000021478A360);
  if (v41)
  {
    sub_213FDC6BC(a7, a8);
    sub_213FB54FC(a5, a6);
    sub_213FDC6BC(a2, a3);

    sub_214032564(v15, v14);
    v22 = *v65;
    v23 = v65[32];
    v24 = *&v65[24];
    v25 = *&v65[16];
    *v65 = v49;
    *&v65[8] = v50;
    *&v65[16] = v51;
    *&v65[24] = v22;
    *&v65[40] = v25;
    *&v65[48] = v24;
    v65[56] = v23;
    *&v65[57] = v97[0];
    *&v65[60] = *(v97 + 3);
    *&v65[64] = v52;
    v66 = v53;
    v67 = v54;
    v68 = v55;
    v69 = v56;
    v70 = v57;
    *&v71[3] = *(v96 + 3);
    *v71 = v96[0];
    v72 = v62;
    v73 = v64;
    v74 = v40;
    v75 = v103;
    v76 = v63;
    *&v77[3] = *&v95[3];
    *v77 = *v95;
    v78 = v61;
    v79 = v45;
    v80 = v47;
    v81 = v46;
    v82 = v48;
    *v87 = v102[0];
    v84 = v99;
    v83 = v98;
    v86 = v101;
    v85 = v100;
    *&v87[15] = *(v102 + 15);
    v88 = v58;
    sub_2142EB96C(v65);
  }

  else
  {

    v42 = *v65;
    v36 = *&v65[24];
    v37 = *&v65[16];
    v35 = v65[32];

    sub_214032564(v15, v14);
    *v65 = v62;
    *&v65[8] = v64;
    v26 = v103;
    *&v65[16] = v40;
    *&v65[24] = v103;

    sub_213FDCA18(v40, v26);
    sub_214032024(a5, a6, 2, 0xD000000000000025, 0x800000021478DBE0, 0xD00000000000001CLL, 0x800000021478A360);

    v27 = *v65;
    v34 = *&v65[16];

    sub_213FDC6BC(v40, v103);
    v103 = "eProtection.signature";
    *v65 = v61;
    *&v65[8] = v45;
    *&v65[16] = v47;
    *&v65[24] = v46;

    sub_21404F7E0(v47, v46);
    sub_214032118(a7, a8, 2, 0xD000000000000027, 0x800000021478DC10, 0xD00000000000001CLL, 0x800000021478A360);
    sub_213FDC6BC(a7, a8);
    sub_213FB54FC(a5, a6);
    sub_213FDC6BC(a2, a3);

    v28 = *v65;
    v29 = *&v65[16];

    sub_214032564(v47, v46);
    *(a9 + 24) = v42;
    *(a9 + 272) = *(v102 + 15);
    v31 = v101;
    *(a9 + 257) = v102[0];
    v32 = v100;
    *(a9 + 241) = v31;
    *(a9 + 225) = v32;
    v33 = v98;
    result = *&v99;
    *(a9 + 209) = v99;
    *a9 = v49;
    *(a9 + 8) = v50;
    *(a9 + 16) = v51;
    *(a9 + 40) = v37;
    *(a9 + 48) = v36;
    *(a9 + 56) = v35;
    *(a9 + 64) = v52;
    *(a9 + 80) = v53;
    *(a9 + 88) = v54;
    *(a9 + 96) = v55;
    *(a9 + 104) = v56;
    *(a9 + 112) = v57;
    *(a9 + 120) = v27;
    *(a9 + 136) = v34;
    *(a9 + 152) = v63;
    *(a9 + 160) = v28;
    *(a9 + 176) = v29;
    *(a9 + 192) = v48;
    *(a9 + 193) = v33;
    *(a9 + 280) = v58;
  }

  return result;
}

unint64_t sub_21410D14C()
{
  v1 = *v0;
  v2 = 7561844;
  v3 = 0x6953726F68747561;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x727574616E676973;
  if (v1 != 3)
  {
    v4 = 0x654B72657473616DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574707972636E65;
  if (v1 != 1)
  {
    v5 = 0x6E676953666C6573;
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

uint64_t sub_21410D248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214362F70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21410D270(uint64_t a1)
{
  v2 = sub_2142EB9C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21410D2AC(uint64_t a1)
{
  v2 = sub_2142EB9C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21410D2E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906438, &qword_2146F4360);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v131 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142EB9C0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v131);
  }

  v78 = a2;
  LOBYTE(v79[0]) = 0;
  sub_2142EBA14();
  sub_2146DA1C8();
  v12 = v5;
  v77 = v6;
  v76 = *v80;
  v13 = *&v80[8];
  v14 = *&v80[16];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v79[0]) = 1;
  v16 = sub_2142E1278();
  sub_2146DA1C8();
  v72 = v16;
  v73 = v15;
  v74 = v14;
  v75 = v13;
  v17 = *v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906450, &qword_2146F4368);
  LOBYTE(v79[0]) = 2;
  sub_2142EBA68();
  v18 = v12;
  sub_2146DA1C8();
  v68 = v17;
  v19 = *v80;
  v20 = *&v80[16];
  v21 = *(&v81 + 1);
  v69 = v81;
  v70 = v82;
  v71 = *&v80[8];
  LODWORD(v15) = v83;
  LOBYTE(v79[0]) = 3;
  sub_21406116C();
  sub_2146DA1C8();
  v66 = v15;
  v65 = v20;
  v67 = v21;
  v22 = *v80;
  LOBYTE(v79[0]) = 4;
  sub_2146DA1C8();
  v72 = *(&v22 + 1);
  v73 = v19;
  v23 = *&v80[8];
  v64 = *v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906460, &qword_2146F4370);
  v122 = 5;
  sub_2142EBAEC();
  sub_2146DA1C8();
  v62 = v23;
  v63 = v22;
  v120 = v125;
  v121[0] = *v126;
  *(v121 + 9) = *&v126[9];
  v119 = v124;
  v118 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063E0, &qword_2146F4340);
  v116 = 6;
  sub_2142EB5E0();
  sub_2146DA1C8();
  v48 = v18;
  v50 = v117;
  sub_2142F44D4(v73, v71, v65, v69, v67, v70, v66, sub_213FDCA18);
  sub_213FB2E54(&v118, v80, &qword_27C906460, &qword_2146F4370);
  sub_21439F4F4(v80);
  v24 = *&v80[8];
  *&v51 = *v80;
  v58 = *&v80[16];
  v25 = v81;
  DWORD2(v49) = BYTE8(v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  v28[2] = sub_214059908;
  v28[3] = 0;
  v28[4] = 0x100000;
  v28[5] = sub_21403C354;
  v28[6] = 0;
  *(v27 + 16) = sub_21438F670;
  *(v27 + 24) = v28;
  *(v26 + 32) = v27;
  sub_214042CD0(v26, v79);
  v57 = *&v79[0];
  v61 = *&v79[1];
  v59 = *(&v79[0] + 1);
  v60 = *(&v79[1] + 1);
  v54 = LOBYTE(v79[2]);
  sub_21439F65C(&v111);
  *(&v115[1] + 7) = v119;
  *(&v115[2] + 7) = v120;
  *(&v115[3] + 7) = v121[0];
  v115[4] = *(v121 + 9);
  v53 = v111;
  v55 = v112;
  v56 = v113;
  v52 = v114;
  *(v115 + 7) = v118;
  *v80 = v51;
  *&v80[8] = v24;
  v29 = v58;
  *&v80[16] = v58;
  *&v81 = v25;
  BYTE8(v81) = BYTE8(v49);
  *&v49 = v24;

  *(&v49 + 1) = v25;
  sub_21404F7E0(v29, v25);
  sub_214032118(v68, *(&v68 + 1), 2, 0xD000000000000029, 0x800000021478DBB0, 0xD00000000000001CLL, 0x800000021478A360);

  v51 = *v80;
  v46 = v81;
  v47 = *&v80[16];
  v45 = BYTE8(v81);

  sub_214032564(v58, *(&v49 + 1));
  *v80 = v57;
  v30 = v60;
  *&v80[8] = v59;
  v31 = v61;
  *&v80[16] = v61;
  *&v81 = v60;
  BYTE8(v81) = v54;

  sub_213FDCA18(v31, v30);
  sub_214032024(v63, v72, 2, 0xD000000000000025, 0x800000021478DBE0, 0xD00000000000001CLL, 0x800000021478A360);
  v32 = v66;

  v49 = *&v80[8];
  v57 = *v80;
  v58 = v81;
  v54 = BYTE8(v81);

  sub_213FDC6BC(v61, v60);
  v111 = v53;
  v33 = v55;
  v34 = v56;
  v112 = v55;
  v113 = v56;
  v114 = v52;
  v61 = *(&v53 + 1);

  sub_21404F7E0(v33, v34);
  sub_214032118(v64, v62, 2, 0xD000000000000027, 0x800000021478DC10, 0xD00000000000001CLL, 0x800000021478A360);

  sub_213FB54FC(v63, v72);
  sub_213FDC6BC(v68, *(&v68 + 1));
  sub_213FDC6BC(v64, v62);
  v36 = v69;
  sub_2142F460C(v73, v71, v65, v69, v67, v70, v32, sub_213FDC6BC);
  sub_213FB2DF4(&v118, &qword_27C906460, &qword_2146F4370);
  (*(v77 + 8))(v9, v48);
  v39 = v111;
  v37 = v39 >> 64;
  v38 = v39;
  v77 = v111;
  *(&v68 + 1) = v112;
  v40 = v113;
  v72 = v113;
  LODWORD(v68) = v114;

  sub_214032564(v55, v56);
  *(&v79[16] + 1) = v115[4];
  *(&v79[12] + 1) = v115[0];
  *(&v79[15] + 1) = v115[3];
  *(&v79[14] + 1) = v115[2];
  LODWORD(v79[0]) = v76;
  *(&v79[0] + 1) = v75;
  *&v79[1] = v74;
  *(&v79[1] + 8) = v51;
  *(&v79[2] + 1) = v47;
  *&v79[3] = v46;
  BYTE8(v79[3]) = v45;
  *(&v79[3] + 9) = v130[0];
  HIDWORD(v79[3]) = *(v130 + 3);
  *&v79[4] = v73;
  *(&v79[4] + 1) = v71;
  *&v79[5] = v65;
  *(&v79[5] + 1) = v36;
  *&v79[6] = v67;
  *(&v79[6] + 1) = v70;
  LOBYTE(v79[7]) = v32;
  *(&v79[7] + 1) = *v129;
  DWORD1(v79[7]) = *&v129[3];
  v41 = v57;
  *(&v79[7] + 1) = v57;
  v79[8] = v49;
  *&v79[9] = v58;
  LOBYTE(v36) = v54;
  BYTE8(v79[9]) = v54;
  *(&v79[9] + 9) = *v128;
  HIDWORD(v79[9]) = *&v128[3];
  v79[10] = __PAIR128__(v37, v38);
  v42 = *(&v68 + 1);
  *&v79[11] = *(&v68 + 1);
  *(&v79[11] + 1) = v40;
  LOBYTE(v40) = v68;
  LOBYTE(v79[12]) = v68;
  *(&v79[13] + 1) = v115[1];
  *(&v79[17] + 1) = *v127;
  DWORD1(v79[17]) = *&v127[3];
  v43 = v50;
  *(&v79[17] + 1) = v50;
  memcpy(v78, v79, 0x120uLL);
  sub_2142EBBC4(v79, v80);
  __swift_destroy_boxed_opaque_existential_1(v131);
  v108 = v115[4];
  v81 = v51;
  v104 = v115[0];
  v107 = v115[3];
  v106 = v115[2];
  *v80 = v76;
  *&v80[8] = v75;
  *&v80[16] = v74;
  v82 = v47;
  v83 = v46;
  v84 = v45;
  *v85 = v130[0];
  *&v85[3] = *(v130 + 3);
  v86 = v73;
  v87 = v71;
  v88 = v65;
  v89 = v69;
  v90 = v67;
  v91 = v70;
  v92 = v66;
  *v93 = *v129;
  *&v93[3] = *&v129[3];
  v94 = v41;
  v95 = v49;
  v96 = v58;
  v97 = v36;
  *v98 = *v128;
  *&v98[3] = *&v128[3];
  v99 = v77;
  v100 = v37;
  v101 = v42;
  v102 = v72;
  v103 = v40;
  v105 = v115[1];
  *v109 = *v127;
  *&v109[3] = *&v127[3];
  v110 = v43;
  return sub_2142EB96C(v80);
}

uint64_t sub_21410E374(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906478, &unk_2146F4378);
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = *v1;
  v9 = *(v1 + 1);
  v8 = *(v1 + 2);
  v10 = *(v1 + 6);
  v42 = *(v1 + 5);
  v43 = v10;
  v11 = *(v1 + 9);
  v41 = *(v1 + 8);
  v40 = v11;
  v12 = *(v1 + 11);
  v39 = *(v1 + 10);
  v38 = v12;
  v13 = *(v1 + 13);
  v37 = *(v1 + 12);
  v36 = v13;
  v35 = *(v1 + 112);
  v14 = *(v1 + 18);
  v33 = *(v1 + 17);
  v32 = v14;
  v15 = *(v1 + 23);
  v34 = *(v1 + 22);
  v31 = v15;
  v16 = *(v1 + 50);
  v17 = *(v1 + 54);
  v18 = *(v1 + 58);
  *&v57[9] = *(v1 + 257);
  v19 = *(v1 + 62);
  v56 = v18;
  *v57 = v19;
  v54 = v16;
  v55 = v17;
  v30 = *(v1 + 35);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EB9C0();
  sub_2146DAA28();
  LODWORD(v50) = v7;
  *(&v50 + 1) = v9;
  *&v51 = v8;
  LOBYTE(v47[0]) = 0;
  sub_2142EBC20();

  v21 = v6;

  v22 = v44;
  sub_2146DA388();
  if (v22)
  {

    return (*(v58 + 8))(v6, v3);
  }

  else
  {
    v24 = v42;
    v25 = v40;
    v26 = v41;

    if (v43 >> 60 == 11)
    {
      goto LABEL_7;
    }

    *&v50 = v24;
    *(&v50 + 1) = v43;
    LOBYTE(v47[0]) = 1;
    sub_213FDCA18(v24, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v50, *(&v50 + 1));
    *&v50 = v26;
    *(&v50 + 1) = v25;
    *&v51 = v39;
    *(&v51 + 1) = v38;
    *&v52 = v37;
    *(&v52 + 1) = v36;
    v53[0] = v35;
    LOBYTE(v47[0]) = 2;
    sub_2142F44D4(v26, v25, v39, v38, v37, v36, v35, sub_213FDCA18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906450, &qword_2146F4368);
    sub_2142EBC74();
    sub_2146DA388();
    v27 = v58;
    sub_2142F460C(v50, *(&v50 + 1), v51, *(&v51 + 1), v52, *(&v52 + 1), v53[0], sub_213FDC6BC);
    if (v32 >> 60 == 15)
    {
      goto LABEL_7;
    }

    *&v50 = v33;
    *(&v50 + 1) = v32;
    LOBYTE(v47[0]) = 3;
    sub_21402D9F8(v33, v32);
    sub_214061684();
    sub_2146DA388();
    v28 = v34;
    sub_213FB54FC(v50, *(&v50 + 1));
    if (v31 >> 60 == 11)
    {
LABEL_7:
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      *&v50 = v28;
      *(&v50 + 1) = v31;
      LOBYTE(v47[0]) = 4;
      sub_213FDCA18(v28, v31);
      sub_2146DA388();
      sub_213FDC6BC(v50, *(&v50 + 1));
      *v53 = *v57;
      *&v53[9] = *&v57[9];
      v51 = v55;
      v52 = v56;
      v50 = v54;
      v49 = 5;
      sub_213FB2E54(&v54, v47, &qword_27C906460, &qword_2146F4370);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906460, &qword_2146F4370);
      sub_2142EBCF8();
      sub_2146DA388();
      v47[2] = v52;
      *v48 = *v53;
      *&v48[9] = *&v53[9];
      v47[1] = v51;
      v47[0] = v50;
      sub_213FB2DF4(v47, &qword_27C906460, &qword_2146F4370);
      v46 = v30;
      v45 = 6;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9063E0, &qword_2146F4340);
      sub_2142EB790();
      sub_2146DA388();

      return (*(v27 + 8))(v21, 0);
    }
  }

  return result;
}

uint64_t sub_21410EA88@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v84 = a4;
  v85 = a6;
  v79 = a5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v11 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v80 = (&v72 - v12);
  sub_21439FB9C(&v88);
  v13 = v89;
  v14 = v90;
  v15 = v91;
  v16 = type metadata accessor for CloudKitSharingToken();
  v82 = *(v16 + 24);
  sub_21439FD04(&v82[a7]);
  sub_21439FE30(v86);
  v17 = v87;
  memcpy(a7, a1, 0x120uLL);
  *(a7 + 288) = v88;
  *(a7 + 304) = v13;
  *(a7 + 312) = v14;
  *(a7 + 320) = v15;
  v18 = a7 + *(v16 + 28);
  v19 = v86[1];
  *v18 = v86[0];
  *(v18 + 16) = v19;
  *(v18 + 32) = v17;
  v20 = *(a7 + 296);
  v22 = *(a7 + 304);
  v21 = *(a7 + 312);
  v23 = *(a7 + 320);
  *&v88 = *(a7 + 288);
  *(&v88 + 1) = v20;
  v89 = v22;
  v90 = v21;
  v91 = v23;

  sub_21404F7E0(v22, v21);
  v24 = v83;
  sub_214032118(a2, a3, 2, 0xD000000000000028, 0x800000021478DC40, 0xD00000000000001CLL, 0x800000021478A360);
  if (v24)
  {

    sub_213FDC6BC(a2, a3);
    v25 = sub_2146D8958();
    (*(*(v25 - 8) + 8))(v84, v25);
    v26 = v89;
    v27 = v90;
    v28 = v91;
    v29 = *(a7 + 296);
    v30 = *(a7 + 304);
    v31 = *(a7 + 312);

    sub_214032564(v30, v31);
    *(a7 + 288) = v88;
    *(a7 + 304) = v26;
    *(a7 + 312) = v27;
    *(a7 + 320) = v28;
    return sub_21432887C(a7, type metadata accessor for CloudKitSharingToken);
  }

  v77 = a2;
  v83 = a3;

  v78 = 0x800000021478A360;
  v33 = v89;
  v34 = v90;
  v35 = v91;
  v36 = *(a7 + 296);
  v37 = *(a7 + 304);
  v38 = *(a7 + 312);

  sub_214032564(v37, v38);
  *(a7 + 288) = v88;
  *(a7 + 304) = v33;
  *(a7 + 312) = v34;
  v39 = v78;
  *(a7 + 320) = v35;
  v40 = v80;
  sub_213FB2E54(&v82[a7], v80, &unk_27C9131D0, &qword_2146EAA70);
  v41 = *v40;
  v42 = v40[1];
  LOBYTE(v86[0]) = *(v40 + *(v81 + 32));
  *&v88 = 0xD00000000000001DLL;
  *(&v88 + 1) = 0x800000021478DC70;
  v89 = 0xD00000000000001CLL;
  v90 = v39;
  v43 = v84;
  v44 = v41(v84, v86, &v88);
  v45 = v81;
  v46 = v85;
  if ((v44 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD00000000000001DLL;
    v58[1] = 0x800000021478DC70;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = v39;
    swift_willThrow();
    sub_213FDC6BC(v77, v83);
    v59 = sub_2146D8958();
    (*(*(v59 - 8) + 8))(v43, v59);
    sub_21402EDB8(v40, &v82[a7], &unk_27C9131D0, &qword_2146EAA70);
    return sub_21432887C(a7, type metadata accessor for CloudKitSharingToken);
  }

  v76 = 0;

  v47 = *(v45 + 28);
  sub_213FB2DF4(v40 + v47, &unk_27C9131A0, &unk_2146E9D10);
  v48 = sub_2146D8958();
  v49 = *(v48 - 8);
  (*(v49 + 16))(v40 + v47, v43, v48);
  v72 = v49;
  v50 = *(v49 + 56);
  v81 = v48;
  v50(v40 + v47, 0, 1, v48);
  sub_21402EDB8(v40, &v82[a7], &unk_27C9131D0, &qword_2146EAA70);
  v52 = *v18;
  v51 = *(v18 + 8);
  v54 = *(v18 + 16);
  v53 = *(v18 + 24);
  v55 = *(v18 + 32);
  *&v86[0] = v79;
  *(&v86[0] + 1) = v46;
  LODWORD(v80) = v55;
  v92 = v55;
  *&v88 = 0xD000000000000022;
  *(&v88 + 1) = 0x800000021478DC90;
  v89 = 0xD00000000000001CLL;
  v90 = v39;

  v75 = v54;
  v74 = v53;
  sub_213FDC9D0(v54, v53);
  v73 = v51;
  v56 = v76;
  v82 = v52;
  v57 = (v52)(v86, &v92, &v88);
  if (v56)
  {
    v76 = v56;
  }

  else
  {
    if (v57)
    {
      sub_213FDC6D0(v75, v74);

      sub_213FDC6BC(v77, v83);
      (*(v72 + 8))(v43, v81);
      v60 = *(v18 + 8);
      v61 = *(v18 + 16);
      v62 = *(v18 + 24);

      result = sub_213FDC6D0(v61, v62);
      v63 = v73;
      *v18 = v82;
      *(v18 + 8) = v63;
      *(v18 + 16) = v79;
      *(v18 + 24) = v46;
      *(v18 + 32) = v80;
      return result;
    }

    sub_214031C4C();
    v64 = swift_allocError();
    *v65 = 0xD000000000000022;
    v65[1] = 0x800000021478DC90;
    v66 = v78;
    v65[2] = 0xD00000000000001CLL;
    v65[3] = v66;
    v76 = v64;
    swift_willThrow();
  }

  sub_213FDC6BC(v77, v83);
  (*(v72 + 8))(v43, v81);
  v67 = *(v18 + 8);
  v68 = *(v18 + 16);
  v69 = *(v18 + 24);

  sub_213FDC6D0(v68, v69);
  v70 = v73;
  *v18 = v82;
  *(v18 + 8) = v70;
  v71 = v74;
  *(v18 + 16) = v75;
  *(v18 + 24) = v71;
  *(v18 + 32) = v80;
  return sub_21432887C(a7, type metadata accessor for CloudKitSharingToken);
}

unint64_t sub_21410F1D0()
{
  v1 = 0x6F72506572616873;
  v2 = 0x4C52556572616873;
  if (*v0 != 2)
  {
    v2 = 0x7069636974726170;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_21410F268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143631DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21410F290(uint64_t a1)
{
  v2 = sub_2142EBDD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21410F2CC(uint64_t a1)
{
  v2 = sub_2142EBDD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21410F308@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v3 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v82 = (&v70 - v4);
  v5 = sub_2146D8958();
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = *(v83 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9064A0, &qword_2146F4388);
  v85 = *(v9 - 8);
  v10 = *(v85 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v70 - v11;
  v13 = type metadata accessor for CloudKitSharingToken();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_2142EBDD0();
  v19 = v86;
  sub_2146DAA08();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v86 = v8;
  v79 = v16;
  v96[1] = 0;
  sub_2142EBE24();
  sub_2146DA1C8();
  memcpy(v94, v95, sizeof(v94));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v88[0]) = 1;
  sub_2142E1278();
  sub_2146DA1C8();
  v20 = *(&v90 + 1);
  v78 = v90;
  LOBYTE(v90) = 2;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260]);
  sub_2146DA1C8();
  v77 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v88[0]) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v75 = *(&v90 + 1);
  v71 = v90;
  v76 = v9;
  sub_21439FB9C(&v90);
  v23 = v91;
  v22 = v92;
  LODWORD(v74) = v93;
  v24 = v79;
  v72 = *(v13 + 24);
  sub_21439FD04(&v79[v72]);
  sub_21439FE30(v88);
  v25 = v89;
  memcpy(v24, v94, 0x120uLL);
  *(v24 + 288) = v90;
  *(v24 + 304) = v23;
  *(v24 + 312) = v22;
  *(v24 + 320) = v74;
  v26 = v24 + *(v13 + 28);
  v27 = v88[1];
  *v26 = v88[0];
  *(v26 + 16) = v27;
  *(v26 + 32) = v25;
  v28 = *(v24 + 296);
  v30 = *(v24 + 304);
  v29 = *(v24 + 312);
  v31 = *(v24 + 320);
  *&v90 = *(v24 + 288);
  *(&v90 + 1) = v28;
  v91 = v30;
  v92 = v29;
  v93 = v31;

  sub_21404F7E0(v30, v29);
  v73 = "eProtection.masterKeyID";
  v74 = 0x800000021478A360;
  sub_214032118(v78, v77, 2, 0xD000000000000028, 0x800000021478DC40, 0xD00000000000001CLL, 0x800000021478A360);
  v70 = v26;
  v32 = v74;

  v33 = v91;
  v34 = v92;
  LODWORD(v73) = v93;
  v35 = *(v24 + 296);
  v36 = *(v24 + 304);
  v37 = *(v24 + 312);

  sub_214032564(v36, v37);
  *(v24 + 288) = v90;
  *(v24 + 304) = v33;
  *(v24 + 312) = v34;
  *(v24 + 320) = v73;
  v38 = v82;
  sub_213FB2E54(v24 + v72, v82, &unk_27C9131D0, &qword_2146EAA70);
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = v81;
  LOBYTE(v88[0]) = *(v38 + *(v81 + 32));
  *&v90 = 0xD00000000000001DLL;
  *(&v90 + 1) = 0x800000021478DC70;
  v91 = 0xD00000000000001CLL;
  v92 = v32;
  v42 = v39(v86, v88, &v90);
  v43 = v32;
  v44 = v76;
  v45 = v84;
  if (v42)
  {

    v46 = *(v41 + 28);
    v47 = v82;
    sub_213FB2DF4(v82 + v46, &unk_27C9131A0, &unk_2146E9D10);
    v48 = v83;
    (*(v83 + 16))(v47 + v46, v86, v45);
    (*(v48 + 56))(v47 + v46, 0, 1, v45);
    sub_21402EDB8(v47, &v79[v72], &unk_27C9131D0, &qword_2146EAA70);
    v50 = *v70;
    v49 = *(v70 + 8);
    v52 = *(v70 + 16);
    v51 = *(v70 + 24);
    v53 = *(v70 + 32);
    v54 = v75;
    *&v88[0] = v71;
    *(&v88[0] + 1) = v75;
    LODWORD(v81) = v53;
    v96[0] = v53;
    *&v90 = 0xD000000000000022;
    *(&v90 + 1) = 0x800000021478DC90;
    v91 = 0xD00000000000001CLL;
    v92 = v43;

    v73 = v51;
    sub_213FDC9D0(v52, v51);
    v82 = v50;
    v55 = (v50)(v88, v96, &v90);
    v58 = v78;
    if (v55)
    {
      sub_213FDC6D0(v52, v73);
      sub_213FDC6BC(v58, v77);

      (*(v83 + 8))(v86, v84);
      (*(v85 + 8))(v12, v76);
      v59 = v70;
      v60 = v54;
      v61 = *(v70 + 8);
      v62 = *(v70 + 16);
      v63 = *(v70 + 24);

      sub_213FDC6D0(v62, v63);
      *v59 = v82;
      *(v59 + 8) = v49;
      *(v59 + 16) = v71;
      *(v59 + 24) = v60;
      *(v59 + 32) = v81;
      sub_214328704(v79, v80, type metadata accessor for CloudKitSharingToken);
      return __swift_destroy_boxed_opaque_existential_1(v87);
    }

    sub_214031C4C();
    swift_allocError();
    *v64 = 0xD000000000000022;
    v64[1] = 0x800000021478DC90;
    v64[2] = 0xD00000000000001CLL;
    v64[3] = v43;
    swift_willThrow();

    sub_213FDC6BC(v58, v77);

    (*(v83 + 8))(v86, v84);
    (*(v85 + 8))(v12, v76);
    v65 = v70;
    v66 = *(v70 + 8);
    v67 = *(v70 + 16);
    v68 = *(v70 + 24);

    sub_213FDC6D0(v67, v68);
    *v65 = v82;
    *(v65 + 8) = v49;
    v69 = v73;
    *(v65 + 16) = v52;
    *(v65 + 24) = v69;
    *(v65 + 32) = v81;
    v57 = v79;
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    *v56 = 0xD00000000000001DLL;
    v56[1] = 0x800000021478DC70;
    v56[2] = 0xD00000000000001CLL;
    v56[3] = v43;
    swift_willThrow();
    sub_213FDC6BC(v78, v77);
    (*(v83 + 8))(v86, v45);
    (*(v85 + 8))(v12, v44);
    v57 = v79;
    sub_21402EDB8(v82, &v79[v72], &unk_27C9131D0, &qword_2146EAA70);
  }

  __swift_destroy_boxed_opaque_existential_1(v87);
  return sub_21432887C(v57, type metadata accessor for CloudKitSharingToken);
}

uint64_t sub_21410FDD8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v33 - v6;
  v7 = sub_2146D8958();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9064B8, &qword_2146F4390);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EBDD0();
  sub_2146DAA28();
  memcpy(v44, v2, 0x120uLL);
  memcpy(v43, v2, sizeof(v43));
  v46 = 0;
  sub_2142EBBC4(v44, v42);
  sub_2142EBE78();
  v17 = v39;
  sub_2146DA388();
  if (v17)
  {
    memcpy(v42, v43, sizeof(v42));
    sub_2142EB96C(v42);
    return (*(v12 + 8))(v15, v11);
  }

  v39 = v10;
  v19 = v12;
  v20 = v38;
  memcpy(v42, v43, sizeof(v42));
  sub_2142EB96C(v42);
  v21 = v2[39];
  if (v21 >> 60 != 11)
  {
    v22 = v2;
    v40 = v2[38];
    v41 = v21;
    v45 = 1;
    sub_213FDCA18(v40, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    v23 = v11;
    v24 = v15;
    sub_2146DA388();
    v25 = v20;
    sub_213FDC6BC(v40, v41);
    v34 = type metadata accessor for CloudKitSharingToken();
    v35 = v22;
    v26 = v22 + *(v34 + 24);
    v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70) + 28)];
    v28 = v36;
    sub_213FB2E54(v27, v36, &unk_27C9131A0, &unk_2146E9D10);
    v29 = v37;
    if ((*(v37 + 48))(v28, 1, v25) == 1)
    {
      sub_213FB2DF4(v28, &unk_27C9131A0, &unk_2146E9D10);
    }

    else
    {
      v30 = v39;
      (*(v29 + 32))(v39, v28, v25);
      LOBYTE(v40) = 2;
      sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260]);
      sub_2146DA388();
      (*(v29 + 8))(v30, v25);
      v31 = v35 + *(v34 + 28);
      v32 = *(v31 + 24);
      if (v32 != 1)
      {
        v40 = *(v31 + 16);
        v41 = v32;
        v45 = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
        sub_214045AC0();
        sub_2146DA388();
        return (*(v19 + 8))(v24, v23);
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214110324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v11 = type metadata accessor for CollaborationClearNotice();
  v12 = *(v11 + 24);
  v13 = sub_2146D8B08();
  result = (*(*(v13 - 8) + 32))(&a7[v12], a4, v13);
  v15 = &a7[*(v11 + 28)];
  *v15 = a5;
  *(v15 + 1) = a6;
  return result;
}

uint64_t sub_2141103D0()
{
  v1 = 0x6E6F6973726576;
  v2 = 1702125924;
  if (*v0 != 2)
  {
    v2 = 0x726F62616C6C6F63;
  }

  if (*v0)
  {
    v1 = 0x6972745364697567;
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

uint64_t sub_214110454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214363358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21411047C(uint64_t a1)
{
  v2 = sub_2142EBECC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141104B8(uint64_t a1)
{
  v2 = sub_2142EBECC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141104F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v4 = sub_2146D8B08();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9064C8, &qword_2146F4398);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v31);
  v11 = &v26 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EBECC();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v35 = 0;
    v14 = v31;
    v28 = sub_2146DA1A8();
    v34 = 1;
    v26 = sub_2146DA168();
    v27 = v16;
    v33 = 2;
    sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578]);
    sub_2146DA1C8();
    v32 = 3;
    v17 = sub_2146DA168();
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = type metadata accessor for CollaborationClearNotice();
    v21 = v7;
    v22 = v29;
    (*(v30 + 32))(v29 + *(v20 + 24), v21, v4);
    v24 = v26;
    v23 = v27;
    *v22 = v28;
    v22[1] = v24;
    v22[2] = v23;
    v25 = (v22 + *(v20 + 28));
    *v25 = v17;
    v25[1] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214110844(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9064D8, &qword_2146F43A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EBECC();
  sub_2146DAA28();
  v11 = *v3;
  v20[15] = 0;
  sub_2146DA368();
  if (!v2)
  {
    v13 = v3[1];
    v14 = v3[2];
    v20[14] = 1;
    sub_2146DA328();
    v15 = type metadata accessor for CollaborationClearNotice();
    v16 = *(v15 + 24);
    v20[13] = 2;
    sub_2146D8B08();
    sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578]);
    sub_2146DA388();
    v17 = (v3 + *(v15 + 28));
    v18 = *v17;
    v19 = v17[1];
    v20[12] = 3;
    sub_2146DA328();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_214110ABC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_214110ACC()
{
  v1 = 0x654B63696C627570;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x68736148746F6F72;
  }
}

uint64_t sub_214110B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143634CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214110B58(uint64_t a1)
{
  v2 = sub_2142EBF20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214110B94(uint64_t a1)
{
  v2 = sub_2142EBF20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214110BD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9064E0, &qword_2146F43A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EBF20();
  sub_2146DAA08();
  if (!v2)
  {
    v17 = 0;
    sub_21406116C();
    sub_2146DA1C8();
    v11 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
    v17 = 1;
    sub_2142E554C();
    sub_2146DA1C8();
    v15 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v17 = 2;
    sub_2142E1278();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    *(a2 + 16) = v15;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214110E5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9064F0, &qword_2146F43B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17 = v1[3];
  v18 = v10;
  v16 = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21402D9F8(v8, v9);
  sub_2142EBF20();
  sub_2146DAA28();
  v20 = v8;
  v21 = v9;
  v22 = 0;
  sub_214061684();
  v12 = v19;
  sub_2146DA388();
  sub_213FB54FC(v20, v21);
  if (!v12)
  {
    v14 = v16;
    v13 = v17;
    v20 = v18;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
    sub_2142E562C();
    sub_2146DA388();
    v20 = v13;
    v21 = v14;
    v22 = 2;
    sub_213FDCA18(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v20, v21);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2141110C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2141110D4()
{
  if (*v0)
  {
    result = 0x6D6E6F7269766E65;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_21411111C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65)
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

uint64_t sub_214111204(uint64_t a1)
{
  v2 = sub_2142EBF74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214111240(uint64_t a1)
{
  v2 = sub_2142EBF74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411127C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9064F8, &qword_2146F43B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EBF74();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_2146DA168();
    v13 = v12;
    v14 = v11;
    v18 = 1;
    v15 = sub_2146DA1A8();
    (*(v6 + 8))(v9, v5);
    *a2 = v14;
    a2[1] = v13;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214111448(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906508, &qword_2146F43C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EBF74();
  sub_2146DAA28();
  v15 = 0;
  v11 = v13[1];
  sub_2146DA328();
  if (!v11)
  {
    v14 = 1;
    sub_2146DA368();
  }

  return (*(v4 + 8))(v7, v3);
}

__n128 sub_21411160C@<Q0>(unsigned __int8 a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12, unsigned __int8 a13)
{
  result = a10;
  a9->n128_u8[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  a9[6].n128_u8[0] = a13;
  return result;
}

unint64_t sub_21411163C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000029;
    if (v1 != 6)
    {
      v5 = 0xD000000000000024;
    }

    v6 = 0xD000000000000039;
    if (v1 == 4)
    {
      v6 = 0xD000000000000038;
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
    v2 = 0x57656E6F5A657375;
    v3 = 0xD000000000000015;
    if (v1 != 2)
    {
      v3 = 0xD000000000000035;
    }

    if (*v0)
    {
      v2 = 0xD000000000000015;
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

uint64_t sub_214111754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143635F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21411177C(uint64_t a1)
{
  v2 = sub_2142EBFC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141117B8(uint64_t a1)
{
  v2 = sub_2142EBFC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141117F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906510, &qword_2146F43C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EBFC8();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v36) = 0;
    v38 = sub_2146DA178();
    LOBYTE(v36) = 1;
    v35 = sub_2146DA1B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v39 = 2;
    sub_2142E12FC();
    sub_2146DA1C8();
    v12 = v37;
    v34 = v36;
    v39 = 3;
    sub_2146DA1C8();
    v33 = v12;
    v13 = v36;
    v32 = v37;
    v39 = 4;
    sub_2146DA1C8();
    v30 = v36;
    v31 = v13;
    v14 = v37;
    v39 = 5;
    sub_2146DA1C8();
    v29 = v14;
    v15 = v36;
    v28 = v37;
    v39 = 6;
    sub_2146DA1C8();
    v16 = v28;
    v25 = v36;
    v26 = v15;
    v27 = v37;
    LOBYTE(v36) = 7;
    v17 = sub_2146DA178();
    (*(v6 + 8))(v9, v5);
    *a2 = v38 & 1;
    v18 = v34;
    *(a2 + 8) = v35;
    *(a2 + 16) = v18;
    v20 = v31;
    v19 = v32;
    *(a2 + 24) = v33;
    *(a2 + 32) = v20;
    *(a2 + 40) = v19;
    v21 = v29;
    *(a2 + 48) = v30;
    *(a2 + 56) = v21;
    v22 = v25;
    *(a2 + 64) = v26;
    *(a2 + 72) = v16;
    v23 = v27;
    *(a2 + 80) = v22;
    *(a2 + 88) = v23;
    *(a2 + 96) = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214111C30(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906520, &qword_2146F43D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v32 = *(v1 + 2);
  v33 = v9;
  v10 = *(v1 + 3);
  v11 = *(v1 + 4);
  v12 = *(v1 + 6);
  v30 = *(v1 + 5);
  v31 = v10;
  v27 = v12;
  v13 = *(v1 + 8);
  v28 = *(v1 + 7);
  v29 = v11;
  v14 = *(v1 + 9);
  v15 = *(v1 + 10);
  v25 = v13;
  v26 = v14;
  v16 = *(v1 + 11);
  v23 = v15;
  v24 = v16;
  v17 = v1[96];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EBFC8();
  sub_2146DAA28();
  LOBYTE(v35) = 0;
  v19 = v34;
  sub_2146DA338();
  if (v19)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v21 = v31;
  v22 = v32;
  LODWORD(v34) = v17;
  LOBYTE(v35) = 1;
  sub_2146DA378();
  v35 = v22;
  v36 = v21;
  v37 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v35 = v29;
  v36 = v30;
  v37 = 3;
  sub_2146DA388();
  v35 = v27;
  v36 = v28;
  v37 = 4;
  sub_2146DA388();
  v35 = v25;
  v36 = v26;
  v37 = 5;
  sub_2146DA388();
  v35 = v23;
  v36 = v24;
  v37 = 6;
  sub_2146DA388();
  LOBYTE(v35) = 7;
  sub_2146DA338();
  return (*(v4 + 8))(0, v3);
}

__n128 sub_214111F78@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v11) = *(a1 + 96);
  result = a1[4];
  v10 = a1[5];
  v4 = *a1;
  v8 = a1[1];
  v5 = a1[2];
  v9 = a1[3];
  v6 = *a2;
  v7 = *(a2 + 2);
  *(a3 + 64) = result;
  *(a3 + 80) = v10;
  *a3 = v4;
  *(a3 + 16) = v8;
  *(a3 + 32) = v5;
  *(a3 + 48) = v9;
  *(a3 + 96) = v11;
  *(a3 + 104) = v6;
  *(a3 + 120) = v7;
  return result;
}

unint64_t sub_214111FC8()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_214112004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000018 && 0x80000002147946A0 == a2;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002147946C0 == a2)
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

uint64_t sub_2141120E4(uint64_t a1)
{
  v2 = sub_2142EC01C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214112120(uint64_t a1)
{
  v2 = sub_2142EC01C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21411215C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906528, &qword_2146F43D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC01C();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v5;
    v11 = v40;
    v32 = 0;
    sub_214092BC8();
    sub_2146DA1C8();
    v29 = v37;
    v30 = v38;
    v31 = v39;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v28 = v36;
    v22 = 1;
    sub_214092AF4();
    sub_2146DA1C8();
    (*(v10 + 8))(v8, v4);
    v12 = v23;
    v13 = v24;
    LOBYTE(v21) = v31;
    v15 = v25;
    v14 = v26;
    v20[0] = v25;
    v20[1] = v26;
    v16 = v30;
    v20[4] = v29;
    v20[5] = v30;
    v18 = v27;
    v17 = v28;
    v20[2] = v27;
    v20[3] = v28;
    *(v11 + 64) = v29;
    *(v11 + 80) = v16;
    *(v11 + 32) = v18;
    *(v11 + 48) = v17;
    *v11 = v15;
    *(v11 + 16) = v14;
    *(v11 + 96) = v21;
    *(v11 + 104) = v12;
    *(v11 + 120) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141123BC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906538, &unk_2146F43E0);
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = v1[5];
  v36 = v1[4];
  v37 = v8;
  v38 = *(v1 + 96);
  v9 = v1[1];
  v32 = *v1;
  v33 = v9;
  v10 = v1[3];
  v34 = v1[2];
  v35 = v10;
  v11 = *(v1 + 14);
  v16 = *(v1 + 13);
  v17 = v11;
  v15 = *(v1 + 15);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214092198(&v32, &v25);
  sub_2142EC01C();
  sub_2146DAA28();
  v29 = v36;
  v30 = v37;
  v31 = v38;
  v25 = v32;
  v26 = v33;
  v27 = v34;
  v28 = v35;
  v24 = 0;
  sub_214092C1C();
  sub_2146DA388();
  v22[4] = v29;
  v22[5] = v30;
  v23 = v31;
  v22[0] = v25;
  v22[1] = v26;
  v22[2] = v27;
  v22[3] = v28;
  sub_214092240(v22);
  if (!v2)
  {
    v19 = v16;
    v20 = v17;
    v21 = v15;
    v18 = 1;
    sub_214092B48();

    sub_2146DA388();
  }

  return (*(v39 + 8))(v7, v4);
}

__n128 sub_214112654@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v16 = type metadata accessor for CollaborationMetadata();
  sub_21408AC04(a5, a9 + v16[6], &qword_27C913090, &unk_2146E9DB0);
  v17 = (a9 + v16[7]);
  *v17 = a6;
  v17[1] = a7;
  *(a9 + v16[8]) = a8;
  *(a9 + v16[9]) = a10;
  v18 = a9 + v16[10];
  v19 = *(a11 + 80);
  *(v18 + 4) = *(a11 + 64);
  *(v18 + 5) = v19;
  v20 = *(a11 + 112);
  *(v18 + 6) = *(a11 + 96);
  *(v18 + 7) = v20;
  v21 = *(a11 + 16);
  *v18 = *a11;
  *(v18 + 1) = v21;
  result = *(a11 + 32);
  v23 = *(a11 + 48);
  *(v18 + 2) = result;
  *(v18 + 3) = v23;
  return result;
}

unint64_t sub_214112728()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x656C746974;
    if (v1 != 1)
    {
      v5 = 0x6E6F697461657263;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (v1 == 5)
    {
      v2 = 0xD000000000000014;
    }

    v3 = 0xD000000000000015;
    if (v1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_214112818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436388C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214112840(uint64_t a1)
{
  v2 = sub_2142EC070();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21411287C(uint64_t a1)
{
  v2 = sub_2142EC070();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141128B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906540, &qword_2146F43F0);
  v9 = *(v8 - 8);
  v47 = v8;
  v48 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2142EC070();
  v15 = v12;
  sub_2146DAA08();
  if (!v2)
  {
    v16 = v7;
    LOBYTE(v58) = 0;
    v17 = v47;
    v18 = v15;
    v19 = sub_2146DA168();
    v21 = v20;
    v45 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v50) = 1;
    v22 = sub_2142E12FC();
    sub_2146DA1C8();
    v43 = v58;
    v44 = v22;
    v23 = *(&v58 + 1);
    LOBYTE(v58) = 2;
    sub_2142EC0C4();
    sub_2146DA1C8();
    v41 = v23;
    v42 = v21;
    LOBYTE(v50) = 3;
    sub_2146DA1C8();
    v24 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906550, &qword_2146F43F8);
    LOBYTE(v50) = 4;
    sub_2142EC178();
    sub_2146DA1C8();
    v44 = v24;
    v25 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    LOBYTE(v50) = 5;
    sub_2142E1548();
    sub_2146DA1C8();
    v27 = v25;
    v28 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905020, ")\r");
    v66 = 6;
    sub_2142EC288();
    sub_2146DA1C8();
    (*(v48 + 8))(v18, v17);
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v57 = v65;
    v50 = v58;
    v51 = v59;
    v52 = v60;
    v53 = v61;
    v29 = type metadata accessor for CollaborationMetadata();
    v30 = v46;
    sub_21408AC04(v16, v46 + v29[6], &qword_27C913090, &unk_2146E9DB0);
    v31 = v44;
    v33 = v42;
    v32 = v43;
    *v30 = v45;
    v30[1] = v33;
    v30[2] = v32;
    v30[3] = v41;
    v34 = (v30 + v29[7]);
    *v34 = v31;
    v34[1] = *(&v24 + 1);
    *(v30 + v29[8]) = v27;
    *(v30 + v29[9]) = v28;
    v35 = (v30 + v29[10]);
    v36 = v55;
    v35[4] = v54;
    v35[5] = v36;
    v37 = v57;
    v35[6] = v56;
    v35[7] = v37;
    v38 = v51;
    *v35 = v50;
    v35[1] = v38;
    v39 = v53;
    v35[2] = v52;
    v35[3] = v39;
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_214112E64(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906570, &qword_2146F4410);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC070();
  sub_2146DAA28();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v37[0]) = 0;
  sub_2146DA328();
  if (!v2)
  {
    v37[0] = *(v3 + 1);
    LOBYTE(v29) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v13 = type metadata accessor for CollaborationMetadata();
    v14 = *(v13 + 24);
    v26[0] = v13;
    v26[1] = v14;
    LOBYTE(v37[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    sub_2142EC30C();
    sub_2146DA388();
    v37[0] = *(v3 + *(v26[0] + 28));
    LOBYTE(v29) = 3;
    sub_2146DA388();
    *&v37[0] = *(v3 + *(v26[0] + 32));
    LOBYTE(v29) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906550, &qword_2146F43F8);
    sub_2142EC3C0();
    sub_2146DA388();
    v45 = *(v3 + *(v26[0] + 36));
    v44 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
    v15 = (v3 + *(v26[0] + 40));
    v16 = v15[5];
    v17 = v15[3];
    v40 = v15[4];
    v41 = v16;
    v18 = v15[5];
    v19 = v15[7];
    v42 = v15[6];
    v43 = v19;
    v20 = v15[1];
    v37[0] = *v15;
    v37[1] = v20;
    v21 = v15[3];
    v23 = *v15;
    v22 = v15[1];
    v38 = v15[2];
    v39 = v21;
    v33 = v40;
    v34 = v18;
    v24 = v15[7];
    v35 = v42;
    v36 = v24;
    v29 = v23;
    v30 = v22;
    v31 = v38;
    v32 = v17;
    v28 = 6;
    sub_213FB2E54(v37, v27, &qword_27C905020, ")\r");
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905020, ")\r");
    sub_2142EC4D0();
    sub_2146DA388();
    v27[4] = v33;
    v27[5] = v34;
    v27[6] = v35;
    v27[7] = v36;
    v27[0] = v29;
    v27[1] = v30;
    v27[2] = v31;
    v27[3] = v32;
    sub_213FB2DF4(v27, &qword_27C905020, ")\r");
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2141132C8(uint64_t a1)
{
  v2 = sub_2142EC554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214113304(uint64_t a1)
{
  v2 = sub_2142EC554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChangeEvent.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v21 = a2;
  v4 = sub_2146D8958();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906590, &qword_2146F4418);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC554();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v4;
    v15 = v21;
    v25 = 0;
    sub_2142EC5A8();
    v16 = v22;
    sub_2146DA1C8();
    v23 = v26;
    v24 = 1;
    sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260]);
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v16);
    v17 = type metadata accessor for ChangeEvent(0);
    (*(v20 + 32))(&v15[*(v17 + 20)], v7, v14);
    *v15 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ChangeEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9065A8, &qword_2146F4420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC554();
  sub_2146DAA28();
  v13[15] = *v3;
  v13[14] = 0;
  sub_2142EC5FC();
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(type metadata accessor for ChangeEvent(0) + 20);
    v13[13] = 1;
    sub_2146D8958();
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260]);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MentionEvent.init(with:mentionedPersonIdentity:highlightURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a3 + 32);
  *a5 = a1;
  *(a5 + 8) = a2;
  v8 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v8;
  *(a5 + 48) = v7;
  v9 = *(type metadata accessor for MentionEvent(0) + 24);
  v10 = sub_2146D8958();
  return (*(*(v10 - 8) + 32))(a5 + v9, a4, v10);
}

unint64_t sub_214113888()
{
  v1 = 0x6867696C68676968;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_2141138F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214363AD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214113918(uint64_t a1)
{
  v2 = sub_2142EC650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214113954(uint64_t a1)
{
  v2 = sub_2142EC650();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MentionEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v4 = sub_2146D8958();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9065B8, &qword_2146F4428);
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v33);
  v11 = &v23 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EC650();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v7;
    v15 = v32;
    v16 = v33;
    LOBYTE(v34) = 0;
    v29 = sub_2146DA168();
    v30 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9065C8, &qword_2146F4430);
    v39 = 1;
    sub_2142EC6A4();
    sub_2146DA1C8();
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    LOBYTE(v34) = 2;
    sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260]);
    v23 = v14;
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v16);
    v19 = type metadata accessor for MentionEvent(0);
    (*(v31 + 32))(v15 + *(v19 + 24), v23, v4);
    v20 = v30;
    *v15 = v29;
    v15[1] = v20;
    v21 = v25;
    v15[2] = v24;
    v15[3] = v21;
    v22 = v27;
    v15[4] = v26;
    v15[5] = v22;
    v15[6] = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}