unint64_t sub_18AF4BB1C()
{
  result = qword_1EA99B660;
  if (!qword_1EA99B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B660);
  }

  return result;
}

unint64_t sub_18AF4BB74()
{
  result = qword_1EA99B668;
  if (!qword_1EA99B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B668);
  }

  return result;
}

uint64_t sub_18AF4BBC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18AF4BC28(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE4(a3) != 255)
  {
    return sub_18AE91FA0(result, a2, a3, BYTE4(a3) & 1);
  }

  return result;
}

uint64_t _s13ConfigurationV11FocusBorderVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t _s13ConfigurationV4TextVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 13))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13ConfigurationV4TextVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
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

  *(result + 13) = v3;
  return result;
}

unint64_t sub_18AF4BCF4()
{
  result = qword_1EA99B6B0;
  if (!qword_1EA99B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B6B0);
  }

  return result;
}

unint64_t sub_18AF4BD4C()
{
  result = qword_1EA99B6B8;
  if (!qword_1EA99B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B6B8);
  }

  return result;
}

unint64_t sub_18AF4BE2C()
{
  result = qword_1EA99B6D0;
  if (!qword_1EA99B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B6D0);
  }

  return result;
}

uint64_t sub_18AF4BE98(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 120) - 8) + 32))(v2 + *(*v2 + 144), a1);
  return v2;
}

uint64_t sub_18AF4C048()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18AF4C0DC()
{
  v1 = *v0;
  sub_18AFCE294();
  (*(*v1 + 88))(v3);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF4C184()
{
  sub_18AFCE294();
  (*(**v0 + 88))(v2);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF4C230@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v4 = *(*v1 + 120);
  a1[3] = v4;
  a1[4] = *(v3 + 136);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, &v1[v2], v4);
}

uint64_t sub_18AF4C2E0(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    (*(v3 + 16))(v5, v6 + *(*v6 + 144), v2);

    v7 = sub_18AFCDDF4();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_18AF4C51C()
{
  (*(*(*(*v0 + 120) - 8) + 8))(v0 + *(*v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t sub_18AF4C5E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_18AF4C628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18AF4C674()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18AFCE294();
  (*(**&v1 + 88))(v5);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x18CFED640](*&v3);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF4C700()
{
  v1 = v0[1];
  (*(**v0 + 88))();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x18CFED640](*&v2);
}

uint64_t sub_18AF4C770()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18AFCE294();
  (*(**&v1 + 88))(v5);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x18CFED640](*&v3);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF4C7F8(double *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a2 + 8);
  return (*(**a1 + 80))(*a2) & (v2 == v3);
}

unint64_t sub_18AF4C860()
{
  result = qword_1EA99B6D8;
  if (!qword_1EA99B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B6D8);
  }

  return result;
}

unint64_t sub_18AF4C8B8()
{
  result = qword_1EA99B6E0;
  if (!qword_1EA99B6E0)
  {
    _s14CustomFillBaseCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B6E0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t static GlassMaterialProvider.Options.defaults(for:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9[15] = *a1;
  sub_18AE8A0A4(v6);
  v7 = *v6;
  sub_18AE89F60(*v6);
  sub_18AE82D7C(v6);
  sub_18AE8E22C(v7, a2);
  return sub_18AF4B0F8(v7);
}

unint64_t sub_18AF4CAB0()
{
  result = qword_1EA99B6E8;
  if (!qword_1EA99B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B6E8);
  }

  return result;
}

unint64_t sub_18AF4CB08()
{
  result = qword_1EA99B6F0;
  if (!qword_1EA99B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B6F0);
  }

  return result;
}

uint64_t sub_18AF4CB5C()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF4CBA4()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

void *sub_18AF4CBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *(a1 + 13);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  if ((v10 & 0x1000000) != 0 || v9 == 1 || v9 == 2 || v9 == 20 || (__src[0] = *a1, *(__src + 5) = *(a1 + 5), BYTE5(__src[1]) = v9, *(&__src[1] + 6) = *(a1 + 14), HIWORD(__src[2]) = *(a1 + 22), __src[3] = v10, __src[4] = v11, __src[5] = v12, sub_18AF950B8(__src, a2, a3 & 0xEC7F, v15), (a3 & 8) == 0))
  {
    memcpy(__dst, v4, 0x401uLL);
  }

  else
  {
    memcpy(__dst, v4, 0x401uLL);
    if ((a3 & 0x800) == 0)
    {
      sub_18AFA3C7C(__dst, a2);
    }
  }

  __src[0] = *a1;
  *(__src + 5) = *(a1 + 5);
  BYTE5(__src[1]) = v9;
  *(&__src[1] + 6) = *(a1 + 14);
  HIWORD(__src[2]) = *(a1 + 22);
  __src[3] = v10;
  __src[4] = v11;
  __src[5] = v12;
  sub_18AF4CD60(__src, a2, a3, v16);
  sub_18AE88C0C(v12, a3, __src);
  return memcpy(a4, __src, 0x401uLL);
}

void *sub_18AF4CD60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v10 = *a1;
  v11 = *(a1 + 12);
  v12 = *(a1 + 2);
  v13 = *(a1 + 13);
  v14 = a1[3];
  memcpy(__dst, v5, 0x401uLL);
  if ((a3 & 2) == 0)
  {
    return memcpy(a4, __dst, 0x401uLL);
  }

  v15 = v12 | (v11 << 32);
  if ((v14 & 4) != 0)
  {
    if ((a3 & 0x400) != 0)
    {
      v16 = 1;
      if ((a3 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  if (!(v14 & 2 | a3 & 0x20))
  {
LABEL_7:
    v31 = v10;
    v32 = v15;
    v33 = BYTE4(v15);
    v34 = v13;
    v35 = *(a1 + 14);
    v36 = *(a1 + 11);
    v37 = v14;
    v38 = *(a1 + 2);
    sub_18AF4CFF0(&v31, a2);
    v17 = LODWORD(__dst[49]);
    if (LOBYTE(__dst[51]))
    {
      v17 = 0;
    }

    *&__dst[49] = v17;
    *(&__dst[49] + 1) = 1065353216;
    memset(&__dst[50], 0, 17);
  }

LABEL_10:
  v18 = (v15 >> 38) & 3;
  if (v18 == 3)
  {
    v19 = (v15 & 0xFFFFFFFFFFLL) == 0xC000000000 && v10 == 1;
    if (v19 && v13 == 7)
    {
      *(&__dst[31] + 4) = xmmword_18AFDBC70;
      BYTE4(__dst[32]) = 0;
    }
  }

  if (!((a3 >> 6) & 1 | v16 & 1) && (v13 - 1) >= 3)
  {
    if (v18 == 1)
    {
      v22 = 0;
      v21 = 1;
    }

    else
    {
      v21 = v18 != 3 || v10 != 2 || (v15 & 0xFFFFFFFFFFLL) != 0xC000000000 || (v14 & 0x800000) == 0;
      v22 = 1;
    }

    v23 = _s11EnvironmentVMa();
    sub_18AF4DFF0(v23, a2 + *(v23 + 20), v22, v21);
  }

  if ((a3 & 0x80) == 0 && (v14 & 0x10) != 0)
  {
    v24 = *&__dst[19];
    if (BYTE4(__dst[19]))
    {
      v24 = 0.0;
      v25 = -1;
    }

    else
    {
      v25 = 0;
    }

    v26 = vdupq_n_s64(v25);
    v27 = vbicq_s8(__dst[17], v26);
    v28 = vbicq_s8(__dst[18], v26);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v27), vceqzq_f64(v28))))) & 1) != 0 || v24 != 0.0)
    {
      v29 = 0;
    }

    else
    {
      v29 = 1;
      v27 = 0uLL;
      v24 = 0.0;
      v28 = 0uLL;
    }

    __dst[16] = 0uLL;
    __dst[17] = v27;
    __dst[18] = v28;
    *&__dst[19] = v24;
    BYTE4(__dst[19]) = v29;
  }

  if ((a3 & 0x200) == 0 && (v14 & 0x20) != 0)
  {
    sub_18AF4F4E0();
  }

  if ((v14 & 0x8000) != 0)
  {
    sub_18AF4F5E0();
  }

  return memcpy(a4, __dst, 0x401uLL);
}

uint64_t sub_18AF4CFF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v226 = a2;
  v5 = sub_18AFCCCF4();
  v218 = *(v5 - 8);
  v219 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v220 = &v193 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18AFCBB34();
  v223 = *(v7 - 8);
  v224 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v222 = &v193 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = *(a1 + 24);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  v12 = *(v3 + 48);
  v13 = *(v3 + 56);
  v14 = *(v3 + 64);
  v15 = *(v3 + 72);
  v16 = *(v3 + 80);
  v17 = *(v3 + 84);
  v18 = *(v3 + 88);
  v19 = *(v3 + 92);
  v20 = *(v3 + 100);
  v21 = *(v3 + 108);
  v412 = *(v3 + 109);
  v413 = *(v3 + 111);
  v22 = *(v3 + 112);
  v23 = *(v3 + 120);
  v24 = *(v3 + 128);
  v410 = *(v3 + 129);
  v411 = *(v3 + 131);
  v25 = *(v3 + 132);
  v26 = *(v3 + 140);
  v27 = *(v3 + 148);
  v408 = *(v3 + 149);
  v409 = *(v3 + 151);
  v28 = *(v3 + 152);
  v29 = *(v3 + 156);
  v30 = *(v3 + 160);
  LOBYTE(v8) = *(v3 + 168);
  v213 = v10;
  v214 = v9;
  *v414 = v9;
  *&v414[1] = v10;
  *&v414[2] = v11;
  *&v414[3] = v12;
  *&v414[4] = v13;
  *&v414[5] = v14;
  *&v414[6] = v15;
  LODWORD(v215) = v16;
  v415 = v16;
  v416 = v17;
  v417 = v18;
  v216 = v20;
  v217 = v19;
  v418 = v19;
  v419 = v20;
  v420 = v21;
  v422 = *(v3 + 111);
  v421 = *(v3 + 109);
  v423 = v22;
  v424 = v23;
  v425 = v24;
  LOWORD(v19) = *(v3 + 129);
  v427 = *(v3 + 131);
  v426 = v19;
  v428 = v25;
  v429 = v26;
  v430 = v27;
  LOWORD(v19) = *(v3 + 149);
  v432 = *(v3 + 151);
  v431 = v19;
  v433 = v28;
  v221 = v29;
  v434 = v29;
  v435 = v30;
  v436 = v8;
  if (sub_18AF4FB80(v414) == 1)
  {
    v31 = 0;
    v32 = 0;
    v22 = 0;
    v23 = 0;
    v25 = 0;
    v26 = 0;
    v33 = 0;
    v34 = 0.0;
    v35 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v21 = 1;
    LOBYTE(v251) = 1;
    LOBYTE(v308[0]) = 1;
    LOBYTE(v380[0]) = 1;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v17 = 0;
    v18 = 0;
    v24 = 1;
    v27 = 1;
    v30 = 0;
  }

  else
  {
    v406 = v412;
    v407 = v413;
    v404 = v410;
    v405 = v411;
    v402 = v408;
    v403 = v409;
    v32 = v216;
    v31 = v217;
    v33 = v215;
    v35 = v213;
    v34 = v214;
  }

  v387 = v406;
  v388 = v407;
  v392 = v404;
  v393 = v405;
  v397 = v402;
  v398 = v403;
  v380[0] = v34;
  v380[1] = v35;
  v380[2] = v11;
  v380[3] = v12;
  v380[4] = v13;
  v380[5] = v14;
  v380[6] = v15;
  v381 = v33;
  v382 = v17;
  v383 = v18;
  v384 = v31;
  v385 = v32;
  v386 = v21;
  v389 = v22;
  v390 = v23;
  v391 = v24;
  v394 = v25;
  v395 = v26;
  v396 = v27;
  v399 = 0;
  v400 = v221;
  v401 = v30;
  sub_18AF6B53C(v380);
  if (*(v3 + 308))
  {
    v36 = 0uLL;
    v37 = 0.0;
    v38 = 0uLL;
  }

  else
  {
    v37 = *(v3 + 304);
    v38 = *(v3 + 288);
    v36 = *(v3 + 256);
  }

  LODWORD(v39) = v225;
  v40 = (v3 + 328);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v36), vceqzq_f64(v38))))) & 1) != 0 || v37 != 0.0)
  {
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v36 = 0uLL;
    v37 = 0.0;
    v38 = 0uLL;
  }

  *(v3 + 256) = v36;
  *(v3 + 272) = 0;
  *(v3 + 280) = 0;
  *(v3 + 288) = v38;
  *(v3 + 304) = v37;
  *(v3 + 308) = v41;
  v42 = *(v3 + 497);
  if (v42 == 2)
  {
    LOBYTE(v42) = 0;
    v43 = 1;
    LOBYTE(v251) = 1;
    LOBYTE(v308[0]) = 1;
    LOBYTE(v366[0]) = 1;
    v44 = 0uLL;
    v45 = 0;
    v46 = 0uLL;
    v47 = 0;
    v48 = 1;
    v49 = 1;
    v50 = 0uLL;
    v51 = 0uLL;
  }

  else
  {
    v48 = *(v3 + 476);
    v50 = *(v3 + 460);
    v43 = *(v3 + 456);
    v51 = *(v3 + 440);
    v45 = *(v3 + 432);
    v46 = *(v3 + 416);
    v47 = *(v3 + 408);
    v49 = *(v3 + 496);
    v44 = *(v3 + 480);
    v300 = *(v3 + 459);
    v299 = *(v3 + 457);
    v298 = *(v3 + 479);
    v297 = *(v3 + 477);
  }

  v371 = v299;
  v372 = v300;
  v375 = v297;
  v376 = v298;
  v366[1] = 0;
  v366[0] = 0;
  v367 = v46;
  v366[2] = v47;
  v368 = v45;
  v369 = v51;
  v370 = v43;
  v373 = v50;
  v374 = v48;
  v377 = v44;
  v378 = v49;
  v379 = v42;
  sub_18AF6B1A4(v366);
  if (*(v3 + 872))
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
  }

  else
  {
    v58 = *(v3 + 864);
    v59 = *(v3 + 868);
    v56 = *(v3 + 856);
    v57 = *(v3 + 860);
    v60 = *(v3 + 848);
    v55 = *(v3 + 844);
    v53 = *(v3 + 832);
    v54 = *(v3 + 836);
    v52 = *(v3 + 824);
  }

  v360[0] = v52;
  v360[1] = 0;
  v360[2] = v53;
  v360[3] = v54;
  v360[4] = 0;
  v360[5] = v55;
  v361 = v60;
  v362 = v56;
  v363 = v57;
  v364 = v58;
  v365 = v59;
  sub_18AF6B6B4(v360);
  if ((v39 & 0x800000) == 0)
  {
    v61 = *(v3 + 520);
    v62 = *(v3 + 524);
    v63 = *(v3 + 528);
    v64 = *(v3 + 536);
    v65 = *(v3 + 544);
    v66 = *(v3 + 548);
    v67 = *(v3 + 552);
    v68 = *(v3 + 560);
    v69 = *(v3 + 568);
    v70 = *(v3 + 576);
    v71 = *(v3 + 580);
    v72 = *(v3 + 584);
    v73 = *(v3 + 588);
    v74 = *(v3 + 596);
    v75 = *(v3 + 604);
    v76 = *(v3 + 605);
    BYTE2(v301) = *(v3 + 607);
    LOWORD(v301) = v76;
    v77 = *(v3 + 608);
    v78 = *(v3 + 616);
    v79 = *(v3 + 624);
    v249 = *(v3 + 625);
    v250 = *(v3 + 627);
    v80 = *(v3 + 628);
    v81 = *(v3 + 636);
    v82 = *(v3 + 644);
    v248 = *(v3 + 647);
    v247 = *(v3 + 645);
    v83 = *(v3 + 648);
    v84 = *(v3 + 656);
    v85 = *(v3 + 664);
    v86 = *(v3 + 668);
    v87 = *(v3 + 672);
    v88 = *(v3 + 680);
    v89 = *(v3 + 688);
    v90 = *(v3 + 696);
    v91 = *(v3 + 700);
    v92 = *(v3 + 704);
    v93 = *(v3 + 708);
    v246 = *(v3 + 727);
    v245 = *(v3 + 725);
    v244 = *(v3 + 747);
    v243 = *(v3 + 745);
    v242 = *(v3 + 767);
    v241 = *(v3 + 765);
    v259 = *(v3 + 607);
    v94 = *(v3 + 716);
    v258 = *(v3 + 605);
    v264 = *(v3 + 627);
    v95 = *(v3 + 724);
    v263 = *(v3 + 625);
    v269 = *(v3 + 647);
    v96 = *(v3 + 728);
    v268 = *(v3 + 645);
    v284 = *(v3 + 727);
    v97 = *(v3 + 736);
    v283 = *(v3 + 725);
    v289 = *(v3 + 747);
    v98 = *(v3 + 744);
    v288 = *(v3 + 745);
    v99 = *(v3 + 748);
    v293 = *(v3 + 765);
    v100 = *(v3 + 756);
    v214 = v74;
    v215 = v73;
    *&v256[1] = v73;
    *&v256[3] = v74;
    v212 = v81;
    v213 = v80;
    v265 = v80;
    v266 = v81;
    v211 = v93;
    v280 = v93;
    v197 = v94;
    v281 = v94;
    v194 = v100;
    v195 = v99;
    v290 = v99;
    v291 = v100;
    v294 = *(v3 + 767);
    v296 = *(v3 + 776);
    v101 = *(v3 + 764);
    v102 = *(v3 + 768);
    v103 = v61;
    v251 = COERCE_DOUBLE(__PAIR64__(v62, v61));
    v221 = v62;
    v104 = v63;
    *&v252 = v63;
    *(&v252 + 1) = v64;
    v105 = v64;
    *&v253 = __PAIR64__(v66, v65);
    LODWORD(v217) = v66;
    v106 = v67;
    *(&v253 + 1) = v67;
    v254 = v68;
    v107 = v68;
    v108 = v69;
    *&v255 = v69;
    v109 = v70;
    *(&v255 + 1) = __PAIR64__(v71, v70);
    v209 = v72;
    v210 = v71;
    v256[0] = v72;
    v257 = v75;
    v204 = v77;
    v260 = v77;
    v261 = v78;
    v196 = v78;
    v207 = v79;
    v262 = v79;
    v203 = v82;
    v267 = v82;
    v39 = v96;
    v205 = v87;
    v206 = v83;
    v270 = v83;
    v271 = v84;
    v208 = v84;
    v272 = v85;
    LODWORD(v216) = v86;
    v273 = v86;
    v274 = v87;
    v275 = v88;
    v201 = v89;
    v202 = v88;
    v276 = v89;
    v199 = v91;
    v200 = v90;
    v277 = v90;
    v278 = v91;
    v198 = v92;
    v279 = v92;
    v282 = v95;
    v285 = v96;
    v110 = v97;
    v286 = v97;
    v287 = v98;
    v292 = v101;
    v295 = v102;
    if (sub_18AF4FB9C(&v251) == 1)
    {
      v111 = 0;
      v112 = 0.0;
      v113 = 0;
      v114 = 0;
      v115 = 0.0;
      v116 = 0;
      v117 = 0;
      v118 = 0;
      v39 = 0;
      v110 = 0;
      v119 = 0;
      v120 = 0;
      v104 = 0;
      v103 = 0;
      v105 = 0;
      v106 = 0;
      v107 = 0;
      v108 = 0;
      v109 = 0;
      v121 = 0;
      v122 = 0;
      v75 = 1;
      LOBYTE(v308[0]) = 1;
      v228 = 1;
      v123 = 0;
      v124 = 0;
      v125 = 0;
      v227 = 1;
      v126 = 1;
      v127 = 1;
      v128 = 0;
      v129 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v95 = 1;
      v98 = 1;
      v101 = 1;
      v102 = 0;
    }

    else
    {
      v239 = v301;
      v240 = BYTE2(v301);
      v237 = v249;
      v238 = v250;
      v235 = v247;
      v236 = v248;
      v234 = v246;
      v233 = v245;
      v232 = v244;
      v231 = v243;
      v230 = v242;
      v229 = v241;
      v112 = v214;
      v111 = v215;
      v113 = v204;
      v114 = v196;
      v118 = v197;
      v116 = v212;
      v115 = v213;
      v117 = v211;
      v122 = v209;
      v121 = v210;
      v124 = v208;
      v126 = v207;
      v125 = v205;
      v123 = v206;
      v127 = v203;
      v129 = v201;
      v128 = v202;
      v131 = v199;
      v130 = v200;
      v132 = v198;
      v120 = v194;
      v119 = v195;
    }

    v308[0] = v103;
    v308[1] = v221;
    v309 = v104;
    v310 = v105;
    v311 = 0;
    v312 = v217;
    v313 = v106;
    v314 = v107;
    v315 = v108;
    v316 = v109;
    v317 = v121;
    v318 = v122;
    v319 = v111;
    v320 = v112;
    v321 = v75;
    v322 = v239;
    v323 = v240;
    v324 = v113;
    v325 = v114;
    v326 = v126;
    v328 = v238;
    v327 = v237;
    v329 = v115;
    v330 = v116;
    v331 = v127;
    v333 = v236;
    v332 = v235;
    v334 = v123;
    v335 = v124;
    v336 = 0;
    v337 = v216;
    v338 = v125;
    v339 = v128;
    v340 = v129;
    v341 = v130;
    v342 = v131;
    v343 = v132;
    v344 = v117;
    v345 = v118;
    v346 = v95;
    v348 = v234;
    v347 = v233;
    v349 = v39;
    v350 = v110;
    v351 = v98;
    v353 = v232;
    v352 = v231;
    v354 = v119;
    v355 = v120;
    v356 = v101;
    v358 = v230;
    v357 = v229;
    v359 = v102;
    sub_18AF6B330(v308);
    LOBYTE(v39) = v225;
  }

  v133 = vdup_n_s32((v39 & 0x10) == 0);
  v134.i64[0] = v133.u32[0];
  v134.i64[1] = v133.u32[1];
  LOBYTE(v251) = 1;
  LOBYTE(v249) = 1;
  v301 = xmmword_18AFDBC90;
  v302 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v134, 0x3FuLL)), xmmword_18AFDBC80, vdupq_n_s64(0x4069000000000000uLL));
  v303 = 0;
  v304 = 0;
  v305 = 1;
  v306 = 0;
  v307 = 1;
  v135 = v226 + *(_s11EnvironmentVMa() + 44);
  if (*(v135 + 25))
  {
    v136 = 48.0;
  }

  else if (*(v135 + 24))
  {
    v136 = *v135;
    if (*(v135 + 8))
    {
      v136 = 48.0;
    }
  }

  else
  {
    v136 = *(v135 + 16);
  }

  sub_18AF6E014(v136);
  v251 = v137 + v137;
  v252 = 0u;
  v253 = 0u;
  v254 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v255 = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

  *v256 = _Q0;
  sub_18AF6B27C(&v251);
  v144 = v222;
  v143 = v223;
  v145 = v224;
  (*(v223 + 104))(v222, *MEMORY[0x1E697DBA8], v224);
  sub_18AE84004();
  v146 = sub_18AFCDDF4();
  result = (*(v143 + 8))(v144, v145);
  if ((v39 & 0x10) != 0)
  {
    v156 = *(v3 + 312);
    v157 = *(v3 + 324);
    v158 = *v40;
    v159 = *(v3 + 344);
    v160 = *(v3 + 365) | (*(v3 + 367) << 16);
    if (v146)
    {
      if (*(v3 + 385))
      {
        v161 = 0;
        v162 = 0;
        v163 = 0;
        v159 = 1;
        LOBYTE(v249) = 1;
        LOBYTE(v247) = 1;
        LOBYTE(v245) = 1;
        v158 = 0uLL;
        v156 = 0.0;
        v164 = -0.05;
        v165 = 0.0;
        v157 = 0.0;
        v166 = 1;
        v167 = 1;
        v168 = 0uLL;
      }

      else
      {
        v165 = *(v3 + 320);
        v167 = *(v3 + 384);
        v168 = *(v3 + 368);
        v166 = *(v3 + 364);
        v162 = *(v3 + 345) | ((*(v3 + 349) | (*(v3 + 351) << 16)) << 32);
        v161 = *(v3 + 352);
        v163 = *(v3 + 360);
        v164 = *(v3 + 316) + -0.05;
        if (v156 == 0.0 && v164 == 0.0 && v165 == 0.0 && v157 == 0.0 && (v159 & 1) != 0 && (v166 & 1) != 0 && (*(v3 + 384) & 1) != 0)
        {
          v167 = 0;
          v182 = 0;
          v161 = 0;
          v183 = 0;
          v184 = 0;
          v185 = 0;
          v158 = 0uLL;
          v168 = 0uLL;
          v186 = 1;
LABEL_48:
          *(v3 + 312) = v185;
          *(v3 + 320) = v184;
          *v40 = v158;
          *(v3 + 344) = v183;
          *(v3 + 352) = v161;
          *(v3 + 360) = v182;
          *(v3 + 368) = v168;
          *(v3 + 384) = v167;
LABEL_59:
          *(v3 + 385) = v186;
          return result;
        }
      }

      v186 = 0;
      v187 = v163;
      result = LODWORD(v165);
      v185 = LODWORD(v156) | (LODWORD(v164) << 32);
      v184 = LODWORD(v165) | (LODWORD(v157) << 32);
      v182 = (v160 << 40) | (v166 << 32) | v187;
      v183 = v159 | (v162 << 8);
      goto LABEL_48;
    }

    if (*(v3 + 385))
    {
      v174 = 0;
      v175 = 0;
      v176 = 0;
      v177 = 1;
      LOBYTE(v249) = 1;
      LOBYTE(v247) = 1;
      LOBYTE(v245) = 1;
      v158 = 0uLL;
      v157 = 0.0;
      v178 = -0.05;
      v179 = 1;
      v159 = 1;
      v180 = 0.0;
      v156 = 0.0;
      v181 = 0uLL;
    }

    else
    {
      v180 = *(v3 + 316);
      v177 = *(v3 + 384);
      v181 = *(v3 + 368);
      v179 = *(v3 + 364);
      v175 = *(v3 + 345) | ((*(v3 + 349) | (*(v3 + 351) << 16)) << 32);
      v174 = *(v3 + 352);
      v176 = *(v3 + 360);
      v178 = *(v3 + 320) + -0.05;
      if (v156 == 0.0 && v180 == 0.0 && v178 == 0.0 && v157 == 0.0 && (v159 & 1) != 0 && (v179 & 1) != 0 && (*(v3 + 384) & 1) != 0)
      {
        v188 = 0;
        v189 = 0;
        v190 = 0;
        v174 = 0;
        v191 = 0;
        v177 = 0;
        v158 = 0uLL;
        v181 = 0uLL;
        v186 = 1;
LABEL_58:
        *(v3 + 312) = v188;
        *(v3 + 320) = v189;
        *v40 = v158;
        *(v3 + 344) = v190;
        *(v3 + 352) = v174;
        *(v3 + 360) = v191;
        *(v3 + 368) = v181;
        *(v3 + 384) = v177;
        goto LABEL_59;
      }
    }

    v186 = 0;
    v192 = v176;
    result = LODWORD(v178);
    v188 = LODWORD(v156) | (LODWORD(v180) << 32);
    v189 = LODWORD(v178) | (LODWORD(v157) << 32);
    v191 = (v160 << 40) | (v179 << 32) | v192;
    v190 = v159 | (v175 << 8);
    goto LABEL_58;
  }

  (*(v218 + 104))(v220, *MEMORY[0x1E69814D8], v219);
  if (v146)
  {
    v148 = 1028443341;
    result = sub_18AFCCDE4();
    v151.i64[0] = v149;
    v151.i64[1] = v150;
    v153.i32[1] = v152;
    v154 = vorrq_s8(vshll_n_s32(v153, 0x20uLL), v151);
    LOBYTE(v249) = 0;
    LOBYTE(v247) = 1;
    LOBYTE(v245) = 1;
    v155 = 1061997773;
  }

  else
  {
    result = sub_18AFCCDE4();
    v171.i64[0] = v169;
    v171.i64[1] = v170;
    v173.i32[1] = v172;
    v154 = vorrq_s8(vshll_n_s32(v173, 0x20uLL), v171);
    LOBYTE(v249) = 0;
    LOBYTE(v247) = 1;
    LOBYTE(v245) = 1;
    v155 = 1064514355;
    v148 = 1045220557;
  }

  LOBYTE(v249) = 0;
  *(v3 + 312) = 1065353216;
  *(v3 + 316) = v148;
  *(v3 + 320) = v155;
  *(v3 + 324) = 1065353216;
  *v40 = v154;
  *(v3 + 344) = 0;
  *(v3 + 356) = 0;
  *(v3 + 348) = 0;
  *(v3 + 364) = 1;
  *(v3 + 368) = 0;
  *(v3 + 376) = 0;
  *(v3 + 384) = 1;
  return result;
}

