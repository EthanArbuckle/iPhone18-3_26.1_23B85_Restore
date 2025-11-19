void sub_214493FAC()
{
  if (!qword_27C9144D8)
  {
    v0 = sub_2146D8DC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27C9144D8);
    }
  }
}

unint64_t sub_214493FFC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FB7994;
  v4[3] = 0;
  v4[4] = 300;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2140676DC;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21408E9E0;
  *(v6 + 24) = v5;
  *(inited + 40) = v6;
  return sub_2140433DC(inited, a1);
}

uint64_t sub_214494148@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MarkAsReviewedCommand() + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v3;
}

uint64_t type metadata accessor for MarkAsReviewedCommand()
{
  result = qword_280B2EF98;
  if (!qword_280B2EF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_2144941F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = (v1 + *(type metadata accessor for MarkAsReviewedCommand() + 20));
  v6 = v5->n128_u64[1];
  v7 = v5[1].n128_u64[0];

  result = *a1;
  *v5 = *a1;
  v5[1].n128_u64[0] = v3;
  v5[1].n128_u8[8] = v4;
  return result;
}

uint64_t sub_21449425C()
{
  if (*(v0 + *(type metadata accessor for MarkAsReviewedCommand() + 20) + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214494310@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for MarkAsReviewedCommand() + 20) + 16);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144943A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for MarkAsReviewedCommand() + 20);
  sub_2140325F8(v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214494460(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MarkAsReviewedCommand() + 20);
  v11 = a1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v10 = *(v3 + 24);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v3 + 16);

    *(v3 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144945A8(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MarkAsReviewedCommand() + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    *a1 = v4;

    return sub_2140652FC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214494658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MarkAsReviewedCommand() + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v3;
}

uint64_t sub_2144946BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a2 + *(type metadata accessor for MarkAsReviewedCommand() + 20);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);

  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  return result;
}

void (*sub_214494740(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for MarkAsReviewedCommand() + 20);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  LOBYTE(v6) = *(v6 + 24);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v6;

  return sub_214065740;
}

uint64_t sub_2144947EC(uint64_t a1)
{
  *(a1 + 8) = sub_214494854(&qword_27C9144E0);
  result = sub_214494854(&qword_27C9144E8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214494854(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MarkAsReviewedCommand();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2144948C0()
{
  type metadata accessor for Metadata();
  if (v0 <= 0x3F)
  {
    sub_214494944();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214494944()
{
  if (!qword_280B2E568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C904F20, &qword_2146EE8A0);
    v0 = type metadata accessor for Validated();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2E568);
    }
  }
}

__n128 PassPreview.init(headerImage:icon:background:primaryText:secondaryText:tertiaryText:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a4[1];
  v38 = *a4;
  v11 = *(a4 + 4);
  v10 = *(a4 + 5);
  v12 = (a7 + 1352);
  v13 = *a5;
  v39 = *(a5 + 3);
  v40 = *(a5 + 1);
  v14 = a5[5];
  v15 = *(a6 + 3);
  v43 = v15;
  v44 = *(a6 + 1);
  v41 = a6[5];
  v42 = *a6;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 144) = 0u;
  *(a7 + 160) = 0u;
  *(a7 + 176) = 0u;
  *(a7 + 192) = 0u;
  *(a7 + 208) = 0u;
  *(a7 + 224) = 0u;
  *(a7 + 240) = 0u;
  *(a7 + 256) = 0u;
  *(a7 + 272) = 0x1FFFFFFFELL;
  v16 = (a7 + 280);
  *(a7 + 280) = 0u;
  *(a7 + 296) = 0u;
  *(a7 + 312) = 0u;
  *(a7 + 328) = 0u;
  *(a7 + 344) = 0u;
  *(a7 + 360) = 0u;
  *(a7 + 376) = 0u;
  *(a7 + 392) = 0u;
  *(a7 + 408) = 0u;
  *(a7 + 424) = 0u;
  *(a7 + 440) = 0u;
  *(a7 + 456) = 0u;
  *(a7 + 472) = 0u;
  *(a7 + 488) = 0u;
  *(a7 + 504) = 0u;
  *(a7 + 520) = 0u;
  *(a7 + 536) = 0u;
  *(a7 + 552) = 0u;
  *(a7 + 568) = 0u;
  *(a7 + 584) = 0u;
  *(a7 + 600) = 0u;
  *(a7 + 616) = 0u;
  *(a7 + 632) = 0u;
  *(a7 + 648) = 0u;
  *(a7 + 664) = 0u;
  *(a7 + 680) = 0u;
  *(a7 + 696) = 0u;
  *(a7 + 712) = 0x1FFFFFFFELL;
  *(a7 + 720) = 0u;
  *(a7 + 736) = 0u;
  *(a7 + 752) = 0u;
  *(a7 + 768) = 0u;
  *(a7 + 784) = 0u;
  *(a7 + 800) = 0u;
  *(a7 + 816) = 0u;
  *(a7 + 832) = 0u;
  *(a7 + 848) = 0u;
  *(a7 + 864) = 0u;
  *(a7 + 1352) = 0u;
  *(a7 + 1368) = 0u;
  *(a7 + 1384) = 0u;
  *(a7 + 1400) = 0u;
  *(a7 + 1416) = 0u;
  *(a7 + 1432) = 0u;
  *(a7 + 1448) = 0u;
  *(a7 + 1464) = 0u;
  *(a7 + 1480) = 0u;
  if (*(a1 + 24))
  {
    v69 = *(a1 + 192);
    v71 = *(a1 + 208);
    v73 = *(a1 + 224);
    v75 = *(a1 + 240);
    v61 = *(a1 + 128);
    v63 = *(a1 + 144);
    v65 = *(a1 + 160);
    v67 = *(a1 + 176);
    v53 = *(a1 + 64);
    v55 = *(a1 + 80);
    v57 = *(a1 + 96);
    v59 = *(a1 + 112);
    v45 = *a1;
    v47 = *(a1 + 16);
    v49 = *(a1 + 32);
    v51 = *(a1 + 48);
    sub_213FB2DF4(a7, &qword_27C9144F0, qword_21475A4B0);
    LOWORD(v77) = 0;
    sub_2140615D0(&v77);
    v17 = v85;
    v18 = v87;
    v19 = v88;
    *(a7 + 392) = v86;
    *(a7 + 408) = v18;
    *(a7 + 424) = v19;
    v20 = v81;
    v21 = v83;
    v22 = v84;
    *(a7 + 328) = v82;
    *(a7 + 344) = v21;
    *(a7 + 360) = v22;
    *(a7 + 376) = v17;
    v23 = v78;
    *(a7 + 248) = v77;
    v24 = v79;
    v25 = v80;
    *(a7 + 264) = v23;
    *(a7 + 280) = v24;
    *(a7 + 296) = v25;
    *(a7 + 312) = v20;
    *(a7 + 240) = 0;
    *(a7 + 208) = 0u;
    *(a7 + 224) = 0u;
    *(a7 + 176) = 0u;
    *(a7 + 192) = 0u;
    *(a7 + 144) = 0u;
    *(a7 + 160) = 0u;
    *(a7 + 112) = 0u;
    *(a7 + 128) = 0u;
    *(a7 + 80) = 0u;
    *(a7 + 96) = 0u;
    *(a7 + 48) = 0u;
    *(a7 + 64) = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *a7 = 0u;
    sub_213FB2DF4(a7, &qword_27C904858, &qword_214736F00);
    *(a7 + 192) = v69;
    *(a7 + 208) = v71;
    *(a7 + 224) = v73;
    *(a7 + 240) = v75;
    *(a7 + 128) = v61;
    *(a7 + 144) = v63;
    *(a7 + 160) = v65;
    *(a7 + 176) = v67;
    *(a7 + 64) = v53;
    *(a7 + 80) = v55;
    *(a7 + 96) = v57;
    *(a7 + 112) = v59;
    *a7 = v45;
    *(a7 + 16) = v47;
    *(a7 + 32) = v49;
    *(a7 + 48) = v51;
  }

  else
  {
    sub_213FB2DF4(a1, &qword_27C904858, &qword_214736F00);
    sub_213FB2DF4(a7, &qword_27C9144F0, qword_21475A4B0);
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *(a7 + 48) = 0u;
    *(a7 + 64) = 0u;
    *(a7 + 80) = 0u;
    *(a7 + 96) = 0u;
    *(a7 + 112) = 0u;
    *(a7 + 128) = 0u;
    *(a7 + 144) = 0u;
    *(a7 + 160) = 0u;
    *(a7 + 176) = 0u;
    *(a7 + 192) = 0u;
    *(a7 + 208) = 0u;
    *(a7 + 224) = 0u;
    *(a7 + 240) = 0u;
    *(a7 + 256) = 0u;
    *(a7 + 272) = 0x1FFFFFFFELL;
    *v16 = 0u;
    v16[1] = 0u;
    v16[2] = 0u;
    v16[3] = 0u;
    v16[4] = 0u;
    v16[5] = 0u;
    v16[6] = 0u;
    v16[7] = 0u;
    v16[8] = 0u;
    v16[9] = 0u;
  }

  v26 = (a7 + 440);
  if (*(a2 + 24))
  {
    v70 = *(a2 + 192);
    v72 = *(a2 + 208);
    v74 = *(a2 + 224);
    v76 = *(a2 + 240);
    v62 = *(a2 + 128);
    v64 = *(a2 + 144);
    v66 = *(a2 + 160);
    v68 = *(a2 + 176);
    v54 = *(a2 + 64);
    v56 = *(a2 + 80);
    v58 = *(a2 + 96);
    v60 = *(a2 + 112);
    v46 = *a2;
    v48 = *(a2 + 16);
    v50 = *(a2 + 32);
    v52 = *(a2 + 48);
    sub_213FB2DF4(a7 + 440, &qword_27C9144F0, qword_21475A4B0);
    LOWORD(v77) = 0;
    sub_2140615D0(&v77);
    v27 = v86;
    *(a7 + 816) = v85;
    *(a7 + 832) = v27;
    v28 = v88;
    *(a7 + 848) = v87;
    *(a7 + 864) = v28;
    v29 = v82;
    *(a7 + 752) = v81;
    *(a7 + 768) = v29;
    v30 = v84;
    *(a7 + 784) = v83;
    *(a7 + 800) = v30;
    v31 = v78;
    *(a7 + 688) = v77;
    *(a7 + 704) = v31;
    v32 = v80;
    *(a7 + 720) = v79;
    *(a7 + 736) = v32;
    *(a7 + 680) = 0;
    *(a7 + 648) = 0u;
    *(a7 + 664) = 0u;
    *(a7 + 616) = 0u;
    *(a7 + 632) = 0u;
    *(a7 + 584) = 0u;
    *(a7 + 600) = 0u;
    *(a7 + 552) = 0u;
    *(a7 + 568) = 0u;
    *(a7 + 520) = 0u;
    *(a7 + 536) = 0u;
    *(a7 + 488) = 0u;
    *(a7 + 504) = 0u;
    *(a7 + 456) = 0u;
    *(a7 + 472) = 0u;
    *v26 = 0u;
    sub_213FB2DF4(a7 + 440, &qword_27C904858, &qword_214736F00);
    *(a7 + 632) = v70;
    *(a7 + 648) = v72;
    *(a7 + 664) = v74;
    *(a7 + 680) = v76;
    *(a7 + 568) = v62;
    *(a7 + 584) = v64;
    *(a7 + 600) = v66;
    *(a7 + 616) = v68;
    *(a7 + 504) = v54;
    *(a7 + 520) = v56;
    *(a7 + 536) = v58;
    *(a7 + 552) = v60;
    *v26 = v46;
    *(a7 + 456) = v48;
    *(a7 + 472) = v50;
    *(a7 + 488) = v52;
  }

  else
  {
    sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
    sub_213FB2DF4(a7 + 440, &qword_27C9144F0, qword_21475A4B0);
    *v26 = 0u;
    *(a7 + 456) = 0u;
    *(a7 + 472) = 0u;
    *(a7 + 488) = 0u;
    *(a7 + 504) = 0u;
    *(a7 + 520) = 0u;
    *(a7 + 536) = 0u;
    *(a7 + 552) = 0u;
    *(a7 + 568) = 0u;
    *(a7 + 584) = 0u;
    *(a7 + 600) = 0u;
    *(a7 + 616) = 0u;
    *(a7 + 632) = 0u;
    *(a7 + 648) = 0u;
    *(a7 + 664) = 0u;
    *(a7 + 680) = 0u;
    *(a7 + 696) = 0u;
    *(a7 + 712) = 0x1FFFFFFFELL;
    *(a7 + 720) = 0u;
    *(a7 + 736) = 0u;
    *(a7 + 752) = 0u;
    *(a7 + 768) = 0u;
    *(a7 + 784) = 0u;
    *(a7 + 800) = 0u;
    *(a7 + 816) = 0u;
    *(a7 + 832) = 0u;
    *(a7 + 848) = 0u;
    *(a7 + 864) = 0u;
  }

  memcpy((a7 + 880), a3, 0x1D8uLL);
  v33 = *(a7 + 1360);

  *v12 = v38;
  v12[1] = v37;
  *(a7 + 1384) = v11;
  *(a7 + 1392) = v10;
  v34 = *(a7 + 1408);

  *(a7 + 1400) = v13;
  *(a7 + 1424) = v39;
  *(a7 + 1408) = v40;
  *(a7 + 1440) = v14;
  v35 = *(a7 + 1456);

  *(a7 + 1448) = v42;
  result = v44;
  *(v12 + 120) = v43;
  *(v12 + 104) = v44;
  *(a7 + 1488) = v41;
  return result;
}

__n128 PassPreview.PassImage.image.setter(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

uint64_t PassPreview.PassText.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 PassPreview.PassText.color.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void __swiftcall PassPreview.PassText.init(text:color:)(BlastDoor::PassPreview::PassText *__return_ptr retstr, Swift::String text, BlastDoor::Color color)
{
  retstr->text = text;
  v4 = v3[1];
  *&retstr->color.red = *v3;
  *&retstr->color.blue = v4;
}

uint64_t sub_214494FD8()
{
  if (*v0)
  {
    result = 0x726F6C6F63;
  }

  else
  {
    result = 1954047348;
  }

  *v0;
  return result;
}

uint64_t sub_214495008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
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

uint64_t sub_2144950E0(uint64_t a1)
{
  v2 = sub_2144952EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21449511C(uint64_t a1)
{
  v2 = sub_2144952EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PassPreview.PassText.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9144F8, "Z4\b");
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 1);
  v13 = *(v1 + 2);
  v14 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144952EC();
  sub_2146DAA28();
  LOBYTE(v16) = 0;
  sub_2146DA328();
  if (!v2)
  {
    v16 = v14;
    v17 = v13;
    v18 = 1;
    sub_2142FCF88();
    sub_2146DA388();
  }

  return (*(v15 + 8))(v7, v4);
}

unint64_t sub_2144952EC()
{
  result = qword_27C914500;
  if (!qword_27C914500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914500);
  }

  return result;
}

