uint64_t sub_2142000A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909BC0, &qword_2146F59D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214309580();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

  v12 = v6;
  LOBYTE(v69) = 0;
  v59 = sub_2146DA218();
  LOBYTE(v69) = 1;
  v13 = sub_2146DA168();
  v16 = v15;
  v58 = v13;
  v79 = 2;
  sub_21406116C();
  sub_2146DA1C8();
  v49 = v80;
  v51 = v81;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v53 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v18 = swift_allocObject();
  v57 = v16;
  v19 = v18;
  LOBYTE(v69) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 256;
  *(v20 + 24) = v69;
  *(v19 + 16) = sub_21438F688;
  *(v19 + 24) = v20;
  *(inited + 32) = v19;
  sub_214042B80(inited, &v69);
  v21 = v70;
  v52 = v69;
  v46 = v71;
  v55 = v72;
  v56 = v73;
  v22 = swift_initStackObject();
  *(v22 + 16) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v23 + 16) = sub_21438F460;
  *(v23 + 24) = v24;
  *(v22 + 32) = v23;
  sub_214042CD0(v22, &v60);
  v53 = v60;
  v50 = v61;
  v48 = v62;
  *&v60 = v58;
  *(&v60 + 1) = v57;
  LOBYTE(v66) = v56;
  v69 = 0xD000000000000030;
  v70 = 0x8000000214790DC0;
  v47 = 0x8000000214790DC0;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478A360;

  v54 = v21;
  v25 = v52;
  v26 = v52(&v60, &v66, &v69);
  v27 = v25;
  v28 = v47;
  v29 = v49;
  if (v26)
  {
    v46 = 0;

    v66 = v53;
    v30 = v50;
    v67 = v50;
    v68 = v48;
    v55 = *(&v53 + 1);

    sub_213FDCA18(v30, *(&v30 + 1));
    *&v53 = "essionIdentifier";
    v31 = v46;
    sub_214032024(v29, v51, 2, 0xD000000000000034, 0x8000000214790E00, 0xD00000000000001CLL, 0x800000021478A360);
    if (!v31)
    {

      sub_213FB54FC(v49, v51);
      (*(v12 + 8))(v9, v5);
      v39 = v66;
      *&v53 = v66;
      v40 = v67;
      LODWORD(v51) = v68;

      sub_213FDC6BC(v50, *(&v50 + 1));
      v41 = v59;
      LODWORD(v60) = v59;
      v42 = v52;
      *(&v60 + 1) = v52;
      *&v61 = v54;
      *(&v61 + 1) = v58;
      *&v62 = v57;
      BYTE8(v62) = v56;
      v63 = v39;
      v64 = v40;
      v43 = v51;
      v65 = v51;
      *(a2 + 80) = v51;
      v44 = v63;
      *(a2 + 32) = v62;
      *(a2 + 48) = v44;
      *(a2 + 64) = v64;
      v45 = v61;
      *a2 = v60;
      *(a2 + 16) = v45;
      sub_2143095F0(&v60, &v69);
      __swift_destroy_boxed_opaque_existential_1(v83);
      LODWORD(v69) = v41;
      v70 = v42;
      v71 = v54;
      v72 = v58;
      v73 = v57;
      v74 = v56;
      *v75 = v82[0];
      *&v75[3] = *(v82 + 3);
      *&v76 = v53;
      *(&v76 + 1) = *(&v39 + 1);
      v77 = v40;
      v78 = v43;
      return sub_21404B84C(&v69);
    }

    sub_213FB54FC(v49, v51);
    (*(v12 + 8))(v9, v5);
    v53 = v66;
    v32 = *(&v67 + 1);
    v33 = v67;
    v34 = v68;

    sub_213FDC6BC(v50, *(&v50 + 1));
    v36 = v57;
    v35 = v58;
    v27 = v52;
    v37 = v54;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD000000000000030;
    v38[1] = v28;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB54FC(v29, v51);
    (*(v12 + 8))(v9, v5);
    v36 = v55;

    v37 = v54;

    v35 = v46;
    v32 = *(&v50 + 1);
    v33 = v50;
    v34 = v48;
  }

  __swift_destroy_boxed_opaque_existential_1(v83);
  LODWORD(v69) = v59;
  v70 = v27;
  v71 = v37;
  v72 = v35;
  v73 = v36;
  v74 = v56;
  *v75 = v82[0];
  *&v75[3] = *(v82 + 3);
  v76 = v53;
  *&v77 = v33;
  *(&v77 + 1) = v32;
  v78 = v34;
  return sub_21404B84C(&v69);
}

uint64_t sub_2142007A0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909BD0, &qword_2146F59D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[9];
  v18 = v1[8];
  v19 = v9;
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309580();
  sub_2146DAA28();
  LOBYTE(v21) = 0;
  v13 = v20;
  sub_2146DA3D8();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v15 = v18;
  v16 = v17;
  if (!v10 || (LOBYTE(v21) = 1, , sub_2146DA328(), , v16 >> 60 == 15))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v21 = v15;
    v22 = v16;
    v23 = 2;
    sub_21402D9F8(v15, v16);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v21, v22);
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_214200A54@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = a2;
  *(a4 + 5) = a3;
  return result;
}

uint64_t sub_214200A64()
{
  v1 = 0x7265747369676572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_214200AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214377A44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214200AF8(uint64_t a1)
{
  v2 = sub_21430964C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214200B34(uint64_t a1)
{
  v2 = sub_21430964C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214200B70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909BD8, &qword_2146F59E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430964C();
  sub_2146DAA08();
  if (!v2)
  {
    v21 = 0;
    v16 = sub_2146DA218();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v19 = 1;
    sub_2142E1378();
    sub_2146DA1C8();
    v15 = v20;
    v17 = 2;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v18;
    v13 = v15;
    *a2 = v16;
    *(a2 + 4) = v13;
    *(a2 + 5) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214200D8C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909BE8, &qword_2146F59E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 4);
  v15 = *(v1 + 5);
  v16 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430964C();
  sub_2146DAA28();
  v21 = 0;
  sub_2146DA3D8();
  if (!v2)
  {
    v12 = v15;
    v20 = v16;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    v18 = v12;
    v17 = 2;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_214200F98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 4) = a2;
  *(a3 + 8) = BYTE4(a2) & 1;
  return result;
}

uint64_t sub_214200FA8()
{
  if (*v0)
  {
    result = 0x746C75736572;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_214200FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
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

uint64_t sub_2142010B8(uint64_t a1)
{
  v2 = sub_2143096A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142010F4(uint64_t a1)
{
  v2 = sub_2143096A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214201130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909BF0, &qword_2146F59F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143096A0();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_2146DA218();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    v18 = 1;
    sub_2142E6128();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    v13 = v17;
    *a2 = v11;
    *(a2 + 4) = v12;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214201304(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C00, &qword_2146F59F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 8);
  v15 = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143096A0();
  sub_2146DAA28();
  v19 = 0;
  sub_2146DA3D8();
  if (!v2)
  {
    v16 = v15;
    v17 = v14;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    sub_2142E62D8();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2142014D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t a1, char *a2)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)(uint64_t a1, char *a2)@<X8>)
{
  v38 = a8;
  v37 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v36 - v18);
  sub_2144731C4(a9);
  v20 = type metadata accessor for FileTransferAttribute.AttachmentInfo(0);
  v21 = (a9 + v20[5]);
  *v21 = a2;
  v21[1] = a3;
  v22 = (a9 + v20[6]);
  *v22 = a4;
  v22[1] = a5;
  *(a9 + v20[7]) = a6;
  v23 = (a9 + v20[8]);
  v24 = v38;
  *v23 = v37;
  v23[1] = v24;
  sub_213FB2E54(a9, v19, &unk_27C9131D0, &qword_2146EAA70);
  v25 = *v19;
  v26 = v19[1];
  v41 = *(v19 + *(v16 + 32));
  v40[0] = 0xD000000000000032;
  v40[1] = 0x8000000214790E40;
  v40[2] = 0xD00000000000001CLL;
  v40[3] = 0x800000021478A360;
  v27 = v39;
  v28 = v25(a1, &v41, v40);
  if (v27)
  {
    v29 = sub_2146D8958();
    (*(*(v29 - 8) + 8))(a1, v29);
  }

  else
  {
    if (v28)
    {

      v30 = *(v16 + 28);
      sub_213FB2DF4(v19 + v30, &unk_27C9131A0, &unk_2146E9D10);
      v31 = sub_2146D8958();
      v32 = *(v31 - 8);
      (*(v32 + 32))(v19 + v30, a1, v31);
      (*(v32 + 56))(v19 + v30, 0, 1, v31);
      return sub_21402EDB8(v19, a9, &unk_27C9131D0, &qword_2146EAA70);
    }

    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD000000000000032;
    v34[1] = 0x8000000214790E40;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = 0x800000021478A360;
    swift_willThrow();
    v35 = sub_2146D8958();
    (*(*(v35 - 8) + 8))(a1, v35);
  }

  sub_21402EDB8(v19, a9, &unk_27C9131D0, &qword_2146EAA70);
  return sub_21432887C(a9, type metadata accessor for FileTransferAttribute.AttachmentInfo);
}

uint64_t sub_21420180C(uint64_t a1)
{
  v2 = sub_2143096F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214201848(uint64_t a1)
{
  v2 = sub_2143096F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214201884@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v3 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v56 = (&v48 - v4);
  v5 = sub_2146D8958();
  v59 = *(v5 - 8);
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C08, &qword_2146F5A00);
  v58 = *(v9 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = type metadata accessor for FileTransferAttribute.AttachmentInfo(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v18 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_2143096F4();
  v19 = v60;
  sub_2146DAA08();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v54 = v13;
  v60 = v16;
  v21 = v58;
  v20 = v59;
  LOBYTE(v62[0]) = 0;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260]);
  sub_2146DA1C8();
  v22 = v8;
  LOBYTE(v62[0]) = 1;
  v23 = sub_2146DA168();
  v25 = v24;
  v52 = v23;
  v53 = v22;
  LOBYTE(v62[0]) = 2;
  v26 = v20;
  v51 = sub_2146DA168();
  v28 = v27;
  LOBYTE(v62[0]) = 3;
  v50 = sub_2146DA1B8();
  LOBYTE(v62[0]) = 4;
  v30 = sub_2146DA168();
  v48 = v9;
  v49 = v5;
  v31 = v60;
  v33 = v32;
  sub_2144731C4(v60);
  v34 = v54;
  v35 = (v31 + v54[5]);
  v36 = v51;
  *v35 = v52;
  v35[1] = v25;
  v37 = (v31 + v34[6]);
  *v37 = v36;
  v37[1] = v28;
  *(v31 + v34[7]) = v50;
  v38 = (v31 + v34[8]);
  *v38 = v30;
  v38[1] = v33;
  v39 = v56;
  sub_213FB2E54(v31, v56, &unk_27C9131D0, &qword_2146EAA70);
  v40 = *v39;
  v41 = v39[1];
  v63 = *(v39 + *(v57 + 32));
  v62[0] = 0xD000000000000032;
  v62[1] = 0x8000000214790E40;
  v62[2] = 0xD00000000000001CLL;
  v62[3] = 0x800000021478A360;
  v42 = v40(v53, &v63, v62);
  if (v42)
  {

    (*(v21 + 8))(v12, v48);
    v43 = *(v57 + 28);
    sub_213FB2DF4(v39 + v43, &unk_27C9131A0, &unk_2146E9D10);
    v44 = v49;
    (*(v26 + 32))(v39 + v43, v53, v49);
    (*(v26 + 56))(v39 + v43, 0, 1, v44);
    v45 = v60;
    sub_21402EDB8(v39, v60, &unk_27C9131D0, &qword_2146EAA70);
    sub_214328704(v45, v55, type metadata accessor for FileTransferAttribute.AttachmentInfo);
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  sub_214031C4C();
  swift_allocError();
  *v46 = 0xD000000000000032;
  v46[1] = 0x8000000214790E40;
  v46[2] = 0xD00000000000001CLL;
  v46[3] = 0x800000021478A360;
  swift_willThrow();
  (*(v26 + 8))(v53, v49);
  (*(v21 + 8))(v12, v48);
  v47 = v60;
  sub_21402EDB8(v39, v60, &unk_27C9131D0, &qword_2146EAA70);
  __swift_destroy_boxed_opaque_existential_1(v61);
  return sub_21432887C(v47, type metadata accessor for FileTransferAttribute.AttachmentInfo);
}

uint64_t sub_214201EE8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v34 - v6;
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C10, &qword_2146F5A08);
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v34 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143096F4();
  sub_2146DAA28();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  v19 = v2;
  sub_213FB2E54(v2 + *(v18 + 28), v7, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_213FB2DF4(v7, &unk_27C9131A0, &unk_2146E9D10);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v41 = 0;
    sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260]);
    v20 = v36;
    v21 = v34[1];
    sub_2146DA388();
    if (v21)
    {
      (*(v9 + 8))(v12, v8);
    }

    else
    {
      (*(v9 + 8))(v12, v8);
      v22 = type metadata accessor for FileTransferAttribute.AttachmentInfo(0);
      v23 = (v19 + v22[5]);
      v24 = *v23;
      v25 = v23[1];
      v40 = 1;
      sub_2146DA328();
      v26 = (v19 + v22[6]);
      v27 = *v26;
      v28 = v26[1];
      v39 = 2;
      sub_2146DA328();
      v29 = *(v19 + v22[7]);
      v38 = 3;
      sub_2146DA378();
      v30 = (v19 + v22[8]);
      v31 = *v30;
      v32 = v30[1];
      v37 = 4;
      sub_2146DA328();
    }

    return (*(v35 + 8))(v16, v20);
  }

  return result;
}

uint64_t sub_214202350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702521203 && a2 == 0xE400000000000000)
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

