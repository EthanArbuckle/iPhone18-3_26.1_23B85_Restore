uint64_t LiveBlogStaticAttributes.minimal.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LiveBlogStaticAttributes() + 20);

  return sub_21A0BE5B8(a1, v3);
}

uint64_t LiveBlogStaticAttributes.compactLeading.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LiveBlogStaticAttributes() + 24);
  v4 = *(v3 + 176);
  v5 = *(v3 + 144);
  v32 = *(v3 + 160);
  v33 = v4;
  v6 = *(v3 + 176);
  v34 = *(v3 + 192);
  v7 = *(v3 + 112);
  v9 = *(v3 + 80);
  v28 = *(v3 + 96);
  v8 = v28;
  v29 = v7;
  v10 = *(v3 + 112);
  v11 = *(v3 + 144);
  v30 = *(v3 + 128);
  v12 = v30;
  v31 = v11;
  v13 = *(v3 + 48);
  v15 = *(v3 + 16);
  v24 = *(v3 + 32);
  v14 = v24;
  v25 = v13;
  v16 = *(v3 + 48);
  v17 = *(v3 + 80);
  v26 = *(v3 + 64);
  v18 = v26;
  v27 = v17;
  v19 = *(v3 + 16);
  v23[0] = *v3;
  v20 = v23[0];
  v23[1] = v19;
  *(a1 + 160) = v32;
  *(a1 + 176) = v6;
  *(a1 + 192) = *(v3 + 192);
  *(a1 + 96) = v8;
  *(a1 + 112) = v10;
  *(a1 + 128) = v12;
  *(a1 + 144) = v5;
  *(a1 + 32) = v14;
  *(a1 + 48) = v16;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v35 = *(v3 + 208);
  *(a1 + 208) = *(v3 + 208);
  *a1 = v20;
  *(a1 + 16) = v15;
  return sub_219F45500(v23, v22, &qword_27CCD9EB8);
}

__n128 LiveBlogStaticAttributes.compactLeading.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LiveBlogStaticAttributes() + 24);
  v4 = *(v3 + 176);
  v17[10] = *(v3 + 160);
  v17[11] = v4;
  v17[12] = *(v3 + 192);
  v18 = *(v3 + 208);
  v5 = *(v3 + 112);
  v17[6] = *(v3 + 96);
  v17[7] = v5;
  v6 = *(v3 + 144);
  v17[8] = *(v3 + 128);
  v17[9] = v6;
  v7 = *(v3 + 48);
  v17[2] = *(v3 + 32);
  v17[3] = v7;
  v8 = *(v3 + 80);
  v17[4] = *(v3 + 64);
  v17[5] = v8;
  v9 = *(v3 + 16);
  v17[0] = *v3;
  v17[1] = v9;
  sub_219F6409C(v17, &qword_27CCD9EB8);
  v10 = *(a1 + 176);
  *(v3 + 160) = *(a1 + 160);
  *(v3 + 176) = v10;
  *(v3 + 192) = *(a1 + 192);
  *(v3 + 208) = *(a1 + 208);
  v11 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v11;
  v12 = *(a1 + 144);
  *(v3 + 128) = *(a1 + 128);
  *(v3 + 144) = v12;
  v13 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v13;
  v14 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v14;
  result = *a1;
  v16 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v16;
  return result;
}

uint64_t LiveBlogStaticAttributes.newsLogo.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveBlogStaticAttributes() + 28));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[3];
  v8 = v3[5];
  v23 = v3[4];
  v9 = v23;
  v24 = v8;
  v10 = v3[5];
  v11 = v3[7];
  v25 = v3[6];
  v12 = v25;
  v26 = v11;
  v13 = v3[1];
  v14 = v3[3];
  v21 = v3[2];
  v15 = v21;
  v22 = v14;
  v16 = v3[1];
  v20[0] = *v3;
  v17 = v20[0];
  v20[1] = v16;
  a1[8] = v27;
  a1[9] = v6;
  a1[10] = v3[10];
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v4;
  *a1 = v17;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return sub_219F45500(v20, &v19, &qword_27CCD9B40);
}

__n128 LiveBlogStaticAttributes.newsLogo.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for LiveBlogStaticAttributes() + 28));
  v4 = v3[9];
  v14[8] = v3[8];
  v14[9] = v4;
  v14[10] = v3[10];
  v5 = v3[5];
  v14[4] = v3[4];
  v14[5] = v5;
  v6 = v3[7];
  v14[6] = v3[6];
  v14[7] = v6;
  v7 = v3[3];
  v14[2] = v3[2];
  v14[3] = v7;
  v8 = v3[1];
  v14[0] = *v3;
  v14[1] = v8;
  sub_219F6409C(v14, &qword_27CCD9B40);
  v9 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v9;
  v3[10] = *(a1 + 160);
  v10 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v10;
  v11 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v11;
  v12 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v12;
  result = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = result;
  return result;
}

uint64_t LiveBlogStaticAttributes.theme.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = *(type metadata accessor for LiveBlogStaticAttributes() + 32);
  memcpy(__dst, (v2 + v5), 0x9E9uLL);
  memcpy(v4, (v2 + v5), 0x9E9uLL);
  return sub_219F45500(__dst, &v7, &qword_27CCD9EB0);
}

void *LiveBlogStaticAttributes.theme.setter(const void *a1)
{
  v3 = *(type metadata accessor for LiveBlogStaticAttributes() + 32);
  memcpy(v5, (v1 + v3), 0x9E9uLL);
  sub_219F6409C(v5, &qword_27CCD9EB0);
  return memcpy((v1 + v3), a1, 0x9E9uLL);
}

uint64_t LiveBlogStaticAttributes.properties.getter()
{
  type metadata accessor for LiveBlogStaticAttributes();
}

uint64_t LiveBlogStaticAttributes.properties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveBlogStaticAttributes() + 36);

  *(v1 + v3) = a1;
  return result;
}

void *LiveBlogStaticAttributes.init(header:minimal:compactLeading:newsLogo:theme:properties:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v54 = v3;
  v55 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v2;
  v13 = v12;
  v14 = type metadata accessor for ActivityHeaderData();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = type metadata accessor for LiveBlogStaticAttributes();
  v16 = v13 + v15[6];
  sub_219F87EAC(v56);
  v17 = v56[11];
  *(v16 + 160) = v56[10];
  *(v16 + 176) = v17;
  *(v16 + 192) = v56[12];
  *(v16 + 208) = v57;
  v18 = v56[7];
  *(v16 + 96) = v56[6];
  *(v16 + 112) = v18;
  v19 = v56[9];
  *(v16 + 128) = v56[8];
  *(v16 + 144) = v19;
  v20 = v56[3];
  *(v16 + 32) = v56[2];
  *(v16 + 48) = v20;
  v21 = v56[5];
  *(v16 + 64) = v56[4];
  *(v16 + 80) = v21;
  v22 = v56[1];
  *v16 = v56[0];
  *(v16 + 16) = v22;
  v23 = (v13 + v15[7]);
  sub_219F5EC1C(v58);
  v24 = v58[9];
  v23[8] = v58[8];
  v23[9] = v24;
  v23[10] = v58[10];
  v25 = v58[5];
  v23[4] = v58[4];
  v23[5] = v25;
  v26 = v58[7];
  v23[6] = v58[6];
  v23[7] = v26;
  v27 = v58[1];
  *v23 = v58[0];
  v23[1] = v27;
  v28 = v58[3];
  v23[2] = v58[2];
  v23[3] = v28;
  v29 = v15[8];
  sub_219F87E24(__src);
  memcpy((v13 + v29), __src, 0x9E9uLL);
  v53 = v15[9];
  sub_21A07DD6C(v11, v13);
  sub_21A0B03A4(v10, v13 + v15[5], type metadata accessor for ActivityMinimalAppearanceTheme);
  v30 = *(v16 + 176);
  v60[10] = *(v16 + 160);
  v60[11] = v30;
  v60[12] = *(v16 + 192);
  v31 = *(v16 + 112);
  v60[6] = *(v16 + 96);
  v60[7] = v31;
  v32 = *(v16 + 144);
  v60[8] = *(v16 + 128);
  v60[9] = v32;
  v33 = *(v16 + 48);
  v60[2] = *(v16 + 32);
  v60[3] = v33;
  v34 = *(v16 + 80);
  v60[4] = *(v16 + 64);
  v60[5] = v34;
  v35 = *(v16 + 16);
  v60[0] = *v16;
  v61 = *(v16 + 208);
  v60[1] = v35;
  sub_219F6409C(v60, &qword_27CCD9EB8);
  v36 = *(v8 + 80);
  *(v16 + 64) = *(v8 + 64);
  *(v16 + 80) = v36;
  v37 = *(v8 + 48);
  *(v16 + 32) = *(v8 + 32);
  *(v16 + 48) = v37;
  v38 = *(v8 + 144);
  *(v16 + 128) = *(v8 + 128);
  *(v16 + 144) = v38;
  v39 = *(v8 + 112);
  *(v16 + 96) = *(v8 + 96);
  *(v16 + 112) = v39;
  *(v16 + 208) = *(v8 + 208);
  v40 = *(v8 + 192);
  *(v16 + 176) = *(v8 + 176);
  *(v16 + 192) = v40;
  *(v16 + 160) = *(v8 + 160);
  v41 = *(v8 + 16);
  *v16 = *v8;
  *(v16 + 16) = v41;
  v42 = v23[6];
  v62[7] = v23[7];
  v43 = v23[9];
  v62[8] = v23[8];
  v62[9] = v43;
  v62[10] = v23[10];
  v44 = v23[2];
  v62[3] = v23[3];
  v45 = v23[5];
  v62[4] = v23[4];
  v62[5] = v45;
  v62[6] = v42;
  v46 = v23[1];
  v62[0] = *v23;
  v62[1] = v46;
  v62[2] = v44;
  sub_219F6409C(v62, &qword_27CCD9B40);
  v47 = v6[9];
  v23[8] = v6[8];
  v23[9] = v47;
  v23[10] = v6[10];
  v48 = v6[5];
  v23[4] = v6[4];
  v23[5] = v48;
  v49 = v6[7];
  v23[6] = v6[6];
  v23[7] = v49;
  v50 = v6[1];
  *v23 = *v6;
  v23[1] = v50;
  v51 = v6[3];
  v23[2] = v6[2];
  v23[3] = v51;
  memcpy(__dst, (v13 + v29), 0x9E9uLL);
  sub_219F6409C(__dst, &qword_27CCD9EB0);
  result = memcpy((v13 + v29), v54, 0x9E9uLL);
  *(v13 + v53) = v55;
  return result;
}

uint64_t sub_21A0BB5B4()
{
  v1 = *v0;
  v2 = 0x726564616568;
  v3 = 0x6F676F4C7377656ELL;
  v4 = 0x656D656874;
  if (v1 != 4)
  {
    v4 = 0x69747265706F7270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C616D696E696DLL;
  if (v1 != 1)
  {
    v5 = 0x4C746361706D6F63;
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

uint64_t sub_21A0BB678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A0BE9B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A0BB6A0(uint64_t a1)
{
  v2 = sub_21A0BE61C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0BB6DC(uint64_t a1)
{
  v2 = sub_21A0BE61C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveBlogStaticAttributes.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = MEMORY[0x28223BE20](a1, a2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDE68);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v39[-v9];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_21A0BE61C();
  sub_21A0E6EAC();
  v44[0] = 0;
  type metadata accessor for ActivityHeaderData();
  sub_21A0BE828(&qword_27CCDCEC0, type metadata accessor for ActivityHeaderData);
  v11 = v4;
  sub_21A0E6B6C();
  if (!v3)
  {
    v77 = type metadata accessor for LiveBlogStaticAttributes();
    v76 = 1;
    type metadata accessor for ActivityMinimalAppearanceTheme();
    sub_21A0BE828(&qword_27CCDD940, type metadata accessor for ActivityMinimalAppearanceTheme);
    sub_21A0E6BBC();
    v12 = v77;
    v13 = (v11 + *(v77 + 24));
    v14 = v13[9];
    v74[10] = v13[10];
    v15 = v13[10];
    v74[11] = v13[11];
    v16 = v13[11];
    v74[12] = v13[12];
    v17 = v13[5];
    v74[6] = v13[6];
    v18 = v13[6];
    v74[7] = v13[7];
    v19 = v13[7];
    v74[8] = v13[8];
    v20 = v13[8];
    v74[9] = v13[9];
    v21 = v13[1];
    v74[2] = v13[2];
    v22 = v13[2];
    v74[3] = v13[3];
    v23 = v13[3];
    v74[4] = v13[4];
    v24 = v13[4];
    v74[5] = v13[5];
    v74[0] = *v13;
    v25 = *v13;
    v74[1] = v13[1];
    v70 = v15;
    v71 = v16;
    v72 = v13[12];
    v66 = v18;
    v67 = v19;
    v68 = v20;
    v69 = v14;
    v62 = v22;
    v63 = v23;
    v64 = v24;
    v65 = v17;
    v60 = v25;
    v75 = *(v13 + 26);
    v73 = *(v13 + 26);
    v61 = v21;
    v59 = 2;
    sub_219F45500(v74, v44, &qword_27CCD9EB8);
    sub_21A0BE670();
    sub_21A0E6B6C();
    v56[10] = v70;
    v56[11] = v71;
    v56[12] = v72;
    v57 = v73;
    v56[6] = v66;
    v56[7] = v67;
    v56[8] = v68;
    v56[9] = v69;
    v56[2] = v62;
    v56[3] = v63;
    v56[4] = v64;
    v56[5] = v65;
    v56[0] = v60;
    v56[1] = v61;
    sub_219F6409C(v56, &qword_27CCD9EB8);
    v26 = (v11 + *(v12 + 28));
    v27 = v26[6];
    v58[7] = v26[7];
    v28 = v26[7];
    v58[8] = v26[8];
    v29 = v26[8];
    v58[9] = v26[9];
    v30 = v26[9];
    v58[10] = v26[10];
    v31 = v26[2];
    v58[3] = v26[3];
    v32 = v26[3];
    v58[4] = v26[4];
    v33 = v26[4];
    v58[5] = v26[5];
    v34 = v26[5];
    v58[6] = v26[6];
    v35 = *v26;
    v58[1] = v26[1];
    v36 = v26[1];
    v58[2] = v26[2];
    v58[0] = *v26;
    v52 = v28;
    v53 = v29;
    v54 = v30;
    v55 = v26[10];
    v48 = v32;
    v49 = v33;
    v50 = v34;
    v51 = v27;
    v45 = v35;
    v46 = v36;
    v47 = v31;
    v44[2543] = 3;
    sub_219F45500(v58, v44, &qword_27CCD9B40);
    sub_21A02F868();
    sub_21A0E6B6C();
    v43[8] = v53;
    v43[9] = v54;
    v43[10] = v55;
    v43[4] = v49;
    v43[5] = v50;
    v43[6] = v51;
    v43[7] = v52;
    v43[0] = v45;
    v43[1] = v46;
    v43[2] = v47;
    v43[3] = v48;
    sub_219F6409C(v43, &qword_27CCD9B40);
    v38 = *(v12 + 32);
    memcpy(v44, (v11 + v38), 0x9E9uLL);
    memcpy(v42, (v11 + v38), sizeof(v42));
    v41[2543] = 4;
    sub_219F45500(v44, v41, &qword_27CCD9EB0);
    sub_21A07FFF8();
    sub_21A0E6B6C();
    memcpy(v41, v42, 0x9E9uLL);
    sub_219F6409C(v41, &qword_27CCD9EB0);
    v40 = *(v11 + *(v77 + 36));
    v39[7] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9EE0);
    sub_21A0802B0(&qword_27CCDCEE0, sub_21A08004C);
    sub_21A0E6B6C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t LiveBlogStaticAttributes.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = MEMORY[0x28223BE20](a1, a2);
  v5 = type metadata accessor for ActivityHeaderData();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v54[-v12];
  sub_219F45500(v3, &v54[-v12], &qword_27CCD9608);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_21A0B03A4(v13, v9, type metadata accessor for ActivityHeaderData);
    sub_21A0E6DCC();
    ActivityHeaderData.hash(into:)(v4);
    sub_21A0BE780(v9, type metadata accessor for ActivityHeaderData);
  }

  v14 = type metadata accessor for LiveBlogStaticAttributes();
  v15 = v3 + v14[5];
  sub_219FAB16C(v4);
  v16 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v17 = (v15 + *(v16 + 20));
  v18 = v17[9];
  v105 = v17[8];
  v106 = v18;
  v107 = v17[10];
  v19 = v17[5];
  v101 = v17[4];
  v102 = v19;
  v20 = v17[7];
  v103 = v17[6];
  v104 = v20;
  v21 = v17[3];
  v99 = v17[2];
  v100 = v21;
  v22 = v17[1];
  v97 = *v17;
  v98 = v22;
  sub_21A02EB6C(v4);
  v23 = (v15 + *(v16 + 24));
  v24 = v23[9];
  v94 = v23[8];
  v95 = v24;
  v96 = v23[10];
  v25 = v23[5];
  v90 = v23[4];
  v91 = v25;
  v26 = v23[6];
  v93 = v23[7];
  v92 = v26;
  v27 = v23[1];
  v86 = *v23;
  v87 = v27;
  v28 = v23[2];
  v89 = v23[3];
  v88 = v28;
  sub_21A02EB6C(v4);
  v29 = v3 + v14[6];
  v30 = *(v29 + 176);
  v31 = *(v29 + 144);
  v69 = *(v29 + 160);
  v70 = v30;
  v32 = *(v29 + 176);
  v71 = *(v29 + 192);
  v33 = *(v29 + 112);
  v34 = *(v29 + 80);
  v65 = *(v29 + 96);
  v66 = v33;
  v35 = *(v29 + 112);
  v36 = *(v29 + 144);
  v67 = *(v29 + 128);
  v68 = v36;
  v37 = *(v29 + 48);
  v38 = *(v29 + 16);
  v61 = *(v29 + 32);
  v62 = v37;
  v39 = *(v29 + 48);
  v40 = *(v29 + 80);
  v63 = *(v29 + 64);
  v64 = v40;
  v41 = *(v29 + 16);
  v59 = *v29;
  v60 = v41;
  v73[10] = v69;
  v73[11] = v32;
  v73[12] = *(v29 + 192);
  v73[6] = v65;
  v73[7] = v35;
  v73[8] = v67;
  v73[9] = v31;
  v73[2] = v61;
  v73[3] = v39;
  v73[4] = v63;
  v73[5] = v34;
  v72 = *(v29 + 208);
  v74 = *(v29 + 208);
  v73[0] = v59;
  v73[1] = v38;
  if (j__get_enum_tag_for_layout_string_22NewsLiveActivitiesCore7DynamicVyAA17ActivityTextThemeV6TraitsVGSg_0(v73) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    v58[10] = v69;
    v58[11] = v70;
    v58[12] = v71;
    *&v58[13] = v72;
    v58[6] = v65;
    v58[7] = v66;
    v58[8] = v67;
    v58[9] = v68;
    v58[2] = v61;
    v58[3] = v62;
    v58[4] = v63;
    v58[5] = v64;
    v58[0] = v59;
    v58[1] = v60;
    sub_21A0E6DCC();
    sub_219FF5F98(v58, v57);
    sub_21A0E626C();
    v56[10] = v58[11];
    v56[11] = v58[12];
    *&v56[12] = *&v58[13];
    v56[6] = v58[7];
    v56[7] = v58[8];
    v56[9] = v58[10];
    v56[8] = v58[9];
    v56[2] = v58[3];
    v56[3] = v58[4];
    v56[5] = v58[6];
    v56[4] = v58[5];
    v56[1] = v58[2];
    v56[0] = v58[1];
    if (sub_219F63C20(v56) == 1)
    {
      sub_21A0E6DCC();
    }

    else
    {
      v57[8] = v58[9];
      v57[9] = v58[10];
      v57[10] = v58[11];
      *&v57[11] = *&v58[12];
      v57[4] = v58[5];
      v57[5] = v58[6];
      v57[6] = v58[7];
      v57[7] = v58[8];
      v57[0] = v58[1];
      v57[1] = v58[2];
      v57[2] = v58[3];
      v57[3] = v58[4];
      v42 = *(&v58[12] + 1);
      v43 = *&v58[13];
      sub_21A0E6DCC();
      *(&v57[11] + 1) = v42;
      *&v57[12] = v43;
      ActivityTextTheme.hash(into:)(v4);
      sub_219F91544(v4, v42);
      sub_219F6AF9C(v4, v43);
    }

    sub_219F6409C(&v59, &qword_27CCD9EB8);
  }

  v44 = (v3 + v14[7]);
  v45 = v44[9];
  v83 = v44[8];
  v84 = v45;
  v85 = v44[10];
  v46 = v44[5];
  v79 = v44[4];
  v80 = v46;
  v47 = v44[6];
  v82 = v44[7];
  v81 = v47;
  v48 = v44[1];
  v75 = *v44;
  v76 = v48;
  v49 = v44[2];
  v78 = v44[3];
  v77 = v49;
  sub_21A02EB6C(v4);
  v50 = v14[8];
  memcpy(v57, (v3 + v50), 0x9E9uLL);
  memcpy(v58, (v3 + v50), 0x9E9uLL);
  if (sub_219F88A28(v58) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    memcpy(v54, v57, sizeof(v54));
    sub_21A0E6DCC();
    memcpy(v55, v57, 0x9E9uLL);
    sub_21A080104(v55, v56);
    LiveBlogTheme.hash(into:)(v4, v51);
    memcpy(v56, v54, 0x9E9uLL);
    sub_21A080160(v56);
  }

  v52 = *(v3 + v14[9]);
  if (!v52)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  return sub_219F7D3D0(v4, v52);
}

uint64_t LiveBlogStaticAttributes.hashValue.getter()
{
  sub_21A0E6DAC();
  LiveBlogStaticAttributes.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t LiveBlogStaticAttributes.init(from:)(uint64_t a1, uint64_t a2)
{
  v86 = v2;
  v3 = MEMORY[0x28223BE20](a1, a2);
  v78[0] = v4;
  v81 = type metadata accessor for ActivityMinimalAppearanceTheme();
  MEMORY[0x28223BE20](v81, v5);
  v80 = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v82 = v78 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDE80);
  v79 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v10);
  v12 = v78 - v11;
  v13 = type metadata accessor for LiveBlogStaticAttributes();
  MEMORY[0x28223BE20](v13, v14);
  v16 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ActivityHeaderData();
  v18 = *(*(v17 - 8) + 56);
  v78[1] = v17;
  v18(v16, 1, 1);
  v19 = &v16[v13[6]];
  sub_219F87EAC(v150);
  v20 = v150[11];
  *(v19 + 10) = v150[10];
  *(v19 + 11) = v20;
  *(v19 + 12) = v150[12];
  *(v19 + 26) = v151;
  v21 = v150[7];
  *(v19 + 6) = v150[6];
  *(v19 + 7) = v21;
  v22 = v150[9];
  *(v19 + 8) = v150[8];
  *(v19 + 9) = v22;
  v23 = v150[3];
  *(v19 + 2) = v150[2];
  *(v19 + 3) = v23;
  v24 = v150[5];
  *(v19 + 4) = v150[4];
  *(v19 + 5) = v24;
  v25 = v150[1];
  *v19 = v150[0];
  *(v19 + 1) = v25;
  v26 = &v16[v13[7]];
  sub_219F5EC1C(v152);
  v27 = v152[9];
  *(v26 + 8) = v152[8];
  *(v26 + 9) = v27;
  *(v26 + 10) = v152[10];
  v28 = v152[5];
  *(v26 + 4) = v152[4];
  *(v26 + 5) = v28;
  v29 = v152[7];
  *(v26 + 6) = v152[6];
  *(v26 + 7) = v29;
  v30 = v152[1];
  *v26 = v152[0];
  *(v26 + 1) = v30;
  v31 = v152[3];
  *(v26 + 2) = v152[2];
  *(v26 + 3) = v31;
  v83 = v13;
  v32 = v13[8];
  sub_219F87E24(v153);
  v87 = v16;
  v88 = v32;
  memcpy(&v16[v32], v153, 0x9E9uLL);
  v33 = v3[3];
  v154 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v33);
  sub_21A0BE61C();
  v84 = v12;
  v34 = v86;
  sub_21A0E6E7C();
  if (v34)
  {
    v38 = v87;
    v39 = v88;
    __swift_destroy_boxed_opaque_existential_1(v154);
    sub_219F6409C(v38, &qword_27CCD9608);
    v40 = *(v19 + 11);
    *&v92[160] = *(v19 + 10);
    *&v92[176] = v40;
    *&v92[192] = *(v19 + 12);
    v41 = *(v19 + 7);
    *&v92[96] = *(v19 + 6);
    *&v92[112] = v41;
    v42 = *(v19 + 9);
    *&v92[128] = *(v19 + 8);
    *&v92[144] = v42;
    v43 = *(v19 + 3);
    *&v92[32] = *(v19 + 2);
    *&v92[48] = v43;
    v44 = *(v19 + 5);
    *&v92[64] = *(v19 + 4);
    *&v92[80] = v44;
    v45 = *(v19 + 1);
    *v92 = *v19;
    *&v92[208] = *(v19 + 26);
    *&v92[16] = v45;
    sub_219F6409C(v92, &qword_27CCD9EB8);
    v46 = *(v26 + 9);
    v91[8] = *(v26 + 8);
    v91[9] = v46;
    v91[10] = *(v26 + 10);
    v47 = *(v26 + 5);
    v91[4] = *(v26 + 4);
    v91[5] = v47;
    v48 = *(v26 + 7);
    v91[6] = *(v26 + 6);
    v91[7] = v48;
    v49 = *(v26 + 1);
    v91[0] = *v26;
    v91[1] = v49;
    v50 = *(v26 + 3);
    v91[2] = *(v26 + 2);
    v91[3] = v50;
    sub_219F6409C(v91, &qword_27CCD9B40);
    memcpy(v149, (v38 + v39), 0x9E9uLL);
    return sub_219F6409C(v149, &qword_27CCD9EB0);
  }

  else
  {
    v35 = v80;
    v36 = v79;
    v149[0] = 0;
    sub_21A0BE828(&qword_27CCDCEF8, type metadata accessor for ActivityHeaderData);
    v37 = v82;
    sub_21A0E6A8C();
    v51 = v37;
    v52 = v87;
    sub_21A07DD6C(v51, v87);
    v149[0] = 1;
    sub_21A0BE828(&qword_27CCDD968, type metadata accessor for ActivityMinimalAppearanceTheme);
    sub_21A0E6ADC();
    sub_21A0B03A4(v35, v52 + v83[5], type metadata accessor for ActivityMinimalAppearanceTheme);
    v134 = 2;
    sub_21A0BE6C4();
    sub_21A0E6A8C();
    v128 = v145;
    v129 = v146;
    v130 = v147;
    v131 = v148;
    v124 = v141;
    v125 = v142;
    v126 = v143;
    v127 = v144;
    v120 = v137;
    v121 = v138;
    v122 = v139;
    v123 = v140;
    v118 = v135;
    v119 = v136;
    v53 = *(v19 + 11);
    v132[10] = *(v19 + 10);
    v132[11] = v53;
    v132[12] = *(v19 + 12);
    v133 = *(v19 + 26);
    v54 = *(v19 + 7);
    v132[6] = *(v19 + 6);
    v132[7] = v54;
    v55 = *(v19 + 9);
    v132[8] = *(v19 + 8);
    v132[9] = v55;
    v56 = *(v19 + 3);
    v132[2] = *(v19 + 2);
    v132[3] = v56;
    v57 = *(v19 + 5);
    v132[4] = *(v19 + 4);
    v132[5] = v57;
    v58 = *(v19 + 1);
    v132[0] = *v19;
    v132[1] = v58;
    sub_219F6409C(v132, &qword_27CCD9EB8);
    v59 = v129;
    *(v19 + 10) = v128;
    *(v19 + 11) = v59;
    *(v19 + 12) = v130;
    *(v19 + 26) = v131;
    v60 = v125;
    *(v19 + 6) = v124;
    *(v19 + 7) = v60;
    v61 = v127;
    *(v19 + 8) = v126;
    *(v19 + 9) = v61;
    v62 = v121;
    *(v19 + 2) = v120;
    *(v19 + 3) = v62;
    v63 = v123;
    *(v19 + 4) = v122;
    *(v19 + 5) = v63;
    v64 = v119;
    *v19 = v118;
    *(v19 + 1) = v64;
    v106 = 3;
    sub_21A02F940();
    sub_21A0E6A8C();
    v101 = v114;
    v102 = v115;
    v103 = v116;
    v104 = v117;
    v97 = v110;
    v98 = v111;
    v99 = v112;
    v100 = v113;
    v94 = v107;
    v95 = v108;
    v96 = v109;
    v65 = *(v26 + 9);
    v105[8] = *(v26 + 8);
    v105[9] = v65;
    v105[10] = *(v26 + 10);
    v66 = *(v26 + 5);
    v105[4] = *(v26 + 4);
    v105[5] = v66;
    v67 = *(v26 + 7);
    v105[6] = *(v26 + 6);
    v105[7] = v67;
    v68 = *(v26 + 1);
    v105[0] = *v26;
    v105[1] = v68;
    v69 = *(v26 + 3);
    v105[2] = *(v26 + 2);
    v105[3] = v69;
    sub_219F6409C(v105, &qword_27CCD9B40);
    v70 = v101;
    v71 = v103;
    *(v26 + 8) = v102;
    *(v26 + 9) = v71;
    *(v26 + 10) = v104;
    v72 = v97;
    v73 = v99;
    *(v26 + 4) = v98;
    *(v26 + 5) = v73;
    *(v26 + 6) = v100;
    *(v26 + 7) = v70;
    v74 = v95;
    *v26 = v94;
    *(v26 + 1) = v74;
    *(v26 + 2) = v96;
    *(v26 + 3) = v72;
    v93 = 4;
    sub_21A08025C();
    sub_21A0E6A8C();
    memcpy(v91, v149, 0x9E9uLL);
    v75 = v88;
    memcpy(v92, (v52 + v88), sizeof(v92));
    sub_219F6409C(v92, &qword_27CCD9EB0);
    memcpy((v52 + v75), v91, 0x9E9uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9EE0);
    v89 = 5;
    sub_21A0802B0(&qword_27CCDCF18, sub_21A080334);
    sub_21A0E6A8C();
    v76 = v83[9];
    (*(v36 + 8))(v84, v85);
    *(v52 + v76) = v90;
    sub_21A0BE718(v52, v78[0], type metadata accessor for LiveBlogStaticAttributes);
    __swift_destroy_boxed_opaque_existential_1(v154);
    return sub_21A0BE780(v52, type metadata accessor for LiveBlogStaticAttributes);
  }
}

uint64_t sub_21A0BCF6C()
{
  sub_21A0E6DAC();
  LiveBlogStaticAttributes.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0BCFB0()
{
  sub_21A0E6DAC();
  LiveBlogStaticAttributes.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

BOOL _s22NewsLiveActivitiesCore0B20BlogStaticAttributesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v6 = type metadata accessor for ActivityHeaderData();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v113 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v112 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCF48);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v112 - v17;
  v19 = *(v16 + 56);
  v114 = v5;
  sub_219F45500(v5, &v112 - v17, &qword_27CCD9608);
  v115 = v4;
  sub_219F45500(v4, &v18[v19], &qword_27CCD9608);
  v20 = *(v7 + 48);
  if (v20(v18, 1, v6) == 1)
  {
    if (v20(&v18[v19], 1, v6) == 1)
    {
      sub_219F6409C(v18, &qword_27CCD9608);
      goto LABEL_8;
    }

LABEL_6:
    v21 = &qword_27CCDCF48;
    v22 = v18;
LABEL_33:
    sub_219F6409C(v22, v21);
    return 0;
  }

  sub_219F45500(v18, v13, &qword_27CCD9608);
  if (v20(&v18[v19], 1, v6) == 1)
  {
    sub_21A0BE780(v13, type metadata accessor for ActivityHeaderData);
    goto LABEL_6;
  }

  v23 = &v18[v19];
  v24 = v113;
  sub_21A0B03A4(v23, v113, type metadata accessor for ActivityHeaderData);
  v25 = static ActivityHeaderData.== infix(_:_:)(v13, v24);
  sub_21A0BE780(v24, type metadata accessor for ActivityHeaderData);
  sub_21A0BE780(v13, type metadata accessor for ActivityHeaderData);
  sub_219F6409C(v18, &qword_27CCD9608);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v26 = type metadata accessor for LiveBlogStaticAttributes();
  v27 = v114;
  v28 = v115;
  if (!_s22NewsLiveActivitiesCore30ActivityMinimalAppearanceThemeV2eeoiySbAC_ACtFZ_0(v114 + v26[5], v115 + v26[5]))
  {
    return 0;
  }

  v29 = (v27 + v26[6]);
  v30 = v29[3];
  v31 = v29[4];
  v32 = v31;
  v145[5] = v29[5];
  v145[4] = v31;
  v33 = v29[2];
  v34 = v29[1];
  v145[3] = v29[3];
  v145[2] = v33;
  v35 = v29[7];
  v36 = v29[8];
  v37 = v36;
  v145[9] = v29[9];
  v145[8] = v36;
  v38 = v29[6];
  v39 = v29[5];
  v145[7] = v29[7];
  v145[6] = v38;
  v146 = *(v29 + 26);
  v40 = v29[11];
  v145[12] = v29[12];
  v41 = v29[10];
  v42 = v29[9];
  v145[11] = v29[11];
  v145[10] = v41;
  v43 = *v29;
  v44 = *v29;
  v145[1] = v29[1];
  v145[0] = v43;
  v45 = v28 + v26[6];
  v46 = *(v45 + 176);
  v47 = *(v45 + 144);
  v156 = *(v45 + 160);
  v157 = v46;
  v48 = *(v45 + 176);
  v158 = *(v45 + 192);
  v49 = *(v45 + 112);
  v50 = *(v45 + 80);
  v152 = *(v45 + 96);
  v153 = v49;
  v51 = *(v45 + 112);
  v52 = *(v45 + 144);
  v154 = *(v45 + 128);
  v155 = v52;
  v53 = *(v45 + 48);
  v54 = *(v45 + 16);
  v148 = *(v45 + 32);
  v149 = v53;
  v55 = *(v45 + 48);
  v56 = *(v45 + 80);
  v150 = *(v45 + 64);
  v151 = v56;
  v57 = *(v45 + 16);
  v147[0] = *v45;
  v147[1] = v57;
  v58 = v29[11];
  v122[10] = v29[10];
  v122[11] = v58;
  v122[12] = v29[12];
  v59 = v29[7];
  v122[6] = v29[6];
  v122[7] = v59;
  v60 = v29[9];
  v122[8] = v29[8];
  v122[9] = v60;
  v61 = v29[3];
  v122[2] = v29[2];
  v122[3] = v61;
  v62 = v29[5];
  v122[4] = v29[4];
  v122[5] = v62;
  v63 = v29[1];
  v122[0] = *v29;
  v122[1] = v63;
  v64 = *(v45 + 192);
  *(&v122[24] + 8) = v48;
  *(&v122[25] + 8) = v64;
  *(&v122[20] + 8) = v51;
  *(&v122[21] + 8) = v154;
  *(&v122[22] + 8) = v47;
  *(&v122[23] + 8) = v156;
  *(&v122[16] + 8) = v55;
  *(&v122[17] + 8) = v150;
  *(&v122[18] + 8) = v50;
  *(&v122[19] + 8) = v152;
  *(&v122[15] + 8) = v148;
  *(&v122[13] + 8) = v147[0];
  *(&v122[14] + 8) = v54;
  v160[10] = v41;
  v160[11] = v40;
  v160[12] = v29[12];
  v160[6] = v38;
  v160[7] = v35;
  v160[8] = v37;
  v160[9] = v42;
  v160[2] = v33;
  v160[3] = v30;
  v160[4] = v32;
  v160[5] = v39;
  v159 = *(v45 + 208);
  v65 = *(v45 + 208);
  *&v122[13] = *(v29 + 26);
  *(&v122[26] + 1) = v65;
  v161 = *(v29 + 26);
  v160[0] = v44;
  v160[1] = v34;
  if (j__get_enum_tag_for_layout_string_22NewsLiveActivitiesCore7DynamicVyAA17ActivityTextThemeV6TraitsVGSg_0(v160) == 1)
  {
    v120[10] = *(&v122[23] + 8);
    v120[11] = *(&v122[24] + 8);
    v120[12] = *(&v122[25] + 8);
    *&v120[13] = *(&v122[26] + 1);
    v120[6] = *(&v122[19] + 8);
    v120[7] = *(&v122[20] + 8);
    v120[8] = *(&v122[21] + 8);
    v120[9] = *(&v122[22] + 8);
    v120[2] = *(&v122[15] + 8);
    v120[3] = *(&v122[16] + 8);
    v120[4] = *(&v122[17] + 8);
    v120[5] = *(&v122[18] + 8);
    v120[0] = *(&v122[13] + 8);
    v120[1] = *(&v122[14] + 8);
    if (j__get_enum_tag_for_layout_string_22NewsLiveActivitiesCore7DynamicVyAA17ActivityTextThemeV6TraitsVGSg_0(v120) == 1)
    {
      v125[10] = v122[10];
      v125[11] = v122[11];
      v125[12] = v122[12];
      *&v125[13] = *&v122[13];
      v125[6] = v122[6];
      v125[7] = v122[7];
      v125[8] = v122[8];
      v125[9] = v122[9];
      v125[2] = v122[2];
      v125[3] = v122[3];
      v125[4] = v122[4];
      v125[5] = v122[5];
      v125[0] = v122[0];
      v125[1] = v122[1];
      sub_219F45500(v145, v124, &qword_27CCD9EB8);
      sub_219F45500(v147, v124, &qword_27CCD9EB8);
      sub_219F6409C(v125, &qword_27CCD9EB8);
      goto LABEL_17;
    }

    sub_219F45500(v145, v125, &qword_27CCD9EB8);
    sub_219F45500(v147, v125, &qword_27CCD9EB8);
LABEL_15:
    memcpy(v120, v122, 0x1B0uLL);
    v21 = &unk_27CCDDEB0;
LABEL_32:
    v22 = v120;
    goto LABEL_33;
  }

  v125[10] = v122[10];
  v125[11] = v122[11];
  v125[12] = v122[12];
  v125[6] = v122[6];
  v125[7] = v122[7];
  v125[8] = v122[8];
  v125[9] = v122[9];
  v125[2] = v122[2];
  v125[3] = v122[3];
  v125[4] = v122[4];
  v125[5] = v122[5];
  v125[0] = v122[0];
  v125[1] = v122[1];
  v124[10] = v122[10];
  v124[11] = v122[11];
  v124[12] = v122[12];
  v124[6] = v122[6];
  v124[7] = v122[7];
  v124[8] = v122[8];
  v124[9] = v122[9];
  v124[2] = v122[2];
  v124[3] = v122[3];
  v124[4] = v122[4];
  v124[5] = v122[5];
  *&v125[13] = *&v122[13];
  *&v124[13] = *&v122[13];
  v124[0] = v122[0];
  v124[1] = v122[1];
  v120[10] = *(&v122[23] + 8);
  v120[11] = *(&v122[24] + 8);
  v120[12] = *(&v122[25] + 8);
  *&v120[13] = *(&v122[26] + 1);
  v120[6] = *(&v122[19] + 8);
  v120[7] = *(&v122[20] + 8);
  v120[8] = *(&v122[21] + 8);
  v120[9] = *(&v122[22] + 8);
  v120[2] = *(&v122[15] + 8);
  v120[3] = *(&v122[16] + 8);
  v120[4] = *(&v122[17] + 8);
  v120[5] = *(&v122[18] + 8);
  v120[0] = *(&v122[13] + 8);
  v120[1] = *(&v122[14] + 8);
  if (j__get_enum_tag_for_layout_string_22NewsLiveActivitiesCore7DynamicVyAA17ActivityTextThemeV6TraitsVGSg_0(v120) == 1)
  {
    v123[10] = v122[10];
    v123[11] = v122[11];
    v123[12] = v122[12];
    *&v123[13] = *&v122[13];
    v123[6] = v122[6];
    v123[7] = v122[7];
    v123[8] = v122[8];
    v123[9] = v122[9];
    v123[2] = v122[2];
    v123[3] = v122[3];
    v123[4] = v122[4];
    v123[5] = v122[5];
    v123[0] = v122[0];
    v123[1] = v122[1];
    sub_219F45500(v145, v121, &qword_27CCD9EB8);
    sub_219F45500(v147, v121, &qword_27CCD9EB8);
    sub_219F45500(v125, v121, &qword_27CCD9EB8);
    sub_219FF5FD0(v123);
    goto LABEL_15;
  }

  v123[10] = *(&v122[23] + 8);
  v123[11] = *(&v122[24] + 8);
  v123[12] = *(&v122[25] + 8);
  *&v123[13] = *(&v122[26] + 1);
  v123[6] = *(&v122[19] + 8);
  v123[7] = *(&v122[20] + 8);
  v123[8] = *(&v122[21] + 8);
  v123[9] = *(&v122[22] + 8);
  v123[2] = *(&v122[15] + 8);
  v123[3] = *(&v122[16] + 8);
  v123[4] = *(&v122[17] + 8);
  v123[5] = *(&v122[18] + 8);
  v123[0] = *(&v122[13] + 8);
  v123[1] = *(&v122[14] + 8);
  sub_219F45500(v145, v121, &qword_27CCD9EB8);
  sub_219F45500(v147, v121, &qword_27CCD9EB8);
  sub_219F45500(v125, v121, &qword_27CCD9EB8);
  v66 = _s22NewsLiveActivitiesCore0B23BlogCompactLeadingThemeV2eeoiySbAC_ACtFZ_0(v124, v123);
  v119[10] = v123[10];
  v119[11] = v123[11];
  v119[12] = v123[12];
  *&v119[13] = *&v123[13];
  v119[6] = v123[6];
  v119[7] = v123[7];
  v119[8] = v123[8];
  v119[9] = v123[9];
  v119[2] = v123[2];
  v119[3] = v123[3];
  v119[4] = v123[4];
  v119[5] = v123[5];
  v119[0] = v123[0];
  v119[1] = v123[1];
  sub_219FF5FD0(v119);
  v121[10] = v124[10];
  v121[11] = v124[11];
  v121[12] = v124[12];
  *&v121[13] = *&v124[13];
  v121[6] = v124[6];
  v121[7] = v124[7];
  v121[8] = v124[8];
  v121[9] = v124[9];
  v121[2] = v124[2];
  v121[3] = v124[3];
  v121[4] = v124[4];
  v121[5] = v124[5];
  v121[0] = v124[0];
  v121[1] = v124[1];
  sub_219FF5FD0(v121);
  v123[10] = v122[10];
  v123[11] = v122[11];
  v123[12] = v122[12];
  *&v123[13] = *&v122[13];
  v123[6] = v122[6];
  v123[7] = v122[7];
  v123[8] = v122[8];
  v123[9] = v122[9];
  v123[2] = v122[2];
  v123[3] = v122[3];
  v123[4] = v122[4];
  v123[5] = v122[5];
  v123[0] = v122[0];
  v123[1] = v122[1];
  sub_219F6409C(v123, &qword_27CCD9EB8);
  if (!v66)
  {
    return 0;
  }

LABEL_17:
  v67 = (v27 + v26[7]);
  v68 = v67[3];
  v69 = v67[4];
  v70 = v69;
  v130 = v67[5];
  v129 = v69;
  v71 = v67[1];
  v72 = v67[3];
  v127 = v67[2];
  v128 = v72;
  v73 = v67[9];
  v135 = v67[10];
  v74 = v67[7];
  v75 = v67[8];
  v76 = v75;
  v134 = v67[9];
  v133 = v75;
  v77 = v67[5];
  v78 = v67[7];
  v131 = v67[6];
  v132 = v78;
  v79 = *v67;
  v80 = *v67;
  v126[1] = v67[1];
  v126[0] = v79;
  v81 = (v28 + v26[7]);
  v82 = v81[7];
  v83 = v81[9];
  v141 = v81[8];
  v142 = v83;
  v84 = v81[9];
  v143 = v81[10];
  v85 = v81[3];
  v86 = v81[5];
  v137 = v81[4];
  v138 = v86;
  v88 = v81[5];
  v87 = v81[6];
  v89 = v87;
  v140 = v81[7];
  v139 = v87;
  v90 = v81[1];
  v136[0] = *v81;
  v136[1] = v90;
  v91 = v81[2];
  v93 = *v81;
  v92 = v81[1];
  v94 = v91;
  v136[3] = v81[3];
  v136[2] = v91;
  v95 = v67[7];
  v96 = v67[9];
  v122[8] = v67[8];
  v122[9] = v96;
  v97 = v67[3];
  v98 = v67[5];
  v122[4] = v67[4];
  v122[5] = v98;
  v99 = v67[6];
  v122[7] = v95;
  v122[6] = v99;
  v100 = v67[1];
  v122[0] = *v67;
  v122[1] = v100;
  v101 = v67[2];
  v122[3] = v97;
  v122[2] = v101;
  v122[18] = v82;
  v122[19] = v141;
  v102 = v81[10];
  v122[20] = v84;
  v122[21] = v102;
  v122[14] = v85;
  v122[15] = v137;
  v122[16] = v88;
  v122[17] = v89;
  v122[10] = v67[10];
  v122[11] = v93;
  v122[12] = v92;
  v122[13] = v94;
  v144[8] = v76;
  v144[9] = v73;
  v144[10] = v67[10];
  v144[4] = v70;
  v144[5] = v77;
  v144[7] = v74;
  v144[6] = v131;
  v144[0] = v80;
  v144[1] = v71;
  v144[3] = v68;
  v144[2] = v127;
  if (sub_219F5EBE4(v144) == 1)
  {
    v120[8] = v122[19];
    v120[9] = v122[20];
    v120[10] = v122[21];
    v120[4] = v122[15];
    v120[5] = v122[16];
    v120[7] = v122[18];
    v120[6] = v122[17];
    v120[0] = v122[11];
    v120[1] = v122[12];
    v120[3] = v122[14];
    v120[2] = v122[13];
    if (sub_219F5EBE4(v120) == 1)
    {
      v125[8] = v122[8];
      v125[9] = v122[9];
      v125[10] = v122[10];
      v125[4] = v122[4];
      v125[5] = v122[5];
      v125[7] = v122[7];
      v125[6] = v122[6];
      v125[0] = v122[0];
      v125[1] = v122[1];
      v125[3] = v122[3];
      v125[2] = v122[2];
      sub_219F45500(v126, v124, &qword_27CCD9B40);
      sub_219F45500(v136, v124, &qword_27CCD9B40);
      sub_219F6409C(v125, &qword_27CCD9B40);
      goto LABEL_25;
    }

    sub_219F45500(v126, v125, &qword_27CCD9B40);
    sub_219F45500(v136, v125, &qword_27CCD9B40);
    goto LABEL_23;
  }

  v125[8] = v122[8];
  v125[9] = v122[9];
  v125[10] = v122[10];
  v125[4] = v122[4];
  v125[5] = v122[5];
  v125[7] = v122[7];
  v125[6] = v122[6];
  v125[0] = v122[0];
  v125[1] = v122[1];
  v125[3] = v122[3];
  v125[2] = v122[2];
  v124[8] = v122[8];
  v124[9] = v122[9];
  v124[10] = v122[10];
  v124[4] = v122[4];
  v124[5] = v122[5];
  v124[7] = v122[7];
  v124[6] = v122[6];
  v124[0] = v122[0];
  v124[1] = v122[1];
  v124[3] = v122[3];
  v124[2] = v122[2];
  v120[8] = v122[19];
  v120[9] = v122[20];
  v120[10] = v122[21];
  v120[4] = v122[15];
  v120[5] = v122[16];
  v120[7] = v122[18];
  v120[6] = v122[17];
  v120[0] = v122[11];
  v120[1] = v122[12];
  v120[3] = v122[14];
  v120[2] = v122[13];
  if (sub_219F5EBE4(v120) == 1)
  {
    v123[8] = v122[8];
    v123[9] = v122[9];
    v123[10] = v122[10];
    v123[4] = v122[4];
    v123[5] = v122[5];
    v123[7] = v122[7];
    v123[6] = v122[6];
    v123[0] = v122[0];
    v123[1] = v122[1];
    v123[3] = v122[3];
    v123[2] = v122[2];
    sub_219F45500(v126, v121, &qword_27CCD9B40);
    sub_219F45500(v136, v121, &qword_27CCD9B40);
    sub_219F45500(v125, v121, &qword_27CCD9B40);
    sub_21A02FC68(v123);
LABEL_23:
    memcpy(v120, v122, 0x160uLL);
    v21 = &unk_27CCDBD28;
    goto LABEL_32;
  }

  v123[8] = v122[19];
  v123[9] = v122[20];
  v123[10] = v122[21];
  v123[4] = v122[15];
  v123[5] = v122[16];
  v123[7] = v122[18];
  v123[6] = v122[17];
  v123[0] = v122[11];
  v123[1] = v122[12];
  v123[3] = v122[14];
  v123[2] = v122[13];
  sub_219F45500(v126, v121, &qword_27CCD9B40);
  sub_219F45500(v136, v121, &qword_27CCD9B40);
  sub_219F45500(v125, v121, &qword_27CCD9B40);
  v103 = _s22NewsLiveActivitiesCore19ActivitySymbolThemeV2eeoiySbAC_ACtFZ_0(v124, v123);
  v119[8] = v123[8];
  v119[9] = v123[9];
  v119[10] = v123[10];
  v119[4] = v123[4];
  v119[5] = v123[5];
  v119[7] = v123[7];
  v119[6] = v123[6];
  v119[0] = v123[0];
  v119[1] = v123[1];
  v119[3] = v123[3];
  v119[2] = v123[2];
  sub_21A02FC68(v119);
  v121[8] = v124[8];
  v121[9] = v124[9];
  v121[10] = v124[10];
  v121[4] = v124[4];
  v121[5] = v124[5];
  v121[7] = v124[7];
  v121[6] = v124[6];
  v121[0] = v124[0];
  v121[1] = v124[1];
  v121[3] = v124[3];
  v121[2] = v124[2];
  sub_21A02FC68(v121);
  v123[8] = v122[8];
  v123[9] = v122[9];
  v123[10] = v122[10];
  v123[4] = v122[4];
  v123[5] = v122[5];
  v123[7] = v122[7];
  v123[6] = v122[6];
  v123[0] = v122[0];
  v123[1] = v122[1];
  v123[3] = v122[3];
  v123[2] = v122[2];
  sub_219F6409C(v123, &qword_27CCD9B40);
  if ((v103 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v104 = v26[8];
  memcpy(v123, (v27 + v104), 0x9E9uLL);
  v105 = v26[8];
  memcpy(v124, (v28 + v105), 0x9E9uLL);
  memcpy(v122, (v27 + v104), 0x9E9uLL);
  memcpy(&v122[159], (v28 + v105), 0x9E9uLL);
  memcpy(v125, (v27 + v104), 0x9E9uLL);
  if (sub_219F88A28(v125) == 1)
  {
    memcpy(v120, &v122[159], 0x9E9uLL);
    if (sub_219F88A28(v120) == 1)
    {
      memcpy(v121, v122, 0x9E9uLL);
      sub_219F45500(v123, v119, &qword_27CCD9EB0);
      sub_219F45500(v124, v119, &qword_27CCD9EB0);
      sub_219F6409C(v121, &qword_27CCD9EB0);
      goto LABEL_36;
    }

    sub_219F45500(v123, v121, &qword_27CCD9EB0);
    sub_219F45500(v124, v121, &qword_27CCD9EB0);
    goto LABEL_31;
  }

  memcpy(v121, v122, 0x9E9uLL);
  memcpy(v119, v122, 0x9E9uLL);
  memcpy(v120, &v122[159], 0x9E9uLL);
  if (sub_219F88A28(v120) == 1)
  {
    memcpy(v118, v122, 0x9E9uLL);
    sub_219F45500(v123, v117, &qword_27CCD9EB0);
    sub_219F45500(v124, v117, &qword_27CCD9EB0);
    sub_219F45500(v121, v117, &qword_27CCD9EB0);
    sub_21A080160(v118);
LABEL_31:
    memcpy(v120, v122, 0x13D9uLL);
    v21 = &qword_27CCDCF50;
    goto LABEL_32;
  }

  memcpy(v118, &v122[159], 0x9E9uLL);
  sub_219F45500(v123, v117, &qword_27CCD9EB0);
  sub_219F45500(v124, v117, &qword_27CCD9EB0);
  sub_219F45500(v121, v117, &qword_27CCD9EB0);
  v107 = _s22NewsLiveActivitiesCore0B9BlogThemeV2eeoiySbAC_ACtFZ_0(v119, v118);
  memcpy(v116, v118, 0x9E9uLL);
  sub_21A080160(v116);
  memcpy(v117, v119, 0x9E9uLL);
  sub_21A080160(v117);
  memcpy(v118, v122, 0x9E9uLL);
  sub_219F6409C(v118, &qword_27CCD9EB0);
  if ((v107 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v108 = v26[9];
  v109 = *(v27 + v108);
  v110 = *(v28 + v108);
  if (v109)
  {
    if (v110)
    {

      v111 = sub_21A07A0C0(v109, v110);

      if (v111)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v110;
}

uint64_t sub_21A0BE5B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityMinimalAppearanceTheme();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A0BE61C()
{
  result = qword_27CCDDE70;
  if (!qword_27CCDDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDE70);
  }

  return result;
}

unint64_t sub_21A0BE670()
{
  result = qword_27CCDDE78;
  if (!qword_27CCDDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDE78);
  }

  return result;
}

unint64_t sub_21A0BE6C4()
{
  result = qword_27CCDDE88;
  if (!qword_27CCDDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDE88);
  }

  return result;
}

uint64_t sub_21A0BE718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A0BE780(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A0BE828(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A0BE8AC()
{
  result = qword_27CCDDE98;
  if (!qword_27CCDDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDE98);
  }

  return result;
}

unint64_t sub_21A0BE904()
{
  result = qword_27CCDDEA0;
  if (!qword_27CCDDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDEA0);
  }

  return result;
}

unint64_t sub_21A0BE95C()
{
  result = qword_27CCDDEA8;
  if (!qword_27CCDDEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDEA8);
  }

  return result;
}

uint64_t sub_21A0BE9B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726564616568 && a2 == 0xE600000000000000;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616D696E696DLL && a2 == 0xE700000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C746361706D6F63 && a2 == 0xEE00676E69646165 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F676F4C7377656ELL && a2 == 0xE800000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
  {

    return 5;
  }

  else
  {
    v6 = sub_21A0E6C5C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_21A0BEBB4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = a2;
    v12 = a3;
    v13 = sub_21A0E486C();
    v15 = v14;

    if (v12)
    {
      v17 = *(*(v7 + 64) + 40);
      *v17 = v13;
      v17[1] = v15;
      v17[2] = v12;
      v16 = v7;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v16);
  }
}

uint64_t sub_21A0BECC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v4 = sub_21A0E4F3C();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  v5 = sub_21A0E5F1C();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A0BEDE0, 0, 0);
}

uint64_t sub_21A0BEDE0()
{
  v1 = v0;
  v2 = v0 + 18;
  v3 = v0[22];
  v4 = sub_21A0E474C();
  v5 = *MEMORY[0x277D313B8];
  v0[30] = v4;
  v0[31] = v5;
  v6 = (v3 + *(type metadata accessor for NetworkRequest() + 24));
  v8 = *v6;
  v7 = v6[1];
  v19 = v4;
  v9 = v5;
  if (((v7 >> 60) & 3) > 1)
  {
    v10 = 0;
  }

  else
  {
    sub_21A0BF3A8(v8, v7);
    v10 = sub_21A0E485C();
    sub_21A0BF3C4(v8, v7);
    v7 = v6[1];
  }

  v1[32] = v10;
  v11 = v1[28];
  v12 = v1[29];
  v13 = v1[27];
  v17 = v1[23];
  v18 = (v7 & 0x3000000000000000) == 0x1000000000000000;
  sub_219F44454();
  (*(v11 + 104))(v12, *MEMORY[0x277D851B8], v13);
  v14 = sub_21A0E670C();
  v1[33] = v14;
  (*(v11 + 8))(v12, v13);
  v1[2] = v1;
  v1[7] = v2;
  v1[3] = sub_21A0BF038;
  v15 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDEB8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21A0BEBB4;
  v1[13] = &block_descriptor_2;
  v1[14] = v15;
  [v17 performHTTPRequestWithURL:v19 method:v5 data:v10 contentType:0 priority:v18 requiresMescalSigning:v14 callbackQueue:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0)) completion:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_21A0BF038()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_21A0BF308;
  }

  else
  {
    v2 = sub_21A0BF148;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A0BF148()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);

  if ([v6 statusCode] - 200 > 0x63)
  {
    goto LABEL_10;
  }

  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2 || *(v4 + 16) == *(v4 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (!v7)
  {
    if ((v5 & 0xFF000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    v8 = *(v0 + 200);
    v9 = *(v0 + 208);
    v20 = *(v0 + 192);
    v10 = *(v0 + 168);
    v11 = v6;
    sub_21A0E4F2C();
    v12 = sub_21A0E4F1C();
    v14 = v13;
    v16 = v15;

    (*(v8 + 8))(v9, v20);

    *v10 = v4;
    *(v10 + 8) = v5;
    *(v10 + 16) = v12;
    *(v10 + 24) = v14;
    *(v10 + 32) = v16 & 1;
    v17 = *(v0 + 8);
    goto LABEL_11;
  }

  if (v4 != v4 >> 32)
  {
    goto LABEL_8;
  }

LABEL_10:
  sub_21A0BF3E0();
  swift_allocError();
  *v18 = v4;
  v18[1] = v5;
  v18[2] = v6;
  swift_willThrow();

  v17 = *(v0 + 8);
LABEL_11:

  return v17();
}

uint64_t sub_21A0BF308()
{
  v1 = v0[33];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_21A0BF3A8(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_219F48FB4(result, a2);
}

uint64_t sub_21A0BF3C4(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_219F49008(result, a2);
}

unint64_t sub_21A0BF3E0()
{
  result = qword_27CCDDEC0;
  if (!qword_27CCDDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDEC0);
  }

  return result;
}

uint64_t sub_21A0BF444(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A0BF48C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21A0BF4E0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_21A0E686C();

  [a3 statusCode];
  v4 = sub_21A0E6BFC();
  MEMORY[0x21CED1980](v4);

  MEMORY[0x21CED1980](46, 0xE100000000000000);
  return 0xD00000000000002CLL;
}

uint64_t sub_21A0BF5A0@<X0>(_BYTE *a1@<X8>)
{
  sub_21A02FD4C();
  result = sub_21A0E555C();
  *a1 = v3;
  return result;
}

uint64_t sub_21A0BF63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NationalElectionCompactViews.ElectionEntityThumbnail(0);
  v5 = v4 - 8;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v31 - v11;
  v13 = (a1 + *(type metadata accessor for PresidentialElectionData(0) + 20));
  v14 = v13 + *(type metadata accessor for PresidentialElectionData.Entity(0) + 28);
  sub_21A0BFB80(v14, v12, type metadata accessor for ElectionEntityTheme);
  v15 = &v12[*(v5 + 28)];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = *v13;
  v17 = sub_21A0E5E4C();
  v19 = v18;
  v20 = v14 + *(type metadata accessor for ElectionEntityTheme() + 32);
  v21 = *(v20 + 16);
  v22 = *(v20 + 48);
  v36 = *(v20 + 32);
  v37[0] = v22;
  v23 = *(v20 + 16);
  v35[0] = *v20;
  v35[1] = v23;
  v24 = *(v20 + 48);
  v33 = v36;
  v34[0] = v24;
  *(v37 + 13) = *(v20 + 61);
  *(v34 + 13) = *(v20 + 61);
  v31 = v35[0];
  v32 = v21;
  sub_21A0BFB80(v12, v9, type metadata accessor for NationalElectionCompactViews.ElectionEntityThumbnail);
  sub_21A0BFB80(v9, a2, type metadata accessor for NationalElectionCompactViews.ElectionEntityThumbnail);
  v25 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDED8) + 48));
  *&v38 = v16;
  *(&v38 + 1) = v17;
  *&v39[0] = v19;
  *(v39 + 8) = v31;
  *(&v39[1] + 8) = v32;
  *(&v39[2] + 8) = v33;
  *(&v39[3] + 8) = v34[0];
  *(&v39[4] + 5) = *(v34 + 13);
  v26 = v39[0];
  *v25 = v38;
  v25[1] = v26;
  v27 = v39[1];
  v28 = v39[2];
  v29 = v39[3];
  *(v25 + 77) = *(&v39[3] + 13);
  v25[3] = v28;
  v25[4] = v29;
  v25[2] = v27;
  sub_219F72F28(v35, v40);
  sub_219F45500(&v38, v40, &qword_27CCDDED0);
  sub_21A0C099C(v12, type metadata accessor for NationalElectionCompactViews.ElectionEntityThumbnail);
  v40[0] = v16;
  v40[1] = v17;
  v40[2] = v19;
  v42 = v32;
  v43 = v33;
  v44[0] = v34[0];
  *(v44 + 13) = *(v34 + 13);
  v41 = v31;
  sub_219F6409C(v40, &qword_27CCDDED0);
  return sub_21A0C099C(v9, type metadata accessor for NationalElectionCompactViews.ElectionEntityThumbnail);
}

uint64_t sub_21A0BF8D8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for NationalElectionCompactViews.ElectionEntityThumbnail(0);
  v5 = v4 - 8;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v29 - v11;
  v13 = (a1 + *(type metadata accessor for PresidentialElectionData(0) + 24));
  v14 = *v13;
  v15 = sub_21A0E5E5C();
  v17 = v16;
  v18 = v13 + *(type metadata accessor for PresidentialElectionData.Entity(0) + 28);
  v19 = v18 + *(type metadata accessor for ElectionEntityTheme() + 32);
  v20 = *(v19 + 48);
  v30 = *(v19 + 32);
  v31[0] = v20;
  *(v31 + 13) = *(v19 + 61);
  v21 = *(v19 + 16);
  v29[0] = *v19;
  v29[1] = v21;
  v34 = v30;
  v35[0] = v20;
  *(v35 + 13) = *(v31 + 13);
  v32 = v29[0];
  v33 = v21;
  sub_21A0BFB80(v18, v12, type metadata accessor for ElectionEntityTheme);
  v22 = &v12[*(v5 + 28)];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  sub_21A0BFB80(v12, v9, type metadata accessor for NationalElectionCompactViews.ElectionEntityThumbnail);
  *&v36 = v14;
  *(&v36 + 1) = v15;
  *&v37[0] = v17;
  *(v37 + 8) = v32;
  *(&v37[1] + 8) = v33;
  *(&v37[2] + 8) = v34;
  *(&v37[3] + 8) = v35[0];
  *(&v37[4] + 5) = *(v35 + 13);
  v23 = v37[0];
  *a2 = v36;
  a2[1] = v23;
  v24 = v37[1];
  v25 = v37[2];
  v26 = v37[3];
  *(a2 + 77) = *(&v37[3] + 13);
  a2[3] = v25;
  a2[4] = v26;
  a2[2] = v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDEC8);
  sub_21A0BFB80(v9, a2 + *(v27 + 48), type metadata accessor for NationalElectionCompactViews.ElectionEntityThumbnail);
  sub_219F72F28(v29, v38);
  sub_219F45500(&v36, v38, &qword_27CCDDED0);
  sub_21A0C099C(v12, type metadata accessor for NationalElectionCompactViews.ElectionEntityThumbnail);
  sub_21A0C099C(v9, type metadata accessor for NationalElectionCompactViews.ElectionEntityThumbnail);
  v38[0] = v14;
  v38[1] = v15;
  v38[2] = v17;
  v40 = v33;
  v41 = v34;
  v42[0] = v35[0];
  *(v42 + 13) = *(v35 + 13);
  v39 = v32;
  return sub_219F6409C(v38, &qword_27CCDDED0);
}

uint64_t sub_21A0BFB80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for NationalElectionCompactViews.LargeVoteCount(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NationalElectionCompactViews.LargeVoteCount(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_21A0BFC8C()
{
  result = type metadata accessor for PresidentialElectionData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21A0BFD20()
{
  type metadata accessor for ElectionEntityTheme();
  if (v0 <= 0x3F)
  {
    sub_219F66008();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21A0BFDC0@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v2 = type metadata accessor for ActivityAssetView(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = (&v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA470);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v89 = &v88 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v93 = &v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v91 = *(v13 - 8);
  v92 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v88 - v15;
  v90 = sub_21A0E554C();
  v17 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v18);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(type metadata accessor for NationalElectionCompactViews.ElectionEntityThumbnail(0) + 20);
  v94 = v1;
  v95 = v16;
  v22 = v1 + v21;
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    v24 = v97;
    if ((v23 & 1) == 0)
    {
      return (*(v7 + 56))(v24, 1, 1, v6);
    }
  }

  else
  {

    sub_21A0E66AC();
    v25 = sub_21A0E575C();
    v96 = v5;
    v26 = v7;
    v27 = v6;
    v28 = v25;
    sub_21A0E512C();

    v6 = v27;
    v7 = v26;
    v5 = v96;
    v24 = v97;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F68370(v23, 0);
    (*(v17 + 8))(v20, v90);
    if (LOBYTE(v125[0]) != 1)
    {
      return (*(v7 + 56))(v24, 1, 1, v6);
    }
  }

  v29 = type metadata accessor for ElectionEntityTheme();
  v30 = v93;
  v31 = v94;
  sub_219F45500(v94 + *(v29 + 28), v93, &qword_27CCD98D8);
  if ((*(v91 + 48))(v30, 1, v92) == 1)
  {
    sub_219F6409C(v30, &qword_27CCD98D8);
    return (*(v7 + 56))(v24, 1, 1, v6);
  }

  v91 = v7;
  v92 = v6;
  v33 = v95;
  sub_219F4D494(v30, v95, &qword_27CCD98D0);
  sub_219F45500(v33, v5 + *(v2 + 20), &qword_27CCD98D0);
  v34 = (v31 + *(v29 + 32));
  v35 = v34[3];
  v100 = v34[2];
  v101 = v35;
  v102 = v34[4];
  v103 = *(v34 + 10);
  v36 = v34[1];
  v98 = *v34;
  v99 = v36;
  PoliticalPartyTheme.thumbnail.getter(v104);
  nullsub_1(v104, v37);
  v38 = v34[3];
  v107 = v34[2];
  v108[0] = v38;
  *(v108 + 13) = *(v34 + 61);
  v39 = v34[1];
  v105 = *v34;
  v106 = v39;
  sub_219F72F28(&v105, v125);
  v94 = v2;
  v96 = v5;
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  v40 = qword_27CCDBDB0;
  v41 = *(&v105 + 1);
  v93 = v105;
  v42 = v106;
  v43 = v107;
  v88 = *(&v108[0] + 1);
  v90 = *&v108[0];
  v44 = LODWORD(v108[1]) | (BYTE4(v108[1]) << 32);
  memset(v109, 0, sizeof(v109));
  v110 = 0;
  sub_219F72F28(&v105, v125);
  swift_bridgeObjectRetain_n();
  sub_219F6409C(v109, &qword_27CCD9F78);
  memset(v111, 0, sizeof(v111));
  v112 = 0;
  sub_219F6409C(v111, &qword_27CCD9F78);
  *&v113 = v93;
  *(&v113 + 1) = v41;
  v114 = v42;
  v115 = v43;
  *&v116 = v90;
  *(&v116 + 1) = v88;
  *&v117 = v44;
  *(&v117 + 1) = v40;
  *&v118 = MEMORY[0x277D84F90];
  *(&v118 + 1) = v93;
  *v119 = v41;
  *&v119[8] = v42;
  *&v119[24] = v43;
  *&v119[40] = v90;
  *&v120 = v88;
  *(&v120 + 1) = v44;
  *&v121 = v40;
  *(&v121 + 1) = MEMORY[0x277D84F90];
  nullsub_1(&v113, v45);
  KeyPath = swift_getKeyPath();
  v47 = v96;
  *v96 = KeyPath;
  *(v47 + 24) = 0u;
  *(v47 + 40) = 0;
  *(v47 + 8) = 0u;
  v48 = v94;
  v49 = (v47 + *(v94 + 24));
  sub_219F5EC1C(v122);
  v50 = v122[9];
  v49[8] = v122[8];
  v49[9] = v50;
  v49[10] = v122[10];
  v51 = v122[5];
  v49[4] = v122[4];
  v49[5] = v51;
  v52 = v122[7];
  v49[6] = v122[6];
  v49[7] = v52;
  v53 = v122[1];
  *v49 = v122[0];
  v49[1] = v53;
  v54 = v122[3];
  v49[2] = v122[2];
  v49[3] = v54;
  v55 = (v47 + *(v48 + 28));
  sub_219F5EC1C(v123);
  v56 = v123[5];
  v55[4] = v123[4];
  v55[5] = v56;
  v57 = v123[10];
  v58 = v123[8];
  v55[9] = v123[9];
  v55[10] = v57;
  v59 = v123[7];
  v55[6] = v123[6];
  v55[7] = v59;
  v55[8] = v58;
  v60 = v123[1];
  *v55 = v123[0];
  v55[1] = v60;
  v61 = v123[3];
  v55[2] = v123[2];
  v55[3] = v61;
  *(v47 + *(v48 + 32)) = 0;
  v62 = v49[9];
  v124[8] = v49[8];
  v124[9] = v62;
  v124[10] = v49[10];
  v63 = v49[5];
  v124[4] = v49[4];
  v124[5] = v63;
  v64 = v49[6];
  v124[7] = v49[7];
  v124[6] = v64;
  v65 = v49[1];
  v124[0] = *v49;
  v124[1] = v65;
  v66 = v49[2];
  v124[3] = v49[3];
  v124[2] = v66;
  sub_219F6409C(v124, &qword_27CCDA4A8);
  v67 = v104[5];
  v49[4] = v104[4];
  v49[5] = v67;
  v68 = v104[10];
  v49[9] = v104[9];
  v49[10] = v68;
  v69 = v104[8];
  v49[7] = v104[7];
  v49[8] = v69;
  v49[6] = v104[6];
  v70 = v104[1];
  *v49 = v104[0];
  v49[1] = v70;
  v71 = v104[3];
  v49[2] = v104[2];
  v49[3] = v71;
  v72 = v55[9];
  v125[8] = v55[8];
  v125[9] = v72;
  v125[10] = v55[10];
  v73 = v55[5];
  v125[4] = v55[4];
  v125[5] = v73;
  v74 = v55[6];
  v125[7] = v55[7];
  v125[6] = v74;
  v75 = v55[1];
  v125[0] = *v55;
  v125[1] = v75;
  v76 = v55[2];
  v125[3] = v55[3];
  v125[2] = v76;
  sub_219F6409C(v125, &qword_27CCD9B40);
  v77 = v120;
  v55[8] = *&v119[32];
  v55[9] = v77;
  v55[10] = v121;
  v78 = v118;
  v55[4] = v117;
  v55[5] = v78;
  v79 = *&v119[16];
  v55[6] = *v119;
  v55[7] = v79;
  v80 = v114;
  *v55 = v113;
  v55[1] = v80;
  v81 = v116;
  v55[2] = v115;
  v55[3] = v81;
  v82 = v89;
  sub_21A0BFB80(v47, v89, type metadata accessor for ActivityAssetView);
  *(v82 + *(v48 + 32)) = 1;
  sub_21A0C099C(v47, type metadata accessor for ActivityAssetView);
  sub_21A0E5E3C();
  sub_21A0E52AC();
  sub_219F6409C(v95, &qword_27CCD98D0);
  v83 = v92;
  v84 = (v82 + *(v92 + 36));
  v85 = v99;
  *v84 = v98;
  v84[1] = v85;
  v84[2] = v100;
  v86 = v82;
  v87 = v97;
  sub_219F4D494(v86, v97, &qword_27CCDA470);
  return (*(v91 + 56))(v87, 0, 1, v83);
}

uint64_t sub_21A0C0660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a2;
  v37 = a3;
  v6 = sub_21A0E49AC();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA480);
  MEMORY[0x28223BE20](v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA498);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v36 - v13;
  v38 = a1;
  sub_21A0E499C();
  sub_219F9DCCC();
  sub_21A0E463C();
  sub_219F3E490(&qword_27CCDA490, &qword_27CCDA480);
  v15 = sub_21A0E59CC();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v14[*(v11 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA4A0);
  sub_21A0E53DC();
  *v22 = swift_getKeyPath();
  *v14 = v15;
  *(v14 + 1) = v17;
  v14[16] = v19 & 1;
  *(v14 + 3) = v21;
  sub_21A0E562C();
  v23 = sub_21A0E59DC();
  v25 = v24;
  LOBYTE(v17) = v26;
  v28 = v27;
  v29 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDF00) + 36);
  sub_219F45500(v14, v29, &qword_27CCDA498);
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDF08) + 36));
  v31 = v37;
  *v30 = v36;
  v30[1] = v31;
  *a4 = v23;
  *(a4 + 8) = v25;
  *(a4 + 16) = v17 & 1;
  *(a4 + 24) = v28;
  sub_219F6409C(v14, &qword_27CCDA498);
  sub_21A0E57CC();
  sub_21A0E588C();
  v32 = sub_21A0E58CC();

  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDF10);
  v35 = (a4 + *(result + 36));
  *v35 = KeyPath;
  v35[1] = v32;
  return result;
}

uint64_t sub_21A0C099C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21A0C09FC()
{
  result = qword_27CCDDF18;
  if (!qword_27CCDDF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDDF10);
    sub_21A0C0AB4();
    sub_219F3E490(&qword_27CCDB188, &qword_27CCDB190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDF18);
  }

  return result;
}

unint64_t sub_21A0C0AB4()
{
  result = qword_27CCDDF20;
  if (!qword_27CCDDF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDDF00);
    sub_21A0C0B6C();
    sub_219F3E490(&qword_27CCDDF40, &qword_27CCDDF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDF20);
  }

  return result;
}

unint64_t sub_21A0C0B6C()
{
  result = qword_27CCDDF28;
  if (!qword_27CCDDF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDDF30);
    sub_21A0C0BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDF28);
  }

  return result;
}

unint64_t sub_21A0C0BF8()
{
  result = qword_27CCDDF38;
  if (!qword_27CCDDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDF38);
  }

  return result;
}

unint64_t sub_21A0C0C4C()
{
  result = qword_27CCDDF48;
  if (!qword_27CCDDF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDA468);
    sub_219FB2734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDF48);
  }

  return result;
}

__n128 ActivityLinearGradient.start.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ActivityLinearGradient.start.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

__n128 ActivityLinearGradient.end.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ActivityLinearGradient.end.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  return result;
}

uint64_t ActivityLinearGradient.gradient.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t ActivityLinearGradient.gradient.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

__n128 ActivityLinearGradient.init(start:end:gradient:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = a2[1].n128_u8[0];
  v6 = *a3;
  v7 = *(a3 + 8);
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *a2;
  *(a4 + 24) = *a2;
  *(a4 + 40) = v5;
  *(a4 + 48) = v6;
  *(a4 + 56) = v7;
  return result;
}

uint64_t ActivityLinearGradient.UnitPoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E6E6C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v5._countAndFlagsBits = sub_21A0E6C6C();
    ActivityLinearGradient.UnitPoint.Named.init(rawValue:)(v5);
    v6 = v10;
    if (v10 == 8)
    {
      __swift_project_boxed_opaque_existential_1(v12, v13);
      sub_21A0C3204();
      sub_21A0E6C8C();
      v6 = v10;
      v7 = v11;
      v8 = 1;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

NewsLiveActivitiesCore::ActivityLinearGradient::UnitPoint::Named_optional __swiftcall ActivityLinearGradient.UnitPoint.Named.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21A0E6A0C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActivityLinearGradient.UnitPoint.encode(to:)(void *a1)
{
  v2 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E6E9C();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  if (v2)
  {
    sub_21A0C3258();
    sub_21A0E6CBC();
  }

  else
  {
    sub_21A0E6C9C();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t ActivityLinearGradient.UnitPoint.Named.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x696461654C706F74;
  v3 = 0x6C69617254706F74;
  if (v1 != 6)
  {
    v3 = 7368564;
  }

  v4 = 0x72546D6F74746F62;
  if (v1 != 4)
  {
    v4 = 0x676E696C69617274;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x654C6D6F74746F62;
  if (v1 != 2)
  {
    v5 = 0x6D6F74746F62;
  }

  if (*v0)
  {
    v2 = 0x676E696461656CLL;
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

uint64_t static ActivityLinearGradient.UnitPoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return sub_21A0AA2F8(LOBYTE(v4), LOBYTE(v5));
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && v4 == v5;
}

uint64_t ActivityLinearGradient.UnitPoint.hash(into:)()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    MEMORY[0x21CED2490](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x21CED24C0](v3);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x21CED24C0](v4);
  }

  else
  {
    MEMORY[0x21CED2490](0);
    sub_21A0E626C();
  }
}

uint64_t ActivityLinearGradient.UnitPoint.hashValue.getter()
{
  sub_21A0E6DAC();
  ActivityLinearGradient.UnitPoint.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_21A0C153C()
{
  sub_21A0E6DAC();
  ActivityLinearGradient.UnitPoint.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_21A0C1594()
{
  sub_21A0E6DAC();
  ActivityLinearGradient.UnitPoint.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_21A0C1614(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return sub_21A0AA2F8(LOBYTE(v4), LOBYTE(v5));
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && v4 == v5;
}

uint64_t sub_21A0C1668(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 6581861;
  if (v2 != 1)
  {
    v4 = 0x746E656964617267;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7472617473;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 6581861;
  if (*a2 != 1)
  {
    v8 = 0x746E656964617267;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7472617473;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21A0E6C5C();
  }

  return v11 & 1;
}

uint64_t sub_21A0C1758()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A0C17F0()
{
  sub_21A0E626C();
}

uint64_t sub_21A0C1874()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A0C1908@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A0C39DC();
  *a1 = result;
  return result;
}

void sub_21A0C1938(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE300000000000000;
  v5 = 6581861;
  if (v2 != 1)
  {
    v5 = 0x746E656964617267;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7472617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21A0C198C()
{
  v1 = 6581861;
  if (*v0 != 1)
  {
    v1 = 0x746E656964617267;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_21A0C19DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A0C39DC();
  *a1 = result;
  return result;
}

uint64_t sub_21A0C1A04(uint64_t a1)
{
  v2 = sub_21A0C32AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0C1A40(uint64_t a1)
{
  v2 = sub_21A0C32AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityLinearGradient.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDF60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - v7;
  v9 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v10 = sub_21A0C32AC();
  sub_21A0E6E7C();
  if (!v2)
  {
    v11 = v5;
    v43[0] = 0;
    sub_21A0C3300();
    sub_21A0E6ADC();
    v12 = *(&v41 + 1);
    v34 = v41;
    v13 = v8;
    v14 = v42;
    v43[0] = 2;
    sub_21A0C3354();
    sub_21A0E6ADC();
    v33 = v14;
    v32 = v12;
    v16 = v41;
    v17 = BYTE8(v41);
    v44 = 1;
    sub_21A0E6A8C();
    v18 = v13;
    v19 = v42;
    if (v42 == 255)
    {
      if (v33)
      {
        v27 = v18;

        v28 = sub_21A0E68BC();
        swift_allocError();
        v30 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDF80);
        *(v30 + 24) = &type metadata for ActivityLinearGradient.CodingKeys;
        *(v30 + 32) = v10;
        *v30 = 1;
        sub_21A0E6A2C();
        sub_21A0E68AC();
        (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84158], v28);
        swift_willThrow();
        (*(v11 + 8))(v27, v4);
        return __swift_destroy_boxed_opaque_existential_1(v36);
      }

      (*(v11 + 8))(v18, v4);
      v21 = 0;
      v39 = 0;
      v38 = 0;
      v37 = v17;
      v22 = 0;
      v24 = v34;
      v23 = v17;
      if (v34 > 3u)
      {
        v25 = v35;
        if (v34 > 5u)
        {
          if (v34 == 6)
          {
            v20 = xmmword_21A1050A0;
          }

          else
          {
            v20 = xmmword_21A105090;
          }
        }

        else if (v34 == 4)
        {
          v20 = 0uLL;
        }

        else
        {
          v20 = xmmword_21A1050B0;
        }
      }

      else
      {
        v25 = v35;
        if (v34 > 1u)
        {
          if (v34 == 2)
          {
            v20 = xmmword_21A1050D0;
          }

          else
          {
            v20 = xmmword_21A1050C0;
          }
        }

        else if (v34)
        {
          v20 = xmmword_21A105080;
        }

        else
        {
          v20 = xmmword_21A1050E0;
        }
      }
    }

    else
    {
      v31 = v41;
      (*(v11 + 8))(v18, v4);
      v20 = v31;
      v21 = v33;
      v39 = v33;
      v38 = v19 & 1;
      v37 = v17;
      v22 = v19 & 1;
      v23 = v17;
      v24 = v34;
      v25 = v35;
    }

    v26 = v32;
    *v25 = v24;
    *(v25 + 8) = v26;
    *(v25 + 16) = v21;
    *(v25 + 17) = *v43;
    *(v25 + 20) = *&v43[3];
    *(v25 + 24) = v20;
    *(v25 + 40) = v22;
    *(v25 + 41) = *v40;
    *(v25 + 44) = *&v40[3];
    *(v25 + 48) = v16;
    *(v25 + 56) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t ActivityLinearGradient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDF88);
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v16 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = v1[3];
  v19 = v1[4];
  v20 = v10;
  v26 = *(v1 + 40);
  v18 = v1[6];
  v17 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0C32AC();
  sub_21A0E6EAC();
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v27 = 0;
  sub_21A0C33A8();
  v11 = v22;
  sub_21A0E6BBC();
  if (v11)
  {
    return (*(v21 + 8))(v6, v3);
  }

  v13 = v17;
  v14 = v21;
  v15 = v18;
  v23 = v20;
  v24 = v19;
  v25 = v26;
  v27 = 1;
  sub_21A0E6BBC();
  v23 = v15;
  LOBYTE(v24) = v13;
  v27 = 2;
  sub_21A0C33FC();

  sub_21A0E6BBC();

  return (*(v14 + 8))(v6, v3);
}

uint64_t ActivityLinearGradient.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(v2 + 40);
  v8 = v2[6];
  v9 = *(v2 + 56);
  if ((v2[2] & 1) == 0)
  {
    MEMORY[0x21CED2490](0);
    sub_21A0E626C();

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    MEMORY[0x21CED2490](1);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v5;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x21CED24C0](v14);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v6;
    }

    else
    {
      v15 = 0;
    }

    MEMORY[0x21CED24C0](v15);
    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v10 = v2[1];
  MEMORY[0x21CED2490](1);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x21CED24C0](v11);
  if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x21CED24C0](v12);
  if (v7)
  {
    goto LABEL_14;
  }

LABEL_9:
  MEMORY[0x21CED2490](0);
  sub_21A0E626C();

  if ((v9 & 1) == 0)
  {
LABEL_10:
    MEMORY[0x21CED2490](0);

    return sub_219F6DDE8(a1, v8);
  }

LABEL_21:
  MEMORY[0x21CED2490](1);

  return sub_219F6DA14(a1, v8);
}

uint64_t ActivityLinearGradient.hashValue.getter()
{
  sub_21A0E6DAC();
  ActivityLinearGradient.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0C2504()
{
  sub_21A0E6DAC();
  ActivityLinearGradient.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0C2548()
{
  sub_21A0E6DAC();
  ActivityLinearGradient.hash(into:)(v1);
  return sub_21A0E6DFC();
}

void sub_21A0C25D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000676ELL;
  v4 = 0x696461654C706F74;
  v5 = 0xEB00000000676E69;
  v6 = 0x6C69617254706F74;
  if (v2 != 6)
  {
    v6 = 7368564;
    v5 = 0xE300000000000000;
  }

  v7 = 0xEE00676E696C6961;
  v8 = 0x72546D6F74746F62;
  if (v2 != 4)
  {
    v8 = 0x676E696C69617274;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED0000676E696461;
  v10 = 0x654C6D6F74746F62;
  if (v2 != 2)
  {
    v10 = 0x6D6F74746F62;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x676E696461656CLL;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_21A0C27BC()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

uint64_t sub_21A0C27D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21A0E6C5C();

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

uint64_t sub_21A0C289C(uint64_t a1)
{
  v2 = sub_21A0C3450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0C28D8(uint64_t a1)
{
  v2 = sub_21A0C3450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityLinearGradient.UnitPoint.Coordinate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDFA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - v7;
  v10 = *v1;
  v9 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0C3450();
  sub_21A0E6EAC();
  v13 = v10;
  HIBYTE(v12) = 0;
  sub_21A0C34A4();
  sub_21A0E6BBC();
  if (!v2)
  {
    v13 = v9;
    HIBYTE(v12) = 1;
    sub_21A0E6BBC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ActivityLinearGradient.UnitPoint.Coordinate.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CED24C0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x21CED24C0](*&v3);
}

uint64_t ActivityLinearGradient.UnitPoint.Coordinate.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21A0E6DAC();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x21CED24C0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x21CED24C0](*&v4);
  return sub_21A0E6DFC();
}

uint64_t ActivityLinearGradient.UnitPoint.Coordinate.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDFB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0C3450();
  sub_21A0E6E7C();
  if (!v2)
  {
    HIBYTE(v13) = 0;
    sub_21A0C34F8();
    sub_21A0E6ADC();
    v10 = v14;
    HIBYTE(v13) = 1;
    sub_21A0E6ADC();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v10;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21A0C2D74()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21A0E6DAC();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x21CED24C0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x21CED24C0](*&v4);
  return sub_21A0E6DFC();
}

uint64_t ActivityLinearGradient.description.getter()
{
  sub_21A0E686C();
  MEMORY[0x21CED1980](0xD00000000000001DLL, 0x800000021A10B260);
  v0 = ActivityLinearGradient.UnitPoint.description.getter();
  MEMORY[0x21CED1980](v0);

  MEMORY[0x21CED1980](0x3D646E65202CLL, 0xE600000000000000);
  v1 = ActivityLinearGradient.UnitPoint.description.getter();
  MEMORY[0x21CED1980](v1);

  MEMORY[0x21CED1980](0x656964617267202CLL, 0xEB000000003D746ELL);
  sub_21A0E697C();
  MEMORY[0x21CED1980](41, 0xE100000000000000);
  return 0;
}

uint64_t ActivityLinearGradient.UnitPoint.description.getter()
{
  if (*(v0 + 16))
  {
    sub_21A0E686C();
    MEMORY[0x21CED1980](0xD000000000000010, 0x800000021A10B280);
  }

  else
  {
    MEMORY[0x21CED1980](0x696F5064656D616ELL, 0xEB0000000028746ELL);
  }

  sub_21A0E697C();
  MEMORY[0x21CED1980](41, 0xE100000000000000);
  return 0;
}

BOOL _s22NewsLiveActivitiesCore22ActivityLinearGradientV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *a2;
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }

    if (v4 != v10 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if ((*(a2 + 16) & 1) != 0 || (sub_21A0AA2F8(LOBYTE(v4), LOBYTE(v10)) & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    if (v5 != v11 || v6 != v12)
    {
      return 0;
    }
  }

  else if ((v13 & 1) != 0 || (sub_21A0AA2F8(LOBYTE(v5), LOBYTE(v11)) & 1) == 0)
  {
    return 0;
  }

  if (v9)
  {
    if ((v15 & 1) == 0)
    {
      return 0;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v22 = sub_219F787DC(v8, v14, v18, v19, v20, v21);
  }

  else
  {
    if (v15)
    {
      return 0;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v22 = sub_219F782D8(v8, v14, v23, v24, v25, v26);
  }

  v27 = v22;
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  return (v27 & 1) != 0;
}

unint64_t sub_21A0C3204()
{
  result = qword_27CCDDF50;
  if (!qword_27CCDDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDF50);
  }

  return result;
}

unint64_t sub_21A0C3258()
{
  result = qword_27CCDDF58;
  if (!qword_27CCDDF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDF58);
  }

  return result;
}

unint64_t sub_21A0C32AC()
{
  result = qword_27CCDDF68;
  if (!qword_27CCDDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDF68);
  }

  return result;
}

unint64_t sub_21A0C3300()
{
  result = qword_27CCDDF70;
  if (!qword_27CCDDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDF70);
  }

  return result;
}

unint64_t sub_21A0C3354()
{
  result = qword_27CCDDF78;
  if (!qword_27CCDDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDF78);
  }

  return result;
}

unint64_t sub_21A0C33A8()
{
  result = qword_27CCDDF90;
  if (!qword_27CCDDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDF90);
  }

  return result;
}

unint64_t sub_21A0C33FC()
{
  result = qword_27CCDDF98;
  if (!qword_27CCDDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDF98);
  }

  return result;
}

unint64_t sub_21A0C3450()
{
  result = qword_27CCDDFA8;
  if (!qword_27CCDDFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDFA8);
  }

  return result;
}

unint64_t sub_21A0C34A4()
{
  result = qword_27CCDDFB0;
  if (!qword_27CCDDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDFB0);
  }

  return result;
}

unint64_t sub_21A0C34F8()
{
  result = qword_27CCDDFC0;
  if (!qword_27CCDDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDFC0);
  }

  return result;
}

unint64_t sub_21A0C3550()
{
  result = qword_27CCDDFC8;
  if (!qword_27CCDDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDFC8);
  }

  return result;
}

unint64_t sub_21A0C35A8()
{
  result = qword_27CCDDFD0;
  if (!qword_27CCDDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDFD0);
  }

  return result;
}

unint64_t sub_21A0C3600()
{
  result = qword_27CCDDFD8;
  if (!qword_27CCDDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDFD8);
  }

  return result;
}

unint64_t sub_21A0C3658()
{
  result = qword_27CCDDFE0;
  if (!qword_27CCDDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDFE0);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21A0C36C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21A0C3710(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_21A0C37D0()
{
  result = qword_27CCDDFE8;
  if (!qword_27CCDDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDFE8);
  }

  return result;
}

unint64_t sub_21A0C3828()
{
  result = qword_27CCDDFF0;
  if (!qword_27CCDDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDFF0);
  }

  return result;
}

unint64_t sub_21A0C3880()
{
  result = qword_27CCDDFF8;
  if (!qword_27CCDDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDFF8);
  }

  return result;
}

unint64_t sub_21A0C38D8()
{
  result = qword_27CCDE000;
  if (!qword_27CCDE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE000);
  }

  return result;
}

unint64_t sub_21A0C3930()
{
  result = qword_27CCDE008;
  if (!qword_27CCDE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE008);
  }

  return result;
}

unint64_t sub_21A0C3988()
{
  result = qword_27CCDE010;
  if (!qword_27CCDE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE010);
  }

  return result;
}

uint64_t sub_21A0C39DC()
{
  v0 = sub_21A0E6A0C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21A0C3A28()
{
  result = qword_27CCDE018;
  if (!qword_27CCDE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE018);
  }

  return result;
}

uint64_t sub_21A0C3A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_21A0E6DAC();
  sub_21A0E626C();
  v6 = sub_21A0E6DFC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21A0E6C5C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21A0C3B74(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v5) = a4;
  *(&v58 + 1) = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA0D0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v48 - v10;
  v12 = sub_21A0E695C();
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = &v48 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v57 = &v48 - v21;
  v22 = *a1;
  v23 = a1[1];
  v54 = v4;
  v24 = *(v4 + 16);
  v56 = v22;
  *&v59[0] = v22;
  *(&v59[0] + 1) = v23;

  sub_21A0E501C();

  if (!v60 || (isCancelled = swift_task_isCancelled(), result = , (isCancelled & 1) != 0))
  {
    *&v58 = a3;
    if (qword_280C88450 != -1)
    {
      swift_once();
    }

    v27 = sub_21A0E516C();
    __swift_project_value_buffer(v27, qword_280C8C0D8);

    v28 = sub_21A0E514C();
    v29 = sub_21A0E66BC();

    v30 = os_log_type_enabled(v28, v29);
    v50 = v24;
    v51 = v11;
    v55 = v5;
    if (v30)
    {
      v49 = v12;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v59[0] = v32;
      *v31 = 136446466;
      *(v31 + 4) = sub_219F50144(v56, v23, v59);
      *(v31 + 12) = 2082;
      if (v5)
      {
        if (v58 == 0)
        {
          v33 = 1701736302;
        }

        else
        {
          v33 = 0x746C7561666564;
        }

        if (v58 == 0)
        {
          v34 = 0xE400000000000000;
        }

        else
        {
          v34 = 0xE700000000000000;
        }
      }

      else
      {
        v33 = sub_21A0E6EBC();
        v34 = v35;
      }

      v5 = sub_219F50144(v33, v34, v59);

      *(v31 + 14) = v5;
      _os_log_impl(&dword_219F39000, v28, v29, "will enqueue polling task for activity: %{public}s fetchDelay: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CED2D30](v32, -1, -1);
      MEMORY[0x21CED2D30](v31, -1, -1);

      v12 = v49;
      LOBYTE(v5) = v55;
    }

    else
    {
    }

    v36 = v19;
    sub_21A0E693C();
    if ((v5 & 1) != 0 && v58 == 0)
    {
      sub_21A0E6EEC();
    }

    v37 = v57;
    sub_21A0E694C();
    v38 = v53;
    v49 = *(v53 + 8);
    v49(v36, v12);
    v39 = sub_21A0E652C();
    v40 = v51;
    (*(*(v39 - 8) + 56))(v51, 1, 1, v39);
    v41 = swift_allocObject();
    v42 = v54;
    swift_weakInit();
    v43 = v52;
    (*(v38 + 16))(v52, v37, v12);
    sub_219F3FDF4(v42 + 24, v59);
    v44 = (*(v38 + 80) + 73) & ~*(v38 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    *(v45 + 32) = v41;
    v46 = v56;
    *(v45 + 40) = v56;
    *(v45 + 48) = v23;
    v47 = v58;
    *(v45 + 56) = *(&v58 + 1);
    *(v45 + 64) = v47;
    *(v45 + 72) = v55 & 1;
    (*(v38 + 32))(v45 + v44, v43, v12);
    sub_21A0792FC(v59, v45 + ((v13 + v44 + 7) & 0xFFFFFFFFFFFFFFF8));

    v60 = sub_21A06DF08(0, 0, v40, &unk_21A105900, v45);
    *&v59[0] = v46;
    *(&v59[0] + 1) = v23;

    sub_21A0E502C();

    return (v49)(v57, v12);
  }

  return result;
}

uint64_t sub_21A0C40D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 312) = v14;
  *(v8 + 320) = v15;
  *(v8 + 169) = v13;
  *(v8 + 296) = a7;
  *(v8 + 304) = a8;
  *(v8 + 280) = a5;
  *(v8 + 288) = a6;
  *(v8 + 272) = a4;
  v9 = sub_21A0E64AC();
  *(v8 + 328) = v9;
  *(v8 + 336) = *(v9 - 8);
  *(v8 + 344) = swift_task_alloc();
  type metadata accessor for NewsLiveActivityContent(0);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC970);
  *(v8 + 368) = swift_task_alloc();
  v10 = sub_21A0E696C();
  *(v8 + 376) = v10;
  *(v8 + 384) = *(v10 - 8);
  *(v8 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A0C4270, 0, 0);
}

uint64_t sub_21A0C4270()
{
  v19 = v0;
  if (qword_280C88450 != -1)
  {
    swift_once();
  }

  v1 = sub_21A0E516C();
  *(v0 + 400) = __swift_project_value_buffer(v1, qword_280C8C0D8);

  v2 = sub_21A0E514C();
  v3 = sub_21A0E66BC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 280);
    v4 = *(v0 + 288);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_219F50144(v5, v4, &v18);
    _os_log_impl(&dword_219F39000, v2, v3, "will perform polling task for activity: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CED2D30](v7, -1, -1);
    MEMORY[0x21CED2D30](v6, -1, -1);
  }

  if ((*(v0 + 169) & 1) != 0 && *(v0 + 296) == 0)
  {
    sub_21A0E6EEC();
  }

  sub_21A0E6EEC();
  if (sub_21A0E6EDC())
  {
    v9 = *(v0 + 280);
    v8 = *(v0 + 288);
    __swift_project_boxed_opaque_existential_1(*(v0 + 320), *(*(v0 + 320) + 24));
    *(v0 + 208) = v9;
    *(v0 + 216) = v8;
    v10 = swift_task_alloc();
    *(v0 + 424) = v10;
    *v10 = v0;
    v10[1] = sub_21A0C4788;
    v11 = *(v0 + 368);

    return sub_21A05A730(v11, (v0 + 208));
  }

  else
  {
    *(v0 + 152) = xmmword_21A1057D0;
    *(v0 + 168) = 0;
    sub_21A0E6D1C();
    v13 = swift_task_alloc();
    *(v0 + 408) = v13;
    v14 = sub_21A0C6B70(qword_27CCDE028, MEMORY[0x277D85928]);
    *v13 = v0;
    v13[1] = sub_21A0C4584;
    v15 = *(v0 + 392);
    v16 = *(v0 + 376);
    v17 = *(v0 + 312);

    return MEMORY[0x282200488](v17, v0 + 152, v15, v16, v14);
  }
}

uint64_t sub_21A0C4584()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  (*(v2[48] + 8))(v2[49], v2[47]);
  if (v0)
  {
    v3 = sub_21A0C5474;
  }

  else
  {
    v3 = sub_21A0C46C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A0C46C8()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1(*(v0 + 320), *(*(v0 + 320) + 24));
  *(v0 + 208) = v2;
  *(v0 + 216) = v1;
  v3 = swift_task_alloc();
  *(v0 + 424) = v3;
  *v3 = v0;
  v3[1] = sub_21A0C4788;
  v4 = *(v0 + 368);

  return sub_21A05A730(v4, (v0 + 208));
}

uint64_t sub_21A0C4788()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_21A0C4E70;
  }

  else
  {
    v2 = sub_21A0C489C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A0C489C()
{
  v38 = v0;
  v1 = *(v0 + 432);
  sub_21A0E65AC();
  if (v1)
  {
    sub_219F6409C(*(v0 + 368), &qword_27CCDC970);
    *(v0 + 240) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
    if (swift_dynamicCast())
    {

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v4 = *(v0 + 280);
        v3 = *(v0 + 288);

        *(v0 + 256) = 0;
        *(v0 + 192) = v4;
        *(v0 + 200) = v3;

        sub_21A0E502C();
      }

      (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
    }

    else
    {

      v11 = v1;
      v12 = sub_21A0E514C();
      v13 = sub_21A0E669C();

      if (os_log_type_enabled(v12, v13))
      {
        v15 = *(v0 + 280);
        v14 = *(v0 + 288);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v37 = v18;
        *v16 = 136446466;
        *(v16 + 4) = sub_219F50144(v15, v14, &v37);
        *(v16 + 12) = 2114;
        v19 = v1;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 14) = v20;
        *v17 = v20;
        _os_log_impl(&dword_219F39000, v12, v13, "Failed to poll data for activity: %{public}s, error: %{public}@", v16, 0x16u);
        sub_219F6409C(v17, &qword_27CCD9E28);
        MEMORY[0x21CED2D30](v17, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x21CED2D30](v18, -1, -1);
        MEMORY[0x21CED2D30](v16, -1, -1);
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v22 = *(v0 + 280);
        v21 = *(v0 + 288);

        *(v0 + 248) = 0;
        *(v0 + 176) = v22;
        *(v0 + 184) = v21;

        sub_21A0E502C();
      }

      sub_21A0C5B5C(1, 0, 1, *(v0 + 272), *(v0 + 280), *(v0 + 288));
    }

LABEL_27:

    v35 = *(v0 + 8);

    return v35();
  }

  sub_21A0C6BB8(*(v0 + 368), *(v0 + 352), type metadata accessor for NewsLiveActivityContent);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v24 = *(v0 + 280);
      v23 = *(v0 + 288);

      *(v0 + 264) = 0;
      *(v0 + 224) = v24;
      *(v0 + 232) = v23;

      sub_21A0E502C();
    }

    v25 = *(v0 + 368);
    v26 = v25 + *(*(v0 + 360) + 28);
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = 0;
      v29 = 1;
    }

    else
    {
      v31 = *v26;
      v30 = *(v26 + 8);
      v32 = sub_21A0E6ECC();
      v33 = (v32 & 1) == 0;
      if (v32)
      {
        v29 = 0x8AC7230489E80000;
      }

      else
      {
        v29 = v31;
      }

      if (v33)
      {
        v28 = v30;
      }

      else
      {
        v28 = 0;
      }

      v25 = *(v0 + 368);
    }

    v34 = *(v0 + 352);
    sub_21A0C5B5C(v29, v28, v27, *(v0 + 272), *(v0 + 280), *(v0 + 288));
    sub_21A0C6C20(v34, type metadata accessor for NewsLiveActivityContent);
    sub_219F6409C(v25, &qword_27CCDC970);
    goto LABEL_27;
  }

  sub_219F3FDF4(Strong + 64, v0 + 16);

  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  v36 = (*(v7 + 56) + **(v7 + 56));
  v8 = swift_task_alloc();
  *(v0 + 440) = v8;
  *v8 = v0;
  v8[1] = sub_21A0C51C4;
  v9 = *(v0 + 352);

  return v36(v9, v6, v7);
}

uint64_t sub_21A0C4E70()
{
  v21 = v0;
  v1 = *(v0 + 432);
  *(v0 + 240) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v4 = *(v0 + 280);
      v3 = *(v0 + 288);

      *(v0 + 256) = 0;
      *(v0 + 192) = v4;
      *(v0 + 200) = v3;

      sub_21A0E502C();
    }

    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
    v5 = *(v0 + 240);
  }

  else
  {

    v6 = v1;
    v7 = sub_21A0E514C();
    v8 = sub_21A0E669C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 280);
      v19 = *(v0 + 288);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v10 = 136446466;
      *(v10 + 4) = sub_219F50144(v9, v19, &v20);
      *(v10 + 12) = 2114;
      v13 = v1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v14;
      *v11 = v14;
      _os_log_impl(&dword_219F39000, v7, v8, "Failed to poll data for activity: %{public}s, error: %{public}@", v10, 0x16u);
      sub_219F6409C(v11, &qword_27CCD9E28);
      MEMORY[0x21CED2D30](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x21CED2D30](v12, -1, -1);
      MEMORY[0x21CED2D30](v10, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v16 = *(v0 + 280);
      v15 = *(v0 + 288);

      *(v0 + 248) = 0;
      *(v0 + 176) = v16;
      *(v0 + 184) = v15;

      sub_21A0E502C();
    }

    sub_21A0C5B5C(1, 0, 1, *(v0 + 272), *(v0 + 280), *(v0 + 288));
    v5 = v1;
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_21A0C51C4()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_21A0C57C8;
  }

  else
  {
    v2 = sub_21A0C52D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A0C52D8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = v0[35];
    v1 = v0[36];

    v0[28] = v2;
    v0[33] = 0;
    v0[29] = v1;

    sub_21A0E502C();
  }

  v3 = v0[46];
  v4 = v3 + *(v0[45] + 28);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v9 = *v4;
    v8 = *(v4 + 8);
    v10 = sub_21A0E6ECC();
    v11 = (v10 & 1) == 0;
    if (v10)
    {
      v7 = 0x8AC7230489E80000;
    }

    else
    {
      v7 = v9;
    }

    if (v11)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }

    v3 = v0[46];
  }

  v12 = v0[44];
  sub_21A0C5B5C(v7, v6, v5, v0[34], v0[35], v0[36]);
  sub_21A0C6C20(v12, type metadata accessor for NewsLiveActivityContent);
  sub_219F6409C(v3, &qword_27CCDC970);

  v13 = v0[1];

  return v13();
}

uint64_t sub_21A0C5474()
{
  v21 = v0;
  v1 = *(v0 + 416);
  *(v0 + 240) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v4 = *(v0 + 280);
      v3 = *(v0 + 288);

      *(v0 + 256) = 0;
      *(v0 + 192) = v4;
      *(v0 + 200) = v3;

      sub_21A0E502C();
    }

    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
    v5 = *(v0 + 240);
  }

  else
  {

    v6 = v1;
    v7 = sub_21A0E514C();
    v8 = sub_21A0E669C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 280);
      v19 = *(v0 + 288);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v10 = 136446466;
      *(v10 + 4) = sub_219F50144(v9, v19, &v20);
      *(v10 + 12) = 2114;
      v13 = v1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v14;
      *v11 = v14;
      _os_log_impl(&dword_219F39000, v7, v8, "Failed to poll data for activity: %{public}s, error: %{public}@", v10, 0x16u);
      sub_219F6409C(v11, &qword_27CCD9E28);
      MEMORY[0x21CED2D30](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x21CED2D30](v12, -1, -1);
      MEMORY[0x21CED2D30](v10, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v16 = *(v0 + 280);
      v15 = *(v0 + 288);

      *(v0 + 248) = 0;
      *(v0 + 176) = v16;
      *(v0 + 184) = v15;

      sub_21A0E502C();
    }

    sub_21A0C5B5C(1, 0, 1, *(v0 + 272), *(v0 + 280), *(v0 + 288));
    v5 = v1;
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_21A0C57C8()
{
  v22 = v0;
  v1 = *(v0 + 368);
  sub_21A0C6C20(*(v0 + 352), type metadata accessor for NewsLiveActivityContent);
  sub_219F6409C(v1, &qword_27CCDC970);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v2 = *(v0 + 448);
  *(v0 + 240) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v5 = *(v0 + 280);
      v4 = *(v0 + 288);

      *(v0 + 256) = 0;
      *(v0 + 192) = v5;
      *(v0 + 200) = v4;

      sub_21A0E502C();
    }

    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
    v6 = *(v0 + 240);
  }

  else
  {

    v7 = v2;
    v8 = sub_21A0E514C();
    v9 = sub_21A0E669C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 280);
      v20 = *(v0 + 288);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v11 = 136446466;
      *(v11 + 4) = sub_219F50144(v10, v20, &v21);
      *(v11 + 12) = 2114;
      v14 = v2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v15;
      *v12 = v15;
      _os_log_impl(&dword_219F39000, v8, v9, "Failed to poll data for activity: %{public}s, error: %{public}@", v11, 0x16u);
      sub_219F6409C(v12, &qword_27CCD9E28);
      MEMORY[0x21CED2D30](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x21CED2D30](v13, -1, -1);
      MEMORY[0x21CED2D30](v11, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v17 = *(v0 + 280);
      v16 = *(v0 + 288);

      *(v0 + 248) = 0;
      *(v0 + 176) = v17;
      *(v0 + 184) = v16;

      sub_21A0E502C();
    }

    sub_21A0C5B5C(1, 0, 1, *(v0 + 272), *(v0 + 280), *(v0 + 288));
    v6 = v2;
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_21A0C5B5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_219F3FDF4(result + 104, v16);

    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v14 = sub_219F4AF98(v12, v13);
    LOBYTE(v13) = sub_21A0C3A7C(a5, a6, v14);

    result = __swift_destroy_boxed_opaque_existential_1(v16);
    if (v13)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v15[0] = a5;
        v15[1] = a6;
        sub_21A0C3B74(v15, a1, a2, a3 & 1);
      }
    }
  }

  return result;
}

uint64_t sub_21A0C5C7C()
{
  if (qword_280C88450 != -1)
  {
LABEL_18:
    swift_once();
  }

  v0 = sub_21A0E516C();
  __swift_project_value_buffer(v0, qword_280C8C0D8);

  v1 = sub_21A0E514C();
  v2 = sub_21A0E668C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v17 = v4;
    *v3 = 136446210;
    sub_21A0E4FEC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE020);
    sub_219F4DBDC();
    v5 = sub_21A0E611C();
    v7 = v6;

    v8 = sub_219F50144(v5, v7, &v17);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_219F39000, v1, v2, "stopAllPollingTasks, pollingTasks=%{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x21CED2D30](v4, -1, -1);
    MEMORY[0x21CED2D30](v3, -1, -1);
  }

  v9 = sub_21A0E4FEC();
  sub_21A0E4FFC();
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  if (v12)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 64 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      do
      {
LABEL_12:
        v12 &= v12 - 1;

        sub_21A0E659C();
      }

      while (v12);
      continue;
    }
  }
}

uint64_t sub_21A0C5F24()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_21A0C6034(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_21A0C6054, 0, 0);
}

uint64_t sub_21A0C6054()
{
  v16 = v0;
  v1 = *(v0 + 16);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = sub_219F4AF98(v3, v2);
  if (qword_280C88450 != -1)
  {
    swift_once();
  }

  v5 = sub_21A0E516C();
  __swift_project_value_buffer(v5, qword_280C8C0D8);

  v6 = sub_21A0E514C();
  v7 = sub_21A0E668C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    sub_219F4DBDC();
    v10 = sub_21A0E65EC();
    v12 = sub_219F50144(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_219F39000, v6, v7, "liveActivityManager.didSubscribeToActivity, IDs=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);
  }

  sub_219F4E948(v4, 1, 0, 1);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21A0C6238(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = sub_219F4AF98(v1, v2);
  if (qword_280C88450 != -1)
  {
    swift_once();
  }

  v4 = sub_21A0E516C();
  __swift_project_value_buffer(v4, qword_280C8C0D8);

  v5 = sub_21A0E514C();
  v6 = sub_21A0E668C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    sub_219F4DBDC();
    v9 = sub_21A0E65EC();
    v11 = sub_219F50144(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_219F39000, v5, v6, "liveActivityManager.didUnsubscribeFromActivity, IDs=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CED2D30](v8, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  sub_219F4E948(v3, 1, 0, 1);
}

uint64_t sub_21A0C63F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_21A0C6414, 0, 0);
}

uint64_t sub_21A0C6414()
{
  v16 = v0;
  v1 = *(v0 + 16);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = sub_219F4AF98(v3, v2);
  if (qword_280C88450 != -1)
  {
    swift_once();
  }

  v5 = sub_21A0E516C();
  __swift_project_value_buffer(v5, qword_280C8C0D8);

  v6 = sub_21A0E514C();
  v7 = sub_21A0E668C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    sub_219F4DBDC();
    v10 = sub_21A0E65EC();
    v12 = sub_219F50144(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_219F39000, v6, v7, "liveActivityManager.didReconcileLiveActivities, IDs=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);
  }

  sub_219F4E948(v4, 0, 0, 1);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21A0C65F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_219F49B18;

  return sub_21A0C6034(a1);
}

uint64_t sub_21A0C668C(void *a1)
{
  sub_21A0C6238(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_21A0C66E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_219F4996C;

  return sub_21A0C63F4(a1);
}

uint64_t sub_21A0C679C()
{
  if (qword_280C88450 != -1)
  {
    swift_once();
  }

  v1 = sub_21A0E516C();
  __swift_project_value_buffer(v1, qword_280C8C0D8);
  v2 = sub_21A0E514C();
  v3 = sub_21A0E668C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_219F39000, v2, v3, "activityObservingApplicationDidEnterBackground", v4, 2u);
    MEMORY[0x21CED2D30](v4, -1, -1);
  }

  sub_21A0C5C7C();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21A0C68B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_219F49B18;

  return sub_21A0C677C();
}

uint64_t sub_21A0C6948()
{
  if (*(v0 + 16) != 1)
  {
    return sub_21A0E6EBC();
  }

  if (*v0 == 0)
  {
    return 1701736302;
  }

  return 0x746C7561666564;
}

uint64_t sub_21A0C69A8(uint64_t a1)
{
  sub_21A0E695C();
  v3 = v1[3];
  v11 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_219F4996C;

  return sub_21A0C40D0(a1, v11, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_21A0C6B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduledLiveActivity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0C6B70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A0C6BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A0C6C20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for NewsLiveActivityDataManager.FetchDelay(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NewsLiveActivityDataManager.FetchDelay(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_21A0C6CD0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A0C6CEC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

void sub_21A0C6D1C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_21A0C707C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21A0C6DA4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void sub_21A0C6EC0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

void sub_21A0C707C()
{
  if (!qword_27CCDE0B0)
  {
    v0 = sub_21A0E674C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCDE0B0);
    }
  }
}

uint64_t sub_21A0C70CC()
{
  v1 = *v0;
  v2 = *v0 >> 61;
  if (v2 <= 1)
  {
    if (v2)
    {
      return 0xD000000000000014;
    }
  }

  else if (v2 != 2 && v2 != 3)
  {
    return 0x20676E697373696DLL;
  }

  swift_getErrorValue();
  sub_21A0CE22C(v1);
  v3 = sub_21A0E6D2C();
  sub_21A0CE250(v1);
  return v3;
}

uint64_t sub_21A0C71A8(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x2822009F8](sub_21A0C71D0, 0, 0);
}

uint64_t sub_21A0C71D0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v4[3] = &type metadata for DemoActivityContentServiceFactory.ActivityContentService;
  v4[4] = &off_282B250A8;
  v5 = swift_allocObject();
  *v4 = v5;
  sub_219F3FDF4(v3, v5 + 32);
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v7 = v0[1];

  return v7();
}

uint64_t sub_21A0C7294(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for NetworkRequest();
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CCDA158);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v3 = sub_21A0E481C();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A0C73C8, 0, 0);
}

uint64_t sub_21A0C73C8()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  sub_21A0E47CC();
  sub_21A0CDB94(v3, v4);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    return sub_219F6409C(v0[11], &unk_27CCDA158);
  }

  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  sub_219F6409C(v0[12], &unk_27CCDA158);
  (*(v7 + 32))(v6, v9, v8);
  (*(v7 + 16))(v10, v6, v8);
  *(v10 + *(v11 + 20)) = 0;
  *(v10 + *(v11 + 24)) = xmmword_21A0FE4D0;
  v13 = *__swift_project_boxed_opaque_existential_1((v12 + 16), *(v12 + 40));
  v14 = swift_task_alloc();
  v0[16] = v14;
  *v14 = v0;
  v14[1] = sub_21A0C7590;
  v15 = v0[10];

  return sub_21A0BECC0((v0 + 2), v15, v13);
}

uint64_t sub_21A0C7590()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_21A0C78A4;
  }

  else
  {
    v2 = sub_21A0C76A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A0C76A4()
{
  v1 = v0[17];
  sub_21A0E449C();
  swift_allocObject();
  sub_21A0E448C();
  type metadata accessor for NewsLiveActivityAttributes(0);
  sub_21A0CDCB8(&qword_280C89F50, type metadata accessor for NewsLiveActivityAttributes);
  sub_21A0E447C();
  if (v1)
  {

    sub_21A074A20((v0 + 2));
    v3 = v0[14];
    v2 = v0[15];
    v4 = v0[13];
    sub_21A0CDC58(v0[10], type metadata accessor for NetworkRequest);
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[13];
    v9 = v0[10];

    sub_21A074A20((v0 + 2));
    sub_21A0CDC58(v9, type metadata accessor for NetworkRequest);
    (*(v7 + 8))(v6, v8);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_21A0C78A4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_21A0CDC58(v0[10], type metadata accessor for NetworkRequest);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21A0C7978(uint64_t a1, uint64_t a2)
{
  v2[648] = a2;
  v2[647] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  v2[649] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  v2[650] = swift_task_alloc();
  type metadata accessor for PrimaryElectionStaticAttributes();
  v2[651] = swift_task_alloc();
  type metadata accessor for NationalElectionStaticAttributes();
  v2[652] = swift_task_alloc();
  v2[653] = type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
  v2[654] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A0C7AD8, 0, 0);
}

uint64_t sub_21A0C7AD8()
{
  v1 = *(v0 + 5232);
  v2 = *(v0 + 5184);
  v3 = type metadata accessor for NewsLiveActivityAttributes(0);
  sub_21A07495C(v2 + *(v3 + 28), v1, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *(v0 + 5208);
      v6 = *(v0 + 5184);
      v7 = *(v0 + 5176);
      sub_21A0CDD68(*(v0 + 5232), v5, type metadata accessor for PrimaryElectionStaticAttributes);
      v9 = *v6;
      v8 = v6[1];
      v10 = *(type metadata accessor for NewsLiveActivityContentState(0) + 20);
      v11 = *(v5 + *(type metadata accessor for PrimaryElectionTheme() + 36));

      static PrimaryElectionContentState.random(candidates:)(v11, &v7[v10]);
      type metadata accessor for NewsLiveActivityContentState.Payload(0);
      swift_storeEnumTagMultiPayload();
      *v7 = v9;
      *(v7 + 1) = v8;
      v12 = type metadata accessor for NewsLiveActivityContent(0);
      v13 = v12[5];
      v14 = sub_21A0E495C();
      v15 = *(*(v14 - 8) + 56);
      v15(&v7[v13], 1, 1, v14);
      v15(&v7[v12[6]], 1, 1, v14);
      v15(&v7[v12[9]], 1, 1, v14);
      *&v7[v12[7]] = 0;
      v7[v12[8]] = 2;
      v16 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC970) + 28)];
      *v16 = 0;
      *(v16 + 1) = 0;
      v16[16] = 1;
      sub_21A0CDC58(v5, type metadata accessor for PrimaryElectionStaticAttributes);
    }

    else
    {
      v31 = *(v0 + 5200);
      v32 = *(v0 + 5192);
      v33 = *(v0 + 5184);
      v34 = *(v0 + 5176);
      sub_21A0CDC58(*(v0 + 5232), type metadata accessor for NewsLiveActivityAttributes.ActivityType);
      v54 = v33[1];
      v55 = *v33;
      v35 = &v34[*(type metadata accessor for NewsLiveActivityContentState(0) + 20)];
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
      v37 = *(*(v36 - 8) + 56);
      v37(v32, 1, 1, v36);
      v38 = type metadata accessor for ActivityHeaderData();
      v39 = *(v38 + 40);
      v37(v31 + v39, 1, 1, v36);
      *v31 = 0;
      *(v31 + 8) = 0;
      *(v31 + 16) = xmmword_21A105960;
      *(v31 + 32) = 0u;
      *(v31 + 48) = 0u;
      *(v31 + 64) = 0u;
      *(v31 + 80) = 0u;

      sub_219FF0668(v32, v31 + v39, &qword_27CCD98D8);
      v40 = *(*(v38 - 8) + 56);
      (v40)(v31, 0, 1, v38);
      v41 = sub_219F87E24(v0 + 2560);
      v40(v35, 1, 1, v38, v41);
      v42 = type metadata accessor for LiveBlogContentState();
      v43 = v35 + v42[6];
      *v43 = 0u;
      *(v43 + 16) = 0u;
      v44 = v42[7];
      memcpy((v35 + v44), (v0 + 2560), 0x9E9uLL);
      v45 = v42[8];
      sub_219FF0668(v31, v35, &qword_27CCD9608);
      v46 = (v35 + v42[5]);
      v46[3] = 0u;
      v46[4] = 0u;
      v46[1] = 0u;
      v46[2] = 0u;
      *v46 = 0u;
      sub_219F87F74(*v43, *(v43 + 8));
      *v43 = 0u;
      *(v43 + 16) = 0u;
      memcpy((v0 + 16), (v35 + v44), 0x9E9uLL);
      sub_219F6409C(v0 + 16, &qword_27CCD9EB0);
      memcpy((v35 + v44), (v0 + 2560), 0x9E9uLL);
      *(v35 + v45) = 0;
      type metadata accessor for NewsLiveActivityContentState.Payload(0);
      swift_storeEnumTagMultiPayload();
      *v34 = v55;
      *(v34 + 1) = v54;
      v47 = type metadata accessor for NewsLiveActivityContent(0);
      v48 = v47[5];
      v49 = sub_21A0E495C();
      v50 = *(*(v49 - 8) + 56);
      v50(&v34[v48], 1, 1, v49);
      v50(&v34[v47[6]], 1, 1, v49);
      v50(&v34[v47[9]], 1, 1, v49);
      *&v34[v47[7]] = 0;
      v34[v47[8]] = 2;
      v51 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC970) + 28)];
      *v51 = 0;
      *(v51 + 1) = 0;
      v51[16] = 1;
    }
  }

  else
  {
    v17 = *(v0 + 5216);
    v18 = *(v0 + 5184);
    v19 = *(v0 + 5176);
    sub_21A0CDD68(*(v0 + 5232), v17, type metadata accessor for NationalElectionStaticAttributes);
    v21 = *v18;
    v20 = v18[1];
    v22 = &v19[*(type metadata accessor for NewsLiveActivityContentState(0) + 20)];

    static NationalElectionData.random(candidatesFrom:)(v17, v22);
    sub_21A0CDC58(v17, type metadata accessor for NationalElectionStaticAttributes);
    v23 = v22 + *(type metadata accessor for NationalElectionContentState(0) + 20);
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 64) = -1;
    v25 = *(v23 + 32);
    v24 = *(v23 + 48);
    *(v0 + 5120) = *(v23 + 16);
    *(v0 + 5136) = v25;
    *(v0 + 5152) = v24;
    *(v0 + 5168) = -1;
    *(v0 + 5104) = *v23;
    sub_219F6409C(v0 + 5104, &qword_27CCDABA0);
    *v23 = 0x455441445055;
    *(v23 + 8) = 0xE600000000000000;
    *(v23 + 16) = 0xD000000000000012;
    *(v23 + 24) = 0x800000021A10B310;
    *(v23 + 64) = 0;
    type metadata accessor for NewsLiveActivityContentState.Payload(0);
    swift_storeEnumTagMultiPayload();
    *v19 = v21;
    *(v19 + 1) = v20;
    v26 = type metadata accessor for NewsLiveActivityContent(0);
    v27 = v26[5];
    v28 = sub_21A0E495C();
    v29 = *(*(v28 - 8) + 56);
    v29(&v19[v27], 1, 1, v28);
    v29(&v19[v26[6]], 1, 1, v28);
    v29(&v19[v26[9]], 1, 1, v28);
    *&v19[v26[7]] = 0;
    v19[v26[8]] = 2;
    v30 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC970) + 28)];
    *v30 = 0;
    *(v30 + 1) = 0;
    v30[16] = 1;
  }

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_21A0C824C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_219F49B18;

  return sub_21A0C7294(a1);
}

uint64_t sub_21A0C82E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_219F4996C;

  return sub_21A0C7978(a1, a2);
}

uint64_t sub_21A0C8384(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for NetworkRequest();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A0C8418, 0, 0);
}

uint64_t sub_21A0C8418()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = __swift_project_boxed_opaque_existential_1((v0[8] + 16), *(v0[8] + 40));
  v5 = sub_21A0E481C();
  (*(*(v5 - 8) + 16))(v1, v3, v5);
  *(v1 + *(v2 + 20)) = 0;
  *(v1 + *(v2 + 24)) = xmmword_21A0FE4D0;
  v6 = *v4;
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_21A0C852C;
  v8 = v0[10];

  return sub_21A0BECC0((v0 + 2), v8, v6);
}

uint64_t sub_21A0C852C()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[12] = v0;

  sub_21A0CDC58(v2, type metadata accessor for NetworkRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21A0C86B4, 0, 0);
  }

  else
  {
    v5 = v3[2];
    v4 = v3[3];

    v6 = v3[1];

    return v6(v5, v4);
  }
}

uint64_t sub_21A0C86B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A0C8718(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[4] = v1;
  v2[5] = v3;
  v2[6] = v4;
  return MEMORY[0x2822009F8](sub_21A0C8740, 0, 0);
}

uint64_t sub_21A0C8740()
{
  v19 = v0;
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v0[7] = v4;
  if (qword_27CCD90F8 != -1)
  {
    swift_once();
  }

  v5 = sub_21A0E516C();
  v0[8] = __swift_project_value_buffer(v5, qword_27CCFE600);

  v6 = sub_21A0E514C();
  v7 = sub_21A0E66BC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[5];
    v8 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_219F50144(v9, v8, &v18);
    *(v10 + 12) = 2080;
    v0[3] = v4;
    sub_21A0CE1D8();
    v12 = sub_21A0E6BFC();
    v14 = sub_219F50144(v12, v13, &v18);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_219F39000, v6, v7, "Attempting to obtain tokens for activity: %{public}s. Request=%s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v11, -1, -1);
    MEMORY[0x21CED2D30](v10, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v0[4] + 40), *(v0[4] + 64));
  v17 = off_282B23740 + *off_282B23740;
  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_21A0C8A34;

  return (v17)(v4, &type metadata for CommonTokenServiceAdapter, &off_282B23738);
}

uint64_t sub_21A0C8A34(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_21A0C8D00;
  }

  else
  {

    v4 = sub_21A0C8B50;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A0C8B50()
{
  v15 = v0;

  v1 = sub_21A0E514C();
  v2 = sub_21A0E66BC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[10];
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_219F50144(v5, v4, &v14);
    *(v6 + 12) = 2080;
    v0[2] = v3;
    sub_21A0CE184();
    v8 = sub_21A0E6BFC();
    v10 = sub_219F50144(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_219F39000, v1, v2, "Obtained access tokens for activity: %{public}s. Tokens=%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v7, -1, -1);
    MEMORY[0x21CED2D30](v6, -1, -1);
  }

  v11 = v0[1];
  v12 = v0[10];

  return v11(v12);
}

uint64_t sub_21A0C8D00()
{
  v18 = v0;
  v1 = v0[11];

  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E66BC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_219F50144(v7, v6, &v17);
    *(v8 + 12) = 2112;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_219F39000, v3, v4, "Failed to obtain token for activity: %{public}s. Error=%@", v8, 0x16u);
    sub_219F6409C(v9, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CED2D30](v10, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);
  }

  v13 = v0[11];
  sub_21A0CDC04();
  swift_allocError();
  *v14 = v13;
  swift_willThrow();
  v15 = v0[1];

  return v15();
}

uint64_t sub_21A0C8EEC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v3[2] = *a2;
  v3[5] = v2;
  v3[6] = v4;
  v3[7] = v5;
  v3[3] = v5;
  v3[4] = a1;
  v6 = swift_task_alloc();
  v3[8] = v6;
  *v6 = v3;
  v6[1] = sub_21A0C8F94;

  return sub_21A0C8718(v3 + 2);
}

uint64_t sub_21A0C8F94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_21A0C91A8;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_21A0C90BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A0C90BC()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v5[3] = &type metadata for SignedActivityContentServiceFactory.ActivityContentService;
  v5[4] = &off_282B25088;
  v6 = swift_allocObject();
  *v5 = v6;
  sub_219F3FDF4(v4, (v6 + 4));
  sub_219F3FDF4(v4 + 80, (v6 + 9));
  sub_219F3FDF4(v4 + 120, (v6 + 14));
  v6[2] = v3;
  v6[3] = v2;
  v6[19] = v1;
  v8 = v0[1];

  return v8();
}

uint64_t sub_21A0C91C0(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCDC0);
  v2[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB060);
  v2[41] = swift_task_alloc();
  v3 = type metadata accessor for NewsLiveActivityAttributes(0);
  v2[42] = v3;
  v2[43] = *(v3 - 8);
  v2[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A0C92F0, 0, 0);
}

uint64_t sub_21A0C92F0()
{
  v29 = v0;
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[41];
  v4 = v0[39];
  __swift_project_boxed_opaque_existential_1(v4 + 12, v4[15]);
  v5 = v4[1];
  v28[0] = *v4;
  v28[1] = v5;

  sub_219F83E98(v28, v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_219F6409C(v0[41], &qword_27CCDB060);
    if (qword_27CCD90F8 != -1)
    {
      swift_once();
    }

    v6 = v0[39];
    v7 = sub_21A0E516C();
    __swift_project_value_buffer(v7, qword_27CCFE600);
    sub_21A0CDD00(v6, (v0 + 2));
    v8 = sub_21A0E514C();
    v9 = sub_21A0E66BC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28[0] = v11;
      *v10 = 136446210;
      v12 = v0[2];
      v13 = v0[3];

      sub_21A0CDD38((v0 + 2));
      v14 = sub_219F50144(v12, v13, v28);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_219F39000, v8, v9, "No local copy of attributes for activity; fetching from remote. ID=%{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x21CED2D30](v11, -1, -1);
      MEMORY[0x21CED2D30](v10, -1, -1);
    }

    else
    {

      sub_21A0CDD38((v0 + 2));
    }

    v24 = swift_task_alloc();
    v0[45] = v24;
    *v24 = v0;
    v24[1] = sub_21A0C9738;
    v25 = v0[40];

    return sub_21A0C9968(v25, 0);
  }

  else
  {
    sub_21A0CDD68(v0[41], v0[44], type metadata accessor for NewsLiveActivityAttributes);
    if (qword_27CCD90F8 != -1)
    {
      swift_once();
    }

    v15 = v0[39];
    v16 = sub_21A0E516C();
    __swift_project_value_buffer(v16, qword_27CCFE600);
    sub_21A0CDD00(v15, (v0 + 20));
    v17 = sub_21A0E514C();
    v18 = sub_21A0E66BC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28[0] = v20;
      *v19 = 136446210;
      v21 = v0[20];
      v22 = v0[21];

      sub_21A0CDD38((v0 + 20));
      v23 = sub_219F50144(v21, v22, v28);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_219F39000, v17, v18, "Found local copy of attributes for activity; bypassing remote fetch. ID=%{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x21CED2D30](v20, -1, -1);
      MEMORY[0x21CED2D30](v19, -1, -1);
    }

    else
    {

      sub_21A0CDD38((v0 + 20));
    }

    sub_21A0CDD68(v0[44], v0[38], type metadata accessor for NewsLiveActivityAttributes);

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_21A0C9738()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_21A0C98F0;
  }

  else
  {
    v2 = sub_21A0C984C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A0C984C()
{
  sub_21A0CDD68(v0[40], v0[38], type metadata accessor for NewsLiveActivityAttributes);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21A0C98F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A0C9968(uint64_t a1, char a2)
{
  *(v3 + 49) = a2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  type metadata accessor for NewsLiveActivityAttributes(0);
  *(v3 + 112) = swift_task_alloc();
  v4 = sub_21A0E45BC();
  *(v3 + 120) = v4;
  *(v3 + 128) = *(v4 - 8);
  *(v3 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBFD0);
  *(v3 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE0B8);
  *(v3 + 152) = swift_task_alloc();
  v5 = type metadata accessor for ActivityAccessToken();
  *(v3 + 160) = v5;
  *(v3 + 168) = *(v5 - 8);
  *(v3 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CCDA158);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  v6 = sub_21A0E481C();
  *(v3 + 200) = v6;
  *(v3 + 208) = *(v6 - 8);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A0C9BDC, 0, 0);
}

uint64_t sub_21A0C9BDC()
{
  v68 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 104);
  v5 = v4[5];
  v6 = v4[6];
  v7 = *(v0 + 49);
  __swift_project_boxed_opaque_existential_1(v4 + 2, v5);
  sub_21A08EE1C(v7, v5, v6, v3);
  v8 = *(v2 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    sub_219F6409C(*(v0 + 192), &unk_27CCDA158);
    if (qword_27CCD90F8 != -1)
    {
      swift_once();
    }

    v9 = sub_21A0E516C();
    __swift_project_value_buffer(v9, qword_27CCFE600);
    v10 = sub_21A0E514C();
    v11 = sub_21A0E669C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 49);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v67[0] = v14;
      *v13 = 136446210;
      v15 = sub_219F50144(qword_21A105CF0[v12], 0xE800000000000000, v67);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_219F39000, v10, v11, "Missing asset server URL from configuration. Kind=%{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x21CED2D30](v14, -1, -1);
      MEMORY[0x21CED2D30](v13, -1, -1);
    }

    v16 = *(v0 + 49) | 0x2000000000000000;
    sub_21A0CDC04();
    swift_allocError();
    *v17 = v16;
    swift_willThrow();
LABEL_18:

    v55 = *(v0 + 8);

    return v55();
  }

  v18 = *(v0 + 232);
  v19 = *(v0 + 160);
  v20 = *(v0 + 168);
  v21 = *(v0 + 152);
  v22 = *(v0 + 104);
  v23 = *(*(v0 + 208) + 32);
  v23(v18, *(v0 + 192), *(v0 + 200));
  sub_21A08CBA0(v18, *(v22 + 136), v21);
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    sub_219F6409C(*(v0 + 152), &qword_27CCDE0B8);
    if (qword_27CCD90F8 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 224);
    v25 = *(v0 + 232);
    v26 = *(v0 + 200);
    v27 = *(v0 + 208);
    v28 = sub_21A0E516C();
    __swift_project_value_buffer(v28, qword_27CCFE600);
    (*(v27 + 16))(v24, v25, v26);
    v29 = sub_21A0E514C();
    v30 = sub_21A0E669C();
    if (os_log_type_enabled(v29, v30))
    {
      v65 = v30;
      v31 = *(v0 + 49);
      v32 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v67[0] = v64;
      *v32 = 136446466;
      v33 = qword_21A105CF0[v31];
      v34 = *(v0 + 224);
      v35 = *(v0 + 200);
      v36 = *(v0 + 208);
      v37 = sub_219F50144(v33, 0xE800000000000000, v67);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      sub_21A0CDCB8(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
      v38 = sub_21A0E6BFC();
      v40 = v39;
      v41 = *(v36 + 8);
      v41(v34, v35);
      v42 = sub_219F50144(v38, v40, v67);

      *(v32 + 14) = v42;
      _os_log_impl(&dword_219F39000, v29, v65, "Missing authentication token for loading resource. Kind=%{public}s, URL=%s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CED2D30](v64, -1, -1);
      MEMORY[0x21CED2D30](v32, -1, -1);
    }

    else
    {
      v49 = *(v0 + 224);
      v50 = *(v0 + 200);
      v51 = *(v0 + 208);

      v41 = *(v51 + 8);
      v41(v49, v50);
    }

    v52 = *(v0 + 232);
    v53 = *(v0 + 200);
    sub_21A0CDC04();
    swift_allocError();
    *v54 = 0x8000000000000000;
    swift_willThrow();
    v41(v52, v53);
    goto LABEL_18;
  }

  v43 = *(v0 + 144);
  v44 = *(v0 + 120);
  v45 = *(v0 + 128);
  sub_21A0CDD68(*(v0 + 152), *(v0 + 176), type metadata accessor for ActivityAccessToken);
  sub_21A0E459C();
  v46 = *(v45 + 48);
  if (!v46(v43, 1, v44))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA628);
    sub_21A0E454C();
    *(swift_allocObject() + 16) = xmmword_21A0FBC80;
    sub_21A0E452C();
    sub_21A0E452C();
    sub_21A0E458C();
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 120);
  if (v46(v47, 1, v48))
  {
    (*(*(v0 + 208) + 56))(*(v0 + 184), 1, 1, *(v0 + 200));
    goto LABEL_22;
  }

  v66 = *(v0 + 200);
  v57 = *(v0 + 184);
  v58 = *(v0 + 128);
  v59 = *(v0 + 136);
  (*(v58 + 16))(v59, v47, v48);
  sub_21A0E45AC();
  (*(v58 + 8))(v59, v48);
  if (v8(v57, 1, v66) == 1)
  {
LABEL_22:
    v60 = *(v0 + 200);
    v61 = *(v0 + 184);
    (*(*(v0 + 208) + 16))(*(v0 + 216), *(v0 + 232), v60);
    if (v8(v61, 1, v60) != 1)
    {
      sub_219F6409C(*(v0 + 184), &unk_27CCDA158);
    }

    goto LABEL_25;
  }

  v23(*(v0 + 216), *(v0 + 184), *(v0 + 200));
LABEL_25:
  v62 = swift_task_alloc();
  *(v0 + 240) = v62;
  *v62 = v0;
  v62[1] = sub_21A0CA47C;
  v63 = *(v0 + 216);

  return sub_21A0CBD54(v0 + 16, v63);
}

uint64_t sub_21A0CA47C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_21A0CA88C;
  }

  else
  {
    v2 = sub_21A0CA590;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A0CA590()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 248);
  v3 = *(v0 + 216);
  v4 = *(v0 + 112);
  v5 = *(v0 + 24);
  sub_21A0749C4(v0 + 16, v0 + 56);
  sub_21A0CC78C(v1, v5, v3, v4);
  v6 = *(v0 + 232);
  if (v2)
  {
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 176);
    v11 = *(v0 + 144);
    sub_21A074A20(v0 + 16);
    sub_21A074A20(v0 + 16);
    v12 = *(v8 + 8);
    v12(v7, v9);
    v12(v6, v9);
    sub_21A0CDC58(v10, type metadata accessor for ActivityAccessToken);
    sub_219F6409C(v11, &qword_27CCDBFD0);
  }

  else
  {
    v14 = *(v0 + 216);
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v17 = *(v0 + 176);
    v24 = *(v0 + 144);
    v18 = *(v0 + 112);
    v19 = *(v0 + 96);
    sub_21A074A20(v0 + 16);
    v20 = *(v15 + 8);
    v20(v14, v16);
    v20(v6, v16);
    sub_21A0CDD68(v18, v19, type metadata accessor for NewsLiveActivityAttributes);
    sub_21A074A20(v0 + 16);
    v21 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCDC0) + 28);
    v22 = *(v0 + 48);
    *v21 = *(v0 + 32);
    *(v21 + 16) = v22;
    sub_21A0CDC58(v17, type metadata accessor for ActivityAccessToken);
    sub_219F6409C(v24, &qword_27CCDBFD0);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21A0CA88C()
{
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[18];
  v5 = *(v0[26] + 8);
  v5(v0[27], v2);
  v5(v1, v2);
  sub_21A0CDC58(v3, type metadata accessor for ActivityAccessToken);
  sub_219F6409C(v4, &qword_27CCDBFD0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21A0CA9E8(uint64_t a1, char a2)
{
  *(v3 + 49) = a2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  type metadata accessor for NewsLiveActivityPushPayload(0);
  *(v3 + 112) = swift_task_alloc();
  v4 = sub_21A0E45BC();
  *(v3 + 120) = v4;
  *(v3 + 128) = *(v4 - 8);
  *(v3 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBFD0);
  *(v3 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE0B8);
  *(v3 + 152) = swift_task_alloc();
  v5 = type metadata accessor for ActivityAccessToken();
  *(v3 + 160) = v5;
  *(v3 + 168) = *(v5 - 8);
  *(v3 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CCDA158);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  v6 = sub_21A0E481C();
  *(v3 + 200) = v6;
  *(v3 + 208) = *(v6 - 8);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A0CAC5C, 0, 0);
}

uint64_t sub_21A0CAC5C()
{
  v68 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 104);
  v5 = v4[5];
  v6 = v4[6];
  v7 = *(v0 + 49);
  __swift_project_boxed_opaque_existential_1(v4 + 2, v5);
  sub_21A08EE1C(v7, v5, v6, v3);
  v8 = *(v2 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    sub_219F6409C(*(v0 + 192), &unk_27CCDA158);
    if (qword_27CCD90F8 != -1)
    {
      swift_once();
    }

    v9 = sub_21A0E516C();
    __swift_project_value_buffer(v9, qword_27CCFE600);
    v10 = sub_21A0E514C();
    v11 = sub_21A0E669C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 49);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v67[0] = v14;
      *v13 = 136446210;
      v15 = sub_219F50144(qword_21A105CF0[v12], 0xE800000000000000, v67);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_219F39000, v10, v11, "Missing asset server URL from configuration. Kind=%{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x21CED2D30](v14, -1, -1);
      MEMORY[0x21CED2D30](v13, -1, -1);
    }

    v16 = *(v0 + 49) | 0x2000000000000000;
    sub_21A0CDC04();
    swift_allocError();
    *v17 = v16;
    swift_willThrow();
LABEL_18:

    v55 = *(v0 + 8);

    return v55();
  }

  v18 = *(v0 + 232);
  v19 = *(v0 + 160);
  v20 = *(v0 + 168);
  v21 = *(v0 + 152);
  v22 = *(v0 + 104);
  v23 = *(*(v0 + 208) + 32);
  v23(v18, *(v0 + 192), *(v0 + 200));
  sub_21A08CBA0(v18, *(v22 + 136), v21);
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    sub_219F6409C(*(v0 + 152), &qword_27CCDE0B8);
    if (qword_27CCD90F8 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 224);
    v25 = *(v0 + 232);
    v26 = *(v0 + 200);
    v27 = *(v0 + 208);
    v28 = sub_21A0E516C();
    __swift_project_value_buffer(v28, qword_27CCFE600);
    (*(v27 + 16))(v24, v25, v26);
    v29 = sub_21A0E514C();
    v30 = sub_21A0E669C();
    if (os_log_type_enabled(v29, v30))
    {
      v65 = v30;
      v31 = *(v0 + 49);
      v32 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v67[0] = v64;
      *v32 = 136446466;
      v33 = qword_21A105CF0[v31];
      v34 = *(v0 + 224);
      v35 = *(v0 + 200);
      v36 = *(v0 + 208);
      v37 = sub_219F50144(v33, 0xE800000000000000, v67);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      sub_21A0CDCB8(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
      v38 = sub_21A0E6BFC();
      v40 = v39;
      v41 = *(v36 + 8);
      v41(v34, v35);
      v42 = sub_219F50144(v38, v40, v67);

      *(v32 + 14) = v42;
      _os_log_impl(&dword_219F39000, v29, v65, "Missing authentication token for loading resource. Kind=%{public}s, URL=%s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CED2D30](v64, -1, -1);
      MEMORY[0x21CED2D30](v32, -1, -1);
    }

    else
    {
      v49 = *(v0 + 224);
      v50 = *(v0 + 200);
      v51 = *(v0 + 208);

      v41 = *(v51 + 8);
      v41(v49, v50);
    }

    v52 = *(v0 + 232);
    v53 = *(v0 + 200);
    sub_21A0CDC04();
    swift_allocError();
    *v54 = 0x8000000000000000;
    swift_willThrow();
    v41(v52, v53);
    goto LABEL_18;
  }

  v43 = *(v0 + 144);
  v44 = *(v0 + 120);
  v45 = *(v0 + 128);
  sub_21A0CDD68(*(v0 + 152), *(v0 + 176), type metadata accessor for ActivityAccessToken);
  sub_21A0E459C();
  v46 = *(v45 + 48);
  if (!v46(v43, 1, v44))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA628);
    sub_21A0E454C();
    *(swift_allocObject() + 16) = xmmword_21A0FBC80;
    sub_21A0E452C();
    sub_21A0E452C();
    sub_21A0E458C();
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 120);
  if (v46(v47, 1, v48))
  {
    (*(*(v0 + 208) + 56))(*(v0 + 184), 1, 1, *(v0 + 200));
    goto LABEL_22;
  }

  v66 = *(v0 + 200);
  v57 = *(v0 + 184);
  v58 = *(v0 + 128);
  v59 = *(v0 + 136);
  (*(v58 + 16))(v59, v47, v48);
  sub_21A0E45AC();
  (*(v58 + 8))(v59, v48);
  if (v8(v57, 1, v66) == 1)
  {
LABEL_22:
    v60 = *(v0 + 200);
    v61 = *(v0 + 184);
    (*(*(v0 + 208) + 16))(*(v0 + 216), *(v0 + 232), v60);
    if (v8(v61, 1, v60) != 1)
    {
      sub_219F6409C(*(v0 + 184), &unk_27CCDA158);
    }

    goto LABEL_25;
  }

  v23(*(v0 + 216), *(v0 + 184), *(v0 + 200));
LABEL_25:
  v62 = swift_task_alloc();
  *(v0 + 240) = v62;
  *v62 = v0;
  v62[1] = sub_21A0CB4FC;
  v63 = *(v0 + 216);

  return sub_21A0CBD54(v0 + 16, v63);
}

uint64_t sub_21A0CB4FC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_21A0CE278;
  }

  else
  {
    v2 = sub_21A0CB610;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A0CB610()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 248);
  v3 = *(v0 + 216);
  v4 = *(v0 + 112);
  v5 = *(v0 + 24);
  sub_21A0749C4(v0 + 16, v0 + 56);
  sub_21A0CCF58(v1, v5, v3, v4);
  v6 = *(v0 + 232);
  if (v2)
  {
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 176);
    v11 = *(v0 + 144);
    sub_21A074A20(v0 + 16);
    sub_21A074A20(v0 + 16);
    v12 = *(v8 + 8);
    v12(v7, v9);
    v12(v6, v9);
    sub_21A0CDC58(v10, type metadata accessor for ActivityAccessToken);
    sub_219F6409C(v11, &qword_27CCDBFD0);
  }

  else
  {
    v14 = *(v0 + 216);
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v17 = *(v0 + 176);
    v24 = *(v0 + 144);
    v18 = *(v0 + 112);
    v19 = *(v0 + 96);
    sub_21A074A20(v0 + 16);
    v20 = *(v15 + 8);
    v20(v14, v16);
    v20(v6, v16);
    sub_21A0CDD68(v18, v19, type metadata accessor for NewsLiveActivityPushPayload);
    sub_21A074A20(v0 + 16);
    v21 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCDB0) + 28);
    v22 = *(v0 + 48);
    *v21 = *(v0 + 32);
    *(v21 + 16) = v22;
    sub_21A0CDC58(v17, type metadata accessor for ActivityAccessToken);
    sub_219F6409C(v24, &qword_27CCDBFD0);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21A0CB90C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for NewsLiveActivityPushPayload(0);
  v3[5] = swift_task_alloc();
  v3[6] = type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCDB0);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A0CBA0C, 0, 0);
}

uint64_t sub_21A0CBA0C()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = type metadata accessor for NewsLiveActivityAttributes(0);
  sub_21A07495C(v2 + *(v3 + 28), v1, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_21A0CDC58(v1, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_21A0CBB18;
  v6 = v0[9];
  if (EnumCaseMultiPayload < 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  return sub_21A0CA9E8(v6, v7);
}

uint64_t sub_21A0CBB18()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_21A072824;
  }

  else
  {
    v2 = sub_21A0CBC2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A0CBC2C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];
  v4 = v0[2];
  sub_21A07495C(v1, v3, type metadata accessor for NewsLiveActivityPushPayload);
  sub_21A0CDD68(v3, v4, type metadata accessor for NewsLiveActivityContent);
  v5 = v1 + *(v2 + 28);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  sub_219F6409C(v1, &qword_27CCDCDB0);
  v9 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC970) + 28);
  *v9 = v6;
  *(v9 + 8) = v7;
  *(v9 + 16) = v8;

  v10 = v0[1];

  return v10();
}

uint64_t sub_21A0CBD54(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = type metadata accessor for NetworkRequest();
  v3[11] = swift_task_alloc();
  v4 = sub_21A0E481C();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A0CBE60, 0, 0);
}

uint64_t sub_21A0CBE60()
{
  v33 = v0;
  if (qword_27CCD90F8 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[8];
  v5 = sub_21A0E516C();
  v0[17] = __swift_project_value_buffer(v5, qword_27CCFE600);
  v6 = *(v3 + 16);
  v0[18] = v6;
  v0[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_21A0E514C();
  v8 = sub_21A0E66BC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[16];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    buf = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *buf = 136315138;
    sub_21A0CDCB8(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
    v13 = v6;
    v14 = sub_21A0E6BFC();
    v16 = v15;
    v29 = v8;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = v14;
    v6 = v13;
    v19 = sub_219F50144(v18, v16, &v32);

    *(buf + 4) = v19;
    _os_log_impl(&dword_219F39000, v7, v29, "Requesting contents of %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x21CED2D30](v31, -1, -1);
    MEMORY[0x21CED2D30](buf, -1, -1);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[20] = v17;
  v20 = v0[11];
  v21 = v0[12];
  v22 = v0[10];
  v23 = v0[8];
  v24 = __swift_project_boxed_opaque_existential_1((v0[9] + 56), *(v0[9] + 80));
  v6(v20, v23, v21);
  *(v20 + *(v22 + 20)) = 0;
  *(v20 + *(v22 + 24)) = xmmword_21A0FE4D0;
  v25 = *v24;
  v26 = swift_task_alloc();
  v0[21] = v26;
  *v26 = v0;
  v26[1] = sub_21A0CC154;
  v27 = v0[11];

  return sub_21A0BECC0((v0 + 2), v27, v25);
}

uint64_t sub_21A0CC154()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  sub_21A0CDC58(*(v2 + 88), type metadata accessor for NetworkRequest);
  if (v0)
  {
    v3 = sub_21A0CC4C0;
  }

  else
  {
    v3 = sub_21A0CC29C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21A0CC29C()
{
  v20 = v0;
  (*(v0 + 144))(*(v0 + 120), *(v0 + 64), *(v0 + 96));
  v1 = sub_21A0E514C();
  v2 = sub_21A0E66BC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 160);
  v5 = *(v0 + 120);
  v6 = *(v0 + 96);
  if (v3)
  {
    v18 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    sub_21A0CDCB8(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
    v9 = sub_21A0E6BFC();
    v11 = v10;
    v18(v5, v6);
    v12 = sub_219F50144(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_219F39000, v1, v2, "Successfully loaded contents of %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CED2D30](v8, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 56);
  v14 = *(v0 + 16);
  v15 = *(v0 + 32);
  *(v13 + 32) = *(v0 + 48);
  *v13 = v14;
  *(v13 + 16) = v15;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_21A0CC4C0()
{
  v26 = v0;
  v1 = *(v0 + 176);
  (*(v0 + 144))(*(v0 + 112), *(v0 + 64), *(v0 + 96));
  v2 = v1;
  v3 = sub_21A0E514C();
  v4 = sub_21A0E669C();

  if (os_log_type_enabled(v3, v4))
  {
    v23 = *(v0 + 160);
    v24 = *(v0 + 176);
    v5 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v7 = 136315394;
    sub_21A0CDCB8(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
    v10 = sub_21A0E6BFC();
    v12 = v11;
    v23(v5, v6);
    v13 = sub_219F50144(v10, v12, &v25);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v24;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_219F39000, v3, v4, "Failed to load contents of %s. Error=%@", v7, 0x16u);
    sub_219F6409C(v8, &qword_27CCD9E28);
    MEMORY[0x21CED2D30](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    MEMORY[0x21CED2D30](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 160);
    v17 = *(v0 + 112);
    v18 = *(v0 + 96);

    v16(v17, v18);
  }

  v19 = *(v0 + 176) | 0x4000000000000000;
  sub_21A0CDC04();
  swift_allocError();
  *v20 = v19;
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_21A0CC78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a2;
  v71 = a4;
  v72 = a1;
  v5 = sub_21A0E481C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v66 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v66 - v16;
  if (qword_27CCD90F8 != -1)
  {
    swift_once();
  }

  v18 = sub_21A0E516C();
  v19 = __swift_project_value_buffer(v18, qword_27CCFE600);
  v20 = *(v6 + 16);
  v75 = a3;
  v69 = v20;
  v20(v17, a3, v5);
  v70 = v19;
  v21 = sub_21A0E514C();
  v22 = sub_21A0E66BC();
  v23 = os_log_type_enabled(v21, v22);
  v78 = v6;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v77 = v5;
    v25 = v24;
    v26 = swift_slowAlloc();
    v67 = v14;
    v27 = v26;
    v80 = v26;
    *v25 = 136315394;
    sub_21A0CDCB8(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
    v28 = sub_21A0E6BFC();
    v68 = v10;
    v30 = v29;
    v76 = *(v6 + 8);
    v76(v17, v77);
    v31 = sub_219F50144(v28, v30, &v80);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    v79 = type metadata accessor for NewsLiveActivityAttributes(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE0D0);
    v32 = sub_21A0E622C();
    v34 = sub_219F50144(v32, v33, &v80);

    *(v25 + 14) = v34;
    v10 = v68;
    _os_log_impl(&dword_219F39000, v21, v22, "Attempting to decode response from %s into %s", v25, 0x16u);
    swift_arrayDestroy();
    v35 = v27;
    v14 = v67;
    MEMORY[0x21CED2D30](v35, -1, -1);
    v36 = v25;
    v5 = v77;
    MEMORY[0x21CED2D30](v36, -1, -1);
  }

  else
  {

    v76 = *(v6 + 8);
    v76(v17, v5);
  }

  sub_21A0E449C();
  swift_allocObject();
  sub_21A0E448C();
  v37 = type metadata accessor for NewsLiveActivityAttributes(0);
  sub_21A0CDCB8(&qword_280C89F50, type metadata accessor for NewsLiveActivityAttributes);
  v38 = v74;
  sub_21A0E447C();
  if (v38)
  {

    v69(v10, v75, v5);
    v39 = v38;
    v40 = sub_21A0E514C();
    v41 = sub_21A0E669C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v80 = v77;
      *v42 = 136315650;
      sub_21A0CDCB8(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
      v44 = sub_21A0E6BFC();
      v45 = v10;
      v47 = v46;
      v76(v45, v5);
      v48 = sub_219F50144(v44, v47, &v80);

      *(v42 + 4) = v48;
      *(v42 + 12) = 2080;
      v79 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE0D0);
      v49 = sub_21A0E622C();
      v51 = sub_219F50144(v49, v50, &v80);

      *(v42 + 14) = v51;
      *(v42 + 22) = 2112;
      v52 = v38;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 24) = v53;
      *v43 = v53;
      _os_log_impl(&dword_219F39000, v40, v41, "Failed to decode contents of %s into %s. Error=%@", v42, 0x20u);
      sub_219F6409C(v43, &qword_27CCD9E28);
      MEMORY[0x21CED2D30](v43, -1, -1);
      v54 = v77;
      swift_arrayDestroy();
      MEMORY[0x21CED2D30](v54, -1, -1);
      MEMORY[0x21CED2D30](v42, -1, -1);
    }

    else
    {

      v76(v10, v5);
    }

    sub_21A0CDC04();
    swift_allocError();
    *v65 = v38 | 0x6000000000000000;
    return swift_willThrow();
  }

  else
  {
    v69(v14, v75, v5);
    v55 = sub_21A0E514C();
    v56 = sub_21A0E66BC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = v14;
      v77 = swift_slowAlloc();
      v80 = v77;
      *v57 = 136315138;
      sub_21A0CDCB8(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
      v59 = sub_21A0E6BFC();
      v61 = v60;
      v76(v58, v5);
      v62 = sub_219F50144(v59, v61, &v80);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_219F39000, v55, v56, "Successfully decoded response from %s", v57, 0xCu);
      v63 = v77;
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x21CED2D30](v63, -1, -1);
      MEMORY[0x21CED2D30](v57, -1, -1);
    }

    else
    {

      return (v76)(v14, v5);
    }
  }
}

uint64_t sub_21A0CCF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a2;
  v71 = a4;
  v72 = a1;
  v5 = sub_21A0E481C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v66 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v66 - v16;
  if (qword_27CCD90F8 != -1)
  {
    swift_once();
  }

  v18 = sub_21A0E516C();
  v19 = __swift_project_value_buffer(v18, qword_27CCFE600);
  v20 = *(v6 + 16);
  v75 = a3;
  v69 = v20;
  v20(v17, a3, v5);
  v70 = v19;
  v21 = sub_21A0E514C();
  v22 = sub_21A0E66BC();
  v23 = os_log_type_enabled(v21, v22);
  v78 = v6;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v77 = v5;
    v25 = v24;
    v26 = swift_slowAlloc();
    v67 = v14;
    v27 = v26;
    v80 = v26;
    *v25 = 136315394;
    sub_21A0CDCB8(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
    v28 = sub_21A0E6BFC();
    v68 = v10;
    v30 = v29;
    v76 = *(v6 + 8);
    v76(v17, v77);
    v31 = sub_219F50144(v28, v30, &v80);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    v79 = type metadata accessor for NewsLiveActivityPushPayload(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE0C8);
    v32 = sub_21A0E622C();
    v34 = sub_219F50144(v32, v33, &v80);

    *(v25 + 14) = v34;
    v10 = v68;
    _os_log_impl(&dword_219F39000, v21, v22, "Attempting to decode response from %s into %s", v25, 0x16u);
    swift_arrayDestroy();
    v35 = v27;
    v14 = v67;
    MEMORY[0x21CED2D30](v35, -1, -1);
    v36 = v25;
    v5 = v77;
    MEMORY[0x21CED2D30](v36, -1, -1);
  }

  else
  {

    v76 = *(v6 + 8);
    v76(v17, v5);
  }

  sub_21A0E449C();
  swift_allocObject();
  sub_21A0E448C();
  v37 = type metadata accessor for NewsLiveActivityPushPayload(0);
  sub_21A0CDCB8(&qword_27CCDCDB8, type metadata accessor for NewsLiveActivityPushPayload);
  v38 = v74;
  sub_21A0E447C();
  if (v38)
  {

    v69(v10, v75, v5);
    v39 = v38;
    v40 = sub_21A0E514C();
    v41 = sub_21A0E669C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v80 = v77;
      *v42 = 136315650;
      sub_21A0CDCB8(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
      v44 = sub_21A0E6BFC();
      v45 = v10;
      v47 = v46;
      v76(v45, v5);
      v48 = sub_219F50144(v44, v47, &v80);

      *(v42 + 4) = v48;
      *(v42 + 12) = 2080;
      v79 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE0C8);
      v49 = sub_21A0E622C();
      v51 = sub_219F50144(v49, v50, &v80);

      *(v42 + 14) = v51;
      *(v42 + 22) = 2112;
      v52 = v38;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 24) = v53;
      *v43 = v53;
      _os_log_impl(&dword_219F39000, v40, v41, "Failed to decode contents of %s into %s. Error=%@", v42, 0x20u);
      sub_219F6409C(v43, &qword_27CCD9E28);
      MEMORY[0x21CED2D30](v43, -1, -1);
      v54 = v77;
      swift_arrayDestroy();
      MEMORY[0x21CED2D30](v54, -1, -1);
      MEMORY[0x21CED2D30](v42, -1, -1);
    }

    else
    {

      v76(v10, v5);
    }

    sub_21A0CDC04();
    swift_allocError();
    *v65 = v38 | 0x6000000000000000;
    return swift_willThrow();
  }

  else
  {
    v69(v14, v75, v5);
    v55 = sub_21A0E514C();
    v56 = sub_21A0E66BC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = v14;
      v77 = swift_slowAlloc();
      v80 = v77;
      *v57 = 136315138;
      sub_21A0CDCB8(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
      v59 = sub_21A0E6BFC();
      v61 = v60;
      v76(v58, v5);
      v62 = sub_219F50144(v59, v61, &v80);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_219F39000, v55, v56, "Successfully decoded response from %s", v57, 0xCu);
      v63 = v77;
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x21CED2D30](v63, -1, -1);
      MEMORY[0x21CED2D30](v57, -1, -1);
    }

    else
    {

      return (v76)(v14, v5);
    }
  }
}

uint64_t sub_21A0CD724(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_219F49B18;

  return sub_21A0C91C0(a1);
}

uint64_t sub_21A0CD7BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_219F49B18;

  return sub_21A0CB90C(a1, a2);
}

uint64_t sub_21A0CD864(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for NetworkRequest();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A0CD8F8, 0, 0);
}

uint64_t sub_21A0CD8F8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = __swift_project_boxed_opaque_existential_1((v0[8] + 56), *(v0[8] + 80));
  v5 = sub_21A0E481C();
  (*(*(v5 - 8) + 16))(v1, v3, v5);
  *(v1 + *(v2 + 20)) = 0;
  *(v1 + *(v2 + 24)) = xmmword_21A0FE4D0;
  v6 = *v4;
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_21A0CDA0C;
  v8 = v0[10];

  return sub_21A0BECC0((v0 + 2), v8, v6);
}

uint64_t sub_21A0CDA0C()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[12] = v0;

  sub_21A0CDC58(v2, type metadata accessor for NetworkRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21A0CE274, 0, 0);
  }

  else
  {
    v5 = v3[2];
    v4 = v3[3];

    v6 = v3[1];

    return v6(v5, v4);
  }
}

uint64_t sub_21A0CDB94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CCDA158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A0CDC04()
{
  result = qword_27CCDE0C0;
  if (!qword_27CCDE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE0C0);
  }

  return result;
}

uint64_t sub_21A0CDC58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A0CDCB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A0CDD68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_21A0CDE0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A0CDE54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore33SignedActivityContentServiceErrorO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return ((*a1 >> 1) & 0xFFFFFFFC | *a1 & 3) + 4;
  }
}

uint64_t sub_21A0CDEEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1C && *(a1 + 8))
  {
    return (*a1 + 28);
  }

  v3 = (((*a1 >> 59) >> 2) | (8 * ((*a1 >> 59) & 2 | (*a1 >> 2) & 1))) ^ 0x1F;
  if (v3 >= 0x1B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21A0CDF48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1B)
  {
    *result = a2 - 28;
    if (a3 >= 0x1C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 3 | (4 * (-a2 & 0x1F));
      *result = ((v3 << 59) | (4 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_21A0CDFAC(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    *result = *result & 0xFFFFFFFFFFFFFFBLL | (a2 << 61);
  }

  else
  {
    *result = (2 * (a2 - 4)) & 0x1FFFFFFF8 | (a2 - 4) & 3 | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_21A0CDFF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A0CE03C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_21A0CE0C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A0CE10C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21A0CE184()
{
  result = qword_27CCDE0D8;
  if (!qword_27CCDE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE0D8);
  }

  return result;
}

unint64_t sub_21A0CE1D8()
{
  result = qword_27CCDE0E0;
  if (!qword_27CCDE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE0E0);
  }

  return result;
}

unint64_t sub_21A0CE22C(unint64_t result)
{
  v1 = result >> 61;
  if (!(result >> 61))
  {
    return result;
  }

  if (v1 == 3 || v1 == 2)
  {
    result &= 0x1FFFFFFFFFFFFFFFuLL;
    return result;
  }

  return result;
}

void sub_21A0CE250(unint64_t a1)
{
  v1 = a1 >> 61;
  if (!(a1 >> 61))
  {
    goto LABEL_5;
  }

  if (v1 == 3 || v1 == 2)
  {
    a1 &= 0x1FFFFFFFFFFFFFFFuLL;
LABEL_5:
  }
}

void *sub_21A0CE27C@<X0>(void *__src@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, a2, sizeof(__srca));
  memcpy(v76, __src, sizeof(v76));
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v76) != 1)
  {
    memcpy(v73, __srca, sizeof(v73));
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v73) != 1)
    {
      v70[9] = v73[9];
      v70[10] = v73[10];
      v70[11] = v73[11];
      v70[5] = v73[5];
      v70[6] = v73[6];
      v70[7] = v73[7];
      v70[8] = v73[8];
      v70[1] = v73[1];
      v70[2] = v73[2];
      v70[3] = v73[3];
      v70[4] = v73[4];
      v71 = *&v73[12];
      v70[0] = v73[0];
      v9 = v73;
      if (sub_219F63C20(v70) == 1)
      {
        v9 = v76;
        sub_219F9336C(v76, v72);
      }

      v10 = v9[11];
      v67 = v9[10];
      v68 = v10;
      v69 = *(v9 + 24);
      v11 = v9[7];
      v63 = v9[6];
      v64 = v11;
      v12 = v9[9];
      v65 = v9[8];
      v66 = v12;
      v13 = v9[3];
      v59 = v9[2];
      v60 = v13;
      v14 = v9[5];
      v61 = v9[4];
      v62 = v14;
      v15 = v9[1];
      v16 = &v73[12] + 8;
      v57 = *v9;
      v58 = v15;
      sub_219F9336C(&v73[12] + 8, v72);
      sub_219F9336C(v73, v72);
      sub_219F6409C(__srca, &qword_27CCDCE98);
      v55[10] = *(&v73[22] + 8);
      v55[11] = *(&v73[23] + 8);
      v56 = *(&v73[24] + 1);
      v55[6] = *(&v73[18] + 8);
      v55[7] = *(&v73[19] + 8);
      v55[8] = *(&v73[20] + 8);
      v55[9] = *(&v73[21] + 8);
      v55[2] = *(&v73[14] + 8);
      v55[3] = *(&v73[15] + 8);
      v55[4] = *(&v73[16] + 8);
      v55[5] = *(&v73[17] + 8);
      v55[0] = *(&v73[12] + 8);
      v55[1] = *(&v73[13] + 8);
      if (sub_219F63C20(v55) == 1)
      {
        v16 = &v76[12] + 8;
        sub_219F9336C(&v76[12] + 8, v72);
      }

      sub_219F6409C(__dst, &qword_27CCDCE98);
      v17 = *(v16 + 11);
      v52 = *(v16 + 10);
      v53 = v17;
      v54 = *(v16 + 24);
      v18 = *(v16 + 7);
      v48 = *(v16 + 6);
      v49 = v18;
      v19 = *(v16 + 9);
      v50 = *(v16 + 8);
      v51 = v19;
      v20 = *(v16 + 3);
      v44 = *(v16 + 2);
      v45 = v20;
      v21 = *(v16 + 5);
      v46 = *(v16 + 4);
      v47 = v21;
      v22 = *(v16 + 1);
      v42 = *v16;
      v43 = v22;
      sub_219F639B0(&v25);
      *(&v72[22] + 8) = v35;
      *(&v72[23] + 8) = v36;
      *(&v72[18] + 8) = v31;
      *(&v72[19] + 8) = v32;
      *(&v72[20] + 8) = v33;
      *(&v72[21] + 8) = v34;
      *(&v72[16] + 8) = v29;
      *(&v72[17] + 8) = v30;
      *(&v72[13] + 8) = v26;
      *(&v72[14] + 8) = v27;
      *(&v72[15] + 8) = v28;
      *(&v72[12] + 8) = v25;
      v38[10] = v35;
      v38[11] = v36;
      v38[6] = v31;
      v38[7] = v32;
      v38[8] = v33;
      v38[9] = v34;
      v38[2] = v27;
      v38[3] = v28;
      v38[4] = v29;
      v38[5] = v30;
      *(&v72[24] + 1) = v37;
      v39 = v37;
      v38[0] = v25;
      v38[1] = v26;
      sub_219F6409C(v38, &qword_27CCD95B8);
      v40[10] = *(&v72[22] + 8);
      v40[11] = *(&v72[23] + 8);
      v41 = *(&v72[24] + 1);
      v40[6] = *(&v72[18] + 8);
      v40[7] = *(&v72[19] + 8);
      v40[8] = *(&v72[20] + 8);
      v40[9] = *(&v72[21] + 8);
      v40[2] = *(&v72[14] + 8);
      v40[3] = *(&v72[15] + 8);
      v40[4] = *(&v72[16] + 8);
      v40[5] = *(&v72[17] + 8);
      v40[0] = *(&v72[12] + 8);
      v40[1] = *(&v72[13] + 8);
      sub_219F6409C(v40, &qword_27CCD95B8);
      goto LABEL_13;
    }

    v69 = *&v76[12];
    v67 = v76[10];
    v68 = v76[11];
    v63 = v76[6];
    v64 = v76[7];
    v65 = v76[8];
    v66 = v76[9];
    v59 = v76[2];
    v60 = v76[3];
    v61 = v76[4];
    v62 = v76[5];
    v57 = v76[0];
    v58 = v76[1];
    v52 = *(&v76[22] + 8);
    v53 = *(&v76[23] + 8);
    v54 = *(&v76[24] + 1);
    v48 = *(&v76[18] + 8);
    v49 = *(&v76[19] + 8);
    v50 = *(&v76[20] + 8);
    v51 = *(&v76[21] + 8);
    v7 = *(&v76[13] + 8);
    v44 = *(&v76[14] + 8);
    v45 = *(&v76[15] + 8);
    v46 = *(&v76[16] + 8);
    v47 = *(&v76[17] + 8);
    v8 = *(&v76[12] + 8);
LABEL_7:
    v42 = v8;
    v43 = v7;
LABEL_13:
    v72[10] = v67;
    v72[11] = v68;
    v72[6] = v63;
    v72[7] = v64;
    v72[8] = v65;
    v72[9] = v66;
    v72[2] = v59;
    v72[3] = v60;
    v72[4] = v61;
    v72[5] = v62;
    v72[0] = v57;
    v72[1] = v58;
    *(&v72[22] + 8) = v52;
    *(&v72[23] + 8) = v53;
    *(&v72[18] + 8) = v48;
    *(&v72[19] + 8) = v49;
    *(&v72[20] + 8) = v50;
    *(&v72[21] + 8) = v51;
    *(&v72[16] + 8) = v46;
    *(&v72[17] + 8) = v47;
    *(&v72[13] + 8) = v43;
    *(&v72[14] + 8) = v44;
    *(&v72[15] + 8) = v45;
    *&v72[12] = v69;
    *(&v72[24] + 1) = v54;
    *(&v72[12] + 8) = v42;
    memcpy(v73, v72, sizeof(v73));
    nullsub_1(v73, v23);
    v6 = v73;
    return memcpy(a3, v6, 0x190uLL);
  }

  memcpy(v73, __srca, sizeof(v73));
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v73) != 1)
  {
    v69 = *&v73[12];
    v67 = v73[10];
    v68 = v73[11];
    v63 = v73[6];
    v64 = v73[7];
    v65 = v73[8];
    v66 = v73[9];
    v59 = v73[2];
    v60 = v73[3];
    v61 = v73[4];
    v62 = v73[5];
    v57 = v73[0];
    v58 = v73[1];
    v52 = *(&v73[22] + 8);
    v53 = *(&v73[23] + 8);
    v54 = *(&v73[24] + 1);
    v48 = *(&v73[18] + 8);
    v49 = *(&v73[19] + 8);
    v50 = *(&v73[20] + 8);
    v51 = *(&v73[21] + 8);
    v7 = *(&v73[13] + 8);
    v44 = *(&v73[14] + 8);
    v45 = *(&v73[15] + 8);
    v46 = *(&v73[16] + 8);
    v47 = *(&v73[17] + 8);
    v8 = *(&v73[12] + 8);
    goto LABEL_7;
  }

  v6 = __srca;
  return memcpy(a3, v6, 0x190uLL);
}

uint64_t ActivityFooterTheme.title.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v3 = *(v1 + 176);
  v30 = *(v1 + 160);
  v31 = v3;
  v4 = *(v1 + 80);
  v5 = *(v1 + 112);
  v26 = *(v1 + 96);
  v6 = v26;
  v27 = v5;
  v7 = *(v1 + 112);
  v8 = *(v1 + 144);
  v28 = *(v1 + 128);
  v9 = v28;
  v29 = v8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 48);
  v22 = *(v1 + 32);
  v12 = v22;
  v23 = v11;
  v13 = *(v1 + 48);
  v14 = *(v1 + 80);
  v24 = *(v1 + 64);
  v15 = v24;
  v25 = v14;
  v16 = *(v1 + 16);
  v21[0] = *v1;
  v17 = v21[0];
  v21[1] = v16;
  v18 = *(v1 + 176);
  *(a1 + 160) = v30;
  *(a1 + 176) = v18;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 128) = v9;
  *(a1 + 144) = v2;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  *(a1 + 64) = v15;
  *(a1 + 80) = v4;
  v32 = *(v1 + 192);
  *(a1 + 192) = *(v1 + 192);
  *a1 = v17;
  *(a1 + 16) = v10;
  return sub_219F9336C(v21, v20);
}

__n128 ActivityFooterTheme.title.setter(uint64_t a1)
{
  v3 = *(v1 + 176);
  v15[10] = *(v1 + 160);
  v15[11] = v3;
  v16 = *(v1 + 192);
  v4 = *(v1 + 112);
  v15[6] = *(v1 + 96);
  v15[7] = v4;
  v5 = *(v1 + 144);
  v15[8] = *(v1 + 128);
  v15[9] = v5;
  v6 = *(v1 + 48);
  v15[2] = *(v1 + 32);
  v15[3] = v6;
  v7 = *(v1 + 80);
  v15[4] = *(v1 + 64);
  v15[5] = v7;
  v8 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v8;
  sub_219F6409C(v15, &qword_27CCD95B8);
  v9 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v9;
  *(v1 + 192) = *(a1 + 192);
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v11;
  v12 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v12;
  v13 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v13;
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t ActivityFooterTheme.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 248);
  v19[2] = *(v1 + 232);
  v19[3] = v3;
  v19[0] = *(v1 + 200);
  v19[1] = v2;
  v4 = *(v1 + 344);
  v5 = *(v1 + 376);
  v26 = *(v1 + 360);
  v27 = v5;
  v6 = *(v1 + 280);
  v7 = *(v1 + 312);
  v22 = *(v1 + 296);
  v8 = v22;
  v23 = v7;
  v9 = *(v1 + 312);
  v10 = *(v1 + 344);
  v24 = *(v1 + 328);
  v11 = v24;
  v25 = v10;
  v12 = *(v1 + 280);
  v20 = *(v1 + 264);
  v13 = v20;
  v21 = v12;
  v14 = *(v1 + 376);
  *(a1 + 160) = v26;
  *(a1 + 176) = v14;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  v28 = *(v1 + 392);
  *(a1 + 192) = *(v1 + 392);
  *(a1 + 128) = v11;
  *(a1 + 144) = v4;
  v15 = *(v1 + 248);
  *(a1 + 32) = *(v1 + 232);
  *(a1 + 48) = v15;
  v16 = *(v1 + 216);
  *(a1 + 64) = v13;
  *(a1 + 80) = v6;
  *a1 = *(v1 + 200);
  *(a1 + 16) = v16;
  return sub_219F9336C(v19, v18);
}

__n128 ActivityFooterTheme.subtitle.setter(__int128 *a1)
{
  v16 = *(v1 + 392);
  v3 = *(v1 + 216);
  v4 = *(v1 + 248);
  v15[2] = *(v1 + 232);
  v15[3] = v4;
  v15[0] = *(v1 + 200);
  v15[1] = v3;
  v5 = *(v1 + 376);
  v15[10] = *(v1 + 360);
  v15[11] = v5;
  v6 = *(v1 + 312);
  v15[6] = *(v1 + 296);
  v15[7] = v6;
  v7 = *(v1 + 344);
  v15[8] = *(v1 + 328);
  v15[9] = v7;
  v8 = *(v1 + 280);
  v15[4] = *(v1 + 264);
  v15[5] = v8;
  sub_219F6409C(v15, &qword_27CCD95B8);
  v9 = a1[11];
  *(v1 + 360) = a1[10];
  *(v1 + 376) = v9;
  v10 = a1[7];
  *(v1 + 296) = a1[6];
  *(v1 + 312) = v10;
  v11 = a1[9];
  *(v1 + 328) = a1[8];
  *(v1 + 344) = v11;
  v12 = *a1;
  *(v1 + 216) = a1[1];
  v13 = a1[3];
  *(v1 + 232) = a1[2];
  *(v1 + 248) = v13;
  result = a1[5];
  *(v1 + 264) = a1[4];
  *(v1 + 280) = result;
  *(v1 + 392) = *(a1 + 24);
  *(v1 + 200) = v12;
  return result;
}

__n128 ActivityFooterTheme.init(title:subtitle:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_219F639B0(&v41);
  v6 = v51;
  v7 = v52;
  v8 = v52;
  *(a3 + 360) = v51;
  *(a3 + 376) = v7;
  v9 = v47;
  v10 = v48;
  v11 = v48;
  *(a3 + 296) = v47;
  *(a3 + 312) = v10;
  v12 = v50;
  v13 = v50;
  v14 = v49;
  *(a3 + 328) = v49;
  *(a3 + 344) = v12;
  v15 = v42;
  *(a3 + 216) = v42;
  v16 = v43;
  *(a3 + 232) = v43;
  v17 = v44;
  *(a3 + 248) = v44;
  v18 = v46;
  v19 = v46;
  v20 = v45;
  *(a3 + 264) = v45;
  *(a3 + 280) = v18;
  v21 = v41;
  *(a3 + 200) = v41;
  v54[10] = v6;
  v54[11] = v8;
  v54[6] = v9;
  v54[7] = v11;
  v54[8] = v14;
  v54[9] = v13;
  v54[2] = v16;
  v54[3] = v17;
  v54[4] = v20;
  v54[5] = v19;
  v22 = v53;
  *(a3 + 392) = v53;
  v55 = v22;
  v54[0] = v21;
  v54[1] = v15;
  sub_219F6409C(v54, &qword_27CCD95B8);
  v23 = *(a1 + 176);
  *(a3 + 160) = *(a1 + 160);
  *(a3 + 176) = v23;
  *(a3 + 192) = *(a1 + 192);
  v24 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v24;
  v25 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v25;
  v26 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v26;
  v27 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v27;
  v28 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v28;
  v29 = *(a3 + 376);
  v56[10] = *(a3 + 360);
  v56[11] = v29;
  v57 = *(a3 + 392);
  v30 = *(a3 + 312);
  v56[6] = *(a3 + 296);
  v56[7] = v30;
  v31 = *(a3 + 344);
  v56[8] = *(a3 + 328);
  v56[9] = v31;
  v32 = *(a3 + 216);
  v33 = *(a3 + 248);
  v56[2] = *(a3 + 232);
  v56[3] = v33;
  v34 = *(a3 + 280);
  v56[4] = *(a3 + 264);
  v56[5] = v34;
  v56[0] = *(a3 + 200);
  v56[1] = v32;
  sub_219F6409C(v56, &qword_27CCD95B8);
  v35 = a2[11];
  *(a3 + 360) = a2[10];
  *(a3 + 376) = v35;
  v36 = a2[7];
  *(a3 + 296) = a2[6];
  *(a3 + 312) = v36;
  v37 = a2[9];
  *(a3 + 328) = a2[8];
  *(a3 + 344) = v37;
  v38 = *a2;
  *(a3 + 216) = a2[1];
  v39 = a2[3];
  *(a3 + 232) = a2[2];
  *(a3 + 248) = v39;
  result = a2[5];
  *(a3 + 264) = a2[4];
  *(a3 + 280) = result;
  *(a3 + 392) = *(a2 + 24);
  *(a3 + 200) = v38;
  return result;
}

uint64_t sub_21A0CECEC(uint64_t a1)
{
  v2 = sub_21A0D02BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0CED28(uint64_t a1)
{
  v2 = sub_21A0D02BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFooterTheme.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE0E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v23 - v7;
  v9 = v1[11];
  v63 = v1[10];
  v64 = v9;
  v65 = *(v1 + 24);
  v10 = v1[7];
  v59 = v1[6];
  v60 = v10;
  v11 = v1[9];
  v61 = v1[8];
  v62 = v11;
  v12 = v1[3];
  v55 = v1[2];
  v56 = v12;
  v13 = v1[5];
  v57 = v1[4];
  v58 = v13;
  v14 = v1[1];
  v53 = *v1;
  v54 = v14;
  v15 = *(v1 + 376);
  v76 = *(v1 + 360);
  v77 = v15;
  v78 = *(v1 + 49);
  v16 = *(v1 + 312);
  v72 = *(v1 + 296);
  v73 = v16;
  v17 = *(v1 + 328);
  v75 = *(v1 + 344);
  v74 = v17;
  v18 = *(v1 + 216);
  v19 = *(v1 + 248);
  v68 = *(v1 + 232);
  v69 = v19;
  v20 = *(v1 + 264);
  v71 = *(v1 + 280);
  v70 = v20;
  v21 = *(v1 + 200);
  v67 = v18;
  v66 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F9336C(&v53, &v40);
  sub_21A0D02BC();
  sub_21A0E6EAC();
  v50 = v63;
  v51 = v64;
  v52 = v65;
  v46 = v59;
  v47 = v60;
  v48 = v61;
  v49 = v62;
  v42 = v55;
  v43 = v56;
  v44 = v57;
  v45 = v58;
  v40 = v53;
  v41 = v54;
  v80 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA2B8);
  sub_219F984C0(&qword_27CCDA2C0);
  sub_21A0E6B6C();
  v38[10] = v50;
  v38[11] = v51;
  v39 = v52;
  v38[6] = v46;
  v38[7] = v47;
  v38[8] = v48;
  v38[9] = v49;
  v38[2] = v42;
  v38[3] = v43;
  v38[4] = v44;
  v38[5] = v45;
  v38[0] = v40;
  v38[1] = v41;
  sub_219F6409C(v38, &qword_27CCD95B8);
  if (!v2)
  {
    v35 = v76;
    v36 = v77;
    v37 = v78;
    v31 = v72;
    v32 = v73;
    v33 = v74;
    v34 = v75;
    v27 = v68;
    v28 = v69;
    v29 = v70;
    v30 = v71;
    v25 = v66;
    v26 = v67;
    v79 = 1;
    sub_219F9336C(&v66, v23);
    sub_21A0E6B6C();
    v23[10] = v35;
    v23[11] = v36;
    v24 = v37;
    v23[6] = v31;
    v23[7] = v32;
    v23[8] = v33;
    v23[9] = v34;
    v23[2] = v27;
    v23[3] = v28;
    v23[4] = v29;
    v23[5] = v30;
    v23[0] = v25;
    v23[1] = v26;
    sub_219F6409C(v23, &qword_27CCD95B8);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ActivityFooterTheme.hash(into:)(uint64_t a1)
{
  v4 = *(v1 + 23);
  v3 = *(v1 + 24);
  v6 = *(v1 + 48);
  v5 = *(v1 + 49);
  v7 = v1[9];
  v39[8] = v1[8];
  v39[9] = v7;
  v39[10] = v1[10];
  v8 = *(v1 + 22);
  v9 = v1[5];
  v39[4] = v1[4];
  v39[5] = v9;
  v10 = v1[7];
  v39[6] = v1[6];
  v39[7] = v10;
  v11 = v1[1];
  v39[0] = *v1;
  v39[1] = v11;
  v12 = v1[3];
  v39[2] = v1[2];
  v39[3] = v12;
  v40 = v8;
  v41 = v4;
  v42 = v3;
  if (sub_219F63C20(v39) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    v13 = v1[9];
    v33 = v1[8];
    v34 = v13;
    v35 = v1[10];
    v36 = *(v1 + 22);
    v14 = v1[5];
    v29 = v1[4];
    v30 = v14;
    v15 = v1[7];
    v31 = v1[6];
    v32 = v15;
    v16 = v1[1];
    v25 = *v1;
    v26 = v16;
    v17 = v1[3];
    v27 = v1[2];
    v28 = v17;
    sub_21A0E6DCC();
    v37 = v4;
    v38 = v3;
    ActivityTextTheme.hash(into:)(a1);
    sub_219F91544(a1, v4);
    sub_219F6AF9C(a1, v3);
  }

  v18 = *(v1 + 344);
  v33 = *(v1 + 328);
  v34 = v18;
  v35 = *(v1 + 360);
  v19 = *(v1 + 47);
  v20 = *(v1 + 280);
  v29 = *(v1 + 264);
  v30 = v20;
  v21 = *(v1 + 312);
  v31 = *(v1 + 296);
  v32 = v21;
  v22 = *(v1 + 216);
  v25 = *(v1 + 200);
  v26 = v22;
  v23 = *(v1 + 248);
  v27 = *(v1 + 232);
  v28 = v23;
  v36 = v19;
  v37 = v6;
  v38 = v5;
  if (sub_219F63C20(&v25) == 1)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  ActivityTextTheme.hash(into:)(a1);
  sub_219F91544(a1, v6);
  return sub_219F6AF9C(a1, v5);
}

uint64_t ActivityFooterTheme.hashValue.getter()
{
  sub_21A0E6DAC();
  ActivityFooterTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t ActivityFooterTheme.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE0F8);
  v4 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v5);
  v7 = &v10 - v6;
  sub_219F639B0(&v72);
  v71[10] = v82;
  v71[11] = v83;
  v71[6] = v78;
  v71[7] = v79;
  v71[9] = v81;
  v71[8] = v80;
  v71[2] = v74;
  v71[3] = v75;
  v71[5] = v77;
  v71[4] = v76;
  v71[1] = v73;
  v71[0] = v72;
  *(&v71[22] + 8) = v82;
  *(&v71[23] + 8) = v83;
  *(&v71[18] + 8) = v78;
  *(&v71[19] + 8) = v79;
  *(&v71[20] + 8) = v80;
  *(&v71[21] + 8) = v81;
  *(&v71[16] + 8) = v76;
  *(&v71[17] + 8) = v77;
  *(&v71[13] + 8) = v73;
  *(&v71[14] + 8) = v74;
  *(&v71[15] + 8) = v75;
  *&v71[12] = v84;
  *(&v71[24] + 1) = v84;
  *(&v71[12] + 8) = v72;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0D02BC();
  sub_21A0E6E7C();
  if (!v2)
  {
    v10 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA2B8);
    v56 = 0;
    sub_219F984C0(&qword_27CCDA2D0);
    v8 = v85;
    sub_21A0E6A8C();
    v51 = v67;
    v52 = v68;
    v53 = v69;
    v47 = v63;
    v48 = v64;
    v50 = v66;
    v49 = v65;
    v43 = v59;
    v44 = v60;
    v46 = v62;
    v45 = v61;
    v42 = v58;
    v41 = v57;
    v54[10] = v71[10];
    v54[11] = v71[11];
    v55 = *&v71[12];
    v54[6] = v71[6];
    v54[7] = v71[7];
    v54[9] = v71[9];
    v54[8] = v71[8];
    v54[2] = v71[2];
    v54[3] = v71[3];
    v54[5] = v71[5];
    v54[4] = v71[4];
    v54[1] = v71[1];
    v54[0] = v71[0];
    sub_219F6409C(v54, &qword_27CCD95B8);
    v71[10] = v51;
    v71[11] = v52;
    *&v71[12] = v53;
    v71[6] = v47;
    v71[7] = v48;
    v71[9] = v50;
    v71[8] = v49;
    v71[2] = v43;
    v71[3] = v44;
    v71[5] = v46;
    v71[4] = v45;
    v71[1] = v42;
    v71[0] = v41;
    v27[407] = 1;
    sub_21A0E6A8C();
    (*(v10 + 8))(v7, v8);
    v22 = v38;
    v23 = v39;
    v24 = v40;
    v18 = v34;
    v19 = v35;
    v20 = v36;
    v21 = v37;
    v14 = v30;
    v15 = v31;
    v16 = v32;
    v17 = v33;
    v12 = v28;
    v13 = v29;
    v25[10] = *(&v71[22] + 8);
    v25[11] = *(&v71[23] + 8);
    v26 = *(&v71[24] + 1);
    v25[6] = *(&v71[18] + 8);
    v25[7] = *(&v71[19] + 8);
    v25[8] = *(&v71[20] + 8);
    v25[9] = *(&v71[21] + 8);
    v25[2] = *(&v71[14] + 8);
    v25[3] = *(&v71[15] + 8);
    v25[4] = *(&v71[16] + 8);
    v25[5] = *(&v71[17] + 8);
    v25[0] = *(&v71[12] + 8);
    v25[1] = *(&v71[13] + 8);
    sub_219F6409C(v25, &qword_27CCD95B8);
    *(&v71[22] + 8) = v22;
    *(&v71[23] + 8) = v23;
    *(&v71[24] + 1) = v24;
    *(&v71[18] + 8) = v18;
    *(&v71[19] + 8) = v19;
    *(&v71[20] + 8) = v20;
    *(&v71[21] + 8) = v21;
    *(&v71[14] + 8) = v14;
    *(&v71[15] + 8) = v15;
    *(&v71[16] + 8) = v16;
    *(&v71[17] + 8) = v17;
    *(&v71[12] + 8) = v12;
    *(&v71[13] + 8) = v13;
    memcpy(v27, v71, 0x190uLL);
    memcpy(v11, v71, 0x190uLL);
    sub_21A0B7F98(v27, v70);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  memcpy(v70, v71, sizeof(v70));
  return sub_21A0B7FF4(v70);
}

uint64_t sub_21A0CF8A4()
{
  sub_21A0E6DAC();
  ActivityFooterTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0CF8E8()
{
  sub_21A0E6DAC();
  ActivityFooterTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

BOOL _s22NewsLiveActivitiesCore19ActivityFooterThemeV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v4 = a1[9];
  v5 = a1[11];
  v165 = a1[10];
  v166 = v5;
  v6 = a1[5];
  v7 = a1[7];
  v161 = a1[6];
  v162 = v7;
  v9 = a1[7];
  v8 = a1[8];
  v10 = v8;
  v164 = a1[9];
  v163 = v8;
  v11 = a1[1];
  v12 = a1[3];
  v157 = a1[2];
  v158 = v12;
  v14 = a1[3];
  v13 = a1[4];
  v15 = v13;
  v160 = a1[5];
  v159 = v13;
  v16 = *a1;
  v17 = *a1;
  v156[1] = a1[1];
  v156[0] = v16;
  v18 = *(a1 + 376);
  v178 = *(a1 + 360);
  v179 = v18;
  v19 = *(a1 + 312);
  v174 = *(a1 + 296);
  v175 = v19;
  v20 = *(a1 + 328);
  v177 = *(a1 + 344);
  v176 = v20;
  v21 = *(a1 + 216);
  v22 = *(a1 + 248);
  v170 = *(a1 + 232);
  v171 = v22;
  v23 = *(a1 + 264);
  v173 = *(a1 + 280);
  v172 = v23;
  v24 = *(a1 + 200);
  v169 = v21;
  v168 = v24;
  v25 = a2[9];
  v26 = a2[11];
  v190 = a2[10];
  v191 = v26;
  v27 = a2[5];
  v28 = a2[7];
  v186 = a2[6];
  v187 = v28;
  v29 = a2[7];
  v30 = a2[8];
  v31 = v30;
  v189 = a2[9];
  v188 = v30;
  v32 = a2[1];
  v33 = a2[3];
  v182 = a2[2];
  v183 = v33;
  v34 = a2[4];
  v35 = a2[3];
  v185 = a2[5];
  v184 = v34;
  v36 = *a2;
  v37 = *a2;
  v181[1] = a2[1];
  v181[0] = v36;
  v38 = *(a2 + 376);
  v203 = *(a2 + 360);
  v204 = v38;
  v39 = *(a2 + 312);
  v199 = *(a2 + 296);
  v200 = v39;
  v40 = *(a2 + 328);
  v202 = *(a2 + 344);
  v201 = v40;
  v41 = *(a2 + 216);
  v42 = *(a2 + 248);
  v195 = *(a2 + 232);
  v196 = v42;
  v43 = *(a2 + 264);
  v198 = *(a2 + 280);
  v197 = v43;
  v44 = *(a2 + 200);
  v194 = v41;
  v193 = v44;
  v45 = a1[9];
  v46 = a1[11];
  __src[10] = a1[10];
  __src[11] = v46;
  v47 = a1[5];
  v48 = a1[7];
  __src[6] = a1[6];
  __src[7] = v48;
  v49 = a1[8];
  __src[9] = v45;
  __src[8] = v49;
  v50 = a1[1];
  v51 = a1[3];
  __src[2] = a1[2];
  __src[3] = v51;
  v52 = a1[4];
  __src[5] = v47;
  __src[4] = v52;
  v53 = *a1;
  __src[1] = v50;
  __src[0] = v53;
  v54 = a2[11];
  *(&__src[22] + 8) = v190;
  *(&__src[23] + 8) = v54;
  *(&__src[18] + 8) = v186;
  *(&__src[19] + 8) = v29;
  *(&__src[20] + 8) = v31;
  *(&__src[21] + 8) = v25;
  *(&__src[16] + 8) = v34;
  *(&__src[17] + 8) = v27;
  *(&__src[13] + 8) = v32;
  *(&__src[14] + 8) = v182;
  *(&__src[15] + 8) = v35;
  *(&__src[12] + 8) = v37;
  v55 = a1[11];
  v206[10] = v165;
  v206[11] = v55;
  v206[6] = v161;
  v206[7] = v9;
  v206[9] = v4;
  v206[8] = v10;
  v206[2] = v157;
  v206[3] = v14;
  v206[5] = v6;
  v206[4] = v15;
  v167 = *(a1 + 24);
  v180 = *(a1 + 49);
  v192 = *(a2 + 24);
  v205 = *(a2 + 49);
  v56 = *(a2 + 24);
  *&__src[12] = *(a1 + 24);
  *(&__src[24] + 1) = v56;
  v207 = *(a1 + 24);
  v206[1] = v11;
  v206[0] = v17;
  if (sub_219F63C20(v206) == 1)
  {
    v57 = a2[11];
    __dst[10] = a2[10];
    __dst[11] = v57;
    *&__dst[12] = *(a2 + 24);
    v58 = a2[7];
    __dst[6] = a2[6];
    __dst[7] = v58;
    v59 = a2[9];
    __dst[8] = a2[8];
    __dst[9] = v59;
    v60 = a2[3];
    __dst[2] = a2[2];
    __dst[3] = v60;
    v61 = a2[5];
    __dst[4] = a2[4];
    __dst[5] = v61;
    v62 = a2[1];
    __dst[0] = *a2;
    __dst[1] = v62;
    if (sub_219F63C20(__dst) == 1)
    {
      v63 = a1[11];
      v153 = a1[10];
      v154 = v63;
      v155 = *(a1 + 24);
      v64 = a1[7];
      v149 = a1[6];
      v150 = v64;
      v65 = a1[8];
      v152 = a1[9];
      v151 = v65;
      v66 = a1[3];
      v145 = a1[2];
      v146 = v66;
      v67 = a1[4];
      v148 = a1[5];
      v147 = v67;
      v68 = *a1;
      v144 = a1[1];
      v143 = v68;
      sub_219F9336C(v156, v141);
      sub_219F9336C(v181, v141);
      sub_219F6409C(&v143, &qword_27CCD95B8);
      goto LABEL_7;
    }

LABEL_5:
    memcpy(__dst, __src, sizeof(__dst));
    sub_219F9336C(v156, &v143);
    v75 = v181;
    v76 = &v143;
LABEL_12:
    sub_219F9336C(v75, v76);
    sub_219F6409C(__dst, &qword_27CCDA2F8);
    return 0;
  }

  v69 = a2[11];
  __dst[10] = a2[10];
  __dst[11] = v69;
  *&__dst[12] = *(a2 + 24);
  v70 = a2[7];
  __dst[6] = a2[6];
  __dst[7] = v70;
  v71 = a2[9];
  __dst[8] = a2[8];
  __dst[9] = v71;
  v72 = a2[3];
  __dst[2] = a2[2];
  __dst[3] = v72;
  v73 = a2[5];
  __dst[4] = a2[4];
  __dst[5] = v73;
  v74 = a2[1];
  __dst[0] = *a2;
  __dst[1] = v74;
  if (sub_219F63C20(__dst) == 1)
  {
    goto LABEL_5;
  }

  v77 = a2[9];
  v78 = a2[11];
  v138 = a2[10];
  v139 = v78;
  v79 = a2[5];
  v80 = a2[7];
  v134 = a2[6];
  v135 = v80;
  v82 = a2[7];
  v81 = a2[8];
  v83 = v81;
  v137 = a2[9];
  v136 = v81;
  v84 = a2[1];
  v85 = a2[3];
  v130 = a2[2];
  v131 = v85;
  v87 = a2[3];
  v86 = a2[4];
  v88 = v86;
  v133 = a2[5];
  v132 = v86;
  v89 = *a2;
  v90 = *a2;
  v129 = a2[1];
  v128 = v89;
  v91 = a2[11];
  v153 = v138;
  v154 = v91;
  v149 = v134;
  v150 = v82;
  v152 = v77;
  v151 = v83;
  v145 = v130;
  v146 = v87;
  v148 = v79;
  v147 = v88;
  v140 = *(a2 + 24);
  v155 = *(a2 + 24);
  v144 = v84;
  v143 = v90;
  v92 = a1[11];
  v141[10] = a1[10];
  v141[11] = v92;
  v142 = *(a1 + 24);
  v93 = a1[7];
  v141[6] = a1[6];
  v141[7] = v93;
  v94 = a1[8];
  v141[9] = a1[9];
  v141[8] = v94;
  v95 = a1[3];
  v141[2] = a1[2];
  v141[3] = v95;
  v96 = a1[4];
  v141[5] = a1[5];
  v141[4] = v96;
  v97 = *a1;
  v141[1] = a1[1];
  v141[0] = v97;
  sub_219F9336C(v156, &v113);
  sub_219F9336C(v181, &v113);
  v98 = sub_21A0D9624(v141, &v143);
  sub_219F6409C(&v128, &qword_27CCD95B8);
  v99 = a1[11];
  v123 = a1[10];
  v124 = v99;
  v125 = *(a1 + 24);
  v100 = a1[7];
  v119 = a1[6];
  v120 = v100;
  v101 = a1[9];
  v121 = a1[8];
  v122 = v101;
  v102 = a1[3];
  v115 = a1[2];
  v116 = v102;
  v103 = a1[5];
  v117 = a1[4];
  v118 = v103;
  v104 = a1[1];
  v113 = *a1;
  v114 = v104;
  sub_219F6409C(&v113, &qword_27CCD95B8);
  if ((v98 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  __src[10] = v178;
  __src[11] = v179;
  __src[6] = v174;
  __src[7] = v175;
  __src[9] = v177;
  __src[8] = v176;
  __src[2] = v170;
  __src[3] = v171;
  __src[5] = v173;
  __src[4] = v172;
  __src[1] = v169;
  __src[0] = v168;
  *(&__src[22] + 8) = v203;
  *(&__src[23] + 8) = v204;
  *(&__src[18] + 8) = v199;
  *(&__src[19] + 8) = v200;
  *(&__src[20] + 8) = v201;
  *(&__src[21] + 8) = v202;
  *(&__src[16] + 8) = v197;
  *(&__src[17] + 8) = v198;
  *(&__src[13] + 8) = v194;
  *(&__src[14] + 8) = v195;
  *(&__src[15] + 8) = v196;
  *(&__src[12] + 8) = v193;
  v123 = v178;
  v124 = v179;
  v119 = v174;
  v120 = v175;
  v121 = v176;
  v122 = v177;
  v115 = v170;
  v116 = v171;
  v117 = v172;
  v118 = v173;
  *&__src[12] = v180;
  *(&__src[24] + 1) = v205;
  v125 = v180;
  v113 = v168;
  v114 = v169;
  if (sub_219F63C20(&v113) != 1)
  {
    v111[10] = *(&__src[22] + 8);
    v111[11] = *(&__src[23] + 8);
    v112 = *(&__src[24] + 1);
    v111[6] = *(&__src[18] + 8);
    v111[7] = *(&__src[19] + 8);
    v111[8] = *(&__src[20] + 8);
    v111[9] = *(&__src[21] + 8);
    v111[2] = *(&__src[14] + 8);
    v111[3] = *(&__src[15] + 8);
    v111[4] = *(&__src[16] + 8);
    v111[5] = *(&__src[17] + 8);
    v111[0] = *(&__src[12] + 8);
    v111[1] = *(&__src[13] + 8);
    if (sub_219F63C20(v111) == 1)
    {
      goto LABEL_11;
    }

    v109[10] = *(&__src[22] + 8);
    v109[11] = *(&__src[23] + 8);
    v109[6] = *(&__src[18] + 8);
    v109[7] = *(&__src[19] + 8);
    v109[8] = *(&__src[20] + 8);
    v109[9] = *(&__src[21] + 8);
    v109[2] = *(&__src[14] + 8);
    v109[3] = *(&__src[15] + 8);
    v109[4] = *(&__src[16] + 8);
    v109[5] = *(&__src[17] + 8);
    v109[0] = *(&__src[12] + 8);
    v109[1] = *(&__src[13] + 8);
    __dst[10] = *(&__src[22] + 8);
    __dst[11] = *(&__src[23] + 8);
    __dst[6] = *(&__src[18] + 8);
    __dst[7] = *(&__src[19] + 8);
    __dst[8] = *(&__src[20] + 8);
    __dst[9] = *(&__src[21] + 8);
    __dst[2] = *(&__src[14] + 8);
    __dst[3] = *(&__src[15] + 8);
    __dst[4] = *(&__src[16] + 8);
    __dst[5] = *(&__src[17] + 8);
    v110 = *(&__src[24] + 1);
    *&__dst[12] = *(&__src[24] + 1);
    __dst[0] = *(&__src[12] + 8);
    __dst[1] = *(&__src[13] + 8);
    v138 = __src[10];
    v139 = __src[11];
    v140 = *&__src[12];
    v134 = __src[6];
    v135 = __src[7];
    v137 = __src[9];
    v136 = __src[8];
    v130 = __src[2];
    v131 = __src[3];
    v133 = __src[5];
    v132 = __src[4];
    v129 = __src[1];
    v128 = __src[0];
    sub_219F9336C(&v168, v107);
    sub_219F9336C(&v193, v107);
    v106 = sub_21A0D9624(&v128, __dst);
    sub_219F6409C(v109, &qword_27CCD95B8);
    v107[10] = __src[10];
    v107[11] = __src[11];
    v108 = *&__src[12];
    v107[6] = __src[6];
    v107[7] = __src[7];
    v107[8] = __src[8];
    v107[9] = __src[9];
    v107[2] = __src[2];
    v107[3] = __src[3];
    v107[4] = __src[4];
    v107[5] = __src[5];
    v107[0] = __src[0];
    v107[1] = __src[1];
    sub_219F6409C(v107, &qword_27CCD95B8);
    return (v106 & 1) != 0;
  }

  __dst[10] = *(&__src[22] + 8);
  __dst[11] = *(&__src[23] + 8);
  *&__dst[12] = *(&__src[24] + 1);
  __dst[6] = *(&__src[18] + 8);
  __dst[7] = *(&__src[19] + 8);
  __dst[8] = *(&__src[20] + 8);
  __dst[9] = *(&__src[21] + 8);
  __dst[2] = *(&__src[14] + 8);
  __dst[3] = *(&__src[15] + 8);
  __dst[4] = *(&__src[16] + 8);
  __dst[5] = *(&__src[17] + 8);
  __dst[0] = *(&__src[12] + 8);
  __dst[1] = *(&__src[13] + 8);
  if (sub_219F63C20(__dst) != 1)
  {
LABEL_11:
    memcpy(__dst, __src, sizeof(__dst));
    sub_219F9336C(&v168, &v128);
    v75 = &v193;
    v76 = &v128;
    goto LABEL_12;
  }

  v138 = __src[10];
  v139 = __src[11];
  v140 = *&__src[12];
  v134 = __src[6];
  v135 = __src[7];
  v137 = __src[9];
  v136 = __src[8];
  v130 = __src[2];
  v131 = __src[3];
  v133 = __src[5];
  v132 = __src[4];
  v129 = __src[1];
  v128 = __src[0];
  sub_219F9336C(&v168, v111);
  sub_219F9336C(&v193, v111);
  sub_219F6409C(&v128, &qword_27CCD95B8);
  return 1;
}

unint64_t sub_21A0D02BC()
{
  result = qword_27CCDE0F0;
  if (!qword_27CCDE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE0F0);
  }

  return result;
}

unint64_t sub_21A0D0314()
{
  result = qword_27CCDE100;
  if (!qword_27CCDE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE100);
  }

  return result;
}

uint64_t sub_21A0D0370(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 400))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 184);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21A0D03CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 400) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 400) = 0;
    }

    if (a2)
    {
      *(result + 184) = a2;
    }
  }

  return result;
}

unint64_t sub_21A0D04AC()
{
  result = qword_27CCDE108;
  if (!qword_27CCDE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE108);
  }

  return result;
}

unint64_t sub_21A0D0504()
{
  result = qword_27CCDE110;
  if (!qword_27CCDE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE110);
  }

  return result;
}

unint64_t sub_21A0D055C()
{
  result = qword_27CCDE118;
  if (!qword_27CCDE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE118);
  }

  return result;
}

uint64_t sub_21A0D05B0(uint64_t a1, int a2)
{
  v3 = v2;
  v68 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v68, v5);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21A0E481C();
  v7 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v8);
  v65 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v72, v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ActivityAsset();
  v76 = *(v17 - 8);
  v77 = v17;
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v79 = &v61 - v23;
  v24 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE140);
  v78 = a2;
  result = sub_21A0E69BC();
  v26 = result;
  if (*(v24 + 16))
  {
    v69 = v16;
    v62 = v2;
    v27 = 0;
    v28 = (v24 + 64);
    v29 = 1 << *(v24 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(v24 + 64);
    v32 = (v29 + 63) >> 6;
    v64 = (v7 + 32);
    v63 = (v7 + 8);
    v33 = result + 64;
    v73 = v24;
    v75 = v21;
    v34 = v79;
    v70 = v12;
    v71 = result;
    while (v31)
    {
      v36 = __clz(__rbit64(v31));
      v37 = (v31 - 1) & v31;
LABEL_15:
      v40 = v36 | (v27 << 6);
      v41 = *(v24 + 48);
      v81 = *(v76 + 72);
      v82 = v37;
      v42 = v41 + v81 * v40;
      if (v78)
      {
        sub_21A0D6188(v42, v34, type metadata accessor for ActivityAsset);
        v80 = *(*(v24 + 56) + 8 * v40);
      }

      else
      {
        sub_21A0D6120(v42, v34, type metadata accessor for ActivityAsset);
        v80 = *(*(v24 + 56) + 8 * v40);
        v43 = v80;
      }

      sub_21A0E6DAC();
      sub_21A0D6120(v34, v21, type metadata accessor for ActivityAsset);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v44 = v21;
        v45 = v69;
        sub_21A0D6188(v44, v69, type metadata accessor for URLAssetConfiguration);
        MEMORY[0x21CED2490](1);
        sub_21A0D6120(v45, v12, type metadata accessor for URLAssetConfiguration.Format);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v46 = v67;
          sub_21A0D6188(v12, v67, type metadata accessor for URLAssetConfiguration.Recipe);
          MEMORY[0x21CED2490](1);
          sub_219FAB2D0(v83);
          sub_219F7CB6C(v83, *(v46 + *(v68 + 20)));
          sub_21A0D5F58(v45, type metadata accessor for URLAssetConfiguration);
          sub_21A0D5F58(v46, type metadata accessor for URLAssetConfiguration.Recipe);
        }

        else
        {
          v50 = v65;
          v51 = v66;
          (*v64)(v65, v12, v66);
          MEMORY[0x21CED2490](0);
          sub_219F443FC(&qword_27CCD99F8, MEMORY[0x277CC9260]);
          sub_21A0E615C();
          v52 = v50;
          v24 = v73;
          (*v63)(v52, v51);
          sub_21A0D5F58(v45, type metadata accessor for URLAssetConfiguration);
        }
      }

      else
      {
        v47 = v21[16];
        v48 = v21[17];
        v49 = v21[18];
        MEMORY[0x21CED2490](0);
        v74 = v47;
        MEMORY[0x21CED2490](v47);
        sub_21A0E626C();
        sub_21A0E6DCC();
        if (v48 == 9)
        {
          v24 = v73;
          v26 = v71;
        }

        else
        {
          v26 = v71;
          sub_21A0E626C();

          v24 = v73;
        }

        sub_21A0E6DCC();
        if (v49 == 3)
        {
          sub_219F79CD8();
        }

        else
        {
          sub_21A0E626C();
          sub_219F79CD8();
        }

        v12 = v70;
      }

      v21 = v75;
      result = sub_21A0E6DFC();
      v53 = -1 << *(v26 + 32);
      v54 = result & ~v53;
      v55 = v54 >> 6;
      v34 = v79;
      if (((-1 << v54) & ~*(v33 + 8 * (v54 >> 6))) == 0)
      {
        v56 = 0;
        v57 = (63 - v53) >> 6;
        while (++v55 != v57 || (v56 & 1) == 0)
        {
          v58 = v55 == v57;
          if (v55 == v57)
          {
            v55 = 0;
          }

          v56 |= v58;
          v59 = *(v33 + 8 * v55);
          if (v59 != -1)
          {
            v35 = __clz(__rbit64(~v59)) + (v55 << 6);
            goto LABEL_7;
          }
        }

LABEL_47:
        __break(1u);
        return result;
      }

      v35 = __clz(__rbit64((-1 << v54) & ~*(v33 + 8 * (v54 >> 6)))) | v54 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v33 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      result = sub_21A0D6188(v34, *(v26 + 48) + v81 * v35, type metadata accessor for ActivityAsset);
      *(*(v26 + 56) + 8 * v35) = v80;
      ++*(v26 + 16);
      v31 = v82;
    }

    v38 = v27;
    while (1)
    {
      v27 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v27 >= v32)
      {
        break;
      }

      v39 = v28[v27];
      ++v38;
      if (v39)
      {
        v36 = __clz(__rbit64(v39));
        v37 = (v39 - 1) & v39;
        goto LABEL_15;
      }
    }

    if ((v78 & 1) == 0)
    {

      v3 = v62;
      goto LABEL_45;
    }

    v60 = 1 << *(v24 + 32);
    v3 = v62;
    if (v60 >= 64)
    {
      bzero(v28, ((v60 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v28 = -1 << v60;
    }

    *(v24 + 16) = 0;
  }

LABEL_45:
  *v3 = v26;
  return result;
}

uint64_t sub_21A0D0F00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE150);
  v44 = a2;
  result = sub_21A0E69BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 224 * v21);
      if (v44)
      {
        v68 = v25[10];
        v69 = v25[11];
        v70[0] = v25[12];
        *(v70 + 9) = *(v25 + 201);
        v64 = v25[6];
        v65 = v25[7];
        v66 = v25[8];
        v67 = v25[9];
        v60 = v25[2];
        v61 = v25[3];
        v62 = v25[4];
        v63 = v25[5];
        v58 = *v25;
        v59 = v25[1];
      }

      else
      {
        v26 = v25[1];
        v45 = *v25;
        v46 = v26;
        v27 = v25[5];
        v29 = v25[2];
        v28 = v25[3];
        v49 = v25[4];
        v50 = v27;
        v47 = v29;
        v48 = v28;
        v30 = v25[9];
        v32 = v25[6];
        v31 = v25[7];
        v53 = v25[8];
        v54 = v30;
        v51 = v32;
        v52 = v31;
        v34 = v25[11];
        v33 = v25[12];
        v35 = v25[10];
        *(v57 + 9) = *(v25 + 201);
        v56 = v34;
        v57[0] = v33;
        v55 = v35;

        sub_219F7DC04(&v45, &v58);
        v68 = v55;
        v69 = v56;
        v70[0] = v57[0];
        *(v70 + 9) = *(v57 + 9);
        v64 = v51;
        v65 = v52;
        v66 = v53;
        v67 = v54;
        v60 = v47;
        v61 = v48;
        v62 = v49;
        v63 = v50;
        v58 = v45;
        v59 = v46;
      }

      sub_21A0E6DAC();
      sub_21A0E626C();
      result = sub_21A0E6DFC();
      v36 = -1 << *(v7 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 224 * v15);
      v17[10] = v68;
      v17[11] = v69;
      v17[12] = v70[0];
      *(v17 + 201) = *(v70 + 9);
      v17[6] = v64;
      v17[7] = v65;
      v17[8] = v66;
      v17[9] = v67;
      v17[2] = v60;
      v17[3] = v61;
      v17[4] = v62;
      v17[5] = v63;
      *v17 = v58;
      v17[1] = v59;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v2;
    if (v43 >= 64)
    {
      bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21A0D1338(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE20);
  v38 = a2;
  result = sub_21A0E69BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_219F7DB44(v27, &v39);
      }

      sub_21A0E6DAC();
      sub_21A0E626C();
      result = sub_21A0E6DFC();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21A0D1608(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for NewsLiveActivityAttributes(0);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB4B8);
  v41 = a2;
  result = sub_21A0E69BC();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v40 + 72);
      v29 = v24 + v28 * v23;
      if (v41)
      {
        sub_21A0D6188(v29, v42, type metadata accessor for NewsLiveActivityAttributes);
      }

      else
      {
        sub_21A0D6120(v29, v42, type metadata accessor for NewsLiveActivityAttributes);
      }

      sub_21A0E6DAC();
      sub_21A0E626C();
      result = sub_21A0E6DFC();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      result = sub_21A0D6188(v42, *(v10 + 56) + v28 * v18, type metadata accessor for NewsLiveActivityAttributes);
      ++*(v10 + 16);
      v8 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_21A0D1980(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA890);
  v37 = a2;
  result = sub_21A0E69BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_21A0E6DAC();
      sub_21A0E626C();
      result = sub_21A0E6DFC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21A0D1C40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE10);
  v34 = a2;
  result = sub_21A0E69BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21A0E6DAC();
      sub_21A0E626C();
      result = sub_21A0E6DFC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21A0D1EE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE138);
  result = sub_21A0E69BC();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
      }

      else
      {
        sub_219F7DB44(v23, &v36);
      }

      v26 = *(*(v5 + 56) + 8 * v22);
      result = sub_21A0E67EC();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21A0D2184(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for NewsLiveActivity(0);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAFE0);
  v41 = a2;
  result = sub_21A0E69BC();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v40 + 72);
      v29 = v24 + v28 * v23;
      if (v41)
      {
        sub_21A0D6188(v29, v42, type metadata accessor for NewsLiveActivity);
      }

      else
      {
        sub_21A0D6120(v29, v42, type metadata accessor for NewsLiveActivity);
      }

      sub_21A0E6DAC();
      sub_21A0E626C();
      result = sub_21A0E6DFC();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      result = sub_21A0D6188(v42, *(v10 + 56) + v28 * v18, type metadata accessor for NewsLiveActivity);
      ++*(v10 + 16);
      v8 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_21A0D24FC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for NewsLiveActivityContent(0);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB4A0);
  v41 = a2;
  result = sub_21A0E69BC();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v40 + 72);
      v29 = v24 + v28 * v23;
      if (v41)
      {
        sub_21A0D6188(v29, v42, type metadata accessor for NewsLiveActivityContent);
      }

      else
      {
        sub_21A0D6120(v29, v42, type metadata accessor for NewsLiveActivityContent);
      }

      sub_21A0E6DAC();
      sub_21A0E626C();
      result = sub_21A0E6DFC();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      result = sub_21A0D6188(v42, *(v10 + 56) + v28 * v18, type metadata accessor for NewsLiveActivityContent);
      ++*(v10 + 16);
      v8 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_21A0D289C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_21A0E69BC();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_21A0E6DAC();
      sub_21A0E626C();
      result = sub_21A0E6DFC();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_21A0D2B3C(uint64_t a1, int a2)
{
  v3 = v2;
  v75 = sub_21A0E495C();
  v5 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v6);
  v69 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v74 = &v61 - v10;
  v11 = type metadata accessor for LiveBlogStaticAttributes();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v66 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for PrimaryElectionStaticAttributes();
  MEMORY[0x28223BE20](v65, v14);
  v64 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NationalElectionStaticAttributes();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v63 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for NewsLiveActivityAttributes.ActivityType(0);
  MEMORY[0x28223BE20](v73, v19);
  v80 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for NewsLiveActivityAttributes(0);
  v72 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v21);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCDF8);
  v76 = a2;
  result = sub_21A0E69BC();
  v26 = result;
  if (*(v24 + 16))
  {
    v62 = v2;
    v27 = 0;
    v28 = (v24 + 64);
    v29 = 1 << *(v24 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(v24 + 64);
    v32 = (v29 + 63) >> 6;
    v71 = (v5 + 48);
    v68 = (v5 + 32);
    v67 = (v5 + 8);
    v33 = result + 64;
    v34 = v24;
    v70 = v24;
    while (v31)
    {
      v36 = __clz(__rbit64(v31));
      v37 = (v31 - 1) & v31;
LABEL_15:
      v40 = v36 | (v27 << 6);
      v41 = *(v34 + 48);
      v77 = *(v72 + 72);
      v78 = v37;
      v42 = v41 + v77 * v40;
      if (v76)
      {
        sub_21A0D6188(v42, v23, type metadata accessor for NewsLiveActivityAttributes);
        v43 = *(*(v34 + 56) + 8 * v40);
      }

      else
      {
        sub_21A0D6120(v42, v23, type metadata accessor for NewsLiveActivityAttributes);
        v43 = *(*(v34 + 56) + 8 * v40);
      }

      sub_21A0E6DAC();
      sub_21A0E626C();
      sub_21A0E626C();
      v44 = v79;
      sub_21A0E481C();
      sub_219F443FC(&qword_27CCD99F8, MEMORY[0x277CC9260]);
      sub_21A0E615C();
      sub_21A0D6120(&v23[*(v44 + 28)], v80, type metadata accessor for NewsLiveActivityAttributes.ActivityType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v46 = v75;
        if (EnumCaseMultiPayload == 1)
        {
          v47 = v64;
          sub_21A0D6188(v80, v64, type metadata accessor for PrimaryElectionStaticAttributes);
          MEMORY[0x21CED2490](1);
          PrimaryElectionTheme.hash(into:)(v81);
          MEMORY[0x21CED2490](*(v47 + *(v65 + 20)));
          v48 = type metadata accessor for PrimaryElectionStaticAttributes;
        }

        else
        {
          v47 = v66;
          sub_21A0D6188(v80, v66, type metadata accessor for LiveBlogStaticAttributes);
          MEMORY[0x21CED2490](2);
          LiveBlogStaticAttributes.hash(into:)(v81, v50);
          v48 = type metadata accessor for LiveBlogStaticAttributes;
        }

        sub_21A0D5F58(v47, v48);
      }

      else
      {
        v49 = v63;
        sub_21A0D6188(v80, v63, type metadata accessor for NationalElectionStaticAttributes);
        MEMORY[0x21CED2490](0);
        NationalElectionTheme.hash(into:)(v81);
        sub_21A0D5F58(v49, type metadata accessor for NationalElectionStaticAttributes);
        v46 = v75;
      }

      v51 = v74;
      sub_219F45500(&v23[*(v79 + 32)], v74, &qword_27CCD97F0);
      if ((*v71)(v51, 1, v46) == 1)
      {
        sub_21A0E6DCC();
      }

      else
      {
        v52 = v69;
        (*v68)(v69, v51, v46);
        sub_21A0E6DCC();
        sub_219F443FC(&qword_27CCD9828, MEMORY[0x277CC9578]);
        sub_21A0E615C();
        (*v67)(v52, v46);
      }

      v34 = v70;
      result = sub_21A0E6DFC();
      v53 = -1 << *(v26 + 32);
      v54 = result & ~v53;
      v55 = v54 >> 6;
      if (((-1 << v54) & ~*(v33 + 8 * (v54 >> 6))) == 0)
      {
        v56 = 0;
        v57 = (63 - v53) >> 6;
        while (++v55 != v57 || (v56 & 1) == 0)
        {
          v58 = v55 == v57;
          if (v55 == v57)
          {
            v55 = 0;
          }

          v56 |= v58;
          v59 = *(v33 + 8 * v55);
          if (v59 != -1)
          {
            v35 = __clz(__rbit64(~v59)) + (v55 << 6);
            goto LABEL_7;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v35 = __clz(__rbit64((-1 << v54) & ~*(v33 + 8 * (v54 >> 6)))) | v54 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v33 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      result = sub_21A0D6188(v23, *(v26 + 48) + v77 * v35, type metadata accessor for NewsLiveActivityAttributes);
      *(*(v26 + 56) + 8 * v35) = v43;
      ++*(v26 + 16);
      v31 = v78;
    }

    v38 = v27;
    while (1)
    {
      v27 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v27 >= v32)
      {
        break;
      }

      v39 = v28[v27];
      ++v38;
      if (v39)
      {
        v36 = __clz(__rbit64(v39));
        v37 = (v39 - 1) & v39;
        goto LABEL_15;
      }
    }

    if ((v76 & 1) == 0)
    {

      v3 = v62;
      goto LABEL_44;
    }

    v60 = 1 << *(v34 + 32);
    v3 = v62;
    if (v60 >= 64)
    {
      bzero(v28, ((v60 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v28 = -1 << v60;
    }

    *(v34 + 16) = 0;
  }

LABEL_44:
  *v3 = v26;
  return result;
}

uint64_t sub_21A0D33E0(uint64_t a1, int a2)
{
  v3 = v2;
  v75 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v75, v5);
  v74 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_21A0E481C();
  v7 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v8);
  v72 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for URLAssetConfiguration.Format(0);
  MEMORY[0x28223BE20](v79, v10);
  v78 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ActivityAsset();
  v85 = *(v16 - 8);
  v86 = v16;
  v18 = MEMORY[0x28223BE20](v16, v17);
  v84 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v69 - v21;
  v23 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC990);
  v24 = a2;
  result = sub_21A0E69BC();
  v26 = result;
  if (*(v23 + 16))
  {
    v76 = v15;
    v69 = v3;
    v27 = 0;
    v28 = (v23 + 64);
    v29 = 1 << *(v23 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(v23 + 64);
    v32 = (v29 + 63) >> 6;
    v71 = (v7 + 32);
    v70 = (v7 + 8);
    v33 = result + 64;
    v34 = v23;
    v82 = v23;
    v35 = result;
    v77 = v24;
    v83 = v22;
    while (v31)
    {
      v38 = __clz(__rbit64(v31));
      v90 = (v31 - 1) & v31;
LABEL_15:
      v41 = v38 | (v27 << 6);
      v42 = *(v34 + 48);
      v89 = *(v85 + 72);
      v43 = v42 + v89 * v41;
      v44 = 16 * v41;
      if (v24)
      {
        sub_21A0D6188(v43, v22, type metadata accessor for ActivityAsset);
        v45 = *(v34 + 56) + v44;
        v88 = *v45;
        v87 = *(v45 + 8);
      }

      else
      {
        sub_21A0D6120(v43, v22, type metadata accessor for ActivityAsset);
        v46 = *(v34 + 56) + v44;
        v47 = *(v46 + 8);
        v88 = *v46;
        v87 = v47;
        sub_21A062D08(v88, v47);
      }

      sub_21A0E6DAC();
      v48 = v84;
      sub_21A0D6120(v22, v84, type metadata accessor for ActivityAsset);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v49 = v35;
        v50 = v76;
        sub_21A0D6188(v48, v76, type metadata accessor for URLAssetConfiguration);
        MEMORY[0x21CED2490](1);
        v51 = v78;
        sub_21A0D6120(v50, v78, type metadata accessor for URLAssetConfiguration.Format);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v52 = v74;
          sub_21A0D6188(v51, v74, type metadata accessor for URLAssetConfiguration.Recipe);
          MEMORY[0x21CED2490](1);
          sub_219FAB2D0(v91);
          sub_219F7CB6C(v91, *(v52 + *(v75 + 20)));
          sub_21A0D5F58(v50, type metadata accessor for URLAssetConfiguration);
          v53 = type metadata accessor for URLAssetConfiguration.Recipe;
          v54 = v52;
        }

        else
        {
          v58 = v72;
          v59 = v73;
          (*v71)(v72, v51, v73);
          MEMORY[0x21CED2490](0);
          sub_219F443FC(&qword_27CCD99F8, MEMORY[0x277CC9260]);
          sub_21A0E615C();
          v60 = v58;
          v34 = v82;
          (*v70)(v60, v59);
          v53 = type metadata accessor for URLAssetConfiguration;
          v54 = v50;
        }

        sub_21A0D5F58(v54, v53);
        v35 = v49;
      }

      else
      {
        v55 = v48[16];
        v56 = v48[17];
        v80 = v48[18];
        MEMORY[0x21CED2490](0);
        v81 = v55;
        MEMORY[0x21CED2490](v55);
        sub_21A0E626C();
        sub_21A0E6DCC();
        v57 = v80;
        if (v56 != 9)
        {
          sub_21A0E626C();
        }

        sub_21A0E6DCC();
        if (v57 == 3)
        {
          sub_219F79CD8();
        }

        else
        {
          sub_21A0E626C();
          sub_219F79CD8();
        }

        LOBYTE(v24) = v77;
        v34 = v82;
      }

      v22 = v83;
      result = sub_21A0E6DFC();
      v61 = -1 << *(v35 + 32);
      v62 = result & ~v61;
      v63 = v62 >> 6;
      if (((-1 << v62) & ~*(v33 + 8 * (v62 >> 6))) == 0)
      {
        v64 = 0;
        v65 = (63 - v61) >> 6;
        while (++v63 != v65 || (v64 & 1) == 0)
        {
          v66 = v63 == v65;
          if (v63 == v65)
          {
            v63 = 0;
          }

          v64 |= v66;
          v67 = *(v33 + 8 * v63);
          if (v67 != -1)
          {
            v36 = __clz(__rbit64(~v67)) + (v63 << 6);
            goto LABEL_7;
          }
        }

LABEL_48:
        __break(1u);
        return result;
      }

      v36 = __clz(__rbit64((-1 << v62) & ~*(v33 + 8 * (v62 >> 6)))) | v62 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v33 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      result = sub_21A0D6188(v22, *(v35 + 48) + v89 * v36, type metadata accessor for ActivityAsset);
      v37 = *(v35 + 56) + 16 * v36;
      *v37 = v88;
      *(v37 + 8) = v87;
      ++*(v35 + 16);
      v31 = v90;
    }

    v39 = v27;
    while (1)
    {
      v27 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v27 >= v32)
      {
        break;
      }

      v40 = v28[v27];
      ++v39;
      if (v40)
      {
        v38 = __clz(__rbit64(v40));
        v90 = (v40 - 1) & v40;
        goto LABEL_15;
      }
    }

    if (v24)
    {
      v68 = 1 << *(v34 + 32);
      v3 = v69;
      if (v68 >= 64)
      {
        bzero(v28, ((v68 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v28 = -1 << v68;
      }

      *(v82 + 16) = 0;
    }

    else
    {

      v3 = v69;
    }
  }

  else
  {

    v35 = v26;
  }

  *v3 = v35;
  return result;
}

uint64_t sub_21A0D3D84(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ActivityAsset();
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v46 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RemoteAssetKey();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC9A8);
  v44 = a2;
  result = sub_21A0E69BC();
  v14 = result;
  if (*(v12 + 16))
  {
    v39 = v2;
    v40 = v12;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v45 = *(v41 + 72);
      v28 = v27 + v45 * v26;
      if (v44)
      {
        sub_21A0D6188(v28, v11, type metadata accessor for RemoteAssetKey);
        v29 = *(v43 + 72);
        sub_21A0D6188(*(v12 + 56) + v29 * v26, v46, type metadata accessor for ActivityAsset);
      }

      else
      {
        sub_21A0D6120(v28, v11, type metadata accessor for RemoteAssetKey);
        v29 = *(v43 + 72);
        sub_21A0D6120(*(v12 + 56) + v29 * v26, v46, type metadata accessor for ActivityAsset);
      }

      sub_21A0E6DAC();
      sub_21A0E626C();
      sub_21A0E481C();
      sub_219F443FC(&qword_27CCD99F8, MEMORY[0x277CC9260]);
      sub_21A0E615C();
      result = sub_21A0E6DFC();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v12 = v40;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v12 = v40;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_21A0D6188(v11, *(v14 + 48) + v45 * v22, type metadata accessor for RemoteAssetKey);
      result = sub_21A0D6188(v46, *(v14 + 56) + v29 * v22, type metadata accessor for ActivityAsset);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v12 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
  return result;
}

uint64_t sub_21A0D4234(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ActivityAccessToken();
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A0E481C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v48 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD4A8);
  v45 = a2;
  result = sub_21A0E69BC();
  v14 = result;
  if (*(v12 + 16))
  {
    v40 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v9 + 16);
    v42 = v9;
    v46 = (v9 + 32);
    v21 = result + 64;
    v43 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v12 + 48);
      v47 = *(v9 + 72);
      v28 = v27 + v47 * v26;
      if (v45)
      {
        (*v46)(v48, v28, v8);
        v29 = *(v12 + 56);
        v30 = *(v44 + 72);
        sub_21A0D6188(v29 + v30 * v26, v49, type metadata accessor for ActivityAccessToken);
      }

      else
      {
        (*v41)(v48, v28, v8);
        v31 = *(v12 + 56);
        v30 = *(v44 + 72);
        sub_21A0D6120(v31 + v30 * v26, v49, type metadata accessor for ActivityAccessToken);
      }

      sub_219F443FC(&qword_27CCD99F8, MEMORY[0x277CC9260]);
      result = sub_21A0E614C();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v46)((*(v14 + 48) + v47 * v22), v48, v8);
      result = sub_21A0D6188(v49, *(v14 + 56) + v30 * v22, type metadata accessor for ActivityAccessToken);
      ++*(v14 + 16);
      v9 = v42;
      v12 = v43;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v12 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
  return result;
}

void *sub_21A0D46D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE150);
  v2 = *v0;
  v3 = sub_21A0E69AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_219F7DC04(&v45, &v44))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = *(v2 + 56);
      v19 = (*(v2 + 48) + 16 * v16);
      v21 = *v19;
      v20 = v19[1];
      v16 *= 224;
      v22 = *(v18 + v16 + 32);
      v23 = *(v18 + v16 + 48);
      v24 = *(v18 + v16 + 80);
      v49 = *(v18 + v16 + 64);
      v50 = v24;
      v48 = v23;
      v25 = *(v18 + v16 + 144);
      v27 = *(v18 + v16 + 96);
      v26 = *(v18 + v16 + 112);
      v53 = *(v18 + v16 + 128);
      v54 = v25;
      v51 = v27;
      v52 = v26;
      v29 = *(v18 + v16 + 176);
      v28 = *(v18 + v16 + 192);
      v30 = *(v18 + v16 + 160);
      *(v57 + 9) = *(v18 + v16 + 201);
      v56 = v29;
      v57[0] = v28;
      v55 = v30;
      v31 = *(v18 + v16 + 16);
      v45 = *(v18 + v16);
      v46 = v31;
      v47 = v22;
      v32 = (*(v4 + 48) + v17);
      *v32 = v21;
      v32[1] = v20;
      v33 = (*(v4 + 56) + v16);
      v34 = v46;
      *v33 = v45;
      v33[1] = v34;
      v35 = v47;
      v36 = v48;
      v37 = v50;
      v33[4] = v49;
      v33[5] = v37;
      v33[2] = v35;
      v33[3] = v36;
      v38 = v51;
      v39 = v52;
      v40 = v54;
      v33[8] = v53;
      v33[9] = v40;
      v33[6] = v38;
      v33[7] = v39;
      v41 = v55;
      v42 = v56;
      v43 = v57[0];
      *(v33 + 201) = *(v57 + 9);
      v33[11] = v42;
      v33[12] = v43;
      v33[10] = v41;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21A0D48E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE20);
  v2 = *v0;
  v3 = sub_21A0E69AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_219F7DB44(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_21A0D4A9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE128);
  v2 = *v0;
  v3 = sub_21A0E69AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_219F3FDF4(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_219F3EBE0(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_21A0D4C44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA890);
  v2 = *v0;
  v3 = sub_21A0E69AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21A0D4DBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE10);
  v2 = *v0;
  v3 = sub_21A0E69AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21A0D4F2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE138);
  v2 = *v0;
  v3 = sub_21A0E69AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        result = sub_219F7DB44(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21A0D50BC()
{
  v1 = v0;
  v2 = type metadata accessor for NewsLiveActivity(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAFE0);
  v5 = *v0;
  v6 = sub_21A0E69AC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_21A0D6120(*(v5 + 56) + v27, v31, type metadata accessor for NewsLiveActivity);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_21A0D6188(v26, *(v28 + 56) + v27, type metadata accessor for NewsLiveActivity);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_21A0D5314()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCDC8);
  v2 = *v0;
  v3 = sub_21A0E69AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21A0D5484()
{
  v1 = v0;
  v2 = type metadata accessor for NewsLiveActivityAttributes(0);
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCDF8);
  v6 = *v0;
  v7 = sub_21A0E69AC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_21A0D6120(*(v6 + 48) + v22, v5, type metadata accessor for NewsLiveActivityAttributes);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_21A0D6188(v5, *(v8 + 48) + v22, type metadata accessor for NewsLiveActivityAttributes);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_21A0D56C4()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityAsset();
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC990);
  v5 = *v0;
  v6 = sub_21A0E69AC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v33;
        v22 = *(v34 + 72) * v20;
        sub_21A0D6120(*(v5 + 48) + v22, v33, type metadata accessor for ActivityAsset);
        v23 = *(v5 + 56);
        v24 = v5;
        v25 = 16 * v20;
        v26 = v23 + 16 * v20;
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = v35;
        sub_21A0D6188(v21, *(v35 + 48) + v22, type metadata accessor for ActivityAsset);
        v30 = *(v29 + 56) + v25;
        v5 = v24;
        *v30 = v27;
        *(v30 + 8) = v28;
        result = sub_21A062D08(v27, v28);
        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_21A0D5940()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityAsset();
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RemoteAssetKey();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC9A8);
  v10 = *v0;
  v11 = sub_21A0E69AC();
  v12 = v11;
  if (*(v10 + 16))
  {
    v29 = v1;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v14 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = *(v10 + 64);
    v19 = -1;
    if (v17 < 64)
    {
      v19 = ~(-1 << v17);
    }

    v20 = v19 & v18;
    v21 = (v17 + 63) >> 6;
    if ((v19 & v18) != 0)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_14:
        v25 = v22 | (v16 << 6);
        v26 = *(v30 + 72) * v25;
        sub_21A0D6120(*(v10 + 48) + v26, v9, type metadata accessor for RemoteAssetKey);
        v27 = *(v31 + 72) * v25;
        sub_21A0D6120(*(v10 + 56) + v27, v5, type metadata accessor for ActivityAsset);
        sub_21A0D6188(v9, *(v12 + 48) + v26, type metadata accessor for RemoteAssetKey);
        result = sub_21A0D6188(v5, *(v12 + 56) + v27, type metadata accessor for ActivityAsset);
      }

      while (v20);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v24 = *(v14 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v12;
  }

  return result;
}

char *sub_21A0D5C2C()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityAccessToken();
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_21A0E481C();
  v39 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v5);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD4A8);
  v7 = *v0;
  v8 = sub_21A0E69AC();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_21A0D6120(*(v7 + 56) + v28, v37, type metadata accessor for ActivityAccessToken);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_21A0D6188(v27, *(v29 + 56) + v28, type metadata accessor for ActivityAccessToken);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_21A0D5F58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21A0D5FCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21A0D6014(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21A0D6074(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21A0D60D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21A0D6120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A0D6188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A0D61F0@<X0>(uint64_t a1@<X0>, int64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE170);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v73 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v74 = &v70 - v10;
  v75 = type metadata accessor for BalanceOfPowerData(0);
  v77 = *(v75 - 8);
  v12 = MEMORY[0x28223BE20](v75, v11);
  v71 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v72 = &v70 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE178);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v70 - v18;
  v20 = type metadata accessor for PresidentialElectionData(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v76 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for NationalElectionViewData();
  v79 = *(v24 - 8);
  v80 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v70 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 8);
  v29 = *(a1 + 16);
  v28 = *(a1 + 24);
  v87 = *a1;
  v88 = v27;
  v89 = v29;
  v90 = v28;
  v78 = a2;
  v30 = *a2;
  v31 = *(a1 + 104);
  v32 = *(a1 + 112);
  v33 = *(a1 + 120);
  v34 = *(a1 + 128);
  LOWORD(v28) = *(a1 + 129);
  *&v82 = *(a1 + 96);
  *(&v82 + 1) = v31;
  v83 = v32;
  v84 = v33;
  v85 = v34;
  v86 = v28;

  sub_219F79C1C();
  sub_21A0D72F4(&v87, v30, &v82, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_21A0D8AB8(v78, type metadata accessor for NationalElectionContentState);
    sub_21A0D8AB8(a1, type metadata accessor for NationalElectionTheme);
    v35 = &qword_27CCDE178;
    v36 = v19;
  }

  else
  {
    sub_21A0D8B18(v19, v76, type metadata accessor for PresidentialElectionData);
    v37 = *(a1 + 40);
    v39 = *(a1 + 48);
    v38 = *(a1 + 56);
    v87 = *(a1 + 32);
    v88 = v37;
    v89 = v39;
    v90 = v38;
    v40 = type metadata accessor for NationalElectionData(0);
    v41 = v78;
    v42 = *(v78 + *(v40 + 20));
    v43 = *(a1 + 104);
    v44 = *(a1 + 112);
    v45 = *(a1 + 120);
    v46 = *(a1 + 128);
    v47 = *(a1 + 129);
    *&v82 = *(a1 + 96);
    *(&v82 + 1) = v43;
    v83 = v44;
    v84 = v45;
    v85 = v46;
    v86 = v47;

    sub_219F79C1C();
    v48 = v74;
    sub_21A0D7DD4(&v87, v42, &v82, v74);
    v49 = v77 + 48;
    v50 = *(v77 + 48);
    if (v50(v48, 1, v75) == 1)
    {
      sub_21A0D8AB8(v41, type metadata accessor for NationalElectionContentState);
      sub_21A0D8AB8(a1, type metadata accessor for NationalElectionTheme);
      sub_21A0D8AB8(v76, type metadata accessor for PresidentialElectionData);
      v35 = &qword_27CCDE170;
      v36 = v48;
    }

    else
    {
      v51 = v72;
      sub_21A0D8B18(v48, v72, type metadata accessor for BalanceOfPowerData);
      v52 = *(a1 + 64);
      v53 = *(a1 + 72);
      v77 = v49;
      v55 = *(a1 + 80);
      v54 = *(a1 + 88);
      v87 = v52;
      v88 = v53;
      v89 = v55;
      v90 = v54;
      v56 = *(v41 + *(v40 + 24));
      v57 = *(a1 + 104);
      v58 = *(a1 + 112);
      v59 = *(a1 + 120);
      v60 = *(a1 + 128);
      LOWORD(v54) = *(a1 + 129);
      *&v82 = *(a1 + 96);
      *(&v82 + 1) = v57;
      v83 = v58;
      v84 = v59;
      v85 = v60;
      v86 = v54;

      sub_219F79C1C();
      v61 = v73;
      sub_21A0D7DD4(&v87, v56, &v82, v73);
      sub_21A0D8AB8(v41, type metadata accessor for NationalElectionContentState);
      sub_21A0D8AB8(a1, type metadata accessor for NationalElectionTheme);
      if (v50(v61, 1, v75) != 1)
      {
        v66 = v71;
        sub_21A0D8B18(v61, v71, type metadata accessor for BalanceOfPowerData);
        v67 = v70;
        sub_21A0D8B18(v76, v70, type metadata accessor for PresidentialElectionData);
        v68 = v80;
        sub_21A0D8B18(v51, v67 + *(v80 + 20), type metadata accessor for BalanceOfPowerData);
        sub_21A0D8B18(v66, v67 + *(v68 + 24), type metadata accessor for BalanceOfPowerData);
        v69 = v81;
        sub_21A0D8B18(v67, v81, type metadata accessor for NationalElectionViewData);
        v64 = v68;
        v63 = v69;
        v62 = 0;
        return (*(v79 + 56))(v63, v62, 1, v64);
      }

      sub_21A0D8AB8(v51, type metadata accessor for BalanceOfPowerData);
      sub_21A0D8AB8(v76, type metadata accessor for PresidentialElectionData);
      v35 = &qword_27CCDE170;
      v36 = v61;
    }
  }

  sub_219F6409C(v36, v35);
  v62 = 1;
  v64 = v80;
  v63 = v81;
  return (*(v79 + 56))(v63, v62, 1, v64);
}

uint64_t sub_21A0D68E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v95 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v93 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v92 = &v80 - v11;
  v94 = type metadata accessor for ElectionEntityTheme();
  v12 = *(v94 - 8);
  v14 = MEMORY[0x28223BE20](v94, v13);
  v16 = (&v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v80 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v96 = &v80 - v22;
  v23 = type metadata accessor for NationalElectionUpdate(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = (&v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = a2 + *(type metadata accessor for NationalElectionContentState(0) + 20);
  v29 = *(v28 + 64);
  if (v29 == 255)
  {
    sub_21A0D8AB8(a2, type metadata accessor for NationalElectionContentState);
    sub_21A0D8AB8(a1, type metadata accessor for NationalElectionTheme);
    v50 = 1;
  }

  else
  {
    v31 = *v28;
    v30 = *(v28 + 8);
    v33 = *(v28 + 16);
    v32 = *(v28 + 24);
    if (v29)
    {
      v87 = a2;
      v89 = v24;
      v90 = v23;
      v91 = a3;
      v35 = *(v28 + 32);
      v34 = *(v28 + 40);
      v37 = *(v28 + 48);
      v36 = *(v28 + 56);
      v88 = a1;
      v38 = *a1;
      v39 = *(*a1 + 16);
      v82 = v31;
      v104[0] = v31;
      v104[1] = v30;
      v86 = v30;
      v83 = v33;
      v104[2] = v33;
      v104[3] = v32;
      v85 = v32;
      v81 = v35;
      v104[4] = v35;
      v104[5] = v34;
      v84 = v34;
      v104[6] = v37;
      v104[7] = v36;
      v105 = v29;
      sub_219FC2664(v104, &v98);
      if (v39)
      {
        v40 = 0;
        while (1)
        {
          if (v40 >= *(v38 + 16))
          {
            __break(1u);
            goto LABEL_31;
          }

          sub_21A03F2F0(v38 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v40, v16, type metadata accessor for ElectionEntityTheme);
          v41 = *v16 == v37 && v16[1] == v36;
          if (v41 || (sub_21A0E6C5C() & 1) != 0)
          {
            break;
          }

          ++v40;
          sub_21A0D8AB8(v16, type metadata accessor for ElectionEntityTheme);
          if (v39 == v40)
          {
            goto LABEL_12;
          }
        }

        sub_21A0D8B18(v16, v20, type metadata accessor for ElectionEntityTheme);
        v55 = v96;
        sub_21A0D8B18(v20, v96, type metadata accessor for ElectionEntityTheme);
        v56 = v94;
        v57 = v95;
        sub_21A016BFC(v55 + *(v94 + 28), v95);
        if ((*(v93 + 48))(v57, 1, v9) != 1)
        {
          sub_21A0D8AB8(v87, type metadata accessor for NationalElectionContentState);

          sub_21A0D8AB8(v88, type metadata accessor for NationalElectionTheme);
          v65 = v57;
          v66 = v92;
          sub_219F73094(v65, v92);
          v67 = type metadata accessor for NationalElectionUpdate.Hero(0);
          sub_219F73094(v66, v27 + *(v67 + 28));
          v68 = v55 + *(v56 + 32);
          v69 = *(v68 + 32);
          v70 = *(v68 + 64);
          v101 = *(v68 + 48);
          v102 = v70;
          v103 = *(v68 + 80);
          v71 = *(v68 + 16);
          v98 = *v68;
          v99 = v71;
          v100 = v69;
          sub_219FB63A4(&v98, v97);
          sub_21A0D8AB8(v55, type metadata accessor for ElectionEntityTheme);
          v72 = v86;
          *v27 = v82;
          v27[1] = v72;
          v73 = v85;
          v27[2] = v83;
          v27[3] = v73;
          v74 = v84;
          v27[4] = v81;
          v27[5] = v74;
          v75 = v27 + *(v67 + 32);
          v76 = v101;
          v77 = v102;
          *(v75 + 2) = v100;
          *(v75 + 3) = v76;
          *(v75 + 4) = v77;
          *(v75 + 10) = v103;
          v78 = v99;
          *v75 = v98;
          *(v75 + 1) = v78;
          v23 = v90;
          swift_storeEnumTagMultiPayload();
          a3 = v91;
          v24 = v89;
          goto LABEL_17;
        }

        sub_219F6409C(v57, &qword_27CCD98D8);
        v58 = v88;
        if (qword_27CCD90D0 != -1)
        {
          swift_once();
        }

        v59 = sub_21A0E516C();
        __swift_project_value_buffer(v59, qword_27CCD97D8);

        v60 = sub_21A0E514C();
        v61 = sub_21A0E669C();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *&v98 = v63;
          *v62 = 136446210;
          v64 = sub_219F50144(v37, v36, &v98);

          *(v62 + 4) = v64;
          _os_log_impl(&dword_219F39000, v60, v61, "Could not find thumbnail definition for candidate with identifier %{public}s for hero update", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v63);
          MEMORY[0x21CED2D30](v63, -1, -1);
          MEMORY[0x21CED2D30](v62, -1, -1);
        }

        else
        {
        }

        sub_21A0D8AB8(v87, type metadata accessor for NationalElectionContentState);
        sub_21A0D8AB8(v55, type metadata accessor for ElectionEntityTheme);
        sub_21A0D8AB8(v58, type metadata accessor for NationalElectionTheme);
        v23 = v90;
        v50 = 1;
        a3 = v91;
      }

      else
      {
LABEL_12:

        if (qword_27CCD90D0 != -1)
        {
LABEL_31:
          swift_once();
        }

        v42 = sub_21A0E516C();
        __swift_project_value_buffer(v42, qword_27CCD97D8);

        v43 = sub_21A0E514C();
        v44 = sub_21A0E669C();

        v45 = os_log_type_enabled(v43, v44);
        v46 = v88;
        if (v45)
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *&v98 = v48;
          *v47 = 136446210;
          v49 = sub_219F50144(v37, v36, &v98);

          *(v47 + 4) = v49;
          _os_log_impl(&dword_219F39000, v43, v44, "Could not find candidate with identifier %{public}s for hero update", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v48);
          MEMORY[0x21CED2D30](v48, -1, -1);
          MEMORY[0x21CED2D30](v47, -1, -1);
        }

        else
        {
        }

        sub_21A0D8AB8(v87, type metadata accessor for NationalElectionContentState);
        sub_21A0D8AB8(v46, type metadata accessor for NationalElectionTheme);
        v50 = 1;
        a3 = v91;
        v23 = v90;
      }

      v24 = v89;
    }

    else
    {
      v51 = *(v28 + 8);
      v52 = *(v28 + 24);
      v53 = *(v28 + 16);
      v54 = *v28;

      sub_21A0D8AB8(a2, type metadata accessor for NationalElectionContentState);
      sub_21A0D8AB8(a1, type metadata accessor for NationalElectionTheme);
      *v27 = v54;
      v27[1] = v51;
      v27[2] = v53;
      v27[3] = v52;
      swift_storeEnumTagMultiPayload();
LABEL_17:
      sub_21A0D8B18(v27, a3, type metadata accessor for NationalElectionUpdate);
      v50 = 0;
    }
  }

  return (*(v24 + 56))(a3, v50, 1, v23);
}

uint64_t sub_21A0D72F4@<X0>(uint64_t *a1@<X0>, int64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE180);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v71 - v9;
  v11 = type metadata accessor for PresidentialElectionData.Entity(0);
  v80 = *(v11 - 8);
  v81 = v11;
  v13 = MEMORY[0x28223BE20](v11, v12);
  v77 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v71 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE188);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v71 - v21;
  v76 = type metadata accessor for PresidentialElectionData(0);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v23);
  v26 = *a1;
  v25 = a1[1];
  v27 = a1[2];
  v82 = a1[3];
  v83 = v25;
  v28 = a3[1];
  v88 = *a3;
  v89[0] = v28;
  *(v89 + 15) = *(a3 + 31);
  if (*(a2 + 16) >= 2uLL)
  {
    v79 = v27;
    v72 = (&v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    v84[0] = a2;
    swift_getKeyPath();
    sub_21A0E462C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAC40);
    sub_219F3E490(&qword_27CCDE190, &qword_27CCDAC40);
    sub_219F3E490(&qword_27CCDE198, &qword_27CCDE188);
    v39 = sub_21A0E62FC();
    v40 = v22;
    v41 = v39;
    (*(v19 + 8))(v40, v18);

    v42 = *(v41 + 16);
    if (v42 >= 2)
    {
      a2 = 2;
    }

    else
    {
      a2 = *(v41 + 16);
    }

    v43 = MEMORY[0x277D84F90];
    v78 = v26;
    v73 = v41;
    if (!v42)
    {
      goto LABEL_15;
    }

    v84[0] = MEMORY[0x277D84F90];
    sub_219FBE644(0, a2, 0);
    v43 = v84[0];
    v44 = *(v41 + 56);
    v46 = *(v84[0] + 16);
    v45 = *(v84[0] + 24);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      sub_219FBE644((v45 > 1), v46 + 1, 1);
      v43 = v84[0];
    }

    *(v43 + 16) = v47;
    *(v43 + v46 + 32) = v44;
    if (v42 == 1)
    {
      goto LABEL_14;
    }

    LOBYTE(v48) = *(v41 + 88);
    v84[0] = v43;
    v49 = *(v43 + 24);
    v50 = (v46 + 2);
    if (v47 >= v49 >> 1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      *(v43 + 16) = v50;
      *(v43 + v47 + 32) = v48;
      v41 = v73;
LABEL_14:
      v26 = v78;
LABEL_15:
      v51 = sub_21A030A38(v43);

      swift_bridgeObjectRetain_n();

      if (v42)
      {
        v52 = v41;
        v53 = 0;
        v29 = (v80 + 48);
        v54 = (v52 + 56);
        v55 = MEMORY[0x277D84F90];
        do
        {
          v56 = *(v51 + 16);
          if (v53 == v56)
          {
            break;
          }

          if (v53 >= v56)
          {
            __break(1u);
            goto LABEL_37;
          }

          v57 = *(v54 - 2);
          v58 = *(v54 - 1);
          v59 = *v54;
          v60 = *(v51 + v53 + 32);
          v84[0] = *(v54 - 3);
          v84[1] = v57;
          v84[2] = v58;
          v85 = v59;
          v86[0] = v60;

          sub_21A0D8588(v84, v86, v26, &v88, v10);

          if ((*v29)(v10, 1, v81) == 1)
          {
            sub_219F6409C(v10, &qword_27CCDE180);
          }

          else
          {
            v61 = v77;
            sub_21A0D8B18(v10, v77, type metadata accessor for PresidentialElectionData.Entity);
            sub_21A0D8B18(v61, v17, type metadata accessor for PresidentialElectionData.Entity);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = sub_219FA17D0(0, *(v55 + 2) + 1, 1, v55);
            }

            v63 = *(v55 + 2);
            v62 = *(v55 + 3);
            if (v63 >= v62 >> 1)
            {
              v55 = sub_219FA17D0(v62 > 1, v63 + 1, 1, v55);
            }

            *(v55 + 2) = v63 + 1;
            sub_21A0D8B18(v17, &v55[((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v63], type metadata accessor for PresidentialElectionData.Entity);
            v26 = v78;
          }

          ++v53;
          v54 += 32;
        }

        while (a2 != v53);
      }

      else
      {
        v55 = MEMORY[0x277D84F90];
      }

      sub_21A0D8B80(&v88);

      swift_unknownObjectRelease();
      v87 = v55;
      if (*(v55 + 2) != 2)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE1A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE1A8);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_21A0FBC80;
      swift_getKeyPath();
      sub_21A0E462C();
      swift_getKeyPath();
      sub_21A0E462C();
      v84[0] = v66;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE1B0);
      v50 = &qword_27CCDE1B8;
      v17 = &unk_21A106540;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE1B8);
      sub_219F3E490(&qword_27CCDE1C0, &qword_27CCDE1B0);
      a2 = sub_219F3E490(&qword_27CCDE1C8, &qword_27CCDE1B0);
      sub_219F3E490(&qword_27CCDE1D0, &qword_27CCDE1B8);
      sub_219F3E490(&qword_27CCDE1D8, &qword_27CCDE1A8);
      sub_21A0E61BC();

      v48 = v72;
      v49 = v79;
      *v72 = v83;
      *(v48 + 8) = v49;
      v10 = v87;
      v42 = *(v87 + 2);
      if (v42)
      {
        v67 = v76;
        v47 = v80;
        v68 = &v87[(*(v80 + 80) + 32) & ~*(v80 + 80)];
        sub_21A03F2F0(v68, v48 + *(v76 + 20), type metadata accessor for PresidentialElectionData.Entity);
        if (v42 != 1)
        {
          sub_21A03F2F0(v68 + *(v47 + 72), v48 + *(v67 + 24), type metadata accessor for PresidentialElectionData.Entity);

          *(v48 + *(v67 + 28)) = v82;
          v69 = v75;
          sub_21A0D8B18(v48, v75, type metadata accessor for PresidentialElectionData);
          return (*(v74 + 56))(v69, 0, 1, v67);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_40:
      sub_219FBE644((v49 > 1), v50, 1);
      v43 = v84[0];
    }

    v65 = v75;
    v64 = v76;
  }

  else
  {
    v29 = v75;
    sub_21A0D8B80(&v88);

    if (qword_27CCD90D0 != -1)
    {
LABEL_37:
      swift_once();
    }

    v30 = sub_21A0E516C();
    __swift_project_value_buffer(v30, qword_27CCD97D8);

    v31 = sub_21A0E514C();
    v32 = sub_21A0E669C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v84[0] = v34;
      *v33 = 136446210;
      v35 = MEMORY[0x21CED1A80](a2, &type metadata for PrimaryEntity);
      v37 = v36;

      v38 = sub_219F50144(v35, v37, v84);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_219F39000, v31, v32, "PresidentialElectionData needs at least two entities but got %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x21CED2D30](v34, -1, -1);
      MEMORY[0x21CED2D30](v33, -1, -1);
    }

    else
    {
    }

    v64 = v76;
    v65 = v29;
  }

  return (*(v74 + 56))(v65, 1, 1, v64);
}

uint64_t sub_21A0D7DD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v98 = type metadata accessor for BalanceOfPowerData.Entity(0);
  v9 = MEMORY[0x28223BE20](v98, v8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v82 - v13;
  v15 = type metadata accessor for BalanceOfPowerData(0);
  v99 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = *a1;
  v19 = a1[2];
  v20 = a3[1];
  v21 = a3[2];
  v101 = a3[3];
  v102 = v21;
  v100 = *(a3 + 32);
  if (*(v18 + 16) >= 2uLL)
  {
    v22 = *(a2 + 16);
    if (v22 >= 2)
    {
      v95 = v20;
      v96 = v19;
      v97 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      v88 = a4;
      v93 = a1[1];
      v94 = v18;
      v86 = a1[3];
      v91 = *a3;
      v92 = v15;
      v40 = *(a3 + 33);
      v89 = *(a3 + 34);
      v90 = v40;
      v103[0] = MEMORY[0x277D84F90];
      sub_219FBE644(0, v22, 0);
      v41 = v103[0];
      v42 = *(v103[0] + 16);
      v43 = 65;
      do
      {
        v44 = *(a2 + v43);
        v103[0] = v41;
        v45 = *(v41 + 24);
        if (v42 >= v45 >> 1)
        {
          sub_219FBE644((v45 > 1), v42 + 1, 1);
          v41 = v103[0];
        }

        *(v41 + 16) = v42 + 1;
        *(v41 + v42 + 32) = v44;
        v43 += 40;
        ++v42;
        --v22;
      }

      while (v22);
      v46 = sub_21A030A38(v41);

      v47 = v97;
      v48 = v96;
      *v97 = v93;
      v47[1] = v48;
      if (*(a2 + 16))
      {
        v49 = *(a2 + 48);
        v50 = *(a2 + 56);
        if (*(a2 + 64))
        {
          v50 = 0;
        }

        v51 = __OFADD__(v49, v50);
        v52 = v49 + v50;
        if (!v51)
        {
          v53 = v94;
          if (*(v46 + 16))
          {
            v54 = *(v46 + 32);
            v93 = *(a2 + 16);
            v87 = v52;
            if (v54 > 1)
            {
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = 0;
              v55 = 0;
            }

            else
            {
              v55 = v100 | (v90 << 8) | (v89 << 16);
              v56 = v95;

              v58 = v101;
              v57 = v102;
              result = sub_219F79C1C();
              v59 = v91;
              v60 = v56;
              v61 = v57;
              v62 = v58;
            }

            if (*(v53 + 16))
            {
              v84 = v46;
              v85 = *(v46 + 32);
              v63 = *(v98 + 28);
              v64 = v59;
              v65 = v60;
              v66 = v62;
              v83 = *(type metadata accessor for ElectionEntityTheme() - 8);
              v67 = v53 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
              sub_21A03F2F0(v67, &v14[v63], type metadata accessor for ElectionEntityTheme);
              *v14 = v87;
              *(v14 + 1) = v64;
              *(v14 + 2) = v65;
              *(v14 + 3) = v61;
              *(v14 + 4) = v66;
              v14[42] = BYTE2(v55);
              *(v14 + 20) = v55;
              v14[43] = v85;
              v68 = v92;
              result = sub_21A0D8B18(v14, v97 + *(v92 + 20), type metadata accessor for BalanceOfPowerData.Entity);
              if (v93 != 1)
              {
                v93 = v67;
                v69 = *(a2 + 88);
                v70 = *(a2 + 96);
                v71 = *(a2 + 104);

                if (v71)
                {
                  v72 = 0;
                }

                else
                {
                  v72 = v70;
                }

                v51 = __OFADD__(v69, v72);
                v73 = v69 + v72;
                if (!v51)
                {
                  v74 = v84;
                  if (*(v84 + 16) >= 2uLL)
                  {
                    if (*(v84 + 33) >= 2u)
                    {
                      v76 = v88;

                      sub_219F79CD8();
                      v79 = 0;
                      v95 = 0;
                      v77 = 0;
                      v78 = 0;
                      v75 = 0;
                    }

                    else
                    {
                      v75 = v100 | (v90 << 8) | (v89 << 16);
                      v76 = v88;
                      v78 = v101;
                      v77 = v102;
                      v79 = v91;
                    }

                    v80 = *(v74 + 33);

                    if (*(v94 + 16) >= 2uLL)
                    {
                      sub_21A03F2F0(v93 + *(v83 + 72), &v11[*(v98 + 28)], type metadata accessor for ElectionEntityTheme);
                      *v11 = v73;
                      *(v11 + 1) = v79;
                      *(v11 + 2) = v95;
                      *(v11 + 3) = v77;
                      *(v11 + 4) = v78;
                      v11[42] = BYTE2(v75);
                      *(v11 + 20) = v75;
                      v11[43] = v80;
                      v81 = v97;
                      sub_21A0D8B18(v11, v97 + *(v68 + 24), type metadata accessor for BalanceOfPowerData.Entity);

                      *(v81 + *(v68 + 28)) = v86;
                      sub_21A0D8B18(v81, v76, type metadata accessor for BalanceOfPowerData);
                      return (*(v99 + 56))(v76, 0, 1, v68);
                    }

                    goto LABEL_42;
                  }

LABEL_41:
                  __break(1u);
LABEL_42:
                  __break(1u);
                  return result;
                }

LABEL_40:
                __break(1u);
                goto LABEL_41;
              }

LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

LABEL_37:
          __break(1u);
          goto LABEL_38;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_37;
    }
  }

  sub_219F79CD8();
  if (qword_27CCD90D0 != -1)
  {
    swift_once();
  }

  v23 = sub_21A0E516C();
  __swift_project_value_buffer(v23, qword_27CCD97D8);

  v24 = sub_21A0E514C();
  v25 = sub_21A0E669C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v103[0] = v27;
    *v26 = 136446466;

    v28 = type metadata accessor for ElectionEntityTheme();
    v29 = MEMORY[0x21CED1A80](v18, v28);
    v30 = v15;
    v32 = v31;

    v33 = sub_219F50144(v29, v32, v103);
    v15 = v30;

    *(v26 + 4) = v33;
    *(v26 + 12) = 2082;
    v34 = MEMORY[0x21CED1A80](a2, &type metadata for SecondaryEntity);
    v36 = v35;

    v37 = sub_219F50144(v34, v36, v103);

    *(v26 + 14) = v37;
    _os_log_impl(&dword_219F39000, v24, v25, "BalanceOfPowerData needs two entities but got theme: %{public}s, dynamic: %{public}s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED2D30](v27, -1, -1);
    MEMORY[0x21CED2D30](v26, -1, -1);
  }

  else
  {
  }

  v38 = *(v99 + 56);

  return v38(a4, 1, 1, v15);
}

uint64_t sub_21A0D8588@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v10 = *a4;
  v47 = *(a4 + 8);
  v48 = v10;
  v11 = *(a4 + 16);
  v45 = *(a4 + 24);
  v46 = v11;
  LODWORD(v11) = *(a4 + 32);
  v43 = *(a4 + 33);
  v44 = v11;
  v42 = *(a4 + 34);
  v12 = type metadata accessor for ElectionEntityTheme() - 8;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v17);
  v20 = &v41 - v19;
  v21 = *a1;
  v22 = a1[1];
  v23 = *(a3 + 16);
  if (v23)
  {
    v41 = a1[2];
    v24 = *a2;
    v25 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v26 = *(v18 + 72);
    while (1)
    {
      sub_21A03F2F0(v25, v16, type metadata accessor for ElectionEntityTheme);
      v27 = *v16 == v21 && v16[1] == v22;
      if (v27 || (sub_21A0E6C5C() & 1) != 0)
      {
        break;
      }

      sub_21A0D8AB8(v16, type metadata accessor for ElectionEntityTheme);
      v25 += v26;
      if (!--v23)
      {
        goto LABEL_9;
      }
    }

    sub_21A0D8B18(v16, v20, type metadata accessor for ElectionEntityTheme);
    if (v24 >= 2)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v35 = 0;
    }

    else
    {
      v35 = v44 & 1 | (v43 << 8) | (v42 << 16);
      sub_21A0D8BD4(a4, v49);
      v37 = v47;
      v36 = v48;
      v39 = v45;
      v38 = v46;
    }

    v40 = type metadata accessor for PresidentialElectionData.Entity(0);
    sub_21A0D8B18(v20, a5 + *(v40 + 28), type metadata accessor for ElectionEntityTheme);
    *a5 = v41;
    *(a5 + 8) = v36;
    *(a5 + 16) = v37;
    *(a5 + 24) = v38;
    *(a5 + 32) = v39;
    *(a5 + 42) = BYTE2(v35);
    *(a5 + 40) = v35;
    *(a5 + 43) = v24;
    return (*(*(v40 - 8) + 56))(a5, 0, 1, v40);
  }

  else
  {
LABEL_9:
    if (qword_27CCD90D0 != -1)
    {
      swift_once();
    }

    v28 = sub_21A0E516C();
    __swift_project_value_buffer(v28, qword_27CCD97D8);

    v29 = sub_21A0E514C();
    v30 = sub_21A0E669C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v49[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_219F50144(v21, v22, v49);
      _os_log_impl(&dword_219F39000, v29, v30, "Couldn't find entity in attributes with id: %{public}s.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x21CED2D30](v32, -1, -1);
      MEMORY[0x21CED2D30](v31, -1, -1);
    }

    v33 = type metadata accessor for PresidentialElectionData.Entity(0);
    return (*(*(v33 - 8) + 56))(a5, 1, 1, v33);
  }
}

uint64_t PoliticalPartyCode.visualOrdering.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v1 == 7169348 && v2 == 0xE300000000000000;
  if (v3 || (sub_21A0E6C5C() & 1) != 0)
  {
    return -1;
  }

  if (v1 == 5263175 && v2 == 0xE300000000000000)
  {
    return 1;
  }

  return sub_21A0E6C5C() & 1;
}

uint64_t sub_21A0D8A04@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *result == 7169348 && v4 == 0xE300000000000000;
  if (v5 || (result = sub_21A0E6C5C(), (result & 1) != 0))
  {
    v6 = -1;
  }

  else if (v3 == 5263175 && v4 == 0xE300000000000000)
  {
    v6 = 1;
  }

  else
  {
    result = sub_21A0E6C5C();
    v6 = result & 1;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_21A0D8AB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A0D8B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *ActivityFlexibleUpdateTheme.init(leadingGraphic:leadingKicker:trailingKicker:headline:body:caption:trailingGraphic:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, const void *a7@<X6>, uint64_t a8@<X8>)
{
  sub_219FF06D0(__src);
  memcpy(a8, __src, 0x2C0uLL);
  sub_219F639B0(&v128);
  v15 = v138;
  v16 = v139;
  v17 = v138;
  *(a8 + 864) = v138;
  *(a8 + 880) = v16;
  v18 = v134;
  v19 = v135;
  v20 = v134;
  *(a8 + 800) = v134;
  *(a8 + 816) = v19;
  v21 = v136;
  v22 = v137;
  v23 = v136;
  *(a8 + 832) = v136;
  *(a8 + 848) = v22;
  v24 = v130;
  v25 = v131;
  v26 = v130;
  *(a8 + 736) = v130;
  *(a8 + 752) = v25;
  v27 = v132;
  v28 = v133;
  v29 = v132;
  *(a8 + 768) = v132;
  *(a8 + 784) = v28;
  v30 = v128;
  v31 = v129;
  v32 = v128;
  *(a8 + 704) = v128;
  *(a8 + 720) = v31;
  v33 = v139;
  v34 = v139;
  *(a8 + 1064) = v15;
  *(a8 + 1080) = v33;
  v35 = v135;
  v36 = v135;
  *(a8 + 1000) = v18;
  *(a8 + 1016) = v35;
  v37 = v137;
  v38 = v137;
  *(a8 + 1032) = v21;
  *(a8 + 1048) = v37;
  v39 = v131;
  v40 = v131;
  *(a8 + 936) = v24;
  *(a8 + 952) = v39;
  v41 = v133;
  v42 = v133;
  *(a8 + 968) = v27;
  *(a8 + 984) = v41;
  v43 = v129;
  v44 = v129;
  *(a8 + 904) = v30;
  *(a8 + 920) = v43;
  *(a8 + 1248) = v38;
  v45 = v138;
  *(a8 + 1264) = v138;
  *(a8 + 1280) = v34;
  *(a8 + 1184) = v42;
  v46 = v134;
  *(a8 + 1200) = v134;
  *(a8 + 1216) = v36;
  v47 = v136;
  *(a8 + 1232) = v136;
  *(a8 + 1120) = v44;
  v48 = v130;
  *(a8 + 1136) = v130;
  *(a8 + 1152) = v40;
  v49 = v132;
  *(a8 + 1168) = v132;
  v50 = v128;
  *(a8 + 1104) = v128;
  v51 = v139;
  v52 = v139;
  *(a8 + 1464) = v45;
  *(a8 + 1480) = v51;
  v53 = v135;
  v54 = v135;
  *(a8 + 1400) = v46;
  *(a8 + 1416) = v53;
  v55 = v137;
  v56 = v137;
  *(a8 + 1432) = v47;
  *(a8 + 1448) = v55;
  v57 = v131;
  v58 = v131;
  *(a8 + 1336) = v48;
  *(a8 + 1352) = v57;
  v59 = v133;
  v60 = v133;
  *(a8 + 1368) = v49;
  *(a8 + 1384) = v59;
  v61 = v129;
  v62 = v129;
  *(a8 + 1304) = v50;
  *(a8 + 1320) = v61;
  *(a8 + 1648) = v56;
  *(a8 + 1664) = v17;
  *(a8 + 1680) = v52;
  *(a8 + 1584) = v60;
  *(a8 + 1600) = v20;
  *(a8 + 1616) = v54;
  *(a8 + 1632) = v23;
  *(a8 + 1520) = v62;
  *(a8 + 1536) = v26;
  *(a8 + 1552) = v58;
  *(a8 + 1568) = v29;
  v63 = v140;
  *(a8 + 896) = v140;
  *(a8 + 1096) = v63;
  v64 = v140;
  *(a8 + 1296) = v140;
  *(a8 + 1496) = v64;
  *(a8 + 1696) = v140;
  *(a8 + 1504) = v32;
  memcpy((a8 + 1704), __src, 0x2C0uLL);
  memcpy(__dst, a8, sizeof(__dst));
  sub_219F6409C(__dst, &qword_27CCDB1B8);
  memcpy(a8, a1, 0x2C0uLL);
  v65 = *(a8 + 880);
  v142[10] = *(a8 + 864);
  v142[11] = v65;
  v143 = *(a8 + 896);
  v66 = *(a8 + 816);
  v142[6] = *(a8 + 800);
  v142[7] = v66;
  v67 = *(a8 + 848);
  v142[8] = *(a8 + 832);
  v142[9] = v67;
  v68 = *(a8 + 752);
  v142[2] = *(a8 + 736);
  v142[3] = v68;
  v69 = *(a8 + 784);
  v142[4] = *(a8 + 768);
  v142[5] = v69;
  v70 = *(a8 + 720);
  v142[0] = *(a8 + 704);
  v142[1] = v70;
  sub_219F6409C(v142, &qword_27CCD95B8);
  v71 = *(a2 + 176);
  *(a8 + 864) = *(a2 + 160);
  *(a8 + 880) = v71;
  *(a8 + 896) = *(a2 + 192);
  v72 = *(a2 + 112);
  *(a8 + 800) = *(a2 + 96);
  *(a8 + 816) = v72;
  v73 = *(a2 + 144);
  *(a8 + 832) = *(a2 + 128);
  *(a8 + 848) = v73;
  v74 = *(a2 + 48);
  *(a8 + 736) = *(a2 + 32);
  *(a8 + 752) = v74;
  v75 = *(a2 + 80);
  *(a8 + 768) = *(a2 + 64);
  *(a8 + 784) = v75;
  v76 = *(a2 + 16);
  *(a8 + 704) = *a2;
  *(a8 + 720) = v76;
  v77 = *(a8 + 1080);
  v144[10] = *(a8 + 1064);
  v144[11] = v77;
  v145 = *(a8 + 1096);
  v78 = *(a8 + 1016);
  v144[6] = *(a8 + 1000);
  v144[7] = v78;
  v79 = *(a8 + 1048);
  v144[8] = *(a8 + 1032);
  v144[9] = v79;
  v80 = *(a8 + 952);
  v144[2] = *(a8 + 936);
  v144[3] = v80;
  v81 = *(a8 + 984);
  v144[4] = *(a8 + 968);
  v144[5] = v81;
  v82 = *(a8 + 920);
  v144[0] = *(a8 + 904);
  v144[1] = v82;
  sub_219F6409C(v144, &qword_27CCD95B8);
  v83 = *(a3 + 176);
  *(a8 + 1064) = *(a3 + 160);
  *(a8 + 1080) = v83;
  *(a8 + 1096) = *(a3 + 192);
  v84 = *(a3 + 112);
  *(a8 + 1000) = *(a3 + 96);
  *(a8 + 1016) = v84;
  v85 = *(a3 + 144);
  *(a8 + 1032) = *(a3 + 128);
  *(a8 + 1048) = v85;
  v86 = *(a3 + 48);
  *(a8 + 936) = *(a3 + 32);
  *(a8 + 952) = v86;
  v87 = *(a3 + 80);
  *(a8 + 968) = *(a3 + 64);
  *(a8 + 984) = v87;
  v88 = *(a3 + 16);
  *(a8 + 904) = *a3;
  *(a8 + 920) = v88;
  v89 = *(a8 + 1248);
  v90 = *(a8 + 1280);
  v146[10] = *(a8 + 1264);
  v146[11] = v90;
  v147 = *(a8 + 1296);
  v91 = *(a8 + 1184);
  v92 = *(a8 + 1216);
  v146[6] = *(a8 + 1200);
  v146[7] = v92;
  v146[8] = *(a8 + 1232);
  v146[9] = v89;
  v93 = *(a8 + 1120);
  v94 = *(a8 + 1152);
  v146[2] = *(a8 + 1136);
  v146[3] = v94;
  v146[4] = *(a8 + 1168);
  v146[5] = v91;
  v146[0] = *(a8 + 1104);
  v146[1] = v93;
  sub_219F6409C(v146, &qword_27CCD95B8);
  v95 = a4[8];
  *(a8 + 1248) = a4[9];
  v96 = a4[11];
  *(a8 + 1264) = a4[10];
  *(a8 + 1280) = v96;
  v97 = a4[4];
  *(a8 + 1184) = a4[5];
  v98 = a4[7];
  *(a8 + 1200) = a4[6];
  *(a8 + 1216) = v98;
  *(a8 + 1232) = v95;
  v99 = *a4;
  *(a8 + 1120) = a4[1];
  v100 = a4[3];
  *(a8 + 1136) = a4[2];
  *(a8 + 1152) = v100;
  *(a8 + 1296) = *(a4 + 24);
  *(a8 + 1168) = v97;
  *(a8 + 1104) = v99;
  v101 = *(a8 + 1480);
  v148[10] = *(a8 + 1464);
  v148[11] = v101;
  v149 = *(a8 + 1496);
  v102 = *(a8 + 1416);
  v148[6] = *(a8 + 1400);
  v148[7] = v102;
  v103 = *(a8 + 1448);
  v148[8] = *(a8 + 1432);
  v148[9] = v103;
  v104 = *(a8 + 1352);
  v148[2] = *(a8 + 1336);
  v148[3] = v104;
  v105 = *(a8 + 1384);
  v148[4] = *(a8 + 1368);
  v148[5] = v105;
  v106 = *(a8 + 1320);
  v148[0] = *(a8 + 1304);
  v148[1] = v106;
  sub_219F6409C(v148, &qword_27CCD95B8);
  v107 = *(a5 + 176);
  *(a8 + 1464) = *(a5 + 160);
  *(a8 + 1480) = v107;
  *(a8 + 1496) = *(a5 + 192);
  v108 = *(a5 + 112);
  *(a8 + 1400) = *(a5 + 96);
  *(a8 + 1416) = v108;
  v109 = *(a5 + 144);
  *(a8 + 1432) = *(a5 + 128);
  *(a8 + 1448) = v109;
  v110 = *(a5 + 48);
  *(a8 + 1336) = *(a5 + 32);
  *(a8 + 1352) = v110;
  v111 = *(a5 + 80);
  *(a8 + 1368) = *(a5 + 64);
  *(a8 + 1384) = v111;
  v112 = *(a5 + 16);
  *(a8 + 1304) = *a5;
  *(a8 + 1320) = v112;
  v113 = *(a8 + 1648);
  v114 = *(a8 + 1680);
  v150[10] = *(a8 + 1664);
  v150[11] = v114;
  v151 = *(a8 + 1696);
  v115 = *(a8 + 1584);
  v116 = *(a8 + 1616);
  v150[6] = *(a8 + 1600);
  v150[7] = v116;
  v150[8] = *(a8 + 1632);
  v150[9] = v113;
  v117 = *(a8 + 1520);
  v118 = *(a8 + 1552);
  v150[2] = *(a8 + 1536);
  v150[3] = v118;
  v150[4] = *(a8 + 1568);
  v150[5] = v115;
  v150[0] = *(a8 + 1504);
  v150[1] = v117;
  sub_219F6409C(v150, &qword_27CCD95B8);
  v119 = a6[8];
  *(a8 + 1648) = a6[9];
  v120 = a6[11];
  *(a8 + 1664) = a6[10];
  *(a8 + 1680) = v120;
  v121 = a6[4];
  *(a8 + 1584) = a6[5];
  v122 = a6[7];
  *(a8 + 1600) = a6[6];
  *(a8 + 1616) = v122;
  *(a8 + 1632) = v119;
  v123 = *a6;
  *(a8 + 1520) = a6[1];
  v124 = a6[3];
  *(a8 + 1536) = a6[2];
  *(a8 + 1552) = v124;
  *(a8 + 1568) = v121;
  *(a8 + 1696) = *(a6 + 24);
  *(a8 + 1504) = v123;
  memcpy(v152, (a8 + 1704), 0x2C0uLL);
  sub_219F6409C(v152, &qword_27CCDB1B8);
  return memcpy((a8 + 1704), a7, 0x2C0uLL);
}

uint64_t ActivityFlexibleUpdate.Graphic.init(asset:size:badge:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  v9 = *(v8 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  sub_219F73094(a1, a4);
  *(a4 + *(v8 + 20)) = v7;
  return sub_219FF0668(a3, a4 + v9, &qword_27CCD98D8);
}

uint64_t ActivityFlexibleUpdate.init(leadingGraphic:leadingKicker:trailingKicker:headline:body:caption:trailingGraphic:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a9, 1, 1, v14);
  v16 = type metadata accessor for ActivityFlexibleUpdate(0);
  v17 = (a9 + v16[5]);
  v18 = (a9 + v16[6]);
  v19 = (a9 + v16[7]);
  v20 = (a9 + v16[8]);
  v21 = v16[10];
  v22 = (a9 + v16[9]);
  v15(a9 + v21, 1, 1, v14);
  sub_219FF0668(a1, a9, &qword_27CCDB1B0);
  *v17 = a2;
  v17[1] = a3;
  *v18 = a4;
  v18[1] = a5;
  *v19 = a6;
  v19[1] = a7;
  *v20 = a8;
  v20[1] = a10;
  *v22 = a11;
  v22[1] = a12;
  return sub_219FF0668(a13, a9 + v21, &qword_27CCDB1B0);
}

void *ActivityFlexibleUpdateTheme.Graphic.init(asset:badge:)@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_219FB2474(v7);
  memcpy((a3 + 352), v7, 0x160uLL);
  memcpy(__dst, v7, sizeof(__dst));
  sub_219F6409C(__dst, &qword_27CCDA9B0);
  memcpy(a3, a1, 0x160uLL);
  memcpy(v9, (a3 + 352), sizeof(v9));
  sub_219F6409C(v9, &qword_27CCDA9B0);
  return memcpy((a3 + 352), a2, 0x160uLL);
}

uint64_t sub_21A0D9624(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 176);
  v25[10] = *(a1 + 160);
  v26 = v4;
  v27 = *(a1 + 192);
  v5 = *(a1 + 112);
  v25[6] = *(a1 + 96);
  v25[7] = v5;
  v6 = *(a1 + 144);
  v25[8] = *(a1 + 128);
  v25[9] = v6;
  v7 = *(a1 + 48);
  v25[2] = *(a1 + 32);
  v25[3] = v7;
  v8 = *(a1 + 80);
  v25[4] = *(a1 + 64);
  v25[5] = v8;
  v9 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v9;
  v10 = *(a2 + 176);
  v22[10] = *(a2 + 160);
  v23 = v10;
  v24 = *(a2 + 192);
  v11 = *(a2 + 112);
  v22[6] = *(a2 + 96);
  v22[7] = v11;
  v12 = *(a2 + 144);
  v22[8] = *(a2 + 128);
  v22[9] = v12;
  v13 = *(a2 + 48);
  v22[2] = *(a2 + 32);
  v22[3] = v13;
  v14 = *(a2 + 80);
  v22[4] = *(a2 + 64);
  v22[5] = v14;
  v15 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v15;
  if (!_s22NewsLiveActivitiesCore17ActivityTextThemeV2eeoiySbAC_ACtFZ_0(v25, v22))
  {
    return 0;
  }

  v16 = *(&v26 + 1);
  v17 = *(&v23 + 1);

  v18 = sub_219FAAA00(v16, v17);

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v19 = *(a1 + 192);
  v20 = *(a2 + 192);

  return sub_219F757B0(v19, v20);
}

uint64_t sub_21A0D9750(unsigned __int8 a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v11 = 0x65736F6F6CLL;
    }

    else
    {
      v11 = 0x647261646E617473;
    }

    if (v10 == 1)
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v12 = 0xE800000000000000;
    }

    v13 = a4;
    if (a4)
    {
LABEL_9:
      if (v13 == 1)
      {
        v14 = 0x65736F6F6CLL;
      }

      else
      {
        v14 = 0x647261646E617473;
      }

      if (v13 == 1)
      {
        v15 = 0xE500000000000000;
      }

      else
      {
        v15 = 0xE800000000000000;
      }

      if (v11 != v14)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    v11 = 0x7468676974;
    v13 = a4;
    if (a4)
    {
      goto LABEL_9;
    }
  }

  v15 = 0xE500000000000000;
  if (v11 != 0x7468676974)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (v12 == v15)
  {

    goto LABEL_22;
  }

LABEL_21:
  v16 = sub_21A0E6C5C();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_22:

  v17 = sub_219FAAA00(a2, a5);

  if ((v17 & 1) == 0)
  {
    return 0;
  }

  return sub_219F775F8(a3, a6);
}

uint64_t sub_21A0D98E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v4;
  v18 = *(a1 + 64);
  v19 = *(a1 + 80);
  v5 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v5;
  v6 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v6;
  v15 = *(a2 + 64);
  v16 = *(a2 + 80);
  v7 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v7;
  if (!static ActivityFill.== infix(_:_:)(v17, v14))
  {
    return 0;
  }

  v8 = *(&v18 + 1);
  v9 = *(&v15 + 1);

  v10 = sub_219FAAA00(v8, v9);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 80);

  return sub_219F780CC(v11, v12);
}

uint64_t sub_21A0D99E0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 68);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 64) | (*(a2 + 68) << 32);
  if (v6 >> 6)
  {
    v10 = v9 & 0xC000000000;
    if (v6 >> 6 == 1)
    {
      if (v10 != 0x4000000000)
      {
        goto LABEL_19;
      }

      if (*&v4 != *&v7)
      {
        goto LABEL_19;
      }

      if (*(&v4 + 1) != *(&v7 + 1))
      {
        goto LABEL_19;
      }

      v11 = vzip1q_s64(v5, v8);
      v12 = vmovn_s64(v11);
      if ((vceq_f32(vdup_lane_s32(v12, 1), v12).u8[0] & 1) == 0)
      {
        goto LABEL_19;
      }

      v13 = vshrn_n_s64(v11, 0x20uLL);
      if ((vceq_f32(vdup_lane_s32(v13, 1), v13).u32[0] & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v10 != 0x8000000000)
      {
        goto LABEL_19;
      }

      LOBYTE(v37) = *a1;
      LOBYTE(v30) = v7;
      v21 = ActivityColor.System.Name.rawValue.getter();
      v23 = v22;
      if (v21 == ActivityColor.System.Name.rawValue.getter() && v23 == v24)
      {

        goto LABEL_17;
      }

      v25 = sub_21A0E6C5C();

      if ((v25 & 1) == 0)
      {
LABEL_19:
        v28 = 0;
        return v28 & 1;
      }
    }
  }

  else
  {
    if (v9 >> 38)
    {
      goto LABEL_19;
    }

    v14 = *(a1 + 24);
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    v17 = *(a1 + 64) | (*(a1 + 68) << 32);
    v18 = *(a2 + 24);
    v19 = *(a2 + 40);
    v20 = *(a2 + 56);
    v37 = *a1;
    v38 = v5;
    v39 = v14;
    v40 = v15;
    v41 = v16;
    v42 = v17;
    v43 = BYTE4(v17) & 0x3F;
    v30 = v7;
    v31 = v8;
    v32 = v18;
    v33 = v19;
    v34 = v20;
    v36 = BYTE4(v9);
    v35 = v9;
    if ((_s22NewsLiveActivitiesCore13ActivityColorO13UserInterfaceV2eeoiySbAE_AEtFZ_0(&v37, &v30) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_17:
  v37 = *(a1 + 72);
  v26 = v37;
  v30 = *(a2 + 72);
  v27 = v30;
  sub_21A0E2734(&v37, v44);
  sub_21A0E2734(&v30, v44);
  LOBYTE(v26) = sub_219FAAA00(v26, v27);
  sub_21A0E2790(&v30);
  sub_21A0E2790(&v37);
  if ((v26 & 1) == 0)
  {
    goto LABEL_19;
  }

  v28 = sub_219F78F2C(*(a1 + 80), *(a2 + 80));
  return v28 & 1;
}

uint64_t ActivityFlexibleUpdate.leadingKicker.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityFlexibleUpdate(0) + 20));

  return v1;
}

uint64_t ActivityFlexibleUpdate.leadingKicker.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityFlexibleUpdate(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ActivityFlexibleUpdate.trailingKicker.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityFlexibleUpdate(0) + 24));

  return v1;
}

uint64_t ActivityFlexibleUpdate.trailingKicker.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityFlexibleUpdate(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ActivityFlexibleUpdate.headline.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityFlexibleUpdate(0) + 28));

  return v1;
}

uint64_t ActivityFlexibleUpdate.headline.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityFlexibleUpdate(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ActivityFlexibleUpdate.body.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityFlexibleUpdate(0) + 32));

  return v1;
}

uint64_t ActivityFlexibleUpdate.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityFlexibleUpdate(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ActivityFlexibleUpdate.caption.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityFlexibleUpdate(0) + 36));

  return v1;
}

uint64_t ActivityFlexibleUpdate.caption.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ActivityFlexibleUpdate(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ActivityFlexibleUpdate.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v94 = *(v2 - 8);
  v95 = v2;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v85 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v87 = &v83 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v88 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v86 = &v83 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  v90 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v89 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v83 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v98 = &v83 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v83 - v26;
  v28 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  v29 = *(v28 - 8);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v83 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1B0);
  v39 = MEMORY[0x28223BE20](v37 - 8, v38);
  v92 = &v83 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v83 - v42;
  sub_219F45500(v97, &v83 - v42, &qword_27CCDB1B0);
  v44 = *(v29 + 48);
  v93 = v29 + 48;
  v91 = v44;
  v45 = v44(v43, 1, v28);
  v96 = v33;
  if (v45 == 1)
  {
    sub_21A0E6DCC();
    v46 = v14;
    v47 = v28;
    v48 = v33;
  }

  else
  {
    v84 = v28;
    sub_21A0E1158(v43, v36);
    sub_21A0E6DCC();
    ActivityAsset.hash(into:)(a1);
    sub_219F91544(a1, *&v36[*(v14 + 28)]);
    v49 = *(v14 + 32);
    v83 = v36;
    v50 = *&v36[v49];
    MEMORY[0x21CED2490](*(v50 + 16));
    v51 = *(v50 + 16);
    if (v51)
    {
      v52 = v50 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v53 = *(v90 + 72);
      do
      {
        sub_219F45500(v52, v27, &qword_27CCD98C8);
        v54 = sub_219F73104();
        sub_219FC5A20(a1, v14, v54);
        sub_219F6409C(v27, &qword_27CCD98C8);
        v52 += v53;
        --v51;
      }

      while (v51);
    }

    v55 = v83;
    v47 = v84;
    v46 = v14;
    sub_21A0E626C();

    v56 = v86;
    sub_219F45500(v55 + *(v47 + 24), v86, &qword_27CCD98D8);
    if ((*(v94 + 48))(v56, 1, v95) == 1)
    {
      sub_21A0E6DCC();
      sub_21A0E11BC(v55);
      v48 = v96;
    }

    else
    {
      v57 = v87;
      sub_219F73094(v56, v87);
      sub_21A0E6DCC();
      ActivityAsset.hash(into:)(a1);
      sub_219F91544(a1, *(v57 + *(v14 + 28)));
      v58 = *(v57 + *(v14 + 32));
      MEMORY[0x21CED2490](*(v58 + 16));
      v59 = *(v58 + 16);
      v60 = v98;
      if (v59)
      {
        v61 = v58 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
        v62 = *(v90 + 72);
        do
        {
          sub_219F45500(v61, v60, &qword_27CCD98C8);
          v63 = sub_219F73104();
          sub_219FC5A20(a1, v14, v63);
          v60 = v98;
          sub_219F6409C(v98, &qword_27CCD98C8);
          v61 += v62;
          --v59;
        }

        while (v59);
      }

      sub_219F6409C(v87, &qword_27CCD98D0);
      sub_21A0E11BC(v83);
      v48 = v96;
      v47 = v84;
    }
  }

  v64 = type metadata accessor for ActivityFlexibleUpdate(0);
  if (*(v97 + v64[5] + 8))
  {
    sub_21A0E6DCC();
    sub_21A0E626C();
  }

  else
  {
    sub_21A0E6DCC();
  }

  if (*(v97 + v64[6] + 8))
  {
    sub_21A0E6DCC();
    sub_21A0E626C();
  }

  else
  {
    sub_21A0E6DCC();
  }

  if (*(v97 + v64[7] + 8))
  {
    sub_21A0E6DCC();
    sub_21A0E626C();
  }

  else
  {
    sub_21A0E6DCC();
  }

  if (*(v97 + v64[8] + 8))
  {
    sub_21A0E6DCC();
    sub_21A0E626C();
  }

  else
  {
    sub_21A0E6DCC();
  }

  if (*(v97 + v64[9] + 8))
  {
    sub_21A0E6DCC();
    sub_21A0E626C();
  }

  else
  {
    sub_21A0E6DCC();
  }

  v65 = v92;
  sub_219F45500(v97 + v64[10], v92, &qword_27CCDB1B0);
  if (v91(v65, 1, v47) == 1)
  {
    return sub_21A0E6DCC();
  }

  v67 = v47;
  sub_21A0E1158(v65, v48);
  sub_21A0E6DCC();
  ActivityAsset.hash(into:)(a1);
  sub_219F91544(a1, *(v48 + *(v46 + 28)));
  v68 = *(v48 + *(v46 + 32));
  MEMORY[0x21CED2490](*(v68 + 16));
  v69 = *(v68 + 16);
  if (v69)
  {
    v70 = v68 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v71 = *(v90 + 72);
    do
    {
      sub_219F45500(v70, v21, &qword_27CCD98C8);
      v72 = sub_219F73104();
      sub_219FC5A20(a1, v46, v72);
      sub_219F6409C(v21, &qword_27CCD98C8);
      v70 += v71;
      --v69;
    }

    while (v69);
  }

  v73 = v96;
  v74 = v89;
  sub_21A0E626C();

  v75 = v88;
  sub_219F45500(v73 + *(v67 + 24), v88, &qword_27CCD98D8);
  if ((*(v94 + 48))(v75, 1, v95) == 1)
  {
    sub_21A0E6DCC();
    v76 = v73;
  }

  else
  {
    v77 = v85;
    sub_219F73094(v75, v85);
    sub_21A0E6DCC();
    ActivityAsset.hash(into:)(a1);
    sub_219F91544(a1, *(v77 + *(v46 + 28)));
    v78 = *(v77 + *(v46 + 32));
    MEMORY[0x21CED2490](*(v78 + 16));
    v79 = *(v78 + 16);
    if (v79)
    {
      v80 = v78 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v81 = *(v90 + 72);
      do
      {
        sub_219F45500(v80, v74, &qword_27CCD98C8);
        v82 = sub_219F73104();
        sub_219FC5A20(a1, v46, v82);
        sub_219F6409C(v74, &qword_27CCD98C8);
        v80 += v81;
        --v79;
      }

      while (v79);
    }

    sub_219F6409C(v77, &qword_27CCD98D0);
    v76 = v96;
  }

  return sub_21A0E11BC(v76);
}

uint64_t ActivityFlexibleUpdateTheme.leadingGraphic.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x2C0uLL);
  memcpy(a1, v1, 0x2C0uLL);
  return sub_219F45500(__dst, v4, &qword_27CCDB1B8);
}

void *ActivityFlexibleUpdateTheme.leadingGraphic.setter(const void *a1)
{
  memcpy(__dst, v1, 0x2C0uLL);
  sub_219F6409C(__dst, &qword_27CCDB1B8);
  return memcpy(v1, a1, 0x2C0uLL);
}

uint64_t ActivityFlexibleUpdateTheme.leadingKicker.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 848);
  v3 = *(v1 + 880);
  v30 = *(v1 + 864);
  v31 = v3;
  v4 = *(v1 + 784);
  v5 = *(v1 + 816);
  v26 = *(v1 + 800);
  v6 = v26;
  v27 = v5;
  v7 = *(v1 + 816);
  v8 = *(v1 + 848);
  v28 = *(v1 + 832);
  v9 = v28;
  v29 = v8;
  v10 = *(v1 + 720);
  v11 = *(v1 + 752);
  v22 = *(v1 + 736);
  v12 = v22;
  v23 = v11;
  v13 = *(v1 + 752);
  v14 = *(v1 + 784);
  v24 = *(v1 + 768);
  v15 = v24;
  v25 = v14;
  v16 = *(v1 + 720);
  v21[0] = *(v1 + 704);
  v17 = v21[0];
  v21[1] = v16;
  v18 = *(v1 + 880);
  *(a1 + 160) = v30;
  *(a1 + 176) = v18;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 128) = v9;
  *(a1 + 144) = v2;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  *(a1 + 64) = v15;
  *(a1 + 80) = v4;
  v32 = *(v1 + 896);
  *(a1 + 192) = *(v1 + 896);
  *a1 = v17;
  *(a1 + 16) = v10;
  return sub_219F45500(v21, v20, &qword_27CCD95B8);
}

__n128 ActivityFlexibleUpdateTheme.leadingKicker.setter(uint64_t a1)
{
  v3 = *(v1 + 880);
  v15[10] = *(v1 + 864);
  v15[11] = v3;
  v16 = *(v1 + 896);
  v4 = *(v1 + 816);
  v15[6] = *(v1 + 800);
  v15[7] = v4;
  v5 = *(v1 + 848);
  v15[8] = *(v1 + 832);
  v15[9] = v5;
  v6 = *(v1 + 752);
  v15[2] = *(v1 + 736);
  v15[3] = v6;
  v7 = *(v1 + 784);
  v15[4] = *(v1 + 768);
  v15[5] = v7;
  v8 = *(v1 + 720);
  v15[0] = *(v1 + 704);
  v15[1] = v8;
  sub_219F6409C(v15, &qword_27CCD95B8);
  v9 = *(a1 + 176);
  *(v1 + 864) = *(a1 + 160);
  *(v1 + 880) = v9;
  *(v1 + 896) = *(a1 + 192);
  v10 = *(a1 + 112);
  *(v1 + 800) = *(a1 + 96);
  *(v1 + 816) = v10;
  v11 = *(a1 + 144);
  *(v1 + 832) = *(a1 + 128);
  *(v1 + 848) = v11;
  v12 = *(a1 + 48);
  *(v1 + 736) = *(a1 + 32);
  *(v1 + 752) = v12;
  v13 = *(a1 + 80);
  *(v1 + 768) = *(a1 + 64);
  *(v1 + 784) = v13;
  result = *(a1 + 16);
  *(v1 + 704) = *a1;
  *(v1 + 720) = result;
  return result;
}

uint64_t ActivityFlexibleUpdateTheme.trailingKicker.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1048);
  v3 = *(v1 + 1080);
  v30 = *(v1 + 1064);
  v31 = v3;
  v4 = *(v1 + 984);
  v5 = *(v1 + 1016);
  v26 = *(v1 + 1000);
  v6 = v26;
  v27 = v5;
  v7 = *(v1 + 1016);
  v8 = *(v1 + 1048);
  v28 = *(v1 + 1032);
  v9 = v28;
  v29 = v8;
  v10 = *(v1 + 920);
  v11 = *(v1 + 952);
  v22 = *(v1 + 936);
  v12 = v22;
  v23 = v11;
  v13 = *(v1 + 952);
  v14 = *(v1 + 984);
  v24 = *(v1 + 968);
  v15 = v24;
  v25 = v14;
  v16 = *(v1 + 920);
  v21[0] = *(v1 + 904);
  v17 = v21[0];
  v21[1] = v16;
  v18 = *(v1 + 1080);
  *(a1 + 160) = v30;
  *(a1 + 176) = v18;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 128) = v9;
  *(a1 + 144) = v2;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  *(a1 + 64) = v15;
  *(a1 + 80) = v4;
  v32 = *(v1 + 1096);
  *(a1 + 192) = *(v1 + 1096);
  *a1 = v17;
  *(a1 + 16) = v10;
  return sub_219F45500(v21, v20, &qword_27CCD95B8);
}

__n128 ActivityFlexibleUpdateTheme.trailingKicker.setter(uint64_t a1)
{
  v16 = *(v1 + 1096);
  v3 = *(v1 + 1080);
  v15[10] = *(v1 + 1064);
  v15[11] = v3;
  v4 = *(v1 + 1016);
  v15[6] = *(v1 + 1000);
  v15[7] = v4;
  v5 = *(v1 + 1048);
  v15[8] = *(v1 + 1032);
  v15[9] = v5;
  v6 = *(v1 + 952);
  v15[2] = *(v1 + 936);
  v15[3] = v6;
  v7 = *(v1 + 984);
  v15[4] = *(v1 + 968);
  v15[5] = v7;
  v8 = *(v1 + 920);
  v15[0] = *(v1 + 904);
  v15[1] = v8;
  sub_219F6409C(v15, &qword_27CCD95B8);
  v9 = *(a1 + 176);
  *(v1 + 1064) = *(a1 + 160);
  *(v1 + 1080) = v9;
  *(v1 + 1096) = *(a1 + 192);
  v10 = *(a1 + 112);
  *(v1 + 1000) = *(a1 + 96);
  *(v1 + 1016) = v10;
  v11 = *(a1 + 144);
  *(v1 + 1032) = *(a1 + 128);
  *(v1 + 1048) = v11;
  v12 = *(a1 + 48);
  *(v1 + 936) = *(a1 + 32);
  *(v1 + 952) = v12;
  v13 = *(a1 + 80);
  *(v1 + 968) = *(a1 + 64);
  *(v1 + 984) = v13;
  result = *(a1 + 16);
  *(v1 + 904) = *a1;
  *(v1 + 920) = result;
  return result;
}

uint64_t ActivityFlexibleUpdateTheme.headline.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1248);
  v3 = *(v1 + 1280);
  v16[10] = *(v1 + 1264);
  v16[11] = v3;
  v17 = *(v1 + 1296);
  v4 = *(v1 + 1184);
  v5 = *(v1 + 1216);
  v16[6] = *(v1 + 1200);
  v16[7] = v5;
  v16[8] = *(v1 + 1232);
  v16[9] = v2;
  v6 = *(v1 + 1120);
  v7 = *(v1 + 1152);
  v16[2] = *(v1 + 1136);
  v16[3] = v7;
  v16[4] = *(v1 + 1168);
  v16[5] = v4;
  v16[0] = *(v1 + 1104);
  v16[1] = v6;
  v8 = *(v1 + 1248);
  v9 = *(v1 + 1280);
  *(a1 + 160) = *(v1 + 1264);
  *(a1 + 176) = v9;
  *(a1 + 192) = *(v1 + 1296);
  v10 = *(v1 + 1184);
  v11 = *(v1 + 1216);
  *(a1 + 96) = *(v1 + 1200);
  *(a1 + 112) = v11;
  *(a1 + 128) = *(v1 + 1232);
  *(a1 + 144) = v8;
  v12 = *(v1 + 1120);
  v13 = *(v1 + 1152);
  *(a1 + 32) = *(v1 + 1136);
  *(a1 + 48) = v13;
  *(a1 + 64) = *(v1 + 1168);
  *(a1 + 80) = v10;
  *a1 = *(v1 + 1104);
  *(a1 + 16) = v12;
  return sub_219F45500(v16, v15, &qword_27CCD95B8);
}

__n128 ActivityFlexibleUpdateTheme.headline.setter(__int128 *a1)
{
  v3 = *(v1 + 1248);
  v4 = *(v1 + 1280);
  v16[10] = *(v1 + 1264);
  v16[11] = v4;
  v17 = *(v1 + 1296);
  v5 = *(v1 + 1184);
  v6 = *(v1 + 1216);
  v16[6] = *(v1 + 1200);
  v16[7] = v6;
  v16[8] = *(v1 + 1232);
  v16[9] = v3;
  v7 = *(v1 + 1120);
  v8 = *(v1 + 1152);
  v16[2] = *(v1 + 1136);
  v16[3] = v8;
  v16[4] = *(v1 + 1168);
  v16[5] = v5;
  v16[0] = *(v1 + 1104);
  v16[1] = v7;
  sub_219F6409C(v16, &qword_27CCD95B8);
  v9 = a1[8];
  *(v1 + 1248) = a1[9];
  v10 = a1[11];
  *(v1 + 1264) = a1[10];
  *(v1 + 1280) = v10;
  v11 = a1[4];
  *(v1 + 1184) = a1[5];
  v12 = a1[7];
  *(v1 + 1200) = a1[6];
  *(v1 + 1216) = v12;
  *(v1 + 1232) = v9;
  v13 = *a1;
  *(v1 + 1120) = a1[1];
  result = a1[2];
  v15 = a1[3];
  *(v1 + 1136) = result;
  *(v1 + 1152) = v15;
  *(v1 + 1168) = v11;
  *(v1 + 1296) = *(a1 + 24);
  *(v1 + 1104) = v13;
  return result;
}

uint64_t ActivityFlexibleUpdateTheme.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1448);
  v3 = *(v1 + 1480);
  v30 = *(v1 + 1464);
  v31 = v3;
  v4 = *(v1 + 1384);
  v5 = *(v1 + 1416);
  v26 = *(v1 + 1400);
  v6 = v26;
  v27 = v5;
  v7 = *(v1 + 1416);
  v8 = *(v1 + 1448);
  v28 = *(v1 + 1432);
  v9 = v28;
  v29 = v8;
  v10 = *(v1 + 1320);
  v11 = *(v1 + 1352);
  v22 = *(v1 + 1336);
  v12 = v22;
  v23 = v11;
  v13 = *(v1 + 1352);
  v14 = *(v1 + 1384);
  v24 = *(v1 + 1368);
  v15 = v24;
  v25 = v14;
  v16 = *(v1 + 1320);
  v21[0] = *(v1 + 1304);
  v17 = v21[0];
  v21[1] = v16;
  v18 = *(v1 + 1480);
  *(a1 + 160) = v30;
  *(a1 + 176) = v18;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 128) = v9;
  *(a1 + 144) = v2;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  *(a1 + 64) = v15;
  *(a1 + 80) = v4;
  v32 = *(v1 + 1496);
  *(a1 + 192) = *(v1 + 1496);
  *a1 = v17;
  *(a1 + 16) = v10;
  return sub_219F45500(v21, v20, &qword_27CCD95B8);
}

__n128 ActivityFlexibleUpdateTheme.body.setter(uint64_t a1)
{
  v16 = *(v1 + 1496);
  v3 = *(v1 + 1480);
  v15[10] = *(v1 + 1464);
  v15[11] = v3;
  v4 = *(v1 + 1416);
  v15[6] = *(v1 + 1400);
  v15[7] = v4;
  v5 = *(v1 + 1448);
  v15[8] = *(v1 + 1432);
  v15[9] = v5;
  v6 = *(v1 + 1352);
  v15[2] = *(v1 + 1336);
  v15[3] = v6;
  v7 = *(v1 + 1384);
  v15[4] = *(v1 + 1368);
  v15[5] = v7;
  v8 = *(v1 + 1320);
  v15[0] = *(v1 + 1304);
  v15[1] = v8;
  sub_219F6409C(v15, &qword_27CCD95B8);
  v9 = *(a1 + 176);
  *(v1 + 1464) = *(a1 + 160);
  *(v1 + 1480) = v9;
  *(v1 + 1496) = *(a1 + 192);
  v10 = *(a1 + 112);
  *(v1 + 1400) = *(a1 + 96);
  *(v1 + 1416) = v10;
  v11 = *(a1 + 144);
  *(v1 + 1432) = *(a1 + 128);
  *(v1 + 1448) = v11;
  v12 = *(a1 + 48);
  *(v1 + 1336) = *(a1 + 32);
  *(v1 + 1352) = v12;
  v13 = *(a1 + 80);
  *(v1 + 1368) = *(a1 + 64);
  *(v1 + 1384) = v13;
  result = *(a1 + 16);
  *(v1 + 1304) = *a1;
  *(v1 + 1320) = result;
  return result;
}

uint64_t ActivityFlexibleUpdateTheme.caption.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1648);
  v3 = *(v1 + 1680);
  v16[10] = *(v1 + 1664);
  v16[11] = v3;
  v17 = *(v1 + 1696);
  v4 = *(v1 + 1584);
  v5 = *(v1 + 1616);
  v16[6] = *(v1 + 1600);
  v16[7] = v5;
  v16[8] = *(v1 + 1632);
  v16[9] = v2;
  v6 = *(v1 + 1520);
  v7 = *(v1 + 1552);
  v16[2] = *(v1 + 1536);
  v16[3] = v7;
  v16[4] = *(v1 + 1568);
  v16[5] = v4;
  v16[0] = *(v1 + 1504);
  v16[1] = v6;
  v8 = *(v1 + 1648);
  v9 = *(v1 + 1680);
  *(a1 + 160) = *(v1 + 1664);
  *(a1 + 176) = v9;
  *(a1 + 192) = *(v1 + 1696);
  v10 = *(v1 + 1584);
  v11 = *(v1 + 1616);
  *(a1 + 96) = *(v1 + 1600);
  *(a1 + 112) = v11;
  *(a1 + 128) = *(v1 + 1632);
  *(a1 + 144) = v8;
  v12 = *(v1 + 1520);
  v13 = *(v1 + 1552);
  *(a1 + 32) = *(v1 + 1536);
  *(a1 + 48) = v13;
  *(a1 + 64) = *(v1 + 1568);
  *(a1 + 80) = v10;
  *a1 = *(v1 + 1504);
  *(a1 + 16) = v12;
  return sub_219F45500(v16, v15, &qword_27CCD95B8);
}

__n128 ActivityFlexibleUpdateTheme.caption.setter(__int128 *a1)
{
  v3 = *(v1 + 1648);
  v4 = *(v1 + 1680);
  v16[10] = *(v1 + 1664);
  v16[11] = v4;
  v17 = *(v1 + 1696);
  v5 = *(v1 + 1584);
  v6 = *(v1 + 1616);
  v16[6] = *(v1 + 1600);
  v16[7] = v6;
  v16[8] = *(v1 + 1632);
  v16[9] = v3;
  v7 = *(v1 + 1520);
  v8 = *(v1 + 1552);
  v16[2] = *(v1 + 1536);
  v16[3] = v8;
  v16[4] = *(v1 + 1568);
  v16[5] = v5;
  v16[0] = *(v1 + 1504);
  v16[1] = v7;
  sub_219F6409C(v16, &qword_27CCD95B8);
  v9 = a1[8];
  *(v1 + 1648) = a1[9];
  v10 = a1[11];
  *(v1 + 1664) = a1[10];
  *(v1 + 1680) = v10;
  v11 = a1[4];
  *(v1 + 1584) = a1[5];
  v12 = a1[7];
  *(v1 + 1600) = a1[6];
  *(v1 + 1616) = v12;
  *(v1 + 1632) = v9;
  v13 = *a1;
  *(v1 + 1520) = a1[1];
  result = a1[2];
  v15 = a1[3];
  *(v1 + 1536) = result;
  *(v1 + 1552) = v15;
  *(v1 + 1568) = v11;
  *(v1 + 1696) = *(a1 + 24);
  *(v1 + 1504) = v13;
  return result;
}

uint64_t ActivityFlexibleUpdateTheme.trailingGraphic.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 1704), 0x2C0uLL);
  memcpy(a1, (v1 + 1704), 0x2C0uLL);
  return sub_219F45500(__dst, v4, &qword_27CCDB1B8);
}

void *ActivityFlexibleUpdateTheme.trailingGraphic.setter(const void *a1)
{
  memcpy(__dst, (v1 + 1704), 0x2C0uLL);
  sub_219F6409C(__dst, &qword_27CCDB1B8);
  return memcpy((v1 + 1704), a1, 0x2C0uLL);
}

uint64_t ActivityFlexibleUpdateTheme.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v4 = v2[53];
  v193 = v2[52];
  v194 = v4;
  v195 = v2[54];
  v196 = *(v2 + 110);
  v5 = v2[49];
  v189 = v2[48];
  v190 = v5;
  v6 = v2[51];
  v191 = v2[50];
  v192 = v6;
  v7 = v2[45];
  v185 = v2[44];
  v186 = v7;
  v8 = v2[47];
  v187 = v2[46];
  v188 = v8;
  v9 = *(v2 + 111);
  v10 = *(v2 + 112);
  v11 = *(v2 + 1048);
  v205 = *(v2 + 1032);
  v206 = v11;
  v207 = *(v2 + 1064);
  v208 = *(v2 + 135);
  v12 = *(v2 + 984);
  v201 = *(v2 + 968);
  v202 = v12;
  v13 = *(v2 + 1016);
  v203 = *(v2 + 1000);
  v204 = v13;
  v14 = *(v2 + 920);
  v197 = *(v2 + 904);
  v198 = v14;
  v15 = *(v2 + 952);
  v199 = *(v2 + 936);
  v200 = v15;
  v16 = *(v2 + 136);
  v17 = *(v2 + 137);
  v18 = v2[78];
  v217 = v2[77];
  v218 = v18;
  v219 = v2[79];
  v220 = *(v2 + 160);
  v19 = v2[74];
  v213 = v2[73];
  v214 = v19;
  v20 = v2[76];
  v215 = v2[75];
  v216 = v20;
  v21 = v2[70];
  v209 = v2[69];
  v210 = v21;
  v22 = v2[72];
  v211 = v2[71];
  v212 = v22;
  v70 = *(v2 + 161);
  v71 = *(v2 + 162);
  v23 = *(v2 + 1448);
  v229 = *(v2 + 1432);
  v230 = v23;
  v231 = *(v2 + 1464);
  v232 = *(v2 + 185);
  v24 = *(v2 + 1384);
  v225 = *(v2 + 1368);
  v226 = v24;
  v25 = *(v2 + 1416);
  v227 = *(v2 + 1400);
  v228 = v25;
  v26 = *(v2 + 1320);
  v221 = *(v2 + 1304);
  v222 = v26;
  v27 = *(v2 + 1352);
  v223 = *(v2 + 1336);
  v224 = v27;
  v72 = *(v2 + 186);
  v28 = *(v2 + 187);
  v29 = v2[103];
  v241 = v2[102];
  v242 = v29;
  v243 = v2[104];
  v244 = *(v2 + 210);
  v30 = v2[99];
  v237 = v2[98];
  v238 = v30;
  v31 = v2[101];
  v239 = v2[100];
  v240 = v31;
  v32 = v2[95];
  v233 = v2[94];
  v234 = v32;
  v33 = v2[97];
  v235 = v2[96];
  v236 = v33;
  v73 = *(v2 + 211);
  v34 = *(v2 + 212);
  memcpy(v245, v2 + 1704, sizeof(v245));
  memcpy(v246, v2, 0x2C0uLL);
  if (sub_219FB2448(v246) == 1)
  {
    goto LABEL_6;
  }

  sub_21A0E6DCC();
  memcpy(__dst, v2, 0x160uLL);
  if (sub_219FB24B0(__dst) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_21A0E6DCC();
    v35 = v2[9];
    v182 = v2[8];
    v183 = v35;
    v36 = v2[11];
    v184 = v2[10];
    v37 = v2[5];
    v178 = v2[4];
    v179 = v37;
    v38 = v2[6];
    v181 = v2[7];
    v180 = v38;
    v39 = v2[1];
    v174 = *v2;
    v175 = v39;
    v40 = v2[2];
    v177 = v2[3];
    v176 = v40;
    v41 = v2[18];
    v42 = v2[20];
    v43 = v2[21];
    v171 = v2[19];
    v172 = v42;
    v173 = v43;
    v44 = v2[14];
    v45 = v2[16];
    v46 = v2[17];
    v167 = v2[15];
    v168 = v45;
    v170 = v41;
    v169 = v46;
    v47 = v2[12];
    v48 = v2[13];
    v163 = v36;
    v164 = v47;
    v166 = v44;
    v165 = v48;
    sub_21A02EB6C(v3);
    sub_21A02EB6C(v3);
  }

  memcpy(v96, v2 + 22, sizeof(v96));
  if (sub_219FB24B0(v96) == 1)
  {
LABEL_6:
    sub_21A0E6DCC();
  }

  else
  {
    sub_21A0E6DCC();
    v49 = v2[31];
    v160 = v2[30];
    v161 = v49;
    v50 = v2[33];
    v162 = v2[32];
    v51 = v2[27];
    v156 = v2[26];
    v157 = v51;
    v52 = v2[28];
    v159 = v2[29];
    v158 = v52;
    v53 = v2[23];
    v152 = v2[22];
    v153 = v53;
    v54 = v2[24];
    v155 = v2[25];
    v154 = v54;
    v55 = v2[40];
    v56 = v2[42];
    v57 = v2[43];
    v149 = v2[41];
    v150 = v56;
    v151 = v57;
    v58 = v2[36];
    v59 = v2[38];
    v60 = v2[39];
    v145 = v2[37];
    v146 = v59;
    v148 = v55;
    v147 = v60;
    v61 = v2[34];
    v62 = v2[35];
    v141 = v50;
    v142 = v61;
    v144 = v58;
    v143 = v62;
    sub_21A02EB6C(v3);
    sub_21A02EB6C(v3);
  }

  v63 = v2[53];
  v92[8] = v2[52];
  v92[9] = v63;
  v92[10] = v2[54];
  v64 = *(v2 + 110);
  v65 = v2[49];
  v92[4] = v2[48];
  v92[5] = v65;
  v66 = v2[51];
  v92[6] = v2[50];
  v92[7] = v66;
  v67 = v2[45];
  v92[0] = v2[44];
  v92[1] = v67;
  v68 = v2[47];
  v92[2] = v2[46];
  v92[3] = v68;
  v93 = v64;
  v94 = v9;
  v95 = v10;
  if (sub_219F63C20(v92) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    __dst[8] = v193;
    __dst[9] = v194;
    __dst[10] = v195;
    *&__dst[11] = v196;
    __dst[4] = v189;
    __dst[5] = v190;
    __dst[6] = v191;
    __dst[7] = v192;
    __dst[0] = v185;
    __dst[1] = v186;
    __dst[2] = v187;
    __dst[3] = v188;
    sub_21A0E6DCC();
    *(&__dst[11] + 1) = v9;
    *&__dst[12] = v10;
    ActivityTextTheme.hash(into:)(v3);
    sub_219F91544(v3, v9);
    sub_219F6AF9C(v3, v10);
  }

  v88[8] = v205;
  v88[9] = v206;
  v88[10] = v207;
  v88[4] = v201;
  v88[5] = v202;
  v88[6] = v203;
  v88[7] = v204;
  v88[0] = v197;
  v88[1] = v198;
  v88[2] = v199;
  v88[3] = v200;
  v89 = v208;
  v90 = v16;
  v91 = v17;
  if (sub_219F63C20(v88) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    __dst[8] = v205;
    __dst[9] = v206;
    __dst[10] = v207;
    *&__dst[11] = v208;
    __dst[4] = v201;
    __dst[5] = v202;
    __dst[6] = v203;
    __dst[7] = v204;
    __dst[0] = v197;
    __dst[1] = v198;
    __dst[2] = v199;
    __dst[3] = v200;
    sub_21A0E6DCC();
    *(&__dst[11] + 1) = v16;
    *&__dst[12] = v17;
    ActivityTextTheme.hash(into:)(v3);
    sub_219F91544(v3, v16);
    sub_219F6AF9C(v3, v17);
  }

  v84[8] = v217;
  v84[9] = v218;
  v84[10] = v219;
  v84[4] = v213;
  v84[5] = v214;
  v84[6] = v215;
  v84[7] = v216;
  v84[0] = v209;
  v84[1] = v210;
  v84[2] = v211;
  v84[3] = v212;
  v85 = v220;
  v86 = v70;
  v87 = v71;
  if (sub_219F63C20(v84) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    __dst[8] = v217;
    __dst[9] = v218;
    __dst[10] = v219;
    *&__dst[11] = v220;
    __dst[4] = v213;
    __dst[5] = v214;
    __dst[6] = v215;
    __dst[7] = v216;
    __dst[0] = v209;
    __dst[1] = v210;
    __dst[2] = v211;
    __dst[3] = v212;
    sub_21A0E6DCC();
    *(&__dst[11] + 1) = v70;
    *&__dst[12] = v71;
    ActivityTextTheme.hash(into:)(v3);
    sub_219F91544(v3, v70);
    sub_219F6AF9C(v3, v71);
  }

  v80[8] = v229;
  v80[9] = v230;
  v80[10] = v231;
  v80[4] = v225;
  v80[5] = v226;
  v80[6] = v227;
  v80[7] = v228;
  v80[0] = v221;
  v80[1] = v222;
  v80[2] = v223;
  v80[3] = v224;
  v81 = v232;
  v82 = v72;
  v83 = v28;
  if (sub_219F63C20(v80) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    __dst[8] = v229;
    __dst[9] = v230;
    __dst[10] = v231;
    *&__dst[11] = v232;
    __dst[4] = v225;
    __dst[5] = v226;
    __dst[6] = v227;
    __dst[7] = v228;
    __dst[0] = v221;
    __dst[1] = v222;
    __dst[2] = v223;
    __dst[3] = v224;
    sub_21A0E6DCC();
    *(&__dst[11] + 1) = v72;
    *&__dst[12] = v28;
    ActivityTextTheme.hash(into:)(v3);
    sub_219F91544(v3, v72);
    sub_219F6AF9C(v3, v28);
  }

  v76[8] = v241;
  v76[9] = v242;
  v76[10] = v243;
  v76[4] = v237;
  v76[5] = v238;
  v76[6] = v239;
  v76[7] = v240;
  v76[0] = v233;
  v76[1] = v234;
  v76[2] = v235;
  v76[3] = v236;
  v77 = v244;
  v78 = v73;
  v79 = v34;
  if (sub_219F63C20(v76) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    __dst[8] = v241;
    __dst[9] = v242;
    __dst[10] = v243;
    *&__dst[11] = v244;
    __dst[4] = v237;
    __dst[5] = v238;
    __dst[6] = v239;
    __dst[7] = v240;
    __dst[0] = v233;
    __dst[1] = v234;
    __dst[2] = v235;
    __dst[3] = v236;
    sub_21A0E6DCC();
    *(&__dst[11] + 1) = v73;
    *&__dst[12] = v34;
    ActivityTextTheme.hash(into:)(v3);
    sub_219F91544(v3, v73);
    sub_219F6AF9C(v3, v34);
  }

  memcpy(__dst, v245, sizeof(__dst));
  if (sub_219FB2448(__dst) == 1)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  memcpy(v96, v245, sizeof(v96));
  if (sub_219FB24B0(v96) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_21A0E6DCC();
    v138 = v245[8];
    v139 = v245[9];
    v140 = v245[10];
    v134 = v245[4];
    v135 = v245[5];
    v137 = v245[7];
    v136 = v245[6];
    v130 = v245[0];
    v131 = v245[1];
    v133 = v245[3];
    v132 = v245[2];
    v127 = v245[19];
    v128 = v245[20];
    v129 = v245[21];
    v123 = v245[15];
    v124 = v245[16];
    v126 = v245[18];
    v125 = v245[17];
    v119 = v245[11];
    v120 = v245[12];
    v122 = v245[14];
    v121 = v245[13];
    sub_21A02EB6C(v3);
    sub_21A02EB6C(v3);
  }

  memcpy(v74, &v245[22], sizeof(v74));
  if (sub_219FB24B0(v74) == 1)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  v116 = v245[30];
  v117 = v245[31];
  v118 = v245[32];
  v112 = v245[26];
  v113 = v245[27];
  v115 = v245[29];
  v114 = v245[28];
  v108 = v245[22];
  v109 = v245[23];
  v111 = v245[25];
  v110 = v245[24];
  v105 = v245[41];
  v106 = v245[42];
  v107 = v245[43];
  v101 = v245[37];
  v102 = v245[38];
  v104 = v245[40];
  v103 = v245[39];
  v97 = v245[33];
  v98 = v245[34];
  v100 = v245[36];
  v99 = v245[35];
  sub_21A02EB6C(v3);
  return sub_21A02EB6C(v3);
}

uint64_t ActivityFlexibleUpdateTheme.hashValue.getter()
{
  sub_21A0E6DAC();
  ActivityFlexibleUpdateTheme.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0DC3B4()
{
  sub_21A0E6DAC();
  ActivityFlexibleUpdateTheme.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0DC3F8()
{
  sub_21A0E6DAC();
  ActivityFlexibleUpdateTheme.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t ActivityFlexibleUpdate.Graphic.size.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ActivityFlexibleUpdate.Graphic.size.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t sub_21A0DC63C()
{
  v1 = 1702521203;
  if (*v0 != 1)
  {
    v1 = 0x6567646162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_21A0DC688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A0E25D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A0DC6B0(uint64_t a1)
{
  v2 = sub_21A0E1708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0DC6EC(uint64_t a1)
{
  v2 = sub_21A0E1708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFlexibleUpdate.Graphic.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE1E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E1708();
  sub_21A0E6EAC();
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  sub_21A0E17F8(&qword_27CCDAF48);
  sub_21A0E6BBC();
  if (!v2)
  {
    v14 = *(v3 + *(type metadata accessor for ActivityFlexibleUpdate.Graphic(0) + 20));
    v13 = 1;
    sub_21A0E17A4();
    sub_21A0E6BBC();
    v12 = 2;
    sub_21A0E6B6C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ActivityFlexibleUpdate.Graphic.hash(into:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v23 - v14;
  sub_219FAB16C(a1);
  v16 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  sub_21A0E626C();

  sub_219F45500(v1 + *(v16 + 24), v15, &qword_27CCD98D8);
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    return sub_21A0E6DCC();
  }

  sub_219F73094(v15, v11);
  sub_21A0E6DCC();
  ActivityAsset.hash(into:)(a1);
  sub_219F91544(a1, *&v11[*(v3 + 28)]);
  v18 = *&v11[*(v3 + 32)];
  MEMORY[0x21CED2490](*(v18 + 16));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v21 = *(v24 + 72);
    do
    {
      sub_219F45500(v20, v6, &qword_27CCD98C8);
      v22 = sub_219F73104();
      sub_219FC5A20(a1, v3, v22);
      sub_219F6409C(v6, &qword_27CCD98C8);
      v20 += v21;
      --v19;
    }

    while (v19);
  }

  return sub_219F6409C(v11, &qword_27CCD98D0);
}

uint64_t sub_21A0DCC80(void (*a1)(_BYTE *))
{
  sub_21A0E6DAC();
  a1(v3);
  return sub_21A0E6DFC();
}

uint64_t ActivityFlexibleUpdate.Graphic.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v27 = &v25 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE1F8);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v8 + 56);
  v30 = *(v16 + 24);
  v19(&v18[v30], 1, 1, v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E1708();
  v20 = v29;
  sub_21A0E6E7C();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_219F6409C(&v18[v30], &qword_27CCD98D8);
  }

  else
  {
    v34 = 0;
    v21 = sub_21A0E17F8(&qword_27CCDAF70);
    sub_21A0E6ADC();
    v29 = v21;
    sub_219F73094(v27, v18);
    v32 = 1;
    sub_21A0E18CC();
    sub_21A0E6ADC();
    v18[*(v14 + 20)] = v33;
    v31 = 2;
    v22 = v6;
    v23 = v28;
    sub_21A0E6A8C();
    (*(v26 + 8))(v13, v23);
    sub_219FF0668(v22, &v18[v30], &qword_27CCD98D8);
    sub_21A0E1920(v18, v25);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_21A0E11BC(v18);
  }
}

uint64_t sub_21A0DD12C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_21A0E6DAC();
  a3(v5);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0DD190(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_21A0E6DAC();
  a4(v6);
  return sub_21A0E6DFC();
}

NewsLiveActivitiesCore::ActivityFlexibleUpdate::GraphicSize_optional __swiftcall ActivityFlexibleUpdate.GraphicSize.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21A0E6A0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActivityFlexibleUpdate.GraphicSize.rawValue.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t ActivityFlexibleUpdateTheme.Graphic.asset.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x160uLL);
  memcpy(a1, v1, 0x160uLL);
  return sub_219F45500(__dst, v4, &qword_27CCDA9B0);
}

void *ActivityFlexibleUpdateTheme.Graphic.asset.setter(const void *a1)
{
  memcpy(__dst, v1, 0x160uLL);
  sub_219F6409C(__dst, &qword_27CCDA9B0);
  return memcpy(v1, a1, 0x160uLL);
}

uint64_t ActivityFlexibleUpdateTheme.Graphic.badge.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 352), 0x160uLL);
  memcpy(a1, (v1 + 352), 0x160uLL);
  return sub_219F45500(__dst, v4, &qword_27CCDA9B0);
}

void *ActivityFlexibleUpdateTheme.Graphic.badge.setter(const void *a1)
{
  memcpy(__dst, (v1 + 352), 0x160uLL);
  sub_219F6409C(__dst, &qword_27CCDA9B0);
  return memcpy((v1 + 352), a1, 0x160uLL);
}

uint64_t sub_21A0DD50C()
{
  if (*v0)
  {
    return 0x6567646162;
  }

  else
  {
    return 0x7465737361;
  }
}

uint64_t sub_21A0DD538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v6 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567646162 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

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

uint64_t sub_21A0DD60C(uint64_t a1)
{
  v2 = sub_21A0E1984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0DD648(uint64_t a1)
{
  v2 = sub_21A0E1984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFlexibleUpdateTheme.Graphic.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE208);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11[-v7 - 8];
  memcpy(v15, v1, sizeof(v15));
  memcpy(v16, (v1 + 352), 0x160uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F45500(v15, v14, &qword_27CCDA9B0);
  sub_21A0E1984();
  sub_21A0E6EAC();
  memcpy(v14, v15, sizeof(v14));
  v16[375] = 0;
  sub_21A0E19D8();
  sub_21A0E6B6C();
  memcpy(v13, v14, sizeof(v13));
  sub_219F6409C(v13, &qword_27CCDA9B0);
  if (!v2)
  {
    memcpy(v12, v16, sizeof(v12));
    v16[374] = 1;
    sub_219F45500(v16, v11, &qword_27CCDA9B0);
    sub_21A0E6B6C();
    memcpy(v11, v12, sizeof(v11));
    sub_219F6409C(v11, &qword_27CCDA9B0);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ActivityFlexibleUpdateTheme.Graphic.hash(into:)(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  if (sub_219FB24B0(__dst) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_21A0E6DCC();
    v3 = v1[9];
    v74 = v1[8];
    v75 = v3;
    v4 = v1[11];
    v76 = v1[10];
    v5 = v1[5];
    v70 = v1[4];
    v71 = v5;
    v6 = v1[7];
    v72 = v1[6];
    v73 = v6;
    v7 = v1[1];
    v66 = *v1;
    v67 = v7;
    v8 = v1[3];
    v68 = v1[2];
    v69 = v8;
    v9 = v1[18];
    v10 = v1[20];
    v11 = v1[21];
    v63 = v1[19];
    v64 = v10;
    v65 = v11;
    v12 = v1[14];
    v13 = v1[16];
    v14 = v1[17];
    v59 = v1[15];
    v60 = v13;
    v61 = v14;
    v62 = v9;
    v15 = v1[12];
    v16 = v1[13];
    v55 = v4;
    v56 = v15;
    v57 = v16;
    v58 = v12;
    sub_21A02EB6C(a1);
    sub_21A02EB6C(a1);
  }

  memcpy(v32, v1 + 22, sizeof(v32));
  if (sub_219FB24B0(v32) == 1)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  v18 = v1[31];
  v52 = v1[30];
  v53 = v18;
  v19 = v1[33];
  v54 = v1[32];
  v20 = v1[27];
  v48 = v1[26];
  v49 = v20;
  v21 = v1[29];
  v50 = v1[28];
  v51 = v21;
  v22 = v1[23];
  v44 = v1[22];
  v45 = v22;
  v23 = v1[25];
  v46 = v1[24];
  v47 = v23;
  v24 = v1[40];
  v25 = v1[42];
  v26 = v1[43];
  v41 = v1[41];
  v42 = v25;
  v43 = v26;
  v27 = v1[36];
  v28 = v1[38];
  v29 = v1[39];
  v37 = v1[37];
  v38 = v28;
  v39 = v29;
  v40 = v24;
  v30 = v1[34];
  v31 = v1[35];
  v33 = v19;
  v34 = v30;
  v35 = v31;
  v36 = v27;
  sub_21A02EB6C(a1);
  return sub_21A02EB6C(a1);
}

uint64_t ActivityFlexibleUpdateTheme.Graphic.hashValue.getter()
{
  sub_21A0E6DAC();
  memcpy(__dst, v0, sizeof(__dst));
  if (sub_219FB24B0(__dst) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_21A0E6DCC();
    v1 = v0[8];
    v2 = v0[9];
    v3 = v0[6];
    v78 = v0[7];
    v79 = v1;
    v4 = v0[10];
    v5 = v0[11];
    v80 = v2;
    v81 = v4;
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[2];
    v74 = v0[3];
    v75 = v6;
    v76 = v7;
    v77 = v3;
    v9 = *v0;
    v72 = v0[1];
    v73 = v8;
    v10 = v0[18];
    v11 = v0[20];
    v12 = v0[21];
    v68 = v0[19];
    v69 = v11;
    v70 = v12;
    v71 = v9;
    v13 = v0[14];
    v14 = v0[16];
    v15 = v0[17];
    v64 = v0[15];
    v65 = v14;
    v66 = v15;
    v67 = v10;
    v16 = v0[12];
    v17 = v0[13];
    v60 = v5;
    v61 = v16;
    v62 = v17;
    v63 = v13;
    sub_21A02EB6C(v37);
    sub_21A02EB6C(v37);
  }

  memcpy(v36, v0 + 22, sizeof(v36));
  if (sub_219FB24B0(v36) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_21A0E6DCC();
    v18 = v0[30];
    v19 = v0[31];
    v20 = v0[28];
    v56 = v0[29];
    v57 = v18;
    v21 = v0[32];
    v22 = v0[33];
    v58 = v19;
    v59 = v21;
    v23 = v0[26];
    v24 = v0[27];
    v25 = v0[24];
    v52 = v0[25];
    v53 = v23;
    v54 = v24;
    v55 = v20;
    v26 = v0[22];
    v50 = v0[23];
    v51 = v25;
    v27 = v0[40];
    v28 = v0[42];
    v29 = v0[43];
    v46 = v0[41];
    v47 = v28;
    v48 = v29;
    v49 = v26;
    v30 = v0[36];
    v31 = v0[38];
    v32 = v0[39];
    v42 = v0[37];
    v43 = v31;
    v44 = v32;
    v45 = v27;
    v33 = v0[34];
    v34 = v0[35];
    v38 = v22;
    v39 = v33;
    v40 = v34;
    v41 = v30;
    sub_21A02EB6C(v37);
    sub_21A02EB6C(v37);
  }

  return sub_21A0E6DFC();
}

uint64_t ActivityFlexibleUpdateTheme.Graphic.init(from:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v13 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE220);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14[-v8 - 8];
  sub_219FB2474(v23);
  memcpy(v22, v23, 0x160uLL);
  memcpy(&v22[352], v23, 0x160uLL);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_21A0E1984();
  sub_21A0E6E7C();
  if (!v2)
  {
    v10 = v6;
    v11 = v13;
    v23[375] = 0;
    sub_21A0E1A5C();
    sub_21A0E6A8C();
    memcpy(v18, v20, sizeof(v18));
    memcpy(v19, v22, sizeof(v19));
    sub_219F6409C(v19, &qword_27CCDA9B0);
    memcpy(v22, v18, 0x160uLL);
    v23[374] = 1;
    sub_21A0E6A8C();
    (*(v10 + 8))(v9, v5);
    memcpy(v14, v17, sizeof(v14));
    memcpy(v15, &v22[352], sizeof(v15));
    sub_219F6409C(v15, &qword_27CCDA9B0);
    memcpy(&v22[352], v14, 0x160uLL);
    memcpy(v16, v22, sizeof(v16));
    memcpy(v11, v22, 0x2C0uLL);
    sub_21A0E1AB0(v16, v21);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  memcpy(v21, v22, sizeof(v21));
  return sub_21A0E1A2C(v21);
}

uint64_t sub_21A0DDF70(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  if (sub_219FB24B0(__dst) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_21A0E6DCC();
    v3 = v1[9];
    v74 = v1[8];
    v75 = v3;
    v4 = v1[11];
    v76 = v1[10];
    v5 = v1[5];
    v70 = v1[4];
    v71 = v5;
    v6 = v1[7];
    v72 = v1[6];
    v73 = v6;
    v7 = v1[1];
    v66 = *v1;
    v67 = v7;
    v8 = v1[3];
    v68 = v1[2];
    v69 = v8;
    v9 = v1[18];
    v10 = v1[20];
    v11 = v1[21];
    v63 = v1[19];
    v64 = v10;
    v65 = v11;
    v12 = v1[14];
    v13 = v1[16];
    v14 = v1[17];
    v59 = v1[15];
    v60 = v13;
    v61 = v14;
    v62 = v9;
    v15 = v1[12];
    v16 = v1[13];
    v55 = v4;
    v56 = v15;
    v57 = v16;
    v58 = v12;
    sub_21A02EB6C(a1);
    sub_21A02EB6C(a1);
  }

  memcpy(v32, v1 + 22, sizeof(v32));
  if (sub_219FB24B0(v32) == 1)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  v18 = v1[31];
  v52 = v1[30];
  v53 = v18;
  v19 = v1[33];
  v54 = v1[32];
  v20 = v1[27];
  v48 = v1[26];
  v49 = v20;
  v21 = v1[29];
  v50 = v1[28];
  v51 = v21;
  v22 = v1[23];
  v44 = v1[22];
  v45 = v22;
  v23 = v1[25];
  v46 = v1[24];
  v47 = v23;
  v24 = v1[40];
  v25 = v1[42];
  v26 = v1[43];
  v41 = v1[41];
  v42 = v25;
  v43 = v26;
  v27 = v1[36];
  v28 = v1[38];
  v29 = v1[39];
  v37 = v1[37];
  v38 = v28;
  v39 = v29;
  v40 = v24;
  v30 = v1[34];
  v31 = v1[35];
  v33 = v19;
  v34 = v30;
  v35 = v31;
  v36 = v27;
  sub_21A02EB6C(a1);
  return sub_21A02EB6C(a1);
}

uint64_t sub_21A0DE104()
{
  sub_21A0E6DAC();
  memcpy(__dst, v0, sizeof(__dst));
  if (sub_219FB24B0(__dst) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_21A0E6DCC();
    v1 = v0[8];
    v2 = v0[9];
    v3 = v0[6];
    v78 = v0[7];
    v79 = v1;
    v4 = v0[10];
    v5 = v0[11];
    v80 = v2;
    v81 = v4;
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[2];
    v74 = v0[3];
    v75 = v6;
    v76 = v7;
    v77 = v3;
    v9 = *v0;
    v72 = v0[1];
    v73 = v8;
    v10 = v0[18];
    v11 = v0[20];
    v12 = v0[21];
    v68 = v0[19];
    v69 = v11;
    v70 = v12;
    v71 = v9;
    v13 = v0[14];
    v14 = v0[16];
    v15 = v0[17];
    v64 = v0[15];
    v65 = v14;
    v66 = v15;
    v67 = v10;
    v16 = v0[12];
    v17 = v0[13];
    v60 = v5;
    v61 = v16;
    v62 = v17;
    v63 = v13;
    sub_21A02EB6C(v37);
    sub_21A02EB6C(v37);
  }

  memcpy(v36, v0 + 22, sizeof(v36));
  if (sub_219FB24B0(v36) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_21A0E6DCC();
    v18 = v0[30];
    v19 = v0[31];
    v20 = v0[28];
    v56 = v0[29];
    v57 = v18;
    v21 = v0[32];
    v22 = v0[33];
    v58 = v19;
    v59 = v21;
    v23 = v0[26];
    v24 = v0[27];
    v25 = v0[24];
    v52 = v0[25];
    v53 = v23;
    v54 = v24;
    v55 = v20;
    v26 = v0[22];
    v50 = v0[23];
    v51 = v25;
    v27 = v0[40];
    v28 = v0[42];
    v29 = v0[43];
    v46 = v0[41];
    v47 = v28;
    v48 = v29;
    v49 = v26;
    v30 = v0[36];
    v31 = v0[38];
    v32 = v0[39];
    v42 = v0[37];
    v43 = v31;
    v44 = v32;
    v45 = v27;
    v33 = v0[34];
    v34 = v0[35];
    v38 = v22;
    v39 = v33;
    v40 = v34;
    v41 = v30;
    sub_21A02EB6C(v37);
    sub_21A02EB6C(v37);
  }

  return sub_21A0E6DFC();
}

BOOL _s22NewsLiveActivitiesCore27ActivityFlexibleUpdateThemeV7GraphicV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v21, v5 + 352, sizeof(v21));
  memcpy(v22, v4, sizeof(v22));
  memcpy(v23, (v4 + 352), sizeof(v23));
  memcpy(v19, v5, 0x160uLL);
  memcpy(&v19[352], v4, 0x160uLL);
  memcpy(v24, v5, sizeof(v24));
  if (sub_219FB24B0(v24) == 1)
  {
    memcpy(v17, v4, 0x160uLL);
    if (sub_219FB24B0(v17) != 1)
    {
      sub_219F45500(__dst, v18, &qword_27CCDA9B0);
      v7 = v22;
      v8 = v18;
LABEL_15:
      sub_219F45500(v7, v8, &qword_27CCDA9B0);
      goto LABEL_16;
    }

    memcpy(v18, v5, sizeof(v18));
    sub_219F45500(__dst, v16, &qword_27CCDA9B0);
    sub_219F45500(v22, v16, &qword_27CCDA9B0);
    sub_219F6409C(v18, &qword_27CCDA9B0);
LABEL_8:
    memcpy(v19, v21, 0x160uLL);
    memcpy(&v19[352], v23, 0x160uLL);
    memcpy(v18, v21, sizeof(v18));
    if (sub_219FB24B0(v18) == 1)
    {
      memcpy(v17, &v19[352], 0x160uLL);
      if (sub_219FB24B0(v17) == 1)
      {
        memcpy(v16, v19, sizeof(v16));
        sub_219F45500(v21, __src, &qword_27CCDA9B0);
        sub_219F45500(v23, __src, &qword_27CCDA9B0);
        sub_219F6409C(v16, &qword_27CCDA9B0);
        return 1;
      }

      sub_219F45500(v21, v16, &qword_27CCDA9B0);
      v7 = v23;
      v8 = v16;
      goto LABEL_15;
    }

    memcpy(v16, v19, sizeof(v16));
    memcpy(__src, v19, sizeof(__src));
    memcpy(v17, &v19[352], 0x160uLL);
    if (sub_219FB24B0(v17) == 1)
    {
      memcpy(v14, v19, sizeof(v14));
      sub_219F45500(v21, v13, &qword_27CCDA9B0);
      sub_219F45500(v23, v13, &qword_27CCDA9B0);
      sub_219F45500(v16, v13, &qword_27CCDA9B0);
      v6 = v14;
      goto LABEL_13;
    }

    memcpy(v14, &v19[352], sizeof(v14));
    sub_219F45500(v21, v13, &qword_27CCDA9B0);
    sub_219F45500(v23, v13, &qword_27CCDA9B0);
    sub_219F45500(v16, v13, &qword_27CCDA9B0);
    v11 = _s22NewsLiveActivitiesCore18ActivityAssetThemeV2eeoiySbAC_ACtFZ_0(__src, v14);
    memcpy(v12, v14, sizeof(v12));
    sub_21A02F8BC(v12);
    memcpy(v13, __src, sizeof(v13));
    sub_21A02F8BC(v13);
    memcpy(v14, v19, sizeof(v14));
    sub_219F6409C(v14, &qword_27CCDA9B0);
    return v11;
  }

  memcpy(v18, v5, sizeof(v18));
  memcpy(v16, v5, sizeof(v16));
  memcpy(v17, v4, 0x160uLL);
  if (sub_219FB24B0(v17) == 1)
  {
    memcpy(__src, v5, sizeof(__src));
    sub_219F45500(__dst, v14, &qword_27CCDA9B0);
    sub_219F45500(v22, v14, &qword_27CCDA9B0);
    sub_219F45500(v18, v14, &qword_27CCDA9B0);
    v6 = __src;
LABEL_13:
    sub_21A02F8BC(v6);
LABEL_16:
    memcpy(v17, v19, sizeof(v17));
    sub_219F6409C(v17, &qword_27CCDE290);
    return 0;
  }

  memcpy(__src, v4, sizeof(__src));
  sub_219F45500(__dst, v14, &qword_27CCDA9B0);
  sub_219F45500(v22, v14, &qword_27CCDA9B0);
  sub_219F45500(v18, v14, &qword_27CCDA9B0);
  v9 = _s22NewsLiveActivitiesCore18ActivityAssetThemeV2eeoiySbAC_ACtFZ_0(v16, __src);
  memcpy(v13, __src, sizeof(v13));
  sub_21A02F8BC(v13);
  memcpy(v14, v16, sizeof(v14));
  sub_21A02F8BC(v14);
  memcpy(__src, v5, sizeof(__src));
  sub_219F6409C(__src, &qword_27CCDA9B0);
  if (v9)
  {
    goto LABEL_8;
  }

  return 0;
}

BOOL _s22NewsLiveActivitiesCore27ActivityFlexibleUpdateThemeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  memcpy(v129, v2, sizeof(v129));
  v6 = v5[55];
  v140 = v5[54];
  v141 = v6;
  v142 = *(v5 + 112);
  v7 = v5[51];
  v136 = v5[50];
  v137 = v7;
  v8 = v5[52];
  v139 = v5[53];
  v138 = v8;
  v9 = v5[47];
  v132 = v5[46];
  v133 = v9;
  v10 = v5[48];
  v135 = v5[49];
  v134 = v10;
  v11 = v5[44];
  v131 = v5[45];
  v130 = v11;
  v12 = *(v5 + 1080);
  v153 = *(v5 + 1064);
  v154 = v12;
  v155 = *(v5 + 137);
  v13 = *(v5 + 1016);
  v149 = *(v5 + 1000);
  v150 = v13;
  v14 = *(v5 + 1032);
  v152 = *(v5 + 1048);
  v151 = v14;
  v15 = *(v5 + 952);
  v145 = *(v5 + 936);
  v146 = v15;
  v16 = *(v5 + 968);
  v148 = *(v5 + 984);
  v147 = v16;
  v17 = *(v5 + 904);
  v144 = *(v5 + 920);
  v143 = v17;
  v18 = v5[78];
  v19 = v5[80];
  v166 = v5[79];
  v167 = v19;
  v168 = *(v5 + 162);
  v20 = v5[74];
  v21 = v5[76];
  v162 = v5[75];
  v163 = v21;
  v22 = v5[77];
  v165 = v18;
  v164 = v22;
  v23 = v5[70];
  v24 = v5[72];
  v158 = v5[71];
  v159 = v24;
  v25 = v5[73];
  v161 = v20;
  v160 = v25;
  v26 = v5[69];
  v157 = v23;
  v156 = v26;
  v27 = *(v5 + 1480);
  v179 = *(v5 + 1464);
  v180 = v27;
  v181 = *(v5 + 187);
  v28 = *(v5 + 1416);
  v175 = *(v5 + 1400);
  v176 = v28;
  v29 = *(v5 + 1432);
  v178 = *(v5 + 1448);
  v177 = v29;
  v30 = *(v5 + 1352);
  v171 = *(v5 + 1336);
  v172 = v30;
  v31 = *(v5 + 1368);
  v174 = *(v5 + 1384);
  v173 = v31;
  v32 = *(v5 + 1304);
  v170 = *(v5 + 1320);
  v169 = v32;
  v33 = v5[103];
  v34 = v5[105];
  v192 = v5[104];
  v193 = v34;
  v194 = *(v5 + 212);
  v35 = v5[99];
  v36 = v5[101];
  v188 = v5[100];
  v189 = v36;
  v37 = v5[102];
  v191 = v33;
  v190 = v37;
  v38 = v5[95];
  v39 = v5[97];
  v184 = v5[96];
  v185 = v39;
  v40 = v5[98];
  v187 = v35;
  v186 = v40;
  v41 = v5[94];
  v183 = v38;
  v182 = v41;
  memcpy(v195, v5 + 1704, sizeof(v195));
  memcpy(v196, v4, sizeof(v196));
  v42 = *(v4 + 880);
  v207 = *(v4 + 864);
  v208 = v42;
  v209 = *(v4 + 896);
  v43 = *(v4 + 816);
  v203 = *(v4 + 800);
  v204 = v43;
  v44 = *(v4 + 832);
  v206 = *(v4 + 848);
  v205 = v44;
  v45 = *(v4 + 752);
  v199 = *(v4 + 736);
  v200 = v45;
  v46 = *(v4 + 768);
  v202 = *(v4 + 784);
  v201 = v46;
  v47 = *(v4 + 704);
  v198 = *(v4 + 720);
  v197 = v47;
  v48 = *(v4 + 1080);
  v220 = *(v4 + 1064);
  v221 = v48;
  v222 = *(v4 + 1096);
  v49 = *(v4 + 1016);
  v216 = *(v4 + 1000);
  v217 = v49;
  v50 = *(v4 + 1032);
  v219 = *(v4 + 1048);
  v218 = v50;
  v51 = *(v4 + 952);
  v212 = *(v4 + 936);
  v213 = v51;
  v52 = *(v4 + 968);
  v215 = *(v4 + 984);
  v214 = v52;
  v53 = *(v4 + 904);
  v211 = *(v4 + 920);
  v210 = v53;
  v54 = *(v4 + 1248);
  v55 = *(v4 + 1280);
  v233 = *(v4 + 1264);
  v234 = v55;
  v235 = *(v4 + 1296);
  v56 = *(v4 + 1184);
  v57 = *(v4 + 1216);
  v229 = *(v4 + 1200);
  v230 = v57;
  v58 = *(v4 + 1232);
  v232 = v54;
  v231 = v58;
  v59 = *(v4 + 1120);
  v60 = *(v4 + 1152);
  v225 = *(v4 + 1136);
  v226 = v60;
  v61 = *(v4 + 1168);
  v228 = v56;
  v227 = v61;
  v62 = *(v4 + 1104);
  v224 = v59;
  v223 = v62;
  v63 = *(v4 + 1480);
  v246 = *(v4 + 1464);
  v247 = v63;
  v248 = *(v4 + 1496);
  v64 = *(v4 + 1416);
  v242 = *(v4 + 1400);
  v243 = v64;
  v65 = *(v4 + 1432);
  v245 = *(v4 + 1448);
  v244 = v65;
  v66 = *(v4 + 1352);
  v238 = *(v4 + 1336);
  v239 = v66;
  v67 = *(v4 + 1368);
  v241 = *(v4 + 1384);
  v240 = v67;
  v68 = *(v4 + 1304);
  v237 = *(v4 + 1320);
  v236 = v68;
  v69 = *(v4 + 1648);
  v70 = *(v4 + 1680);
  v259 = *(v4 + 1664);
  v260 = v70;
  v261 = *(v4 + 1696);
  v71 = *(v4 + 1584);
  v72 = *(v4 + 1616);
  v255 = *(v4 + 1600);
  v256 = v72;
  v73 = *(v4 + 1632);
  v258 = v69;
  v257 = v73;
  v74 = *(v4 + 1520);
  v75 = *(v4 + 1552);
  v251 = *(v4 + 1536);
  v252 = v75;
  v76 = *(v4 + 1568);
  v254 = v71;
  v253 = v76;
  v77 = *(v4 + 1504);
  v250 = v74;
  v249 = v77;
  memcpy(v262, (v4 + 1704), sizeof(v262));
  memcpy(v108, v5, 0x2C0uLL);
  memcpy(&v108[44], v4, 0x2C0uLL);
  memcpy(v263, v5, sizeof(v263));
  if (sub_219FB2448(v263) == 1)
  {
    memcpy(v106, v4, 0x2C0uLL);
    if (sub_219FB2448(v106) != 1)
    {
      sub_219F45500(v129, v107, &qword_27CCDB1B8);
      v79 = v196;
      v80 = v107;
LABEL_8:
      sub_219F45500(v79, v80, &qword_27CCDB1B8);
      goto LABEL_9;
    }

    memcpy(v107, v5, sizeof(v107));
    sub_219F45500(v129, __dst, &qword_27CCDB1B8);
    sub_219F45500(v196, __dst, &qword_27CCDB1B8);
    sub_219F6409C(v107, &qword_27CCDB1B8);
  }

  else
  {
    memcpy(v107, v5, sizeof(v107));
    memcpy(__dst, v5, sizeof(__dst));
    memcpy(v106, v4, 0x2C0uLL);
    if (sub_219FB2448(v106) == 1)
    {
      memcpy(__src, v5, sizeof(__src));
      sub_219F45500(v129, v93, &qword_27CCDB1B8);
      sub_219F45500(v196, v93, &qword_27CCDB1B8);
      sub_219F45500(v107, v93, &qword_27CCDB1B8);
      v78 = __src;
LABEL_6:
      sub_21A0E1A2C(v78);
LABEL_9:
      memcpy(v106, v108, sizeof(v106));
      v81 = &unk_27CCDE298;
LABEL_41:
      sub_219F6409C(v106, v81);
      return 0;
    }

    memcpy(__src, v4, sizeof(__src));
    sub_219F45500(v129, v93, &qword_27CCDB1B8);
    sub_219F45500(v196, v93, &qword_27CCDB1B8);
    sub_219F45500(v107, v93, &qword_27CCDB1B8);
    updated = _s22NewsLiveActivitiesCore27ActivityFlexibleUpdateThemeV7GraphicV2eeoiySbAE_AEtFZ_0(__dst, __src);
    memcpy(v92, __src, sizeof(v92));
    sub_21A0E1A2C(v92);
    memcpy(v93, __dst, sizeof(v93));
    sub_21A0E1A2C(v93);
    memcpy(__src, v5, sizeof(__src));
    sub_219F6409C(__src, &qword_27CCDB1B8);
    if (!updated)
    {
      return 0;
    }
  }

  v108[10] = v140;
  v108[11] = v141;
  v108[6] = v136;
  v108[7] = v137;
  v108[9] = v139;
  v108[8] = v138;
  v108[2] = v132;
  v108[3] = v133;
  v108[5] = v135;
  v108[4] = v134;
  v108[1] = v131;
  v108[0] = v130;
  *(&v108[22] + 8) = v207;
  *(&v108[23] + 8) = v208;
  *(&v108[18] + 8) = v203;
  *(&v108[19] + 8) = v204;
  *(&v108[20] + 8) = v205;
  *(&v108[21] + 8) = v206;
  *(&v108[16] + 8) = v201;
  *(&v108[17] + 8) = v202;
  *(&v108[13] + 8) = v198;
  *(&v108[14] + 8) = v199;
  *(&v108[15] + 8) = v200;
  *(&v108[12] + 8) = v197;
  v103[10] = v140;
  v103[11] = v141;
  v103[6] = v136;
  v103[7] = v137;
  v103[9] = v139;
  v103[8] = v138;
  v103[2] = v132;
  v103[3] = v133;
  v103[5] = v135;
  v103[4] = v134;
  *&v108[12] = v142;
  *(&v108[24] + 1) = v209;
  v104 = v142;
  v103[1] = v131;
  v103[0] = v130;
  if (sub_219F63C20(v103) == 1)
  {
    v106[10] = *(&v108[22] + 8);
    v106[11] = *(&v108[23] + 8);
    *&v106[12] = *(&v108[24] + 1);
    v106[6] = *(&v108[18] + 8);
    v106[7] = *(&v108[19] + 8);
    v106[9] = *(&v108[21] + 8);
    v106[8] = *(&v108[20] + 8);
    v106[2] = *(&v108[14] + 8);
    v106[3] = *(&v108[15] + 8);
    v106[5] = *(&v108[17] + 8);
    v106[4] = *(&v108[16] + 8);
    v106[1] = *(&v108[13] + 8);
    v106[0] = *(&v108[12] + 8);
    if (sub_219F63C20(v106) == 1)
    {
      v107[10] = v108[10];
      v107[11] = v108[11];
      *&v107[12] = *&v108[12];
      v107[6] = v108[6];
      v107[7] = v108[7];
      v107[9] = v108[9];
      v107[8] = v108[8];
      v107[2] = v108[2];
      v107[3] = v108[3];
      v107[5] = v108[5];
      v107[4] = v108[4];
      v107[1] = v108[1];
      v107[0] = v108[0];
      sub_219F45500(&v130, __dst, &qword_27CCD95B8);
      sub_219F45500(&v197, __dst, &qword_27CCD95B8);
      sub_219F6409C(v107, &qword_27CCD95B8);
      goto LABEL_17;
    }

LABEL_15:
    memcpy(v106, v108, 0x190uLL);
    sub_219F45500(&v130, v107, &qword_27CCD95B8);
    v83 = &v197;
LABEL_40:
    sub_219F45500(v83, v107, &qword_27CCD95B8);
    v81 = &qword_27CCDA2F8;
    goto LABEL_41;
  }

  v106[10] = *(&v108[22] + 8);
  v106[11] = *(&v108[23] + 8);
  *&v106[12] = *(&v108[24] + 1);
  v106[6] = *(&v108[18] + 8);
  v106[7] = *(&v108[19] + 8);
  v106[9] = *(&v108[21] + 8);
  v106[8] = *(&v108[20] + 8);
  v106[2] = *(&v108[14] + 8);
  v106[3] = *(&v108[15] + 8);
  v106[5] = *(&v108[17] + 8);
  v106[4] = *(&v108[16] + 8);
  v106[1] = *(&v108[13] + 8);
  v106[0] = *(&v108[12] + 8);
  if (sub_219F63C20(v106) == 1)
  {
    goto LABEL_15;
  }

  v107[10] = *(&v108[22] + 8);
  v107[11] = *(&v108[23] + 8);
  v107[6] = *(&v108[18] + 8);
  v107[7] = *(&v108[19] + 8);
  v107[9] = *(&v108[21] + 8);
  v107[8] = *(&v108[20] + 8);
  v107[2] = *(&v108[14] + 8);
  v107[3] = *(&v108[15] + 8);
  v107[5] = *(&v108[17] + 8);
  v107[4] = *(&v108[16] + 8);
  v107[1] = *(&v108[13] + 8);
  v107[0] = *(&v108[12] + 8);
  v127[10] = *(&v108[22] + 8);
  v127[11] = *(&v108[23] + 8);
  v127[6] = *(&v108[18] + 8);
  v127[7] = *(&v108[19] + 8);
  v127[9] = *(&v108[21] + 8);
  v127[8] = *(&v108[20] + 8);
  v127[2] = *(&v108[14] + 8);
  v127[3] = *(&v108[15] + 8);
  v127[5] = *(&v108[17] + 8);
  v127[4] = *(&v108[16] + 8);
  *&v107[12] = *(&v108[24] + 1);
  v128 = *(&v108[24] + 1);
  v127[1] = *(&v108[13] + 8);
  v127[0] = *(&v108[12] + 8);
  v125[10] = v108[10];
  v125[11] = v108[11];
  v126 = *&v108[12];
  v125[6] = v108[6];
  v125[7] = v108[7];
  v125[9] = v108[9];
  v125[8] = v108[8];
  v125[2] = v108[2];
  v125[3] = v108[3];
  v125[5] = v108[5];
  v125[4] = v108[4];
  v125[1] = v108[1];
  v125[0] = v108[0];
  sub_219F45500(&v130, __dst, &qword_27CCD95B8);
  sub_219F45500(&v197, __dst, &qword_27CCD95B8);
  v84 = sub_21A0D9624(v125, v127);
  sub_219F6409C(v107, &qword_27CCD95B8);
  __dst[10] = v108[10];
  __dst[11] = v108[11];
  *&__dst[12] = *&v108[12];
  __dst[6] = v108[6];
  __dst[7] = v108[7];
  __dst[9] = v108[9];
  __dst[8] = v108[8];
  __dst[2] = v108[2];
  __dst[3] = v108[3];
  __dst[5] = v108[5];
  __dst[4] = v108[4];
  __dst[1] = v108[1];
  __dst[0] = v108[0];
  sub_219F6409C(__dst, &qword_27CCD95B8);
  if ((v84 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v108[10] = v153;
  v108[11] = v154;
  v108[6] = v149;
  v108[7] = v150;
  v108[9] = v152;
  v108[8] = v151;
  v108[2] = v145;
  v108[3] = v146;
  v108[5] = v148;
  v108[4] = v147;
  v108[1] = v144;
  v108[0] = v143;
  *(&v108[22] + 8) = v220;
  *(&v108[23] + 8) = v221;
  *(&v108[18] + 8) = v216;
  *(&v108[19] + 8) = v217;
  *(&v108[20] + 8) = v218;
  *(&v108[21] + 8) = v219;
  *(&v108[16] + 8) = v214;
  *(&v108[17] + 8) = v215;
  *(&v108[13] + 8) = v211;
  *(&v108[14] + 8) = v212;
  *(&v108[15] + 8) = v213;
  *(&v108[12] + 8) = v210;
  v101[10] = v153;
  v101[11] = v154;
  v101[6] = v149;
  v101[7] = v150;
  v101[9] = v152;
  v101[8] = v151;
  v101[2] = v145;
  v101[3] = v146;
  v101[5] = v148;
  v101[4] = v147;
  *&v108[12] = v155;
  *(&v108[24] + 1) = v222;
  v102 = v155;
  v101[1] = v144;
  v101[0] = v143;
  if (sub_219F63C20(v101) == 1)
  {
    v106[10] = *(&v108[22] + 8);
    v106[11] = *(&v108[23] + 8);
    *&v106[12] = *(&v108[24] + 1);
    v106[6] = *(&v108[18] + 8);
    v106[7] = *(&v108[19] + 8);
    v106[9] = *(&v108[21] + 8);
    v106[8] = *(&v108[20] + 8);
    v106[2] = *(&v108[14] + 8);
    v106[3] = *(&v108[15] + 8);
    v106[5] = *(&v108[17] + 8);
    v106[4] = *(&v108[16] + 8);
    v106[1] = *(&v108[13] + 8);
    v106[0] = *(&v108[12] + 8);
    if (sub_219F63C20(v106) == 1)
    {
      v107[10] = v108[10];
      v107[11] = v108[11];
      *&v107[12] = *&v108[12];
      v107[6] = v108[6];
      v107[7] = v108[7];
      v107[9] = v108[9];
      v107[8] = v108[8];
      v107[2] = v108[2];
      v107[3] = v108[3];
      v107[5] = v108[5];
      v107[4] = v108[4];
      v107[1] = v108[1];
      v107[0] = v108[0];
      sub_219F45500(&v143, __dst, &qword_27CCD95B8);
      sub_219F45500(&v210, __dst, &qword_27CCD95B8);
      sub_219F6409C(v107, &qword_27CCD95B8);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v106[10] = *(&v108[22] + 8);
  v106[11] = *(&v108[23] + 8);
  *&v106[12] = *(&v108[24] + 1);
  v106[6] = *(&v108[18] + 8);
  v106[7] = *(&v108[19] + 8);
  v106[9] = *(&v108[21] + 8);
  v106[8] = *(&v108[20] + 8);
  v106[2] = *(&v108[14] + 8);
  v106[3] = *(&v108[15] + 8);
  v106[5] = *(&v108[17] + 8);
  v106[4] = *(&v108[16] + 8);
  v106[1] = *(&v108[13] + 8);
  v106[0] = *(&v108[12] + 8);
  if (sub_219F63C20(v106) == 1)
  {
LABEL_21:
    memcpy(v106, v108, 0x190uLL);
    sub_219F45500(&v143, v107, &qword_27CCD95B8);
    v83 = &v210;
    goto LABEL_40;
  }

  v107[10] = *(&v108[22] + 8);
  v107[11] = *(&v108[23] + 8);
  v107[6] = *(&v108[18] + 8);
  v107[7] = *(&v108[19] + 8);
  v107[9] = *(&v108[21] + 8);
  v107[8] = *(&v108[20] + 8);
  v107[2] = *(&v108[14] + 8);
  v107[3] = *(&v108[15] + 8);
  v107[5] = *(&v108[17] + 8);
  v107[4] = *(&v108[16] + 8);
  v107[1] = *(&v108[13] + 8);
  v107[0] = *(&v108[12] + 8);
  v123[10] = *(&v108[22] + 8);
  v123[11] = *(&v108[23] + 8);
  v123[6] = *(&v108[18] + 8);
  v123[7] = *(&v108[19] + 8);
  v123[9] = *(&v108[21] + 8);
  v123[8] = *(&v108[20] + 8);
  v123[2] = *(&v108[14] + 8);
  v123[3] = *(&v108[15] + 8);
  v123[5] = *(&v108[17] + 8);
  v123[4] = *(&v108[16] + 8);
  *&v107[12] = *(&v108[24] + 1);
  v124 = *(&v108[24] + 1);
  v123[1] = *(&v108[13] + 8);
  v123[0] = *(&v108[12] + 8);
  v121[10] = v108[10];
  v121[11] = v108[11];
  v122 = *&v108[12];
  v121[6] = v108[6];
  v121[7] = v108[7];
  v121[9] = v108[9];
  v121[8] = v108[8];
  v121[2] = v108[2];
  v121[3] = v108[3];
  v121[5] = v108[5];
  v121[4] = v108[4];
  v121[1] = v108[1];
  v121[0] = v108[0];
  sub_219F45500(&v143, __dst, &qword_27CCD95B8);
  sub_219F45500(&v210, __dst, &qword_27CCD95B8);
  v85 = sub_21A0D9624(v121, v123);
  sub_219F6409C(v107, &qword_27CCD95B8);
  __dst[10] = v108[10];
  __dst[11] = v108[11];
  *&__dst[12] = *&v108[12];
  __dst[6] = v108[6];
  __dst[7] = v108[7];
  __dst[9] = v108[9];
  __dst[8] = v108[8];
  __dst[2] = v108[2];
  __dst[3] = v108[3];
  __dst[5] = v108[5];
  __dst[4] = v108[4];
  __dst[1] = v108[1];
  __dst[0] = v108[0];
  sub_219F6409C(__dst, &qword_27CCD95B8);
  if ((v85 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v108[10] = v166;
  v108[11] = v167;
  v108[6] = v162;
  v108[7] = v163;
  v108[9] = v165;
  v108[8] = v164;
  v108[2] = v158;
  v108[3] = v159;
  v108[5] = v161;
  v108[4] = v160;
  v108[1] = v157;
  v108[0] = v156;
  *(&v108[22] + 8) = v233;
  *(&v108[23] + 8) = v234;
  *(&v108[18] + 8) = v229;
  *(&v108[19] + 8) = v230;
  *(&v108[20] + 8) = v231;
  *(&v108[21] + 8) = v232;
  *(&v108[16] + 8) = v227;
  *(&v108[17] + 8) = v228;
  *(&v108[13] + 8) = v224;
  *(&v108[14] + 8) = v225;
  *(&v108[15] + 8) = v226;
  *(&v108[12] + 8) = v223;
  v99[10] = v166;
  v99[11] = v167;
  v99[6] = v162;
  v99[7] = v163;
  v99[9] = v165;
  v99[8] = v164;
  v99[2] = v158;
  v99[3] = v159;
  v99[5] = v161;
  v99[4] = v160;
  *&v108[12] = v168;
  *(&v108[24] + 1) = v235;
  v100 = v168;
  v99[1] = v157;
  v99[0] = v156;
  if (sub_219F63C20(v99) == 1)
  {
    v106[10] = *(&v108[22] + 8);
    v106[11] = *(&v108[23] + 8);
    *&v106[12] = *(&v108[24] + 1);
    v106[6] = *(&v108[18] + 8);
    v106[7] = *(&v108[19] + 8);
    v106[9] = *(&v108[21] + 8);
    v106[8] = *(&v108[20] + 8);
    v106[2] = *(&v108[14] + 8);
    v106[3] = *(&v108[15] + 8);
    v106[5] = *(&v108[17] + 8);
    v106[4] = *(&v108[16] + 8);
    v106[1] = *(&v108[13] + 8);
    v106[0] = *(&v108[12] + 8);
    if (sub_219F63C20(v106) == 1)
    {
      v107[10] = v108[10];
      v107[11] = v108[11];
      *&v107[12] = *&v108[12];
      v107[6] = v108[6];
      v107[7] = v108[7];
      v107[9] = v108[9];
      v107[8] = v108[8];
      v107[2] = v108[2];
      v107[3] = v108[3];
      v107[5] = v108[5];
      v107[4] = v108[4];
      v107[1] = v108[1];
      v107[0] = v108[0];
      sub_219F45500(&v156, __dst, &qword_27CCD95B8);
      sub_219F45500(&v223, __dst, &qword_27CCD95B8);
      sub_219F6409C(v107, &qword_27CCD95B8);
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v106[10] = *(&v108[22] + 8);
  v106[11] = *(&v108[23] + 8);
  *&v106[12] = *(&v108[24] + 1);
  v106[6] = *(&v108[18] + 8);
  v106[7] = *(&v108[19] + 8);
  v106[9] = *(&v108[21] + 8);
  v106[8] = *(&v108[20] + 8);
  v106[2] = *(&v108[14] + 8);
  v106[3] = *(&v108[15] + 8);
  v106[5] = *(&v108[17] + 8);
  v106[4] = *(&v108[16] + 8);
  v106[1] = *(&v108[13] + 8);
  v106[0] = *(&v108[12] + 8);
  if (sub_219F63C20(v106) == 1)
  {
LABEL_27:
    memcpy(v106, v108, 0x190uLL);
    sub_219F45500(&v156, v107, &qword_27CCD95B8);
    v83 = &v223;
    goto LABEL_40;
  }

  v107[10] = *(&v108[22] + 8);
  v107[11] = *(&v108[23] + 8);
  v107[6] = *(&v108[18] + 8);
  v107[7] = *(&v108[19] + 8);
  v107[9] = *(&v108[21] + 8);
  v107[8] = *(&v108[20] + 8);
  v107[2] = *(&v108[14] + 8);
  v107[3] = *(&v108[15] + 8);
  v107[5] = *(&v108[17] + 8);
  v107[4] = *(&v108[16] + 8);
  v107[1] = *(&v108[13] + 8);
  v107[0] = *(&v108[12] + 8);
  v119[10] = *(&v108[22] + 8);
  v119[11] = *(&v108[23] + 8);
  v119[6] = *(&v108[18] + 8);
  v119[7] = *(&v108[19] + 8);
  v119[9] = *(&v108[21] + 8);
  v119[8] = *(&v108[20] + 8);
  v119[2] = *(&v108[14] + 8);
  v119[3] = *(&v108[15] + 8);
  v119[5] = *(&v108[17] + 8);
  v119[4] = *(&v108[16] + 8);
  *&v107[12] = *(&v108[24] + 1);
  v120 = *(&v108[24] + 1);
  v119[1] = *(&v108[13] + 8);
  v119[0] = *(&v108[12] + 8);
  v117[10] = v108[10];
  v117[11] = v108[11];
  v118 = *&v108[12];
  v117[6] = v108[6];
  v117[7] = v108[7];
  v117[9] = v108[9];
  v117[8] = v108[8];
  v117[2] = v108[2];
  v117[3] = v108[3];
  v117[5] = v108[5];
  v117[4] = v108[4];
  v117[1] = v108[1];
  v117[0] = v108[0];
  sub_219F45500(&v156, __dst, &qword_27CCD95B8);
  sub_219F45500(&v223, __dst, &qword_27CCD95B8);
  v86 = sub_21A0D9624(v117, v119);
  sub_219F6409C(v107, &qword_27CCD95B8);
  __dst[10] = v108[10];
  __dst[11] = v108[11];
  *&__dst[12] = *&v108[12];
  __dst[6] = v108[6];
  __dst[7] = v108[7];
  __dst[9] = v108[9];
  __dst[8] = v108[8];
  __dst[2] = v108[2];
  __dst[3] = v108[3];
  __dst[5] = v108[5];
  __dst[4] = v108[4];
  __dst[1] = v108[1];
  __dst[0] = v108[0];
  sub_219F6409C(__dst, &qword_27CCD95B8);
  if ((v86 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v108[10] = v179;
  v108[11] = v180;
  v108[6] = v175;
  v108[7] = v176;
  v108[9] = v178;
  v108[8] = v177;
  v108[2] = v171;
  v108[3] = v172;
  v108[5] = v174;
  v108[4] = v173;
  v108[1] = v170;
  v108[0] = v169;
  *(&v108[22] + 8) = v246;
  *(&v108[23] + 8) = v247;
  *(&v108[18] + 8) = v242;
  *(&v108[19] + 8) = v243;
  *(&v108[20] + 8) = v244;
  *(&v108[21] + 8) = v245;
  *(&v108[16] + 8) = v240;
  *(&v108[17] + 8) = v241;
  *(&v108[13] + 8) = v237;
  *(&v108[14] + 8) = v238;
  *(&v108[15] + 8) = v239;
  *(&v108[12] + 8) = v236;
  v97[10] = v179;
  v97[11] = v180;
  v97[6] = v175;
  v97[7] = v176;
  v97[9] = v178;
  v97[8] = v177;
  v97[2] = v171;
  v97[3] = v172;
  v97[5] = v174;
  v97[4] = v173;
  *&v108[12] = v181;
  *(&v108[24] + 1) = v248;
  v98 = v181;
  v97[1] = v170;
  v97[0] = v169;
  if (sub_219F63C20(v97) == 1)
  {
    v106[10] = *(&v108[22] + 8);
    v106[11] = *(&v108[23] + 8);
    *&v106[12] = *(&v108[24] + 1);
    v106[6] = *(&v108[18] + 8);
    v106[7] = *(&v108[19] + 8);
    v106[9] = *(&v108[21] + 8);
    v106[8] = *(&v108[20] + 8);
    v106[2] = *(&v108[14] + 8);
    v106[3] = *(&v108[15] + 8);
    v106[5] = *(&v108[17] + 8);
    v106[4] = *(&v108[16] + 8);
    v106[1] = *(&v108[13] + 8);
    v106[0] = *(&v108[12] + 8);
    if (sub_219F63C20(v106) == 1)
    {
      v107[10] = v108[10];
      v107[11] = v108[11];
      *&v107[12] = *&v108[12];
      v107[6] = v108[6];
      v107[7] = v108[7];
      v107[9] = v108[9];
      v107[8] = v108[8];
      v107[2] = v108[2];
      v107[3] = v108[3];
      v107[5] = v108[5];
      v107[4] = v108[4];
      v107[1] = v108[1];
      v107[0] = v108[0];
      sub_219F45500(&v169, __dst, &qword_27CCD95B8);
      sub_219F45500(&v236, __dst, &qword_27CCD95B8);
      sub_219F6409C(v107, &qword_27CCD95B8);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v106[10] = *(&v108[22] + 8);
  v106[11] = *(&v108[23] + 8);
  *&v106[12] = *(&v108[24] + 1);
  v106[6] = *(&v108[18] + 8);
  v106[7] = *(&v108[19] + 8);
  v106[9] = *(&v108[21] + 8);
  v106[8] = *(&v108[20] + 8);
  v106[2] = *(&v108[14] + 8);
  v106[3] = *(&v108[15] + 8);
  v106[5] = *(&v108[17] + 8);
  v106[4] = *(&v108[16] + 8);
  v106[1] = *(&v108[13] + 8);
  v106[0] = *(&v108[12] + 8);
  if (sub_219F63C20(v106) == 1)
  {
LABEL_33:
    memcpy(v106, v108, 0x190uLL);
    sub_219F45500(&v169, v107, &qword_27CCD95B8);
    v83 = &v236;
    goto LABEL_40;
  }

  v107[10] = *(&v108[22] + 8);
  v107[11] = *(&v108[23] + 8);
  v107[6] = *(&v108[18] + 8);
  v107[7] = *(&v108[19] + 8);
  v107[9] = *(&v108[21] + 8);
  v107[8] = *(&v108[20] + 8);
  v107[2] = *(&v108[14] + 8);
  v107[3] = *(&v108[15] + 8);
  v107[5] = *(&v108[17] + 8);
  v107[4] = *(&v108[16] + 8);
  v107[1] = *(&v108[13] + 8);
  v107[0] = *(&v108[12] + 8);
  v115[10] = *(&v108[22] + 8);
  v115[11] = *(&v108[23] + 8);
  v115[6] = *(&v108[18] + 8);
  v115[7] = *(&v108[19] + 8);
  v115[9] = *(&v108[21] + 8);
  v115[8] = *(&v108[20] + 8);
  v115[2] = *(&v108[14] + 8);
  v115[3] = *(&v108[15] + 8);
  v115[5] = *(&v108[17] + 8);
  v115[4] = *(&v108[16] + 8);
  *&v107[12] = *(&v108[24] + 1);
  v116 = *(&v108[24] + 1);
  v115[1] = *(&v108[13] + 8);
  v115[0] = *(&v108[12] + 8);
  v113[10] = v108[10];
  v113[11] = v108[11];
  v114 = *&v108[12];
  v113[6] = v108[6];
  v113[7] = v108[7];
  v113[9] = v108[9];
  v113[8] = v108[8];
  v113[2] = v108[2];
  v113[3] = v108[3];
  v113[5] = v108[5];
  v113[4] = v108[4];
  v113[1] = v108[1];
  v113[0] = v108[0];
  sub_219F45500(&v169, __dst, &qword_27CCD95B8);
  sub_219F45500(&v236, __dst, &qword_27CCD95B8);
  v87 = sub_21A0D9624(v113, v115);
  sub_219F6409C(v107, &qword_27CCD95B8);
  __dst[10] = v108[10];
  __dst[11] = v108[11];
  *&__dst[12] = *&v108[12];
  __dst[6] = v108[6];
  __dst[7] = v108[7];
  __dst[9] = v108[9];
  __dst[8] = v108[8];
  __dst[2] = v108[2];
  __dst[3] = v108[3];
  __dst[5] = v108[5];
  __dst[4] = v108[4];
  __dst[1] = v108[1];
  __dst[0] = v108[0];
  sub_219F6409C(__dst, &qword_27CCD95B8);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v108[10] = v192;
  v108[11] = v193;
  v108[6] = v188;
  v108[7] = v189;
  v108[9] = v191;
  v108[8] = v190;
  v108[2] = v184;
  v108[3] = v185;
  v108[5] = v187;
  v108[4] = v186;
  v108[1] = v183;
  v108[0] = v182;
  *(&v108[22] + 8) = v259;
  *(&v108[23] + 8) = v260;
  *(&v108[18] + 8) = v255;
  *(&v108[19] + 8) = v256;
  *(&v108[20] + 8) = v257;
  *(&v108[21] + 8) = v258;
  *(&v108[16] + 8) = v253;
  *(&v108[17] + 8) = v254;
  *(&v108[13] + 8) = v250;
  *(&v108[14] + 8) = v251;
  *(&v108[15] + 8) = v252;
  *(&v108[12] + 8) = v249;
  v95[10] = v192;
  v95[11] = v193;
  v95[6] = v188;
  v95[7] = v189;
  v95[9] = v191;
  v95[8] = v190;
  v95[2] = v184;
  v95[3] = v185;
  v95[5] = v187;
  v95[4] = v186;
  *&v108[12] = v194;
  *(&v108[24] + 1) = v261;
  v96 = v194;
  v95[1] = v183;
  v95[0] = v182;
  if (sub_219F63C20(v95) == 1)
  {
    v106[10] = *(&v108[22] + 8);
    v106[11] = *(&v108[23] + 8);
    *&v106[12] = *(&v108[24] + 1);
    v106[6] = *(&v108[18] + 8);
    v106[7] = *(&v108[19] + 8);
    v106[9] = *(&v108[21] + 8);
    v106[8] = *(&v108[20] + 8);
    v106[2] = *(&v108[14] + 8);
    v106[3] = *(&v108[15] + 8);
    v106[5] = *(&v108[17] + 8);
    v106[4] = *(&v108[16] + 8);
    v106[1] = *(&v108[13] + 8);
    v106[0] = *(&v108[12] + 8);
    if (sub_219F63C20(v106) == 1)
    {
      v107[10] = v108[10];
      v107[11] = v108[11];
      *&v107[12] = *&v108[12];
      v107[6] = v108[6];
      v107[7] = v108[7];
      v107[9] = v108[9];
      v107[8] = v108[8];
      v107[2] = v108[2];
      v107[3] = v108[3];
      v107[5] = v108[5];
      v107[4] = v108[4];
      v107[1] = v108[1];
      v107[0] = v108[0];
      sub_219F45500(&v182, __dst, &qword_27CCD95B8);
      sub_219F45500(&v249, __dst, &qword_27CCD95B8);
      sub_219F6409C(v107, &qword_27CCD95B8);
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  v106[10] = *(&v108[22] + 8);
  v106[11] = *(&v108[23] + 8);
  *&v106[12] = *(&v108[24] + 1);
  v106[6] = *(&v108[18] + 8);
  v106[7] = *(&v108[19] + 8);
  v106[9] = *(&v108[21] + 8);
  v106[8] = *(&v108[20] + 8);
  v106[2] = *(&v108[14] + 8);
  v106[3] = *(&v108[15] + 8);
  v106[5] = *(&v108[17] + 8);
  v106[4] = *(&v108[16] + 8);
  v106[1] = *(&v108[13] + 8);
  v106[0] = *(&v108[12] + 8);
  if (sub_219F63C20(v106) == 1)
  {
LABEL_39:
    memcpy(v106, v108, 0x190uLL);
    sub_219F45500(&v182, v107, &qword_27CCD95B8);
    v83 = &v249;
    goto LABEL_40;
  }

  v107[10] = *(&v108[22] + 8);
  v107[11] = *(&v108[23] + 8);
  v107[6] = *(&v108[18] + 8);
  v107[7] = *(&v108[19] + 8);
  v107[9] = *(&v108[21] + 8);
  v107[8] = *(&v108[20] + 8);
  v107[2] = *(&v108[14] + 8);
  v107[3] = *(&v108[15] + 8);
  v107[5] = *(&v108[17] + 8);
  v107[4] = *(&v108[16] + 8);
  v107[1] = *(&v108[13] + 8);
  v107[0] = *(&v108[12] + 8);
  v111[10] = *(&v108[22] + 8);
  v111[11] = *(&v108[23] + 8);
  v111[6] = *(&v108[18] + 8);
  v111[7] = *(&v108[19] + 8);
  v111[9] = *(&v108[21] + 8);
  v111[8] = *(&v108[20] + 8);
  v111[2] = *(&v108[14] + 8);
  v111[3] = *(&v108[15] + 8);
  v111[5] = *(&v108[17] + 8);
  v111[4] = *(&v108[16] + 8);
  *&v107[12] = *(&v108[24] + 1);
  v112 = *(&v108[24] + 1);
  v111[1] = *(&v108[13] + 8);
  v111[0] = *(&v108[12] + 8);
  v109[10] = v108[10];
  v109[11] = v108[11];
  v110 = *&v108[12];
  v109[6] = v108[6];
  v109[7] = v108[7];
  v109[9] = v108[9];
  v109[8] = v108[8];
  v109[2] = v108[2];
  v109[3] = v108[3];
  v109[5] = v108[5];
  v109[4] = v108[4];
  v109[1] = v108[1];
  v109[0] = v108[0];
  sub_219F45500(&v182, __dst, &qword_27CCD95B8);
  sub_219F45500(&v249, __dst, &qword_27CCD95B8);
  v89 = sub_21A0D9624(v109, v111);
  sub_219F6409C(v107, &qword_27CCD95B8);
  __dst[10] = v108[10];
  __dst[11] = v108[11];
  *&__dst[12] = *&v108[12];
  __dst[6] = v108[6];
  __dst[7] = v108[7];
  __dst[9] = v108[9];
  __dst[8] = v108[8];
  __dst[2] = v108[2];
  __dst[3] = v108[3];
  __dst[5] = v108[5];
  __dst[4] = v108[4];
  __dst[1] = v108[1];
  __dst[0] = v108[0];
  sub_219F6409C(__dst, &qword_27CCD95B8);
  if ((v89 & 1) == 0)
  {
    return 0;
  }

LABEL_44:
  memcpy(v108, v195, 0x2C0uLL);
  memcpy(&v108[44], v262, 0x2C0uLL);
  memcpy(v107, v195, sizeof(v107));
  if (sub_219FB2448(v107) != 1)
  {
    memcpy(__dst, v108, sizeof(__dst));
    memcpy(__src, v108, sizeof(__src));
    memcpy(v106, &v108[44], 0x2C0uLL);
    if (sub_219FB2448(v106) == 1)
    {
      memcpy(v93, v108, sizeof(v93));
      sub_219F45500(v195, v92, &qword_27CCDB1B8);
      sub_219F45500(v262, v92, &qword_27CCDB1B8);
      sub_219F45500(__dst, v92, &qword_27CCDB1B8);
      v78 = v93;
      goto LABEL_6;
    }

    memcpy(v93, &v108[44], sizeof(v93));
    sub_219F45500(v195, v92, &qword_27CCDB1B8);
    sub_219F45500(v262, v92, &qword_27CCDB1B8);
    sub_219F45500(__dst, v92, &qword_27CCDB1B8);
    v90 = _s22NewsLiveActivitiesCore27ActivityFlexibleUpdateThemeV7GraphicV2eeoiySbAE_AEtFZ_0(__src, v93);
    memcpy(v91, v93, sizeof(v91));
    sub_21A0E1A2C(v91);
    memcpy(v92, __src, sizeof(v92));
    sub_21A0E1A2C(v92);
    memcpy(v93, v108, sizeof(v93));
    sub_219F6409C(v93, &qword_27CCDB1B8);
    return v90;
  }

  memcpy(v106, &v108[44], 0x2C0uLL);
  if (sub_219FB2448(v106) != 1)
  {
    sub_219F45500(v195, __dst, &qword_27CCDB1B8);
    v79 = v262;
    v80 = __dst;
    goto LABEL_8;
  }

  memcpy(__dst, v108, sizeof(__dst));
  sub_219F45500(v195, __src, &qword_27CCDB1B8);
  sub_219F45500(v262, __src, &qword_27CCDB1B8);
  sub_219F6409C(__dst, &qword_27CCDB1B8);
  return 1;
}

BOOL _s22NewsLiveActivitiesCore22ActivityFlexibleUpdateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v77 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1B0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v75 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE2A0);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v76 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v74 - v21;
  v23 = *(v20 + 48);
  sub_219F45500(a1, &v74 - v21, &qword_27CCDB1B0);
  sub_219F45500(a2, &v22[v23], &qword_27CCDB1B0);
  v24 = *(v5 + 48);
  if (v24(v22, 1, v4) == 1)
  {
    if (v24(&v22[v23], 1, v4) == 1)
    {
      sub_219F6409C(v22, &qword_27CCDB1B0);
      goto LABEL_11;
    }

LABEL_6:
    v25 = v22;
LABEL_7:
    sub_219F6409C(v25, &qword_27CCDE2A0);
    return 0;
  }

  sub_219F45500(v22, v14, &qword_27CCDB1B0);
  if (v24(&v22[v23], 1, v4) == 1)
  {
    sub_21A0E11BC(v14);
    goto LABEL_6;
  }

  v27 = &v22[v23];
  v28 = v77;
  sub_21A0E1158(v27, v77);
  updated = _s22NewsLiveActivitiesCore22ActivityFlexibleUpdateV7GraphicV2eeoiySbAE_AEtFZ_0(v14, v28);
  sub_21A0E11BC(v28);
  sub_21A0E11BC(v14);
  sub_219F6409C(v22, &qword_27CCDB1B0);
  if ((updated & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v30 = type metadata accessor for ActivityFlexibleUpdate(0);
  v31 = v30[5];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35)
    {
      return 0;
    }

    if (*v32 != *v34 || v33 != v35)
    {
      v36 = v30;
      v37 = sub_21A0E6C5C();
      v30 = v36;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v35)
  {
    return 0;
  }

  v38 = v30[6];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42)
    {
      return 0;
    }

    if (*v39 != *v41 || v40 != v42)
    {
      v43 = v30;
      v44 = sub_21A0E6C5C();
      v30 = v43;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v42)
  {
    return 0;
  }

  v45 = v30[7];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  v49 = v48[1];
  if (v47)
  {
    if (!v49)
    {
      return 0;
    }

    if (*v46 != *v48 || v47 != v49)
    {
      v50 = v30;
      v51 = sub_21A0E6C5C();
      v30 = v50;
      if ((v51 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v49)
  {
    return 0;
  }

  v52 = v30[8];
  v53 = (a1 + v52);
  v54 = *(a1 + v52 + 8);
  v55 = (a2 + v52);
  v56 = v55[1];
  if (v54)
  {
    if (!v56)
    {
      return 0;
    }

    if (*v53 != *v55 || v54 != v56)
    {
      v57 = v30;
      v58 = sub_21A0E6C5C();
      v30 = v57;
      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v56)
  {
    return 0;
  }

  v59 = v30[9];
  v60 = (a1 + v59);
  v61 = *(a1 + v59 + 8);
  v62 = (a2 + v59);
  v63 = v62[1];
  if (v61)
  {
    if (!v63)
    {
      return 0;
    }

    if (*v60 != *v62 || v61 != v63)
    {
      v64 = v30;
      v65 = sub_21A0E6C5C();
      v30 = v64;
      if ((v65 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v63)
  {
    return 0;
  }

  v66 = v30[10];
  v67 = *(v15 + 48);
  v68 = a1 + v66;
  v69 = v76;
  sub_219F45500(v68, v76, &qword_27CCDB1B0);
  sub_219F45500(a2 + v66, v69 + v67, &qword_27CCDB1B0);
  if (v24(v69, 1, v4) == 1)
  {
    if (v24((v69 + v67), 1, v4) == 1)
    {
      sub_219F6409C(v69, &qword_27CCDB1B0);
      return 1;
    }

    goto LABEL_51;
  }

  v70 = v75;
  sub_219F45500(v69, v75, &qword_27CCDB1B0);
  if (v24((v69 + v67), 1, v4) == 1)
  {
    sub_21A0E11BC(v70);
LABEL_51:
    v25 = v69;
    goto LABEL_7;
  }

  v71 = v69 + v67;
  v72 = v77;
  sub_21A0E1158(v71, v77);
  v73 = _s22NewsLiveActivitiesCore22ActivityFlexibleUpdateV7GraphicV2eeoiySbAE_AEtFZ_0(v70, v72);
  sub_21A0E11BC(v72);
  sub_21A0E11BC(v70);
  sub_219F6409C(v69, &qword_27CCDB1B0);
  return (v73 & 1) != 0;
}

uint64_t sub_21A0E1158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0E11BC(uint64_t a1)
{
  v2 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s22NewsLiveActivitiesCore22ActivityFlexibleUpdateV7GraphicV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAFD0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v39 - v15;
  if ((static ActivityAsset.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v41 = v8;
  v42 = v5;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  v18 = *(v17 + 28);
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);

  v21 = sub_219FAAA00(v19, v20);

  if ((v21 & 1) == 0 || (sub_219F75DC0(*(a1 + *(v17 + 32)), *(a2 + *(v17 + 32))) & 1) == 0)
  {
    return 0;
  }

  v40 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  v22 = *(v40 + 20);
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23)
  {
    if (v23 == 1)
    {
      v25 = 0xE600000000000000;
      v26 = 0x6D756964656DLL;
      if (v24)
      {
        goto LABEL_7;
      }

LABEL_11:
      v27 = 0xE500000000000000;
      if (v26 != 0x6C6C616D73)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v25 = 0xE500000000000000;
    v26 = 0x656772616CLL;
    if (!v24)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v25 = 0xE500000000000000;
    v26 = 0x6C6C616D73;
    if (!v24)
    {
      goto LABEL_11;
    }
  }

LABEL_7:
  if (v24 == 1)
  {
    v27 = 0xE600000000000000;
    if (v26 != 0x6D756964656DLL)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v27 = 0xE500000000000000;
    if (v26 != 0x656772616CLL)
    {
      goto LABEL_18;
    }
  }

LABEL_16:
  if (v25 == v27)
  {

    goto LABEL_19;
  }

LABEL_18:
  v28 = sub_21A0E6C5C();

  if (v28)
  {
LABEL_19:
    v29 = *(v40 + 24);
    v30 = *(v13 + 48);
    sub_219F45500(a1 + v29, v16, &qword_27CCD98D8);
    sub_219F45500(a2 + v29, &v16[v30], &qword_27CCD98D8);
    v31 = *(v42 + 48);
    if (v31(v16, 1, v4) == 1)
    {
      if (v31(&v16[v30], 1, v4) == 1)
      {
LABEL_21:
        sub_219F6409C(v16, &qword_27CCD98D8);
        return 1;
      }
    }

    else
    {
      sub_219F45500(v16, v12, &qword_27CCD98D8);
      if (v31(&v16[v30], 1, v4) != 1)
      {
        v34 = v41;
        sub_219F73094(&v16[v30], v41);
        if (static ActivityAsset.== infix(_:_:)(v12, v34))
        {
          v35 = *(v17 + 28);
          v36 = *&v12[v35];
          v37 = *(v34 + v35);

          v38 = sub_219FAAA00(v36, v37);

          if (v38 & 1) != 0 && (sub_219F75DC0(*&v12[*(v17 + 32)], *(v34 + *(v17 + 32))))
          {
            sub_219F6409C(v34, &qword_27CCD98D0);
            sub_219F6409C(v12, &qword_27CCD98D0);
            goto LABEL_21;
          }
        }

        sub_219F6409C(v34, &qword_27CCD98D0);
        sub_219F6409C(v12, &qword_27CCD98D0);
        v33 = &qword_27CCD98D8;
        goto LABEL_30;
      }

      sub_219F6409C(v12, &qword_27CCD98D0);
    }

    v33 = &qword_27CCDAFD0;
LABEL_30:
    sub_219F6409C(v16, v33);
  }

  return 0;
}

unint64_t sub_21A0E1708()
{
  result = qword_27CCDE1E8;
  if (!qword_27CCDE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE1E8);
  }

  return result;
}

uint64_t sub_21A0E175C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A0E17A4()
{
  result = qword_27CCDE1F0;
  if (!qword_27CCDE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE1F0);
  }

  return result;
}

uint64_t sub_21A0E17F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD98D0);
    sub_21A0E175C(&qword_27CCDAF50, type metadata accessor for ActivityAsset);
    sub_21A0E175C(&qword_27CCDAF58, type metadata accessor for ActivityAsset);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A0E18CC()
{
  result = qword_27CCDE200;
  if (!qword_27CCDE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE200);
  }

  return result;
}

uint64_t sub_21A0E1920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFlexibleUpdate.Graphic(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A0E1984()
{
  result = qword_27CCDE210;
  if (!qword_27CCDE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE210);
  }

  return result;
}

unint64_t sub_21A0E19D8()
{
  result = qword_27CCDE218;
  if (!qword_27CCDE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE218);
  }

  return result;
}

unint64_t sub_21A0E1A5C()
{
  result = qword_27CCDE228;
  if (!qword_27CCDE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE228);
  }

  return result;
}

unint64_t sub_21A0E1B34()
{
  result = qword_27CCDE238;
  if (!qword_27CCDE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE238);
  }

  return result;
}

unint64_t sub_21A0E1BD4()
{
  result = qword_27CCDE248;
  if (!qword_27CCDE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE248);
  }

  return result;
}

unint64_t sub_21A0E1C2C()
{
  result = qword_27CCDE250;
  if (!qword_27CCDE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE250);
  }

  return result;
}

void sub_21A0E1CA8()
{
  sub_21A0E2194(319, qword_280C87AA8, type metadata accessor for ActivityFlexibleUpdate.Graphic, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_219F40360();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21A0E1D74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 2408))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 888);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21A0E1DD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 2376) = 0u;
    *(result + 2392) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 2408) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 2408) = 0;
    }

    if (a2)
    {
      *(result + 888) = a2;
    }
  }

  return result;
}

void sub_21A0E20D8()
{
  sub_21A0E2194(319, qword_280C894C0, type metadata accessor for ActivityAsset, type metadata accessor for Dynamic);
  if (v0 <= 0x3F)
  {
    sub_219F3EAEC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A0E2194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21A0E2210(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 704))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_21A0E227C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 696) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 704) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 704) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_21A0E23C4()
{
  result = qword_27CCDE258;
  if (!qword_27CCDE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE258);
  }

  return result;
}

unint64_t sub_21A0E241C()
{
  result = qword_27CCDE260;
  if (!qword_27CCDE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE260);
  }

  return result;
}

unint64_t sub_21A0E2474()
{
  result = qword_27CCDE268;
  if (!qword_27CCDE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE268);
  }

  return result;
}

unint64_t sub_21A0E24CC()
{
  result = qword_27CCDE270;
  if (!qword_27CCDE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE270);
  }

  return result;
}

unint64_t sub_21A0E2524()
{
  result = qword_27CCDE278;
  if (!qword_27CCDE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE278);
  }

  return result;
}

unint64_t sub_21A0E257C()
{
  result = qword_27CCDE280;
  if (!qword_27CCDE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE280);
  }

  return result;
}

uint64_t sub_21A0E25D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567646162 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21A0E6C5C();

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

unint64_t sub_21A0E26E0()
{
  result = qword_27CCDE288;
  if (!qword_27CCDE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE288);
  }

  return result;
}

uint64_t Optional<A>.merging(with:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  v3 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  v7 = *(result + 25);
  if ((*(v2 + 25) & 1) == 0)
  {
    result = v2[3] & 1;
    if (v3)
    {
      v4 = *v2;
    }

    v8 = v6 & 1;
    if (v8)
    {
      v5 = v2[2];
    }

    v3 = v3 & v2[1] & 1;
    v6 = v8 & v2[3];
    if (v7)
    {
      v4 = *v2;
      v3 = v2[1] & 1;
      v5 = v2[2];
      v6 = v2[3] & 1;
    }

    v7 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 25) = v7;
  return result;
}

void PrimaryElectionHeaderTemplateProperties.reporting.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t PrimaryElectionHeaderTemplateProperties.reporting.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_21A0E2910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21A0E6C5C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21A0E29A0(uint64_t a1)
{
  v2 = sub_21A0E35D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0E29DC(uint64_t a1)
{
  v2 = sub_21A0E35D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrimaryElectionHeaderTemplateProperties.Percentage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE2A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E35D0();
  sub_21A0E6EAC();
  sub_21A0E6B9C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t PrimaryElectionHeaderTemplateProperties.Percentage.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x21CED24C0](*&v1);
}

uint64_t PrimaryElectionHeaderTemplateProperties.Percentage.hashValue.getter()
{
  v1 = *v0;
  sub_21A0E6DAC();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x21CED24C0](*&v2);
  return sub_21A0E6DFC();
}

uint64_t PrimaryElectionHeaderTemplateProperties.Percentage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE2B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E35D0();
  sub_21A0E6E7C();
  if (!v2)
  {
    sub_21A0E6ABC();
    v11 = v10;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21A0E2D44()
{
  v1 = *v0;
  sub_21A0E6DAC();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x21CED24C0](*&v2);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0E2DA0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x21CED24C0](*&v1);
}

uint64_t sub_21A0E2DDC()
{
  v1 = *v0;
  sub_21A0E6DAC();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x21CED24C0](*&v2);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0E2E4C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE2A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E35D0();
  sub_21A0E6EAC();
  sub_21A0E6B9C();
  return (*(v3 + 8))(v6, v2);
}

void PrimaryElectionHeaderTemplateProperties.delegates.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t PrimaryElectionHeaderTemplateProperties.delegates.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_21A0E3038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21A0E6C5C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21A0E30BC(uint64_t a1)
{
  v2 = sub_21A0E3624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0E30F8(uint64_t a1)
{
  v2 = sub_21A0E3624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrimaryElectionHeaderTemplateProperties.Count.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE2C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E3624();
  sub_21A0E6EAC();
  sub_21A0E6BAC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t PrimaryElectionHeaderTemplateProperties.Count.hashValue.getter()
{
  v1 = *v0;
  sub_21A0E6DAC();
  MEMORY[0x21CED2490](v1);
  return sub_21A0E6DFC();
}

uint64_t PrimaryElectionHeaderTemplateProperties.Count.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE2D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E3624();
  sub_21A0E6E7C();
  if (!v2)
  {
    v10 = sub_21A0E6ACC();
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21A0E344C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE2C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E3624();
  sub_21A0E6EAC();
  sub_21A0E6BAC();
  return (*(v3 + 8))(v6, v2);
}

void __swiftcall PrimaryElectionHeaderTemplateProperties.merging(with:)(NewsLiveActivitiesCore::PrimaryElectionHeaderTemplateProperties *__return_ptr retstr, NewsLiveActivitiesCore::PrimaryElectionHeaderTemplateProperties *with)
{
  v3 = (&with->delegates.value.count + 7);
  v4 = BYTE6(with[1].reporting.value.percentage);
  v5 = *(v2 + 24);
  if (with->reporting.is_nil)
  {
    v6 = v2;
  }

  else
  {
    v6 = with;
  }

  percentage = v6->reporting.value.percentage;
  v8 = with->reporting.is_nil & *(v2 + 8);
  if (BYTE6(with[1].reporting.value.percentage))
  {
    v3 = (v2 + 16);
  }

  v9 = *v3;
  retstr->reporting.value.percentage = percentage;
  retstr->reporting.is_nil = v8;
  *(&retstr->delegates.value.count + 7) = v9;
  BYTE6(retstr[1].reporting.value.percentage) = v4 & v5;
}

unint64_t sub_21A0E35D0()
{
  result = qword_27CCDE2B0;
  if (!qword_27CCDE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE2B0);
  }

  return result;
}

unint64_t sub_21A0E3624()
{
  result = qword_27CCDE2C8;
  if (!qword_27CCDE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE2C8);
  }

  return result;
}

uint64_t sub_21A0E367C()
{
  if (*v0)
  {
    return 0x65746167656C6564;
  }

  else
  {
    return 0x6E6974726F706572;
  }
}

uint64_t sub_21A0E36BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6974726F706572 && a2 == 0xE900000000000067;
  if (v6 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746167656C6564 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

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

uint64_t sub_21A0E379C(uint64_t a1)
{
  v2 = sub_21A0E3DF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0E37D8(uint64_t a1)
{
  v2 = sub_21A0E3DF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrimaryElectionHeaderTemplateProperties.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE2D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v12[0] = v1[2];
  v15 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E3DF4();
  sub_21A0E6EAC();
  v13 = v8;
  v14 = v9;
  v16 = 0;
  sub_21A0E3E48();
  v10 = v12[1];
  sub_21A0E6B6C();
  if (!v10)
  {
    v13 = v12[0];
    v14 = v15;
    v16 = 1;
    sub_21A0E3E9C();
    sub_21A0E6B6C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PrimaryElectionHeaderTemplateProperties.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (*(v0 + 8) == 1)
  {
    sub_21A0E6DCC();
    if (!v2)
    {
LABEL_3:
      sub_21A0E6DCC();
      return MEMORY[0x21CED2490](v1);
    }
  }

  else
  {
    v4 = *v0;
    sub_21A0E6DCC();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x21CED24C0](v5);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return sub_21A0E6DCC();
}

uint64_t PrimaryElectionHeaderTemplateProperties.hashValue.getter()
{
  sub_21A0E6DAC();
  PrimaryElectionHeaderTemplateProperties.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t PrimaryElectionHeaderTemplateProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDE2F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E3DF4();
  sub_21A0E6E7C();
  if (!v2)
  {
    v17 = 0;
    sub_21A0E3EF0();
    sub_21A0E6A8C();
    v10 = v15;
    v11 = v16;
    v17 = 1;
    sub_21A0E3F44();
    sub_21A0E6A8C();
    (*(v6 + 8))(v9, v5);
    v12 = v15;
    v13 = v16;
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21A0E3C9C()
{
  sub_21A0E6DAC();
  PrimaryElectionHeaderTemplateProperties.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_21A0E3D04()
{
  sub_21A0E6DAC();
  PrimaryElectionHeaderTemplateProperties.hash(into:)();
  return sub_21A0E6DFC();
}

BOOL _s22NewsLiveActivitiesCore39PrimaryElectionHeaderTemplatePropertiesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }

  return (*(a2 + 24) & 1) != 0;
}

unint64_t sub_21A0E3DF4()
{
  result = qword_27CCDE2E0;
  if (!qword_27CCDE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE2E0);
  }

  return result;
}

unint64_t sub_21A0E3E48()
{
  result = qword_27CCDE2E8;
  if (!qword_27CCDE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE2E8);
  }

  return result;
}

unint64_t sub_21A0E3E9C()
{
  result = qword_27CCDE2F0;
  if (!qword_27CCDE2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE2F0);
  }

  return result;
}

unint64_t sub_21A0E3EF0()
{
  result = qword_27CCDE300;
  if (!qword_27CCDE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE300);
  }

  return result;
}

unint64_t sub_21A0E3F44()
{
  result = qword_27CCDE308;
  if (!qword_27CCDE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE308);
  }

  return result;
}

unint64_t sub_21A0E3F9C()
{
  result = qword_27CCDE310;
  if (!qword_27CCDE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE310);
  }

  return result;
}

unint64_t sub_21A0E3FF4()
{
  result = qword_27CCDE318;
  if (!qword_27CCDE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE318);
  }

  return result;
}

unint64_t sub_21A0E404C()
{
  result = qword_27CCDE320;
  if (!qword_27CCDE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE320);
  }

  return result;
}

uint64_t sub_21A0E40A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A0E40C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_21A0E4154()
{
  result = qword_27CCDE328;
  if (!qword_27CCDE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE328);
  }

  return result;
}

unint64_t sub_21A0E41AC()
{
  result = qword_27CCDE330;
  if (!qword_27CCDE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE330);
  }

  return result;
}

unint64_t sub_21A0E4204()
{
  result = qword_27CCDE338;
  if (!qword_27CCDE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE338);
  }

  return result;
}

unint64_t sub_21A0E425C()
{
  result = qword_27CCDE340;
  if (!qword_27CCDE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE340);
  }

  return result;
}

unint64_t sub_21A0E42B4()
{
  result = qword_27CCDE348;
  if (!qword_27CCDE348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE348);
  }

  return result;
}

unint64_t sub_21A0E430C()
{
  result = qword_27CCDE350;
  if (!qword_27CCDE350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE350);
  }

  return result;
}

unint64_t sub_21A0E4364()
{
  result = qword_27CCDE358;
  if (!qword_27CCDE358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE358);
  }

  return result;
}

unint64_t sub_21A0E43BC()
{
  result = qword_27CCDE360;
  if (!qword_27CCDE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE360);
  }

  return result;
}

unint64_t sub_21A0E4414()
{
  result = qword_27CCDE368;
  if (!qword_27CCDE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDE368);
  }

  return result;
}