uint64_t PassPreview.PassText.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914508, &qword_21474DA10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144952EC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v18[0]) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v14 = v11;
  v19 = 1;
  sub_2142FCE0C();
  sub_2146DA1C8();
  (*(v6 + 8))(v9, v5);
  v15 = v18[0];
  v16 = v18[1];
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PassPreview.PassImage.image.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*PassPreview.PassImage.image.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *PassPreview.PassImage.$image.setter(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

void (*PassPreview.PassImage.$image.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

uint64_t sub_2144957F8(uint64_t a1)
{
  v2 = sub_2144959E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214495834(uint64_t a1)
{
  v2 = sub_2144959E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PassPreview.PassImage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914510, &qword_21474DA18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144959E0();
  sub_2146DAA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_2144959E0()
{
  result = qword_27C914518;
  if (!qword_27C914518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914518);
  }

  return result;
}

uint64_t PassPreview.PassImage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914520, &qword_21474DA20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  LOWORD(v28[0]) = 0;
  sub_2140615D0(v28);
  v25 = v28[9];
  v26 = v28[10];
  v27 = v28[11];
  v21 = v28[5];
  v22 = v28[6];
  v23 = v28[7];
  v24 = v28[8];
  v17 = v28[1];
  v18 = v28[2];
  v19 = v28[3];
  v20 = v28[4];
  v16 = v28[0];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144959E0();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    sub_2140A4DD4(&qword_280B30CB8);
    sub_2146DA1C8();
    (*(v5 + 8))(v8, v4);
    sub_21402EDB8(&v13, v14, &qword_27C905500, &qword_2146F2BE0);
    sub_214495CA4(v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_214495C74(v14);
}

uint64_t sub_214495CF4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914510, &qword_21474DA18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144959E0();
  sub_2146DAA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

__n128 PassPreview.PassBackground.color.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 440);
  v3 = *(v1 + 456);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 PassPreview.PassBackground.init(image:color:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = (a3 + 440);
  v6 = a2[1];
  v7 = *a2;
  if (*(a1 + 24))
  {
    v20 = *(a1 + 192);
    v21 = *(a1 + 208);
    v22 = *(a1 + 224);
    v23 = *(a1 + 240);
    v16 = *(a1 + 128);
    v17 = *(a1 + 144);
    v18 = *(a1 + 160);
    v19 = *(a1 + 176);
    v12 = *(a1 + 64);
    v13 = *(a1 + 80);
    v14 = *(a1 + 96);
    v15 = *(a1 + 112);
    v8 = *a1;
    v9 = *(a1 + 16);
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    LOWORD(v25[0]) = 0;
    sub_2140615D0(v25);
    *(&__src[24] + 8) = v25[9];
    *(&__src[25] + 8) = v25[10];
    *(&__src[26] + 8) = v25[11];
    *(&__src[20] + 8) = v25[5];
    *(&__src[21] + 8) = v25[6];
    *(&__src[22] + 8) = v25[7];
    *(&__src[23] + 8) = v25[8];
    *(&__src[16] + 8) = v25[1];
    *(&__src[17] + 8) = v25[2];
    *(&__src[18] + 8) = v25[3];
    *(&__src[19] + 8) = v25[4];
    *(&__src[15] + 8) = v25[0];
    memset(__src, 0, 248);
    sub_213FB2DF4(__src, &qword_27C904858, &qword_214736F00);
    __src[12] = v20;
    __src[13] = v21;
    __src[14] = v22;
    *&__src[15] = v23;
    __src[8] = v16;
    __src[9] = v17;
    __src[10] = v18;
    __src[11] = v19;
    __src[4] = v12;
    __src[5] = v13;
    __src[6] = v14;
    __src[7] = v15;
    __src[0] = v8;
    __src[1] = v9;
    __src[2] = v10;
    __src[3] = v11;
    memcpy(a3, __src, 0x1B8uLL);
  }

  else
  {
    sub_213FB2DF4(a1, &qword_27C904858, &qword_214736F00);
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[6] = 0u;
    a3[7] = 0u;
    a3[8] = 0u;
    a3[9] = 0u;
    a3[10] = 0u;
    a3[11] = 0u;
    a3[12] = 0u;
    a3[13] = 0u;
    a3[14] = 0u;
    a3[15] = 0u;
    a3[16] = 0u;
    *(a3 + 34) = 0x1FFFFFFFELL;
    *(a3 + 280) = 0u;
    *(a3 + 296) = 0u;
    *(a3 + 312) = 0u;
    *(a3 + 328) = 0u;
    *(a3 + 344) = 0u;
    *(a3 + 360) = 0u;
    *(a3 + 376) = 0u;
    *(a3 + 392) = 0u;
    *(a3 + 408) = 0u;
    *(a3 + 424) = 0u;
  }

  result = v6;
  *v4 = v7;
  v4[1] = v6;
  return result;
}

uint64_t sub_21449607C()
{
  if (*v0)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_2144960A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
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

uint64_t sub_21449617C(uint64_t a1)
{
  v2 = sub_214496384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144961B8(uint64_t a1)
{
  v2 = sub_214496384();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PassPreview.PassBackground.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914528, &qword_21474DA28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214496384();
  sub_2146DAA28();
  LOBYTE(v14) = 0;
  sub_2144963D8();
  sub_2146DA308();
  if (!v2)
  {
    v11 = *(v3 + 456);
    v14 = *(v3 + 440);
    v15 = v11;
    v13[15] = 1;
    sub_2142FCF88();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_214496384()
{
  result = qword_27C914530;
  if (!qword_27C914530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914530);
  }

  return result;
}

unint64_t sub_2144963D8()
{
  result = qword_27C914538;
  if (!qword_27C914538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914538);
  }

  return result;
}

uint64_t PassPreview.PassBackground.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914540, &qword_21474DA30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214496384();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v13;
  v18 = 0;
  sub_21449665C();
  sub_2146DA148();
  memcpy(v15, v14, sizeof(v15));
  v18 = 1;
  sub_2142FCE0C();
  sub_2146DA1C8();
  (*(v5 + 8))(v8, v4);
  v16 = v14[0];
  v17 = v14[1];
  sub_2144966B0(v15, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2144966E8(v15);
}

unint64_t sub_21449665C()
{
  result = qword_27C914548;
  if (!qword_27C914548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914548);
  }

  return result;
}

uint64_t PassPreview.primaryText.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1392);
  *a1 = *(v1 + 1352);
  *(a1 + 8) = *(v1 + 1360);
  *(a1 + 24) = *(v1 + 1376);
  *(a1 + 40) = v2;
}

__n128 PassPreview.primaryText.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 1360);

  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 1352) = *a1;
  *(v1 + 1368) = v7;
  *(v1 + 1384) = v3;
  *(v1 + 1392) = v4;
  return result;
}

uint64_t PassPreview.secondaryText.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1440);
  *a1 = *(v1 + 1400);
  *(a1 + 8) = *(v1 + 1408);
  *(a1 + 24) = *(v1 + 1424);
  *(a1 + 40) = v2;
}

__n128 PassPreview.secondaryText.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 1408);

  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 1400) = *a1;
  *(v1 + 1416) = v7;
  *(v1 + 1432) = v3;
  *(v1 + 1440) = v4;
  return result;
}

uint64_t PassPreview.tertiaryText.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1488);
  *a1 = *(v1 + 1448);
  *(a1 + 8) = *(v1 + 1456);
  *(a1 + 24) = *(v1 + 1472);
  *(a1 + 40) = v2;
}

__n128 PassPreview.tertiaryText.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 1456);

  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 1448) = *a1;
  *(v1 + 1464) = v7;
  *(v1 + 1480) = v3;
  *(v1 + 1488) = v4;
  return result;
}

__n128 PassPreview.backgroundColor.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 1320);
  v3 = *(v1 + 1336);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t PassPreview.Constraints.workingDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t PassPreview.Constraints.init(workingDirectory:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_214496ADC(uint64_t a1)
{
  v2 = sub_214496CD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214496B18(uint64_t a1)
{
  v2 = sub_214496CD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PassPreview.Constraints.encode(to:)(void *a1)
{
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914550, &qword_21474DA38);
  v3 = *(v13[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v13[0]);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214496CD4();

  sub_2146DAA28();
  v13[1] = v7;
  v13[2] = v8;
  v14 = v9;
  sub_2140A6418();
  v11 = v13[0];
  sub_2146DA388();

  return (*(v3 + 8))(v6, v11);
}

unint64_t sub_214496CD4()
{
  result = qword_27C914558;
  if (!qword_27C914558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914558);
  }

  return result;
}

uint64_t PassPreview.Constraints.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914560, &qword_21474DA40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214496CD4();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21406100C();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v14[2];
    v12 = v15;
    *a2 = v14[1];
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214496ED0()
{
  v1 = *v0;
  v2 = 0x6D49726564616568;
  v3 = 0x547972616D697270;
  v4 = 0x7261646E6F636573;
  if (v1 != 4)
  {
    v4 = 0x7972616974726574;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1852793705;
  if (v1 != 1)
  {
    v5 = 0x756F72676B636162;
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

uint64_t sub_214496FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214498660(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214496FD4(uint64_t a1)
{
  v2 = sub_214497340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214497010(uint64_t a1)
{
  v2 = sub_214497340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PassPreview.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914568, &qword_21474DA48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214497340();
  sub_2146DAA28();
  LOBYTE(v17) = 0;
  sub_2144963D8();
  sub_2146DA308();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    sub_2146DA308();
    LOBYTE(v17) = 2;
    sub_214497394();
    sub_2146DA388();
    v11 = *(v3 + 1392);
    v17 = *(v3 + 1352);
    v18 = *(v3 + 1360);
    v19 = *(v3 + 1376);
    v20 = v11;
    v16 = 3;
    sub_2144973E8();

    sub_2146DA308();

    v12 = *(v3 + 1440);
    v17 = *(v3 + 1400);
    v18 = *(v3 + 1408);
    v19 = *(v3 + 1424);
    v20 = v12;
    v16 = 4;

    sub_2146DA308();

    v13 = *(v3 + 1488);
    v17 = *(v3 + 1448);
    v18 = *(v3 + 1456);
    v19 = *(v3 + 1472);
    v20 = v13;
    v16 = 5;

    sub_2146DA308();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_214497340()
{
  result = qword_27C914570;
  if (!qword_27C914570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914570);
  }

  return result;
}

unint64_t sub_214497394()
{
  result = qword_27C914578;
  if (!qword_27C914578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914578);
  }

  return result;
}

unint64_t sub_2144973E8()
{
  result = qword_27C914580;
  if (!qword_27C914580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914580);
  }

  return result;
}

uint64_t PassPreview.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  *&v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914588, &qword_21474DA50);
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v21);
  v7 = &v17 - v6;
  memset(v23, 0, sizeof(v23));
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  v24 = 0x1FFFFFFFELL;
  v36 = 0x1FFFFFFFELL;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214497340();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_213FB2DF4(v23, &qword_27C9144F0, qword_21475A4B0);
    sub_213FB2DF4(v35, &qword_27C9144F0, qword_21475A4B0);
  }

  else
  {
    *&v19 = v4;
    v57 = 0;
    sub_21449665C();
    v9 = v21;
    sub_2146DA148();
    sub_21402EDB8(v22, v23, &qword_27C9144F0, qword_21475A4B0);
    v57 = 1;
    sub_2146DA148();
    sub_21402EDB8(v22, v35, &qword_27C9144F0, qword_21475A4B0);
    v57 = 2;
    sub_21449797C();
    sub_2146DA1C8();
    memcpy(v47, v22, sizeof(v47));
    v57 = 3;
    sub_2144979D0();
    sub_2146DA148();
    v10 = *&v22[32];
    v11 = *&v22[40];
    v17 = *&v22[16];
    v18 = *v22;

    v48 = v18;
    v49 = v17;
    *&v50 = v10;
    *(&v50 + 1) = v11;
    v57 = 4;
    sub_2146DA148();
    v12 = *&v22[32];
    v13 = *&v22[40];
    v17 = *&v22[16];
    v18 = *v22;

    v51 = v18;
    v52 = v17;
    *&v53 = v12;
    *(&v53 + 1) = v13;
    v57 = 5;
    sub_2146DA148();
    (*(v19 + 8))(v7, v9);
    v14 = *&v22[32];
    v15 = *&v22[40];
    v21 = *v22;
    v19 = *&v22[16];

    v54 = v21;
    v55 = v19;
    *&v56 = v14;
    *(&v56 + 1) = v15;
    sub_214497A24(v23, v20);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_214497A5C(v23);
  }
}

unint64_t sub_21449797C()
{
  result = qword_27C914590;
  if (!qword_27C914590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914590);
  }

  return result;
}

unint64_t sub_2144979D0()
{
  result = qword_27C914598;
  if (!qword_27C914598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914598);
  }

  return result;
}

unint64_t sub_214497A90()
{
  result = qword_27C9145A0;
  if (!qword_27C9145A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9145A0);
  }

  return result;
}

unint64_t sub_214497AE8()
{
  result = qword_27C9145A8;
  if (!qword_27C9145A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9145A8);
  }

  return result;
}

unint64_t sub_214497B3C(uint64_t a1)
{
  result = sub_214497B64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214497B64()
{
  result = qword_27C9145B0;
  if (!qword_27C9145B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9145B0);
  }

  return result;
}

unint64_t sub_214497BB8(uint64_t a1)
{
  *(a1 + 8) = sub_214497BE8();
  result = sub_214497C3C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214497BE8()
{
  result = qword_27C9145B8;
  if (!qword_27C9145B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9145B8);
  }

  return result;
}

unint64_t sub_214497C3C()
{
  result = qword_27C9145C0;
  if (!qword_27C9145C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9145C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor11PassPreviewV0C5ImageVSg(uint64_t a1)
{
  if ((*(a1 + 272) >> 1) > 0x80000000)
  {
    return -(*(a1 + 272) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214497CE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1496))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 272) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t sub_214497D44(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 1496) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1496) = 0;
    }

    if (a2)
    {
      *(result + 248) = 0;
      *(result + 256) = 0;
      *(result + 264) = 0;
      *(result + 272) = 2 * ~a2;
      *(result + 280) = 0u;
      *(result + 296) = 0u;
      *(result + 312) = 0u;
      *(result + 328) = 0u;
      *(result + 344) = 0u;
      *(result + 360) = 0u;
      *(result + 376) = 0u;
      *(result + 392) = 0u;
      *(result + 408) = 0u;
      *(result + 424) = 0u;
    }
  }

  return result;
}

uint64_t sub_214497F74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 472))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 272) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t sub_214497FD8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 472) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 472) = 0;
    }

    if (a2)
    {
      *(result + 248) = 0;
      *(result + 256) = 0;
      *(result + 264) = 0;
      *(result + 272) = 2 * ~a2;
      *(result + 280) = 0u;
      *(result + 296) = 0u;
      *(result + 312) = 0u;
      *(result + 328) = 0u;
      *(result + 344) = 0u;
      *(result + 360) = 0u;
      *(result + 376) = 0u;
      *(result + 392) = 0u;
      *(result + 408) = 0u;
      *(result + 424) = 0u;
    }
  }

  return result;
}

unint64_t sub_21449813C()
{
  result = qword_27C9145C8;
  if (!qword_27C9145C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9145C8);
  }

  return result;
}

