uint64_t sub_219F7F50C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21A0E55BC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9B28);
  return sub_219F7E1DC(v1, a1 + *(v3 + 44));
}

double sub_219F7F55C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCD9A00 = v0;
  BYTE4(xmmword_27CCD9A40) = 32;
  LODWORD(xmmword_27CCD9A40) = 0;
  *(&xmmword_27CCD9A40 + 1) = 0;
  dword_27CCD9A50 = 393985;
  return result;
}

double sub_219F7F5D8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCD9A58 = v0;
  BYTE4(xmmword_27CCD9A98) = 32;
  LODWORD(xmmword_27CCD9A98) = 0;
  *(&xmmword_27CCD9A98 + 1) = 0;
  dword_27CCD9AA8 = 393985;
  return result;
}

double sub_219F7F654()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCD9AB0 = v0;
  BYTE4(xmmword_27CCD9AF0) = 32;
  LODWORD(xmmword_27CCD9AF0) = 0;
  *(&xmmword_27CCD9AF0 + 1) = 0;
  dword_27CCD9B00 = 197377;
  return result;
}

uint64_t sub_219F7F72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySymbolView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219F7F790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9B30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219F7F800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

unint64_t sub_219F7F810()
{
  result = qword_27CCD9B50;
  if (!qword_27CCD9B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9B50);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_219F7F880(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_219F7F8C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_219F7F934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v53 = a3;
  v5 = sub_21A0E561C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9C78);
  v56 = *(v7 - 8);
  v57 = v7;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v55 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v11);
  v59 = &v47[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9C80);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v54 = &v47[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v47[-v18];
  sub_21A0E5E3C();
  sub_21A0E52AC();
  v51 = v68;
  v52 = v66;
  v49 = v71;
  v50 = v70;
  v74 = 1;
  v73 = v67;
  v72 = v69;
  *v19 = sub_21A0E559C();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9C88) + 44);
  v58 = v19;
  sub_219F7FE84(a1, a2, &v19[v20]);
  sub_21A0E560C();
  sub_21A0E55FC();
  sub_21A0E55EC();
  sub_21A0E55FC();
  sub_21A0E563C();
  v21 = sub_21A0E59DC();
  v23 = v22;
  v25 = v24;
  if (qword_27CCD9138 != -1)
  {
    swift_once();
  }

  v75[2] = xmmword_27CCD9C30;
  v75[3] = unk_27CCD9C40;
  v75[4] = xmmword_27CCD9C50;
  v76 = dword_27CCD9C60;
  v75[0] = xmmword_27CCD9C10;
  v75[1] = unk_27CCD9C20;
  v62 = xmmword_27CCD9C30;
  v63 = unk_27CCD9C40;
  v64 = xmmword_27CCD9C50;
  v65 = dword_27CCD9C60;
  v60 = xmmword_27CCD9C10;
  v61 = unk_27CCD9C20;
  sub_219F639D4(v75, v77);
  v26 = sub_219F8CEDC(&v60, v21, v23, v25 & 1);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_219F63A30(v21, v23, v25 & 1);

  v77[2] = v62;
  v77[3] = v63;
  v77[4] = v64;
  v78 = v65;
  v77[0] = v60;
  v77[1] = v61;
  sub_219F6409C(v77, &qword_27CCD95B0);
  *&v60 = v26;
  *(&v60 + 1) = v28;
  LOBYTE(v61) = v30 & 1;
  *(&v61 + 1) = v32;
  v33 = v59;
  sub_21A0E5B0C();
  sub_219F63A30(v26, v28, v30 & 1);

  LOBYTE(v28) = v74;
  v34 = v73;
  v48 = v72;
  v35 = v54;
  sub_219F45500(v58, v54, &qword_27CCD9C80);
  v37 = v55;
  v36 = v56;
  v38 = *(v56 + 16);
  v39 = v57;
  v38(v55, v33, v57);
  v40 = v52;
  v41 = v53;
  *v53 = 0;
  *(v41 + 8) = v28;
  v41[2] = v40;
  *(v41 + 24) = v34;
  v41[4] = v51;
  *(v41 + 40) = v48;
  v42 = v49;
  v41[6] = v50;
  v41[7] = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9C90);
  sub_219F45500(v35, v41 + v43[12], &qword_27CCD9C80);
  v38(v41 + v43[16], v37, v39);
  v44 = v41 + v43[20];
  *v44 = 0;
  v44[8] = 1;
  v45 = *(v36 + 8);
  v45(v59, v39);
  sub_219F6409C(v58, &qword_27CCD9C80);
  v45(v37, v39);
  return sub_219F6409C(v35, &qword_27CCD9C80);
}

uint64_t sub_219F7FE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a1;
  v62 = a2;
  v63 = a3;
  v3 = sub_21A0E561C();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9B30);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v65 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &KeyPath - v10;
  if (qword_27CCD9208 != -1)
  {
    swift_once();
  }

  v12 = xmmword_27CCDD760;
  v13 = byte_27CCDD770;
  v14 = byte_27CCDD771;
  v15 = byte_27CCDD772;
  sub_219F79C1C();
  if (qword_27CCD9200 != -1)
  {
    swift_once();
  }

  v78[8] = xmmword_27CCDCFF8;
  v78[9] = xmmword_27CCDD008;
  v78[4] = xmmword_27CCDCFB8;
  v78[5] = xmmword_27CCDCFC8;
  v78[6] = xmmword_27CCDCFD8;
  v78[7] = xmmword_27CCDCFE8;
  v78[0] = xmmword_27CCDCF78;
  v78[1] = unk_27CCDCF88;
  v78[2] = xmmword_27CCDCF98;
  v78[3] = xmmword_27CCDCFA8;
  v86 = xmmword_27CCDCFE8;
  v87 = xmmword_27CCDCFF8;
  v88 = xmmword_27CCDD008;
  v89 = xmmword_27CCDD018;
  v82 = xmmword_27CCDCFA8;
  v83 = xmmword_27CCDCFB8;
  v84 = xmmword_27CCDCFC8;
  v85 = xmmword_27CCDCFD8;
  v78[10] = xmmword_27CCDD018;
  v79 = xmmword_27CCDCF78;
  v80 = unk_27CCDCF88;
  v81 = xmmword_27CCDCF98;
  nullsub_1(&v79, v16);
  v17 = v85;
  *(v11 + 136) = v86;
  v18 = v88;
  *(v11 + 152) = v87;
  *(v11 + 168) = v18;
  *(v11 + 184) = v89;
  v19 = v81;
  *(v11 + 72) = v82;
  v20 = v84;
  *(v11 + 88) = v83;
  *(v11 + 104) = v20;
  *(v11 + 120) = v17;
  v21 = v80;
  *(v11 + 24) = v79;
  *(v11 + 40) = v21;
  *v11 = v12;
  v11[16] = v13;
  v11[17] = v14;
  v11[18] = v15;
  *(v11 + 56) = v19;
  v22 = *(type metadata accessor for ActivitySymbolView() + 24);
  *&v11[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9B38);
  swift_storeEnumTagMultiPayload();
  v23 = &v11[*(v5 + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD95C0) + 28);
  v25 = *MEMORY[0x277CE1050];
  v26 = sub_21A0E5CEC();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  sub_219F7F6D0(v78, &v72);
  if (qword_27CCD9130 != -1)
  {
    swift_once();
  }

  v90[2] = xmmword_27CCD9BD8;
  v90[3] = unk_27CCD9BE8;
  v90[4] = xmmword_27CCD9BF8;
  v91 = dword_27CCD9C08;
  v90[0] = xmmword_27CCD9BB8;
  v90[1] = unk_27CCD9BC8;
  v74 = xmmword_27CCD9BD8;
  v75 = unk_27CCD9BE8;
  v76 = xmmword_27CCD9BF8;
  v77 = dword_27CCD9C08;
  v72 = xmmword_27CCD9BB8;
  v73 = unk_27CCD9BC8;
  sub_219F639D4(v90, v94);
  v64 = sub_219F8CEDC(&v72, 2124832, 0xE300000000000000, 0);
  v59 = v27;
  v60 = v28;
  v30 = v29;
  v92[2] = v74;
  v92[3] = v75;
  v92[4] = v76;
  v93 = v77;
  v92[0] = v72;
  v92[1] = v73;
  sub_219F6409C(v92, &qword_27CCD95B0);
  sub_21A0E560C();
  sub_21A0E55FC();
  sub_21A0E55EC();
  sub_21A0E55FC();
  sub_21A0E563C();
  v31 = sub_21A0E59DC();
  v33 = v32;
  v35 = v34;
  if (qword_27CCD9128 != -1)
  {
    swift_once();
  }

  v94[2] = xmmword_27CCD9B80;
  v94[3] = unk_27CCD9B90;
  v94[4] = xmmword_27CCD9BA0;
  v95 = dword_27CCD9BB0;
  v94[0] = xmmword_27CCD9B60;
  v94[1] = *algn_27CCD9B70;
  v68 = xmmword_27CCD9B80;
  v69 = unk_27CCD9B90;
  v70 = xmmword_27CCD9BA0;
  v71 = dword_27CCD9BB0;
  v66 = xmmword_27CCD9B60;
  v67 = *algn_27CCD9B70;
  sub_219F639D4(v94, &v72);
  v57 = sub_219F8CEDC(&v66, v31, v33, v35 & 1);
  v58 = v36;
  LODWORD(v61) = v37;
  v62 = v38;
  sub_219F63A30(v31, v33, v35 & 1);

  v74 = v68;
  v75 = v69;
  v76 = v70;
  v77 = v71;
  v72 = v66;
  v73 = v67;
  sub_219F6409C(&v72, &qword_27CCD95B0);
  KeyPath = swift_getKeyPath();
  v39 = v65;
  sub_219F45500(v11, v65, &qword_27CCD9B30);
  v40 = v30 & 1;
  LOBYTE(v66) = v30 & 1;
  v41 = v39;
  v42 = v63;
  sub_219F45500(v41, v63, &qword_27CCD9B30);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9C98);
  v44 = v42 + v43[12];
  v45 = v64;
  v47 = v59;
  v46 = v60;
  *v44 = v64;
  *(v44 + 8) = v47;
  *(v44 + 16) = v40;
  *(v44 + 24) = v46;
  v48 = v42 + v43[16];
  v56 = v11;
  v50 = v57;
  v49 = v58;
  *v48 = v57;
  *(v48 + 8) = v49;
  v51 = v61 & 1;
  *(v48 + 16) = v61 & 1;
  v52 = KeyPath;
  *(v48 + 24) = v62;
  *(v48 + 32) = v52;
  *(v48 + 40) = 1;
  *(v48 + 48) = 0;
  v53 = v42 + v43[20];
  *v53 = 0;
  *(v53 + 8) = 1;
  sub_219F63A40(v45, v47, v40);

  sub_219F63A40(v50, v49, v51);

  sub_219F6409C(v56, &qword_27CCD9B30);
  sub_219F63A30(v50, v49, v51);

  sub_219F63A30(v64, v47, v66);

  return sub_219F6409C(v65, &qword_27CCD9B30);
}

uint64_t sub_219F8054C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = sub_21A0E567C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9C68);
  sub_219F7F934(v3, v4, (a1 + *(v5 + 44)));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9C70);
  v8 = (a1 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = 0xC024000000000000;
  return result;
}

double sub_219F805F8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCD9B60 = v0;
  BYTE4(xmmword_27CCD9BA0) = 32;
  LODWORD(xmmword_27CCD9BA0) = 0;
  *(&xmmword_27CCD9BA0 + 1) = 0;
  dword_27CCD9BB0 = 393985;
  return result;
}

double sub_219F80674()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCD9BB8 = v0;
  BYTE4(xmmword_27CCD9BF8) = 32;
  LODWORD(xmmword_27CCD9BF8) = 0;
  *(&xmmword_27CCD9BF8 + 1) = 0;
  dword_27CCD9C08 = 197377;
  return result;
}

double sub_219F806F0()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCD9C10 = v0;
  BYTE4(xmmword_27CCD9C50) = 32;
  LODWORD(xmmword_27CCD9C50) = 0;
  *(&xmmword_27CCD9C50 + 1) = 0;
  dword_27CCD9C60 = 262913;
  return result;
}

unint64_t sub_219F8076C()
{
  result = qword_27CCD9CA0;
  if (!qword_27CCD9CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9C70);
    sub_219F3E490(&qword_27CCD9CA8, &qword_27CCD9CB0);
    sub_219F3E490(&qword_27CCD9CB8, &qword_27CCD9CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9CA0);
  }

  return result;
}

uint64_t sub_219F80854()
{
  if (*v0)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_219F8088C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
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

uint64_t sub_219F80964(uint64_t a1)
{
  v2 = sub_219F81D74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219F809A0(uint64_t a1)
{
  v2 = sub_219F81D74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityGradient.Stop.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9CC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F81D74();
  sub_21A0E6EAC();
  LOBYTE(v13[0]) = 0;
  sub_21A0E6B9C();
  if (!v2)
  {
    v10 = *(v3 + 24);
    v11 = *(v3 + 56);
    v13[2] = *(v3 + 40);
    v14[0] = v11;
    *(v14 + 13) = *(v3 + 69);
    v13[0] = *(v3 + 8);
    v13[1] = v10;
    v15 = 1;
    sub_219F81DC8();
    sub_21A0E6BBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ActivityGradient.Stop.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CED24C0](*&v1);
  return ActivityColor.hash(into:)();
}

uint64_t ActivityGradient.Stop.hashValue.getter()
{
  v1 = *v0;
  sub_21A0E6DAC();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x21CED24C0](*&v2);
  ActivityColor.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t ActivityGradient.Stop.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9CE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F81D74();
  sub_21A0E6E7C();
  if (!v2)
  {
    LOBYTE(v16) = 0;
    sub_21A0E6ABC();
    v11 = v10;
    v15[7] = 1;
    sub_219F81E1C();
    sub_21A0E6ADC();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    v12 = v16;
    *(a2 + 24) = v17;
    v13 = *v19;
    *(a2 + 40) = v18;
    *(a2 + 56) = v13;
    *(a2 + 69) = *&v19[13];
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219F80E60()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CED24C0](*&v1);
  return ActivityColor.hash(into:)();
}

uint64_t sub_219F80ED0()
{
  v1 = *v0;
  sub_21A0E6DAC();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x21CED24C0](*&v2);
  ActivityColor.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_219F80F88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73706F7473;
  }

  else
  {
    v3 = 0x73726F6C6F63;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x73706F7473;
  }

  else
  {
    v5 = 0x73726F6C6F63;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21A0E6C5C();
  }

  return v8 & 1;
}

uint64_t sub_219F81028()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_219F810A4()
{
  sub_21A0E626C();
}

uint64_t sub_219F8110C()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_219F81184@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_219F811E4(uint64_t *a1@<X8>)
{
  v2 = 0x73726F6C6F63;
  if (*v1)
  {
    v2 = 0x73706F7473;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_219F8121C()
{
  if (*v0)
  {
    return 0x73706F7473;
  }

  else
  {
    return 0x73726F6C6F63;
  }
}

uint64_t sub_219F81250@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_219F812B4(uint64_t a1)
{
  v2 = sub_219F81E70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219F812F0(uint64_t a1)
{
  v2 = sub_219F81E70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityGradient.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9CF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F81E70();
  sub_21A0E6E7C();
  if (!v2)
  {
    v10 = sub_21A0E6AFC();
    v11 = v10;
    if (*(v10 + 16) == 1)
    {
      v12 = *(v10 + 32);
      v13 = (v6 + 8);
      if (v12)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9D08);
        v19 = 1;
        sub_219F81F90(&qword_27CCD9D10, sub_219F81EC4);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9D20);
        v19 = 0;
        sub_219F81F18(&qword_27CCD9D28, sub_219F81E1C);
      }

      sub_21A0E6ADC();
      (*v13)(v9, v5);
      swift_unknownObjectRelease();
      *a2 = v20;
      *(a2 + 8) = v12;
    }

    else
    {
      v14 = sub_21A0E68BC();
      swift_allocError();
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9D00);
      v18 = v11;
      *v16 = &type metadata for ActivityGradient;
      sub_21A0E6A2C();
      sub_21A0E68AC();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219F8165C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219F81690()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219F816C4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ActivityGradient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9D30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F81E70();
  sub_21A0E6EAC();
  v13 = v8;
  if (v9)
  {
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9D08);
    sub_219F81F90(&qword_27CCD9D38, sub_219F82008);
  }

  else
  {
    v12 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9D20);
    sub_219F81F18(&qword_27CCD9D48, sub_219F81DC8);
  }

  sub_21A0E6BBC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ActivityGradient.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x21CED2490](1);

    return sub_219F6DA14(a1, v3);
  }

  else
  {
    MEMORY[0x21CED2490](0);

    return sub_219F6DDE8(a1, v3);
  }
}

uint64_t ActivityGradient.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21A0E6DAC();
  if (v2)
  {
    MEMORY[0x21CED2490](1);
    sub_219F6DA14(v4, v1);
  }

  else
  {
    MEMORY[0x21CED2490](0);
    sub_219F6DDE8(v4, v1);
  }

  return sub_21A0E6DFC();
}

uint64_t sub_219F81A04()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21A0E6DAC();
  if (v2)
  {
    MEMORY[0x21CED2490](1);
    sub_219F6DA14(v4, v1);
  }

  else
  {
    MEMORY[0x21CED2490](0);
    sub_219F6DDE8(v4, v1);
  }

  return sub_21A0E6DFC();
}

uint64_t sub_219F81A7C(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x21CED2490](1);

    return sub_219F6DA14(a1, v3);
  }

  else
  {
    MEMORY[0x21CED2490](0);

    return sub_219F6DDE8(a1, v3);
  }
}

uint64_t sub_219F81B08()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21A0E6DAC();
  if (v2)
  {
    MEMORY[0x21CED2490](1);
    sub_219F6DA14(v4, v1);
  }

  else
  {
    MEMORY[0x21CED2490](0);
    sub_219F6DDE8(v4, v1);
  }

  return sub_21A0E6DFC();
}

uint64_t _s22NewsLiveActivitiesCore16ActivityGradientO4StopV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, int64x2_t a6)
{
  if (*a1 == *a2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 72) | (*(a1 + 76) << 32);
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 72) | (*(a2 + 76) << 32);
    v11 = *(a1 + 12);
    v12 = (v7 >> 38) & 3;
    if (v12)
    {
      v13 = v10 & 0xC000000000;
      if (v12 == 1)
      {
        if (v13 == 0x4000000000)
        {
          v14 = vshrq_n_u64(*(a2 + 8), 0x20uLL);
          v9.i64[1] = v14.i64[1];
          a6.i64[0] = *(a2 + 8);
          if (vminv_u16(vmovn_s32(vceqq_f32(*(a1 + 8), vuzp1q_s32(vzip1q_s64(a6, v14), v9)))))
          {
            return 1;
          }
        }
      }

      else if (v13 == 0x8000000000)
      {
        LOBYTE(v34[0]) = *(a1 + 8);
        LOBYTE(v27) = v8;
        v21 = ActivityColor.System.Name.rawValue.getter();
        v23 = v22;
        if (v21 == ActivityColor.System.Name.rawValue.getter() && v23 == v24)
        {

          return 1;
        }

        v26 = sub_21A0E6C5C();

        if (v26)
        {
          return 1;
        }
      }
    }

    else if (!(v10 >> 38))
    {
      v15 = *(a1 + 24);
      v16 = *(a1 + 40);
      v17 = *(a1 + 56);
      v18 = *(a2 + 32);
      v19 = *(a2 + 48);
      v20 = *(a2 + 64);
      v34[0] = *(a1 + 8);
      v34[1] = v11;
      v35 = v6;
      v36 = v15;
      v37 = v16;
      v38 = v17;
      v39 = v7;
      v40 = BYTE4(v7) & 0x3F;
      v27 = v8;
      v28 = v9;
      v29 = v18;
      v30 = v19;
      v31 = v20;
      v33 = BYTE4(v10);
      v32 = v10;
      if (_s22NewsLiveActivitiesCore13ActivityColorO13UserInterfaceV2eeoiySbAE_AEtFZ_0(v34, &v27))
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_219F81D74()
{
  result = qword_27CCD9CD0;
  if (!qword_27CCD9CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9CD0);
  }

  return result;
}

unint64_t sub_219F81DC8()
{
  result = qword_27CCD9CD8;
  if (!qword_27CCD9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9CD8);
  }

  return result;
}

unint64_t sub_219F81E1C()
{
  result = qword_27CCD9CE8;
  if (!qword_27CCD9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9CE8);
  }

  return result;
}

unint64_t sub_219F81E70()
{
  result = qword_27CCD9CF8;
  if (!qword_27CCD9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9CF8);
  }

  return result;
}

unint64_t sub_219F81EC4()
{
  result = qword_27CCD9D18;
  if (!qword_27CCD9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9D18);
  }

  return result;
}

uint64_t sub_219F81F18(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9D20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219F81F90(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9D08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_219F82008()
{
  result = qword_27CCD9D40;
  if (!qword_27CCD9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9D40);
  }

  return result;
}

uint64_t _s22NewsLiveActivitiesCore16ActivityGradientO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {

      v8 = sub_219F787DC(v3, v2, v4, v5, v6, v7);
LABEL_7:
      v9 = v8;

      return v9 & 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {

    v8 = sub_219F782D8(v10, v2, v11, v12, v13, v14);
    goto LABEL_7;
  }

  v9 = 0;
  return v9 & 1;
}

unint64_t sub_219F820F4()
{
  result = qword_27CCD9D50;
  if (!qword_27CCD9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9D50);
  }

  return result;
}

unint64_t sub_219F8214C()
{
  result = qword_27CCD9D58;
  if (!qword_27CCD9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9D58);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_219F821B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_219F821FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy77_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_219F82280(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 77))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 56) >> 1) & 0x7FFFFFFF | (*(a1 + 76) >> 1 << 31);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_219F822DC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 76) = 0;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 77) = 1;
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
      result = 0.0;
      *(a1 + 40) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 8) = 0u;
      *(a1 + 56) = (-2 * a2);
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 76) = 2;
      return result;
    }

    *(a1 + 77) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_219F82388()
{
  result = qword_27CCD9D60;
  if (!qword_27CCD9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9D60);
  }

  return result;
}

unint64_t sub_219F823E0()
{
  result = qword_27CCD9D68;
  if (!qword_27CCD9D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9D68);
  }

  return result;
}

unint64_t sub_219F82438()
{
  result = qword_27CCD9D70;
  if (!qword_27CCD9D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9D70);
  }

  return result;
}

unint64_t sub_219F82490()
{
  result = qword_27CCD9D78;
  if (!qword_27CCD9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9D78);
  }

  return result;
}

unint64_t sub_219F824E8()
{
  result = qword_27CCD9D80;
  if (!qword_27CCD9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9D80);
  }

  return result;
}

unint64_t sub_219F82540()
{
  result = qword_27CCD9D88;
  if (!qword_27CCD9D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9D88);
  }

  return result;
}

uint64_t static ActivityColor.System.== infix(_:_:)()
{
  v0 = ActivityColor.System.Name.rawValue.getter();
  v2 = v1;
  if (v0 == ActivityColor.System.Name.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21A0E6C5C();
  }

  return v5 & 1;
}

uint64_t sub_219F8269C()
{
  sub_21A0E6DAC();
  MEMORY[0x21CED2490](0);
  return sub_21A0E6DFC();
}

uint64_t sub_219F826E0()
{
  sub_21A0E6DAC();
  MEMORY[0x21CED2490](0);
  return sub_21A0E6DFC();
}