uint64_t sub_18AF4DFF0(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v5 = v4;
  v9 = sub_18AFCBB34();
  v332 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v330 = &v286 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + 308))
  {
    v12 = 0uLL;
    v13 = 0.0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  else
  {
    v14 = *(v5 + 272);
    v15 = *(v5 + 288);
    v12 = *(v5 + 256);
    v13 = *(v5 + 304) * 0.7;
  }

  v16 = (v5 + 328);
  v333 = v10;
  v331 = a2;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v12), vceqzq_f64(v14))))) & 1) == 0 && *&v15 == 0.0 && *(&v15 + 1) == 0.0 && v13 == 0.0)
  {
    v17 = 1;
    v12 = 0uLL;
    v13 = 0.0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  else
  {
    v17 = 0;
  }

  *(v5 + 256) = v12;
  *(v5 + 272) = v14;
  *(v5 + 288) = v15;
  *(v5 + 304) = v13;
  *(v5 + 308) = v17;
  v18 = *(v5 + 497);
  if (v18 == 2)
  {
    LOBYTE(v18) = 0;
    v19 = 0uLL;
    v20 = 1;
    LOBYTE(v421) = 1;
    LOBYTE(v361) = 1;
    LOBYTE(v597[0]) = 1;
    v21 = 0uLL;
    v22 = 0;
    v23 = 0uLL;
    v24 = 0;
    v25 = 1;
    v26 = 1;
    v27 = 0uLL;
    v28 = 0uLL;
  }

  else
  {
    v25 = *(v5 + 476);
    v27 = *(v5 + 460);
    v20 = *(v5 + 456);
    v22 = *(v5 + 432);
    v29 = *(v5 + 424);
    v28 = *(v5 + 440);
    v30 = *(v5 + 416);
    v24 = *(v5 + 408);
    v21 = *(v5 + 392);
    v26 = *(v5 + 496);
    v19 = *(v5 + 480);
    v500 = *(v5 + 459);
    v499 = *(v5 + 457);
    v31 = *(v5 + 477);
    *&v23 = v30 * 0.5;
    DWORD1(v23) = *(v5 + 420);
    v498 = *(v5 + 479);
    v497 = v31;
    *(&v23 + 1) = v29;
  }

  v661 = v499;
  v662 = v500;
  v665 = v497;
  v666 = v498;
  v655 = v21;
  v656 = v24;
  v657 = v23;
  v658 = v22;
  v659 = v28;
  v660 = v20;
  v663 = v27;
  v664 = v25;
  v667 = v19;
  v668 = v26;
  v669 = v18;
  sub_18AF6B1A4(&v655);
  if (*(v5 + 248))
  {
    v32 = 0uLL;
    v33 = 0;
    v34 = 0uLL;
    v35 = 0.0;
    v36 = 0;
    v37 = 0uLL;
  }

  else
  {
    v33 = *(v5 + 240);
    v34 = *(v5 + 224);
    v36 = *(v5 + 216);
    v37 = *(v5 + 200);
    v32 = *(v5 + 184);
    v35 = *(v5 + 176) + *(v5 + 176);
  }

  v649 = v35;
  v650 = v32;
  v651 = v37;
  v652 = v36;
  v653 = v34;
  v654 = v33;
  sub_18AF6B27C(&v649);
  v334 = (v5 + 328);
  if (a4)
  {
    LODWORD(v328) = a3;
    v38 = *(v5 + 520);
    LODWORD(v329) = *(v5 + 524);
    v39 = *(v5 + 528);
    v40 = *(v5 + 536);
    v41 = *(v5 + 544);
    v42 = *(v5 + 548);
    v43 = *(v5 + 552);
    v44 = *(v5 + 560);
    v45 = *(v5 + 568);
    v46 = *(v5 + 576);
    v47 = *(v5 + 580);
    v48 = *(v5 + 584);
    v323 = (v5 + 588);
    v49 = *(v5 + 588);
    v322 = (v5 + 596);
    v50 = *(v5 + 596);
    v51 = *(v5 + 604);
    v52 = *(v5 + 605);
    BYTE2(v523[0]) = *(v5 + 607);
    LOWORD(v523[0]) = v52;
    v53 = *(v5 + 608);
    v54 = *(v5 + 616);
    v55 = *(v5 + 624);
    LOWORD(v501[0]) = *(v5 + 625);
    BYTE2(v501[0]) = *(v5 + 627);
    v321 = (v5 + 628);
    v56 = *(v5 + 628);
    v320 = (v5 + 636);
    v57 = *(v5 + 636);
    v58 = *(v5 + 644);
    v496 = *(v5 + 647);
    v495 = *(v5 + 645);
    v59 = *(v5 + 648);
    v60 = *(v5 + 656);
    v61 = *(v5 + 664);
    v62 = *(v5 + 668);
    v63 = *(v5 + 672);
    v64 = *(v5 + 680);
    v65 = *(v5 + 688);
    v66 = *(v5 + 696);
    v67 = *(v5 + 700);
    v68 = *(v5 + 704);
    v319 = (v5 + 708);
    v69 = *(v5 + 708);
    v318 = (v5 + 716);
    v70 = *(v5 + 716);
    v71 = *(v5 + 724);
    v494 = *(v5 + 727);
    v493 = *(v5 + 725);
    v72 = *(v5 + 728);
    v73 = *(v5 + 736);
    v311 = *(v5 + 744);
    v492 = *(v5 + 747);
    v491 = *(v5 + 745);
    v484 = *(v5 + 767);
    v483 = *(v5 + 765);
    v435 = *(v5 + 607);
    v326 = (v5 + 625);
    v327 = (v5 + 605);
    v434 = *(v5 + 605);
    v440 = *(v5 + 627);
    v439 = *(v5 + 625);
    v445 = *(v5 + 647);
    *&v324 = v5 + 725;
    v325 = (v5 + 645);
    v444 = *(v5 + 645);
    v460 = *(v5 + 727);
    v459 = *(v5 + 725);
    v465 = *(v5 + 747);
    v314 = (v5 + 745);
    v464 = *(v5 + 745);
    v470 = *(v5 + 767);
    v312 = (v5 + 765);
    v469 = *(v5 + 765);
    v472 = *(v5 + 776);
    v74 = *(v5 + 768);
    HIDWORD(v286) = v38;
    v421 = __PAIR64__(v329, v38);
    v75 = v39;
    v422 = v39;
    v423 = v40;
    v76 = v40;
    v77 = v41;
    v424 = __PAIR64__(v42, LODWORD(v41));
    LODWORD(v317) = v42;
    v78 = v43;
    v425 = v43;
    v426 = v44;
    v79 = v44;
    v80 = v45;
    v427 = v45;
    v81 = v46;
    v428 = v46;
    v303 = v48;
    LODWORD(v304) = v47;
    v429 = v47;
    v430 = v48;
    v309 = v50;
    v310 = v49;
    v431 = v49;
    v432 = v50;
    v300 = v51;
    v433 = v51;
    v307 = v54;
    v308 = v53;
    v436 = v53;
    v437 = v54;
    v298 = v55;
    v438 = v55;
    v305 = v57;
    v306 = *&v56;
    v441 = v56;
    v442 = v57;
    v296 = v58;
    v443 = v58;
    v297 = v59;
    v446 = v59;
    v447 = v60;
    v295 = v60;
    v294 = v61;
    v448 = v61;
    LODWORD(v316) = v62;
    v449 = v62;
    v292 = v64;
    v293 = v63;
    v450 = v63;
    v451 = v64;
    v291 = v65;
    v452 = v65;
    v289 = v67;
    v290 = v66;
    v453 = v66;
    v454 = v67;
    v288 = v68;
    v455 = v68;
    v301 = v70;
    v302 = v69;
    v456 = v69;
    v457 = v70;
    v287 = v71;
    v458 = v71;
    v82 = v311;
    v299 = v72;
    v461 = v72;
    v462 = v73;
    v83 = v73;
    v463 = v311;
    v315 = (v5 + 748);
    v84 = *(v5 + 748);
    v466 = v84;
    v313 = (v5 + 756);
    v85 = *(v5 + 756);
    v467 = v85;
    v86 = *(v5 + 764);
    v468 = v86;
    v471 = v74;
    v87 = sub_18AF4FB9C(&v421);
    if (v87 == 1)
    {
      v88 = 0;
      v89 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0.0;
      v95 = 0;
      v96 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v75 = 0;
      v97 = 0;
      v76 = 0;
      v98 = 0.0;
      v78 = 0.0;
      v79 = 0.0;
      v80 = 0.0;
      v81 = 0;
      v99 = 0;
      v100 = 0;
      v101 = 0;
      LOBYTE(v361) = 1;
      LOBYTE(v597[0]) = 1;
      v102 = 0;
      v103 = 0;
      v104 = 0;
      LOBYTE(v545[0]) = 1;
      v105 = 1;
      v106 = 1;
      v107 = 0;
      v108 = 0;
      v109 = 0;
      v110 = 0;
      v111 = 0;
      v112 = 1;
      v82 = 1;
      v86 = 1;
      v74 = 0;
    }

    else
    {
      v481 = LOWORD(v523[0]);
      v482 = BYTE2(v523[0]);
      v479 = LOWORD(v501[0]);
      v480 = BYTE2(v501[0]);
      v419 = v495;
      v420 = v496;
      v418 = v494;
      v417 = v493;
      v416 = v492;
      v415 = v491;
      v414 = v484;
      v98 = v77 * 0.4;
      v413 = v483;
      v89 = v309;
      v88 = v310;
      v91 = v307;
      v90 = v308;
      v97 = HIDWORD(v286);
      v93 = v305;
      v92 = v306;
      v100 = v303;
      v99 = v304;
      v95 = v301;
      v94 = v302;
      LOBYTE(v87) = v300;
      v96 = v299;
      v105 = v298;
      v101 = v297;
      v106 = v296;
      v102 = v295;
      v103 = v294;
      v107 = v292;
      v104 = v293;
      v108 = v291;
      v110 = v289;
      v109 = v290;
      v111 = v288;
      v112 = v287;
    }

    v611 = v481;
    v612 = v482;
    v616 = v479;
    v617 = v480;
    v622 = v420;
    v621 = v419;
    v637 = v418;
    v636 = v417;
    v642 = v416;
    v641 = v415;
    v647 = v414;
    v646 = v413;
    v597[0] = v97;
    v597[1] = v329;
    v598 = v75;
    v599 = v76;
    v600 = v98;
    v601 = v317;
    v602 = v78;
    v603 = v79;
    v604 = v80;
    v605 = v81;
    v606 = v99;
    v607 = v100;
    v608 = v88;
    v609 = v89;
    v610 = v87;
    v613 = v90;
    v614 = v91;
    v615 = v105;
    v618 = v92;
    v619 = v93;
    v620 = v106;
    v623 = v101;
    v624 = v102;
    v625 = v103;
    v626 = v316;
    v627 = v104;
    v628 = v107;
    v629 = v108;
    v630 = v109;
    v631 = v110;
    v632 = v111;
    v633 = v94;
    v634 = v95;
    v635 = v112;
    v638 = v96;
    v639 = v83;
    v640 = v82;
    v643 = v84;
    v644 = v85;
    v645 = v86;
    v648 = v74;
    sub_18AF6B330(v597);
    v113 = *(v5 + 520);
    v114 = *(v5 + 524);
    v115 = *(v5 + 528);
    v116 = *(v5 + 536);
    v117 = *(v5 + 544);
    v118 = *(v5 + 548);
    v119 = *(v5 + 552);
    v120 = *(v5 + 560);
    v121 = *(v5 + 568);
    v122 = *(v5 + 576);
    v123 = *(v5 + 580);
    v124 = *(v5 + 584);
    v125 = *v323;
    v126 = *v322;
    v127 = *(v5 + 604);
    v359 = *v327;
    v360 = *(v327 + 2);
    v128 = *(v5 + 608);
    v129 = *(v5 + 616);
    v130 = *(v5 + 624);
    v357 = *v326;
    v358 = *(v326 + 2);
    v131 = *v321;
    v132 = *v320;
    v133 = *(v5 + 644);
    v355 = *v325;
    v356 = *(v325 + 2);
    v134 = *(v5 + 648);
    v135 = *(v5 + 656);
    v136 = *(v5 + 664);
    v137 = *(v5 + 668);
    v138 = *(v5 + 672);
    v139 = *(v5 + 680);
    v140 = *(v5 + 688);
    v141 = *(v5 + 696);
    v142 = *(v5 + 700);
    v143 = *(v5 + 704);
    v144 = *v319;
    v145 = *v318;
    v146 = *(v5 + 724);
    v354 = *(*&v324 + 2);
    v353 = **&v324;
    v147 = *(v5 + 728);
    v148 = *(v5 + 736);
    v149 = *(v5 + 744);
    v352 = *(v314 + 2);
    v351 = *v314;
    v150 = *v315;
    v151 = *v313;
    LODWORD(v321) = *(v5 + 764);
    v350 = *(v312 + 2);
    v349 = *v312;
    v152 = *(v5 + 768);
    v153 = *(v5 + 776);
    v361 = __PAIR64__(v114, v113);
    LODWORD(v323) = v114;
    v362 = v115;
    v363 = v116;
    v364 = __PAIR64__(v118, v117);
    LODWORD(v322) = v118;
    v365 = v119;
    v366 = v120;
    v302 = v121;
    v367 = v121;
    v300 = v122;
    LODWORD(v301) = v123;
    v368 = v122;
    v369 = v123;
    v303 = v124;
    v370 = v124;
    v313 = v125;
    v371 = v125;
    v315 = v126;
    v316 = v128;
    v372 = v126;
    v298 = v130;
    LODWORD(v299) = v127;
    v373 = v127;
    LOWORD(v114) = *v327;
    v375 = *(v327 + 2);
    v374 = v114;
    v376 = v128;
    v377 = v129;
    v317 = v129;
    v318 = v131;
    v378 = v130;
    LOWORD(v114) = *v326;
    v380 = *(v326 + 2);
    v379 = v114;
    v381 = v131;
    v319 = v132;
    v382 = v132;
    v383 = v133;
    LOWORD(v114) = *v325;
    v385 = *(v325 + 2);
    v384 = v114;
    v304 = v134;
    v305 = v135;
    v386 = v134;
    v387 = v135;
    v388 = v136;
    LODWORD(v329) = v137;
    v389 = v137;
    v306 = v138;
    v307 = v139;
    v390 = v138;
    v391 = v139;
    v308 = v140;
    v392 = v140;
    LODWORD(v309) = v141;
    v393 = v141;
    LODWORD(v310) = v142;
    v394 = v142;
    v311 = v143;
    v395 = v143;
    v320 = v144;
    v396 = v144;
    v325 = v145;
    v326 = v147;
    v397 = v145;
    v398 = v146;
    LOWORD(v114) = **&v324;
    v400 = *(*&v324 + 2);
    v399 = v114;
    v401 = v147;
    v402 = v148;
    v327 = v148;
    LODWORD(v324) = v149;
    v403 = v149;
    v154 = v321;
    LOWORD(v114) = *v314;
    v405 = *(v314 + 2);
    v404 = v114;
    v155 = v150;
    v406 = v150;
    v156 = v151;
    v407 = v151;
    v408 = v321;
    LOWORD(v114) = *v312;
    v410 = *(v312 + 2);
    v409 = v114;
    v157 = v152;
    v411 = v152;
    v412 = v153;
    if (sub_18AF4FB9C(&v361) == 1)
    {
      v156 = 0;
      v155 = 0;
      v158 = 0;
      v159 = 0;
      v160 = 0;
      v161 = 0;
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v165 = 0;
      v166 = 0;
      v167 = 0;
      v168 = 0;
      v157 = 0;
      v169 = 0;
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v173 = 0;
      v174 = 0.0;
      v175 = 0;
      v176 = 0;
      v177 = 0;
      v154 = 1;
      LOBYTE(v545[0]) = 1;
      v336 = 1;
      v178 = 0;
      v179 = 0;
      v180 = 0.0;
      v335 = 1;
      v181 = 1;
      v146 = 1;
      v133 = 1;
      v182 = 1;
      v183 = 1;
      v120 = 0.0;
      v119 = 0.0;
      v117 = 0;
      v116 = 0;
      v115 = 0;
      v113 = 0;
    }

    else
    {
      v347 = v359;
      v348 = v360;
      v345 = v357;
      v346 = v358;
      v343 = v355;
      v344 = v356;
      v342 = v354;
      v341 = v353;
      v340 = v352;
      v339 = v351;
      v338 = v350;
      v174 = v136 * 0.4;
      v337 = v349;
      v159 = v326;
      v158 = v327;
      v160 = v325;
      v162 = v319;
      v161 = v320;
      v164 = v317;
      v163 = v318;
      v166 = v315;
      v165 = v316;
      v167 = v313;
      v168 = v311;
      v169 = v310;
      v170 = v309;
      v172 = v307;
      v171 = v308;
      v175 = v305;
      v173 = v306;
      v176 = v304;
      v177 = v303;
      v180 = v302;
      v179 = v300;
      v178 = v301;
      v181 = LOBYTE(v324);
      v182 = v298;
      v183 = v299;
    }

    v16 = v334;
    v545[0] = v113;
    v545[1] = v323;
    v546 = v115;
    v547 = v116;
    v548 = v117;
    v549 = v322;
    v550 = v119;
    v551 = v120;
    v552 = v180;
    v553 = v179;
    v554 = v178;
    v555 = v177;
    v556 = v167;
    v557 = v166;
    v558 = v183;
    v559 = v347;
    v560 = v348;
    v561 = v165;
    v562 = v164;
    v563 = v182;
    v565 = v346;
    v564 = v345;
    v566 = v163;
    v567 = v162;
    v568 = v133;
    v570 = v344;
    v569 = v343;
    v571 = v176;
    v572 = v175;
    v573 = v174;
    v574 = v329;
    v575 = v173;
    v576 = v172;
    v577 = v171;
    v578 = v170;
    v579 = v169;
    v580 = v168;
    v581 = v161;
    v582 = v160;
    v583 = v146;
    v585 = v342;
    v584 = v341;
    v586 = v159;
    v587 = v158;
    v588 = v181;
    v590 = v340;
    v589 = v339;
    v591 = v155;
    v592 = v156;
    v593 = v154;
    v595 = v338;
    v594 = v337;
    v596 = v157;
    sub_18AF6B330(v545);
    LOBYTE(a3) = v328;
  }

  if (a3)
  {
    v184 = *(v5 + 24);
    v185 = *(v5 + 32);
    v186 = *(v5 + 40);
    v187 = *(v5 + 48);
    v188 = *(v5 + 56);
    v189 = *(v5 + 64);
    v190 = *(v5 + 72);
    v191 = *(v5 + 80);
    v192 = *(v5 + 84);
    v193 = *(v5 + 88);
    v194 = *(v5 + 92);
    v195 = *(v5 + 100);
    v196 = *(v5 + 108);
    v197 = (v5 + 109);
    v495 = *(v5 + 109);
    v496 = *(v5 + 111);
    v198 = *(v5 + 112);
    v199 = *(v5 + 120);
    v200 = *(v5 + 128);
    v201 = (v5 + 129);
    v493 = *(v5 + 129);
    v494 = *(v5 + 131);
    v202 = *(v5 + 132);
    v203 = *(v5 + 140);
    v204 = *(v5 + 148);
    v205 = (v5 + 149);
    v491 = *(v5 + 149);
    v492 = *(v5 + 151);
    v206 = *(v5 + 152);
    v207 = *(v5 + 156);
    v208 = *(v5 + 160);
    v209 = *(v5 + 168);
    v320 = v185;
    v321 = v184;
    v421 = v184;
    v422 = v185;
    v319 = v186;
    v423 = v186;
    v424 = *&v187;
    v425 = v188;
    v426 = v189;
    v427 = v190;
    LODWORD(v322) = v191;
    v428 = v191;
    v429 = v192;
    v430 = v193;
    v327 = v195;
    v328 = v194;
    v431 = v194;
    v432 = v195;
    v433 = v196;
    v435 = *(v5 + 111);
    v434 = *(v5 + 109);
    v325 = v199;
    v326 = v198;
    v436 = v198;
    v437 = v199;
    v438 = v200;
    v440 = *(v5 + 131);
    v439 = *(v5 + 129);
    v323 = v203;
    v324 = v202;
    v441 = v202;
    v442 = v203;
    v443 = v204;
    v444 = *(v5 + 149);
    v445 = *(v5 + 151);
    v446 = __PAIR64__(v207, v206);
    LODWORD(v329) = v207;
    v447 = v208;
    LOBYTE(v448) = v209;
    if (sub_18AF4FB80(&v421) == 1)
    {
      v210 = 0;
      v211 = 0;
      v212 = 0;
      v213 = 0;
      v214 = 0.0;
      v215 = 0;
      v216 = 0;
      v217 = 0.0;
      v218 = 0.0;
      v219 = 0.0;
      v187 = 0.0;
      v188 = 0.0;
      v196 = 1;
      LOBYTE(v361) = 1;
      LOBYTE(v523[0]) = 1;
      LOBYTE(v501[0]) = 1;
      v189 = 0.0;
      v220 = 0.0;
      v192 = 0;
      v193 = 0;
      v200 = 1;
      v204 = 1;
      v206 = 0;
      v208 = 0;
    }

    else
    {
      v489 = v495;
      v490 = v496;
      v487 = v493;
      v488 = v494;
      v485 = v491;
      v220 = v190 * 0.6;
      v486 = v492;
      v211 = v327;
      v210 = v328;
      v213 = v325;
      v212 = v326;
      v215 = v323;
      v214 = v324;
      v216 = v322;
      v218 = *&v320;
      v217 = *&v321;
      v219 = *&v319;
    }

    v523[0] = v217;
    v523[1] = v218;
    v523[2] = v219;
    v523[3] = v187;
    v523[4] = v188;
    v523[5] = v189;
    v523[6] = v220;
    v524 = v216;
    v525 = v192;
    v526 = v193;
    v527 = v210;
    v528 = v211;
    v529 = v196;
    v531 = v490;
    v530 = v489;
    v532 = v212;
    v533 = v213;
    v534 = v200;
    v536 = v488;
    v535 = v487;
    v537 = v214;
    v538 = v215;
    v539 = v204;
    v541 = v486;
    v540 = v485;
    v542 = v206;
    v543 = v329;
    v544 = v208;
    sub_18AF6B53C(v523);
    v221 = *(v5 + 24);
    v222 = *(v5 + 32);
    v223 = *(v5 + 40);
    v224 = *(v5 + 48);
    v225 = *(v5 + 56);
    v226 = *(v5 + 64);
    v227 = *(v5 + 72);
    v228 = *(v5 + 80);
    v229 = *(v5 + 84);
    v230 = *(v5 + 88);
    v231 = *(v5 + 92);
    v232 = *(v5 + 100);
    v233 = *(v5 + 108);
    v483 = *v197;
    v484 = *(v5 + 111);
    v234 = *(v5 + 112);
    v235 = *(v5 + 120);
    v236 = *(v5 + 128);
    v481 = *v201;
    v482 = *(v5 + 131);
    v237 = *(v5 + 132);
    v238 = *(v5 + 140);
    v239 = *(v5 + 148);
    v479 = *v205;
    v480 = *(v5 + 151);
    v240 = *(v5 + 152);
    v241 = *(v5 + 156);
    v242 = *(v5 + 160);
    v243 = *(v5 + 168);
    v323 = v222;
    v324 = *&v221;
    v361 = v221;
    v362 = v222;
    v322 = v223;
    v363 = v223;
    v364 = *&v224;
    v365 = v225;
    v366 = v226;
    v367 = v227;
    LODWORD(v325) = v228;
    v368 = v228;
    v369 = v229;
    v370 = v230;
    v328 = v232;
    v329 = v231;
    v371 = v231;
    v372 = v232;
    v373 = v233;
    v375 = *(v5 + 111);
    v374 = *v197;
    v326 = v235;
    v327 = v234;
    v376 = v234;
    v377 = v235;
    v378 = v236;
    v380 = *(v5 + 131);
    LOWORD(v231) = *v201;
    v244 = v237;
    v379 = v231;
    v381 = v237;
    v245 = v238;
    v382 = v238;
    v383 = v239;
    v384 = *v205;
    v385 = *(v5 + 151);
    v386 = __PAIR64__(v241, LODWORD(v240));
    v246 = v241;
    v387 = v242;
    LOBYTE(v388) = v243;
    if (sub_18AF4FB80(&v361) == 1)
    {
      v247 = 0;
      v248 = 0;
      v249 = 0;
      v250 = 0;
      v244 = 0;
      v245 = 0;
      v251 = 0;
      v252 = 0.0;
      v253 = 0.0;
      v254 = 0.0;
      v224 = 0.0;
      v225 = 0.0;
      v233 = 1;
      LOBYTE(v501[0]) = 1;
      LOBYTE(v419) = 1;
      LOBYTE(v417) = 1;
      v226 = 0.0;
      v227 = 0.0;
      v229 = 0;
      v230 = 0;
      v236 = 1;
      v239 = 1;
      v255 = 0.0;
      v242 = 0;
    }

    else
    {
      v477 = v483;
      v478 = v484;
      v475 = v481;
      v476 = v482;
      v473 = v479;
      v255 = v240 * 0.6;
      v474 = v480;
      v248 = v328;
      v247 = v329;
      v250 = v326;
      v249 = v327;
      v251 = v325;
      v253 = *&v323;
      v252 = v324;
      v254 = *&v322;
    }

    v501[0] = v252;
    v501[1] = v253;
    v501[2] = v254;
    v501[3] = v224;
    v501[4] = v225;
    v501[5] = v226;
    v501[6] = v227;
    v502 = v251;
    v503 = v229;
    v504 = v230;
    v505 = v247;
    v506 = v248;
    v507 = v233;
    v508 = v477;
    v509 = v478;
    v510 = v249;
    v511 = v250;
    v512 = v236;
    v514 = v476;
    v513 = v475;
    v515 = v244;
    v516 = v245;
    v517 = v239;
    v519 = v474;
    v518 = v473;
    v520 = v255;
    v521 = v246;
    v522 = v242;
    sub_18AF6B53C(v501);
    v16 = v334;
  }

  v257 = v332;
  v256 = v333;
  v258 = v330;
  (*(v332 + 104))(v330, *MEMORY[0x1E697DBA8], v333);
  sub_18AE84004();
  v259 = sub_18AFCDDF4();
  result = (*(v257 + 8))(v258, v256);
  v261 = *(v5 + 312);
  v262 = *(v5 + 324);
  v263 = *v16;
  v264 = *(v5 + 344);
  v265 = *(v16 + 37) | (*(v16 + 39) << 16);
  if ((v259 & 1) == 0)
  {
    if (*(v5 + 385))
    {
      v266 = 0;
      v267 = 0;
      v274 = 0;
      v269 = 1;
      LOBYTE(v421) = 1;
      LOBYTE(v361) = 1;
      LOBYTE(v495) = 1;
      v263 = 0uLL;
      v262 = 0.0;
      v275 = -0.07;
      v271 = 1;
      v264 = 1;
      v276 = 0.0;
      v261 = 0.0;
      v273 = 0uLL;
    }

    else
    {
      v276 = *(v5 + 316);
      v269 = *(v5 + 384);
      v273 = *(v5 + 368);
      v271 = *(v5 + 364);
      v267 = *(v16 + 17) | ((*(v16 + 21) | (*(v16 + 23) << 16)) << 32);
      v266 = *(v5 + 352);
      v274 = *(v5 + 360);
      v275 = *(v5 + 320) + -0.07;
      if (v261 == 0.0 && v276 == 0.0 && v275 == 0.0 && v262 == 0.0 && (v264 & 1) != 0 && (v271 & 1) != 0 && (*(v5 + 384) & 1) != 0)
      {
        goto LABEL_52;
      }
    }

    v277 = 0;
    v278 = v274;
    v279 = LODWORD(v261);
    v280 = LODWORD(v276);
    v281 = LODWORD(v275);
    goto LABEL_54;
  }

  if (*(v5 + 385))
  {
    v266 = 0;
    v267 = 0;
    v268 = 0;
    v269 = 1;
    LOBYTE(v421) = 1;
    LOBYTE(v361) = 1;
    LOBYTE(v495) = 1;
    v263 = 0uLL;
    v262 = 0.0;
    v270 = -0.05;
    v271 = 1;
    v264 = 1;
    v272 = 0.0;
    v261 = 0.0;
    v273 = 0uLL;
LABEL_44:
    v277 = 0;
    v278 = v268;
    v279 = LODWORD(v261);
    v280 = LODWORD(v270);
    v281 = LODWORD(v272);
LABEL_54:
    v282 = v279 | (v280 << 32);
    v283 = v281 | (LODWORD(v262) << 32);
    result = v264;
    v285 = (v265 << 40) | (v271 << 32) | v278;
    v284 = result | (v267 << 8);
    goto LABEL_55;
  }

  v272 = *(v5 + 320);
  v269 = *(v5 + 384);
  v273 = *(v5 + 368);
  v271 = *(v5 + 364);
  v267 = *(v16 + 17) | ((*(v16 + 21) | (*(v16 + 23) << 16)) << 32);
  v266 = *(v5 + 352);
  v268 = *(v5 + 360);
  v270 = *(v5 + 316) + -0.05;
  if (v261 != 0.0 || v270 != 0.0 || v272 != 0.0 || v262 != 0.0 || (v264 & 1) == 0 || (v271 & 1) == 0 || (*(v5 + 384) & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_52:
  v282 = 0;
  v283 = 0;
  v284 = 0;
  v266 = 0;
  v285 = 0;
  v269 = 0;
  v263 = 0uLL;
  v273 = 0uLL;
  v277 = 1;
LABEL_55:
  *(v5 + 312) = v282;
  *(v5 + 320) = v283;
  *v16 = v263;
  *(v5 + 344) = v284;
  *(v5 + 352) = v266;
  *(v5 + 360) = v285;
  *(v5 + 368) = v273;
  *(v5 + 384) = v269;
  *(v5 + 385) = v277;
  return result;
}

uint64_t sub_18AF4F4E0()
{
  if (*(v0 + 872))
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v7 = *(v0 + 864);
    v8 = *(v0 + 868);
    v5 = *(v0 + 856);
    v6 = *(v0 + 860);
    v9 = *(v0 + 848);
    v4 = *(v0 + 844);
    v2 = *(v0 + 832);
    v3 = *(v0 + 836);
    v1 = *(v0 + 824);
  }

  v17[0] = v1;
  v17[1] = 0;
  v17[2] = v2;
  v17[3] = v3;
  v17[4] = 0;
  v17[5] = v4;
  v18 = v9;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  result = sub_18AF6B6B4(v17);
  v11 = *(v0 + 304);
  v12 = *(v0 + 308);
  v13 = vdup_n_s32(v12);
  v14.i64[0] = v13.u32[0];
  v14.i64[1] = v13.u32[1];
  v15 = vandq_s8(*(v0 + 288), vcgezq_s64(vshlq_n_s64(v14, 0x3FuLL)));
  if (v12)
  {
    v11 = 0.0;
  }

  if (*v15.i64 == 0.0 && *&v15.i64[1] == 0.0 && v11 == 0.0)
  {
    v16 = 1;
    v15 = 0uLL;
    v11 = 0.0;
  }

  else
  {
    v16 = 0;
  }

  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = v15;
  *(v0 + 304) = v11;
  *(v0 + 308) = v16;
  return result;
}

void *sub_18AF4F5E0()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 524);
  v3 = *(v0 + 528);
  v4 = *(v0 + 536);
  v5 = *(v0 + 544);
  v6 = *(v0 + 548);
  v7 = *(v0 + 552);
  v8 = *(v0 + 560);
  v9 = *(v0 + 568);
  v10 = *(v0 + 576);
  v11 = *(v0 + 580);
  v12 = *(v0 + 584);
  v13 = *(v0 + 588);
  v14 = *(v0 + 596);
  v15 = *(v0 + 604);
  v16 = *(v0 + 605);
  v128 = *(v0 + 607);
  v127 = v16;
  v17 = *(v0 + 608);
  v18 = *(v0 + 616);
  v19 = *(v0 + 624);
  v125 = *(v0 + 625);
  v126 = *(v0 + 627);
  v20 = *(v0 + 628);
  v21 = *(v0 + 636);
  v22 = *(v0 + 644);
  v124 = *(v0 + 647);
  v123 = *(v0 + 645);
  v23 = *(v0 + 648);
  v24 = *(v0 + 656);
  v25 = *(v0 + 664);
  v26 = *(v0 + 668);
  v27 = *(v0 + 672);
  v28 = *(v0 + 680);
  v29 = *(v0 + 688);
  v30 = *(v0 + 696);
  v31 = *(v0 + 700);
  v32 = *(v0 + 704);
  v122 = *(v0 + 727);
  v121 = *(v0 + 725);
  v120 = *(v0 + 747);
  v119 = *(v0 + 745);
  v118 = *(v0 + 767);
  v117 = *(v0 + 765);
  v144 = *(v0 + 607);
  v33 = *(v0 + 708);
  v34 = *(v0 + 716);
  v143 = *(v0 + 605);
  v149 = *(v0 + 627);
  v35 = *(v0 + 724);
  v148 = *(v0 + 625);
  v154 = *(v0 + 647);
  v36 = *(v0 + 728);
  v153 = *(v0 + 645);
  v169 = *(v0 + 727);
  v37 = *(v0 + 736);
  v168 = *(v0 + 725);
  v174 = *(v0 + 747);
  v38 = *(v0 + 744);
  v173 = *(v0 + 745);
  v178 = *(v0 + 765);
  v39 = *(v0 + 748);
  v40 = *(v0 + 756);
  v98 = v14;
  v99 = v13;
  v140 = v13;
  v141 = v14;
  v96 = v21;
  v97 = v20;
  v150 = v20;
  v151 = v21;
  v82 = v34;
  v83 = v33;
  v165 = v33;
  v166 = v34;
  v80 = v40;
  v81 = v39;
  v175 = v39;
  v176 = v40;
  v179 = *(v0 + 767);
  v181 = *(v0 + 776);
  v41 = *(v0 + 764);
  v42 = *(v0 + 768);
  v129[0] = v1;
  v101 = v6;
  v102 = v2;
  v129[1] = v2;
  v43 = v3;
  v130 = v3;
  v44 = v4;
  v131 = v4;
  v45 = v5;
  v132 = v5;
  v133 = v6;
  v46 = v7;
  v134 = v7;
  v47 = v8;
  v135 = v8;
  v48 = v9;
  v136 = v9;
  v49 = v10;
  v137 = v10;
  v94 = v12;
  v95 = v11;
  v138 = v11;
  v139 = v12;
  v142 = v15;
  v50 = v17;
  v145 = v17;
  v51 = v18;
  v146 = v18;
  v89 = v19;
  v147 = v19;
  v152 = v22;
  v93 = v23;
  v155 = v23;
  v90 = v27;
  v91 = v24;
  v156 = v24;
  v92 = v25;
  v157 = v25;
  v100 = v26;
  v158 = v26;
  v159 = v27;
  v87 = v29;
  v88 = v28;
  v160 = v28;
  v161 = v29;
  v85 = v31;
  v86 = v30;
  v162 = v30;
  v163 = v31;
  v84 = v32;
  v164 = v32;
  v167 = v35;
  v52 = v36;
  v170 = v36;
  v53 = v37;
  v171 = v37;
  v172 = v38;
  v177 = v41;
  v180 = v42;
  if (sub_18AF4FB9C(v129) == 1)
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v51 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v52 = 0;
    v53 = 0;
    v61 = 0;
    v62 = 0;
    v45 = 0;
    v43 = 0;
    v44 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v15 = 1;
    __dst[0] = 1;
    LOBYTE(__src[0]) = 1;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    __dst[260] = 1;
    v69 = 1;
    v70 = 1;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v35 = 1;
    v38 = 1;
    v41 = 1;
    v42 = 0;
  }

  else
  {
    v115 = v127;
    v116 = v128;
    v113 = v125;
    v114 = v126;
    v111 = v123;
    v112 = v124;
    v110 = v122;
    v109 = v121;
    v108 = v120;
    v107 = v119;
    v106 = v118;
    v105 = v117;
    v55 = v98;
    v54 = v99;
    v56 = v50;
    v58 = v96;
    v57 = v97;
    v64 = v94;
    v63 = v95;
    v65 = v93;
    v67 = v92;
    v68 = v90;
    v66 = v91;
    v70 = v22;
    v69 = v89;
    v72 = v87;
    v71 = v88;
    v74 = v85;
    v73 = v86;
    v75 = v84;
    v60 = v82;
    v59 = v83;
    v62 = v80;
    v61 = v81;
  }

  v76 = 1176255488;
  LODWORD(__src[0]) = 1065353216;
  HIDWORD(__src[0]) = v102;
  __src[1] = v43;
  __src[2] = v44;
  __src[3] = __PAIR64__(v101, v45);
  __src[4] = v46;
  __src[5] = v47;
  __src[6] = v48;
  __src[7] = __PAIR64__(v63, v49);
  LODWORD(__src[8]) = v64;
  *(&__src[8] + 4) = v54;
  *(&__src[9] + 4) = v55;
  BYTE4(__src[10]) = v15;
  *(&__src[10] + 5) = v115;
  HIBYTE(__src[10]) = v116;
  __src[11] = v56;
  __src[12] = v51;
  LOBYTE(__src[13]) = v69;
  *(&__src[13] + 1) = v113;
  BYTE3(__src[13]) = v114;
  *(&__src[13] + 4) = v57;
  *(&__src[14] + 4) = v58;
  BYTE4(__src[15]) = v70;
  *(&__src[15] + 5) = v111;
  HIBYTE(__src[15]) = v112;
  __src[16] = v65;
  __src[17] = v66;
  __src[18] = __PAIR64__(v100, v67);
  __src[19] = v68;
  __src[20] = v71;
  __src[21] = v72;
  __src[22] = __PAIR64__(v74, v73);
  LODWORD(__src[23]) = v75;
  *(&__src[23] + 4) = v59;
  *(&__src[24] + 4) = v60;
  BYTE4(__src[25]) = v35;
  HIBYTE(__src[25]) = v110;
  *(&__src[25] + 5) = v109;
  __src[26] = v52;
  __src[27] = v53;
  LOBYTE(__src[28]) = v38;
  BYTE3(__src[28]) = v108;
  *(&__src[28] + 1) = v107;
  *(&__src[28] + 4) = v61;
  *(&__src[29] + 4) = v62;
  BYTE4(__src[30]) = v41;
  HIBYTE(__src[30]) = v106;
  *(&__src[30] + 5) = v105;
  __src[31] = v42;
  sub_18AF4FBB8(__src);
  memcpy(__dst, __src, 0x101uLL);
  result = memcpy((v0 + 520), __dst, 0x101uLL);
  if (*(v0 + 816))
  {
    v78 = 0;
    v79 = 0uLL;
  }

  else
  {
    v79 = *(v0 + 800);
    v78 = *(v0 + 792);
    v76 = (*(v0 + 788) << 32) | 0x461C3C00;
  }

  *(v0 + 784) = v76;
  *(v0 + 792) = v78;
  *(v0 + 800) = v79;
  *(v0 + 816) = 0;
  return result;
}

