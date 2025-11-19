uint64_t sub_21417FE38(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908048, &qword_2146F4EE0);
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 104);
  v29 = *(v1 + 96);
  v30 = v8;
  v28 = v10;
  v11 = *(v1 + 136);
  v26 = *(v1 + 144);
  v27 = v11;
  v12 = *(v1 + 176);
  v24 = *(v1 + 184);
  v25 = v12;
  v34 = *(v1 + 193);
  v23 = *(v1 + 200);
  v22 = *(v1 + 208);
  v13 = *(v1 + 232);
  v20 = *(v1 + 240);
  v21 = v13;
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = &v20 - v17;
  __swift_project_boxed_opaque_existential_1(v16, v14);
  sub_2142FA4A4();
  sub_2146DAA28();
  if (!v6)
  {
    goto LABEL_10;
  }

  LOBYTE(v32) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v31 + 8))(v18, v4);
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v32 = v30;
  v33 = v9;
  v35 = 1;
  sub_21402D9F8(v30, v9);
  sub_214061684();
  sub_2146DA388();
  sub_213FB54FC(v32, v33);
  if (v28 >> 60 == 11)
  {
    goto LABEL_10;
  }

  v32 = v29;
  v33 = v28;
  v35 = 2;
  sub_213FDCA18(v29, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  sub_2142E1CAC();
  sub_2146DA388();
  sub_213FDC6BC(v32, v33);
  if (v26 >> 60 == 11)
  {
    goto LABEL_10;
  }

  v32 = v27;
  v33 = v26;
  v35 = 3;
  sub_213FDCA18(v27, v26);
  sub_2146DA388();
  sub_213FDC6BC(v32, v33);
  if (v24 >> 60 == 11)
  {
    goto LABEL_10;
  }

  v32 = v25;
  v33 = v24;
  v35 = 4;
  sub_213FDCA18(v25, v24);
  sub_2146DA388();
  sub_213FDC6BC(v32, v33);
  LOBYTE(v32) = 5;
  sub_2146DA338();
  v32 = v23;
  LOBYTE(v33) = v22;
  v35 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
  sub_2142E1E84();
  sub_2146DA388();
  if (v20 >> 60 == 11)
  {
LABEL_10:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v32 = v21;
    v33 = v20;
    v35 = 7;
    sub_213FDCA18(v21, v20);
    sub_2146DA388();
    sub_213FDC6BC(v32, v33);
    return (*(v31 + 8))(v18, v4);
  }

  return result;
}

uint64_t NameAndPhotoNameOnlyUpdate.init(with:lastName:updateInfoIncluded:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

uint64_t sub_2141802F0()
{
  v1 = 0x656D614E7473616CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E7473726966;
  }
}

uint64_t sub_214180354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436CF2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21418037C(uint64_t a1)
{
  v2 = sub_2142FA554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141803B8(uint64_t a1)
{
  v2 = sub_2142FA554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NameAndPhotoNameOnlyUpdate.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908050, &qword_2146F4EE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FA554();
  sub_2146DAA08();
  if (!v2)
  {
    v21 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v24 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v11 = v23;
    v20 = v22;
    v24 = 1;
    sub_2146DA1C8();
    v12 = v11;
    v13 = v22;
    v14 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
    v24 = 2;
    sub_2142E14CC();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v16 = v23;
    v17 = v13;
    v19 = v21;
    v18 = v22;
    *v21 = v20;
    v19[1] = v12;
    v19[2] = v17;
    v19[3] = v14;
    v19[4] = v18;
    *(v19 + 40) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t NameAndPhotoNameOnlyUpdate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908060, &unk_2146F4EF0);
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
  v22 = *(v1 + 40);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FA554();

  sub_2146DAA28();
  v20 = v8;
  v21 = v9;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v12 = v19;
  sub_2146DA388();

  if (!v12)
  {
    v13 = v22;
    v14 = v16;
    v20 = v18;
    v21 = v17;
    v23 = 1;
    sub_2146DA388();
    v20 = v14;
    LOBYTE(v21) = v13;
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
    sub_2142E1E84();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2141808E4@<X0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  v9 = a2[7];
  *(a7 + 104) = a2[6];
  *(a7 + 120) = v9;
  *(a7 + 136) = a2[8];
  *(a7 + 145) = *(a2 + 137);
  v10 = a2[3];
  *(a7 + 40) = a2[2];
  *(a7 + 56) = v10;
  v11 = a2[5];
  *(a7 + 72) = a2[4];
  *(a7 + 88) = v11;
  v12 = a2[1];
  *(a7 + 8) = *a2;
  *(a7 + 24) = v12;
  v13 = a3[3];
  *(a7 + 200) = a3[2];
  *(a7 + 216) = v13;
  v14 = a3[5];
  *(a7 + 232) = a3[4];
  *(a7 + 248) = v14;
  v15 = a3[1];
  *(a7 + 168) = *a3;
  *(a7 + 184) = v15;
  v16 = (a7 + 264);
  v17 = *(a4 + 80);
  v16[4] = *(a4 + 64);
  v16[5] = v17;
  v16[6] = *(a4 + 96);
  *(a7 + 376) = *(a4 + 112);
  v18 = *(a4 + 16);
  *v16 = *a4;
  v16[1] = v18;
  v19 = *(a4 + 48);
  v16[2] = *(a4 + 32);
  v16[3] = v19;
  v20 = a5[4];
  *(a7 + 432) = a5[3];
  *(a7 + 448) = v20;
  v21 = a5[2];
  *(a7 + 400) = a5[1];
  *(a7 + 416) = v21;
  *(a7 + 384) = *a5;
  v22 = type metadata accessor for IDSNearbySessionMessage(0);
  return sub_21408AC04(a6, a7 + *(v22 + 36), &qword_27C908068, &qword_21476EEC0);
}

uint64_t sub_2141809F0()
{
  v1 = *v0;
  v2 = 0x726F70736E617274;
  v3 = 0x757165526E696F6ALL;
  v4 = 0x707365526E696F6ALL;
  if (v1 != 4)
  {
    v4 = 0x73654D70756F7267;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
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

uint64_t sub_214180AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436D054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214180AF8(uint64_t a1)
{
  v2 = sub_2142FA5A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214180B34(uint64_t a1)
{
  v2 = sub_2142FA5A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214180B70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908068, &qword_21476EEC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31[-v6];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908070, &unk_2146F4F00);
  v34 = *(v36 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v10 = &v31[-v9];
  v11 = a1[3];
  v12 = a1[4];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2142FA5A8();
  sub_2146DAA08();
  if (!v2)
  {
    v33 = v7;
    v13 = v34;
    v14 = v35;
    LOBYTE(v79) = 0;
    sub_2142FA5FC();
    v15 = v36;
    sub_2146DA1C8();
    v16 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908088, &unk_21476EEA0);
    v88 = 1;
    sub_2142FA650();
    sub_2146DA1C8();
    v32 = v16;
    v85 = v95;
    v86 = v96;
    *v87 = v97[0];
    *&v87[9] = *(v97 + 9);
    v81 = v91;
    v82 = v92;
    v83 = v93;
    v84 = v94;
    v79 = v89;
    v80 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9080A0, &unk_2146F4F10);
    v72 = 2;
    sub_2142FA728();
    sub_2146DA1C8();
    v68 = v75;
    v69 = v76;
    v70 = v77;
    v71 = v78;
    v66 = v73;
    v67 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9080B8, &unk_21476EEB0);
    v57 = 3;
    sub_2142FA800();
    sub_2146DA1C8();
    v53 = v62;
    v54 = v63;
    v55 = v64;
    v56 = v65;
    v49 = v58;
    v50 = v59;
    v51 = v60;
    v52 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9080D0, &qword_2146F4F20);
    v43 = 4;
    sub_2142FA8D8();
    sub_2146DA1C8();
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v38 = v44;
    v39 = v45;
    v37 = 5;
    sub_2142FA9B0();
    v17 = v33;
    sub_2146DA1C8();
    (*(v13 + 8))(v10, v15);
    v19 = type metadata accessor for IDSNearbySessionMessage(0);
    sub_21408AC04(v17, v14 + *(v19 + 36), &qword_27C908068, &qword_21476EEC0);
    *v14 = v32;
    v20 = v86;
    *(v14 + 104) = v85;
    *(v14 + 120) = v20;
    *(v14 + 136) = *v87;
    *(v14 + 145) = *&v87[9];
    v21 = v82;
    *(v14 + 40) = v81;
    *(v14 + 56) = v21;
    v22 = v84;
    *(v14 + 72) = v83;
    *(v14 + 88) = v22;
    v23 = v80;
    *(v14 + 8) = v79;
    *(v14 + 24) = v23;
    *(v14 + 200) = v68;
    *(v14 + 216) = v69;
    *(v14 + 232) = v70;
    *(v14 + 248) = v71;
    *(v14 + 168) = v66;
    *(v14 + 184) = v67;
    *(v14 + 376) = v56;
    v24 = v55;
    *(v14 + 344) = v54;
    *(v14 + 360) = v24;
    v25 = v53;
    *(v14 + 312) = v52;
    *(v14 + 328) = v25;
    v26 = v51;
    *(v14 + 280) = v50;
    *(v14 + 296) = v26;
    *(v14 + 264) = v49;
    v27 = v38;
    v28 = v39;
    v29 = v42;
    *(v14 + 432) = v41;
    *(v14 + 448) = v29;
    v30 = v40;
    *(v14 + 400) = v28;
    *(v14 + 416) = v30;
    *(v14 + 384) = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(v98);
}

uint64_t sub_2141811E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9080F8, &qword_2146F4F28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FA5A8();
  sub_2146DAA28();
  v96 = *v3;
  v95 = 0;
  sub_2142FAA64();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v97 = v6;
  v12 = *(v3 + 120);
  v93[6] = *(v3 + 104);
  v93[7] = v12;
  *v94 = *(v3 + 136);
  *&v94[9] = *(v3 + 145);
  v13 = *(v3 + 56);
  v93[2] = *(v3 + 40);
  v93[3] = v13;
  v14 = *(v3 + 88);
  v93[4] = *(v3 + 72);
  v93[5] = v14;
  v15 = *(v3 + 24);
  v93[0] = *(v3 + 8);
  v93[1] = v15;
  v16 = *(v3 + 120);
  v90 = *(v3 + 104);
  v91 = v16;
  v92[0] = *(v3 + 136);
  *(v92 + 9) = *(v3 + 145);
  v17 = *(v3 + 56);
  v86 = *(v3 + 40);
  v87 = v17;
  v18 = *(v3 + 88);
  v88 = *(v3 + 72);
  v89 = v18;
  v19 = *(v3 + 24);
  v84 = *(v3 + 8);
  v85 = v19;
  v83 = 1;
  sub_213FB2E54(v93, v81, &qword_27C908088, &unk_21476EEA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908088, &unk_21476EEA0);
  sub_2142FAAB8();
  v40 = v5;
  sub_2146DA388();
  v81[6] = v90;
  v81[7] = v91;
  *v82 = v92[0];
  *&v82[9] = *(v92 + 9);
  v81[2] = v86;
  v81[3] = v87;
  v81[4] = v88;
  v81[5] = v89;
  v81[0] = v84;
  v81[1] = v85;
  sub_213FB2DF4(v81, &qword_27C908088, &unk_21476EEA0);
  v20 = *(v3 + 216);
  v80[2] = *(v3 + 200);
  v80[3] = v20;
  v21 = *(v3 + 248);
  v80[4] = *(v3 + 232);
  v80[5] = v21;
  v22 = *(v3 + 184);
  v80[0] = *(v3 + 168);
  v80[1] = v22;
  v23 = *(v3 + 216);
  v76 = *(v3 + 200);
  v77 = v23;
  v24 = *(v3 + 248);
  v78 = *(v3 + 232);
  v79 = v24;
  v25 = *(v3 + 184);
  v74 = *(v3 + 168);
  v75 = v25;
  v73 = 2;
  sub_213FB2E54(v80, v66, &qword_27C9080A0, &unk_2146F4F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9080A0, &unk_2146F4F10);
  sub_2142FAB90();
  v26 = v40;
  sub_2146DA388();
  v65[2] = v76;
  v65[3] = v77;
  v65[4] = v78;
  v65[5] = v79;
  v65[0] = v74;
  v65[1] = v75;
  sub_213FB2DF4(v65, &qword_27C9080A0, &unk_2146F4F10);
  v27 = *(v3 + 344);
  v28 = *(v3 + 312);
  v69 = *(v3 + 328);
  v70 = v27;
  v29 = *(v3 + 344);
  v71 = *(v3 + 360);
  v30 = *(v3 + 280);
  v66[0] = *(v3 + 264);
  v66[1] = v30;
  v31 = *(v3 + 312);
  v33 = *(v3 + 264);
  v32 = *(v3 + 280);
  v67 = *(v3 + 296);
  v68 = v31;
  v61 = v69;
  v62 = v29;
  v63 = *(v3 + 360);
  v57 = v33;
  v58 = v32;
  v72 = *(v3 + 188);
  v64 = *(v3 + 188);
  v59 = v67;
  v60 = v28;
  v56 = 3;
  sub_213FB2E54(v66, v54, &qword_27C9080B8, &unk_21476EEB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9080B8, &unk_21476EEB0);
  sub_2142FAC68();
  sub_2146DA388();
  v54[4] = v61;
  v54[5] = v62;
  v54[6] = v63;
  v55 = v64;
  v54[0] = v57;
  v54[1] = v58;
  v54[2] = v59;
  v54[3] = v60;
  sub_213FB2DF4(v54, &qword_27C9080B8, &unk_21476EEB0);
  v34 = *(v3 + 26);
  v35 = *(v3 + 24);
  v50 = *(v3 + 25);
  v51 = v34;
  v36 = *(v3 + 26);
  v37 = *(v3 + 28);
  v52 = *(v3 + 27);
  v53 = v37;
  v38 = *(v3 + 24);
  v46 = v36;
  v47 = v52;
  v48 = *(v3 + 28);
  v49 = v38;
  v44 = v35;
  v45 = v50;
  v43 = 4;
  sub_213FB2E54(&v49, v42, &qword_27C9080D0, &qword_2146F4F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9080D0, &qword_2146F4F20);
  sub_2142FAD40();
  sub_2146DA388();
  v42[2] = v46;
  v42[3] = v47;
  v42[4] = v48;
  v42[0] = v44;
  v42[1] = v45;
  sub_213FB2DF4(v42, &qword_27C9080D0, &qword_2146F4F20);
  v39 = *(type metadata accessor for IDSNearbySessionMessage(0) + 36);
  v41 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908068, &qword_21476EEC0);
  sub_2142FAE18();
  sub_2146DA388();
  return (*(v97 + 8))(v9, v26);
}

uint64_t AvatarImage.init(with:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  strcpy((v9 + 16), "NickNameImage");
  *(v9 + 30) = -4864;
  *(v8 + 16) = sub_21438F520;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_214042B80(inited, a4);
  LOWORD(v40[0]) = 0;
  sub_2140615D0(v40);
  v10 = v40[9];
  *(a4 + 416) = v40[8];
  *(a4 + 432) = v10;
  v11 = v40[11];
  *(a4 + 448) = v40[10];
  *(a4 + 464) = v11;
  v12 = v40[5];
  *(a4 + 352) = v40[4];
  *(a4 + 368) = v12;
  v13 = v40[7];
  *(a4 + 384) = v40[6];
  *(a4 + 400) = v13;
  v14 = v40[1];
  *(a4 + 288) = v40[0];
  *(a4 + 304) = v14;
  v15 = v40[3];
  *(a4 + 320) = v40[2];
  *(a4 + 336) = v15;
  *(a4 + 40) = 0u;
  *(a4 + 280) = 0;
  *(a4 + 248) = 0u;
  *(a4 + 232) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 264) = 0u;
  v17 = *a4;
  v16 = *(a4 + 8);
  v18 = *(a4 + 24);
  v34 = *(a4 + 16);
  v19 = *(a4 + 32);
  v39[0] = a1;
  v39[1] = a2;
  v41 = v19;
  v42 = v19;
  v38[0] = 0xD000000000000015;
  v38[1] = 0x800000021478F240;
  v38[2] = 0xD00000000000001CLL;
  v38[3] = 0x800000021478A360;
  v35 = v18;

  v20 = v17(v39, &v42, v38);
  if (v36)
  {
  }

  else
  {
    if (v20)
    {

      v21 = *(a4 + 8);
      v22 = *(a4 + 24);

      *a4 = v17;
      *(a4 + 8) = v16;
      *(a4 + 16) = a1;
      *(a4 + 24) = a2;
      *(a4 + 32) = v41;
      result = sub_213FB2DF4(a4 + 40, &qword_27C904858, &qword_214736F00);
      v24 = *(a3 + 208);
      *(a4 + 232) = *(a3 + 192);
      *(a4 + 248) = v24;
      *(a4 + 264) = *(a3 + 224);
      *(a4 + 280) = *(a3 + 240);
      v25 = *(a3 + 144);
      *(a4 + 168) = *(a3 + 128);
      *(a4 + 184) = v25;
      v26 = *(a3 + 176);
      *(a4 + 200) = *(a3 + 160);
      *(a4 + 216) = v26;
      v27 = *(a3 + 80);
      *(a4 + 104) = *(a3 + 64);
      *(a4 + 120) = v27;
      v28 = *(a3 + 112);
      *(a4 + 136) = *(a3 + 96);
      *(a4 + 152) = v28;
      v29 = *(a3 + 16);
      *(a4 + 40) = *a3;
      *(a4 + 56) = v29;
      v30 = *(a3 + 48);
      *(a4 + 72) = *(a3 + 32);
      *(a4 + 88) = v30;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000015;
    v31[1] = 0x800000021478F240;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21406D2CC(a3);
  v32 = *(a4 + 8);
  v33 = *(a4 + 24);

  *a4 = v17;
  *(a4 + 8) = v16;
  *(a4 + 16) = v34;
  *(a4 + 24) = v35;
  *(a4 + 32) = v41;
  return sub_2142FAECC(a4);
}

uint64_t sub_214181C6C()
{
  if (*v0)
  {
    result = 0x6567616D69;
  }

  else
  {
    result = 0x6D614E6567616D69;
  }

  *v0;
  return result;
}

uint64_t sub_214181CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
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

uint64_t sub_214181D88(uint64_t a1)
{
  v2 = sub_2142FAF20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214181DC4(uint64_t a1)
{
  v2 = sub_2142FAF20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvatarImage.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908158, &qword_2146F4F30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142FAF20();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v12 = v6;
  v32 = a2;
  v38[0] = 0;
  v13 = sub_2146DA168();
  v15 = v14;
  v31 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  v37 = 1;
  sub_21432076C(&qword_280B30CB8, &qword_27C905500, &qword_2146F2BE0);
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  strcpy((v19 + 16), "NickNameImage");
  *(v19 + 30) = -4864;
  *(v18 + 16) = sub_21438F520;
  *(v18 + 24) = v19;
  *(v17 + 32) = v18;
  sub_214042B80(v17, v39);
  LOWORD(v36[0]) = 0;
  sub_2140615D0(v36);
  v39[26] = v36[8];
  v39[27] = v36[9];
  v39[28] = v36[10];
  v39[29] = v36[11];
  v39[22] = v36[4];
  v39[23] = v36[5];
  v39[24] = v36[6];
  v39[25] = v36[7];
  v39[18] = v36[0];
  v39[19] = v36[1];
  v39[20] = v36[2];
  v39[21] = v36[3];
  v25 = &v39[2] + 8;
  *(&v39[16] + 8) = 0u;
  *(&v39[17] + 1) = 0;
  *(&v39[15] + 8) = 0u;
  *(&v39[14] + 8) = 0u;
  *(&v39[13] + 8) = 0u;
  *(&v39[12] + 8) = 0u;
  *(&v39[11] + 8) = 0u;
  *(&v39[10] + 8) = 0u;
  *(&v39[9] + 8) = 0u;
  *(&v39[8] + 8) = 0u;
  *(&v39[7] + 8) = 0u;
  *(&v39[6] + 8) = 0u;
  *(&v39[5] + 8) = 0u;
  *(&v39[4] + 8) = 0u;
  *(&v39[3] + 8) = 0u;
  *(&v39[2] + 8) = 0u;
  v20 = v39[0];
  v26 = *&v39[1];
  v35[0] = v31;
  v35[1] = v15;
  v30 = LOBYTE(v39[2]);
  v34 = v39[2];
  v33[0] = 0xD000000000000015;
  v33[1] = 0x800000021478F240;
  v28 = 0x800000021478F240;
  v29 = *(&v39[1] + 1);
  v33[2] = 0xD00000000000001CLL;
  v33[3] = 0x800000021478A360;

  v27 = v20;
  if ((v20)(v35, &v34, v33))
  {

    (*(v12 + 8))(v9, v5);

    *&v39[0] = v27;
    *(&v39[0] + 1) = *(&v20 + 1);
    *&v39[1] = v31;
    *(&v39[1] + 1) = v15;
    LOBYTE(v39[2]) = v30;
    memcpy(v33, v38, sizeof(v33));
    v21 = v25;
    sub_213FB2DF4(v25, &qword_27C905500, &qword_2146F2BE0);
    memcpy(v21, v33, 0x1B8uLL);
    memcpy(v32, v39, 0x1E0uLL);
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  sub_214031C4C();
  swift_allocError();
  v22 = v28;
  *v23 = 0xD000000000000015;
  v23[1] = v22;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v38, &qword_27C905500, &qword_2146F2BE0);
  (*(v12 + 8))(v9, v5);

  *&v39[0] = v27;
  *(&v39[0] + 1) = *(&v20 + 1);
  *&v39[1] = v26;
  *(&v39[1] + 1) = v29;
  LOBYTE(v39[2]) = v30;
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_2142FAECC(v39);
}

__n128 AvatarRecipe.init(with:recipe:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 40) = *a2;
  v6 = *(a2 + 32);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 56) = v5;
  *(a3 + 72) = v6;
  return result;
}