uint64_t sub_219F82730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_219F827B8(uint64_t a1)
{
  v2 = sub_219F83088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219F827F4(uint64_t a1)
{
  v2 = sub_219F83088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityColor.System.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9D90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F83088();
  sub_21A0E6EAC();
  v11 = v8;
  sub_219F830DC();
  sub_21A0E6BBC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ActivityColor.System.hash(into:)()
{
  sub_21A0E626C();
}

uint64_t ActivityColor.System.hashValue.getter()
{
  sub_21A0E6DAC();
  ActivityColor.System.Name.rawValue.getter();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t ActivityColor.System.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9DA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F83088();
  sub_21A0E6E7C();
  if (!v2)
  {
    sub_219F831FC();
    sub_21A0E6ADC();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void static ActivityColor.pink.getter(uint64_t a1@<X8>)
{
  *a1 = 14;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0x80;
}

void static ActivityColor.black.getter(uint64_t a1@<X8>)
{
  *a1 = 3;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0x80;
}

void static ActivityColor.white.getter(uint64_t a1@<X8>)
{
  *a1 = 4;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0x80;
}

void static ActivityColor.clear.getter(uint64_t a1@<X8>)
{
  *a1 = 5;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0x80;
}

uint64_t ActivityColor.System.Name.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_21A0E6CDC();

  v4 = 19;
  if (v2 < 0x13)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t ActivityColor.System.Name.rawValue.getter()
{
  result = 0x6F43746E65636361;
  switch(*v0)
  {
    case 1:
      result = 0x7972616D697270;
      break;
    case 2:
      result = 0x7261646E6F636573;
      break;
    case 3:
      result = 0x6B63616C62;
      break;
    case 4:
      result = 0x6574696877;
      break;
    case 5:
      result = 0x7261656C63;
      break;
    case 6:
      result = 1702194274;
      break;
    case 7:
      result = 0x6E776F7262;
      break;
    case 8:
      result = 1851881827;
      break;
    case 9:
      result = 2036429415;
      break;
    case 0xA:
      result = 0x6E65657267;
      break;
    case 0xB:
      result = 0x6F6769646E69;
      break;
    case 0xC:
      result = 1953393005;
      break;
    case 0xD:
      result = 0x65676E61726FLL;
      break;
    case 0xE:
      result = 1802398064;
      break;
    case 0xF:
      result = 0x656C70727570;
      break;
    case 0x10:
      result = 6579570;
      break;
    case 0x11:
      result = 1818322292;
      break;
    case 0x12:
      result = 0x776F6C6C6579;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_219F82FB8()
{
  v0 = ActivityColor.System.Name.rawValue.getter();
  v2 = v1;
  if (v0 == ActivityColor.System.Name.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21A0E6C5C();
  }

  return v5 & 1;
}

uint64_t sub_219F83060@<X0>(uint64_t *a1@<X8>)
{
  result = ActivityColor.System.Name.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_219F83088()
{
  result = qword_27CCD9D98;
  if (!qword_27CCD9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9D98);
  }

  return result;
}

unint64_t sub_219F830DC()
{
  result = qword_27CCD9DA0;
  if (!qword_27CCD9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9DA0);
  }

  return result;
}

uint64_t sub_219F83130()
{
  sub_21A0E6DAC();
  ActivityColor.System.Name.rawValue.getter();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_219F83198()
{
  ActivityColor.System.Name.rawValue.getter();
  sub_21A0E626C();
}

unint64_t sub_219F831FC()
{
  result = qword_27CCD9DB0;
  if (!qword_27CCD9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9DB0);
  }

  return result;
}

uint64_t sub_219F83250()
{
  sub_21A0E6DAC();
  ActivityColor.System.Name.rawValue.getter();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t ActivityColor.System.description.getter()
{
  sub_21A0E686C();

  strcpy(v2, "System(name: ");
  v0 = ActivityColor.System.Name.rawValue.getter();
  MEMORY[0x21CED1980](v0);

  MEMORY[0x21CED1980](41, 0xE100000000000000);
  return v2[0];
}

unint64_t sub_219F83404()
{
  result = qword_27CCD9DB8;
  if (!qword_27CCD9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9DB8);
  }

  return result;
}

unint64_t sub_219F8345C()
{
  result = qword_27CCD9DC0;
  if (!qword_27CCD9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9DC0);
  }

  return result;
}

uint64_t sub_219F834C4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_219F83554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s6SystemV10CodingKeysOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s6SystemV10CodingKeysOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_219F83700()
{
  result = qword_27CCD9DC8;
  if (!qword_27CCD9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9DC8);
  }

  return result;
}

unint64_t sub_219F83758()
{
  result = qword_27CCD9DD0;
  if (!qword_27CCD9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9DD0);
  }

  return result;
}

unint64_t sub_219F837B0()
{
  result = qword_27CCD9DD8;
  if (!qword_27CCD9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9DD8);
  }

  return result;
}

unint64_t sub_219F83804()
{
  result = qword_27CCD9DE0;
  if (!qword_27CCD9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9DE0);
  }

  return result;
}

uint64_t sub_219F838B8()
{
  v0 = sub_21A0E4D5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A0E4D6C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  if (qword_280C8A0D8 != -1)
  {
    swift_once();
  }

  sub_21A0E4DBC();

  (*(v1 + 104))(v4, *MEMORY[0x277D6D098], v0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E18);
  swift_allocObject();
  result = sub_21A0E4D7C();
  qword_27CCD9DE8 = result;
  return result;
}

uint64_t sub_219F83A9C()
{
  v0 = sub_21A0E4D5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A0E4D6C();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v10[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E10);
  swift_allocObject();
  result = sub_21A0E4D7C();
  qword_27CCD9DF0 = result;
  return result;
}

uint64_t sub_219F83C80()
{
  v0 = sub_21A0E4D5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21A0E4D6C();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v10[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E10);
  swift_allocObject();
  result = sub_21A0E4D7C();
  qword_27CCD9DF8 = result;
  return result;
}

uint64_t sub_219F83E98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v8 = (*(v7 + 24))(v6, v7);
  if (*(v8 + 16) && (v9 = sub_219F477B4(v4, v5), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = type metadata accessor for NewsLiveActivityAttributes(0);
    v20 = *(v13 - 8);
    sub_219F83FFC(v12 + *(v20 + 72) * v11, a2);

    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {

    v18 = type metadata accessor for NewsLiveActivityAttributes(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_219F83FFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsLiveActivityAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219F84060(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_219F840A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of NewsLiveActivityLauncherType.startActivity(activityID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_219F4996C;

  return v9(a1, a2, a3);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_219F84244(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_219F8428C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_219F84300(uint64_t *a1)
{
  v2[4] = v1;
  v4 = sub_21A0E495C();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();
  type metadata accessor for NewsLiveActivityContent(0);
  v2[8] = swift_task_alloc();
  type metadata accessor for NewsLiveActivityAttributes(0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for ActivityDownloadResult();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a1;
  v7 = a1[1];
  v2[14] = v5;
  v2[15] = v6;
  v2[16] = v7;
  v2[2] = v6;
  v2[3] = v7;
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_219F844C8;

  return sub_219F85420(v5, v2 + 2);
}

uint64_t sub_219F844C8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_219F84F50;
  }

  else
  {
    v2 = sub_219F845DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219F845DC()
{
  v61 = v0;
  v1 = v0[10];
  sub_219F85974(v0[14], v0[13]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[13];
  v4 = v0[10];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v0[5];
    v6 = v0[6];
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E30) + 48);
    sub_219F85A30(v3, v4, type metadata accessor for NewsLiveActivityAttributes);
    v8 = *v4;
    v9 = *(v1 + 8);

    sub_219F85A98(v4, type metadata accessor for NewsLiveActivityAttributes);
    (*(v6 + 8))(v3 + v7, v5);
  }

  else
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E40) + 48);
    sub_219F85A30(v3, v4, type metadata accessor for NewsLiveActivityAttributes);
    v8 = *v4;
    v9 = *(v1 + 8);

    sub_219F85A98(v4, type metadata accessor for NewsLiveActivityAttributes);
    sub_219F85A98(v3 + v10, type metadata accessor for NewsLiveActivityContent);
  }

  v11 = v0[15] == v8 && v0[16] == v9;
  if (!v11 && (sub_21A0E6C5C() & 1) == 0)
  {
    v44 = v0[15];
    v43 = v0[16];
    v45 = v0[14];
    type metadata accessor for LiveActivitySubscriptionError(0);
    sub_219F859D8();
    v29 = swift_allocError();
    *v46 = v44;
    v46[1] = v43;
    v46[2] = v8;
    v46[3] = v9;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v31 = type metadata accessor for ActivityDownloadResult;
    v32 = v45;
LABEL_19:
    sub_219F85A98(v32, v31);
    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v47 = sub_21A0E516C();
    __swift_project_value_buffer(v47, qword_280C88498);

    v48 = v29;
    v49 = sub_21A0E514C();
    v50 = sub_21A0E669C();

    if (os_log_type_enabled(v49, v50))
    {
      v52 = v0[15];
      v51 = v0[16];
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v60 = v55;
      *v53 = 136446466;
      *(v53 + 4) = sub_219F50144(v52, v51, &v60);
      *(v53 + 12) = 2114;
      v56 = v29;
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v57;
      *v54 = v57;
      _os_log_impl(&dword_219F39000, v49, v50, "Failed to fetch or start activity for newsID: %{public}s, error: %{public}@", v53, 0x16u);
      sub_219F8590C(v54);
      MEMORY[0x21CED2D30](v54, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x21CED2D30](v55, -1, -1);
      MEMORY[0x21CED2D30](v53, -1, -1);
    }

    swift_willThrow();

    v58 = v0[1];

    return v58();
  }

  v12 = v0[14];
  v13 = v0[12];

  sub_219F85974(v12, v13);
  v14 = swift_getEnumCaseMultiPayload();
  v15 = v0[12];
  if (v14 == 1)
  {
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[5];
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E30);
    (*(v17 + 32))(v16, v15 + *(v19 + 48), v18);
    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v20 = sub_21A0E516C();
    __swift_project_value_buffer(v20, qword_280C88498);
    v21 = sub_21A0E514C();
    v22 = sub_21A0E669C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_219F39000, v21, v22, "Failed to start activity, it's still scheduled.", v23, 2u);
      MEMORY[0x21CED2D30](v23, -1, -1);
    }

    v24 = v0[14];
    v25 = v0[12];
    v27 = v0[6];
    v26 = v0[7];
    v28 = v0[5];

    type metadata accessor for LiveActivitySubscriptionError(0);
    sub_219F859D8();
    v29 = swift_allocError();
    (*(v27 + 16))(v30, v26, v28);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v27 + 8))(v26, v28);
    sub_219F85A98(v24, type metadata accessor for ActivityDownloadResult);
    v31 = type metadata accessor for NewsLiveActivityAttributes;
    v32 = v25;
    goto LABEL_19;
  }

  v34 = v0[8];
  v33 = v0[9];
  v35 = v0[4];
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E40) + 48);
  sub_219F85A30(v15, v33, type metadata accessor for NewsLiveActivityAttributes);
  sub_219F85A30(v15 + v36, v34, type metadata accessor for NewsLiveActivityContent);
  v37 = v35[3];
  v38 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v37);
  v59 = (*(v38 + 48) + **(v38 + 48));
  v39 = swift_task_alloc();
  v0[19] = v39;
  *v39 = v0;
  v39[1] = sub_219F84D2C;
  v40 = v0[8];
  v41 = v0[9];

  return v59(v41, v40, v37, v38);
}

uint64_t sub_219F84D2C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_219F8518C;
  }

  else
  {
    v2 = sub_219F84E40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219F84E40()
{
  v1 = v0[14];
  v2 = v0[9];
  sub_219F85A98(v0[8], type metadata accessor for NewsLiveActivityContent);
  sub_219F85A98(v2, type metadata accessor for NewsLiveActivityAttributes);
  sub_219F85A98(v1, type metadata accessor for ActivityDownloadResult);

  v3 = v0[1];

  return v3();
}

uint64_t sub_219F84F50()
{
  v16 = v0;
  v1 = v0[18];
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v2 = sub_21A0E516C();
  __swift_project_value_buffer(v2, qword_280C88498);

  v3 = v1;
  v4 = sub_21A0E514C();
  v5 = sub_21A0E669C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_219F50144(v7, v6, &v15);
    *(v8 + 12) = 2114;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_219F39000, v4, v5, "Failed to fetch or start activity for newsID: %{public}s, error: %{public}@", v8, 0x16u);
    sub_219F8590C(v9);
    MEMORY[0x21CED2D30](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CED2D30](v10, -1, -1);
    MEMORY[0x21CED2D30](v8, -1, -1);
  }

  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_219F8518C()
{
  v18 = v0;
  v1 = v0[14];
  v2 = v0[9];
  sub_219F85A98(v0[8], type metadata accessor for NewsLiveActivityContent);
  sub_219F85A98(v2, type metadata accessor for NewsLiveActivityAttributes);
  sub_219F85A98(v1, type metadata accessor for ActivityDownloadResult);
  v3 = v0[20];
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v4 = sub_21A0E516C();
  __swift_project_value_buffer(v4, qword_280C88498);

  v5 = v3;
  v6 = sub_21A0E514C();
  v7 = sub_21A0E669C();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[15];
    v8 = v0[16];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_219F50144(v9, v8, &v17);
    *(v10 + 12) = 2114;
    v13 = v3;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_219F39000, v6, v7, "Failed to fetch or start activity for newsID: %{public}s, error: %{public}@", v10, 0x16u);
    sub_219F8590C(v11);
    MEMORY[0x21CED2D30](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CED2D30](v12, -1, -1);
    MEMORY[0x21CED2D30](v10, -1, -1);
  }

  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_219F85420(uint64_t a1, void *a2)
{
  v3[5] = a1;
  v3[6] = v2;
  v4 = a2[1];
  v3[7] = *a2;
  v3[8] = v4;
  return MEMORY[0x2822009F8](sub_219F85448, 0, 0);
}

uint64_t sub_219F85448()
{
  v2 = v0[7];
  v1 = v0[8];
  __swift_project_boxed_opaque_existential_1((v0[6] + 40), *(v0[6] + 64));
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_219F8550C;
  v4 = v0[5];

  return sub_21A05CDFC(v4, v0 + 2);
}

uint64_t sub_219F8550C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_219F85640, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_219F85640()
{
  v1 = *(v0 + 80);
  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E48);
  if (swift_dynamicCast())
  {

    type metadata accessor for LiveActivitySubscriptionError(0);
    sub_219F859D8();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {

    swift_willThrow();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_219F85748(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_219F4996C;

  return sub_219F84300(a1);
}

uint64_t sub_219F85830()
{
  sub_219F858B8();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_219F858B8()
{
  result = qword_27CCD9E20;
  if (!qword_27CCD9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9E20);
  }

  return result;
}

uint64_t sub_219F8590C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9E28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219F85974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDownloadResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_219F859D8()
{
  result = qword_27CCD9E38;
  if (!qword_27CCD9E38)
  {
    type metadata accessor for LiveActivitySubscriptionError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9E38);
  }

  return result;
}

uint64_t sub_219F85A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219F85A98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219F85B10()
{
  result = qword_27CCD9E50;
  if (!qword_27CCD9E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9E50);
  }

  return result;
}

uint64_t sub_219F85B64(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v121 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v119 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v118 = &v107 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v117 = &v107 - v15;
  v16 = type metadata accessor for LiveBlogDynamicIsland();
  v120 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 0;
  sub_219F87E24(v125);
  memcpy(v19 + 48, v125, 0x9E9uLL);
  v20 = &v19[*(v16 + 28)];
  sub_219F87EAC(v126);
  v21 = v126[11];
  *(v20 + 10) = v126[10];
  *(v20 + 11) = v21;
  *(v20 + 12) = v126[12];
  *(v20 + 26) = v127;
  v22 = v126[7];
  *(v20 + 6) = v126[6];
  *(v20 + 7) = v22;
  v23 = v126[9];
  *(v20 + 8) = v126[8];
  *(v20 + 9) = v23;
  v24 = v126[3];
  *(v20 + 2) = v126[2];
  *(v20 + 3) = v24;
  v25 = v126[5];
  *(v20 + 4) = v126[4];
  *(v20 + 5) = v25;
  v26 = v126[1];
  *v20 = v126[0];
  *(v20 + 1) = v26;
  v27 = *(v16 + 32);
  v28 = v16;
  v111 = v16;
  v29 = &v19[v27];
  sub_219F5EC1C(v128);
  v30 = v128[7];
  v31 = v128[9];
  *(v29 + 8) = v128[8];
  *(v29 + 9) = v31;
  *(v29 + 10) = v128[10];
  v32 = v128[3];
  v33 = v128[5];
  *(v29 + 4) = v128[4];
  *(v29 + 5) = v33;
  *(v29 + 6) = v128[6];
  *(v29 + 7) = v30;
  v34 = v128[1];
  *v29 = v128[0];
  *(v29 + 1) = v34;
  *(v29 + 2) = v128[2];
  *(v29 + 3) = v32;
  v35 = *(v28 + 36);
  v116 = v35;
  v36 = type metadata accessor for ActivityHeaderViewModel();
  (*(*(v36 - 8) + 56))(&v19[v35], 1, 1, v36);
  v37 = &v19[*(v28 + 44)];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v38 = type metadata accessor for LiveBlogStaticAttributes();
  v112 = v5;
  v113 = v38;
  v39 = *(v38 + 32);
  memcpy(v129, (v5 + v39), 0x9E9uLL);
  memcpy(v132, (v5 + v39), 0x9E9uLL);
  v40 = type metadata accessor for LiveBlogContentState();
  v41 = *(v40 + 28);
  v42 = v40;
  memcpy(v130, (v4 + v41), 0x9E9uLL);
  memcpy(v124, (v4 + v41), 0x9E9uLL);
  sub_219F45500(v129, v131, &qword_27CCD9EB0);
  sub_219F45500(v130, v131, &qword_27CCD9EB0);
  sub_21A0B36AC(v132, v124);
  memcpy(v132, v19 + 48, 0x9E9uLL);
  sub_219F6409C(v132, &qword_27CCD9EB0);
  v110 = v19;
  memcpy(v19 + 48, v131, 0x9E9uLL);
  v114 = v4;
  v115 = v42;
  v43 = (v4 + *(v42 + 20));
  v45 = v43[3];
  v135 = v43[2];
  v44 = v135;
  v136 = v45;
  v137 = v43[4];
  v46 = v137;
  v48 = *v43;
  v134 = v43[1];
  v47 = v134;
  v133 = v48;
  v49 = v111;
  v50 = &v19[*(v111 + 40)];
  *(v50 + 3) = v45;
  *(v50 + 4) = v46;
  *(v50 + 1) = v47;
  *(v50 + 2) = v44;
  *v50 = v48;
  v51 = (v4 + *(v42 + 24));
  v52 = *v51;
  v53 = v51[1];
  v55 = v51[2];
  v54 = v51[3];
  v56 = *v37;
  v108 = *(v37 + 1);
  v109 = v56;
  v107 = *(v37 + 3);
  *v37 = v52;
  *(v37 + 1) = v53;
  *(v37 + 2) = v55;
  *(v37 + 3) = v54;
  v57 = v49;
  sub_219F87ED4(&v133, v124);
  sub_219F87F30(v52, v53);
  sub_219F87F74(v109, v108);
  v58 = v112;
  v59 = v113;
  v60 = v110;
  sub_219F88AC0(v112 + v113[5], &v110[*(v57 + 24)], type metadata accessor for ActivityMinimalAppearanceTheme);
  v61 = v58 + v59[6];
  v62 = *(v61 + 144);
  v138[10] = *(v61 + 160);
  v63 = *(v61 + 160);
  v138[11] = *(v61 + 176);
  v64 = *(v61 + 176);
  v138[12] = *(v61 + 192);
  v65 = *(v61 + 80);
  v138[6] = *(v61 + 96);
  v66 = *(v61 + 96);
  v138[7] = *(v61 + 112);
  v67 = *(v61 + 112);
  v138[8] = *(v61 + 128);
  v68 = *(v61 + 128);
  v138[9] = *(v61 + 144);
  v69 = *(v61 + 16);
  v138[2] = *(v61 + 32);
  v70 = *(v61 + 32);
  v138[3] = *(v61 + 48);
  v71 = *(v61 + 48);
  v138[4] = *(v61 + 64);
  v72 = *(v61 + 64);
  v138[5] = *(v61 + 80);
  v73 = *v61;
  v138[1] = *(v61 + 16);
  v138[0] = *v61;
  v74 = *(v20 + 11);
  v124[10] = *(v20 + 10);
  v124[11] = v74;
  v124[12] = *(v20 + 12);
  v75 = *(v20 + 7);
  v124[6] = *(v20 + 6);
  v124[7] = v75;
  v76 = *(v20 + 9);
  v124[8] = *(v20 + 8);
  v124[9] = v76;
  v77 = *(v20 + 3);
  v124[2] = *(v20 + 2);
  v124[3] = v77;
  v78 = *(v20 + 5);
  v124[4] = *(v20 + 4);
  v124[5] = v78;
  v79 = *(v20 + 1);
  v124[0] = *v20;
  v124[1] = v79;
  *(v20 + 10) = v63;
  *(v20 + 11) = v64;
  *(v20 + 12) = *(v61 + 192);
  *(v20 + 6) = v66;
  *(v20 + 7) = v67;
  *(v20 + 8) = v68;
  *(v20 + 9) = v62;
  *(v20 + 2) = v70;
  *(v20 + 3) = v71;
  *(v20 + 4) = v72;
  *(v20 + 5) = v65;
  v139 = *(v61 + 208);
  *&v124[13] = *(v20 + 26);
  *(v20 + 26) = *(v61 + 208);
  *v20 = v73;
  *(v20 + 1) = v69;
  v80 = v60;
  sub_219F45500(v138, v123, &qword_27CCD9EB8);
  sub_219F6409C(v124, &qword_27CCD9EB8);
  v81 = (v58 + v59[7]);
  v82 = v81[6];
  v140[7] = v81[7];
  v83 = v81[7];
  v140[8] = v81[8];
  v84 = v81[8];
  v140[9] = v81[9];
  v85 = v81[9];
  v140[10] = v81[10];
  v86 = v81[2];
  v140[3] = v81[3];
  v87 = v81[3];
  v140[4] = v81[4];
  v88 = v81[4];
  v140[5] = v81[5];
  v89 = v81[5];
  v140[6] = v81[6];
  v90 = *v81;
  v140[1] = v81[1];
  v91 = v81[1];
  v140[2] = v81[2];
  v140[0] = *v81;
  v92 = *(v29 + 9);
  v123[8] = *(v29 + 8);
  v123[9] = v92;
  v123[10] = *(v29 + 10);
  v93 = *(v29 + 5);
  v123[4] = *(v29 + 4);
  v123[5] = v93;
  v94 = *(v29 + 7);
  v123[6] = *(v29 + 6);
  v123[7] = v94;
  v95 = *(v29 + 1);
  v123[0] = *v29;
  v123[1] = v95;
  v96 = *(v29 + 3);
  v123[2] = *(v29 + 2);
  v123[3] = v96;
  v97 = v114;
  *(v29 + 8) = v84;
  *(v29 + 9) = v85;
  *(v29 + 10) = v81[10];
  *(v29 + 4) = v88;
  *(v29 + 5) = v89;
  *(v29 + 6) = v82;
  *(v29 + 7) = v83;
  *v29 = v90;
  *(v29 + 1) = v91;
  *(v29 + 2) = v86;
  *(v29 + 3) = v87;
  v98 = v58;
  sub_219F45500(v140, v122, &qword_27CCD9B40);
  sub_219F6409C(v123, &qword_27CCD9B40);
  v99 = v118;
  sub_219F45500(v58, v118, &qword_27CCD9608);
  v100 = v119;
  sub_219F45500(v97, v119, &qword_27CCD9608);
  v101 = v117;
  ActivityHeaderViewModel.init(from:override:)(v99, v100, v117);
  sub_219F87FB8(v101, v80 + v116);
  v102 = *(v98 + v59[9]);
  v103 = *(v97 + *(v115 + 32));
  if (v102)
  {
    if (!v103)
    {

      sub_219F88CF0(v97, type metadata accessor for LiveBlogContentState);
      sub_219F88CF0(v98, type metadata accessor for LiveBlogStaticAttributes);
      v103 = v102;
      goto LABEL_7;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122[0] = v102;
    sub_219F881A0(v103, sub_219F880E0, 0, isUniquelyReferenced_nonNull_native, v122);

    v103 = v122[0];
  }

  else
  {
  }

  sub_219F88CF0(v97, type metadata accessor for LiveBlogContentState);
  sub_219F88CF0(v98, type metadata accessor for LiveBlogStaticAttributes);
LABEL_7:
  *(v80 + *(v57 + 48)) = v103;
  v105 = v121;
  sub_219F88AC0(v80, v121, type metadata accessor for LiveBlogDynamicIsland);
  (*(v120 + 56))(v105, 0, 1, v57);
  return sub_219F88CF0(v80, type metadata accessor for LiveBlogDynamicIsland);
}

uint64_t type metadata accessor for LiveBlogDynamicIsland()
{
  result = qword_27CCD9EC8;
  if (!qword_27CCD9EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219F864E4@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v2 = type metadata accessor for ActivityMinimalView();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9EE8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v68 - v8;
  v10 = sub_21A0E554C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v81 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LiveBlogDynamicIsland();
  v15 = v1 + *(v14 + 28);
  v16 = *(v15 + 176);
  v17 = *(v15 + 144);
  v147 = *(v15 + 160);
  v148 = v16;
  v18 = *(v15 + 176);
  v149 = *(v15 + 192);
  v19 = *(v15 + 112);
  v20 = *(v15 + 80);
  v143 = *(v15 + 96);
  v144 = v19;
  v21 = *(v15 + 112);
  v22 = *(v15 + 144);
  v145 = *(v15 + 128);
  v146 = v22;
  v23 = *(v15 + 48);
  v24 = *(v15 + 16);
  v139 = *(v15 + 32);
  v140 = v23;
  v25 = *(v15 + 48);
  v26 = *(v15 + 80);
  v141 = *(v15 + 64);
  v142 = v26;
  v27 = *(v15 + 16);
  v138[0] = *v15;
  v138[1] = v27;
  v161 = v147;
  v162 = v18;
  v163 = *(v15 + 192);
  v157 = v143;
  v158 = v21;
  v159 = v145;
  v160 = v17;
  v153 = v139;
  v154 = v25;
  v155 = v141;
  v156 = v20;
  v150 = *(v15 + 208);
  v164 = *(v15 + 208);
  v151 = v138[0];
  v152 = v24;
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore7DynamicVyAA17ActivityTextThemeV6TraitsVGSg_0(&v151) == 1)
  {
    goto LABEL_11;
  }

  v79 = v6;
  v80 = v2;
  v71 = v5;
  v72 = v11;
  v73 = v10;
  v77 = v151;
  v78 = v9;
  v28 = *(v1 + *(v14 + 48));
  v30 = *v1;
  v29 = *(v1 + 8);
  v31 = *(v1 + 16);
  v32 = *(v1 + 24);
  v33 = *(v1 + 32);
  v34 = *(v1 + 40);
  v75 = v32;
  v76 = *(&v151 + 1);
  v74 = v31;
  if (v34 == 1)
  {
    *&v135 = v30;
    *(&v135 + 1) = v29;
    *&v136 = v31;
    *(&v136 + 1) = v32;
    v137 = v33;
    v35 = v29;
    sub_219F45500(v138, &v122, &qword_27CCD9EB8);

    sub_219F7F800(v30, v35, v74, v75, v33, 1);
  }

  else
  {
    v36 = v31;
    v37 = v29;
    v68 = v29;
    v69 = v33;
    sub_219F45500(v138, &v122, &qword_27CCD9EB8);

    sub_219F7F800(v30, v37, v36, v32, v33, 0);
    sub_21A0E66AC();
    v38 = sub_21A0E575C();
    v70 = v28;
    v39 = v38;
    v9 = v78;
    sub_21A0E512C();

    v40 = v81;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v30, v68, v74, v75, v69, 0);
    v41 = v40;
    v28 = v70;
    (*(v72 + 8))(v41, v73);
  }

  v122 = v135;
  v123 = v136;
  *&v124 = v137;
  v42 = sub_21A0B892C(v77, v76, v28, &v122);
  if (!v45)
  {
    sub_219F6409C(v138, &qword_27CCD9EB8);
    v5 = v71;
LABEL_11:
    sub_219F8735C(v5);
    sub_219F88AC0(v5, v9, type metadata accessor for ActivityMinimalView);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9EF0);
    sub_219F88B28();
    sub_219F88C98();
    sub_21A0E56BC();
    return sub_219F88CF0(v5, type metadata accessor for ActivityMinimalView);
  }

  v75 = v44;
  v76 = v43;
  v74 = v42;
  v77 = v45;
  v132 = v162;
  v133 = v163;
  v134 = v164;
  v128 = v158;
  v129 = v159;
  v130 = v160;
  v131 = v161;
  v124 = v154;
  v125 = v155;
  v126 = v156;
  v127 = v157;
  v122 = v152;
  v123 = v153;
  sub_219F45500(&v152, &v103, &qword_27CCD95B8);
  if (qword_27CCD9158 != -1)
  {
    swift_once();
  }

  v120[2] = xmmword_27CCD9E78;
  v120[3] = unk_27CCD9E88;
  v120[4] = xmmword_27CCD9E98;
  v121 = dword_27CCD9EA8;
  v120[0] = xmmword_27CCD9E58;
  v120[1] = unk_27CCD9E68;
  v99 = xmmword_27CCD9E78;
  v100 = unk_27CCD9E88;
  v101 = xmmword_27CCD9E98;
  v102 = dword_27CCD9EA8;
  v97 = xmmword_27CCD9E58;
  v98 = unk_27CCD9E68;
  sub_219F639D4(v120, &v103);
  sub_219F875A4(&v103);
  v96 = byte_21A0EB4F2[v103];
  v47 = *v1;
  v46 = *(v1 + 8);
  v49 = *(v1 + 16);
  v48 = *(v1 + 24);
  v50 = *(v1 + 32);
  if (*(v1 + 40) == 1)
  {
    *&v93 = *v1;
    *(&v93 + 1) = v46;
    *&v94 = v49;
    *(&v94 + 1) = v48;
    v95 = v50;
    *&v103 = v47;
    *(&v103 + 1) = v46;
    *&v104 = v49;
    *(&v104 + 1) = v48;
    *&v105 = v50;
    BYTE8(v105) = 1;
    sub_219F63900(&v103, v91);
  }

  else
  {

    LODWORD(v71) = sub_21A0E66AC();
    v52 = sub_21A0E575C();
    sub_21A0E512C();

    v53 = v81;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v47, v46, v49, v48, v50, 0);
    (*(v72 + 8))(v53, v73);
  }

  v84 = v93;
  v85 = v94;
  *&v86 = v95;
  v54 = v74;
  v55 = Text.activityTextModifier(_:fallback:font:environment:)(&v122, &v97, &v96, &v84, v74, v76, v75 & 1);
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v89[0] = v84;
  v89[1] = v85;
  v90 = v86;
  sub_219F5ED9C(v89);
  v91[2] = v99;
  v91[3] = v100;
  v91[4] = v101;
  v92 = v102;
  v91[0] = v97;
  v91[1] = v98;
  sub_219F6409C(v91, &qword_27CCD95B0);
  v113 = v132;
  v114 = v133;
  v115 = v134;
  v109 = v128;
  v110 = v129;
  v111 = v130;
  v112 = v131;
  v105 = v124;
  v106 = v125;
  v107 = v126;
  v108 = v127;
  v103 = v122;
  v104 = v123;
  sub_219F6409C(&v103, &qword_27CCD95B8);
  KeyPath = swift_getKeyPath();
  sub_219F875A4(&v84);
  v63 = qword_21A0EB500[v84];
  v64 = swift_getKeyPath();
  v119 = v59 & 1;
  v117 = 0;
  *&v84 = v55;
  *(&v84 + 1) = v57;
  LOBYTE(v85) = v59 & 1;
  *(&v85 + 1) = *v118;
  DWORD1(v85) = *&v118[3];
  *(&v85 + 1) = v61;
  *&v86 = KeyPath;
  *(&v86 + 1) = 1;
  LOBYTE(v87) = 0;
  DWORD1(v87) = *&v116[3];
  *(&v87 + 1) = *v116;
  *(&v87 + 1) = v64;
  v88 = v63;
  v65 = v85;
  v66 = v78;
  *v78 = v84;
  *(v66 + 1) = v65;
  v67 = v87;
  *(v66 + 2) = v86;
  *(v66 + 3) = v67;
  *(v66 + 8) = v88;
  swift_storeEnumTagMultiPayload();
  sub_219F45500(&v84, v83, &qword_27CCD9EF0);
  sub_219F45500(&v84, v83, &qword_27CCD9EF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9EF0);
  sub_219F88B28();
  sub_219F88C98();
  sub_21A0E56BC();
  sub_219F63A30(v54, v76, v75 & 1);

  sub_219F6409C(v138, &qword_27CCD9EB8);
  sub_219F6409C(&v84, &qword_27CCD9EF0);
  return sub_219F6409C(&v84, &qword_27CCD9EF0);
}