uint64_t sub_18AF4FB80(uint64_t a1)
{
  if (*(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AF4FB9C(uint64_t a1)
{
  if (*(a1 + 256))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_18AF4FBC0()
{
  v1 = *(v0 + 496);
  if ((v1 & 0x200000) != 0)
  {
    v2 = 0;
  }

  else
  {
    v3 = *(v0 + 284);
    if (v3 <= 0.0)
    {
      v4 = -v3;
    }

    else
    {
      v4 = *(v0 + 284);
    }

    if (v4 <= 0.04045)
    {
      v5 = v4 * 0.077399;
    }

    else
    {
      v5 = 1.0;
      if (v4 != 1.0)
      {
        v5 = powf((v4 * 0.94787) + 0.052133, 2.4);
      }
    }

    if (v3 <= 0.0)
    {
      v5 = -v5;
    }

    v2 = COERCE_UNSIGNED_INT(fmaxf(v5, 1.0));
  }

  return v2 | (((v1 & 0x200000) != 0) << 32);
}

uint64_t sub_18AF4FCA0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a1;
  v55 = a4;
  v6 = sub_18AFCD9D4();
  v56 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_18AFCD7F4();
  v53 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18AFCD704();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_18AFCDA04();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_18AFCD774();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18AFCD6C4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v22 = sub_18AE8C8DC(0, 2, 0, MEMORY[0x1E69E7CC0]);
  v23 = a3;
  v24 = v22;
  v57 = v23;
  v58 = v6;
  if ((v23 & 0x10) != 0 && (a2 & 0x800000) != 0)
  {
    sub_18AFCD654();
    v26 = v24[2];
    v25 = v24[3];
    if (v26 >= v25 >> 1)
    {
      v24 = sub_18AE8C8DC(v25 > 1, v26 + 1, 1, v24);
    }

    v24[2] = v26 + 1;
    (*(v16 + 32))(v24 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v26, v21, v15);
    v23 = v57;
    v6 = v58;
  }

  sub_18AF52AE4(v61, 0, v23, v62);
  sub_18AE8C904();
  sub_18AFCD614();
  v28 = v24[2];
  v27 = v24[3];
  if (v28 >= v27 >> 1)
  {
    v24 = sub_18AE8C8DC(v27 > 1, v28 + 1, 1, v24);
  }

  v24[2] = v28 + 1;
  v30 = *(v16 + 32);
  v29 = v16 + 32;
  v31 = (*(v29 + 48) + 32) & ~*(v29 + 48);
  v50 = v24;
  v30(v24 + v31 + *(v29 + 40) * v28, v18, v15);
  sub_18AE8C9B0();
  sub_18AFCD9E4();
  *v11 = 0;
  (*(v47 + 104))(v11, *MEMORY[0x1E6981BB8], v48);
  sub_18AFCD784();
  LODWORD(v29) = sub_18AFCD724();
  v32 = sub_18AFCD764();
  v34 = v33;
  sub_18AFCD744();
  if (sub_18AFCD744() != v29)
  {
    *v34 = sub_18AFCD744();
  }

  v32(v62, 0);
  v35 = v49;
  sub_18AFCD7E4();
  sub_18AFCD7D4();
  sub_18AFCD7C4();
  sub_18AFCD7B4();
  sub_18AFCD7A4();
  sub_18AFCD794();
  v37 = v53;
  v36 = v54;
  (*(v53 + 16))(v54, v35, v60);
  v38 = v56;
  (*(v56 + 104))(v36, *MEMORY[0x1E6981C38], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698);
  v39 = v51;
  v40 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_18AFD8390;
  v42 = v41 + v40;
  v43 = v59;
  v44 = v52;
  (*(v39 + 16))(v42, v59, v52);
  sub_18AFCD874();

  (*(v38 + 8))(v36, v58);
  (*(v37 + 8))(v35, v60);
  return (*(v39 + 8))(v43, v44);
}

uint64_t sub_18AF5031C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v92 = sub_18AFCCCF4();
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18AFCD704();
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v96 = (&v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_18AFCD9D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18AFCDA04();
  v93 = *(v10 - 8);
  v94 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v88 = &v74 - v15;
  v16 = *MEMORY[0x1E6981C60];
  v85 = v9;
  v86 = v7;
  v17 = *(v7 + 104);
  v87 = v6;
  v17(v9, v16, v6, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698);
  v18 = *(sub_18AFCD774() - 8);
  v84 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_18AFD8390;
  v21 = *(a1 + 24);
  v20 = *(a1 + 32);
  v23 = *(a1 + 40);
  v22 = *(a1 + 48);
  v104 = *(a1 + 56);
  v24 = *(a1 + 72);
  v97 = *(a1 + 64);
  v25 = *(a1 + 84);
  v76 = *(a1 + 80);
  v102 = *(a1 + 88);
  v107 = *(a1 + 92);
  v110 = *(a1 + 100);
  LODWORD(v6) = *(a1 + 108);
  v215 = *(a1 + 109);
  v216 = *(a1 + 111);
  v26 = *(a1 + 112);
  v27 = *(a1 + 120);
  v100 = *(a1 + 128);
  v213 = *(a1 + 129);
  v214 = *(a1 + 131);
  v28 = *(a1 + 132);
  v29 = *(a1 + 140);
  v108 = *(a1 + 148);
  v211 = *(a1 + 149);
  v212 = *(a1 + 165);
  v217[0] = v21;
  v217[1] = v20;
  v30 = v20;
  v217[2] = v23;
  v31 = v23;
  v103 = v23;
  v217[3] = v22;
  v217[4] = v104;
  v217[5] = v97;
  v217[6] = v24;
  v218 = v76;
  v219 = v25;
  v220 = v102;
  v221 = v107;
  v222 = v110;
  v223 = v6;
  v225 = *(a1 + 111);
  v224 = *(a1 + 109);
  v226 = v26;
  v227 = v27;
  v228 = v100;
  v230 = *(a1 + 131);
  v229 = *(a1 + 129);
  v231 = v28;
  v232 = v29;
  v233 = v108;
  v234 = *(a1 + 149);
  v235 = *(a1 + 165);
  sub_18AF4FB80(v217);
  sub_18AFCD814();
  v32 = v96;
  *v96 = 0;
  (*(v98 + 104))(v32, *MEMORY[0x1E6981BB8], v99);
  v79 = v19;
  v33 = v27;
  v34 = v6;
  v101 = v6;
  sub_18AFCD784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690);
  v35 = *(sub_18AFCD6C4() - 8);
  v99 = *(v35 + 72);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = v28;
  v109 = v28;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_18AFDBCA0;
  v78 = v38;
  v98 = v38 + v36;
  v179[0] = v21;
  v39 = v30;
  v105 = v22;
  v106 = v30;
  v179[1] = v30;
  v179[2] = v31;
  v179[3] = v22;
  v40 = v104;
  v179[4] = v104;
  v41 = v97;
  v179[5] = v97;
  v42 = v24;
  v179[6] = v24;
  v43 = v76;
  v180 = v76;
  v181 = v25;
  v44 = v102;
  v182 = v102;
  v183 = v107;
  v45 = v110;
  v184 = v110;
  v185 = v34;
  v186 = v215;
  v187 = v216;
  v46 = v26;
  v188 = v26;
  v47 = v33;
  v189 = v33;
  v48 = v100;
  v190 = v100;
  v192 = v214;
  v191 = v213;
  v193 = v37;
  v194 = v29;
  LOBYTE(v26) = v108;
  v195 = v108;
  v196 = v211;
  v197 = v212;
  sub_18AF4FB80(v179);
  sub_18AFCD664();
  v160[0] = v21;
  v160[1] = v39;
  v49 = v103;
  v160[2] = v103;
  v160[3] = v22;
  v160[4] = v40;
  v160[5] = v41;
  v160[6] = v42;
  v161 = v43;
  v162 = v25;
  v163 = v44;
  v50 = v107;
  v164 = v107;
  v165 = v45;
  v51 = v101;
  v166 = v101;
  v167 = v215;
  v168 = v216;
  v169 = v46;
  v170 = v47;
  v171 = v48;
  v173 = v214;
  v172 = v213;
  v174 = v109;
  v175 = v29;
  v176 = v26;
  v177 = v211;
  v178 = v212;
  sub_18AF4FB80(v160);
  sub_18AFCD684();
  v83 = v42;
  v84 = v21;
  v141[0] = v21;
  v141[1] = v106;
  v141[2] = v49;
  v141[3] = v105;
  v141[4] = v40;
  v141[5] = v41;
  v141[6] = v42;
  v142 = v43;
  v143 = v25;
  v144 = v44;
  v145 = v50;
  v52 = HIDWORD(v110);
  v146 = v110;
  v147 = v51;
  v148 = v215;
  v149 = v216;
  v53 = v46;
  v150 = v46;
  v96 = v47;
  v151 = v47;
  v152 = v48;
  v154 = v214;
  v153 = v213;
  v54 = v109;
  v155 = v109;
  v156 = v29;
  v55 = v108;
  v157 = v108;
  v158 = v211;
  v159 = v212;
  v56 = sub_18AF4FB80(v141);
  v80 = v29;
  v81 = v53;
  if (v56 == 1)
  {
    v52 = 0;
    v74 = 0;
    v75 = 0;
    v57 = 0.0;
    v51 = 1;
    v58 = 0.0;
    v59 = 0.0;
    v48 = 1;
    v77 = 1;
  }

  else
  {
    v57 = v43;
    v58 = v25;
    v59 = v44;
    v74 = v29;
    v75 = v54;
    v77 = v55;
  }

  v203 = 0x3F80000000000000;
  v206 = 0x3F80000000000000;
  v202 = 0;
  v201 = 0;
  v205 = 0;
  v204 = 0;
  v208 = 0;
  v207 = 0;
  v200 = 1065353216;
  v209 = 0;
  v210 = 1065353216;
  sub_18AFBE6B4(1, v198, v57, v58, v59);
  if (v51)
  {
    v138 = v198[2];
    v139 = v198[3];
    v140 = v198[4];
    v136 = v198[0];
    v137 = v198[1];
  }

  else
  {
    sub_18AE97674(&v136, v52);
  }

  v60 = v107;
  v199[12] = v138;
  v199[13] = v139;
  v199[14] = v140;
  v199[10] = v136;
  v199[11] = v137;
  if (v48)
  {
    v132 = v137;
    v133 = v138;
    v134 = v139;
    v135 = v140;
    v131 = v136;
  }

  else
  {
    sub_18AE8C178(&v131);
  }

  v199[7] = v133;
  v199[8] = v134;
  v199[9] = v135;
  v199[5] = v131;
  v199[6] = v132;
  v61 = v100;
  v62 = v80;
  v63 = v108;
  v82 = v25;
  if (v77)
  {
    HIDWORD(v64) = v131.i32[1];
    v130[1] = v132;
    v65 = *v134.i64;
    v130[2] = v133;
    v130[3] = v134;
    v66.n128_u32[1] = v135.u32[1];
    v130[4] = v135;
    v130[0] = v131;
  }

  else
  {
    v66 = sub_18AFBEA34(v130);
  }

  v66.n128_u32[0] = 730643660;
  LODWORD(v64) = 953267991;
  sub_18AE8C368(v199, v66.n128_f64[0], v64, v65);
  sub_18AFCD644();
  v67 = v88;
  v68 = v85;
  sub_18AFCD874();

  (*(v86 + 8))(v68, v87);
  (*(v90 + 104))(v89, *MEMORY[0x1E69814D8], v92);
  sub_18AFCCDE4();
  v111[0] = v84;
  v111[1] = v106;
  v111[2] = v103;
  v111[3] = v105;
  v111[4] = v104;
  v111[5] = v97;
  v111[6] = v83;
  v112 = v43;
  v113 = v82;
  v114 = v102;
  v115 = v60;
  v116 = v110;
  v117 = v101;
  v119 = v216;
  v118 = v215;
  v120 = v81;
  v121 = v96;
  v122 = v61;
  v124 = v214;
  v123 = v213;
  v125 = v109;
  v126 = v62;
  v127 = v63;
  v129 = v212;
  v128 = v211;
  sub_18AF4FB80(v111);
  v69 = v91;
  sub_18AFCD884();
  sub_18AFCD854();
  v70 = *(v93 + 8);
  v71 = v69;
  v72 = v94;
  v70(v71, v94);
  return (v70)(v67, v72);
}

uint64_t sub_18AF50F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v49 = sub_18AFCD704();
  v3 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_18AFCD9D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18AFCDA04();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v45 = &v41 - v13;
  v14 = *MEMORY[0x1E6981C60];
  v47 = v7;
  v15 = *(v7 + 104);
  v46 = v9;
  v48 = v6;
  v15(v9, v14, v6, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698);
  sub_18AFCD774();
  v16 = swift_allocObject();
  v44 = xmmword_18AFD8390;
  *(v16 + 16) = xmmword_18AFD8390;
  v17 = *(a1 + 176);
  *&v18 = *(a1 + 184);
  v19 = *(a1 + 192);
  v20 = *(a1 + 208);
  v21 = *(a1 + 216);
  v22 = *(a1 + 248);
  v23 = 0;
  v43 = v17;
  v42 = v19;
  v41 = v18;
  if (v22)
  {
    v24 = 0uLL;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0uLL;
    v19 = 0uLL;
  }

  else
  {
    v25 = *(a1 + 240);
    v24 = *(a1 + 224);
    *&v28 = v17;
    *(&v28 + 1) = v18;
    v26 = v20;
    v27 = v21;
  }

  v51 = v28;
  v52 = v19;
  v53 = v26;
  v54 = v27;
  v55 = v24;
  v56 = v25;
  sub_18AF6B778();
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if ((v22 & 1) == 0)
  {
    v30 = *(&v42 + 1);
    v23 = v41;
    v29 = v42;
    v31 = v20;
    v32 = v21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6C8);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_18AFDBCB0;
  *(v33 + 32) = v23;
  *(v33 + 40) = v29;
  *(v33 + 48) = v30;
  *(v33 + 56) = v31;
  *(v33 + 64) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6F8);
  v34 = swift_allocObject();
  v34[1] = xmmword_18AFDBCC0;
  if (qword_1EA9978D8 != -1)
  {
    swift_once();
  }

  v34[2] = xmmword_1EA9B0060;
  if (qword_1ED56AA40 != -1)
  {
    swift_once();
  }

  v35 = xmmword_1ED56C8F0;
  v34[3] = xmmword_1ED56C8F0;
  v34[4] = v35;
  v34[5] = v35;
  sub_18AFCD9C4();

  *v5 = 0;
  v36 = *MEMORY[0x1E6981BB8];
  v37 = *(v3 + 104);
  v38 = v49;
  v37(v5, v36, v49);
  sub_18AFCD784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690);
  sub_18AFCD6C4();
  *(swift_allocObject() + 16) = v44;
  sub_18AFCD674();
  v39 = v46;
  sub_18AFCD874();

  (*(v47 + 8))(v39, v48);
  *v5 = 0;
  v37(v5, v36, v38);
  return sub_18AFCD784();
}