unint64_t sub_2141824B0()
{
  if (*v0)
  {
    result = 0x657069636572;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_2141824EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x8000000214795380 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x657069636572 && a2 == 0xE600000000000000)
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

uint64_t sub_2141825D0(uint64_t a1)
{
  v2 = sub_2142FAF74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21418260C(uint64_t a1)
{
  v2 = sub_2142FAF74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvatarRecipe.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908170, &qword_2146F4F40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FAF74();
  sub_2146DAA08();
  if (!v2)
  {
    v26 = 0;
    sub_2142FAFC8();
    sub_2146DA1C8();
    v20 = *(&v22 + 1);
    v11 = v22;
    v21 = v23;
    v12 = v24;
    v26 = 1;
    sub_2142FB01C();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v13 = v24;
    v25 = v12;
    v14 = v20;
    v15 = v21;
    *a2 = v11;
    *(a2 + 8) = v14;
    v16 = *(&v21 + 1);
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
    *(a2 + 32) = v12;
    v17 = v23;
    *(a2 + 40) = v22;
    *(a2 + 56) = v17;
    *(a2 + 72) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AvatarRecipe.encode(to:)(void *a1)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908190, &qword_2146F4F48);
  v25 = *(v23 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  v5 = &v17 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v20 = *(v1 + 48);
  v21 = v11;
  v12 = *(v1 + 56);
  v18 = *(v1 + 64);
  v19 = v12;
  v32 = *(v1 + 72);
  HIDWORD(v17) = *(v1 + 73);
  v13 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2142FB07C(v6, v7, v8, v9, v10);
  sub_2142FAF74();
  v14 = v23;
  sub_2146DAA28();
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v33 = 0;
  sub_2142FB088();
  v15 = v24;
  sub_2146DA388();
  sub_2142FB070(v26, v27, v28, v29, v30);
  if (!v15)
  {
    v26 = v21;
    v27 = v20;
    v28 = v19;
    v29 = v18;
    v30 = v32;
    v31 = BYTE4(v17);
    v33 = 1;
    sub_2142FB0DC(v21, v20, v19, v18, v32, SBYTE4(v17));
    sub_2142FB13C();
    sub_2146DA388();
    sub_2142FB190(v26, v27, v28, v29, v30, v31);
  }

  return (*(v25 + 8))(v5, v14);
}

uint64_t sub_214182AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _OWORD *a10)
{
  *&v61 = a2;
  *(&v61 + 1) = a3;
  sub_213FB2E54(a1, a9, &qword_27C9055E0, &unk_2146F4F50);
  v14 = type metadata accessor for Wallpaper(0);
  v58 = a4;
  sub_213FB2E54(a4, a9 + v14[6], &qword_27C9081A8, &unk_21474BF20);
  v57 = a7;
  sub_213FB2E54(a7, a9 + v14[8], &qword_27C9081A8, &unk_21474BF20);
  sub_21448455C(&v66);
  v15 = v67;
  v16 = v68;
  LOBYTE(a4) = v69;
  sub_214484590(v64);
  v17 = v65;
  v18 = a9 + v14[5];
  *v18 = v66;
  *(v18 + 16) = v15;
  *(v18 + 24) = v16;
  *(v18 + 32) = a4;
  v19 = a9 + v14[7];
  v20 = v64[1];
  *v19 = v64[0];
  *(v19 + 16) = v20;
  *(v19 + 32) = v17;
  *(a9 + v14[9]) = a8;
  v54 = a9;
  v21 = (a9 + v14[10]);
  v22 = a10[1];
  *v21 = *a10;
  v21[1] = v22;
  v23 = a10[5];
  v21[4] = a10[4];
  v21[5] = v23;
  v24 = a10[3];
  v21[2] = a10[2];
  v21[3] = v24;
  *(v21 + 137) = *(a10 + 137);
  v25 = a10[8];
  v21[7] = a10[7];
  v21[8] = v25;
  v21[6] = a10[6];
  v27 = *v18;
  v26 = *(v18 + 8);
  v28 = *(v18 + 16);
  v29 = *(v18 + 24);
  LODWORD(v21) = *(v18 + 32);
  v64[0] = v61;
  v70 = v21;
  v71 = v21;
  *&v66 = 0xD000000000000019;
  *(&v66 + 1) = 0x800000021478F260;
  v67 = 0xD00000000000001CLL;
  v68 = 0x800000021478A360;

  v55 = v29;
  sub_213FDC9D0(v28, v29);
  v30 = v27(v64, &v71, &v66);
  if (v56)
  {

LABEL_6:

    sub_213FB2DF4(v57, &qword_27C9081A8, &unk_21474BF20);
    sub_213FB2DF4(v58, &qword_27C9081A8, &unk_21474BF20);
    sub_213FB2DF4(a1, &qword_27C9055E0, &unk_2146F4F50);
    v42 = *(v18 + 8);
    v43 = *(v18 + 16);
    v44 = *(v18 + 24);

    sub_213FDC6D0(v43, v44);
    *v18 = v27;
    *(v18 + 8) = v26;
    *(v18 + 16) = v28;
    *(v18 + 24) = v55;
    *(v18 + 32) = v70;
    return sub_21432887C(v54, type metadata accessor for Wallpaper);
  }

  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD000000000000019;
    v41[1] = 0x800000021478F260;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v28, v29);

  v31 = *(v18 + 8);
  v32 = *(v18 + 16);
  v33 = *(v18 + 24);

  sub_213FDC6D0(v32, v33);
  *v18 = v27;
  *(v18 + 8) = v26;
  *(v18 + 16) = v61;
  *(v18 + 32) = v70;
  v34 = v19;
  v36 = *v19;
  v35 = *(v19 + 8);
  v37 = *(v19 + 16);
  v38 = *(v19 + 24);
  v39 = *(v34 + 32);
  *&v64[0] = a5;
  *(&v64[0] + 1) = a6;
  v62 = v39;
  v71 = v39;
  *&v66 = 0xD000000000000018;
  *(&v66 + 1) = 0x800000021478F280;
  v67 = 0xD00000000000001CLL;
  v68 = 0x800000021478A360;

  sub_213FDC9D0(v37, v38);
  v63 = v36;
  v40 = v36(v64, &v71, &v66);
  if ((v40 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v49 = 0xD000000000000018;
    v49[1] = 0x800000021478F280;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v57, &qword_27C9081A8, &unk_21474BF20);
    sub_213FB2DF4(v58, &qword_27C9081A8, &unk_21474BF20);
    sub_213FB2DF4(a1, &qword_27C9055E0, &unk_2146F4F50);
    v50 = *(v34 + 8);
    v51 = *(v34 + 16);
    v52 = *(v34 + 24);

    sub_213FDC6D0(v51, v52);
    *v34 = v36;
    *(v34 + 8) = v35;
    *(v34 + 16) = v37;
    *(v34 + 24) = v38;
    *(v34 + 32) = v62;
    return sub_21432887C(v54, type metadata accessor for Wallpaper);
  }

  sub_213FDC6D0(v37, v38);

  sub_213FB2DF4(v57, &qword_27C9081A8, &unk_21474BF20);
  sub_213FB2DF4(v58, &qword_27C9081A8, &unk_21474BF20);
  sub_213FB2DF4(a1, &qword_27C9055E0, &unk_2146F4F50);
  v46 = *(v34 + 8);
  v47 = *(v34 + 16);
  v48 = *(v34 + 24);

  result = sub_213FDC6D0(v47, v48);
  *v34 = v63;
  *(v34 + 8) = v35;
  *(v34 + 16) = a5;
  *(v34 + 24) = a6;
  *(v34 + 32) = v62;
  return result;
}

uint64_t sub_214182FFC()
{
  v1 = *v0;
  v2 = 0x7241726574736F70;
  v3 = 0x6E6F6973726576;
  if (v1 != 5)
  {
    v3 = 0x617461646174656DLL;
  }

  v4 = 0x6946736552776F6CLL;
  if (v1 != 3)
  {
    v4 = 0x6D49736552776F6CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x4673655268676968;
  if (v1 != 1)
  {
    v5 = 0x4973655268676968;
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

uint64_t sub_21418310C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436D270(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214183134(uint64_t a1)
{
  v2 = sub_2142FB1E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214183170(uint64_t a1)
{
  v2 = sub_2142FB1E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141831AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  v3 = *(*(v90 - 1) + 64);
  MEMORY[0x28223BE20](v90);
  v5 = &v76 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9081B0, &qword_2146F4F60);
  v91 = *(v6 - 8);
  v7 = *(v91 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v76 - v8;
  v10 = type metadata accessor for Wallpaper(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v14 = a1[4];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142FB1E0();
  v16 = v121;
  sub_2146DAA08();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v92);
  }

  v88 = v10;
  v121 = v13;
  LOBYTE(v120[0]) = 0;
  sub_2142FB234();
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v119[0]) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v90 = v5;
  v87 = v120[0];
  v18 = v120[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9081A8, &unk_21474BF20);
  LOBYTE(v119[0]) = 2;
  v19 = v9;
  v20 = sub_2142FB2E8();
  sub_2146DA1C8();
  v85 = v20;
  v86 = v18;
  LOBYTE(v110) = 3;
  sub_2146DA1C8();
  v21 = v19;
  v22 = v119[0];
  v23 = v119[1];
  LOBYTE(v110) = 4;
  sub_2146DA1C8();
  LOBYTE(v110) = 5;
  v24 = sub_2146DA1A8();
  v25 = v90;
  v85 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9081D8, &qword_2146F4F68);
  v109 = 6;
  sub_2142FB3C0();
  sub_2146DA1C8();
  v83 = v6;
  v84 = v23;
  v106 = v116;
  v107 = v117;
  *v108 = v118[0];
  *&v108[9] = *(v118 + 9);
  v102 = v112;
  v103 = v113;
  v104 = v114;
  v105 = v115;
  v100 = v110;
  v101 = v111;
  v26 = v25;
  v27 = v121;
  sub_213FB2E54(v26, v121, &qword_27C9055E0, &unk_2146F4F50);
  v28 = v88;
  sub_213FB2E54(v120, v27 + *(v88 + 24), &qword_27C9081A8, &unk_21474BF20);
  sub_213FB2E54(v119, v27 + v28[8], &qword_27C9081A8, &unk_21474BF20);
  sub_21448455C(&v96);
  v29 = v97;
  v82 = v98;
  LODWORD(v81) = v99;
  sub_214484590(v94);
  v30 = v95;
  v31 = v27 + v28[5];
  *v31 = v96;
  v32 = v82;
  *(v31 + 16) = v29;
  *(v31 + 24) = v32;
  *(v31 + 32) = v81;
  v33 = v27 + v28[7];
  v34 = v94[1];
  *v33 = v94[0];
  *(v33 + 16) = v34;
  v77 = v33;
  *(v33 + 32) = v30;
  *(v27 + v28[9]) = v85;
  v35 = (v27 + v28[10]);
  v36 = v101;
  *v35 = v100;
  v35[1] = v36;
  v37 = v105;
  v35[4] = v104;
  v35[5] = v37;
  v38 = v103;
  v35[2] = v102;
  v35[3] = v38;
  *(v35 + 137) = *&v108[9];
  v39 = *v108;
  v35[7] = v107;
  v35[8] = v39;
  v35[6] = v106;
  v41 = *v31;
  v40 = *(v31 + 8);
  v42 = *(v31 + 16);
  v43 = *(v31 + 24);
  LODWORD(v33) = *(v31 + 32);
  v44 = v86;
  *&v94[0] = v87;
  *(&v94[0] + 1) = v86;
  LODWORD(v82) = v33;
  v93 = v33;
  v76 = 0xD000000000000019;
  *&v96 = 0xD000000000000019;
  *(&v96 + 1) = 0x800000021478F260;
  v78 = 0x800000021478F260;
  v97 = 0xD00000000000001CLL;
  v98 = 0x800000021478A360;
  v88 = 0x800000021478A360;

  v80 = v43;
  v81 = v42;
  sub_213FDC9D0(v42, v43);
  v79 = v40;
  v85 = v41;
  v45 = v41(v94, &v93, &v96);
  v46 = v78;
  v47 = v44;
  if (v45)
  {
    v76 = v21;
    sub_213FDC6D0(v81, v80);
    v48 = v88;

    v49 = *(v31 + 8);
    v50 = *(v31 + 16);
    v51 = *(v31 + 24);

    sub_213FDC6D0(v50, v51);
    v52 = v79;
    *v31 = v85;
    *(v31 + 8) = v52;
    *(v31 + 16) = v87;
    *(v31 + 24) = v47;
    *(v31 + 32) = v82;
    v54 = *v77;
    v53 = *(v77 + 8);
    v56 = *(v77 + 16);
    v55 = *(v77 + 24);
    v57 = *(v77 + 32);
    v82 = v22;
    *&v94[0] = v22;
    *(&v94[0] + 1) = v84;
    LODWORD(v86) = v57;
    v93 = v57;
    *&v96 = 0xD000000000000018;
    *(&v96 + 1) = 0x800000021478F280;
    v97 = 0xD00000000000001CLL;
    v98 = v48;

    v85 = v55;
    sub_213FDC9D0(v56, v55);
    v87 = v54;
    if (v54(v94, &v93, &v96))
    {
      sub_213FDC6D0(v56, v85);

      sub_213FB2DF4(v119, &qword_27C9081A8, &unk_21474BF20);
      sub_213FB2DF4(v120, &qword_27C9081A8, &unk_21474BF20);
      sub_213FB2DF4(v90, &qword_27C9055E0, &unk_2146F4F50);
      (*(v91 + 8))(v76, v83);
      v64 = v77;
      v65 = *(v77 + 8);
      v66 = *(v77 + 16);
      v67 = *(v77 + 24);

      sub_213FDC6D0(v66, v67);
      *v64 = v87;
      *(v64 + 8) = v53;
      v68 = v84;
      *(v64 + 16) = v82;
      *(v64 + 24) = v68;
      *(v64 + 32) = v86;
      sub_214328704(v121, v89, type metadata accessor for Wallpaper);
      return __swift_destroy_boxed_opaque_existential_1(v92);
    }

    sub_214031C4C();
    swift_allocError();
    *v69 = 0xD000000000000018;
    v69[1] = 0x800000021478F280;
    v70 = v88;
    v69[2] = 0xD00000000000001CLL;
    v69[3] = v70;
    swift_willThrow();

    sub_213FB2DF4(v119, &qword_27C9081A8, &unk_21474BF20);
    sub_213FB2DF4(v120, &qword_27C9081A8, &unk_21474BF20);
    sub_213FB2DF4(v90, &qword_27C9055E0, &unk_2146F4F50);
    (*(v91 + 8))(v76, v83);
    v71 = v77;
    v72 = *(v77 + 8);
    v73 = *(v77 + 16);
    v74 = *(v77 + 24);

    sub_213FDC6D0(v73, v74);
    *v71 = v87;
    *(v71 + 8) = v53;
    v75 = v85;
    *(v71 + 16) = v56;
    *(v71 + 24) = v75;
    *(v71 + 32) = v86;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v58 = v76;
    v58[1] = v46;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = v88;
    swift_willThrow();

    sub_213FB2DF4(v119, &qword_27C9081A8, &unk_21474BF20);
    sub_213FB2DF4(v120, &qword_27C9081A8, &unk_21474BF20);
    sub_213FB2DF4(v90, &qword_27C9055E0, &unk_2146F4F50);
    (*(v91 + 8))(v21, v83);
    v59 = *(v31 + 8);
    v60 = *(v31 + 16);
    v61 = *(v31 + 24);

    sub_213FDC6D0(v60, v61);
    v62 = v79;
    *v31 = v85;
    *(v31 + 8) = v62;
    v63 = v80;
    *(v31 + 16) = v81;
    *(v31 + 24) = v63;
    *(v31 + 32) = v82;
  }

  __swift_destroy_boxed_opaque_existential_1(v92);
  return sub_21432887C(v121, type metadata accessor for Wallpaper);
}

uint64_t sub_214183C70(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9081F0, &qword_2146F4F70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FB1E0();
  sub_2146DAA28();
  LOBYTE(v45[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  sub_2142FB498();
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v54 = type metadata accessor for Wallpaper(0);
  v11 = v3 + v54[5];
  v12 = *(v11 + 24);
  if (v12 == 1)
  {
    goto LABEL_6;
  }

  *&v45[0] = *(v11 + 16);
  *(&v45[0] + 1) = v12;
  LOBYTE(v36) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  v31[2] = v13;
  v32 = v54[6];
  LOBYTE(v45[0]) = 2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9081A8, &unk_21474BF20);
  v15 = sub_2142FB54C();
  v32 = v14;
  sub_2146DA388();
  v31[1] = v15;
  v16 = v3 + v54[7];
  v17 = *(v16 + 24);
  if (v17 == 1)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *&v45[0] = *(v16 + 16);
    *(&v45[0] + 1) = v17;
    LOBYTE(v36) = 3;
    sub_2146DA388();
    v18 = v54;
    v19 = v54[8];
    LOBYTE(v45[0]) = 4;
    sub_2146DA388();
    v20 = *(v3 + v18[9]);
    v53 = 5;
    sub_2146DA368();
    v21 = (v3 + v18[10]);
    v22 = v21[7];
    v23 = v21[5];
    v50 = v21[6];
    v51 = v22;
    v24 = v21[7];
    *v52 = v21[8];
    *&v52[9] = *(v21 + 137);
    v25 = v21[3];
    v26 = v21[1];
    v46 = v21[2];
    v47 = v25;
    v27 = v21[3];
    v28 = v21[5];
    v48 = v21[4];
    v49 = v28;
    v29 = v21[1];
    v45[0] = *v21;
    v45[1] = v29;
    v42 = v50;
    v43 = v24;
    v44[0] = v21[8];
    *(v44 + 9) = *(v21 + 137);
    v38 = v46;
    v39 = v27;
    v40 = v48;
    v41 = v23;
    v36 = v45[0];
    v37 = v26;
    v35 = 6;
    sub_213FB2E54(v45, v33, &qword_27C9081D8, &qword_2146F4F68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9081D8, &qword_2146F4F68);
    sub_2142FB624();
    sub_2146DA388();
    v33[6] = v42;
    v33[7] = v43;
    *v34 = v44[0];
    *&v34[9] = *(v44 + 9);
    v33[2] = v38;
    v33[3] = v39;
    v33[4] = v40;
    v33[5] = v41;
    v33[0] = v36;
    v33[1] = v37;
    sub_213FB2DF4(v33, &qword_27C9081D8, &qword_2146F4F68);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

double sub_214184128@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18)
{
  v147 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  v22[2] = sub_214059904;
  v22[3] = 0;
  v22[4] = 16;
  *(v21 + 16) = sub_21438F678;
  *(v21 + 24) = v22;
  *(v20 + 32) = v21;
  sub_214042B80(v20, &v84);
  v23 = v84;
  v24 = v86;
  v45 = v85;
  v25 = v87;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  v28[2] = sub_214059904;
  v28[3] = 0;
  v28[4] = 16;
  v28[5] = sub_21403C354;
  v28[6] = 0;
  *(v27 + 16) = sub_21438F670;
  *(v27 + 24) = v28;
  *(v26 + 32) = v27;
  sub_214042CD0(v26, &v134);
  v83 = v134;
  v47 = v135;
  v29 = v136;
  v80 = v137;
  v81 = v138;
  sub_2145E5EF4(v132);
  v79 = v132[0];
  v52 = v132[2];
  v49 = v132[1];
  v50 = v132[3];
  v77 = v133;
  sub_2145E6064(v130);
  v74 = v130[0];
  v71 = v130[2];
  v54 = v130[1];
  v56 = v130[3];
  v72 = v131;
  sub_2145E61D4(v128);
  v67 = v128[0];
  v68 = v128[2];
  v58 = v128[1];
  v59 = v128[3];
  v69 = v129;
  sub_2145E6344(&v124);
  v66 = v124;
  v60 = v125;
  v61 = v126;
  v65 = v127;
  v139 = a7 & 1;
  v134 = a1;
  v135 = v147;
  LOBYTE(v132[0]) = v25;
  *&v84 = 0xD00000000000001DLL;
  *(&v84 + 1) = 0x800000021478F2A0;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;

  v30 = (v23)(&v134, v132, &v84);
  if (!v46)
  {
    if (v30)
    {

      *&v84 = v83;
      *(&v84 + 1) = v47;
      v85 = v29;
      v86 = v80;
      v87 = v81;

      sub_213FDCA18(v29, v80);
      sub_214032024(a3, a4, 2, 0xD000000000000021, 0x800000021478F2C0, 0xD00000000000001CLL, 0x800000021478A360);

      v32 = v84;
      v42 = v85;
      v43 = v86;
      v82 = v87;

      sub_213FDC6BC(v29, v80);
      *&v84 = v79;
      *(&v84 + 1) = v49;
      v85 = v52;
      v86 = v50;
      v87 = v77;

      sub_21404F7E0(v52, v50);
      sub_214032118(a11, a12, 2, 0xD000000000000020, 0x800000021478F2F0, 0xD00000000000001CLL, 0x800000021478A360);

      v33 = v84;
      v41 = v85;
      v48 = v86;
      v78 = v87;

      sub_214032564(v52, v50);
      *&v84 = v74;
      *(&v84 + 1) = v54;
      v85 = v71;
      v86 = v56;
      v87 = v72;

      sub_21404F7E0(v71, v56);
      sub_214032118(a13, a14, 2, 0xD000000000000026, 0x800000021478F320, 0xD00000000000001CLL, 0x800000021478A360);

      v34 = v84;
      v51 = v85;
      v53 = v86;
      v73 = v87;

      sub_214032564(v71, v56);
      *&v84 = v67;
      *(&v84 + 1) = v58;
      v85 = v68;
      v86 = v59;
      v87 = v69;

      sub_21404F7E0(v68, v59);
      sub_214032118(a15, a16, 2, 0xD000000000000028, 0x800000021478F350, 0xD00000000000001CLL, 0x800000021478A360);

      v35 = v84;
      v55 = v85;
      v57 = v86;
      v70 = v87;

      sub_214032564(v68, v59);
      v84 = v66;
      v85 = v60;
      v86 = v61;
      v87 = v65;

      sub_21404F7E0(v60, v61);
      sub_214032118(a17, a18, 2, 0xD000000000000027, 0x800000021478F380, 0xD00000000000001CLL, 0x800000021478A360);
      sub_213FDC6BC(a17, a18);
      sub_213FDC6BC(a15, a16);
      sub_213FDC6BC(a13, a14);
      sub_213FDC6BC(a11, a12);
      sub_213FB54FC(a3, a4);

      v36 = v85;
      v37 = v86;
      v38 = v87;

      sub_214032564(v60, v61);
      *a9 = v23;
      v39 = v147;
      *(a9 + 16) = a1;
      *(a9 + 24) = v39;
      *(a9 + 32) = v25;
      *(a9 + 33) = v146[0];
      *(a9 + 36) = *(v146 + 3);
      *(a9 + 40) = v32;
      *(a9 + 56) = v42;
      *(a9 + 64) = v43;
      *(a9 + 72) = v82;
      *(a9 + 73) = a5 & 1;
      *(a9 + 74) = v144;
      *(a9 + 78) = v145;
      *(a9 + 80) = a6;
      *(a9 + 88) = a7 & 1;
      *(a9 + 89) = v143[0];
      *(a9 + 92) = *(v143 + 3);
      *(a9 + 96) = a8;
      *(a9 + 104) = a10;
      *(a9 + 112) = v33;
      *(a9 + 128) = v41;
      *(a9 + 136) = v48;
      *(a9 + 144) = v78;
      *(a9 + 145) = *v142;
      *(a9 + 148) = *&v142[3];
      *(a9 + 152) = v34;
      *(a9 + 168) = v51;
      *(a9 + 176) = v53;
      *(a9 + 184) = v73;
      *(a9 + 188) = *&v141[3];
      *(a9 + 185) = *v141;
      *(a9 + 192) = v35;
      *(a9 + 208) = v55;
      *(a9 + 216) = v57;
      *(a9 + 224) = v70;
      *(a9 + 228) = *&v140[3];
      *(a9 + 225) = *v140;
      result = *&v84;
      *(a9 + 232) = v84;
      *(a9 + 248) = v36;
      *(a9 + 256) = v37;
      *(a9 + 264) = v38;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD00000000000001DLL;
    v31[1] = 0x800000021478F2A0;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6BC(a17, a18);
  sub_213FDC6BC(a15, a16);
  sub_213FDC6BC(a13, a14);
  sub_213FDC6BC(a11, a12);
  sub_213FB54FC(a3, a4);

  v84 = v23;
  v85 = v45;
  v86 = v24;
  v87 = v25;
  *v88 = v146[0];
  *&v88[3] = *(v146 + 3);
  v89 = v83;
  v90 = v47;
  v91 = v29;
  v92 = v80;
  v93 = v81;
  v94 = a5 & 1;
  v95 = v144;
  v96 = v145;
  v97 = a6;
  v98 = a7 & 1;
  *&v99[3] = *(v143 + 3);
  *v99 = v143[0];
  v100 = a8;
  v101 = a10;
  v102 = v79;
  v103 = v49;
  v104 = v52;
  v105 = v50;
  v106 = v77;
  *v107 = *v142;
  *&v107[3] = *&v142[3];
  v108 = v74;
  v109 = v54;
  v110 = v71;
  v111 = v56;
  v112 = v72;
  *&v113[3] = *&v141[3];
  *v113 = *v141;
  v114 = v67;
  v115 = v58;
  v116 = v68;
  v117 = v59;
  v118 = v69;
  *&v119[3] = *&v140[3];
  *v119 = *v140;
  v120 = v66;
  v121 = v60;
  v122 = v61;
  v123 = v65;
  sub_2142FB6FC(&v84);
  return result;
}

unint64_t sub_214184FA4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x654B64726F636572;
    v6 = 0xD000000000000015;
    if (a1 != 2)
    {
      v6 = 0xD000000000000012;
    }

    if (a1)
    {
      v5 = 0x6974707972636564;
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
    v1 = 0xD000000000000012;
    v2 = 0xD000000000000014;
    if (a1 != 7)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x546567617373656DLL;
    if (a1 != 4)
    {
      v3 = 0x657061706C6C6177;
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

uint64_t sub_2141850F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436D4D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214185120(uint64_t a1)
{
  v2 = sub_2142FB750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21418515C(uint64_t a1)
{
  v2 = sub_2142FB750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214185198@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908220, &qword_2146F4F78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v170 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142FB750();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v170);
  }

  v103 = a2;
  v104 = v6;
  LOBYTE(v106) = 0;
  v12 = sub_2146DA168();
  v14 = v13;
  v102 = v12;
  LOBYTE(v105[0]) = 1;
  sub_21406116C();
  sub_2146DA1C8();
  v15 = v106;
  LOBYTE(v106) = 2;
  v16 = sub_2146DA178();
  v100 = *(&v15 + 1);
  v101 = v15;
  LODWORD(v99) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v105[0]) = 3;
  sub_2142E11FC();
  sub_2146DA1C8();
  v17 = v106;
  v98 = BYTE8(v106);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v105[0]) = 4;
  sub_2142E12FC();
  sub_2146DA1C8();
  v94 = v106;
  v95 = v17;
  v97 = *(&v106 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v105[0]) = 5;
  v96 = sub_2142E1278();
  sub_2146DA1C8();
  v19 = *(&v106 + 1);
  v93 = v106;
  LOBYTE(v105[0]) = 6;
  sub_2146DA1C8();
  v92 = v19;
  v91 = *(&v106 + 1);
  v20 = v106;
  LOBYTE(v105[0]) = 7;
  sub_2146DA1C8();
  v89 = v106;
  v90 = v20;
  v160 = 8;
  sub_2146DA1C8();
  v63 = v9;
  v64 = v5;
  v66 = v161;
  v67 = v162;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v21 = swift_allocObject();
  v88 = xmmword_2146E9BF0;
  *(v21 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  v23[2] = sub_214059904;
  v23[3] = 0;
  v23[4] = 16;
  *(v22 + 16) = sub_21438F678;
  *(v22 + 24) = v23;
  *(v21 + 32) = v22;
  sub_214042B80(v21, &v106);
  v24 = *(&v106 + 1);
  v96 = v106;
  v60 = v107;
  v25 = v108;
  v26 = v109;
  v27 = swift_allocObject();
  *(v27 + 16) = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  v29[2] = sub_214059904;
  v29[3] = 0;
  v29[4] = 16;
  v29[5] = sub_21403C354;
  v29[6] = 0;
  *(v28 + 16) = sub_21438F670;
  *(v28 + 24) = v29;
  *(v27 + 32) = v28;
  sub_214042CD0(v27, v105);
  v84 = v105[0];
  v87 = v105[1];
  *&v88 = v105[2];
  v86 = v105[3];
  v85 = LOBYTE(v105[4]);
  sub_2145E5EF4(&v155);
  v81 = v155;
  v82 = v157;
  v83 = v156;
  v80 = v158;
  sub_2145E6064(&v151);
  v77 = v151;
  v78 = v153;
  v79 = v152;
  v76 = v154;
  sub_2145E61D4(&v147);
  v73 = v147;
  v74 = v149;
  v75 = v148;
  v72 = v150;
  sub_2145E6344(&v143);
  v69 = v143;
  v70 = v144;
  v71 = v145;
  v68 = v146;
  v65 = v99 & 1;
  v159 = v98;
  v105[0] = v102;
  v61 = v14;
  v105[1] = v14;
  v62 = v26;
  LOBYTE(v155) = v26;
  *&v106 = 0xD00000000000001DLL;
  *(&v106 + 1) = 0x800000021478F2A0;
  v107 = 0xD00000000000001CLL;
  v108 = 0x800000021478A360;

  v99 = v24;
  if (v96(v105, &v155, &v106))
  {

    *&v106 = v84;
    v30 = v88;
    *(&v106 + 1) = v87;
    v107 = v88;
    v31 = v86;
    v108 = v86;
    v109 = v85;

    sub_213FDCA18(v30, v31);
    sub_214032024(v101, v100, 2, 0xD000000000000021, 0x800000021478F2C0, 0xD00000000000001CLL, 0x800000021478A360);

    v33 = *(&v106 + 1);
    v84 = v106;
    v59 = v107;
    v60 = v108;
    v85 = v109;

    sub_213FDC6BC(v88, v86);
    v106 = v81;
    v34 = v82;
    v35 = v83;
    v107 = v83;
    v108 = v82;
    v109 = v80;

    sub_21404F7E0(v35, v34);
    sub_214032118(v93, v92, 2, 0xD000000000000020, 0x800000021478F2F0, 0xD00000000000001CLL, 0x800000021478A360);

    v56 = *(&v106 + 1);
    *&v81 = v106;
    v57 = v107;
    v58 = v108;
    v80 = v109;

    sub_214032564(v83, v82);
    v106 = v77;
    v36 = v78;
    v37 = v79;
    v107 = v79;
    v108 = v78;
    v109 = v76;

    sub_21404F7E0(v37, v36);
    sub_214032118(v90, v91, 2, 0xD000000000000026, 0x800000021478F320, 0xD00000000000001CLL, 0x800000021478A360);

    v53 = *(&v106 + 1);
    *&v77 = v106;
    v54 = v107;
    v55 = v108;
    v76 = v109;

    sub_214032564(v79, v78);
    v106 = v73;
    v38 = v74;
    v39 = v75;
    v107 = v75;
    v108 = v74;
    v109 = v72;

    sub_21404F7E0(v39, v38);
    sub_214032118(v89, *(&v89 + 1), 2, 0xD000000000000028, 0x800000021478F350, 0xD00000000000001CLL, 0x800000021478A360);

    v50 = *(&v106 + 1);
    *&v73 = v106;
    v51 = v107;
    v52 = v108;
    v72 = v109;

    sub_214032564(v75, v74);
    v155 = v69;
    v40 = v70;
    v41 = v71;
    v156 = v70;
    v157 = v71;
    v158 = v68;

    sub_21404F7E0(v40, v41);
    sub_214032118(v66, v67, 2, 0xD000000000000027, 0x800000021478F380, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v89, *(&v89 + 1));
    sub_213FDC6BC(v90, v91);
    sub_213FDC6BC(v93, v92);
    sub_213FB54FC(v101, v100);
    sub_213FDC6BC(v66, v67);
    (*(v104 + 8))(v63, v64);
    v104 = *(&v155 + 1);
    v92 = v155;
    v100 = v157;
    v101 = v156;
    LODWORD(v93) = v158;

    sub_214032564(v70, v71);
    *(&v105[18] + 1) = *v165;
    HIDWORD(v105[23]) = *&v164[3];
    *(&v105[23] + 1) = *v164;
    HIDWORD(v105[28]) = *&v163[3];
    *(&v105[28] + 1) = *v163;
    *(&v105[4] + 1) = v169[0];
    HIDWORD(v105[4]) = *(v169 + 3);
    *(&v105[9] + 2) = v167;
    HIWORD(v105[9]) = v168;
    *(&v105[11] + 1) = *v166;
    HIDWORD(v105[11]) = *&v166[3];
    HIDWORD(v105[18]) = *&v165[3];
    v105[0] = v96;
    v105[1] = v99;
    v42 = v102;
    v105[2] = v102;
    v43 = v61;
    v105[3] = v61;
    v44 = v62;
    LOBYTE(v105[4]) = v62;
    v105[5] = v84;
    v45 = v33;
    v105[6] = v33;
    v46 = v59;
    v105[7] = v59;
    v105[8] = v60;
    LOBYTE(v105[9]) = v85;
    BYTE1(v105[9]) = v65;
    v105[10] = v95;
    LOBYTE(v105[11]) = v98;
    v105[12] = v94;
    v105[13] = v97;
    v105[14] = v81;
    v105[15] = v56;
    v105[16] = v57;
    v105[17] = v58;
    LOBYTE(v105[18]) = v80;
    v105[19] = v77;
    v105[20] = v53;
    v105[21] = v54;
    v105[22] = v55;
    LOBYTE(v105[23]) = v76;
    v105[24] = v73;
    v105[25] = v50;
    v105[26] = v51;
    v105[27] = v52;
    LOBYTE(v105[28]) = v72;
    v47 = v92;
    v105[29] = v92;
    v105[30] = v104;
    v105[31] = v101;
    v105[32] = v100;
    LOBYTE(v105[33]) = v93;
    memcpy(v103, v105, 0x109uLL);
    sub_2142FB7A4(v105, &v106);
    __swift_destroy_boxed_opaque_existential_1(v170);
    *&v106 = v96;
    *(&v106 + 1) = v99;
    v107 = v42;
    v108 = v43;
    v109 = v44;
    v111 = v84;
    v112 = v45;
    *v110 = v169[0];
    *&v110[3] = *(v169 + 3);
    v113 = v46;
    v114 = v60;
    v115 = v85;
    v116 = v65;
    v117 = v167;
    v118 = v168;
    v119 = v95;
    v120 = v98;
    *v121 = *v166;
    *&v121[3] = *&v166[3];
    v122 = v94;
    v123 = v97;
    *&v124 = v81;
    *(&v124 + 1) = v56;
    v125 = v57;
    v126 = v58;
    v127 = v80;
    *v128 = *v165;
    *&v128[3] = *&v165[3];
    *&v129 = v77;
    *(&v129 + 1) = v53;
    v130 = v54;
    v131 = v55;
    v132 = v76;
    *&v133[3] = *&v164[3];
    *v133 = *v164;
    *&v134 = v73;
    *(&v134 + 1) = v50;
    v135 = v51;
    v136 = v52;
    v137 = v72;
    *&v138[3] = *&v163[3];
    *v138 = *v163;
    *&v139 = v47;
    *(&v139 + 1) = v104;
    v140 = v101;
    v141 = v100;
    v48 = v93;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD00000000000001DLL;
    v32[1] = 0x800000021478F2A0;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(v89, *(&v89 + 1));
    sub_213FDC6BC(v90, v91);
    sub_213FDC6BC(v93, v92);
    sub_213FB54FC(v101, v100);
    sub_213FDC6BC(v66, v67);
    (*(v104 + 8))(v63, v64);

    v102 = v60;
    __swift_destroy_boxed_opaque_existential_1(v170);
    *&v106 = v96;
    *(&v106 + 1) = v99;
    v107 = v102;
    v108 = v25;
    v109 = v62;
    *v110 = v169[0];
    *&v110[3] = *(v169 + 3);
    v111 = v84;
    v112 = v87;
    v113 = v88;
    v114 = v86;
    v115 = v85;
    v116 = v65;
    v117 = v167;
    v118 = v168;
    v119 = v95;
    v120 = v98;
    *&v121[3] = *&v166[3];
    *v121 = *v166;
    v122 = v94;
    v123 = v97;
    v124 = v81;
    v125 = v83;
    v126 = v82;
    v127 = v80;
    *v128 = *v165;
    *&v128[3] = *&v165[3];
    v129 = v77;
    v130 = v79;
    v131 = v78;
    v132 = v76;
    *&v133[3] = *&v164[3];
    *v133 = *v164;
    v134 = v73;
    v135 = v75;
    v136 = v74;
    v137 = v72;
    *&v138[3] = *&v163[3];
    *v138 = *v163;
    v139 = v69;
    v140 = v70;
    v141 = v71;
    v48 = v68;
  }

  v142 = v48;
  return sub_2142FB6FC(&v106);
}

uint64_t sub_2141865B8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908230, &qword_2146F4F80);
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v37 = *(v1 + 73);
  v32 = *(v1 + 80);
  v33 = v8;
  v31 = *(v1 + 88);
  v10 = *(v1 + 96);
  v29 = *(v1 + 104);
  v30 = v10;
  v11 = *(v1 + 128);
  v27 = *(v1 + 136);
  v28 = v11;
  v12 = *(v1 + 168);
  v25 = *(v1 + 176);
  v26 = v12;
  v13 = *(v1 + 208);
  v23 = *(v1 + 216);
  v24 = v13;
  v14 = *(v1 + 248);
  v21 = *(v1 + 256);
  v22 = v14;
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = &v21 - v18;
  __swift_project_boxed_opaque_existential_1(v17, v15);
  sub_2142FB750();
  sub_2146DAA28();
  if (!v6)
  {
    goto LABEL_10;
  }

  LOBYTE(v35) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v34 + 8))(v19, v4);
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v35 = v33;
  v36 = v9;
  v38 = 1;
  sub_21402D9F8(v33, v9);
  sub_214061684();
  sub_2146DA388();
  sub_213FB54FC(v35, v36);
  LOBYTE(v35) = 2;
  sub_2146DA338();
  v35 = v32;
  LOBYTE(v36) = v31;
  v38 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2142E1C30();
  sub_2146DA388();
  v35 = v30;
  v36 = v29;
  v38 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v27 >> 60 == 11)
  {
    goto LABEL_10;
  }

  v35 = v28;
  v36 = v27;
  v38 = 5;
  sub_213FDCA18(v28, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  sub_2142E1CAC();
  sub_2146DA388();
  sub_213FDC6BC(v35, v36);
  if (v25 >> 60 == 11)
  {
    goto LABEL_10;
  }

  v35 = v26;
  v36 = v25;
  v38 = 6;
  sub_213FDCA18(v26, v25);
  sub_2146DA388();
  sub_213FDC6BC(v35, v36);
  if (v23 >> 60 == 11 || (v35 = v24, v36 = v23, v38 = 7, sub_213FDCA18(v24, v23), sub_2146DA388(), sub_213FDC6BC(v35, v36), v21 >> 60 == 11))
  {
LABEL_10:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v35 = v22;
    v36 = v21;
    v38 = 8;
    sub_213FDCA18(v22, v21);
    sub_2146DA388();
    sub_213FDC6BC(v35, v36);
    return (*(v34 + 8))(v19, v4);
  }

  return result;
}

uint64_t sub_214186AB4@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  memcpy(a3, __src, 0x109uLL);
  v5 = type metadata accessor for NicknameInformationMessage();
  return sub_214328704(a2, a3 + *(v5 + 20), type metadata accessor for Metadata);
}

unint64_t sub_214186B24()
{
  if (*v0)
  {
    result = 0x617461646174656DLL;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_214186B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000002147953E0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_214186C4C(uint64_t a1)
{
  v2 = sub_2142FB800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214186C88(uint64_t a1)
{
  v2 = sub_2142FB800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214186CC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908238, &qword_2146F4F88);
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FB800();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v20;
    v14 = v7;
    v23[295] = 0;
    sub_2142FB854();
    v15 = v21;
    sub_2146DA1C8();
    memcpy(v22, v23, sizeof(v22));
    v23[294] = 1;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v15);
    v16 = type metadata accessor for NicknameInformationMessage();
    v17 = v19;
    sub_214328704(v14, v19 + *(v16 + 20), type metadata accessor for Metadata);
    memcpy(v17, v22, 0x109uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214186F6C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908248, &qword_2146F4F90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FB800();
  sub_2146DAA28();
  memcpy(v16, v3, 0x109uLL);
  memcpy(v15, v3, sizeof(v15));
  v16[295] = 0;
  sub_2142FB7A4(v16, v14);
  sub_2142FB8A8();
  sub_2146DA388();
  memcpy(v14, v15, 0x109uLL);
  sub_2142FB6FC(v14);
  if (!v2)
  {
    v11 = *(type metadata accessor for NicknameInformationMessage() + 20);
    v16[294] = 1;
    type metadata accessor for Metadata();
    sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2141871C4(uint64_t a1)
{
  v2 = sub_2142FB8FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214187200(uint64_t a1)
{
  v2 = sub_2142FB8FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21418723C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908250, &qword_2146F4F98);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FB8FC();
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

uint64_t sub_214187448(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908260, &qword_2146F4FA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FB8FC();
  sub_2146DAA28();
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2141875D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908260, &qword_2146F4FA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FB8FC();
  sub_2146DAA28();
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

__n128 sub_214187750@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_21418776C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1970169197 && a2 == 0xE400000000000000)
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

uint64_t sub_2141877F4(uint64_t a1)
{
  v2 = sub_2142FB950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214187830(uint64_t a1)
{
  v2 = sub_2142FB950();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21418786C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908268, &unk_2146F4FA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FB950();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905110, &qword_2146F14D0);
    sub_2142FB9A4();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v14[3];
    a2[2] = v14[2];
    a2[3] = v11;
    a2[4] = v14[4];
    v12 = v14[1];
    *a2 = v14[0];
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214187A00(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908288, &qword_2146F4FB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = v1[3];
  v20 = v1[2];
  v21 = v8;
  v22 = v1[4];
  v9 = v1[1];
  v18 = *v1;
  v19 = v9;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(&v18, &v13, &qword_27C905110, &qword_2146F14D0);
  sub_2142FB950();
  sub_2146DAA28();
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v13 = v18;
  v14 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905110, &qword_2146F14D0);
  sub_2142FBA7C();
  sub_2146DA388();
  v12[2] = v15;
  v12[3] = v16;
  v12[4] = v17;
  v12[1] = v14;
  v12[0] = v13;
  sub_213FB2DF4(v12, &qword_27C905110, &qword_2146F14D0);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_214187C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436D7D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214187C50(uint64_t a1)
{
  v2 = sub_2142FBB54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214187C8C(uint64_t a1)
{
  v2 = sub_2142FBB54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214187CC8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082A0, &unk_2146F4FC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142FBB54();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v77);
  }

  v12 = v6;
  LOBYTE(v61[0]) = 0;
  v54 = sub_2146DA1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v55) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v15 = v61[0];
  v14 = v61[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905138, &qword_2146F14E0);
  v71[48] = 2;
  sub_2142FBBA8();
  sub_2146DA1C8();
  v41 = v15;
  v48 = v14;
  v45 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2146F3C40;
  *(v17 + 16) = sub_21438F468;
  *(v17 + 24) = v18;
  *(inited + 32) = v17;
  sub_21404328C(inited, &v55);
  v19 = *(&v55 + 1);
  v53 = v55;
  v42 = v56;
  LOBYTE(v17) = BYTE8(v56);
  LODWORD(inited) = BYTE9(v56);
  sub_21464CD1C(v61);
  v44 = v61[0];
  v51 = v61[1];
  v52 = v62;
  v50 = v63;
  v49 = v64;
  v76 = v17;
  LOBYTE(v60[0]) = v17;
  *&v55 = v54;
  v43 = inited;
  v71[0] = inited;
  strcpy(v61, "MBDMenu.level");
  HIWORD(v61[1]) = -4864;
  v62 = 0xD00000000000001CLL;
  v63 = 0x800000021478A360;
  v46 = 0x800000021478A360;

  v47 = v19;
  v20 = v53(&v55, v71, v61);
  v21 = v48;
  if (v20)
  {
    v22 = v46;

    v76 = 0;
    v60[0] = v41;
    v60[1] = v21;
    LOBYTE(v55) = v49;
    v61[0] = 0xD000000000000013;
    v61[1] = 0x800000021478C7C0;
    v42 = 0x800000021478C7C0;
    v62 = 0xD00000000000001CLL;
    v63 = v22;

    sub_213FDC9D0(v52, v50);
    v23 = v44;
    v24 = v44(v60, &v55, v61);
    v25 = v23;
    v30 = v42;
    if (v24)
    {
      v31 = v50;
      sub_213FDC6D0(v52, v50);

      (*(v12 + 8))(v9, v5);
      v32 = v51;

      sub_213FDC6D0(v52, v31);
      v33 = v53;
      v34 = v54;
      v35 = v47;
      *&v55 = v53;
      *(&v55 + 1) = v47;
      *&v56 = v54;
      v36 = v76;
      BYTE8(v56) = v76;
      v37 = v43;
      BYTE9(v56) = v43;
      *&v57 = v23;
      *(&v57 + 1) = v32;
      *&v58 = v41;
      *(&v58 + 1) = v48;
      LOBYTE(v59) = v49;
      *(&v59 + 1) = v45;
      v38 = v58;
      a2[2] = v57;
      a2[3] = v38;
      a2[4] = v59;
      v39 = v56;
      *a2 = v55;
      a2[1] = v39;
      sub_2142FBC5C(&v55, v61);
      __swift_destroy_boxed_opaque_existential_1(v77);
      v61[0] = v33;
      v61[1] = v35;
      v62 = v34;
      LOBYTE(v63) = v36;
      BYTE1(v63) = v37;
      *(&v63 + 2) = v74;
      HIWORD(v63) = v75;
      v64 = v44;
      v65 = v32;
      v66 = v41;
      v29 = v48;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000013;
    v40[1] = v30;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = v46;
    swift_willThrow();

    (*(v12 + 8))(v9, v5);

    sub_213FDC6D0(v52, v50);
    v28 = v47;
  }

  else
  {

    sub_214031C4C();
    swift_allocError();
    strcpy(v26, "MBDMenu.level");
    *(v26 + 7) = -4864;
    *(v26 + 2) = 0xD00000000000001CLL;
    *(v26 + 3) = v46;
    swift_willThrow();
    (*(v12 + 8))(v9, v5);
    v27 = v60[0];
    v25 = v44;
    v28 = v47;

    v76 = v27;
    v54 = v42;
  }

  __swift_destroy_boxed_opaque_existential_1(v77);
  v61[0] = v53;
  v61[1] = v28;
  v62 = v54;
  LOBYTE(v63) = v76;
  BYTE1(v63) = v43;
  *(&v63 + 2) = v74;
  HIWORD(v63) = v75;
  v64 = v25;
  v65 = v51;
  v66 = v52;
  v29 = v50;
LABEL_8:
  v67 = v29;
  v68 = v49;
  *v69 = *v73;
  *&v69[3] = *&v73[3];
  v70 = v45;
  return sub_2142E1100(v61);
}

uint64_t sub_214188400(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082C0, &unk_2146F4FD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 48);
  v15 = *(v1 + 56);
  v16 = v10;
  v14 = *(v1 + 72);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FBB54();
  sub_2146DAA28();
  if ((v9 & 1) == 0)
  {
    LOBYTE(v18) = 0;
    v12 = v17;
    sub_2146DA368();
    if (v12)
    {
      return (*(v4 + 8))(v7, v3);
    }

    if (v15 != 1)
    {
      v18 = v16;
      v19 = v15;
      v20 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v18 = v14;
      v20 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905138, &qword_2146F14E0);
      sub_2142FBCB8();
      sub_2146DA388();
      return (*(v4 + 8))(v7, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141886C0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = *a1;
  v10 = a3(0);
  return sub_21408AC04(a2, &a6[*(v10 + 20)], a4, a5);
}

uint64_t sub_214188730()
{
  if (*v0)
  {
    result = 0x746E65746E6F63;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_214188764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_214188840(uint64_t a1)
{
  v2 = sub_2142FBD6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21418887C(uint64_t a1)
{
  v2 = sub_2142FBD6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141888B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082D8, &unk_21476AE70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082E0, &qword_2146F4FE0);
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v20);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FBD6C();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v7;
    v15 = v19;
    v23 = 0;
    sub_2142FBDC0();
    v16 = v20;
    sub_2146DA1C8();
    v21 = v24;
    v22 = 1;
    sub_2142FBE14();
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v16);
    v17 = type metadata accessor for MBDPersistentMenuItem(0);
    sub_21408AC04(v14, &v15[*(v17 + 20)], &qword_27C9082D8, &unk_21476AE70);
    *v15 = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214188B18(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908308, &qword_2146F4FE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FBD6C();
  sub_2146DAA28();
  v13[15] = *v3;
  v13[14] = 0;
  sub_2142FBEC8();
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(type metadata accessor for MBDPersistentMenuItem(0) + 20);
    v13[13] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082D8, &unk_21476AE70);
    sub_2142FBF1C();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_214188D34@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  v8 = a3(0);
  return sub_214328704(a2, &a5[*(v8 + 20)], a4);
}

unint64_t sub_214188D94()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x546567617373656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_214188DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000214795400 == a2)
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

uint64_t sub_214188EC4(uint64_t a1)
{
  v2 = sub_2142FBFD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214188F00(uint64_t a1)
{
  v2 = sub_2142FBFD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214188F3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908328, &qword_2146F4FF0);
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v20);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FBFD0();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v7;
    v15 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908338, &qword_2146F4FF8);
    v23 = 0;
    sub_2142FC024();
    v16 = v20;
    sub_2146DA1C8();
    v21 = v24;
    v22 = 1;
    sub_214328930(&qword_27C908350, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v16);
    v17 = type metadata accessor for PhotosSharedAlbumMessage(0);
    sub_214328704(v14, &v15[*(v17 + 20)], type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
    *v15 = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141891DC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908358, &qword_2146F5000);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FBFD0();
  sub_2146DAA28();
  v13[15] = *v3;
  v13[14] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908338, &qword_2146F4FF8);
  sub_2142FC0FC();
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(type metadata accessor for PhotosSharedAlbumMessage(0) + 20);
    v13[13] = 1;
    type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(0);
    sub_214328930(&qword_27C908370, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_214189430(uint64_t a1)
{
  v2 = sub_2142FC1D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21418946C(uint64_t a1)
{
  v2 = sub_2142FC1D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayedReceipt.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908378, &qword_2146F5008);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FC1D4();
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

uint64_t PlayedReceipt.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908388, &qword_2146F5010);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FC1D4();
  sub_2146DAA28();
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_214189844(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908388, &qword_2146F5010);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FC1D4();
  sub_2146DAA28();
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

void *PhotosPoster.init(with:identifier:media:layerStack:layoutConfiguration:representsDeviceOwner:assetIdentifier:isForPlayground:faceRects:petRects:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, const void *a5@<X4>, __int128 *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  v52 = a1[1];
  v53 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2140676DC;
  *(v17 + 24) = 0;
  *(v16 + 32) = v17;
  sub_214042B80(v16, v75);
  v55 = v75[0];
  v18 = v75[1];
  v46 = v75[2];
  v19 = v75[3];
  v20 = v76;
  sub_2144495C4(v73);
  v50 = v73[0];
  v85 = v73[1];
  v56 = v73[2];
  v57 = v73[3];
  v51 = v74;
  v21 = a4[3];
  *&v77[39] = a4[2];
  *&v77[55] = v21;
  v22 = a4[5];
  *&v77[71] = a4[4];
  *&v77[87] = v22;
  v23 = a4[1];
  *&v77[7] = *a4;
  *&v77[23] = v23;
  v24 = *a6;
  *&v59[22] = a6[1];
  *&v59[6] = v24;
  v25 = a6[4];
  *&v59[86] = a6[5];
  *&v59[70] = v25;
  v26 = a6[2];
  *&v59[54] = a6[3];
  *&v59[38] = v26;
  v27 = a6[8];
  *&v59[150] = a6[9];
  *&v59[134] = v27;
  v28 = a6[6];
  *&v59[118] = a6[7];
  *&v59[102] = v28;
  *&v59[214] = *(a6 + 104);
  v29 = a6[11];
  *&v59[198] = a6[12];
  v30 = a6[10];
  *&v59[182] = v29;
  *&v59[166] = v30;
  v84[4] = *&v77[64];
  v84[5] = *&v77[80];
  *(&v84[5] + 15) = *&v77[95];
  v84[0] = *v77;
  v84[1] = *&v77[16];
  v84[2] = *&v77[32];
  v84[3] = *&v77[48];
  memcpy(&v84[6] + 7, a5, 0x132uLL);
  *(&v84[35] + 9) = *&v59[160];
  *(&v84[36] + 9) = *&v59[176];
  *(&v84[37] + 9) = *&v59[192];
  *(&v84[38] + 9) = *&v59[208];
  *(&v84[31] + 9) = *&v59[96];
  *(&v84[32] + 9) = *&v59[112];
  *(&v84[33] + 9) = *&v59[128];
  *(&v84[34] + 9) = *&v59[144];
  *(&v84[27] + 9) = *&v59[32];
  *(&v84[28] + 9) = *&v59[48];
  *(&v84[29] + 9) = *&v59[64];
  *(&v84[30] + 9) = *&v59[80];
  *(&v84[25] + 9) = *v59;
  *(&v84[26] + 9) = *&v59[16];
  v31 = a2;
  *v77 = a2;
  *&v77[8] = a3;
  __src = v20;
  LOBYTE(v75[0]) = v20;
  *v59 = 0xD000000000000017;
  *&v59[8] = 0x800000021478F3B0;
  *&v59[16] = 0xD00000000000001CLL;
  *&v59[24] = 0x800000021478A360;

  v32 = v18;
  v33 = v55(v77, v75, v59);
  v34 = v55;
  if (v47)
  {

LABEL_6:

    v35 = v32;
    v40 = v19;

    v41 = v46;
    v36 = v51;
    v37 = v50;
LABEL_7:
    v59[0] = v53;
    v59[1] = v52;
    *&v59[2] = v82;
    *&v59[6] = v83;
    *&v59[8] = v34;
    *&v59[16] = v35;
    *&v59[24] = v41;
    *&v59[32] = v40;
    v59[40] = __src;
    memcpy(&v59[41], v84, 0x271uLL);
    v60 = a7;
    v61 = v80;
    v62 = v81;
    v63 = v37;
    v64 = v85;
    v65 = v56;
    v66 = v57;
    v67 = v36;
    v68 = a11;
    v69 = v78;
    v70 = v79;
    v71 = a12;
    v72 = a13;
    return sub_2142FC228(v59);
  }

  if ((v33 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000017;
    v39[1] = 0x800000021478F3B0;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v35 = v32;

  *v77 = a8;
  *&v77[8] = a10;
  v36 = v51;
  LOBYTE(v75[0]) = v51;
  *v59 = 0xD00000000000001CLL;
  *&v59[8] = 0x800000021478F3D0;
  *&v59[16] = 0xD00000000000001CLL;
  *&v59[24] = 0x800000021478A360;

  sub_213FDC9D0(v56, v57);
  v37 = v50;
  v38 = v50(v77, v75, v59);
  v40 = a3;
  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD00000000000001CLL;
    v43[1] = 0x800000021478F3D0;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();

    v34 = v55;

    sub_213FDC6D0(v56, v57);
    v41 = v31;
    goto LABEL_7;
  }

  sub_213FDC6D0(v56, v57);

  sub_213FDC6D0(v56, v57);
  *a9 = v53;
  *(a9 + 1) = v52;
  *(a9 + 8) = v55;
  *(a9 + 16) = v35;
  *(a9 + 24) = v31;
  *(a9 + 32) = a3;
  *(a9 + 40) = __src;
  result = memcpy((a9 + 41), v84, 0x271uLL);
  *(a9 + 666) = a7;
  *(a9 + 672) = v50;
  *(a9 + 680) = v85;
  *(a9 + 688) = a8;
  *(a9 + 696) = a10;
  *(a9 + 704) = v51;
  *(a9 + 705) = a11;
  *(a9 + 712) = a12;
  *(a9 + 720) = a13;
  return result;
}

unint64_t sub_214189FD4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x616C50726F467369;
    v6 = 0x7463655265636166;
    if (a1 != 8)
    {
      v6 = 0x7374636552746570;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000015;
    if (a1 != 5)
    {
      v7 = 0x6564497465737361;
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
    v1 = 0x736E6F6974706FLL;
    v2 = 0x616964656DLL;
    v3 = 0x617453726579616CLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x696669746E656469;
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

uint64_t sub_21418A140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436D8E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21418A168(uint64_t a1)
{
  v2 = sub_2142FC27C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21418A1A4(uint64_t a1)
{
  v2 = sub_2142FC27C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotosPoster.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908390, &qword_2146F5018);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v156 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142FC27C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v156);
  }

  v58 = v6;
  LOBYTE(v59[0]) = 0;
  sub_2142FC2D0();
  sub_2146DA1C8();
  v12 = v61;
  v13 = BYTE1(v61);
  LOBYTE(v61) = 1;
  v56 = sub_2146DA168();
  v57 = v15;
  v54 = v12;
  v55 = v13;
  v142 = 2;
  sub_2142FC324();
  sub_2146DA1C8();
  v138 = v145;
  v139 = v146;
  v140 = v147;
  v141 = v148;
  v136 = v143;
  v137 = v144;
  v134[311] = 3;
  sub_2142FC378();
  sub_2146DA1C8();
  memcpy(v134, v135, 0x132uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9083B8, &qword_2146F5020);
  v119 = 4;
  sub_2142FC420();
  sub_2146DA1C8();
  v115 = v130;
  v116 = v131;
  v117 = v132;
  v118 = v133;
  v111 = v126;
  v112 = v127;
  v113 = v128;
  v114 = v129;
  v107 = v122;
  v108 = v123;
  v109 = v124;
  v110 = v125;
  v105 = v120;
  v106 = v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v59[0]) = 5;
  v16 = sub_2142E1378();
  sub_2146DA1C8();
  v53 = v16;
  v17 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v59[0]) = 6;
  sub_2142E12FC();
  sub_2146DA1C8();
  v52 = v17;
  v18 = v61;
  v19 = v62;
  LOBYTE(v59[0]) = 7;
  sub_2146DA1C8();
  v53 = v19;
  v49 = a2;
  v50 = v18;
  v51 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9083D0, &qword_2146F5028);
  LOBYTE(v59[0]) = 8;
  sub_2142FC54C();
  sub_2146DA1C8();
  v46 = v5;
  v47 = v61;
  v103 = 9;
  v48 = v9;
  sub_2146DA1C8();
  v37 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_2140676DC;
  *(v21 + 24) = 0;
  *(v20 + 32) = v21;
  sub_2142FC684(&v136, &v61);
  sub_214042B80(v20, &v61);
  v22 = v61;
  v23 = v62;
  v36 = v63;
  v24 = v64;
  v25 = v65;
  sub_2144495C4(v59);
  v40 = v59[0];
  v42 = v59[2];
  v43 = v59[3];
  v44 = v59[1];
  v41 = LOBYTE(v59[4]);
  *&v102[39] = v138;
  *&v102[55] = v139;
  *&v102[71] = v140;
  *&v102[87] = v141;
  *&v102[7] = v136;
  *&v102[23] = v137;
  memcpy(v153, v134, sizeof(v153));
  *&v101[166] = v115;
  *&v101[182] = v116;
  *&v101[198] = v117;
  *&v101[102] = v111;
  *&v101[118] = v112;
  *&v101[134] = v113;
  *&v101[150] = v114;
  *&v101[38] = v107;
  *&v101[54] = v108;
  *&v101[70] = v109;
  *&v101[86] = v110;
  *&v101[6] = v105;
  *&v101[214] = v118;
  *&v101[22] = v106;
  v59[0] = v56;
  v59[1] = v57;
  v39 = v25;
  LOBYTE(v60[0]) = v25;
  v61 = 0xD000000000000017;
  v62 = 0x800000021478F3B0;
  v63 = 0xD00000000000001CLL;
  v64 = 0x800000021478A360;

  v45 = v23;
  v38 = v22;
  if (v22(v59, v60, &v61))
  {

    v60[0] = v50;
    v60[1] = v53;
    LOBYTE(v59[0]) = v41;
    v61 = 0xD00000000000001CLL;
    v62 = 0x800000021478F3D0;
    v63 = 0xD00000000000001CLL;
    v64 = 0x800000021478A360;

    sub_213FDC9D0(v42, v43);
    if (v40(v60, v59, &v61))
    {
      v28 = v42;
      v27 = v43;
      sub_213FDC6D0(v42, v43);

      sub_2142FC3CC(&v136);
      (*(v58 + 8))(v48, v46);
      v29 = v44;

      sub_213FDC6D0(v28, v27);
      *(&v59[11] + 1) = *&v102[48];
      *(&v59[13] + 1) = *&v102[64];
      *(&v59[15] + 1) = *&v102[80];
      *(&v59[5] + 1) = *v102;
      *(&v59[7] + 1) = *&v102[16];
      LOBYTE(v59[0]) = v54;
      BYTE1(v59[0]) = v55;
      *(v59 + 2) = v154;
      HIWORD(v59[0]) = v155;
      v59[1] = v38;
      v59[2] = v45;
      v59[3] = v56;
      v59[4] = v57;
      LOBYTE(v59[5]) = v39;
      v59[17] = *&v102[95];
      *(&v59[9] + 1) = *&v102[32];
      memcpy(&v59[18], v153, 0x132uLL);
      *(&v59[76] + 2) = *&v101[160];
      *(&v59[78] + 2) = *&v101[176];
      *(&v59[80] + 2) = *&v101[192];
      *(&v59[82] + 2) = *&v101[208];
      *(&v59[68] + 2) = *&v101[96];
      *(&v59[70] + 2) = *&v101[112];
      *(&v59[72] + 2) = *&v101[128];
      *(&v59[74] + 2) = *&v101[144];
      *(&v59[60] + 2) = *&v101[32];
      *(&v59[62] + 2) = *&v101[48];
      *(&v59[64] + 2) = *&v101[64];
      *(&v59[66] + 2) = *&v101[80];
      *(&v59[56] + 2) = *v101;
      *(&v59[58] + 2) = *&v101[16];
      v30 = v51;
      BYTE2(v59[83]) = v52;
      *(&v59[83] + 3) = v151;
      HIBYTE(v59[83]) = v152;
      v59[84] = v40;
      v59[85] = v29;
      v31 = v50;
      v59[86] = v50;
      v32 = v53;
      v59[87] = v53;
      LOBYTE(v59[88]) = v41;
      BYTE1(v59[88]) = v51;
      *(&v59[88] + 2) = v149;
      HIWORD(v59[88]) = v150;
      v33 = v47;
      v59[89] = v47;
      v34 = v37;
      v59[90] = v37;
      memcpy(v49, v59, 0x2D8uLL);
      sub_2142FC6E0(v59, &v61);
      __swift_destroy_boxed_opaque_existential_1(v156);
      v70 = *&v102[48];
      v71 = *&v102[64];
      *v72 = *&v102[80];
      v67 = *v102;
      v68 = *&v102[16];
      LOBYTE(v61) = v54;
      BYTE1(v61) = v55;
      *(&v61 + 2) = v154;
      HIWORD(v61) = v155;
      v62 = v38;
      v63 = v45;
      v64 = v56;
      v65 = v57;
      v66 = v39;
      *&v72[15] = *&v102[95];
      v69 = *&v102[32];
      memcpy(v73, v153, sizeof(v73));
      v84 = *&v101[160];
      v85 = *&v101[176];
      v86 = *&v101[192];
      v87 = *&v101[208];
      v80 = *&v101[96];
      v81 = *&v101[112];
      v82 = *&v101[128];
      v83 = *&v101[144];
      v76 = *&v101[32];
      v77 = *&v101[48];
      v78 = *&v101[64];
      v79 = *&v101[80];
      v74 = *v101;
      v75 = *&v101[16];
      v88 = v52;
      v89 = v151;
      v90 = v152;
      v91 = v40;
      v92 = v29;
      v93 = v31;
      v94 = v32;
      v95 = v41;
      v96 = v30;
      v97 = v149;
      v98 = v150;
      v99 = v33;
      v100 = v34;
      return sub_2142FC228(&v61);
    }

    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD00000000000001CLL;
    v35[1] = 0x800000021478F3D0;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    sub_2142FC3CC(&v136);
    (*(v58 + 8))(v48, v46);

    sub_213FDC6D0(v42, v43);
    v24 = v57;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000017;
    v26[1] = 0x800000021478F3B0;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();

    sub_2142FC3CC(&v136);
    (*(v58 + 8))(v48, v46);

    v56 = v36;
  }

  __swift_destroy_boxed_opaque_existential_1(v156);
  v70 = *&v102[48];
  v71 = *&v102[64];
  *v72 = *&v102[80];
  v67 = *v102;
  v68 = *&v102[16];
  LOBYTE(v61) = v54;
  BYTE1(v61) = v55;
  *(&v61 + 2) = v154;
  HIWORD(v61) = v155;
  v62 = v38;
  v63 = v45;
  v64 = v56;
  v65 = v24;
  v66 = v39;
  *&v72[15] = *&v102[95];
  v69 = *&v102[32];
  memcpy(v73, v153, sizeof(v73));
  v84 = *&v101[160];
  v85 = *&v101[176];
  v86 = *&v101[192];
  v87 = *&v101[208];
  v80 = *&v101[96];
  v81 = *&v101[112];
  v82 = *&v101[128];
  v83 = *&v101[144];
  v76 = *&v101[32];
  v77 = *&v101[48];
  v78 = *&v101[64];
  v79 = *&v101[80];
  v74 = *v101;
  v75 = *&v101[16];
  v88 = v52;
  v89 = v151;
  v90 = v152;
  v91 = v40;
  v92 = v44;
  v93 = v42;
  v94 = v43;
  v95 = v41;
  v96 = v51;
  v97 = v149;
  v98 = v150;
  v99 = v47;
  v100 = v37;
  return sub_2142FC228(&v61);
}

uint64_t PhotosPoster.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9083F8, &qword_2146F5038);
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  v8 = *(v2 + 6);
  v65 = *(v2 + 5);
  v66 = v8;
  v9 = *(v2 + 8);
  v67 = *(v2 + 7);
  v68 = v9;
  v10 = *(v2 + 4);
  v63 = *(v2 + 3);
  v11 = *v2;
  v12 = v2[1];
  v13 = *(v2 + 4);
  v35 = *(v2 + 3);
  v36 = v13;
  v64 = v10;
  memcpy(v69, v2 + 144, 0x132uLL);
  v33 = v2[666];
  v14 = *(v2 + 86);
  v31 = *(v2 + 87);
  v32 = v14;
  v30 = v2[705];
  v29 = *(v2 + 89);
  v34 = *(v2 + 90);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FC27C();
  v16 = v7;
  sub_2146DAA28();
  v54[0] = v11;
  v17 = v4;
  v54[1] = v12;
  v53[0] = 0;
  sub_2142FC73C();
  v18 = v70;
  sub_2146DA388();
  if (v18)
  {
    return (*(v37 + 8))(v7, v4);
  }

  v20 = v34;
  v21 = v37;
  if (!v36)
  {
    goto LABEL_6;
  }

  v54[0] = 1;

  sub_2146DA328();

  v59 = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v57 = v63;
  v58 = v64;
  v56 = 2;
  sub_2142FC684(&v63, v54);
  sub_2142FC790();
  sub_2146DA388();
  v55[2] = v59;
  v55[3] = v60;
  v55[4] = v61;
  v55[5] = v62;
  v55[0] = v57;
  v55[1] = v58;
  sub_2142FC3CC(v55);
  memcpy(v54, v69, 0x132uLL);
  v53[311] = 3;
  sub_2142FC7E4(v69, v53);
  sub_2142FC840();
  sub_2146DA388();
  memcpy(v53, v54, 0x132uLL);
  sub_2142FC4F8(v53);
  v22 = *(v2 + 632);
  v49 = *(v2 + 616);
  v50 = v22;
  v51 = *(v2 + 648);
  v52 = *(v2 + 332);
  v23 = *(v2 + 568);
  v45 = *(v2 + 552);
  v46 = v23;
  v24 = *(v2 + 600);
  v47 = *(v2 + 584);
  v48 = v24;
  v25 = *(v2 + 504);
  v41 = *(v2 + 488);
  v42 = v25;
  v26 = *(v2 + 536);
  v43 = *(v2 + 520);
  v44 = v26;
  v27 = *(v2 + 472);
  v39 = *(v2 + 456);
  v40 = v27;
  v38 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9083B8, &qword_2146F5020);
  sub_2142FC894();
  sub_2146DA388();
  LOBYTE(v39) = v33;
  v38 = 5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  sub_2146DA388();
  v70 = v28;
  if (v31 == 1)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *&v39 = v32;
    *(&v39 + 1) = v31;
    v38 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    LOBYTE(v39) = v30;
    v38 = 7;
    sub_2146DA388();
    *&v39 = v29;
    v38 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9083D0, &qword_2146F5028);
    sub_2142FC96C();
    sub_2146DA388();
    *&v39 = v20;
    v38 = 9;
    sub_2146DA388();
    return (*(v21 + 8))(v16, v17);
  }

  return result;
}