uint64_t sub_219F86DB4@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v28 - v13;
  v15 = (v1 + *(type metadata accessor for LiveBlogDynamicIsland() + 32));
  v16 = v15[7];
  v17 = v15[9];
  v48 = v15[8];
  v49 = v17;
  v18 = v15[9];
  v50 = v15[10];
  v19 = v15[3];
  v20 = v15[5];
  v44 = v15[4];
  v45 = v20;
  v21 = v15[5];
  v22 = v15[7];
  v46 = v15[6];
  v47 = v22;
  v23 = v15[1];
  v24 = v15[3];
  v42 = v15[2];
  v43 = v24;
  v25 = v15[1];
  v41[0] = *v15;
  v41[1] = v25;
  v38 = v48;
  v39 = v18;
  v40 = v15[10];
  v34 = v44;
  v35 = v21;
  v36 = v46;
  v37 = v16;
  v30 = v41[0];
  v31 = v23;
  v32 = v42;
  v33 = v19;
  sub_219F45500(v41, v51, &qword_27CCD9B40);
  static ActivityMinimalAppearanceTheme.newsLogo(with:)(&v30, v14);
  v51[8] = v38;
  v51[9] = v39;
  v51[10] = v40;
  v51[4] = v34;
  v51[5] = v35;
  v51[6] = v36;
  v51[7] = v37;
  v51[0] = v30;
  v51[1] = v31;
  v51[2] = v32;
  v51[3] = v33;
  sub_219F6409C(v51, &qword_27CCD9B40);
  (*(v3 + 56))(v14, 0, 1, v2);
  sub_219F45500(v14, v11, &qword_27CCD9628);
  v26 = *(v3 + 48);
  if (v26(v11, 1, v2) == 1)
  {
    static ActivityMinimalAppearanceTheme.defaultValue.getter(v6);
    sub_219F6409C(v14, &qword_27CCD9628);
    if (v26(v11, 1, v2) != 1)
    {
      sub_219F6409C(v11, &qword_27CCD9628);
    }
  }

  else
  {
    sub_219F6409C(v14, &qword_27CCD9628);
    sub_219F88A5C(v11, v6);
  }

  return sub_219F88A5C(v6, v29);
}

uint64_t sub_219F870B8(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  memcpy(v37, (v2 + 48), 0x9E9uLL);
  if (sub_219F88A28(v37) == 1)
  {
    sub_219F638CC(v36);
  }

  else
  {
    sub_219F45500(&v37[800], &v23, &qword_27CCD9578);
    memcpy(v36, &v37[800], sizeof(v36));
  }

  v5 = type metadata accessor for LiveBlogDynamicIsland();
  v6 = (v2 + *(v5 + 40));
  v7 = v6[4];
  v18 = v6[3];
  v19 = v7;
  v8 = v6[2];
  v16 = v6[1];
  v17 = v8;
  v15 = *v6;
  v9 = *(v2 + *(v5 + 48));
  KeyPath = swift_getKeyPath();
  v35 = 0;
  sub_219F638CC(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_219F87ED4(&v15, &v23);

  sub_219F6409C(__dst, &qword_27CCD9578);
  memcpy(&v34[7], v36, 0x3E8uLL);
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v28 = v15;
  v29 = v16;
  v11 = v35;
  v14[1144] = 0;
  memset(&v22[1], 0, 32);
  LOBYTE(v22[5]) = v35;
  v22[0] = KeyPath;
  memcpy(&v22[5] + 1, v34, 0x3EFuLL);
  *&v22[135] = v17;
  *&v22[137] = v18;
  *&v22[139] = v19;
  *&v22[131] = v15;
  *&v22[133] = v16;
  v22[141] = v9;
  memcpy(&v14[7], v22, 0x470uLL);
  v13[1136] = 0;
  *v4 = 0x402C000000000000;
  *(v4 + 8) = 0;
  memcpy((v4 + 9), v14, 0x477uLL);
  *(v4 + 1152) = 0x4010000000000000;
  *(v4 + 1160) = 0;
  v23 = KeyPath;
  v24 = 0u;
  v25 = 0u;
  v26 = v11;
  memcpy(v27, v34, sizeof(v27));
  v33 = v9;
  sub_219F88D50(v22, v13);
  return sub_219F88DAC(&v23);
}

uint64_t sub_219F8735C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v19 - v14;
  v16 = type metadata accessor for LiveBlogDynamicIsland();
  sub_219F88AC0(v1 + *(v16 + 24), v15, type metadata accessor for ActivityMinimalAppearanceTheme);
  (*(v4 + 56))(v15, 0, 1, v3);
  sub_219F45500(v15, v12, &qword_27CCD9628);
  v17 = *(v4 + 48);
  if (v17(v12, 1, v3) == 1)
  {
    static ActivityMinimalAppearanceTheme.defaultValue.getter(v7);
    sub_219F6409C(v15, &qword_27CCD9628);
    if (v17(v12, 1, v3) != 1)
    {
      sub_219F6409C(v12, &qword_27CCD9628);
    }
  }

  else
  {
    sub_219F6409C(v15, &qword_27CCD9628);
    sub_219F88A5C(v12, v7);
  }

  return sub_219F88A5C(v7, a1);
}

uint64_t sub_219F875A4@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_21A0E554C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(type metadata accessor for LiveBlogDynamicIsland() + 28));
  v9 = v8[11];
  v98 = v8[10];
  v99 = v9;
  v100 = v8[12];
  v10 = v8[7];
  v94 = v8[6];
  v95 = v10;
  v11 = v8[9];
  v96 = v8[8];
  v97 = v11;
  v12 = v8[3];
  v90 = v8[2];
  v91 = v12;
  v13 = v8[5];
  v92 = v8[4];
  v93 = v13;
  v14 = *v8;
  v89 = v8[1];
  v101 = *(v8 + 26);
  v88 = v14;
  result = get_enum_tag_for_layout_string_22NewsLiveActivitiesCore7DynamicVyAA17ActivityTextThemeV6TraitsVGSg_0(&v88);
  if (result == 1)
  {
    goto LABEL_12;
  }

  v72 = v99;
  v73 = v100;
  v74 = v101;
  v68 = v95;
  v69 = v96;
  v70 = v97;
  v71 = v98;
  v64 = v91;
  v65 = v92;
  v66 = v93;
  v67 = v94;
  v62 = v89;
  v63 = v90;
  result = sub_219F63C20(&v62);
  if (result == 1)
  {
    goto LABEL_12;
  }

  v37 = v7;
  v38 = v4;
  v17 = *v1;
  v16 = *(v1 + 8);
  v19 = *(v1 + 16);
  v18 = *(v1 + 24);
  v20 = *(v1 + 32);
  v21 = *(v1 + 40);
  v39 = v3;
  v40 = a1;
  if (v21 == 1)
  {
    *&v59 = v17;
    *(&v59 + 1) = v16;
    *&v60 = v19;
    *(&v60 + 1) = v18;
    v61 = v20;
    sub_219F45500(&v89, v58, &qword_27CCD95B8);
    sub_219F7F800(v17, v16, v19, v18, v20, 1);
  }

  else
  {
    sub_219F45500(&v89, v58, &qword_27CCD95B8);
    sub_219F7F800(v17, v16, v19, v18, v20, 0);
    sub_21A0E66AC();
    v22 = sub_21A0E575C();
    sub_21A0E512C();

    v23 = v39;
    v24 = v37;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v17, v16, v19, v18, v20, 0);
    (*(v38 + 8))(v24, v23);
  }

  v48 = v59;
  v49 = v60;
  v84 = v71;
  v85 = v72;
  v86 = v73;
  v87 = v74;
  v82 = v69;
  v83 = v70;
  v77 = v64;
  v78 = v65;
  v80 = v67;
  v81 = v68;
  v79 = v66;
  v75 = v62;
  v76 = v63;
  *&v50[0] = v61;
  *(&v51 + 1) = MEMORY[0x277D84F90];
  sub_219F63C38(&v62, &v44);
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  *(&v50[8] + 8) = v70;
  *(&v50[9] + 8) = v71;
  *(&v50[10] + 8) = v72;
  *(&v50[4] + 8) = v66;
  *(&v50[5] + 8) = v67;
  *(&v50[6] + 8) = v68;
  *(&v50[7] + 8) = v69;
  *(v50 + 8) = v62;
  *(&v50[1] + 8) = v63;
  *(&v50[2] + 8) = v64;
  *(&v50[3] + 8) = v65;
  *(&v50[11] + 1) = v73;
  *&v51 = qword_27CCDBDB0;

  sub_219F8AD10(&v48);
  sub_219F6409C(&v89, &qword_27CCD95B8);
  v54 = *(&v50[8] + 8);
  v55 = *(&v50[9] + 8);
  v56 = *(&v50[10] + 8);
  v57 = *(&v50[11] + 1);
  v52[4] = *(&v50[4] + 8);
  v52[5] = *(&v50[5] + 8);
  v52[6] = *(&v50[6] + 8);
  v53 = *(&v50[7] + 8);
  v52[0] = *(v50 + 8);
  v52[1] = *(&v50[1] + 8);
  v52[2] = *(&v50[2] + 8);
  v52[3] = *(&v50[3] + 8);
  v58[12] = v50[10];
  v58[13] = v50[11];
  v58[14] = v51;
  v58[8] = v50[6];
  v58[9] = v50[7];
  v58[10] = v50[8];
  v58[11] = v50[9];
  v58[4] = v50[2];
  v58[5] = v50[3];
  v58[6] = v50[4];
  v58[7] = v50[5];
  v58[0] = v48;
  v58[1] = v49;
  v58[2] = v50[0];
  v58[3] = v50[1];
  sub_219F63C38(v52, &v44);
  sub_219F6409C(v58, &qword_27CCD95C8);
  v25 = v53;
  v26 = v54;
  sub_219F63C94(v53, *(&v53 + 1));
  result = sub_219F63CD8(v52);
  if (!*(&v25 + 1))
  {
    a1 = v40;
LABEL_12:
    *a1 = 9;
    return result;
  }

  v28 = *v1;
  v27 = *(v1 + 8);
  v30 = *(v1 + 16);
  v29 = *(v1 + 24);
  v31 = *(v1 + 32);
  if (*(v1 + 40))
  {
    *&v41 = *v1;
    *(&v41 + 1) = v27;
    *&v42 = v30;
    *(&v42 + 1) = v29;
    v43 = v31;
    *&v48 = v28;
    *(&v48 + 1) = v27;
    *&v49 = v30;
    *(&v49 + 1) = v29;
    *&v50[0] = v31;
    BYTE8(v50[0]) = 1;
    sub_219F63900(&v48, &v44);
  }

  else
  {
    v36 = *(v1 + 32);

    v35[3] = sub_21A0E66AC();
    v32 = sub_21A0E575C();
    sub_21A0E512C();

    v33 = v37;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v28, v27, v30, v29, v36, 0);
    (*(v38 + 8))(v33, v39);
  }

  v44 = v41;
  v45 = v42;
  *&v46 = v43;
  BYTE8(v46) = v25;
  *&v47 = qword_27CCDBDB0;
  *(&v47 + 1) = MEMORY[0x277D84F90];

  sub_219F8AA84(&v44, v25, *(&v25 + 1), v26);
  sub_219F63D2C(v25, *(&v25 + 1));
  v34 = BYTE8(v46);
  v48 = v44;
  v49 = v45;
  v50[0] = v46;
  v50[1] = v47;
  result = sub_219F6409C(&v48, &qword_27CCD9F20);
  *v40 = v34;
  return result;
}

void *sub_219F87C14(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = sub_21A0E567C();
  v12 = 0;
  sub_219F870B8(v2, v6);
  memcpy(__dst, __src, 0x489uLL);
  memcpy(v14, __src, 0x489uLL);
  sub_219F45500(__dst, v9, &qword_27CCD9F28);
  sub_219F6409C(v14, &qword_27CCD9F28);
  memcpy(&v11[7], __dst, 0x489uLL);
  v7 = v12;
  *v4 = v5;
  *(v4 + 8) = 0;
  *(v4 + 16) = v7;
  return memcpy((v4 + 17), v11, 0x490uLL);
}

__n128 sub_219F87D10@<Q0>(uint64_t a1@<X8>)
{
  memcpy(v5, (v1 + 48), 0x9E9uLL);
  if (sub_219F88A28(v5) == 1)
  {
    result.n128_u64[0] = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = xmmword_21A0EB370;
    *(a1 + 64) = 0;
    *(a1 + 68) = 2;
  }

  else
  {
    v4 = *&v5[281];
    *(a1 + 32) = *&v5[279];
    *(a1 + 48) = v4;
    *(a1 + 61) = *(&v5[282] + 5);
    result = *&v5[277];
    *a1 = *&v5[275];
    *(a1 + 16) = result;
  }

  return result;
}

double sub_219F87DA4()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 92) = 62;
  *(v0 + 88) = 0;
  *&xmmword_27CCD9E58 = v0;
  BYTE4(xmmword_27CCD9E98) = 32;
  LODWORD(xmmword_27CCD9E98) = 0;
  *(&xmmword_27CCD9E98 + 1) = 0;
  dword_27CCD9EA8 = 50725377;
  return result;
}

double sub_219F87E24(uint64_t a1)
{
  bzero(a1, 0x8C8uLL);
  *(a1 + 2248) = 4294967292;
  *(a1 + 2256) = xmmword_21A0EB380;
  result = 0.0;
  *(a1 + 2272) = 0u;
  *(a1 + 2288) = 0u;
  *(a1 + 2304) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2336) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2368) = 0u;
  *(a1 + 2384) = 0u;
  *(a1 + 2400) = 0u;
  *(a1 + 2416) = 0u;
  *(a1 + 2432) = 0u;
  *(a1 + 2448) = 0u;
  *(a1 + 2464) = 0u;
  *(a1 + 2480) = 0u;
  *(a1 + 2496) = 0u;
  *(a1 + 2512) = 0u;
  *(a1 + 2521) = 0u;
  return result;
}

double sub_219F87EAC(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_219F87F30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_219F87F74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_219F87FB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_219F88028@<X0>(uint64_t a1@<X8>)
{
  result = sub_21A0E551C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_219F8808C@<X0>(void *a1@<X8>)
{
  result = sub_21A0E549C();
  *a1 = v3;
  return result;
}

uint64_t sub_219F880E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 10);
  v32 = *(a1 + 11);
  v33 = v2;
  v4 = *(a1 + 12);
  v34[0] = *(a1 + 13);
  *(v34 + 9) = *(a1 + 217);
  v5 = *(a1 + 8);
  v7 = *(a1 + 6);
  v28 = *(a1 + 7);
  v6 = v28;
  v29 = v5;
  v8 = *(a1 + 8);
  v9 = *(a1 + 10);
  v30 = *(a1 + 9);
  v10 = v30;
  v31 = v9;
  v11 = *(a1 + 4);
  v13 = *(a1 + 2);
  v24 = *(a1 + 3);
  v12 = v24;
  v25 = v11;
  v14 = *(a1 + 4);
  v15 = *(a1 + 6);
  v26 = *(a1 + 5);
  v16 = v26;
  v27 = v15;
  v17 = *(a1 + 2);
  v23[0] = *(a1 + 1);
  v18 = v23[0];
  v23[1] = v17;
  *(a2 + 176) = v32;
  *(a2 + 192) = v4;
  *(a2 + 208) = *(a1 + 13);
  *(a2 + 217) = *(a1 + 217);
  *(a2 + 112) = v6;
  *(a2 + 128) = v8;
  *(a2 + 144) = v10;
  *(a2 + 160) = v3;
  *(a2 + 48) = v12;
  *(a2 + 64) = v14;
  *(a2 + 80) = v16;
  *(a2 + 96) = v7;
  v20 = *a1;
  v19 = a1[1];
  *(a2 + 16) = v18;
  *(a2 + 32) = v13;
  *a2 = v20;
  *(a2 + 8) = v19;

  return sub_219F7DC04(v23, &v22);
}