uint64_t sub_18AF51520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v116 = sub_18AFCD774();
  v3 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v114 = &v102 - v7;
  v112 = sub_18AFCCCF4();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_18AFCD704();
  v9 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v11 = (&v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_18AFCD9D4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_18AFCDA04();
  v124 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v126 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v130 = &v102 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v123 = &v102 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v125 = &v102 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v102 - v23;
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v25);
  v122 = &v102 - v27;
  v28 = *(a1 + 308);
  v102 = v5;
  v29 = v24;
  if (v28)
  {
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v30 = *(a1 + 304);
    v35 = *(a1 + 288);
    v36 = *(a1 + 296);
    v33 = *(a1 + 272);
    v34 = *(a1 + 280);
    v31 = *(a1 + 256);
    v32 = *(a1 + 264);
  }

  LODWORD(v121) = *MEMORY[0x1E6981C60];
  v133 = *(v13 + 104);
  v133(v135, v26);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698);
  v136 = *(v3 + 72);
  v115 = v3;
  v127 = *(v3 + 80);
  v38 = (v127 + 32) & ~v127;
  v39 = v37;
  v40 = swift_allocObject();
  v134 = xmmword_18AFD8390;
  *(v40 + 16) = xmmword_18AFD8390;
  sub_18AFCD814();
  *v11 = 0;
  v128 = *MEMORY[0x1E6981BB8];
  v41 = *(v9 + 104);
  v138 = v9 + 104;
  v132 = v41;
  v41(v11);
  v42 = v38;
  sub_18AFCD784();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690);
  v43 = *(sub_18AFCD6C4() - 8);
  v140 = v12;
  v106 = *(v43 + 72);
  v105 = *(v43 + 80);
  v104 = (v105 + 32) & ~v105;
  *(swift_allocObject() + 16) = v134;
  sub_18AFCD684();
  v44 = v122;
  v45 = v135;
  sub_18AFCD874();

  v46 = v13 + 104;

  v129 = *(v13 + 8);
  v137 = v13 + 8;
  v129(v45, v140);
  v47 = v45;
  v113 = *MEMORY[0x1E6981C48];
  v48 = v133;
  (v133)(v45);
  *(swift_allocObject() + 16) = v134;
  v49 = *(v124 + 16);
  v118 = v124 + 16;
  v119 = v49;
  v49(v29, v44, v131);
  *v11 = 0;
  v132(v11, v128, v139);
  v50 = v42;
  v51 = v29;
  sub_18AFCD784();
  sub_18AFCD874();

  v52 = v129;
  v129(v45, v140);
  v53 = v121;
  v121 = v46;
  v48(v45, v53, v140);
  v108 = v39;
  *(swift_allocObject() + 16) = v134;
  sub_18AFCD814();
  *v11 = 0;
  v132(v11, v128, v139);
  v120 = v50;
  v109 = v51;
  v103 = v11;
  sub_18AFCD784();
  v54 = v140;
  *(swift_allocObject() + 16) = v134;
  sub_18AFCD684();
  v55 = v123;
  sub_18AFCD874();

  v52(v45, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B700);
  v56 = swift_allocObject();
  v134 = xmmword_18AFDBCA0;
  *(v56 + 16) = xmmword_18AFDBCA0;
  v57 = *MEMORY[0x1E69814D8];
  v58 = *(v111 + 104);
  v59 = v110;
  v60 = v112;
  v58(v110, v57, v112);
  sub_18AFCCDE4();
  *(v56 + 32) = v61;
  *(v56 + 36) = v62;
  *(v56 + 40) = v63;
  *(v56 + 44) = v64;
  v58(v59, v57, v60);
  sub_18AFCCDE4();
  *(v56 + 48) = v65;
  *(v56 + 52) = v66;
  *(v56 + 56) = v67;
  *(v56 + 60) = v68;
  v58(v59, v57, v60);
  sub_18AFCCDE4();
  *(v56 + 64) = v69;
  *(v56 + 68) = v70;
  *(v56 + 72) = v71;
  *(v56 + 76) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6C8);
  v73 = swift_allocObject();
  *(v73 + 16) = v134;
  *(v73 + 32) = v35;
  *(v73 + 40) = v36;
  *(v73 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6F8);
  v74 = swift_allocObject();
  v134 = xmmword_18AFCEB10;
  v74[1] = xmmword_18AFCEB10;
  if (qword_1ED56AA40 != -1)
  {
    swift_once();
  }

  v74[2] = xmmword_1ED56C8F0;
  v74[3] = xmmword_18AFDBCD0;
  sub_18AFCD9C4();

  (v133)(v47, *MEMORY[0x1E6981C40], v54);
  v127 = swift_allocObject();
  *(v127 + 16) = v134;
  v75 = v109;
  v76 = v131;
  v77 = v119;
  v119(v109, v55, v131);
  v78 = v103;
  *v103 = 0;
  v79 = v128;
  v80 = v139;
  v81 = v132;
  v132(v78, v128, v139);
  sub_18AFCD784();
  v77(v75, v130, v76);
  *v78 = 23;
  v82 = v79;
  v81(v78, v79, v80);
  sub_18AFCD784();
  v83 = MEMORY[0x1E69E7CC0];
  v84 = v135;
  sub_18AFCD874();

  v129(v84, v140);
  v85 = sub_18AE8C6D8(0, 2, 0, v83);
  v86 = v131;
  v87 = v75;
  if (v32 == 0.0 || v31 == 0.0)
  {
    v89 = v119;
  }

  else
  {
    v88 = v75;
    v89 = v119;
    v119(v88, v125, v131);
    *v78 = 0;
    v81(v78, v82, v139);
    sub_18AFCD784();
    v91 = *(v85 + 2);
    v90 = *(v85 + 3);
    if (v91 >= v90 >> 1)
    {
      v85 = sub_18AE8C6D8(v90 > 1, v91 + 1, 1, v85);
    }

    *(v85 + 2) = v91 + 1;
    (*(v115 + 32))(&v85[v120 + v91 * v136], v114, v116);
    v81 = v132;
  }

  v92 = v133;
  if (v34 == 0.0 || v33 == 0.0 || v30 == 0.0)
  {
    v96 = v123;
    v97 = v113;
  }

  else
  {
    v89(v87, v126, v86);
    *v78 = 0;
    v81(v78, v82, v139);
    v93 = v102;
    sub_18AFCD784();
    v95 = *(v85 + 2);
    v94 = *(v85 + 3);
    if (v95 >= v94 >> 1)
    {
      v85 = sub_18AE8C6D8(v94 > 1, v95 + 1, 1, v85);
    }

    v96 = v123;
    v97 = v113;
    *(v85 + 2) = v95 + 1;
    (*(v115 + 32))(&v85[v120 + v95 * v136], v93, v116);
    v92 = v133;
  }

  v98 = v135;
  v99 = v140;
  v92(v135, v97, v140);
  sub_18AFCD874();

  v129(v98, v99);
  v100 = *(v124 + 8);
  v100(v126, v86);
  v100(v130, v86);
  v100(v96, v86);
  v100(v125, v86);
  return (v100)(v122, v86);
}

uint64_t sub_18AF52438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = (a1 + 460);
  v4 = sub_18AFCD704();
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36[-v8];
  v10 = sub_18AFCD9D4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_18AFCDA04();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v46 = &v36[-v17];
  v18 = *MEMORY[0x1E6981C60];
  v47 = v11;
  v48 = v10;
  v19 = *(v11 + 104);
  v45 = v13;
  v19(v13, v18, v10, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698);
  sub_18AFCD774();
  *(swift_allocObject() + 16) = xmmword_18AFD8390;
  v44 = *(a1 + 496);
  v52 = v44 & 0xFF00;
  v20 = *(a1 + 448);
  v21 = *(a1 + 456);
  v22 = v3[1];
  v38 = *v3;
  v39 = v22;
  v51 = *(a1 + 476);
  v23 = *(a1 + 488);
  v40 = *(a1 + 480);
  v41 = v23;
  v24 = *(a1 + 428);
  v25 = *(a1 + 432);
  v26 = *(a1 + 436);
  sub_18AFCD814();
  *v9 = 0;
  v27 = *(v54 + 104);
  v43 = *MEMORY[0x1E6981BB8];
  v54 += 104;
  v42 = v27;
  v27(v9);
  sub_18AFCD784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690);
  sub_18AFCD6C4();
  *(swift_allocObject() + 16) = xmmword_18AFDBCA0;
  sub_18AFCD664();
  sub_18AFCD684();
  if (v52 == 512)
  {
    HIDWORD(v20) = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v24 = 0.0;
    v21 = 1;
    v25 = 0.0;
    v26 = 0.0;
    v28 = 1;
    v51 = 1;
  }

  else
  {
    v28 = v44;
  }

  v37 = v28;
  v71 = 0x3F80000000000000;
  v74 = 0x3F80000000000000;
  v70 = 0;
  v69 = 0;
  v73 = 0;
  v72 = 0;
  v76 = 0;
  v75 = 0;
  v68 = 1065353216;
  v77 = 0;
  v78 = 1065353216;
  sub_18AFBE6B4(1, v66, v24, v25, v26);
  if (v21)
  {
    v63 = v66[2];
    v64 = v66[3];
    v65 = v66[4];
    v61 = v66[0];
    v62 = v66[1];
  }

  else
  {
    sub_18AE97674(&v61, SHIDWORD(v20));
  }

  v67[12] = v63;
  v67[13] = v64;
  v67[14] = v65;
  v67[10] = v61;
  v67[11] = v62;
  if (v51)
  {
    v58 = v63;
    v59 = v64;
    v60 = v65;
    v56 = v61;
    v57 = v62;
  }

  else
  {
    sub_18AE8C178(&v56);
  }

  v67[7] = v58;
  v67[8] = v59;
  v67[9] = v60;
  v67[5] = v56;
  v67[6] = v57;
  if (v37)
  {
    v55[2] = v58;
    v55[3] = v59;
    v55[4] = v60;
    HIDWORD(v31) = v56.i32[1];
    v30.n128_u32[1] = v57.u32[1];
    v55[0] = v56;
    v55[1] = v57;
  }

  else
  {
    v30 = sub_18AFBEA34(v55);
  }

  v30.n128_u32[0] = 730643660;
  LODWORD(v31) = 953267991;
  sub_18AE8C368(v67, v30.n128_f64[0], v31, v29);
  sub_18AFCD644();
  v32 = v45;
  sub_18AFCD874();

  (*(v47 + 8))(v32, v48);
  if (v52 == 512)
  {
    v33 = v49;
    *v49 = 5;
  }

  else
  {
    v33 = v49;
    if ((v44 & 0x100) != 0)
    {
      v34 = 4;
    }

    else
    {
      v34 = 5;
    }

    *v49 = v34;
  }

  v42(v33, v43, v53);
  return sub_18AFCD784();
}