uint64_t sub_21418B720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  LOBYTE(v17) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 256;
  *(v8 + 24) = v17;
  *(v7 + 16) = sub_2142FCAA4;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v17);
  v10 = v17;
  v9 = v18;
  v11 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD000000000000016;
  v18 = 0x800000021478F3F0;
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
    *v14 = 0xD000000000000016;
    v14[1] = 0x800000021478F3F0;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21418B948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_21418B9D0(uint64_t a1)
{
  v2 = sub_2142FCABC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21418BA0C(uint64_t a1)
{
  v2 = sub_2142FCABC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21418BA48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908440, &qword_2146F5040);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FCABC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2146DA168();
  v26 = a2;
  v29 = v11;
  v30 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v15 = swift_allocObject();
  LOBYTE(v32) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = 256;
  *(v16 + 24) = v32;
  *(v15 + 16) = sub_21438F67C;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_214042B80(inited, &v32);
  v18 = v32;
  v17 = v33;
  v31[0] = v29;
  v31[1] = v30;
  v37 = v36;
  v38 = v36;
  v32 = 0xD000000000000016;
  v33 = 0x800000021478F3F0;
  v27 = 0x800000021478F3F0;
  v28 = v35;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  v19 = v18(v31, &v38, &v32);
  v25 = 0x800000021478A360;
  v20 = v27;
  if (v19)
  {

    (*(v6 + 8))(v9, v5);

    v21 = v26;
    *v26 = v18;
    v21[1] = v17;
    v22 = v30;
    v21[2] = v29;
    v21[3] = v22;
    *(v21 + 32) = v37;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v23 = 0xD000000000000016;
  v23[1] = v20;
  v24 = v25;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = v24;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void *sub_21418BE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, __int128 *a10, __int128 *a11, __int128 *a12, __int128 *a13, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17, __int128 *a18, __int128 *a19, __int128 *a20, __int128 *a21, __int128 *a22, __int128 *a23, __int128 *a24, __int128 *a25, __int128 *a26, __int128 *a27, __int128 *a28, __int128 *a29, __int128 *a30, __int128 *a31, __int128 *a32, __int128 *a33, __int128 *a34, __int128 *a35, __int128 *a36, _OWORD *a37, __int128 *a38, __int128 *a39, __int128 *a40)
{
  v40 = MEMORY[0x28223BE20](a1);
  v652 = a37;
  v41 = v40[12];
  v42 = v40[13];
  v43 = v40[14];
  v44 = *(v40 + 234);
  v45 = v40[8];
  v46 = v40[9];
  v47 = v40[10];
  v48 = v40[11];
  v49 = v40[4];
  v50 = v40[5];
  v51 = v40[6];
  v52 = v40[7];
  v53 = *v40;
  v54 = v40[1];
  v55 = v40[2];
  v56 = v40[3];
  *(&__src[30] + 10) = *(v57 + 234);
  __src[12] = v41;
  __src[13] = v42;
  v58 = *v57;
  v59 = v57[1];
  __src[14] = v43;
  *(&__src[14] + 10) = v44;
  __src[8] = v45;
  __src[9] = v46;
  __src[10] = v47;
  __src[11] = v48;
  __src[4] = v49;
  __src[5] = v50;
  __src[6] = v51;
  __src[7] = v52;
  __src[0] = v53;
  __src[1] = v54;
  v60 = v57[12];
  v61 = v57[13];
  v62 = v57[14];
  v63 = v57[8];
  v64 = v57[9];
  v65 = v57[10];
  v66 = v57[11];
  v67 = v57[4];
  v68 = v57[5];
  v69 = v57[6];
  v70 = v57[7];
  v71 = v57[2];
  v72 = v57[3];
  *(&__src[46] + 10) = *(v73 + 234);
  v74 = v73[12];
  v75 = v73[13];
  v76 = v73[14];
  v77 = v73[8];
  v78 = v73[9];
  v80 = v73[10];
  v79 = v73[11];
  v81 = v73[4];
  v82 = v73[5];
  v83 = v73[6];
  v84 = v73[7];
  v85 = *v73;
  v86 = v73[1];
  *(&__src[62] + 10) = *(v87 + 234);
  v89 = v73[2];
  v88 = v73[3];
  __src[2] = v55;
  __src[3] = v56;
  __src[29] = v61;
  __src[30] = v62;
  __src[25] = v64;
  __src[26] = v65;
  __src[27] = v66;
  __src[28] = v60;
  __src[21] = v68;
  __src[22] = v69;
  __src[23] = v70;
  __src[24] = v63;
  __src[16] = v58;
  __src[17] = v59;
  __src[18] = v71;
  __src[19] = v72;
  __src[20] = v67;
  __src[44] = v74;
  __src[45] = v75;
  __src[40] = v77;
  __src[41] = v78;
  __src[42] = v80;
  __src[43] = v79;
  __src[36] = v81;
  __src[37] = v82;
  __src[38] = v83;
  __src[39] = v84;
  __src[32] = v85;
  __src[33] = v86;
  __src[34] = v89;
  v90 = v87[12];
  v91 = v87[13];
  v92 = v87[14];
  v93 = v87[8];
  v94 = v87[9];
  v95 = v87[10];
  v96 = v87[11];
  v97 = v87[4];
  v98 = v87[5];
  v99 = v87[6];
  v100 = v87[7];
  v101 = *v87;
  v102 = v87[1];
  v103 = v87[2];
  v104 = v87[3];
  *(&__src[78] + 10) = *(v105 + 234);
  v106 = v105[12];
  v107 = v105[13];
  v108 = v105[14];
  v109 = v105[8];
  v110 = v105[9];
  v111 = v105[10];
  v112 = v105[11];
  v113 = v105[4];
  v114 = v105[5];
  v115 = v105[6];
  v116 = v105[7];
  v117 = *v105;
  v118 = v105[1];
  *(&__src[94] + 10) = *(v119 + 234);
  v120 = v105[2];
  v121 = v105[3];
  __src[35] = v88;
  __src[61] = v91;
  __src[62] = v92;
  __src[57] = v94;
  __src[58] = v95;
  __src[59] = v96;
  __src[60] = v90;
  __src[53] = v98;
  __src[54] = v99;
  __src[55] = v100;
  __src[56] = v93;
  __src[46] = v76;
  __src[48] = v101;
  __src[49] = v102;
  __src[50] = v103;
  __src[51] = v104;
  __src[52] = v97;
  __src[76] = v106;
  __src[77] = v107;
  __src[78] = v108;
  __src[72] = v109;
  __src[73] = v110;
  __src[74] = v111;
  __src[75] = v112;
  __src[68] = v113;
  __src[69] = v114;
  __src[70] = v115;
  __src[71] = v116;
  __src[64] = v117;
  __src[65] = v118;
  v122 = v119[12];
  v123 = v119[13];
  v124 = v119[14];
  v125 = v119[8];
  v126 = v119[9];
  v127 = v119[10];
  v128 = v119[11];
  v129 = v119[4];
  v130 = v119[5];
  v131 = v119[6];
  v132 = v119[7];
  v133 = *v119;
  v134 = v119[1];
  v135 = v119[2];
  v136 = v119[3];
  *(&__src[110] + 10) = *(v137 + 234);
  v138 = v137[12];
  v139 = v137[13];
  v140 = v137[14];
  v141 = v137[8];
  v142 = v137[9];
  v143 = v137[10];
  v144 = v137[11];
  v145 = v137[4];
  v146 = v137[5];
  v147 = v137[6];
  v148 = v137[7];
  v149 = *v137;
  v150 = v137[1];
  *(&__src[126] + 10) = *(v151 + 234);
  v152 = v137[2];
  v153 = v137[3];
  __src[66] = v120;
  __src[67] = v121;
  __src[92] = v122;
  __src[93] = v123;
  __src[94] = v124;
  __src[88] = v125;
  __src[89] = v126;
  __src[90] = v127;
  __src[91] = v128;
  __src[84] = v129;
  __src[85] = v130;
  __src[86] = v131;
  __src[87] = v132;
  __src[80] = v133;
  __src[81] = v134;
  __src[82] = v135;
  __src[83] = v136;
  __src[108] = v138;
  __src[109] = v139;
  __src[110] = v140;
  __src[104] = v141;
  __src[105] = v142;
  __src[106] = v143;
  __src[107] = v144;
  __src[100] = v145;
  __src[101] = v146;
  __src[102] = v147;
  __src[103] = v148;
  __src[96] = v149;
  __src[97] = v150;
  v154 = v151[12];
  v155 = v151[13];
  v156 = v151[14];
  v157 = v151[8];
  v158 = v151[9];
  v159 = v151[10];
  v160 = v151[11];
  v161 = v151[4];
  v162 = v151[5];
  v163 = v151[6];
  v164 = v151[7];
  v165 = *v151;
  v166 = v151[1];
  v167 = v151[2];
  v168 = v151[3];
  *(&__src[142] + 10) = *(a9 + 234);
  v169 = a9[12];
  v170 = a9[13];
  v171 = a9[14];
  v172 = a9[8];
  v173 = a9[9];
  v174 = a9[10];
  v175 = a9[11];
  v176 = a9[4];
  v177 = a9[5];
  v178 = a9[6];
  v179 = a9[7];
  v180 = *a9;
  v181 = a9[1];
  *(&__src[158] + 10) = *(a10 + 234);
  v183 = a9[2];
  v182 = a9[3];
  __src[98] = v152;
  __src[99] = v153;
  __src[124] = v154;
  __src[125] = v155;
  __src[126] = v156;
  __src[120] = v157;
  __src[121] = v158;
  __src[122] = v159;
  __src[123] = v160;
  __src[116] = v161;
  __src[117] = v162;
  __src[118] = v163;
  __src[119] = v164;
  __src[112] = v165;
  __src[113] = v166;
  __src[114] = v167;
  __src[115] = v168;
  __src[140] = v169;
  __src[141] = v170;
  __src[142] = v171;
  __src[136] = v172;
  __src[137] = v173;
  __src[138] = v174;
  __src[139] = v175;
  __src[132] = v176;
  __src[133] = v177;
  __src[134] = v178;
  __src[135] = v179;
  v184 = a10[12];
  v185 = a10[13];
  v186 = a10[14];
  v187 = a10[8];
  v188 = a10[9];
  v189 = a10[10];
  v190 = a10[11];
  v191 = a10[4];
  v192 = a10[5];
  v193 = a10[6];
  v194 = a10[7];
  v195 = *a10;
  v196 = a10[1];
  v198 = a10[2];
  v197 = a10[3];
  *(&__src[174] + 10) = *(a11 + 234);
  *(&__src[190] + 10) = *(a12 + 234);
  *(&__src[206] + 10) = *(a13 + 234);
  *(&__src[222] + 10) = *(a14 + 234);
  *(&__src[238] + 10) = *(a15 + 234);
  *(&__src[254] + 10) = *(a16 + 234);
  *(&__src[270] + 10) = *(a17 + 234);
  *(&__src[286] + 10) = *(a18 + 234);
  *(&__src[302] + 10) = *(a19 + 234);
  *(&__src[318] + 10) = *(a20 + 234);
  *(&__src[334] + 10) = *(a21 + 234);
  *(&__src[350] + 10) = *(a22 + 234);
  *(&__src[366] + 10) = *(a23 + 234);
  *(&__src[382] + 10) = *(a24 + 234);
  *(&__src[398] + 10) = *(a25 + 234);
  v199 = a25[10];
  *(&__src[414] + 10) = *(a26 + 234);
  *(&__src[430] + 10) = *(a27 + 234);
  *(&__src[446] + 10) = *(a28 + 234);
  *(&__src[462] + 10) = *(a29 + 234);
  *(&__src[478] + 10) = *(a30 + 234);
  *(&__src[494] + 10) = *(a31 + 234);
  *(&__src[510] + 10) = *(a32 + 234);
  *(&__src[526] + 10) = *(a33 + 234);
  *(&__src[542] + 10) = *(a34 + 234);
  *(&__src[558] + 10) = *(a35 + 234);
  *(&__src[574] + 10) = *(a36 + 234);
  *(&__src[590] + 10) = *(a37 + 234);
  *(&__src[606] + 10) = *(a38 + 234);
  *(&__src[622] + 10) = *(a39 + 234);
  *(&__src[638] + 10) = *(a40 + 234);
  __src[128] = v180;
  __src[129] = v181;
  __src[130] = v183;
  v200 = a11[12];
  v201 = a11[13];
  v202 = a11[14];
  v203 = a11[8];
  v204 = a11[9];
  v205 = a11[10];
  v206 = a11[11];
  v207 = a11[4];
  v208 = a11[5];
  v209 = a11[6];
  v210 = a11[7];
  v211 = *a11;
  v212 = a11[1];
  v213 = a11[2];
  v214 = a11[3];
  __src[131] = v182;
  __src[156] = v184;
  __src[157] = v185;
  __src[158] = v186;
  __src[152] = v187;
  __src[153] = v188;
  __src[154] = v189;
  __src[155] = v190;
  __src[148] = v191;
  __src[149] = v192;
  __src[150] = v193;
  __src[151] = v194;
  __src[144] = v195;
  __src[145] = v196;
  __src[146] = v198;
  v215 = a12[12];
  v216 = a12[13];
  v217 = a12[14];
  v218 = a12[8];
  v219 = a12[9];
  v220 = a12[10];
  v221 = a12[11];
  v222 = a12[4];
  v223 = a12[5];
  v224 = a12[6];
  v225 = a12[7];
  v226 = *a12;
  v227 = a12[1];
  v228 = a12[2];
  v229 = a12[3];
  __src[147] = v197;
  __src[172] = v200;
  __src[173] = v201;
  __src[174] = v202;
  __src[168] = v203;
  __src[169] = v204;
  __src[170] = v205;
  __src[171] = v206;
  __src[164] = v207;
  __src[165] = v208;
  __src[166] = v209;
  __src[167] = v210;
  __src[160] = v211;
  __src[161] = v212;
  __src[162] = v213;
  v230 = a13[12];
  v231 = a13[13];
  v232 = a13[14];
  v233 = a13[8];
  v234 = a13[9];
  v235 = a13[10];
  v236 = a13[11];
  v238 = a13[4];
  v237 = a13[5];
  v239 = a13[6];
  v240 = a13[7];
  v241 = *a13;
  v242 = a13[1];
  v243 = a13[2];
  v244 = a13[3];
  __src[163] = v214;
  __src[188] = v215;
  __src[189] = v216;
  __src[190] = v217;
  __src[184] = v218;
  __src[185] = v219;
  __src[186] = v220;
  __src[187] = v221;
  __src[180] = v222;
  __src[181] = v223;
  __src[182] = v224;
  __src[183] = v225;
  __src[176] = v226;
  __src[177] = v227;
  __src[178] = v228;
  v245 = a14[12];
  v246 = a14[13];
  v247 = a14[14];
  v248 = a14[8];
  v249 = a14[9];
  v250 = a14[10];
  v251 = a14[11];
  v252 = a14[4];
  v253 = a14[5];
  v254 = a14[6];
  v255 = a14[7];
  v256 = *a14;
  v257 = a14[1];
  v259 = a14[2];
  v258 = a14[3];
  __src[179] = v229;
  __src[204] = v230;
  __src[205] = v231;
  __src[206] = v232;
  __src[200] = v233;
  __src[201] = v234;
  __src[202] = v235;
  __src[203] = v236;
  __src[196] = v238;
  __src[197] = v237;
  __src[198] = v239;
  __src[199] = v240;
  __src[192] = v241;
  __src[193] = v242;
  __src[194] = v243;
  v260 = a15[12];
  v261 = a15[13];
  v262 = a15[14];
  v263 = a15[8];
  v264 = a15[9];
  v265 = a15[10];
  v266 = a15[11];
  v267 = a15[4];
  v268 = a15[5];
  v269 = a15[6];
  v270 = a15[7];
  v271 = *a15;
  v272 = a15[1];
  v273 = a15[2];
  v274 = a15[3];
  __src[195] = v244;
  __src[220] = v245;
  __src[221] = v246;
  __src[222] = v247;
  __src[216] = v248;
  __src[217] = v249;
  __src[218] = v250;
  __src[219] = v251;
  __src[212] = v252;
  __src[213] = v253;
  __src[214] = v254;
  __src[215] = v255;
  __src[208] = v256;
  __src[209] = v257;
  __src[210] = v259;
  v275 = a16[12];
  v276 = a16[13];
  v277 = a16[14];
  v278 = a16[8];
  v279 = a16[9];
  v280 = a16[10];
  v281 = a16[11];
  v282 = a16[4];
  v283 = a16[5];
  v284 = a16[6];
  v285 = a16[7];
  v286 = *a16;
  v287 = a16[1];
  v289 = a16[2];
  v288 = a16[3];
  __src[211] = v258;
  __src[236] = v260;
  __src[237] = v261;
  __src[238] = v262;
  __src[232] = v263;
  __src[233] = v264;
  __src[234] = v265;
  __src[235] = v266;
  __src[228] = v267;
  __src[229] = v268;
  __src[230] = v269;
  __src[231] = v270;
  __src[224] = v271;
  __src[225] = v272;
  __src[226] = v273;
  v290 = a17[12];
  v291 = a17[13];
  v292 = a17[14];
  v293 = a17[8];
  v294 = a17[9];
  v295 = a17[10];
  v296 = a17[11];
  v297 = a17[4];
  v298 = a17[5];
  v299 = a17[6];
  v300 = a17[7];
  v301 = *a17;
  v302 = a17[1];
  v303 = a17[2];
  v304 = a17[3];
  __src[227] = v274;
  __src[252] = v275;
  __src[253] = v276;
  __src[254] = v277;
  __src[248] = v278;
  __src[249] = v279;
  __src[250] = v280;
  __src[251] = v281;
  __src[244] = v282;
  __src[245] = v283;
  __src[246] = v284;
  __src[247] = v285;
  __src[240] = v286;
  __src[241] = v287;
  __src[242] = v289;
  v305 = a18[12];
  v306 = a18[13];
  v307 = a18[14];
  v308 = a18[8];
  v309 = a18[9];
  v310 = a18[10];
  v311 = a18[11];
  v312 = a18[4];
  v313 = a18[5];
  v314 = a18[6];
  v315 = a18[7];
  v316 = *a18;
  v317 = a18[1];
  v319 = a18[2];
  v318 = a18[3];
  __src[243] = v288;
  __src[268] = v290;
  __src[269] = v291;
  __src[270] = v292;
  __src[264] = v293;
  __src[265] = v294;
  __src[266] = v295;
  __src[267] = v296;
  __src[260] = v297;
  __src[261] = v298;
  __src[262] = v299;
  __src[263] = v300;
  __src[256] = v301;
  __src[257] = v302;
  __src[258] = v303;
  v320 = a19[12];
  v321 = a19[13];
  v322 = a19[14];
  v323 = a19[8];
  v324 = a19[9];
  v325 = a19[10];
  v326 = a19[11];
  v327 = a19[4];
  v328 = a19[5];
  v329 = a19[6];
  v330 = a19[7];
  v331 = *a19;
  v332 = a19[1];
  v333 = a19[2];
  v334 = a19[3];
  __src[259] = v304;
  __src[284] = v305;
  __src[285] = v306;
  __src[286] = v307;
  __src[280] = v308;
  __src[281] = v309;
  __src[282] = v310;
  __src[283] = v311;
  __src[276] = v312;
  __src[277] = v313;
  __src[278] = v314;
  __src[279] = v315;
  __src[272] = v316;
  __src[273] = v317;
  __src[274] = v319;
  v335 = a20[12];
  v336 = a20[13];
  v337 = a20[14];
  v338 = a20[8];
  v339 = a20[9];
  v340 = a20[10];
  v341 = a20[11];
  v342 = a20[4];
  v343 = a20[5];
  v344 = a20[6];
  v345 = a20[7];
  v346 = *a20;
  v347 = a20[1];
  v349 = a20[2];
  v348 = a20[3];
  __src[275] = v318;
  __src[300] = v320;
  __src[301] = v321;
  __src[302] = v322;
  __src[296] = v323;
  __src[297] = v324;
  __src[298] = v325;
  __src[299] = v326;
  __src[292] = v327;
  __src[293] = v328;
  __src[294] = v329;
  __src[295] = v330;
  __src[288] = v331;
  __src[289] = v332;
  __src[290] = v333;
  v350 = a21[12];
  v351 = a21[13];
  v352 = a21[14];
  v353 = a21[8];
  v354 = a21[9];
  v355 = a21[10];
  v356 = a21[11];
  v357 = a21[4];
  v358 = a21[5];
  v359 = a21[6];
  v360 = a21[7];
  v361 = *a21;
  v362 = a21[1];
  v363 = a21[2];
  v364 = a21[3];
  __src[291] = v334;
  __src[316] = v335;
  __src[317] = v336;
  __src[318] = v337;
  __src[312] = v338;
  __src[313] = v339;
  __src[314] = v340;
  __src[315] = v341;
  __src[308] = v342;
  __src[309] = v343;
  __src[310] = v344;
  __src[311] = v345;
  __src[304] = v346;
  __src[305] = v347;
  __src[306] = v349;
  v365 = a22[12];
  v366 = a22[13];
  v367 = a22[14];
  v368 = a22[8];
  v369 = a22[9];
  v370 = a22[10];
  v371 = a22[11];
  v372 = a22[4];
  v373 = a22[5];
  v374 = a22[6];
  v375 = a22[7];
  v376 = *a22;
  v377 = a22[1];
  v379 = a22[2];
  v378 = a22[3];
  __src[307] = v348;
  __src[332] = v350;
  __src[333] = v351;
  __src[334] = v352;
  __src[328] = v353;
  __src[329] = v354;
  __src[330] = v355;
  __src[331] = v356;
  __src[324] = v357;
  __src[325] = v358;
  __src[326] = v359;
  __src[327] = v360;
  __src[320] = v361;
  __src[321] = v362;
  __src[322] = v363;
  v380 = a23[12];
  v381 = a23[13];
  v382 = a23[14];
  v383 = a23[8];
  v384 = a23[9];
  v385 = a23[10];
  v386 = a23[11];
  v387 = a23[4];
  v388 = a23[5];
  v389 = a23[6];
  v390 = a23[7];
  v391 = *a23;
  v392 = a23[1];
  v393 = a23[2];
  v394 = a23[3];
  __src[323] = v364;
  __src[348] = v365;
  __src[349] = v366;
  __src[350] = v367;
  __src[344] = v368;
  __src[345] = v369;
  __src[346] = v370;
  __src[347] = v371;
  __src[340] = v372;
  __src[341] = v373;
  __src[342] = v374;
  __src[343] = v375;
  __src[336] = v376;
  __src[337] = v377;
  __src[338] = v379;
  v395 = a24[12];
  v396 = a24[13];
  v397 = a24[14];
  v398 = a24[8];
  v399 = a24[9];
  v400 = a24[10];
  v401 = a24[11];
  v402 = a24[4];
  v403 = a24[5];
  v404 = a24[6];
  v405 = a24[7];
  v406 = *a24;
  v407 = a24[1];
  v409 = a24[2];
  v408 = a24[3];
  __src[339] = v378;
  __src[364] = v380;
  __src[365] = v381;
  __src[366] = v382;
  __src[360] = v383;
  __src[361] = v384;
  __src[362] = v385;
  __src[363] = v386;
  __src[356] = v387;
  __src[357] = v388;
  __src[358] = v389;
  __src[359] = v390;
  __src[352] = v391;
  __src[353] = v392;
  v410 = a25[13];
  v411 = a25[14];
  v412 = a25[8];
  v413 = a25[9];
  v415 = a25[11];
  v414 = a25[12];
  v416 = a25[4];
  v417 = a25[5];
  v419 = a25[6];
  v418 = a25[7];
  v420 = *a25;
  v421 = a25[1];
  v422 = a25[2];
  v423 = a25[3];
  __src[354] = v393;
  __src[355] = v394;
  __src[380] = v395;
  __src[381] = v396;
  __src[382] = v397;
  __src[376] = v398;
  __src[377] = v399;
  __src[378] = v400;
  __src[379] = v401;
  __src[372] = v402;
  __src[373] = v403;
  __src[374] = v404;
  __src[375] = v405;
  __src[368] = v406;
  __src[369] = v407;
  v424 = a26[12];
  v425 = a26[13];
  v426 = a26[14];
  v427 = a26[8];
  v428 = a26[9];
  v429 = a26[10];
  v430 = a26[11];
  v431 = a26[4];
  v432 = a26[5];
  v433 = a26[6];
  v434 = a26[7];
  v435 = *a26;
  v436 = a26[1];
  v437 = a26[2];
  v438 = a26[3];
  __src[370] = v409;
  __src[371] = v408;
  __src[396] = v414;
  __src[397] = v410;
  __src[398] = v411;
  __src[392] = v412;
  __src[393] = v413;
  __src[394] = v199;
  __src[395] = v415;
  __src[388] = v416;
  __src[389] = v417;
  __src[390] = v419;
  __src[391] = v418;
  __src[384] = v420;
  __src[385] = v421;
  v439 = a27[12];
  v440 = a27[13];
  v441 = a27[14];
  v442 = a27[8];
  v443 = a27[9];
  v444 = a27[10];
  v445 = a27[11];
  v446 = a27[4];
  v447 = a27[5];
  v448 = a27[6];
  v449 = a27[7];
  v450 = *a27;
  v451 = a27[1];
  v452 = a27[2];
  v453 = a27[3];
  __src[386] = v422;
  __src[387] = v423;
  __src[412] = v424;
  __src[413] = v425;
  __src[414] = v426;
  __src[408] = v427;
  __src[409] = v428;
  __src[410] = v429;
  __src[411] = v430;
  __src[404] = v431;
  __src[405] = v432;
  __src[406] = v433;
  __src[407] = v434;
  __src[400] = v435;
  __src[401] = v436;
  v454 = a28[12];
  v455 = a28[13];
  v456 = a28[14];
  v457 = a28[8];
  v458 = a28[9];
  v459 = a28[10];
  v460 = a28[11];
  v461 = a28[4];
  v462 = a28[5];
  v463 = a28[6];
  v464 = a28[7];
  v465 = *a28;
  v466 = a28[1];
  v467 = a28[2];
  v468 = a28[3];
  __src[402] = v437;
  __src[403] = v438;
  __src[428] = v439;
  __src[429] = v440;
  __src[430] = v441;
  __src[424] = v442;
  __src[425] = v443;
  __src[426] = v444;
  __src[427] = v445;
  __src[420] = v446;
  __src[421] = v447;
  __src[422] = v448;
  __src[423] = v449;
  __src[416] = v450;
  __src[417] = v451;
  v469 = a29[12];
  v470 = a29[13];
  v471 = a29[14];
  v472 = a29[8];
  v473 = a29[9];
  v474 = a29[10];
  v475 = a29[11];
  v476 = a29[4];
  v477 = a29[5];
  v478 = a29[6];
  v479 = a29[7];
  v480 = *a29;
  v481 = a29[1];
  v482 = a29[2];
  v483 = a29[3];
  __src[418] = v452;
  __src[419] = v453;
  __src[444] = v454;
  __src[445] = v455;
  __src[446] = v456;
  __src[440] = v457;
  __src[441] = v458;
  __src[442] = v459;
  __src[443] = v460;
  __src[436] = v461;
  __src[437] = v462;
  __src[438] = v463;
  __src[439] = v464;
  __src[432] = v465;
  __src[433] = v466;
  v484 = a30[12];
  v485 = a30[13];
  v486 = a30[14];
  v487 = a30[8];
  v488 = a30[9];
  v489 = a30[10];
  v490 = a30[11];
  v491 = a30[4];
  v492 = a30[5];
  v493 = a30[6];
  v494 = a30[7];
  v495 = *a30;
  v496 = a30[1];
  v497 = a30[2];
  v498 = a30[3];
  __src[434] = v467;
  __src[435] = v468;
  __src[460] = v469;
  __src[461] = v470;
  __src[462] = v471;
  __src[456] = v472;
  __src[457] = v473;
  __src[458] = v474;
  __src[459] = v475;
  __src[452] = v476;
  __src[453] = v477;
  __src[454] = v478;
  __src[455] = v479;
  __src[448] = v480;
  __src[449] = v481;
  v499 = a31[12];
  v500 = a31[13];
  v501 = a31[14];
  v502 = a31[8];
  v503 = a31[9];
  v504 = a31[10];
  v505 = a31[11];
  v506 = a31[4];
  v507 = a31[5];
  v508 = a31[6];
  v509 = a31[7];
  v510 = *a31;
  v511 = a31[1];
  v512 = a31[2];
  v513 = a31[3];
  __src[450] = v482;
  __src[451] = v483;
  __src[476] = v484;
  __src[477] = v485;
  __src[478] = v486;
  __src[472] = v487;
  __src[473] = v488;
  __src[474] = v489;
  __src[475] = v490;
  __src[468] = v491;
  __src[469] = v492;
  __src[470] = v493;
  __src[471] = v494;
  __src[464] = v495;
  __src[465] = v496;
  v514 = a32[12];
  v515 = a32[13];
  v516 = a32[14];
  v517 = a32[8];
  v518 = a32[9];
  v519 = a32[10];
  v520 = a32[11];
  v521 = a32[4];
  v522 = a32[5];
  v523 = a32[6];
  v524 = a32[7];
  v525 = *a32;
  v526 = a32[1];
  v527 = a32[2];
  v528 = a32[3];
  __src[466] = v497;
  __src[467] = v498;
  __src[492] = v499;
  __src[493] = v500;
  __src[494] = v501;
  __src[488] = v502;
  __src[489] = v503;
  __src[490] = v504;
  __src[491] = v505;
  __src[484] = v506;
  __src[485] = v507;
  __src[486] = v508;
  __src[487] = v509;
  __src[480] = v510;
  __src[481] = v511;
  v529 = a33[12];
  v530 = a33[13];
  v531 = a33[14];
  v532 = a33[8];
  v533 = a33[9];
  v534 = a33[10];
  v535 = a33[11];
  v536 = a33[4];
  v537 = a33[5];
  v538 = a33[6];
  v539 = a33[7];
  v540 = *a33;
  v541 = a33[1];
  v542 = a33[2];
  v543 = a33[3];
  __src[482] = v512;
  __src[483] = v513;
  __src[508] = v514;
  __src[509] = v515;
  __src[510] = v516;
  __src[504] = v517;
  __src[505] = v518;
  __src[506] = v519;
  __src[507] = v520;
  __src[500] = v521;
  __src[501] = v522;
  __src[502] = v523;
  __src[503] = v524;
  __src[496] = v525;
  __src[497] = v526;
  v544 = a34[12];
  v545 = a34[13];
  v546 = a34[14];
  v547 = a34[8];
  v548 = a34[9];
  v549 = a34[10];
  v550 = a34[11];
  v551 = a34[4];
  v552 = a34[5];
  v553 = a34[6];
  v554 = a34[7];
  v555 = *a34;
  v556 = a34[1];
  v557 = a34[2];
  v558 = a34[3];
  __src[498] = v527;
  __src[499] = v528;
  __src[524] = v529;
  __src[525] = v530;
  __src[526] = v531;
  __src[520] = v532;
  __src[521] = v533;
  __src[522] = v534;
  __src[523] = v535;
  __src[516] = v536;
  __src[517] = v537;
  __src[518] = v538;
  __src[519] = v539;
  __src[512] = v540;
  __src[513] = v541;
  v559 = a35[12];
  v560 = a35[13];
  v561 = a35[14];
  v562 = a35[8];
  v563 = a35[9];
  v564 = a35[10];
  v565 = a35[11];
  v566 = a35[4];
  v567 = a35[5];
  v568 = a35[6];
  v569 = a35[7];
  v570 = *a35;
  v571 = a35[1];
  v572 = a35[2];
  v573 = a35[3];
  __src[514] = v542;
  __src[515] = v543;
  __src[540] = v544;
  __src[541] = v545;
  __src[542] = v546;
  __src[536] = v547;
  __src[537] = v548;
  __src[538] = v549;
  __src[539] = v550;
  __src[532] = v551;
  __src[533] = v552;
  __src[534] = v553;
  __src[535] = v554;
  __src[528] = v555;
  __src[529] = v556;
  v574 = a36[12];
  v575 = a36[13];
  v576 = a36[14];
  v577 = a36[8];
  v578 = a36[9];
  v579 = a36[10];
  v580 = a36[11];
  v581 = a36[4];
  v582 = a36[5];
  v583 = a36[6];
  v584 = a36[7];
  v585 = *a36;
  v586 = a36[1];
  v587 = a36[2];
  v588 = a36[3];
  __src[530] = v557;
  __src[531] = v558;
  __src[556] = v559;
  __src[557] = v560;
  __src[558] = v561;
  __src[552] = v562;
  __src[553] = v563;
  __src[554] = v564;
  __src[555] = v565;
  __src[548] = v566;
  __src[549] = v567;
  __src[550] = v568;
  __src[551] = v569;
  __src[544] = v570;
  __src[545] = v571;
  v589 = a37[12];
  v590 = a37[13];
  v591 = a37[14];
  v592 = a37[8];
  v593 = a37[9];
  v594 = a37[10];
  v595 = a37[11];
  v596 = a37[4];
  v597 = a37[5];
  v599 = a37[6];
  v598 = a37[7];
  v600 = *a37;
  v601 = a37[1];
  v603 = a37[2];
  v602 = a37[3];
  __src[546] = v572;
  __src[547] = v573;
  __src[572] = v574;
  __src[573] = v575;
  __src[574] = v576;
  __src[568] = v577;
  __src[569] = v578;
  __src[570] = v579;
  __src[571] = v580;
  __src[564] = v581;
  __src[565] = v582;
  __src[566] = v583;
  __src[567] = v584;
  __src[560] = v585;
  __src[561] = v586;
  v604 = a38[12];
  v605 = a38[13];
  v606 = a38[14];
  v607 = a38[8];
  v608 = a38[9];
  v609 = a38[10];
  v610 = a38[11];
  v611 = a38[4];
  v612 = a38[5];
  v613 = a38[6];
  v614 = a38[7];
  v615 = *a38;
  v616 = a38[1];
  v617 = a38[2];
  v618 = a38[3];
  __src[562] = v587;
  __src[563] = v588;
  __src[588] = v589;
  __src[589] = v590;
  __src[590] = v591;
  __src[584] = v592;
  __src[585] = v593;
  __src[586] = v594;
  __src[587] = v595;
  __src[580] = v596;
  __src[581] = v597;
  __src[582] = v599;
  __src[583] = v598;
  __src[576] = v600;
  __src[577] = v601;
  v619 = a39[12];
  v620 = a39[13];
  v621 = a39[14];
  v622 = a39[8];
  v623 = a39[9];
  v624 = a39[10];
  v625 = a39[11];
  v626 = a39[4];
  v627 = a39[5];
  v629 = a39[6];
  v628 = a39[7];
  v630 = *a39;
  v631 = a39[1];
  v632 = a39[2];
  v633 = a39[3];
  __src[578] = v603;
  __src[579] = v602;
  __src[604] = v604;
  __src[605] = v605;
  __src[606] = v606;
  __src[600] = v607;
  __src[601] = v608;
  __src[602] = v609;
  __src[603] = v610;
  __src[596] = v611;
  __src[597] = v612;
  __src[598] = v613;
  __src[599] = v614;
  __src[592] = v615;
  __src[593] = v616;
  v634 = a40[12];
  v635 = a40[13];
  v636 = a40[14];
  v637 = a40[8];
  v638 = a40[9];
  v639 = a40[10];
  v640 = a40[11];
  v641 = a40[4];
  v642 = a40[5];
  v643 = a40[6];
  v644 = a40[7];
  v646 = *a40;
  v645 = a40[1];
  v647 = a40[2];
  v648 = a40[3];
  __src[594] = v617;
  __src[595] = v618;
  __src[620] = v619;
  __src[621] = v620;
  __src[622] = v621;
  __src[616] = v622;
  __src[617] = v623;
  __src[618] = v624;
  __src[619] = v625;
  __src[612] = v626;
  __src[613] = v627;
  __src[614] = v629;
  __src[615] = v628;
  __src[608] = v630;
  __src[609] = v631;
  __src[610] = v632;
  __src[611] = v633;
  __src[636] = v634;
  __src[637] = v635;
  __src[638] = v636;
  __src[632] = v637;
  __src[633] = v638;
  __src[634] = v639;
  __src[635] = v640;
  __src[628] = v641;
  __src[629] = v642;
  __src[630] = v643;
  __src[631] = v644;
  __src[624] = v646;
  __src[625] = v645;
  __src[626] = v647;
  __src[627] = v648;
  return memcpy(v649, __src, 0x27FAuLL);
}

uint64_t sub_21418CF74(char a1)
{
  result = 6645601;
  switch(a1)
  {
    case 1:
      return 0x6B636968546D7261;
    case 2:
      return 0x66654C6F69647561;
    case 3:
      return 0x6769526F69647561;
    case 4:
      return 0x616D797475616562;
    case 5:
      return 0x6873756C62;
    case 6:
      return 0x7061685379646F62;
    case 7:
      v4 = 0x7073776F7262;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6569000000000000;
    case 8:
      return 0x7473656863;
    case 9:
      return 0x4C676E6972726165;
    case 10:
      return 0x52676E6972726165;
    case 11:
      return 1936875877;
    case 12:
      return 0x73776F7262657965;
    case 13:
      return 0x656873616C657965;
    case 14:
      return 0x72656E696C657965;
    case 15:
      return 0x6863746170657965;
    case 16:
      return 1936030053;
    case 17:
      return 0x6F64616873657965;
    case 18:
      return 0x72616577657965;
    case 19:
      return 0x6E69615065636166;
    case 20:
      v3 = 1701011814;
      goto LABEL_24;
    case 21:
      return 0x61686C6169636166;
    case 22:
      return 0xD000000000000014;
    case 23:
      return 0x6461656865726F66;
    case 24:
      return 0x73656C6B63657266;
    case 25:
      return 1919508840;
    case 26:
      return 1684104552;
    case 27:
      v3 = 1684104552;
      goto LABEL_24;
    case 28:
      return 0x6867696C68676968;
    case 29:
      return 1936746860;
    case 30:
      v4 = 0x706874756F6DLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6569000000000000;
    case 31:
      return 1702063982;
    case 32:
      return 0x7265697065736F6ELL;
    case 33:
      v3 = 1702063982;
LABEL_24:
      result = v3 | 0x7261657700000000;
      break;
    case 34:
      result = 0x74696674756FLL;
      break;
    case 35:
      result = 0x7265646C756F6873;
      break;
    case 36:
      result = 0x6E72756265646973;
      break;
    case 37:
      result = 0x6874656574;
      break;
    case 38:
      result = 0x69706575676E6F74;
      break;
    case 39:
      result = 0x7473696177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21418D38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436DC38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21418D3B4(uint64_t a1)
{
  v2 = sub_2142FCB10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21418D3F0(uint64_t a1)
{
  v2 = sub_2142FCB10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21418D42C(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908458, &qword_2146F5050);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = v2[3];
  v11 = v2[4];
  v1241 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v10);
  sub_2142FCB10();
  sub_2146DAA08();
  if (!v1)
  {
    v14 = v4;
    v1225 = 0;
    sub_2142FCB64();
    sub_2146DA1C8();
    v1222 = v1238;
    v1223 = v1239;
    *v1224 = *v1240;
    *&v1224[10] = *&v1240[10];
    v1218 = v1234;
    v1219 = v1235;
    v1220 = v1236;
    v1221 = v1237;
    v1214 = v1230;
    v1215 = v1231;
    v1216 = v1232;
    v1217 = v1233;
    v1210 = v1226;
    v1211 = v1227;
    v1212 = v1228;
    v1213 = v1229;
    v1194 = 1;
    sub_2146DA1C8();
    v1191 = v1207;
    v1192 = v1208;
    *v1193 = *v1209;
    *&v1193[10] = *&v1209[10];
    v1187 = v1203;
    v1188 = v1204;
    v1189 = v1205;
    v1190 = v1206;
    v1183 = v1199;
    v1184 = v1200;
    v1185 = v1201;
    v1186 = v1202;
    v1179 = v1195;
    v1180 = v1196;
    v1181 = v1197;
    v1182 = v1198;
    v1163 = 2;
    sub_2146DA1C8();
    v1160 = v1176;
    v1161 = v1177;
    *v1162 = *v1178;
    *&v1162[10] = *&v1178[10];
    v1156 = v1172;
    v1157 = v1173;
    v1158 = v1174;
    v1159 = v1175;
    v1152 = v1168;
    v1153 = v1169;
    v1154 = v1170;
    v1155 = v1171;
    v1148 = v1164;
    v1149 = v1165;
    v1150 = v1166;
    v1151 = v1167;
    v1132 = 3;
    sub_2146DA1C8();
    v1129 = v1145;
    v1130 = v1146;
    *v1131 = *v1147;
    *&v1131[10] = *&v1147[10];
    v1125 = v1141;
    v1126 = v1142;
    v1127 = v1143;
    v1128 = v1144;
    v1121 = v1137;
    v1122 = v1138;
    v1123 = v1139;
    v1124 = v1140;
    v1117 = v1133;
    v1118 = v1134;
    v1119 = v1135;
    v1120 = v1136;
    v1101 = 4;
    sub_2146DA1C8();
    v1098 = v1114;
    v1099 = v1115;
    *v1100 = *v1116;
    *&v1100[10] = *&v1116[10];
    v1094 = v1110;
    v1095 = v1111;
    v1096 = v1112;
    v1097 = v1113;
    v1090 = v1106;
    v1091 = v1107;
    v1092 = v1108;
    v1093 = v1109;
    v1086 = v1102;
    v1087 = v1103;
    v1088 = v1104;
    v1089 = v1105;
    v1070 = 5;
    sub_2146DA1C8();
    v1067 = v1083;
    v1068 = v1084;
    *v1069 = *v1085;
    *&v1069[10] = *&v1085[10];
    v1063 = v1079;
    v1064 = v1080;
    v1065 = v1081;
    v1066 = v1082;
    v1059 = v1075;
    v1060 = v1076;
    v1061 = v1077;
    v1062 = v1078;
    v1055 = v1071;
    v1056 = v1072;
    v1057 = v1073;
    v1058 = v1074;
    v1039 = 6;
    sub_2146DA1C8();
    v1036 = v1052;
    v1037 = v1053;
    *v1038 = *v1054;
    *&v1038[10] = *&v1054[10];
    v1032 = v1048;
    v1033 = v1049;
    v1034 = v1050;
    v1035 = v1051;
    v1028 = v1044;
    v1029 = v1045;
    v1030 = v1046;
    v1031 = v1047;
    v1024 = v1040;
    v1025 = v1041;
    v1026 = v1042;
    v1027 = v1043;
    v1008 = 7;
    sub_2146DA1C8();
    v1005 = v1021;
    v1006 = v1022;
    *v1007 = *v1023;
    *&v1007[10] = *&v1023[10];
    v1001 = v1017;
    v1002 = v1018;
    v1003 = v1019;
    v1004 = v1020;
    v997 = v1013;
    v998 = v1014;
    v999 = v1015;
    v1000 = v1016;
    v993 = v1009;
    v994 = v1010;
    v995 = v1011;
    v996 = v1012;
    v977 = 8;
    sub_2146DA1C8();
    v974 = v990;
    v975 = v991;
    *v976 = *v992;
    *&v976[10] = *&v992[10];
    v970 = v986;
    v971 = v987;
    v972 = v988;
    v973 = v989;
    v966 = v982;
    v967 = v983;
    v968 = v984;
    v969 = v985;
    v962 = v978;
    v963 = v979;
    v964 = v980;
    v965 = v981;
    v946 = 9;
    sub_2146DA1C8();
    v943 = v959;
    v944 = v960;
    *v945 = *v961;
    *&v945[10] = *&v961[10];
    v939 = v955;
    v940 = v956;
    v941 = v957;
    v942 = v958;
    v935 = v951;
    v936 = v952;
    v937 = v953;
    v938 = v954;
    v931 = v947;
    v932 = v948;
    v933 = v949;
    v934 = v950;
    v915 = 10;
    sub_2146DA1C8();
    v912 = v928;
    v913 = v929;
    *v914 = *v930;
    *&v914[10] = *&v930[10];
    v908 = v924;
    v909 = v925;
    v910 = v926;
    v911 = v927;
    v904 = v920;
    v905 = v921;
    v906 = v922;
    v907 = v923;
    v900 = v916;
    v901 = v917;
    v902 = v918;
    v903 = v919;
    v884 = 11;
    sub_2146DA1C8();
    v881 = v897;
    v882 = v898;
    *v883 = *v899;
    *&v883[10] = *&v899[10];
    v877 = v893;
    v878 = v894;
    v879 = v895;
    v880 = v896;
    v873 = v889;
    v874 = v890;
    v875 = v891;
    v876 = v892;
    v869 = v885;
    v870 = v886;
    v871 = v887;
    v872 = v888;
    v853 = 12;
    sub_2146DA1C8();
    v850 = v866;
    v851 = v867;
    *v852 = *v868;
    *&v852[10] = *&v868[10];
    v846 = v862;
    v847 = v863;
    v848 = v864;
    v849 = v865;
    v842 = v858;
    v843 = v859;
    v844 = v860;
    v845 = v861;
    v838 = v854;
    v839 = v855;
    v840 = v856;
    v841 = v857;
    v822 = 13;
    sub_2146DA1C8();
    v819 = v835;
    v820 = v836;
    *v821 = *v837;
    *&v821[10] = *&v837[10];
    v815 = v831;
    v816 = v832;
    v817 = v833;
    v818 = v834;
    v811 = v827;
    v812 = v828;
    v813 = v829;
    v814 = v830;
    v807 = v823;
    v808 = v824;
    v809 = v825;
    v810 = v826;
    v791 = 14;
    sub_2146DA1C8();
    v788 = v804;
    v789 = v805;
    *v790 = *v806;
    *&v790[10] = *&v806[10];
    v784 = v800;
    v785 = v801;
    v786 = v802;
    v787 = v803;
    v780 = v796;
    v781 = v797;
    v782 = v798;
    v783 = v799;
    v776 = v792;
    v777 = v793;
    v778 = v794;
    v779 = v795;
    v760 = 15;
    sub_2146DA1C8();
    v757 = v773;
    v758 = v774;
    *v759 = *v775;
    *&v759[10] = *&v775[10];
    v753 = v769;
    v754 = v770;
    v755 = v771;
    v756 = v772;
    v749 = v765;
    v750 = v766;
    v751 = v767;
    v752 = v768;
    v745 = v761;
    v746 = v762;
    v747 = v763;
    v748 = v764;
    v729 = 16;
    sub_2146DA1C8();
    v726 = v742;
    v727 = v743;
    *v728 = *v744;
    *&v728[10] = *&v744[10];
    v722 = v738;
    v723 = v739;
    v724 = v740;
    v725 = v741;
    v718 = v734;
    v719 = v735;
    v720 = v736;
    v721 = v737;
    v714 = v730;
    v715 = v731;
    v716 = v732;
    v717 = v733;
    v698 = 17;
    sub_2146DA1C8();
    v695 = v711;
    v696 = v712;
    *v697 = *v713;
    *&v697[10] = *&v713[10];
    v691 = v707;
    v692 = v708;
    v693 = v709;
    v694 = v710;
    v687 = v703;
    v688 = v704;
    v689 = v705;
    v690 = v706;
    v683 = v699;
    v684 = v700;
    v685 = v701;
    v686 = v702;
    v667 = 18;
    sub_2146DA1C8();
    v664 = v680;
    v665 = v681;
    *v666 = *v682;
    *&v666[10] = *&v682[10];
    v660 = v676;
    v661 = v677;
    v662 = v678;
    v663 = v679;
    v656 = v672;
    v657 = v673;
    v658 = v674;
    v659 = v675;
    v652 = v668;
    v653 = v669;
    v654 = v670;
    v655 = v671;
    v636 = 19;
    sub_2146DA1C8();
    v633 = v649;
    v634 = v650;
    *v635 = *v651;
    *&v635[10] = *&v651[10];
    v629 = v645;
    v630 = v646;
    v631 = v647;
    v632 = v648;
    v625 = v641;
    v626 = v642;
    v627 = v643;
    v628 = v644;
    v621 = v637;
    v622 = v638;
    v623 = v639;
    v624 = v640;
    v605 = 20;
    sub_2146DA1C8();
    v602 = v618;
    v603 = v619;
    *v604 = *v620;
    *&v604[10] = *&v620[10];
    v598 = v614;
    v599 = v615;
    v600 = v616;
    v601 = v617;
    v594 = v610;
    v595 = v611;
    v596 = v612;
    v597 = v613;
    v590 = v606;
    v591 = v607;
    v592 = v608;
    v593 = v609;
    v574 = 21;
    sub_2146DA1C8();
    v571 = v587;
    v572 = v588;
    *v573 = *v589;
    *&v573[10] = *&v589[10];
    v567 = v583;
    v568 = v584;
    v569 = v585;
    v570 = v586;
    v563 = v579;
    v564 = v580;
    v565 = v581;
    v566 = v582;
    v559 = v575;
    v560 = v576;
    v561 = v577;
    v562 = v578;
    v543 = 22;
    sub_2146DA1C8();
    v540 = v556;
    v541 = v557;
    *v542 = *v558;
    *&v542[10] = *&v558[10];
    v536 = v552;
    v537 = v553;
    v538 = v554;
    v539 = v555;
    v532 = v548;
    v533 = v549;
    v534 = v550;
    v535 = v551;
    v528 = v544;
    v529 = v545;
    v530 = v546;
    v531 = v547;
    v512 = 23;
    sub_2146DA1C8();
    v509 = v525;
    v510 = v526;
    *v511 = *v527;
    *&v511[10] = *&v527[10];
    v505 = v521;
    v506 = v522;
    v507 = v523;
    v508 = v524;
    v501 = v517;
    v502 = v518;
    v503 = v519;
    v504 = v520;
    v497 = v513;
    v498 = v514;
    v499 = v515;
    v500 = v516;
    v481 = 24;
    sub_2146DA1C8();
    v478 = v494;
    v479 = v495;
    *v480 = *v496;
    *&v480[10] = *&v496[10];
    v474 = v490;
    v475 = v491;
    v476 = v492;
    v477 = v493;
    v470 = v486;
    v471 = v487;
    v472 = v488;
    v473 = v489;
    v466 = v482;
    v467 = v483;
    v468 = v484;
    v469 = v485;
    v450 = 25;
    sub_2146DA1C8();
    v447 = v463;
    v448 = v464;
    *v449 = *v465;
    *&v449[10] = *&v465[10];
    v443 = v459;
    v444 = v460;
    v445 = v461;
    v446 = v462;
    v439 = v455;
    v440 = v456;
    v441 = v457;
    v442 = v458;
    v435 = v451;
    v436 = v452;
    v437 = v453;
    v438 = v454;
    v419 = 26;
    sub_2146DA1C8();
    v416 = v432;
    v417 = v433;
    *v418 = *v434;
    *&v418[10] = *&v434[10];
    v412 = v428;
    v413 = v429;
    v414 = v430;
    v415 = v431;
    v408 = v424;
    v409 = v425;
    v410 = v426;
    v411 = v427;
    v404 = v420;
    v405 = v421;
    v406 = v422;
    v407 = v423;
    v388 = 27;
    sub_2146DA1C8();
    v385 = v401;
    v386 = v402;
    *v387 = *v403;
    *&v387[10] = *&v403[10];
    v381 = v397;
    v382 = v398;
    v383 = v399;
    v384 = v400;
    v377 = v393;
    v378 = v394;
    v379 = v395;
    v380 = v396;
    v373 = v389;
    v374 = v390;
    v375 = v391;
    v376 = v392;
    v357 = 28;
    sub_2146DA1C8();
    v354 = v370;
    v355 = v371;
    *v356 = *v372;
    *&v356[10] = *&v372[10];
    v350 = v366;
    v351 = v367;
    v352 = v368;
    v353 = v369;
    v346 = v362;
    v347 = v363;
    v348 = v364;
    v349 = v365;
    v342 = v358;
    v343 = v359;
    v344 = v360;
    v345 = v361;
    v326 = 29;
    sub_2146DA1C8();
    v323 = v339;
    v324 = v340;
    *v325 = *v341;
    *&v325[10] = *&v341[10];
    v319 = v335;
    v320 = v336;
    v321 = v337;
    v322 = v338;
    v315 = v331;
    v316 = v332;
    v317 = v333;
    v318 = v334;
    v311 = v327;
    v312 = v328;
    v313 = v329;
    v314 = v330;
    v295 = 30;
    sub_2146DA1C8();
    v292 = v308;
    v293 = v309;
    *v294 = *v310;
    *&v294[10] = *&v310[10];
    v288 = v304;
    v289 = v305;
    v290 = v306;
    v291 = v307;
    v284 = v300;
    v285 = v301;
    v286 = v302;
    v287 = v303;
    v280 = v296;
    v281 = v297;
    v282 = v298;
    v283 = v299;
    v264 = 31;
    sub_2146DA1C8();
    v261 = v277;
    v262 = v278;
    *v263 = *v279;
    *&v263[10] = *&v279[10];
    v257 = v273;
    v258 = v274;
    v259 = v275;
    v260 = v276;
    v253 = v269;
    v254 = v270;
    v255 = v271;
    v256 = v272;
    v249 = v265;
    v250 = v266;
    v251 = v267;
    v252 = v268;
    v233 = 32;
    sub_2146DA1C8();
    v230 = v246;
    v231 = v247;
    *v232 = *v248;
    *&v232[10] = *&v248[10];
    v226 = v242;
    v227 = v243;
    v228 = v244;
    v229 = v245;
    v222 = v238;
    v223 = v239;
    v224 = v240;
    v225 = v241;
    v218 = v234;
    v219 = v235;
    v220 = v236;
    v221 = v237;
    v202 = 33;
    sub_2146DA1C8();
    v199 = v215;
    v200 = v216;
    *v201 = *v217;
    *&v201[10] = *&v217[10];
    v195 = v211;
    v196 = v212;
    v197 = v213;
    v198 = v214;
    v191 = v207;
    v192 = v208;
    v193 = v209;
    v194 = v210;
    v187 = v203;
    v188 = v204;
    v189 = v205;
    v190 = v206;
    v171 = 34;
    sub_2146DA1C8();
    v168 = v184;
    v169 = v185;
    *v170 = *v186;
    *&v170[10] = *&v186[10];
    v164 = v180;
    v165 = v181;
    v166 = v182;
    v167 = v183;
    v160 = v176;
    v161 = v177;
    v162 = v178;
    v163 = v179;
    v156 = v172;
    v157 = v173;
    v158 = v174;
    v159 = v175;
    v140 = 35;
    sub_2146DA1C8();
    v137 = v153;
    v138 = v154;
    *v139 = *v155;
    *&v139[10] = *&v155[10];
    v133 = v149;
    v134 = v150;
    v135 = v151;
    v136 = v152;
    v129 = v145;
    v130 = v146;
    v131 = v147;
    v132 = v148;
    v125 = v141;
    v126 = v142;
    v127 = v143;
    v128 = v144;
    v109 = 36;
    sub_2146DA1C8();
    v106 = v122;
    v107 = v123;
    *v108 = *v124;
    *&v108[10] = *&v124[10];
    v102 = v118;
    v103 = v119;
    v104 = v120;
    v105 = v121;
    v98 = v114;
    v99 = v115;
    v100 = v116;
    v101 = v117;
    v94 = v110;
    v95 = v111;
    v96 = v112;
    v97 = v113;
    v78 = 37;
    sub_2146DA1C8();
    v75 = v91;
    v76 = v92;
    *v77 = *v93;
    *&v77[10] = *&v93[10];
    v71 = v87;
    v72 = v88;
    v73 = v89;
    v74 = v90;
    v67 = v83;
    v68 = v84;
    v69 = v85;
    v70 = v86;
    v63 = v79;
    v64 = v80;
    v65 = v81;
    v66 = v82;
    v47 = 38;
    sub_2146DA1C8();
    v44 = v60;
    v45 = v61;
    *v46 = *v62;
    *&v46[10] = *&v62[10];
    v40 = v56;
    v41 = v57;
    v42 = v58;
    v43 = v59;
    v36 = v52;
    v37 = v53;
    v38 = v54;
    v39 = v55;
    v32 = v48;
    v33 = v49;
    v34 = v50;
    v35 = v51;
    v16 = 39;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *&v15[10218] = *&v31[10];
    *&v15[490] = *&v1193[10];
    *&v15[746] = *&v1162[10];
    *&v15[1002] = *&v1131[10];
    *&v15[1258] = *&v1100[10];
    *&v15[1514] = *&v1069[10];
    *&v15[1770] = *&v1038[10];
    *&v15[2026] = *&v1007[10];
    *&v15[2282] = *&v976[10];
    *&v15[10176] = v29;
    *&v15[10192] = v30;
    *&v15[10208] = *v31;
    *&v15[10112] = v25;
    *&v15[10128] = v26;
    *&v15[10144] = v27;
    *&v15[10160] = v28;
    *&v15[10048] = v21;
    *&v15[10064] = v22;
    *&v15[10080] = v23;
    *&v15[10096] = v24;
    *&v15[9984] = v17;
    *&v15[10000] = v18;
    *&v15[10016] = v19;
    *&v15[10032] = v20;
    *&v15[192] = v1222;
    *&v15[208] = v1223;
    *&v15[224] = *v1224;
    *&v15[234] = *&v1224[10];
    *&v15[128] = v1218;
    *&v15[144] = v1219;
    *&v15[160] = v1220;
    *&v15[176] = v1221;
    *&v15[64] = v1214;
    *&v15[80] = v1215;
    *&v15[96] = v1216;
    *&v15[112] = v1217;
    *v15 = v1210;
    *&v15[16] = v1211;
    *&v15[32] = v1212;
    *&v15[48] = v1213;
    *&v15[464] = v1192;
    *&v15[480] = *v1193;
    *&v15[400] = v1188;
    *&v15[416] = v1189;
    *&v15[432] = v1190;
    *&v15[448] = v1191;
    *&v15[336] = v1184;
    *&v15[352] = v1185;
    *&v15[368] = v1186;
    *&v15[384] = v1187;
    *&v15[256] = v1179;
    *&v15[272] = v1180;
    *&v15[288] = v1181;
    *&v15[304] = v1182;
    *&v15[320] = v1183;
    *&v15[704] = v1160;
    *&v15[720] = v1161;
    *&v15[640] = v1156;
    *&v15[656] = v1157;
    *&v15[672] = v1158;
    *&v15[688] = v1159;
    *&v15[576] = v1152;
    *&v15[592] = v1153;
    *&v15[608] = v1154;
    *&v15[624] = v1155;
    *&v15[512] = v1148;
    *&v15[528] = v1149;
    *&v15[544] = v1150;
    *&v15[560] = v1151;
    *&v15[976] = v1130;
    *&v15[992] = *v1131;
    *&v15[912] = v1126;
    *&v15[928] = v1127;
    *&v15[944] = v1128;
    *&v15[960] = v1129;
    *&v15[848] = v1122;
    *&v15[864] = v1123;
    *&v15[880] = v1124;
    *&v15[896] = v1125;
    *&v15[736] = *v1162;
    *&v15[768] = v1117;
    *&v15[784] = v1118;
    *&v15[800] = v1119;
    *&v15[816] = v1120;
    *&v15[832] = v1121;
    *&v15[1216] = v1098;
    *&v15[1232] = v1099;
    *&v15[1248] = *v1100;
    *&v15[1152] = v1094;
    *&v15[1168] = v1095;
    *&v15[1184] = v1096;
    *&v15[1200] = v1097;
    *&v15[1088] = v1090;
    *&v15[1104] = v1091;
    *&v15[1120] = v1092;
    *&v15[1136] = v1093;
    *&v15[1024] = v1086;
    *&v15[1040] = v1087;
    *&v15[1056] = v1088;
    *&v15[1072] = v1089;
    *&v15[1472] = v1067;
    *&v15[1488] = v1068;
    *&v15[1504] = *v1069;
    *&v15[1408] = v1063;
    *&v15[1424] = v1064;
    *&v15[1440] = v1065;
    *&v15[1456] = v1066;
    *&v15[1344] = v1059;
    *&v15[1360] = v1060;
    *&v15[1376] = v1061;
    *&v15[1392] = v1062;
    *&v15[1280] = v1055;
    *&v15[1296] = v1056;
    *&v15[1312] = v1057;
    *&v15[1328] = v1058;
    *&v15[1728] = v1036;
    *&v15[1744] = v1037;
    *&v15[1760] = *v1038;
    *&v15[1664] = v1032;
    *&v15[1680] = v1033;
    *&v15[1696] = v1034;
    *&v15[1712] = v1035;
    *&v15[1600] = v1028;
    *&v15[1616] = v1029;
    *&v15[1632] = v1030;
    *&v15[1648] = v1031;
    *&v15[1536] = v1024;
    *&v15[1552] = v1025;
    *&v15[1568] = v1026;
    *&v15[1584] = v1027;
    *&v15[1984] = v1005;
    *&v15[2000] = v1006;
    *&v15[2016] = *v1007;
    *&v15[1920] = v1001;
    *&v15[1936] = v1002;
    *&v15[1952] = v1003;
    *&v15[1968] = v1004;
    *&v15[1856] = v997;
    *&v15[1872] = v998;
    *&v15[1888] = v999;
    *&v15[1904] = v1000;
    *&v15[1792] = v993;
    *&v15[1808] = v994;
    *&v15[1824] = v995;
    *&v15[1840] = v996;
    *&v15[2240] = v974;
    *&v15[2256] = v975;
    *&v15[2272] = *v976;
    *&v15[2176] = v970;
    *&v15[2192] = v971;
    *&v15[2208] = v972;
    *&v15[2224] = v973;
    *&v15[2112] = v966;
    *&v15[2128] = v967;
    *&v15[2144] = v968;
    *&v15[2160] = v969;
    *&v15[2048] = v962;
    *&v15[2064] = v963;
    *&v15[2080] = v964;
    *&v15[2096] = v965;
    *&v15[2538] = *&v945[10];
    *&v15[2496] = v943;
    *&v15[2512] = v944;
    *&v15[2528] = *v945;
    *&v15[2432] = v939;
    *&v15[2448] = v940;
    *&v15[2464] = v941;
    *&v15[2480] = v942;
    *&v15[2368] = v935;
    *&v15[2384] = v936;
    *&v15[2400] = v937;
    *&v15[2416] = v938;
    *&v15[2304] = v931;
    *&v15[2320] = v932;
    *&v15[2336] = v933;
    *&v15[2352] = v934;
    *&v15[2794] = *&v914[10];
    *&v15[2752] = v912;
    *&v15[2768] = v913;
    *&v15[2784] = *v914;
    *&v15[2688] = v908;
    *&v15[2704] = v909;
    *&v15[2720] = v910;
    *&v15[2736] = v911;
    *&v15[2624] = v904;
    *&v15[2640] = v905;
    *&v15[2656] = v906;
    *&v15[2672] = v907;
    *&v15[2560] = v900;
    *&v15[2576] = v901;
    *&v15[2592] = v902;
    *&v15[2608] = v903;
    *&v15[3050] = *&v883[10];
    *&v15[3008] = v881;
    *&v15[3024] = v882;
    *&v15[3040] = *v883;
    *&v15[2944] = v877;
    *&v15[2960] = v878;
    *&v15[2976] = v879;
    *&v15[2992] = v880;
    *&v15[2880] = v873;
    *&v15[2896] = v874;
    *&v15[2912] = v875;
    *&v15[2928] = v876;
    *&v15[2816] = v869;
    *&v15[2832] = v870;
    *&v15[2848] = v871;
    *&v15[2864] = v872;
    *&v15[3306] = *&v852[10];
    *&v15[3264] = v850;
    *&v15[3280] = v851;
    *&v15[3296] = *v852;
    *&v15[3200] = v846;
    *&v15[3216] = v847;
    *&v15[3232] = v848;
    *&v15[3248] = v849;
    *&v15[3136] = v842;
    *&v15[3152] = v843;
    *&v15[3168] = v844;
    *&v15[3184] = v845;
    *&v15[3072] = v838;
    *&v15[3088] = v839;
    *&v15[3104] = v840;
    *&v15[3120] = v841;
    *&v15[3562] = *&v821[10];
    *&v15[3520] = v819;
    *&v15[3536] = v820;
    *&v15[3552] = *v821;
    *&v15[3456] = v815;
    *&v15[3472] = v816;
    *&v15[3488] = v817;
    *&v15[3504] = v818;
    *&v15[3392] = v811;
    *&v15[3408] = v812;
    *&v15[3424] = v813;
    *&v15[3440] = v814;
    *&v15[3328] = v807;
    *&v15[3344] = v808;
    *&v15[3360] = v809;
    *&v15[3376] = v810;
    *&v15[3818] = *&v790[10];
    *&v15[3776] = v788;
    *&v15[3792] = v789;
    *&v15[3808] = *v790;
    *&v15[3712] = v784;
    *&v15[3728] = v785;
    *&v15[3744] = v786;
    *&v15[3760] = v787;
    *&v15[3648] = v780;
    *&v15[3664] = v781;
    *&v15[3680] = v782;
    *&v15[3696] = v783;
    *&v15[3584] = v776;
    *&v15[3600] = v777;
    *&v15[3616] = v778;
    *&v15[3632] = v779;
    *&v15[4074] = *&v759[10];
    *&v15[4032] = v757;
    *&v15[4048] = v758;
    *&v15[4064] = *v759;
    *&v15[3968] = v753;
    *&v15[3984] = v754;
    *&v15[4000] = v755;
    *&v15[4016] = v756;
    *&v15[3904] = v749;
    *&v15[3920] = v750;
    *&v15[3936] = v751;
    *&v15[3952] = v752;
    *&v15[3840] = v745;
    *&v15[3856] = v746;
    *&v15[3872] = v747;
    *&v15[3888] = v748;
    *&v15[4330] = *&v728[10];
    *&v15[4288] = v726;
    *&v15[4304] = v727;
    *&v15[4320] = *v728;
    *&v15[4224] = v722;
    *&v15[4240] = v723;
    *&v15[4256] = v724;
    *&v15[4272] = v725;
    *&v15[4160] = v718;
    *&v15[4176] = v719;
    *&v15[4192] = v720;
    *&v15[4208] = v721;
    *&v15[4096] = v714;
    *&v15[4112] = v715;
    *&v15[4128] = v716;
    *&v15[4144] = v717;
    *&v15[4586] = *&v697[10];
    *&v15[4544] = v695;
    *&v15[4560] = v696;
    *&v15[4576] = *v697;
    *&v15[4480] = v691;
    *&v15[4496] = v692;
    *&v15[4512] = v693;
    *&v15[4528] = v694;
    *&v15[4416] = v687;
    *&v15[4432] = v688;
    *&v15[4448] = v689;
    *&v15[4464] = v690;
    *&v15[4352] = v683;
    *&v15[4368] = v684;
    *&v15[4384] = v685;
    *&v15[4400] = v686;
    *&v15[4842] = *&v666[10];
    *&v15[4800] = v664;
    *&v15[4816] = v665;
    *&v15[4832] = *v666;
    *&v15[4736] = v660;
    *&v15[4752] = v661;
    *&v15[4768] = v662;
    *&v15[4784] = v663;
    *&v15[4672] = v656;
    *&v15[4688] = v657;
    *&v15[4704] = v658;
    *&v15[4720] = v659;
    *&v15[4608] = v652;
    *&v15[4624] = v653;
    *&v15[4640] = v654;
    *&v15[4656] = v655;
    *&v15[5098] = *&v635[10];
    *&v15[5056] = v633;
    *&v15[5072] = v634;
    *&v15[5088] = *v635;
    *&v15[4992] = v629;
    *&v15[5008] = v630;
    *&v15[5024] = v631;
    *&v15[5040] = v632;
    *&v15[4928] = v625;
    *&v15[4944] = v626;
    *&v15[4960] = v627;
    *&v15[4976] = v628;
    *&v15[4864] = v621;
    *&v15[4880] = v622;
    *&v15[4896] = v623;
    *&v15[4912] = v624;
    *&v15[5354] = *&v604[10];
    *&v15[5312] = v602;
    *&v15[5328] = v603;
    *&v15[5344] = *v604;
    *&v15[5248] = v598;
    *&v15[5264] = v599;
    *&v15[5280] = v600;
    *&v15[5296] = v601;
    *&v15[5184] = v594;
    *&v15[5200] = v595;
    *&v15[5216] = v596;
    *&v15[5232] = v597;
    *&v15[5120] = v590;
    *&v15[5136] = v591;
    *&v15[5152] = v592;
    *&v15[5168] = v593;
    *&v15[5610] = *&v573[10];
    *&v15[5568] = v571;
    *&v15[5584] = v572;
    *&v15[5600] = *v573;
    *&v15[5504] = v567;
    *&v15[5520] = v568;
    *&v15[5536] = v569;
    *&v15[5552] = v570;
    *&v15[5440] = v563;
    *&v15[5456] = v564;
    *&v15[5472] = v565;
    *&v15[5488] = v566;
    *&v15[5376] = v559;
    *&v15[5392] = v560;
    *&v15[5408] = v561;
    *&v15[5424] = v562;
    *&v15[5866] = *&v542[10];
    *&v15[5824] = v540;
    *&v15[5840] = v541;
    *&v15[5856] = *v542;
    *&v15[5760] = v536;
    *&v15[5776] = v537;
    *&v15[5792] = v538;
    *&v15[5808] = v539;
    *&v15[5696] = v532;
    *&v15[5712] = v533;
    *&v15[5728] = v534;
    *&v15[5744] = v535;
    *&v15[5632] = v528;
    *&v15[5648] = v529;
    *&v15[5664] = v530;
    *&v15[5680] = v531;
    *&v15[6122] = *&v511[10];
    *&v15[6080] = v509;
    *&v15[6096] = v510;
    *&v15[6112] = *v511;
    *&v15[6016] = v505;
    *&v15[6032] = v506;
    *&v15[6048] = v507;
    *&v15[6064] = v508;
    *&v15[5952] = v501;
    *&v15[5968] = v502;
    *&v15[5984] = v503;
    *&v15[6000] = v504;
    *&v15[5888] = v497;
    *&v15[5904] = v498;
    *&v15[5920] = v499;
    *&v15[5936] = v500;
    *&v15[6378] = *&v480[10];
    *&v15[6336] = v478;
    *&v15[6352] = v479;
    *&v15[6368] = *v480;
    *&v15[6272] = v474;
    *&v15[6288] = v475;
    *&v15[6304] = v476;
    *&v15[6320] = v477;
    *&v15[6208] = v470;
    *&v15[6224] = v471;
    *&v15[6240] = v472;
    *&v15[6256] = v473;
    *&v15[6144] = v466;
    *&v15[6160] = v467;
    *&v15[6176] = v468;
    *&v15[6192] = v469;
    *&v15[6634] = *&v449[10];
    *&v15[6592] = v447;
    *&v15[6608] = v448;
    *&v15[6624] = *v449;
    *&v15[6528] = v443;
    *&v15[6544] = v444;
    *&v15[6560] = v445;
    *&v15[6576] = v446;
    *&v15[6464] = v439;
    *&v15[6480] = v440;
    *&v15[6496] = v441;
    *&v15[6512] = v442;
    *&v15[6400] = v435;
    *&v15[6416] = v436;
    *&v15[6432] = v437;
    *&v15[6448] = v438;
    *&v15[6890] = *&v418[10];
    *&v15[6848] = v416;
    *&v15[6864] = v417;
    *&v15[6880] = *v418;
    *&v15[6784] = v412;
    *&v15[6800] = v413;
    *&v15[6816] = v414;
    *&v15[6832] = v415;
    *&v15[6720] = v408;
    *&v15[6736] = v409;
    *&v15[6752] = v410;
    *&v15[6768] = v411;
    *&v15[6656] = v404;
    *&v15[6672] = v405;
    *&v15[6688] = v406;
    *&v15[6704] = v407;
    *&v15[7146] = *&v387[10];
    *&v15[7104] = v385;
    *&v15[7120] = v386;
    *&v15[7136] = *v387;
    *&v15[7040] = v381;
    *&v15[7056] = v382;
    *&v15[7072] = v383;
    *&v15[7088] = v384;
    *&v15[6976] = v377;
    *&v15[6992] = v378;
    *&v15[7008] = v379;
    *&v15[7024] = v380;
    *&v15[6912] = v373;
    *&v15[6928] = v374;
    *&v15[6944] = v375;
    *&v15[6960] = v376;
    *&v15[7402] = *&v356[10];
    *&v15[7360] = v354;
    *&v15[7376] = v355;
    *&v15[7392] = *v356;
    *&v15[7296] = v350;
    *&v15[7312] = v351;
    *&v15[7328] = v352;
    *&v15[7344] = v353;
    *&v15[7232] = v346;
    *&v15[7248] = v347;
    *&v15[7264] = v348;
    *&v15[7280] = v349;
    *&v15[7168] = v342;
    *&v15[7184] = v343;
    *&v15[7200] = v344;
    *&v15[7216] = v345;
    *&v15[7658] = *&v325[10];
    *&v15[7616] = v323;
    *&v15[7632] = v324;
    *&v15[7648] = *v325;
    *&v15[7552] = v319;
    *&v15[7568] = v320;
    *&v15[7584] = v321;
    *&v15[7600] = v322;
    *&v15[7488] = v315;
    *&v15[7504] = v316;
    *&v15[7520] = v317;
    *&v15[7536] = v318;
    *&v15[7424] = v311;
    *&v15[7440] = v312;
    *&v15[7456] = v313;
    *&v15[7472] = v314;
    *&v15[7914] = *&v294[10];
    *&v15[7872] = v292;
    *&v15[7888] = v293;
    *&v15[7904] = *v294;
    *&v15[7808] = v288;
    *&v15[7824] = v289;
    *&v15[7840] = v290;
    *&v15[7856] = v291;
    *&v15[7744] = v284;
    *&v15[7760] = v285;
    *&v15[7776] = v286;
    *&v15[7792] = v287;
    *&v15[7680] = v280;
    *&v15[7696] = v281;
    *&v15[7712] = v282;
    *&v15[7728] = v283;
    *&v15[8170] = *&v263[10];
    *&v15[8128] = v261;
    *&v15[8144] = v262;
    *&v15[8160] = *v263;
    *&v15[8064] = v257;
    *&v15[8080] = v258;
    *&v15[8096] = v259;
    *&v15[8112] = v260;
    *&v15[8000] = v253;
    *&v15[8016] = v254;
    *&v15[8032] = v255;
    *&v15[8048] = v256;
    *&v15[7936] = v249;
    *&v15[7952] = v250;
    *&v15[7968] = v251;
    *&v15[7984] = v252;
    *&v15[8426] = *&v232[10];
    *&v15[8384] = v230;
    *&v15[8400] = v231;
    *&v15[8416] = *v232;
    *&v15[8320] = v226;
    *&v15[8336] = v227;
    *&v15[8352] = v228;
    *&v15[8368] = v229;
    *&v15[8256] = v222;
    *&v15[8272] = v223;
    *&v15[8288] = v224;
    *&v15[8304] = v225;
    *&v15[0x2000] = v218;
    *&v15[8208] = v219;
    *&v15[8224] = v220;
    *&v15[8240] = v221;
    *&v15[8682] = *&v201[10];
    *&v15[8640] = v199;
    *&v15[8656] = v200;
    *&v15[8672] = *v201;
    *&v15[8576] = v195;
    *&v15[8592] = v196;
    *&v15[8608] = v197;
    *&v15[8624] = v198;
    *&v15[8512] = v191;
    *&v15[8528] = v192;
    *&v15[8544] = v193;
    *&v15[8560] = v194;
    *&v15[8448] = v187;
    *&v15[8464] = v188;
    *&v15[8480] = v189;
    *&v15[8496] = v190;
    *&v15[8938] = *&v170[10];
    *&v15[8896] = v168;
    *&v15[8912] = v169;
    *&v15[8928] = *v170;
    *&v15[8832] = v164;
    *&v15[8848] = v165;
    *&v15[8864] = v166;
    *&v15[8880] = v167;
    *&v15[8768] = v160;
    *&v15[8784] = v161;
    *&v15[8800] = v162;
    *&v15[8816] = v163;
    *&v15[8704] = v156;
    *&v15[8720] = v157;
    *&v15[8736] = v158;
    *&v15[8752] = v159;
    *&v15[9194] = *&v139[10];
    *&v15[9152] = v137;
    *&v15[9168] = v138;
    *&v15[9184] = *v139;
    *&v15[9088] = v133;
    *&v15[9104] = v134;
    *&v15[9120] = v135;
    *&v15[9136] = v136;
    *&v15[9024] = v129;
    *&v15[9040] = v130;
    *&v15[9056] = v131;
    *&v15[9072] = v132;
    *&v15[8960] = v125;
    *&v15[8976] = v126;
    *&v15[8992] = v127;
    *&v15[9008] = v128;
    *&v15[9450] = *&v108[10];
    *&v15[9408] = v106;
    *&v15[9424] = v107;
    *&v15[9440] = *v108;
    *&v15[9344] = v102;
    *&v15[9360] = v103;
    *&v15[9376] = v104;
    *&v15[9392] = v105;
    *&v15[9280] = v98;
    *&v15[9296] = v99;
    *&v15[9312] = v100;
    *&v15[9328] = v101;
    *&v15[9216] = v94;
    *&v15[9232] = v95;
    *&v15[9248] = v96;
    *&v15[9264] = v97;
    *&v15[9706] = *&v77[10];
    *&v15[9664] = v75;
    *&v15[9680] = v76;
    *&v15[9696] = *v77;
    *&v15[9600] = v71;
    *&v15[9616] = v72;
    *&v15[9632] = v73;
    *&v15[9648] = v74;
    *&v15[9536] = v67;
    *&v15[9552] = v68;
    *&v15[9568] = v69;
    *&v15[9584] = v70;
    *&v15[9472] = v63;
    *&v15[9488] = v64;
    *&v15[9504] = v65;
    *&v15[9520] = v66;
    *&v15[9962] = *&v46[10];
    *&v15[9920] = v44;
    *&v15[9936] = v45;
    *&v15[9952] = *v46;
    *&v15[9856] = v40;
    *&v15[9872] = v41;
    *&v15[9888] = v42;
    *&v15[9904] = v43;
    *&v15[9792] = v36;
    *&v15[9808] = v37;
    *&v15[9824] = v38;
    *&v15[9840] = v39;
    *&v15[9728] = v32;
    *&v15[9744] = v33;
    *&v15[9760] = v34;
    *&v15[9776] = v35;
    memcpy(v14, v15, 0x27FAuLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(v1241);
}

uint64_t sub_214193478(uint64_t a1)
{
  v311 = MEMORY[0x28223BE20](a1);
  v312 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908470, &qword_2146F5058);
  v313 = *(v3 - 8);
  v314 = v3;
  v4 = *(v313 + 64);
  MEMORY[0x28223BE20](v3);
  v1635 = &v311 - v5;
  v6 = v1[13];
  v1047 = v1[12];
  v1048 = v6;
  v1049[0] = v1[14];
  *(v1049 + 10) = *(v1 + 234);
  v7 = v1[9];
  v1043 = v1[8];
  v1044 = v7;
  v8 = v1[11];
  v1045 = v1[10];
  v1046 = v8;
  v9 = v1[5];
  v1039 = v1[4];
  v1040 = v9;
  v10 = v1[7];
  v1041 = v1[6];
  v1042 = v10;
  v11 = v1[1];
  v1035 = *v1;
  v1036 = v11;
  v12 = v1[3];
  v1037 = v1[2];
  v1038 = v12;
  v13 = v1[29];
  v1062 = v1[28];
  v1063 = v13;
  v1064[0] = v1[30];
  *(v1064 + 10) = *(v1 + 490);
  v14 = v1[25];
  v1058 = v1[24];
  v1059 = v14;
  v15 = v1[27];
  v1060 = v1[26];
  v1061 = v15;
  v16 = v1[21];
  v1054 = v1[20];
  v1055 = v16;
  v17 = v1[23];
  v1056 = v1[22];
  v1057 = v17;
  v18 = v1[17];
  v1050 = v1[16];
  v1051 = v18;
  v19 = v1[19];
  v1052 = v1[18];
  v1053 = v19;
  v20 = v1[45];
  v1077 = v1[44];
  v1078 = v20;
  v1079[0] = v1[46];
  *(v1079 + 10) = *(v1 + 746);
  v21 = v1[41];
  v1073 = v1[40];
  v1074 = v21;
  v22 = v1[43];
  v1075 = v1[42];
  v1076 = v22;
  v23 = v1[37];
  v1069 = v1[36];
  v1070 = v23;
  v24 = v1[39];
  v1071 = v1[38];
  v1072 = v24;
  v25 = v1[33];
  v1065 = v1[32];
  v1066 = v25;
  v26 = v1[35];
  v1067 = v1[34];
  v1068 = v26;
  v27 = v1[61];
  v1092 = v1[60];
  v1093 = v27;
  v1094[0] = v1[62];
  *(v1094 + 10) = *(v1 + 1002);
  v28 = v1[57];
  v1088 = v1[56];
  v1089 = v28;
  v29 = v1[59];
  v1090 = v1[58];
  v1091 = v29;
  v30 = v1[53];
  v1084 = v1[52];
  v1085 = v30;
  v31 = v1[55];
  v1086 = v1[54];
  v1087 = v31;
  v32 = v1[49];
  v1080 = v1[48];
  v1081 = v32;
  v33 = v1[51];
  v1082 = v1[50];
  v1083 = v33;
  v34 = v1[77];
  v1107 = v1[76];
  v1108 = v34;
  v1109[0] = v1[78];
  *(v1109 + 10) = *(v1 + 1258);
  v35 = v1[73];
  v1103 = v1[72];
  v1104 = v35;
  v36 = v1[75];
  v1105 = v1[74];
  v1106 = v36;
  v37 = v1[69];
  v1099 = v1[68];
  v1100 = v37;
  v38 = v1[71];
  v1101 = v1[70];
  v1102 = v38;
  v39 = v1[65];
  v1095 = v1[64];
  v1096 = v39;
  v40 = v1[67];
  v1097 = v1[66];
  v1098 = v40;
  v41 = v1[93];
  v1122 = v1[92];
  v1123 = v41;
  v1124[0] = v1[94];
  *(v1124 + 10) = *(v1 + 1514);
  v42 = v1[89];
  v1118 = v1[88];
  v1119 = v42;
  v43 = v1[91];
  v1120 = v1[90];
  v1121 = v43;
  v44 = v1[85];
  v1114 = v1[84];
  v1115 = v44;
  v45 = v1[87];
  v1116 = v1[86];
  v1117 = v45;
  v46 = v1[81];
  v1110 = v1[80];
  v1111 = v46;
  v47 = v1[83];
  v1112 = v1[82];
  v1113 = v47;
  v48 = v1[109];
  v1137 = v1[108];
  v1138 = v48;
  v1139[0] = v1[110];
  *(v1139 + 10) = *(v1 + 1770);
  v49 = v1[105];
  v1133 = v1[104];
  v1134 = v49;
  v50 = v1[107];
  v1135 = v1[106];
  v1136 = v50;
  v51 = v1[101];
  v1129 = v1[100];
  v1130 = v51;
  v52 = v1[103];
  v1131 = v1[102];
  v1132 = v52;
  v53 = v1[97];
  v1125 = v1[96];
  v1126 = v53;
  v54 = v1[99];
  v1127 = v1[98];
  v1128 = v54;
  v55 = v1[125];
  v1152 = v1[124];
  v1153 = v55;
  v1154[0] = v1[126];
  *(v1154 + 10) = *(v1 + 2026);
  v56 = v1[121];
  v1148 = v1[120];
  v1149 = v56;
  v57 = v1[123];
  v1150 = v1[122];
  v1151 = v57;
  v58 = v1[117];
  v1144 = v1[116];
  v1145 = v58;
  v59 = v1[119];
  v1146 = v1[118];
  v1147 = v59;
  v60 = v1[113];
  v1140 = v1[112];
  v1141 = v60;
  v61 = v1[115];
  v1142 = v1[114];
  v1143 = v61;
  v62 = v1[141];
  v1167 = v1[140];
  v1168 = v62;
  v1169[0] = v1[142];
  *(v1169 + 10) = *(v1 + 2282);
  v63 = v1[137];
  v1163 = v1[136];
  v1164 = v63;
  v64 = v1[139];
  v1165 = v1[138];
  v1166 = v64;
  v65 = v1[133];
  v1159 = v1[132];
  v1160 = v65;
  v66 = v1[135];
  v1161 = v1[134];
  v1162 = v66;
  v67 = v1[129];
  v1155 = v1[128];
  v1156 = v67;
  v68 = v1[131];
  v1157 = v1[130];
  v1158 = v68;
  v69 = v1[157];
  v1182 = v1[156];
  v1183 = v69;
  v1184[0] = v1[158];
  *(v1184 + 10) = *(v1 + 2538);
  v70 = v1[153];
  v1178 = v1[152];
  v1179 = v70;
  v71 = v1[155];
  v1180 = v1[154];
  v1181 = v71;
  v72 = v1[149];
  v1174 = v1[148];
  v1175 = v72;
  v73 = v1[151];
  v1176 = v1[150];
  v1177 = v73;
  v74 = v1[145];
  v1170 = v1[144];
  v1171 = v74;
  v75 = v1[147];
  v1172 = v1[146];
  v1173 = v75;
  v76 = v1[173];
  v1197 = v1[172];
  v1198 = v76;
  v1199[0] = v1[174];
  *(v1199 + 10) = *(v1 + 2794);
  v77 = v1[169];
  v1193 = v1[168];
  v1194 = v77;
  v78 = v1[171];
  v1195 = v1[170];
  v1196 = v78;
  v79 = v1[165];
  v1189 = v1[164];
  v1190 = v79;
  v80 = v1[167];
  v1191 = v1[166];
  v1192 = v80;
  v81 = v1[161];
  v1185 = v1[160];
  v1186 = v81;
  v82 = v1[163];
  v1187 = v1[162];
  v1188 = v82;
  v83 = v1[189];
  v1212 = v1[188];
  v1213 = v83;
  v1214[0] = v1[190];
  *(v1214 + 10) = *(v1 + 3050);
  v84 = v1[185];
  v1208 = v1[184];
  v1209 = v84;
  v85 = v1[187];
  v1210 = v1[186];
  v1211 = v85;
  v86 = v1[181];
  v1204 = v1[180];
  v1205 = v86;
  v87 = v1[183];
  v1206 = v1[182];
  v1207 = v87;
  v88 = v1[177];
  v1200 = v1[176];
  v1201 = v88;
  v89 = v1[179];
  v1202 = v1[178];
  v1203 = v89;
  v90 = v1[205];
  v1227 = v1[204];
  v1228 = v90;
  v1229[0] = v1[206];
  *(v1229 + 10) = *(v1 + 3306);
  v91 = v1[201];
  v1223 = v1[200];
  v1224 = v91;
  v92 = v1[203];
  v1225 = v1[202];
  v1226 = v92;
  v93 = v1[197];
  v1219 = v1[196];
  v1220 = v93;
  v94 = v1[199];
  v1221 = v1[198];
  v1222 = v94;
  v95 = v1[193];
  v1215 = v1[192];
  v1216 = v95;
  v96 = v1[195];
  v1217 = v1[194];
  v1218 = v96;
  v97 = v1[221];
  v1242 = v1[220];
  v1243 = v97;
  v1244[0] = v1[222];
  *(v1244 + 10) = *(v1 + 3562);
  v98 = v1[217];
  v1238 = v1[216];
  v1239 = v98;
  v99 = v1[219];
  v1240 = v1[218];
  v1241 = v99;
  v100 = v1[213];
  v1234 = v1[212];
  v1235 = v100;
  v101 = v1[215];
  v1236 = v1[214];
  v1237 = v101;
  v102 = v1[209];
  v1230 = v1[208];
  v1231 = v102;
  v103 = v1[211];
  v1232 = v1[210];
  v1233 = v103;
  v104 = v1[237];
  v1257 = v1[236];
  v1258 = v104;
  v1259[0] = v1[238];
  *(v1259 + 10) = *(v1 + 3818);
  v105 = v1[233];
  v1253 = v1[232];
  v1254 = v105;
  v106 = v1[235];
  v1255 = v1[234];
  v1256 = v106;
  v107 = v1[229];
  v1249 = v1[228];
  v1250 = v107;
  v108 = v1[231];
  v1251 = v1[230];
  v1252 = v108;
  v109 = v1[225];
  v1245 = v1[224];
  v1246 = v109;
  v110 = v1[227];
  v1247 = v1[226];
  v1248 = v110;
  v111 = v1[253];
  v1272 = v1[252];
  v1273 = v111;
  v1274[0] = v1[254];
  *(v1274 + 10) = *(v1 + 4074);
  v112 = v1[249];
  v1268 = v1[248];
  v1269 = v112;
  v113 = v1[251];
  v1270 = v1[250];
  v1271 = v113;
  v114 = v1[245];
  v1264 = v1[244];
  v1265 = v114;
  v115 = v1[247];
  v1266 = v1[246];
  v1267 = v115;
  v116 = v1[241];
  v1260 = v1[240];
  v1261 = v116;
  v117 = v1[243];
  v1262 = v1[242];
  v1263 = v117;
  v118 = v1[269];
  v1287 = v1[268];
  v1288 = v118;
  v1289[0] = v1[270];
  *(v1289 + 10) = *(v1 + 4330);
  v119 = v1[265];
  v1283 = v1[264];
  v1284 = v119;
  v120 = v1[267];
  v1285 = v1[266];
  v1286 = v120;
  v121 = v1[261];
  v1279 = v1[260];
  v1280 = v121;
  v122 = v1[263];
  v1281 = v1[262];
  v1282 = v122;
  v123 = v1[257];
  v1275 = v1[256];
  v1276 = v123;
  v124 = v1[259];
  v1277 = v1[258];
  v1278 = v124;
  v125 = v1[285];
  v1302 = v1[284];
  v1303 = v125;
  v1304[0] = v1[286];
  *(v1304 + 10) = *(v1 + 4586);
  v126 = v1[281];
  v1298 = v1[280];
  v1299 = v126;
  v127 = v1[277];
  v128 = v1[283];
  v1300 = v1[282];
  v1301 = v128;
  v1294 = v1[276];
  v1295 = v127;
  v129 = v1[279];
  v1296 = v1[278];
  v1297 = v129;
  v130 = v1[273];
  v1290 = v1[272];
  v1291 = v130;
  v131 = v1[275];
  v132 = v1[301];
  v1292 = v1[274];
  v1293 = v131;
  v1317 = v1[300];
  v1318 = v132;
  v1319[0] = v1[302];
  *(v1319 + 10) = *(v1 + 4842);
  v133 = v1[299];
  v134 = v1[297];
  v1313 = v1[296];
  v1314 = v134;
  v1315 = v1[298];
  v1316 = v133;
  v135 = v1[293];
  v1309 = v1[292];
  v1310 = v135;
  v136 = v1[289];
  v137 = v1[295];
  v1311 = v1[294];
  v1312 = v137;
  v1305 = v1[288];
  v1306 = v136;
  v138 = v1[291];
  v1307 = v1[290];
  v1308 = v138;
  v139 = v1[313];
  v140 = v1[317];
  v1332 = v1[316];
  v1333 = v140;
  v1334[0] = v1[318];
  *(v1334 + 10) = *(v1 + 5098);
  v1328 = v1[312];
  v1329 = v139;
  v141 = v1[315];
  v1330 = v1[314];
  v1331 = v141;
  v142 = v1[311];
  v143 = v1[309];
  v1324 = v1[308];
  v1325 = v143;
  v1326 = v1[310];
  v1327 = v142;
  v144 = v1[305];
  v1320 = v1[304];
  v1321 = v144;
  v145 = v1[307];
  v1322 = v1[306];
  v1323 = v145;
  v146 = v1[333];
  v1347 = v1[332];
  v1348 = v146;
  v1349[0] = v1[334];
  *(v1349 + 10) = *(v1 + 5354);
  v147 = v1[329];
  v1343 = v1[328];
  v1344 = v147;
  v148 = v1[325];
  v149 = v1[331];
  v1345 = v1[330];
  v1346 = v149;
  v1339 = v1[324];
  v1340 = v148;
  v150 = v1[327];
  v1341 = v1[326];
  v1342 = v150;
  v151 = v1[321];
  v1335 = v1[320];
  v1336 = v151;
  v152 = v1[323];
  v153 = v1[349];
  v1337 = v1[322];
  v1338 = v152;
  v1362 = v1[348];
  v1363 = v153;
  v1364[0] = v1[350];
  *(v1364 + 10) = *(v1 + 5610);
  v154 = v1[347];
  v155 = v1[345];
  v1358 = v1[344];
  v1359 = v155;
  v1360 = v1[346];
  v1361 = v154;
  v156 = v1[341];
  v1354 = v1[340];
  v1355 = v156;
  v157 = v1[337];
  v158 = v1[343];
  v1356 = v1[342];
  v1357 = v158;
  v1350 = v1[336];
  v1351 = v157;
  v159 = v1[339];
  v1352 = v1[338];
  v1353 = v159;
  v160 = v1[361];
  v161 = v1[365];
  v1377 = v1[364];
  v1378 = v161;
  v1379[0] = v1[366];
  *(v1379 + 10) = *(v1 + 5866);
  v1373 = v1[360];
  v1374 = v160;
  v162 = v1[363];
  v1375 = v1[362];
  v1376 = v162;
  v163 = v1[359];
  v164 = v1[357];
  v1369 = v1[356];
  v1370 = v164;
  v1371 = v1[358];
  v1372 = v163;
  v165 = v1[353];
  v1365 = v1[352];
  v1366 = v165;
  v166 = v1[355];
  v1367 = v1[354];
  v1368 = v166;
  v167 = v1[381];
  v1392 = v1[380];
  v1393 = v167;
  v1394[0] = v1[382];
  *(v1394 + 10) = *(v1 + 6122);
  v168 = v1[377];
  v1388 = v1[376];
  v1389 = v168;
  v169 = v1[373];
  v170 = v1[379];
  v1390 = v1[378];
  v1391 = v170;
  v1384 = v1[372];
  v1385 = v169;
  v171 = v1[375];
  v1386 = v1[374];
  v1387 = v171;
  v172 = v1[369];
  v1380 = v1[368];
  v1381 = v172;
  v173 = v1[371];
  v174 = v1[397];
  v1382 = v1[370];
  v1383 = v173;
  v1407 = v1[396];
  v1408 = v174;
  v1409[0] = v1[398];
  *(v1409 + 10) = *(v1 + 6378);
  v175 = v1[393];
  v1403 = v1[392];
  v1404 = v175;
  v176 = v1[395];
  v1405 = v1[394];
  v1406 = v176;
  v177 = v1[389];
  v1399 = v1[388];
  v1400 = v177;
  v178 = v1[391];
  v1401 = v1[390];
  v1402 = v178;
  v179 = v1[385];
  v1395 = v1[384];
  v1396 = v179;
  v180 = v1[387];
  v1397 = v1[386];
  v1398 = v180;
  v181 = v1[413];
  v1422 = v1[412];
  v1423 = v181;
  v1424[0] = v1[414];
  *(v1424 + 10) = *(v1 + 6634);
  v182 = v1[409];
  v1418 = v1[408];
  v1419 = v182;
  v183 = v1[411];
  v1420 = v1[410];
  v1421 = v183;
  v184 = v1[405];
  v1414 = v1[404];
  v1415 = v184;
  v185 = v1[407];
  v1416 = v1[406];
  v1417 = v185;
  v186 = v1[401];
  v1410 = v1[400];
  v1411 = v186;
  v187 = v1[403];
  v1412 = v1[402];
  v1413 = v187;
  v188 = v1[429];
  v1437 = v1[428];
  v1438 = v188;
  v1439[0] = v1[430];
  *(v1439 + 10) = *(v1 + 6890);
  v189 = v1[425];
  v1433 = v1[424];
  v1434 = v189;
  v190 = v1[421];
  v191 = v1[427];
  v1435 = v1[426];
  v1436 = v191;
  v1429 = v1[420];
  v1430 = v190;
  v192 = v1[423];
  v1431 = v1[422];
  v1432 = v192;
  v193 = v1[417];
  v1425 = v1[416];
  v1426 = v193;
  v194 = v1[419];
  v195 = v1[445];
  v1427 = v1[418];
  v1428 = v194;
  v1452 = v1[444];
  v1453 = v195;
  v1454[0] = v1[446];
  *(v1454 + 10) = *(v1 + 7146);
  v196 = v1[443];
  v197 = v1[441];
  v1448 = v1[440];
  v1449 = v197;
  v1450 = v1[442];
  v1451 = v196;
  v198 = v1[437];
  v1444 = v1[436];
  v1445 = v198;
  v199 = v1[433];
  v200 = v1[439];
  v1446 = v1[438];
  v1447 = v200;
  v1440 = v1[432];
  v1441 = v199;
  v201 = v1[435];
  v1442 = v1[434];
  v1443 = v201;
  v202 = v1[457];
  v203 = v1[461];
  v1467 = v1[460];
  v1468 = v203;
  v1469[0] = v1[462];
  *(v1469 + 10) = *(v1 + 7402);
  v1463 = v1[456];
  v1464 = v202;
  v204 = v1[459];
  v1465 = v1[458];
  v1466 = v204;
  v205 = v1[455];
  v206 = v1[453];
  v1459 = v1[452];
  v1460 = v206;
  v1461 = v1[454];
  v1462 = v205;
  v207 = v1[449];
  v1455 = v1[448];
  v1456 = v207;
  v208 = v1[451];
  v1457 = v1[450];
  v1458 = v208;
  v209 = v1[477];
  v1482 = v1[476];
  v1483 = v209;
  v1484[0] = v1[478];
  *(v1484 + 10) = *(v1 + 7658);
  v210 = v1[473];
  v1478 = v1[472];
  v1479 = v210;
  v211 = v1[469];
  v212 = v1[475];
  v1480 = v1[474];
  v1481 = v212;
  v1474 = v1[468];
  v1475 = v211;
  v213 = v1[471];
  v1476 = v1[470];
  v1477 = v213;
  v214 = v1[465];
  v1470 = v1[464];
  v1471 = v214;
  v215 = v1[467];
  v216 = v1[493];
  v1472 = v1[466];
  v1473 = v215;
  v1497 = v1[492];
  v1498 = v216;
  v1499[0] = v1[494];
  *(v1499 + 10) = *(v1 + 7914);
  v217 = v1[491];
  v218 = v1[489];
  v1493 = v1[488];
  v1494 = v218;
  v1495 = v1[490];
  v1496 = v217;
  v219 = v1[485];
  v1489 = v1[484];
  v1490 = v219;
  v220 = v1[481];
  v221 = v1[487];
  v1491 = v1[486];
  v1492 = v221;
  v1485 = v1[480];
  v1486 = v220;
  v222 = v1[483];
  v1487 = v1[482];
  v1488 = v222;
  v223 = v1[505];
  v224 = v1[509];
  v1512 = v1[508];
  v1513 = v224;
  v1514[0] = v1[510];
  *(v1514 + 10) = *(v1 + 8170);
  v1508 = v1[504];
  v1509 = v223;
  v225 = v1[507];
  v1510 = v1[506];
  v1511 = v225;
  v226 = v1[503];
  v227 = v1[501];
  v1504 = v1[500];
  v1505 = v227;
  v1506 = v1[502];
  v1507 = v226;
  v228 = v1[497];
  v1500 = v1[496];
  v1501 = v228;
  v229 = v1[499];
  v1502 = v1[498];
  v1503 = v229;
  v1529[0] = v1[526];
  v230 = v1[525];
  v1527 = v1[524];
  v1528 = v230;
  *(v1529 + 10) = *(v1 + 8426);
  v231 = v1[521];
  v1523 = v1[520];
  v1524 = v231;
  v232 = v1[523];
  v1525 = v1[522];
  v1526 = v232;
  v233 = v1[517];
  v1519 = v1[516];
  v1520 = v233;
  v234 = v1[519];
  v1521 = v1[518];
  v1522 = v234;
  v235 = v1[513];
  v1515 = v1[512];
  v1516 = v235;
  v236 = v1[515];
  v1517 = v1[514];
  v1518 = v236;
  v237 = v1[541];
  v1542 = v1[540];
  v1543 = v237;
  v1544[0] = v1[542];
  *(v1544 + 10) = *(v1 + 8682);
  v238 = v1[537];
  v1538 = v1[536];
  v1539 = v238;
  v239 = v1[539];
  v1540 = v1[538];
  v1541 = v239;
  v240 = v1[533];
  v1534 = v1[532];
  v1535 = v240;
  v241 = v1[535];
  v1536 = v1[534];
  v1537 = v241;
  v242 = v1[529];
  v1530 = v1[528];
  v1531 = v242;
  v243 = v1[531];
  v1532 = v1[530];
  v1533 = v243;
  v244 = v1[557];
  v1557 = v1[556];
  v1558 = v244;
  v1559[0] = v1[558];
  *(v1559 + 10) = *(v1 + 8938);
  v245 = v1[553];
  v1553 = v1[552];
  v1554 = v245;
  v246 = v1[555];
  v1555 = v1[554];
  v1556 = v246;
  v247 = v1[549];
  v1549 = v1[548];
  v1550 = v247;
  v248 = v1[551];
  v1551 = v1[550];
  v1552 = v248;
  v249 = v1[545];
  v1545 = v1[544];
  v1546 = v249;
  v250 = v1[547];
  v1547 = v1[546];
  v1548 = v250;
  v1574[0] = v1[574];
  v251 = v1[573];
  v1572 = v1[572];
  v1573 = v251;
  *(v1574 + 10) = *(v1 + 9194);
  v252 = v1[569];
  v1568 = v1[568];
  v1569 = v252;
  v253 = v1[571];
  v1570 = v1[570];
  v1571 = v253;
  v254 = v1[565];
  v1564 = v1[564];
  v1565 = v254;
  v255 = v1[567];
  v1566 = v1[566];
  v1567 = v255;
  v256 = v1[561];
  v1560 = v1[560];
  v1561 = v256;
  v257 = v1[563];
  v1562 = v1[562];
  v1563 = v257;
  v258 = v1[589];
  v1587 = v1[588];
  v1588 = v258;
  v1589[0] = v1[590];
  *(v1589 + 10) = *(v1 + 9450);
  v259 = v1[585];
  v1583 = v1[584];
  v1584 = v259;
  v260 = v1[587];
  v1585 = v1[586];
  v1586 = v260;
  v261 = v1[581];
  v1579 = v1[580];
  v1580 = v261;
  v262 = v1[583];
  v1581 = v1[582];
  v1582 = v262;
  v263 = v1[577];
  v1575 = v1[576];
  v1576 = v263;
  v264 = v1[579];
  v1577 = v1[578];
  v1578 = v264;
  v265 = v1[605];
  v1602 = v1[604];
  v1603 = v265;
  v1604[0] = v1[606];
  *(v1604 + 10) = *(v1 + 9706);
  v266 = v1[601];
  v1598 = v1[600];
  v1599 = v266;
  v267 = v1[603];
  v1600 = v1[602];
  v1601 = v267;
  v268 = v1[597];
  v1594 = v1[596];
  v1595 = v268;
  v269 = v1[599];
  v1596 = v1[598];
  v1597 = v269;
  v270 = v1[593];
  v1590 = v1[592];
  v1591 = v270;
  v271 = v1[594];
  v272 = v1[595];
  v273 = v1[620];
  v274 = v1[621];
  v1619[0] = v1[622];
  v275 = *(v1 + 9962);
  v276 = v1[616];
  v277 = v1[617];
  v278 = v1[618];
  v279 = v1[619];
  v280 = v1[612];
  v281 = v1[613];
  v282 = v1[614];
  v283 = v1[615];
  v284 = v1[608];
  v285 = v1[609];
  v286 = v1[610];
  v287 = v1[611];
  v288 = v1[636];
  v289 = v1[637];
  v290 = v1[638];
  v291 = *(v1 + 10218);
  v292 = v1[632];
  v293 = v1[633];
  v294 = v1[634];
  v295 = v311[3];
  v296 = v311[4];
  v297 = v1[635];
  v298 = v1[628];
  v299 = v1[629];
  v300 = v1[630];
  v301 = v1[631];
  v302 = v1[624];
  v303 = v1[625];
  v304 = v1[626];
  v1592 = v271;
  v305 = v1[627];
  v1593 = v272;
  v1617 = v273;
  v1618 = v274;
  *(v1619 + 10) = v275;
  v1613 = v276;
  v1614 = v277;
  v1634[0] = v290;
  v1615 = v278;
  v1616 = v279;
  v1609 = v280;
  v1610 = v281;
  v1611 = v282;
  v1612 = v283;
  v1605 = v284;
  v1606 = v285;
  v1607 = v286;
  v1608 = v287;
  v1632 = v288;
  v1633 = v289;
  *(v1634 + 10) = v291;
  v1628 = v292;
  v1629 = v293;
  v1630 = v294;
  v1631 = v297;
  v1624 = v298;
  v1625 = v299;
  v1626 = v300;
  v1627 = v301;
  v1620 = v302;
  v1621 = v303;
  v1622 = v304;
  v1623 = v305;
  __swift_project_boxed_opaque_existential_1(v311, v295);
  sub_2142FCC0C(&v1035, &v1020);
  sub_2142FCB10();
  v306 = v1635;
  v307 = v314;
  sub_2146DAA28();
  v1032 = v1047;
  v1033 = v1048;
  v1034[0] = v1049[0];
  *(v1034 + 10) = *(v1049 + 10);
  v1028 = v1043;
  v1029 = v1044;
  v1030 = v1045;
  v1031 = v1046;
  v1024 = v1039;
  v1025 = v1040;
  v1026 = v1041;
  v1027 = v1042;
  v1020 = v1035;
  v1021 = v1036;
  v1022 = v1037;
  v1023 = v1038;
  v1019 = 0;
  v308 = sub_2142FCC68();
  v309 = v312;
  sub_2146DA388();
  v1017[12] = v1032;
  v1017[13] = v1033;
  *v1018 = v1034[0];
  *&v1018[10] = *(v1034 + 10);
  v1017[8] = v1028;
  v1017[9] = v1029;
  v1017[10] = v1030;
  v1017[11] = v1031;
  v1017[4] = v1024;
  v1017[5] = v1025;
  v1017[6] = v1026;
  v1017[7] = v1027;
  v1017[0] = v1020;
  v1017[1] = v1021;
  v1017[2] = v1022;
  v1017[3] = v1023;
  sub_2142FCBB8(v1017);
  if (v309)
  {
    return (*(v313 + 8))(v306, v307);
  }

  v1014 = v1062;
  v1015 = v1063;
  v1016[0] = v1064[0];
  *(v1016 + 10) = *(v1064 + 10);
  v1010 = v1058;
  v1011 = v1059;
  v1012 = v1060;
  v1013 = v1061;
  v1006 = v1054;
  v1007 = v1055;
  v1008 = v1056;
  v1009 = v1057;
  v1002 = v1050;
  v1003 = v1051;
  v1004 = v1052;
  v1005 = v1053;
  v1001 = 1;
  sub_2142FCC0C(&v1050, v999);
  sub_2146DA388();
  v999[12] = v1014;
  v999[13] = v1015;
  *v1000 = v1016[0];
  *&v1000[10] = *(v1016 + 10);
  v999[8] = v1010;
  v999[9] = v1011;
  v999[10] = v1012;
  v999[11] = v1013;
  v999[4] = v1006;
  v999[5] = v1007;
  v999[6] = v1008;
  v999[7] = v1009;
  v999[0] = v1002;
  v999[1] = v1003;
  v999[2] = v1004;
  v999[3] = v1005;
  sub_2142FCBB8(v999);
  v996 = v1077;
  v997 = v1078;
  v998[0] = v1079[0];
  *(v998 + 10) = *(v1079 + 10);
  v992 = v1073;
  v993 = v1074;
  v994 = v1075;
  v995 = v1076;
  v988 = v1069;
  v989 = v1070;
  v990 = v1071;
  v991 = v1072;
  v984 = v1065;
  v985 = v1066;
  v986 = v1067;
  v987 = v1068;
  v983 = 2;
  sub_2142FCC0C(&v1065, v981);
  v312 = v308;
  sub_2146DA388();
  v981[12] = v996;
  v981[13] = v997;
  *v982 = v998[0];
  *&v982[10] = *(v998 + 10);
  v981[8] = v992;
  v981[9] = v993;
  v981[10] = v994;
  v981[11] = v995;
  v981[4] = v988;
  v981[5] = v989;
  v981[6] = v990;
  v981[7] = v991;
  v981[0] = v984;
  v981[1] = v985;
  v981[2] = v986;
  v981[3] = v987;
  sub_2142FCBB8(v981);
  v978 = v1092;
  v979 = v1093;
  v980[0] = v1094[0];
  *(v980 + 10) = *(v1094 + 10);
  v974 = v1088;
  v975 = v1089;
  v976 = v1090;
  v977 = v1091;
  v970 = v1084;
  v971 = v1085;
  v972 = v1086;
  v973 = v1087;
  v966 = v1080;
  v967 = v1081;
  v968 = v1082;
  v969 = v1083;
  v965 = 3;
  sub_2142FCC0C(&v1080, v963);
  sub_2146DA388();
  v963[12] = v978;
  v963[13] = v979;
  *v964 = v980[0];
  *&v964[10] = *(v980 + 10);
  v963[8] = v974;
  v963[9] = v975;
  v963[10] = v976;
  v963[11] = v977;
  v963[4] = v970;
  v963[5] = v971;
  v963[6] = v972;
  v963[7] = v973;
  v963[0] = v966;
  v963[1] = v967;
  v963[2] = v968;
  v963[3] = v969;
  sub_2142FCBB8(v963);
  v960 = v1107;
  v961 = v1108;
  v962[0] = v1109[0];
  *(v962 + 10) = *(v1109 + 10);
  v956 = v1103;
  v957 = v1104;
  v958 = v1105;
  v959 = v1106;
  v952 = v1099;
  v953 = v1100;
  v954 = v1101;
  v955 = v1102;
  v948 = v1095;
  v949 = v1096;
  v950 = v1097;
  v951 = v1098;
  v947 = 4;
  sub_2142FCC0C(&v1095, v945);
  sub_2146DA388();
  v945[12] = v960;
  v945[13] = v961;
  *v946 = v962[0];
  *&v946[10] = *(v962 + 10);
  v945[8] = v956;
  v945[9] = v957;
  v945[10] = v958;
  v945[11] = v959;
  v945[4] = v952;
  v945[5] = v953;
  v945[6] = v954;
  v945[7] = v955;
  v945[0] = v948;
  v945[1] = v949;
  v945[2] = v950;
  v945[3] = v951;
  sub_2142FCBB8(v945);
  v942 = v1122;
  v943 = v1123;
  v944[0] = v1124[0];
  *(v944 + 10) = *(v1124 + 10);
  v938 = v1118;
  v939 = v1119;
  v940 = v1120;
  v941 = v1121;
  v934 = v1114;
  v935 = v1115;
  v936 = v1116;
  v937 = v1117;
  v930 = v1110;
  v931 = v1111;
  v932 = v1112;
  v933 = v1113;
  v929 = 5;
  sub_2142FCC0C(&v1110, v927);
  sub_2146DA388();
  v927[12] = v942;
  v927[13] = v943;
  *v928 = v944[0];
  *&v928[10] = *(v944 + 10);
  v927[8] = v938;
  v927[9] = v939;
  v927[10] = v940;
  v927[11] = v941;
  v927[4] = v934;
  v927[5] = v935;
  v927[6] = v936;
  v927[7] = v937;
  v927[0] = v930;
  v927[1] = v931;
  v927[2] = v932;
  v927[3] = v933;
  sub_2142FCBB8(v927);
  v924 = v1137;
  v925 = v1138;
  v926[0] = v1139[0];
  *(v926 + 10) = *(v1139 + 10);
  v920 = v1133;
  v921 = v1134;
  v922 = v1135;
  v923 = v1136;
  v916 = v1129;
  v917 = v1130;
  v918 = v1131;
  v919 = v1132;
  v912 = v1125;
  v913 = v1126;
  v914 = v1127;
  v915 = v1128;
  v911 = 6;
  sub_2142FCC0C(&v1125, v909);
  sub_2146DA388();
  v909[12] = v924;
  v909[13] = v925;
  *v910 = v926[0];
  *&v910[10] = *(v926 + 10);
  v909[8] = v920;
  v909[9] = v921;
  v909[10] = v922;
  v909[11] = v923;
  v909[4] = v916;
  v909[5] = v917;
  v909[6] = v918;
  v909[7] = v919;
  v909[0] = v912;
  v909[1] = v913;
  v909[2] = v914;
  v909[3] = v915;
  sub_2142FCBB8(v909);
  v906 = v1152;
  v907 = v1153;
  v908[0] = v1154[0];
  *(v908 + 10) = *(v1154 + 10);
  v902 = v1148;
  v903 = v1149;
  v904 = v1150;
  v905 = v1151;
  v898 = v1144;
  v899 = v1145;
  v900 = v1146;
  v901 = v1147;
  v894 = v1140;
  v895 = v1141;
  v896 = v1142;
  v897 = v1143;
  v893 = 7;
  sub_2142FCC0C(&v1140, v891);
  sub_2146DA388();
  v891[12] = v906;
  v891[13] = v907;
  *v892 = v908[0];
  *&v892[10] = *(v908 + 10);
  v891[8] = v902;
  v891[9] = v903;
  v891[10] = v904;
  v891[11] = v905;
  v891[4] = v898;
  v891[5] = v899;
  v891[6] = v900;
  v891[7] = v901;
  v891[0] = v894;
  v891[1] = v895;
  v891[2] = v896;
  v891[3] = v897;
  sub_2142FCBB8(v891);
  v888 = v1167;
  v889 = v1168;
  v890[0] = v1169[0];
  *(v890 + 10) = *(v1169 + 10);
  v884 = v1163;
  v885 = v1164;
  v886 = v1165;
  v887 = v1166;
  v880 = v1159;
  v881 = v1160;
  v882 = v1161;
  v883 = v1162;
  v876 = v1155;
  v877 = v1156;
  v878 = v1157;
  v879 = v1158;
  v875 = 8;
  sub_2142FCC0C(&v1155, v873);
  sub_2146DA388();
  v873[12] = v888;
  v873[13] = v889;
  *v874 = v890[0];
  *&v874[10] = *(v890 + 10);
  v873[8] = v884;
  v873[9] = v885;
  v873[10] = v886;
  v873[11] = v887;
  v873[4] = v880;
  v873[5] = v881;
  v873[6] = v882;
  v873[7] = v883;
  v873[0] = v876;
  v873[1] = v877;
  v873[2] = v878;
  v873[3] = v879;
  sub_2142FCBB8(v873);
  v870 = v1182;
  v871 = v1183;
  v872[0] = v1184[0];
  *(v872 + 10) = *(v1184 + 10);
  v866 = v1178;
  v867 = v1179;
  v868 = v1180;
  v869 = v1181;
  v862 = v1174;
  v863 = v1175;
  v864 = v1176;
  v865 = v1177;
  v858 = v1170;
  v859 = v1171;
  v860 = v1172;
  v861 = v1173;
  v857 = 9;
  sub_2142FCC0C(&v1170, v855);
  sub_2146DA388();
  v855[12] = v870;
  v855[13] = v871;
  *v856 = v872[0];
  *&v856[10] = *(v872 + 10);
  v855[8] = v866;
  v855[9] = v867;
  v855[10] = v868;
  v855[11] = v869;
  v855[4] = v862;
  v855[5] = v863;
  v855[6] = v864;
  v855[7] = v865;
  v855[0] = v858;
  v855[1] = v859;
  v855[2] = v860;
  v855[3] = v861;
  sub_2142FCBB8(v855);
  v852 = v1197;
  v853 = v1198;
  v854[0] = v1199[0];
  *(v854 + 10) = *(v1199 + 10);
  v848 = v1193;
  v849 = v1194;
  v850 = v1195;
  v851 = v1196;
  v844 = v1189;
  v845 = v1190;
  v846 = v1191;
  v847 = v1192;
  v840 = v1185;
  v841 = v1186;
  v842 = v1187;
  v843 = v1188;
  v839 = 10;
  sub_2142FCC0C(&v1185, v837);
  sub_2146DA388();
  v837[12] = v852;
  v837[13] = v853;
  *v838 = v854[0];
  *&v838[10] = *(v854 + 10);
  v837[8] = v848;
  v837[9] = v849;
  v837[10] = v850;
  v837[11] = v851;
  v837[4] = v844;
  v837[5] = v845;
  v837[6] = v846;
  v837[7] = v847;
  v837[0] = v840;
  v837[1] = v841;
  v837[2] = v842;
  v837[3] = v843;
  sub_2142FCBB8(v837);
  v834 = v1212;
  v835 = v1213;
  v836[0] = v1214[0];
  *(v836 + 10) = *(v1214 + 10);
  v830 = v1208;
  v831 = v1209;
  v832 = v1210;
  v833 = v1211;
  v826 = v1204;
  v827 = v1205;
  v828 = v1206;
  v829 = v1207;
  v822 = v1200;
  v823 = v1201;
  v824 = v1202;
  v825 = v1203;
  v821 = 11;
  sub_2142FCC0C(&v1200, v819);
  sub_2146DA388();
  v819[12] = v834;
  v819[13] = v835;
  *v820 = v836[0];
  *&v820[10] = *(v836 + 10);
  v819[8] = v830;
  v819[9] = v831;
  v819[10] = v832;
  v819[11] = v833;
  v819[4] = v826;
  v819[5] = v827;
  v819[6] = v828;
  v819[7] = v829;
  v819[0] = v822;
  v819[1] = v823;
  v819[2] = v824;
  v819[3] = v825;
  sub_2142FCBB8(v819);
  v816 = v1227;
  v817 = v1228;
  v818[0] = v1229[0];
  *(v818 + 10) = *(v1229 + 10);
  v812 = v1223;
  v813 = v1224;
  v814 = v1225;
  v815 = v1226;
  v808 = v1219;
  v809 = v1220;
  v810 = v1221;
  v811 = v1222;
  v804 = v1215;
  v805 = v1216;
  v806 = v1217;
  v807 = v1218;
  v803 = 12;
  sub_2142FCC0C(&v1215, v801);
  sub_2146DA388();
  v801[12] = v816;
  v801[13] = v817;
  *v802 = v818[0];
  *&v802[10] = *(v818 + 10);
  v801[8] = v812;
  v801[9] = v813;
  v801[10] = v814;
  v801[11] = v815;
  v801[4] = v808;
  v801[5] = v809;
  v801[6] = v810;
  v801[7] = v811;
  v801[0] = v804;
  v801[1] = v805;
  v801[2] = v806;
  v801[3] = v807;
  sub_2142FCBB8(v801);
  v798 = v1242;
  v799 = v1243;
  v800[0] = v1244[0];
  *(v800 + 10) = *(v1244 + 10);
  v794 = v1238;
  v795 = v1239;
  v796 = v1240;
  v797 = v1241;
  v790 = v1234;
  v791 = v1235;
  v792 = v1236;
  v793 = v1237;
  v786 = v1230;
  v787 = v1231;
  v788 = v1232;
  v789 = v1233;
  v785 = 13;
  sub_2142FCC0C(&v1230, v783);
  sub_2146DA388();
  v783[12] = v798;
  v783[13] = v799;
  *v784 = v800[0];
  *&v784[10] = *(v800 + 10);
  v783[8] = v794;
  v783[9] = v795;
  v783[10] = v796;
  v783[11] = v797;
  v783[4] = v790;
  v783[5] = v791;
  v783[6] = v792;
  v783[7] = v793;
  v783[0] = v786;
  v783[1] = v787;
  v783[2] = v788;
  v783[3] = v789;
  sub_2142FCBB8(v783);
  v780 = v1257;
  v781 = v1258;
  v782[0] = v1259[0];
  *(v782 + 10) = *(v1259 + 10);
  v776 = v1253;
  v777 = v1254;
  v778 = v1255;
  v779 = v1256;
  v772 = v1249;
  v773 = v1250;
  v774 = v1251;
  v775 = v1252;
  v768 = v1245;
  v769 = v1246;
  v770 = v1247;
  v771 = v1248;
  v767 = 14;
  sub_2142FCC0C(&v1245, v765);
  sub_2146DA388();
  v765[12] = v780;
  v765[13] = v781;
  *v766 = v782[0];
  *&v766[10] = *(v782 + 10);
  v765[8] = v776;
  v765[9] = v777;
  v765[10] = v778;
  v765[11] = v779;
  v765[4] = v772;
  v765[5] = v773;
  v765[6] = v774;
  v765[7] = v775;
  v765[0] = v768;
  v765[1] = v769;
  v765[2] = v770;
  v765[3] = v771;
  sub_2142FCBB8(v765);
  v762 = v1272;
  v763 = v1273;
  v764[0] = v1274[0];
  *(v764 + 10) = *(v1274 + 10);
  v758 = v1268;
  v759 = v1269;
  v760 = v1270;
  v761 = v1271;
  v754 = v1264;
  v755 = v1265;
  v756 = v1266;
  v757 = v1267;
  v750 = v1260;
  v751 = v1261;
  v752 = v1262;
  v753 = v1263;
  v749 = 15;
  sub_2142FCC0C(&v1260, v747);
  sub_2146DA388();
  v747[12] = v762;
  v747[13] = v763;
  *v748 = v764[0];
  *&v748[10] = *(v764 + 10);
  v747[8] = v758;
  v747[9] = v759;
  v747[10] = v760;
  v747[11] = v761;
  v747[4] = v754;
  v747[5] = v755;
  v747[6] = v756;
  v747[7] = v757;
  v747[0] = v750;
  v747[1] = v751;
  v747[2] = v752;
  v747[3] = v753;
  sub_2142FCBB8(v747);
  v744 = v1287;
  v745 = v1288;
  v746[0] = v1289[0];
  *(v746 + 10) = *(v1289 + 10);
  v740 = v1283;
  v741 = v1284;
  v742 = v1285;
  v743 = v1286;
  v736 = v1279;
  v737 = v1280;
  v738 = v1281;
  v739 = v1282;
  v732 = v1275;
  v733 = v1276;
  v734 = v1277;
  v735 = v1278;
  v731 = 16;
  sub_2142FCC0C(&v1275, v729);
  sub_2146DA388();
  v729[12] = v744;
  v729[13] = v745;
  *v730 = v746[0];
  *&v730[10] = *(v746 + 10);
  v729[8] = v740;
  v729[9] = v741;
  v729[10] = v742;
  v729[11] = v743;
  v729[4] = v736;
  v729[5] = v737;
  v729[6] = v738;
  v729[7] = v739;
  v729[0] = v732;
  v729[1] = v733;
  v729[2] = v734;
  v729[3] = v735;
  sub_2142FCBB8(v729);
  v726 = v1302;
  v727 = v1303;
  v728[0] = v1304[0];
  *(v728 + 10) = *(v1304 + 10);
  v722 = v1298;
  v723 = v1299;
  v724 = v1300;
  v725 = v1301;
  v718 = v1294;
  v719 = v1295;
  v720 = v1296;
  v721 = v1297;
  v714 = v1290;
  v715 = v1291;
  v716 = v1292;
  v717 = v1293;
  v713 = 17;
  sub_2142FCC0C(&v1290, v711);
  sub_2146DA388();
  v711[12] = v726;
  v711[13] = v727;
  *v712 = v728[0];
  *&v712[10] = *(v728 + 10);
  v711[8] = v722;
  v711[9] = v723;
  v711[10] = v724;
  v711[11] = v725;
  v711[4] = v718;
  v711[5] = v719;
  v711[6] = v720;
  v711[7] = v721;
  v711[0] = v714;
  v711[1] = v715;
  v711[2] = v716;
  v711[3] = v717;
  sub_2142FCBB8(v711);
  v708 = v1317;
  v709 = v1318;
  v710[0] = v1319[0];
  *(v710 + 10) = *(v1319 + 10);
  v704 = v1313;
  v705 = v1314;
  v706 = v1315;
  v707 = v1316;
  v700 = v1309;
  v701 = v1310;
  v702 = v1311;
  v703 = v1312;
  v696 = v1305;
  v697 = v1306;
  v698 = v1307;
  v699 = v1308;
  v695 = 18;
  sub_2142FCC0C(&v1305, v693);
  sub_2146DA388();
  v693[12] = v708;
  v693[13] = v709;
  *v694 = v710[0];
  *&v694[10] = *(v710 + 10);
  v693[8] = v704;
  v693[9] = v705;
  v693[10] = v706;
  v693[11] = v707;
  v693[4] = v700;
  v693[5] = v701;
  v693[6] = v702;
  v693[7] = v703;
  v693[0] = v696;
  v693[1] = v697;
  v693[2] = v698;
  v693[3] = v699;
  sub_2142FCBB8(v693);
  v690 = v1332;
  v691 = v1333;
  v692[0] = v1334[0];
  *(v692 + 10) = *(v1334 + 10);
  v686 = v1328;
  v687 = v1329;
  v688 = v1330;
  v689 = v1331;
  v682 = v1324;
  v683 = v1325;
  v684 = v1326;
  v685 = v1327;
  v678 = v1320;
  v679 = v1321;
  v680 = v1322;
  v681 = v1323;
  v677 = 19;
  sub_2142FCC0C(&v1320, v675);
  sub_2146DA388();
  v675[12] = v690;
  v675[13] = v691;
  *v676 = v692[0];
  *&v676[10] = *(v692 + 10);
  v675[8] = v686;
  v675[9] = v687;
  v675[10] = v688;
  v675[11] = v689;
  v675[4] = v682;
  v675[5] = v683;
  v675[6] = v684;
  v675[7] = v685;
  v675[0] = v678;
  v675[1] = v679;
  v675[2] = v680;
  v675[3] = v681;
  sub_2142FCBB8(v675);
  v672 = v1347;
  v673 = v1348;
  v674[0] = v1349[0];
  *(v674 + 10) = *(v1349 + 10);
  v668 = v1343;
  v669 = v1344;
  v670 = v1345;
  v671 = v1346;
  v664 = v1339;
  v665 = v1340;
  v666 = v1341;
  v667 = v1342;
  v660 = v1335;
  v661 = v1336;
  v662 = v1337;
  v663 = v1338;
  v659 = 20;
  sub_2142FCC0C(&v1335, v657);
  sub_2146DA388();
  v657[12] = v672;
  v657[13] = v673;
  *v658 = v674[0];
  *&v658[10] = *(v674 + 10);
  v657[8] = v668;
  v657[9] = v669;
  v657[10] = v670;
  v657[11] = v671;
  v657[4] = v664;
  v657[5] = v665;
  v657[6] = v666;
  v657[7] = v667;
  v657[0] = v660;
  v657[1] = v661;
  v657[2] = v662;
  v657[3] = v663;
  sub_2142FCBB8(v657);
  v654 = v1362;
  v655 = v1363;
  v656[0] = v1364[0];
  *(v656 + 10) = *(v1364 + 10);
  v650 = v1358;
  v651 = v1359;
  v652 = v1360;
  v653 = v1361;
  v646 = v1354;
  v647 = v1355;
  v648 = v1356;
  v649 = v1357;
  v642 = v1350;
  v643 = v1351;
  v644 = v1352;
  v645 = v1353;
  v641 = 21;
  sub_2142FCC0C(&v1350, v639);
  sub_2146DA388();
  v639[12] = v654;
  v639[13] = v655;
  *v640 = v656[0];
  *&v640[10] = *(v656 + 10);
  v639[8] = v650;
  v639[9] = v651;
  v639[10] = v652;
  v639[11] = v653;
  v639[4] = v646;
  v639[5] = v647;
  v639[6] = v648;
  v639[7] = v649;
  v639[0] = v642;
  v639[1] = v643;
  v639[2] = v644;
  v639[3] = v645;
  sub_2142FCBB8(v639);
  v636 = v1377;
  v637 = v1378;
  v638[0] = v1379[0];
  *(v638 + 10) = *(v1379 + 10);
  v632 = v1373;
  v633 = v1374;
  v634 = v1375;
  v635 = v1376;
  v628 = v1369;
  v629 = v1370;
  v630 = v1371;
  v631 = v1372;
  v624 = v1365;
  v625 = v1366;
  v626 = v1367;
  v627 = v1368;
  v623 = 22;
  sub_2142FCC0C(&v1365, v621);
  sub_2146DA388();
  v621[12] = v636;
  v621[13] = v637;
  *v622 = v638[0];
  *&v622[10] = *(v638 + 10);
  v621[8] = v632;
  v621[9] = v633;
  v621[10] = v634;
  v621[11] = v635;
  v621[4] = v628;
  v621[5] = v629;
  v621[6] = v630;
  v621[7] = v631;
  v621[0] = v624;
  v621[1] = v625;
  v621[2] = v626;
  v621[3] = v627;
  sub_2142FCBB8(v621);
  v618 = v1392;
  v619 = v1393;
  v620[0] = v1394[0];
  *(v620 + 10) = *(v1394 + 10);
  v614 = v1388;
  v615 = v1389;
  v616 = v1390;
  v617 = v1391;
  v610 = v1384;
  v611 = v1385;
  v612 = v1386;
  v613 = v1387;
  v606 = v1380;
  v607 = v1381;
  v608 = v1382;
  v609 = v1383;
  v605 = 23;
  sub_2142FCC0C(&v1380, v603);
  sub_2146DA388();
  v603[12] = v618;
  v603[13] = v619;
  *v604 = v620[0];
  *&v604[10] = *(v620 + 10);
  v603[8] = v614;
  v603[9] = v615;
  v603[10] = v616;
  v603[11] = v617;
  v603[4] = v610;
  v603[5] = v611;
  v603[6] = v612;
  v603[7] = v613;
  v603[0] = v606;
  v603[1] = v607;
  v603[2] = v608;
  v603[3] = v609;
  sub_2142FCBB8(v603);
  v600 = v1407;
  v601 = v1408;
  v602[0] = v1409[0];
  *(v602 + 10) = *(v1409 + 10);
  v596 = v1403;
  v597 = v1404;
  v598 = v1405;
  v599 = v1406;
  v592 = v1399;
  v593 = v1400;
  v594 = v1401;
  v595 = v1402;
  v588 = v1395;
  v589 = v1396;
  v590 = v1397;
  v591 = v1398;
  v587 = 24;
  sub_2142FCC0C(&v1395, v585);
  sub_2146DA388();
  v585[12] = v600;
  v585[13] = v601;
  *v586 = v602[0];
  *&v586[10] = *(v602 + 10);
  v585[8] = v596;
  v585[9] = v597;
  v585[10] = v598;
  v585[11] = v599;
  v585[4] = v592;
  v585[5] = v593;
  v585[6] = v594;
  v585[7] = v595;
  v585[0] = v588;
  v585[1] = v589;
  v585[2] = v590;
  v585[3] = v591;
  sub_2142FCBB8(v585);
  v582 = v1422;
  v583 = v1423;
  v584[0] = v1424[0];
  *(v584 + 10) = *(v1424 + 10);
  v578 = v1418;
  v579 = v1419;
  v580 = v1420;
  v581 = v1421;
  v574 = v1414;
  v575 = v1415;
  v576 = v1416;
  v577 = v1417;
  v570 = v1410;
  v571 = v1411;
  v572 = v1412;
  v573 = v1413;
  v569 = 25;
  sub_2142FCC0C(&v1410, v567);
  sub_2146DA388();
  v567[12] = v582;
  v567[13] = v583;
  *v568 = v584[0];
  *&v568[10] = *(v584 + 10);
  v567[8] = v578;
  v567[9] = v579;
  v567[10] = v580;
  v567[11] = v581;
  v567[4] = v574;
  v567[5] = v575;
  v567[6] = v576;
  v567[7] = v577;
  v567[0] = v570;
  v567[1] = v571;
  v567[2] = v572;
  v567[3] = v573;
  sub_2142FCBB8(v567);
  v564 = v1437;
  v565 = v1438;
  v566[0] = v1439[0];
  *(v566 + 10) = *(v1439 + 10);
  v560 = v1433;
  v561 = v1434;
  v562 = v1435;
  v563 = v1436;
  v556 = v1429;
  v557 = v1430;
  v558 = v1431;
  v559 = v1432;
  v552 = v1425;
  v553 = v1426;
  v554 = v1427;
  v555 = v1428;
  v551 = 26;
  sub_2142FCC0C(&v1425, v549);
  sub_2146DA388();
  v549[12] = v564;
  v549[13] = v565;
  *v550 = v566[0];
  *&v550[10] = *(v566 + 10);
  v549[8] = v560;
  v549[9] = v561;
  v549[10] = v562;
  v549[11] = v563;
  v549[4] = v556;
  v549[5] = v557;
  v549[6] = v558;
  v549[7] = v559;
  v549[0] = v552;
  v549[1] = v553;
  v549[2] = v554;
  v549[3] = v555;
  sub_2142FCBB8(v549);
  v546 = v1452;
  v547 = v1453;
  v548[0] = v1454[0];
  *(v548 + 10) = *(v1454 + 10);
  v542 = v1448;
  v543 = v1449;
  v544 = v1450;
  v545 = v1451;
  v538 = v1444;
  v539 = v1445;
  v540 = v1446;
  v541 = v1447;
  v534 = v1440;
  v535 = v1441;
  v536 = v1442;
  v537 = v1443;
  v533 = 27;
  sub_2142FCC0C(&v1440, v531);
  sub_2146DA388();
  v531[12] = v546;
  v531[13] = v547;
  *v532 = v548[0];
  *&v532[10] = *(v548 + 10);
  v531[8] = v542;
  v531[9] = v543;
  v531[10] = v544;
  v531[11] = v545;
  v531[4] = v538;
  v531[5] = v539;
  v531[6] = v540;
  v531[7] = v541;
  v531[0] = v534;
  v531[1] = v535;
  v531[2] = v536;
  v531[3] = v537;
  sub_2142FCBB8(v531);
  v528 = v1467;
  v529 = v1468;
  v530[0] = v1469[0];
  *(v530 + 10) = *(v1469 + 10);
  v524 = v1463;
  v525 = v1464;
  v526 = v1465;
  v527 = v1466;
  v520 = v1459;
  v521 = v1460;
  v522 = v1461;
  v523 = v1462;
  v516 = v1455;
  v517 = v1456;
  v518 = v1457;
  v519 = v1458;
  v515 = 28;
  sub_2142FCC0C(&v1455, v513);
  sub_2146DA388();
  v513[12] = v528;
  v513[13] = v529;
  *v514 = v530[0];
  *&v514[10] = *(v530 + 10);
  v513[8] = v524;
  v513[9] = v525;
  v513[10] = v526;
  v513[11] = v527;
  v513[4] = v520;
  v513[5] = v521;
  v513[6] = v522;
  v513[7] = v523;
  v513[0] = v516;
  v513[1] = v517;
  v513[2] = v518;
  v513[3] = v519;
  sub_2142FCBB8(v513);
  v510 = v1482;
  v511 = v1483;
  v512[0] = v1484[0];
  *(v512 + 10) = *(v1484 + 10);
  v506 = v1478;
  v507 = v1479;
  v508 = v1480;
  v509 = v1481;
  v502 = v1474;
  v503 = v1475;
  v504 = v1476;
  v505 = v1477;
  v498 = v1470;
  v499 = v1471;
  v500 = v1472;
  v501 = v1473;
  v497 = 29;
  sub_2142FCC0C(&v1470, v495);
  sub_2146DA388();
  v495[12] = v510;
  v495[13] = v511;
  *v496 = v512[0];
  *&v496[10] = *(v512 + 10);
  v495[8] = v506;
  v495[9] = v507;
  v495[10] = v508;
  v495[11] = v509;
  v495[4] = v502;
  v495[5] = v503;
  v495[6] = v504;
  v495[7] = v505;
  v495[0] = v498;
  v495[1] = v499;
  v495[2] = v500;
  v495[3] = v501;
  sub_2142FCBB8(v495);
  v492 = v1497;
  v493 = v1498;
  v494[0] = v1499[0];
  *(v494 + 10) = *(v1499 + 10);
  v488 = v1493;
  v489 = v1494;
  v490 = v1495;
  v491 = v1496;
  v484 = v1489;
  v485 = v1490;
  v486 = v1491;
  v487 = v1492;
  v480 = v1485;
  v481 = v1486;
  v482 = v1487;
  v483 = v1488;
  v479 = 30;
  sub_2142FCC0C(&v1485, v477);
  sub_2146DA388();
  v477[12] = v492;
  v477[13] = v493;
  *v478 = v494[0];
  *&v478[10] = *(v494 + 10);
  v477[8] = v488;
  v477[9] = v489;
  v477[10] = v490;
  v477[11] = v491;
  v477[4] = v484;
  v477[5] = v485;
  v477[6] = v486;
  v477[7] = v487;
  v477[0] = v480;
  v477[1] = v481;
  v477[2] = v482;
  v477[3] = v483;
  sub_2142FCBB8(v477);
  v474 = v1512;
  v475 = v1513;
  v476[0] = v1514[0];
  *(v476 + 10) = *(v1514 + 10);
  v470 = v1508;
  v471 = v1509;
  v472 = v1510;
  v473 = v1511;
  v466 = v1504;
  v467 = v1505;
  v468 = v1506;
  v469 = v1507;
  v462 = v1500;
  v463 = v1501;
  v464 = v1502;
  v465 = v1503;
  v461 = 31;
  sub_2142FCC0C(&v1500, v459);
  sub_2146DA388();
  v459[12] = v474;
  v459[13] = v475;
  *v460 = v476[0];
  *&v460[10] = *(v476 + 10);
  v459[8] = v470;
  v459[9] = v471;
  v459[10] = v472;
  v459[11] = v473;
  v459[4] = v466;
  v459[5] = v467;
  v459[6] = v468;
  v459[7] = v469;
  v459[0] = v462;
  v459[1] = v463;
  v459[2] = v464;
  v459[3] = v465;
  sub_2142FCBB8(v459);
  v456 = v1527;
  v457 = v1528;
  v458[0] = v1529[0];
  *(v458 + 10) = *(v1529 + 10);
  v452 = v1523;
  v453 = v1524;
  v454 = v1525;
  v455 = v1526;
  v448 = v1519;
  v449 = v1520;
  v450 = v1521;
  v451 = v1522;
  v444 = v1515;
  v445 = v1516;
  v446 = v1517;
  v447 = v1518;
  v443 = 32;
  sub_2142FCC0C(&v1515, v441);
  sub_2146DA388();
  v441[12] = v456;
  v441[13] = v457;
  *v442 = v458[0];
  *&v442[10] = *(v458 + 10);
  v441[8] = v452;
  v441[9] = v453;
  v441[10] = v454;
  v441[11] = v455;
  v441[4] = v448;
  v441[5] = v449;
  v441[6] = v450;
  v441[7] = v451;
  v441[0] = v444;
  v441[1] = v445;
  v441[2] = v446;
  v441[3] = v447;
  sub_2142FCBB8(v441);
  v438 = v1542;
  v439 = v1543;
  v440[0] = v1544[0];
  *(v440 + 10) = *(v1544 + 10);
  v434 = v1538;
  v435 = v1539;
  v436 = v1540;
  v437 = v1541;
  v430 = v1534;
  v431 = v1535;
  v432 = v1536;
  v433 = v1537;
  v426 = v1530;
  v427 = v1531;
  v428 = v1532;
  v429 = v1533;
  v425 = 33;
  sub_2142FCC0C(&v1530, v423);
  sub_2146DA388();
  v423[12] = v438;
  v423[13] = v439;
  *v424 = v440[0];
  *&v424[10] = *(v440 + 10);
  v423[8] = v434;
  v423[9] = v435;
  v423[10] = v436;
  v423[11] = v437;
  v423[4] = v430;
  v423[5] = v431;
  v423[6] = v432;
  v423[7] = v433;
  v423[0] = v426;
  v423[1] = v427;
  v423[2] = v428;
  v423[3] = v429;
  sub_2142FCBB8(v423);
  v420 = v1557;
  v421 = v1558;
  v422[0] = v1559[0];
  *(v422 + 10) = *(v1559 + 10);
  v416 = v1553;
  v417 = v1554;
  v418 = v1555;
  v419 = v1556;
  v412 = v1549;
  v413 = v1550;
  v414 = v1551;
  v415 = v1552;
  v408 = v1545;
  v409 = v1546;
  v410 = v1547;
  v411 = v1548;
  v407 = 34;
  sub_2142FCC0C(&v1545, v405);
  sub_2146DA388();
  v405[12] = v420;
  v405[13] = v421;
  *v406 = v422[0];
  *&v406[10] = *(v422 + 10);
  v405[8] = v416;
  v405[9] = v417;
  v405[10] = v418;
  v405[11] = v419;
  v405[4] = v412;
  v405[5] = v413;
  v405[6] = v414;
  v405[7] = v415;
  v405[0] = v408;
  v405[1] = v409;
  v405[2] = v410;
  v405[3] = v411;
  sub_2142FCBB8(v405);
  v402 = v1572;
  v403 = v1573;
  v404[0] = v1574[0];
  *(v404 + 10) = *(v1574 + 10);
  v398 = v1568;
  v399 = v1569;
  v400 = v1570;
  v401 = v1571;
  v394 = v1564;
  v395 = v1565;
  v396 = v1566;
  v397 = v1567;
  v390 = v1560;
  v391 = v1561;
  v392 = v1562;
  v393 = v1563;
  v389 = 35;
  sub_2142FCC0C(&v1560, v387);
  sub_2146DA388();
  v387[12] = v402;
  v387[13] = v403;
  *v388 = v404[0];
  *&v388[10] = *(v404 + 10);
  v387[8] = v398;
  v387[9] = v399;
  v387[10] = v400;
  v387[11] = v401;
  v387[4] = v394;
  v387[5] = v395;
  v387[6] = v396;
  v387[7] = v397;
  v387[0] = v390;
  v387[1] = v391;
  v387[2] = v392;
  v387[3] = v393;
  sub_2142FCBB8(v387);
  v384 = v1587;
  v385 = v1588;
  v386[0] = v1589[0];
  *(v386 + 10) = *(v1589 + 10);
  v380 = v1583;
  v381 = v1584;
  v382 = v1585;
  v383 = v1586;
  v376 = v1579;
  v377 = v1580;
  v378 = v1581;
  v379 = v1582;
  v372 = v1575;
  v373 = v1576;
  v374 = v1577;
  v375 = v1578;
  v371 = 36;
  sub_2142FCC0C(&v1575, v369);
  sub_2146DA388();
  v369[12] = v384;
  v369[13] = v385;
  *v370 = v386[0];
  *&v370[10] = *(v386 + 10);
  v369[8] = v380;
  v369[9] = v381;
  v369[10] = v382;
  v369[11] = v383;
  v369[4] = v376;
  v369[5] = v377;
  v369[6] = v378;
  v369[7] = v379;
  v369[0] = v372;
  v369[1] = v373;
  v369[2] = v374;
  v369[3] = v375;
  sub_2142FCBB8(v369);
  v366 = v1602;
  v367 = v1603;
  v368[0] = v1604[0];
  *(v368 + 10) = *(v1604 + 10);
  v362 = v1598;
  v363 = v1599;
  v364 = v1600;
  v365 = v1601;
  v358 = v1594;
  v359 = v1595;
  v360 = v1596;
  v361 = v1597;
  v354 = v1590;
  v355 = v1591;
  v356 = v1592;
  v357 = v1593;
  v353 = 37;
  sub_2142FCC0C(&v1590, v351);
  sub_2146DA388();
  v351[12] = v366;
  v351[13] = v367;
  *v352 = v368[0];
  *&v352[10] = *(v368 + 10);
  v351[8] = v362;
  v351[9] = v363;
  v351[10] = v364;
  v351[11] = v365;
  v351[4] = v358;
  v351[5] = v359;
  v351[6] = v360;
  v351[7] = v361;
  v351[0] = v354;
  v351[1] = v355;
  v351[2] = v356;
  v351[3] = v357;
  sub_2142FCBB8(v351);
  v348 = v1617;
  v349 = v1618;
  v350[0] = v1619[0];
  *(v350 + 10) = *(v1619 + 10);
  v344 = v1613;
  v345 = v1614;
  v346 = v1615;
  v347 = v1616;
  v340 = v1609;
  v341 = v1610;
  v342 = v1611;
  v343 = v1612;
  v336 = v1605;
  v337 = v1606;
  v338 = v1607;
  v339 = v1608;
  v335 = 38;
  sub_2142FCC0C(&v1605, v333);
  sub_2146DA388();
  v333[12] = v348;
  v333[13] = v349;
  *v334 = v350[0];
  *&v334[10] = *(v350 + 10);
  v333[8] = v344;
  v333[9] = v345;
  v333[10] = v346;
  v333[11] = v347;
  v333[4] = v340;
  v333[5] = v341;
  v333[6] = v342;
  v333[7] = v343;
  v333[0] = v336;
  v333[1] = v337;
  v333[2] = v338;
  v333[3] = v339;
  sub_2142FCBB8(v333);
  v330 = v1632;
  v331 = v1633;
  v332[0] = v1634[0];
  *(v332 + 10) = *(v1634 + 10);
  v326 = v1628;
  v327 = v1629;
  v328 = v1630;
  v329 = v1631;
  v322 = v1624;
  v323 = v1625;
  v324 = v1626;
  v325 = v1627;
  v318 = v1620;
  v319 = v1621;
  v320 = v1622;
  v321 = v1623;
  v317 = 39;
  sub_2142FCC0C(&v1620, v315);
  sub_2146DA388();
  v315[12] = v330;
  v315[13] = v331;
  *v316 = v332[0];
  *&v316[10] = *(v332 + 10);
  v315[8] = v326;
  v315[9] = v327;
  v315[10] = v328;
  v315[11] = v329;
  v315[4] = v322;
  v315[5] = v323;
  v315[6] = v324;
  v315[7] = v325;
  v315[0] = v318;
  v315[1] = v319;
  v315[2] = v320;
  v315[3] = v321;
  sub_2142FCBB8(v315);
  return (*(v313 + 8))(v1635, v314);
}

uint64_t AvatarRecord.init(with:descriptor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2140676DC;
  *(v8 + 24) = 0;
  *(inited + 32) = v8;
  sub_214042B80(inited, &v18);
  v10 = v18;
  v9 = v19;
  v11 = v22;
  v17[0] = a1;
  v17[1] = a2;
  v23 = v22;
  v18 = 0xD000000000000017;
  v19 = 0x800000021478F410;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v12 = v10(v17, &v23, &v18);
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
      *(a4 + 40) = v16;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD000000000000017;
    v14[1] = 0x800000021478F410;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_214199C4C()
{
  if (*v0)
  {
    result = 0x7470697263736564;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_214199C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
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

uint64_t sub_214199D70(uint64_t a1)
{
  v2 = sub_2142FCCBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214199DAC(uint64_t a1)
{
  v2 = sub_2142FCCBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvatarRecord.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908480, &qword_2146F5060);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FCCBC();
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
  sub_2142FCD10();
  sub_2146DA1C8();
  v15 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2140676DC;
  *(v17 + 24) = 0;
  *(inited + 32) = v17;
  v31 = v15;

  sub_214042B80(inited, &v34);
  v18 = v13;
  v20 = v34;
  v19 = v35;
  v21 = v37;
  v33[0] = v32;
  v33[1] = v18;
  v28 = v18;
  v29 = 0x800000021478F410;
  v39 = v38;
  v40 = v38;
  v34 = 0xD000000000000017;
  v35 = 0x800000021478F410;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;
  v30 = v21;

  v27 = v20;
  v22 = v20(v33, &v40, &v34);
  v23 = v28;
  if (v22)
  {

    (*(v6 + 8))(v9, v5);

    *a2 = v27;
    *(a2 + 8) = v19;
    v24 = v31;
    *(a2 + 16) = v32;
    *(a2 + 24) = v23;
    *(a2 + 32) = v39;
    *(a2 + 40) = v24;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v25 = v29;
    *v26 = 0xD000000000000017;
    v26[1] = v25;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AvatarRecord.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908498, &qword_2146F5068);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = v1[2];
  v8 = v1[3];
  v13 = v1[5];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FCCBC();
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
      sub_2142FCD64();

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

__n128 MemojiPoster.init(with:avatarImage:avatarRecord:hasBody:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *(a3 + 32);
  v11 = *(a3 + 40);
  LOWORD(v31[0]) = 0;
  sub_2140615D0(v31);
  v12 = v31[9];
  *(a5 + 408) = v31[8];
  *(a5 + 424) = v12;
  v13 = v31[11];
  *(a5 + 440) = v31[10];
  *(a5 + 456) = v13;
  v14 = v31[5];
  *(a5 + 344) = v31[4];
  *(a5 + 360) = v14;
  v15 = v31[7];
  *(a5 + 376) = v31[6];
  *(a5 + 392) = v15;
  v16 = v31[1];
  *(a5 + 280) = v31[0];
  *(a5 + 296) = v16;
  v17 = v31[3];
  *(a5 + 312) = v31[2];
  *(a5 + 328) = v17;
  *(a5 + 272) = 0;
  *(a5 + 240) = 0u;
  *(a5 + 256) = 0u;
  *(a5 + 208) = 0u;
  *(a5 + 224) = 0u;
  *(a5 + 176) = 0u;
  *(a5 + 192) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 32) = 0u;
  v18 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v18;
  v19 = *(a3 + 16);
  *(a5 + 472) = *a3;
  *(a5 + 488) = v19;
  *(a5 + 504) = v10;
  *(a5 + 512) = v11;
  *(a5 + 520) = a4;
  sub_213FB2DF4(a5 + 32, &qword_27C904858, &qword_214736F00);
  v20 = *(a2 + 192);
  v21 = *(a2 + 224);
  *(a5 + 240) = *(a2 + 208);
  *(a5 + 256) = v21;
  v22 = *(a2 + 128);
  v23 = *(a2 + 160);
  v24 = *(a2 + 176);
  *(a5 + 176) = *(a2 + 144);
  *(a5 + 192) = v23;
  *(a5 + 208) = v24;
  *(a5 + 224) = v20;
  result = *(a2 + 64);
  v26 = *(a2 + 96);
  v27 = *(a2 + 112);
  *(a5 + 112) = *(a2 + 80);
  *(a5 + 128) = v26;
  *(a5 + 144) = v27;
  *(a5 + 160) = v22;
  v28 = *(a2 + 16);
  *(a5 + 32) = *a2;
  v29 = *(a2 + 32);
  v30 = *(a2 + 48);
  *(a5 + 48) = v28;
  *(a5 + 64) = v29;
  *(a5 + 272) = *(a2 + 240);
  *(a5 + 80) = v30;
  *(a5 + 96) = result;
  return result;
}