uint64_t sub_219F881A0(uint64_t a1, void (*a2)(__int128 *__return_ptr, __int128 *), uint64_t a3, char a4, void *a5)
{
  v138 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (1)
  {
    v30 = v9;
    v31 = v11;
    v83 = a4;
    if (!v9)
    {
      break;
    }

LABEL_15:
    v82 = (v30 - 1) & v30;
    v35 = __clz(__rbit64(v30)) | (v31 << 6);
    v36 = (*(a1 + 48) + 16 * v35);
    v38 = *v36;
    v37 = v36[1];
    v39 = (*(a1 + 56) + 224 * v35);
    v40 = v39[1];
    v97 = *v39;
    v98 = v40;
    v41 = v39[5];
    v43 = v39[2];
    v42 = v39[3];
    v101 = v39[4];
    v102 = v41;
    v99 = v43;
    v100 = v42;
    v44 = v39[9];
    v46 = v39[6];
    v45 = v39[7];
    v105 = v39[8];
    v106 = v44;
    v103 = v46;
    v104 = v45;
    v48 = v39[11];
    v47 = v39[12];
    v49 = v39[10];
    *(v109 + 9) = *(v39 + 201);
    v108 = v48;
    v109[0] = v47;
    v107 = v49;
    v50 = v39[11];
    v95 = v39[10];
    *v96 = v50;
    *&v96[16] = v39[12];
    *&v96[25] = *(v39 + 201);
    v51 = v39[7];
    v91 = v39[6];
    v92 = v51;
    v52 = v39[9];
    v93 = v39[8];
    v94 = v52;
    v53 = v39[3];
    v87 = v39[2];
    v88 = v53;
    v54 = v39[5];
    v89 = v39[4];
    v90 = v54;
    v55 = v39[1];
    v85 = *v39;
    v86 = v55;
    *&v84 = v38;
    *(&v84 + 1) = v37;

    sub_219F7DC04(&v97, &v110);
    a2(&v124, &v84);
    v122 = *v96;
    v123[0] = *&v96[16];
    *(v123 + 9) = *&v96[25];
    v118 = v92;
    v119 = v93;
    v120 = v94;
    v121 = v95;
    v114 = v88;
    v115 = v89;
    v116 = v90;
    v117 = v91;
    v110 = v84;
    v111 = v85;
    v112 = v86;
    v113 = v87;
    sub_219F6409C(&v110, &qword_27CCD9EC0);
    nullsub_1(&v124, v56);
    v81 = v31;
LABEL_16:
    v122 = v136;
    v123[0] = v137[0];
    *(v123 + 9) = *(v137 + 9);
    v118 = v132;
    v119 = v133;
    v120 = v134;
    v121 = v135;
    v114 = v128;
    v115 = v129;
    v116 = v130;
    v117 = v131;
    v110 = v124;
    v111 = v125;
    v112 = v126;
    v113 = v127;
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore7DynamicVyAA17ActivityTextThemeV6TraitsVGSg_0(&v110) == 1)
    {
      sub_219F5EC40();
    }

    v57 = v124;
    v94 = v135;
    v95 = v136;
    *v96 = v137[0];
    *&v96[9] = *(v137 + 9);
    v90 = v131;
    v91 = v132;
    v92 = v133;
    v93 = v134;
    v86 = v127;
    v87 = v128;
    v88 = v129;
    v89 = v130;
    v84 = v125;
    v85 = v126;
    v58 = *v138;
    v60 = sub_219F477B4(v124, *(&v124 + 1));
    v61 = v58[2];
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_31;
    }

    v64 = v59;
    if (v58[3] >= v63)
    {
      if (v83)
      {
        if (v59)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_21A0D46D4();
        if (v64)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_21A0D0F00(v63, v83 & 1);
      v65 = sub_219F477B4(v57, *(&v57 + 1));
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_33;
      }

      v60 = v65;
      if (v64)
      {
LABEL_5:
        v12 = *v138;

        v13 = (v12[7] + 224 * v60);
        v14 = v13[1];
        v97 = *v13;
        v98 = v14;
        v15 = v13[5];
        v17 = v13[2];
        v16 = v13[3];
        v101 = v13[4];
        v102 = v15;
        v99 = v17;
        v100 = v16;
        v18 = v13[6];
        v19 = v13[7];
        v20 = v13[9];
        v105 = v13[8];
        v106 = v20;
        v103 = v18;
        v104 = v19;
        v21 = v13[10];
        v22 = v13[11];
        v23 = v13[12];
        *(v109 + 9) = *(v13 + 201);
        v108 = v22;
        v109[0] = v23;
        v107 = v21;
        v24 = v95;
        v13[10] = v94;
        v13[11] = v24;
        v13[12] = *v96;
        *(v13 + 201) = *&v96[9];
        v25 = v91;
        v13[6] = v90;
        v13[7] = v25;
        v26 = v93;
        v13[8] = v92;
        v13[9] = v26;
        v27 = v87;
        v13[2] = v86;
        v13[3] = v27;
        v28 = v89;
        v13[4] = v88;
        v13[5] = v28;
        v29 = v85;
        *v13 = v84;
        v13[1] = v29;
        sub_219F7DC60(&v97);
        goto LABEL_6;
      }
    }

    v67 = *v138;
    v67[(v60 >> 6) + 8] |= 1 << v60;
    *(v67[6] + 16 * v60) = v57;
    v68 = (v67[7] + 224 * v60);
    v69 = v89;
    v68[4] = v88;
    v68[5] = v69;
    v70 = v87;
    v68[2] = v86;
    v68[3] = v70;
    v71 = v93;
    v68[8] = v92;
    v68[9] = v71;
    v72 = v91;
    v68[6] = v90;
    v68[7] = v72;
    *(v68 + 201) = *&v96[9];
    v73 = *v96;
    v68[11] = v95;
    v68[12] = v73;
    v68[10] = v94;
    v74 = v85;
    *v68 = v84;
    v68[1] = v74;
    v75 = v67[2];
    v76 = __OFADD__(v75, 1);
    v77 = v75 + 1;
    if (v76)
    {
      goto LABEL_32;
    }

    v67[2] = v77;
LABEL_6:
    a4 = 1;
    v11 = v81;
    v9 = v82;
  }

  if (v10 <= v11 + 1)
  {
    v32 = v11 + 1;
  }

  else
  {
    v32 = v10;
  }

  v33 = v32 - 1;
  v34 = v11;
  while (1)
  {
    v31 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v31 >= v10)
    {
      v81 = v33;
      sub_219F7DCB4(&v110);
      v82 = 0;
      v136 = v122;
      v137[0] = v123[0];
      *(v137 + 9) = *(v123 + 9);
      v132 = v118;
      v133 = v119;
      v134 = v120;
      v135 = v121;
      v128 = v114;
      v129 = v115;
      v130 = v116;
      v131 = v117;
      v124 = v110;
      v125 = v111;
      v126 = v112;
      v127 = v113;
      goto LABEL_16;
    }

    v30 = *(v6 + 8 * v31);
    ++v34;
    if (v30)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_21A0E6D0C();
  __break(1u);
  return result;
}

void sub_219F88708()
{
  sub_219F88930(319, &qword_27CCD9B18, &type metadata for DynamicValueConditionEnvironment, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_219F88930(319, &qword_280C88F20, &type metadata for LiveBlogTheme, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ActivityMinimalAppearanceTheme();
      if (v2 <= 0x3F)
      {
        sub_219F88930(319, qword_280C88F28, &type metadata for LiveBlogCompactLeadingTheme, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_219F88930(319, &qword_280C88968, &type metadata for ActivitySymbolTheme, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_219F888D8();
            if (v5 <= 0x3F)
            {
              sub_219F88930(319, &qword_280C889C8, &type metadata for ActivityFooterData, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_219F419CC();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_219F888D8()
{
  if (!qword_27CCD9ED8)
  {
    type metadata accessor for ActivityHeaderViewModel();
    v0 = sub_21A0E674C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCD9ED8);
    }
  }
}

void sub_219F88930(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_219F88A28(uint64_t a1)
{
  v1 = (*(a1 + 2248) >> 1) & 0x7FFFFFFF | (*(a1 + 2268) >> 1 << 31);
  v2 = -2 - v1;
  if ((-2 - v1) < 0)
  {
    v2 = -1;
  }

  if (v1 > 0x80000000)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219F88A5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityMinimalAppearanceTheme();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219F88AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_219F88B28()
{
  result = qword_27CCD9EF8;
  if (!qword_27CCD9EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9EF0);
    sub_219F88BE0();
    sub_219F3E490(&qword_27CCD9CB8, &qword_27CCD9CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9EF8);
  }

  return result;
}

unint64_t sub_219F88BE0()
{
  result = qword_27CCD9F00;
  if (!qword_27CCD9F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9F08);
    sub_219F3E490(&qword_27CCD9F10, &qword_27CCD9F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9F00);
  }

  return result;
}

unint64_t sub_219F88C98()
{
  result = qword_27CCD9640;
  if (!qword_27CCD9640)
  {
    type metadata accessor for ActivityMinimalView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9640);
  }

  return result;
}

uint64_t sub_219F88CF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219F88E00()
{
  result = qword_27CCD9F30;
  if (!qword_27CCD9F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9F38);
    sub_219F88B28();
    sub_219F88C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9F30);
  }

  return result;
}

uint64_t sub_219F88E98()
{
  sub_21A0E541C();
  type metadata accessor for ActivityColorEnvironment();
  return sub_21A0E54BC();
}

float ActivityColor.resolve(in:)()
{
  v0 = type metadata accessor for ActivityColorEnvironment();
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A0E541C();
  sub_21A0E54BC();
  sub_219F89010(v3);
  sub_219F894D4(v3);
  sub_21A0E5C6C();
  v5 = v4;

  return v5;
}

uint64_t type metadata accessor for ActivityColorEnvironment()
{
  result = qword_27CCD9F50;
  if (!qword_27CCD9F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219F89010(uint64_t a1)
{
  v3 = sub_21A0E5B2C();
  v5 = MEMORY[0x28223BE20](v3, v4);
  v8 = *(v1 + 4);
  v10 = *(v1 + 8);
  v9 = *(v1 + 12);
  v11 = *(v1 + 68);
  if (v11 >> 6)
  {
    if (v11 >> 6 == 1)
    {
      (*(v7 + 104))(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
      return sub_21A0E5C8C();
    }

    else
    {
      switch(*v1)
      {
        case 1u:

          result = sub_21A0E5C5C();
          break;
        case 2u:

          result = sub_21A0E5C7C();
          break;
        case 3u:

          result = MEMORY[0x282133448](v5);
          break;
        case 4u:

          result = sub_21A0E5C0C();
          break;
        case 5u:

          result = sub_21A0E5BEC();
          break;
        case 6u:

          result = MEMORY[0x2821333F8](v5);
          break;
        case 7u:

          result = MEMORY[0x282133458](v5);
          break;
        case 8u:

          result = MEMORY[0x282133408](v5);
          break;
        case 9u:

          result = MEMORY[0x282133418](v5);
          break;
        case 0xAu:

          result = MEMORY[0x282133478](v5);
          break;
        case 0xBu:

          result = MEMORY[0x282133490](v5);
          break;
        case 0xCu:

          result = MEMORY[0x282133428](v5);
          break;
        case 0xDu:

          result = MEMORY[0x282133498](v5);
          break;
        case 0xEu:

          result = sub_21A0E5BAC();
          break;
        case 0xFu:

          result = MEMORY[0x2821334A8](v5);
          break;
        case 0x10u:

          result = sub_21A0E5B4C();
          break;
        case 0x11u:

          result = MEMORY[0x282133438](v5);
          break;
        case 0x12u:

          result = MEMORY[0x2821334B0](v5);
          break;
        default:

          result = MEMORY[0x2821333A0](v5);
          break;
      }
    }
  }

  else
  {
    v13 = *(v1 + 64) | (*(v1 + 68) << 32);
    v15[2] = *v1;
    v15[3] = v8;
    v15[4] = v10;
    v15[5] = v9;
    v14 = *(v1 + 32);
    v16 = *(v1 + 16);
    v17 = v14;
    v18 = *(v1 + 48);
    v19 = v13;
    v20 = BYTE4(v13) & 0x3F;
    return sub_219F895A0(a1);
  }

  return result;
}

uint64_t sub_219F894D4(uint64_t a1)
{
  v2 = type metadata accessor for ActivityColorEnvironment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219F89530(uint64_t a1)
{
  switch(*v1)
  {
    case 1:
      result = sub_21A0E5C5C();
      break;
    case 2:
      result = sub_21A0E5C7C();
      break;
    case 3:
      result = MEMORY[0x282133448](a1);
      break;
    case 4:
      result = sub_21A0E5C0C();
      break;
    case 5:
      result = sub_21A0E5BEC();
      break;
    case 6:
      result = MEMORY[0x2821333F8](a1);
      break;
    case 7:
      result = MEMORY[0x282133458](a1);
      break;
    case 8:
      result = MEMORY[0x282133408](a1);
      break;
    case 9:
      result = MEMORY[0x282133418](a1);
      break;
    case 0xA:
      result = MEMORY[0x282133478](a1);
      break;
    case 0xB:
      result = MEMORY[0x282133490](a1);
      break;
    case 0xC:
      result = MEMORY[0x282133428](a1);
      break;
    case 0xD:
      result = MEMORY[0x282133498](a1);
      break;
    case 0xE:
      result = sub_21A0E5BAC();
      break;
    case 0xF:
      result = MEMORY[0x2821334A8](a1);
      break;
    case 0x10:
      result = sub_21A0E5B4C();
      break;
    case 0x11:
      result = MEMORY[0x282133438](a1);
      break;
    case 0x12:
      result = MEMORY[0x2821334B0](a1);
      break;
    default:
      result = MEMORY[0x2821333A0](a1);
      break;
  }

  return result;
}

uint64_t sub_219F895A0(uint64_t a1)
{
  v29 = sub_21A0E5B2C();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9F60);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = v25 - v10;
  v12 = *(v1 + 32);
  v25[3] = *(v1 + 40);
  v26 = *(v1 + 48);
  v13 = *(v1 + 52);
  v25[1] = v12;
  v25[2] = v13;
  v27 = *(v1 + 60);
  v28 = *(v1 + 68);
  v25[0] = type metadata accessor for ActivityColorEnvironment();
  v14 = *(v25[0] + 20);
  v15 = *(v8 + 56);
  v16 = sub_21A0E524C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, a1, v16);
  v18 = sub_21A0E565C();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v11[v15], a1 + v14, v18);
  v20 = (*(v17 + 88))(v11, v16);
  if (v20 == *MEMORY[0x277CDF3D0])
  {
    v21 = (*(v19 + 88))(&v11[v15], v18);
    if (v21 == *MEMORY[0x277CE0210] || v21 == *MEMORY[0x277CE0220])
    {
LABEL_9:
      (*(v3 + 104))(v6, *MEMORY[0x277CE0EE0], v29);
      v23 = sub_21A0E5C8C();
      (*(v17 + 8))(v11, v16);
      return v23;
    }
  }

  else if (v20 == *MEMORY[0x277CDF3C0])
  {
    v22 = (*(v19 + 88))(&v11[v15], v18);
    if (v22 == *MEMORY[0x277CE0210] || v22 == *MEMORY[0x277CE0220])
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_21A0E686C();
  MEMORY[0x21CED1980](0xD000000000000027, 0x800000021A109C60);
  sub_21A0E697C();
  result = sub_21A0E698C();
  __break(1u);
  return result;
}

uint64_t sub_219F89A04@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for ActivityColorEnvironment();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A0E541C();
  sub_21A0E54BC();
  sub_219F89010(v5);
  sub_219F894D4(v5);
  sub_21A0E5C6C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

float ActivityColor.System.resolve(in:)(uint64_t a1)
{
  sub_219F89530(a1);
  sub_21A0E5C6C();
  v2 = v1;

  return v2;
}

uint64_t sub_219F89B74@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_219F89530(a1);
  sub_21A0E5C6C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v10;
  return result;
}

float RGBA.resolve(in:)()
{
  v0 = sub_21A0E5B2C();
  MEMORY[0x28223BE20](v0, v1);
  (*(v3 + 104))(&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  sub_21A0E5C8C();
  sub_21A0E5C6C();
  v5 = v4;

  return v5;
}

uint64_t sub_219F89D30@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_21A0E5B2C();
  MEMORY[0x28223BE20](v2, v3);
  (*(v5 + 104))(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  sub_21A0E5C8C();
  sub_21A0E5C6C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_219F89E80()
{
  result = sub_21A0E524C();
  if (v1 <= 0x3F)
  {
    result = sub_21A0E565C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t Text.activityTextModifier(_:fallback:font:environment:)(__int128 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v10 = a1[11];
  v136 = a1[10];
  v137 = v10;
  v138 = *(a1 + 24);
  v11 = a1[7];
  v132 = a1[6];
  v133 = v11;
  v12 = a1[8];
  v135 = a1[9];
  v134 = v12;
  v13 = a1[3];
  v128 = a1[2];
  v129 = v13;
  v14 = a1[4];
  v131 = a1[5];
  v130 = v14;
  v15 = *a1;
  v127 = a1[1];
  v126 = v15;
  v16 = *(a2 + 48);
  v119 = *(a2 + 32);
  v120 = v16;
  v121 = *(a2 + 64);
  v122 = *(a2 + 80);
  v17 = *(a2 + 16);
  v117 = *a2;
  v118 = v17;
  v18 = *a3;
  v125 = *(a4 + 32);
  v19 = *a4;
  v124 = *(a4 + 16);
  v123 = v19;
  if (sub_219F63C20(&v126) != 1)
  {
    v48 = a6;
    v114 = v136;
    v115 = v137;
    v116 = v138;
    v110 = v132;
    v111 = v133;
    v113 = v135;
    v112 = v134;
    v106 = v128;
    v107 = v129;
    v109 = v131;
    v108 = v130;
    v105 = v127;
    v104 = v126;
    v21 = MEMORY[0x277D84F90];
    v61 = v123;
    v62 = v124;
    *(&v64 + 1) = MEMORY[0x277D84F90];
    *v63 = v125;
    sub_219F63900(&v123, &v76);
    sub_219F63C38(&v126, &v76);
    if (qword_27CCD9198 != -1)
    {
      swift_once();
    }

    *&v63[136] = v134;
    *&v63[152] = v135;
    *&v63[168] = v136;
    *&v63[72] = v130;
    *&v63[88] = v131;
    *&v63[104] = v132;
    *&v63[120] = v133;
    *&v63[8] = v126;
    *&v63[24] = v127;
    *&v63[40] = v128;
    *&v63[56] = v129;
    *&v63[184] = v137;
    *&v64 = qword_27CCDBDB0;

    sub_219F8AD10(&v61);
    v72 = *&v63[136];
    v73 = *&v63[152];
    v74 = *&v63[168];
    v75 = *&v63[184];
    *&v68[16] = *&v63[72];
    v69 = *&v63[88];
    v70 = *&v63[104];
    v71 = *&v63[120];
    v65 = *&v63[8];
    v66 = *&v63[24];
    v67 = *&v63[40];
    *v68 = *&v63[56];
    v88 = *&v63[160];
    v89 = *&v63[176];
    v90 = v64;
    v84 = *&v63[96];
    v85 = *&v63[112];
    v87 = *&v63[144];
    v86 = *&v63[128];
    v80 = *&v63[32];
    v81 = *&v63[48];
    v82 = *&v63[64];
    v83 = *&v63[80];
    v76 = v61;
    v77 = v62;
    v78 = *v63;
    v79 = *&v63[16];
    sub_219F63C38(&v65, &v57);
    sub_219F6409C(&v76, &qword_27CCD95C8);
    v91[4] = *&v68[16];
    v91[2] = v67;
    v91[3] = *v68;
    v92 = v69;
    v91[0] = v65;
    v91[1] = v66;
    if (*&v68[24])
    {
      v100 = v67;
      v101 = *v68;
      v102 = *&v68[16];
      v98 = v65;
      v99 = v66;
      v57 = v123;
      v58 = v124;
      *&v59[24] = v66;
      *&v59[40] = v67;
      *&v59[56] = *v68;
      v103 = v69;
      *&v59[69] = *&v68[13];
      *&v59[8] = v65;
      *v59 = v125;
      *&v60 = qword_27CCDBDB0;
      *(&v60 + 1) = v21;
      sub_219F63900(&v123, &v61);
      sub_219F45500(&v65, &v61, &qword_27CCD9F78);
      sub_219F72F28(v91, &v61);

      sub_219F8AC18(&v57);
      sub_219F6409C(&v65, &qword_27CCD9F78);
      v53 = *&v59[40];
      *v54 = *&v59[56];
      *&v54[13] = *&v59[69];
      v51 = *&v59[8];
      v52 = *&v59[24];
      *&v63[32] = *&v59[32];
      *&v63[48] = *&v59[48];
      *&v63[64] = *&v59[64];
      *&v63[80] = v60;
      v61 = v57;
      v62 = v58;
      *v63 = *v59;
      *&v63[16] = *&v59[16];
      sub_219F72F28(&v51, &v49);
      sub_219F6409C(&v61, &qword_27CCD9F80);
      v42 = v52;
      v43 = v51;
      v44 = *v54;
      v45 = v53;
      v22 = *&v54[16] | (v54[20] << 32);
    }

    else if (HIBYTE(v122) == 4)
    {
      v42 = 0u;
      v43 = 0u;
      v22 = 0x3E00000000;
      v44 = 0u;
      v45 = 0u;
    }

    else
    {
      v22 = v121 | (BYTE4(v121) << 32);
      v44 = v120;
      v45 = v119;
      *v63 = v119;
      *&v63[16] = v120;
      *&v63[32] = v121;
      *&v63[48] = v122;
      v42 = v118;
      v43 = v117;
      v61 = v117;
      v62 = v118;
      sub_219F639D4(&v61, &v57);
    }

    v25 = v70;
    v47 = a5;
    v46 = a7;
    if (v70)
    {
      v26 = *(&v70 + 1);
      v27 = *(&v69 + 1);
      v57 = v123;
      v58 = v124;
      *v59 = v125;
      *&v59[8] = *(&v69 + 1);
      *&v59[16] = qword_27CCDBDB0;
      *&v59[24] = v21;
      sub_219F63900(&v123, &v61);
      sub_219F63C94(v27, v25);

      sub_219F8AB60(&v57, v27, v25, v26);
      sub_219F63D2C(v27, v25);
      v41 = *&v59[8];
      v61 = v57;
      v62 = v58;
      *v63 = *v59;
      *&v63[16] = *&v59[16];
      sub_219F6409C(&v61, &qword_27CCD95D0);
      v28 = 0;
      if (v18 != 9)
      {
        goto LABEL_26;
      }
    }

    else if (HIBYTE(v122) << 16 == 0x40000)
    {
      v41 = 0;
      v28 = 1;
      if (v18 != 9)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v28 = v122;
      v41 = *(&v121 + 1);
      if (v18 != 9)
      {
        goto LABEL_26;
      }
    }

    v29 = *(&v71 + 1);
    if (*(&v71 + 1))
    {
      v30 = v72;
      v31 = v71;
      v57 = v123;
      v58 = v124;
      *v59 = v125;
      v59[8] = v71;
      *&v59[16] = qword_27CCDBDB0;
      *&v59[24] = v21;
      sub_219F63900(&v123, &v61);
      sub_219F63C94(v31, v29);

      sub_219F8AA84(&v57, v31, v29, v30);
      sub_219F63D2C(v31, v29);
      LOBYTE(v18) = v59[8];
      v61 = v57;
      v62 = v58;
      *v63 = *v59;
      *&v63[16] = *&v59[16];
      sub_219F6409C(&v61, &qword_27CCD9F20);
    }

    else if (HIBYTE(v122) == 4)
    {
      LOBYTE(v18) = 9;
    }

    else
    {
      LOBYTE(v18) = BYTE1(v122);
    }

LABEL_26:
    v32 = v73;
    if (v73)
    {
      v33 = *(&v73 + 1);
      v34 = *(&v72 + 1);
      v57 = v123;
      v58 = v124;
      *v59 = v125;
      v59[8] = BYTE8(v72);
      v35 = v21;
      *&v59[16] = qword_27CCDBDB0;
      *&v59[24] = v21;
      sub_219F63900(&v123, &v61);
      sub_219F63C94(v34, v32);

      sub_219F8AA84(&v57, v34, v32, v33);
      sub_219F63D2C(v34, v32);
      LOBYTE(v36) = v59[8];
      v61 = v57;
      v62 = v58;
      *v63 = *v59;
      *&v63[16] = *&v59[16];
      sub_219F6409C(&v61, &qword_27CCD9F70);
      v37 = *(&v74 + 1);
      if (!*(&v74 + 1))
      {
LABEL_33:
        LODWORD(v37) = HIBYTE(v122);
        if (HIBYTE(v122) == 4)
        {
          LOBYTE(v37) = 3;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v35 = v21;
      if (HIBYTE(v122) == 4)
      {
        LOBYTE(v36) = 9;
        v37 = *(&v74 + 1);
        if (!*(&v74 + 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        v36 = HIWORD(v122);
        v37 = *(&v74 + 1);
        if (!*(&v74 + 1))
        {
          goto LABEL_33;
        }
      }
    }

    v38 = v75;
    v39 = v74;
    v57 = v123;
    v58 = v124;
    *v59 = v125;
    v59[8] = v74;
    *&v59[16] = qword_27CCDBDB0;
    *&v59[24] = v35;
    sub_219F63900(&v123, &v61);
    sub_219F63C94(v39, v37);

    sub_219F8AA84(&v57, v39, v37, v38);
    sub_219F63D2C(v39, v37);
    LOBYTE(v37) = v59[8];
    v61 = v57;
    v62 = v58;
    *v63 = *v59;
    *&v63[16] = *&v59[16];
    sub_219F6409C(&v61, &qword_27CCD9F68);
LABEL_35:
    v56 = v28 & 1;
    v57 = v43;
    v58 = v42;
    *v59 = v45;
    *&v59[16] = v44;
    *&v59[32] = v22;
    v59[36] = BYTE4(v22);
    *&v59[37] = v49;
    v59[39] = v50;
    *&v59[40] = v41;
    v59[48] = v28 & 1;
    v59[49] = v18;
    v59[50] = v36;
    v59[51] = v37;
    v53 = v45;
    *v54 = v44;
    *&v54[16] = *&v59[32];
    v55 = *&v59[48];
    v51 = v43;
    v52 = v42;
    sub_219F639D4(&v57, &v61);
    v23 = sub_219F8CEDC(&v51, v47, v48, v46 & 1);
    sub_219F63CD8(&v65);
    sub_219F8D56C(&v57);
    *v63 = v53;
    *&v63[16] = *v54;
    *&v63[32] = *&v54[16];
    *&v63[48] = v55;
    v61 = v51;
    v62 = v52;
    v24 = &v61;
    goto LABEL_36;
  }

  v20 = BYTE1(v122);
  if (HIBYTE(v122) == 4)
  {
    v95 = v119;
    v96 = v120;
    v97 = v121;
    v94 = v118;
    v93 = v117;
  }

  else
  {
    v95 = v119;
    v96 = v120;
    v97 = v121;
    v94 = v118;
    v93 = v117;
    if (v18 != 9)
    {
      v20 = v18;
    }
  }

  *v63 = v95;
  *&v63[16] = v96;
  *&v63[32] = v97;
  v61 = v93;
  v62 = v94;
  v63[48] = v122;
  v63[49] = v20;
  *&v63[50] = HIWORD(v122);
  sub_219F45500(&v117, &v76, &qword_27CCD95B0);
  v23 = sub_219F8CEDC(&v61, a5, a6, a7 & 1);
  v78 = *v63;
  v79 = *&v63[16];
  v80 = *&v63[32];
  LODWORD(v81) = *&v63[48];
  v76 = v61;
  v77 = v62;
  v24 = &v76;
LABEL_36:
  sub_219F6409C(v24, &qword_27CCD95B0);
  return v23;
}

uint64_t sub_219F8A9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!sub_219F8B7C8(a2, a3, a4))
  {
    v7 = *(a5 + 16);
    if (v7)
    {

      v8 = (a5 + 56);
      do
      {
        v9 = *(v8 - 3);
        v10 = *(v8 - 2);
        v11 = *(v8 - 1);
        v12 = *v8;

        sub_219F8A9B0(a1, v9, v10, v11, v12);

        v8 += 4;
        --v7;
      }

      while (v7);
    }
  }

  return sub_219F8D750(a1);
}

uint64_t sub_219F8AA9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!sub_219F8B9B4(a2, a3))
  {
    v8 = *(a4 + 16);
    if (v8)
    {

      v9 = (a4 + 48);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        v12 = *(v9 - 16);

        a5(a1, v12, v10, v11);

        v9 += 3;
        --v8;
      }

      while (v8);
    }
  }

  return sub_219F8D6EC(a1);
}

uint64_t sub_219F8AB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!sub_219F8BB68(a2, a3))
  {
    v6 = *(a4 + 16);
    if (v6)
    {

      v7 = (a4 + 48);
      do
      {
        v8 = *(v7 - 2);
        v9 = *(v7 - 1);
        v10 = *v7;
        v7 += 3;

        sub_219F8AB60(a1, v8, v9, v10);

        --v6;
      }

      while (v6);
    }
  }

  return sub_219F8D6EC(a1);
}

uint64_t sub_219F8AC18(uint64_t a1)
{
  if (!sub_219F8BD18(v1))
  {
    v3 = *(v1 + 80);
    v12 = v3;
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 32;

      do
      {
        v6 = *(v5 + 16);
        v13[0] = *v5;
        v13[1] = v6;
        v7 = *(v5 + 32);
        v8 = *(v5 + 48);
        v9 = *(v5 + 64);
        v14 = *(v5 + 80);
        v13[3] = v8;
        v13[4] = v9;
        v13[2] = v7;
        sub_219F45500(v13, &v11, &qword_27CCD98E8);
        sub_219F8AC18(a1);
        sub_219F6409C(v13, &qword_27CCD98E8);
        v5 += 88;
        --v4;
      }

      while (v4);
      sub_219F6409C(&v12, &qword_27CCD9FA8);
    }
  }

  return sub_219F8D870(a1);
}

uint64_t sub_219F8AD10(uint64_t a1)
{
  if (!sub_219F8BFB0(v1))
  {
    v3 = *(v1 + 192);
    v17 = v3;
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 32;

      do
      {
        v18[0] = *v5;
        v6 = *(v5 + 16);
        v7 = *(v5 + 32);
        v8 = *(v5 + 64);
        v18[3] = *(v5 + 48);
        v18[4] = v8;
        v18[1] = v6;
        v18[2] = v7;
        v9 = *(v5 + 80);
        v10 = *(v5 + 96);
        v11 = *(v5 + 128);
        v18[7] = *(v5 + 112);
        v18[8] = v11;
        v18[5] = v9;
        v18[6] = v10;
        v12 = *(v5 + 144);
        v13 = *(v5 + 160);
        v14 = *(v5 + 176);
        v19 = *(v5 + 192);
        v18[10] = v13;
        v18[11] = v14;
        v18[9] = v12;
        sub_219F45500(v18, &v16, &qword_27CCD98F0);
        sub_219F8AD10(a1);
        sub_219F6409C(v18, &qword_27CCD98F0);
        v5 += 200;
        --v4;
      }

      while (v4);
      sub_219F6409C(&v17, &qword_27CCD9FB8);
    }
  }

  return sub_219F8D688(a1);
}

uint64_t sub_219F8AEA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v20 - v13;
  result = a4(v5);
  if ((result & 1) == 0)
  {
    v16 = *(v5 + *(v10 + 32));
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v19 = *(v11 + 72);

      do
      {
        sub_219F45500(v18, v14, a2);
        a5(a1);
        sub_219F6409C(v14, a2);
        v18 += v19;
        --v17;
      }

      while (v17);
    }
  }

  return result;
}

uint64_t sub_219F8AFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_219F8CDD8(a2, a3, a4);
  if ((result & 1) == 0)
  {
    v8 = *(a5 + 16);
    if (v8)
    {

      v9 = (a5 + 56);
      do
      {
        v10 = *(v9 - 3);
        v11 = *(v9 - 2);
        v12 = *(v9 - 1);
        v13 = *v9;

        sub_219F8AFF8(a1, v10, v11, v12, v13);

        v9 += 4;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_219F8B0E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - v6;
  if (!sub_219F8C2F4(v1))
  {
    v8 = *(v1 + *(v3 + 32));
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v11 = *(v4 + 72);

      do
      {
        sub_219F45500(v10, v7, &qword_27CCD99C0);
        sub_219F8B0E8(a1);
        sub_219F6409C(v7, &qword_27CCD99C0);
        v10 += v11;
        --v9;
      }

      while (v9);
    }
  }

  return sub_219F8B744(a1, v1, &qword_27CCD9F98);
}

uint64_t sub_219F8B25C(void **a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0);
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v21 - v6;
  v8 = sub_21A0E481C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v2, v8);
  v13 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_219FA1948(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_219FA1948(v14 > 1, v15 + 1, 1, v13);
  }

  v13[2] = v15 + 1;
  result = (*(v9 + 32))(v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v12, v8);
  *a1 = v13;
  v17 = *(v2 + *(v4 + 32));
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v20 = *(v22 + 72);

    do
    {
      sub_219F45500(v19, v7, &qword_27CCD99C0);
      sub_219F8B25C(a1);
      sub_219F6409C(v7, &qword_27CCD99C0);
      v19 += v20;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t sub_219F8B4D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - v6;
  if (!sub_219F8C58C(v1))
  {
    v8 = *(v1 + *(v3 + 32));
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v11 = *(v4 + 72);

      do
      {
        sub_219F45500(v10, v7, &qword_27CCD98C8);
        sub_219F8B4D8(a1);
        sub_219F6409C(v7, &qword_27CCD98C8);
        v10 += v11;
        --v9;
      }

      while (v9);
    }
  }

  return sub_219F8B744(a1, v1, &qword_27CCD9F88);
}