uint64_t sub_18AF52AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = a1 + 308;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 84);
  v16 = *(a1 + 88);
  v17 = *(a1 + 92);
  v18 = *(a1 + 100);
  v19 = *(a1 + 108);
  v118 = *(a1 + 109);
  v119 = *(a1 + 111);
  v20 = *(a1 + 112);
  v21 = *(a1 + 120);
  v22 = *(a1 + 128);
  v116 = *(a1 + 129);
  v117 = *(a1 + 131);
  v23 = *(a1 + 132);
  v24 = *(a1 + 140);
  v25 = *(a1 + 148);
  v114 = *(a1 + 149);
  v115 = *(a1 + 151);
  v26 = *(a1 + 152);
  v27 = *(a1 + 156);
  v28 = *(a1 + 160);
  v29 = *(a1 + 168);
  v94 = v7;
  v95 = v6;
  v120[0] = v6;
  v120[1] = v7;
  v92 = v9;
  v120[2] = v9;
  v120[3] = v10;
  v30 = v10;
  v31 = v11;
  v120[4] = v11;
  v120[5] = v12;
  v32 = v12;
  v33 = v13;
  v120[6] = v13;
  v34 = v14;
  v121 = v14;
  v122 = v15;
  v35 = v15;
  v36 = v16;
  v123 = v16;
  v91 = v17;
  v124 = v17;
  v37 = v18;
  v125 = v18;
  v93 = v19;
  v126 = v19;
  v128 = *(a1 + 111);
  v127 = *(a1 + 109);
  v38 = v20;
  v129 = v20;
  v130 = v21;
  v39 = v21;
  v40 = v22;
  v131 = v22;
  v133 = *(a1 + 131);
  v132 = *(a1 + 129);
  v41 = v23;
  v134 = v23;
  v42 = v24;
  v135 = v24;
  v43 = v25;
  v136 = v25;
  v137 = *(a1 + 149);
  v138 = *(a1 + 151);
  v44 = v26;
  v139 = v26;
  v96 = v27;
  v140 = v27;
  v99 = v28;
  v141 = v28;
  v142 = v29;
  if (sub_18AF4FB80(v120) == 1)
  {
    v45 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v46 = 0;
    v42 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 1;
    v32 = 0;
    v33 = 0;
    v35 = 0;
    v36 = 0;
    v54 = 1;
    v43 = 1;
    v44 = 0;
    v99 = 0;
    if ((*v8 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v58 = 0uLL;
    v55 = 0;
    v57 = 0uLL;
    v56 = 0uLL;
    if ((*(a1 + 385) & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v112 = v118;
  v113 = v119;
  v110 = v116;
  v111 = v117;
  v108 = v114;
  v109 = v115;
  v45 = v91;
  v46 = v41;
  v47 = v34;
  v50 = v92;
  v52 = v31;
  v51 = v30;
  v49 = v94;
  v48 = v95;
  v54 = v40;
  v53 = v93;
  if (*v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v55 = *(a1 + 304);
  v57 = *(a1 + 272);
  v56 = *(a1 + 288);
  v58 = *(a1 + 256);
  if ((*(a1 + 385) & 1) == 0)
  {
LABEL_4:
    v59 = *(a1 + 364);
    v60 = *(v8 + 40);
    v61 = *(a1 + 344);
    v62 = *(v8 + 20);
    v63 = *(v8 + 4);
    v64 = *(a1 + 384);
    v65 = *(a1 + 368);
    v107 = *(a1 + 347);
    v106 = *(a1 + 345);
    v105 = *(a1 + 367);
    v104 = *(a1 + 365);
    goto LABEL_8;
  }

LABEL_7:
  v61 = 1;
  v65 = 0uLL;
  v63 = 0uLL;
  v59 = 1;
  v64 = 1;
  v60 = 0uLL;
  v62 = 0uLL;
LABEL_8:
  v66 = *(a1 + 497);
  if (v66 == 2)
  {
    LOBYTE(v66) = 0;
    v67 = 0uLL;
    v68 = 1;
    v69 = 0uLL;
    v70 = 0;
    v71 = 0uLL;
    v72 = 0;
    v73 = 1;
    v74 = 1;
    v75 = 0uLL;
    v76 = 0uLL;
  }

  else
  {
    v73 = *(a1 + 476);
    v75 = *(v8 + 152);
    v68 = *(a1 + 456);
    v76 = *(v8 + 132);
    v70 = *(a1 + 432);
    v71 = *(a1 + 416);
    v72 = *(a1 + 408);
    v69 = *(v8 + 84);
    v74 = *(a1 + 496);
    v67 = *(a1 + 480);
    v103 = *(a1 + 459);
    v102 = *(a1 + 457);
    v101 = *(a1 + 479);
    v100 = *(a1 + 477);
  }

  v78 = *(a1 + 176);
  v77 = *(a1 + 192);
  v80 = *(a1 + 208);
  v79 = *(a1 + 224);
  v81 = *(a1 + 240);
  v82 = *(a1 + 248);
  if (*(v8 + 508))
  {
    v83 = 0;
    result = 0;
    v85 = 0;
    v86 = 0uLL;
  }

  else
  {
    v86 = *(a1 + 800);
    v85 = *(a1 + 792);
    v83 = *(a1 + 784);
    result = *(a1 + 788);
  }

  *(a4 + 8) = v48;
  *(a4 + 16) = v49;
  *a4 = a2;
  *(a4 + 24) = v50;
  *(a4 + 32) = v51;
  *(a4 + 40) = v52;
  *(a4 + 48) = v32;
  *(a4 + 56) = v33;
  *(a4 + 64) = v47;
  *(a4 + 68) = v35;
  *(a4 + 72) = v36;
  *(a4 + 76) = v45;
  *(a4 + 84) = v37;
  *(a4 + 92) = v53;
  *(a4 + 93) = v112;
  *(a4 + 95) = v113;
  *(a4 + 96) = v38;
  *(a4 + 104) = v39;
  *(a4 + 112) = v54;
  *(a4 + 113) = v110;
  *(a4 + 115) = v111;
  *(a4 + 116) = v46;
  *(a4 + 124) = v42;
  *(a4 + 132) = v43;
  *(a4 + 133) = v108;
  *(a4 + 135) = v109;
  *(a4 + 136) = v44;
  *(a4 + 140) = v96;
  *(a4 + 144) = v99;
  v87 = vdup_n_s32(v82);
  v88 = vshl_n_s32(v87, 0x1FuLL);
  v89.i64[0] = v87.u32[0];
  v89.i64[1] = v87.u32[1];
  v90 = vcgezq_s64(vshlq_n_s64(v89, 0x3FuLL));
  *(a4 + 152) = vandq_s8(v78, v90);
  *(a4 + 168) = vandq_s8(v77, v90);
  *(a4 + 184) = vandq_s8(v80, v90);
  *(a4 + 200) = vandq_s8(v79, vcgezq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v82)), 0x1FuLL)));
  *(a4 + 216) = vand_s8(v81, vcgez_s32(v88));
  *(a4 + 224) = v58;
  *(a4 + 240) = v57;
  *(a4 + 256) = v56;
  *(a4 + 272) = v55;
  *(a4 + 276) = v63;
  *(a4 + 292) = v62;
  *(a4 + 308) = v61;
  *(a4 + 311) = v107;
  *(a4 + 309) = v106;
  *(a4 + 312) = v60;
  *(a4 + 328) = v59;
  *(a4 + 331) = v105;
  *(a4 + 329) = v104;
  *(a4 + 332) = v65;
  *(a4 + 348) = v64;
  *(a4 + 352) = v69;
  *(a4 + 368) = v72;
  *(a4 + 376) = v71;
  *(a4 + 392) = v70;
  *(a4 + 400) = v76;
  *(a4 + 416) = v68;
  *(a4 + 419) = v103;
  *(a4 + 417) = v102;
  *(a4 + 420) = v75;
  *(a4 + 436) = v73;
  *(a4 + 439) = v101;
  *(a4 + 437) = v100;
  *(a4 + 440) = v67;
  *(a4 + 456) = v74;
  *(a4 + 457) = v66;
  *(a4 + 464) = v83;
  *(a4 + 468) = result;
  *(a4 + 472) = v85;
  *(a4 + 480) = v86;
  *(a4 + 496) = a3;
  return result;
}

uint64_t sub_18AF53078(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 504))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 457);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18AF530CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 504) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 504) = 0;
    }

    if (a2)
    {
      *(result + 457) = a2 + 1;
    }
  }

  return result;
}

id sub_18AF531A0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_18AFCBF64();
  v1 = sub_18AFCDE04();

  [v0 setValue:v1 forKey:*MEMORY[0x1E6979C10]];

  v2 = sub_18AFCDFA4();
  [v0 setValue:v2 forKey:*MEMORY[0x1E6979BD0]];

  v3 = sub_18AFCDFA4();
  [v0 setValue:v3 forKey:*MEMORY[0x1E6979BB8]];

  v4 = sub_18AFCDFA4();
  [v0 setValue:v4 forKey:*MEMORY[0x1E6979BD8]];

  v5 = sub_18AFCDFA4();
  [v0 setValue:v5 forKey:*MEMORY[0x1E6979960]];

  v6 = sub_18AFCDFA4();
  [v0 setValue:v6 forKey:*MEMORY[0x1E6979950]];

  v7 = sub_18AFCDFA4();
  [v0 setValue:v7 forKey:*MEMORY[0x1E6979968]];

  v8 = sub_18AFCBA04();
  [v0 setValue:v8 forKey:*MEMORY[0x1E6979958]];

  v9 = sub_18AFCDFA4();
  [v0 setValue:v9 forKey:*MEMORY[0x1E6979AE8]];

  v10 = sub_18AFCDFA4();
  [v0 setValue:v10 forKey:*MEMORY[0x1E6979AD0]];

  v11 = sub_18AFCDFA4();
  [v0 setValue:v11 forKey:*MEMORY[0x1E6979AE0]];

  v12 = sub_18AFCDFA4();
  [v0 setValue:v12 forKey:*MEMORY[0x1E6979AD8]];

  return v0;
}

BOOL sub_18AF53484(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 3);
  v10[0] = *(a1 + 1);
  v10[1] = v3;
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 3);
  v10[2] = *(a1 + 5);
  v11[0] = v5;
  v7 = *(a2 + 5);
  v11[1] = v6;
  v11[2] = v7;
  return v2 == v4 && sub_18AE92DBC(v10, v11);
}

uint64_t sub_18AF534EC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v146) = a2;
  v142 = a3;
  v149 = sub_18AFCD9D4();
  v152 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v141 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v132 = &v122 - v6;
  v136 = sub_18AFCCCF4();
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_18AFCD704();
  v8 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v10 = (&v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v140 = sub_18AFCDA04();
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v151 = &v122 - v13;
  v148 = sub_18AFCD774();
  v14 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v137 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v131 = &v122 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v122 - v19;
  v130 = sub_18AFCD6C4();
  v144 = *(v130 - 1);
  MEMORY[0x1EEE9AC00](v130);
  v22 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v122 - v24;
  v26 = MEMORY[0x1E69E7CC0];
  v27 = sub_18AE8C6D8(0, 4, 0, MEMORY[0x1E69E7CC0]);
  v159 = v27;
  v28 = sub_18AE8C8DC(0, 5, 0, v26);
  v158 = v28;
  v29 = *(a1 + 872);
  v133 = a1;
  if (v29)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0.0;
    v38 = 0.0;
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v30 = *(a1 + 848);
    v31 = *(a1 + 824);
    v32 = *(a1 + 828);
    v33 = *(a1 + 832);
    v34 = *(a1 + 836);
    v35 = *(a1 + 840);
    v36 = *(a1 + 844);
    v37 = *(a1 + 856);
    v38 = *(a1 + 860);
    v39 = *(a1 + 864);
    v40 = *(a1 + 868);
  }

  *&v160 = __PAIR64__(v32, v31);
  LODWORD(v129) = v32;
  *(&v160 + 1) = __PAIR64__(v34, v33);
  v145 = v35;
  *&v161 = __PAIR64__(v36, v35);
  *(&v161 + 1) = v30;
  v128 = v37;
  *&v162 = __PAIR64__(LODWORD(v38), LODWORD(v37));
  *(&v162 + 1) = __PAIR64__(v40, v39);
  if (qword_1ED56A8C0 != -1)
  {
    swift_once();
  }

  v41 = sub_18AFA44F4();
  v147 = v14;
  if (v41)
  {
    sub_18AFCD694();
    v43 = v28[2];
    v42 = v28[3];
    if (v43 >= v42 >> 1)
    {
      v28 = sub_18AE8C8DC(v42 > 1, v43 + 1, 1, v28);
    }

    v28[2] = v43 + 1;
    (*(v144 + 32))(v28 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v43, v25, v130);
    v158 = v28;
    v14 = v147;
  }

  if (v146)
  {
    sub_18AF6B9B4();
    sub_18AFCD9E4();
    *v10 = 0;
    v45 = *(v8 + 104);
    v44 = v8 + 104;
    v145 = *MEMORY[0x1E6981BB8];
    v150 = v45;
    v45(v10);
    sub_18AFCD784();
    v47 = v27[2];
    v46 = v27[3];
    if (v47 >= v46 >> 1)
    {
      v27 = sub_18AE8C6D8(v46 > 1, v47 + 1, 1, v27);
    }

    v27[2] = v47 + 1;
    v48 = *(v147 + 4);
    v129 = *(v147 + 80);
    v143 = *(v147 + 9);
    v48(v27 + ((v129 + 32) & ~v129) + v143 * v47, v20, v148);
    v159 = v27;
    v155 = v160;
    v156 = v161;
    v157 = v162;
    v154 = 0;
    sub_18AF54FA0();
    sub_18AFCD614();
    v50 = v28[2];
    v49 = v28[3];
    v51 = v44 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    if (v50 >= v49 >> 1)
    {
      v28 = sub_18AE8C8DC(v49 > 1, v50 + 1, 1, v28);
    }

    v28[2] = v50 + 1;
    (*(v144 + 32))(v28 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v50, v22, v130);
    v158 = v28;
    v52 = v145;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698);
    v53 = *(v14 + 9);
    v54 = *(v14 + 80);
    v55 = (v54 + 32) & ~v54;
    v124 = 2 * v53;
    v130 = v54;
    v56 = swift_allocObject();
    v126 = xmmword_18AFDBCA0;
    *(v56 + 16) = xmmword_18AFDBCA0;
    v125 = v56;
    v57 = v56 + v55;
    sub_18AFCD814();
    v58 = MEMORY[0x1E6981BB8];
    *v10 = 0;
    v59 = *v58;
    v60 = *(v8 + 104);
    v127 = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v61 = v59;
    v62 = v153;
    v60(v10);
    sub_18AFCD784();
    sub_18AFCD814();
    *v10 = 0;
    v150 = v60;
    (v60)(v10, v61, v62);
    v143 = v53;
    v123 = v57;
    sub_18AFCD784();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B700);
    v63 = swift_allocObject();
    v122 = xmmword_18AFCEB10;
    *(v63 + 16) = xmmword_18AFCEB10;
    v64 = *MEMORY[0x1E69814D8];
    v65 = *(v135 + 104);
    v66 = v134;
    v67 = v136;
    v65(v134, v64, v136);
    sub_18AFCCDE4();
    *(v63 + 32) = v68;
    *(v63 + 36) = v69;
    *(v63 + 40) = v70;
    *(v63 + 44) = v71;
    v65(v66, v64, v67);
    sub_18AFCCDE4();
    *(v63 + 48) = v72;
    *(v63 + 52) = v73;
    *(v63 + 56) = v74;
    *(v63 + 60) = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6C8);
    v76 = swift_allocObject();
    *(v76 + 16) = v122;
    *(v76 + 32) = v128;
    *(v76 + 40) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6F8);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_18AFD8390;
    if (qword_1ED56A6F8 != -1)
    {
      swift_once();
    }

    *(v77 + 32) = xmmword_1ED56C4A0;
    sub_18AFCD9C4();

    *v10 = 0;
    v150(v10, v61, v153);
    sub_18AFCD784();
    sub_18AE984B0(v125);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690);
    v78 = swift_allocObject();
    *(v78 + 16) = v126;
    sub_18AFCD684();
    sub_18AFCD6B4();
    sub_18AFCD674();
    sub_18AEC2F5C(v78);
    v51 = v127;
    v129 = v130;
    v52 = v61;
  }

  v79 = *MEMORY[0x1E6981C58];
  v80 = v152;
  v81 = v132;
  v82 = v149;
  v130 = *(v152 + 104);
  v130(v132, v79, v149);
  sub_18AFCD874();

  v83 = *(v80 + 8);
  v152 = v80 + 8;
  v132 = v83;
  (v83)(v81, v82);
  *v10 = 0;
  v145 = v52;
  v150(v10, v52, v153);
  v84 = v131;
  sub_18AFCD784();
  v85 = sub_18AE8C6D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v87 = *(v85 + 2);
  v86 = *(v85 + 3);
  v144 = v51;
  if (v87 >= v86 >> 1)
  {
    v85 = sub_18AE8C6D8(v86 > 1, v87 + 1, 1, v85);
  }

  v88 = v146;
  v89 = MEMORY[0x1E69814D8];
  *(v85 + 2) = v87 + 1;
  v146 = (v129 + 32) & ~v129;
  v90 = *(v147 + 4);
  v90(&v85[v146 + v143 * v87], v84, v148);
  if (v88)
  {
    v91 = v153;
    v92 = v151;
    v93 = v145;
    v94 = v150;
  }

  else
  {
    v147 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B700);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_18AFDBCA0;
    v96 = *v89;
    v97 = *(v135 + 104);
    v98 = v134;
    v99 = v136;
    v97(v134, v96, v136);
    sub_18AFCCDE4();
    *(v95 + 32) = v100;
    *(v95 + 36) = v101;
    *(v95 + 40) = v102;
    *(v95 + 44) = v103;
    v97(v98, v96, v99);
    sub_18AFCCDE4();
    *(v95 + 48) = v104;
    *(v95 + 52) = v105;
    *(v95 + 56) = v106;
    *(v95 + 60) = v107;
    v97(v98, v96, v99);
    sub_18AFCCDE4();
    *(v95 + 64) = v108;
    *(v95 + 68) = v109;
    *(v95 + 72) = v110;
    *(v95 + 76) = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6F8);
    v112 = swift_allocObject();
    v112[1] = xmmword_18AFCEB10;
    if (qword_1ED56AA40 != -1)
    {
      swift_once();
    }

    v112[2] = xmmword_1ED56C8F0;
    v112[3] = xmmword_18AFDBCD0;
    v92 = v151;
    sub_18AFCD9C4();

    *v10 = 23;
    v93 = v145;
    v91 = v153;
    v94 = v150;
    v150(v10, v145, v153);
    sub_18AFCD784();
    v114 = *(v85 + 2);
    v113 = *(v85 + 3);
    if (v114 >= v113 >> 1)
    {
      v85 = sub_18AE8C6D8(v113 > 1, v114 + 1, 1, v85);
    }

    *(v85 + 2) = v114 + 1;
    v147(&v85[v146 + v114 * v143], v137, v148);
  }

  v115 = MEMORY[0x1E6981C40];
  if (*(v85 + 2) <= 1uLL)
  {
    v115 = MEMORY[0x1E6981C48];
  }

  v116 = v141;
  v117 = v149;
  v130(v141, *v115, v149);
  v118 = v138;
  sub_18AFCD874();

  (v132)(v116, v117);
  v119 = v139;
  v120 = v140;
  (*(v139 + 16))(v92, v118, v140);
  *v10 = 0;
  v94(v10, v93, v91);
  sub_18AFCD784();
  return (*(v119 + 8))(v118, v120);
}

uint64_t sub_18AF54620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v3 = sub_18AFCD704();
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_18AFCD9D4();
  v6 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_18AFCDA04();
  v9 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v26 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v25 = sub_18AFCD6C4();
  v14 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED56A8C0 != -1)
  {
    swift_once();
  }

  if (sub_18AFA44F4())
  {
    v24[0] = v3;
    v24[1] = a2;
    sub_18AFCD694();
    v17 = sub_18AE8C8DC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_18AE8C8DC(v18 > 1, v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    (*(v14 + 32))(v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v19, v16, v25);
    v3 = v24[0];
  }

  v20 = v27;
  (*(v6 + 104))(v8, *MEMORY[0x1E6981C58], v27);
  sub_18AFCD874();

  (*(v6 + 8))(v8, v20);
  v21 = v28;
  (*(v9 + 16))(v26, v13, v28);
  v22 = v29;
  *v5 = 0;
  (*(v22 + 104))(v5, *MEMORY[0x1E6981BB8], v3);
  sub_18AFCD784();
  return (*(v9 + 8))(v13, v21);
}

uint64_t sub_18AF54A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v3 = sub_18AFCD704();
  v39 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v38 = (v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_18AFCCCF4();
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_18AFCD9D4();
  v6 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18AFCDA04();
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v35 = v30 - v16;
  v31 = sub_18AFCD6C4();
  v17 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED56A8C0 != -1)
  {
    swift_once();
  }

  if (sub_18AFA44F4())
  {
    v30[0] = v3;
    v30[1] = a2;
    sub_18AFCD694();
    v20 = sub_18AE8C8DC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v22 = v20[2];
    v21 = v20[3];
    if (v22 >= v21 >> 1)
    {
      v20 = sub_18AE8C8DC(v21 > 1, v22 + 1, 1, v20);
    }

    v20[2] = v22 + 1;
    (*(v17 + 32))(v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v22, v19, v31);
    v3 = v30[0];
  }

  v23 = v32;
  (*(v6 + 104))(v8, *MEMORY[0x1E6981C58], v32);
  sub_18AFCD874();

  (*(v6 + 8))(v8, v23);
  (*(v34 + 104))(v33, *MEMORY[0x1E69814D8], v37);
  sub_18AFCCDE4();
  sub_18AFCD864();
  v24 = v35;
  sub_18AFCD854();
  v25 = v36;
  v26 = *(v36 + 8);
  v26(v11, v9);
  v26(v14, v9);
  (*(v25 + 16))(v14, v24, v9);
  v27 = v39;
  v28 = v38;
  *v38 = 0;
  (*(v27 + 104))(v28, *MEMORY[0x1E6981BB8], v3);
  sub_18AFCD784();
  return (v26)(v24, v9);
}

unint64_t sub_18AF54FA0()
{
  result = qword_1ED56A588;
  if (!qword_1ED56A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A588);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18AF55010(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AF55030(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

unint64_t sub_18AF5507C()
{
  result = qword_1ED56A580;
  if (!qword_1ED56A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A580);
  }

  return result;
}

uint64_t sub_18AF550D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18AFCD9D4();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18AFCD704();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_18AFCDA04();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = sub_18AFCD6C4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E7CC0];
  v41 = sub_18AE8C6D8(0, 4, 0, MEMORY[0x1E69E7CC0]);
  v18 = sub_18AE8C8DC(0, 5, 0, v17);
  v40 = v18;
  if (qword_1ED56A8C0 != -1)
  {
    swift_once();
  }

  v19 = sub_18AFA44F4();
  v39 = a1;
  if (v19)
  {
    sub_18AFCD694();
    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_18AE8C8DC(v20 > 1, v21 + 1, 1, v18);
    }

    v18[2] = v21 + 1;
    (*(v14 + 32))(v18 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v21, v16, v13);
    v40 = v18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698);
  sub_18AFCD774();
  v22 = swift_allocObject();
  v31 = xmmword_18AFD8390;
  *(v22 + 16) = xmmword_18AFD8390;
  sub_18AFCD814();
  *v7 = 0;
  v23 = *MEMORY[0x1E6981BB8];
  v24 = v36;
  v35 = *(v35 + 104);
  (v35)(v7, v23, v36);
  sub_18AFCD784();
  sub_18AE984B0(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690);
  v25 = swift_allocObject();
  *(v25 + 16) = v31;
  sub_18AFCD684();
  sub_18AEC2F5C(v25);
  v27 = v37;
  v26 = v38;
  (*(v37 + 104))(v4, *MEMORY[0x1E6981C58], v38);
  sub_18AFCD874();

  (*(v27 + 8))(v4, v26);
  v28 = v33;
  v29 = v34;
  (*(v33 + 16))(v32, v12, v34);
  *v7 = 0;
  (v35)(v7, v23, v24);
  sub_18AFCD784();
  return (*(v28 + 8))(v12, v29);
}

uint64_t sub_18AF55690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v68 = sub_18AFCD9D4();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18AFCD7F4();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_18AFCD6C4();
  v6 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18AFCD704();
  v72 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_18AFCDA04();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v47 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v55 = sub_18AFCD774();
  v15 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 872))
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v19 = *(a1 + 864);
    v18 = *(a1 + 868);
    v21 = *(a1 + 856);
    v20 = *(a1 + 860);
    v28 = *(a1 + 848);
    v23 = *(a1 + 840);
    v22 = *(a1 + 844);
    v25 = *(a1 + 832);
    v24 = *(a1 + 836);
    v27 = *(a1 + 824);
    v26 = *(a1 + 828);
  }

  v85 = v27;
  v86 = v26;
  v47 = v25;
  v87 = v25;
  v88 = v24;
  v48 = v24;
  v49 = v23;
  v89 = v23;
  v90 = v22;
  v50 = v22;
  v91 = v28;
  v51 = v21;
  v92 = v21;
  v93 = v20;
  v52 = v20;
  v53 = v19;
  v94 = v19;
  v95 = v18;
  v54 = v18;
  sub_18AF6B9B4();
  sub_18AFCD9E4();
  *v10 = 0;
  v29 = *(v72 + 104);
  v57 = *MEMORY[0x1E6981BB8];
  v64 = v8;
  v72 += 104;
  v56 = v29;
  v29(v10);
  sub_18AFCD784();
  v30 = sub_18AE8C6D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v32 = v30[2];
  v31 = v30[3];
  if (v32 >= v31 >> 1)
  {
    v30 = sub_18AE8C6D8(v31 > 1, v32 + 1, 1, v30);
  }

  v30[2] = v32 + 1;
  (*(v15 + 32))(v30 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v32, v17, v55);
  v73 = 0;
  v74 = v27;
  v75 = v26;
  v76 = v47;
  v77 = v48;
  v78 = v49;
  v79 = v50;
  v80 = v28;
  v81 = v51;
  v82 = v52;
  v83 = v53;
  v84 = v54;
  sub_18AF54FA0();
  v33 = v58;
  sub_18AFCD614();
  v34 = sub_18AE8C8DC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v36 = v34[2];
  v35 = v34[3];
  if (v36 >= v35 >> 1)
  {
    v34 = sub_18AE8C8DC(v35 > 1, v36 + 1, 1, v34);
  }

  v34[2] = v36 + 1;
  (*(v6 + 32))(v34 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v36, v33, v59);
  v37 = v67;
  sub_18AFCD7E4();
  sub_18AFCD7D4();
  sub_18AFCD7B4();
  v38 = v69;
  v39 = v70;
  v40 = v65;
  (*(v69 + 16))(v65, v37, v70);
  v41 = v66;
  v42 = v68;
  (*(v66 + 104))(v40, *MEMORY[0x1E6981C38], v68);
  v43 = v60;
  sub_18AFCD874();

  (*(v41 + 8))(v40, v42);
  v44 = v62;
  v45 = v63;
  (*(v62 + 16))(v61, v43, v63);
  *v10 = 0;
  v56(v10, v57, v64);
  sub_18AFCD784();
  (*(v44 + 8))(v43, v45);
  return (*(v38 + 8))(v37, v39);
}