unint64_t sub_214498194()
{
  result = qword_27C9145D0;
  if (!qword_27C9145D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9145D0);
  }

  return result;
}

unint64_t sub_2144981EC()
{
  result = qword_27C9145D8;
  if (!qword_27C9145D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9145D8);
  }

  return result;
}

unint64_t sub_214498244()
{
  result = qword_27C9145E0;
  if (!qword_27C9145E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9145E0);
  }

  return result;
}

unint64_t sub_21449829C()
{
  result = qword_27C9145E8;
  if (!qword_27C9145E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9145E8);
  }

  return result;
}

unint64_t sub_2144982F4()
{
  result = qword_27C9145F0;
  if (!qword_27C9145F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9145F0);
  }

  return result;
}

unint64_t sub_21449834C()
{
  result = qword_27C9145F8;
  if (!qword_27C9145F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9145F8);
  }

  return result;
}

unint64_t sub_2144983A4()
{
  result = qword_27C914600;
  if (!qword_27C914600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914600);
  }

  return result;
}

unint64_t sub_2144983FC()
{
  result = qword_27C914608;
  if (!qword_27C914608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914608);
  }

  return result;
}

unint64_t sub_214498454()
{
  result = qword_27C914610;
  if (!qword_27C914610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914610);
  }

  return result;
}

unint64_t sub_2144984AC()
{
  result = qword_27C914618;
  if (!qword_27C914618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914618);
  }

  return result;
}

unint64_t sub_214498504()
{
  result = qword_27C914620;
  if (!qword_27C914620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914620);
  }

  return result;
}

unint64_t sub_21449855C()
{
  result = qword_27C914628;
  if (!qword_27C914628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914628);
  }

  return result;
}

unint64_t sub_2144985B4()
{
  result = qword_27C914630;
  if (!qword_27C914630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914630);
  }

  return result;
}

unint64_t sub_21449860C()
{
  result = qword_27C914638;
  if (!qword_27C914638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914638);
  }

  return result;
}

uint64_t sub_214498660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D49726564616568 && a2 == 0xEB00000000656761;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x547972616D697270 && a2 == 0xEB00000000747865 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xED00007478655479 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7972616974726574 && a2 == 0xEC00000074786554)
  {

    return 5;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_21449887C()
{
  *v0;
  *v0;
  v1 = sub_2146D9588();

  return v1;
}

uint64_t StickerEffect.bridgedToObjectiveC.getter()
{
  *v0;
  *v0;
  v1 = sub_2146D9588();

  return v1;
}

const __CFDictionary *sub_214498A28(CGImageSource *a1)
{
  result = BitmapEncoder.encode(imageSource:)(a1);
  v5 = v1;
  if (v1)
  {
    v26 = v4;
    v23 = result;
    v6 = v1;
    sub_214689A34(v1, 0, 0, v24);
    v7 = v24[1];
    v8 = v24[3];
    v21 = v24[2];
    v22 = v24[0];
    if (v25)
    {
      v9 = v24[4];
    }

    else
    {
      v9 = 0;
    }

    if (v25)
    {
      v10 = v25;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    v24[0] = 0;
    v24[1] = 0xE000000000000000;

    sub_2146D9EF8();

    strcpy(v24, "-SourceFormat(");
    HIBYTE(v24[1]) = -18;
    v11 = CGImageSourceGetType(a1);
    if (v11)
    {
      v12 = v11;
      v13 = sub_2146D95B8();
      v15 = v14;
    }

    else
    {
      v15 = 0xE700000000000000;
      v13 = 0x6E776F6E6B6E55;
    }

    MEMORY[0x2160545D0](v13, v15);

    MEMORY[0x2160545D0](41, 0xE100000000000000);
    v16 = v24[0];
    v17 = v24[1];
    v24[0] = v9;
    v24[1] = v10;

    MEMORY[0x2160545D0](v16, v17);

    v18 = v24[0];
    v19 = v24[1];
    sub_21404A6EC();
    swift_allocError();
    *v20 = v22;
    v20[1] = v7;
    v20[2] = v21;
    v20[3] = v8;
    v20[4] = v18;
    v20[5] = v19;

    swift_willThrow();

    return v23;
  }

  return result;
}

uint64_t sub_214498C18(void *a1)
{
  type metadata accessor for CGImageSource(0);
  v27 = v3;
  v28 = &off_28269F370;
  v26[0] = a1;
  v4 = a1;
  v5 = sub_2146411E0(v26);
  v6 = v1;
  if (v1)
  {
    v30 = v5;
    __swift_destroy_boxed_opaque_existential_1(v26);
    v7 = v1;
    sub_214689A34(v1, 0, 0, v26);
    v8 = v26[1];
    v9 = v27;
    v24 = v26[2];
    v25 = v26[0];
    if (v29)
    {
      v10 = v28;
    }

    else
    {
      v10 = 0;
    }

    if (v29)
    {
      v11 = v29;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    v26[0] = 0;
    v26[1] = 0xE000000000000000;

    sub_2146D9EF8();

    strcpy(v26, "-SourceFormat(");
    HIBYTE(v26[1]) = -18;
    v12 = CGImageSourceGetType(v4);
    if (v12)
    {
      v13 = v12;
      v14 = sub_2146D95B8();
      v16 = v15;
    }

    else
    {
      v16 = 0xE700000000000000;
      v14 = 0x6E776F6E6B6E55;
    }

    MEMORY[0x2160545D0](v14, v16);

    MEMORY[0x2160545D0](41, 0xE100000000000000);
    v20 = v26[0];
    v19 = v26[1];
    v26[0] = v10;
    v26[1] = v11;

    MEMORY[0x2160545D0](v20, v19);

    v21 = v26[0];
    v22 = v26[1];
    sub_21404A6EC();
    swift_allocError();
    *v23 = v25;
    v23[1] = v8;
    v23[2] = v24;
    v23[3] = v9;
    v23[4] = v21;
    v23[5] = v22;

    swift_willThrow();

    return v30;
  }

  else
  {
    v17 = v5;
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v17;
  }
}

uint64_t ImageEncoder.encodeThrowingSourceFormat(imageSource:)(CGImageSource *a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 32))();
  v7 = v3;
  if (v3)
  {
    v28 = v6;
    v25 = result;
    v8 = v3;
    sub_214689A34(v3, 0, 0, v26);
    v9 = v26[1];
    v10 = v26[3];
    v23 = v26[2];
    v24 = v26[0];
    if (v27)
    {
      v11 = v26[4];
    }

    else
    {
      v11 = 0;
    }

    if (v27)
    {
      v12 = v27;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v26[0] = 0;
    v26[1] = 0xE000000000000000;

    sub_2146D9EF8();

    strcpy(v26, "-SourceFormat(");
    HIBYTE(v26[1]) = -18;
    v13 = CGImageSourceGetType(a1);
    if (v13)
    {
      v14 = v13;
      v15 = sub_2146D95B8();
      v17 = v16;
    }

    else
    {
      v17 = 0xE700000000000000;
      v15 = 0x6E776F6E6B6E55;
    }

    MEMORY[0x2160545D0](v15, v17);

    MEMORY[0x2160545D0](41, 0xE100000000000000);
    v18 = v26[0];
    v19 = v26[1];
    v26[0] = v11;
    v26[1] = v12;

    MEMORY[0x2160545D0](v18, v19);

    v20 = v26[0];
    v21 = v26[1];
    sub_21404A6EC();
    swift_allocError();
    *v22 = v24;
    v22[1] = v9;
    v22[2] = v23;
    v22[3] = v10;
    v22[4] = v20;
    v22[5] = v21;

    swift_willThrow();

    return v25;
  }

  return result;
}

void sub_214499230(CGImageSource *a1)
{
  sub_214061118();
  v2 = swift_allocError();
  *v3 = 1281;
  *(v3 + 8) = 0;
  swift_willThrow();
  v4 = v2;
  sub_214689A34(v2, 0, 0, v21);
  v5 = v21[1];
  v22 = v21[0];
  v6 = v21[3];
  v20 = v21[2];
  v21[0] = 0;
  v8 = v21[4];
  v7 = v21[5];
  v9 = 0xE000000000000000;
  v21[1] = 0xE000000000000000;

  sub_2146D9EF8();

  strcpy(v21, "-SourceFormat(");
  HIBYTE(v21[1]) = -18;
  v10 = CGImageSourceGetType(a1);
  if (v10)
  {
    v11 = v10;
    v12 = sub_2146D95B8();
    v14 = v13;
  }

  else
  {
    v14 = 0xE700000000000000;
    v12 = 0x6E776F6E6B6E55;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x2160545D0](v12, v14);

  MEMORY[0x2160545D0](41, 0xE100000000000000);
  v15 = v21[0];
  v16 = v21[1];
  v21[0] = v8;
  v21[1] = v9;

  MEMORY[0x2160545D0](v15, v16);

  v17 = v21[0];
  v18 = v21[1];
  sub_21404A6EC();
  swift_allocError();
  *v19 = v22;
  v19[1] = v5;
  v19[2] = v20;
  v19[3] = v6;
  v19[4] = v17;
  v19[5] = v18;

  swift_willThrow();
}

void sub_21449943C(CGImageSource *a1, void (*a2)(void))
{
  a2();
  v3 = swift_allocError();
  *v4 = 3;
  swift_willThrow();
  v5 = v3;
  sub_214689A34(v3, 0, 0, v22);
  v6 = v22[1];
  v23 = v22[0];
  v7 = v22[3];
  v21 = v22[2];
  v22[0] = 0;
  v9 = v22[4];
  v8 = v22[5];
  v10 = 0xE000000000000000;
  v22[1] = 0xE000000000000000;

  sub_2146D9EF8();

  strcpy(v22, "-SourceFormat(");
  HIBYTE(v22[1]) = -18;
  v11 = CGImageSourceGetType(a1);
  if (v11)
  {
    v12 = v11;
    v13 = sub_2146D95B8();
    v15 = v14;
  }

  else
  {
    v15 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E55;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x2160545D0](v13, v15);

  MEMORY[0x2160545D0](41, 0xE100000000000000);
  v16 = v22[0];
  v17 = v22[1];
  v22[0] = v9;
  v22[1] = v10;

  MEMORY[0x2160545D0](v16, v17);

  v18 = v22[0];
  v19 = v22[1];
  sub_21404A6EC();
  swift_allocError();
  *v20 = v23;
  v20[1] = v6;
  v20[2] = v21;
  v20[3] = v7;
  v20[4] = v18;
  v20[5] = v19;

  swift_willThrow();
}

unint64_t sub_214499648()
{
  result = qword_27C914640;
  if (!qword_27C914640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914640);
  }

  return result;
}

uint64_t sub_21449969C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 0x6D754E656E6F6870;
  v4 = inited + 32;
  *(inited + 40) = 0xEB00000000726562;
  if (v1)
  {
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    v5 = inited;

    v6 = sub_2140457C0(v5);
    swift_setDeallocating();
    sub_21404C938(v4);
    return v6;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_21449979C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D58, &qword_214747238);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v113 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v102 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v102 - v12;
  v14 = type metadata accessor for CollaborationMetadata();
  v15 = v14[6];
  v16 = sub_2146D8B08();
  v17 = *(v16 - 8);
  v111 = *(v17 + 56);
  v112 = v15;
  v110 = v17 + 56;
  v111(v15 + a2, 1, 1, v16);
  v18 = (a2 + v14[10]);
  sub_21449AEE0(v124);
  v19 = v124[5];
  v18[4] = v124[4];
  v18[5] = v19;
  v20 = v124[7];
  v18[6] = v124[6];
  v18[7] = v20;
  v21 = v124[1];
  *v18 = v124[0];
  v18[1] = v21;
  v22 = v124[3];
  v18[2] = v124[2];
  v18[3] = v22;
  v104 = v18;
  v23 = a1;
  v24 = [v23 collaborationIdentifier];
  v25 = sub_2146D95B8();
  v27 = v26;

  *a2 = v25;
  a2[1] = v27;
  v108 = a2;
  v28 = [v23 title];

  if (v28)
  {
    v29 = sub_2146D95B8();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = v108;
  v108[2] = v29;
  v32[3] = v31;
  v33 = v32;
  v34 = [v23 creationDate];
  v35 = v113;
  if (v34)
  {
    v36 = v34;
    sub_2146D8AE8();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = 1;
  v111(v13, v37, 1, v16);
  sub_2140924F0(v13, v112 + v33);
  v39 = [v23 contentType];
  v40 = v23;
  if (v39)
  {
    v41 = v39;
    sub_2146D9188();

    v38 = 0;
  }

  v42 = sub_2146D91A8();
  v43 = *(v42 - 8);
  (*(v43 + 56))(v35, v38, 1, v42);
  sub_21449AEF8(v35, v9);
  if ((*(v43 + 48))(v9, 1, v42) == 1)
  {
    sub_213FB2DF4(v9, &qword_27C913D58, &qword_214747238);
    v44 = 0;
    v45 = 0;
  }

  else
  {
    v44 = sub_2146D9168();
    v45 = v46;
    (*(v43 + 8))(v9, v42);
  }

  v47 = v14[8];
  v48 = (v33 + v14[7]);
  *v48 = v44;
  v48[1] = v45;
  *(v33 + v47) = 0;
  v49 = v40;
  v50 = [v40 ckAppBundleIDs];
  if (v50)
  {
    v51 = v50;
    v52 = sub_2146D9918();
  }

  else
  {
    v52 = 0;
  }

  *(v33 + v14[9]) = v52;
  v53 = &off_27817C000;
  if ([v49 respondsToSelector_])
  {
    v54 = [v49 handleToIdentityMap];
    if (v54)
    {
      v55 = v54;
      v102 = v47;
      v103 = v49;
      sub_21404A8B8(0, &unk_27C9178A0, 0x277CDC6F8);
      v56 = sub_2146D9488();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914658, &unk_21474EF10);
      v57 = sub_2146DA038();
      v58 = v57;
      v59 = 0;
      v61 = v56 + 64;
      v60 = *(v56 + 64);
      v106 = v57;
      v107 = v56;
      v62 = 1 << *(v56 + 32);
      v63 = -1;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      v64 = v63 & v60;
      v65 = (v62 + 63) >> 6;
      v105 = v57 + 64;
      v66 = &off_27817C000;
      if ((v63 & v60) != 0)
      {
        while (1)
        {
          v67 = __clz(__rbit64(v64));
          v64 &= v64 - 1;
LABEL_26:
          v70 = v67 | (v59 << 6);
          v71 = *(v107 + 56);
          v72 = *(v107 + 48) + 16 * v70;
          v73 = *(v72 + 8);
          v111 = *v72;
          v74 = *(v71 + 8 * v70);
          v112 = v73;

          v75 = [v74 rootHash];
          v76 = sub_2146D8A58();
          v109 = v77;
          v110 = v76;

          v78 = [v74 v53[133]];
          v113 = MEMORY[0x277D84F90];
          if (v78)
          {
            v79 = [v74 publicKeys];
            v113 = sub_2146D9918();
          }

          if ([v74 v53[133]])
          {
            v80 = [v74 v66[149]];

            if (v80)
            {
              v81 = sub_2146D8A58();
              v83 = v82;
            }

            else
            {

              v81 = 0;
              v83 = 0xF000000000000000;
            }

            sub_213FDC6BC(0, 0xF000000000000000);
            v53 = &off_27817C000;
          }

          else
          {

            v81 = 0;
            v83 = 0xF000000000000000;
          }

          v58 = v106;
          *(v105 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
          v84 = (v58[6] + 16 * v70);
          v85 = v112;
          *v84 = v111;
          v84[1] = v85;
          v86 = (v58[7] + 40 * v70);
          v87 = v109;
          *v86 = v110;
          v86[1] = v87;
          v86[2] = v113;
          v86[3] = v81;
          v86[4] = v83;
          v88 = v58[2];
          v89 = __OFADD__(v88, 1);
          v90 = v88 + 1;
          if (v89)
          {
            break;
          }

          v58[2] = v90;
          v66 = &off_27817C000;
          if (!v64)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        v68 = v59;
        while (1)
        {
          v59 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            break;
          }

          if (v59 >= v65)
          {

            v33 = v108;
            v47 = v102;
            v49 = v103;
            goto LABEL_39;
          }

          v69 = *(v61 + 8 * v59);
          ++v68;
          if (v69)
          {
            v67 = __clz(__rbit64(v69));
            v64 = (v69 - 1) & v69;
            goto LABEL_26;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_47;
    }

    v58 = 0;
LABEL_39:
    *(v33 + v47) = v58;
  }

  if (![v49 v53[133]] || (v91 = objc_msgSend(v49, sel_containerSetupInfo)) == 0)
  {

    return;
  }

  v92 = [v49 containerSetupInfo];
  if (v92)
  {
    sub_21449AC64(v92, v114);

    v119 = v114[4];
    v120 = v114[5];
    v121 = v114[6];
    v122 = v114[7];
    v115 = v114[0];
    v116 = v114[1];
    v117 = v114[2];
    v118 = v114[3];
    nullsub_1(&v115);
    v93 = v104;
    v94 = v104[5];
    v123[4] = v104[4];
    v123[5] = v94;
    v95 = v104[7];
    v123[6] = v104[6];
    v123[7] = v95;
    v96 = v104[1];
    v123[0] = *v104;
    v123[1] = v96;
    v97 = v104[3];
    v123[2] = v104[2];
    v123[3] = v97;
    sub_213FB2DF4(v123, &qword_27C905020, ")\r");
    v98 = v120;
    v93[4] = v119;
    v93[5] = v98;
    v99 = v122;
    v93[6] = v121;
    v93[7] = v99;
    v100 = v116;
    *v93 = v115;
    v93[1] = v100;
    v101 = v118;
    v93[2] = v117;
    v93[3] = v101;
    return;
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_214499F88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917510, &unk_214757860);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v72 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D58, &qword_214747238);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v72 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v72 - v11;
  v13 = *v0;
  v14 = v0[1];
  v15 = sub_2146D9588();
  v16 = v0[3];
  v83 = v0[2];
  v84 = v15;
  v17 = type metadata accessor for CollaborationMetadata();
  sub_2144716D8(v0 + *(v17 + 24), v12);
  v18 = sub_2146D91A8();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v8, 1, 1, v18);
  v78 = v17;
  v79 = v0;
  v82 = *(v0 + *(v17 + 36));
  v20 = sub_2146D8808();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v85 = v4;
  v22(v4, 1, 1, v20);
  if (v16)
  {
    v83 = sub_2146D9588();
  }

  else
  {
    v83 = 0;
  }

  v23 = sub_2146D8B08();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v12, 1, v23) != 1)
  {
    v25 = sub_2146D8AD8();
    (*(v24 + 8))(v12, v23);
  }

  v26 = v25;
  if ((*(v19 + 48))(v8, 1, v18) == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_2146D9178();
    (*(v19 + 8))(v8, v18);
  }

  v29 = v84;
  v28 = v85;
  v30 = v83;
  if (v82)
  {
    v31 = sub_2146D98E8();
  }

  else
  {
    v31 = 0;
  }

  if ((*(v21 + 48))(v28, 1, v20) == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_2146D87E8();
    (*(v21 + 8))(v28, v20);
  }

  v33 = [objc_allocWithZone(MEMORY[0x277CDC6C0]) initWithCollaborationIdentifier:v29 title:v30 defaultOptions:0 creationDate:v26 contentType:v27 ckAppBundleIDs:v31 initiatorHandle:0 initiatorNameComponents:v32];

  v34 = &off_27817C000;
  if (![v33 respondsToSelector_])
  {
LABEL_35:
    if ([v33 respondsToSelector_])
    {
      v66 = (v79 + *(v78 + 40));
      v67 = v66[5];
      v98 = v66[4];
      v99 = v67;
      v68 = v66[7];
      v100 = v66[6];
      v101 = v68;
      v69 = v66[1];
      v94 = *v66;
      v95 = v69;
      v70 = v66[3];
      v96 = v66[2];
      v97 = v70;
      if (sub_21449A78C(&v94) == 1)
      {
        v71 = 0;
      }

      else
      {
        v90 = v98;
        v91 = v99;
        v92 = v100;
        v93 = v101;
        v86 = v94;
        v87 = v95;
        v88 = v96;
        v89 = v97;
        v71 = sub_21449A99C();
      }

      [v33 setContainerSetupInfo_];
    }

    return v33;
  }

  v35 = *(v79 + *(v78 + 32));
  if (!v35)
  {
    v65 = 0;
LABEL_34:
    [v33 v34[132]];

    goto LABEL_35;
  }

  v73 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914648, &qword_21474EEA0);
  result = sub_2146DA038();
  v37 = 0;
  v38 = v35 + 64;
  v39 = 1 << *(v35 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v35 + 64);
  v42 = (v39 + 63) >> 6;
  v76 = result + 64;
  v77 = result;
  v74 = v42;
  v75 = v35;
  if (v41)
  {
    while (1)
    {
      v43 = __clz(__rbit64(v41));
      v80 = (v41 - 1) & v41;
LABEL_26:
      v46 = v43 | (v37 << 6);
      v47 = *(v35 + 56);
      v48 = (*(v35 + 48) + 16 * v46);
      v49 = v48[1];
      v84 = *v48;
      v85 = v49;
      v50 = (v47 + 40 * v46);
      v52 = *v50;
      v51 = v50[1];
      v54 = v50[2];
      v53 = v50[3];
      v55 = v50[4];

      sub_21402D9F8(v52, v51);

      sub_213FDCA18(v53, v55);
      sub_21402D9F8(v52, v51);
      v56 = sub_2146D8A38();
      v83 = v54;
      v57 = sub_2146D98E8();
      v82 = v53;
      v58 = v55 >> 60 == 15 ? 0 : sub_2146D8A38();
      v81 = [objc_allocWithZone(MEMORY[0x277CDC6F8]) initWithRootHash:v56 publicKeys:v57 trackingPreventionSalt:v58];

      sub_213FB54FC(v52, v51);
      sub_213FB54FC(v52, v51);

      result = sub_213FDC6BC(v82, v55);
      v59 = v77;
      *(v76 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v60 = (v59[6] + 16 * v46);
      v61 = v85;
      *v60 = v84;
      v60[1] = v61;
      *(v59[7] + 8 * v46) = v81;
      v62 = v59[2];
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
        break;
      }

      v59[2] = v64;
      v42 = v74;
      v35 = v75;
      v41 = v80;
      if (!v80)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    v44 = v37;
    while (1)
    {
      v37 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v37 >= v42)
      {
        sub_21404A8B8(0, &unk_27C9178A0, 0x277CDC6F8);
        v65 = sub_2146D9468();

        v33 = v73;
        v34 = &off_27817C000;
        goto LABEL_34;
      }

      v45 = *(v38 + 8 * v37);
      ++v44;
      if (v45)
      {
        v43 = __clz(__rbit64(v45));
        v80 = (v45 - 1) & v45;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21449A6DC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = sub_2146D8A38();
  v7 = sub_2146D98E8();
  if (v5 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_2146D8A38();
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CDC6F8]) initWithRootHash:v6 publicKeys:v7 trackingPreventionSalt:v8];

  return v9;
}

uint64_t sub_21449A78C(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_21449A7A4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v4 = [v3 rootHash];
  v5 = sub_2146D8A58();
  v7 = v6;

  if ([v3 respondsToSelector_])
  {
    v8 = [v3 publicKeys];
    v9 = sub_2146D9918();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if ([v3 respondsToSelector_])
  {
    v10 = [v3 trackingPreventionSalt];

    if (v10)
    {
      v11 = sub_2146D8A58();
      v13 = v12;
    }

    else
    {

      v11 = 0;
      v13 = 0xF000000000000000;
    }

    sub_213FDC6BC(0, 0xF000000000000000);
  }

  else
  {

    v11 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = v13;
}

id sub_21449A8EC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = sub_2146D8A38();
  v7 = sub_2146D98E8();
  if (v5 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_2146D8A38();
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CDC6F8]) initWithRootHash:v6 publicKeys:v7 trackingPreventionSalt:v8];

  return v9;
}