uint64_t sub_219F8B64C(uint64_t a1)
{
  if (!sub_219F8C7F4(v1))
  {
    v3 = *(v1 + 80);
    v12 = v3;
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 32;

      do
      {
        v6 = *(v5 + 16);
        v13[0] = *v5;
        v13[1] = v6;
        v7 = *(v5 + 32);
        v8 = *(v5 + 48);
        v9 = *(v5 + 64);
        v14 = *(v5 + 80);
        v13[3] = v8;
        v13[4] = v9;
        v13[2] = v7;
        sub_219F45500(v13, &v11, &qword_27CCD98C0);
        sub_219F8B64C(a1);
        sub_219F6409C(v13, &qword_27CCD98C0);
        v5 += 88;
        --v4;
      }

      while (v4);
      sub_219F6409C(&v12, &qword_27CCD9FD8);
    }
  }

  return sub_219F8D870(a1);
}

uint64_t sub_219F8B744(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = *(result + 32);
  if (*(*(a1 + v5) + 16))
  {
    sub_21A089F08(&v6);
    if (!v6)
    {

      sub_21A089E7C(*(*(a1 + v5) + 16) - 1, &v7);
    }
  }

  return result;
}

BOOL sub_219F8B7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 8);
  if (*(v8 + 2))
  {
    swift_bridgeObjectRetain_n();

    v10 = sub_21A085BC8(v9, a3);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v10 = a3;
  }

  v11 = v3[1];
  v21[0] = *v3;
  v21[1] = v11;
  v22 = *(v3 + 4);
  v12 = v3[1];
  v17 = *v3;
  v18 = v12;
  v19 = *(v3 + 4);
  v20 = v10;

  sub_219F63900(v21, v23);
  v13 = sub_21A030F14(&v17);
  v23[0] = v17;
  v23[1] = v18;
  v24 = v19;
  sub_219F5ED9C(v23);

  if (v13)
  {
    if (*(v4[7] + 16) >= *(v10 + 16))
    {
    }

    else
    {
      swift_bridgeObjectRetain_n();

      v4[5] = a1;
      v4[6] = a2;
      v4[7] = v10;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_219FA14A0(0, *(v8 + 2) + 1, 1, v8);
    }

    v15 = *(v8 + 2);
    v14 = *(v8 + 3);
    if (v15 >= v14 >> 1)
    {
      v8 = sub_219FA14A0((v14 > 1), v15 + 1, 1, v8);
    }

    *(v8 + 2) = v15 + 1;
    *&v8[8 * v15 + 32] = a3;
    v4[8] = v8;
  }

  else
  {
  }

  return (v13 & 1) == 0;
}

BOOL sub_219F8B9B4(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 7);
  if (*(v6 + 2))
  {
    swift_bridgeObjectRetain_n();

    v8 = sub_21A085BC8(v7, a2);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v8 = a2;
  }

  v9 = v2[1];
  v19[0] = *v2;
  v19[1] = v9;
  v20 = *(v2 + 4);
  v10 = v2[1];
  v15 = *v2;
  v16 = v10;
  v17 = *(v2 + 4);
  v18 = v8;

  sub_219F63900(v19, v21);
  v11 = sub_21A030F14(&v15);
  v21[0] = v15;
  v21[1] = v16;
  v22 = v17;
  sub_219F5ED9C(v21);

  if (v11)
  {
    if (*(*(v3 + 6) + 16) < *(v8 + 16))
    {

      *(v3 + 40) = a1;
      *(v3 + 6) = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_219FA14A0(0, *(v6 + 2) + 1, 1, v6);
    }

    v13 = *(v6 + 2);
    v12 = *(v6 + 3);
    if (v13 >= v12 >> 1)
    {
      v6 = sub_219FA14A0((v12 > 1), v13 + 1, 1, v6);
    }

    *(v6 + 2) = v13 + 1;
    *&v6[8 * v13 + 32] = a2;
    *(v3 + 7) = v6;
  }

  else
  {
  }

  return (v11 & 1) == 0;
}

BOOL sub_219F8BB68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 7);
  if (*(v6 + 2))
  {
    swift_bridgeObjectRetain_n();

    v8 = sub_21A085BC8(v7, a2);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v8 = a2;
  }

  v9 = v2[1];
  v19[0] = *v2;
  v19[1] = v9;
  v20 = *(v2 + 4);
  v10 = v2[1];
  v15 = *v2;
  v16 = v10;
  v17 = *(v2 + 4);
  v18 = v8;

  sub_219F63900(v19, v21);
  v11 = sub_21A030F14(&v15);
  v21[0] = v15;
  v21[1] = v16;
  v22 = v17;
  sub_219F5ED9C(v21);

  if (v11)
  {
    if (*(v3[6] + 16) < *(v8 + 16))
    {

      v3[5] = a1;
      v3[6] = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_219FA14A0(0, *(v6 + 2) + 1, 1, v6);
    }

    v13 = *(v6 + 2);
    v12 = *(v6 + 3);
    if (v13 >= v12 >> 1)
    {
      v6 = sub_219FA14A0((v12 > 1), v13 + 1, 1, v6);
    }

    *(v6 + 2) = v13 + 1;
    *&v6[8 * v13 + 32] = a2;
    v3[7] = v6;
  }

  else
  {
  }

  return (v11 & 1) == 0;
}

BOOL sub_219F8BD18(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 72);
  v5 = *(v1 + 15);
  if (*(v5 + 2))
  {
    swift_bridgeObjectRetain_n();

    v7 = sub_21A085BC8(v6, v4);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v7 = v4;
  }

  v21[0] = v7;
  v8 = v1[1];
  v36[0] = *v1;
  v36[1] = v8;
  v37 = *(v1 + 4);
  v9 = v1[1];
  v27 = *v1;
  v28 = v9;
  *&v29 = *(v1 + 4);

  sub_219F63900(v36, &v22);
  v10 = sub_21A030F14(&v27);
  v38[0] = v27;
  v38[1] = v28;
  v39 = v29;
  sub_219F5ED9C(v38);

  if (v10)
  {
    *(v42 + 13) = *(a1 + 61);
    v11 = *(v42 + 13);
    v12 = *(a1 + 48);
    v41 = *(a1 + 32);
    v42[0] = v12;
    v13 = *(a1 + 16);
    v40[0] = *a1;
    v40[1] = v13;
    v34 = v41;
    *v35 = v12;
    *&v35[13] = v11;
    v32 = v40[0];
    v33 = v13;
    if (*(*(v2 + 14) + 16) >= *(v7 + 16))
    {
      sub_219F72F28(v40, &v27);
    }

    else
    {
      v24 = v34;
      v25 = *v35;
      v22 = v32;
      v23 = v33;
      *&v26 = *&v35[16];
      *(&v26 + 1) = v7;
      v14 = *(v2 + 56);
      v15 = *(v2 + 88);
      v29 = *(v2 + 72);
      v30 = v15;
      v31 = *(v2 + 104);
      v27 = *(v2 + 40);
      v28 = v14;
      sub_219F72F28(v40, v21);
      sub_219F45500(&v22, v21, &qword_27CCD9FB0);
      sub_219F6409C(&v27, &qword_27CCD9FB0);
      v16 = v22;
      *(v2 + 56) = v23;
      v17 = v25;
      *(v2 + 72) = v24;
      *(v2 + 88) = v17;
      *(v2 + 104) = v26;
      *(v2 + 40) = v16;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_219FA14A0(0, *(v5 + 2) + 1, 1, v5);
    }

    v19 = *(v5 + 2);
    v18 = *(v5 + 3);
    if (v19 >= v18 >> 1)
    {
      v5 = sub_219FA14A0((v18 > 1), v19 + 1, 1, v5);
    }

    v29 = v34;
    v30 = *v35;
    v27 = v32;
    v28 = v33;
    *&v31 = *&v35[16];
    *(&v31 + 1) = v7;
    sub_219F6409C(&v27, &qword_27CCD9FB0);
    *(v5 + 2) = v19 + 1;
    *&v5[8 * v19 + 32] = v4;
    *(v2 + 15) = v5;
  }

  else
  {
  }

  return (v10 & 1) == 0;
}

BOOL sub_219F8BFB0(__int128 *a1)
{
  v2 = v1;
  v4 = *(a1 + 23);
  v5 = *(v1 + 29);
  if (*(v5 + 2))
  {
    swift_bridgeObjectRetain_n();

    v7 = sub_21A085BC8(v6, v4);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v7 = v4;
  }

  v43[0] = v7;
  v8 = v1[1];
  v68[0] = *v1;
  v68[1] = v8;
  v69 = *(v1 + 4);
  v9 = v1[1];
  v56 = *v1;
  v57 = v9;
  *&v58 = *(v1 + 4);

  sub_219F63900(v68, &v44);
  v10 = sub_21A030F14(&v56);
  v70[0] = v56;
  v70[1] = v57;
  v71 = v58;
  sub_219F5ED9C(v70);

  if (v10)
  {
    v11 = a1[3];
    v72[2] = a1[2];
    v72[3] = v11;
    v12 = a1[7];
    v72[6] = a1[6];
    v72[7] = v12;
    v13 = a1[5];
    v72[4] = a1[4];
    v72[5] = v13;
    v73 = *(a1 + 22);
    v14 = a1[10];
    v72[9] = a1[9];
    v72[10] = v14;
    v72[8] = a1[8];
    v15 = a1[1];
    v72[0] = *a1;
    v72[1] = v15;
    if (*(*(v2 + 28) + 16) >= *(v7 + 16))
    {
      sub_219F63C38(v72, &v56);
    }

    else
    {
      v16 = a1[9];
      v52 = a1[8];
      v53 = v16;
      v54 = a1[10];
      v17 = *(a1 + 22);
      v18 = a1[5];
      v48 = a1[4];
      v49 = v18;
      v19 = a1[7];
      v50 = a1[6];
      v51 = v19;
      v20 = a1[1];
      v44 = *a1;
      v45 = v20;
      v21 = a1[3];
      v46 = a1[2];
      v47 = v21;
      *&v55 = v17;
      *(&v55 + 1) = v7;
      v22 = *(v2 + 184);
      v64 = *(v2 + 168);
      v65 = v22;
      v23 = *(v2 + 216);
      v66 = *(v2 + 200);
      v67 = v23;
      v24 = *(v2 + 120);
      v60 = *(v2 + 104);
      v61 = v24;
      v25 = *(v2 + 152);
      v62 = *(v2 + 136);
      v63 = v25;
      v26 = *(v2 + 56);
      v56 = *(v2 + 40);
      v57 = v26;
      v27 = *(v2 + 88);
      v58 = *(v2 + 72);
      v59 = v27;
      sub_219F63C38(v72, v43);
      sub_219F45500(&v44, v43, &qword_27CCD9FC0);
      sub_219F6409C(&v56, &qword_27CCD9FC0);
      v28 = v53;
      *(v2 + 168) = v52;
      *(v2 + 184) = v28;
      v29 = v55;
      *(v2 + 200) = v54;
      *(v2 + 216) = v29;
      v30 = v49;
      *(v2 + 104) = v48;
      *(v2 + 120) = v30;
      v31 = v51;
      *(v2 + 136) = v50;
      *(v2 + 152) = v31;
      v32 = v45;
      *(v2 + 40) = v44;
      *(v2 + 56) = v32;
      v33 = v47;
      *(v2 + 72) = v46;
      *(v2 + 88) = v33;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_219FA14A0(0, *(v5 + 2) + 1, 1, v5);
    }

    v35 = *(v5 + 2);
    v34 = *(v5 + 3);
    if (v35 >= v34 >> 1)
    {
      v5 = sub_219FA14A0((v34 > 1), v35 + 1, 1, v5);
    }

    v36 = a1[9];
    v64 = a1[8];
    v65 = v36;
    v66 = a1[10];
    v37 = *(a1 + 22);
    v38 = a1[5];
    v60 = a1[4];
    v61 = v38;
    v39 = a1[7];
    v62 = a1[6];
    v63 = v39;
    v40 = a1[1];
    v56 = *a1;
    v57 = v40;
    v41 = a1[3];
    v58 = a1[2];
    v59 = v41;
    *&v67 = v37;
    *(&v67 + 1) = v7;
    sub_219F6409C(&v56, &qword_27CCD9FC0);
    *(v5 + 2) = v35 + 1;
    *&v5[8 * v35 + 32] = v4;
    *(v2 + 29) = v5;
  }

  else
  {
  }

  return (v10 & 1) == 0;
}

BOOL sub_219F8C2F4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9FA0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v24 - v6;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0) + 28);
  v9 = *(a1 + v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9F98);
  v11 = *(v10 + 32);
  v12 = *(v1 + v11);
  if (*(v12 + 2))
  {

    v9 = sub_21A085BC8(v13, v9);
  }

  else
  {
  }

  v14 = v1[1];
  v28[0] = *v1;
  v28[1] = v14;
  v29 = *(v1 + 4);
  v15 = v1[1];
  v24 = *v1;
  v25 = v15;
  v26 = *(v1 + 4);
  v27 = v9;

  sub_219F63900(v28, v30);
  v16 = sub_21A030F14(&v24);
  v30[0] = v24;
  v30[1] = v25;
  v31 = v26;
  sub_219F5ED9C(v30);

  if (v16)
  {
    v17 = sub_21A0E481C();
    (*(*(v17 - 8) + 16))(v7, a1, v17);
    v18 = *(v4 + 28);
    *&v7[v18] = v9;
    v19 = v2 + *(v10 + 28);
    if (*(*(v19 + v18) + 16) < *(v9 + 16))
    {
      sub_219F8D7B4(v7, v19, &qword_27CCD9FA0);
    }

    v20 = *(a1 + v8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_219FA14A0(0, *(v12 + 2) + 1, 1, v12);
    }

    v22 = *(v12 + 2);
    v21 = *(v12 + 3);
    if (v22 >= v21 >> 1)
    {
      v12 = sub_219FA14A0((v21 > 1), v22 + 1, 1, v12);
    }

    sub_219F6409C(v7, &qword_27CCD9FA0);
    *(v12 + 2) = v22 + 1;
    *&v12[8 * v22 + 32] = v20;
    *(v2 + v11) = v12;
  }

  else
  {
  }

  return (v16 & 1) == 0;
}

BOOL sub_219F8C58C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9F90);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v23 - v6;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8) + 28);
  v9 = *(a1 + v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9F88);
  v11 = *(v10 + 32);
  v12 = *(v1 + v11);
  if (*(v12 + 2))
  {

    v9 = sub_21A085BC8(v13, v9);
  }

  else
  {
  }

  v14 = v1[1];
  v27[0] = *v1;
  v27[1] = v14;
  v28 = *(v1 + 4);
  v15 = v1[1];
  v23 = *v1;
  v24 = v15;
  v25 = *(v1 + 4);
  v26 = v9;

  sub_219F63900(v27, v29);
  v16 = sub_21A030F14(&v23);
  v29[0] = v23;
  v29[1] = v24;
  v30 = v25;
  sub_219F5ED9C(v29);

  if (v16)
  {
    sub_219F8D5C0(a1, v7);
    v17 = *(v4 + 28);
    *&v7[v17] = v9;
    v18 = v2 + *(v10 + 28);
    if (*(*(v18 + v17) + 16) < *(v9 + 16))
    {
      sub_219F8D7B4(v7, v18, &qword_27CCD9F90);
    }

    v19 = *(a1 + v8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_219FA14A0(0, *(v12 + 2) + 1, 1, v12);
    }

    v21 = *(v12 + 2);
    v20 = *(v12 + 3);
    if (v21 >= v20 >> 1)
    {
      v12 = sub_219FA14A0((v20 > 1), v21 + 1, 1, v12);
    }

    sub_219F6409C(v7, &qword_27CCD9F90);
    *(v12 + 2) = v21 + 1;
    *&v12[8 * v21 + 32] = v19;
    *(v2 + v11) = v12;
  }

  else
  {
  }

  return (v16 & 1) == 0;
}