uint64_t sub_18AF55E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_18AFCD9D4();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18AFCD7F4();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_18AFCD6C4();
  v8 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18AFCD704();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_18AFCDA04();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v19 = sub_18AFCD774();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  sub_18AFCD814();
  *v13 = 0;
  v23 = *(v11 + 104);
  v40 = *MEMORY[0x1E6981BB8];
  v46 = v11 + 104;
  v47 = v10;
  v39 = v23;
  v23(v13);
  sub_18AFCD784();
  v24 = sub_18AE8C6D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_18AE8C6D8(v25 > 1, v26 + 1, 1, v24);
  }

  v24[2] = v26 + 1;
  (*(v20 + 32))(v24 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v26, v22, v19);
  v27 = v41;
  sub_18AFCD684();
  v28 = sub_18AE8C8DC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v30 = v28[2];
  v29 = v28[3];
  if (v30 >= v29 >> 1)
  {
    v28 = sub_18AE8C8DC(v29 > 1, v30 + 1, 1, v28);
  }

  v28[2] = v30 + 1;
  (*(v8 + 32))(v28 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v30, v27, v42);
  sub_18AFCD7E4();
  sub_18AFCD7D4();
  sub_18AFCD7B4();
  v32 = v52;
  v31 = v53;
  v33 = v49;
  (*(v52 + 16))(v49, v7, v53);
  v35 = v50;
  v34 = v51;
  (*(v50 + 104))(v33, *MEMORY[0x1E6981C38], v51);
  sub_18AFCD874();

  (*(v35 + 8))(v33, v34);
  v36 = v44;
  v37 = v45;
  (*(v44 + 16))(v43, v18, v45);
  *v13 = 0;
  v39(v13, v40, v47);
  sub_18AFCD784();
  (*(v36 + 8))(v18, v37);
  return (*(v32 + 8))(v7, v31);
}

void sub_18AF56470()
{
  if (qword_1ED56A8C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED56C8D0;
  if (*(qword_1ED56C8D0 + 16))
  {
    swift_getKeyPath();
    sub_18AE7C544(&qword_1EA99B710, _s8DefaultsCMa);
    sub_18AFCB9B4();

    os_unfair_lock_lock((v0 + 24));
    v1 = *(v0 + 59);
    os_unfair_lock_unlock((v0 + 24));
  }

  else
  {
    v1 = *(qword_1ED56C8D0 + 99);
  }

  byte_1EA9B0050 = v1;
}

uint64_t sub_18AF5656C(uint64_t a1)
{
  v78 = a1;
  v2 = sub_18AFCDA04();
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18AFCBB34();
  v5 = *(v4 - 8);
  v76 = v4;
  v77 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v59 - v8;
  v9 = sub_18AFCC474();
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18AFCCCF4();
  v67 = *(v11 - 8);
  v68 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s14ResolvedRecipeVMa();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v59 - v20);
  v22 = *v1;
  v23 = *(v1 + 64);
  v74 = *(v1 + 56);
  v75 = (&v59 - v20 + 348);
  v73 = *(v1 + 72);
  v24 = *(v1 + 80);
  v25 = *(v1 + 81);
  v26 = type metadata accessor for GlassMaterialProvider.Resolved(0);
  v27 = v24 | (v25 << 8);
  v28 = v13;
  sub_18AFAFC30(v74, v23, v73, v27, *(v1 + *(v26 + 60)), *(v1 + *(v26 + 60) + 8), *(v1 + *(v26 + 60) + 16), v18, 14, v22);
  v29 = *(v13 + 32);
  v30 = v18[v29];
  if (v18[v29])
  {
    sub_18AF56DDC(v18, v15);
    if (v30 == 2)
    {
      sub_18AFB5644();
    }

    sub_18AFB5AFC();
    sub_18AF56E40(v18);
  }

  else
  {
    v15 = v18;
  }

  sub_18AF56E9C(v15, v21);
  v31 = v21[78];
  v32 = v21[79];
  v33 = v21[80];
  v34 = v21[81];
  v35 = *(v21 + 344);
  v37 = *v75;
  v36 = v75[1];
  v60 = *(v21 + 42);
  v61 = v37;
  v73 = v36;
  v38 = *(v21 + 364);
  v39 = *(v21 + 47);
  v74 = *(v21 + 46);
  v75 = v39;
  v40 = *(v21 + 384);
  v41 = *(v21 + 385);
  v42 = *(v21 + 129);
  v43 = *(v28 + 28);
  v44 = *(v77 + 8);
  v45 = v21 + v43;
  v46 = v76;
  v44(v45, v76);
  if ((v42 & 0xE245F) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if ((v41 & 1) != 0 || (v92 = v35, v91 = v38, v90 = v40, v31 == 0.0))
  {
    v47 = v62;
    sub_18AFCDA44();
    v48 = v65;
    sub_18AFCC204();
    (*(v63 + 8))(v47, v64);
    v49 = v66;
    (*(v77 + 104))(v66, *MEMORY[0x1E697DBA8], v46);
    sub_18AE7C544(&qword_1ED56AD68, MEMORY[0x1E697DBD0]);
    sub_18AFCDDF4();
    v44(v49, v46);
    v44(v48, v46);
    (*(v67 + 104))(v69, *MEMORY[0x1E69814D8], v68);
    sub_18AFCCDE4();
  }

  else
  {
    (*(v67 + 104))(v69, *MEMORY[0x1E69814D8], v68);
    sub_18AFCCDE4();
    v53 = v92;
    v54 = v91;
    v55 = v90;
    v98 = 0x3F80000000000000;
    v101 = 0x3F80000000000000;
    v97 = 0;
    v96 = 0;
    v100 = 0;
    v99 = 0;
    v103 = 0;
    v102 = 0;
    v95 = 1065353216;
    v104 = 0;
    v105 = 1065353216;
    sub_18AFBE6B4(1, v93, v32, v33, v34);
    if (v53)
    {
      v87 = v93[2];
      v88 = v93[3];
      v89 = v93[4];
      v85 = v93[0];
      v86 = v93[1];
    }

    else
    {
      sub_18AE97674(&v85, SHIDWORD(v60));
    }

    v94[12] = v87;
    v94[13] = v88;
    v94[14] = v89;
    v94[10] = v85;
    v94[11] = v86;
    if (v54)
    {
      v82 = v87;
      v83 = v88;
      v84 = v89;
      v80 = v85;
      v81 = v86;
    }

    else
    {
      sub_18AE8C178(&v80);
    }

    v94[7] = v82;
    v94[8] = v83;
    v94[9] = v84;
    v94[5] = v80;
    v94[6] = v81;
    if (v55)
    {
      v79[2] = v82;
      v79[3] = v83;
      v79[4] = v84;
      HIDWORD(v58) = v80.i32[1];
      v57.n128_u32[1] = v81.u32[1];
      v79[0] = v80;
      v79[1] = v81;
    }

    else
    {
      v57 = sub_18AFBEA34(v79);
    }

    v57.n128_u32[0] = 730643660;
    LODWORD(v58) = 953267991;
    sub_18AE8C368(v94, v57.n128_f64[0], v58, v56);
    sub_18AFBE4C0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708);
  sub_18AFCDA34();
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_18AFD8390;
  v51 = v70;
  sub_18AFCD864();
  sub_18AFCD5F4();
  (*(v71 + 8))(v51, v72);
  return v50;
}

uint64_t sub_18AF56DDC(uint64_t a1, uint64_t a2)
{
  v4 = _s14ResolvedRecipeVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF56E40(uint64_t a1)
{
  v2 = _s14ResolvedRecipeVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AF56E9C(uint64_t a1, uint64_t a2)
{
  v4 = _s14ResolvedRecipeVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_18AF56F00(double a1)
{
  sub_18AFCCC94();
  sub_18AFCCC94();
  sub_18AFCCCA4();
  sub_18AFCCC94();
  sub_18AFCCCA4();
  return a1;
}

uint64_t sub_18AF56FD4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(v158) = a8;
  v151 = a6;
  v152 = a7;
  v164 = a3;
  v165 = a1;
  v169 = a2;
  v10 = sub_18AFCD9B4();
  v155 = *(v10 - 8);
  v156 = v10;
  MEMORY[0x1EEE9AC00](v10);
  *&v162 = &v148[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v167 = sub_18AFCD704();
  v173 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v174 = &v148[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_18AFCDA04();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v166 = &v148[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v172 = sub_18AFCD774();
  v168 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v163 = &v148[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v157 = &v148[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v171 = &v148[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v170 = &v148[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v154 = &v148[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v153 = &v148[-v25];
  MEMORY[0x1EEE9AC00](v26);
  v161 = &v148[-v27];
  MEMORY[0x1EEE9AC00](v28);
  v160 = &v148[-v29];
  v30 = sub_18AFCCCF4();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v148[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_18AFCC474();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v148[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
  v41 = &v148[-v40];
  v42 = 0.0;
  v159 = a5;
  if ((a5 & 1) == 0)
  {
    sub_18AFCDA44();
    sub_18AE7A260();
    sub_18AFCC484();
    (*(v35 + 8))(v41, v34);
    v42 = dbl_18AFDBE90[v242[0] == 4];
    if ((v158 & 1) == 0)
    {
      v39.n128_f64[0] = sub_18AF56F00(v42);
      v42 = v39.n128_f64[0];
    }
  }

  v43 = *MEMORY[0x1E69814D8];
  v44 = *(v31 + 104);
  v44(v33, v43, v30, v39);
  sub_18AFCCDE4();
  if ((v164 & 0x800000) != 0)
  {
    v68 = *(a4 + 24);
    v69 = *(a4 + 56);
    v70 = *(a4 + 60);
    v71 = *(a4 + 64);
    LODWORD(v152) = *(a4 + 68);
    v72 = *(a4 + 76);
    LODWORD(v151) = *(a4 + 72);
    v149 = *(a4 + 80);
    LODWORD(v150) = v72;
    LODWORD(v163) = *(a4 + 84);
    v73 = *(a4 + 92);
    LODWORD(v156) = *(a4 + 88);
    LODWORD(v155) = v73;
    v74 = *(a4 + 100);
    LODWORD(v154) = *(a4 + 96);
    LODWORD(v153) = v74;
    LODWORD(v164) = *(a4 + 104);
    v75 = *(a4 + 112);
    LODWORD(v162) = *(a4 + 108);
    v159 = v75;
    v76 = *(a4 + 120);
    LODWORD(v158) = *(a4 + 116);
    LODWORD(v157) = v76;
    LODWORD(v170) = *(a4 + 124);
    (v44)(v33, v43, v30);
    LODWORD(v171) = v68;
    sub_18AFCCDE4();
    sub_18AFCDA44();
    sub_18AFCC244();
    (*(v35 + 8))(v37, v34);
    sub_18AFCD894();
    v78 = v173;
    v77 = v174;
    *v174 = 0;
    v79 = v78[13];
    v80 = v167;
    v79(v77, *MEMORY[0x1E6981BB8], v167);
    v81 = v160;
    sub_18AFCD784();
    v244 = 0x3F80000000000000;
    v247 = 0x3F80000000000000;
    v243 = 0;
    *&v242[4] = 0;
    v246 = 0;
    v245 = 0;
    v249 = 0;
    v248 = 0;
    *v242 = 1065353216;
    v250 = 0;
    v251 = 1065353216;
    sub_18AFBE6B4(1, v199, v69, v70, v71);
    if (v163)
    {
      v228 = v199[2];
      v229 = v199[3];
      v230 = v199[4];
      v227 = v199[1];
      v226 = v199[0];
    }

    else
    {
      sub_18AE97674(&v226, v149);
    }

    v89 = v172;
    v90 = v168;
    v239 = v228;
    v240 = v229;
    v241 = v230;
    v238 = v227;
    v237 = v226;
    if (v164)
    {
      v223 = v228;
      v224 = v229;
      v225 = v230;
      v222 = v227;
      v221 = v226;
    }

    else
    {
      sub_18AE8C178(&v221);
    }

    v234 = v223;
    v235 = v224;
    v236 = v225;
    v233 = v222;
    v232 = v221;
    if (v170)
    {
      v175[2] = v223;
      v175[3] = v224;
      v175[4] = v225;
      v175[0] = v221;
      v175[1] = v222;
    }

    else
    {
      sub_18AFBEA34(v175);
    }

    v91 = swift_allocObject();
    LODWORD(v92) = 730643660;
    LODWORD(v93) = 953267991;
    sub_18AE8C368(v231, v92, v93, v94);
    v95 = v231[3];
    *(v91 + 48) = v231[2];
    *(v91 + 64) = v95;
    *(v91 + 80) = v231[4];
    v96 = v231[1];
    *(v91 + 16) = v231[0];
    *(v91 + 32) = v96;
    v97 = v174;
    *v174 = v91;
    v79(v97, *MEMORY[0x1E6981BA8], v80);
    sub_18AFCD714();
    sub_18AFCD6F4();
    sub_18AFCD6E4();
    if (fabsf(*&v171) < 0.00034527)
    {
      sub_18AFCD754();
    }

    v98 = v161;
    (*(v90 + 16))(v161, v81, v89);
    v99 = v169;
    v100 = *v169;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = sub_18AE8C6D8(0, v100[2] + 1, 1, v100);
    }

    v102 = v100[2];
    v101 = v100[3];
    if (v102 >= v101 >> 1)
    {
      v100 = sub_18AE8C6D8(v101 > 1, v102 + 1, 1, v100);
    }

    (*(v90 + 8))(v81, v89);
    v100[2] = v102 + 1;
    result = (*(v90 + 32))(v100 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v102, v98, v89);
    *v99 = v100;
  }

  else
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
    v51 = *(a4 + 24);
    v52 = *(a4 + 32);
    v53 = *(a4 + 40);
    v150 = *(a4 + 16);
    v151 = v52;
    v152 = *(a4 + 48);
    v54 = *(a4 + 72);
    v55 = *(a4 + 104);
    v219 = *(a4 + 88);
    v220[0] = v55;
    *(v220 + 13) = *(a4 + 117);
    v56 = *(a4 + 56);
    v218 = v54;
    v217 = v56;
    v161 = *(a4 + 136);
    LODWORD(v160) = *(a4 + 144);
    v57 = *(a4 + 160);
    *&v54 = *(a4 + 168);
    v164 = *(a4 + 152);
    v165 = v54;
    v58 = *(a4 + 224);
    v215 = *(a4 + 208);
    v216[0] = v58;
    *(v216 + 13) = *(a4 + 237);
    v59 = *(a4 + 176);
    v214 = *(a4 + 192);
    v213 = v59;
    v158 = *(a4 + 248);
    if ((sub_18AE8DE28(&v217, &v213) & 1) != 0 && v53 == v57)
    {
      sub_18AFCD9A4();
      sub_18AFCD914();
      sub_18AFCD904();
      sub_18AFCD944();
      v208.i64[0] = __PAIR64__(v49, v48);
      v208.i64[1] = __PAIR64__(LODWORD(v51), v50);
      LODWORD(v209) = 2143289344;
      sub_18AFCD934();
      *v242 = v42;
      sub_18AFCCC94();
      sub_18AFCCC94();
      sub_18AFCCCA4();
      sub_18AFCD924();
      sub_18AFCD984();
      sub_18AFCD994();
      sub_18AFCD974();
      v202.i64[0] = __PAIR64__(v49, v48);
      v202.i64[1] = __PAIR64__(v160, v50);
      LODWORD(v203) = 2143289344;
      sub_18AFCD964();
      *v242 = v42;
      sub_18AFCCC94();
      sub_18AFCCC94();
      sub_18AFCCCA4();
      sub_18AFCCC94();
      sub_18AFCCC94();
      sub_18AFCCCA4();
      sub_18AFCD954();
      sub_18AFCD8E4();
      sub_18AFCD8F4();
      sub_18AFCD8D4();
      sub_18AFCD844();
      v61 = v173;
      v60 = v174;
      *v174 = 0;
      v62 = v61[13];
      v63 = v167;
      v62(v60, *MEMORY[0x1E6981BB8], v167);
      v64 = v153;
      sub_18AFCD784();
      v65 = v64;
      sub_18AFCD6F4();
      v244 = 0x3F80000000000000;
      v247 = 0x3F80000000000000;
      v243 = 0;
      *&v242[4] = 0;
      v246 = 0;
      v245 = 0;
      v249 = 0;
      v248 = 0;
      *v242 = 1065353216;
      v250 = 0;
      v251 = 1065353216;
      sub_18AFBE6B4(1, v200, *&v217, *(&v217 + 1), *(&v217 + 2));
      v66 = v172;
      v67 = v168;
      if (BYTE12(v218))
      {
        v228 = v200[2];
        v229 = v200[3];
        v230 = v200[4];
        v227 = v200[1];
        v226 = v200[0];
      }

      else
      {
        sub_18AE97674(&v226, SDWORD2(v218));
      }

      v136 = v169;
      v239 = v228;
      v240 = v229;
      v241 = v230;
      v238 = v227;
      v237 = v226;
      if (v220[0])
      {
        v223 = v228;
        v224 = v229;
        v225 = v230;
        v222 = v227;
        v221 = v226;
      }

      else
      {
        sub_18AE8C178(&v221);
      }

      v234 = v223;
      v235 = v224;
      v236 = v225;
      v233 = v222;
      v232 = v221;
      if (BYTE4(v220[1]))
      {
        v176[2] = v223;
        v176[3] = v224;
        v176[4] = v225;
        v176[0] = v221;
        v176[1] = v222;
      }

      else
      {
        sub_18AFBEA34(v176);
      }

      v137 = swift_allocObject();
      LODWORD(v138) = 730643660;
      LODWORD(v139) = 953267991;
      sub_18AE8C368(v231, v138, v139, v140);
      v141 = v231[3];
      *(v137 + 48) = v231[2];
      *(v137 + 64) = v141;
      *(v137 + 80) = v231[4];
      v142 = v231[1];
      *(v137 + 16) = v231[0];
      *(v137 + 32) = v142;
      v143 = v174;
      *v174 = v137;
      v62(v143, *MEMORY[0x1E6981BA8], v63);
      sub_18AFCD714();
      sub_18AFCD6E4();
      if (fabsf(v51) < 0.00034527)
      {
        sub_18AFCD754();
      }

      v144 = v154;
      (*(v67 + 16))(v154, v65, v66);
      v145 = *v136;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = sub_18AE8C6D8(0, v145[2] + 1, 1, v145);
      }

      v147 = v145[2];
      v146 = v145[3];
      if (v147 >= v146 >> 1)
      {
        v145 = sub_18AE8C6D8(v146 > 1, v147 + 1, 1, v145);
      }

      (*(v67 + 8))(v65, v66);
      (*(v155 + 8))(COERCE_DOUBLE(*&v162), v156);
      v145[2] = v147 + 1;
      result = (*(v67 + 32))(v145 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v147, v144, v66);
      *v136 = v145;
    }

    else
    {
      v162 = v57;
      v257 = v48;
      v258 = v49;
      v259 = v50;
      v260 = v51;
      v149 = LODWORD(v51);
      v261 = 2143289344;
      *v242 = v42;
      sub_18AFCCC94();
      sub_18AFCCC94();
      sub_18AFCCCA4();
      sub_18AFCD824();
      v82 = v173;
      v83 = v174;
      *v174 = 0;
      v84 = *MEMORY[0x1E6981BB8];
      v85 = *(v82 + 13);
      v86 = v167;
      v85(v83, v84, v167);
      sub_18AFCD784();
      v252 = v48;
      v253 = v49;
      v87 = *&v160;
      v254 = v50;
      v255 = v160;
      v256 = 2143289344;
      *v242 = v42;
      sub_18AFCCC94();
      sub_18AFCCC94();
      sub_18AFCCCA4();
      sub_18AFCCC94();
      sub_18AFCCC94();
      sub_18AFCCCA4();
      sub_18AFCD824();
      *v83 = 0;
      v173 = v82 + 104;
      v85(v83, v84, v86);
      sub_18AFCD784();
      v88 = v168;
      if (fabsf(*&v149) < 0.00034527)
      {
        sub_18AFCD754();
      }

      if (fabsf(v87) < 0.00034527)
      {
        sub_18AFCD754();
      }

      sub_18AFCD6F4();
      v244 = 0x3F80000000000000;
      v247 = 0x3F80000000000000;
      v243 = 0;
      *&v242[4] = 0;
      v246 = 0;
      v245 = 0;
      v249 = 0;
      v248 = 0;
      *v242 = 1065353216;
      v250 = 0;
      v251 = 1065353216;
      sub_18AFBE6B4(1, v201, *&v217, *(&v217 + 1), *(&v217 + 2));
      if (BYTE12(v218))
      {
        v196 = v201[2];
        v197 = v201[3];
        v198 = v201[4];
        v194 = v201[0];
        v195 = v201[1];
      }

      else
      {
        sub_18AE97674(&v194, SDWORD2(v218));
      }

      v104 = v169;
      v239 = v196;
      v240 = v197;
      v241 = v198;
      v238 = v195;
      v237 = v194;
      if (v220[0])
      {
        v191 = v196;
        v192 = v197;
        v193 = v198;
        v189 = v194;
        v190 = v195;
      }

      else
      {
        sub_18AE8C178(&v189);
      }

      v234 = v191;
      v235 = v192;
      v236 = v193;
      v233 = v190;
      v232 = v189;
      if (BYTE4(v220[1]))
      {
        v188[2] = v191;
        v188[3] = v192;
        v188[4] = v193;
        v188[0] = v189;
        v188[1] = v190;
      }

      else
      {
        sub_18AFBEA34(v188);
      }

      v105 = swift_allocObject();
      LODWORD(v106) = 730643660;
      LODWORD(v107) = 953267991;
      sub_18AE8C368(&v202, v106, v107, v108);
      v109 = v205;
      *(v105 + 48) = v204;
      *(v105 + 64) = v109;
      *(v105 + 80) = v206;
      v110 = v203;
      *(v105 + 16) = v202;
      *(v105 + 32) = v110;
      v111 = v174;
      *v174 = v105;
      v112 = *MEMORY[0x1E6981BA8];
      v85(v111, v112, v86);
      sub_18AFCD714();
      sub_18AFCD6F4();
      *(v231[1].i64 + 4) = 0x3F80000000000000;
      *(&v231[2].i64[1] + 4) = 0x3F80000000000000;
      *(&v231[0].i64[1] + 4) = 0;
      *(v231[0].i64 + 4) = 0;
      *(v231[2].i64 + 4) = 0;
      *(&v231[1].i64[1] + 4) = 0;
      *(&v231[3].i64[1] + 4) = 0;
      *(v231[3].i64 + 4) = 0;
      v231[0].i32[0] = 1065353216;
      v231[4].i32[1] = 0;
      v231[4].i64[1] = 1065353216;
      sub_18AFBE6B4(1, v207, *&v213, *(&v213 + 1), *(&v213 + 2));
      if (BYTE12(v214))
      {
        v185 = v207[2];
        v186 = v207[3];
        v187 = v207[4];
        v183 = v207[0];
        v184 = v207[1];
      }

      else
      {
        sub_18AE97674(&v183, SDWORD2(v214));
      }

      v228 = v185;
      v229 = v186;
      v230 = v187;
      v227 = v184;
      v226 = v183;
      if (v216[0])
      {
        v180 = v185;
        v181 = v186;
        v182 = v187;
        v178 = v183;
        v179 = v184;
      }

      else
      {
        sub_18AE8C178(&v178);
      }

      v223 = v180;
      v224 = v181;
      v225 = v182;
      v222 = v179;
      v221 = v178;
      if (BYTE4(v216[1]))
      {
        v177[2] = v180;
        v177[3] = v181;
        v177[4] = v182;
        v177[0] = v178;
        v177[1] = v179;
      }

      else
      {
        sub_18AFBEA34(v177);
      }

      v113 = swift_allocObject();
      LODWORD(v114) = 730643660;
      LODWORD(v115) = 953267991;
      sub_18AE8C368(&v208, v114, v115, v116);
      v117 = v211;
      *(v113 + 48) = v210;
      *(v113 + 64) = v117;
      *(v113 + 80) = v212;
      v118 = v209;
      *(v113 + 16) = v208;
      *(v113 + 32) = v118;
      v119 = v174;
      *v174 = v113;
      v85(v119, v112, v86);
      sub_18AFCD714();
      v120 = v170;
      sub_18AFCD6E4();
      sub_18AFCD6E4();
      v121 = *(v88 + 16);
      v122 = v157;
      v121(v157, v120, v172);
      v123 = *v104;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v123 = sub_18AE8C6D8(0, v123[2] + 1, 1, v123);
      }

      v125 = v123[2];
      v124 = v123[3];
      if (v125 >= v124 >> 1)
      {
        v123 = sub_18AE8C6D8(v124 > 1, v125 + 1, 1, v123);
      }

      v174 = (v125 + 1);
      v123[2] = v125 + 1;
      v127 = v88 + 32;
      v126 = *(v88 + 32);
      v128 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v129 = *(v127 + 40);
      v130 = v172;
      v173 = v126;
      (v126)(v123 + v128 + v129 * v125, v122, v172);
      v121(v163, v171, v130);
      v131 = v123[3];
      v132 = v125 + 2;
      if ((v125 + 2) > (v131 >> 1))
      {
        v123 = sub_18AE8C6D8(v131 > 1, v125 + 2, 1, v123);
      }

      v133 = v169;
      v134 = *(v168 + 8);
      v135 = v172;
      v134(v171, v172);
      v134(v170, v135);
      v123[2] = v132;
      result = (v173)(v123 + v128 + v129 * v174, v163, v135);
      *v133 = v123;
    }
  }

  return result;
}

uint64_t sub_18AF58654(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B730);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = sub_18AFCD8B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v16 = *(v9 + 16);
  v28 = v2;
  v16(v11, v2, v8, v13);
  v17 = MEMORY[0x1E6981BC8];
  v26 = sub_18AF5A1B8(&qword_1ED56AA30, MEMORY[0x1E6981BC8]);
  sub_18AFCE0A4();
  v18 = v17;
  v19 = v29;
  sub_18AF5A1B8(&qword_1ED56AA38, v18);
  v27 = a2;
  v20 = sub_18AFCDDF4();
  v21 = *(v19 + 48);
  *v7 = (v20 & 1) == 0;
  if (v20)
  {
    (*(v9 + 32))(&v7[v21], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v22 = v27;
    (v16)(&v7[v21], v27, v8);
    (v16)(v11, v22, v8);
    sub_18AFCE0C4();
  }

  v23 = v30;
  sub_18AF5A200(v7, v30);
  v24 = *v23;
  (*(v9 + 32))(v31, &v23[*(v19 + 48)], v8);
  return v24;
}

unint64_t sub_18AF58948(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a4;
  if (qword_1ED56A8C0 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED56C8D0;
  if (*(qword_1ED56C8D0 + 16))
  {
    swift_getKeyPath();
    *&v31 = v10;
    sub_18AF5A1B8(&qword_1EA99B710, _s8DefaultsCMa);
    sub_18AFCB9B4();

    os_unfair_lock_lock((v10 + 24));
    v11 = *(v10 + 36);
    os_unfair_lock_unlock((v10 + 24));
  }

  else
  {
    v11 = *(qword_1ED56C8D0 + 76);
  }

  v12 = 0x2000;
  if (!v11)
  {
    v12 = 1;
  }

  v13 = 32 * (a5 != 0);
  v14 = (a2 >> 38) & 3;
  if (((a2 >> 38) & 3) > 1)
  {
    if (v14 == 2)
    {
      v16 = *(a1 + 32);
      v31 = *(a1 + 16);
      v32 = v16;
      v17 = *(a1 + 64);
      v33 = *(a1 + 48);
      v34 = v17;
      v18 = *(a1 + 96);
      v35 = *(a1 + 80);
      v36 = v18;
      v37 = *(a1 + 112);
      v19 = v31;
      v20 = DWORD2(v31) | (BYTE12(v31) << 32);
      v21 = *(&v32 + 1);
      v22 = BYTE2(v33);
      v30 = v32;
      sub_18AF59FDC(&v31, v29);
      v23 = sub_18AF58948(v19, v20, v21, &v30, v22);
      v29[0] = v35;
      v24 = sub_18AF58948(v34, DWORD2(v34) | (BYTE12(v34) << 32), *(&v35 + 1), v29, BYTE2(v36));
      sub_18AF5A038(&v31);
      return v24 | v23;
    }

    else
    {
      v25 = 1966878;
      result = 2360094;
      switch(a1)
      {
        case 1:
        case 2:
        case 15:
        case 17:
        case 18:
        case 19:
        case 20:
          return (v12 | v13) + 394078;
        case 3:
        case 7:
        case 9:
        case 14:
          return v13 + 394014;
        case 4:
          v26 = sub_18AFA4744();
          v27 = 131422;
          if (v26)
          {
            v27 = 132446;
          }

          return v13 | 0x40200 | v27;
        case 5:
          if ((a3 & 0x800000) != 0)
          {
            return 131590;
          }

          else
          {
            return 131078;
          }

        case 6:
          return v13 | 0x5C300;
        case 8:
          *&v31 = v9;
          v28 = sub_18AF58948(1, 0xC000000000, a3, &v31, a5);
          if (sub_18AFA47D8())
          {
            return v28;
          }

          else
          {
            return v28 & 0xFFFFFFFFFFFFDFAELL;
          }

        case 10:
        case 12:
          goto LABEL_27;
        case 11:
          v25 = 1442588;
LABEL_27:
          result = v12 | v25;
          break;
        case 13:
          result = v13 + 393998;
          break;
        case 16:
          return result;
        default:
          result = (v12 | v13) + 263006;
          break;
      }
    }
  }

  else if (v14)
  {
    return (v12 | v13) + 394078;
  }

  else
  {
    return v12 | 0x6025E;
  }

  return result;
}

uint64_t sub_18AF58C68@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18AFA92E8();

  *a1 = v2;
  return result;
}

uint64_t sub_18AF58CA8(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B718);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_18AFCDAC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_18AFCDA84();
  v12 = *(v6 + 48);
  if (v12(v4, 1, v5) == 1)
  {
    v13 = *MEMORY[0x1E6981C70];
    v14 = *(v6 + 104);
    v14(v11, v13, v5);
    if (v12(v4, 1, v5) != 1)
    {
      sub_18AE7BA80(v4, &qword_1EA99B718);
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    v13 = *MEMORY[0x1E6981C70];
    v14 = *(v6 + 104);
  }

  v14(v8, v13, v5);
  v15 = sub_18AFCDAB4();
  v16 = *(v6 + 8);
  v16(v8, v5);
  v16(v11, v5);
  return v15 & ((v19 & 0x80) != 0);
}

uint64_t sub_18AF58F08(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B718);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_18AFCDAC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_18AFCDA84();
  v12 = *(v6 + 48);
  if (v12(v4, 1, v5) == 1)
  {
    v13 = *MEMORY[0x1E6981C70];
    v14 = *(v6 + 104);
    v14(v11, v13, v5);
    if (v12(v4, 1, v5) != 1)
    {
      sub_18AE7BA80(v4, &qword_1EA99B718);
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    v13 = *MEMORY[0x1E6981C70];
    v14 = *(v6 + 104);
  }

  v14(v8, v13, v5);
  v15 = sub_18AFCDAB4();
  v16 = *(v6 + 8);
  v16(v8, v5);
  v16(v11, v5);
  return v15 & BYTE1(v19) & 1u;
}

uint64_t sub_18AF59168@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v38 = sub_18AFCD704();
  v34 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v2 = (&v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_18AFCD9D4();
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18AFCD6C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_18AFCDA04();
  v33 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v31 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v26 - v13;
  sub_18AF59AA8(&v26 - v13);
  v39 = MEMORY[0x1E69E7CC0];
  if (qword_1ED56A8C0 != -1)
  {
    swift_once();
  }

  if (sub_18AFA44F4())
  {
    sub_18AFCD694();
    v14 = sub_18AE8C8DC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_18AE8C8DC(v15 > 1, v16 + 1, 1, v14);
    }

    v14[2] = v16 + 1;
    (*(v6 + 32))(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v8, v5);
    v39 = v14;
  }

  if ((sub_18AFA486C() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_18AFD8390;
    sub_18AFCD624();
    sub_18AEC2F5C(v17);
  }

  v18 = v29;
  v19 = v30;
  (*(v29 + 104))(v30, *MEMORY[0x1E6981C48], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698);
  sub_18AFCD774();
  *(swift_allocObject() + 16) = xmmword_18AFD8390;
  v20 = v33;
  v28 = *(v33 + 16);
  v21 = v31;
  v28(v31, v36, v37);
  *v2 = 0;
  v27 = *MEMORY[0x1E6981BB8];
  v26 = v3;
  v34 = *(v34 + 104);
  (v34)(v2);
  sub_18AFCD784();
  v22 = v32;
  sub_18AFCD874();

  (*(v18 + 8))(v19, v26);
  v23 = v37;
  v28(v21, v22, v37);
  *v2 = 0;
  (v34)(v2, v27, v38);
  sub_18AFCD784();
  v24 = *(v20 + 8);
  v24(v22, v23);
  return (v24)(v36, v23);
}

uint64_t sub_18AF59778@<X0>(uint64_t a1@<X8>, double a2@<D2>)
{
  v29 = a1;
  v3 = sub_18AFCD704();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_18AFCCCF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18AFCDA04();
  MEMORY[0x1EEE9AC00](v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B700);
  v12 = swift_allocObject();
  v28 = xmmword_18AFDBCA0;
  *(v12 + 16) = xmmword_18AFDBCA0;
  v13 = *MEMORY[0x1E69814C8];
  v14 = *(v8 + 104);
  v14(v10, v13, v7);
  sub_18AFCCDE4();
  *(v12 + 32) = v15;
  *(v12 + 36) = v16;
  *(v12 + 40) = v17;
  *(v12 + 44) = 0;
  v14(v10, v13, v7);
  sub_18AFCCDE4();
  *(v12 + 48) = v18;
  *(v12 + 52) = v19;
  *(v12 + 56) = v20;
  *(v12 + 60) = v21;
  v14(v10, v13, v7);
  sub_18AFCCDE4();
  *(v12 + 64) = v22;
  *(v12 + 68) = v23;
  *(v12 + 72) = v24;
  *(v12 + 76) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6C8);
  v26 = swift_allocObject();
  *(v26 + 16) = v28;
  *(v26 + 32) = xmmword_18AFDBEA0;
  *(v26 + 48) = a2 + 0.5;
  sub_18AFCD9C4();

  *v6 = 26;
  (*(v4 + 104))(v6, *MEMORY[0x1E6981BB8], v3);
  return sub_18AFCD784();
}

uint64_t sub_18AF59AA8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_18AFCCCF4();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_18AFCD704();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_18AFCD9D4();
  v25 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_18AFCDA04();
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  *v10 = 1048576000;
  (*(v8 + 104))(v10, *MEMORY[0x1E6981C50], v7, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698);
  sub_18AFCD774();
  *(swift_allocObject() + 16) = xmmword_18AFD8390;
  sub_18AFCD814();
  *v6 = 0;
  (*(v4 + 104))(v6, *MEMORY[0x1E6981BB8], v3);
  sub_18AFCD784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690);
  sub_18AFCD6C4();
  *(swift_allocObject() + 16) = xmmword_18AFDBCA0;
  sub_18AFCD664();
  sub_18AFCD684();
  sub_18AFCD634();
  sub_18AFCD874();

  (*(v8 + 8))(v10, v25);
  (*(v29 + 104))(v28, *MEMORY[0x1E69814C8], v30);
  sub_18AFCCDE4();
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = 2143289344;
  sub_18AFCD9F4();
  sub_18AFCD854();
  v22 = v27;
  v23 = *(v26 + 8);
  v23(v13, v27);
  return (v23)(v17, v22);
}

uint64_t sub_18AF5A08C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AF5A0F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_18AF5A1A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_18AF5A1B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18AF5A200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AF5A280()
{
  result = qword_1EA99B738;
  if (!qword_1EA99B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B738);
  }

  return result;
}

unint64_t sub_18AF5A2D8()
{
  result = qword_1EA99B740;
  if (!qword_1EA99B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B740);
  }

  return result;
}

unint64_t sub_18AF5A330()
{
  result = qword_1EA99B748;
  if (!qword_1EA99B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B748);
  }

  return result;
}

unint64_t sub_18AF5A388()
{
  result = qword_1EA99B750;
  if (!qword_1EA99B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B750);
  }

  return result;
}

double sub_18AF5A3E0(float a1)
{
  v1 = a1;
  if (a1 >= 0.505)
  {
    return (fmin(v1, 1.0) + -0.505) / 0.495 * 0.05 + 1.65;
  }

  result = 0.0;
  if (v1 > 0.005)
  {
    v3 = v1 + -0.005;
    if (v1 + -0.005 < 0.0)
    {
      v3 = 0.0;
    }

    result = log(v3 + v3) * 0.3 + 1.65;
    if (result < 0.0)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s10TintRecipeOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xDE && *(a1 + 6))
  {
    return (*a1 + 222);
  }

  v3 = *(a1 + 5);
  if (v3 <= 0x1E)
  {
    v4 = 30;
  }

  else
  {
    v4 = *(a1 + 5);
  }

  v5 = v4 - 30;
  if (v3 >= 0x1E)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= 5)
  {
    return v6 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t _s10TintRecipeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xDD)
  {
    *(result + 4) = 0;
    *result = a2 - 222;
    if (a3 >= 0xDE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xDE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 5) = a2 + 34;
    }
  }

  return result;
}