uint64_t sub_21449A99C()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 5);
  v22 = *(v0 + 4);
  v23 = *(v0 + 6);
  v6 = *(v0 + 7);
  v24 = *(v0 + 8);
  v25 = *(v0 + 10);
  v26 = *(v0 + 9);
  v27 = *(v0 + 11);
  v28 = v0[96];
  v7 = *(v0 + 13);
  v8 = *(v0 + 14);
  v9 = *(v0 + 15);
  v10 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v11 = sub_2146D9588();
  v12 = [v10 initWithContainerIdentifier:v11 environment:v9];

  v13 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
  [v13 setUseZoneWidePCS_];
  [v13 setMmcsEncryptionSupport_];
  if (v4)
  {
    v14 = sub_2146D9588();
  }

  else
  {
    v14 = 0;
  }

  [v13 setEncryptionServiceName_];

  if (v5)
  {
    v15 = sub_2146D9588();
  }

  else
  {
    v15 = 0;
  }

  [v13 setApplicationBundleIdentifierOverrideForContainerAccess_];

  if (v6)
  {
    v16 = sub_2146D9588();
  }

  else
  {
    v16 = 0;
  }

  [v13 setApplicationBundleIdentifierOverrideForNetworkAttribution_];

  if (v26)
  {
    v17 = sub_2146D9588();
  }

  else
  {
    v17 = 0;
  }

  [v13 setApplicationBundleIdentifierOverrideForPushTopicGeneration_];

  if (v27)
  {
    v18 = sub_2146D9588();
  }

  else
  {
    v18 = 0;
  }

  [v13 setApplicationBundleIdentifierOverrideForTCC_];

  [v13 setPrefersHiddenAllowedSharingOptionsUI_];
  sub_21404A8B8(0, &qword_27C914650, 0x277CBC238);
  if ([swift_getObjCClassFromMetadata() instancesRespondToSelector_])
  {
    v19 = [objc_allocWithZone(MEMORY[0x277CBC238]) initWithContainerID:v12 options:v13];
    if (v19)
    {
      v20 = v19;

      return v20;
    }

    __break(1u);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void sub_21449AC64(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 containerID];
  v5 = [v4 containerIdentifier];

  v6 = sub_2146D95B8();
  v41 = v7;
  v42 = v6;

  v8 = [a1 containerID];
  v40 = [v8 environment];

  v9 = [a1 containerOptions];
  v39 = [v9 useZoneWidePCS];
  v38 = [v9 mmcsEncryptionSupport];
  v10 = [v9 encryptionServiceName];
  if (v10)
  {
    v11 = v10;
    v12 = sub_2146D95B8();
    v36 = v13;
    v37 = v12;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v14 = [v9 applicationBundleIdentifierOverrideForContainerAccess];
  if (v14)
  {
    v15 = v14;
    v16 = sub_2146D95B8();
    v34 = v17;
    v35 = v16;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v18 = [v9 applicationBundleIdentifierOverrideForNetworkAttribution];
  if (v18)
  {
    v19 = v18;
    v20 = sub_2146D95B8();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = [v9 applicationBundleIdentifierOverrideForPushTopicGeneration];
  if (v23)
  {
    v24 = v23;
    v25 = sub_2146D95B8();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = [v9 applicationBundleIdentifierOverrideForTCC];
  if (v28)
  {
    v29 = v28;
    v30 = sub_2146D95B8();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = [v9 prefersHiddenAllowedSharingOptionsUI];

  *a2 = v39;
  *(a2 + 8) = v38;
  *(a2 + 16) = v37;
  *(a2 + 24) = v36;
  *(a2 + 32) = v35;
  *(a2 + 40) = v34;
  *(a2 + 48) = v20;
  *(a2 + 56) = v22;
  *(a2 + 64) = v25;
  *(a2 + 72) = v27;
  *(a2 + 80) = v30;
  *(a2 + 88) = v32;
  *(a2 + 96) = v33;
  *(a2 + 104) = v42;
  *(a2 + 112) = v41;
  *(a2 + 120) = v40;
}

double sub_21449AEE0(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_21449AEF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D58, &qword_214747238);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21449AF68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8958();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21449AFD0(uint64_t a1)
{
  v3 = sub_2146D8958();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_21449B058()
{
  v1 = *(v0 + *(type metadata accessor for ServerCharacteristic() + 20));
}

uint64_t type metadata accessor for ServerCharacteristic()
{
  result = qword_27C914660;
  if (!qword_27C914660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21449B0D8(uint64_t a1)
{
  v3 = *(type metadata accessor for ServerCharacteristic() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21449B184(char a1)
{
  result = type metadata accessor for ServerCharacteristic();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_21449B1FC(uint64_t a1)
{
  *(a1 + 8) = sub_21449B264(&qword_27C9091E0);
  result = sub_21449B264(&qword_27C909200);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21449B264(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ServerCharacteristic();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21449B2D0()
{
  sub_2146D8958();
  if (v0 <= 0x3F)
  {
    sub_21449B35C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21449B35C()
{
  if (!qword_27C914670)
  {
    v0 = sub_2146D9978();
    if (!v1)
    {
      atomic_store(v0, &qword_27C914670);
    }
  }
}

uint64_t sub_21449B45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21449B4AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 305))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 41);
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

double sub_21449B4F8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 296) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 304) = 0;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 305) = 1;
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
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = -a2 << 8;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 272) = 0u;
      *(a1 + 288) = 0;
      return result;
    }

    *(a1 + 305) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21449B5D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 290))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 41);
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

double sub_21449B620(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 280) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 288) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 290) = 1;
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
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = -a2 << 8;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 272) = 0u;
      *(a1 + 288) = 0;
      return result;
    }

    *(a1 + 290) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21449B6E0(uint64_t result, __int16 a2)
{
  v2 = *(result + 80);
  v3 = *(result + 120);
  v4 = *(result + 160);
  v5 = *(result + 200);
  v6 = *(result + 232) & 0xFF01FFLL;
  v7 = *(result + 248) & 1;
  v8 = *(result + 288) & 0x1FF | (a2 << 14);
  *(result + 40) = *(result + 40);
  *(result + 80) = v2;
  *(result + 120) = v3;
  *(result + 160) = v4;
  *(result + 200) = v5;
  *(result + 232) = v6;
  *(result + 248) = v7;
  *(result + 288) = v8;
  return result;
}