BOOL sub_219F8C7F4(__int128 *a1)
{
  v2 = v1;
  v4 = *(a1 + 9);
  v5 = *(v1 + 15);
  if (*(v5 + 2))
  {
    swift_bridgeObjectRetain_n();

    v7 = sub_21A085BC8(v6, v4);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v7 = v4;
  }

  v20[0] = v7;
  v8 = v1[1];
  v35[0] = *v1;
  v35[1] = v8;
  v36 = *(v1 + 4);
  v9 = v1[1];
  v26 = *v1;
  v27 = v9;
  *&v28 = *(v1 + 4);

  sub_219F63900(v35, &v21);
  v10 = sub_21A030F14(&v26);
  v37[0] = v26;
  v37[1] = v27;
  v38 = v28;
  sub_219F5ED9C(v37);

  if (v10)
  {
    v11 = a1[3];
    v33 = a1[2];
    *v34 = v11;
    *&v34[13] = *(a1 + 61);
    v12 = a1[1];
    v31 = *a1;
    v32 = v12;
    if (*(*(v2 + 14) + 16) < *(v7 + 16))
    {
      v23 = v33;
      v24 = *v34;
      v21 = v31;
      v22 = v32;
      *&v25 = *&v34[16];
      *(&v25 + 1) = v7;
      v13 = *(v2 + 56);
      v14 = *(v2 + 88);
      v28 = *(v2 + 72);
      v29 = v14;
      v30 = *(v2 + 104);
      v26 = *(v2 + 40);
      v27 = v13;
      sub_219F45500(&v21, v20, &unk_27CCD9FE0);
      sub_219F6409C(&v26, &unk_27CCD9FE0);
      v15 = v21;
      *(v2 + 56) = v22;
      v16 = v24;
      *(v2 + 72) = v23;
      *(v2 + 88) = v16;
      *(v2 + 104) = v25;
      *(v2 + 40) = v15;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_219FA14A0(0, *(v5 + 2) + 1, 1, v5);
    }

    v18 = *(v5 + 2);
    v17 = *(v5 + 3);
    if (v18 >= v17 >> 1)
    {
      v5 = sub_219FA14A0((v17 > 1), v18 + 1, 1, v5);
    }

    v28 = v33;
    v29 = *v34;
    v26 = v31;
    v27 = v32;
    *&v30 = *&v34[16];
    *(&v30 + 1) = v7;
    sub_219F6409C(&v26, &unk_27CCD9FE0);
    *(v5 + 2) = v18 + 1;
    *&v5[8 * v18 + 32] = v4;
    *(v2 + 15) = v5;
  }

  else
  {
  }

  return (v10 & 1) == 0;
}

BOOL sub_219F8CA64(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityAsset();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8) + 28));
  v10 = *(v1 + 9);
  v11 = *(v1 + 16);
  v18[0] = *(v1 + 8);
  v18[1] = v10;
  v19 = v11;
  v20 = v9;

  v12 = sub_21A030E30(v18);

  if (v12)
  {
    sub_219F8D5C0(a1, v8);
    v13 = *v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_219FA181C(0, v13[2] + 1, 1, v13);
    }

    v15 = v13[2];
    v14 = v13[3];
    if (v15 >= v14 >> 1)
    {
      v13 = sub_219FA181C(v14 > 1, v15 + 1, 1, v13);
    }

    v13[2] = v15 + 1;
    sub_219F8D624(v8, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15);
    *v2 = v13;
  }

  return (v12 & 1) == 0;
}

BOOL sub_219F8CC08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21A0E481C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0) + 28));
  v10 = *(v1 + 9);
  v11 = *(v1 + 16);
  v18[0] = *(v1 + 8);
  v18[1] = v10;
  v19 = v11;
  v20 = v9;

  v12 = sub_21A030E30(v18);

  if (v12)
  {
    (*(v5 + 16))(v8, a1, v4);
    v13 = *v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_219FA1948(0, v13[2] + 1, 1, v13);
    }

    v15 = v13[2];
    v14 = v13[3];
    if (v15 >= v14 >> 1)
    {
      v13 = sub_219FA1948(v14 > 1, v15 + 1, 1, v13);
    }

    v13[2] = v15 + 1;
    (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v8, v4);
    *v2 = v13;
  }

  return (v12 & 1) == 0;
}

BOOL sub_219F8CDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 9);
  v8 = *(v3 + 16);
  v15[0] = *(v3 + 8);
  v15[1] = v7;
  v16 = v8;
  v17 = a3;

  v9 = sub_21A030E30(v15);

  if (v9)
  {
    v10 = *v4;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_219FA1AA4(0, v10[2] + 1, 1, v10);
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_219FA1AA4((v11 > 1), v12 + 1, 1, v10);
    }

    v10[2] = v12 + 1;
    v13 = &v10[2 * v12];
    v13[4] = a1;
    v13[5] = a2;
    *v4 = v10;
  }

  return (v9 & 1) == 0;
}

uint64_t sub_219F8CEDC(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_21A0E58DC();
  v58 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v57 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v51[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9FC8);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v51[-v17];
  v19 = a1[4];
  v68[3] = a1[3];
  v69 = v19;
  v70 = *(a1 + 20);
  v20 = a1[2];
  v68[1] = a1[1];
  v68[2] = v20;
  v68[0] = *a1;
  v56 = *(&v69 + 1);
  v21 = BYTE1(v70);
  v71 = v70;
  if (SHIBYTE(v70) == 4)
  {
    sub_219F63A40(a2, a3, a4 & 1);

    return a2;
  }

  v54 = SHIBYTE(v70);
  v55 = BYTE2(v70);
  v22 = v69 | (BYTE4(v69) << 32);
  if ((~v22 & 0x3E00000000) == 0)
  {
    sub_219F63A40(a2, a3, a4 & 1);

    if (v21 > 4)
    {
      goto LABEL_5;
    }

LABEL_10:
    v24 = a4;
    v25 = a2;
    v26 = a3;
    if (v21 <= 1)
    {
      if (v21)
      {
        sub_21A0E593C();
      }

      else
      {
        sub_21A0E58BC();
      }
    }

    else if (v21 == 2)
    {
      sub_21A0E57CC();
    }

    else if (v21 == 3)
    {
      sub_21A0E57DC();
    }

    else
    {
      sub_21A0E58EC();
    }

    goto LABEL_23;
  }

  v30 = a1[1];
  v60 = *a1;
  v61 = v30;
  v31 = a1[3];
  v62 = a1[2];
  v63 = v31;
  v64 = v69;
  v65 = BYTE4(v22);
  v66[2] = v62;
  v66[3] = v31;
  v66[4] = a1[4];
  v67 = *(a1 + 20);
  v66[0] = v60;
  v66[1] = v30;
  sub_219F639D4(v66, &v59);
  sub_219F8D81C();
  a2 = sub_21A0E597C();
  a3 = v32;
  a4 = v33;
  if (v21 <= 4)
  {
    goto LABEL_10;
  }

LABEL_5:
  v23 = v55;
  if (v21 <= 6)
  {
    v24 = a4;
    v25 = a2;
    v26 = a3;
    if (v21 == 5)
    {
      sub_21A0E58FC();
    }

    else
    {
      sub_21A0E591C();
    }
  }

  else if (v21 == 7)
  {
    v24 = a4;
    v25 = a2;
    v26 = a3;
    sub_21A0E592C();
  }

  else
  {
    if (v21 != 8)
    {
      goto LABEL_24;
    }

    v24 = a4;
    v25 = a2;
    v26 = a3;
    sub_21A0E588C();
    v53 = v27;
    v52 = *MEMORY[0x277CE09A0];
    v28 = sub_21A0E57FC();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v18, v52, v28);
    (*(v29 + 56))(v18, 0, 1, v28);
    sub_21A0E589C();
    sub_219F6409C(v18, &qword_27CCD9FC8);
  }

LABEL_23:
  v34 = v57;
  v35 = v58;
  (*(v58 + 104))(v57, **(&unk_2782504A0 + v54), v8);
  (*(v35 + 32))(v14, v34, v8);
  sub_21A0E590C();
  (*(v35 + 8))(v14, v8);
  v36 = sub_21A0E599C();
  v38 = v37;
  LOBYTE(v35) = v39;

  sub_219F63A30(v25, v26, v24 & 1);

  a2 = v36;
  a3 = v38;
  a4 = v35;
  v23 = v55;
LABEL_24:
  if (v23 > 4)
  {
    if (v23 <= 6)
    {
      if (v23 == 5)
      {
        sub_21A0E587C();
      }

      else
      {
        sub_21A0E588C();
      }
    }

    else if (v23 == 7)
    {
      sub_21A0E582C();
    }

    else
    {
      if (v23 != 8)
      {
        goto LABEL_43;
      }

      sub_21A0E580C();
    }
  }

  else if (v23 <= 1)
  {
    if (v23)
    {
      sub_21A0E581C();
    }

    else
    {
      sub_21A0E583C();
    }
  }

  else if (v23 == 2)
  {
    sub_21A0E584C();
  }

  else if (v23 == 3)
  {
    sub_21A0E585C();
  }

  else
  {
    sub_21A0E586C();
  }

  v40 = sub_21A0E596C();
  v42 = v41;
  v44 = v43;
  sub_219F63A30(a2, a3, a4 & 1);

  a2 = v40;
  a3 = v42;
  a4 = v44;
LABEL_43:
  if (v71 == 1)
  {
    sub_219F6409C(v68, &qword_27CCD95B0);
  }

  else
  {
    v45 = sub_21A0E59AC();
    v47 = v46;
    v49 = v48;
    sub_219F63A30(a2, a3, a4 & 1);

    a2 = sub_21A0E59BC();
    sub_219F6409C(v68, &qword_27CCD95B0);
    sub_219F63A30(v45, v47, v49 & 1);
  }

  return a2;
}

uint64_t sub_219F8D5C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityAsset();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219F8D624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityAsset();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219F8D688(uint64_t result)
{
  v1 = result + 232;
  if (*(*(result + 232) + 16))
  {
    sub_21A089F08(&v2);
    if (!v2)
    {

      sub_21A089E7C(*(*v1 + 16) - 1, &v3);
    }
  }

  return result;
}

uint64_t sub_219F8D6EC(uint64_t result)
{
  v1 = result + 56;
  if (*(*(result + 56) + 16))
  {
    sub_21A089F08(&v2);
    if (!v2)
    {

      sub_21A089E7C(*(*v1 + 16) - 1, &v3);
    }
  }

  return result;
}

uint64_t sub_219F8D750(uint64_t result)
{
  v1 = result + 64;
  if (*(*(result + 64) + 16))
  {
    sub_21A089F08(&v2);
    if (!v2)
    {

      sub_21A089E7C(*(*v1 + 16) - 1, &v3);
    }
  }

  return result;
}

uint64_t sub_219F8D7B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

unint64_t sub_219F8D81C()
{
  result = qword_27CCD9FD0;
  if (!qword_27CCD9FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9FD0);
  }

  return result;
}

uint64_t sub_219F8D870(uint64_t result)
{
  v1 = result + 120;
  if (*(*(result + 120) + 16))
  {
    sub_21A089F08(&v2);
    if (!v2)
    {

      sub_21A089E7C(*(*v1 + 16) - 1, &v3);
    }
  }

  return result;
}

id Assembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Assembly.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t sub_219F8D940@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21A0E4E1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CCDA120);
  v9 = sub_21A0E4E4C();
  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA170);
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_21A0E50BC();
    v10 = sub_21A0E4F0C();
    (*(v5 + 104))(v8, *MEMORY[0x277D6CAB8], v4);
    v18[4] = &type metadata for LiveActivityRequestSigning;
    v18[5] = sub_219F8EC38();

    v11 = sub_21A0E4EFC();
    v12 = MEMORY[0x277D6CC00];
    a2[3] = v10;
    a2[4] = v12;
    swift_unknownObjectRelease();

    *a2 = v11;
  }

  else
  {
    if (qword_280C88490 != -1)
    {
      swift_once();
    }

    v14 = sub_21A0E516C();
    __swift_project_value_buffer(v14, qword_280C88498);
    v15 = sub_21A0E514C();
    v16 = sub_21A0E66AC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_219F39000, v15, v16, "Missing FCNewsAppConfigurationManager from assembly for NewsLiveActivitiesCore", v17, 2u);
      MEMORY[0x21CED2D30](v17, -1, -1);
    }

    a2[3] = &type metadata for UnconfiguredAuthTokenServiceType;
    result = sub_219F8EBDC();
    a2[4] = result;
  }

  return result;
}

uint64_t sub_219F8DBF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CCDA158);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v18 - v10;
  v12 = [objc_opt_self() authTokenBaseURLForConfiguration_];
  if (v12)
  {
    v13 = v12;
    sub_21A0E479C();

    v14 = sub_21A0E481C();
    (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  }

  else
  {
    v14 = sub_21A0E481C();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  sub_219F4D494(v8, v11, &unk_27CCDA158);
  sub_21A0E481C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    swift_unknownObjectRelease();
    sub_219F8EC8C(v11);
    v16 = 1;
  }

  else
  {
    sub_21A0E476C();
    swift_unknownObjectRelease();
    (*(v15 + 8))(v11, v14);
    v16 = 0;
  }

  return (*(v15 + 56))(a2, v16, 1, v14);
}

uint64_t sub_219F8DE54@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21A0E51AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21A0E51BC();
  *v6 = sub_21A0E47AC();
  v6[1] = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D6C960], v2);
  result = sub_21A0E519C();
  *a1 = result;
  return result;
}

uint64_t sub_219F8DF50@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21A0E51AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A0E51BC();
  (*(v3 + 104))(v6, *MEMORY[0x277D6C968], v2);
  result = sub_21A0E519C();
  *a1 = result;
  return result;
}

uint64_t sub_219F8E03C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA100);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v7 - v4;
  sub_219F8E124(&v8, &v7 - v4);
  swift_storeEnumTagMultiPayload();
  return sub_219F4D494(v5, a1, &qword_27CCDA100);
}

uint64_t sub_219F8E124@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v49 = a1;
  v61 = a2;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA108);
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v58 = &v48 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA110);
  v5 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v6);
  v53 = &v48 - v7;
  v68 = sub_21A0E471C();
  v57 = *(v68 - 8);
  v9 = MEMORY[0x28223BE20](v68, v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v48 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v54 = &v48 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v55 = &v48 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v56 = &v48 - v24;
  if (qword_27CCD9140 != -1)
  {
    swift_once();
  }

  sub_219F3CA20(&qword_280C894B0, v23, type metadata accessor for Assembly);
  sub_21A0E4D3C();
  v25 = v66;
  v26 = v67;
  if (qword_280C88490 != -1)
  {
    swift_once();
  }

  v27 = sub_21A0E516C();
  __swift_project_value_buffer(v27, qword_280C88498);

  v28 = sub_21A0E514C();
  v29 = sub_21A0E66BC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = v15;
    v32 = swift_slowAlloc();
    v66 = v32;
    *v30 = 136446210;
    *(v30 + 4) = sub_219F50144(v25, v26, &v66);
    _os_log_impl(&dword_219F39000, v28, v29, "Settings.LiveActivities.debugServerBaseURL =%{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v33 = v32;
    v15 = v31;
    MEMORY[0x21CED2D30](v33, -1, -1);
    MEMORY[0x21CED2D30](v30, -1, -1);
  }

  v66 = v25;
  v67 = v26;
  sub_21A0E455C();
  v50 = *MEMORY[0x277CC91F8];
  v63 = *(v5 + 104);
  v64 = v5 + 104;
  v34 = v53;
  v35 = v65;
  v63(v53);
  sub_21A0E470C();
  v36 = *(v5 + 8);
  v36(v34, v35);
  v51 = v5 + 8;
  v52 = v36;
  v37 = *(v57 + 1);
  v37(v11, v68);
  v57 = v37;
  (v63)(v34, v50, v35);
  v38 = v54;
  sub_21A0E46DC();
  v36(v34, v35);
  v39 = v68;
  v37(v15, v68);
  v50 = *MEMORY[0x277CC91F0];
  v41 = v58;
  v40 = v59;
  v42 = v60;
  (*(v59 + 104))(v58);
  v43 = v55;
  sub_21A0E46FC();
  (*(v40 + 8))(v41, v42);
  v44 = v57;
  v57(v38, v39);
  v45 = v65;
  (v63)(v34, v50, v65);
  sub_21A0E46EC();
  v52(v34, v45);
  v44(v43, v39);
  sub_219F3CA20(&qword_27CCDA118, 255, MEMORY[0x277CC9208]);
  v46 = v62;
  result = sub_21A0E482C();
  if (v46)
  {
    *v49 = v46;
  }

  return result;
}

uint64_t sub_219F8E748@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219F3C118();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9FF0);
    result = sub_21A0E4E5C();
    if (v9)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA050);
      result = sub_21A0E4E5C();
      if (v7)
      {
        a2[3] = &type metadata for NewsLiveActivityLauncher;
        a2[4] = &off_282B1DFE8;
        v5 = swift_allocObject();
        *a2 = v5;
        sub_219F3EBE0(&v8, v5 + 16);
        return sub_219F3EBE0(&v6, v5 + 56);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    a2[3] = &type metadata for UnsupportedNewsLiveActivityLauncher;
    a2[4] = &off_282B1DFF8;
  }

  return result;
}

id Assembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_219F8E8D0()
{
  swift_getObjectType();

  return sub_21A0E4D3C();
}

uint64_t sub_219F8E928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2870](a1, a2, a3, ObjectType, a7);
}

uint64_t sub_219F8E998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2858](a1, a2, a3, a4, ObjectType, a8);
}

uint64_t sub_219F8EA18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_219F49B18;

  return sub_219FC78BC(a1, v5, v4);
}

uint64_t sub_219F8EAC4(_OWORD *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_219F4996C;

  return sub_219FCE1C8(a1, v1);
}

uint64_t sub_219F8EB6C@<X0>(uint64_t *a1@<X8>)
{
  sub_21A0E481C();

  return sub_219F8DE54(a1);
}

unint64_t sub_219F8EBDC()
{
  result = qword_27CCDA168;
  if (!qword_27CCDA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA168);
  }

  return result;
}

unint64_t sub_219F8EC38()
{
  result = qword_280C880F8[0];
  if (!qword_280C880F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C880F8);
  }

  return result;
}

uint64_t sub_219F8EC8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CCDA158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219F8ED00()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_219F8EDBC()
{
  sub_21A0E626C();
}

uint64_t sub_219F8EE64()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_219F8EF1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219F9326C();
  *a1 = result;
  return result;
}

void sub_219F8EF4C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1954047348;
  v4 = 0xEA00000000006567;
  v5 = 0x61746E6563726570;
  if (*v1 != 2)
  {
    v5 = 0x72656765746E69;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C6F626D7973;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_219F8EFC4()
{
  v1 = 1954047348;
  v2 = 0x61746E6563726570;
  if (*v0 != 2)
  {
    v2 = 0x72656765746E69;
  }

  if (*v0)
  {
    v1 = 0x6C6F626D7973;
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

uint64_t sub_219F8F038@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219F9326C();
  *a1 = result;
  return result;
}

uint64_t sub_219F8F060(uint64_t a1)
{
  v2 = sub_219F9032C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219F8F09C(uint64_t a1)
{
  v2 = sub_219F9032C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219F8F14C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_219F8F1A4(uint64_t a1)
{
  v2 = sub_219F90380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219F8F1E0(uint64_t a1)
{
  v2 = sub_219F90380();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219F8F234()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_219F8F2B4()
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_219F8F30C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_219F8F390@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21A0E6A0C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_219F8F3E8(uint64_t a1)
{
  v2 = sub_219F90474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219F8F424(uint64_t a1)
{
  v2 = sub_219F90474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityTextProperty.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA178);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v79 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v74 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA180);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v74 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA188);
  v81 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v21 = v74 - v20;
  v22 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_219F9032C();
  v23 = v82;
  sub_21A0E6E7C();
  if (v23)
  {
    goto LABEL_7;
  }

  v77 = v9;
  v78 = v14;
  v82 = v17;
  v24 = sub_21A0E6AFC();
  v25 = (2 * *(v24 + 16)) | 1;
  v116 = v24;
  v117 = v24 + 32;
  v118 = 0;
  v119 = v25;
  v26 = sub_219F8259C();
  if (v26 != 4 && v118 == v119 >> 1)
  {
    v27 = v26;
    v75 = v18;
    __swift_project_boxed_opaque_existential_1(v83, v83[3]);
    sub_219F90380();
    v28 = v82;
    sub_21A0E6E7C();
    v76 = 0;
    v34 = v78;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA1A0);
    (*(*(v35 - 8) + 56))(v28, 0, 1, v35);
    sub_219F45500(v28, v34, &qword_27CCDA180);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA1A0);
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v34, 1, v36) == 1)
    {
      sub_219F6409C(v34, &qword_27CCDA180);
      sub_219F903D4(&v104);
    }

    else
    {
      sub_219F91328();
      v38 = v76;
      sub_21A0E6A8C();
      v76 = v38;
      if (v38)
      {
        sub_219F6409C(v28, &qword_27CCDA180);
        (*(v81 + 8))(v21, v75);
        swift_unknownObjectRelease();
        (*(v37 + 8))(v34, v36);
        goto LABEL_7;
      }

      (*(v37 + 8))(v34, v36);
      v112 = *&v103[21];
      v113 = *&v103[23];
      v114 = *&v103[25];
      v115 = v103[27];
      v108 = *&v103[13];
      v109 = *&v103[15];
      v110 = *&v103[17];
      v111 = *&v103[19];
      v104 = *&v103[5];
      v105 = *&v103[7];
      v106 = *&v103[9];
      v107 = *&v103[11];
    }

    v39 = v27;
    v40 = v76;
    v41 = v81;
    if (v27 <= 1u)
    {
      if (!v27)
      {
        v42 = v76;
        __swift_project_boxed_opaque_existential_1(v83, v83[3]);
        sub_219F90474();
        sub_21A0E6E7C();
        if (v42)
        {

          v43 = 1;
        }

        else
        {
          v43 = 0;
        }

        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA1C0);
        v53 = v77;
        (*(*(v52 - 8) + 56))(v77, v43, 1, v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA1C8);
        LOBYTE(v84[0]) = 0;
        sub_219F914DC(&qword_27CCDA1D0, &qword_27CCDA1C8);
        sub_21A0E6ADC();
        v76 = 0;
        v60 = *v90;
        v78 = *&v90[8];
        v74[1] = *&v90[24];
        v61 = v53;
        v62 = v79;
        sub_219F45500(v61, v79, &qword_27CCDA178);
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA1C0);
        v64 = *(v63 - 8);
        if ((*(v64 + 48))(v62, 1, v63) == 1)
        {
          sub_219F6409C(v62, &qword_27CCDA178);
          v65 = v81;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA1D8);
          sub_219F914DC(&qword_27CCDA1E0, &qword_27CCDA1D8);
          v66 = sub_21A0E6A4C();
          (*(v64 + 8))(v62, v63);
          v65 = v81;
          if (v66)
          {
LABEL_35:

            if (qword_27CCD9198 != -1)
            {
              swift_once();
            }

            v67 = qword_27CCDBDB0;

            sub_219F6409C(v77, &qword_27CCDA178);
            sub_219F6409C(v82, &qword_27CCDA180);
            (*(v65 + 8))(v21, v75);
            swift_unknownObjectRelease();
            *&v90[160] = v112;
            *&v90[176] = v113;
            *&v90[192] = v114;
            *&v90[208] = v115;
            *&v90[96] = v108;
            *&v90[112] = v109;
            *&v90[128] = v110;
            *&v90[144] = v111;
            *&v90[32] = v104;
            *&v90[48] = v105;
            *&v90[64] = v106;
            *&v90[80] = v107;
            *v90 = v60;
            *&v90[8] = v78;
            *&v90[16] = v67;
            *&v90[24] = v66;
            sub_219F91320(v90);
            v101 = *&v90[160];
            v102 = *&v90[176];
            *v103 = *&v90[192];
            *(&v103[1] + 1) = *&v90[201];
            v97 = *&v90[96];
            v98 = *&v90[112];
            v99 = *&v90[128];
            v100 = *&v90[144];
            v93 = *&v90[32];
            v94 = *&v90[48];
            v95 = *&v90[64];
            v96 = *&v90[80];
            v57 = *v90;
            v58 = *&v90[16];
            goto LABEL_38;
          }
        }

        v66 = MEMORY[0x277D84F90];
        goto LABEL_35;
      }

      v86 = 1;
      sub_219F90414();
      v48 = v75;
      sub_21A0E6ADC();
      if (!v40)
      {
        sub_219F6409C(v82, &qword_27CCDA180);
        (*(v41 + 8))(v21, v48);
        swift_unknownObjectRelease();
        *(&v84[8] + 5) = v112;
        *(&v84[9] + 5) = v113;
        *(&v84[10] + 5) = v114;
        *(&v84[11] + 5) = v115;
        *(&v84[4] + 5) = v108;
        *(&v84[5] + 5) = v109;
        *(&v84[6] + 5) = v110;
        *(&v84[7] + 5) = v111;
        *(v84 + 5) = v104;
        *(&v84[1] + 5) = v105;
        *(&v84[2] + 5) = v106;
        *(&v84[3] + 5) = v107;
        *v90 = v87;
        *&v90[147] = v84[8];
        *&v90[163] = v84[9];
        *&v90[179] = v84[10];
        *&v90[192] = *(&v84[10] + 13);
        *&v90[83] = v84[4];
        *&v90[99] = v84[5];
        *&v90[115] = v84[6];
        *&v90[131] = v84[7];
        *&v90[19] = v84[0];
        *&v90[35] = v84[1];
        *&v90[51] = v84[2];
        v85 = v88;
        v90[16] = v88;
        *&v90[17] = v89;
        *&v90[67] = v84[3];
        sub_219F90468(v90);
        v101 = *&v90[160];
        v102 = *&v90[176];
        *v103 = *&v90[192];
        *(&v103[1] + 1) = *&v90[201];
        v97 = *&v90[96];
        v98 = *&v90[112];
        v99 = *&v90[128];
        v100 = *&v90[144];
        v93 = *&v90[32];
        v94 = *&v90[48];
        v95 = *&v90[64];
        v96 = *&v90[80];
        v57 = *v90;
        v58 = *&v90[16];
LABEL_38:
        v91 = v57;
        v92 = v58;
        v44 = v80;
        goto LABEL_39;
      }

      sub_219F6409C(&v104, &qword_27CCDA1A8);
      sub_219F6409C(v82, &qword_27CCDA180);
      (*(v41 + 8))(v21, v48);
      goto LABEL_6;
    }

    v44 = v80;
    if (v39 == 2)
    {
      LOBYTE(v84[0]) = 2;
      v45 = v75;
      sub_21A0E6ABC();
      v47 = (v41 + 8);
      if (v40)
      {
        sub_219F6409C(&v104, &qword_27CCDA1A8);
        sub_219F6409C(v82, &qword_27CCDA180);
        (*v47)(v21, v45);
        goto LABEL_6;
      }

      v54 = v46;
      sub_219F6409C(v82, &qword_27CCDA180);
      (*v47)(v21, v45);
      swift_unknownObjectRelease();
      *&v90[136] = v112;
      *&v90[152] = v113;
      *&v90[168] = v114;
      *&v90[72] = v108;
      *&v90[88] = v109;
      *&v90[104] = v110;
      *&v90[120] = v111;
      *&v90[8] = v104;
      *&v90[24] = v105;
      *&v90[40] = v106;
      *&v90[184] = v115;
      *&v90[56] = v107;
      *v90 = v54;
      sub_219F90408(v90);
      v101 = *&v90[160];
      v102 = *&v90[176];
      *v103 = *&v90[192];
      *(&v103[1] + 1) = *&v90[201];
      v97 = *&v90[96];
      v98 = *&v90[112];
      v99 = *&v90[128];
      v100 = *&v90[144];
      v93 = *&v90[32];
      v94 = *&v90[48];
      v95 = *&v90[64];
      v96 = *&v90[80];
      v55 = *v90;
      v56 = *&v90[16];
    }

    else
    {
      LOBYTE(v84[0]) = 3;
      v49 = v75;
      v50 = sub_21A0E6ACC();
      v51 = (v41 + 8);
      if (v40)
      {
        sub_219F6409C(&v104, &qword_27CCDA1A8);
        sub_219F6409C(v82, &qword_27CCDA180);
        (*v51)(v21, v49);
        goto LABEL_6;
      }

      v59 = v50;
      sub_219F6409C(v82, &qword_27CCDA180);
      (*v51)(v21, v49);
      swift_unknownObjectRelease();
      *&v90[136] = v112;
      *&v90[152] = v113;
      *&v90[168] = v114;
      *&v90[72] = v108;
      *&v90[88] = v109;
      *&v90[104] = v110;
      *&v90[120] = v111;
      *&v90[8] = v104;
      *&v90[24] = v105;
      *&v90[40] = v106;
      *&v90[56] = v107;
      *&v90[184] = v115;
      *v90 = v59;
      sub_219F903FC(v90);
      v101 = *&v90[160];
      v102 = *&v90[176];
      *v103 = *&v90[192];
      *(&v103[1] + 1) = *&v90[201];
      v97 = *&v90[96];
      v98 = *&v90[112];
      v99 = *&v90[128];
      v100 = *&v90[144];
      v93 = *&v90[32];
      v94 = *&v90[48];
      v95 = *&v90[64];
      v96 = *&v90[80];
      v55 = *v90;
      v56 = *&v90[16];
    }

    v91 = v55;
    v92 = v56;