uint64_t sub_18AF5A56C(uint64_t a1)
{
  v1 = *(a1 + 5);
  if (v1 <= 0x1E)
  {
    v2 = 30;
  }

  else
  {
    v2 = *(a1 + 5);
  }

  v3 = v2 - 30;
  if (v1 >= 0x1E)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_18AF5A5B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 21))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 20);
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

uint64_t sub_18AF5A5F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_18AF5A670(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 29))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 28);
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

uint64_t sub_18AF5A6B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *(result + 28) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_18AF5A718(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AF5A738(uint64_t result, int a2, int a3)
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

  *(result + 28) = v3;
  return result;
}

uint64_t sub_18AF5A768@<X0>(_BOOL8 a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v136 = a4;
  v139 = a2;
  v144 = a1;
  v138 = sub_18AFCD9D4();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v130 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v119 - v10;
  v12 = sub_18AFCD704();
  v148 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18AFCD774();
  v151 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v126 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v129 = &v119 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v128 = &v119 - v20;
  v145 = sub_18AFCCCF4();
  v21 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_18AFCDA04();
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v25 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v142 = &v119 - v29;
  v33.n128_f64[0] = MEMORY[0x1EEE9AC00](v30);
  v150 = &v119 - v34;
  v35 = 0;
  v36 = 0;
  v140 = v5;
  v37 = *(v5 + 88);
  v141 = a3;
  v143 = v15;
  v149 = v12;
  if ((a3 & 0x400) != 0)
  {
    v119 = v32;
    v120 = v31;
    v38 = *(v37 + 16);
    if (v38)
    {
      v124 = v11;
      v125 = v25;
      v134 = v14;
      v135 = a5;
      v132 = 0;
      v121 = v37;
      v39 = v37 + 32 * v38;
      v41 = *(v39 + 8);
      v40 = *(v39 + 16);
      v133 = v41;
      v127 = v40;
      goto LABEL_11;
    }

    v44 = *(v140 + 96);
    WORD2(v155[0]) = *(v140 + 100);
    LODWORD(v155[0]) = v44;
    sub_18AF5DDAC(v139, v141, v155);
    if ((v45 & 0x100000000) == 0)
    {
      v133 = v35;
      v127 = v36;
      v121 = v37;
      v124 = v11;
      v125 = v25;
      v134 = v14;
      v135 = a5;
      v132 = 0;
      goto LABEL_11;
    }

    v31 = v120;
    v32 = v119;
  }

  v127 = v36;
  if (!*(v37 + 16))
  {
    v42 = *(v151 + 56);

    return v42(a5, 1, 1, v15, v33);
  }

  v133 = v35;
  v121 = v37;
  v119 = v32;
  v120 = v31;
  v124 = v11;
  v125 = v25;
  v134 = v14;
  v135 = a5;
  v132 = 1;
LABEL_11:
  v46 = (v144 + 500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B700);
  v47 = swift_allocObject();
  v131 = xmmword_18AFDBCA0;
  *(v47 + 16) = xmmword_18AFDBCA0;
  v48 = *MEMORY[0x1E69814D8];
  v49 = *(v21 + 104);
  v50 = v145;
  v49(v23, v48, v145);
  sub_18AFCCDE4();
  *(v47 + 32) = v51;
  *(v47 + 36) = v52;
  *(v47 + 40) = v53;
  *(v47 + 44) = v54;
  v49(v23, v48, v50);
  sub_18AFCCDE4();
  *(v47 + 48) = v55;
  *(v47 + 52) = v56;
  *(v47 + 56) = v57;
  *(v47 + 60) = v58;
  v122 = v48;
  v123 = v49;
  v49(v23, v48, v50);
  sub_18AFCCDE4();
  *(v47 + 64) = v59;
  *(v47 + 68) = v60;
  *(v47 + 72) = v61;
  *(v47 + 76) = v62;
  v63 = 0.0;
  v65 = *v46;
  v64 = v46[1];
  v66 = 0.0;
  v67 = 0.0;
  v68 = *(v46 + 16);
  if ((v68 & 1) == 0)
  {
    v63 = *(&v65 + 1);
    v66 = *&v64;
    v67 = *(&v64 + 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6C8);
  v69 = swift_allocObject();
  *(v69 + 16) = v131;
  *(v69 + 32) = v63;
  *(v69 + 40) = v66;
  *(v69 + 48) = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6F8);
  v70 = swift_allocObject();
  v70[1] = xmmword_18AFCEB10;
  if (qword_1ED56AA40 != -1)
  {
    swift_once();
  }

  v70[2] = xmmword_1ED56C8F0;
  v70[3] = xmmword_18AFDC110;
  sub_18AFCD9C4();

  v154 = MEMORY[0x1E69E7CC0];
  if (v136)
  {
    v72 = 0.0;
    v73 = 0.0;
    v74 = 0.0;
    v75 = v133;
    if ((v68 & 1) == 0)
    {
      v72 = *(&v65 + 1);
      v74 = *(&v64 + 1);
      v73 = *&v64;
    }

    if (v72 <= v73)
    {
      v72 = v73;
    }

    if (v72 <= v74)
    {
      v72 = v74;
    }

    v76 = v72 > 0.0;
  }

  else
  {
    v76 = 0;
    v75 = v133;
  }

  v77 = v141;
  if (v132)
  {
    MEMORY[0x1EEE9AC00](v71);
    *(&v119 - 6) = v139;
    *(&v119 - 5) = v77;
    v78 = v144;
    *(&v119 - 4) = v140;
    *(&v119 - 3) = v78;
    *(&v119 - 2) = v150;
    v79 = sub_18AE97208(sub_18AF5EC20, (&v119 - 8), v121);
    sub_18AE984B0(v79);
    v80 = v143;
    v81 = v134;
    v82 = v149;
    v83 = v138;
  }

  else
  {
    LODWORD(v144) = v76;
    v84 = v75;
    v85 = v127;
    v86 = sub_18AFA8DB8(v141);
    v87 = v140;
    v88 = *(v140 + 96);
    if (v68)
    {
      v89 = 0.0;
    }

    else
    {
      v89 = *&v65;
    }

    v153 = *(v140 + 100);
    v152 = v88;
    sub_18AF5E044(v86, &v152, v155, *&v84, *(&v84 + 1), *&v85, *(&v85 + 1), v89);
    (*(v146 + 16))(v142, v150, v147);
    v90 = swift_allocObject();
    v91 = v155[3];
    v90[3] = v155[2];
    v90[4] = v91;
    v90[5] = v155[4];
    v92 = v155[1];
    v90[1] = v155[0];
    v90[2] = v92;
    v81 = v134;
    *v134 = v90;
    (*(v148 + 104))(v81, *MEMORY[0x1E6981BB0], v149);
    v93 = v128;
    sub_18AFCD784();
    v94 = v143;
    v83 = v138;
    v95 = v129;
    if (*(v87 + 101) - 35 <= 0xFFFFFFFB && (v77 & 0x8000) == 0)
    {
      if (qword_1ED56A8C0 != -1)
      {
        swift_once();
      }

      sub_18AFA49A8();
      sub_18AFCD6E4();
    }

    (*(v151 + 16))(v95, v93, v94);
    v96 = sub_18AE8C6D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v98 = v96[2];
    v97 = v96[3];
    if (v98 >= v97 >> 1)
    {
      v96 = sub_18AE8C6D8(v97 > 1, v98 + 1, 1, v96);
    }

    (*(v151 + 8))(v93, v94);
    v96[2] = v98 + 1;
    v99 = v95;
    v80 = v94;
    (*(v151 + 32))(v96 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v98, v99, v94);
    v154 = v96;
    v82 = v149;
    v76 = v144;
  }

  if (qword_1ED56A8C0 != -1)
  {
    swift_once();
  }

  if (sub_18AFA4A44())
  {
    v100 = v137 + 104;
    v101 = v124;
    (*(v137 + 104))(v124, *MEMORY[0x1E6981C48], v83);
    v102 = (v100 - 96);
    if (v76)
    {
      v103 = v119;
      sub_18AFCD874();

      (*v102)(v101, v83);
      v123(v23, v122, v145);
      sub_18AFCCDE4();
      v104 = v120;
      sub_18AFCD864();
      sub_18AFCD854();
      v105 = *(v146 + 8);
      v106 = v104;
      v107 = v147;
      v105(v106, v147);
      v105(v103, v107);
      *v81 = 0;
      (*(v148 + 104))(v81, *MEMORY[0x1E6981BB8], v149);
      v108 = v135;
      sub_18AFCD784();
      (*(v151 + 56))(v108, 0, 1, v143);
      return (v105)(v150, v107);
    }

    sub_18AFCD874();

    (*v102)(v101, v83);
    *v81 = 0;
    (*(v148 + 104))(v81, *MEMORY[0x1E6981BB8], v149);
    v117 = v135;
  }

  else
  {
    if (v76)
    {
      v123(v23, v122, v145);
      sub_18AFCCDE4();
      sub_18AFCD864();
      *v81 = 22;
      v109 = *MEMORY[0x1E6981BB8];
      (*(v148 + 104))(v81, v109, v82);
      v110 = v126;
      sub_18AFCD784();
      v111 = v154;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = sub_18AE8C6D8(0, v111[2] + 1, 1, v111);
      }

      v113 = v111[2];
      v112 = v111[3];
      v114 = v151;
      if (v113 >= v112 >> 1)
      {
        v118 = sub_18AE8C6D8(v112 > 1, v113 + 1, 1, v111);
        v114 = v151;
        v111 = v118;
      }

      v111[2] = v113 + 1;
      (*(v114 + 32))(v111 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v113, v110, v80);
      v154 = v111;
      v115 = v137;
      v116 = v130;
      (*(v137 + 104))(v130, *MEMORY[0x1E6981C40], v83);
    }

    else
    {
      v115 = v137;
      v116 = v130;
      (*(v137 + 104))(v130, *MEMORY[0x1E6981C48], v83);
      v109 = *MEMORY[0x1E6981BB8];
    }

    sub_18AFCD874();

    (*(v115 + 8))(v116, v83);
    *v81 = 0;
    (*(v148 + 104))(v81, v109, v82);
    v117 = v135;
  }

  sub_18AFCD784();
  (*(v151 + 56))(v117, 0, 1, v80);
  return (*(v146 + 8))(v150, v147);
}

uint64_t sub_18AF5B7E0()
{
  v1 = *(v0 + 20);
  sub_18AFCE294();
  if (v1)
  {
    MEMORY[0x18CFED610](1);
    sub_18AFCCF14();
  }

  else
  {
    MEMORY[0x18CFED610](0);
    sub_18AFCCD54();
  }

  return sub_18AFCE2E4();
}

uint64_t sub_18AF5B880()
{
  if (*(v0 + 20))
  {
    MEMORY[0x18CFED610](1);
    return sub_18AFCCF14();
  }

  else
  {
    MEMORY[0x18CFED610](0);

    return sub_18AFCCD54();
  }
}

uint64_t sub_18AF5B928()
{
  v1 = *(v0 + 20);
  sub_18AFCE294();
  if (v1)
  {
    MEMORY[0x18CFED610](1);
    sub_18AFCCF14();
  }

  else
  {
    MEMORY[0x18CFED610](0);
    sub_18AFCCD54();
  }

  return sub_18AFCE2E4();
}

uint64_t sub_18AF5B9C4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 20);
  if (*(a1 + 20))
  {
    v7 = a2[1];
    v8 = *(a2 + 4);
    v9 = *(a1 + 4);
    v10 = a1[1];
    v13[0] = v4;
    v13[1] = v10;
    v14 = v9;
    if (v6)
    {
      v15[0] = v5;
      v15[1] = v7;
      v16 = v8;
      v11 = MEMORY[0x18CFEC270](v13, v15);
      return v11 & 1;
    }

LABEL_5:
    v11 = 0;
    return v11 & 1;
  }

  if (*(a2 + 20))
  {
    goto LABEL_5;
  }

  return sub_18AFCCD04();
}