uint64_t sub_2142023D8(uint64_t a1)
{
  v2 = sub_214309748();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214202414(uint64_t a1)
{
  v2 = sub_214309748();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214202450@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C18, &qword_2146F5A10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309748();
  sub_2146DAA08();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    sub_214328930(&qword_280B30B88, type metadata accessor for CGSize);
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142025F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C28, &qword_2146F5A18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309748();
  sub_2146DAA28();
  v12[0] = v8;
  v12[1] = v9;
  type metadata accessor for CGSize(0);
  sub_214328930(&qword_280B2E368, type metadata accessor for CGSize);
  sub_2146DA388();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2142027B0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = a10;
  return result;
}

unint64_t sub_214202804()
{
  v1 = *v0;
  v2 = 0x6C6578695078616DLL;
  v3 = 0x656C616373;
  if (v1 != 3)
  {
    v3 = 0x656B636974537369;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_2142028AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214377D3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142028D4(uint64_t a1)
{
  v2 = sub_21430979C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214202910(uint64_t a1)
{
  v2 = sub_21430979C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21420294C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C30, &qword_2146F5A20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430979C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    v29 = 0;
    sub_2142E35EC();
    sub_2146DA1C8();
    v23 = v27;
    v30 = v28;
    v29 = 1;
    sub_2146DA1C8();
    v22 = v27;
    v21 = v28;
    v29 = 2;
    sub_2146DA1C8();
    v19 = v27;
    v20 = v28;
    v29 = 3;
    sub_2146DA1C8();
    v12 = v20;
    v18 = v27;
    v13 = v28;
    LOBYTE(v27) = 4;
    v14 = sub_2146DA178();
    (*(v6 + 8))(v9, v5);
    v15 = v30;
    v29 = v30;
    v16 = v21;
    v26 = v21;
    v25 = v12;
    v24 = v13;
    *a2 = v23;
    *(a2 + 8) = v15;
    *(a2 + 16) = v22;
    *(a2 + 24) = v16;
    v17 = v18;
    *(a2 + 32) = v19;
    *(a2 + 40) = v12;
    *(a2 + 48) = v17;
    *(a2 + 56) = v13;
    *(a2 + 57) = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214202C40(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C38, &qword_2146F5A28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v26 = *(v1 + 24);
  v21 = v1[4];
  v22 = v10;
  v20 = *(v1 + 40);
  v19 = v1[6];
  LODWORD(v10) = *(v1 + 56);
  v17 = *(v1 + 57);
  v18 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430979C();
  sub_2146DAA28();
  v24 = v8;
  v25 = v9;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  sub_2142E37F4();
  v12 = v23;
  sub_2146DA388();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v13 = v20;
  v14 = v21;
  v15 = v19;
  v24 = v22;
  v25 = v26;
  v27 = 1;
  sub_2146DA388();
  v24 = v14;
  v25 = v13;
  v27 = 2;
  sub_2146DA388();
  v24 = v15;
  v25 = v18;
  v27 = 3;
  sub_2146DA388();
  LOBYTE(v24) = 4;
  sub_2146DA338();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_214202F10()
{
  if (*v0)
  {
    result = 0x7972616D6D7573;
  }

  else
  {
    result = 0x54746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_214202F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000)
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

uint64_t sub_214203034(uint64_t a1)
{
  v2 = sub_2143097F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214203070(uint64_t a1)
{
  v2 = sub_2143097F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BasicTapBack.MessageSummaryInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C40, &qword_2146F5A30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143097F0();
  sub_2146DAA08();
  if (!v2)
  {
    v15 = 0;
    sub_214309844();
    sub_2146DA1C8();
    v11 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v15 = 1;
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v14;
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t BasicTapBack.MessageSummaryInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C58, &qword_2146F5A38);
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
  sub_2143097F0();
  sub_2146DAA28();
  LOBYTE(v15) = v9;
  v17 = 0;
  sub_214309898();
  sub_2146DA388();
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

uint64_t sub_21420347C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2140676DC;
  *(v7 + 24) = 0;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v16);
  v9 = v16;
  v8 = v17;
  v10 = v20;
  v15[0] = a1;
  v15[1] = a2;
  v21 = v20;
  v16 = 0xD00000000000003BLL;
  v17 = 0x8000000214790E80;
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
    *v13 = 0xD00000000000003BLL;
    v13[1] = 0x8000000214790E80;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214203678(uint64_t a1)
{
  v2 = sub_2143098EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142036B4(uint64_t a1)
{
  v2 = sub_2143098EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142036F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C68, &qword_2146F5A40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143098EC();
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
  *(v16 + 16) = sub_2140676DC;
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
  v33 = 0xD00000000000003BLL;
  v34 = 0x8000000214790E80;
  v28 = 0x8000000214790E80;
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
  *v25 = 0xD00000000000003BLL;
  v25[1] = v24;
  v25[2] = 0xD00000000000001CLL;
  v25[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_214203AC8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
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
  *(a9 + 104) = a13;
  return result;
}

uint64_t sub_214203AEC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6D614E6E65766967;
    if (v1 != 1)
    {
      v5 = 0xD000000000000015;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x614E796C696D6166;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    if (v1 == 5)
    {
      v2 = 0xD000000000000018;
    }

    v3 = 0xD000000000000015;
    if (v1 != 3)
    {
      v3 = 0xD000000000000010;
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

uint64_t sub_214203BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214377F04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214203C08(uint64_t a1)
{
  v2 = sub_214309940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214203C44(uint64_t a1)
{
  v2 = sub_214309940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214203C80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C80, &qword_2146F5A50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309940();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v44) = 0;
    v11 = sub_2146DA168();
    v13 = v12;
    v14 = v11;
    LOBYTE(v44) = 1;
    v40 = sub_2146DA168();
    v41 = v14;
    v42 = v15;
    v43 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v46 = 2;
    sub_2142E12FC();
    sub_2146DA1C8();
    v16 = v45;
    v39 = v44;
    v46 = 3;
    sub_2146DA1C8();
    v18 = v44;
    v17 = v45;
    LOBYTE(v44) = 4;
    v35 = sub_2146DA168();
    v36 = v18;
    v37 = v19;
    v38 = v17;
    LOBYTE(v44) = 5;
    v20 = sub_2146DA168();
    v22 = v21;
    v33 = v20;
    LOBYTE(v44) = 6;
    v23 = sub_2146DA168();
    v34 = v24;
    v26 = v23;
    (*(v6 + 8))(v9, v5);
    v27 = v43;
    *a2 = v41;
    a2[1] = v27;
    v28 = v42;
    a2[2] = v40;
    a2[3] = v28;
    a2[4] = v39;
    a2[5] = v16;
    v29 = v38;
    a2[6] = v36;
    a2[7] = v29;
    v30 = v37;
    a2[8] = v35;
    a2[9] = v30;
    v31 = v34;
    a2[10] = v33;
    a2[11] = v22;
    a2[12] = v26;
    a2[13] = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214204094(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C90, &qword_2146F5A58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v28 = v1[3];
  v29 = v10;
  v11 = v1[4];
  v26 = v1[5];
  v27 = v11;
  v12 = v1[6];
  v24 = v1[7];
  v25 = v12;
  v13 = v1[9];
  v23[5] = v1[8];
  v23[6] = v13;
  v14 = v1[11];
  v23[3] = v1[10];
  v23[4] = v14;
  v15 = v1[13];
  v23[1] = v1[12];
  v23[2] = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309940();
  sub_2146DAA28();
  LOBYTE(v31) = 0;
  v17 = v30;
  sub_2146DA328();
  if (v17)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v20 = v26;
  v19 = v27;
  v21 = v24;
  v22 = v25;
  LOBYTE(v31) = 1;
  sub_2146DA328();
  v31 = v19;
  v32 = v20;
  v33 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v31 = v22;
  v32 = v21;
  v33 = 3;
  sub_2146DA388();
  LOBYTE(v31) = 4;
  sub_2146DA328();
  LOBYTE(v31) = 5;
  sub_2146DA328();
  LOBYTE(v31) = 6;
  sub_2146DA328();
  return MEMORY[8](v7, v3);
}

uint64_t sub_214204408(uint64_t a1)
{
  v2 = sub_214309994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214204444(uint64_t a1)
{
  v2 = sub_214309994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214204480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for EncodedAppData.EncodedContent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909C98, &qword_2146F5A60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309994();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v17;
    sub_214328930(&qword_27C906AB8, type metadata accessor for EncodedAppData.EncodedContent);
    v14 = v18;
    sub_2146DA1C8();
    (*(v8 + 8))(v11, v7);
    sub_214328704(v14, v13, type metadata accessor for EncodedAppData.EncodedContent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21420468C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909CA8, &qword_2146F5A68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309994();
  sub_2146DAA28();
  type metadata accessor for EncodedAppData.EncodedContent(0);
  sub_214328930(&qword_27C906AC8, type metadata accessor for EncodedAppData.EncodedContent);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21420481C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909CA8, &qword_2146F5A68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309994();
  sub_2146DAA28();
  type metadata accessor for EncodedAppData.EncodedContent(0);
  sub_214328930(&qword_27C906AC8, type metadata accessor for EncodedAppData.EncodedContent);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_214204994@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_21420499C(uint64_t a1)
{
  v2 = sub_2143099E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142049D8(uint64_t a1)
{
  v2 = sub_2143099E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214204ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_214204B64(uint64_t a1)
{
  v2 = sub_214309A3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214204BA0(uint64_t a1)
{
  v2 = sub_214309A3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214204BDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909CC8, &qword_2146F5A80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7 - 8];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309A3C();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v14;
    sub_214309A90();
    sub_2146DA1C8();
    (*(v5 + 8))(v8, v4);
    memcpy(v10, v13, 0x1DAuLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214204D5C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909CE0, &qword_2146F5A88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309A3C();
  sub_2146DAA28();
  sub_214309AE4();
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_214204EB4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909CE0, &qword_2146F5A88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309A3C();
  sub_2146DAA28();
  sub_214309AE4();
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_214204FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LOWORD(v41[0]) = 0;
  sub_2140615D0(v41);
  v6 = v41[8];
  v7 = v41[10];
  v8 = v41[11];
  *(a4 + 392) = v41[9];
  *(a4 + 408) = v7;
  *(a4 + 424) = v8;
  v9 = v41[4];
  v10 = v41[6];
  v11 = v41[7];
  *(a4 + 328) = v41[5];
  *(a4 + 344) = v10;
  *(a4 + 360) = v11;
  *(a4 + 376) = v6;
  v12 = v41[1];
  *(a4 + 248) = v41[0];
  v13 = v41[2];
  v14 = v41[3];
  *(a4 + 264) = v12;
  *(a4 + 280) = v13;
  *(a4 + 296) = v14;
  *(a4 + 312) = v9;
  *(a4 + 240) = 0;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_214309B38;
  *(v16 + 24) = 0;
  *(inited + 32) = v16;
  sub_214042B80(inited, a4 + 440);
  v17 = *(a4 + 440);
  v18 = *(a4 + 448);
  v19 = *(a4 + 464);
  v35 = *(a4 + 456);
  v20 = *(a4 + 472);
  v39[3] = 0x800000021478A360;
  v40[0] = a2;
  v40[1] = a3;
  v42 = v20;
  v43 = v20;
  v39[0] = 0xD00000000000002ELL;
  v39[1] = 0x8000000214790EC0;
  v39[2] = 0xD00000000000001CLL;

  v21 = v17(v40, &v43, v39);
  if (v37)
  {
  }

  else
  {
    if (v21)
    {

      v22 = *(a4 + 448);
      v23 = *(a4 + 464);

      *(a4 + 440) = v17;
      *(a4 + 448) = v18;
      *(a4 + 456) = a2;
      *(a4 + 464) = a3;
      *(a4 + 472) = v42;
      result = sub_213FB2DF4(a4, &qword_27C904858, &qword_214736F00);
      v25 = *(a1 + 208);
      *(a4 + 192) = *(a1 + 192);
      *(a4 + 208) = v25;
      *(a4 + 224) = *(a1 + 224);
      *(a4 + 240) = *(a1 + 240);
      v26 = *(a1 + 144);
      *(a4 + 128) = *(a1 + 128);
      *(a4 + 144) = v26;
      v27 = *(a1 + 176);
      *(a4 + 160) = *(a1 + 160);
      *(a4 + 176) = v27;
      v28 = *(a1 + 80);
      *(a4 + 64) = *(a1 + 64);
      *(a4 + 80) = v28;
      v29 = *(a1 + 112);
      *(a4 + 96) = *(a1 + 96);
      *(a4 + 112) = v29;
      v30 = *(a1 + 16);
      *a4 = *a1;
      *(a4 + 16) = v30;
      v31 = *(a1 + 48);
      *(a4 + 32) = *(a1 + 32);
      *(a4 + 48) = v31;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD00000000000002ELL;
    v32[1] = 0x8000000214790EC0;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21406D2CC(a1);
  v33 = *(a4 + 448);
  v34 = *(a4 + 464);

  *(a4 + 440) = v17;
  *(a4 + 448) = v18;
  *(a4 + 456) = v35;
  *(a4 + 464) = v19;
  *(a4 + 472) = v42;
  return sub_214309B44(a4);
}

uint64_t sub_214205330()
{
  if (*v0)
  {
    result = 0x6C616E696769726FLL;
  }

  else
  {
    result = 0x6567616D69;
  }

  *v0;
  return result;
}

uint64_t sub_214205374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEF65707954495455)
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

uint64_t sub_214205454(uint64_t a1)
{
  v2 = sub_214309B98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214205490(uint64_t a1)
{
  v2 = sub_214309B98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142054CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909CF0, &qword_2146F5A90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214309B98();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  LOBYTE(v32[0]) = 0;
  sub_21432076C(&qword_280B30CB8, &qword_27C905500, &qword_2146F2BE0);
  sub_2146DA1C8();
  v38[1] = 1;
  v12 = sub_2146DA168();
  v13 = v6;
  v29 = v5;
  LOWORD(v34[0]) = 0;
  v15 = v12;
  v26 = v16;
  sub_2140615D0(v34);
  *&v36[49] = v34[9];
  *&v36[51] = v34[10];
  *&v36[53] = v34[11];
  *&v36[41] = v34[5];
  *&v36[43] = v34[6];
  *&v36[45] = v34[7];
  *&v36[47] = v34[8];
  *&v36[33] = v34[1];
  *&v36[35] = v34[2];
  *&v36[37] = v34[3];
  *&v36[39] = v34[4];
  *&v36[31] = v34[0];
  memset(v36, 0, 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_21438F650;
  *(v18 + 24) = 0;
  *(v17 + 32) = v18;
  sub_214042B80(v17, &v36[55]);
  v19 = v36[55];
  v20 = v36[56];
  v24 = v15;
  v25 = v36[57];
  v33[0] = v15;
  v21 = v26;
  v33[1] = v26;
  v37 = LOBYTE(v36[59]);
  v38[0] = v36[59];
  v32[0] = 0xD00000000000002ELL;
  v32[1] = 0x8000000214790EC0;
  v32[2] = 0xD00000000000001CLL;
  v32[3] = 0x800000021478A360;
  v27 = v36[58];

  v28 = v19;
  v22 = v19(v33, v38, v32);
  if (v22)
  {

    (*(v13 + 8))(v9, v29);

    v36[55] = v28;
    v36[56] = v20;
    v36[57] = v24;
    v36[58] = v21;
    LOBYTE(v36[59]) = v37;
    memcpy(v32, v35, sizeof(v32));
    sub_213FB2DF4(v36, &qword_27C905500, &qword_2146F2BE0);
    memcpy(v36, v32, 0x1B8uLL);
    memcpy(v30, v36, 0x1D9uLL);
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  sub_214031C4C();
  swift_allocError();
  *v23 = 0xD00000000000002ELL;
  v23[1] = 0x8000000214790EC0;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v35, &qword_27C905500, &qword_2146F2BE0);
  (*(v13 + 8))(v9, v29);

  v36[55] = v28;
  v36[56] = v20;
  v36[57] = v25;
  v36[58] = v27;
  LOBYTE(v36[59]) = v37;
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_214309B44(v36);
}

uint64_t sub_214205A5C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D00, &qword_2146F5A98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309B98();
  sub_2146DAA28();
  v13[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_21432076C(qword_280B2E688, &qword_27C905500, &qword_2146F2BE0);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  if (*(v3 + 464))
  {
    v12 = *(v3 + 456);
    v13[14] = 1;

    sub_2146DA328();
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214205CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_214205D48(uint64_t a1)
{
  v2 = sub_214309BEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214205D84(uint64_t a1)
{
  v2 = sub_214309BEC();

  return MEMORY[0x2821FE720](a1, v2);
}

BlastDoor::Handwriting::DrawingStrokePoint __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Handwriting.DrawingStrokePoint.init(with:force:velocity:)(CGPoint with, Swift::Double force, Swift::Double velocity)
{
  *v3 = with.x;
  v3[1] = with.y;
  v3[2] = force;
  v3[3] = velocity;
  result.location.y = with.y;
  result.location.x = with.x;
  result.velocity = velocity;
  result.force = force;
  return result;
}

uint64_t sub_214205E84()
{
  v1 = 0x6563726F66;
  if (*v0 != 1)
  {
    v1 = 0x797469636F6C6576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_214205EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214378160(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214205F04(uint64_t a1)
{
  v2 = sub_214309C40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214205F40(uint64_t a1)
{
  v2 = sub_214309C40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Handwriting.DrawingStrokePoint.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D20, &qword_2146F5AB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309C40();
  sub_2146DAA08();
  if (!v2)
  {
    type metadata accessor for CGPoint(0);
    v19 = 0;
    sub_214328930(&qword_27C9058B8, type metadata accessor for CGPoint);
    sub_2146DA1C8();
    v11 = v18[0];
    v12 = v18[1];
    LOBYTE(v18[0]) = 1;
    sub_2146DA188();
    v15 = v14;
    LOBYTE(v18[0]) = 2;
    sub_2146DA188();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v15;
    a2[3] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Handwriting.DrawingStrokePoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D30, &qword_2146F5AB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v9 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309C40();
  sub_2146DAA28();
  v16 = v9;
  v17 = v10;
  v15[15] = 0;
  type metadata accessor for CGPoint(0);
  sub_214328930(&qword_27C9058D0, type metadata accessor for CGPoint);
  sub_2146DA388();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_2146DA348();
    LOBYTE(v16) = 2;
    sub_2146DA348();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2142063FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F50656B6F727473 && a2 == 0xEC00000073746E69)
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

uint64_t sub_214206488(uint64_t a1)
{
  v2 = sub_214309C94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142064C4(uint64_t a1)
{
  v2 = sub_214309C94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Handwriting.DrawingStroke.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D38, &qword_2146F5AC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309C94();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D48, &qword_2146F5AC8);
    sub_214309CE8();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Handwriting.DrawingStroke.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D60, &qword_2146F5AD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309C94();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D48, &qword_2146F5AC8);
  sub_214309DC0();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Handwriting.Drawing.init(with:strokesFrame:strokes:totalPoints:)(BlastDoor::Handwriting::Drawing *__return_ptr retstr, __C::CGRect with, __C::CGRect strokesFrame, Swift::OpaquePointer strokes, Swift::Int totalPoints)
{
  retstr->canvasBounds = with;
  retstr->strokesFrame = strokesFrame;
  retstr->strokes = strokes;
  retstr->totalPoints = totalPoints;
}

uint64_t sub_21420683C()
{
  v1 = 0x6F427361766E6163;
  v2 = 0x73656B6F727473;
  if (*v0 != 2)
  {
    v2 = 0x696F506C61746F74;
  }

  if (*v0)
  {
    v1 = 0x4673656B6F727473;
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

uint64_t sub_2142068D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214378274(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142068F8(uint64_t a1)
{
  v2 = sub_214309E98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214206934(uint64_t a1)
{
  v2 = sub_214309E98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Handwriting.Drawing.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D78, &qword_2146F5AD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309E98();
  sub_2146DAA08();
  if (!v2)
  {
    type metadata accessor for CGRect(0);
    v22 = 0;
    sub_214328930(&qword_27C9083F0, type metadata accessor for CGRect);
    sub_2146DA1C8();
    v18 = v20;
    v19 = v21;
    v22 = 1;
    sub_2146DA1C8();
    v16 = v20;
    v17 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D88, &qword_2146F5AE0);
    v22 = 2;
    sub_214309EEC();
    sub_2146DA1C8();
    v12 = v20;
    LOBYTE(v20) = 3;
    v13 = sub_2146DA1A8();
    (*(v6 + 8))(v9, v5);
    v14 = v19;
    *a2 = v18;
    *(a2 + 16) = v14;
    v15 = v17;
    *(a2 + 32) = v16;
    *(a2 + 48) = v15;
    *(a2 + 64) = v12;
    *(a2 + 72) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Handwriting.Drawing.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DA0, &qword_2146F5AE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = v3[2];
  v18 = v3[3];
  v19 = v10;
  v11 = *(v3 + 9);
  v17 = *(v3 + 8);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214309E98();
  sub_2146DAA28();
  v13 = v3[1];
  v20 = *v3;
  v21 = v13;
  v22 = 0;
  type metadata accessor for CGRect(0);
  sub_214328930(&qword_27C908438, type metadata accessor for CGRect);
  sub_2146DA388();
  if (!v2)
  {
    v15 = v17;
    v20 = v19;
    v21 = v18;
    v22 = 1;
    sub_2146DA388();
    *&v20 = v15;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909D88, &qword_2146F5AE0);
    sub_214309FC4();
    sub_2146DA388();
    LOBYTE(v20) = 3;
    sub_2146DA368();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_214206ED8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v105 = a4;
  v12 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  sub_213FB2E54(a10, a9 + *(v12 + 32), &qword_27C909DB8, &qword_2146F5AF0);
  sub_2145ED9D0(&v101);
  v76 = v103;
  v77 = v102;
  v13 = v104;
  sub_2145EDA04(&v97);
  v15 = v98;
  v14 = v99;
  v16 = v100;
  sub_2145EDA38(&v93);
  v18 = v94;
  v17 = v95;
  v19 = v96;
  sub_2145EDA74(&v88);
  v20 = v89;
  v21 = v90;
  v22 = v91;
  v23 = v92;
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = v101;
  *(a9 + 32) = v77;
  *(a9 + 40) = v76;
  *(a9 + 48) = v13;
  *(a9 + 56) = v97;
  *(a9 + 72) = v15;
  *(a9 + 80) = v14;
  *(a9 + 88) = v16;
  *(a9 + 96) = v93;
  *(a9 + 112) = v18;
  *(a9 + 120) = v17;
  *(a9 + 128) = v19;
  v24 = a9 + *(v12 + 36);
  *v24 = v88;
  *(v24 + 20) = v21;
  *(v24 + 16) = v20;
  *(v24 + 21) = v22;
  *(v24 + 22) = v23;
  v26 = *(a9 + 16);
  v25 = *(a9 + 24);
  v28 = *(a9 + 32);
  v27 = *(a9 + 40);
  LOBYTE(v20) = *(a9 + 48);
  *&v97 = a3;
  *(&v97 + 1) = v105;
  v81 = v20;
  LOBYTE(v93) = v20;
  *&v101 = 0xD000000000000044;
  *(&v101 + 1) = 0x8000000214790EF0;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  sub_213FDC9D0(v28, v27);
  v29 = v26(&v97, &v93, &v101);
  if (v87)
  {

LABEL_6:

    sub_213FB2DF4(a10, &qword_27C909DB8, &qword_2146F5AF0);
    v41 = *(a9 + 24);
    v42 = *(a9 + 32);
    v43 = *(a9 + 40);

    sub_213FDC6D0(v42, v43);
    *(a9 + 16) = v26;
    *(a9 + 24) = v25;
    *(a9 + 32) = v28;
    *(a9 + 40) = v27;
    *(a9 + 48) = v81;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
  }

  v78 = v24;
  if ((v29 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000044;
    v40[1] = 0x8000000214790EF0;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  sub_213FDC6D0(v28, v27);

  v30 = *(a9 + 24);
  v31 = *(a9 + 32);
  v32 = *(a9 + 40);

  sub_213FDC6D0(v31, v32);
  *(a9 + 16) = v26;
  *(a9 + 24) = v25;
  v33 = v105;
  *(a9 + 32) = a3;
  *(a9 + 40) = v33;
  *(a9 + 48) = v81;
  v35 = *(a9 + 56);
  v34 = *(a9 + 64);
  v36 = *(a9 + 72);
  v37 = *(a9 + 80);
  v38 = *(a9 + 88);
  *&v97 = a5;
  *(&v97 + 1) = a6;
  LOBYTE(v93) = v38;
  *&v101 = 0xD000000000000040;
  *(&v101 + 1) = 0x8000000214790F40;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  sub_213FDC9D0(v36, v37);
  v105 = v35;
  v39 = v35(&v97, &v93, &v101);
  if ((v39 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v55 = 0xD000000000000040;
    v55[1] = 0x8000000214790F40;
    v55[2] = 0xD00000000000001CLL;
    v55[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a10, &qword_27C909DB8, &qword_2146F5AF0);
    v56 = *(a9 + 64);
    v57 = *(a9 + 72);
    v58 = *(a9 + 80);

    sub_213FDC6D0(v57, v58);
    *(a9 + 56) = v105;
    *(a9 + 64) = v34;
    *(a9 + 72) = v36;
    *(a9 + 80) = v37;
    *(a9 + 88) = v38;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
  }

  sub_213FDC6D0(v36, v37);

  v45 = *(a9 + 64);
  v46 = *(a9 + 72);
  v47 = *(a9 + 80);

  sub_213FDC6D0(v46, v47);
  *(a9 + 56) = v105;
  *(a9 + 64) = v34;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = v38;
  v49 = *(a9 + 96);
  v48 = *(a9 + 104);
  v50 = *(a9 + 112);
  v51 = *(a9 + 120);
  v52 = *(a9 + 128);
  *&v97 = a7;
  *(&v97 + 1) = a8;
  v85 = v52;
  LOBYTE(v93) = v52;
  *&v101 = 0xD000000000000041;
  *(&v101 + 1) = 0x8000000214790F90;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;
  v53 = v50;

  sub_213FDC9D0(v53, v51);
  v105 = v49;
  v54 = v49(&v97, &v93, &v101);
  if ((v54 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v67 = 0xD000000000000041;
    v67[1] = 0x8000000214790F90;
    v67[2] = 0xD00000000000001CLL;
    v67[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a10, &qword_27C909DB8, &qword_2146F5AF0);
    v68 = *(a9 + 104);
    v69 = *(a9 + 112);
    v70 = *(a9 + 120);

    sub_213FDC6D0(v69, v70);
    *(a9 + 96) = v105;
    *(a9 + 104) = v48;
    *(a9 + 112) = v53;
    *(a9 + 120) = v51;
    *(a9 + 128) = v85;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
  }

  sub_213FDC6D0(v53, v51);

  v59 = *(a9 + 104);
  v60 = *(a9 + 112);
  v61 = *(a9 + 120);

  sub_213FDC6D0(v60, v61);
  *(a9 + 96) = v105;
  *(a9 + 104) = v48;
  *(a9 + 112) = a7;
  *(a9 + 120) = a8;
  *(a9 + 128) = v85;
  v63 = *v78;
  v62 = *(v78 + 8);
  v86 = *(v78 + 20);
  v64 = *(v78 + 16);
  LODWORD(v105) = *(v78 + 21);
  v65 = *(v78 + 22);
  LODWORD(v97) = a11;
  BYTE4(v97) = (a11 & 0x100000000) != 0;
  LOBYTE(v93) = v65;
  *&v101 = 0xD00000000000003DLL;
  *(&v101 + 1) = 0x8000000214790FE0;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  v66 = v63(&v97, &v93, &v101);
  if ((v66 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v72 = 0xD00000000000003DLL;
    v72[1] = 0x8000000214790FE0;
    v72[2] = 0xD00000000000001CLL;
    v72[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a10, &qword_27C909DB8, &qword_2146F5AF0);
    v73 = *(v78 + 8);

    *v78 = v63;
    *(v78 + 8) = v62;
    *(v78 + 20) = (v64 | (v86 << 32)) >> 32;
    *(v78 + 16) = v64;
    *(v78 + 21) = v105;
    *(v78 + 22) = v65;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
  }

  sub_213FB2DF4(a10, &qword_27C909DB8, &qword_2146F5AF0);
  v71 = *(v78 + 8);

  *v78 = v63;
  *(v78 + 8) = v62;
  *(v78 + 20) = BYTE4(a11) & 1;
  *(v78 + 16) = a11;
  *(v78 + 21) = 0;
  *(v78 + 22) = v65;
  return result;
}

uint64_t sub_214207668()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x6D754E646C697562;
  v4 = 0x6F666E4972657375;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6B616873646E6168;
  if (v1 != 1)
  {
    v5 = 0x696669746E656469;
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

uint64_t sub_214207734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143783E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21420775C(uint64_t a1)
{
  v2 = sub_21430A09C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214207798(uint64_t a1)
{
  v2 = sub_21430A09C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142077D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v108 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DC0, &qword_2146F5AF8);
  v125 = *(v7 - 8);
  v8 = *(v125 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v108 - v9;
  v11 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v144 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_21430A09C();
  v17 = v126;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v144);
  }

  v123 = v3;
  v126 = v6;
  v122 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v136) = 0;
  sub_2142E35EC();
  sub_2146DA1C8();
  v18 = v140;
  v19 = BYTE8(v140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v136) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  LODWORD(v120) = v19;
  v121 = v18;
  v21 = v140;
  LOBYTE(v136) = 2;
  sub_2146DA1C8();
  v119 = v21;
  v22 = *(&v140 + 1);
  v118 = v140;
  LOBYTE(v136) = 3;
  sub_2146DA1C8();
  v117 = v22;
  v116 = *(&v21 + 1);
  v23 = v140;
  LOBYTE(v140) = 4;
  sub_21430A0F0();
  v24 = v126;
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v136) = 5;
  sub_2142E6128();
  sub_2146DA1C8();
  v123 = *(&v23 + 1);
  v110 = v23;
  v109 = v140;
  v108 = BYTE4(v140);
  v25 = v122;
  sub_213FB2E54(v24, v122 + *(v11 + 32), &qword_27C909DB8, &qword_2146F5AF0);
  sub_2145ED9D0(&v140);
  v115 = v141;
  v114 = v142;
  LODWORD(v113) = v143;
  sub_2145EDA04(&v136);
  v26 = v137;
  v112 = v138;
  LODWORD(v111) = v139;
  sub_2145EDA38(&v132);
  v28 = v133;
  v27 = v134;
  v29 = v135;
  sub_2145EDA74(&v127);
  v30 = v128;
  v31 = v129;
  v32 = v130;
  v33 = v131;
  *v25 = v121;
  *(v25 + 8) = v120;
  *(v25 + 1) = v140;
  v34 = v114;
  v25[4] = v115;
  v25[5] = v34;
  *(v25 + 48) = v113;
  *(v25 + 7) = v136;
  v25[9] = v26;
  v35 = v25;
  v25[10] = v112;
  *(v25 + 88) = v111;
  *(v25 + 6) = v132;
  v25[14] = v28;
  v25[15] = v27;
  *(v25 + 128) = v29;
  v36 = v25 + *(v11 + 36);
  *v36 = v127;
  v36[20] = v31;
  *(v36 + 4) = v30;
  v36[21] = v32;
  v36[22] = v33;
  v38 = v25[2];
  v37 = v25[3];
  v39 = v25[4];
  v40 = v25[5];
  v41 = *(v25 + 48);
  *&v136 = v119;
  *(&v136 + 1) = v116;
  LODWORD(v120) = v41;
  LOBYTE(v132) = v41;
  *&v140 = 0xD000000000000044;
  *(&v140 + 1) = 0x8000000214790EF0;
  v113 = 0x8000000214790EF0;
  v141 = 0xD00000000000001CLL;
  v142 = 0x800000021478A360;

  v115 = v39;
  v114 = v40;
  sub_213FDC9D0(v39, v40);
  v42 = v37;
  v121 = v38;
  v43 = v38(&v136, &v132, &v140);
  v44 = v113;
  v111 = v36;
  v112 = 0x800000021478A360;
  if (v43)
  {
    sub_213FDC6D0(v115, v114);
    v45 = v112;

    v46 = v25[3];
    v47 = v25[4];
    v48 = v25[5];

    sub_213FDC6D0(v47, v48);
    v25[2] = v121;
    v25[3] = v42;
    v49 = v116;
    v25[4] = v119;
    v25[5] = v49;
    *(v25 + 48) = v120;
    v51 = v25[7];
    v50 = v35[8];
    v52 = v35[9];
    v53 = v35[10];
    v54 = *(v35 + 88);
    *&v136 = v118;
    *(&v136 + 1) = v117;
    LODWORD(v120) = v54;
    LOBYTE(v132) = v54;
    *&v140 = 0xD000000000000040;
    *(&v140 + 1) = 0x8000000214790F40;
    v141 = 0xD00000000000001CLL;
    v142 = v45;

    v119 = v52;
    v116 = v53;
    sub_213FDC9D0(v52, v53);
    v121 = v51;
    v55 = v51(&v136, &v132, &v140);
    v56 = v123;
    v114 = v10;
    v115 = v7;
    if (v55)
    {
      sub_213FDC6D0(v119, v116);
      v63 = v112;

      v64 = v35[8];
      v65 = v35[9];
      v66 = v35[10];

      sub_213FDC6D0(v65, v66);
      v35[7] = v121;
      v35[8] = v50;
      v67 = v117;
      v35[9] = v118;
      v35[10] = v67;
      *(v35 + 88) = v120;
      v68 = v35[12];
      v69 = v35[13];
      v70 = v35[14];
      v71 = v35[15];
      v72 = *(v35 + 128);
      *&v136 = v110;
      *(&v136 + 1) = v56;
      LODWORD(v121) = v72;
      LOBYTE(v132) = v72;
      *&v140 = 0xD000000000000041;
      *(&v140 + 1) = 0x8000000214790F90;
      v141 = 0xD00000000000001CLL;
      v142 = v63;

      sub_213FDC9D0(v70, v71);
      v120 = v68;
      v73 = v68(&v136, &v132, &v140);
      if (v73)
      {
        sub_213FDC6D0(v70, v71);
        v82 = v112;

        v83 = v122;
        v84 = v122[13];
        v85 = v122[14];
        v86 = v122[15];

        sub_213FDC6D0(v85, v86);
        v83[12] = v120;
        v83[13] = v69;
        v87 = v123;
        v83[14] = v110;
        v83[15] = v87;
        *(v83 + 128) = v121;
        v89 = *v111;
        v88 = *(v111 + 1);
        v90 = v111[20];
        v91 = *(v111 + 4);
        v92 = v111[21];
        v93 = v111[22];
        LODWORD(v136) = v109;
        BYTE4(v136) = v108;
        LOBYTE(v132) = v93;
        *&v140 = 0xD00000000000003DLL;
        *(&v140 + 1) = 0x8000000214790FE0;
        v141 = 0xD00000000000001CLL;
        v142 = v82;

        v94 = v89(&v136, &v132, &v140);
        if (v94)
        {

          sub_213FB2DF4(v126, &qword_27C909DB8, &qword_2146F5AF0);
          (*(v125 + 8))(v114, v115);
          v100 = v108 != 0;
          v101 = v111;
          v102 = *(v111 + 1);

          *v101 = v89;
          *(v101 + 1) = v88;
          v101[20] = v100;
          *(v101 + 4) = v109;
          v101[21] = 0;
          v101[22] = v93;
          sub_214328704(v122, v124, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
          return __swift_destroy_boxed_opaque_existential_1(v144);
        }

        sub_214031C4C();
        swift_allocError();
        *v103 = 0xD00000000000003DLL;
        v103[1] = 0x8000000214790FE0;
        v104 = v112;
        v103[2] = 0xD00000000000001CLL;
        v103[3] = v104;
        swift_willThrow();
        sub_213FB2DF4(v126, &qword_27C909DB8, &qword_2146F5AF0);
        (*(v125 + 8))(v114, v115);
        v105 = v91 | (v90 << 32);
        v106 = v111;
        v107 = *(v111 + 1);

        *v106 = v89;
        *(v106 + 1) = v88;
        v106[20] = BYTE4(v105);
        *(v106 + 4) = v105;
        v106[21] = v92;
        v106[22] = v93;
        v35 = v122;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v95 = 0xD000000000000041;
        v95[1] = 0x8000000214790F90;
        v96 = v112;
        v95[2] = 0xD00000000000001CLL;
        v95[3] = v96;
        swift_willThrow();

        sub_213FB2DF4(v126, &qword_27C909DB8, &qword_2146F5AF0);
        (*(v125 + 8))(v114, v115);
        v35 = v122;
        v97 = v122[13];
        v98 = v122[14];
        v99 = v122[15];

        sub_213FDC6D0(v98, v99);
        v35[12] = v120;
        v35[13] = v69;
        v35[14] = v70;
        v35[15] = v71;
        *(v35 + 128) = v121;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v74 = 0xD000000000000040;
      v74[1] = 0x8000000214790F40;
      v75 = v112;
      v74[2] = 0xD00000000000001CLL;
      v74[3] = v75;
      swift_willThrow();

      v76 = v115;
      v77 = v114;
      sub_213FB2DF4(v126, &qword_27C909DB8, &qword_2146F5AF0);
      (*(v125 + 8))(v77, v76);
      v78 = v35[8];
      v79 = v35[9];
      v80 = v35[10];

      sub_213FDC6D0(v79, v80);
      v35[7] = v121;
      v35[8] = v50;
      v81 = v116;
      v35[9] = v119;
      v35[10] = v81;
      *(v35 + 88) = v120;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v57 = 0xD000000000000044;
    v57[1] = v44;
    v58 = v112;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = v58;
    swift_willThrow();

    sub_213FB2DF4(v126, &qword_27C909DB8, &qword_2146F5AF0);
    (*(v125 + 8))(v10, v7);
    v59 = v25[3];
    v60 = v25[4];
    v61 = v25[5];

    sub_213FDC6D0(v60, v61);
    v35[2] = v121;
    v35[3] = v42;
    v62 = v114;
    v35[4] = v115;
    v35[5] = v62;
    *(v35 + 48) = v120;
  }

  __swift_destroy_boxed_opaque_existential_1(v144);
  return sub_21432887C(v35, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
}

uint64_t sub_214208710(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DE0, &qword_2146F5B00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430A09C();
  sub_2146DAA28();
  v11 = *(v3 + 8);
  v21 = *v3;
  LOBYTE(v22) = v11;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  sub_2142E37F4();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[5];
  if (v12 != 1)
  {
    v21 = v3[4];
    v22 = v12;
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v13 = v3[10];
    if (v13 != 1)
    {
      v21 = v3[9];
      v22 = v13;
      v23 = 2;
      sub_2146DA388();
      v14 = v3[15];
      if (v14 != 1)
      {
        v21 = v3[14];
        v22 = v14;
        v23 = 3;
        sub_2146DA388();
        v15 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
        v16 = *(v15 + 32);
        LOBYTE(v21) = 4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
        sub_21430A1A4();
        sub_2146DA388();
        v17 = v3 + *(v15 + 36);
        if ((*(v17 + 21) & 1) == 0)
        {
          v18 = *(v17 + 20);
          LODWORD(v21) = *(v17 + 16);
          BYTE4(v21) = v18 & 1;
          v23 = 5;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
          sub_2142E62D8();
          sub_2146DA388();
          return (*(v6 + 8))(v9, v5);
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214208AAC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v107 = a4;
  v82 = *a10;
  v81 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
  sub_213FB2E54(a11, a9 + *(v81 + 36), &qword_27C909DB8, &qword_2146F5AF0);
  sub_2145EDC40(&v103);
  v13 = v105;
  v77 = v104;
  v14 = v106;
  sub_2145EDC74(&v99);
  v16 = v100;
  v15 = v101;
  v17 = v102;
  sub_2145EDCA8(&v95);
  v19 = v96;
  v18 = v97;
  v20 = v98;
  sub_2145EDCE4(&v90);
  v21 = v91;
  v22 = v92;
  v23 = v93;
  v24 = v94;
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = v103;
  *(a9 + 32) = v77;
  *(a9 + 40) = v13;
  *(a9 + 48) = v14;
  *(a9 + 56) = v99;
  *(a9 + 72) = v16;
  *(a9 + 80) = v15;
  *(a9 + 88) = v17;
  *(a9 + 96) = v95;
  *(a9 + 112) = v19;
  *(a9 + 120) = v18;
  *(a9 + 128) = v20;
  *(a9 + 129) = v82;
  v25 = a9 + *(v81 + 40);
  *v25 = v90;
  *(v25 + 20) = v22;
  *(v25 + 16) = v21;
  *(v25 + 21) = v23;
  *(v25 + 22) = v24;
  v27 = *(a9 + 16);
  v26 = *(a9 + 24);
  v29 = *(a9 + 32);
  v28 = *(a9 + 40);
  LOBYTE(v21) = *(a9 + 48);
  *&v99 = a3;
  *(&v99 + 1) = v107;
  v83 = v21;
  LOBYTE(v95) = v21;
  *&v103 = 0xD000000000000045;
  *(&v103 + 1) = 0x8000000214791020;
  v104 = 0xD00000000000001CLL;
  v105 = 0x800000021478A360;

  sub_213FDC9D0(v29, v28);
  v30 = v27(&v99, &v95, &v103);
  if (v89)
  {

LABEL_6:

    sub_213FB2DF4(a11, &qword_27C909DB8, &qword_2146F5AF0);
    v42 = *(a9 + 24);
    v43 = *(a9 + 32);
    v44 = *(a9 + 40);

    sub_213FDC6D0(v43, v44);
    *(a9 + 16) = v27;
    *(a9 + 24) = v26;
    *(a9 + 32) = v29;
    *(a9 + 40) = v28;
    *(a9 + 48) = v83;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
  }

  v80 = v25;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD000000000000045;
    v41[1] = 0x8000000214791020;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  sub_213FDC6D0(v29, v28);

  v31 = *(a9 + 24);
  v32 = *(a9 + 32);
  v33 = *(a9 + 40);

  sub_213FDC6D0(v32, v33);
  *(a9 + 16) = v27;
  *(a9 + 24) = v26;
  v34 = v107;
  *(a9 + 32) = a3;
  *(a9 + 40) = v34;
  *(a9 + 48) = v83;
  v36 = *(a9 + 56);
  v35 = *(a9 + 64);
  v37 = *(a9 + 72);
  v38 = *(a9 + 80);
  v39 = *(a9 + 88);
  *&v99 = a5;
  *(&v99 + 1) = a6;
  LOBYTE(v95) = v39;
  *&v103 = 0xD000000000000041;
  *(&v103 + 1) = 0x8000000214791070;
  v104 = 0xD00000000000001CLL;
  v105 = 0x800000021478A360;

  sub_213FDC9D0(v37, v38);
  v107 = v36;
  v40 = v36(&v99, &v95, &v103);
  if ((v40 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v56 = 0xD000000000000041;
    v56[1] = 0x8000000214791070;
    v56[2] = 0xD00000000000001CLL;
    v56[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a11, &qword_27C909DB8, &qword_2146F5AF0);
    v57 = *(a9 + 64);
    v58 = *(a9 + 72);
    v59 = *(a9 + 80);

    sub_213FDC6D0(v58, v59);
    *(a9 + 56) = v107;
    *(a9 + 64) = v35;
    *(a9 + 72) = v37;
    *(a9 + 80) = v38;
    *(a9 + 88) = v39;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
  }

  sub_213FDC6D0(v37, v38);

  v46 = *(a9 + 64);
  v47 = *(a9 + 72);
  v48 = *(a9 + 80);

  sub_213FDC6D0(v47, v48);
  *(a9 + 56) = v107;
  *(a9 + 64) = v35;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = v39;
  v50 = *(a9 + 96);
  v49 = *(a9 + 104);
  v51 = *(a9 + 112);
  v52 = *(a9 + 120);
  v53 = *(a9 + 128);
  *&v99 = a7;
  *(&v99 + 1) = a8;
  v87 = v53;
  LOBYTE(v95) = v53;
  *&v103 = 0xD000000000000042;
  *(&v103 + 1) = 0x80000002147910C0;
  v104 = 0xD00000000000001CLL;
  v105 = 0x800000021478A360;
  v54 = v51;

  sub_213FDC9D0(v54, v52);
  v107 = v50;
  v55 = v50(&v99, &v95, &v103);
  if ((v55 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v68 = 0xD000000000000042;
    v68[1] = 0x80000002147910C0;
    v68[2] = 0xD00000000000001CLL;
    v68[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(a11, &qword_27C909DB8, &qword_2146F5AF0);
    v69 = *(a9 + 104);
    v70 = *(a9 + 112);
    v71 = *(a9 + 120);

    sub_213FDC6D0(v70, v71);
    *(a9 + 96) = v107;
    *(a9 + 104) = v49;
    *(a9 + 112) = v54;
    *(a9 + 120) = v52;
    *(a9 + 128) = v87;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
  }

  sub_213FDC6D0(v54, v52);

  v60 = *(a9 + 104);
  v61 = *(a9 + 112);
  v62 = *(a9 + 120);

  sub_213FDC6D0(v61, v62);
  *(a9 + 96) = v107;
  *(a9 + 104) = v49;
  *(a9 + 112) = a7;
  *(a9 + 120) = a8;
  *(a9 + 128) = v87;
  v64 = *v80;
  v63 = *(v80 + 8);
  v88 = *(v80 + 20);
  v65 = *(v80 + 16);
  LODWORD(v107) = *(v80 + 21);
  v66 = *(v80 + 22);
  LODWORD(v99) = a12;
  BYTE4(v99) = (a12 & 0x100000000) != 0;
  LOBYTE(v95) = v66;
  *&v103 = 0xD00000000000003ELL;
  *(&v103 + 1) = 0x8000000214791110;
  v104 = 0xD00000000000001CLL;
  v105 = 0x800000021478A360;

  v67 = v64(&v99, &v95, &v103);
  if ((v67 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v73 = 0xD00000000000003ELL;
    v73[1] = 0x8000000214791110;
    v73[2] = 0xD00000000000001CLL;
    v73[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(a11, &qword_27C909DB8, &qword_2146F5AF0);
    v74 = *(v80 + 8);

    *v80 = v64;
    *(v80 + 8) = v63;
    *(v80 + 20) = (v65 | (v88 << 32)) >> 32;
    *(v80 + 16) = v65;
    *(v80 + 21) = v107;
    *(v80 + 22) = v66;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
  }

  sub_213FB2DF4(a11, &qword_27C909DB8, &qword_2146F5AF0);
  v72 = *(v80 + 8);

  *v80 = v64;
  *(v80 + 8) = v63;
  *(v80 + 20) = BYTE4(a12) & 1;
  *(v80 + 16) = a12;
  *(v80 + 21) = 0;
  *(v80 + 22) = v66;
  return result;
}

uint64_t sub_214209250()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x6F666E4972657375;
  if (v1 != 5)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x6D754E646C697562;
  if (v1 != 3)
  {
    v4 = 1701869940;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6B616873646E6168;
  if (v1 != 1)
  {
    v5 = 0x696669746E656469;
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

uint64_t sub_214209334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143785F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21420935C(uint64_t a1)
{
  v2 = sub_21430A258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214209398(uint64_t a1)
{
  v2 = sub_21430A258();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142093D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v103 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DF8, &qword_2146F5B08);
  v123 = *(v7 - 8);
  v8 = *(v123 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v103 - v9;
  v11 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v142 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_21430A258();
  v17 = v124;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v142);
  }

  v121 = v3;
  v119 = v11;
  v124 = v6;
  v120 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v134) = 0;
  sub_2142E35EC();
  sub_2146DA1C8();
  v18 = v7;
  v19 = v138;
  v20 = BYTE8(v138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v134) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  LODWORD(v117) = v20;
  v118 = v19;
  v21 = v138;
  LOBYTE(v134) = 2;
  sub_2146DA1C8();
  v116 = v21;
  v22 = *(&v138 + 1);
  v115 = v138;
  LOBYTE(v134) = 3;
  sub_2146DA1C8();
  v23 = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E08, &qword_2146F5B10);
  LOBYTE(v134) = 4;
  sub_21430A2AC();
  sub_2146DA1C8();
  v113 = v23;
  v114 = v22;
  v24 = v138;
  LOBYTE(v138) = 5;
  sub_21430A0F0();
  v25 = v124;
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v134) = 6;
  sub_2142E6128();
  sub_2146DA1C8();
  v121 = *(&v23 + 1);
  v105 = v138;
  v104 = BYTE4(v138);
  LODWORD(v112) = v24;
  v27 = v119;
  v28 = v120;
  sub_213FB2E54(v25, v120 + *(v119 + 36), &qword_27C909DB8, &qword_2146F5AF0);
  sub_2145EDC40(&v138);
  v29 = v139;
  v111 = v140;
  LODWORD(v110) = v141;
  sub_2145EDC74(&v134);
  v109 = v135;
  v108 = v136;
  v107 = v137;
  sub_2145EDCA8(&v130);
  v30 = v131;
  v31 = v132;
  v106 = v133;
  sub_2145EDCE4(&v125);
  v32 = v126;
  v33 = v127;
  v34 = v128;
  v35 = v129;
  *v28 = v118;
  *(v28 + 8) = v117;
  *(v28 + 1) = v138;
  v36 = v111;
  v28[4] = v29;
  v28[5] = v36;
  *(v28 + 48) = v110;
  *(v28 + 7) = v134;
  v37 = v108;
  v28[9] = v109;
  v28[10] = v37;
  *(v28 + 88) = v107;
  *(v28 + 6) = v130;
  v28[14] = v30;
  v28[15] = v31;
  *(v28 + 128) = v106;
  *(v28 + 129) = v112;
  v38 = v28 + *(v27 + 40);
  *v38 = v125;
  v38[20] = v33;
  *(v38 + 4) = v32;
  v38[21] = v34;
  v109 = v38;
  v38[22] = v35;
  v39 = v28[2];
  v40 = v28[3];
  v41 = v28[4];
  v42 = v28[5];
  v43 = *(v28 + 48);
  *&v134 = v116;
  *(&v134 + 1) = *(&v21 + 1);
  v110 = *(&v21 + 1);
  LODWORD(v118) = v43;
  LOBYTE(v130) = v43;
  *&v138 = 0xD000000000000045;
  *(&v138 + 1) = 0x8000000214791020;
  v111 = 0x8000000214791020;
  v139 = 0xD00000000000001CLL;
  v140 = 0x800000021478A360;

  v117 = v41;
  v112 = v42;
  sub_213FDC9D0(v41, v42);
  v119 = v40;
  v44 = v39(&v134, &v130, &v138);
  v45 = v39;
  v46 = v111;
  if (v44)
  {
    v108 = v10;
    v110 = v18;
    sub_213FDC6D0(v117, v112);

    v47 = v120;
    v48 = v120[3];
    v49 = v120[4];
    v50 = v45;
    v51 = v120[5];

    sub_213FDC6D0(v49, v51);
    v52 = v119;
    v47[2] = v50;
    v47[3] = v52;
    v47[4] = v116;
    v47[5] = *(&v21 + 1);
    *(v47 + 48) = v118;
    v54 = v47[7];
    v53 = v47[8];
    v55 = v47[9];
    v56 = v47[10];
    v57 = *(v47 + 88);
    *&v134 = v115;
    *(&v134 + 1) = v114;
    LODWORD(v119) = v57;
    LOBYTE(v130) = v57;
    *&v138 = 0xD000000000000041;
    *(&v138 + 1) = 0x8000000214791070;
    v139 = 0xD00000000000001CLL;
    v140 = 0x800000021478A360;

    sub_213FDC9D0(v55, v56);
    v58 = v54(&v134, &v130, &v138);
    if (v58)
    {
      sub_213FDC6D0(v55, v56);

      v66 = v120;
      v67 = v120[8];
      v68 = v120[9];
      v69 = v120[10];

      sub_213FDC6D0(v68, v69);
      v66[7] = v54;
      v66[8] = v53;
      v70 = v114;
      v66[9] = v115;
      v66[10] = v70;
      *(v66 + 88) = v119;
      v72 = v66[12];
      v71 = v66[13];
      v73 = v66[14];
      v74 = v66[15];
      v75 = *(v66 + 128);
      *&v134 = v113;
      *(&v134 + 1) = v121;
      LODWORD(v119) = v75;
      LOBYTE(v130) = v75;
      *&v138 = 0xD000000000000042;
      *(&v138 + 1) = 0x80000002147910C0;
      v139 = 0xD00000000000001CLL;
      v140 = 0x800000021478A360;

      sub_213FDC9D0(v73, v74);
      v76 = v72(&v134, &v130, &v138);
      if (v76)
      {
        sub_213FDC6D0(v73, v74);

        v81 = v120;
        v82 = v120[13];
        v83 = v120[14];
        v84 = v120[15];

        sub_213FDC6D0(v83, v84);
        v81[12] = v72;
        v81[13] = v71;
        v85 = v121;
        v81[14] = v113;
        v81[15] = v85;
        *(v81 + 128) = v119;
        v87 = *v109;
        v86 = *(v109 + 1);
        v88 = v109[20];
        v89 = *(v109 + 4);
        LODWORD(v121) = v109[21];
        v90 = v109[22];
        LODWORD(v134) = v105;
        BYTE4(v134) = v104;
        LOBYTE(v130) = v90;
        *&v138 = 0xD00000000000003ELL;
        *(&v138 + 1) = 0x8000000214791110;
        v139 = 0xD00000000000001CLL;
        v140 = 0x800000021478A360;

        v91 = v87(&v134, &v130, &v138);
        if (v91)
        {

          sub_213FB2DF4(v124, &qword_27C909DB8, &qword_2146F5AF0);
          (*(v123 + 8))(v108, v110);
          v96 = v104 != 0;
          v97 = v109;
          v98 = *(v109 + 1);

          *v97 = v87;
          *(v97 + 1) = v86;
          v97[20] = v96;
          *(v97 + 4) = v105;
          v97[21] = 0;
          v97[22] = v90;
          sub_214328704(v120, v122, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
          return __swift_destroy_boxed_opaque_existential_1(v142);
        }

        sub_214031C4C();
        swift_allocError();
        *v99 = 0xD00000000000003ELL;
        v99[1] = 0x8000000214791110;
        v99[2] = 0xD00000000000001CLL;
        v99[3] = 0x800000021478A360;
        swift_willThrow();
        sub_213FB2DF4(v124, &qword_27C909DB8, &qword_2146F5AF0);
        (*(v123 + 8))(v108, v110);
        v100 = v89 | (v88 << 32);
        v101 = v109;
        v102 = *(v109 + 1);

        *v101 = v87;
        *(v101 + 1) = v86;
        v101[20] = BYTE4(v100);
        *(v101 + 4) = v100;
        v101[21] = v121;
        v101[22] = v90;
        v60 = v120;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v92 = 0xD000000000000042;
        v92[1] = 0x80000002147910C0;
        v92[2] = 0xD00000000000001CLL;
        v92[3] = 0x800000021478A360;
        swift_willThrow();

        sub_213FB2DF4(v124, &qword_27C909DB8, &qword_2146F5AF0);
        (*(v123 + 8))(v108, v110);
        v60 = v120;
        v93 = v120[13];
        v94 = v120[14];
        v95 = v120[15];

        sub_213FDC6D0(v94, v95);
        v60[12] = v72;
        v60[13] = v71;
        v60[14] = v73;
        v60[15] = v74;
        *(v60 + 128) = v119;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v77 = 0xD000000000000041;
      v77[1] = 0x8000000214791070;
      v77[2] = 0xD00000000000001CLL;
      v77[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FB2DF4(v124, &qword_27C909DB8, &qword_2146F5AF0);
      (*(v123 + 8))(v108, v110);
      v60 = v120;
      v78 = v120[8];
      v79 = v120[9];
      v80 = v120[10];

      sub_213FDC6D0(v79, v80);
      v60[7] = v54;
      v60[8] = v53;
      v60[9] = v55;
      v60[10] = v56;
      *(v60 + 88) = v119;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v59 = 0xD000000000000045;
    v59[1] = v46;
    v59[2] = 0xD00000000000001CLL;
    v59[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v124, &qword_27C909DB8, &qword_2146F5AF0);
    (*(v123 + 8))(v10, v18);
    v60 = v120;
    v61 = v120[3];
    v62 = v120[4];
    v63 = v120[5];

    sub_213FDC6D0(v62, v63);
    v64 = v119;
    v60[2] = v45;
    v60[3] = v64;
    v65 = v112;
    v60[4] = v117;
    v60[5] = v65;
    *(v60 + 48) = v118;
  }

  __swift_destroy_boxed_opaque_existential_1(v142);
  return sub_21432887C(v60, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
}

uint64_t sub_21420A310(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E20, &qword_2146F5B18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430A258();
  sub_2146DAA28();
  v11 = *(v3 + 8);
  v21 = *v3;
  LOBYTE(v22) = v11;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  sub_2142E37F4();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[5];
  if (v12 != 1)
  {
    v21 = v3[4];
    v22 = v12;
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v13 = v3[10];
    if (v13 != 1)
    {
      v21 = v3[9];
      v22 = v13;
      v23 = 2;
      sub_2146DA388();
      v14 = v3[15];
      if (v14 != 1)
      {
        v21 = v3[14];
        v22 = v14;
        v23 = 3;
        sub_2146DA388();
        LOBYTE(v21) = *(v3 + 129);
        v23 = 4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E08, &qword_2146F5B10);
        sub_21430A384();
        sub_2146DA388();
        v15 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0);
        v16 = *(v15 + 36);
        LOBYTE(v21) = 5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909DB8, &qword_2146F5AF0);
        sub_21430A1A4();
        sub_2146DA388();
        v17 = v3 + *(v15 + 40);
        if ((*(v17 + 21) & 1) == 0)
        {
          v18 = *(v17 + 20);
          LODWORD(v21) = *(v17 + 16);
          BYTE4(v21) = v18 & 1;
          v23 = 6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
          sub_2142E62D8();
          sub_2146DA388();
          return (*(v6 + 8))(v9, v5);
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21420A700@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
  v29 = a5;
  sub_213FB2E54(a5, a6 + *(v11 + 28), &qword_27C909E38, &qword_2146F5B20);
  sub_2145EDEC8(&v34);
  v13 = v34;
  v12 = v35;
  v15 = v36;
  v14 = v37;
  v16 = v38;
  memcpy(a6, a1, 0x189uLL);
  *(a6 + 400) = v13;
  *(a6 + 408) = v12;
  *(a6 + 416) = v15;
  *(a6 + 424) = v14;
  *(a6 + 432) = v16;
  v17 = a4[3];
  *(a6 + 472) = a4[2];
  *(a6 + 488) = v17;
  *(a6 + 497) = *(a4 + 57);
  v18 = a4[1];
  *(a6 + 440) = *a4;
  *(a6 + 456) = v18;
  v33[0] = a2;
  v33[1] = a3;
  v39 = v16;
  v40 = v16;
  v34 = 0xD000000000000046;
  v35 = 0x8000000214791150;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  sub_213FDC9D0(v15, v14);
  v19 = v30;
  v31 = v13;
  v20 = v13(v33, &v40, &v34);
  if (v19)
  {
  }

  else
  {
    if (v20)
    {
      sub_213FDC6D0(v15, v14);

      sub_213FB2DF4(v29, &qword_27C909E38, &qword_2146F5B20);
      v21 = *(a6 + 408);
      v22 = *(a6 + 416);
      v23 = *(a6 + 424);

      result = sub_213FDC6D0(v22, v23);
      *(a6 + 400) = v13;
      *(a6 + 408) = v12;
      *(a6 + 416) = a2;
      *(a6 + 424) = a3;
      *(a6 + 432) = v39;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD000000000000046;
    v25[1] = 0x8000000214791150;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(v29, &qword_27C909E38, &qword_2146F5B20);
  v26 = *(a6 + 408);
  v27 = *(a6 + 416);
  v28 = *(a6 + 424);

  sub_213FDC6D0(v27, v28);
  *(a6 + 400) = v31;
  *(a6 + 408) = v12;
  *(a6 + 416) = v15;
  *(a6 + 424) = v14;
  *(a6 + 432) = v39;
  return sub_21432887C(a6, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
}

unint64_t sub_21420A990()
{
  v1 = 0x74694B64756F6C63;
  if (!*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_21420AA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214378850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21420AA48(uint64_t a1)
{
  v2 = sub_21430A45C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21420AA84(uint64_t a1)
{
  v2 = sub_21430A45C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21420AAC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
  v3 = *(*(v51 - 1) + 64);
  MEMORY[0x28223BE20](v51);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E40, &qword_2146F5B28);
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - v8;
  v10 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v14 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_21430A45C();
  v16 = v52;
  sub_2146DAA08();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v71);
  }

  v48 = v10;
  v17 = v50;
  v52 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
  v69[399] = 0;
  sub_21430A4B0();
  sub_2146DA1C8();
  memcpy(v69, v70, 0x189uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v60) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v47 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
  v64 = 2;
  sub_21430A588();
  sub_2146DA1C8();
  v62 = v67;
  *v63 = v68[0];
  *&v63[9] = *(v68 + 9);
  v60 = v65;
  v61 = v66;
  LOBYTE(v55) = 3;
  sub_21430A660();
  v18 = v52;
  sub_2146DA1C8();
  v46 = v6;
  sub_213FB2E54(v18, &v13[*(v48 + 28)], &qword_27C909E38, &qword_2146F5B20);
  sub_2145EDEC8(&v55);
  v20 = v55;
  v21 = v56;
  v51 = v55;
  v22 = v57;
  v48 = v58;
  v23 = v59;
  memcpy(v13, v69, 0x189uLL);
  *(v13 + 50) = v20;
  *(v13 + 51) = v21;
  *(v13 + 52) = v22;
  v24 = v22;
  v25 = v48;
  *(v13 + 53) = v48;
  v13[432] = v23;
  v26 = *v63;
  *(v13 + 472) = v62;
  *(v13 + 488) = v26;
  *(v13 + 497) = *&v63[9];
  v27 = v61;
  *(v13 + 440) = v60;
  *(v13 + 456) = v27;
  v54 = v47;
  v45 = v23;
  v53 = v23;
  v55 = 0xD000000000000046;
  v56 = 0x8000000214791150;
  v42 = 0x8000000214791150;
  v57 = 0xD00000000000001CLL;
  v58 = 0x800000021478A360;

  v43 = v24;
  sub_213FDC9D0(v24, v25);
  v44 = v21;
  v28 = v51(&v54, &v53, &v55);
  v29 = v42;
  if (v28)
  {
    sub_213FDC6D0(v43, v48);

    sub_213FB2DF4(v52, &qword_27C909E38, &qword_2146F5B20);
    (*(v17 + 8))(v9, v46);
    v30 = *(v13 + 51);
    v31 = *(v13 + 52);
    v32 = *(v13 + 53);

    sub_213FDC6D0(v31, v32);
    v33 = v44;
    *(v13 + 50) = v51;
    *(v13 + 51) = v33;
    v34 = *(&v47 + 1);
    *(v13 + 52) = v47;
    *(v13 + 53) = v34;
    v13[432] = v45;
    sub_214328704(v13, v49, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
    return __swift_destroy_boxed_opaque_existential_1(v71);
  }

  sub_214031C4C();
  swift_allocError();
  *v35 = 0xD000000000000046;
  v35[1] = v29;
  v35[2] = 0xD00000000000001CLL;
  v35[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v52, &qword_27C909E38, &qword_2146F5B20);
  (*(v17 + 8))(v9, v46);
  v36 = *(v13 + 51);
  v37 = *(v13 + 52);
  v38 = *(v13 + 53);

  sub_213FDC6D0(v37, v38);
  v40 = v43;
  v39 = v44;
  *(v13 + 50) = v51;
  *(v13 + 51) = v39;
  v41 = v48;
  *(v13 + 52) = v40;
  *(v13 + 53) = v41;
  v13[432] = v45;
  __swift_destroy_boxed_opaque_existential_1(v71);
  return sub_21432887C(v13, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
}

uint64_t sub_21420B16C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E90, &qword_2146F5B40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430A45C();
  sub_2146DAA28();
  memcpy(v33, v3, 0x189uLL);
  memcpy(v32, v3, sizeof(v32));
  v31[399] = 0;
  sub_213FB2E54(v33, v31, &qword_27C909E50, &unk_2146F5B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
  sub_21430A714();
  sub_2146DA388();
  if (v2)
  {
    memcpy(v31, v32, 0x189uLL);
    sub_213FB2DF4(v31, &qword_27C909E50, &unk_2146F5B30);
    return (*(v6 + 8))(v9, v5);
  }

  memcpy(v31, v32, 0x189uLL);
  sub_213FB2DF4(v31, &qword_27C909E50, &unk_2146F5B30);
  v11 = *(v3 + 424);
  if (v11 != 1)
  {
    v29 = *(v3 + 416);
    v30 = v11;
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v13 = *(v3 + 456);
    v14 = *(v3 + 488);
    v26 = *(v3 + 472);
    *v27 = v14;
    *&v27[9] = *(v3 + 497);
    v15 = *(v3 + 456);
    v25[0] = *(v3 + 440);
    v25[1] = v15;
    v22 = v13;
    v23 = v26;
    v24[0] = *(v3 + 488);
    *(v24 + 9) = *(v3 + 497);
    v21 = v25[0];
    v20 = 2;
    sub_213FB2E54(v25, v18, &qword_27C909E68, &qword_214761070);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
    sub_21430A7EC();
    sub_2146DA388();
    v18[2] = v23;
    *v19 = v24[0];
    *&v19[9] = *(v24 + 9);
    v18[0] = v21;
    v18[1] = v22;
    sub_213FB2DF4(v18, &qword_27C909E68, &qword_214761070);
    v16 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo(0) + 28);
    v17[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
    sub_21430A8C4();
    sub_2146DA388();
    return (*(v6 + 8))(v9, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21420B59C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v108 = a2;
  v81 = *a7;
  v13 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  v87 = a8;
  sub_213FB2E54(a8, a9 + v13[8], &qword_27C909E38, &qword_2146F5B20);
  sub_2145EE218(&v104);
  v14 = v105;
  v15 = v106;
  v16 = v107;
  sub_2145EE398(&v100);
  v18 = v101;
  v17 = v102;
  LOBYTE(a8) = v103;
  sub_2145EE3CC(&v96);
  v19 = v97;
  v79 = v98;
  v77 = v99;
  sub_2145EE400(&v91);
  v20 = v92;
  v21 = v93;
  v22 = v94;
  v23 = v95;
  *a9 = v104;
  *(a9 + 16) = v14;
  *(a9 + 24) = v15;
  *(a9 + 32) = v16;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4 & 1;
  *(a9 + 56) = v100;
  *(a9 + 72) = v18;
  *(a9 + 80) = v17;
  *(a9 + 88) = a8;
  *(a9 + 89) = v81;
  v24 = a9 + v13[9];
  *v24 = v96;
  *(v24 + 16) = v19;
  *(v24 + 24) = v79;
  *(v24 + 32) = v77;
  v25 = a9 + v13[10];
  *v25 = v91;
  *(v25 + 20) = v21;
  *(v25 + 16) = v20;
  *(v25 + 21) = v22;
  *(v25 + 22) = v23;
  v27 = *a9;
  v26 = *(a9 + 8);
  v29 = *(a9 + 16);
  v28 = *(a9 + 24);
  LOBYTE(v20) = *(a9 + 32);
  *&v100 = a1;
  *(&v100 + 1) = v108;
  v84 = v20;
  LOBYTE(v96) = v20;
  *&v104 = 0xD000000000000042;
  *(&v104 + 1) = 0x80000002147911A0;
  v105 = 0xD00000000000001CLL;
  v106 = 0x800000021478A360;

  sub_213FDC9D0(v29, v28);
  v82 = v27;
  v30 = v27(&v100, &v96, &v104);
  if (v90)
  {

LABEL_6:

    sub_213FB2DF4(v87, &qword_27C909E38, &qword_2146F5B20);
    v41 = *(a9 + 8);
    v42 = *(a9 + 16);
    v43 = *(a9 + 24);

    sub_213FDC6D0(v42, v43);
    *a9 = v27;
    *(a9 + 8) = v26;
    *(a9 + 16) = v29;
    *(a9 + 24) = v28;
    *(a9 + 32) = v84;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  }

  v78 = v24;
  v75 = v25;
  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000042;
    v40[1] = 0x80000002147911A0;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  sub_213FDC6D0(v29, v28);

  v31 = *(a9 + 8);
  v32 = *(a9 + 16);
  v33 = *(a9 + 24);

  sub_213FDC6D0(v32, v33);
  *a9 = v82;
  *(a9 + 8) = v26;
  v34 = v108;
  *(a9 + 16) = a1;
  *(a9 + 24) = v34;
  *(a9 + 32) = v84;
  v36 = *(a9 + 56);
  v35 = *(a9 + 64);
  v37 = *(a9 + 72);
  v38 = *(a9 + 80);
  LOBYTE(v34) = *(a9 + 88);
  *&v100 = a5;
  *(&v100 + 1) = a6;
  v89 = v34;
  LOBYTE(v96) = v34;
  *&v104 = 0xD000000000000041;
  *(&v104 + 1) = 0x80000002147911F0;
  v105 = 0xD00000000000001CLL;
  v106 = 0x800000021478A360;

  sub_213FDC9D0(v37, v38);
  v108 = v36;
  v39 = v36(&v100, &v96, &v104);
  if ((v39 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v55 = 0xD000000000000041;
    v55[1] = 0x80000002147911F0;
    v55[2] = 0xD00000000000001CLL;
    v55[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v87, &qword_27C909E38, &qword_2146F5B20);
    v56 = *(a9 + 64);
    v57 = *(a9 + 72);
    v58 = *(a9 + 80);

    sub_213FDC6D0(v57, v58);
    *(a9 + 56) = v108;
    *(a9 + 64) = v35;
    *(a9 + 72) = v37;
    *(a9 + 80) = v38;
    *(a9 + 88) = v89;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  }

  sub_213FDC6D0(v37, v38);

  v45 = *(a9 + 64);
  v46 = *(a9 + 72);
  v47 = *(a9 + 80);

  sub_213FDC6D0(v46, v47);
  *(a9 + 56) = v108;
  *(a9 + 64) = v35;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = v89;
  v49 = *v78;
  v48 = *(v78 + 8);
  v51 = *(v78 + 16);
  v50 = *(v78 + 24);
  v52 = *(v78 + 32);
  v100 = a10;
  LODWORD(v108) = v52;
  LOBYTE(v96) = v52;
  *&v104 = 0xD000000000000043;
  *(&v104 + 1) = 0x8000000214791240;
  v105 = 0xD00000000000001CLL;
  v106 = 0x800000021478A360;

  v86 = v51;
  sub_213FDC9D0(v51, v50);
  v53 = v49;
  v54 = v49(&v100, &v96, &v104);
  if ((v54 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v68 = 0xD000000000000043;
    v68[1] = 0x8000000214791240;
    v68[2] = 0xD00000000000001CLL;
    v68[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v87, &qword_27C909E38, &qword_2146F5B20);
    v69 = *(v78 + 8);
    v70 = *(v78 + 16);
    v71 = *(v78 + 24);

    sub_213FDC6D0(v70, v71);
    *v78 = v53;
    *(v78 + 8) = v48;
    *(v78 + 16) = v86;
    *(v78 + 24) = v50;
    *(v78 + 32) = v108;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  }

  sub_213FDC6D0(v86, v50);

  v59 = *(v78 + 8);
  v60 = *(v78 + 16);
  v61 = *(v78 + 24);

  sub_213FDC6D0(v60, v61);
  *v78 = v49;
  *(v78 + 8) = v48;
  *(v78 + 16) = a10;
  *(v78 + 32) = v108;
  v63 = *v25;
  v62 = *(v75 + 8);
  v64 = *(v75 + 20);
  v65 = *(v75 + 16);
  LODWORD(v108) = *(v75 + 21);
  v66 = *(v75 + 22);
  LODWORD(v100) = a11;
  BYTE4(v100) = (a11 & 0x100000000) != 0;
  LOBYTE(v96) = v66;
  *&v104 = 0xD00000000000003ELL;
  *(&v104 + 1) = 0x8000000214791290;
  v105 = 0xD00000000000001CLL;
  v106 = 0x800000021478A360;

  v67 = v63(&v100, &v96, &v104);
  if ((v67 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v73 = 0xD00000000000003ELL;
    v73[1] = 0x8000000214791290;
    v73[2] = 0xD00000000000001CLL;
    v73[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v87, &qword_27C909E38, &qword_2146F5B20);
    v74 = *(v75 + 8);

    *v75 = v63;
    *(v75 + 8) = v62;
    *(v75 + 20) = (v65 | (v64 << 32)) >> 32;
    *(v75 + 16) = v65;
    *(v75 + 21) = v108;
    *(v75 + 22) = v66;
    return sub_21432887C(a9, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  }

  sub_213FB2DF4(v87, &qword_27C909E38, &qword_2146F5B20);
  v72 = *(v75 + 8);

  *v75 = v63;
  *(v75 + 8) = v62;
  *(v75 + 20) = BYTE4(a11) & 1;
  *(v75 + 16) = a11;
  *(v75 + 21) = 0;
  *(v75 + 22) = v66;
  return result;
}

uint64_t sub_21420BD88()
{
  v1 = *v0;
  v2 = 0x6D754E646C697562;
  v3 = 0x5465646172677075;
  if (v1 != 5)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x546567617373656DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1702125924;
  if (v1 != 1)
  {
    v5 = 0x696669746E656469;
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

uint64_t sub_21420BE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143789C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21420BEA4(uint64_t a1)
{
  v2 = sub_21430A978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21420BEE0(uint64_t a1)
{
  v2 = sub_21430A978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21420BF1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v122 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909EC8, &qword_2146F5B48);
  v143 = *(v7 - 8);
  v8 = *(v143 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v122 - v9;
  v11 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v162 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_21430A978();
  v17 = v144;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v162);
  }

  v140 = v11;
  v144 = v6;
  v141 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v154) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v18 = v158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v154) = 1;
  sub_2142E35EC();
  sub_2146DA1C8();
  v139 = *(&v18 + 1);
  v19 = v158;
  v20 = BYTE8(v158);
  LOBYTE(v154) = 2;
  sub_2146DA1C8();
  v136 = v20;
  v137 = v19;
  v138 = v18;
  v21 = v158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909ED8, &qword_2146F5B50);
  LOBYTE(v154) = 3;
  sub_21430A9CC();
  sub_2146DA1C8();
  v135 = v21;
  v22 = v158;
  LOBYTE(v158) = 4;
  sub_21430A660();
  v23 = v144;
  sub_2146DA1C8();
  v24 = v139;
  LODWORD(v134) = v22;
  LOBYTE(v154) = 5;
  sub_2146DA1C8();
  v26 = v158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v154) = 6;
  sub_2142E6128();
  sub_2146DA1C8();
  v125 = v26;
  v133 = *(&v21 + 1);
  v132 = *(&v26 + 1);
  v124 = v158;
  v123 = BYTE4(v158);
  v27 = v140;
  v28 = v141;
  sub_213FB2E54(v23, v141 + *(v140 + 32), &qword_27C909E38, &qword_2146F5B20);
  sub_2145EE218(&v158);
  v131 = v159;
  v130 = v160;
  LODWORD(v129) = v161;
  sub_2145EE398(&v154);
  v29 = v156;
  v128 = v155;
  v30 = v157;
  sub_2145EE3CC(&v150);
  v31 = v151;
  v127 = v152;
  LODWORD(v126) = v153;
  sub_2145EE400(&v145);
  v32 = v146;
  v33 = v147;
  v34 = v148;
  v35 = v149;
  *v28 = v158;
  v36 = v130;
  v28[2] = v131;
  v28[3] = v36;
  *(v28 + 32) = v129;
  v28[5] = v137;
  *(v28 + 48) = v136;
  *(v28 + 7) = v154;
  v28[9] = v128;
  v28[10] = v29;
  *(v28 + 88) = v30;
  *(v28 + 89) = v134;
  v37 = v28 + *(v27 + 36);
  *v37 = v150;
  v38 = v127;
  *(v37 + 2) = v31;
  *(v37 + 3) = v38;
  v129 = v37;
  v37[32] = v126;
  v39 = v28 + *(v27 + 40);
  *v39 = v145;
  v39[20] = v33;
  *(v39 + 4) = v32;
  v39[21] = v34;
  v39[22] = v35;
  v140 = 0;
  v41 = *v28;
  v40 = v28[1];
  v42 = v24;
  v43 = v28[2];
  v44 = v28[3];
  v45 = *(v28 + 32);
  *&v154 = v138;
  *(&v154 + 1) = v42;
  v136 = v45;
  LOBYTE(v150) = v45;
  *&v158 = 0xD000000000000042;
  *(&v158 + 1) = 0x80000002147911A0;
  v130 = 0x80000002147911A0;
  v159 = 0xD00000000000001CLL;
  v160 = 0x800000021478A360;

  v134 = v43;
  v131 = v44;
  sub_213FDC9D0(v43, v44);
  v46 = v40;
  v47 = v140;
  v137 = v41;
  v48 = v41(&v154, &v150, &v158);
  v140 = v47;
  if (v47)
  {

LABEL_10:

    sub_213FB2DF4(v144, &qword_27C909E38, &qword_2146F5B20);
    (*(v143 + 8))(v10, v7);
    v65 = v141;
    v66 = v141[1];
    v67 = v141[2];
    v68 = v141[3];

    v69 = v67;
    v70 = v65;
    sub_213FDC6D0(v69, v68);
    *v65 = v137;
    v65[1] = v46;
    v71 = v131;
    v65[2] = v134;
    v65[3] = v71;
    *(v65 + 32) = v136;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v162);
    return sub_21432887C(v70, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  }

  v49 = v130;
  v128 = 0x800000021478A360;
  v127 = v39;
  if ((v48 & 1) == 0)
  {
    sub_214031C4C();
    v62 = swift_allocError();
    *v63 = 0xD000000000000042;
    v63[1] = v49;
    v64 = v128;
    v63[2] = 0xD00000000000001CLL;
    v63[3] = v64;
    v140 = v62;
    swift_willThrow();
    goto LABEL_10;
  }

  v126 = v7;
  sub_213FDC6D0(v134, v131);
  v50 = v128;

  v51 = v141;
  v52 = v141[1];
  v53 = v141[2];
  v54 = v141[3];

  sub_213FDC6D0(v53, v54);
  *v51 = v137;
  v51[1] = v46;
  v51[2] = v138;
  v51[3] = v42;
  *(v51 + 32) = v136;
  v56 = v51[7];
  v55 = v51[8];
  v57 = v51[9];
  v58 = v51[10];
  v59 = *(v51 + 88);
  *&v154 = v135;
  *(&v154 + 1) = v133;
  LOBYTE(v150) = v59;
  *&v158 = 0xD000000000000041;
  *(&v158 + 1) = 0x80000002147911F0;
  v159 = 0xD00000000000001CLL;
  v160 = v50;

  sub_213FDC9D0(v57, v58);
  v60 = v140;
  v61 = v56(&v154, &v150, &v158);
  v140 = v60;
  if (v60)
  {

LABEL_16:

    sub_213FB2DF4(v144, &qword_27C909E38, &qword_2146F5B20);
    (*(v143 + 8))(v10, v126);
    v88 = v141;
    v89 = v141[8];
    v90 = v141[9];
    v91 = v141[10];

    v92 = v90;
    v70 = v88;
    sub_213FDC6D0(v92, v91);
    v88[7] = v56;
    v88[8] = v55;
    v88[9] = v57;
    v88[10] = v58;
    *(v88 + 88) = v59;
    goto LABEL_11;
  }

  if ((v61 & 1) == 0)
  {
    sub_214031C4C();
    v85 = swift_allocError();
    *v86 = 0xD000000000000041;
    v86[1] = 0x80000002147911F0;
    v87 = v128;
    v86[2] = 0xD00000000000001CLL;
    v86[3] = v87;
    v140 = v85;
    swift_willThrow();
    goto LABEL_16;
  }

  sub_213FDC6D0(v57, v58);
  v72 = v128;

  v73 = v141;
  v74 = v141[8];
  v75 = v141[9];
  v76 = v141[10];

  sub_213FDC6D0(v75, v76);
  v73[7] = v56;
  v73[8] = v55;
  v77 = v133;
  v73[9] = v135;
  v73[10] = v77;
  *(v73 + 88) = v59;
  v79 = *v129;
  v78 = *(v129 + 1);
  v80 = *(v129 + 2);
  v81 = *(v129 + 3);
  v82 = v129[32];
  *&v154 = v125;
  *(&v154 + 1) = v132;
  LOBYTE(v150) = v82;
  *&v158 = 0xD000000000000043;
  *(&v158 + 1) = 0x8000000214791240;
  v159 = 0xD00000000000001CLL;
  v160 = v72;

  sub_213FDC9D0(v80, v81);
  v83 = v140;
  v84 = v79(&v154, &v150, &v158);
  v140 = v83;
  if (v83)
  {

LABEL_21:

    sub_213FB2DF4(v144, &qword_27C909E38, &qword_2146F5B20);
    (*(v143 + 8))(v10, v126);
    v110 = v129;
    v111 = *(v129 + 1);
    v112 = *(v129 + 2);
    v113 = *(v129 + 3);

    sub_213FDC6D0(v112, v113);
    *v110 = v79;
    *(v110 + 1) = v78;
    *(v110 + 2) = v80;
    *(v110 + 3) = v81;
    v110[32] = v82;
LABEL_22:
    v70 = v141;
    goto LABEL_11;
  }

  if ((v84 & 1) == 0)
  {
    sub_214031C4C();
    v107 = swift_allocError();
    *v108 = 0xD000000000000043;
    v108[1] = 0x8000000214791240;
    v109 = v128;
    v108[2] = 0xD00000000000001CLL;
    v108[3] = v109;
    v140 = v107;
    swift_willThrow();
    goto LABEL_21;
  }

  sub_213FDC6D0(v80, v81);
  v93 = v128;

  v94 = v129;
  v95 = *(v129 + 1);
  v96 = *(v129 + 2);
  v97 = *(v129 + 3);

  sub_213FDC6D0(v96, v97);
  *v94 = v79;
  *(v94 + 1) = v78;
  v98 = v132;
  *(v94 + 2) = v125;
  *(v94 + 3) = v98;
  v94[32] = v82;
  v100 = *v127;
  v99 = *(v127 + 1);
  v101 = v127[20];
  v102 = *(v127 + 4);
  v103 = v127[21];
  v104 = v127[22];
  LODWORD(v154) = v124;
  BYTE4(v154) = v123;
  LOBYTE(v150) = v104;
  *&v158 = 0xD00000000000003ELL;
  *(&v158 + 1) = 0x8000000214791290;
  v159 = 0xD00000000000001CLL;
  v160 = v93;

  v105 = v140;
  v106 = v100(&v154, &v150, &v158);
  v140 = v105;
  if (v105)
  {
    sub_213FB2DF4(v144, &qword_27C909E38, &qword_2146F5B20);
    (*(v143 + 8))(v10, v126);

LABEL_26:
    v120 = v127;
    v121 = *(v127 + 1);

    *v120 = v100;
    *(v120 + 1) = v99;
    v120[20] = (v102 | (v101 << 32)) >> 32;
    *(v120 + 4) = v102;
    v120[21] = v103;
    v120[22] = v104;
    goto LABEL_22;
  }

  if ((v106 & 1) == 0)
  {
    sub_214031C4C();
    v117 = swift_allocError();
    *v118 = 0xD00000000000003ELL;
    v118[1] = 0x8000000214791290;
    v119 = v128;
    v118[2] = 0xD00000000000001CLL;
    v118[3] = v119;
    v140 = v117;
    swift_willThrow();
    sub_213FB2DF4(v144, &qword_27C909E38, &qword_2146F5B20);
    (*(v143 + 8))(v10, v126);
    goto LABEL_26;
  }

  sub_213FB2DF4(v144, &qword_27C909E38, &qword_2146F5B20);
  (*(v143 + 8))(v10, v126);
  v114 = v123 != 0;
  v115 = v127;
  v116 = *(v127 + 1);

  *v115 = v100;
  *(v115 + 1) = v99;
  v115[20] = v114;
  *(v115 + 4) = v124;
  v115[21] = 0;
  v115[22] = v104;
  sub_214328704(v141, v142, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  return __swift_destroy_boxed_opaque_existential_1(v162);
}

uint64_t sub_21420CEDC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909EF0, &qword_2146F5B58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430A978();
  sub_2146DAA28();
  v11 = *(v3 + 24);
  if (v11 != 1)
  {
    v23 = *(v3 + 16);
    v24 = v11;
    v25 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (v2)
    {
      return (*(v6 + 8))(v9, v5);
    }

    v12 = *(v3 + 48);
    v23 = *(v3 + 40);
    LOBYTE(v24) = v12;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    sub_2142E37F4();
    sub_2146DA388();
    v13 = *(v3 + 80);
    if (v13 != 1)
    {
      v23 = *(v3 + 72);
      v24 = v13;
      v25 = 2;
      sub_2146DA388();
      LOBYTE(v23) = *(v3 + 89);
      v25 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909ED8, &qword_2146F5B50);
      sub_21430AAA4();
      sub_2146DA388();
      v22 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0);
      v14 = *(v22 + 32);
      LOBYTE(v23) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E38, &qword_2146F5B20);
      sub_21430A8C4();
      sub_2146DA388();
      v15 = v22;
      v16 = v3 + *(v22 + 36);
      v17 = *(v16 + 24);
      if (v17 != 1)
      {
        v23 = *(v16 + 16);
        v24 = v17;
        v25 = 5;
        sub_2146DA388();
        v18 = v3 + *(v15 + 40);
        if ((*(v18 + 21) & 1) == 0)
        {
          v19 = *(v18 + 20);
          LODWORD(v23) = *(v18 + 16);
          BYTE4(v23) = v19 & 1;
          v25 = 6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
          sub_2142E62D8();
          sub_2146DA388();
          return (*(v6 + 8))(v9, v5);
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21420D2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2145EEB40(&v17);
  v5 = v17;
  v6 = v18;
  v7 = v19;
  v8 = v20;
  v9 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD00000000000003ELL;
  v18 = 0x80000002147912D0;
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
    *v13 = 0xD00000000000003ELL;
    v13[1] = 0x80000002147912D0;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v7, v8);
  }

  return sub_213FDC6D0(v7, v8);
}

uint64_t sub_21420D4D0(uint64_t a1)
{
  v2 = sub_21430AB7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21420D50C(uint64_t a1)
{
  v2 = sub_21430AB7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21420D548@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F08, &qword_2146F5B60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430AB7C();
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
  sub_2145EEB40(&v32);
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
  v32 = 0xD00000000000003ELL;
  v33 = 0x80000002147912D0;
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
  *v21 = 0xD00000000000003ELL;
  v21[1] = 0x80000002147912D0;
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

uint64_t sub_21420D8DC(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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
  if (v11 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v16 = v14;
    v17 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_21420DAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2145EEDA0(&v35);
  v9 = v35;
  v8 = v36;
  v11 = v37;
  v10 = v38;
  *v46 = *v40;
  *&v46[3] = *&v40[3];
  v30 = v42;
  v32 = v43;
  v33 = a1;
  v26 = v41;
  v27 = v44;
  v31 = v45;
  v28 = v39;
  v47 = v39;
  v34 = a2;
  v35 = 0xD00000000000003FLL;
  v36 = 0x8000000214791310;
  v37 = 0xD00000000000001CLL;
  v38 = 0x800000021478A360;

  sub_213FDC9D0(v11, v10);
  v25 = v8;
  v12 = v9(&v33, &v47, &v35);
  v13 = v9;
  if (v5)
  {

LABEL_6:

    v16 = v26;
    v15 = v27;
    v14 = v25;

    sub_213FDC6D0(v11, v10);
LABEL_7:
    v35 = v13;
    v36 = v14;
    v37 = v11;
    v38 = v10;
    v39 = v28;
    *v40 = *v46;
    *&v40[3] = *&v46[3];
    v41 = v16;
    v42 = v30;
    v43 = v32;
    v44 = v15;
    v45 = v31;
    return sub_21430ABD0(&v35);
  }

  v22 = a2;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD00000000000003FLL;
    v18[1] = 0x8000000214791310;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v21 = v9;
  sub_213FDC6D0(v11, v10);

  v14 = v25;

  sub_213FDC6D0(v11, v10);
  v33 = a3;
  v34 = a4;
  v47 = v31;
  v35 = 0xD000000000000046;
  v36 = 0x8000000214791350;
  v37 = 0xD00000000000001CLL;
  v38 = 0x800000021478A360;

  v15 = v27;
  sub_213FDC9D0(v32, v27);
  v16 = v26;
  v17 = v26(&v33, &v47, &v35);
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000046;
    v20[1] = 0x8000000214791350;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();

    v11 = a1;

    sub_213FDC6D0(v32, v27);
    v10 = v22;
    v13 = v21;
    goto LABEL_7;
  }

  sub_213FDC6D0(v32, v27);

  result = sub_213FDC6D0(v32, v27);
  *a5 = v21;
  *(a5 + 8) = v25;
  *(a5 + 16) = a1;
  *(a5 + 24) = v22;
  *(a5 + 32) = v28;
  *(a5 + 33) = *v46;
  *(a5 + 36) = *&v46[3];
  *(a5 + 40) = v26;
  *(a5 + 48) = v30;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v31;
  return result;
}

unint64_t sub_21420DE78()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_21420DEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000214788420 == a2)
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

uint64_t sub_21420DFA8(uint64_t a1)
{
  v2 = sub_21430AC24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21420DFE4(uint64_t a1)
{
  v2 = sub_21430AC24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21420E020@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F20, &qword_2146F5B70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430AC24();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v56) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v55 = v61;
  v76 = v62;
  v72 = 1;
  sub_2146DA1C8();
  v42 = v73;
  v48 = v74;
  sub_2145EEDA0(&v61);
  v12 = v62;
  v54 = v61;
  v13 = v63;
  v14 = v64;
  v75[0] = *v66;
  *(v75 + 3) = *&v66[3];
  v47 = v67;
  v52 = v68;
  v53 = v69;
  v51 = v70;
  v50 = v71;
  *&v56 = v55;
  *(&v56 + 1) = v76;
  v46 = v65;
  LOBYTE(v60[0]) = v65;
  v61 = 0xD00000000000003FLL;
  v62 = 0x8000000214791310;
  v43 = 0x8000000214791310;
  v63 = 0xD00000000000001CLL;
  v64 = 0x800000021478A360;

  v45 = v13;
  v44 = v14;
  sub_213FDC9D0(v13, v14);
  v49 = v12;
  v15 = v54(&v56, v60, &v61);
  v41 = 0x800000021478A360;
  if (v15)
  {
    v16 = v45;
    v17 = v44;
    sub_213FDC6D0(v45, v44);
    v18 = v41;

    sub_213FDC6D0(v16, v17);
    v60[0] = v42;
    v60[1] = v48;
    LOBYTE(v56) = v50;
    v61 = 0xD000000000000046;
    v62 = 0x8000000214791350;
    v63 = 0xD00000000000001CLL;
    v64 = v18;

    sub_213FDC9D0(v53, v51);
    v19 = v47;
    v20 = v47(v60, &v56, &v61);
    v21 = v19;
    if (v20)
    {
      v28 = v51;
      sub_213FDC6D0(v53, v51);

      (*(v6 + 8))(v9, v5);
      v29 = v52;

      sub_213FDC6D0(v53, v28);
      v30 = v54;
      *&v56 = v54;
      v31 = v49;
      *(&v56 + 1) = v49;
      *&v57 = v55;
      v32 = v76;
      *(&v57 + 1) = v76;
      LOBYTE(v58) = v46;
      *(&v58 + 1) = v75[0];
      DWORD1(v58) = *(v75 + 3);
      *(&v58 + 1) = v19;
      *v59 = v29;
      v33 = v42;
      v34 = v48;
      *&v59[8] = v42;
      *&v59[16] = v48;
      v59[24] = v50;
      v35 = v56;
      v36 = v57;
      *(a2 + 57) = *&v59[9];
      v37 = *v59;
      a2[2] = v58;
      a2[3] = v37;
      *a2 = v35;
      a2[1] = v36;
      sub_21430AC78(&v56, &v61);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v61 = v30;
      v62 = v31;
      v63 = v55;
      v64 = v32;
      v65 = v46;
      *v66 = v75[0];
      *&v66[3] = *(v75 + 3);
      v67 = v47;
      v68 = v29;
      v69 = v33;
      v70 = v34;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD000000000000046;
    v38[1] = 0x8000000214791350;
    v39 = v41;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = v39;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);

    sub_213FDC6D0(v53, v51);
    v26 = v55;
    v27 = v76;
    v25 = v49;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v22 = v43;
    *v23 = 0xD00000000000003FLL;
    v23[1] = v22;
    v24 = v41;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = v24;
    swift_willThrow();

    v21 = v47;
    (*(v6 + 8))(v9, v5);
    v25 = v49;

    v26 = v45;
    v27 = v44;
    sub_213FDC6D0(v45, v44);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v61 = v54;
  v62 = v25;
  v63 = v26;
  v64 = v27;
  v65 = v46;
  *v66 = v75[0];
  *&v66[3] = *(v75 + 3);
  v67 = v21;
  v68 = v52;
  v69 = v53;
  v70 = v51;
LABEL_8:
  v71 = v50;
  return sub_21430ABD0(&v61);
}

uint64_t sub_21420E7FC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v26 = a2;
  sub_2145EEF8C(&v21);
  v9 = v21;
  v10 = v22;
  v11 = v23;
  v12 = v24;
  v13 = v25;
  v20[0] = a3;
  v20[1] = a4;
  v27 = v25;
  v21 = 0xD000000000000046;
  v22 = 0x80000002147913A0;
  v23 = 0xD00000000000001CLL;
  v24 = 0x800000021478A360;
  v14 = v9;

  sub_213FDC9D0(v11, v12);
  v15 = v14(v20, &v27, &v21);
  if (v6)
  {
  }

  else
  {
    if (v15)
    {
      sub_213FDC6D0(v11, v12);

      result = sub_213FDC6D0(v11, v12);
      *a5 = a1;
      *(a5 + 8) = v26 & 1;
      *(a5 + 16) = v14;
      *(a5 + 24) = v10;
      *(a5 + 32) = a3;
      *(a5 + 40) = a4;
      *(a5 + 48) = v13;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v17 = 0xD000000000000046;
    v17[1] = 0x80000002147913A0;
    v17[2] = 0xD00000000000001CLL;
    v17[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v11, v12);

  return sub_213FDC6D0(v11, v12);
}

uint64_t sub_21420E9D0()
{
  if (*v0)
  {
    result = 0x6B616873646E6168;
  }

  else
  {
    result = 1702125924;
  }

  *v0;
  return result;
}

uint64_t sub_21420EA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B616873646E6168 && a2 == 0xEE006E656B6F5465)
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

uint64_t sub_21420EAF4(uint64_t a1)
{
  v2 = sub_21430ACD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21420EB30(uint64_t a1)
{
  v2 = sub_21430ACD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21420EB6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F38, &qword_2146F5B80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430ACD4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v37[0]) = 0;
  sub_2142E35EC();
  sub_2146DA1C8();
  v11 = v38;
  v12 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v37[0]) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v43 = v12;
  v31 = v11;
  v15 = v38;
  v14 = v39;
  sub_2145EEF8C(&v38);
  v16 = v39;
  v17 = v41;
  v35 = v38;
  v36 = v40;
  v30 = v15;
  v37[0] = v15;
  v37[1] = v14;
  v34 = v14;
  v29 = v42;
  v44 = v42;
  v38 = 0xD000000000000046;
  v39 = 0x80000002147913A0;
  v40 = 0xD00000000000001CLL;
  v41 = 0x800000021478A360;

  v33 = v17;
  sub_213FDC9D0(v36, v17);
  v32 = v16;
  v18 = v35(v37, &v44, &v38);
  if (v18)
  {
    v19 = v33;
    sub_213FDC6D0(v36, v33);

    (*(v6 + 8))(v9, v5);
    v20 = v32;

    sub_213FDC6D0(v36, v19);
    v21 = v30;
    *a2 = v31;
    *(a2 + 8) = v43;
    v22 = v34;
    *(a2 + 16) = v35;
    *(a2 + 24) = v20;
    *(a2 + 32) = v21;
    *(a2 + 40) = v22;
    *(a2 + 48) = v29;

    sub_213FDC9D0(v21, v22);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v23 = v21;
    v24 = v22;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD000000000000046;
    v25[1] = 0x80000002147913A0;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);

    v26 = v36;
    v27 = v33;
    sub_213FDC6D0(v36, v33);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v23 = v26;
    v24 = v27;
  }

  return sub_213FDC6D0(v23, v24);
}

uint64_t sub_21420EF5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F48, &qword_2146F5B88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[5];
  v15 = v1[4];
  v16 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430ACD4();
  sub_2146DAA28();
  v18 = v8;
  LOBYTE(v19) = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  sub_2142E37F4();
  v12 = v17;
  sub_2146DA388();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  if (v16 != 1)
  {
    v18 = v15;
    v19 = v16;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v4 + 8))(v7, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void *sub_21420F1A8@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  memcpy(v12, __src, 0x169uLL);
  result = memcpy(a6, v12, 0x170uLL);
  *(a6 + 368) = a2;
  *(a6 + 376) = a3;
  *(a6 + 384) = a4;
  *(a6 + 392) = a5 & 1;
  return result;
}

unint64_t sub_21420F234()
{
  v1 = 0x7374756F6B726F77;
  v2 = 0x6D65766569686361;
  if (*v0 != 2)
  {
    v2 = 1702125924;
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

uint64_t sub_21420F2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214378C2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21420F2DC(uint64_t a1)
{
  v2 = sub_21430AD28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21420F318(uint64_t a1)
{
  v2 = sub_21430AD28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21420F354@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F50, &qword_2146F5B90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-1] - v8;
  v10 = a1[3];
  v11 = a1[4];
  v19 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430AD28();
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F60, &qword_2146F5B98);
    v24[391] = 0;
    sub_21430AD7C();
    v13 = v5;
    sub_2146DA1C8();
    memcpy(v23, v24, sizeof(v23));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F78, &qword_2146F5BA0);
    LOBYTE(v21) = 1;
    sub_21430AE54();
    sub_2146DA1C8();
    v14 = v20[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F90, &qword_2146F5BA8);
    LOBYTE(v21) = 2;
    sub_21430AF2C();
    sub_2146DA1C8();
    v15 = v20[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    v24[390] = 3;
    sub_2142E35EC();
    sub_2146DA1C8();
    (*(v12 + 8))(v9, v13);
    v17 = v21;
    v18 = v22;
    memcpy(v20, v23, 0x169uLL);
    v24[384] = v22;
    memcpy(a2, v20, 0x170uLL);
    *(a2 + 368) = v14;
    *(a2 + 376) = v15;
    *(a2 + 384) = v17;
    *(a2 + 392) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_21420F6F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909FA8, &qword_2146F5BB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  memcpy(v24, v1, 0x169uLL);
  v8 = *(v1 + 368);
  v17 = *(v1 + 376);
  v18 = v8;
  v16 = *(v1 + 384);
  v25 = *(v1 + 392);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(v24, v23, &qword_27C909F60, &qword_2146F5B98);
  sub_21430AD28();
  sub_2146DAA28();
  memcpy(v23, v24, 0x169uLL);
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F60, &qword_2146F5B98);
  sub_21430B004();
  v10 = v19;
  sub_2146DA388();
  if (v10)
  {
    memcpy(v22, v23, 0x169uLL);
    sub_213FB2DF4(v22, &qword_27C909F60, &qword_2146F5B98);
  }

  else
  {
    v11 = v16;
    v12 = v17;
    v13 = v25;
    memcpy(v22, v23, 0x169uLL);
    sub_213FB2DF4(v22, &qword_27C909F60, &qword_2146F5B98);
    v20 = v18;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F78, &qword_2146F5BA0);
    sub_21430B0DC();
    sub_2146DA388();
    v20 = v12;
    v26 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909F90, &qword_2146F5BA8);
    sub_21430B1B4();
    sub_2146DA388();
    v20 = v11;
    v21 = v13;
    v26 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    sub_2142E37F4();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_21420FA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2145EF100(&v35);
  v9 = v35;
  v8 = v36;
  v11 = v37;
  v10 = v38;
  *v46 = *v40;
  *&v46[3] = *&v40[3];
  v30 = v42;
  v32 = v43;
  v33 = a1;
  v26 = v41;
  v27 = v44;
  v31 = v45;
  v28 = v39;
  v47 = v39;
  v34 = a2;
  v35 = 0xD00000000000003CLL;
  v36 = 0x80000002147913F0;
  v37 = 0xD00000000000001CLL;
  v38 = 0x800000021478A360;

  sub_213FDC9D0(v11, v10);
  v25 = v8;
  v12 = v9(&v33, &v47, &v35);
  v13 = v9;
  if (v5)
  {

LABEL_6:

    v16 = v26;
    v15 = v27;
    v14 = v25;

    sub_213FDC6D0(v11, v10);
LABEL_7:
    v35 = v13;
    v36 = v14;
    v37 = v11;
    v38 = v10;
    v39 = v28;
    *v40 = *v46;
    *&v40[3] = *&v46[3];
    v41 = v16;
    v42 = v30;
    v43 = v32;
    v44 = v15;
    v45 = v31;
    return sub_21430B28C(&v35);
  }

  v22 = a2;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD00000000000003CLL;
    v18[1] = 0x80000002147913F0;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v21 = v9;
  sub_213FDC6D0(v11, v10);

  v14 = v25;

  sub_213FDC6D0(v11, v10);
  v33 = a3;
  v34 = a4;
  v47 = v31;
  v35 = 0xD000000000000040;
  v36 = 0x8000000214791430;
  v37 = 0xD00000000000001CLL;
  v38 = 0x800000021478A360;

  v15 = v27;
  sub_213FDC9D0(v32, v27);
  v16 = v26;
  v17 = v26(&v33, &v47, &v35);
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000040;
    v20[1] = 0x8000000214791430;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();

    v11 = a1;

    sub_213FDC6D0(v32, v27);
    v10 = v22;
    v13 = v21;
    goto LABEL_7;
  }

  sub_213FDC6D0(v32, v27);

  result = sub_213FDC6D0(v32, v27);
  *a5 = v21;
  *(a5 + 8) = v25;
  *(a5 + 16) = a1;
  *(a5 + 24) = v22;
  *(a5 + 32) = v28;
  *(a5 + 33) = *v46;
  *(a5 + 36) = *&v46[3];
  *(a5 + 40) = v26;
  *(a5 + 48) = v30;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v31;
  return result;
}

unint64_t sub_21420FDD8()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_21420FE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000214796710 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000214796730 == a2)
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

uint64_t sub_21420FEF8(uint64_t a1)
{
  v2 = sub_21430B2E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21420FF34(uint64_t a1)
{
  v2 = sub_21430B2E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21420FF70@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909FE0, &qword_2146F5BB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430B2E0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v56) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v55 = v61;
  v76 = v62;
  v72 = 1;
  sub_2146DA1C8();
  v42 = v73;
  v48 = v74;
  sub_2145EF100(&v61);
  v12 = v62;
  v54 = v61;
  v13 = v63;
  v14 = v64;
  v75[0] = *v66;
  *(v75 + 3) = *&v66[3];
  v47 = v67;
  v52 = v68;
  v53 = v69;
  v51 = v70;
  v50 = v71;
  *&v56 = v55;
  *(&v56 + 1) = v76;
  v46 = v65;
  LOBYTE(v60[0]) = v65;
  v61 = 0xD00000000000003CLL;
  v62 = 0x80000002147913F0;
  v43 = 0x80000002147913F0;
  v63 = 0xD00000000000001CLL;
  v64 = 0x800000021478A360;

  v45 = v13;
  v44 = v14;
  sub_213FDC9D0(v13, v14);
  v49 = v12;
  v15 = v54(&v56, v60, &v61);
  v41 = 0x800000021478A360;
  if (v15)
  {
    v16 = v45;
    v17 = v44;
    sub_213FDC6D0(v45, v44);
    v18 = v41;

    sub_213FDC6D0(v16, v17);
    v60[0] = v42;
    v60[1] = v48;
    LOBYTE(v56) = v50;
    v61 = 0xD000000000000040;
    v62 = 0x8000000214791430;
    v63 = 0xD00000000000001CLL;
    v64 = v18;

    sub_213FDC9D0(v53, v51);
    v19 = v47;
    v20 = v47(v60, &v56, &v61);
    v21 = v19;
    if (v20)
    {
      v28 = v51;
      sub_213FDC6D0(v53, v51);

      (*(v6 + 8))(v9, v5);
      v29 = v52;

      sub_213FDC6D0(v53, v28);
      v30 = v54;
      *&v56 = v54;
      v31 = v49;
      *(&v56 + 1) = v49;
      *&v57 = v55;
      v32 = v76;
      *(&v57 + 1) = v76;
      LOBYTE(v58) = v46;
      *(&v58 + 1) = v75[0];
      DWORD1(v58) = *(v75 + 3);
      *(&v58 + 1) = v19;
      *v59 = v29;
      v33 = v42;
      v34 = v48;
      *&v59[8] = v42;
      *&v59[16] = v48;
      v59[24] = v50;
      v35 = v56;
      v36 = v57;
      *(a2 + 57) = *&v59[9];
      v37 = *v59;
      a2[2] = v58;
      a2[3] = v37;
      *a2 = v35;
      a2[1] = v36;
      sub_21430B334(&v56, &v61);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v61 = v30;
      v62 = v31;
      v63 = v55;
      v64 = v32;
      v65 = v46;
      *v66 = v75[0];
      *&v66[3] = *(v75 + 3);
      v67 = v47;
      v68 = v29;
      v69 = v33;
      v70 = v34;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD000000000000040;
    v38[1] = 0x8000000214791430;
    v39 = v41;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = v39;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);

    sub_213FDC6D0(v53, v51);
    v26 = v55;
    v27 = v76;
    v25 = v49;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v22 = v43;
    *v23 = 0xD00000000000003CLL;
    v23[1] = v22;
    v24 = v41;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = v24;
    swift_willThrow();

    v21 = v47;
    (*(v6 + 8))(v9, v5);
    v25 = v49;

    v26 = v45;
    v27 = v44;
    sub_213FDC6D0(v45, v44);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v61 = v54;
  v62 = v25;
  v63 = v26;
  v64 = v27;
  v65 = v46;
  *v66 = v75[0];
  *&v66[3] = *(v75 + 3);
  v67 = v21;
  v68 = v52;
  v69 = v53;
  v70 = v51;
LABEL_8:
  v71 = v50;
  return sub_21430B28C(&v61);
}

uint64_t sub_214210718(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v19 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v11 = v4[2];
  v10 = v4[3];
  v12 = v4[7];
  v17 = v4[8];
  v18 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19();
  sub_2146DAA28();
  if (v10 == 1)
  {
    goto LABEL_7;
  }

  v22 = v11;
  v23 = v10;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v14 = v20;
  sub_2146DA388();
  if (v14)
  {
    return (*(v21 + 8))(v9, v6);
  }

  if (v17 == 1)
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v22 = v18;
    v23 = v17;
    v24 = 1;
    sub_2146DA388();
    return (*(v21 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_214210974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
  v29 = a5;
  sub_213FB2E54(a5, a6 + *(v12 + 24), &qword_27C9041D8, &qword_2146ED5C0);
  sub_2145EF54C(&v33);
  v14 = v33;
  v13 = v34;
  v15 = v35;
  v16 = v36;
  v17 = v37;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v14;
  *(a6 + 24) = v13;
  *(a6 + 32) = v15;
  *(a6 + 40) = v16;
  *(a6 + 48) = v17;
  v32[0] = a3;
  v32[1] = a4;
  v38 = v17;
  v39 = v17;
  v33 = 0xD00000000000003ALL;
  v34 = 0x8000000214791480;
  v35 = 0xD00000000000001CLL;
  v36 = 0x800000021478A360;

  sub_213FDC9D0(v15, v16);
  v18 = v30;
  v31 = v14;
  v19 = v14(v32, &v39, &v33);
  if (v18)
  {
  }

  else
  {
    v28 = a4;
    if (v19)
    {
      sub_213FDC6D0(v15, v16);

      sub_213FB2DF4(v29, &qword_27C9041D8, &qword_2146ED5C0);
      v20 = *(a6 + 24);
      v21 = *(a6 + 32);
      v22 = *(a6 + 40);

      result = sub_213FDC6D0(v21, v22);
      *(a6 + 16) = v14;
      *(a6 + 24) = v13;
      *(a6 + 32) = a3;
      *(a6 + 40) = v28;
      *(a6 + 48) = v38;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD00000000000003ALL;
    v24[1] = 0x8000000214791480;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(v29, &qword_27C9041D8, &qword_2146ED5C0);
  v25 = *(a6 + 24);
  v26 = *(a6 + 32);
  v27 = *(a6 + 40);

  sub_213FDC6D0(v26, v27);
  *(a6 + 16) = v31;
  *(a6 + 24) = v13;
  *(a6 + 32) = v15;
  *(a6 + 40) = v16;
  *(a6 + 48) = v38;
  return sub_21432887C(a6, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
}

uint64_t sub_214210BD4()
{
  v1 = 0x4C52556572616873;
  if (*v0 != 1)
  {
    v1 = 0x6974617469766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D614E656E6F7ALL;
  }
}

uint64_t sub_214210C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214378DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214210C64(uint64_t a1)
{
  v2 = sub_21430B390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214210CA0(uint64_t a1)
{
  v2 = sub_21430B390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214210CDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909FF8, &qword_2146F5BC8);
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  v11 = type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_21430B390();
  v17 = v51;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v51 = v6;
  v48 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v53[0]) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v18 = v54;
  v19 = v55;
  LOBYTE(v53[0]) = 1;
  sub_2146DA1C8();
  v20 = v55;
  v47 = v54;
  LOBYTE(v54) = 2;
  sub_2142E285C();
  v21 = v51;
  sub_2146DA1C8();
  v23 = v48;
  sub_213FB2E54(v21, &v48[*(v11 + 24)], &qword_27C9041D8, &qword_2146ED5C0);
  sub_2145EF54C(&v54);
  v46 = 0;
  v25 = v54;
  v24 = v55;
  v26 = v56;
  v27 = v57;
  v28 = v58;
  *v23 = v18;
  *(v23 + 8) = v19;
  *(v23 + 16) = v25;
  *(v23 + 24) = v24;
  *(v23 + 32) = v26;
  *(v23 + 40) = v27;
  *(v23 + 48) = v28;
  v53[0] = v47;
  v53[1] = v20;
  v42 = v20;
  v59 = v28;
  v60 = v28;
  v54 = 0xD00000000000003ALL;
  v55 = 0x8000000214791480;
  v56 = 0xD00000000000001CLL;
  v57 = 0x800000021478A360;

  v44 = v27;
  v45 = v26;
  sub_213FDC9D0(v26, v27);
  v43 = v24;
  v29 = v46;
  v46 = v25;
  v30 = v25(v53, &v60, &v54);
  if (v29)
  {
  }

  else
  {
    v31 = v42;
    if (v30)
    {
      sub_213FDC6D0(v45, v44);

      sub_213FB2DF4(v51, &qword_27C9041D8, &qword_2146ED5C0);
      (*(v50 + 8))(v10, v7);
      v32 = *(v23 + 24);
      v33 = *(v23 + 32);
      v34 = *(v23 + 40);

      sub_213FDC6D0(v33, v34);
      v35 = v43;
      *(v23 + 16) = v46;
      *(v23 + 24) = v35;
      *(v23 + 32) = v47;
      *(v23 + 40) = v31;
      *(v23 + 48) = v59;
      sub_214328704(v23, v49, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD00000000000003ALL;
    v36[1] = 0x8000000214791480;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(v51, &qword_27C9041D8, &qword_2146ED5C0);
  (*(v50 + 8))(v10, v7);
  v37 = *(v23 + 24);
  v38 = *(v23 + 32);
  v39 = *(v23 + 40);

  sub_213FDC6D0(v38, v39);
  v40 = v43;
  *(v23 + 16) = v46;
  *(v23 + 24) = v40;
  v41 = v44;
  *(v23 + 32) = v45;
  *(v23 + 40) = v41;
  *(v23 + 48) = v59;
  __swift_destroy_boxed_opaque_existential_1(v52);
  return sub_21432887C(v23, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
}

uint64_t sub_214211264(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A008, &qword_2146F5BD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430B390();
  sub_2146DAA28();
  v16 = *v3;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + 5);
  if (v12 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *&v16 = *(v3 + 4);
    *(&v16 + 1) = v12;
    v15 = 1;
    sub_2146DA388();
    v13 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem(0) + 24);
    LOBYTE(v16) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
    sub_2142E29C4();
    sub_2146DA388();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_21421151C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, uint64_t a33, char a34)
{
  v180 = a3;
  LOBYTE(v179) = *(a1 + 64);
  v34 = a1[3];
  v177 = a1[2];
  v178 = v34;
  v35 = a1[1];
  v175 = *a1;
  v176 = v35;
  sub_2145EF844(&v78);
  v36 = *(&v78 + 1);
  v66 = v78;
  v37 = v79;
  v64 = v80;
  sub_2145EF9AC(&v137);
  v70 = v137;
  v68 = v138;
  v63 = v139;
  v62 = v140;
  v69 = v142;
  v157 = v141;
  v156 = a7 & 1;
  v155 = a10 & 1;
  v38 = v180;
  v154 = a12 & 1;
  v153 = a14 & 1;
  v152 = a16 & 1;
  v151 = a18 & 1;
  v150 = a20 & 1;
  v149 = a22 & 1;
  v148 = a24 & 1;
  v147 = a26 & 1;
  v146 = a28 & 1;
  v145 = a30 & 1;
  v144 = a32 & 1;
  v143 = a34 & 1;
  v67 = v141;
  v173 = v141;
  *&v78 = v66;
  *(&v78 + 1) = v36;
  v79 = v37;
  LOBYTE(v80) = v64;

  sub_21404F7E0(v37, *(&v37 + 1));
  sub_214032118(a2, v38, 2, 0xD000000000000047, 0x80000002147914C0, 0xD00000000000001CLL, 0x800000021478A360);
  if (v71)
  {
    sub_213FDC6BC(a2, v38);

    v72 = v78;
    v40 = *(&v79 + 1);
    v39 = v79;
    v41 = v80;

    sub_214032564(v37, *(&v37 + 1));
    v42 = v72;
    v43 = v69;
    v44 = v67;
    v45 = v70;
    v46 = v68;
  }

  else
  {

    v73 = v78;
    v47 = *(&v79 + 1);
    v65 = v79;
    v41 = v80;

    sub_214032564(v37, *(&v37 + 1));
    v137 = a4;
    LOBYTE(v138) = a5 & 1;
    v43 = v69;
    v157 = v69;
    *&v78 = 0xD00000000000004ALL;
    *(&v78 + 1) = 0x8000000214791510;
    *&v79 = 0xD00000000000001CLL;
    *(&v79 + 1) = 0x800000021478A360;

    v45 = v70;
    if (v70(&v137, &v157, &v78))
    {
      sub_213FDC6BC(a2, v180);
      v180 = v47;

      v49 = v180;
      *(a9 + 88) = v65;
      *(a9 + 96) = v49;
      *(a9 + 104) = v41;
      *(a9 + 112) = v70;
      *(a9 + 120) = v68;
      *(a9 + 128) = a4;
      *(a9 + 138) = v69;
      *(a9 + 64) = v179;
      *(a9 + 105) = *v174;
      *(a9 + 108) = *&v174[3];
      v173 = 0;
      v50 = v178;
      *(a9 + 32) = v177;
      *(a9 + 48) = v50;
      v51 = v176;
      *a9 = v175;
      *(a9 + 16) = v51;
      *(a9 + 72) = v73;
      *(a9 + 136) = a5 & 1;
      *(a9 + 137) = 0;
      *(a9 + 139) = v171;
      *(a9 + 143) = v172;
      *(a9 + 144) = a6;
      *(a9 + 152) = a7 & 1;
      *(a9 + 153) = v170[0];
      *(a9 + 156) = *(v170 + 3);
      *(a9 + 160) = a8;
      *(a9 + 168) = a10 & 1;
      *(a9 + 172) = *(v169 + 3);
      *(a9 + 169) = v169[0];
      *(a9 + 176) = a11;
      *(a9 + 184) = a12 & 1;
      *(a9 + 188) = *(v168 + 3);
      *(a9 + 185) = v168[0];
      *(a9 + 192) = a13;
      *(a9 + 200) = a14 & 1;
      *(a9 + 204) = *(v167 + 3);
      *(a9 + 201) = v167[0];
      *(a9 + 208) = a15;
      *(a9 + 216) = a16 & 1;
      LODWORD(v49) = v166[0];
      *(a9 + 220) = *(v166 + 3);
      *(a9 + 217) = v49;
      *(a9 + 224) = a17;
      *(a9 + 232) = a18 & 1;
      LODWORD(v49) = v165[0];
      *(a9 + 236) = *(v165 + 3);
      *(a9 + 233) = v49;
      *(a9 + 240) = a19;
      *(a9 + 248) = a20 & 1;
      LODWORD(v49) = v164[0];
      *(a9 + 252) = *(v164 + 3);
      *(a9 + 249) = v49;
      *(a9 + 256) = a21;
      *(a9 + 264) = a22 & 1;
      v52 = v163[0];
      *(a9 + 268) = *(v163 + 3);
      *(a9 + 265) = v52;
      *(a9 + 272) = a23;
      *(a9 + 280) = a24 & 1;
      v53 = v162[0];
      *(a9 + 284) = *(v162 + 3);
      *(a9 + 281) = v53;
      *(a9 + 288) = a25;
      *(a9 + 296) = a26 & 1;
      v54 = v161[0];
      *(a9 + 300) = *(v161 + 3);
      *(a9 + 297) = v54;
      *(a9 + 304) = a27;
      *(a9 + 312) = a28 & 1;
      v55 = v160[0];
      *(a9 + 316) = *(v160 + 3);
      *(a9 + 313) = v55;
      *(a9 + 320) = a29;
      *(a9 + 328) = a30 & 1;
      v56 = v159[0];
      *(a9 + 332) = *(v159 + 3);
      *(a9 + 329) = v56;
      *(a9 + 336) = a31;
      *(a9 + 344) = a32 & 1;
      v57 = v158[0];
      *(a9 + 348) = *(v158 + 3);
      *(a9 + 345) = v57;
      *(a9 + 352) = a33;
      *(a9 + 360) = a34 & 1;
      return result;
    }

    v40 = v47;
    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD00000000000004ALL;
    v58[1] = 0x8000000214791510;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FDC6BC(a2, v180);
    v46 = v68;

    v44 = v67;
    v173 = v67;
    v42 = v73;
    v39 = v65;
  }

  v84 = v39;
  v85 = v40;
  v86 = v41;
  v88 = v45;
  v89 = v46;
  v90 = v63;
  v91 = v62;
  v82 = v179;
  *v87 = *v174;
  *&v87[3] = *&v174[3];
  v92 = v44;
  v80 = v177;
  v81 = v178;
  v78 = v175;
  v79 = v176;
  v83 = v42;
  v93 = v43;
  v95 = v172;
  v94 = v171;
  v96 = a6;
  v97 = a7 & 1;
  *&v98[3] = *(v170 + 3);
  *v98 = v170[0];
  v99 = a8;
  v100 = a10 & 1;
  *&v101[3] = *(v169 + 3);
  *v101 = v169[0];
  v102 = a11;
  v103 = a12 & 1;
  *&v104[3] = *(v168 + 3);
  *v104 = v168[0];
  v105 = a13;
  v106 = a14 & 1;
  *&v107[3] = *(v167 + 3);
  *v107 = v167[0];
  v108 = a15;
  v109 = a16 & 1;
  *&v110[3] = *(v166 + 3);
  *v110 = v166[0];
  v111 = a17;
  v112 = a18 & 1;
  *&v113[3] = *(v165 + 3);
  *v113 = v165[0];
  v114 = a19;
  v115 = a20 & 1;
  *&v116[3] = *(v164 + 3);
  *v116 = v164[0];
  v117 = a21;
  v118 = a22 & 1;
  *v119 = v163[0];
  *&v119[3] = *(v163 + 3);
  v120 = a23;
  v121 = a24 & 1;
  *v122 = v162[0];
  *&v122[3] = *(v162 + 3);
  v123 = a25;
  v124 = a26 & 1;
  *v125 = v161[0];
  *&v125[3] = *(v161 + 3);
  v126 = a27;
  v127 = a28 & 1;
  *v128 = v160[0];
  *&v128[3] = *(v160 + 3);
  v129 = a29;
  v130 = a30 & 1;
  *v131 = v159[0];
  *&v131[3] = *(v159 + 3);
  v132 = a31;
  v133 = a32 & 1;
  *v134 = v158[0];
  *&v134[3] = *(v158 + 3);
  v135 = a33;
  v136 = a34 & 1;
  return sub_21430B3E4(&v78);
}

uint64_t sub_214211E50(char a1)
{
  result = 0x656C706D6173;
  switch(a1)
  {
    case 1:
      result = 0x5555656372756F73;
      break;
    case 2:
      result = 0x746F687370616E73;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0x7542796772656E65;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6E694D6B73697262;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6F48657669746361;
      break;
    case 9:
      result = 0x6F48657669746361;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      v3 = 1885697139;
      goto LABEL_8;
    case 12:
      v3 = 1752397168;
LABEL_8:
      result = v3 | 0x6E756F4300000000;
      break;
    case 13:
      result = 0x6168636C65656877;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x756E694D65766F6DLL;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214212064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214378EC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21421208C(uint64_t a1)
{
  v2 = sub_21430B438();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142120C8(uint64_t a1)
{
  v2 = sub_21430B438();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214212104@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A010, &qword_2146F5BD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v188 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430B438();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v188);
  }

  v75 = a2;
  v76 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A020, &qword_2146F5BE0);
  v160 = 0;
  sub_21430B48C();
  sub_2146DA1C8();
  v157 = v163;
  v158 = v164;
  v159 = v165;
  v156 = v162;
  v155 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v77[0]) = 1;
  sub_2142E1278();
  sub_2146DA1C8();
  v12 = *(&v80 + 1);
  v74 = v80;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
  LOBYTE(v77[0]) = 2;
  v14 = sub_2142E14CC();
  sub_2146DA1C8();
  v72 = v80;
  v73 = v12;
  LODWORD(v12) = BYTE8(v80);
  LOBYTE(v77[0]) = 3;
  sub_2146DA1C8();
  v70 = v13;
  v71 = v14;
  v68 = v12;
  v15 = v80;
  v69 = BYTE8(v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v77[0]) = 4;
  sub_2142E35EC();
  sub_2146DA1C8();
  v65 = v15;
  v66 = v80;
  v67 = BYTE8(v80);
  LOBYTE(v77[0]) = 5;
  sub_2146DA1C8();
  v63 = v80;
  v64 = BYTE8(v80);
  LOBYTE(v77[0]) = 6;
  sub_2146DA1C8();
  v61 = v80;
  v62 = BYTE8(v80);
  LOBYTE(v77[0]) = 7;
  sub_2146DA1C8();
  v60 = v80;
  v17 = v5;
  v18 = BYTE8(v80);
  LOBYTE(v77[0]) = 8;
  sub_2146DA1C8();
  v58 = v80;
  v59 = BYTE8(v80);
  LOBYTE(v77[0]) = 9;
  v19 = v17;
  sub_2146DA1C8();
  v20 = v80;
  v57 = BYTE8(v80);
  LOBYTE(v77[0]) = 10;
  sub_2146DA1C8();
  v55 = v80;
  v56 = BYTE8(v80);
  LOBYTE(v77[0]) = 11;
  sub_2146DA1C8();
  v53 = v80;
  v54 = BYTE8(v80);
  LOBYTE(v77[0]) = 12;
  sub_2146DA1C8();
  v51 = v80;
  v52 = BYTE8(v80);
  LOBYTE(v77[0]) = 13;
  sub_2146DA1C8();
  v49 = v80;
  v50 = BYTE8(v80);
  LOBYTE(v77[0]) = 14;
  sub_2146DA1C8();
  v47 = v80;
  v48 = BYTE8(v80);
  LOBYTE(v77[0]) = 15;
  sub_2146DA1C8();
  v45 = v80;
  v46 = BYTE8(v80);
  v152 = 16;
  sub_2146DA1C8();
  v39 = v153;
  LODWORD(v17) = v154;
  sub_213FB2E54(&v155, &v80, &qword_27C90A020, &qword_2146F5BE0);
  sub_2145EF844(&v80);
  v70 = *(&v80 + 1);
  v42 = v80;
  v21 = *(&v81 + 1);
  v71 = v81;
  LODWORD(v38) = v82;
  sub_2145EF9AC(v77);
  v44 = v77[0];
  v33 = *&v77[1];
  v32 = BYTE8(v77[1]);
  v43 = BYTE10(v77[1]);
  v185 = v157;
  v186 = v158;
  LOBYTE(v187) = v159;
  v183 = v155;
  v184 = v156;
  LOBYTE(v78) = BYTE9(v77[1]);
  v151 = v69;
  v150 = v67;
  v149 = v64;
  v148 = v62;
  v147 = v18;
  v146 = v59;
  v145 = v57;
  v144 = v56;
  v143 = v54;
  v142 = v52;
  v141 = v50;
  v140 = v48;
  v139 = v46;
  v40 = v17;
  v41 = BYTE9(v77[1]);
  v138 = v17;
  v181 = BYTE9(v77[1]);
  *&v80 = v42;
  v22 = v71;
  *(&v80 + 1) = v70;
  *&v81 = v71;
  *(&v81 + 1) = v21;
  LOBYTE(v82) = v38;

  v34 = v21;
  sub_21404F7E0(v22, v21);
  v38 = "ureCloudShareItem.shareURL";
  v42 = 0x800000021478A360;
  sub_214032118(v74, v73, 2, 0xD000000000000047, 0x80000002147914C0, 0xD00000000000001CLL, 0x800000021478A360);
  v23 = v42;

  v37 = v80;
  v36 = *(&v81 + 1);
  v38 = v81;
  v35 = v82;

  sub_214032564(v71, v34);
  v78 = v72;
  v79 = v68;
  LOBYTE(v77[0]) = v43;
  *&v80 = 0xD00000000000004ALL;
  *(&v80 + 1) = 0x8000000214791510;
  *&v81 = 0xD00000000000001CLL;
  *(&v81 + 1) = v23;

  if ((v44)(&v78, v77, &v80))
  {
    sub_213FDC6BC(v74, v73);

    sub_213FB2DF4(&v155, &qword_27C90A020, &qword_2146F5BE0);
    (*(v76 + 8))(v9, v19);
    v24 = *(&v44 + 1);

    *(&v77[8] + 11) = v179;
    *(&v77[9] + 9) = *v178;
    HIDWORD(v77[10]) = *&v177[3];
    *(&v77[10] + 9) = *v177;
    HIDWORD(v77[11]) = *&v176[3];
    *(&v77[11] + 9) = *v176;
    HIDWORD(v77[12]) = *&v175[3];
    *(&v77[12] + 9) = *v175;
    HIDWORD(v77[13]) = *&v174[3];
    *(&v77[13] + 9) = *v174;
    HIDWORD(v77[14]) = *&v173[3];
    *(&v77[14] + 9) = *v173;
    HIDWORD(v77[15]) = *&v172[3];
    *(&v77[15] + 9) = *v172;
    *(&v77[16] + 9) = *v171;
    *(&v77[17] + 9) = *v170;
    *(&v77[18] + 9) = *v169;
    *(&v77[19] + 9) = *v168;
    *(&v77[20] + 9) = *v167;
    *(&v77[21] + 9) = *v166;
    v181 = 0;
    v77[2] = v185;
    v77[3] = v186;
    *&v77[4] = v187;
    v77[0] = v183;
    v77[1] = v184;
    *(&v77[4] + 8) = v37;
    *(&v77[5] + 1) = v38;
    *&v77[6] = v36;
    BYTE8(v77[6]) = v35;
    HIDWORD(v77[6]) = *&v182[3];
    *(&v77[6] + 9) = *v182;
    *&v77[7] = v44;
    *(&v77[7] + 1) = v24;
    *&v77[8] = v72;
    v25 = v68;
    WORD4(v77[8]) = v68;
    HIBYTE(v77[8]) = v180;
    HIDWORD(v77[9]) = *&v178[3];
    HIDWORD(v77[16]) = *&v171[3];
    HIDWORD(v77[17]) = *&v170[3];
    HIDWORD(v77[18]) = *&v169[3];
    HIDWORD(v77[19]) = *&v168[3];
    HIDWORD(v77[20]) = *&v167[3];
    HIDWORD(v77[21]) = *&v166[3];
    v26 = v43;
    BYTE10(v77[8]) = v43;
    v27 = v65;
    *&v77[9] = v65;
    BYTE8(v77[9]) = v69;
    *&v77[10] = v66;
    BYTE8(v77[10]) = v67;
    *&v77[11] = v63;
    BYTE8(v77[11]) = v64;
    *&v77[12] = v61;
    BYTE8(v77[12]) = v62;
    *&v77[13] = v60;
    BYTE8(v77[13]) = v18;
    *&v77[14] = v58;
    BYTE8(v77[14]) = v59;
    v31 = v20;
    *&v77[15] = v20;
    v28 = v57;
    BYTE8(v77[15]) = v57;
    *&v77[16] = v55;
    BYTE8(v77[16]) = v56;
    *&v77[17] = v53;
    BYTE8(v77[17]) = v54;
    *&v77[18] = v51;
    BYTE8(v77[18]) = v52;
    *&v77[19] = v49;
    BYTE8(v77[19]) = v50;
    *&v77[20] = v47;
    BYTE8(v77[20]) = v48;
    *&v77[21] = v45;
    BYTE8(v77[21]) = v46;
    *&v77[22] = v39;
    BYTE8(v77[22]) = v40;
    memcpy(v75, v77, 0x169uLL);
    sub_21430B564(v77, &v80);
    __swift_destroy_boxed_opaque_existential_1(v188);
    v87 = v36;
    v88 = v35;
    v90 = v44;
    v91 = v72;
    v92 = v25;
    v93 = 0;
    v94 = v26;
    v97 = v27;
    v84 = v187;
    v82 = v185;
    v83 = v186;
    v80 = v183;
    v81 = v184;
    v85 = v37;
    v86 = v38;
    *v89 = *v182;
    *&v89[3] = *&v182[3];
    v95 = v179;
    v96 = v180;
    v98 = v69;
    *v99 = *v178;
    *&v99[3] = *&v178[3];
    v100 = v66;
    v101 = v67;
    *&v102[3] = *&v177[3];
    *v102 = *v177;
    v103 = v63;
    v104 = v64;
    *&v105[3] = *&v176[3];
    *v105 = *v176;
    v106 = v61;
    v107 = v62;
    *&v108[3] = *&v175[3];
    *v108 = *v175;
    v109 = v60;
    v110 = v18;
    *&v111[3] = *&v174[3];
    *v111 = *v174;
    v112 = v58;
    v113 = v59;
    *&v114[3] = *&v173[3];
    *v114 = *v173;
    v115 = v31;
    v116 = v28;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD00000000000004ALL;
    v29[1] = 0x8000000214791510;
    v30 = v42;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = v30;
    swift_willThrow();
    sub_213FDC6BC(v74, v73);
    sub_213FB2DF4(&v155, &qword_27C90A020, &qword_2146F5BE0);
    (*(v76 + 8))(v9, v19);

    v181 = v41;
    __swift_destroy_boxed_opaque_existential_1(v188);
    v87 = v36;
    v88 = v35;
    v90 = v44;
    v91 = v33;
    v92 = v32;
    v93 = v41;
    v94 = v43;
    v84 = v187;
    v82 = v185;
    v83 = v186;
    v80 = v183;
    v81 = v184;
    v85 = v37;
    v86 = v38;
    *v89 = *v182;
    *&v89[3] = *&v182[3];
    v96 = v180;
    v95 = v179;
    v97 = v65;
    v98 = v69;
    *&v99[3] = *&v178[3];
    *v99 = *v178;
    v100 = v66;
    v101 = v67;
    *&v102[3] = *&v177[3];
    *v102 = *v177;
    v103 = v63;
    v104 = v64;
    *&v105[3] = *&v176[3];
    *v105 = *v176;
    v106 = v61;
    v107 = v62;
    *&v108[3] = *&v175[3];
    *v108 = *v175;
    v109 = v60;
    v110 = v18;
    *&v111[3] = *&v174[3];
    *v111 = *v174;
    v112 = v58;
    v113 = v59;
    *&v114[3] = *&v173[3];
    *v114 = *v173;
    v115 = v20;
    v116 = v57;
  }

  *&v117[3] = *&v172[3];
  *v117 = *v172;
  v118 = v55;
  v119 = v56;
  *v120 = *v171;
  *&v120[3] = *&v171[3];
  v121 = v53;
  v122 = v54;
  *v123 = *v170;
  *&v123[3] = *&v170[3];
  v124 = v51;
  v125 = v52;
  *v126 = *v169;
  *&v126[3] = *&v169[3];
  v127 = v49;
  v128 = v50;
  *v129 = *v168;
  *&v129[3] = *&v168[3];
  v130 = v47;
  v131 = v48;
  *v132 = *v167;
  *&v132[3] = *&v167[3];
  v133 = v45;
  v134 = v46;
  *v135 = *v166;
  *&v135[3] = *&v166[3];
  v136 = v39;
  v137 = v40;
  return sub_21430B3E4(&v80);
}

uint64_t sub_21421334C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A038, &qword_2146F5BE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = v1[3];
  v79 = v1[2];
  v80 = v8;
  v81 = *(v1 + 64);
  v9 = v1[1];
  v77 = *v1;
  v78 = v9;
  v10 = *(v1 + 11);
  v60 = *(v1 + 12);
  v11 = *(v1 + 16);
  v58 = v10;
  v59 = v11;
  LODWORD(v62) = *(v1 + 136);
  LODWORD(v61) = *(v1 + 137);
  v56 = *(v1 + 18);
  v57 = *(v1 + 152);
  v54 = *(v1 + 20);
  v55 = *(v1 + 168);
  v52 = *(v1 + 22);
  v53 = *(v1 + 184);
  v12 = *(v1 + 24);
  v51 = *(v1 + 200);
  v49 = *(v1 + 26);
  v50 = v12;
  v48 = *(v1 + 216);
  v47 = *(v1 + 28);
  v46 = *(v1 + 232);
  v45 = *(v1 + 30);
  v44 = *(v1 + 248);
  v43 = *(v1 + 32);
  v42 = *(v1 + 264);
  v41 = *(v1 + 34);
  v40 = *(v1 + 280);
  v39 = *(v1 + 36);
  v38 = *(v1 + 296);
  v37 = *(v1 + 38);
  v36 = *(v1 + 312);
  v35 = *(v1 + 40);
  v34 = *(v1 + 328);
  v33 = *(v1 + 42);
  v32 = *(v1 + 344);
  v31 = *(v1 + 44);
  v13 = *(v1 + 360);
  v15 = a1[3];
  v14 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_21430B438();
  v19 = v7;
  sub_2146DAA28();
  v74 = v79;
  v75 = v80;
  v76 = v81;
  v72 = v77;
  v73 = v78;
  v71 = 0;
  sub_213FB2E54(&v77, &v66, &qword_27C90A020, &qword_2146F5BE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A020, &qword_2146F5BE0);
  sub_21430B5C0();
  v20 = v82;
  sub_2146DA388();
  if (v20)
  {
    v68 = v74;
    v69 = v75;
    v70 = v76;
    v66 = v72;
    v67 = v73;
    sub_213FB2DF4(&v66, &qword_27C90A020, &qword_2146F5BE0);
    return (*(v4 + 8))(v7, v18);
  }

  else
  {
    v22 = v58;
    HIDWORD(v30) = v13;
    v82 = v4;
    v68 = v74;
    v69 = v75;
    v70 = v76;
    v66 = v72;
    v67 = v73;
    sub_213FB2DF4(&v66, &qword_27C90A020, &qword_2146F5BE0);
    if (v60 >> 60 == 11)
    {
      goto LABEL_8;
    }

    v64 = v22;
    v65 = v60;
    v63 = 1;
    sub_213FDCA18(v22, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    v23 = v82;
    v24 = v59;
    v25 = v62;
    v26 = v61;
    v60 = 0;
    sub_213FDC6BC(v64, v65);
    if (v26)
    {
LABEL_8:
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      v64 = v24;
      LOBYTE(v65) = v25 & 1;
      v63 = 2;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
      v28 = sub_2142E1E84();
      v29 = v60;
      sub_2146DA388();
      if (v29)
      {
        return (*(v23 + 8))(v19, v18);
      }

      else
      {
        v64 = v56;
        LOBYTE(v65) = v57;
        v63 = 3;
        sub_2146DA388();
        v61 = v28;
        v62 = v27;
        v64 = v54;
        LOBYTE(v65) = v55;
        v63 = 4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
        sub_2142E37F4();
        sub_2146DA388();
        v64 = v52;
        LOBYTE(v65) = v53;
        v63 = 5;
        sub_2146DA388();
        v64 = v50;
        LOBYTE(v65) = v51;
        v63 = 6;
        sub_2146DA388();
        v64 = v49;
        LOBYTE(v65) = v48;
        v63 = 7;
        sub_2146DA388();
        v64 = v47;
        LOBYTE(v65) = v46;
        v63 = 8;
        sub_2146DA388();
        v64 = v45;
        LOBYTE(v65) = v44;
        v63 = 9;
        sub_2146DA388();
        v64 = v43;
        LOBYTE(v65) = v42;
        v63 = 10;
        sub_2146DA388();
        v64 = v41;
        LOBYTE(v65) = v40;
        v63 = 11;
        sub_2146DA388();
        v64 = v39;
        LOBYTE(v65) = v38;
        v63 = 12;
        sub_2146DA388();
        v64 = v37;
        LOBYTE(v65) = v36;
        v63 = 13;
        sub_2146DA388();
        v64 = v35;
        LOBYTE(v65) = v34;
        v63 = 14;
        sub_2146DA388();
        v64 = v33;
        LOBYTE(v65) = v32;
        v63 = 15;
        sub_2146DA388();
        v64 = v31;
        LOBYTE(v65) = BYTE4(v30);
        v63 = 16;
        sub_2146DA388();
        return (*(v82 + 8))(v19, v18);
      }
    }
  }

  return result;
}

uint64_t sub_214213BE4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char *a29)
{
  v120 = a3;
  v119 = a20;
  LOBYTE(v118) = *(a1 + 64);
  v31 = a1[3];
  v116 = a1[2];
  v117 = v31;
  v32 = a1[1];
  v114 = *a1;
  v115 = v32;
  v49 = *a29;
  sub_2145EFD30(&v50);
  v33 = v50;
  v40 = v51;
  v42 = BYTE8(v51);
  v102 = a10 & 1;
  v101 = a12 & 1;
  v100 = a14 & 1;
  v34 = BYTE10(v51);
  v99 = a16 & 1;
  v98 = a26 & 1;
  v41 = BYTE9(v51);
  v113 = BYTE9(v51);
  v96 = a2;
  v97 = v120 & 1;
  v103[0] = BYTE10(v51);
  *&v50 = 0xD000000000000038;
  *(&v50 + 1) = 0x8000000214791560;
  *&v51 = 0xD00000000000001CLL;
  *(&v51 + 1) = 0x800000021478A360;

  v35 = (v33)(&v96, v103, &v50);
  if (v43)
  {
  }

  else
  {
    if (v35)
    {

      *(a9 + 64) = v118;
      *(a9 + 72) = v33;
      *(a9 + 88) = a2;
      *(a9 + 96) = v120 & 1;
      *(a9 + 98) = v34;
      *(a9 + 104) = a4;
      *(a9 + 112) = a5 & 1;
      *(a9 + 120) = a6;
      *(a9 + 128) = a7 & 1;
      *(a9 + 136) = a8;
      *(a9 + 144) = a10 & 1;
      *(a9 + 152) = a11;
      *(a9 + 160) = a12 & 1;
      *(a9 + 168) = a13;
      *(a9 + 176) = a14 & 1;
      *(a9 + 184) = a15;
      *(a9 + 192) = a16 & 1;
      *(a9 + 200) = a17;
      *(a9 + 208) = a18;
      *(a9 + 216) = a19;
      *(a9 + 217) = v119;
      *(a9 + 224) = a21;
      *(a9 + 232) = a22;
      *(a9 + 240) = a23;
      *(a9 + 248) = a24;
      *(a9 + 256) = a25;
      *(a9 + 264) = a26 & 1;
      *(a9 + 272) = a27;
      *(a9 + 280) = a28;
      *(a9 + 288) = v49;
      v37 = v117;
      *(a9 + 32) = v116;
      *(a9 + 48) = v37;
      v38 = v115;
      *a9 = v114;
      *(a9 + 16) = v38;
      *(a9 + 97) = 0;
      v113 = 0;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000038;
    v39[1] = 0x8000000214791560;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();
  }

  v56 = v40;
  v52 = v116;
  v53 = v117;
  v50 = v114;
  v51 = v115;
  v54 = v118;
  v55 = v33;
  v57 = v42;
  v58 = v41;
  v59 = v34;
  v61 = v112;
  v60 = v111[2];
  v62 = a4;
  v63 = a5 & 1;
  *&v64[3] = *(v111 + 3);
  *v64 = v111[0];
  v65 = a6;
  v66 = a7 & 1;
  *&v67[3] = *(v110 + 3);
  *v67 = v110[0];
  v68 = a8;
  v69 = a10 & 1;
  *&v70[3] = *(v109 + 3);
  *v70 = v109[0];
  v71 = a11;
  v72 = a12 & 1;
  *&v73[3] = *(v108 + 3);
  *v73 = v108[0];
  v74 = a13;
  v75 = a14 & 1;
  *&v76[3] = *(v107 + 3);
  *v76 = v107[0];
  v77 = a15;
  v78 = a16 & 1;
  *&v79[3] = *(v106 + 3);
  *v79 = v106[0];
  v80 = a17;
  v81 = a18;
  v82 = a19;
  v83 = v119;
  v85 = v105;
  v84 = v104[2];
  v86 = a21;
  v87 = a22;
  v88 = a23;
  v89 = a24;
  v90 = a25;
  v91 = a26 & 1;
  *v92 = v104[0];
  *&v92[3] = *(v104 + 3);
  v93 = a27;
  v94 = a28;
  v95 = v49;
  return sub_21430B698(&v50);
}

uint64_t sub_2142140E0(uint64_t a1)
{
  v2 = sub_21430B6EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21421411C(uint64_t a1)
{
  v2 = sub_21430B6EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214214158@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A050, &qword_2146F5BF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v140 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430B6EC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v140);
  }

  v56 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A020, &qword_2146F5BE0);
  v117 = 0;
  sub_21430B48C();
  sub_2146DA1C8();
  v114 = v120;
  v115 = v121;
  v116 = v122;
  v112 = v118;
  v113 = v119;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
  LOBYTE(v57[0]) = 1;
  v13 = sub_2142E14CC();
  sub_2146DA1C8();
  v54 = v13;
  v55 = v12;
  v53 = v58;
  LODWORD(v12) = BYTE8(v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v57[0]) = 2;
  sub_2142E35EC();
  sub_2146DA1C8();
  v52 = v12;
  v51 = v58;
  LODWORD(v12) = BYTE8(v58);
  LOBYTE(v57[0]) = 3;
  sub_2146DA1C8();
  v50 = v12;
  v49 = v58;
  LODWORD(v12) = BYTE8(v58);
  LOBYTE(v57[0]) = 4;
  sub_2146DA1C8();
  v48 = v12;
  v47 = v58;
  LODWORD(v12) = BYTE8(v58);
  LOBYTE(v57[0]) = 5;
  sub_2146DA1C8();
  v46 = v12;
  v45 = v58;
  LODWORD(v12) = BYTE8(v58);
  LOBYTE(v57[0]) = 6;
  sub_2146DA1C8();
  v44 = v12;
  v43 = v58;
  LODWORD(v12) = BYTE8(v58);
  LOBYTE(v57[0]) = 7;
  sub_2146DA1C8();
  v39 = a2;
  v40 = v58;
  v41 = BYTE8(v58);
  v42 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v57[0]) = 8;
  sub_2142E12FC();
  sub_2146DA1C8();
  v37 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v57[0]) = 9;
  sub_2142E1378();
  v38 = v5;
  v15 = v9;
  sub_2146DA1C8();
  v16 = v58;
  LOBYTE(v57[0]) = 10;
  sub_2146DA1C8();
  v17 = v58;
  LOBYTE(v57[0]) = 11;
  sub_2146DA1C8();
  v18 = *(&v58 + 1);
  v36 = v58;
  LOBYTE(v57[0]) = 12;
  sub_2146DA1C8();
  v35 = v58;
  LOBYTE(v57[0]) = 13;
  sub_2146DA1C8();
  v54 = v58;
  LODWORD(v55) = BYTE8(v58);
  LOBYTE(v57[0]) = 14;
  sub_2146DA1C8();
  v34 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A060, &qword_2146F5BF8);
  v110 = 15;
  sub_21430B740();
  sub_2146DA1C8();
  v33 = v111;
  sub_213FB2E54(&v112, &v58, &qword_27C90A020, &qword_2146F5BE0);
  sub_2145EFD30(&v58);
  v19 = v58;
  v27 = v59;
  v28 = BYTE8(v59);
  v137 = v114;
  v138 = v115;
  LOBYTE(v139) = v116;
  v135 = v112;
  v136 = v113;
  v109 = v48;
  v108 = v46;
  v107 = v44;
  v106 = v42;
  v105 = v41;
  v104 = v55;
  HIDWORD(v26) = BYTE9(v59);
  v134 = BYTE9(v59);
  v102 = v53;
  v103 = v52;
  v32 = BYTE10(v59);
  LOBYTE(v57[0]) = BYTE10(v59);
  *&v58 = 0xD000000000000038;
  v29 = 0x8000000214791560;
  *(&v58 + 1) = 0x8000000214791560;
  *&v59 = 0xD00000000000001CLL;
  *(&v59 + 1) = 0x800000021478A360;

  v30 = *(&v19 + 1);
  v31 = v19;
  if ((v19)(&v102, v57, &v58))
  {

    sub_213FB2DF4(&v112, &qword_27C90A020, &qword_2146F5BE0);
    (*(v56 + 8))(v15, v38);
    v20 = v30;

    *(&v57[8] + 1) = *v130;
    DWORD1(v57[9]) = *&v129[3];
    *(&v57[9] + 1) = *v129;
    DWORD1(v57[10]) = *&v128[3];
    *(&v57[10] + 1) = *v128;
    DWORD1(v57[11]) = *&v127[3];
    *(&v57[11] + 1) = *v127;
    DWORD1(v57[12]) = *&v126[3];
    *(&v57[12] + 1) = *v126;
    *(&v57[13] + 10) = v124;
    *(&v57[16] + 9) = *v123;
    *&v57[4] = v139;
    *(&v57[6] + 3) = v132;
    BYTE7(v57[6]) = v133;
    *(&v57[7] + 1) = *v131;
    DWORD1(v57[7]) = *&v131[3];
    DWORD1(v57[8]) = *&v130[3];
    HIWORD(v57[13]) = v125;
    HIDWORD(v57[16]) = *&v123[3];
    v134 = 0;
    v57[2] = v137;
    v57[3] = v138;
    v57[0] = v135;
    v57[1] = v136;
    *(&v57[4] + 1) = v31;
    *&v57[5] = v20;
    v21 = v53;
    *(&v57[5] + 1) = v53;
    LOWORD(v57[6]) = v52;
    BYTE2(v57[6]) = v32;
    *(&v57[6] + 1) = v51;
    LOBYTE(v57[7]) = v50;
    *(&v57[7] + 1) = v49;
    LOBYTE(v57[8]) = v48;
    *(&v57[8] + 1) = v47;
    LOBYTE(v57[9]) = v46;
    *(&v57[9] + 1) = v45;
    LOBYTE(v57[10]) = v44;
    *(&v57[10] + 1) = v43;
    LOBYTE(v57[11]) = v42;
    *(&v57[11] + 1) = v40;
    LOBYTE(v57[12]) = v41;
    *(&v57[12] + 8) = v37;
    BYTE8(v57[13]) = v16;
    BYTE9(v57[13]) = v17;
    *&v57[14] = v36;
    *(&v57[14] + 1) = v18;
    v57[15] = v35;
    *&v57[16] = v54;
    BYTE8(v57[16]) = v55;
    v22 = *(&v34 + 1);
    v57[17] = v34;
    LOBYTE(v57[18]) = v33;
    memcpy(v39, v57, 0x121uLL);
    sub_21430B818(v57, &v58);
    __swift_destroy_boxed_opaque_existential_1(v140);
    v64 = v20;
    v65 = v21;
    v62 = v139;
    v60 = v137;
    v61 = v138;
    v58 = v135;
    v59 = v136;
    v63 = v31;
    v66 = v52;
    v67 = 0;
    v68 = v32;
    v70 = v133;
    v69 = v132;
    v71 = v51;
    v72 = v50;
    *v73 = *v131;
    *&v73[3] = *&v131[3];
    v74 = v49;
    v75 = v48;
    *v76 = *v130;
    *&v76[3] = *&v130[3];
    v77 = v47;
    v78 = v46;
    *&v79[3] = *&v129[3];
    *v79 = *v129;
    v80 = v45;
    v81 = v44;
    *&v82[3] = *&v128[3];
    *v82 = *v128;
    v83 = v43;
    v84 = v42;
    *&v85[3] = *&v127[3];
    *v85 = *v127;
    v86 = v40;
    v87 = v41;
    *&v88[3] = *&v126[3];
    *v88 = *v126;
    v89 = v37;
    v90 = v16;
    v91 = v17;
    v93 = v125;
    v92 = v124;
    v94 = v36;
    v95 = v18;
    v96 = v35;
    v97 = v54;
    v98 = v55;
    *v99 = *v123;
    *&v99[3] = *&v123[3];
    *&v100 = v34;
    *(&v100 + 1) = v22;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v23 = v29;
    *v24 = 0xD000000000000038;
    v24[1] = v23;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(&v112, &qword_27C90A020, &qword_2146F5BE0);
    (*(v56 + 8))(v15, v38);
    v25 = v30;

    __swift_destroy_boxed_opaque_existential_1(v140);
    v64 = v25;
    v65 = v27;
    v62 = v139;
    v60 = v137;
    v61 = v138;
    v58 = v135;
    v59 = v136;
    v63 = v31;
    v66 = v28;
    v67 = BYTE4(v26);
    v68 = v32;
    v70 = v133;
    v69 = v132;
    v71 = v51;
    v72 = v50;
    *&v73[3] = *&v131[3];
    *v73 = *v131;
    v74 = v49;
    v75 = v48;
    *&v76[3] = *&v130[3];
    *v76 = *v130;
    v77 = v47;
    v78 = v46;
    *&v79[3] = *&v129[3];
    *v79 = *v129;
    v80 = v45;
    v81 = v44;
    *&v82[3] = *&v128[3];
    *v82 = *v128;
    v83 = v43;
    v84 = v42;
    *&v85[3] = *&v127[3];
    *v85 = *v127;
    v86 = v40;
    v87 = v41;
    *&v88[3] = *&v126[3];
    *v88 = *v126;
    v89 = v37;
    v90 = v16;
    v91 = v17;
    v93 = v125;
    v92 = v124;
    v94 = v36;
    v95 = v18;
    v96 = v35;
    v97 = v54;
    v98 = v55;
    *v99 = *v123;
    *&v99[3] = *&v123[3];
    v100 = v34;
  }

  v101 = v33;
  return sub_21430B698(&v58);
}

uint64_t sub_214214FEC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A078, &qword_2146F5C00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = v1[3];
  v68 = v1[2];
  v69 = v8;
  v70 = *(v1 + 64);
  v9 = v1[1];
  v66 = *v1;
  v67 = v9;
  v50 = *(v1 + 11);
  v10 = *(v1 + 96);
  LODWORD(v51) = *(v1 + 97);
  v47 = *(v1 + 13);
  v48 = *(v1 + 112);
  v49 = v10;
  v45 = *(v1 + 15);
  v46 = *(v1 + 128);
  v43 = *(v1 + 17);
  v44 = *(v1 + 144);
  v11 = *(v1 + 19);
  v42 = *(v1 + 160);
  v40 = *(v1 + 21);
  v41 = v11;
  v39 = *(v1 + 176);
  v38 = *(v1 + 23);
  v37 = *(v1 + 192);
  v12 = *(v1 + 25);
  v35 = *(v1 + 26);
  v36 = v12;
  LODWORD(v12) = *(v1 + 216);
  v33 = *(v1 + 217);
  v34 = v12;
  v13 = *(v1 + 28);
  v31 = *(v1 + 29);
  v32 = v13;
  v14 = *(v1 + 30);
  v29 = *(v1 + 31);
  v30 = v14;
  v28 = *(v1 + 32);
  v27 = *(v1 + 264);
  v15 = *(v1 + 34);
  v25 = *(v1 + 35);
  v26 = v15;
  v24 = *(v1 + 288);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430B6EC();
  sub_2146DAA28();
  v63 = v68;
  v64 = v69;
  v65 = v70;
  v61 = v66;
  v62 = v67;
  v60 = 0;
  sub_213FB2E54(&v66, &v55, &qword_27C90A020, &qword_2146F5BE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A020, &qword_2146F5BE0);
  sub_21430B5C0();
  v17 = v71;
  sub_2146DA388();
  if (v17)
  {
    v57 = v63;
    v58 = v64;
    v59 = v65;
    v55 = v61;
    v56 = v62;
    sub_213FB2DF4(&v55, &qword_27C90A020, &qword_2146F5BE0);
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v19 = v49;
    v20 = v50;
    v23 = v4;
    v57 = v63;
    v58 = v64;
    v59 = v65;
    v55 = v61;
    v56 = v62;
    sub_213FB2DF4(&v55, &qword_27C90A020, &qword_2146F5BE0);
    if (v51)
    {
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      v52 = v20;
      LOBYTE(v53) = v19 & 1;
      v54 = 1;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
      sub_2142E1E84();
      sub_2146DA388();
      v71 = v21;
      v52 = v47;
      LOBYTE(v53) = v48;
      v54 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
      sub_2142E37F4();
      sub_2146DA388();
      v52 = v45;
      LOBYTE(v53) = v46;
      v54 = 3;
      sub_2146DA388();
      v52 = v43;
      LOBYTE(v53) = v44;
      v54 = 4;
      sub_2146DA388();
      v52 = v41;
      LOBYTE(v53) = v42;
      v54 = 5;
      sub_2146DA388();
      v52 = v40;
      LOBYTE(v53) = v39;
      v54 = 6;
      sub_2146DA388();
      v52 = v38;
      LOBYTE(v53) = v37;
      v54 = 7;
      sub_2146DA388();
      v52 = v36;
      v53 = v35;
      v54 = 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      LOBYTE(v52) = v34;
      v54 = 9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
      sub_2142E1D30();
      sub_2146DA388();
      LOBYTE(v52) = v33;
      v54 = 10;
      v51 = v3;
      sub_2146DA388();
      v52 = v32;
      v53 = v31;
      v54 = 11;
      sub_2146DA388();
      v52 = v30;
      v53 = v29;
      v54 = 12;
      sub_2146DA388();
      v52 = v28;
      LOBYTE(v53) = v27;
      v54 = 13;
      sub_2146DA388();
      v52 = v26;
      v53 = v25;
      v54 = 14;
      sub_2146DA388();
      LOBYTE(v52) = v24;
      v54 = 15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A060, &qword_2146F5BF8);
      sub_21430B874();
      v22 = v51;
      sub_2146DA388();
      return (*(v23 + 8))(0, v22);
    }
  }

  return result;
}

__n128 sub_2142157B0@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  v16 = a1[3];
  LOBYTE(v17) = *(a1 + 64);
  v14 = *a1;
  v15 = a1[1];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v16;
  *a9 = v14;
  *(a9 + 16) = v15;
  *(a9 + 64) = v17;
  *(a9 + 72) = a2;
  *(a9 + 80) = a3 & 1;
  *(a9 + 88) = a4;
  *(a9 + 96) = a5 & 1;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7 & 1;
  *(a9 + 120) = a8;
  *(a9 + 128) = a10 & 1;
  *(a9 + 136) = a11;
  *(a9 + 152) = a12;
  *(a9 + 160) = a13;
  return result;
}

uint64_t sub_214215840()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6574656C706D6F63;
    if (v1 != 1)
    {
      v5 = 0x6156656C62756F64;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x656C706D6173;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000013;
    if (v1 == 3)
    {
      v3 = 0x65756C6156746E69;
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

uint64_t sub_214215938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214379444(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214215960(uint64_t a1)
{
  v2 = sub_21430B94C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21421599C(uint64_t a1)
{
  v2 = sub_21430B94C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142159D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A090, &qword_2146F5C08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430B94C();
  sub_2146DAA08();
  if (!v2)
  {
    v39 = a2;
    v40 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A020, &qword_2146F5BE0);
    v57 = 0;
    sub_21430B48C();
    v12 = v5;
    sub_2146DA1C8();
    v54 = v60;
    v55 = v61;
    v56 = v62;
    v52 = v58;
    v53 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    LOBYTE(v51) = 1;
    sub_2142E35EC();
    sub_2146DA1C8();
    v13 = v45;
    v14 = BYTE8(v45);
    LOBYTE(v51) = 2;
    sub_2146DA1C8();
    v37 = v13;
    v38 = v14;
    v15 = v45;
    LODWORD(v13) = BYTE8(v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
    LOBYTE(v51) = 3;
    sub_2142E14CC();
    sub_2146DA1C8();
    v35 = v13;
    v36 = v15;
    v16 = v45;
    LODWORD(v13) = BYTE8(v45);
    LOBYTE(v51) = 4;
    sub_2146DA1C8();
    v33 = v13;
    v34 = v16;
    v17 = v45;
    LODWORD(v13) = BYTE8(v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v51) = 5;
    sub_2142E12FC();
    sub_2146DA1C8();
    v32 = v13;
    v19 = *(&v45 + 1);
    v31 = v45;
    v50 = 6;
    sub_2146DA1C8();
    (*(v40 + 8))(v9, v12);
    v47 = v54;
    v48 = v55;
    LOBYTE(v49) = v56;
    v45 = v52;
    v46 = v53;
    v20 = v38;
    v44 = v38;
    v43 = v35;
    v42 = v33;
    v41 = v32;
    v21 = v35;
    v22 = v33;
    v23 = v32;
    v24 = v52;
    v25 = v53;
    v26 = v55;
    v27 = v49;
    v28 = v19;
    v29 = v39;
    *(v39 + 32) = v54;
    *(v29 + 48) = v26;
    *v29 = v24;
    *(v29 + 16) = v25;
    *(v29 + 64) = v27;
    *(v29 + 72) = v37;
    *(v29 + 80) = v20;
    *(v29 + 88) = v36;
    *(v29 + 96) = v21;
    *(v29 + 104) = v34;
    *(v29 + 112) = v22;
    *(v29 + 120) = v17;
    *(v29 + 128) = v23;
    *(v29 + 136) = v31;
    *(v29 + 144) = v28;
    *(v29 + 152) = v51;
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_214215E9C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A0A0, &qword_2146F5C10);
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = v1[3];
  v49 = v1[2];
  v50 = v7;
  v51 = *(v1 + 64);
  v8 = v1[1];
  v47 = *v1;
  v48 = v8;
  v31 = *(v1 + 9);
  v30 = *(v1 + 80);
  v29 = *(v1 + 11);
  v9 = *(v1 + 96);
  v26 = *(v1 + 13);
  v27 = *(v1 + 112);
  v28 = v9;
  v10 = *(v1 + 15);
  v25 = *(v1 + 128);
  v11 = *(v1 + 17);
  v23 = *(v1 + 18);
  v24 = v10;
  v12 = *(v1 + 20);
  v20 = *(v1 + 19);
  v21 = v12;
  v22 = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(&v47, &v42, &qword_27C90A020, &qword_2146F5BE0);
  sub_21430B94C();
  sub_2146DAA28();
  v44 = v49;
  v45 = v50;
  v46 = v51;
  v42 = v47;
  v43 = v48;
  v41 = 0;
  v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A020, &qword_2146F5BE0);
  sub_21430B5C0();
  v15 = v32;
  sub_2146DA388();
  if (v15)
  {
    v38 = v44;
    v39 = v45;
    v40 = v46;
    v36 = v42;
    v37 = v43;
    sub_213FB2DF4(&v36, &qword_27C90A020, &qword_2146F5BE0);
    return (*(v52 + 8))(v6, v3);
  }

  else
  {
    v17 = v29;
    v18 = v52;
    v38 = v44;
    v39 = v45;
    v40 = v46;
    v36 = v42;
    v37 = v43;
    sub_213FB2DF4(&v36, &qword_27C90A020, &qword_2146F5BE0);
    v33 = v31;
    LOBYTE(v34) = v30;
    v35 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    sub_2142E37F4();
    sub_2146DA388();
    v33 = v17;
    LOBYTE(v34) = v28;
    v35 = 2;
    sub_2146DA388();
    v33 = v26;
    LOBYTE(v34) = v27;
    v35 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
    sub_2142E1E84();
    sub_2146DA388();
    v33 = v24;
    LOBYTE(v34) = v25;
    v35 = 4;
    sub_2146DA388();
    v33 = v22;
    v34 = v23;
    v35 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v33 = v20;
    v34 = v21;
    v35 = 6;
    sub_2146DA388();
    return (*(v18 + 8))(v14, 0);
  }
}

double sub_214216330@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_2145EFF6C(&v23);
  v12 = v24;
  v13 = v25;
  v20 = a4 & 1;
  v35 = a6 & 1;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;

  sub_21404F7E0(v12, v13);
  sub_214032118(a1, a2, 2, 0xD000000000000037, 0x80000002147915A0, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FDC6BC(a1, a2);

  v14 = v32;
  v15 = v33;
  if (v19)
  {
    v16 = v34;

    sub_214032564(v12, v13);
    v23 = v31;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v27 = a3;
    v28 = v20;
    v29 = a5;
    v30 = v35;
    sub_21430B9A0(&v23);
  }

  else
  {
    v18 = v34;

    sub_214032564(v12, v13);
    result = *&v31;
    *a7 = v31;
    *(a7 + 16) = v14;
    *(a7 + 24) = v15;
    *(a7 + 32) = v18;
    *(a7 + 40) = a3;
    *(a7 + 48) = v20;
    *(a7 + 56) = a5;
    *(a7 + 64) = v35;
  }

  return result;
}

uint64_t sub_214216504()
{
  v1 = 0x7461447472617473;
  if (*v0 != 1)
  {
    v1 = 0x65746144646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_21421655C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143796A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214216584(uint64_t a1)
{
  v2 = sub_21430B9F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142165C0(uint64_t a1)
{
  v2 = sub_21430B9F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142165FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A0A8, &qword_2146F5C18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430B9F4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v37) = 0;
  sub_2142E1278();
  sub_2146DA1C8();
  v35 = a2;
  v11 = *(&v42 + 1);
  v36 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v37) = 1;
  sub_2142E35EC();
  sub_2146DA1C8();
  v34 = v11;
  v12 = v42;
  v33 = BYTE8(v42);
  v56 = 2;
  sub_2146DA1C8();
  v32 = v12;
  v30 = v54;
  v13 = v55;
  sub_2145EFF6C(&v42);
  v14 = v43;
  v15 = v44;
  v31 = v13;
  LOBYTE(v37) = v13;
  v50 = v42;
  v51 = v43;
  v52 = v44;
  v53 = v45;
  v27[1] = *(&v42 + 1);

  v29 = v14;
  v28 = v15;
  sub_21404F7E0(v14, v15);
  v27[0] = "ivitySharingWorkout.type";
  v16 = v36;
  v17 = v34;
  sub_214032118(v36, v34, 2, 0xD000000000000037, 0x80000002147915A0, 0xD00000000000001CLL, 0x800000021478A360);

  sub_213FDC6BC(v16, v17);
  (*(v6 + 8))(v9, v5);
  v18 = v50;
  v34 = *(&v50 + 1);
  v36 = v50;
  v19 = v51;
  v20 = v52;
  LOBYTE(v16) = v53;

  sub_214032564(v29, v28);
  v37 = v18;
  *&v38 = v19;
  *(&v38 + 1) = v20;
  LOBYTE(v39) = v16;
  v21 = v32;
  *(&v39 + 1) = v32;
  LOBYTE(v17) = v33;
  LOBYTE(v40) = v33;
  v22 = v30;
  *(&v40 + 1) = v30;
  LOBYTE(v13) = v31;
  v41 = v31;
  v23 = v35;
  *(v35 + 64) = v31;
  v24 = v40;
  v23[2] = v39;
  v23[3] = v24;
  v25 = v38;
  *v23 = v37;
  v23[1] = v25;
  sub_21430BA48(&v37, &v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v42 = v36;
  *(&v42 + 1) = v34;
  v43 = v19;
  v44 = v20;
  v45 = v16;
  v46 = v21;
  v47 = v17;
  v48 = v22;
  v49 = v13;
  return sub_21430B9A0(&v42);
}

uint64_t sub_214216B6C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A0B8, &qword_2146F5C20);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 40);
  v19 = *(v1 + 48);
  v14 = *(v1 + 56);
  v15 = v10;
  HIDWORD(v13) = *(v1 + 64);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430B9F4();
  sub_2146DAA28();
  if (v8 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v17 = v9;
    v18 = v8;
    v20 = 0;
    sub_213FDCA18(v9, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v17, v18);
    if (!v2)
    {
      v17 = v15;
      LOBYTE(v18) = v19;
      v20 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
      sub_2142E37F4();
      sub_2146DA388();
      v17 = v14;
      LOBYTE(v18) = BYTE4(v13);
      v20 = 2;
      sub_2146DA388();
    }

    return (*(v16 + 8))(v7, v4);
  }

  return result;
}

void *sub_214216E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, const void *a12)
{
  __src[420] = a11 & 1;
  memcpy(&__src[3], a12, 0x189uLL);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 68) = a11 & 1;
  return memcpy((a9 + 69), __src, 0x18CuLL);
}

uint64_t sub_214216EE4(uint64_t a1)
{
  v2 = sub_21430BAA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214216F20(uint64_t a1)
{
  v2 = sub_21430BAA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214216F5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A0C0, &qword_2146F5C28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430BAA4();
  sub_2146DAA08();
  if (!v2)
  {
    v38 = a2;
    v39 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v45 = 0;
    sub_2142E12FC();
    v12 = v5;
    sub_2146DA1C8();
    v14 = v42[0];
    v13 = v42[1];
    v45 = 1;
    sub_2146DA1C8();
    v36 = v14;
    v37 = v13;
    v15 = v42[1];
    v35 = v42[0];
    v45 = 2;
    sub_2146DA1C8();
    v34 = v15;
    v17 = v42[0];
    v16 = v42[1];
    v45 = 3;
    sub_2146DA1C8();
    v33 = v17;
    v19 = v42[0];
    v20 = v42[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    v45 = 4;
    sub_2142E6128();
    sub_2146DA1C8();
    v31 = v20;
    v32 = v16;
    v21 = v37;
    LODWORD(v20) = v42[0];
    v22 = v12;
    v23 = v39;
    v43 = BYTE4(v42[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
    v45 = 5;
    sub_21430A4B0();
    sub_2146DA1C8();
    (*(v23 + 8))(v9, v22);
    v44 = v43;
    memcpy(&v41[3], v42, 0x189uLL);
    v24 = v43;
    v25 = v19;
    v26 = v38;
    v27 = v35;
    *v38 = v36;
    v26[1] = v21;
    v26[2] = v27;
    v28 = v33;
    v26[3] = v34;
    v26[4] = v28;
    v29 = v31;
    v26[5] = v32;
    v26[6] = v25;
    v26[7] = v29;
    *(v26 + 16) = v20;
    *(v26 + 68) = v24;
    memcpy(v26 + 69, v41, 0x18CuLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_2142173CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A0D0, &qword_2146F5C30);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
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
  v11 = v1[7];
  v20 = v1[6];
  v21 = v11;
  v31 = *(v1 + 16);
  HIDWORD(v19) = *(v1 + 68);
  memcpy(v30, v1 + 9, 0x189uLL);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430BAA4();

  sub_2146DAA28();
  v29[0] = v7;
  v29[1] = v8;
  v28[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v13 = v6;
  v14 = v26;
  sub_2146DA388();
  if (v14)
  {

    return (*(v27 + 8))(v6, v3);
  }

  else
  {
    v16 = v23;

    v29[0] = v25;
    v29[1] = v24;
    v28[0] = 1;
    v17 = v13;
    sub_2146DA388();
    v29[0] = v16;
    v29[1] = v22;
    v28[0] = 2;
    sub_2146DA388();
    v29[0] = v20;
    v29[1] = v21;
    v28[0] = 3;
    sub_2146DA388();
    LODWORD(v29[0]) = v31;
    BYTE4(v29[0]) = BYTE4(v19);
    v28[0] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    sub_2142E62D8();
    sub_2146DA388();
    v18 = v27;
    memcpy(v29, v30, 0x189uLL);
    v32 = 5;
    sub_213FB2E54(v30, v28, &qword_27C909E50, &unk_2146F5B30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
    sub_21430A714();
    sub_2146DA388();
    memcpy(v28, v29, 0x189uLL);
    sub_213FB2DF4(v28, &qword_27C909E50, &unk_2146F5B30);
    return (*(v18 + 8))(v17, v3);
  }
}

void *sub_2142177A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, const void *a12)
{
  v16 = a3;
  v28 = BYTE4(a3) & 1;
  v27 = a11 & 1;
  memcpy(&__src[3], a12, 0x189uLL);
  v20 = *a6;
  *(a9 + 56) = a6[1];
  v21 = a6[3];
  *(a9 + 72) = a6[2];
  *(a9 + 88) = v21;
  *(a9 + 97) = *(a6 + 57);
  v22 = v28;
  v23 = v27;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v16;
  *(a9 + 20) = v22;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = v20;
  *(a9 + 120) = a7;
  *(a9 + 128) = a8;
  *(a9 + 136) = a10;
  *(a9 + 140) = v23;
  return memcpy((a9 + 141), __src, 0x18CuLL);
}

uint64_t sub_214217890(uint64_t a1)
{
  v2 = sub_21430BAF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142178CC(uint64_t a1)
{
  v2 = sub_21430BAF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214217908@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A0D8, &qword_2146F5C38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430BAF8();
  sub_2146DAA08();
  if (!v2)
  {
    v37 = a2;
    v38 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v49) = 0;
    sub_2142E12FC();
    v12 = v5;
    sub_2146DA1C8();
    v13 = *v42;
    v14 = *&v42[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DC8, &qword_2146F40C0);
    LOBYTE(v49) = 1;
    sub_2142E7FB4();
    sub_2146DA1C8();
    v36 = v14;
    v35 = *v42;
    LODWORD(v14) = v42[4];
    LOBYTE(v49) = 2;
    sub_2146DA1C8();
    v32 = v14;
    v33 = *v42;
    v34 = v13;
    v15 = *&v42[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
    v48 = 3;
    sub_21430A588();
    sub_2146DA1C8();
    v16 = v38;
    v31 = v15;
    v46 = v51;
    *v47 = v52[0];
    *&v47[9] = *(v52 + 9);
    v44 = v49;
    v45 = v50;
    v43 = 4;
    sub_2146DA1C8();
    v17 = *v42;
    v18 = *&v42[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    v43 = 5;
    sub_2142E6128();
    sub_2146DA1C8();
    v19 = v31;
    v30 = v18;
    v29 = *v42;
    LOBYTE(v18) = v42[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
    v43 = 6;
    sub_21430A4B0();
    sub_2146DA1C8();
    (*(v16 + 8))(v9, v12);
    v41 = v32;
    v40 = v18;
    memcpy(&v39[3], v42, 0x189uLL);
    v21 = v44;
    v22 = v37;
    *(v37 + 56) = v45;
    v23 = *v47;
    *(v22 + 72) = v46;
    *(v22 + 88) = v23;
    *(v22 + 97) = *&v47[9];
    v24 = v41;
    v25 = v40;
    v26 = v36;
    *v22 = v34;
    *(v22 + 8) = v26;
    *(v22 + 16) = v35;
    *(v22 + 20) = v24;
    *(v22 + 24) = v33;
    *(v22 + 32) = v19;
    *(v22 + 40) = v21;
    v27 = v30;
    *(v22 + 120) = v17;
    *(v22 + 128) = v27;
    *(v22 + 136) = v29;
    *(v22 + 140) = v25;
    memcpy((v22 + 141), v39, 0x18CuLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_214217E8C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A0E8, &qword_2146F5C40);
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 4);
  v27 = *(v1 + 20);
  v28 = v9;
  v10 = v1[3];
  v25 = v1[4];
  v26 = v10;
  v11 = *(v1 + 7);
  v12 = *(v1 + 11);
  v41 = *(v1 + 9);
  v42[0] = v12;
  *(v42 + 9) = *(v1 + 97);
  v13 = *(v1 + 5);
  v40 = v11;
  v39 = v13;
  v14 = v1[15];
  v23 = v1[16];
  v24 = v14;
  LODWORD(v14) = *(v1 + 34);
  v21 = *(v1 + 140);
  v22 = v14;
  memcpy(v43, v1 + 18, 0x189uLL);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430BAF8();

  sub_2146DAA28();
  v31[0] = v7;
  v31[1] = v8;
  v30[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v16 = v29;
  sub_2146DA388();
  if (v16)
  {

    return (*(v44 + 8))(v6, v3);
  }

  else
  {
    v18 = v26;

    LODWORD(v31[0]) = v28;
    BYTE4(v31[0]) = v27;
    v30[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DC8, &qword_2146F40C0);
    sub_2142E883C();
    sub_2146DA388();
    v31[0] = v18;
    v31[1] = v25;
    v30[0] = 2;
    sub_2146DA388();
    v37 = v41;
    v38[0] = v42[0];
    *(v38 + 9) = *(v42 + 9);
    v35 = v39;
    v36 = v40;
    v34 = 3;
    sub_213FB2E54(&v39, v31, &qword_27C909E68, &qword_214761070);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
    sub_21430A7EC();
    sub_2146DA388();
    v32[2] = v37;
    *v33 = v38[0];
    *&v33[9] = *(v38 + 9);
    v32[0] = v35;
    v32[1] = v36;
    sub_213FB2DF4(v32, &qword_27C909E68, &qword_214761070);
    v31[0] = v24;
    v31[1] = v23;
    v30[0] = 4;
    sub_2146DA388();
    LODWORD(v31[0]) = v22;
    BYTE4(v31[0]) = v21;
    v30[0] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    sub_2142E62D8();
    sub_2146DA388();
    v19 = v44;
    memcpy(v31, v43, 0x189uLL);
    v30[399] = 6;
    sub_213FB2E54(v43, v30, &qword_27C909E50, &unk_2146F5B30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
    sub_21430A714();
    sub_2146DA388();
    memcpy(v30, v31, 0x189uLL);
    sub_213FB2DF4(v30, &qword_27C909E50, &unk_2146F5B30);
    return (*(v19 + 8))(v6, v3);
  }
}

void *sub_214218398@<X0>(void *__src@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, _OWORD *a4@<X2>, uint64_t a5@<X8>)
{
  memcpy(&v12[7], __src, 0x189uLL);
  *a5 = a2;
  *(a5 + 8) = a3;
  v9 = a4[3];
  *(a5 + 48) = a4[2];
  *(a5 + 64) = v9;
  *(a5 + 73) = *(a4 + 57);
  v10 = a4[1];
  *(a5 + 16) = *a4;
  *(a5 + 32) = v10;
  return memcpy((a5 + 89), v12, 0x190uLL);
}

uint64_t sub_214218424(uint64_t a1)
{
  v2 = sub_21430BB4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214218460(uint64_t a1)
{
  v2 = sub_21430BB4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21421849C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A0F0, &qword_2146F5C48);
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v33);
  v8 = &v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430BB4C();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v5;
    v21 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    LOBYTE(v29) = 0;
    sub_2142E12FC();
    v11 = v33;
    sub_2146DA1C8();
    v12 = v23[0];
    v13 = v23[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
    v28 = 1;
    sub_21430A588();
    sub_2146DA1C8();
    v19 = v12;
    v20 = v13;
    v26 = v31;
    *v27 = v32[0];
    *&v27[9] = *(v32 + 9);
    v24 = v29;
    v25 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
    v22[407] = 2;
    sub_21430A4B0();
    sub_2146DA1C8();
    (*(v10 + 8))(v8, v11);
    memcpy(&v22[7], v23, 0x189uLL);
    v15 = v21;
    v16 = v20;
    *v21 = v19;
    v15[1] = v16;
    v17 = *v27;
    *(v15 + 3) = v26;
    *(v15 + 4) = v17;
    *(v15 + 73) = *&v27[9];
    v18 = v25;
    *(v15 + 1) = v24;
    *(v15 + 2) = v18;
    memcpy(v15 + 89, v22, 0x190uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142187A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A100, &qword_2146F5C50);
  v16 = *(v3 - 8);
  v4 = *(v16 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 4);
  v28 = *(v1 + 3);
  v29[0] = v9;
  *(v29 + 9) = *(v1 + 73);
  v10 = *(v1 + 2);
  v26 = *(v1 + 1);
  v27 = v10;
  memcpy(v30, v1 + 12, 0x189uLL);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430BB4C();

  sub_2146DAA28();
  v18[0] = v7;
  v18[1] = v8;
  v17[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v12 = v31;
  sub_2146DA388();
  if (v12)
  {

    return (*(v16 + 8))(v6, v3);
  }

  else
  {
    v14 = v16;

    v24 = v28;
    v25[0] = v29[0];
    *(v25 + 9) = *(v29 + 9);
    v22 = v26;
    v23 = v27;
    v21 = 1;
    sub_213FB2E54(&v26, v18, &qword_27C909E68, &qword_214761070);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
    sub_21430A7EC();
    sub_2146DA388();
    v19[2] = v24;
    *v20 = v25[0];
    *&v20[9] = *(v25 + 9);
    v19[0] = v22;
    v19[1] = v23;
    sub_213FB2DF4(v19, &qword_27C909E68, &qword_214761070);
    memcpy(v18, v30, 0x189uLL);
    v17[399] = 2;
    sub_213FB2E54(v30, v17, &qword_27C909E50, &unk_2146F5B30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
    sub_21430A714();
    sub_2146DA388();
    memcpy(v17, v18, 0x189uLL);
    sub_213FB2DF4(v17, &qword_27C909E50, &unk_2146F5B30);
    return (*(v14 + 8))(v6, v3);
  }
}

uint64_t sub_214218B80(uint64_t a1)
{
  v2 = sub_21430BBA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214218BBC(uint64_t a1)
{
  v2 = sub_21430BBA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214218C3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v16 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v5)
  {
    v13 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v18 + 8))(v11, v8);
    *v13 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214218E3C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v96 = a8;
  v106 = a6;
  v97 = a5;
  v121 = a2;
  v107 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  LODWORD(v108) = *a7;
  v104 = a3;
  v100 = &v95 - v21;
  sub_213FB2E54(a3, &v95 - v21, &qword_27C907570, &qword_214732A10);
  v103 = a4;
  v102 = v20;
  sub_213FB2E54(a4, v20, &qword_27C907570, &qword_214732A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_2146EAEB0;
  v24 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v25 = sub_2142E0E94(0xD000000000000013, 0x80000002147915E0, 0);
  v101 = v11;
  if (v11)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v26 = v25;
    v99 = a11;
    v105 = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
    v27 = swift_allocObject();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v27 + 16) = sub_21430BBF4;
    *(v27 + 24) = v28;
    *(v23 + 32) = v27;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_2140676DC;
    *(v29 + 24) = 0;
    *(v23 + 40) = v29;
    v30 = sub_2142E091C(v23, &qword_27C903F20, &unk_2146E9D20, sub_21438ED7C, sub_21438F6FC);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
    v31 = swift_allocObject();
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v31 + 16) = sub_214032610;
    *(v31 + 24) = v32;
    *(inited + 32) = v31;
    sub_214042A28(inited, &v117);
    v33 = v118;
    v34 = v119;
    LOBYTE(v31) = v120;
    sub_214393C20(&v113);
    v35 = v114;
    v36 = v115;
    v37 = v116;
    sub_214393C54(&v109);
    v38 = v110;
    v39 = v111;
    v98 = v112;
    *a9 = v117;
    *(a9 + 16) = v33;
    *(a9 + 24) = v34;
    *(a9 + 32) = v31;
    v40 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
    sub_21408AC04(v100, a9 + v40[5], &qword_27C907570, &qword_214732A10);
    sub_21408AC04(v102, a9 + v40[6], &qword_27C907570, &qword_214732A10);
    v41 = a9 + v40[7];
    *v41 = v113;
    *(v41 + 16) = v35;
    *(v41 + 24) = v36;
    *(v41 + 32) = v37;
    *(a9 + v40[8]) = v108;
    v42 = a9 + v40[9];
    *v42 = v109;
    *(v42 + 16) = v38;
    *(v42 + 24) = v39;
    *(v42 + 32) = v98;
    *(a9 + v40[10]) = v99;
    v44 = *a9;
    v43 = *(a9 + 8);
    v45 = *(a9 + 16);
    v46 = *(a9 + 24);
    v47 = *(a9 + 32);
    *&v113 = v107;
    *(&v113 + 1) = v121;
    LODWORD(v100) = v47;
    LOBYTE(v109) = v47;
    *&v117 = 0xD00000000000003DLL;
    *(&v117 + 1) = 0x8000000214791630;
    v118 = 0xD00000000000001CLL;
    v119 = 0x800000021478A360;

    sub_213FDC9D0(v45, v46);
    v48 = v101;
    v102 = v44;
    v49 = (v44)(&v113, &v109, &v117);
    v108 = v48;
    if (v48)
    {

LABEL_8:

      sub_213FB2DF4(v103, &qword_27C907570, &qword_214732A10);
      sub_213FB2DF4(v104, &qword_27C907570, &qword_214732A10);
      v64 = *(a9 + 8);
      v65 = *(a9 + 16);
      v66 = *(a9 + 24);

      sub_213FDC6D0(v65, v66);
      *a9 = v102;
      *(a9 + 8) = v43;
      *(a9 + 16) = v45;
      *(a9 + 24) = v46;
      *(a9 + 32) = v100;
      return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
    }

    v101 = 0x800000021478A360;
    v99 = v42;
    if ((v49 & 1) == 0)
    {
      sub_214031C4C();
      swift_allocError();
      *v62 = 0xD00000000000003DLL;
      v62[1] = 0x8000000214791630;
      v63 = v101;
      v62[2] = 0xD00000000000001CLL;
      v62[3] = v63;
      swift_willThrow();

      goto LABEL_8;
    }

    sub_213FDC6D0(v45, v46);
    v50 = v101;

    v51 = *(a9 + 8);
    v52 = *(a9 + 16);
    v53 = *(a9 + 24);

    sub_213FDC6D0(v52, v53);
    *a9 = v102;
    *(a9 + 8) = v43;
    v54 = v121;
    *(a9 + 16) = v107;
    *(a9 + 24) = v54;
    *(a9 + 32) = v100;
    v56 = *v41;
    v55 = *(v41 + 8);
    v57 = *(v41 + 16);
    v58 = *(v41 + 24);
    v59 = *(v41 + 32);
    *&v113 = v97;
    *(&v113 + 1) = v106;
    LODWORD(v107) = v59;
    LOBYTE(v109) = v59;
    *&v117 = 0xD00000000000003ALL;
    *(&v117 + 1) = 0x8000000214791670;
    v118 = 0xD00000000000001CLL;
    v119 = v50;

    sub_213FDC9D0(v57, v58);
    v60 = v108;
    v121 = v56;
    v61 = v56(&v113, &v109, &v117);
    v108 = v60;
    if (v60)
    {

LABEL_14:

      sub_213FB2DF4(v103, &qword_27C907570, &qword_214732A10);
      sub_213FB2DF4(v104, &qword_27C907570, &qword_214732A10);
      v81 = *(v41 + 8);
      v82 = *(v41 + 16);
      v83 = *(v41 + 24);

      sub_213FDC6D0(v82, v83);
      *v41 = v121;
      *(v41 + 8) = v55;
      *(v41 + 16) = v57;
      *(v41 + 24) = v58;
      *(v41 + 32) = v107;
      return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
    }

    if ((v61 & 1) == 0)
    {
      sub_214031C4C();
      v79 = swift_allocError();
      *v80 = 0xD00000000000003ALL;
      v80[1] = 0x8000000214791670;
      v80[2] = 0xD00000000000001CLL;
      v80[3] = v50;
      v108 = v79;
      swift_willThrow();

      goto LABEL_14;
    }

    sub_213FDC6D0(v57, v58);

    v68 = *(v41 + 8);
    v69 = *(v41 + 16);
    v70 = *(v41 + 24);

    sub_213FDC6D0(v69, v70);
    *v41 = v121;
    *(v41 + 8) = v55;
    v71 = v106;
    *(v41 + 16) = v97;
    *(v41 + 24) = v71;
    *(v41 + 32) = v107;
    v73 = *v99;
    v72 = *(v99 + 8);
    v74 = *(v99 + 16);
    v75 = *(v99 + 24);
    v76 = *(v99 + 32);
    *&v113 = v96;
    *(&v113 + 1) = v105;
    LODWORD(v107) = v76;
    LOBYTE(v109) = v76;
    *&v117 = 0xD000000000000042;
    *(&v117 + 1) = 0x80000002147916B0;
    v118 = 0xD00000000000001CLL;
    v119 = v50;

    sub_213FDC9D0(v74, v75);
    v77 = v108;
    v121 = v73;
    v78 = v73(&v113, &v109, &v117);
    if (v77)
    {

LABEL_18:

      v91 = v99;
      sub_213FB2DF4(v103, &qword_27C907570, &qword_214732A10);
      sub_213FB2DF4(v104, &qword_27C907570, &qword_214732A10);
      v92 = *(v91 + 8);
      v93 = *(v91 + 16);
      v94 = *(v91 + 24);

      sub_213FDC6D0(v93, v94);
      *v91 = v121;
      *(v91 + 8) = v72;
      *(v91 + 16) = v74;
      *(v91 + 24) = v75;
      *(v91 + 32) = v107;
      return sub_21432887C(a9, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
    }

    if ((v78 & 1) == 0)
    {
      sub_214031C4C();
      swift_allocError();
      *v89 = 0xD000000000000042;
      v89[1] = 0x80000002147916B0;
      v90 = v101;
      v89[2] = 0xD00000000000001CLL;
      v89[3] = v90;
      swift_willThrow();
      goto LABEL_18;
    }

    sub_213FDC6D0(v74, v75);

    sub_213FB2DF4(v103, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v104, &qword_27C907570, &qword_214732A10);
    v84 = v99;
    v85 = *(v99 + 8);
    v86 = *(v99 + 16);
    v87 = *(v99 + 24);

    result = sub_213FDC6D0(v86, v87);
    *v84 = v121;
    *(v84 + 8) = v72;
    v88 = v105;
    *(v84 + 16) = v96;
    *(v84 + 24) = v88;
    *(v84 + 32) = v107;
  }

  return result;
}

unint64_t sub_2142198B4()
{
  v1 = 0xD000000000000010;
  v2 = 0xD000000000000019;
  if (*v0 != 5)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_21421996C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143797C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214219994(uint64_t a1)
{
  v2 = sub_21430BBFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142199D0(uint64_t a1)
{
  v2 = sub_21430BBFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214219A0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v3 = *(*(v120 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v120);
  v119 = (&v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v101 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v101 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v101 - v12;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A120, &qword_2146F5C68);
  v121 = *(v122 - 8);
  v14 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v16 = &v101 - v15;
  v17 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v22 = a1[4];
  v136 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_21430BBFC();
  v23 = v123;
  sub_2146DAA08();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v136);
  }

  v114 = v17;
  v115 = v8;
  v123 = v11;
  v117 = v13;
  v116 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v128) = 0;
  v24 = sub_2142E12FC();
  sub_2146DA1C8();
  v113 = v24;
  v25 = v132;
  LOBYTE(v132) = 1;
  sub_2142F4AA4();
  sub_2146DA1C8();
  LOBYTE(v132) = 2;
  sub_2146DA1C8();
  v120 = *(&v25 + 1);
  v112 = v25;
  LOBYTE(v128) = 3;
  sub_2146DA1C8();
  v26 = v16;
  v27 = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A130, &qword_2146F5C70);
  LOBYTE(v128) = 4;
  sub_21430BC50();
  sub_2146DA1C8();
  v111 = v27;
  v28 = v132;
  LOBYTE(v128) = 5;
  sub_2146DA1C8();
  v29 = v123;
  v31 = *(&v132 + 1);
  v113 = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A148, &qword_2146F5C78);
  LOBYTE(v128) = 6;
  sub_21430BD28();
  sub_2146DA1C8();
  LODWORD(v107) = v28;
  v110 = *(&v27 + 1);
  v109 = v31;
  v108 = v26;
  v106 = v132;
  v32 = v115;
  sub_213FB2E54(v117, v115, &qword_27C907570, &qword_214732A10);
  v33 = v29;
  v34 = v119;
  sub_213FB2E54(v33, v119, &qword_27C907570, &qword_214732A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_2146EAEB0;
  v37 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v38 = sub_2142E0E94(0xD000000000000013, 0x80000002147915E0, 0);
  v105 = 0;
  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v40 = swift_allocObject();
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  *(v40 + 16) = sub_21438F528;
  *(v40 + 24) = v41;
  *(v36 + 32) = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_2140676DC;
  *(v42 + 24) = 0;
  *(v36 + 40) = v42;
  v43 = sub_2142E091C(v36, &qword_27C903F20, &unk_2146E9D20, sub_21438ED7C, sub_21438F6FC);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v44 = swift_allocObject();
  v45 = swift_allocObject();
  *(v45 + 16) = v43;
  *(v44 + 16) = sub_214032610;
  *(v44 + 24) = v45;
  *(inited + 32) = v44;
  sub_214042A28(inited, &v132);
  v46 = v133;
  v47 = v134;
  LOBYTE(v44) = v135;
  sub_214393C20(&v128);
  v48 = v129;
  v49 = v130;
  v101 = v131;
  sub_214393C54(&v124);
  v104 = v125;
  v103 = v126;
  v102 = v127;
  v50 = v116;
  *v116 = v132;
  *(v50 + 2) = v46;
  *(v50 + 3) = v47;
  *(v50 + 32) = v44;
  v51 = v114;
  sub_21408AC04(v32, v50 + v114[5], &qword_27C907570, &qword_214732A10);
  sub_21408AC04(v34, v50 + v51[6], &qword_27C907570, &qword_214732A10);
  v52 = v50 + v51[7];
  *v52 = v128;
  *(v52 + 2) = v48;
  *(v52 + 3) = v49;
  v52[32] = v101;
  *(v50 + v51[8]) = v107;
  v53 = v50 + v51[9];
  *v53 = v124;
  v54 = v103;
  *(v53 + 2) = v104;
  *(v53 + 3) = v54;
  v107 = v53;
  v53[32] = v102;
  *(v50 + v51[10]) = v106;
  v56 = *v50;
  v55 = *(v50 + 1);
  v57 = *(v50 + 2);
  v58 = *(v50 + 3);
  LODWORD(v54) = *(v50 + 32);
  *&v128 = v112;
  *(&v128 + 1) = v120;
  LODWORD(v115) = v54;
  LOBYTE(v124) = v54;
  *&v132 = 0xD00000000000003DLL;
  *(&v132 + 1) = 0x8000000214791630;
  v133 = 0xD00000000000001CLL;
  v134 = 0x800000021478A360;

  sub_213FDC9D0(v57, v58);
  v59 = v105;
  v119 = v56;
  v60 = (v56)(&v128, &v124, &v132);
  if (v59)
  {

LABEL_9:

    sub_213FB2DF4(v123, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v117, &qword_27C907570, &qword_214732A10);
    (*(v121 + 8))(v108, v122);
    v73 = *(v50 + 1);
    v74 = *(v50 + 2);
    v75 = *(v50 + 3);

    sub_213FDC6D0(v74, v75);
    *v50 = v119;
    *(v50 + 1) = v55;
    *(v50 + 2) = v57;
    *(v50 + 3) = v58;
    *(v50 + 32) = v115;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v136);
    return sub_21432887C(v50, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
  }

  if ((v60 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v72 = 0xD00000000000003DLL;
    v72[1] = 0x8000000214791630;
    v72[2] = 0xD00000000000001CLL;
    v72[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_9;
  }

  sub_213FDC6D0(v57, v58);

  v61 = *(v50 + 1);
  v62 = *(v50 + 2);
  v63 = *(v50 + 3);

  sub_213FDC6D0(v62, v63);
  *v50 = v119;
  *(v50 + 1) = v55;
  v64 = v120;
  *(v50 + 2) = v112;
  *(v50 + 3) = v64;
  *(v50 + 32) = v115;
  v66 = *v52;
  v65 = *(v52 + 1);
  v67 = *(v52 + 2);
  v68 = *(v52 + 3);
  v69 = v52[32];
  *&v128 = v111;
  *(&v128 + 1) = v110;
  LODWORD(v120) = v69;
  LOBYTE(v124) = v69;
  *&v132 = 0xD00000000000003ALL;
  *(&v132 + 1) = 0x8000000214791670;
  v133 = 0xD00000000000001CLL;
  v134 = 0x800000021478A360;

  sub_213FDC9D0(v67, v68);
  v70 = v66;
  v71 = v66(&v128, &v124, &v132);
  if ((v71 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v87 = 0xD00000000000003ALL;
    v87[1] = 0x8000000214791670;
    v87[2] = 0xD00000000000001CLL;
    v87[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v123, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v117, &qword_27C907570, &qword_214732A10);
    (*(v121 + 8))(v108, v122);
    v88 = *(v52 + 1);
    v89 = *(v52 + 2);
    v90 = *(v52 + 3);

    sub_213FDC6D0(v89, v90);
    *v52 = v70;
    *(v52 + 1) = v65;
    *(v52 + 2) = v67;
    *(v52 + 3) = v68;
    v52[32] = v120;
LABEL_14:
    v50 = v116;
    goto LABEL_10;
  }

  sub_213FDC6D0(v67, v68);

  v76 = *(v52 + 1);
  v77 = *(v52 + 2);
  v78 = *(v52 + 3);

  sub_213FDC6D0(v77, v78);
  *v52 = v66;
  *(v52 + 1) = v65;
  v79 = v110;
  *(v52 + 2) = v111;
  *(v52 + 3) = v79;
  v52[32] = v120;
  v81 = *v107;
  v80 = *(v107 + 1);
  v82 = *(v107 + 2);
  v83 = *(v107 + 3);
  v84 = v107[32];
  *&v128 = v113;
  *(&v128 + 1) = v109;
  LOBYTE(v124) = v84;
  *&v132 = 0xD000000000000042;
  *(&v132 + 1) = 0x80000002147916B0;
  v133 = 0xD00000000000001CLL;
  v134 = 0x800000021478A360;

  sub_213FDC9D0(v82, v83);
  v85 = v81;
  v86 = v81(&v128, &v124, &v132);
  if ((v86 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v96 = 0xD000000000000042;
    v96[1] = 0x80000002147916B0;
    v96[2] = 0xD00000000000001CLL;
    v96[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v123, &qword_27C907570, &qword_214732A10);
    sub_213FB2DF4(v117, &qword_27C907570, &qword_214732A10);
    (*(v121 + 8))(v108, v122);
    v97 = v107;
    v98 = *(v107 + 1);
    v99 = *(v107 + 2);
    v100 = *(v107 + 3);

    sub_213FDC6D0(v99, v100);
    *v97 = v85;
    *(v97 + 1) = v80;
    *(v97 + 2) = v82;
    *(v97 + 3) = v83;
    v97[32] = v84;
    goto LABEL_14;
  }

  sub_213FDC6D0(v82, v83);

  sub_213FB2DF4(v123, &qword_27C907570, &qword_214732A10);
  sub_213FB2DF4(v117, &qword_27C907570, &qword_214732A10);
  (*(v121 + 8))(v108, v122);
  v91 = v107;
  v92 = *(v107 + 1);
  v93 = *(v107 + 2);
  v94 = *(v107 + 3);

  sub_213FDC6D0(v93, v94);
  *v91 = v81;
  *(v91 + 1) = v80;
  v95 = v109;
  *(v91 + 2) = v113;
  *(v91 + 3) = v95;
  v91[32] = v84;
  sub_214328704(v116, v118, type metadata accessor for IDSHealthInvitation.SharingSetupMetadata);
  return __swift_destroy_boxed_opaque_existential_1(v136);
}