uint64_t sub_21449B748(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 290))
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

uint64_t sub_21449B790(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 290) = 1;
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

    *(result + 290) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21449B8E4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_282653B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_214059810;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_282653BB8);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214059818;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_214032610;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21449BACC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C68, &unk_2147319E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21474EF80;
  *(v4 + 16) = sub_21449BD64;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0688(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040F8, &qword_2146EAA48);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21449BD7C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214044968(inited, a1);
}

unint64_t sub_21449BC44@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t sub_21449BD7C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 1;
  }

  else
  {
    return sub_214047B58(*a1, 2, *(v1 + 16));
  }
}

uint64_t ImageProvider.withImage<A>(enforcedEncoding:_:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[9];
  v14[8] = a1[8];
  v14[9] = v6;
  v7 = a1[11];
  v14[10] = a1[10];
  v14[11] = v7;
  v8 = a1[5];
  v14[4] = a1[4];
  v14[5] = v8;
  v9 = a1[7];
  v14[6] = a1[6];
  v14[7] = v9;
  v10 = a1[1];
  v14[0] = *a1;
  v14[1] = v10;
  v11 = a1[3];
  v14[2] = a1[2];
  v14[3] = v11;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a2;
  v13[6] = a3;
  return (*(a6 + 8))(v14, sub_21449C108, v13, a5, a4);
}

uint64_t ImageProvider.withImageSource<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2140615A8(v12);
  v11[8] = v12[8];
  v11[9] = v12[9];
  v11[10] = v12[10];
  v11[11] = v12[11];
  v11[4] = v12[4];
  v11[5] = v12[5];
  v11[6] = v12[6];
  v11[7] = v12[7];
  v11[0] = v12[0];
  v11[1] = v12[1];
  v11[2] = v12[2];
  v11[3] = v12[3];
  return (*(a5 + 8))(v11, a1, a2, a4, a3, a5);
}

uint64_t ImageProvider.withImage<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2140615A8(v12);
  v11[8] = v12[8];
  v11[9] = v12[9];
  v11[10] = v12[10];
  v11[11] = v12[11];
  v11[4] = v12[4];
  v11[5] = v12[5];
  v11[6] = v12[6];
  v11[7] = v12[7];
  v11[0] = v12[0];
  v11[1] = v12[1];
  v11[2] = v12[2];
  v11[3] = v12[3];
  return (*(a5 + 16))(v11, a1, a2, a4, a3, a5);
}

void sub_21449C058(CGImageSource *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, 0, 0);
  if (ImageAtIndex)
  {
    v8 = ImageAtIndex;
    a2();
  }

  else
  {
    (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  }
}

void sub_21449C108(CGImageSource *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 48);
  sub_21449C058(a1, *(v2 + 40), *(v2 + 24), a2);
}

void sub_21449C12C(uint64_t a1, void (*a2)(void))
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v4 = VTCreateCGImageFromCVPixelBuffer(v2, 0, v13);
  if (v13[0])
  {
    v5 = v13[0];
    a2();
  }

  else
  {
    v6 = v4;
    if (qword_280B34F40[0] != -1)
    {
      swift_once();
    }

    v7 = sub_2146D9208();
    __swift_project_value_buffer(v7, qword_280B34D98);
    v8 = sub_2146D91E8();
    v9 = sub_2146D9BA8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v6;
      _os_log_impl(&dword_213FAF000, v8, v9, "Unable to create image from pixel buffer with error: %d", v10, 8u);
      MEMORY[0x216056AC0](v10, -1, -1);
    }

    sub_214061118();
    swift_allocError();
    *v11 = 1536;
    *(v11 + 8) = 0;
    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
}

unint64_t sub_21449C358(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912220, &qword_214734E10);
  v2 = swift_allocObject();
  v3 = *MEMORY[0x277CD3648];
  *(v2 + 32) = *MEMORY[0x277CD3648];
  *(v2 + 16) = xmmword_2146E6910;
  v4 = MEMORY[0x277D839B0];
  v5 = MEMORY[0x277CD35B8];
  *(v2 + 40) = 1;
  v6 = *v5;
  *(v2 + 64) = v4;
  *(v2 + 72) = v6;
  *(v2 + 104) = v4;
  *(v2 + 80) = 1;
  v7 = v3;
  v8 = v6;
  v9 = sub_214045EE0(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A0, &unk_214771CE0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10 = a1[9];
  v35 = a1[8];
  v36 = v10;
  v11 = a1[11];
  v37 = a1[10];
  v38 = v11;
  v12 = a1[5];
  v31 = a1[4];
  v32 = v12;
  v13 = a1[7];
  v33 = a1[6];
  v34 = v13;
  v14 = a1[1];
  v27 = *a1;
  v28 = v14;
  v15 = a1[3];
  v29 = a1[2];
  v30 = v15;
  if (sub_21449D3A8(&v27) != 1)
  {
    v39[8] = v35;
    v39[9] = v36;
    v39[10] = v37;
    v39[11] = v38;
    v39[4] = v31;
    v39[5] = v32;
    v39[6] = v33;
    v39[7] = v34;
    v39[0] = v27;
    v39[1] = v28;
    v39[2] = v29;
    v39[3] = v30;
    v16 = sub_21405FB08(v39);
    switch(v16)
    {
      case 4:
        v17 = *MEMORY[0x277CD3668];
        goto LABEL_8;
      case 3:
        v17 = *MEMORY[0x277CD3668];
        goto LABEL_8;
      case 0:
        sub_214061EDC(v39);
        v17 = *MEMORY[0x277CD3668];
LABEL_8:
        v18 = sub_2146D9588();
        type metadata accessor for CFString(0);
        v26 = v19;
        *&v25 = v18;
        sub_213FDC730(&v25, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_2140529F8(v24, v17, isUniquelyReferenced_nonNull_native);
        v21 = *MEMORY[0x277CD35A8];
        v26 = v4;
        LOBYTE(v25) = 1;
        sub_213FDC730(&v25, v24);
        v22 = swift_isUniquelyReferenced_nonNull_native();
        sub_2140529F8(v24, v21, v22);
        break;
    }
  }

  return v9;
}

void Data.withImageSource<A>(enforcedEncoding:_:)(__int128 *a1@<X0>, void (*a2)(CGImageSourceRef)@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v7 = a1[9];
  v16[8] = a1[8];
  v16[9] = v7;
  v8 = a1[11];
  v16[10] = a1[10];
  v16[11] = v8;
  v9 = a1[5];
  v16[4] = a1[4];
  v16[5] = v9;
  v10 = a1[7];
  v16[6] = a1[6];
  v16[7] = v10;
  v11 = a1[1];
  v16[0] = *a1;
  v16[1] = v11;
  v12 = a1[3];
  v16[2] = a1[2];
  v16[3] = v12;
  sub_21449C358(v16);
  v13 = sub_2146D8A38();
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v14 = sub_2146D9468();

  v15 = CGImageSourceCreateWithData(v13, v14);

  if (v15)
  {
    a2(v15);
  }

  else
  {
    (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  }
}

void sub_21449C820(__int128 *a1@<X0>, void (*a2)(CGImageSourceRef)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  Data.withImageSource<A>(enforcedEncoding:_:)(a1, a2, a3, a4);
}

uint64_t sub_21449C840(__int128 *a1)
{
  v14 = a1[8];
  v15 = a1[9];
  v16 = a1[10];
  v17 = a1[11];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  sub_2146D9D38();
  return sub_2145B93C0(sub_21449D304);
}

CGImageSourceRef sub_21449C904(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v42 - v10;
  v11 = sub_2146D8958();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v46 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  sub_21449C358(a4);
  v53 = 47;
  v54 = 0xE100000000000000;
  v55 = a1;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  v47 = sub_2140610B4();
  v48 = v18;
  v19 = sub_2146D9558();
  v21 = v20;

  MEMORY[0x2160545D0](v19, v21);

  sub_2146D8888();

  v22 = sub_2146D8898();
  v51 = v12;
  v25 = *(v12 + 8);
  v24 = v12 + 8;
  v23 = v25;
  v49 = v11;
  v25(v17, v11);
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v26 = sub_2146D9468();

  v27 = CGImageSourceCreateWithURL(v22, v26);

  if (!v27)
  {
    v42 = v24;
    v43 = v23;
    v28 = v49;
    v29 = v50;
    v45 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v44 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2146EA710;
    v53 = 47;
    v54 = 0xE100000000000000;
    v55 = a1;

    v31 = sub_2146D9558();
    v33 = v32;

    MEMORY[0x2160545D0](v31, v33);

    v34 = v29;
    sub_2146D8888();

    v35 = v51;
    (*(v51 + 56))(v29, 0, 1, v28);
    v36 = v52;
    sub_21407E1D8(v29, v52);
    if ((*(v35 + 48))(v36, 1, v28) == 1)
    {
      sub_21407E248(v36);
      v37 = 0xE300000000000000;
      v38 = 7104878;
    }

    else
    {
      v39 = v46;
      (*(v35 + 32))(v46, v36, v28);
      (*(v35 + 16))(v17, v39, v28);
      v38 = sub_2146D9618();
      v37 = v40;
      v43(v39, v28);
    }

    sub_21407E248(v34);
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = sub_213FB2DA0();
    *(v30 + 32) = v38;
    *(v30 + 40) = v37;
    sub_2146D91D8();

    return 0;
  }

  return v27;
}

void sub_21449CDC4(uint64_t a1@<X0>, __int128 *a2@<X3>, void (*a3)(CGImageSourceRef)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v52 = a6;
  v49 = a5;
  v50 = a4;
  v51 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v47 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v42 - v12;
  v13 = sub_2146D8958();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v44 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - v18;
  sub_21449C358(a2);
  v53 = 47;
  v54 = 0xE100000000000000;
  v55 = a1;

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v45 = v20;
  v21 = sub_2146D9558();
  v23 = v22;

  MEMORY[0x2160545D0](v21, v23);

  sub_2146D8888();

  v24 = sub_2146D8898();
  v46 = v14;
  v25 = *(v14 + 8);
  v25(v19, v13);
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v26 = sub_2146D9468();

  v27 = CGImageSourceCreateWithURL(v24, v26);

  if (v27)
  {
    v51(v27);
  }

  else
  {
    v42 = v19;
    v43 = v25;
    v51 = v13;
    sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v50 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2146EA710;
    v53 = 47;
    v54 = 0xE100000000000000;
    v55 = a1;

    v29 = sub_2146D9558();
    v31 = v30;

    MEMORY[0x2160545D0](v29, v31);

    v32 = v48;
    sub_2146D8888();

    v33 = v46;
    v34 = v51;
    (*(v46 + 56))(v32, 0, 1, v51);
    v35 = v47;
    sub_21407E1D8(v32, v47);
    if ((*(v33 + 48))(v35, 1, v34) == 1)
    {
      sub_21407E248(v35);
      v36 = 0xE300000000000000;
      v37 = 7104878;
    }

    else
    {
      v38 = v44;
      (*(v33 + 32))(v44, v35, v34);
      (*(v33 + 16))(v42, v38, v34);
      v37 = sub_2146D9618();
      v36 = v39;
      v43(v38, v34);
    }

    v40 = v49;
    v41 = v52;
    sub_21407E248(v32);
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 64) = sub_213FB2DA0();
    *(v28 + 32) = v37;
    *(v28 + 40) = v36;
    sub_2146D91D8();

    (*(*(v40 - 8) + 56))(v41, 1, 1, v40);
  }
}

void sub_21449D304(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_21449CDC4(*(v1 + 24), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 16), a1);
}