LABEL_39:
    v32 = v83;
    v68 = v102;
    v44[10] = v101;
    v44[11] = v68;
    v44[12] = *v103;
    *(v44 + 201) = *(&v103[1] + 1);
    v69 = v98;
    v44[6] = v97;
    v44[7] = v69;
    v70 = v100;
    v44[8] = v99;
    v44[9] = v70;
    v71 = v94;
    v44[2] = v93;
    v44[3] = v71;
    v72 = v96;
    v44[4] = v95;
    v44[5] = v72;
    v73 = v92;
    *v44 = v91;
    v44[1] = v73;
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v29 = sub_21A0E68BC();
  swift_allocError();
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9D00);
  *v31 = &type metadata for ActivityTextProperty;
  sub_21A0E6A2C();
  sub_21A0E68AC();
  (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
  swift_willThrow();
  (*(v81 + 8))(v21, v18);
LABEL_6:
  swift_unknownObjectRelease();
LABEL_7:
  v32 = v83;
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

unint64_t sub_219F9032C()
{
  result = qword_27CCDA190;
  if (!qword_27CCDA190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA190);
  }

  return result;
}

unint64_t sub_219F90380()
{
  result = qword_27CCDA198;
  if (!qword_27CCDA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA198);
  }

  return result;
}

double sub_219F903D4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  return result;
}

unint64_t sub_219F90414()
{
  result = qword_27CCDA1B0;
  if (!qword_27CCDA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA1B0);
  }

  return result;
}

unint64_t sub_219F90474()
{
  result = qword_27CCDA1B8;
  if (!qword_27CCDA1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA1B8);
  }

  return result;
}

uint64_t ActivityTextProperty.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA1F0);
  v4 = *(v3 - 8);
  v66 = v3;
  v67 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v64 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA1F8);
  v9 = *(v8 - 8);
  v71 = v8;
  v72 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v64 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA200);
  v87 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v13);
  v15 = &v64 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F9032C();
  v68 = v15;
  v16 = v7;
  sub_21A0E6EAC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F90380();
  v70 = v12;
  sub_21A0E6EAC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F90474();
  sub_21A0E6EAC();
  v17 = v1[11];
  v85[10] = v1[10];
  v85[11] = v17;
  v86[0] = v1[12];
  *(v86 + 9) = *(v1 + 201);
  v18 = v1[7];
  v85[6] = v1[6];
  v85[7] = v18;
  v19 = v1[9];
  v85[8] = v1[8];
  v85[9] = v19;
  v20 = v1[3];
  v85[2] = v1[2];
  v85[3] = v20;
  v21 = v1[5];
  v85[4] = v1[4];
  v85[5] = v21;
  v22 = v1[1];
  v85[0] = *v1;
  v85[1] = v22;
  v23 = sub_219F9137C(v85);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v31 = nullsub_1(v85, v24);
      LOBYTE(v74[0]) = 2;
      v33 = v68;
      v32 = v69;
      v34 = v65;
      sub_21A0E6B9C();
    }

    else
    {
      v31 = nullsub_1(v85, v24);
      LOBYTE(v74[0]) = 3;
      v33 = v68;
      v32 = v69;
      v34 = v65;
      sub_21A0E6BAC();
    }

    v39 = v70;
    if (!v34)
    {
      v45 = *(v31 + 136);
      v46 = *(v31 + 152);
      v47 = *(v31 + 168);
      v84 = *(v31 + 184);
      v48 = *(v31 + 8);
      v49 = *(v31 + 24);
      v50 = *(v31 + 56);
      v75 = *(v31 + 40);
      v76 = v50;
      v74[0] = v48;
      v74[1] = v49;
      v51 = *(v31 + 72);
      v52 = *(v31 + 88);
      v53 = *(v31 + 120);
      v79 = *(v31 + 104);
      v80 = v53;
      v77 = v51;
      v78 = v52;
      v82 = v46;
      v83 = v47;
      v81 = v45;
      goto LABEL_13;
    }

LABEL_11:
    (*(v67 + 8))(v7, v66);
    (*(v72 + 8))(v39, v71);
    return (*(v87 + 8))(v33, v32);
  }

  if (v23)
  {
    v35 = nullsub_1(v85, v24);
    v36 = *(v35 + 16);
    v37 = *(v35 + 17);
    v74[0] = *v35;
    LOBYTE(v74[1]) = v36;
    *(&v74[1] + 1) = v37;
    v73 = 1;
    sub_219F913D8();
    v33 = v68;
    v32 = v69;
    v38 = v65;
    sub_21A0E6BBC();
    v39 = v70;
    if (!v38)
    {
      v40 = *(v35 + 168);
      v81 = *(v35 + 152);
      v82 = v40;
      v83 = *(v35 + 184);
      v84 = *(v35 + 200);
      v41 = *(v35 + 104);
      v77 = *(v35 + 88);
      v78 = v41;
      v42 = *(v35 + 136);
      v79 = *(v35 + 120);
      v80 = v42;
      v43 = *(v35 + 40);
      v74[0] = *(v35 + 24);
      v74[1] = v43;
      v44 = *(v35 + 72);
      v75 = *(v35 + 56);
      v76 = v44;
LABEL_13:
      sub_219F91384();
      v54 = v71;
      sub_21A0E6B6C();
      (*(v67 + 8))(v7, v66);
      (*(v72 + 8))(v39, v54);
      return (*(v87 + 8))(v33, v32);
    }

    goto LABEL_11;
  }

  v25 = nullsub_1(v85, v24);
  v26 = *(v25 + 24);
  v27 = *(v25 + 8);
  *&v74[0] = *v25;
  *(v74 + 8) = v27;
  *(&v74[1] + 1) = v26;
  v73 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA1C8);
  sub_219F914DC(&qword_27CCDA218, &qword_27CCDA1C8);
  v28 = v69;
  v29 = v68;
  v30 = v65;
  sub_21A0E6BBC();
  if (v30)
  {
    (*(v67 + 8))(v16, v66);
    (*(v72 + 8))(v70, v71);
  }

  else
  {
    v56 = *(v25 + 176);
    v81 = *(v25 + 160);
    v82 = v56;
    v83 = *(v25 + 192);
    v84 = *(v25 + 208);
    v57 = *(v25 + 112);
    v77 = *(v25 + 96);
    v78 = v57;
    v58 = *(v25 + 144);
    v79 = *(v25 + 128);
    v80 = v58;
    v59 = *(v25 + 48);
    v74[0] = *(v25 + 32);
    v74[1] = v59;
    v60 = *(v25 + 80);
    v75 = *(v25 + 64);
    v76 = v60;
    sub_219F91384();
    v61 = v70;
    v62 = v71;
    sub_21A0E6B6C();
    *&v74[0] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA220);
    sub_219F9142C();
    v63 = v66;
    sub_21A0E6B6C();
    (*(v67 + 8))(v16, v63);
    (*(v72 + 8))(v61, v62);
  }

  return (*(v87 + 8))(v29, v28);
}

uint64_t ActivityTextProperty.hash(into:)(uint64_t a1)
{
  v3 = v1[11];
  v137[10] = v1[10];
  v137[11] = v3;
  v138[0] = v1[12];
  *(v138 + 9) = *(v1 + 201);
  v4 = v1[7];
  v137[6] = v1[6];
  v137[7] = v4;
  v5 = v1[9];
  v137[8] = v1[8];
  v137[9] = v5;
  v6 = v1[3];
  v137[2] = v1[2];
  v137[3] = v6;
  v7 = v1[5];
  v137[4] = v1[4];
  v137[5] = v7;
  v8 = v1[1];
  v137[0] = *v1;
  v137[1] = v8;
  v9 = sub_219F9137C(v137);
  if (v9 <= 1)
  {
    if (!v9)
    {
      v11 = nullsub_1(v137, v10);
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      MEMORY[0x21CED2490](0);
      sub_21A0E626C();
      sub_219F91544(a1, v12);
      sub_219F71D54(a1, v13);
      v14 = *(v11 + 176);
      v120 = *(v11 + 160);
      v121 = v14;
      v122 = *(v11 + 192);
      *&v123 = *(v11 + 208);
      v15 = *(v11 + 112);
      v116 = *(v11 + 96);
      v117 = v15;
      v16 = *(v11 + 144);
      v118 = *(v11 + 128);
      v119 = v16;
      v17 = *(v11 + 48);
      v112 = *(v11 + 32);
      v113 = v17;
      v18 = *(v11 + 80);
      v114 = *(v11 + 64);
      v115 = v18;
      if (sub_219F5EBE4(&v112) != 1)
      {
        v19 = *(v11 + 176);
        v108 = *(v11 + 160);
        v109 = v19;
        v110 = *(v11 + 192);
        v111 = *(v11 + 208);
        v20 = *(v11 + 112);
        v104 = *(v11 + 96);
        v105 = v20;
        v21 = *(v11 + 144);
        v106 = *(v11 + 128);
        v107 = v21;
        v22 = *(v11 + 48);
        v100 = *(v11 + 32);
        v101 = v22;
        v23 = *(v11 + 80);
        v102 = *(v11 + 64);
        v103 = v23;
        sub_21A0E6DCC();
        v24 = *(v11 + 176);
        v133 = *(v11 + 160);
        v134 = v24;
        v135 = *(v11 + 192);
        v136 = *(v11 + 208);
        v25 = *(v11 + 112);
        v129 = *(v11 + 96);
        v130 = v25;
        v26 = *(v11 + 144);
        v131 = *(v11 + 128);
        v132 = v26;
        v27 = *(v11 + 48);
        v125 = *(v11 + 32);
        v126 = v27;
        v28 = *(v11 + 64);
        v29 = *(v11 + 80);
LABEL_21:
        v127 = v28;
        v128 = v29;
        sub_219F63C38(&v125, v98);
        goto LABEL_22;
      }

      return sub_21A0E6DCC();
    }

    v56 = nullsub_1(v137, v10);
    v57 = *(v56 + 16);
    v58 = *(v56 + 17);
    v59 = *(v56 + 18);
    MEMORY[0x21CED2490](1);
    MEMORY[0x21CED2490](v57);
    sub_21A0E626C();
    if (v58 == 9)
    {
      sub_21A0E6DCC();
      if (v59 != 3)
      {
LABEL_12:
        sub_21A0E6DCC();
        sub_21A0E626C();

        goto LABEL_18;
      }
    }

    else
    {
      sub_21A0E6DCC();
      sub_219F7A96C(a1, v58);
      if (v59 != 3)
      {
        goto LABEL_12;
      }
    }

    sub_21A0E6DCC();
LABEL_18:
    v83 = *(v56 + 168);
    v120 = *(v56 + 152);
    v121 = v83;
    v122 = *(v56 + 184);
    *&v123 = *(v56 + 200);
    v84 = *(v56 + 104);
    v116 = *(v56 + 88);
    v117 = v84;
    v85 = *(v56 + 136);
    v118 = *(v56 + 120);
    v119 = v85;
    v86 = *(v56 + 40);
    v112 = *(v56 + 24);
    v113 = v86;
    v87 = *(v56 + 72);
    v114 = *(v56 + 56);
    v115 = v87;
    if (sub_219F5EBE4(&v112) != 1)
    {
      v89 = *(v56 + 168);
      v108 = *(v56 + 152);
      v109 = v89;
      v110 = *(v56 + 184);
      v111 = *(v56 + 200);
      v90 = *(v56 + 104);
      v104 = *(v56 + 88);
      v105 = v90;
      v91 = *(v56 + 136);
      v106 = *(v56 + 120);
      v107 = v91;
      v92 = *(v56 + 40);
      v100 = *(v56 + 24);
      v101 = v92;
      v93 = *(v56 + 72);
      v102 = *(v56 + 56);
      v103 = v93;
      sub_21A0E6DCC();
      v94 = *(v56 + 168);
      v133 = *(v56 + 152);
      v134 = v94;
      v135 = *(v56 + 184);
      v136 = *(v56 + 200);
      v95 = *(v56 + 104);
      v129 = *(v56 + 88);
      v130 = v95;
      v96 = *(v56 + 136);
      v131 = *(v56 + 120);
      v132 = v96;
      v97 = *(v56 + 40);
      v125 = *(v56 + 24);
      v126 = v97;
      v28 = *(v56 + 56);
      v29 = *(v56 + 72);
      goto LABEL_21;
    }

    return sub_21A0E6DCC();
  }

  if (v9 == 2)
  {
    v30 = nullsub_1(v137, v10);
    v31 = *v30;
    MEMORY[0x21CED2490](2);
    v32 = 0.0;
    if (v31 != 0.0)
    {
      v32 = v31;
    }

    MEMORY[0x21CED24C0](*&v32);
    v33 = *(v30 + 136);
    v34 = *(v30 + 152);
    v35 = *(v30 + 168);
    v136 = *(v30 + 184);
    v36 = *(v30 + 8);
    v37 = *(v30 + 24);
    v38 = *(v30 + 56);
    v127 = *(v30 + 40);
    v128 = v38;
    v125 = v36;
    v126 = v37;
    v39 = *(v30 + 72);
    v40 = *(v30 + 88);
    v41 = *(v30 + 120);
    v131 = *(v30 + 104);
    v132 = v41;
    v129 = v39;
    v130 = v40;
    v134 = v34;
    v135 = v35;
    v133 = v33;
    if (sub_219F5EBE4(&v125) == 1)
    {
      return sub_21A0E6DCC();
    }

    v42 = *(v30 + 152);
    v108 = *(v30 + 136);
    v109 = v42;
    v110 = *(v30 + 168);
    v111 = *(v30 + 184);
    v43 = *(v30 + 88);
    v104 = *(v30 + 72);
    v105 = v43;
    v44 = *(v30 + 120);
    v106 = *(v30 + 104);
    v107 = v44;
    v45 = *(v30 + 24);
    v100 = *(v30 + 8);
    v101 = v45;
    v46 = *(v30 + 56);
    v102 = *(v30 + 40);
    v103 = v46;
    sub_21A0E6DCC();
    v47 = v1[11];
    v122 = v1[10];
    v123 = v47;
    v124[0] = v1[12];
    *(v124 + 9) = *(v1 + 201);
    v48 = v1[7];
    v118 = v1[6];
    v119 = v48;
    v49 = v1[9];
    v120 = v1[8];
    v121 = v49;
    v50 = v1[3];
    v114 = v1[2];
    v115 = v50;
    v51 = v1[5];
    v116 = v1[4];
    v117 = v51;
    v52 = v1[1];
    v112 = *v1;
    v113 = v52;
    v54 = nullsub_1(&v112, v53);
    v55 = &unk_27CCDA240;
  }

  else
  {
    v60 = nullsub_1(v137, v10);
    v61 = *v60;
    MEMORY[0x21CED2490](3);
    MEMORY[0x21CED2490](v61);
    v62 = *(v60 + 136);
    v63 = *(v60 + 152);
    v64 = *(v60 + 168);
    v136 = *(v60 + 184);
    v65 = *(v60 + 8);
    v66 = *(v60 + 24);
    v67 = *(v60 + 56);
    v127 = *(v60 + 40);
    v128 = v67;
    v125 = v65;
    v126 = v66;
    v68 = *(v60 + 72);
    v69 = *(v60 + 88);
    v70 = *(v60 + 120);
    v131 = *(v60 + 104);
    v132 = v70;
    v129 = v68;
    v130 = v69;
    v134 = v63;
    v135 = v64;
    v133 = v62;
    if (sub_219F5EBE4(&v125) == 1)
    {
      return sub_21A0E6DCC();
    }

    v71 = *(v60 + 152);
    v108 = *(v60 + 136);
    v109 = v71;
    v110 = *(v60 + 168);
    v111 = *(v60 + 184);
    v72 = *(v60 + 88);
    v104 = *(v60 + 72);
    v105 = v72;
    v73 = *(v60 + 120);
    v106 = *(v60 + 104);
    v107 = v73;
    v74 = *(v60 + 24);
    v100 = *(v60 + 8);
    v101 = v74;
    v75 = *(v60 + 56);
    v102 = *(v60 + 40);
    v103 = v75;
    sub_21A0E6DCC();
    v76 = v1[11];
    v122 = v1[10];
    v123 = v76;
    v124[0] = v1[12];
    *(v124 + 9) = *(v1 + 201);
    v77 = v1[7];
    v118 = v1[6];
    v119 = v77;
    v78 = v1[9];
    v120 = v1[8];
    v121 = v78;
    v79 = v1[3];
    v114 = v1[2];
    v115 = v79;
    v80 = v1[5];
    v116 = v1[4];
    v117 = v80;
    v81 = v1[1];
    v112 = *v1;
    v113 = v81;
    v54 = nullsub_1(&v112, v82);
    v55 = &unk_27CCDA238;
  }

  sub_219F45500(v54, v98, v55);
LABEL_22:
  ActivityTextTheme.hash(into:)(a1);
  v98[8] = v108;
  v98[9] = v109;
  v98[10] = v110;
  v99 = v111;
  v98[4] = v104;
  v98[5] = v105;
  v98[6] = v106;
  v98[7] = v107;
  v98[0] = v100;
  v98[1] = v101;
  v98[2] = v102;
  v98[3] = v103;
  return sub_219F63CD8(v98);
}

uint64_t ActivityTextProperty.hashValue.getter()
{
  sub_21A0E6DAC();
  ActivityTextProperty.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_219F9129C()
{
  sub_21A0E6DAC();
  ActivityTextProperty.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_219F912E0()
{
  sub_21A0E6DAC();
  ActivityTextProperty.hash(into:)(v1);
  return sub_21A0E6DFC();
}

unint64_t sub_219F91328()
{
  result = qword_27CCDA1E8;
  if (!qword_27CCDA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA1E8);
  }

  return result;
}

unint64_t sub_219F91384()
{
  result = qword_27CCDA208;
  if (!qword_27CCDA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA208);
  }

  return result;
}

unint64_t sub_219F913D8()
{
  result = qword_27CCDA210;
  if (!qword_27CCDA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA210);
  }

  return result;
}

unint64_t sub_219F9142C()
{
  result = qword_27CCDA228;
  if (!qword_27CCDA228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDA220);
    sub_219F914DC(&qword_27CCDA230, &qword_27CCDA1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA228);
  }

  return result;
}

uint64_t sub_219F914DC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219F91544(uint64_t a1, uint64_t a2)
{
  sub_21A0E6DFC();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_11:
    v11 = *(a2 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5))));
    v12 = *v11;
    v13 = *(v11 + 8);
    sub_21A0E6DAC();
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        MEMORY[0x21CED2490](2);
        sub_21A0E6DCC();
        goto LABEL_5;
      }

      MEMORY[0x21CED2490](3);
      v14 = v12;
    }

    else
    {
      if (!v13)
      {
        MEMORY[0x21CED2490](0);
LABEL_14:
        sub_21A0E626C();

        goto LABEL_5;
      }

      MEMORY[0x21CED2490](1);
      switch(v12)
      {
        case 4u:
          v14 = 0;
          break;
        case 5u:
          v14 = 1;
          break;
        case 6u:
          v14 = 3;
          break;
        default:
          MEMORY[0x21CED2490](2);
          goto LABEL_14;
      }
    }

    MEMORY[0x21CED2490](v14);