uint64_t sub_18AF5BA70()
{
  v1 = *v0;
  v2 = *(v0 + 28);
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  if (v2)
  {
    MEMORY[0x18CFED610](1);
    sub_18AFCCF14();
  }

  else
  {
    MEMORY[0x18CFED610](0);
    sub_18AFCCD54();
  }

  return sub_18AFCE2E4();
}

uint64_t sub_18AF5BB28()
{
  v1 = *(v0 + 28);
  MEMORY[0x18CFED610](*v0);
  if (v1)
  {
    MEMORY[0x18CFED610](1);
    return sub_18AFCCF14();
  }

  else
  {
    MEMORY[0x18CFED610](0);

    return sub_18AFCCD54();
  }
}

uint64_t sub_18AF5BBF0()
{
  v1 = *v0;
  v2 = *(v0 + 28);
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  if (v2)
  {
    MEMORY[0x18CFED610](1);
    sub_18AFCCF14();
  }

  else
  {
    MEMORY[0x18CFED610](0);
    sub_18AFCCD54();
  }

  return sub_18AFCE2E4();
}

BOOL sub_18AF5BCA4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = v2;
  v19 = v3;
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  v8 = *(a2 + 28);
  if ((*(a1 + 28) & 1) == 0)
  {
    return (*(a2 + 28) & 1) == 0 && (sub_18AFCCD04() & 1) != 0;
  }

  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14[0] = v6;
  v14[1] = v9;
  v15 = v10;
  if (v8)
  {
    v16[0] = v7;
    v16[1] = v11;
    v17 = v12;
    if (MEMORY[0x18CFEC270](v14, v16))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_18AF5BD60()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  sub_18AFCCF14();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF5BE14()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  sub_18AFCCF14();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF5BE74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v6 = *(a1 + 1);
  v7 = *(a1 + 6);
  v3 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 6);
  if (v2 == v3)
  {
    v4 = MEMORY[0x18CFEC270](&v6, &v8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_18AF5BED8()
{
  v1 = *(v0 + 5);
  if (*(v0 + 4) == 1)
  {
    sub_18AFCE2B4();
    if (v1 != 30)
    {
LABEL_3:
      sub_18AFCE2B4();
      return MEMORY[0x18CFED610](v1);
    }
  }

  else
  {
    sub_18AFCE2B4();
    sub_18AFCE2C4();
    if (v1 != 30)
    {
      goto LABEL_3;
    }
  }

  return sub_18AFCE2B4();
}

uint64_t sub_18AF5BF60()
{
  v1 = *(v0 + 2);
  v2 = v1 >> 8;
  if (v1 >> 8 > 0x20)
  {
    if (v2 == 33)
    {
      v3 = 2;
      return MEMORY[0x18CFED610](v3);
    }

    if (v2 == 34)
    {
      v3 = 4;
      return MEMORY[0x18CFED610](v3);
    }
  }

  else
  {
    if (v2 == 31)
    {
      v3 = 0;
      return MEMORY[0x18CFED610](v3);
    }

    if (v2 == 32)
    {
      v3 = 1;
      return MEMORY[0x18CFED610](v3);
    }
  }

  v4 = *v0 | (*(v0 + 2) << 32);
  MEMORY[0x18CFED610](3);
  if ((v4 & 0x100000000) != 0)
  {
    sub_18AFCE2B4();
    if (v2 != 30)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_18AFCE2B4();
    sub_18AFCE2C4();
    if (v2 != 30)
    {
LABEL_10:
      sub_18AFCE2B4();
      v3 = v2;
      return MEMORY[0x18CFED610](v3);
    }
  }

  return sub_18AFCE2B4();
}

uint64_t sub_18AF5C038()
{
  sub_18AFCE294();
  sub_18AF5BED8();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF5C098()
{
  sub_18AFCE294();
  sub_18AF5BED8();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF5C0F4()
{
  sub_18AFCE294();
  sub_18AF5BF60();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF5C14C()
{
  sub_18AFCE294();
  sub_18AF5BF60();
  return sub_18AFCE2E4();
}

unint64_t sub_18AF5C1A4()
{
  result = qword_1EA99B758;
  if (!qword_1EA99B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B758);
  }

  return result;
}

unint64_t sub_18AF5C1FC()
{
  result = qword_1EA99B760;
  if (!qword_1EA99B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B760);
  }

  return result;
}

unint64_t sub_18AF5C254()
{
  result = qword_1EA99B768;
  if (!qword_1EA99B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B768);
  }

  return result;
}

unint64_t sub_18AF5C2AC()
{
  result = qword_1EA99B770;
  if (!qword_1EA99B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B770);
  }

  return result;
}

unint64_t sub_18AF5C304()
{
  result = qword_1EA99B778;
  if (!qword_1EA99B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B778);
  }

  return result;
}

unint64_t sub_18AF5C35C()
{
  result = qword_1EA99B780;
  if (!qword_1EA99B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B780);
  }

  return result;
}

unint64_t sub_18AF5C3B4()
{
  result = qword_1EA99B788;
  if (!qword_1EA99B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B788);
  }

  return result;
}

uint64_t sub_18AF5C408()
{
  v1 = sub_18AF5D974(*v0);

  *v0 = v1;
  return result;
}

uint64_t sub_18AF5C45C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18AE96968(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_18AF5C48C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v4;
  sub_18AE99F20(v5, sub_18AE9AC9C, 0, isUniquelyReferenced_nonNull_native, &v8);

  *a3 = v8;
  return result;
}

uint64_t sub_18AF5C51C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v4;
  sub_18AE99F20(v3, sub_18AE9AC9C, 0, isUniquelyReferenced_nonNull_native, &v7);

  *a1 = v7;
  return result;
}

uint64_t sub_18AF5C5B4@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_18AE987C8(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_18AF5C5E4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_18AE987C8(*a1, *a2);

  *a1 = v3;
  return result;
}

unint64_t sub_18AF5C63C()
{
  result = qword_1EA99B790;
  if (!qword_1EA99B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B790);
  }

  return result;
}

unint64_t sub_18AF5C694()
{
  result = qword_1EA99B798;
  if (!qword_1EA99B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B798);
  }

  return result;
}

uint64_t sub_18AF5C6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a6;
  v32[0] = a3;
  v32[2] = a2;
  v37 = a7;
  v10 = sub_18AFCD704();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_18AFCDA04();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_18AFCD774();
  v17 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[1] = *a1;
  v20 = *(a1 + 8);
  v21 = *(a1 + 12);
  v22 = *(a1 + 16);
  v23 = *(a1 + 20);
  v24 = sub_18AFA8DB8(v32[0]);
  v25 = *(a4 + 96);
  if (*(a5 + 516))
  {
    v26 = 0.0;
  }

  else
  {
    v26 = *(a5 + 500);
  }

  v40 = *(a4 + 100);
  v39 = v25;
  sub_18AF5E044(v24, &v39, v38, v20, v21, v22, v23, v26);
  (*(v14 + 16))(v16, v34, v13);
  v27 = swift_allocObject();
  v28 = v38[3];
  v27[3] = v38[2];
  v27[4] = v28;
  v27[5] = v38[4];
  v29 = v38[1];
  v27[1] = v38[0];
  v27[2] = v29;
  *v12 = v27;
  (*(v35 + 104))(v12, *MEMORY[0x1E6981BB0], v36);
  sub_18AFCD784();
  v30 = v33;
  (*(v17 + 16))(v37, v19, v33);
  sub_18AFCD6D4();
  return (*(v17 + 8))(v19, v30);
}

uint64_t sub_18AF5CA0C(uint64_t a1, uint64_t a2)
{
  v4 = _s17ResolvedCompositeV3KeyVMa();
  v49 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  result = MEMORY[0x1EEE9AC00](v9);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v46 = &v44 - v11;
  v47 = v12;
  v13 = 0;
  v44 = a2;
  v45 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v51 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
    v22 = v47;
LABEL_16:
    v27 = v45;
    v28 = v48;
    sub_18AF5EAFC(*(v45 + 48) + *(v49 + 72) * v21, v48);
    v29 = *(*(v27 + 56) + 8 * v21);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
    v31 = *(v30 + 48);
    sub_18AF5EB60(v28, v22);
    *(v22 + v31) = v29;
    (*(*(v30 - 8) + 56))(v22, 0, 1, v30);
    a2 = v44;
LABEL_17:
    v32 = v46;
    sub_18AE9A768(v22, v46, &qword_1EA99B7B8);
    v33 = v32;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 != 1)
    {
      v37 = *(v34 + 48);
      v38 = v50;
      sub_18AF5EB60(v33, v50);
      v39 = *(v33 + v37);
      v40 = sub_18AECE178(v38);
      v42 = v41;
      result = sub_18AF5EBC4(v38);
      if (v42)
      {
        v19 = v51;
        if (*(*(a2 + 56) + 8 * v40) == v39)
        {
          continue;
        }
      }
    }

    return v36;
  }

  if (v20 <= v13 + 1)
  {
    v23 = v13 + 1;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23 - 1;
  v22 = v47;
  while (1)
  {
    v25 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
      (*(*(v43 - 8) + 56))(v22, 1, 1, v43);
      v51 = 0;
      v13 = v24;
      goto LABEL_17;
    }

    v26 = *(v15 + 8 * v25);
    ++v13;
    if (v26)
    {
      v51 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v13 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

char *sub_18AF5CDF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_18AF5CF08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_18AF5D020(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_18AF5D11C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_18AF5D220(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_18AF5D960(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_18AF5D76C((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_18AF4AE50(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_18AF4AE50((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_18AF5D76C((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_18AF5D76C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_18AF5D974(uint64_t a1)
{
  v41 = sub_18AFCCED4();
  v2 = *(v41 - 8);
  v3 = MEMORY[0x1EEE9AC00](v41);
  v39 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7A0);
  result = sub_18AFCE204();
  v7 = result;
  v8 = 0;
  v42 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v35 = v2 + 8;
  v36 = v2 + 16;
  v34 = result + 64;
  v40 = v2;
  v32 = v10;
  v33 = v2 + 32;
  v37 = result;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v43 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = v41;
      v21 = *(v42 + 56);
      v22 = *(*(v42 + 48) + 8 * v19);
      v23 = v40;
      v44 = *(v40 + 72) * v19;
      v45 = v22;
      v24 = *(v40 + 16);
      v25 = v38;
      v24(v38, v21 + v44, v41);
      v26 = v39;
      v24(v39, v25, v20);
      sub_18AFCCEC4();
      (*(v23 + 8))(v25, v20);
      *(v34 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v7 = v37;
      v27 = v44;
      *(*(v37 + 48) + 8 * v19) = v45;
      result = (*(v23 + 32))(*(v7 + 56) + v27, v26, v20);
      v28 = *(v7 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      *(v7 + 16) = v30;
      v14 = v43;
      if (!v43)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return v7;
      }

      v18 = *(v32 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v43 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_18AF5DC58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 5);
  v3 = *(a2 + 4);
  v4 = *(a2 + 5);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (v2 != 30)
  {
    return v4 != 30 && v2 == v4;
  }

  return v4 == 30;
}

uint64_t sub_18AF5DCB4(uint64_t a1, float *a2)
{
  v2 = *a2 | (*(a2 + 2) << 32);
  v3 = HIBYTE(*(a1 + 4));
  if (v3 > 0x20)
  {
    if (v3 == 33)
    {
      return BYTE5(v2) == 33;
    }

    if (v3 == 34)
    {
      return BYTE5(v2) == 34;
    }
  }

  else
  {
    if (v3 == 31)
    {
      return BYTE5(v2) == 31;
    }

    if (v3 == 32)
    {
      return BYTE5(v2) == 32;
    }
  }

  if (BYTE5(v2) - 31 < 4)
  {
    return 0;
  }

  v5 = *a1;
  if (((*(a1 + 4) << 32) & 0x100000000) != 0)
  {
    if ((v2 & 0x100000000) != 0)
    {
      goto LABEL_20;
    }

    return 0;
  }

  result = 0;
  if ((v2 & 0x100000000) == 0 && v5 == *a2)
  {
LABEL_20:
    if (v3 == 30)
    {
      if (BYTE5(v2) == 30)
      {
        return 1;
      }
    }

    else if (v3 == BYTE5(v2))
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_18AF5DDAC(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_18AFCCCF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_18AFCBB34();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a3 + 5);
  (*(v10 + 104))(v13, *MEMORY[0x1E697DBA8], v9, v11);
  sub_18AE97A54(&qword_1ED56AD68, MEMORY[0x1E697DBD0]);
  sub_18AFCDDF4();
  (*(v10 + 8))(v13, v9);
  if (v14 <= 0x22 && ((1 << v14) & 0x780078000) != 0 || (a2 & 4) != 0)
  {
    result = 0;
    v16 = 1;
  }

  else
  {
    (*(v6 + 104))(v8, *MEMORY[0x1E69814D8], v5);
    sub_18AFCCDE4();
    v16 = 0;
    result = -1;
  }

  v17[12] = v16;
  return result;
}

void sub_18AF5E044(unint64_t a1@<X1>, unsigned int *a2@<X2>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>, float a8@<S4>)
{
  v16 = sub_18AFCCCF4();
  v79.i64[0] = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_18AFCBB34();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a2 | (*(a2 + 2) << 32);
  v24 = sub_18AE978B4();
  v81 = v25;
  v27 = v26;
  (*(v20 + 104))(v22, *MEMORY[0x1E697DBA8], v19);
  sub_18AE97A54(&qword_1ED56AD68, MEMORY[0x1E697DBD0]);
  v28 = sub_18AFCDDF4();
  (*(v20 + 8))(v22, v19);
  v80 = a7;
  *&v30 = a7 * a8;
  v82 = v30;
  if ((a1 & 1) == 0)
  {
    if (v28)
    {
      if ((v23 & 0xFF0000000000) == 0x1F0000000000)
      {
        v107 = 0x3F80000000000000;
        v110 = 0x3F80000000000000;
        v106 = 0;
        v105 = 0;
        v109 = 0;
        v108 = 0;
        v112 = 0;
        v111 = 0;
        v104 = 1065353216;
        v113 = 0;
        v31 = 0.1;
        v114 = 1065353216;
        v32 = 1.1;
        v33 = 0.7;
LABEL_10:
        sub_18AFBE6B4(1, &v96, v31, v32, v33);
        v34 = *&v82;
        v36 = v96;
        v35 = v97;
        v37 = v99;
        v38 = v98;
        v39 = v100;
        v40 = v101;
        goto LABEL_11;
      }
    }

    else if ((v23 & 0xFF0000000000) == 0x1F0000000000)
    {
      v107 = 0x3F80000000000000;
      v110 = 0x3F80000000000000;
      v106 = 0;
      v105 = 0;
      v109 = 0;
      v108 = 0;
      v112 = 0;
      v111 = 0;
      v104 = 1065353216;
      v113 = 0;
      v114 = 1065353216;
      sub_18AFBE6B4(1, &v96, -0.1, 0.9, 0.7);
      v34 = *&v82;
      v36 = v96;
      v35 = v97;
      v37 = v99;
      v38 = v98;
      v39 = v100;
      v40 = v101;
LABEL_11:
      v41 = v103;
      *&v42 = v34 * v102;
      goto LABEL_56;
    }
  }

  if (((BYTE5(v23) - 31) & 0xFD) == 0)
  {
    v29.n128_f32[0] = v81;
    if (v81 == 0.0)
    {
      v31 = (v27 * 0.95) + ((1.0 - v27) * 0.0);
      v32 = v27 + ((1.0 - v27) * 0.1);
      v107 = 0x3F80000000000000;
      v110 = 0x3F80000000000000;
      v106 = 0;
      v105 = 0;
      v109 = 0;
      v108 = 0;
      v112 = 0;
      v111 = 0;
      v104 = 1065353216;
      v113 = 0;
      v114 = 1065353216;
      v33 = 1.0;
      goto LABEL_10;
    }
  }

  if (BYTE5(v23) > 0x20u)
  {
    if (BYTE5(v23) == 34)
    {
      v43 = 0.15;
      v79.f32[0] = (v27 * 0.7) + 0.15;
      v67 = v81;
      sub_18AE97AA0(v24, v81, v27 + 0.15);
      sub_18AE97AA0(v24, v67, v79.f32[0]);
      LOBYTE(v16) = 0;
      v59 = 1.0;
      v60 = 0.0;
      v44 = 0.9;
      goto LABEL_34;
    }

    if (BYTE5(v23) == 33)
    {
      sub_18AFCCE24();
      v38 = 0;
      if (v28)
      {
        v62 = 0.0;
      }

      else
      {
        v62 = 0.5;
      }

      v61.f32[0] = v61.f32[0] - v62;
      v79 = v61;
      sub_18AFCCE54();
      *&v64 = v63 - v62;
      v78 = v64;
      sub_18AFCCE34();
      *&v37 = v78;
      v35.i64[0] = v79.u32[0];
      LODWORD(v42) = v82;
      v35.i64[1] = COERCE_UNSIGNED_INT(0.5);
      DWORD2(v37) = 0;
      HIDWORD(v37) = 0.5;
      DWORD1(v40) = 0;
      *(&v40 + 1) = 0;
      *&v40 = v65 - v62;
      v36 = xmmword_18AFDC120;
      goto LABEL_52;
    }

    goto LABEL_23;
  }

  if (BYTE5(v23) != 31)
  {
    if (BYTE5(v23) == 32)
    {
      if (v28)
      {
        (*(v79.i64[0] + 104))(v18, *MEMORY[0x1E69814D8], v16, v29);
        v43 = 0.0;
        v44 = 1.0;
        v45 = sub_18AFCCDE4();
        v46 = v80;
        sub_18AE95CCC(v54, v55, v56, v57, 0.95, a4, a5, a6, v45, v47, v48, v49, v50, v51, v52, v53, SLODWORD(v80));
        v59 = v58;
        LOBYTE(v16) = 0;
        v60 = 1.0 - v46;
        goto LABEL_34;
      }

      sub_18AE97AA0(v24, v81, v27 * 0.475);
      LOBYTE(v16) = 0;
      v44 = 1.0;
      v60 = 0.5;
      v43 = 0.5;
LABEL_33:
      v59 = 1.0;
      goto LABEL_34;
    }

LABEL_23:
    v16 = (a1 >> 1) & 1;
    v43 = 0.6;
    sub_18AE97AA0(v24, v81 * 1.2, v27 * 0.6);
    v44 = 1.0;
    if ((a1 & 2) != 0)
    {
      v60 = 1.0;
    }

    else
    {
      v60 = 0.5;
    }

    if ((a1 & 2) == 0)
    {
      v43 = 0.5;
    }

    LODWORD(v66) = 1.0;
    v82 = v66;
    goto LABEL_33;
  }

  if (v28)
  {
    sub_18AE97AA0(v24, v81 * 0.95, v27 * 1.1);
    LOBYTE(v16) = 0;
    v43 = 0.15;
    v59 = 1.0;
    v44 = 0.75;
    v60 = 0.0;
  }

  else
  {
    sub_18AE97AA0(v24, v81 * 1.2, v27 * 0.6);
    LOBYTE(v16) = 0;
    v44 = 1.0;
    v60 = 0.0;
    v43 = 0.15;
    v59 = 1.0;
  }

LABEL_34:
  v107 = 0x3F80000000000000;
  v110 = 0x3F80000000000000;
  v106 = 0;
  v105 = 0;
  v109 = 0;
  v108 = 0;
  v112 = 0;
  v111 = 0;
  v104 = 1065353216;
  v113 = 0;
  v114 = 1065353216;
  if (v44 != 1.0 || v60 != 1.0 || v43 != 0.0)
  {
    v79.f32[0] = v59;
    sub_18AFBE6B4(v16, v95, v43, v44, v60);
  }

  sub_18AE982D0(&v96);
  v38 = v98;
  v37 = v99;
  v39 = v100;
  v40 = v101;
  v41 = v103;
  v36 = v96;
  v35 = v97;
  v42 = v82;
  *&v42 = *&v82 * v102;
  if ((BYTE5(v23) - 31) < 4u)
  {
    goto LABEL_56;
  }

  if ((v23 & 0x100000000) == 0)
  {
    goto LABEL_44;
  }

  v76 = v96;
  v77 = v101;
  v78 = v99;
  v79 = v97;
  v82 = v42;
  if (qword_1ED56A8C0 != -1)
  {
    swift_once();
  }

  v68 = sub_18AFA4900();
  if ((v68 & 0x100000000) == 0)
  {
    LODWORD(v23) = v68;
    LODWORD(v42) = v82;
    v37 = v78;
    v35 = v79;
    v36 = v76;
    v40 = v77;
LABEL_44:
    v69 = *&v23;
    if (*&v23 > 1.0)
    {
      v69 = 1.0;
    }

    v70 = 0.0;
    if (*&v23 >= 0.0)
    {
      v70 = v69;
    }

    v71 = 1.0 - v70;
    v72 = v70;
    v73 = (v72 * -0.3) + (v71 * -0.1);
    v74 = (v72 * 0.3) + (v71 * 0.05);
    goto LABEL_50;
  }

  v73 = -0.25;
  v74 = 0.25;
  LODWORD(v42) = v82;
  v37 = v78;
  v35 = v79;
  v36 = v76;
  v40 = v77;
LABEL_50:
  if (v81 == 0.0)
  {
    LODWORD(v42) = 1.0;
    DWORD1(v40) = 0;
    *(&v40 + 1) = 0;
    *&v40 = (v27 * v74) + ((1.0 - v27) * v73);
    *&v37 = v40;
    v35.i64[0] = v40;
    v35.i64[1] = COERCE_UNSIGNED_INT(1.0);
    DWORD2(v37) = 0;
    HIDWORD(v37) = 1.0;
    v36 = xmmword_18AFDC130;
    v38 = 0;
LABEL_52:
    v39 = 0;
    v41 = 0;
    goto LABEL_56;
  }

  if (v28)
  {
    v73 = v74;
  }

  v90 = xmmword_18AFDC130;
  v75 = v80;
  *v91 = v73;
  *&v91[4] = xmmword_18AFDC140;
  *v92 = v73;
  *&v92[4] = xmmword_18AFDC150;
  *v93 = v73;
  *&v93[4] = xmmword_18AFDC160;
  v94 = 0;
  v83[0] = v36;
  v83[1] = v35;
  v84 = v38;
  v85 = v37;
  v86 = v39;
  v87 = v40;
  v88 = v42;
  v89 = v41;
  sub_18AFBFB50(1.0 - v80);
  sub_18AFBFB50(v75);
  sub_18AFBFB14(v83);
  v36 = v90;
  v35 = *v91;
  v38 = *&v91[16];
  v37 = *v92;
  v40 = *v93;
  v39 = *&v92[16];
  LODWORD(v42) = *&v93[16];
  v41 = v94;
LABEL_56:
  *a3 = v36;
  *(a3 + 16) = v35;
  *(a3 + 32) = v38;
  *(a3 + 36) = v37;
  *(a3 + 52) = v39;
  *(a3 + 56) = v40;
  *(a3 + 72) = v42;
  *(a3 + 76) = v41;
}

uint64_t sub_18AF5EAFC(uint64_t a1, uint64_t a2)
{
  v4 = _s17ResolvedCompositeV3KeyVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF5EB60(uint64_t a1, uint64_t a2)
{
  v4 = _s17ResolvedCompositeV3KeyVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF5EBC4(uint64_t a1)
{
  v2 = _s17ResolvedCompositeV3KeyVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10TintRecipeO4TextVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE2 && *(a1 + 6))
  {
    return (*a1 + 226);
  }

  v3 = *(a1 + 5);
  if (v3 <= 0x1E)
  {
    v4 = 30;
  }

  else
  {
    v4 = *(a1 + 5);
  }

  v5 = v4 - 31;
  if (v3 < 0x1E)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t _s10TintRecipeO4TextVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE1)
  {
    *(result + 4) = 0;
    *result = a2 - 226;
    if (a3 >= 0xE2)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE2)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 5) = a2 + 30;
    }
  }

  return result;
}

unint64_t sub_18AF5ECF4()
{
  result = qword_1EA99B7E8;
  if (!qword_1EA99B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B7E8);
  }

  return result;
}