uint64_t sub_21449D3A8(uint64_t a1)
{
  if ((*(a1 + 24) >> 1) > 0x80000000)
  {
    return -(*(a1 + 24) >> 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_21449D400()
{
  if (*v0)
  {
    result = 0x656C616373;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_21449D43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000021478C740 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
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

uint64_t sub_21449D520(uint64_t a1)
{
  v2 = sub_21449D72C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21449D55C(uint64_t a1)
{
  v2 = sub_21449D72C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21449D598(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914678, &qword_21474FB00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21449D72C();
  sub_2146DAA28();
  v13[15] = 0;
  sub_2146DA368();
  if (!v2)
  {
    v13[14] = 1;
    sub_2146DA348();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_21449D72C()
{
  result = qword_27C914680;
  if (!qword_27C914680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914680);
  }

  return result;
}

uint64_t sub_21449D780@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914688, &qword_21474FB08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21449D72C();
  sub_2146DAA08();
  if (!v2)
  {
    v15[15] = 0;
    v11 = sub_2146DA1A8();
    v15[14] = 1;
    sub_2146DA188();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21449D960@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_21449D9F8(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void (*sub_21449DA78(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21449DB90(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

void (*sub_21449DBE4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

uint64_t sub_21449DC70(uint64_t a1)
{
  v2 = sub_21449DE58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21449DCAC(uint64_t a1)
{
  v2 = sub_21449DE58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21449DCE8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914690, &qword_21474FB10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21449DE58();
  sub_2146DAA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_21449DE58()
{
  result = qword_27C914698;
  if (!qword_27C914698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914698);
  }

  return result;
}

uint64_t sub_21449DEAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9146A0, &qword_21474FB18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  LOWORD(v28[0]) = 0;
  sub_2140615D0(v28);
  v25 = v28[9];
  v26 = v28[10];
  v27 = v28[11];
  v21 = v28[5];
  v22 = v28[6];
  v23 = v28[7];
  v24 = v28[8];
  v17 = v28[1];
  v18 = v28[2];
  v19 = v28[3];
  v20 = v28[4];
  v16 = v28[0];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21449DE58();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    sub_2140A4DD4(&qword_280B30CB8);
    sub_2146DA1C8();
    (*(v5 + 8))(v8, v4);
    sub_2140A4E24(&v13, v14);
    sub_21449E10C(v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21449E0DC(v14);
}

uint64_t sub_21449E15C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914690, &qword_21474FB10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21449DE58();
  sub_2146DAA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

__n128 sub_21449E2CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_21449E3C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

unint64_t sub_21449E3D4()
{
  result = qword_27C9146A8;
  if (!qword_27C9146A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9146A8);
  }

  return result;
}

unint64_t sub_21449E42C()
{
  result = qword_27C9146B0;
  if (!qword_27C9146B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9146B0);
  }

  return result;
}

unint64_t sub_21449E480(uint64_t a1)
{
  result = sub_21449E4A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21449E4A8()
{
  result = qword_27C9146B8;
  if (!qword_27C9146B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9146B8);
  }

  return result;
}

unint64_t sub_21449E4FC(uint64_t a1)
{
  *(a1 + 8) = sub_21449E52C();
  result = sub_21449E580();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21449E52C()
{
  result = qword_27C9146C0;
  if (!qword_27C9146C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9146C0);
  }

  return result;
}

unint64_t sub_21449E580()
{
  result = qword_27C9146C8;
  if (!qword_27C9146C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9146C8);
  }

  return result;
}

unint64_t sub_21449E618()
{
  result = qword_27C9146D0;
  if (!qword_27C9146D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9146D0);
  }

  return result;
}

unint64_t sub_21449E670()
{
  result = qword_27C9146D8;
  if (!qword_27C9146D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9146D8);
  }

  return result;
}

unint64_t sub_21449E6C8()
{
  result = qword_27C9146E0;
  if (!qword_27C9146E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9146E0);
  }

  return result;
}

unint64_t sub_21449E720()
{
  result = qword_27C9146E8;
  if (!qword_27C9146E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9146E8);
  }

  return result;
}

unint64_t sub_21449E778()
{
  result = qword_27C9146F0;
  if (!qword_27C9146F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9146F0);
  }

  return result;
}

unint64_t sub_21449E7D0()
{
  result = qword_27C9146F8;
  if (!qword_27C9146F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9146F8);
  }

  return result;
}

unint64_t sub_21449E858@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 500;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21449E9A4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21449EAF0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_282652BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_2140598E4;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214032610;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21449EC44@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for SwiftRegexValidator();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v28 = xmmword_2146E9BF0;
  v31 = inited;
  *(inited + 16) = xmmword_2146E9BF0;
  v29 = v5;
  v30 = swift_initStackObject();
  *(v30 + 16) = v28;
  if (qword_27C903218 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v8 = __swift_project_value_buffer(v7, qword_27CA19E80);
  v9 = *(*(v7 - 8) + 16);
  v9(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v10 = swift_allocObject();
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  sub_2144A041C(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *(v10 + 16) = sub_2144A066C;
  *(v10 + 24) = v12;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_27CA19F60);
  v9(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v7);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  sub_2144A041C(v4, v15 + v11);
  *(v14 + 16) = sub_2144A066C;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146EAEB0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_21439DF60;
  *(v17 + 24) = v10;
  *(v16 + 32) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_21439DF60;
  *(v18 + 24) = v14;
  *(v16 + 40) = v18;
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v19 + 16) = sub_21439DF94;
  *(v19 + 24) = v20;
  v21 = v30;
  *(v30 + 32) = v19;
  v22 = sub_2142E0070(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v23 + 16) = sub_214032610;
  *(v23 + 24) = v24;
  v25 = v31;
  v26 = v32;
  *(v31 + 32) = v23;
  return sub_214042A28(v25, v26);
}

unint64_t sub_21449F034@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 200;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21449F180@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_282652C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_2140598E4;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214032610;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21449F2D4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_282652C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_2140598E4;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214032610;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

void *MBDBrandInfo.init(payloadData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v160 = a2;
  v152 = a1;
  v153 = a3;
  v3 = type metadata accessor for SwiftRegexValidator();
  v157 = *(v3 - 8);
  v4 = *(v157 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v162 = v5;
  v171 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v7 = swift_allocObject();
  v163 = xmmword_2146E9BF0;
  *(v7 + 16) = xmmword_2146E9BF0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  LOBYTE(v169[0]) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 100;
  *(v10 + 24) = v169[0];
  *(v9 + 16) = sub_21406418C;
  *(v9 + 24) = v10;
  *(v7 + 32) = v9;
  sub_214042B80(v7, &v170[2]);
  v11 = swift_allocObject();
  *(v11 + 16) = v163;
  v12 = swift_allocObject();
  *(v12 + 16) = v163;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21439DF24;
  *(v13 + 24) = 0;
  *(v12 + 32) = v13;
  v14 = sub_2142E0070(v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v16 + 16) = sub_21403254C;
  *(v16 + 24) = v17;
  *(v11 + 32) = v16;
  sub_214042A28(v11, &v170[8]);
  v18 = swift_allocObject();
  *(v18 + 16) = v163;
  v19 = swift_allocObject();
  *(v19 + 16) = v163;
  v20 = swift_allocObject();
  LOBYTE(v169[0]) = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = 500;
  *(v21 + 24) = v169[0];
  *(v20 + 16) = sub_21438F518;
  *(v20 + 24) = v21;
  *(v19 + 32) = v20;
  v22 = sub_2142E0070(v19);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v23 + 16) = sub_214032610;
  *(v23 + 24) = v24;
  *(v18 + 32) = v23;
  sub_214042A28(v18, &v170[18]);
  v25 = swift_allocObject();
  *(v25 + 16) = v163;
  v26 = swift_allocObject();
  *(v26 + 16) = v163;
  v27 = swift_allocObject();
  LOBYTE(v169[0]) = 1;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = v169[0];
  *(v27 + 16) = sub_21438F518;
  *(v27 + 24) = v28;
  *(v26 + 32) = v27;
  v29 = sub_2142E0070(v26);
  v30 = swift_allocObject();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v30 + 16) = sub_214032610;
  *(v30 + 24) = v31;
  *(v25 + 32) = v30;
  sub_214042A28(v25, &v170[23]);
  v32 = swift_allocObject();
  *(v32 + 16) = v163;
  v33 = swift_allocObject();
  *(v33 + 16) = v163;
  v34 = sub_214069764(&unk_2826592A0);
  v35 = swift_allocObject();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v35 + 16) = sub_214059810;
  *(v35 + 24) = v36;
  *(v33 + 32) = v35;
  v37 = sub_2142E0070(v33);
  v159 = v15;
  v38 = swift_allocObject();
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  *(v38 + 16) = sub_214032610;
  *(v38 + 24) = v39;
  *(v32 + 32) = v38;
  sub_214042A28(v32, &v170[28]);
  v155 = swift_allocObject();
  *(v155 + 16) = v163;
  v158 = v6;
  v154 = swift_allocObject();
  *(v154 + 16) = v163;
  if (qword_27C903218 != -1)
  {
    swift_once();
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v41 = __swift_project_value_buffer(v40, qword_27CA19E80);
  v42 = *(*(v40 - 8) + 16);
  v43 = v171;
  v42(v171, v41, v40);
  v44 = swift_allocObject();
  v156 = v8;
  v45 = (*(v157 + 80) + 16) & ~*(v157 + 80);
  v46 = swift_allocObject();
  sub_2144A041C(v43, v46 + v45);
  *(v44 + 16) = sub_214302808;
  *(v44 + 24) = v46;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v47 = __swift_project_value_buffer(v40, qword_27CA19F60);
  v48 = v171;
  v42(v171, v47, v40);
  v49 = swift_allocObject();
  v50 = swift_allocObject();
  sub_2144A041C(v48, v50 + v45);
  *(v49 + 16) = sub_2144A066C;
  *(v49 + 24) = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_2146EAEB0;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_21439DF28;
  *(v52 + 24) = v44;
  *(v51 + 32) = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_21439DF60;
  *(v53 + 24) = v49;
  *(v51 + 40) = v53;
  v54 = swift_allocObject();
  v55 = swift_allocObject();
  *(v55 + 16) = v51;
  *(v54 + 16) = sub_21439DF54;
  *(v54 + 24) = v55;
  v56 = v154;
  *(v154 + 32) = v54;
  v57 = sub_2142E0070(v56);
  v58 = swift_allocObject();
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  *(v58 + 16) = sub_214032610;
  *(v58 + 24) = v59;
  v60 = v155;
  *(v155 + 32) = v58;
  sub_214042A28(v60, &v170[33]);
  v61 = swift_allocObject();
  *(v61 + 16) = v163;
  v62 = swift_allocObject();
  *(v62 + 16) = v163;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_21439DF24;
  *(v63 + 24) = 0;
  *(v62 + 32) = v63;
  v64 = sub_2142E0070(v62);
  v65 = swift_allocObject();
  v66 = swift_allocObject();
  *(v66 + 16) = v64;
  *(v65 + 16) = sub_214032610;
  *(v65 + 24) = v66;
  *(v61 + 32) = v65;
  sub_214042A28(v61, &v170[38]);
  v67 = swift_allocObject();
  *(v67 + 16) = v163;
  v68 = swift_allocObject();
  *(v68 + 16) = v163;
  v69 = swift_allocObject();
  LOBYTE(v169[0]) = 0;
  v70 = swift_allocObject();
  *(v70 + 16) = 200;
  *(v70 + 24) = v169[0];
  *(v69 + 16) = sub_21438F518;
  *(v69 + 24) = v70;
  *(v68 + 32) = v69;
  v71 = sub_2142E0070(v68);
  v72 = swift_allocObject();
  v73 = swift_allocObject();
  *(v73 + 16) = v71;
  *(v72 + 16) = sub_214032610;
  *(v72 + 24) = v73;
  *(v67 + 32) = v72;
  sub_214042A28(v67, &v170[43]);
  v74 = swift_allocObject();
  *(v74 + 16) = v163;
  v75 = swift_allocObject();
  *(v75 + 16) = v163;
  v76 = sub_214069764(&unk_2826592E0);
  v77 = swift_allocObject();
  v78 = swift_allocObject();
  *(v78 + 16) = v76;
  *(v77 + 16) = sub_2140598E4;
  *(v77 + 24) = v78;
  *(v75 + 32) = v77;
  v79 = sub_2142E0070(v75);
  v80 = swift_allocObject();
  v81 = swift_allocObject();
  *(v81 + 16) = v79;
  *(v80 + 16) = sub_214032610;
  *(v80 + 24) = v81;
  *(v74 + 32) = v80;
  sub_214042A28(v74, &v170[48]);
  v82 = swift_allocObject();
  *(v82 + 16) = v163;
  v83 = swift_allocObject();
  *(v83 + 16) = v163;
  v84 = sub_214069764(&unk_282659320);
  v85 = swift_allocObject();
  v86 = swift_allocObject();
  *(v86 + 16) = v84;
  *(v85 + 16) = sub_2140598E4;
  *(v85 + 24) = v86;
  *(v83 + 32) = v85;
  v87 = sub_2142E0070(v83);
  v88 = swift_allocObject();
  v89 = swift_allocObject();
  *(v89 + 16) = v87;
  *(v88 + 16) = sub_214032610;
  *(v88 + 24) = v89;
  *(v82 + 32) = v88;
  sub_214042A28(v82, &v170[55]);
  v90 = v160;
  if (v160 >> 60 == 15)
  {

    v91 = v170[10];
    v92 = v170[11];

    sub_213FDC6D0(v91, v92);
    v93 = v170[20];
    v94 = v170[21];

    sub_213FDC6D0(v93, v94);
    v95 = v170[25];
    v96 = v170[26];

    sub_213FDC6D0(v95, v96);
    v97 = v170[30];
    v98 = v170[31];

    sub_213FDC6D0(v97, v98);
    v99 = v170[35];
    v100 = v170[36];

    sub_213FDC6D0(v99, v100);
    v101 = v170[40];
    v102 = v170[41];

    sub_213FDC6D0(v101, v102);
    v103 = v170[45];
    v104 = v170[46];

    sub_213FDC6D0(v103, v104);
    v105 = v170[50];
    v106 = v170[51];

    sub_213FDC6D0(v105, v106);
    v107 = v170[57];
    v108 = v170[58];

    sub_213FDC6D0(v107, v108);
    sub_2144A0480(v169);
    return memcpy(v153, v169, 0x1F0uLL);
  }

  else
  {
    v110 = sub_2146D85C8();
    v111 = *(v110 + 48);
    v112 = *(v110 + 52);
    swift_allocObject();
    v113 = v152;
    sub_21402D9F8(v152, v90);
    sub_2146D85B8();
    sub_2144A04C8();
    v114 = v161;
    sub_2146D8598();

    sub_213FDC6BC(v113, v90);
    sub_213FDC6BC(v113, v90);
    if (v114)
    {

      v115 = v170[10];
      v116 = v170[11];

      sub_213FDC6D0(v115, v116);
      v117 = v170[20];
      v118 = v170[21];

      sub_213FDC6D0(v117, v118);
      v119 = v170[25];
      v120 = v170[26];

      sub_213FDC6D0(v119, v120);
      v121 = v170[30];
      v122 = v170[31];

      sub_213FDC6D0(v121, v122);
      v123 = v170[35];
      v124 = v170[36];

      sub_213FDC6D0(v123, v124);
      v125 = v170[40];
      v126 = v170[41];

      sub_213FDC6D0(v125, v126);
      v127 = v170[45];
      v128 = v170[46];

      sub_213FDC6D0(v127, v128);
      v129 = v170[50];
      v130 = v170[51];

      sub_213FDC6D0(v129, v130);
      v131 = v170[57];
      v132 = v170[58];

      return sub_213FDC6D0(v131, v132);
    }

    else
    {
      memcpy(v165, v169, sizeof(v165));

      v133 = v170[10];
      v134 = v170[11];

      sub_213FDC6D0(v133, v134);
      v135 = v170[20];
      v136 = v170[21];

      sub_213FDC6D0(v135, v136);
      v137 = v170[25];
      v138 = v170[26];

      sub_213FDC6D0(v137, v138);
      v139 = v170[30];
      v140 = v170[31];

      sub_213FDC6D0(v139, v140);
      v141 = v170[35];
      v142 = v170[36];

      sub_213FDC6D0(v141, v142);
      v143 = v170[40];
      v144 = v170[41];

      sub_213FDC6D0(v143, v144);
      v145 = v170[45];
      v146 = v170[46];

      sub_213FDC6D0(v145, v146);
      v147 = v170[50];
      v148 = v170[51];

      sub_213FDC6D0(v147, v148);
      v149 = v170[57];
      v150 = v170[58];

      sub_213FDC6D0(v149, v150);
      memcpy(v170, v165, 0x1F0uLL);
      memcpy(v166, v165, sizeof(v166));
      memcpy(v167, v165, sizeof(v167));
      nullsub_1(v167);
      memcpy(v153, v167, 0x1F0uLL);
      memcpy(v168, v170, sizeof(v168));
      sub_2142E5E24(v166, &v164);
      return sub_214045958(v168);
    }
  }
}

uint64_t sub_2144A041C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwiftRegexValidator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2144A0480(_OWORD *a1)
{
  result = 0.0;
  a1[29] = 0u;
  a1[30] = 0u;
  a1[27] = 0u;
  a1[28] = 0u;
  a1[25] = 0u;
  a1[26] = 0u;
  a1[23] = 0u;
  a1[24] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_2144A04C8()
{
  result = qword_27C914700;
  if (!qword_27C914700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914700);
  }

  return result;
}

unint64_t sub_2144A051C(uint64_t a1)
{
  *(a1 + 8) = sub_2142FE99C();
  result = sub_2142FEC24();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144A0554(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 496))
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

uint64_t sub_2144A059C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 488) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 496) = 1;
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

    *(result + 496) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2144A0724()
{
  v1 = 0x74726F506863616DLL;
  v2 = 0x7365726464416D76;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    v1 = 0x6953726566667562;
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

uint64_t sub_2144A07A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2144A2418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2144A07D0(uint64_t a1)
{
  v2 = sub_2144A0ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144A080C(uint64_t a1)
{
  v2 = sub_2144A0ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LargeImage.Context.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914708, &qword_214750310);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144A0ADC();
  sub_2146DAA28();
  v16 = *v3;
  v15[11] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A40, &qword_214750318);
  sub_21432076C(qword_280B32A38, &unk_27C914A40, &qword_214750318);
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(v3 + 1);
    v15[10] = 1;
    sub_2146DA368();
    v12 = *(v3 + 2);
    v15[9] = 2;
    sub_2146DA378();
    v13 = *(type metadata accessor for LargeImage.Context(0) + 28);
    v15[8] = 3;
    type metadata accessor for MediaMetadata();
    sub_2144A0ECC(&qword_280B34670, type metadata accessor for MediaMetadata);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2144A0ADC()
{
  result = qword_280B34B50;
  if (!qword_280B34B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34B50);
  }

  return result;
}

uint64_t LargeImage.Context.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for MediaMetadata();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914710, &qword_214750320);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for LargeImage.Context(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_2144A0ADC();
  sub_2146DAA08();
  if (!v2)
  {
    v25 = v7;
    v26 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A40, &qword_214750318);
    v34 = 0;
    sub_21432076C(&qword_280B30B08, &unk_27C914A40, &qword_214750318);
    v19 = v28;
    sub_2146DA1C8();
    v20 = v26;
    *v26 = v35;
    v33 = 1;
    v21 = sub_2146DA1A8();
    v22 = v29;
    *(v20 + 8) = v21;
    v32 = 2;
    *(v20 + 16) = sub_2146DA1B8();
    v31 = 3;
    sub_2144A0ECC(&qword_280B34BE8, type metadata accessor for MediaMetadata);
    v24 = v25;
    sub_2146DA1C8();
    (*(v22 + 8))(v12, v19);
    sub_2144A0F14(v24, v20 + *(v13 + 28), type metadata accessor for MediaMetadata);
    sub_2144A0F14(v20, v27, type metadata accessor for LargeImage.Context);
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_2144A0ECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2144A0F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t LargeImage.image.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t LargeImage.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LargeImage(0) + 20);

  return sub_2144A10B0(a1, v3);
}

uint64_t sub_2144A10B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaMetadata();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2144A115C()
{
  if (*v0)
  {
    result = 0x617461646174656DLL;
  }

  else
  {
    result = 0x6567616D69;
  }

  *v0;
  return result;
}

uint64_t sub_2144A1194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_2144A126C(uint64_t a1)
{
  v2 = sub_2144A1500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144A12A8(uint64_t a1)
{
  v2 = sub_2144A1500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LargeImage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914718, &qword_214750328);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144A1500();
  sub_2146DAA28();
  v14 = *v3;
  v13[7] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917A10, &unk_214756CB0);
  sub_21432076C(&qword_280B30B00, &qword_27C917A10, &unk_214756CB0);
  sub_2146DA388();

  if (!v2)
  {
    v11 = *(type metadata accessor for LargeImage(0) + 20);
    v13[6] = 1;
    type metadata accessor for MediaMetadata();
    sub_2144A0ECC(&qword_280B34670, type metadata accessor for MediaMetadata);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2144A1500()
{
  result = qword_280B34B58;
  if (!qword_280B34B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34B58);
  }

  return result;
}

uint64_t LargeImage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = type metadata accessor for MediaMetadata();
  v4 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914720, &qword_214750330);
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for LargeImage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144A1500();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v14;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917A10, &unk_214756CB0);
  v27 = 0;
  sub_21432076C(&qword_280B32A30, &qword_27C917A10, &unk_214756CB0);
  v16 = v25;
  sub_2146DA1C8();
  v17 = v20;
  *v20 = v28;
  v26 = 1;
  sub_2144A0ECC(&qword_280B34BE8, type metadata accessor for MediaMetadata);
  sub_2146DA1C8();
  (*(v24 + 8))(v10, v16);
  sub_2144A0F14(v6, v17 + *(v11 + 20), type metadata accessor for MediaMetadata);
  sub_2144A18BC(v17, v22, type metadata accessor for LargeImage);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_2144A1E04(v17, type metadata accessor for LargeImage);
}