LABEL_5:
    v5 &= v5 - 1;
    result = sub_21A0E6DFC();
    v8 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x21CED2490](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219F917EC(uint64_t a1, uint64_t a2)
{
  sub_21A0E6DFC();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x21CED2490](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_21A0E6DAC();

        sub_21A0E626C();
        v11 = sub_21A0E6DFC();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s22NewsLiveActivitiesCore20ActivityTextPropertyO2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[11];
  v3 = a1[9];
  v171 = a1[10];
  v172 = v2;
  v4 = a1[11];
  v173[0] = a1[12];
  *(v173 + 9) = *(a1 + 201);
  v5 = a1[7];
  v6 = a1[5];
  v167 = a1[6];
  v168 = v5;
  v7 = a1[7];
  v8 = a1[9];
  v169 = a1[8];
  v170 = v8;
  v9 = a1[3];
  v10 = a1[1];
  v163 = a1[2];
  v164 = v9;
  v11 = a1[3];
  v12 = a1[5];
  v165 = a1[4];
  v166 = v12;
  v13 = a1[1];
  v162[0] = *a1;
  v162[1] = v13;
  v14 = a2[11];
  v15 = a2[9];
  v184 = a2[10];
  v185 = v14;
  v16 = a2[11];
  v186[0] = a2[12];
  *(v186 + 9) = *(a2 + 201);
  v17 = a2[7];
  v18 = a2[5];
  v180 = a2[6];
  v181 = v17;
  v19 = a2[7];
  v20 = a2[9];
  v182 = a2[8];
  v183 = v20;
  v21 = a2[3];
  v22 = a2[1];
  v176 = a2[2];
  v177 = v21;
  v23 = a2[3];
  v24 = a2[5];
  v178 = a2[4];
  v179 = v24;
  v25 = a2[1];
  v174 = *a2;
  v175 = v25;
  v26 = a1[11];
  v187[10] = a1[10];
  v187[11] = v26;
  v188[0] = a1[12];
  *(v188 + 9) = *(a1 + 201);
  v27 = a1[7];
  v187[6] = a1[6];
  v187[7] = v27;
  v28 = a1[9];
  v187[8] = a1[8];
  v187[9] = v28;
  v29 = a1[3];
  v187[2] = a1[2];
  v187[3] = v29;
  v30 = a1[5];
  v187[4] = a1[4];
  v187[5] = v30;
  v31 = a1[1];
  v187[0] = *a1;
  v187[1] = v31;
  *(v189 + 9) = *(a2 + 201);
  v32 = a2[12];
  v188[13] = v16;
  v189[0] = v32;
  v188[9] = v19;
  v188[10] = v182;
  v188[12] = v184;
  v188[11] = v15;
  v188[5] = v23;
  v188[6] = v178;
  v188[8] = v180;
  v188[7] = v18;
  v188[2] = v174;
  v188[4] = v176;
  v188[3] = v22;
  v190[10] = v171;
  v190[11] = v4;
  v191[0] = a1[12];
  *(v191 + 9) = *(a1 + 201);
  v190[6] = v167;
  v190[7] = v7;
  v190[8] = v169;
  v190[9] = v3;
  v190[2] = v163;
  v190[3] = v11;
  v190[4] = v165;
  v190[5] = v6;
  v190[0] = v162[0];
  v190[1] = v10;
  v33 = sub_219F9137C(v190);
  if (v33 <= 1)
  {
    if (v33)
    {
      v53 = nullsub_1(v190, v34);
      v159 = v184;
      v160 = v185;
      v161[0] = v186[0];
      *(v161 + 9) = *(v186 + 9);
      v155 = v180;
      v156 = v181;
      v157 = v182;
      v158 = v183;
      v151 = v176;
      v152 = v177;
      v153 = v178;
      v154 = v179;
      v149 = v174;
      v150 = v175;
      if (sub_219F9137C(&v149) == 1)
      {
        v55 = nullsub_1(&v149, v54);
        v56 = *(v53 + 16);
        v57 = *(v53 + 17);
        v58 = *(v55 + 16);
        v59 = *(v55 + 17);
        v132[0] = *v53;
        LOBYTE(v132[1]) = v56;
        *(&v132[1] + 1) = v57;
        __dst = *v55;
        v147 = v58;
        v148 = v59;
        sub_219F7DC04(&v174, __src);
        sub_219F7DC04(v162, __src);
        sub_219F45500(v53 + 24, __src, &qword_27CCDA1A8);
        sub_219F45500(v55 + 24, __src, &qword_27CCDA1A8);
        if (_s22NewsLiveActivitiesCore21SFSymbolConfigurationV2eeoiySbAC_ACtFZ_0(v132, &__dst))
        {
          v60 = *(v53 + 168);
          __src[8] = *(v53 + 152);
          __src[9] = v60;
          __src[10] = *(v53 + 184);
          *&__src[11] = *(v53 + 200);
          v61 = *(v53 + 104);
          __src[4] = *(v53 + 88);
          __src[5] = v61;
          v62 = *(v53 + 136);
          __src[6] = *(v53 + 120);
          __src[7] = v62;
          v63 = *(v53 + 40);
          __src[0] = *(v53 + 24);
          __src[1] = v63;
          v64 = *(v53 + 72);
          __src[2] = *(v53 + 56);
          __src[3] = v64;
          *(&__src[19] + 8) = *(v55 + 152);
          *(&__src[20] + 8) = *(v55 + 168);
          *(&__src[21] + 8) = *(v55 + 184);
          *(&__src[16] + 8) = *(v55 + 104);
          *(&__src[17] + 8) = *(v55 + 120);
          *(&__src[18] + 8) = *(v55 + 136);
          *(&__src[22] + 1) = *(v55 + 200);
          *(&__src[15] + 8) = *(v55 + 88);
          *(&__src[11] + 8) = *(v55 + 24);
          *(&__src[12] + 8) = *(v55 + 40);
          *(&__src[13] + 8) = *(v55 + 56);
          *(&__src[14] + 8) = *(v55 + 72);
          memmove(&__dst, (v53 + 24), 0xB8uLL);
          if (sub_219F5EBE4(&__dst) != 1)
          {
            v141 = __src[8];
            v142 = __src[9];
            v143 = __src[10];
            v137 = __src[4];
            v138 = __src[5];
            v139 = __src[6];
            v140 = __src[7];
            v133 = __src[0];
            v134 = __src[1];
            v135 = __src[2];
            v136 = __src[3];
            v128 = __src[8];
            v129 = __src[9];
            v130 = __src[10];
            v124 = __src[4];
            v125 = __src[5];
            v126 = __src[6];
            v127 = __src[7];
            v120 = __src[0];
            v121 = __src[1];
            v144 = *&__src[11];
            v131 = *&__src[11];
            v122 = __src[2];
            v123 = __src[3];
            v132[8] = *(&__src[19] + 8);
            v132[9] = *(&__src[20] + 8);
            v132[10] = *(&__src[21] + 8);
            *&v132[11] = *(&__src[22] + 1);
            v132[5] = *(&__src[16] + 8);
            v132[6] = *(&__src[17] + 8);
            v132[7] = *(&__src[18] + 8);
            v132[0] = *(&__src[11] + 8);
            v132[1] = *(&__src[12] + 8);
            v132[2] = *(&__src[13] + 8);
            v132[3] = *(&__src[14] + 8);
            v132[4] = *(&__src[15] + 8);
            if (sub_219F5EBE4(v132) != 1)
            {
              v116 = *(&__src[19] + 8);
              v117 = *(&__src[20] + 8);
              v118 = *(&__src[21] + 8);
              v119 = *(&__src[22] + 1);
              v112 = *(&__src[15] + 8);
              v113 = *(&__src[16] + 8);
              v114 = *(&__src[17] + 8);
              v115 = *(&__src[18] + 8);
              v108 = *(&__src[11] + 8);
              v109 = *(&__src[12] + 8);
              v110 = *(&__src[13] + 8);
              v111 = *(&__src[14] + 8);
              sub_219F45500(v53 + 24, &v96, &qword_27CCDA1A8);
              sub_219F45500(v55 + 24, &v96, &qword_27CCDA1A8);
              sub_219F45500(&v133, &v96, &qword_27CCDA1A8);
              v48 = _s22NewsLiveActivitiesCore17ActivityTextThemeV2eeoiySbAC_ACtFZ_0(&v120, &v108);
              sub_219F6409C(v187, &qword_27CCDA298);
              sub_219F6409C(v55 + 24, &qword_27CCDA1A8);
              v49 = v53 + 24;
LABEL_43:
              sub_219F6409C(v49, &qword_27CCDA1A8);
              v92 = v116;
              v93 = v117;
              v94 = v118;
              v95 = v119;
              v88 = v112;
              v89 = v113;
              v90 = v114;
              v91 = v115;
              v84 = v108;
              v85 = v109;
              v86 = v110;
              v87 = v111;
              sub_219F63CD8(&v84);
              v104 = v128;
              v105 = v129;
              v106 = v130;
              v107 = v131;
              v100 = v124;
              v101 = v125;
              v102 = v126;
              v103 = v127;
              v96 = v120;
              v97 = v121;
              v98 = v122;
              v99 = v123;
              sub_219F63CD8(&v96);
              v116 = __src[8];
              v117 = __src[9];
              v118 = __src[10];
              v119 = *&__src[11];
              v112 = __src[4];
              v113 = __src[5];
              v114 = __src[6];
              v115 = __src[7];
              v108 = __src[0];
              v109 = __src[1];
              v110 = __src[2];
              v111 = __src[3];
              sub_219F6409C(&v108, &qword_27CCDA1A8);
              return v48;
            }

            goto LABEL_37;
          }

LABEL_19:
          sub_219F6409C(v187, &qword_27CCDA298);
          v132[8] = *(&__src[19] + 8);
          v132[9] = *(&__src[20] + 8);
          v132[10] = *(&__src[21] + 8);
          *&v132[11] = *(&__src[22] + 1);
          v132[5] = *(&__src[16] + 8);
          v132[6] = *(&__src[17] + 8);
          v132[7] = *(&__src[18] + 8);
          v132[0] = *(&__src[11] + 8);
          v132[1] = *(&__src[12] + 8);
          v132[2] = *(&__src[13] + 8);
          v132[3] = *(&__src[14] + 8);
          v132[4] = *(&__src[15] + 8);
          if (sub_219F5EBE4(v132) == 1)
          {
            v141 = __src[8];
            v142 = __src[9];
            v143 = __src[10];
            v144 = *&__src[11];
            v137 = __src[4];
            v138 = __src[5];
            v139 = __src[6];
            v140 = __src[7];
            v133 = __src[0];
            v134 = __src[1];
            v135 = __src[2];
            v136 = __src[3];
            v65 = &v133;
LABEL_26:
            sub_219F6409C(v65, &qword_27CCDA1A8);
            return 1;
          }

          goto LABEL_39;
        }

        sub_219F6409C(v55 + 24, &qword_27CCDA1A8);
        sub_219F6409C(v53 + 24, &qword_27CCDA1A8);
LABEL_28:
        v67 = &qword_27CCDA298;
        v68 = v187;
LABEL_29:
        sub_219F6409C(v68, v67);
        return 0;
      }
    }

    else
    {
      v35 = nullsub_1(v190, v34);
      v159 = v184;
      v160 = v185;
      v161[0] = v186[0];
      *(v161 + 9) = *(v186 + 9);
      v155 = v180;
      v156 = v181;
      v157 = v182;
      v158 = v183;
      v151 = v176;
      v152 = v177;
      v153 = v178;
      v154 = v179;
      v149 = v174;
      v150 = v175;
      if (!sub_219F9137C(&v149))
      {
        v37 = nullsub_1(&v149, v36);
        v39 = *(v35 + 16);
        v38 = *(v35 + 24);
        v41 = *(v37 + 16);
        v40 = *(v37 + 24);
        if (*v35 == *v37 && *(v35 + 8) == *(v37 + 8) || (sub_21A0E6C5C() & 1) != 0)
        {
          sub_219F7DC04(&v174, __src);
          sub_219F7DC04(v162, __src);
          sub_219F45500(v35 + 32, __src, &qword_27CCDA1A8);
          sub_219F45500(v37 + 32, __src, &qword_27CCDA1A8);

          v42 = sub_219FAAA00(v39, v41);

          if (v42 & 1) != 0 && (sub_219F76F9C(v38, v40))
          {
            v43 = *(v35 + 176);
            __src[8] = *(v35 + 160);
            __src[9] = v43;
            __src[10] = *(v35 + 192);
            *&__src[11] = *(v35 + 208);
            v44 = *(v35 + 112);
            __src[4] = *(v35 + 96);
            __src[5] = v44;
            v45 = *(v35 + 144);
            __src[6] = *(v35 + 128);
            __src[7] = v45;
            v46 = *(v35 + 48);
            __src[0] = *(v35 + 32);
            __src[1] = v46;
            v47 = *(v35 + 80);
            __src[2] = *(v35 + 64);
            __src[3] = v47;
            *(&__src[19] + 8) = *(v37 + 160);
            *(&__src[20] + 8) = *(v37 + 176);
            *(&__src[21] + 8) = *(v37 + 192);
            *(&__src[16] + 8) = *(v37 + 112);
            *(&__src[17] + 8) = *(v37 + 128);
            *(&__src[18] + 8) = *(v37 + 144);
            *(&__src[22] + 1) = *(v37 + 208);
            *(&__src[15] + 8) = *(v37 + 96);
            *(&__src[11] + 8) = *(v37 + 32);
            *(&__src[12] + 8) = *(v37 + 48);
            *(&__src[13] + 8) = *(v37 + 64);
            *(&__src[14] + 8) = *(v37 + 80);
            memmove(&__dst, (v35 + 32), 0xB8uLL);
            if (sub_219F5EBE4(&__dst) != 1)
            {
              v141 = __src[8];
              v142 = __src[9];
              v143 = __src[10];
              v137 = __src[4];
              v138 = __src[5];
              v139 = __src[6];
              v140 = __src[7];
              v133 = __src[0];
              v134 = __src[1];
              v135 = __src[2];
              v136 = __src[3];
              v128 = __src[8];
              v129 = __src[9];
              v130 = __src[10];
              v124 = __src[4];
              v125 = __src[5];
              v126 = __src[6];
              v127 = __src[7];
              v120 = __src[0];
              v121 = __src[1];
              v144 = *&__src[11];
              v131 = *&__src[11];
              v122 = __src[2];
              v123 = __src[3];
              v132[8] = *(&__src[19] + 8);
              v132[9] = *(&__src[20] + 8);
              v132[10] = *(&__src[21] + 8);
              *&v132[11] = *(&__src[22] + 1);
              v132[5] = *(&__src[16] + 8);
              v132[6] = *(&__src[17] + 8);
              v132[7] = *(&__src[18] + 8);
              v132[0] = *(&__src[11] + 8);
              v132[1] = *(&__src[12] + 8);
              v132[2] = *(&__src[13] + 8);
              v132[3] = *(&__src[14] + 8);
              v132[4] = *(&__src[15] + 8);
              if (sub_219F5EBE4(v132) != 1)
              {
                v116 = *(&__src[19] + 8);
                v117 = *(&__src[20] + 8);
                v118 = *(&__src[21] + 8);
                v119 = *(&__src[22] + 1);
                v112 = *(&__src[15] + 8);
                v113 = *(&__src[16] + 8);
                v114 = *(&__src[17] + 8);
                v115 = *(&__src[18] + 8);
                v108 = *(&__src[11] + 8);
                v109 = *(&__src[12] + 8);
                v110 = *(&__src[13] + 8);
                v111 = *(&__src[14] + 8);
                sub_219F45500(v35 + 32, &v96, &qword_27CCDA1A8);
                sub_219F45500(v37 + 32, &v96, &qword_27CCDA1A8);
                sub_219F45500(&v133, &v96, &qword_27CCDA1A8);
                v48 = _s22NewsLiveActivitiesCore17ActivityTextThemeV2eeoiySbAC_ACtFZ_0(&v120, &v108);
                sub_219F6409C(v187, &qword_27CCDA298);
                sub_219F6409C(v37 + 32, &qword_27CCDA1A8);
                v49 = v35 + 32;
                goto LABEL_43;
              }

LABEL_37:
              sub_219F45500(&v133, &v108, &qword_27CCDA1A8);
              sub_219F6409C(v187, &qword_27CCDA298);
              v116 = __src[8];
              v117 = __src[9];
              v118 = __src[10];
              v119 = *&__src[11];
              v112 = __src[4];
              v113 = __src[5];
              v114 = __src[6];
              v115 = __src[7];
              v108 = __src[0];
              v109 = __src[1];
              v110 = __src[2];
              v111 = __src[3];
              v70 = &v108;
              goto LABEL_38;
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_219F7DC04(&v174, __src);
          sub_219F7DC04(v162, __src);
          sub_219F45500(v35 + 32, __src, &qword_27CCDA1A8);
          sub_219F45500(v37 + 32, __src, &qword_27CCDA1A8);
        }

        sub_219F6409C(v187, &qword_27CCDA298);
        sub_219F6409C(v37 + 32, &qword_27CCDA1A8);
        v68 = (v35 + 32);
        v67 = &qword_27CCDA1A8;
        goto LABEL_29;
      }
    }

LABEL_27:
    sub_219F7DC04(&v174, __src);
    sub_219F7DC04(v162, __src);
    goto LABEL_28;
  }

  if (v33 == 2)
  {
    v50 = nullsub_1(v190, v34);
    v159 = v184;
    v160 = v185;
    v161[0] = v186[0];
    *(v161 + 9) = *(v186 + 9);
    v155 = v180;
    v156 = v181;
    v157 = v182;
    v158 = v183;
    v151 = v176;
    v152 = v177;
    v153 = v178;
    v154 = v179;
    v149 = v174;
    v150 = v175;
    if (sub_219F9137C(&v149) != 2)
    {
      goto LABEL_27;
    }

    v52 = nullsub_1(&v149, v51);
    if (*v50 != *v52)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v50 = nullsub_1(v190, v34);
    v159 = v184;
    v160 = v185;
    v161[0] = v186[0];
    *(v161 + 9) = *(v186 + 9);
    v155 = v180;
    v156 = v181;
    v157 = v182;
    v158 = v183;
    v151 = v176;
    v152 = v177;
    v153 = v178;
    v154 = v179;
    v149 = v174;
    v150 = v175;
    if (sub_219F9137C(&v149) != 3)
    {
      goto LABEL_27;
    }

    v52 = nullsub_1(&v149, v66);
    if (*v50 != *v52)
    {
      goto LABEL_27;
    }
  }

  __src[8] = *(v50 + 136);
  __src[9] = *(v50 + 152);
  __src[10] = *(v50 + 168);
  *&__src[11] = *(v50 + 184);
  __src[4] = *(v50 + 72);
  __src[5] = *(v50 + 88);
  __src[6] = *(v50 + 104);
  __src[7] = *(v50 + 120);
  __src[0] = *(v50 + 8);
  __src[1] = *(v50 + 24);
  __src[2] = *(v50 + 40);
  __src[3] = *(v50 + 56);
  *(&__src[19] + 8) = *(v52 + 136);
  *(&__src[20] + 8) = *(v52 + 152);
  *(&__src[21] + 8) = *(v52 + 168);
  *(&__src[16] + 8) = *(v52 + 88);
  *(&__src[17] + 8) = *(v52 + 104);
  *(&__src[18] + 8) = *(v52 + 120);
  *(&__src[22] + 1) = *(v52 + 184);
  *(&__src[15] + 8) = *(v52 + 72);
  *(&__src[11] + 8) = *(v52 + 8);
  *(&__src[12] + 8) = *(v52 + 24);
  *(&__src[13] + 8) = *(v52 + 40);
  *(&__src[14] + 8) = *(v52 + 56);
  memmove(&__dst, (v50 + 8), 0xB8uLL);
  if (sub_219F5EBE4(&__dst) == 1)
  {
    sub_219F7DC04(&v174, v132);
    sub_219F7DC04(v162, v132);
    sub_219F7DC04(&v174, v132);
    sub_219F7DC04(v162, v132);
    sub_219F6409C(v187, &qword_27CCDA298);
    v141 = *(&__src[19] + 8);
    v142 = *(&__src[20] + 8);
    v143 = *(&__src[21] + 8);
    v144 = *(&__src[22] + 1);
    v137 = *(&__src[15] + 8);
    v138 = *(&__src[16] + 8);
    v139 = *(&__src[17] + 8);
    v140 = *(&__src[18] + 8);
    v133 = *(&__src[11] + 8);
    v134 = *(&__src[12] + 8);
    v135 = *(&__src[13] + 8);
    v136 = *(&__src[14] + 8);
    if (sub_219F5EBE4(&v133) == 1)
    {
      v132[8] = __src[8];
      v132[9] = __src[9];
      v132[10] = __src[10];
      *&v132[11] = *&__src[11];
      v132[5] = __src[5];
      v132[6] = __src[6];
      v132[7] = __src[7];
      v132[0] = __src[0];
      v132[1] = __src[1];
      v132[2] = __src[2];
      v132[3] = __src[3];
      v132[4] = __src[4];
      v65 = v132;
      goto LABEL_26;
    }

LABEL_39:
    memcpy(v132, __src, sizeof(v132));
    v67 = &unk_27CCDA2A0;
    v68 = v132;
    goto LABEL_29;
  }

  v128 = __src[8];
  v129 = __src[9];
  v130 = __src[10];
  v124 = __src[4];
  v125 = __src[5];
  v126 = __src[6];
  v127 = __src[7];
  v120 = __src[0];
  v121 = __src[1];
  v122 = __src[2];
  v123 = __src[3];
  v116 = __src[8];
  v117 = __src[9];
  v118 = __src[10];
  v112 = __src[4];
  v113 = __src[5];
  v114 = __src[6];
  v115 = __src[7];
  v108 = __src[0];
  v109 = __src[1];
  v131 = *&__src[11];
  v119 = *&__src[11];
  v110 = __src[2];
  v111 = __src[3];
  v141 = *(&__src[19] + 8);
  v142 = *(&__src[20] + 8);
  v143 = *(&__src[21] + 8);
  v144 = *(&__src[22] + 1);
  v137 = *(&__src[15] + 8);
  v138 = *(&__src[16] + 8);
  v139 = *(&__src[17] + 8);
  v140 = *(&__src[18] + 8);
  v133 = *(&__src[11] + 8);
  v134 = *(&__src[12] + 8);
  v135 = *(&__src[13] + 8);
  v136 = *(&__src[14] + 8);
  if (sub_219F5EBE4(&v133) == 1)
  {
    sub_219F7DC04(&v174, v132);
    sub_219F7DC04(v162, v132);
    sub_219F7DC04(&v174, v132);
    sub_219F7DC04(v162, v132);
    sub_219F45500(&v120, v132, &qword_27CCDA1A8);
    sub_219F6409C(v187, &qword_27CCDA298);
    v132[8] = __src[8];
    v132[9] = __src[9];
    v132[10] = __src[10];
    *&v132[11] = *&__src[11];
    v132[5] = __src[5];
    v132[6] = __src[6];
    v132[7] = __src[7];
    v132[0] = __src[0];
    v132[1] = __src[1];
    v132[2] = __src[2];
    v132[3] = __src[3];
    v132[4] = __src[4];
    v70 = v132;
LABEL_38:
    sub_219F63CD8(v70);
    goto LABEL_39;
  }

  v80 = *(&__src[19] + 8);
  v81 = *(&__src[20] + 8);
  v82 = *(&__src[21] + 8);
  v83 = *(&__src[22] + 1);
  v76 = *(&__src[15] + 8);
  v77 = *(&__src[16] + 8);
  v78 = *(&__src[17] + 8);
  v79 = *(&__src[18] + 8);
  v72 = *(&__src[11] + 8);
  v73 = *(&__src[12] + 8);
  v74 = *(&__src[13] + 8);
  v75 = *(&__src[14] + 8);
  sub_219F7DC04(&v174, v132);
  sub_219F7DC04(v162, v132);
  sub_219F7DC04(&v174, v132);
  sub_219F7DC04(v162, v132);
  sub_219F7DC04(&v174, v132);
  sub_219F7DC04(v162, v132);
  sub_219F45500(&v120, v132, &qword_27CCDA1A8);
  v71 = _s22NewsLiveActivitiesCore17ActivityTextThemeV2eeoiySbAC_ACtFZ_0(&v108, &v72);
  sub_219F6409C(v187, &qword_27CCDA298);
  sub_219F7DC60(&v174);
  sub_219F7DC60(v162);
  v92 = v80;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v88 = v76;
  v89 = v77;
  v90 = v78;
  v91 = v79;
  v84 = v72;
  v85 = v73;
  v86 = v74;
  v87 = v75;
  sub_219F63CD8(&v84);
  v104 = v116;
  v105 = v117;
  v106 = v118;
  v107 = v119;
  v100 = v112;
  v101 = v113;
  v102 = v114;
  v103 = v115;
  v96 = v108;
  v97 = v109;
  v98 = v110;
  v99 = v111;
  sub_219F63CD8(&v96);
  v132[8] = __src[8];
  v132[9] = __src[9];
  v132[10] = __src[10];
  *&v132[11] = *&__src[11];
  v132[5] = __src[5];
  v132[6] = __src[6];
  v132[7] = __src[7];
  v132[0] = __src[0];
  v132[1] = __src[1];
  v132[2] = __src[2];
  v132[3] = __src[3];
  v132[4] = __src[4];
  sub_219F6409C(v132, &qword_27CCDA1A8);
  return v71;
}

unint64_t sub_219F92D90()
{
  result = qword_27CCDA248;
  if (!qword_27CCDA248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA248);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore17ActivityTextThemeVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy217_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_219F92E58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 217))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 216);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_219F92EA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
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
    *(result + 216) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 217) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 217) = 0;
    }

    if (a2)
    {
      *(result + 216) = -a2;
    }
  }

  return result;
}

unint64_t sub_219F92F58()
{
  result = qword_27CCDA250;
  if (!qword_27CCDA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDA250);
  }

  return result;
}