uint64_t sub_2144A18BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t LargeImage.init(image:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for LargeImage(0);
  return sub_2144A0F14(a2, a3 + *(v5 + 20), type metadata accessor for MediaMetadata);
}

uint64_t LargeImage.Context.init(metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  address[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) != 1)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    v8 = *(a1 + 16);
    address[0] = 0;
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v10 = MEMORY[0x277D85F48];
      v11 = vm_allocate(*MEMORY[0x277D85F48], address, v8, 3);
      if (v11)
      {
        v12 = v11;
        sub_2146D9EF8();

        v24 = 0xD000000000000024;
        v25 = 0x800000021479B450;
        LODWORD(size) = v12;
LABEL_9:
        v13 = sub_2146DA428();
        MEMORY[0x2160545D0](v13);

        MEMORY[0x2160545D0](41, 0xE100000000000000);
        v14 = v24;
        v15 = v25;
        sub_21404A6EC();
        swift_allocError();
        *v16 = 0xD00000000000002ELL;
        v16[1] = 0x80000002147998A0;
        v16[2] = v14;
        v16[3] = v15;
        v16[4] = 0xD000000000000022;
        v16[5] = 0x800000021479B420;
        goto LABEL_10;
      }

      object_handle = 0;
      size = v8;
      if (mach_make_memory_entry_64(*v10, &size, address[0], 4194307, &object_handle, 0))
      {
        MEMORY[0x216056C00](*v10, address[0], v8);
        v24 = 0;
        v25 = 0xE000000000000000;
        sub_2146D9EF8();

        v24 = 0xD000000000000022;
        v25 = 0x800000021479B480;
        goto LABEL_9;
      }

      v19 = address[0];
      if (!address[0])
      {
        MEMORY[0x216056C00](*v10, 0, v8);
        mach_port_deallocate(*v10, object_handle);
        v3 = 0x800000021479B4E0;
        sub_21404A6EC();
        swift_allocError();
        *v4 = 0xD00000000000002ELL;
        v4[1] = 0x80000002147998A0;
        v5 = 0xD000000000000026;
        goto LABEL_3;
      }

      if (v8 < 0x21)
      {
        MEMORY[0x216056C00](*v10);
        mach_port_deallocate(*v10, object_handle);
        v3 = 0x800000021479B4B0;
        sub_21404A6EC();
        swift_allocError();
        *v4 = 0xD00000000000002ELL;
        v4[1] = 0x80000002147998A0;
        v5 = 0xD000000000000029;
        goto LABEL_3;
      }

      if (v7 <= 0xFFFFFFFFLL)
      {
        if (((v6 | v7) & 0x8000000000000000) == 0)
        {
          if (v6 <= 0xFFFFFFFFLL)
          {
            *address[0] = 0xB1A57D002;
            *(v19 + 8) = v7;
            *(v19 + 12) = v6;
            *(v19 + 16) = v8;
            *(v19 + 24) = v8 - 32;
            *a2 = object_handle;
            v20 = address[0];
            *(a2 + 8) = v8;
            *(a2 + 16) = v20;
            v21 = type metadata accessor for LargeImage.Context(0);
            result = sub_2144A0F14(a1, a2 + *(v21 + 28), type metadata accessor for MediaMetadata);
            goto LABEL_11;
          }

LABEL_23:
          __break(1u);
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v3 = 0x800000021479B3E0;
  sub_21404A6EC();
  swift_allocError();
  *v4 = 0xD00000000000002ELL;
  v4[1] = 0x80000002147998A0;
  v5 = 0xD000000000000031;
LABEL_3:
  v4[2] = v5;
  v4[3] = v3;
  v4[4] = 0xD000000000000022;
  v4[5] = 0x800000021479B420;
LABEL_10:
  swift_willThrow();
  result = sub_2144A1E04(a1, type metadata accessor for MediaMetadata);
LABEL_11:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2144A1E04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2144A1EF4(uint64_t a1)
{
  result = sub_2144A0ECC(&qword_280B34B28, type metadata accessor for LargeImage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2144A1F4C(uint64_t a1)
{
  *(a1 + 8) = sub_2144A0ECC(&qword_280B34C48, type metadata accessor for LargeImage);
  result = sub_2144A0ECC(&qword_280B34B30, type metadata accessor for LargeImage);
  *(a1 + 16) = result;
  return result;
}

void sub_2144A1FF8()
{
  sub_2144A207C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MediaMetadata();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2144A207C()
{
  if (!qword_280B34C30)
  {
    type metadata accessor for MachImage();
    v0 = type metadata accessor for XPCCodable();
    if (!v1)
    {
      atomic_store(v0, &qword_280B34C30);
    }
  }
}

void sub_2144A20FC()
{
  sub_2144A2198();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MediaMetadata();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2144A2198()
{
  if (!qword_280B34E50[0])
  {
    v0 = type metadata accessor for XPCCodable();
    if (!v1)
    {
      atomic_store(v0, qword_280B34E50);
    }
  }
}

unint64_t sub_2144A220C()
{
  result = qword_27C914728;
  if (!qword_27C914728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914728);
  }

  return result;
}

unint64_t sub_2144A2264()
{
  result = qword_27C914730;
  if (!qword_27C914730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914730);
  }

  return result;
}

unint64_t sub_2144A22BC()
{
  result = qword_280B34C58;
  if (!qword_280B34C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34C58);
  }

  return result;
}

unint64_t sub_2144A2314()
{
  result = qword_280B34C60;
  if (!qword_280B34C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34C60);
  }

  return result;
}

unint64_t sub_2144A236C()
{
  result = qword_280B34C50;
  if (!qword_280B34C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34C50);
  }

  return result;
}

unint64_t sub_2144A23C4()
{
  result = qword_280B34B48;
  if (!qword_280B34B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34B48);
  }

  return result;
}

uint64_t sub_2144A2418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F506863616DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6953726566667562 && a2 == 0xEA0000000000657ALL || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365726464416D76 && a2 == 0xE900000000000073 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2144A258C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_2144A2598()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2144A25C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2144A2620()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = *(v0 + 24);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = *(v1 + 16);
  v31 = MEMORY[0x277D837D0];
  *&v30 = v10;
  *(&v30 + 1) = v9;
  sub_213FDC730(&v30, v29);

  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v11;
  sub_2140524DC(v29, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v32 = v28;
  v13 = type metadata accessor for IDSSampleInvitation();
  v14 = *(v13 + 20);
  sub_2144716D8(v1 + v14, v8);
  v15 = sub_2146D8B08();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v8, 1, v15);
  sub_213FB2DF4(v8, &qword_27C913090, &unk_2146E9DB0);
  if (v18 != 1)
  {
    sub_2144716D8(v1 + v14, v6);
    if (v17(v6, 1, v15) == 1)
    {
      sub_213FB2DF4(v6, &qword_27C913090, &unk_2146E9DB0);
      sub_2144AEF6C(1702125924, 0xE400000000000000, &v30);
      sub_213FB2DF4(&v30, &qword_27C913170, &qword_2146EAB20);
    }

    else
    {
      v31 = v15;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v30);
      (*(v16 + 32))(boxed_opaque_existential_0, v6, v15);
      sub_213FDC730(&v30, v29);
      v20 = v32;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v28 = v20;
      sub_2140524DC(v29, 1702125924, 0xE400000000000000, v21);
      v32 = v28;
    }
  }

  v22 = v1 + *(v13 + 24);
  v23 = *(v22 + 24);
  if (!v23)
  {
    return v32;
  }

  if (v23 == 1)
  {
LABEL_11:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v25 = *(v22 + 16);
    v31 = MEMORY[0x277D837D0];
    *&v30 = v25;
    *(&v30 + 1) = v23;
    sub_213FDC730(&v30, v29);

    v26 = v32;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v28 = v26;
    sub_2140524DC(v29, 0x6E6F73616572, 0xE600000000000000, v27);
    return v28;
  }

  return result;
}

unint64_t sub_2144A2974@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2144A2A94()
{
  sub_2144A2620();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2144A2AE8()
{
  sub_2144A2620();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_2144A2B3C(uint64_t a1)
{
  *(a1 + 8) = sub_2144A2BF0(&qword_27C90CB28);
  result = sub_2144A2BF0(&qword_27C90CAF0);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for IDSSampleInvitation()
{
  result = qword_280B2F268;
  if (!qword_280B2F268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2144A2BF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IDSSampleInvitation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2144A2C5C()
{
  sub_214426938();
  if (v0 <= 0x3F)
  {
    sub_21409320C();
    if (v1 <= 0x3F)
    {
      sub_214084AA4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2144A2CF8(uint64_t a1)
{
  *(a1 + 8) = sub_2144643EC(&qword_27C90C798);
  result = sub_2144643EC(&qword_27C90C680);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MBDActionCalendar()
{
  result = qword_27C914738;
  if (!qword_27C914738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2144A2DD4()
{
  sub_2146D8B08();
  if (v0 <= 0x3F)
  {
    sub_214426938();
    if (v1 <= 0x3F)
    {
      sub_214084AA4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2144A2E70@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 500;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21406418C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2144A2FBC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_282653968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_214059810;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_21403254C;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2144A3178@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144A31C4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144A3220@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IMSGSMACharacteristic() + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t type metadata accessor for IMSGSMACharacteristic()
{
  result = qword_27C914790;
  if (!qword_27C914790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_2144A32D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IMSGSMACharacteristic() + 28));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144A3350@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IMSGSMACharacteristic() + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2144A33BC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IMSGSMACharacteristic() + 32));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144A3434()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144A34B0()
{
  v1 = v0 + *(type metadata accessor for IMSGSMACharacteristic() + 28);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_2144A3540()
{
  v1 = v0 + *(type metadata accessor for IMSGSMACharacteristic() + 32);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

uint64_t sub_2144A35D0@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2144A3644@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_2144A35D0(a1);
}

uint64_t sub_2144A370C()
{
  if (*v0)
  {
    result = 0x534C546F5052534DLL;
  }

  else
  {
    result = 1347572557;
  }

  *v0;
  return result;
}

uint64_t sub_2144A38C4@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2144A3920@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_2144A38C4(a1);
}

uint64_t sub_2144A39E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x534C546F5052534DLL;
  }

  else
  {
    v4 = 1347572557;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x534C546F5052534DLL;
  }

  else
  {
    v6 = 1347572557;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2144A3A88()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144A3B04()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144A3C44()
{
  if (*v0)
  {
    result = 1347703379;
  }

  else
  {
    result = 5264466;
  }

  *v0;
  return result;
}

uint64_t sub_2144A3C70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1347703379;
  }

  else
  {
    v4 = 5264466;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1347703379;
  }

  else
  {
    v6 = 5264466;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2144A3D08()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144A3D7C()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144A40A0@<X0>(char *a1@<X8>)
{
  v2 = sub_2146DA098();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2144A4108()
{
  v1 = 0x747365676944;
  if (*v0 != 1)
  {
    v1 = 0x442064656E676953;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 4279105;
  }
}

uint64_t sub_2144A4164(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x747365676944;
  if (v2 != 1)
  {
    v4 = 0x442064656E676953;
    v3 = 0xED00007473656769;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4279105;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x747365676944;
  if (*a2 != 1)
  {
    v8 = 0x442064656E676953;
    v7 = 0xED00007473656769;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 4279105;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2144A4270()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144A4314()
{
  *v0;
  *v0;
  sub_2146D9698();
}

uint64_t sub_2144A43A4()
{
  v1 = *v0;
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144A4444@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_2144A40A0(a1);
}

void sub_2144A4450(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x747365676944;
  if (v2 != 1)
  {
    v5 = 0x442064656E676953;
    v4 = 0xED00007473656769;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 4279105;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2144A4570(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144A46B8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144A4754(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

uint64_t sub_2144A48FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IMSGSMACharacteristic() + 28);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2144A4998(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for IMSGSMACharacteristic() + 28);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144A4A60(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IMSGSMACharacteristic() + 28);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144A4BB0(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for IMSGSMACharacteristic() + 28);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21439DFA8;
  }

  return result;
}

uint64_t sub_2144A4C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IMSGSMACharacteristic() + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2144A4D0C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IMSGSMACharacteristic() + 28);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2144A4DA4(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for IMSGSMACharacteristic() + 28);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21439DFAC;
}

uint64_t sub_2144A4E50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IMSGSMACharacteristic() + 32);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2144A4EEC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for IMSGSMACharacteristic() + 32);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2144A4FB4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IMSGSMACharacteristic() + 32);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144A5104(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for IMSGSMACharacteristic() + 32);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21409E1C0;
  }

  return result;
}

uint64_t sub_2144A51F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IMSGSMACharacteristic() + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2144A5260(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IMSGSMACharacteristic() + 32);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2144A52F8(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for IMSGSMACharacteristic() + 32);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21409E45C;
}

uint64_t sub_2144A53A4@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for IMSGSMACharacteristic();
  v4 = v1 + *(result + 36);
  *a1 = *v4;
  *(a1 + 8) = *(v4 + 8);
  return result;
}

uint64_t sub_2144A53E4(uint64_t a1)
{
  result = type metadata accessor for IMSGSMACharacteristic();
  v4 = v1 + *(result + 36);
  *v4 = *a1;
  *(v4 + 8) = *(a1 + 8);
  return result;
}

unint64_t sub_2144A5548()
{
  result = qword_27C914748;
  if (!qword_27C914748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914748);
  }

  return result;
}

unint64_t sub_2144A55A0()
{
  result = qword_27C914750;
  if (!qword_27C914750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914750);
  }

  return result;
}

unint64_t sub_2144A55F8()
{
  result = qword_27C914758;
  if (!qword_27C914758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914758);
  }

  return result;
}

unint64_t sub_2144A5650()
{
  result = qword_27C914760;
  if (!qword_27C914760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914760);
  }

  return result;
}

unint64_t sub_2144A56A8()
{
  result = qword_27C914768;
  if (!qword_27C914768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914768);
  }

  return result;
}

unint64_t sub_2144A5700()
{
  result = qword_27C914770;
  if (!qword_27C914770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914770);
  }

  return result;
}

unint64_t sub_2144A5754(uint64_t a1)
{
  *(a1 + 8) = sub_214305490();
  result = sub_214305538();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2144A5788()
{
  result = qword_27C914778;
  if (!qword_27C914778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914778);
  }

  return result;
}

unint64_t sub_2144A57E0()
{
  result = qword_27C914780;
  if (!qword_27C914780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C914788, qword_214750E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914780);
  }

  return result;
}

uint64_t sub_2144A5844(uint64_t a1)
{
  *(a1 + 8) = sub_2144A58AC(&qword_27C9093E0);
  result = sub_2144A58AC(&qword_27C9093F0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144A58AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IMSGSMACharacteristic();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy9_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IMSGSMATransportProtoCharacteristic(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IMSGSMATransportProtoCharacteristic(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

void sub_2144A5A24()
{
  sub_214426938();
  if (v0 <= 0x3F)
  {
    sub_2144A5B28(319, &qword_280B30B80, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      sub_214084AA4();
      if (v2 <= 0x3F)
      {
        sub_2144A5B28(319, &qword_280B353F8, MEMORY[0x277CC95F0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2144A5B28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2144A5B8C()
{
  result = qword_27C9147A0;
  if (!qword_27C9147A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9147A0);
  }

  return result;
}

unint64_t sub_2144A5BE0()
{
  result = qword_27C9147A8;
  if (!qword_27C9147A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9147A8);
  }

  return result;
}

unint64_t sub_2144A5C34()
{
  result = qword_27C9147B0;
  if (!qword_27C9147B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9147B0);
  }

  return result;
}

unint64_t sub_2144A5C88()
{
  result = qword_27C9147B8;
  if (!qword_27C9147B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9147B8);
  }

  return result;
}

unint64_t sub_2144A5CDC()
{
  result = qword_27C9147C0;
  if (!qword_27C9147C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9147C0);
  }

  return result;
}

unint64_t sub_2144A5D30()
{
  result = qword_27C9147C8;
  if (!qword_27C9147C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9147C8);
  }

  return result;
}

unint64_t sub_2144A5D84()
{
  result = qword_27C9147D0;
  if (!qword_27C9147D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9147D0);
  }

  return result;
}

uint64_t sub_2144A5E20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E69616C70;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1818848627;
    }

    else
    {
      v4 = 0x6E69616C70;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x656D686361747461;
    v5 = 0xEA0000000000746ELL;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v3 == 3)
    {
      v5 = 0x8000000214786E80;
    }

    else
    {
      v5 = 0x8000000214786EA0;
    }
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0xE400000000000000;
    v8 = 1818848627;
    v9 = a2 == 0;
LABEL_20:
    if (v9)
    {
      v10 = v2;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    if (v4 != v10)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (a2 != 2)
  {
    v2 = 0xD000000000000012;
    v6 = 0x8000000214786E80;
    v7 = 0x8000000214786EA0;
    v8 = 0xD000000000000013;
    v9 = a2 == 3;
    goto LABEL_20;
  }

  v11 = 0xEA0000000000746ELL;
  if (v4 != 0x656D686361747461)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v5 != v11)
  {
LABEL_30:
    v12 = sub_2146DA6A8();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_2144A5F9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656369766564;
  v6 = 0xE800000000000000;
  if (a1 != 5)
  {
    v5 = 0x73676E6974746573;
    v4 = 0xE800000000000000;
  }

  v7 = 0x7261646E656C6163;
  if (a1 != 3)
  {
    v7 = 0x65736F706D6F63;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x72656C616964;
  if (a1 != 1)
  {
    v9 = 7364973;
    v8 = 0xE300000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 7107189;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x72656C616964)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE300000000000000;
        if (v10 != 7364973)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 7107189)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656369766564)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x73676E6974746573)
      {
LABEL_39:
        v13 = sub_2146DA6A8();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x7261646E656C6163)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x65736F706D6F63)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_2144A61A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000676E69646FLL;
  v3 = 0x636E456567616D69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6D6F436573667A6CLL;
    }

    else
    {
      v5 = 0xD000000000000020;
    }

    if (v4 == 2)
    {
      v6 = 0xEF64657373657270;
    }

    else
    {
      v6 = 0x8000000214786040;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6464697754657270;
    }

    else
    {
      v5 = 0x636E456567616D69;
    }

    if (v4)
    {
      v6 = 0xEB0000000064656CLL;
    }

    else
    {
      v6 = 0xED0000676E69646FLL;
    }
  }

  v7 = 0x6D6F436573667A6CLL;
  v8 = 0x8000000214786040;
  if (a2 == 2)
  {
    v8 = 0xEF64657373657270;
  }

  else
  {
    v7 = 0xD000000000000020;
  }

  if (a2)
  {
    v3 = 0x6464697754657270;
    v2 = 0xEB0000000064656CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2144A6314(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "digitalwallet.carkey.ccc";
      v3 = 0xD000000000000013;
    }

    else
    {
      v4 = "digitalwallet.apple";
      v3 = 0xD000000000000018;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 0xD000000000000028;
    }

    if (v2)
    {
      v4 = "neric.authorizationToken";
    }

    else
    {
      v4 = "contentDescription";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (a2 == 2)
    {
      v6 = "digitalwallet.carkey.ccc";
    }

    else
    {
      v6 = "digitalwallet.apple";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0xD000000000000028;
    }

    if (a2)
    {
      v6 = "neric.authorizationToken";
    }

    else
    {
      v6 = "contentDescription";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2146DA6A8();
  }

  return v7 & 1;
}

uint64_t sub_2144A643C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x657A65657262;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6562656C6B637568;
    }

    else
    {
      v4 = 0x6F65646976;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000797272;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6157646564697567;
    }

    else
    {
      v4 = 0x657A65657262;
    }

    if (v3)
    {
      v5 = 0xEA00000000006B6CLL;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x6562656C6B637568;
  v8 = 0xEB00000000797272;
  if (a2 != 2)
  {
    v7 = 0x6F65646976;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6157646564697567;
    v6 = 0xEA00000000006B6CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2144A658C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6579570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1702194274;
    }

    else
    {
      v4 = 0x6168706C61;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E65657267;
    }

    else
    {
      v4 = 6579570;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1702194274;
  if (a2 != 2)
  {
    v8 = 0x6168706C61;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6E65657267;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2144A66A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x657461647075;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x74736575716572;
    }

    else
    {
      v4 = 0x5274736575716572;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEF65736E6F707365;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x68736572666572;
    }

    else
    {
      v4 = 0x657461647075;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x74736575716572;
  if (a2 != 2)
  {
    v8 = 0x5274736575716572;
    v7 = 0xEF65736E6F707365;
  }

  if (a2)
  {
    v2 = 0x68736572666572;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2144A67FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000026;
  v3 = "idsScreenSharingInvitation";
  if (a1 <= 3u)
  {
    v4 = "ZoneInvitationRequestMessage";
    v5 = 0xD00000000000002DLL;
    if (a1 != 2)
    {
      v5 = 0xD000000000000026;
      v4 = "ZoneInvitationResponseMessage";
    }

    v8 = "sampleProtobufMessage";
    v9 = 0xD00000000000002CLL;
    if (!a1)
    {
      v9 = 0xD000000000000015;
      v8 = "idsScreenSharingInvitation";
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = "ionRequestMessage";
    v5 = 0xD00000000000001BLL;
    v6 = "walletPassSharingUrlMessage";
    v7 = 0xD00000000000002CLL;
    if (a1 == 7)
    {
      v7 = 0xD000000000000026;
    }

    else
    {
      v6 = "strationRequestMessage";
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "ingCapabilitiesMessage";
    v9 = 0xD00000000000001ELL;
    if (a1 != 4)
    {
      v9 = 0xD000000000000031;
      v8 = "walletPassSharingCancelMessage";
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v2 = 0xD000000000000015;
        goto LABEL_39;
      }

      v13 = "walletCloudStoreZoneInvitationRequestMessage";
      goto LABEL_37;
    }

    if (a2 == 2)
    {
      v3 = "ZoneInvitationRequestMessage";
      v2 = 0xD00000000000002DLL;
    }

    else
    {
      v3 = "ZoneInvitationResponseMessage";
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "ionRequestMessage";
        v2 = 0xD00000000000001BLL;
        goto LABEL_39;
      }

      if (a2 == 7)
      {
        v3 = "walletPassSharingUrlMessage";
        goto LABEL_39;
      }

      v13 = "walletRemoteRegistrationRequestResultMessage";
LABEL_37:
      v3 = (v13 - 32);
      v2 = 0xD00000000000002CLL;
      goto LABEL_39;
    }

    if (a2 == 4)
    {
      v3 = "ingCapabilitiesMessage";
      v2 = 0xD00000000000001ELL;
    }

    else
    {
      v3 = "walletPassSharingCancelMessage";
      v2 = 0xD000000000000031;
    }
  }

LABEL_39:
  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_2146DA6A8();
  }

  return v14 & 1;
}

uint64_t sub_2144A6A28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x65676E616863;
    }

    else
    {
      v3 = 0x64696C61766E69;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E6F69746E656DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0x68737265626D656DLL;
    v4 = 0xEA00000000007069;
  }

  else
  {
    v3 = 0x6574736973726570;
    v4 = 0xEB0000000065636ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x65676E616863;
    }

    else
    {
      v9 = 0x64696C61766E69;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x68737265626D656DLL;
    v6 = 0xEA00000000007069;
    if (a2 != 3)
    {
      v5 = 0x6574736973726570;
      v6 = 0xEB0000000065636ELL;
    }

    if (a2 == 2)
    {
      v7 = 0x6E6F69746E656DLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_2146DA6A8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2144A6BC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x736E6F6974706FLL;
    }

    else
    {
      v4 = 0x68437972616E6962;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEC0000006563696FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C676E6973;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x736E6F6974706FLL;
  if (a2 != 2)
  {
    v8 = 0x68437972616E6962;
    v7 = 0xEC0000006563696FLL;
  }

  if (a2)
  {
    v2 = 0x656C676E6973;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2144A6D08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x64656C696166;
    }

    else
    {
      v3 = 0x65726576696C6564;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE900000000000064;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000010;
    v4 = 0x8000000214787050;
  }

  else if (a1 == 3)
  {
    v3 = 0x6564646962726F66;
    v4 = 0xE90000000000006ELL;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x726F727265;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x64656C696166;
    }

    else
    {
      v9 = 0x65726576696C6564;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE900000000000064;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6564646962726F66;
    v6 = 0xE90000000000006ELL;
    if (a2 != 3)
    {
      v5 = 0x726F727265;
      v6 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x8000000214787050;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_2146DA6A8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2144A6E8C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x79726576696C6564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x69737365636F7270;
    }

    else
    {
      v4 = 0x726F777265746E69;
    }

    if (v3 == 2)
    {
      v5 = 0xEA0000000000676ELL;
    }

    else
    {
      v5 = 0xEC000000676E696BLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x79616C70736964;
    }

    else
    {
      v4 = 0x79726576696C6564;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x69737365636F7270;
  v8 = 0xEA0000000000676ELL;
  if (a2 != 2)
  {
    v7 = 0x726F777265746E69;
    v8 = 0xEC000000676E696BLL;
  }

  if (a2)
  {
    v2 = 0x79616C70736964;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2144A6FE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7221858;
  if (a1 <= 1u)
  {
    v4 = 0x8000000214788450;
    v3 = 0x8000000214788470;
    v6 = a1 == 0;
    if (a1)
    {
      v7 = 0xD000000000000020;
    }

    else
    {
      v7 = 0xD00000000000001BLL;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0x80000002147884A0;
    v5 = 7811682;
    if (a1 == 3)
    {
      v5 = 7221858;
    }

    else
    {
      v3 = 0xE300000000000000;
    }

    v6 = a1 == 2;
    if (a1 == 2)
    {
      v7 = 0xD000000000000023;
    }

    else
    {
      v7 = v5;
    }
  }

  if (v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = v3;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v10 = 0xD000000000000020;
    }

    else
    {
      v10 = 0xD00000000000001BLL;
    }

    if (a2)
    {
      v9 = 0x8000000214788470;
    }

    else
    {
      v9 = 0x8000000214788450;
    }

    if (v7 != v10)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v9 = 0x80000002147884A0;
    if (v7 != 0xD000000000000023)
    {
LABEL_31:
      v11 = sub_2146DA6A8();
      goto LABEL_32;
    }
  }

  else
  {
    if (a2 != 3)
    {
      v2 = 7811682;
    }

    v9 = 0xE300000000000000;
    if (v7 != v2)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v9)
  {
    goto LABEL_31;
  }

  v11 = 1;
LABEL_32:

  return v11 & 1;
}