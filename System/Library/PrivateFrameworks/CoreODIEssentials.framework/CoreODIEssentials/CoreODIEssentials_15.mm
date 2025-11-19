uint64_t sub_1DB05CE28@<X0>(uint64_t *a1@<X0>, unsigned __int128 *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10118, &qword_1DB0BB170);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
  v59 = 1;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08ED14();
  sub_1DB09E414();
  if (v2)
  {
    v36 = 0;
    v63 = 0;
    v37 = 212;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v46 = 0uLL;
    v47 = -44;
    *v48 = v62[0];
    *&v48[3] = *(v62 + 3);
    v49 = 0uLL;
    v50 = -44;
    *v51 = *v61;
    *&v51[3] = *&v61[3];
    v52 = v63;
    v53 = v36;
    v54 = v37;
    *&v55[3] = *&v60[3];
    *v55 = *v60;
    v56 = 0;
    v57 = v59;
    v27 = -44;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
    LOBYTE(v38) = 0;
    sub_1DAF4AA8C(&qword_1ECC0FF50, &qword_1ECC0FF48, &qword_1DB0BB060);
    sub_1DB09E0C4();
    v35 = v46;
    v34 = v47;

    LOBYTE(v38) = 1;
    sub_1DB09E0C4();
    v32 = a2;
    v33 = v46;
    v13 = v47;

    LOBYTE(v38) = 2;
    sub_1DB09E0C4();
    v31 = v13;
    v36 = *(&v46 + 1);
    v63 = v46;
    v37 = v47;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10020, &qword_1DB0BB0E0);
    v43 = 3;
    sub_1DAF4AA8C(&qword_1ECC10028, &qword_1ECC10020, &qword_1DB0BB0E0);
    sub_1DB09E0C4();
    (*(v6 + 8))(v10, v5);
    v30 = v44;
    v14 = v45;
    v29 = HIBYTE(v45);
    v59 = v45;
    v15 = v35;
    v38 = v35;
    v16 = *(&v35 + 1);
    v17 = v34;
    v39[0] = v34;
    v20 = v33;
    v18 = v20 >> 64;
    v19 = v20;
    *&v39[8] = v33;
    v39[24] = v31;
    v21 = v36;
    *&v40 = v63;
    *(&v40 + 1) = v36;
    LOBYTE(v41) = v37;
    *(&v41 + 1) = v44;
    v42 = v45;
    v22 = *v39;
    v23 = v32;
    *v32 = v35;
    v23[1] = v22;
    v24 = *&v39[16];
    v25 = v40;
    v26 = v41;
    *(v23 + 40) = v42;
    v23[3] = v25;
    v23[4] = v26;
    v23[2] = v24;
    sub_1DB08B1A8(&v38, &v46);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *&v46 = v15;
    *(&v46 + 1) = v16;
    v47 = v17;
    v49 = __PAIR128__(v18, v19);
    v50 = v31;
    v52 = v63;
    v53 = v21;
    v54 = v37;
    v56 = v30;
    v57 = v14;
    v27 = v29;
  }

  v58 = v27;
  return sub_1DB08ED68(&v46);
}

uint64_t sub_1DB05D450()
{
  v1 = 0x726556646C697562;
  v2 = 1684628597;
  if (*v0 != 2)
  {
    v2 = 1684628325;
  }

  if (*v0)
  {
    v1 = 0x6C6169726573;
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

uint64_t sub_1DB05D4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB08F184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB05D4EC(uint64_t a1)
{
  v2 = sub_1DB08ED14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05D528(uint64_t a1)
{
  v2 = sub_1DB08ED14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unsigned __int8 *sub_1DB05D564@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  if (result[16])
  {
    *a2 = -40;
  }

  else
  {
    v3 = v2[16];
    v4 = v2[40];
    v5 = v2[64];
    v6 = v2[81];
    v7 = *result;
    if (v7 != 4)
    {
      v6 = -40;
    }

    if (v7 != 3)
    {
      v5 = v6;
    }

    if (v7 != 2)
    {
      v4 = -40;
    }

    if (*result)
    {
      v3 = v4;
    }

    if (*result > 2u)
    {
      v3 = v5;
    }

    *a2 = v3;
  }

  return result;
}

uint64_t sub_1DB05D5F4()
{
  sub_1DB09E3A4();
  sub_1DB05CC50();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05D638()
{
  sub_1DB09E3A4();
  sub_1DB05CC50();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05D678@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32))
  {
    goto LABEL_2;
  }

  v7 = *(a1 + 16);
  if (v7 == 1)
  {
    v10 = *(v2 + 16);
    v11 = *(v2 + 24);
    v12 = *(v2 + 32);
    goto LABEL_11;
  }

  if (v7 == 5)
  {
    v10 = *(v2 + 40);
    v11 = *(v2 + 48);
    v12 = *(v2 + 56);
LABEL_11:

    return sub_1DB055260(v10, v11, v12, a2);
  }

  if (v7 != 4)
  {
LABEL_2:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v5 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v5;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  v8 = *v2;
  v9 = *(v2 + 8) | (*(v2 + 9) << 8);

  return sub_1DB0553F8(v8, v9, a2);
}

uint64_t sub_1DB05D790(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10108, &qword_1DB0BB168);
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 9);
  v11 = v1[3];
  v22 = v1[2];
  v23 = v11;
  v29 = *(v1 + 32);
  v12 = v1[5];
  v20 = v1[6];
  v21 = v12;
  HIDWORD(v19) = *(v1 + 56);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EC90();
  sub_1DB09E434();
  v26 = v8;
  LOBYTE(v27) = v9;
  BYTE1(v27) = v10;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100F8, &qword_1DB0BB160);
  sub_1DAF4AA8C(&qword_1ECC10110, &qword_1ECC100F8, &qword_1DB0BB160);
  v14 = v25;
  sub_1DB09E194();
  if (v14)
  {
    return (*(v24 + 8))(v7, v3);
  }

  v16 = v20;
  v17 = v21;
  v18 = v24;
  v26 = v22;
  v27 = v23;
  v28 = v29;
  v30 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
  sub_1DAF4AA8C(&qword_1ECC0FF60, &qword_1ECC0FF48, &qword_1DB0BB060);
  sub_1DB09E194();

  v26 = v17;
  v27 = v16;
  v28 = BYTE4(v19);
  v30 = 2;

  sub_1DB09E194();

  return (*(v18 + 8))(v7, v3);
}

uint64_t sub_1DB05DA5C()
{
  v1 = *(v0 + 9);
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 32);
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0 + 56);
  if (*(v0 + 8) == 1)
  {
    sub_1DB09E3C4();
  }

  else
  {
    v8 = *v0;
    sub_1DB09E3C4();
    MEMORY[0x1E1280AA0](v8);
  }

  if ((v1 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v1 ^ 0x80u]);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v1 + 45));
    if (v3)
    {
LABEL_6:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_9;
    }
  }

  sub_1DB09E3C4();
LABEL_9:
  if ((v4 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v4 ^ 0x80u]);
    if (v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v4 + 45));
    if (v6)
    {
LABEL_11:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_14;
    }
  }

  sub_1DB09E3C4();
LABEL_14:
  if ((v7 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v9 = qword_1DB0BD040[v7 ^ 0x80u];
  }

  else
  {
    v9 = (v7 + 45);
  }

  return MEMORY[0x1E1280A80](v9);
}

uint64_t sub_1DB05DBC4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 32);
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 56);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v2 != 1)
  {
    MEMORY[0x1E1280AA0](v1);
  }

  if ((v3 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v10 = qword_1DB0BD040[v3 ^ 0x80u];
  }

  else
  {
    v10 = (v3 + 45);
  }

  MEMORY[0x1E1280A80](v10);
  sub_1DB09E3C4();
  if (v5)
  {
    sub_1DB09D794();
  }

  if ((v6 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v11 = qword_1DB0BD040[v6 ^ 0x80u];
  }

  else
  {
    v11 = (v6 + 45);
  }

  MEMORY[0x1E1280A80](v11);
  sub_1DB09E3C4();
  if (v8)
  {
    sub_1DB09D794();
  }

  if ((v9 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v12 = qword_1DB0BD040[v9 ^ 0x80u];
  }

  else
  {
    v12 = (v9 + 45);
  }

  MEMORY[0x1E1280A80](v12);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05DD60@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100E8, &qword_1DB0BB158);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  v40 = 1;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EC90();
  sub_1DB09E414();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v32 = 0;
    LOBYTE(v33) = v40;
    BYTE1(v33) = -44;
    v34 = 0;
    v35 = 0;
    v36 = -44;
    v37 = 0;
    v38 = 0;
    v39 = -44;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100F8, &qword_1DB0BB160);
    LOBYTE(v26) = 0;
    sub_1DAF4AA8C(&qword_1ECC10100, &qword_1ECC100F8, &qword_1DB0BB160);
    sub_1DB09E0C4();
    v25 = v32;
    v12 = BYTE1(v33);
    v40 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
    LOBYTE(v26) = 1;
    v24 = sub_1DAF4AA8C(&qword_1ECC0FF50, &qword_1ECC0FF48, &qword_1DB0BB060);
    sub_1DB09E0C4();
    v23 = v6;
    v22 = a2;
    v14 = v32;
    v13 = v33;
    v15 = v34;

    v41 = 2;
    sub_1DB09E0C4();
    (*(v23 + 8))(v10, v5);
    v18 = v29;
    v17 = v30;
    v19 = v31;

    *&v26 = v25;
    LODWORD(v24) = v40;
    BYTE8(v26) = v40;
    BYTE9(v26) = v12;
    *&v27 = v14;
    *(&v27 + 1) = v13;
    v28[0] = v15;
    *&v28[8] = v18;
    *&v28[16] = v17;
    v28[24] = v19;
    v20 = v22;
    v22[2] = *v28;
    *(v20 + 41) = *&v28[9];
    v21 = v27;
    *v20 = v26;
    v20[1] = v21;
    sub_1DB08B1E0(&v26, &v32);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v32 = v25;
    LOBYTE(v33) = v24;
    BYTE1(v33) = v12;
    v34 = v14;
    v35 = v13;
    v36 = v15;
    v37 = v18;
    v38 = v17;
    v39 = v19;
  }

  return sub_1DB08ECE4(&v32);
}

uint64_t sub_1DB05E164()
{
  v1 = 1684628851;
  if (*v0 != 1)
  {
    v1 = 0x6F6973726556736FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684628325;
  }
}

uint64_t sub_1DB05E1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB08F2E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB05E1D8(uint64_t a1)
{
  v2 = sub_1DB08EC90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05E214(uint64_t a1)
{
  v2 = sub_1DB08EC90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unsigned __int8 *sub_1DB05E250@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  if (result[16])
  {
    *a2 = -40;
  }

  else
  {
    v3 = v2[9];
    v4 = *result;
    if (v4 != 4)
    {
      v3 = -40;
    }

    if (v4 == 5)
    {
      v3 = v2[56];
    }

    if (v4 == 1)
    {
      v3 = v2[32];
    }

    *a2 = v3;
  }

  return result;
}

uint64_t sub_1DB05E2D4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 32);
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 56);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v2 != 1)
  {
    MEMORY[0x1E1280AA0](v1);
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  sub_1DB09E3C4();
  if (v5)
  {
    sub_1DB09D794();
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  sub_1DB09E3C4();
  if (v8)
  {
    sub_1DB09D794();
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05E40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684628851 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB05E494(uint64_t a1)
{
  v2 = sub_1DB08E778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05E4D0(uint64_t a1)
{
  v2 = sub_1DB08E778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_BYTE *sub_1DB05E50C@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  v3 = -40;
  if ((result[16] & 1) == 0 && *result == 1)
  {
    v3 = *(v2 + 16);
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1DB05E530@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(a1 + 32) & 1) != 0 || *(a1 + 16) != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v9 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v9;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  else
  {
    v3 = *v2;
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);

    return sub_1DB055260(v3, v4, v5, a2);
  }
}

uint64_t sub_1DB05E684@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32))
  {
    goto LABEL_2;
  }

  v7 = *(a1 + 16);
  if (v7 <= 8)
  {
    if (v7 == 6)
    {
      v8 = *v2;
      v9 = *(v2 + 8);
      v10 = *(v2 + 16);
      goto LABEL_14;
    }

    if (v7 == 8)
    {
      v8 = *(v2 + 24);
      v9 = *(v2 + 32);
      v10 = *(v2 + 40);
LABEL_14:

      return sub_1DB055260(v8, v9, v10, a2);
    }

LABEL_2:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v5 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v5;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  if (v7 == 9)
  {
    v8 = *(v2 + 48);
    v9 = *(v2 + 56);
    v10 = *(v2 + 64);
    goto LABEL_14;
  }

  if (v7 != 15)
  {
    goto LABEL_2;
  }

  v11 = *(v2 + 65) | (*(v2 + 66) << 8);

  return sub_1DB055578(v11, a2);
}

uint64_t sub_1DB05E7B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100E0, &qword_1DB0BB150);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 16);
  v11 = v1[4];
  v25 = v1[3];
  v26 = v11;
  v32 = *(v1 + 40);
  v12 = v1[6];
  v23 = v1[7];
  v24 = v12;
  LODWORD(v12) = *(v1 + 64);
  v20 = *(v1 + 65);
  v21 = *(v1 + 66);
  v22 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EC0C();

  sub_1DB09E434();
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
  sub_1DAF4AA8C(&qword_1ECC0FF60, &qword_1ECC0FF48, &qword_1DB0BB060);
  v14 = v27;
  sub_1DB09E194();
  if (v14)
  {

    return (*(v28 + 8))(v7, v3);
  }

  else
  {
    v17 = v23;
    v16 = v24;
    v18 = v28;

    v29 = v25;
    v30 = v26;
    v31 = v32;
    v33 = 1;

    sub_1DB09E194();

    v29 = v16;
    v30 = v17;
    v31 = v22;
    v33 = 2;

    sub_1DB09E194();

    LOBYTE(v29) = v20;
    BYTE1(v29) = v21;
    v33 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF90, &qword_1DB0BB088);
    sub_1DAF4AA8C(&qword_1ECC0FFA8, &qword_1ECC0FF90, &qword_1DB0BB088);
    sub_1DB09E194();
    return (*(v18 + 8))(v7, v3);
  }
}

uint64_t sub_1DB05EAE8()
{
  v1 = *(v0 + 16);
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = v0[7];
  v13 = v0[6];
  v14 = *(v0 + 64);
  v6 = *(v0 + 65);
  v7 = *(v0 + 66);
  if (v0[1])
  {
    v8 = *v0;
    sub_1DB09E3C4();
    sub_1DB09D794();
  }

  else
  {
    sub_1DB09E3C4();
  }

  if ((v1 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v1 ^ 0x80u]);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v1 + 45));
    if (v3)
    {
LABEL_6:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_9;
    }
  }

  sub_1DB09E3C4();
LABEL_9:
  if ((v4 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v9 = qword_1DB0BD040[v4 ^ 0x80u];
  }

  else
  {
    v9 = (v4 + 45);
  }

  MEMORY[0x1E1280A80](v9);
  sub_1DB09E3C4();
  if (v5)
  {
    sub_1DB09D794();
  }

  if ((v14 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v10 = qword_1DB0BD040[v14 ^ 0x80u];
  }

  else
  {
    v10 = (v14 + 45);
  }

  MEMORY[0x1E1280A80](v10);
  if (v6 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v7 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v11 = qword_1DB0BD040[v7 ^ 0x80u];
  }

  else
  {
    v11 = (v7 + 45);
  }

  return MEMORY[0x1E1280A80](v11);
}

uint64_t sub_1DB05ECB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100D0, &qword_1DB0BB148);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EC0C();
  sub_1DB09E414();
  if (v2)
  {
    v27 = 0uLL;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v31 = 0uLL;
    v32 = -44;
    v33 = 0uLL;
    v34 = -44;
    v35 = v27;
    v36 = -44;
    v37 = -11262;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
    LOBYTE(v28) = 0;
    sub_1DAF4AA8C(&qword_1ECC0FF50, &qword_1ECC0FF48, &qword_1DB0BB060);
    sub_1DB09E0C4();
    v26 = v31;
    v38 = v32;

    LOBYTE(v28) = 1;
    sub_1DB09E0C4();
    v25 = v31;
    v24 = v32;

    LOBYTE(v28) = 2;
    sub_1DB09E0C4();
    v23 = a2;
    v27 = v31;
    v13 = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF90, &qword_1DB0BB088);
    v39 = 3;
    sub_1DAF4AA8C(&qword_1ECC0FF98, &qword_1ECC0FF90, &qword_1DB0BB088);
    sub_1DB09E0C4();
    (*(v6 + 8))(v10, v5);
    v22 = v40;
    v21 = v41;
    v14 = v26;
    v28 = v26;
    v15 = v38;
    v29[0] = v38;
    v16 = v25;
    *&v29[8] = v25;
    v17 = v24;
    v29[24] = v24;
    *v30 = v27;
    v30[16] = v13;
    v30[17] = v40;
    v30[18] = v41;
    v18 = v27;
    v19 = v23;
    *(v23 + 32) = *&v29[16];
    *(v19 + 48) = v18;
    v20 = *v29;
    *v19 = v28;
    *(v19 + 16) = v20;
    *(v19 + 63) = *&v30[15];
    sub_1DB08B218(&v28, &v31);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v31 = v14;
    v32 = v15;
    v33 = v16;
    v34 = v17;
    v35 = v27;
    v36 = v13;
    LOBYTE(v37) = v22;
    HIBYTE(v37) = v21;
  }

  return sub_1DB08EC60(&v31);
}

uint64_t sub_1DB05F198()
{
  v1 = 0x7265626D756ELL;
  v2 = 1769172329;
  if (*v0 != 2)
  {
    v2 = 0x6572506D69537369;
  }

  if (*v0)
  {
    v1 = 0x6469636369;
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

uint64_t sub_1DB05F20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB08F400(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB05F234(uint64_t a1)
{
  v2 = sub_1DB08EC0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05F270(uint64_t a1)
{
  v2 = sub_1DB08EC0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unsigned __int8 *sub_1DB05F2AC@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  if (result[16])
  {
    *a2 = -40;
  }

  else
  {
    v3 = v2[16];
    v4 = v2[40];
    v5 = v2[64];
    v6 = v2[66];
    v7 = *result;
    if (v7 != 15)
    {
      v6 = -40;
    }

    if (v7 != 9)
    {
      v5 = v6;
    }

    if (v7 != 8)
    {
      v4 = -40;
    }

    if (v7 != 6)
    {
      v3 = v4;
    }

    if (*result > 8u)
    {
      v3 = v5;
    }

    *a2 = v3;
  }

  return result;
}

uint64_t sub_1DB05F33C()
{
  sub_1DB09E3A4();
  sub_1DB05EAE8();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05F380()
{
  sub_1DB09E3A4();
  sub_1DB05EAE8();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB05F3C0(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v18 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v19 = v6;
  v20 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v18 - v10;
  v12 = *v4;
  v13 = v4[1];
  v14 = *(v4 + 16);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18();

  sub_1DB09E434();
  v21 = v12;
  v22 = v13;
  v23 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
  sub_1DAF4AA8C(&qword_1ECC0FF60, &qword_1ECC0FF48, &qword_1DB0BB060);
  v16 = v19;
  sub_1DB09E194();

  return (*(v20 + 8))(v11, v16);
}

uint64_t sub_1DB05F574@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17 - v11;

  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DB09E414();
  if (!v5)
  {
    v14 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
    sub_1DAF4AA8C(&qword_1ECC0FF50, &qword_1ECC0FF48, &qword_1DB0BB060);
    sub_1DB09E0C4();
    (*(v21 + 8))(v12, v8);
    v15 = v20;
    *v14 = v19;
    *(v14 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DB05F75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4C61746144636170 && a2 == 0xEB00000000747369)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB05F7E8(uint64_t a1)
{
  v2 = sub_1DB08E7CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB05F824(uint64_t a1)
{
  v2 = sub_1DB08E7CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_BYTE *sub_1DB05F860@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  v3 = -40;
  if ((result[16] & 1) == 0 && *result == 7)
  {
    v3 = *(v2 + 16);
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1DB05F884@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(a1 + 32) & 1) != 0 || *(a1 + 16) != 7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v9 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v9;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  else
  {
    v3 = *v2;
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);

    return sub_1DB055260(v3, v4, v5, a2);
  }
}

uint64_t sub_1DB05F9D8()
{
  v1 = *(v0 + 16);
  if (v0[1])
  {
    v2 = *v0;
    sub_1DB09E3C4();
    sub_1DB09D794();
  }

  else
  {
    sub_1DB09E3C4();
  }

  return ArmandDeviceDataErrorCode.hash(into:)();
}

id sub_1DB05FA5C(void *a1)
{
  [a1 coordinate];
  v4 = round(v3 * 1000.0) / 1000.0;
  [a1 coordinate];
  *(v1 + 24) = v4;
  *(v1 + 32) = -11520;
  *(v1 + 40) = round(v5 * 1000.0) / 1000.0;
  *(v1 + 48) = -11520;
  [a1 horizontalAccuracy];
  *(v1 + 56) = v6;
  *(v1 + 64) = -11520;
  [a1 verticalAccuracy];
  *(v1 + 72) = v7;
  *(v1 + 80) = -11520;
  result = [a1 altitude];
  *(v1 + 88) = v9;
  *(v1 + 96) = -11520;
  return result;
}

char sub_1DB05FB24@<W0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  if ((*(a1 + 16) & 1) == 0)
  {
    if (*a1 == 10)
    {
      v12 = v2[16];
      goto LABEL_14;
    }

    if (*a1 == 11)
    {
      v12 = v2[18];
LABEL_14:
      *a2 = v12;
      return a1;
    }

LABEL_12:
    v12 = -40;
    goto LABEL_14;
  }

  v5 = v2[33];
  v6 = v2[49];
  v7 = v2[65];
  v8 = v2[81];
  v9 = v2[97];
  v10 = *(a1 + 8);

  v11._countAndFlagsBits = v4;
  v11._object = v10;
  LOBYTE(a1) = ODILocationBindingsName.init(rawValue:)(v11);
  if (v14 > 2u)
  {
    if (v14 == 3)
    {
      *a2 = v8;
      return a1;
    }

    if (v14 == 4)
    {
      *a2 = v9;
      return a1;
    }

    goto LABEL_12;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      *a2 = v6;
    }

    else
    {
      *a2 = v7;
    }
  }

  else
  {
    *a2 = v5;
  }

  return a1;
}

uint64_t sub_1DB05FC1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (*(a1 + 32))
  {
    v30 = *(v2 + 24);
    v31 = *(v2 + 40);
    v27 = *(v2 + 32);
    v28 = *(v2 + 48);
    v25 = *(v2 + 33);
    v26 = *(v2 + 49);
    v29 = *(v2 + 56);
    v24 = *(v2 + 64);
    v5 = *(v2 + 65);
    v6 = *(v2 + 72);
    v7 = *(v2 + 80);
    v8 = *(v2 + 81);
    v9 = *(v2 + 88);
    v10 = *(v2 + 96);
    v11 = *(v2 + 97);
    v12 = *(a1 + 24);

    v13._countAndFlagsBits = v3;
    v13._object = v12;
    ODILocationBindingsName.init(rawValue:)(v13);
    if (v32 <= 2u)
    {
      if (!v32)
      {
        return sub_1DB055870(v30, v27 | (v25 << 8), a2);
      }

      if (v32 == 1)
      {
        return sub_1DB055870(v31, v28 | (v26 << 8), a2);
      }

      return sub_1DB055870(v29, v24 | (v5 << 8), a2);
    }

    if (v32 == 3)
    {
      return sub_1DB055870(v6, v7 | (v8 << 8), a2);
    }

    if (v32 == 4)
    {
      return sub_1DB055870(v9, v10 | (v11 << 8), a2);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v23 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v23;
    *(inited + 48) = -5;
    v22 = a2;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, v22);
  }

  if (*(a1 + 16) == 10)
  {
    v16 = *v2;
    v17 = *(v2 + 8);
    v18 = *(v2 + 16);

    return sub_1DB055260(v16, v17, v18, a2);
  }

  else
  {
    if (*(a1 + 16) != 11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB0A04E0;
      *(inited + 32) = 0x646F43726F727265;
      *(inited + 40) = 0xE900000000000065;
      v21 = MEMORY[0x1E69E6540];
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 80) = v21;
      *(inited + 48) = -5;
      v22 = a2;
      return ODIBindingsDict.init(dictionaryLiteral:)(inited, v22);
    }

    v15 = *(v2 + 17) | (*(v2 + 18) << 8);

    return sub_1DB055578(v15, a2);
  }
}

uint64_t sub_1DB05FED8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100C8, &qword_1DB0BB140);
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = *(v1 + 16);
  v44 = *(v1 + 17);
  v38 = *(v1 + 18);
  v37 = v1[3];
  v11 = *(v1 + 32);
  v35 = *(v1 + 33);
  v36 = v11;
  v32 = v1[5];
  v12 = *(v1 + 48);
  v33 = *(v1 + 49);
  v34 = v12;
  v29 = v1[7];
  v13 = *(v1 + 64);
  v30 = *(v1 + 65);
  v31 = v13;
  v26 = v1[9];
  v14 = *(v1 + 80);
  v27 = *(v1 + 81);
  v28 = v14;
  v23 = v1[11];
  v15 = *(v1 + 96);
  v24 = *(v1 + 97);
  v25 = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EB88();

  sub_1DB09E434();
  v41 = v9;
  v42 = v8;
  v43 = v10;
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
  sub_1DAF4AA8C(&qword_1ECC0FF60, &qword_1ECC0FF48, &qword_1DB0BB060);
  v17 = v39;
  sub_1DB09E194();
  if (v17)
  {

    return (*(v40 + 8))(v7, v3);
  }

  else
  {
    v19 = v35;
    v20 = v36;
    v21 = v37;

    LOBYTE(v41) = v44;
    BYTE1(v41) = v38;
    v45 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF90, &qword_1DB0BB088);
    sub_1DAF4AA8C(&qword_1ECC0FFA8, &qword_1ECC0FF90, &qword_1DB0BB088);
    sub_1DB09E194();
    v41 = v21;
    LOBYTE(v42) = v20;
    BYTE1(v42) = v19;
    v45 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10050, &qword_1DB0BB0F8);
    sub_1DAF4AA8C(&qword_1ECC10068, &qword_1ECC10050, &qword_1DB0BB0F8);
    sub_1DB09E194();
    v22 = v40;
    v41 = v32;
    LOBYTE(v42) = v34;
    BYTE1(v42) = v33;
    v45 = 3;
    sub_1DB09E194();
    v41 = v29;
    LOBYTE(v42) = v31;
    BYTE1(v42) = v30;
    v45 = 4;
    sub_1DB09E194();
    v41 = v26;
    LOBYTE(v42) = v28;
    BYTE1(v42) = v27;
    v45 = 5;
    sub_1DB09E194();
    v41 = v23;
    LOBYTE(v42) = v25;
    BYTE1(v42) = v24;
    v45 = 6;
    sub_1DB09E194();
    return (*(v22 + 8))(v7, v3);
  }
}

uint64_t sub_1DB060374(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v5 = *(v1 + 18);
  v6 = v1[3];
  v7 = *(v1 + 32);
  v8 = *(v1 + 33);
  v17 = v1[5];
  v13 = *(v1 + 49);
  v14 = *(v1 + 48);
  v20 = v1[7];
  v15 = *(v1 + 65);
  v16 = *(v1 + 64);
  v18 = *(v1 + 81);
  v19 = *(v1 + 80);
  v23 = v1[9];
  v24 = v1[11];
  v21 = *(v1 + 97);
  v22 = *(v1 + 96);
  if (v1[1])
  {
    v9 = *v1;
    sub_1DB09E3C4();
    sub_1DB09D794();
  }

  else
  {
    sub_1DB09E3C4();
  }

  if ((v3 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v10 = qword_1DB0BD040[v3 ^ 0x80u];
  }

  else
  {
    v10 = (v3 + 45);
  }

  MEMORY[0x1E1280A80](v10);
  if (v4 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v5 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v11 = qword_1DB0BD040[v5 ^ 0x80u];
  }

  else
  {
    v11 = (v5 + 45);
  }

  MEMORY[0x1E1280A80](v11);
  sub_1DB055C74(a1, v6, v7 | (v8 << 8));
  sub_1DB055C74(a1, v17, v14 | (v13 << 8));
  sub_1DB055C74(a1, v20, v16 | (v15 << 8));
  sub_1DB055C74(a1, v23, v19 | (v18 << 8));

  return sub_1DB055C74(a1, v24, v22 | (v21 << 8));
}

uint64_t sub_1DB06055C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100B8, &qword_1DB0BB138);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v34 - v9;
  v104 = 1;
  v101 = 1;
  v98 = 1;
  v95 = 1;
  v92 = 1;
  v11 = a1[3];
  v12 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DB08EB88();
  sub_1DB09E414();
  if (v2)
  {
    v51 = v2;
    v48 = 0;
    v49 = 0;
    v52 = 0;
    v108 = 2;
    v47 = 212;
    v107 = 212;
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v63 = 0uLL;
    v64 = -44;
    v65 = v108;
    v66 = -44;
    v67 = v105;
    v68 = v106;
    v69 = 0;
    v70 = v104;
    v71 = -44;
    v72 = v102;
    v73 = v103;
    v74 = v52;
    v75 = v101;
    v76 = -44;
    v77 = v99;
    v78 = v100;
    v79 = v49;
    v80 = v98;
    v81 = v107;
    v82 = v96;
    v83 = v97;
    v84 = v48;
    v85 = v95;
    v86 = v47;
    v88 = v94;
    v87 = v93;
    v89 = 0;
    v90 = v92;
    v13 = -44;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
    LOBYTE(v53) = 0;
    sub_1DAF4AA8C(&qword_1ECC0FF50, &qword_1ECC0FF48, &qword_1DB0BB060);
    sub_1DB09E0C4();
    v45 = v6;
    v46 = v63;
    v15 = v64;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF90, &qword_1DB0BB088);
    LOBYTE(v53) = 1;
    sub_1DAF4AA8C(&qword_1ECC0FF98, &qword_1ECC0FF90, &qword_1DB0BB088);
    sub_1DB09E0C4();
    v108 = v63;
    v44 = BYTE1(v63);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10050, &qword_1DB0BB0F8);
    LOBYTE(v53) = 2;
    sub_1DAF4AA8C(&qword_1ECC10058, &qword_1ECC10050, &qword_1DB0BB0F8);
    v51 = v16;
    sub_1DB09E0C4();
    v17 = v108;
    v43 = v63;
    v42 = BYTE9(v63);
    v104 = BYTE8(v63);
    LOBYTE(v53) = 3;
    sub_1DB09E0C4();
    v40 = a2;
    v18 = v63;
    v41 = BYTE9(v63);
    v101 = BYTE8(v63);
    LOBYTE(v53) = 4;
    sub_1DB09E0C4();
    v52 = v18;
    v19 = v17;
    v39 = v15;
    v20 = v63;
    v21 = BYTE9(v63);
    v98 = BYTE8(v63);
    LOBYTE(v53) = 5;
    sub_1DB09E0C4();
    v49 = v20;
    v107 = v21;
    v48 = v63;
    v47 = BYTE9(v63);
    v95 = BYTE8(v63);
    v60 = 6;
    sub_1DB09E0C4();
    v51 = 0;
    (*(v45 + 8))(v10, v5);
    v36 = v61;
    v35 = HIBYTE(v62);
    v92 = v62;
    v53 = v46;
    LOBYTE(v54) = v39;
    BYTE1(v54) = v19;
    BYTE2(v54) = v44;
    *(&v54 + 1) = v43;
    LODWORD(v45) = v104;
    LOBYTE(v55) = v104;
    v22 = v41;
    BYTE1(v55) = v42;
    *(&v55 + 1) = v52;
    v38 = v101;
    LOBYTE(v56) = v101;
    BYTE1(v56) = v41;
    v23 = v48;
    v24 = v49;
    *(&v56 + 1) = v49;
    v37 = v98;
    LOBYTE(v57) = v98;
    LOBYTE(v16) = v107;
    BYTE1(v57) = v107;
    *(&v57 + 1) = v48;
    v25 = v95;
    LOBYTE(v58) = v95;
    v26 = v47;
    BYTE1(v58) = v47;
    *(&v58 + 1) = v61;
    v27 = v62;
    v59 = v62;
    v28 = v54;
    v29 = v40;
    *v40 = v46;
    v29[1] = v28;
    v30 = v55;
    v31 = v56;
    v32 = v57;
    v33 = v58;
    *(v29 + 48) = v59;
    v29[4] = v32;
    v29[5] = v33;
    v29[2] = v30;
    v29[3] = v31;
    sub_1DB08B250(&v53, &v63);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v63 = v46;
    v64 = v39;
    v65 = v108;
    v66 = v44;
    v69 = v43;
    v70 = v45;
    v71 = v42;
    v74 = v52;
    v75 = v38;
    v76 = v22;
    v79 = v24;
    v80 = v37;
    v81 = v16;
    v84 = v23;
    v85 = v25;
    v86 = v26;
    v89 = v36;
    v90 = v27;
    v13 = v35;
  }

  v91 = v13;
  return sub_1DB08EBDC(&v63);
}

uint64_t sub_1DB060D8C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000014;
    if (v1 != 1)
    {
      v5 = 0x656475746974616CLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x61636F6C5F737067;
    }
  }

  else
  {
    v2 = 0x6564757469746C61;
    if (v1 == 5)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000012;
    if (v1 == 3)
    {
      v3 = 0x64757469676E6F6CLL;
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

uint64_t sub_1DB060E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB08F560(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB060EAC(uint64_t a1)
{
  v2 = sub_1DB08EB88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB060EE8(uint64_t a1)
{
  v2 = sub_1DB08EB88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB060F5C()
{
  sub_1DB09E3A4();
  sub_1DB060374(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB060FA0()
{
  sub_1DB09E3A4();
  sub_1DB060374(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB060FE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FFA0, &qword_1DB0BB090);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08E820();
  sub_1DB09E434();
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF90, &qword_1DB0BB088);
  sub_1DAF4AA8C(&qword_1ECC0FFA8, &qword_1ECC0FF90, &qword_1DB0BB088);
  sub_1DB09E194();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1DB06116C()
{
  v1 = v0[1];
  if (*v0 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v1 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v2 = qword_1DB0BD040[v1 ^ 0x80u];
  }

  else
  {
    v2 = (v1 + 45);
  }

  return MEMORY[0x1E1280A80](v2);
}

uint64_t sub_1DB0611F4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB09E3A4();
  if (v1 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v2 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v3 = qword_1DB0BD040[v2 ^ 0x80u];
  }

  else
  {
    v3 = (v2 + 45);
  }

  MEMORY[0x1E1280A80](v3);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB0612A0@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF80, &qword_1DB0BB080);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08E820();
  sub_1DB09E414();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF90, &qword_1DB0BB088);
    sub_1DAF4AA8C(&qword_1ECC0FF98, &qword_1ECC0FF90, &qword_1DB0BB088);
    sub_1DB09E0C4();
    (*(v6 + 8))(v10, v5);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DB061468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001DB0CC020 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB09E254();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB0614FC(uint64_t a1)
{
  v2 = sub_1DB08E820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB061538(uint64_t a1)
{
  v2 = sub_1DB08E820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB061574@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 16) & 1 | (*result != 12))
  {
    v3 = -40;
  }

  else
  {
    v3 = *(v2 + 1);
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1DB0615A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(a1 + 32) & 1) != 0 || *(a1 + 16) != 12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v7 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v7;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  else
  {
    v3 = *v2;

    return sub_1DB055578(v3, a2);
  }
}

uint64_t sub_1DB0616A4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB09E3A4();
  if (v1 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  ArmandDeviceDataErrorCode.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB061724()
{
  v1 = *(v0 + 16);
  if (v0[1])
  {
    v2 = *v0;
    sub_1DB09E3C4();
    sub_1DB09D794();
  }

  else
  {
    sub_1DB09E3C4();
  }

  if ((v1 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v3 = qword_1DB0BD040[v1 ^ 0x80u];
  }

  else
  {
    v3 = (v1 + 45);
  }

  return MEMORY[0x1E1280A80](v3);
}

uint64_t sub_1DB0617B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v2)
  {
    sub_1DB09D794();
  }

  if ((v3 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v4 = qword_1DB0BD040[v3 ^ 0x80u];
  }

  else
  {
    v4 = (v3 + 45);
  }

  MEMORY[0x1E1280A80](v4);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB061880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656E6F7A656D6974 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB061908(uint64_t a1)
{
  v2 = sub_1DB08E874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB061944(uint64_t a1)
{
  v2 = sub_1DB08E874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_BYTE *sub_1DB061980@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  v3 = -40;
  if ((result[16] & 1) == 0 && *result == 14)
  {
    v3 = *(v2 + 16);
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1DB0619A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(a1 + 32) & 1) != 0 || *(a1 + 16) != 14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v9 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v9;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  else
  {
    v3 = *v2;
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);

    return sub_1DB055260(v3, v4, v5, a2);
  }
}

uint64_t sub_1DB061AF8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v2)
  {
    sub_1DB09D794();
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB061B78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32) == 1)
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v9 = *v2;
    v10 = *(v2 + 8);

    sub_1DAFCE348(v5, v4, a2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v8 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v8;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }
}

uint64_t sub_1DB061C58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E238, &qword_1DB0A01D0);
  v6 = *(*(v5 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v10 = &v23 - v9;
  if (*(a1 + 16) == 1)
  {
    v11 = *v2;
    if (v11 && (v13 = *a1, v12 = *(a1 + 8), v14 = *(v11 + 16), , v14) && (v15 = sub_1DAF35210(v13, v12), (v16 & 1) != 0))
    {
      v17 = v15;
      v18 = *(v11 + 56);
      v19 = type metadata accessor for AnyODIKnownBinding(0);
      v20 = *(v19 - 8);
      sub_1DB08E6B0(v18 + *(v20 + 72) * v17, v10, type metadata accessor for AnyODIKnownBinding);
      (*(v20 + 56))(v10, 0, 1, v19);
      sub_1DAF40AEC(v10, &qword_1ECC0E238, &qword_1DB0A01D0);

      v21 = -45;
    }

    else
    {
      v22 = type metadata accessor for AnyODIKnownBinding(0);
      (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
      sub_1DAF40AEC(v10, &qword_1ECC0E238, &qword_1DB0A01D0);

      v21 = -44;
    }
  }

  else
  {
    v21 = -40;
  }

  *a2 = v21;
  return result;
}

uint64_t sub_1DB061E4C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FFE8, &qword_1DB0BB0B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08E8C8();

  sub_1DB09E434();
  v13 = v9;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FFD8, &qword_1DB0BB0B0);
  sub_1DAF4AA8C(&qword_1ECC0FFF0, &qword_1ECC0FFD8, &qword_1DB0BB0B0);
  sub_1DB09E194();

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1DB061FF8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  if (*v2)
  {
    sub_1DB09E3C4();
    sub_1DB084210(a1, v4);
  }

  else
  {
    sub_1DB09E3C4();
  }

  if ((v5 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v6 = qword_1DB0BD040[v5 ^ 0x80u];
  }

  else
  {
    v6 = (v5 + 45);
  }

  return MEMORY[0x1E1280A80](v6);
}

uint64_t sub_1DB062084()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v1)
  {
    sub_1DB084210(v5, v1);
  }

  if ((v2 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v3 = qword_1DB0BD040[v2 ^ 0x80u];
  }

  else
  {
    v3 = (v2 + 45);
  }

  MEMORY[0x1E1280A80](v3);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB062130@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FFC8, &qword_1DB0BB0A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  sub_1DAF3F644(MEMORY[0x1E69E7CC0]);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08E8C8();
  sub_1DB09E414();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FFD8, &qword_1DB0BB0B0);
    sub_1DAF4AA8C(&qword_1ECC0FFE0, &qword_1ECC0FFD8, &qword_1DB0BB0B0);
    sub_1DB09E0C4();
    (*(v5 + 8))(v9, v4);
    v12 = v15;
    v13 = v16;

    v14 = v17;
    *v17 = v12;
    *(v14 + 8) = v13;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_1DB062340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001DB0CC040 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB09E254();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB0623D4(uint64_t a1)
{
  v2 = sub_1DB08E8C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB062410(uint64_t a1)
{
  v2 = sub_1DB08E8C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB06248C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v1)
  {
    sub_1DB084210(v4, v1);
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB06250C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (*(a1 + 32) == 1)
  {
    v5 = *v2;
    v6 = v2[1];
    v23 = v2[3];
    v24 = v2[2];
    v7 = *(v2 + 1);
    v8 = v2[16];
    v9 = v2[17];
    v10 = *(v2 + 3);
    v11 = v2[32];
    v12 = v2[33];
    v13 = *(a1 + 24);

    v14._countAndFlagsBits = v4;
    v14._object = v13;
    ODIDeviceSettingsBindingsName.init(rawValue:)(v14);
    if (v26 > 2u)
    {
      if (v26 - 5 >= 2)
      {
        if (v26 == 3)
        {
          v21 = v8 | (v9 << 8);
          v22 = v7;
        }

        else
        {
          v21 = v11 | (v12 << 8);
          v22 = v10;
        }

        result = sub_1DB055700(v22, v21, &v27);
        goto LABEL_17;
      }
    }

    else
    {
      if (!v26)
      {
        v15 = v5 | (v6 << 8);
        goto LABEL_14;
      }

      if (v26 == 1)
      {
        v15 = v24 | (v23 << 8);
LABEL_14:
        result = sub_1DB055578(v15, &v27);
        goto LABEL_17;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v20 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v20;
    *(inited + 48) = -5;
    result = ODIBindingsDict.init(dictionaryLiteral:)(inited, &v27);
LABEL_17:
    v3 = a2;
    goto LABEL_18;
  }

  if (*(a1 + 16) == 13)
  {
    result = sub_1DB055578(v2[34] | (v2[35] << 8), &v27);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_1DB0A04E0;
    *(v17 + 32) = 0x646F43726F727265;
    *(v17 + 40) = 0xE900000000000065;
    v18 = MEMORY[0x1E69E6540];
    *(v17 + 72) = MEMORY[0x1E69E6530];
    *(v17 + 80) = v18;
    *(v17 + 48) = -5;
    result = ODIBindingsDict.init(dictionaryLiteral:)(v17, &v27);
  }

LABEL_18:
  *v3 = v27;
  return result;
}

char sub_1DB062720@<W0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  if (*(a1 + 16) == 1)
  {
    v5 = v2[1];
    v6 = v2[3];
    v7 = v2[17];
    v8 = v2[33];
    v9 = *(a1 + 8);

    v10._countAndFlagsBits = v4;
    v10._object = v9;
    LOBYTE(a1) = ODIDeviceSettingsBindingsName.init(rawValue:)(v10);
    if (v12 > 2u)
    {
      if (v12 - 5 < 2)
      {
        goto LABEL_10;
      }

      if (v12 == 3)
      {
        v5 = v7;
      }

      else
      {
        v5 = v8;
      }
    }

    else if (v12)
    {
      if (v12 == 1)
      {
        v5 = v6;
        goto LABEL_14;
      }

LABEL_10:
      v5 = -40;
    }
  }

  else if (*a1 == 13)
  {
    v5 = v2[35];
  }

  else
  {
    v5 = -40;
  }

LABEL_14:
  *a2 = v5;
  return a1;
}

uint64_t sub_1DB0627F4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10030, &qword_1DB0BB0E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17 - v8;
  v10 = *v1;
  v29 = *(v1 + 2);
  v25 = *(v1 + 3);
  v24 = *(v1 + 1);
  v11 = *(v1 + 16);
  v22 = *(v1 + 17);
  v23 = v11;
  v19 = *(v1 + 3);
  v12 = *(v1 + 32);
  v20 = *(v1 + 33);
  v21 = v12;
  LODWORD(v8) = *(v1 + 35);
  v17 = *(v1 + 34);
  v18 = v8;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08E984();
  sub_1DB09E434();
  LOWORD(v26) = v10;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF90, &qword_1DB0BB088);
  sub_1DAF4AA8C(&qword_1ECC0FFA8, &qword_1ECC0FF90, &qword_1DB0BB088);
  sub_1DB09E194();
  if (!v2)
  {
    v15 = v23;
    v16 = v24;
    LOBYTE(v26) = v29;
    BYTE1(v26) = v25;
    v30 = 1;
    sub_1DB09E194();
    v26 = v16;
    v27 = v15;
    v28 = v22;
    v30 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10020, &qword_1DB0BB0E0);
    sub_1DAF4AA8C(&qword_1ECC10038, &qword_1ECC10020, &qword_1DB0BB0E0);
    sub_1DB09E194();
    v26 = v19;
    v27 = v21;
    v28 = v20;
    v30 = 3;
    sub_1DB09E194();
    LOBYTE(v26) = v17;
    BYTE1(v26) = v18;
    v30 = 4;
    sub_1DB09E194();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1DB062B54()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 17);
  v15 = v4;
  v16 = *(v0 + 24);
  v17 = *(v0 + 32);
  v7 = *(v0 + 33);
  v8 = *(v0 + 34);
  v9 = *(v0 + 35);
  if (*v0 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v1 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v10 = qword_1DB0BD040[v1 ^ 0x80u];
  }

  else
  {
    v10 = (v1 + 45);
  }

  MEMORY[0x1E1280A80](v10);
  if (v2 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v3 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v3 ^ 0x80u]);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v3 + 45));
    if (!v5)
    {
LABEL_10:
      sub_1DB09E3C4();
      MEMORY[0x1E1280A80](v15);
      goto LABEL_13;
    }
  }

  sub_1DB09E3C4();
LABEL_13:
  if ((v6 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v11 = qword_1DB0BD040[v6 ^ 0x80u];
  }

  else
  {
    v11 = (v6 + 45);
  }

  MEMORY[0x1E1280A80](v11);
  sub_1DB09E3C4();
  if (!v17)
  {
    MEMORY[0x1E1280A80](v16);
  }

  if ((v7 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v12 = qword_1DB0BD040[v7 ^ 0x80u];
  }

  else
  {
    v12 = (v7 + 45);
  }

  MEMORY[0x1E1280A80](v12);
  if (v8 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v9 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v13 = qword_1DB0BD040[v9 ^ 0x80u];
  }

  else
  {
    v13 = (v9 + 45);
  }

  return MEMORY[0x1E1280A80](v13);
}

uint64_t sub_1DB062D64()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[17];
  v15 = *(v0 + 1);
  v16 = *(v0 + 3);
  v17 = v0[16];
  v18 = v0[32];
  v6 = v0[33];
  v7 = v0[34];
  v8 = v0[35];
  sub_1DB09E3A4();
  if (v1 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v2 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v9 = qword_1DB0BD040[v2 ^ 0x80u];
  }

  else
  {
    v9 = (v2 + 45);
  }

  MEMORY[0x1E1280A80](v9);
  if (v3 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v4 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v10 = qword_1DB0BD040[v4 ^ 0x80u];
  }

  else
  {
    v10 = (v4 + 45);
  }

  MEMORY[0x1E1280A80](v10);
  sub_1DB09E3C4();
  if (!v17)
  {
    MEMORY[0x1E1280A80](v15);
  }

  if ((v5 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v11 = qword_1DB0BD040[v5 ^ 0x80u];
  }

  else
  {
    v11 = (v5 + 45);
  }

  MEMORY[0x1E1280A80](v11);
  sub_1DB09E3C4();
  if (!v18)
  {
    MEMORY[0x1E1280A80](v16);
  }

  if ((v6 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v12 = qword_1DB0BD040[v6 ^ 0x80u];
  }

  else
  {
    v12 = (v6 + 45);
  }

  MEMORY[0x1E1280A80](v12);
  if (v7 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  if ((v8 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v13 = qword_1DB0BD040[v8 ^ 0x80u];
  }

  else
  {
    v13 = (v8 + 45);
  }

  MEMORY[0x1E1280A80](v13);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB062FDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10010, &qword_1DB0BB0D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08E984();
  sub_1DB09E414();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF90, &qword_1DB0BB088);
    v34 = 0;
    sub_1DAF4AA8C(&qword_1ECC0FF98, &qword_1ECC0FF90, &qword_1DB0BB088);
    sub_1DB09E0C4();
    v27 = a2;
    v28 = v29;
    v12 = BYTE1(v29);
    v34 = 1;
    sub_1DB09E0C4();
    v23 = v29;
    v24 = BYTE1(v29);
    v25 = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10020, &qword_1DB0BB0E0);
    v34 = 2;
    sub_1DAF4AA8C(&qword_1ECC10028, &qword_1ECC10020, &qword_1DB0BB0E0);
    v26 = v13;
    sub_1DB09E0C4();
    v21 = v29;
    v22 = v31;
    v33 = v30;
    v34 = 3;
    sub_1DB09E0C4();
    v15 = v29;
    LODWORD(v26) = v31;
    v32 = v30;
    v34 = 4;
    sub_1DB09E0C4();
    (*(v6 + 8))(v10, v5);
    v16 = v29;
    v17 = v33;
    v18 = v32;
    v19 = v27;
    *v27 = v28;
    v19[1] = v25;
    v19[2] = v23;
    v19[3] = v24;
    *(v19 + 1) = v21;
    v19[16] = v17;
    v19[17] = v22;
    *(v19 + 3) = v15;
    v19[32] = v18;
    v19[33] = v26;
    *(v19 + 17) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DB063370()
{
  v1 = *v0;
  v2 = 0x6563697665447369;
  v3 = 0x614C656369766564;
  if (v1 != 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_1DB063424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB08F7B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB06344C(uint64_t a1)
{
  v2 = sub_1DB08E984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB063488(uint64_t a1)
{
  v2 = sub_1DB08E984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB063504()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 1);
  v6 = v0[16];
  v7 = v0[17];
  v11 = *(v0 + 3);
  v8 = v0[32];
  v9 = v0[34];
  v12 = v0[33];
  v13 = v0[35];
  sub_1DB09E3A4();
  if (v1 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  ArmandDeviceDataErrorCode.hash(into:)();
  if (v3 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  ArmandDeviceDataErrorCode.hash(into:)();
  sub_1DB09E3C4();
  if (!v6)
  {
    MEMORY[0x1E1280A80](v5);
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  sub_1DB09E3C4();
  if (!v8)
  {
    MEMORY[0x1E1280A80](v11);
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  if (v9 != 2)
  {
    sub_1DB09E3C4();
  }

  sub_1DB09E3C4();
  ArmandDeviceDataErrorCode.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB0636B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32) == 1)
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    v6 = *(v2 + 9);
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);

    v9._countAndFlagsBits = v8;
    v9._object = v7;
    ODIDeviceSettingsBindingsName.init(rawValue:)(v9);
    if (v13 == 5)
    {
      return sub_1DB055700(v4, v5 | (v6 << 8), a2);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0A04E0;
  *(inited + 32) = 0x646F43726F727265;
  *(inited + 40) = 0xE900000000000065;
  v12 = MEMORY[0x1E69E6540];
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 80) = v12;
  *(inited + 48) = -5;
  return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
}

char sub_1DB0637CC@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 16) == 1 && (v4 = *(v2 + 9), v6 = *a1, v5 = *(a1 + 8), , v7._countAndFlagsBits = v6, v7._object = v5, LOBYTE(a1) = ODIDeviceSettingsBindingsName.init(rawValue:)(v7), v9 == 5))
  {
    *a2 = v4;
  }

  else
  {
    *a2 = -40;
  }

  return a1;
}

uint64_t sub_1DB063844(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10098, &qword_1DB0BB120);
  v3 = *(v15 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v15, v5);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 9);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EAB0();
  sub_1DB09E434();
  v16 = v8;
  v17 = v9;
  v18 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10020, &qword_1DB0BB0E0);
  sub_1DAF4AA8C(&qword_1ECC10038, &qword_1ECC10020, &qword_1DB0BB0E0);
  v12 = v15;
  sub_1DB09E194();
  return (*(v3 + 8))(v7, v12);
}

uint64_t sub_1DB0639E8()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    sub_1DB09E3C4();
  }

  else
  {
    v2 = *v0;
    sub_1DB09E3C4();
    MEMORY[0x1E1280A80](v2);
  }

  if ((v1 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v3 = qword_1DB0BD040[v1 ^ 0x80u];
  }

  else
  {
    v3 = (v1 + 45);
  }

  return MEMORY[0x1E1280A80](v3);
}

uint64_t sub_1DB063A78()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v2 != 1)
  {
    MEMORY[0x1E1280A80](v1);
  }

  if ((v3 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v4 = qword_1DB0BD040[v3 ^ 0x80u];
  }

  else
  {
    v4 = (v3 + 45);
  }

  MEMORY[0x1E1280A80](v4);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB063B2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10088, &qword_1DB0BB118);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EAB0();
  sub_1DB09E414();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10020, &qword_1DB0BB0E0);
    sub_1DAF4AA8C(&qword_1ECC10028, &qword_1ECC10020, &qword_1DB0BB0E0);
    sub_1DB09E0C4();
    (*(v6 + 8))(v10, v5);
    v12 = v16;
    v13 = v17;
    *a2 = v15;
    *(a2 + 8) = v12;
    *(a2 + 9) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DB063D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB09E254();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB063D8C(uint64_t a1)
{
  v2 = sub_1DB08EAB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB063DC8(uint64_t a1)
{
  v2 = sub_1DB08EAB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB063E44()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v2 != 1)
  {
    MEMORY[0x1E1280A80](v1);
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB063ECC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32) != 1)
  {
    goto LABEL_6;
  }

  v21 = *(v2 + 8);
  v22 = *v2;
  v20 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  sub_1DB042B1C(v11, v10, 1);
  v12 = sub_1DB09E004();
  sub_1DB041AD8(v11, v10, 1);
  if (v12 == 2)
  {
    v13 = a2;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    goto LABEL_9;
  }

  if (v12 == 1)
  {
    v13 = a2;
    v14 = v4;
    v15 = v5;
    v16 = v6;
    goto LABEL_9;
  }

  if (v12)
  {
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v18 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v18;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  v13 = a2;
  v15 = v21;
  v14 = v22;
  v16 = v20;
LABEL_9:

  return sub_1DB055260(v14, v15, v16, v13);
}

uint64_t sub_1DB064078@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 16) == 1)
  {
    v4 = v2[40];
    v5 = v2[64];
    v6 = v2[16];
    v8 = *result;
    v7 = *(result + 8);
    sub_1DB042B1C(*result, v7, 1);
    v9 = sub_1DB09E004();
    result = sub_1DB041AD8(v8, v7, 1);
    if (v9 == 1)
    {
      v10 = v4;
    }

    else
    {
      v10 = -40;
    }

    if (v9 == 2)
    {
      v10 = v5;
    }

    if (!v9)
    {
      v10 = v6;
    }
  }

  else
  {
    v10 = -40;
  }

  *a2 = v10;
  return result;
}

uint64_t sub_1DB06412C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v30 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v24 - v9;
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = v4[3];
  v28 = v4[4];
  v29 = v11;
  v36 = *(v4 + 40);
  v15 = v4[7];
  v26 = v4[6];
  v27 = v14;
  v25 = v15;
  HIDWORD(v24) = *(v4 + 64);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30();

  sub_1DB09E434();
  v33 = v29;
  v34 = v12;
  v35 = v13;
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
  v17 = v10;
  sub_1DAF4AA8C(&qword_1ECC0FF60, &qword_1ECC0FF48, &qword_1DB0BB060);
  v18 = v31;
  sub_1DB09E194();

  if (v18)
  {
    return (*(v32 + 8))(v10, v6);
  }

  v20 = BYTE4(v24);
  v21 = v25;
  v22 = v26;
  v23 = v32;
  v33 = v27;
  v34 = v28;
  v35 = v36;
  v37 = 1;

  sub_1DB09E194();

  v33 = v22;
  v34 = v21;
  v35 = v20;
  v37 = 2;

  sub_1DB09E194();

  return (*(v23 + 8))(v17, v6);
}

uint64_t sub_1DB0643C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10070, &qword_1DB0BB108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EA2C();
  sub_1DB09E414();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v35 = 0;
    v36 = 0;
    v37 = -44;
    v38 = 0;
    v39 = 0;
    v40 = -44;
    v41 = 0;
    v42 = 0;
    v43 = -44;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
    LOBYTE(v27) = 0;
    sub_1DAF4AA8C(&qword_1ECC0FF50, &qword_1ECC0FF48, &qword_1DB0BB060);
    sub_1DB09E0C4();
    v26 = v35;
    v25 = v36;
    v44 = v37;

    LOBYTE(v27) = 1;
    sub_1DB09E0C4();
    v24 = v6;
    v23 = a2;
    v12 = v35;
    v13 = v36;
    v14 = v37;

    v45 = 2;
    sub_1DB09E0C4();
    (*(v24 + 8))(v10, v5);
    v16 = v32;
    v17 = v33;
    v18 = v34;

    v19 = v25;
    *&v27 = v26;
    *(&v27 + 1) = v25;
    LOBYTE(v28) = v44;
    *(&v28 + 1) = v12;
    *&v29 = v13;
    BYTE8(v29) = v14;
    *&v30 = v16;
    *(&v30 + 1) = v17;
    v31 = v18;
    v20 = v23;
    *(v23 + 64) = v18;
    v21 = v30;
    v20[2] = v29;
    v20[3] = v21;
    v22 = v28;
    *v20 = v27;
    v20[1] = v22;
    sub_1DB08B66C(&v27, &v35);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v35 = v26;
    v36 = v19;
    v37 = v44;
    v38 = v12;
    v39 = v13;
    v40 = v14;
    v41 = v16;
    v42 = v17;
    v43 = v18;
  }

  return sub_1DB08EA80(&v35);
}

unint64_t sub_1DB064798()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_1DB0647F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB08F980(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB064818(uint64_t a1)
{
  v2 = sub_1DB08EA2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB064854(uint64_t a1)
{
  v2 = sub_1DB08EA2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB0648F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0 + 64);
  sub_1DB09E3A4();
  sub_1DB09E3C4();
  if (v2)
  {
    sub_1DB09D794();
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  sub_1DB09E3C4();
  if (v5)
  {
    sub_1DB09D794();
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  sub_1DB09E3C4();
  if (v8)
  {
    sub_1DB09D794();
  }

  ArmandDeviceDataErrorCode.hash(into:)();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB064A14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v13 = *(a1 + 56);
  v14 = *(a1 + 48);
  v5 = *(a1 + 64);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  if ((sub_1DB055D08(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0 || (sub_1DB055D08(v2, v3, v4, v7, v6, v8) & 1) == 0)
  {
    return 0;
  }

  return sub_1DB055D08(v14, v13, v5, v9, v10, v11);
}

uint64_t sub_1DB064B04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2;
  if (*(a1 + 32) != 1)
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v17 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v17;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, v3);
  }

  v33 = *v2;
  v31 = *(v2 + 9);
  v32 = *(v2 + 8);
  v4 = *(v2 + 24);
  v5 = *(v2 + 25);
  v29 = *(v2 + 32);
  v30 = *(v2 + 16);
  v26 = *(v2 + 41);
  v27 = *(v2 + 40);
  v28 = *(v2 + 48);
  v22 = *(v2 + 57);
  v23 = *(v2 + 56);
  v24 = *(v2 + 64);
  v25 = *(v2 + 80);
  v20 = *(v2 + 72);
  v21 = *(v2 + 88);
  v18 = *(v2 + 73);
  v19 = *(v2 + 89);
  v6 = *(v2 + 96);
  v7 = *(v2 + 104);
  v8 = *(v2 + 105);
  v9 = *(v2 + 112);
  v10 = *(v2 + 120);
  v11 = *(v2 + 121);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);

  v14._countAndFlagsBits = v13;
  v14._object = v12;
  ODIGeocoderBindingsName.init(rawValue:)(v14);
  if (v35 <= 3u)
  {
    if (v35 > 1u)
    {
      if (v35 == 2)
      {
        return sub_1DB055870(v6, v7 | (v8 << 8), a2);
      }

      else
      {
        return sub_1DB055870(v9, v10 | (v11 << 8), a2);
      }
    }

    else if (v35)
    {
      return sub_1DB055870(v30, v4 | (v5 << 8), a2);
    }

    else
    {
      return sub_1DB055870(v33, v32 | (v31 << 8), a2);
    }
  }

  else if (v35 <= 5u)
  {
    if (v35 == 4)
    {
      return sub_1DB055870(v29, v27 | (v26 << 8), a2);
    }

    else
    {
      return sub_1DB055870(v28, v23 | (v22 << 8), a2);
    }
  }

  else
  {
    v3 = a2;
    if (v35 != 6)
    {
      if (v35 == 7)
      {
        return sub_1DB055870(v25, v21 | (v19 << 8), a2);
      }

      goto LABEL_7;
    }

    return sub_1DB055870(v24, v20 | (v18 << 8), a2);
  }
}

char sub_1DB064D7C@<W0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 16) != 1)
  {
    goto LABEL_7;
  }

  v4 = v2[9];
  v5 = v2[25];
  v6 = v2[41];
  v7 = v2[57];
  v8 = v2[73];
  v16 = v2[89];
  v9 = v2[105];
  v10 = v2[121];
  v12 = *a1;
  v11 = *(a1 + 8);

  v13._countAndFlagsBits = v12;
  v13._object = v11;
  LOBYTE(a1) = ODIGeocoderBindingsName.init(rawValue:)(v13);
  if (v17 <= 3u)
  {
    if (v17 > 1u)
    {
      if (v17 == 2)
      {
        *a2 = v9;
      }

      else
      {
        *a2 = v10;
      }
    }

    else if (v17)
    {
      *a2 = v5;
    }

    else
    {
      *a2 = v4;
    }
  }

  else if (v17 <= 5u)
  {
    if (v17 == 4)
    {
      *a2 = v6;
    }

    else
    {
      *a2 = v7;
    }
  }

  else
  {
    if (v17 != 6)
    {
      if (v17 == 7)
      {
        v14 = v16;
LABEL_8:
        *a2 = v14;
        return a1;
      }

LABEL_7:
      v14 = -40;
      goto LABEL_8;
    }

    *a2 = v8;
  }

  return a1;
}

uint64_t sub_1DB064E98(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10060, &qword_1DB0BB100);
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 9);
  v40 = v1[2];
  v46 = *(v1 + 24);
  v39 = *(v1 + 25);
  v38 = v1[4];
  v11 = *(v1 + 40);
  v36 = *(v1 + 41);
  v37 = v11;
  v35 = v1[6];
  LODWORD(v6) = *(v1 + 57);
  v33 = *(v1 + 56);
  v34 = v6;
  v30 = v1[8];
  LODWORD(v6) = *(v1 + 73);
  v31 = *(v1 + 72);
  v32 = v6;
  v27 = v1[10];
  LODWORD(v6) = *(v1 + 89);
  v28 = *(v1 + 88);
  v29 = v6;
  v24 = v1[12];
  LODWORD(v6) = *(v1 + 105);
  v25 = *(v1 + 104);
  v26 = v6;
  v21 = v1[14];
  LODWORD(v6) = *(v1 + 121);
  v22 = *(v1 + 120);
  v23 = v6;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08E9D8();
  sub_1DB09E434();
  v43 = v8;
  v44 = v9;
  v45 = v10;
  v13 = v7;
  v47 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10050, &qword_1DB0BB0F8);
  sub_1DAF4AA8C(&qword_1ECC10068, &qword_1ECC10050, &qword_1DB0BB0F8);
  v14 = v42;
  sub_1DB09E194();
  if (v14)
  {
    return (*(v41 + 8))(v7, v3);
  }

  v16 = v36;
  v17 = v37;
  v18 = v38;
  v19 = v35;
  v20 = v41;
  v43 = v40;
  v44 = v46;
  v45 = v39;
  v47 = 1;
  sub_1DB09E194();
  v43 = v18;
  v44 = v17;
  v45 = v16;
  v47 = 2;
  sub_1DB09E194();
  v43 = v19;
  v44 = v33;
  v45 = v34;
  v47 = 3;
  sub_1DB09E194();
  v43 = v30;
  v44 = v31;
  v45 = v32;
  v47 = 4;
  sub_1DB09E194();
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v47 = 5;
  sub_1DB09E194();
  v43 = v24;
  v44 = v25;
  v45 = v26;
  v47 = 6;
  sub_1DB09E194();
  v43 = v21;
  v44 = v22;
  v45 = v23;
  v47 = 7;
  sub_1DB09E194();
  return (*(v20 + 8))(v13, v3);
}

uint64_t sub_1DB0652A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v16 = *(v0 + 48);
  v15 = *(v0 + 56);
  v19 = *(v0 + 64);
  v17 = *(v0 + 72);
  v21 = *(v0 + 80);
  v20 = *(v0 + 88);
  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v25 = *(v0 + 112);
  v24 = *(v0 + 120);
  v5 = *(v0 + 9);
  v6 = *(v0 + 25);
  v7 = *(v0 + 41);
  v8 = *(v0 + 57);
  v9 = *(v0 + 73);
  v14 = *(v0 + 89);
  v18 = *(v0 + 105);
  v10 = *(v0 + 121);
  sub_1DB09E3A4();
  sub_1DB055C74(v26, v1, v2 | (v5 << 8));
  sub_1DB055C74(v26, v3, v4 | (v6 << 8));
  sub_1DB055C74(v26, v13, v12 | (v7 << 8));
  sub_1DB055C74(v26, v16, v15 | (v8 << 8));
  sub_1DB055C74(v26, v19, v17 | (v9 << 8));
  sub_1DB055C74(v26, v21, v20 | (v14 << 8));
  sub_1DB055C74(v26, v23, v22 | (v18 << 8));
  sub_1DB055C74(v26, v25, v24 | (v10 << 8));
  return sub_1DB09E3E4();
}

uint64_t sub_1DB065438@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10040, &qword_1DB0BB0F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v31 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08E9D8();
  sub_1DB09E414();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10050, &qword_1DB0BB0F8);
    v57 = 0;
    sub_1DAF4AA8C(&qword_1ECC10058, &qword_1ECC10050, &qword_1DB0BB0F8);
    sub_1DB09E0C4();
    v44 = a2;
    v45 = v46;
    v12 = v48;
    v56 = v47;
    v57 = 1;
    sub_1DB09E0C4();
    v43 = v12;
    v42 = v46;
    v13 = v48;
    v55 = v47;
    v57 = 2;
    sub_1DB09E0C4();
    v41 = v13;
    v40 = v46;
    v14 = v48;
    v54 = v47;
    v57 = 3;
    sub_1DB09E0C4();
    v39 = v14;
    v38 = v46;
    v15 = v48;
    v53 = v47;
    v57 = 4;
    sub_1DB09E0C4();
    v37 = v15;
    v36 = v46;
    v16 = v48;
    v52 = v47;
    v57 = 5;
    sub_1DB09E0C4();
    v35 = v16;
    v34 = v46;
    v17 = v48;
    v51 = v47;
    v57 = 6;
    sub_1DB09E0C4();
    v33 = v17;
    v19 = v46;
    v32 = v48;
    v50 = v47;
    v57 = 7;
    sub_1DB09E0C4();
    (*(v6 + 8))(v10, v5);
    v20 = v46;
    v21 = v47;
    v22 = v48;
    v49 = v47;
    v23 = v56;
    v24 = v55;
    v25 = v54;
    v26 = v53;
    v27 = v52;
    v28 = v51;
    v29 = v50;
    v30 = v44;
    *v44 = v45;
    *(v30 + 8) = v23;
    *(v30 + 9) = v43;
    v30[2] = v42;
    *(v30 + 24) = v24;
    *(v30 + 25) = v41;
    v30[4] = v40;
    *(v30 + 40) = v25;
    *(v30 + 41) = v39;
    v30[6] = v38;
    *(v30 + 56) = v26;
    *(v30 + 57) = v37;
    v30[8] = v36;
    *(v30 + 72) = v27;
    *(v30 + 73) = v35;
    v30[10] = v34;
    *(v30 + 88) = v28;
    *(v30 + 89) = v33;
    v30[12] = v19;
    *(v30 + 104) = v29;
    *(v30 + 105) = v32;
    v30[14] = v20;
    *(v30 + 120) = v21;
    *(v30 + 121) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DB0658E8()
{
  v1 = *v0;
  v2 = 0x6974614C656D6F68;
  v3 = 0x746974614C636F64;
  if (v1 != 6)
  {
    v3 = 0x69676E6F4C636F64;
  }

  v4 = 0x4C676E696C6C6962;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 2)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0x676E6F4C656D6F68;
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

uint64_t sub_1DB065A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB08FAA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB065A44(uint64_t a1)
{
  v2 = sub_1DB08E9D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB065A80(uint64_t a1)
{
  v2 = sub_1DB08E9D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB065AF8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v17 = *(v1 + 48);
  v16 = *(v1 + 56);
  v20 = *(v1 + 64);
  v18 = *(v1 + 72);
  v22 = *(v1 + 80);
  v21 = *(v1 + 88);
  v24 = *(v1 + 96);
  v23 = *(v1 + 104);
  v26 = *(v1 + 112);
  v25 = *(v1 + 120);
  v8 = *(v1 + 25);
  v9 = *(v1 + 41);
  v10 = *(v1 + 57);
  v11 = *(v1 + 73);
  v15 = *(v1 + 89);
  v19 = *(v1 + 105);
  v12 = *(v1 + 8) | (*(v1 + 9) << 8);
  v13 = *(v1 + 121);
  sub_1DB055C74(a1, v3, v12);
  sub_1DB055C74(a1, v4, v5 | (v8 << 8));
  sub_1DB055C74(a1, v6, v7 | (v9 << 8));
  sub_1DB055C74(a1, v17, v16 | (v10 << 8));
  sub_1DB055C74(a1, v20, v18 | (v11 << 8));
  sub_1DB055C74(a1, v22, v21 | (v15 << 8));
  sub_1DB055C74(a1, v24, v23 | (v19 << 8));

  return sub_1DB055C74(a1, v26, v25 | (v13 << 8));
}

uint64_t sub_1DB065C70()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v16 = *(v0 + 48);
  v15 = *(v0 + 56);
  v19 = *(v0 + 64);
  v17 = *(v0 + 72);
  v21 = *(v0 + 80);
  v20 = *(v0 + 88);
  v23 = *(v0 + 96);
  v22 = *(v0 + 104);
  v25 = *(v0 + 112);
  v24 = *(v0 + 120);
  v5 = *(v0 + 9);
  v6 = *(v0 + 25);
  v7 = *(v0 + 41);
  v8 = *(v0 + 57);
  v9 = *(v0 + 73);
  v14 = *(v0 + 89);
  v18 = *(v0 + 105);
  v10 = *(v0 + 121);
  sub_1DB09E3A4();
  sub_1DB055C74(v26, v1, v2 | (v5 << 8));
  sub_1DB055C74(v26, v3, v4 | (v6 << 8));
  sub_1DB055C74(v26, v13, v12 | (v7 << 8));
  sub_1DB055C74(v26, v16, v15 | (v8 << 8));
  sub_1DB055C74(v26, v19, v17 | (v9 << 8));
  sub_1DB055C74(v26, v21, v20 | (v14 << 8));
  sub_1DB055C74(v26, v23, v22 | (v18 << 8));
  sub_1DB055C74(v26, v25, v24 | (v10 << 8));
  return sub_1DB09E3E4();
}

uint64_t sub_1DB065E00(uint64_t a1, char a2)
{
  v3 = v2;
  v44 = sub_1DB09CE14();
  v6 = v5;
  if (a2)
  {
    v40 = v2 + 18;
    v53 = 35;
    v52 = 34;
    v51 = 33;
    v50 = 32;
    v49 = 31;
    v48 = 30;
    v47 = 29;
    v46 = 28;
    v45 = 27;
    v43 = 26;
    v7 = 25;
    v42 = 24;
    v41 = 23;
    v8 = 22;
    v9 = 21;
    v10 = 20;
    v11 = 19;
  }

  else
  {
    v53 = 17;
    v52 = 16;
    v51 = 15;
    v50 = 14;
    v49 = 13;
    v48 = 12;
    v47 = 11;
    v46 = 10;
    v45 = 9;
    v43 = 8;
    v7 = 7;
    v42 = 6;
    v40 = v2;
    v41 = 5;
    v8 = 4;
    v9 = 3;
    v10 = 2;
    v11 = 1;
  }

  v12 = v2[v11];

  if (v6)
  {
    v13 = -45;
  }

  else
  {
    v13 = -43;
  }

  *v40 = v44;
  v2[v11] = v6;
  LOBYTE(v2[v10]) = v13;
  v14 = sub_1DB09CDF4();
  v16 = v15;
  v17 = v2[v8];

  v2[v9] = v14;
  if (v16)
  {
    v18 = -45;
  }

  else
  {
    v18 = -43;
  }

  v2[v8] = v16;
  LOBYTE(v2[v41]) = v18;
  v19 = sub_1DB09CDE4();
  v21 = v20;
  v22 = v2[v7];

  v2[v42] = v19;
  if (v21)
  {
    v23 = -45;
  }

  else
  {
    v23 = -43;
  }

  v2[v7] = v21;
  LOBYTE(v2[v43]) = v23;
  v24 = sub_1DB09CE04();
  v26 = v25;
  v27 = v2[v46];

  v2[v45] = v24;
  if (v26)
  {
    v28 = -45;
  }

  else
  {
    v28 = -43;
  }

  v2[v46] = v26;
  LOBYTE(v2[v47]) = v28;
  v29 = sub_1DB09CE24();
  v31 = v30;
  v32 = v2[v49];

  v2[v48] = v29;
  if (v31)
  {
    v33 = -45;
  }

  else
  {
    v33 = -43;
  }

  v2[v49] = v31;
  LOBYTE(v2[v50]) = v33;
  v34 = sub_1DB09CE44();
  v36 = v35;
  v37 = v3[v52];

  v3[v51] = v34;
  if (v36)
  {
    v39 = -45;
  }

  else
  {
    v39 = -43;
  }

  v3[v52] = v36;
  LOBYTE(v3[v53]) = v39;
  return result;
}

uint64_t sub_1DB066074@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 32) == 1)
  {
    v44 = *(v2 + 8);
    v45 = *v2;
    v43 = *(v2 + 16);
    v41 = *(v2 + 32);
    v42 = *(v2 + 24);
    v40 = *(v2 + 40);
    v38 = *(v2 + 56);
    v39 = *(v2 + 48);
    v37 = *(v2 + 64);
    v35 = *(v2 + 80);
    v36 = *(v2 + 72);
    v34 = *(v2 + 88);
    v32 = *(v2 + 104);
    v33 = *(v2 + 96);
    v31 = *(v2 + 112);
    v29 = *(v2 + 128);
    v30 = *(v2 + 120);
    v28 = *(v2 + 136);
    v26 = *(v2 + 152);
    v27 = *(v2 + 144);
    v25 = *(v2 + 160);
    v23 = *(v2 + 176);
    v24 = *(v2 + 168);
    v22 = *(v2 + 184);
    v20 = *(v2 + 200);
    v21 = *(v2 + 192);
    v19 = *(v2 + 208);
    v17 = *(v2 + 224);
    v18 = *(v2 + 216);
    v4 = *(v2 + 232);
    v5 = *(v2 + 240);
    v6 = *(v2 + 248);
    v7 = *(v2 + 256);
    v8 = *(v2 + 264);
    v9 = *(v2 + 272);
    v10 = *(v2 + 280);
    v12 = *(a1 + 16);
    v11 = *(a1 + 24);

    v13._countAndFlagsBits = v12;
    v13._object = v11;
    ODIComputableBindingsName.init(rawValue:)(v13);
    switch(v46)
    {
      case 1:
        result = sub_1DB055260(v39, v38, v37, a2);
        break;
      case 2:
        result = sub_1DB055260(v36, v35, v34, a2);
        break;
      case 3:
        result = sub_1DB055260(v45, v44, v43, a2);
        break;
      case 4:
        result = sub_1DB055260(v33, v32, v31, a2);
        break;
      case 5:
        result = sub_1DB055260(v30, v29, v28, a2);
        break;
      case 6:
        result = sub_1DB055260(v24, v23, v22, a2);
        break;
      case 7:
        result = sub_1DB055260(v21, v20, v19, a2);
        break;
      case 8:
        result = sub_1DB055260(v18, v17, v4, a2);
        break;
      case 9:
        result = sub_1DB055260(v27, v26, v25, a2);
        break;
      case 10:
        result = sub_1DB055260(v5, v6, v7, a2);
        break;
      case 11:
        result = sub_1DB055260(v8, v9, v10, a2);
        break;
      case 12:
        goto LABEL_4;
      default:
        result = sub_1DB055260(v42, v41, v40, a2);
        break;
    }
  }

  else
  {
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = 0x646F43726F727265;
    *(inited + 40) = 0xE900000000000065;
    v16 = MEMORY[0x1E69E6540];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 80) = v16;
    *(inited + 48) = -5;
    return ODIBindingsDict.init(dictionaryLiteral:)(inited, a2);
  }

  return result;
}

char sub_1DB066330@<W0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    v18 = v2[16];
    v19 = v2[40];
    v16 = v2[88];
    v17 = v2[64];
    v4 = v2[112];
    v5 = v2[136];
    v6 = v2[160];
    v7 = v2[208];
    v8 = v2[232];
    v9 = v2[256];
    v10 = v2[280];
    v12 = *a1;
    v11 = *(a1 + 8);

    v13._countAndFlagsBits = v12;
    v13._object = v11;
    LOBYTE(a1) = ODIComputableBindingsName.init(rawValue:)(v13);
    switch(v20)
    {
      case 1:
        v14 = v17;
        goto LABEL_5;
      case 2:
        v14 = v16;
        goto LABEL_5;
      case 3:
        v14 = v18;
        goto LABEL_5;
      case 4:
        *a2 = v4;
        break;
      case 5:
        *a2 = v5;
        break;
      case 7:
        *a2 = v7;
        break;
      case 8:
        *a2 = v8;
        break;
      case 9:
        *a2 = v6;
        break;
      case 10:
        *a2 = v9;
        break;
      case 11:
        *a2 = v10;
        break;
      case 12:
        goto LABEL_4;
      default:
        v14 = v19;
        goto LABEL_5;
    }
  }

  else
  {
LABEL_4:
    v14 = -40;
LABEL_5:
    *a2 = v14;
  }

  return a1;
}

uint64_t sub_1DB066458(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6464694D72656570;
    v7 = 0x656D614E72656570;
    if (a1 != 10)
    {
      v7 = 0x6B63694E72656570;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x656D614E72656570;
    v9 = 0x696D614672656570;
    if (a1 != 7)
    {
      v9 = 0x6576694772656570;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x66657250656D616ELL;
    v2 = 0x614E656C6464696DLL;
    v3 = 0x66667553656D616ELL;
    if (a1 != 4)
    {
      v3 = 0x656D616E6B63696ELL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x614E796C696D6166;
    if (a1 != 1)
    {
      v4 = 0x6D614E6E65766967;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DB066624(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100B0, &qword_1DB0BB130);
  v63 = *(v3 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v29 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 16);
  v11 = v1[4];
  v60 = v1[3];
  v61 = v11;
  v67 = *(v1 + 40);
  v12 = v1[6];
  v58 = v1[7];
  v59 = v12;
  LODWORD(v12) = *(v1 + 64);
  v13 = v1[10];
  v54 = v1[9];
  v55 = v13;
  v56 = *(v1 + 88);
  v57 = v12;
  v14 = v1[13];
  v51 = v1[12];
  v52 = v14;
  v53 = *(v1 + 112);
  v15 = v1[16];
  v48 = v1[15];
  v49 = v15;
  v50 = *(v1 + 136);
  v16 = v1[19];
  v45 = v1[18];
  v46 = v16;
  v47 = *(v1 + 160);
  v17 = v1[22];
  v42 = v1[21];
  v43 = v17;
  v44 = *(v1 + 184);
  v18 = v1[25];
  v39 = v1[24];
  v41 = v18;
  v40 = *(v1 + 208);
  v19 = v1[28];
  v36 = v1[27];
  v38 = v19;
  v37 = *(v1 + 232);
  v20 = v1[31];
  v33 = v1[30];
  v35 = v20;
  v34 = *(v1 + 256);
  v21 = v1[34];
  v30 = v1[33];
  v32 = v21;
  v31 = *(v1 + 280);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB08EB04();

  v23 = v7;
  sub_1DB09E434();
  v64 = v8;
  v65 = v9;
  v66 = v10;
  v68 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
  sub_1DAF4AA8C(&qword_1ECC0FF60, &qword_1ECC0FF48, &qword_1DB0BB060);
  v24 = v62;
  sub_1DB09E194();
  if (v24)
  {

    return (*(v63 + 8))(v7, v3);
  }

  else
  {
    v26 = v57;
    v27 = v58;
    v28 = v59;

    v64 = v60;
    v65 = v61;
    v66 = v67;
    v68 = 1;

    sub_1DB09E194();

    v64 = v28;
    v65 = v27;
    v66 = v26;
    v68 = 2;

    sub_1DB09E194();

    v64 = v54;
    v65 = v55;
    v66 = v56;
    v68 = 3;

    sub_1DB09E194();

    v64 = v51;
    v65 = v52;
    v66 = v53;
    v68 = 4;

    sub_1DB09E194();

    v64 = v48;
    v65 = v49;
    v66 = v50;
    v68 = 5;

    sub_1DB09E194();

    v64 = v45;
    v65 = v46;
    v66 = v47;
    v68 = 6;

    sub_1DB09E194();

    v64 = v42;
    v65 = v43;
    v66 = v44;
    v68 = 7;

    sub_1DB09E194();

    v64 = v39;
    v65 = v41;
    v66 = v40;
    v68 = 8;

    sub_1DB09E194();

    v64 = v36;
    v65 = v38;
    v66 = v37;
    v68 = 9;

    sub_1DB09E194();

    v64 = v33;
    v65 = v35;
    v66 = v34;
    v68 = 10;

    sub_1DB09E194();

    v64 = v30;
    v65 = v32;
    v66 = v31;
    v68 = 11;

    sub_1DB09E194();

    return (*(v63 + 8))(v23, v3);
  }
}

uint64_t sub_1DB066CEC()
{
  v1 = *(v0 + 16);
  v2 = v0[4];
  v26 = *(v0 + 40);
  v15 = v0[3];
  v16 = v0[6];
  v27 = v0[7];
  v28 = *(v0 + 64);
  v29 = v0[10];
  v3 = v0[13];
  v17 = v0[9];
  v18 = v0[12];
  v30 = *(v0 + 88);
  v31 = *(v0 + 112);
  v32 = v0[16];
  v33 = *(v0 + 136);
  v19 = v0[15];
  v20 = v0[18];
  v34 = v0[19];
  v35 = *(v0 + 160);
  v4 = v0[22];
  v21 = v0[21];
  v36 = *(v0 + 184);
  v5 = v0[25];
  v6 = *(v0 + 208);
  v22 = v0[24];
  v23 = v0[27];
  v37 = v0[28];
  v39 = *(v0 + 232);
  v7 = v0[31];
  v24 = v0[30];
  v40 = *(v0 + 256);
  v25 = v0[33];
  v41 = v0[34];
  v38 = *(v0 + 280);
  if (v0[1])
  {
    v8 = *v0;
    sub_1DB09E3C4();
    sub_1DB09D794();
  }

  else
  {
    sub_1DB09E3C4();
  }

  if ((v1 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v9 = qword_1DB0BD040[v1 ^ 0x80u];
  }

  else
  {
    v9 = (v1 + 45);
  }

  MEMORY[0x1E1280A80](v9);
  sub_1DB09E3C4();
  if (v2)
  {
    sub_1DB09D794();
  }

  if ((v26 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v26 ^ 0x80u]);
    if (v27)
    {
      goto LABEL_11;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v26 + 45));
    if (v27)
    {
LABEL_11:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_14;
    }
  }

  sub_1DB09E3C4();
LABEL_14:
  if ((v28 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v28 ^ 0x80u]);
    if (v29)
    {
      goto LABEL_16;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v28 + 45));
    if (v29)
    {
LABEL_16:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_19;
    }
  }

  sub_1DB09E3C4();
LABEL_19:
  if ((v30 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v30 ^ 0x80u]);
    if (v3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v30 + 45));
    if (v3)
    {
LABEL_21:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_24;
    }
  }

  sub_1DB09E3C4();
LABEL_24:
  if ((v31 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v31 ^ 0x80u]);
    if (v32)
    {
      goto LABEL_26;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v31 + 45));
    if (v32)
    {
LABEL_26:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_29;
    }
  }

  sub_1DB09E3C4();
LABEL_29:
  if ((v33 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v33 ^ 0x80u]);
    if (v34)
    {
      goto LABEL_31;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v33 + 45));
    if (v34)
    {
LABEL_31:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_34;
    }
  }

  sub_1DB09E3C4();
LABEL_34:
  if ((v35 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v35 ^ 0x80u]);
    if (v4)
    {
      goto LABEL_36;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v35 + 45));
    if (v4)
    {
LABEL_36:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_39;
    }
  }

  sub_1DB09E3C4();
LABEL_39:
  if ((v36 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v10 = qword_1DB0BD040[v36 ^ 0x80u];
  }

  else
  {
    v10 = (v36 + 45);
  }

  MEMORY[0x1E1280A80](v10);
  sub_1DB09E3C4();
  if (v5)
  {
    sub_1DB09D794();
  }

  if ((v6 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    MEMORY[0x1E1280A80](qword_1DB0BD040[v6 ^ 0x80u]);
    if (v37)
    {
      goto LABEL_46;
    }
  }

  else
  {
    MEMORY[0x1E1280A80]((v6 + 45));
    if (v37)
    {
LABEL_46:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_49;
    }
  }

  sub_1DB09E3C4();
LABEL_49:
  if ((v39 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v11 = qword_1DB0BD040[v39 ^ 0x80u];
  }

  else
  {
    v11 = (v39 + 45);
  }

  MEMORY[0x1E1280A80](v11);
  sub_1DB09E3C4();
  if (v7)
  {
    sub_1DB09D794();
  }

  if ((v40 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v12 = qword_1DB0BD040[v40 ^ 0x80u];
  }

  else
  {
    v12 = (v40 + 45);
  }

  MEMORY[0x1E1280A80](v12);
  sub_1DB09E3C4();
  if (v41)
  {
    sub_1DB09D794();
  }

  if ((v38 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v13 = qword_1DB0BD040[v38 ^ 0x80u];
  }

  else
  {
    v13 = (v38 + 45);
  }

  return MEMORY[0x1E1280A80](v13);
}

uint64_t sub_1DB06728C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC100A0, &qword_1DB0BB128);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v35 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DB08EB04();
  sub_1DB09E414();
  if (v2)
  {
    v137 = v2;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v62 = 0;
    v63 = 0;
    v61 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v48 = 0;
    v49 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v53 = 212;
    v54 = 212;
    v51 = 212;
    v52 = 212;
    v55 = 212;
    v56 = 212;
    v57 = 212;
    v17 = -44;
    v18 = -44;
    v19 = -44;
    v20 = -44;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FF48, &qword_1DB0BB060);
    v74[0] = 0;
    sub_1DAF4AA8C(&qword_1ECC0FF50, &qword_1ECC0FF48, &qword_1DB0BB060);
    sub_1DB09E0C4();
    v46 = v79;
    v47 = v80;
    v45 = v81;

    v74[0] = 1;
    sub_1DB09E0C4();
    v43 = v80;
    v44 = v79;
    v42 = v81;

    v74[0] = 2;
    sub_1DB09E0C4();
    v41 = a2;
    v48 = v79;
    v49 = v80;
    v23 = v81;

    v74[0] = 3;
    sub_1DB09E0C4();
    v72 = v79;
    v73 = v80;
    v40 = v81;

    v74[0] = 4;
    sub_1DB09E0C4();
    v39 = v23;
    v70 = v79;
    v71 = v80;
    v57 = v81;

    v74[0] = 5;
    sub_1DB09E0C4();
    v68 = v79;
    v24 = v80;
    v56 = v81;

    v74[0] = 6;
    sub_1DB09E0C4();
    v69 = v24;
    v66 = v79;
    v67 = v80;
    v55 = v81;

    v74[0] = 7;
    sub_1DB09E0C4();
    v64 = v79;
    v65 = v80;
    v53 = v81;

    v74[0] = 8;
    sub_1DB09E0C4();
    v137 = 0;
    v61 = v79;
    v63 = v80;
    v52 = v81;

    v74[0] = 9;
    v25 = v137;
    sub_1DB09E0C4();
    v137 = v25;
    if (v25)
    {
      (*(v6 + 8))(v10, v5);
      v59 = 0;
      v60 = 0;
      v58 = 0;
      v62 = 0;
      v54 = 212;
      v51 = 212;
    }

    else
    {
      v59 = v79;
      v62 = v80;
      v51 = v81;

      v74[0] = 10;
      v26 = v137;
      sub_1DB09E0C4();
      v137 = v26;
      if (v26)
      {
        (*(v6 + 8))(v10, v5);
        v60 = 0;
        v58 = 0;
        v54 = 212;
      }

      else
      {
        v58 = v79;
        v60 = v80;
        v54 = v81;

        v75 = 11;
        v27 = v137;
        sub_1DB09E0C4();
        v137 = v27;
        if (!v27)
        {
          (*(v6 + 8))(v10, v5);
          v37 = v77;
          v38 = v76;
          v36 = v78;

          *&v74[140] = *&v131[3];
          *&v74[137] = *v131;
          *&v74[164] = *&v130[3];
          *&v74[161] = *v130;
          *&v74[188] = *&v129[3];
          *&v74[185] = *v129;
          *&v74[212] = *&v128[3];
          *&v74[209] = *v128;
          *&v74[236] = *&v127[3];
          *&v74[233] = *v127;
          *&v74[257] = *v126;
          *&v74[17] = v136[0];
          *&v74[20] = *(v136 + 3);
          *&v74[41] = *v135;
          *&v74[44] = *&v135[3];
          *&v74[68] = *&v134[3];
          *&v74[65] = *v134;
          *&v74[89] = *v133;
          *&v74[92] = *&v133[3];
          *&v74[113] = *v132;
          *&v74[116] = *&v132[3];
          *&v74[260] = *&v126[3];
          v29 = v46;
          v28 = v47;
          *v74 = v46;
          *&v74[8] = v47;
          v30 = v45;
          v74[16] = v45;
          v31 = v43;
          *&v74[24] = v44;
          *&v74[32] = v43;
          v32 = v42;
          v74[40] = v42;
          v33 = v48;
          v34 = v49;
          *&v74[48] = v48;
          *&v74[56] = v49;
          v74[64] = v39;
          *&v74[72] = v72;
          *&v74[80] = v73;
          v74[88] = v40;
          *&v74[96] = v70;
          *&v74[104] = v71;
          v74[112] = v57;
          *&v74[120] = v68;
          *&v74[128] = v69;
          v74[136] = v56;
          *&v74[144] = v66;
          *&v74[152] = v67;
          v74[160] = v55;
          *&v74[168] = v64;
          *&v74[176] = v65;
          v74[184] = v53;
          *&v74[192] = v61;
          *&v74[200] = v63;
          v74[208] = v52;
          *&v74[216] = v59;
          *&v74[224] = v62;
          v74[232] = v51;
          *&v74[240] = v58;
          *&v74[248] = v60;
          v74[256] = v54;
          *&v74[264] = v38;
          *&v74[272] = v37;
          v74[280] = v36;
          memcpy(v41, v74, 0x119uLL);
          sub_1DB08B298(v74, &v79);
          __swift_destroy_boxed_opaque_existential_1Tm(v50);
          v79 = v29;
          v80 = v28;
          v81 = v30;
          v83 = v44;
          v84 = v31;
          v85 = v32;
          v87 = v33;
          v88 = v34;
          *v82 = v136[0];
          *&v82[3] = *(v136 + 3);
          *v86 = *v135;
          *&v86[3] = *&v135[3];
          v89 = v39;
          *&v90[3] = *&v134[3];
          *v90 = *v134;
          v91 = v72;
          v92 = v73;
          v93 = v40;
          *v94 = *v133;
          *&v94[3] = *&v133[3];
          v95 = v70;
          v96 = v71;
          v97 = v57;
          *v98 = *v132;
          *&v98[3] = *&v132[3];
          v99 = v68;
          v100 = v69;
          v101 = v56;
          *&v102[3] = *&v131[3];
          *v102 = *v131;
          v103 = v66;
          v104 = v67;
          v105 = v55;
          *&v106[3] = *&v130[3];
          *v106 = *v130;
          v107 = v64;
          v108 = v65;
          v109 = v53;
          *&v110[3] = *&v129[3];
          *v110 = *v129;
          v111 = v61;
          v112 = v63;
          v113 = v52;
          *&v114[3] = *&v128[3];
          *v114 = *v128;
          v115 = v59;
          v116 = v62;
          v117 = v51;
          *&v118[3] = *&v127[3];
          *v118 = *v127;
          v119 = v58;
          v120 = v60;
          v121 = v54;
          *v122 = *v126;
          *&v122[3] = *&v126[3];
          v123 = v38;
          v124 = v37;
          v21 = v36;
          goto LABEL_5;
        }

        (*(v6 + 8))(v10, v5);
      }
    }

    v16 = v46;
    v15 = v47;
    v13 = v43;
    v14 = v44;
    v20 = v45;
    v19 = v42;
    v18 = v39;
    v17 = v40;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  v79 = v16;
  v80 = v15;
  v81 = v20;
  v83 = v14;
  v84 = v13;
  *v82 = v136[0];
  *&v82[3] = *(v136 + 3);
  v85 = v19;
  *v86 = *v135;
  *&v86[3] = *&v135[3];
  v87 = v48;
  v88 = v49;
  v89 = v18;
  *&v90[3] = *&v134[3];
  *v90 = *v134;
  v91 = v72;
  v92 = v73;
  v93 = v17;
  *v94 = *v133;
  *&v94[3] = *&v133[3];
  v95 = v70;
  v96 = v71;
  v97 = v57;
  *v98 = *v132;
  *&v98[3] = *&v132[3];
  v99 = v68;
  v100 = v69;
  v101 = v56;
  *&v102[3] = *&v131[3];
  *v102 = *v131;
  v103 = v66;
  v104 = v67;
  v105 = v55;
  *&v106[3] = *&v130[3];
  *v106 = *v130;
  v107 = v64;
  v108 = v65;
  v109 = v53;
  *&v110[3] = *&v129[3];
  *v110 = *v129;
  v111 = v61;
  v112 = v63;
  v113 = v52;
  *&v114[3] = *&v128[3];
  *v114 = *v128;
  v115 = v59;
  v116 = v62;
  v117 = v51;
  *&v118[3] = *&v127[3];
  *v118 = *v127;
  v119 = v58;
  v120 = v60;
  v121 = v54;
  *v122 = *v126;
  *&v122[3] = *&v126[3];
  v124 = 0;
  v123 = 0;
  v21 = -44;
LABEL_5:
  v125 = v21;
  return sub_1DB08EB58(&v79);
}

uint64_t sub_1DB0680EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB08FD5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB068114(uint64_t a1)
{
  v2 = sub_1DB08EB04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB068150(uint64_t a1)
{
  v2 = sub_1DB08EB04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB0681C4()
{
  sub_1DB09E3A4();
  sub_1DB066CEC();
  return sub_1DB09E3E4();
}

uint64_t sub_1DB068208()
{
  sub_1DB09E3A4();
  sub_1DB066CEC();
  return sub_1DB09E3E4();
}

uint64_t ArmandDeviceData.fields.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

_OWORD *sub_1DB06829C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 33);
  v5 = *(v2 + 24);
  v6 = *(v2 + 56);
  v62[2] = *(v2 + 40);
  v62[3] = v6;
  v63 = *(v2 + 72);
  v62[0] = *(v2 + 8);
  v62[1] = v5;
  v7 = *(v2 + 128);
  v64[2] = *(v2 + 112);
  v64[3] = v7;
  v64[4] = *(v2 + 144);
  v65 = *(v2 + 160);
  v8 = *(v2 + 96);
  v64[0] = *(v2 + 80);
  v64[1] = v8;
  v59 = *(v2 + 168);
  v60 = *(v2 + 176);
  v58 = *(v2 + 184);
  *(v67 + 9) = *(v2 + 233);
  v9 = *(v2 + 224);
  v66[1] = *(v2 + 208);
  v67[0] = v9;
  v66[0] = *(v2 + 192);
  *(v69 + 15) = *(v2 + 319);
  v10 = *(v2 + 304);
  v68[2] = *(v2 + 288);
  v69[0] = v10;
  v11 = *(v2 + 272);
  v68[0] = *(v2 + 256);
  v68[1] = v11;
  v56 = *(v2 + 328);
  v57 = *(v2 + 336);
  v54 = *(v2 + 345);
  v55 = *(v2 + 344);
  v53 = *(v2 + 346);
  v12 = *(v2 + 360);
  v52 = *(v2 + 352);
  v13 = *(v2 + 368);
  v14 = *(v2 + 392);
  v70[0] = *(v2 + 376);
  v70[1] = v14;
  v15 = *(v2 + 408);
  v16 = *(v2 + 424);
  v17 = *(v2 + 440);
  v18 = *(v2 + 456);
  v71 = *(v2 + 472);
  v70[4] = v17;
  v70[5] = v18;
  v70[2] = v15;
  v70[3] = v16;
  v19 = *(v2 + 480);
  v20 = *(v2 + 488);
  result = memcpy(__dst, (v2 + 496), 0x119uLL);
  v22 = *(v2 + 1000);
  v73[2] = *(v2 + 984);
  v73[3] = v22;
  v74 = *(v2 + 1016);
  v23 = *(v2 + 968);
  v73[0] = *(v2 + 952);
  v73[1] = v23;
  switch(v4)
  {
    case 1:
      *(a2 + 24) = &type metadata for MobileGestaltSource;
      *(a2 + 32) = &off_1F56C59F8;
      v40 = swift_allocObject();
      *a2 = v40;
      v41 = *(v2 + 128);
      *(v40 + 48) = *(v2 + 112);
      *(v40 + 64) = v41;
      *(v40 + 80) = *(v2 + 144);
      *(v40 + 96) = *(v2 + 160);
      v42 = *(v2 + 96);
      *(v40 + 16) = *(v2 + 80);
      *(v40 + 32) = v42;
      return sub_1DB08B1A8(v64, v61);
    case 2:
      *(a2 + 24) = &type metadata for BaaSource;
      *(a2 + 32) = &off_1F56C42B8;
      v38 = swift_allocObject();
      *a2 = v38;
      v39 = *(v2 + 208);
      v38[1] = *(v2 + 192);
      v38[2] = v39;
      v38[3] = *(v2 + 224);
      *(v38 + 57) = *(v2 + 233);
      return sub_1DB08B1E0(v66, v61);
    case 3:
      *(a2 + 24) = &type metadata for NearFieldSource;
      *(a2 + 32) = &off_1F56C6C70;
      *a2 = v59;
      *(a2 + 8) = v60;
      v34 = v58;
      goto LABEL_10;
    case 4:
      *(a2 + 24) = &type metadata for IDSSource;
      *(a2 + 32) = &off_1F56C4180;
      *a2 = v56;
      *(a2 + 8) = v57;
      v34 = v55;
LABEL_10:
      *(a2 + 16) = v34;
      goto LABEL_19;
    case 5:
      *(a2 + 24) = &type metadata for CoreTelephonySource;
      *(a2 + 32) = &off_1F56C9190;
      v43 = swift_allocObject();
      *a2 = v43;
      v44 = *(v2 + 304);
      *(v43 + 48) = *(v2 + 288);
      *(v43 + 64) = v44;
      *(v43 + 79) = *(v2 + 319);
      v45 = *(v2 + 272);
      *(v43 + 16) = *(v2 + 256);
      *(v43 + 32) = v45;
      return sub_1DB08B218(v68, v61);
    case 6:
      *(a2 + 24) = &type metadata for LocationSource;
      *(a2 + 32) = &off_1F56C72F8;
      v47 = swift_allocObject();
      *a2 = v47;
      v48 = *(v2 + 456);
      *(v47 + 80) = *(v2 + 440);
      *(v47 + 96) = v48;
      *(v47 + 112) = *(v2 + 472);
      v49 = *(v2 + 392);
      *(v47 + 16) = *(v2 + 376);
      *(v47 + 32) = v49;
      v50 = *(v2 + 424);
      *(v47 + 48) = *(v2 + 408);
      *(v47 + 64) = v50;
      return sub_1DB08B250(v70, v61);
    case 7:
      *(a2 + 24) = &type metadata for TelephonyUtilitiesSource;
      *(a2 + 32) = &off_1F56C4B10;
      *a2 = v54;
      *(a2 + 1) = v53;
      return result;
    case 8:
      *(a2 + 24) = &type metadata for TimeZoneSource;
      *(a2 + 32) = &off_1F56C7050;
      *a2 = v52;
      *(a2 + 8) = v12;
      *(a2 + 16) = v13;
      goto LABEL_19;
    case 9:
      *(a2 + 24) = &type metadata for CallerClientSource;
      *(a2 + 32) = &off_1F56D0518;
      *a2 = v19;
      *(a2 + 8) = v20;
LABEL_19:

      break;
    case 10:
      *(a2 + 24) = &type metadata for NameParserSource;
      *(a2 + 32) = &off_1F56D0538;
      v51 = swift_allocObject();
      *a2 = v51;
      memcpy((v51 + 16), (v2 + 496), 0x119uLL);
      result = sub_1DB08B298(__dst, v61);
      break;
    case 11:
      v30 = (v2 + 824);
      *(a2 + 24) = &type metadata for GeocoderSource;
      *(a2 + 32) = &off_1F56D0578;
      result = swift_allocObject();
      *a2 = result;
      v31 = v30[5];
      result[5] = v30[4];
      result[6] = v31;
      result[7] = v30[6];
      *(result + 122) = *(v30 + 106);
      v32 = v30[1];
      result[1] = *v30;
      result[2] = v32;
      v33 = v30[3];
      result[3] = v30[2];
      result[4] = v33;
      break;
    case 12:
      *(a2 + 24) = &type metadata for PhoneFormatterSource;
      *(a2 + 32) = &off_1F56D0598;
      v35 = swift_allocObject();
      *a2 = v35;
      v36 = *(v2 + 1000);
      *(v35 + 48) = *(v2 + 984);
      *(v35 + 64) = v36;
      *(v35 + 80) = *(v2 + 1016);
      v37 = *(v2 + 968);
      *(v35 + 16) = *(v2 + 952);
      *(v35 + 32) = v37;
      result = sub_1DB08B66C(v73, v61);
      break;
    case 13:
      *(a2 + 24) = &type metadata for DeviceSettingsSource;
      *(a2 + 32) = &off_1F56D0558;
      result = swift_allocObject();
      *a2 = result;
      v46 = *(v2 + 800);
      result[1] = *(v2 + 784);
      result[2] = v46;
      *(result + 12) = *(v2 + 816);
      break;
    case 14:
      v27 = *(v2 + 1033);
      v28 = *(v2 + 1032);
      v29 = *(v2 + 1024);
      *(a2 + 24) = &type metadata for ConfigurationSource;
      *(a2 + 32) = &off_1F56D05B8;
      *a2 = v29;
      *(a2 + 8) = v28;
      *(a2 + 9) = v27;
      break;
    default:
      *(a2 + 24) = &type metadata for AccountsSource;
      *(a2 + 32) = &off_1F56C7658;
      v24 = swift_allocObject();
      *a2 = v24;
      v25 = *(v2 + 24);
      v26 = *(v2 + 56);
      *(v24 + 48) = *(v2 + 40);
      *(v24 + 64) = v26;
      *(v24 + 80) = *(v2 + 72);
      *(v24 + 16) = *(v2 + 8);
      *(v24 + 32) = v25;
      result = sub_1DB08B170(v62, v61);
      break;
  }

  return result;
}

double sub_1DB068820@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0;
  *(a1 + 24) = -44;
  *(a1 + 32) = 0u;
  *(a1 + 48) = -44;
  *(a1 + 56) = 0u;
  *(a1 + 72) = -44;
  *(a1 + 80) = 0u;
  *(a1 + 96) = -44;
  *(a1 + 104) = 0u;
  *(a1 + 120) = -44;
  *(a1 + 128) = 0u;
  *(a1 + 144) = -44;
  *(a1 + 152) = 0;
  *(a1 + 160) = -11263;
  *(a1 + 168) = 0u;
  *(a1 + 184) = -44;
  *(a1 + 192) = 0;
  *(a1 + 200) = -11263;
  *(a1 + 208) = 0u;
  *(a1 + 224) = -44;
  *(a1 + 232) = 0u;
  *(a1 + 248) = -44;
  *(a1 + 256) = 0u;
  *(a1 + 272) = -44;
  *(a1 + 280) = 0u;
  *(a1 + 296) = -44;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 724;
  *(a1 + 322) = -44;
  v13[0] = 1;
  v12[0] = 1;
  v11[0] = 1;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 724;
  *(a1 + 394) = -44;
  *(a1 + 400) = 0;
  *(a1 + 408) = -11263;
  *(a1 + 416) = 0;
  *(a1 + 424) = 1;
  *(a1 + 425) = -44;
  *(a1 + 432) = 0;
  *(a1 + 440) = 1;
  *(a1 + 441) = -44;
  *(a1 + 448) = 0;
  *(a1 + 456) = 1;
  *(a1 + 457) = -44;
  *(a1 + 464) = 0;
  *(a1 + 472) = 1;
  *(a1 + 473) = -44;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 724;
  *(a1 + 346) = -44;
  *(a1 + 352) = 0u;
  *(a1 + 368) = -44;
  *(a1 + 480) = sub_1DAF3F644(MEMORY[0x1E69E7CC0]);
  *(a1 + 488) = -37;
  *(a1 + 496) = 0u;
  *(a1 + 512) = -44;
  *(a1 + 513) = *v13;
  *(a1 + 516) = *&v13[3];
  *(a1 + 520) = 0u;
  *(a1 + 536) = -44;
  *(a1 + 537) = *v12;
  *(a1 + 540) = *&v12[3];
  *(a1 + 544) = 0u;
  *(a1 + 560) = -44;
  *(a1 + 564) = *&v11[3];
  *(a1 + 561) = *v11;
  *(a1 + 568) = 0u;
  *(a1 + 584) = -44;
  *(a1 + 585) = *v10;
  *(a1 + 588) = *&v10[3];
  *(a1 + 592) = 0u;
  *(a1 + 608) = -44;
  *(a1 + 609) = *v9;
  *(a1 + 612) = *&v9[3];
  *(a1 + 616) = 0u;
  *(a1 + 632) = -44;
  *(a1 + 636) = *&v8[3];
  *(a1 + 633) = *v8;
  *(a1 + 640) = 0u;
  *(a1 + 656) = -44;
  *(a1 + 660) = *&v7[3];
  *(a1 + 657) = *v7;
  *(a1 + 664) = 0u;
  *(a1 + 680) = -44;
  *(a1 + 684) = *&v6[3];
  *(a1 + 681) = *v6;
  *(a1 + 688) = 0u;
  *(a1 + 704) = -44;
  *(a1 + 708) = *&v5[3];
  *(a1 + 705) = *v5;
  *(a1 + 712) = 0u;
  *(a1 + 728) = -44;
  *(a1 + 732) = *&v4[3];
  *(a1 + 729) = *v4;
  *(a1 + 736) = 0u;
  *(a1 + 752) = -44;
  *(a1 + 756) = *&v3[3];
  *(a1 + 753) = *v3;
  *(a1 + 760) = 0u;
  *(a1 + 776) = -44;
  *&result = 3556955138;
  *(a1 + 784) = -738012158;
  *(a1 + 792) = 0;
  *(a1 + 800) = -11263;
  *(a1 + 802) = v14;
  *(a1 + 806) = v15;
  *(a1 + 808) = 0;
  *(a1 + 816) = 1;
  *(a1 + 817) = 724;
  *(a1 + 819) = -44;
  v31[0] = 1;
  v30[0] = 1;
  LOBYTE(v28) = 1;
  LOBYTE(v26) = 1;
  LOBYTE(v24) = 1;
  LOBYTE(v22) = 1;
  LOBYTE(v20) = 1;
  LOBYTE(v18) = 1;
  *(a1 + 824) = 0;
  *(a1 + 832) = -11263;
  *(a1 + 834) = v28;
  *(a1 + 838) = v29;
  *(a1 + 840) = 0;
  *(a1 + 848) = 1;
  *(a1 + 849) = -44;
  *(a1 + 850) = v26;
  *(a1 + 854) = v27;
  *(a1 + 856) = 0;
  *(a1 + 864) = 1;
  *(a1 + 865) = -44;
  *(a1 + 870) = v25;
  *(a1 + 866) = v24;
  *(a1 + 872) = 0;
  *(a1 + 880) = 1;
  *(a1 + 881) = -44;
  *(a1 + 886) = v23;
  *(a1 + 882) = v22;
  *(a1 + 888) = 0;
  *(a1 + 896) = 1;
  *(a1 + 897) = -44;
  *(a1 + 902) = v21;
  *(a1 + 898) = v20;
  *(a1 + 904) = 0;
  *(a1 + 912) = 1;
  *(a1 + 913) = -44;
  *(a1 + 918) = v19;
  *(a1 + 914) = v18;
  *(a1 + 920) = 0;
  *(a1 + 928) = 1;
  *(a1 + 929) = -44;
  *(a1 + 934) = v17;
  *(a1 + 930) = v16;
  *(a1 + 936) = 0;
  *(a1 + 944) = 1;
  *(a1 + 945) = -44;
  *(a1 + 952) = 0u;
  *(a1 + 968) = -44;
  *(a1 + 972) = *&v31[3];
  *(a1 + 969) = *v31;
  *(a1 + 976) = 0u;
  *(a1 + 992) = -44;
  *(a1 + 996) = *&v30[3];
  *(a1 + 993) = *v30;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = -44;
  *(a1 + 1024) = 0;
  *(a1 + 1032) = -11263;
  return result;
}

CoreODIEssentials::ODIBindingsDict __swiftcall ArmandDeviceData.valueDict()()
{
  v2 = v1;
  v3 = v0;
  v4 = *v2;
  memcpy(__dst, v2 + 1, sizeof(__dst));
  v5 = MEMORY[0x1E69E7CC0];
  ODIBindingsDict.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], &v54);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = *(v6 + 16);
  if (v7)
  {
    v39 = v3;

    v8 = 0;
    v40 = v7 - 1;
    v41 = v6;
    v9 = v54;
    v10 = 32;
    v42 = v4;
    do
    {
      v11 = *(v6 + v10);
      v12 = *(v6 + v10 + 16);
      v13 = *(v6 + v10 + 32);
      *(v53 + 10) = *(v6 + v10 + 42);
      v52 = v12;
      v53[0] = v13;
      v51 = v11;
      *&v47[0] = v4;
      memcpy(v47 + 8, __dst, 0x402uLL);
      v45[0] = *(v6 + v10);
      v45[1] = *(v6 + v10 + 16);
      v46[0] = *(v6 + v10 + 32);
      *(v46 + 10) = *(v6 + v10 + 42);
      sub_1DB06829C(v45, &v48);
      v14 = v49;
      v15 = v50;
      __swift_project_boxed_opaque_existential_1(&v48, v49);
      v47[0] = v51;
      v47[1] = v52;
      v47[2] = v53[0];
      *(&v47[2] + 10) = *(v53 + 10);
      v16 = *(v15 + 24);
      sub_1DB042BD4(&v51, v45);
      v16(v45, v47, v14, v15);
      v17 = *&v45[0];
      if (*(*&v45[0] + 16) && (v18 = sub_1DAF35210(0x65756C6176, 0xE500000000000000), (v19 & 1) != 0))
      {
        sub_1DAF3523C(*(v17 + 56) + 40 * v18, v47);
      }

      else
      {
        memset(v47, 0, 40);
      }

      v20 = v51;
      __swift_destroy_boxed_opaque_existential_1Tm(&v48);
      sub_1DAF40A84(v47, v45, &qword_1ECC0E178, &qword_1DB09FFB0);
      sub_1DAF40A84(v45, &v48, &qword_1ECC0E178, &qword_1DB09FFB0);
      if (v49)
      {
        sub_1DAF332B8(&v48, v43);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = sub_1DAF35210(v20, *(&v20 + 1));
        v24 = v9[2];
        v25 = (v22 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          goto LABEL_34;
        }

        v27 = v22;
        if (v9[3] >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DAF3C3E8();
          }
        }

        else
        {
          sub_1DAF3761C(v26, isUniquelyReferenced_nonNull_native);
          v28 = sub_1DAF35210(v20, *(&v20 + 1));
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_36;
          }

          v23 = v28;
        }

        if (v27)
        {
          v34 = (v9[7] + 40 * v23);
          __swift_destroy_boxed_opaque_existential_1Tm(v34);
          sub_1DAF332B8(v43, v34);
          sub_1DB042C0C(&v51);
          sub_1DAF40AEC(v45, &qword_1ECC0E178, &qword_1DB09FFB0);
          sub_1DAF40AEC(v47, &qword_1ECC0E178, &qword_1DB09FFB0);
        }

        else
        {
          v9[(v23 >> 6) + 8] |= 1 << v23;
          *(v9[6] + 16 * v23) = v20;
          sub_1DAF332B8(v43, v9[7] + 40 * v23);

          sub_1DB042C0C(&v51);
          sub_1DAF40AEC(v45, &qword_1ECC0E178, &qword_1DB09FFB0);
          sub_1DAF40AEC(v47, &qword_1ECC0E178, &qword_1DB09FFB0);
          v35 = v9[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_35;
          }

          v9[2] = v37;
        }

        v6 = v41;
        v4 = v42;
      }

      else
      {
        sub_1DAF40AEC(&v48, &qword_1ECC0E178, &qword_1DB09FFB0);
        v30 = sub_1DAF35210(v20, *(&v20 + 1));
        if (v31)
        {
          v32 = v30;
          v6 = v41;
          v4 = v42;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_1DAF3C3E8();
          }

          v33 = *(v9[6] + 16 * v32 + 8);

          sub_1DAF332B8((v9[7] + 40 * v32), v43);
          sub_1DB07FBA0(v32, v9);
          sub_1DB042C0C(&v51);
          sub_1DAF40AEC(v45, &qword_1ECC0E178, &qword_1DB09FFB0);
          sub_1DAF40AEC(v47, &qword_1ECC0E178, &qword_1DB09FFB0);
        }

        else
        {
          sub_1DB042C0C(&v51);
          sub_1DAF40AEC(v45, &qword_1ECC0E178, &qword_1DB09FFB0);
          sub_1DAF40AEC(v47, &qword_1ECC0E178, &qword_1DB09FFB0);
          memset(v43, 0, sizeof(v43));
          v44 = 0;
          v6 = v41;
          v4 = v42;
        }

        sub_1DAF40AEC(v43, &qword_1ECC0E178, &qword_1DB09FFB0);
      }

      if (v40 == v8)
      {

        v3 = v39;
        goto LABEL_33;
      }

      ++v8;
      v10 += 64;
    }

    while (v8 < *(v6 + 16));
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    result.contents._rawValue = sub_1DB09E2E4();
    __break(1u);
  }

  else
  {

    v9 = v54;
LABEL_33:
    *v3 = v9;
  }

  return result;
}

uint64_t ArmandDeviceData.missingP1ValuesList()()
{
  v1 = *v0;
  v2 = *(v0 + 3);
  v3 = *(v0 + 7);
  v109 = *(v0 + 5);
  v110 = v3;
  v111 = *(v0 + 72);
  v107 = *(v0 + 1);
  v108 = v2;
  v4 = *(v0 + 8);
  v114 = *(v0 + 7);
  v115 = v4;
  v116 = *(v0 + 9);
  v117 = *(v0 + 80);
  v5 = *(v0 + 6);
  v112 = *(v0 + 5);
  v113 = v5;
  v87 = v0[22];
  v88 = v0[21];
  v86 = *(v0 + 184);
  *(v120 + 9) = *(v0 + 233);
  v6 = *(v0 + 14);
  v119 = *(v0 + 13);
  v120[0] = v6;
  v118 = *(v0 + 12);
  *(v124 + 15) = *(v0 + 319);
  v7 = *(v0 + 19);
  v123 = *(v0 + 18);
  v124[0] = v7;
  v8 = *(v0 + 17);
  v121 = *(v0 + 16);
  v122 = v8;
  v84 = v0[42];
  v85 = v0[41];
  v82 = *(v0 + 345);
  v83 = *(v0 + 344);
  v81 = *(v0 + 346);
  v79 = v0[45];
  v80 = v0[44];
  v78 = *(v0 + 368);
  v9 = *(v0 + 49);
  v125 = *(v0 + 47);
  v126 = v9;
  v10 = *(v0 + 51);
  v11 = *(v0 + 53);
  v12 = *(v0 + 55);
  v13 = *(v0 + 57);
  v131 = *(v0 + 236);
  v129 = v12;
  v130 = v13;
  v127 = v10;
  v128 = v11;
  v77 = v0[60];
  v76 = *(v0 + 488);
  result = memcpy(__dst, v0 + 62, 0x119uLL);
  v15 = *(v0 + 50);
  v133 = *(v0 + 49);
  v134 = v15;
  v135 = *(v0 + 204);
  v16 = *(v0 + 113);
  v140 = *(v0 + 111);
  v141 = v16;
  v142[0] = *(v0 + 115);
  *(v142 + 10) = *(v0 + 930);
  v17 = *(v0 + 105);
  v136 = *(v0 + 103);
  v137 = v17;
  v18 = *(v0 + 109);
  v138 = *(v0 + 107);
  v139 = v18;
  v147 = *(v0 + 1016);
  v19 = *(v0 + 125);
  v145 = *(v0 + 123);
  v146 = v19;
  v20 = *(v0 + 121);
  v143 = *(v0 + 119);
  v144 = v20;
  v91 = v0[128];
  v89 = *(v0 + 1033);
  v90 = *(v0 + 1032);
  if (!v1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v21 = *(v1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = MEMORY[0x1E69E7CC0];
    do
    {
      v24 = (v1 + 32 + (v22 << 6));
      v25 = v22;
      while (1)
      {
        if (v25 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v26 = *v24;
        v27 = v24[1];
        v28 = v24[2];
        *&v96[10] = *(v24 + 42);
        v95 = v27;
        *v96 = v28;
        v94 = v26;
        v22 = v25 + 1;
        if (*(&v28 + 1) == 1)
        {
          break;
        }

        v24 += 4;
        ++v25;
        if (v21 == v22)
        {
          goto LABEL_16;
        }
      }

      sub_1DB042BD4(&v94, &v104);
      result = swift_isUniquelyReferenced_nonNull_native();
      v99 = v23;
      if ((result & 1) == 0)
      {
        result = sub_1DAF5F730(0, *(v23 + 16) + 1, 1);
        v23 = v99;
      }

      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_1DAF5F730((v29 > 1), v30 + 1, 1);
        v23 = v99;
      }

      *(v23 + 16) = v30 + 1;
      v31 = (v23 + (v30 << 6));
      v32 = v94;
      v33 = v95;
      v34 = *v96;
      *(v31 + 74) = *&v96[10];
      v31[3] = v33;
      v31[4] = v34;
      v31[2] = v32;
    }

    while (v21 - 1 != v25);
LABEL_16:
    v35 = *(v23 + 16);
    if (v35)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

  v23 = MEMORY[0x1E69E7CC0];
  v35 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v35)
  {
LABEL_17:
    v36 = v35 - 1;
    v37 = MEMORY[0x1E69E7CC0];
    v38 = 32;
    v92 = v23;
    while (1)
    {
      v39 = *(v23 + v38);
      v40 = *(v23 + v38 + 16);
      v41 = *(v23 + v38 + 32);
      *(v106 + 10) = *(v23 + v38 + 42);
      v105 = v40;
      v106[0] = v41;
      v104 = v39;
      v93 = v37;
      switch(BYTE1(v41))
      {
        case 1:
          v102 = &type metadata for MobileGestaltSource;
          v103 = &off_1F56C59F8;
          v55 = swift_allocObject();
          v99 = v55;
          v56 = v115;
          *(v55 + 48) = v114;
          *(v55 + 64) = v56;
          *(v55 + 80) = v116;
          *(v55 + 96) = v117;
          v57 = v113;
          *(v55 + 16) = v112;
          *(v55 + 32) = v57;
          sub_1DB08B1A8(&v112, &v94);
          break;
        case 2:
          v102 = &type metadata for BaaSource;
          v103 = &off_1F56C42B8;
          v53 = swift_allocObject();
          v99 = v53;
          v54 = v119;
          v53[1] = v118;
          v53[2] = v54;
          v53[3] = v120[0];
          *(v53 + 57) = *(v120 + 9);
          sub_1DB08B1E0(&v118, &v94);
          break;
        case 3:
          v102 = &type metadata for NearFieldSource;
          v103 = &off_1F56C6C70;
          v99 = v88;
          v100 = v87;
          v49 = v86;
          goto LABEL_34;
        case 4:
          v102 = &type metadata for IDSSource;
          v103 = &off_1F56C4180;
          v99 = v85;
          v100 = v84;
          v49 = v83;
          goto LABEL_34;
        case 5:
          v102 = &type metadata for CoreTelephonySource;
          v103 = &off_1F56C9190;
          v58 = swift_allocObject();
          v99 = v58;
          v59 = v124[0];
          *(v58 + 48) = v123;
          *(v58 + 64) = v59;
          *(v58 + 79) = *(v124 + 15);
          v60 = v122;
          *(v58 + 16) = v121;
          *(v58 + 32) = v60;
          sub_1DB08B218(&v121, &v94);
          break;
        case 6:
          v102 = &type metadata for LocationSource;
          v103 = &off_1F56C72F8;
          v63 = swift_allocObject();
          v99 = v63;
          v64 = v130;
          *(v63 + 80) = v129;
          *(v63 + 96) = v64;
          *(v63 + 112) = v131;
          v65 = v126;
          *(v63 + 16) = v125;
          *(v63 + 32) = v65;
          v66 = v128;
          *(v63 + 48) = v127;
          *(v63 + 64) = v66;
          sub_1DB08B250(&v125, &v94);
          break;
        case 7:
          v102 = &type metadata for TelephonyUtilitiesSource;
          v103 = &off_1F56C4B10;
          LOBYTE(v99) = v82;
          BYTE1(v99) = v81;
          break;
        case 8:
          v102 = &type metadata for TimeZoneSource;
          v103 = &off_1F56C7050;
          v99 = v80;
          v100 = v79;
          v49 = v78;
LABEL_34:
          v101 = v49;
          goto LABEL_35;
        case 9:
          v102 = &type metadata for CallerClientSource;
          v103 = &off_1F56D0518;
          v99 = v77;
          LOBYTE(v100) = v76;
LABEL_35:

          break;
        case 0xA:
          v102 = &type metadata for NameParserSource;
          v103 = &off_1F56D0538;
          v99 = swift_allocObject();
          memcpy(v99 + 1, __dst, 0x119uLL);
          sub_1DB08B298(__dst, &v94);
          break;
        case 0xB:
          v102 = &type metadata for GeocoderSource;
          v103 = &off_1F56D0578;
          v45 = swift_allocObject();
          v99 = v45;
          v46 = v141;
          v45[5] = v140;
          v45[6] = v46;
          v45[7] = v142[0];
          *(v45 + 122) = *(v142 + 10);
          v47 = v137;
          v45[1] = v136;
          v45[2] = v47;
          v48 = v139;
          v45[3] = v138;
          v45[4] = v48;
          break;
        case 0xC:
          v102 = &type metadata for PhoneFormatterSource;
          v103 = &off_1F56D0598;
          v50 = swift_allocObject();
          v99 = v50;
          v51 = v146;
          *(v50 + 48) = v145;
          *(v50 + 64) = v51;
          *(v50 + 80) = v147;
          v52 = v144;
          *(v50 + 16) = v143;
          *(v50 + 32) = v52;
          sub_1DB08B66C(&v143, &v94);
          break;
        case 0xD:
          v102 = &type metadata for DeviceSettingsSource;
          v103 = &off_1F56D0558;
          v61 = swift_allocObject();
          v99 = v61;
          v62 = v134;
          *(v61 + 16) = v133;
          *(v61 + 32) = v62;
          *(v61 + 48) = v135;
          break;
        case 0xE:
          v102 = &type metadata for ConfigurationSource;
          v103 = &off_1F56D05B8;
          v99 = v91;
          LOBYTE(v100) = v90;
          BYTE1(v100) = v89;
          break;
        default:
          v102 = &type metadata for AccountsSource;
          v103 = &off_1F56C7658;
          v42 = swift_allocObject();
          v99 = v42;
          v43 = v110;
          *(v42 + 48) = v109;
          *(v42 + 64) = v43;
          *(v42 + 80) = v111;
          v44 = v108;
          *(v42 + 16) = v107;
          *(v42 + 32) = v44;
          sub_1DB08B170(&v107, &v94);
          break;
      }

      v67 = v105;
      v68 = v106[0];
      v70 = v102;
      v69 = v103;
      __swift_project_boxed_opaque_existential_1(&v99, v102);
      v97 = v67;
      v98 = v68;
      v71 = v69[1];
      sub_1DB042BD4(&v104, &v94);
      sub_1DB042B1C(v67, *(&v67 + 1), v68);
      v71(&v94, &v97, v70, v69);
      sub_1DB041AD8(v97, *(&v97 + 1), v98);
      v72 = v94;
      __swift_destroy_boxed_opaque_existential_1Tm(&v99);
      if (v72 == 211)
      {
        v37 = v93;
      }

      else
      {
        v73 = v104;

        v37 = v93;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1DAF72DB4(0, *(v93 + 2) + 1, 1, v93);
        }

        v75 = *(v37 + 2);
        v74 = *(v37 + 3);
        if (v75 >= v74 >> 1)
        {
          v37 = sub_1DAF72DB4((v74 > 1), v75 + 1, 1, v37);
        }

        *(v37 + 2) = v75 + 1;
        *&v37[16 * v75 + 32] = v73;
      }

      sub_1DB042C0C(&v104);
      v23 = v92;
      if (!v36)
      {
        break;
      }

      --v36;
      v38 += 64;
    }

    return v37;
  }

LABEL_47:

  return MEMORY[0x1E69E7CC0];
}

uint64_t ArmandDeviceData.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v21 = *(v1 + 8);
  v22 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 72);
  v23 = *(v1 + 56);
  v24 = *(v1 + 168);
  v28 = *(v1 + 64);
  v29 = *(v1 + 176);
  v30 = *(v1 + 184);
  v31 = *(v1 + 336);
  v9 = *(v1 + 344);
  v32 = *(v1 + 346);
  v33 = *(v1 + 345);
  v25 = *(v1 + 328);
  v26 = *(v1 + 352);
  v27 = *(v1 + 360);
  v68 = *(v1 + 440);
  v69 = *(v1 + 456);
  v70 = *(v1 + 472);
  v64 = *(v1 + 376);
  v65 = *(v1 + 392);
  v66 = *(v1 + 408);
  v67 = *(v1 + 424);
  v36 = *(v1 + 480);
  v34 = *(v1 + 368);
  v35 = *(v1 + 488);
  memcpy(__dst, (v1 + 496), sizeof(__dst));
  v10 = *(v1 + 800);
  v72 = *(v1 + 784);
  v73 = v10;
  v74 = *(v1 + 816);
  v41 = *(v1 + 824);
  v37 = *(v1 + 833);
  v38 = *(v1 + 832);
  v44 = *(v1 + 840);
  v39 = *(v1 + 849);
  v40 = *(v1 + 848);
  v47 = *(v1 + 856);
  v42 = *(v1 + 865);
  v43 = *(v1 + 864);
  v50 = *(v1 + 872);
  v45 = *(v1 + 881);
  v46 = *(v1 + 880);
  v53 = *(v1 + 888);
  v48 = *(v1 + 897);
  v49 = *(v1 + 896);
  v56 = *(v1 + 904);
  v51 = *(v1 + 913);
  v52 = *(v1 + 912);
  v54 = *(v1 + 929);
  v55 = *(v1 + 928);
  v62 = *(v1 + 920);
  v63 = *(v1 + 936);
  v60 = *(v1 + 945);
  v61 = *(v1 + 944);
  v11 = *(v1 + 1000);
  v77 = *(v1 + 984);
  v78 = v11;
  v79 = *(v1 + 1016);
  v12 = *(v1 + 968);
  v75 = *(v1 + 952);
  v76 = v12;
  v59 = *(v1 + 1024);
  v57 = *(v1 + 1033);
  v58 = *(v1 + 1032);
  if (v3)
  {
    sub_1DB09E3C4();
    sub_1DB08379C(a1, v3);
    v13 = v9;
    if (v4)
    {
LABEL_3:
      sub_1DB09E3C4();
      sub_1DB09D794();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DB09E3C4();
    v13 = v9;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_1DB09E3C4();
LABEL_6:
  if ((v5 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v14 = qword_1DB0BD040[v5 ^ 0x80u];
  }

  else
  {
    v14 = (v5 + 45);
  }

  MEMORY[0x1E1280A80](v14);
  sub_1DB09E3C4();
  if (v6)
  {
    sub_1DB09D794();
  }

  if ((v7 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v15 = qword_1DB0BD040[v7 ^ 0x80u];
  }

  else
  {
    v15 = (v7 + 45);
  }

  MEMORY[0x1E1280A80](v15);
  sub_1DB09E3C4();
  if (v28)
  {
    sub_1DB09D794();
  }

  if ((v8 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v16 = qword_1DB0BD040[v8 ^ 0x80u];
  }

  else
  {
    v16 = (v8 + 45);
  }

  MEMORY[0x1E1280A80](v16);
  sub_1DB05CC50();
  sub_1DB09E3C4();
  if (v29)
  {
    sub_1DB09D794();
  }

  if ((v30 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v17 = qword_1DB0BD040[v30 ^ 0x80u];
  }

  else
  {
    v17 = (v30 + 45);
  }

  MEMORY[0x1E1280A80](v17);
  sub_1DB05DA5C();
  sub_1DB05EAE8();
  sub_1DB09E3C4();
  if (v31)
  {
    sub_1DB09D794();
  }

  if ((v13 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v18 = qword_1DB0BD040[v13 ^ 0x80u];
  }

  else
  {
    v18 = (v13 + 45);
  }

  MEMORY[0x1E1280A80](v18);
  sub_1DB06116C();
  sub_1DB09E3C4();
  if (v27)
  {
    sub_1DB09D794();
  }

  if ((v34 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v19 = qword_1DB0BD040[v34 ^ 0x80u];
  }

  else
  {
    v19 = (v34 + 45);
  }

  MEMORY[0x1E1280A80](v19);
  sub_1DB060374(a1);
  sub_1DB061FF8(a1);
  sub_1DB066CEC();
  sub_1DB062B54();
  sub_1DB055C74(a1, v41, v38 | (v37 << 8));
  sub_1DB055C74(a1, v44, v40 | (v39 << 8));
  sub_1DB055C74(a1, v47, v43 | (v42 << 8));
  sub_1DB055C74(a1, v50, v46 | (v45 << 8));
  sub_1DB055C74(a1, v53, v49 | (v48 << 8));
  sub_1DB055C74(a1, v56, v52 | (v51 << 8));
  sub_1DB055C74(a1, v62, v55 | (v54 << 8));
  sub_1DB055C74(a1, v63, v61 | (v60 << 8));
  sub_1DB05BF5C();
  return sub_1DB0639E8();
}

uint64_t ArmandDeviceData.hashValue.getter()
{
  sub_1DB09E3A4();
  ArmandDeviceData.hash(into:)(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB06A064()
{
  sub_1DB09E3A4();
  ArmandDeviceData.hash(into:)(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB06A0A8()
{
  sub_1DB09E3A4();
  ArmandDeviceData.hash(into:)(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DB06A0EC(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, 0x40AuLL);
  v3 = *a2;
  swift_beginAccess();
  memcpy(v7, (v3 + 112), 0x40AuLL);
  memcpy((v3 + 112), __dst, 0x40AuLL);
  sub_1DAF96A98(__dst, v5);
  return sub_1DAF40988(v7);
}

uint64_t sub_1DB06A170@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 112), 0x40AuLL);
  memcpy(a1, (v1 + 112), 0x40AuLL);
  return sub_1DAF96A98(__dst, &v4);
}

uint64_t sub_1DB06A1D8(const void *a1)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 112), 0x40AuLL);
  memcpy((v1 + 112), a1, 0x40AuLL);
  return sub_1DAF40988(__dst);
}

uint64_t sub_1DB06A28C()
{
  v1 = *(v0 + 1224);
  v10 = *(v0 + 1216);
  v11 = v1;

  sub_1DB09DE44();

  v8 = 0xD000000000000019;
  v9 = 0x80000001DB0CB380;
  if (*(v0 + 1147))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 1147))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v2, v3);

  MEMORY[0x1E127FE90](0x20646E6120, 0xE500000000000000);
  if (*(v0 + 1146))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + 1146))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v4, v5);

  v6 = v8;
  LOBYTE(v8) = 5;
  CoreODILogger.debug(_:category:)(v6, v9, &v8);

  if (*(v0 + 1147) == 1)
  {
    return *(v0 + 1146);
  }

  else
  {
    return 0;
  }
}

uint64_t ArmandDataFiller.__allocating_init(sessionIdentifier:workflowID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  ArmandDataFiller.init(sessionIdentifier:workflowID:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ArmandDataFiller.init(sessionIdentifier:workflowID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_defaultActor_initialize();
  sub_1DB068820(v5 + 112);
  *(v5 + 1146) = 0;
  *(v5 + 1152) = 0;
  *(v5 + 1168) = 0;
  *(v5 + 1160) = 0;
  *(v5 + 1232) = a3;
  *(v5 + 1240) = a4;
  v10 = type metadata accessor for PhoneCertificateVendorWrapper();
  swift_allocObject();
  v16 = v10;
  v17 = &off_1F56CD198;
  *&v15 = sub_1DAF975E8();
  v11 = type metadata accessor for PhoneAuthenticationCertificateProvider();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 152) = 0;
  sub_1DAF332B8(&v15, v12 + 112);
  *(v5 + 1200) = v11;
  *(v5 + 1208) = &off_1F56CD188;
  *(v5 + 1176) = v12;
  *(v5 + 1216) = a1;
  *(v5 + 1224) = a2;
  *&v15 = a1;
  *(&v15 + 1) = a2;
  v14 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000001FLL, 0x80000001DB0CB3A0, &v14);

  return v5;
}

uint64_t sub_1DB06A56C(__int128 *a1)
{
  v2 = v1;
  v4 = *(v1 + 1224);
  v19 = *(v1 + 1216);
  v20 = v4;
  LOBYTE(v22) = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000001FLL, 0x80000001DB0CBB90, &v22);

  v5 = *(a1 + 2);
  v6 = *(a1 + 24);
  swift_beginAccess();
  if (v6)
  {
    v7 = -43;
  }

  else
  {
    v7 = -45;
  }

  *(v2 + 304) = v5;
  *(v2 + 312) = v6 & 1;
  *(v2 + 313) = v7;
  v22 = a1[5];
  v8 = *(v2 + 352);

  v9 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    v10 = -45;
  }

  else
  {
    v10 = -43;
  }

  *(v2 + 344) = v22;
  *(v2 + 352) = v9;
  *(v2 + 360) = v10;
  v21 = *a1;
  v11 = *(v2 + 328);
  sub_1DAF40A84(&v22, v18, &unk_1ECC0EAE0, &unk_1DB0A4650);

  v12 = *(&v21 + 1);
  if (*(&v21 + 1))
  {
    v13 = -45;
  }

  else
  {
    v13 = -43;
  }

  *(v2 + 320) = v21;
  *(v2 + 328) = v12;
  *(v2 + 336) = v13;
  swift_endAccess();
  v14 = *(v2 + 1216);
  v15 = *(v2 + 1224);
  v19 = v14;
  v20 = v15;
  v17 = 5;
  sub_1DAF40A84(&v21, v18, &unk_1ECC0EAE0, &unk_1DB0A4650);

  CoreODILogger.debug(_:category:)(0xD000000000000029, 0x80000001DB0CBBB0, &v17);
}

uint64_t sub_1DB06A700(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06A724, v2, 0);
}

uint64_t sub_1DB06A724()
{
  v16 = v0;
  if (*(v0 + 120) >> 60 != 15)
  {
    sub_1DAF40674(*(v0 + 112), *(v0 + 120));
    v1 = sub_1DB09D004();
    v2 = SecCertificateCreateWithData(0, v1);

    if (v2)
    {
      v3 = v2;
      sub_1DAFC40A8(v3, v0 + 16);
      v8 = *(v0 + 120);
      v9 = *(v0 + 128);
      v10 = *(v0 + 112);
      v11 = *(v9 + 1224);
      v13[0] = *(v9 + 1216);
      v13[1] = v11;
      v14 = 5;
      v15 = 0xE000000000000000;

      sub_1DB09DE44();
      MEMORY[0x1E127FE90](0xD000000000000034, 0x80000001DB0CBB50);
      v12 = sub_1DB09CF84();
      MEMORY[0x1E127FE90](v12);

      CoreODILogger.debug(_:category:)(0, 0xE000000000000000, &v14);

      sub_1DB06A56C((v0 + 16));
      sub_1DB0903D4(v0 + 16);

      sub_1DAF4AC40(v10, v8);
      goto LABEL_6;
    }

    sub_1DAF4AC40(*(v0 + 112), *(v0 + 120));
  }

  v4 = *(v0 + 128);
  v5 = *(v4 + 1224);
  v14 = *(v4 + 1216);
  v15 = v5;
  LOBYTE(v13[0]) = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000036, 0x80000001DB0CBB10, v13);

LABEL_6:
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DB06A958()
{
  v7 = v0;
  v1 = *(v0 + 488);
  v4 = *(v1 + 1216);
  v5 = *(v1 + 1224);
  v6 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000002ALL, 0x80000001DB0CBAA0, &v6);

  if (qword_1EE304008 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 496) = v2;
  *v2 = v0;
  v2[1] = sub_1DB06AA6C;

  return sub_1DAFEFC24(v0 + 240);
}

uint64_t sub_1DB06AA6C()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 488);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB06AB7C, v2, 0);
}

uint64_t sub_1DB06AB7C()
{
  v18 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 320);
  *(v0 + 80) = *(v0 + 304);
  *(v0 + 96) = v2;
  v3 = *(v0 + 288);
  *(v0 + 48) = *(v0 + 272);
  *(v0 + 64) = v3;
  v4 = *(v0 + 384);
  *(v0 + 144) = *(v0 + 368);
  *(v0 + 160) = v4;
  v5 = *(v0 + 352);
  *(v0 + 112) = *(v0 + 336);
  *(v0 + 128) = v5;
  v6 = *(v0 + 448);
  *(v0 + 208) = *(v0 + 432);
  *(v0 + 224) = v6;
  v7 = *(v0 + 416);
  *(v0 + 176) = *(v0 + 400);
  *(v0 + 192) = v7;
  v8 = *(v0 + 256);
  *(v0 + 16) = *(v0 + 240);
  *(v0 + 32) = v8;
  v9 = *(v1 + 1232);
  v10 = *(v1 + 1240);
  v11 = *(v0 + 232);

  if (v11)
  {
  }

  else
  {
    v11 = sub_1DAF3EE1C(MEMORY[0x1E69E7CC0]);
    v1 = *(v0 + 488);
  }

  sub_1DAF791EC(v0 + 16);
  v12 = sub_1DAFFF410(v9, v10, v11);

  swift_beginAccess();
  *(v1 + 1136) = v12;
  *(v1 + 1144) = -11520;
  v15 = *(v1 + 1216);
  v16 = *(v1 + 1224);
  v17 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000034, 0x80000001DB0CBAD0, &v17);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1DB06ACF0(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v4 = *(type metadata accessor for AnyODIKnownBinding(0) - 8);
  v3[24] = v4;
  v5 = *(v4 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB06ADBC, v2, 0);
}

uint64_t sub_1DB06ADBC()
{
  v28 = v0;
  v1 = v0[23];
  v2 = v0[21];
  v3 = *(v1 + 1224);
  v25[0] = *(v1 + 1216);
  v25[1] = v3;

  sub_1DB09DE44();

  v26 = 0xD000000000000005;
  v27 = 0x80000001DB0CB9F0;
  v4 = MEMORY[0x1E1280010](v2, MEMORY[0x1E69E6158]);
  MEMORY[0x1E127FE90](v4);

  CoreODILogger.debug(_:category:)(0xD000000000000024, 0x80000001DB0CB9F0, &v26);

  v5 = *(v2 + 16);
  v0[27] = v5;
  if (v5)
  {
    v6 = v0[22];
    v7 = v0[23];
    v8 = v0[21];
    v0[28] = 0;
    v0[29] = 0;
    v9 = *(v8 + 32);
    v0[30] = v9;
    v10 = *(v8 + 40);
    v0[31] = v10;
    v11 = v6[3];
    v12 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v11);
    v13 = swift_allocObject();
    v0[32] = v13;
    swift_weakInit();
    v14 = swift_allocObject();
    v0[33] = v14;
    v14[2] = v13;
    v14[3] = v9;
    v14[4] = v10;
    v15 = *(v12 + 32);
    swift_bridgeObjectRetain_n();

    v24 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[34] = v17;
    *v17 = v0;
    v17[1] = sub_1DB06B0DC;

    return (v24)(v9, v10, &unk_1DB0BB1A0, v14, v11, v12);
  }

  else
  {
    v20 = v0[25];
    v19 = v0[26];
    v21 = v0[23];
    v22 = *(v21 + 1224);
    v26 = *(v21 + 1216);
    v27 = v22;
    LOBYTE(v25[0]) = 5;

    CoreODILogger.debug(_:category:)(0xD00000000000002CLL, 0x80000001DB0CBA20, v25);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1DB06B0DC()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 256);
  v4 = *(*v0 + 184);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB06B22C, v4, 0);
}

uint64_t sub_1DB06B22C()
{
  v1 = v0[22];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_1DB06B35C;
  v7 = v0[30];
  v8 = v0[31];

  return (v10)(v0 + 7, v7, v8, v2, v3);
}

uint64_t sub_1DB06B35C()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB06B46C, v2, 0);
}

uint64_t sub_1DB06B46C()
{
  v61 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 224);
    v2 = *(v0 + 208);
    sub_1DAF332B8((v0 + 56), v0 + 16);
    sub_1DAF3523C(v0 + 16, v0 + 96);
    sub_1DB05B030((v0 + 96), v2);
    if (v1)
    {
      v3 = *(v0 + 248);
      v5 = *(v0 + 200);
      v4 = *(v0 + 208);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

      v6 = *(v0 + 8);
LABEL_23:

      return v6();
    }

    v9 = *(v0 + 184);
    swift_beginAccess();
    *(v9 + 600) = -45;
    if (!*(v9 + 592))
    {
      *(*(v0 + 184) + 592) = MEMORY[0x1E69E7CC8];
    }

    v11 = *(v0 + 240);
    v10 = *(v0 + 248);
    v12 = *(v0 + 184);
    sub_1DB08E6B0(*(v0 + 208), *(v0 + 200), type metadata accessor for AnyODIKnownBinding);
    v13 = *(v12 + 592);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v12 + 592);
    *(v0 + 160) = v15;
    *(v12 + 592) = 0x8000000000000000;
    v16 = sub_1DAF35210(v11, v10);
    v18 = *(v15 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v10) = v17;
      if (*(v15 + 24) < v21)
      {
        v23 = *(v0 + 240);
        v22 = *(v0 + 248);
        sub_1DAF39ADC(v21, isUniquelyReferenced_nonNull_native);
        v24 = *(v0 + 160);
        v16 = sub_1DAF35210(v23, v22);
        if ((v10 & 1) != (v25 & 1))
        {

          return sub_1DB09E2E4();
        }

LABEL_14:
        v27 = *(v0 + 160);
        if (v10)
        {
LABEL_15:
          sub_1DAF404BC(*(v0 + 200), v27[7] + *(*(v0 + 192) + 72) * v16);
LABEL_20:
          v37 = *(v0 + 248);
          v38 = *(v0 + 208);
          v39 = *(v0 + 184);
          v40 = *(v39 + 592);
          *(v39 + 592) = v27;

          swift_endAccess();

          sub_1DB08E718(v38, type metadata accessor for AnyODIKnownBinding);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
          v8 = 0;
          goto LABEL_21;
        }

LABEL_18:
        v30 = *(v0 + 240);
        v29 = *(v0 + 248);
        v32 = *(v0 + 192);
        v31 = *(v0 + 200);
        v27[(v16 >> 6) + 8] |= 1 << v16;
        v33 = (v27[6] + 16 * v16);
        *v33 = v30;
        v33[1] = v29;
        result = sub_1DB08E91C(v31, v27[7] + *(v32 + 72) * v16, type metadata accessor for AnyODIKnownBinding);
        v34 = v27[2];
        v20 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v20)
        {
          __break(1u);
          return result;
        }

        v36 = *(v0 + 248);
        v27[2] = v35;

        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }
    }

    v28 = v16;
    sub_1DAF3D308();
    v16 = v28;
    v27 = *(v0 + 160);
    if (v10)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v7 = *(v0 + 248);

  sub_1DAF40AEC(v0 + 56, &qword_1ECC0E178, &qword_1DB09FFB0);
  v8 = *(v0 + 224);
LABEL_21:
  v41 = *(v0 + 232) + 1;
  if (v41 == *(v0 + 216))
  {
    v43 = *(v0 + 200);
    v42 = *(v0 + 208);
    v44 = *(v0 + 184);
    v58 = *(v44 + 1216);
    v59 = *(v44 + 1224);
    v60[0] = 5;

    CoreODILogger.debug(_:category:)(0xD00000000000002CLL, 0x80000001DB0CBA20, v60);

    v6 = *(v0 + 8);
    goto LABEL_23;
  }

  *(v0 + 224) = v8;
  *(v0 + 232) = v41;
  v45 = *(v0 + 176);
  v46 = *(v0 + 184);
  v47 = *(v0 + 168) + 16 * v41;
  v48 = *(v47 + 32);
  *(v0 + 240) = v48;
  v49 = *(v47 + 40);
  *(v0 + 248) = v49;
  v50 = v45[3];
  v51 = v45[4];
  __swift_project_boxed_opaque_existential_1(v45, v50);
  v52 = swift_allocObject();
  *(v0 + 256) = v52;
  swift_weakInit();
  v53 = swift_allocObject();
  *(v0 + 264) = v53;
  v53[2] = v52;
  v53[3] = v48;
  v53[4] = v49;
  v54 = *(v51 + 32);
  swift_bridgeObjectRetain_n();

  v57 = (v54 + *v54);
  v55 = v54[1];
  v56 = swift_task_alloc();
  *(v0 + 272) = v56;
  *v56 = v0;
  v56[1] = sub_1DB06B0DC;

  return (v57)(v48, v49, &unk_1DB0BB1A0, v53, v50, v51);
}

uint64_t sub_1DB06B9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E238, &qword_1DB0A01D0) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for AnyODIKnownBinding(0);
  v4[18] = v6;
  v7 = *(v6 - 8);
  v4[19] = v7;
  v8 = *(v7 + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB06BAB0, 0, 0);
}

uint64_t sub_1DB06BAB0()
{
  v1 = v0[20];
  sub_1DAF3523C(v0[13], (v0 + 2));
  sub_1DB05B030(v0 + 2, v1);
  v3 = v0[14];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB06BBF4, Strong, 0);
  }

  else
  {
    v5 = v0[17];
    sub_1DB08E718(v0[20], type metadata accessor for AnyODIKnownBinding);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1DB06BBF4()
{
  v1 = v0[21];
  swift_beginAccess();
  *(v1 + 600) = -45;
  if (!*(v1 + 592))
  {
    *(v1 + 592) = sub_1DAF3F644(MEMORY[0x1E69E7CC0]);
  }

  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  sub_1DB08E6B0(v0[20], v5, type metadata accessor for AnyODIKnownBinding);
  (*(v4 + 56))(v5, 0, 1, v3);

  sub_1DAF34408(v5, v7, v6);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1DB06BD1C, 0, 0);
}

uint64_t sub_1DB06BD1C()
{
  v1 = v0[17];
  sub_1DB08E718(v0[20], type metadata accessor for AnyODIKnownBinding);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB06BDAC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06BDD0, v2, 0);
}

void sub_1DB06BDD0()
{
  v31 = v0;
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v26 = *(v0 + 48);
    v25 = *(v0 + 56);
    v4 = (v1 + 40);
    do
    {
      v6 = *(v26 + 16);
      if (v3 == v6)
      {
        break;
      }

      if (v3 >= v6)
      {
        __break(1u);
        return;
      }

      v7 = *v4;
      v8 = *(v26 + 32 + v3);
      if (*v4 && (v9 = *(v4 - 1), v10 = *v4, , v11 = _s17CoreODIEssentials15BindingsHelpersV17formatPhoneNumber05phoneG016usingCountryCodeSSSgSS_So8NSStringCSgtFZ_0(v9, v7, 0), v13 = v12, , v13))
      {
        v14 = v2;
        swift_beginAccess();
        v15 = (v25 + 1072);
        v16 = (v25 + 1064);
        v17 = (v25 + 1080);
        if (v8)
        {
          v15 = (v25 + 1096);
          v16 = (v25 + 1088);
          v17 = (v25 + 1104);
          if (v8 != 1)
          {
            v15 = (v25 + 1120);
            v16 = (v25 + 1112);
            v17 = (v25 + 1128);
          }
        }

        v18 = *v15;

        *v16 = v11;
        *v15 = v13;
        v2 = v14;
      }

      else
      {
        v27 = *(v25 + 1216);
        v28 = *(v25 + 1224);
        v29 = 0;
        v30 = 0xE000000000000000;

        sub_1DB09DE44();
        v19 = v30;
        *(v0 + 16) = v29;
        *(v0 + 24) = v19;
        MEMORY[0x1E127FE90](0xD000000000000011, 0x80000001DB0CBBE0);
        *(v0 + 64) = v8;
        sub_1DB09DF94();
        MEMORY[0x1E127FE90](0x6E20656E6F687020, 0xED00007265626D75);
        v20 = *(v0 + 16);
        v21 = *(v0 + 24);
        LOBYTE(v29) = 5;
        CoreODILogger.warning(_:category:)(v20, v21, &v29);

        swift_beginAccess();
        v22 = (v25 + 1072);
        v23 = (v25 + 1064);
        v17 = (v25 + 1080);
        if (v8)
        {
          v22 = (v25 + 1096);
          v23 = (v25 + 1088);
          v17 = (v25 + 1104);
          if (v8 != 1)
          {
            v22 = (v25 + 1120);
            v23 = (v25 + 1112);
            v17 = (v25 + 1128);
          }
        }

        v5 = *v22;

        *v23 = 0;
        *v22 = 0xE000000000000000;
      }

      ++v3;
      v4 += 2;
      *v17 = -45;
      swift_endAccess();
    }

    while (v2 != v3);
  }

  v24 = *(v0 + 8);

  v24();
}

uint64_t sub_1DB06C09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 64) = a4;
  *(v6 + 72) = v5;
  *(v6 + 112) = a5;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a1;
  v7 = sub_1DB09CE54();
  *(v6 + 80) = v7;
  v8 = *(v7 - 8);
  *(v6 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB06C174, v5, 0);
}

uint64_t sub_1DB06C174()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);

  MEMORY[0x1E127FE90](32, 0xE100000000000000);

  MEMORY[0x1E127FE90](v2, v1);

  v3 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
  v4 = sub_1DB09D6B4();

  v5 = [v3 personNameComponentsFromString_];

  if (v5)
  {
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    v10 = *(v0 + 72);
    v11 = *(v0 + 112);
    sub_1DB09CE34();

    (*(v9 + 32))(v6, v7, v8);
    swift_beginAccess();
    sub_1DB065E00(v6, v11 & 1);
    swift_endAccess();
    (*(v9 + 8))(v6, v8);
  }

  v13 = *(v0 + 96);
  v12 = *(v0 + 104);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DB06C324(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1DB09D2A4();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9A0, &qword_1DB0AECB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v59 = &v55 - v11;
  v12 = type metadata accessor for ODISignpost();
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v55 - v20;
  v60 = *a1;
  if (qword_1EE301378 != -1)
  {
    v54 = v19;
    swift_once();
    v19 = v54;
  }

  v22 = qword_1EE309F48;
  v23 = unk_1EE309F50;
  v24 = byte_1EE309F58;
  v25 = qword_1EE309F60;
  v26 = byte_1EE309F68;
  *(v17 + 4) = "enableTelemetry=YES";
  *(v17 + 5) = 19;
  v17[48] = 2;
  *v17 = v22;
  *(v17 + 1) = v23;
  v17[16] = v24;
  *(v17 + 3) = v25;
  v61 = v19;
  v27 = *(v19 + 28);
  v28 = v25;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v26 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DB08E91C(v17, v21, type metadata accessor for ODISignpost);
  v29 = MKBGetDeviceLockState() - 1 < 2;
  swift_beginAccess();
  *(v2 + 896) = v29;
  *(v2 + 897) = -45;
  v30 = [objc_opt_self() sharedConnection];
  v31 = v59;
  if (v30)
  {
    v32 = v30;
    v33 = [v30 effectiveBoolValueForSetting_];

    v34 = v33 == 1;
  }

  else
  {
    v34 = 0;
  }

  *(v2 + 898) = v34;
  *(v2 + 899) = -45;
  v35 = v56;
  sub_1DB09D264();
  sub_1DB09D254();
  (*(v57 + 8))(v35, v58);
  v36 = sub_1DB09D244();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v31, 1, v36) == 1)
  {
    sub_1DAF40AEC(v31, &qword_1ECC0E9A0, &qword_1DB0AECB0);
    v38 = 0;
    v39 = 0xE000000000000000;
  }

  else
  {
    v40 = sub_1DB09D1F4();
    v39 = v41;
    (*(v37 + 8))(v31, v36);
    v38 = v40;
  }

  v42 = _s17CoreODIEssentials15BindingsHelpersV25convertCountryCodeToASCII3strSiSS_tFZ_0(v38, v39);

  *(v2 + 904) = v42;
  *(v2 + 912) = 0;
  *(v2 + 913) = -45;
  v43 = _s17CoreODIEssentials15BindingsHelpersV14deviceLanguageSSSgvgZ_0();
  if (v44)
  {
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0xE000000000000000;
  }

  v46 = _s17CoreODIEssentials15BindingsHelpersV26convertLanguageCodeToASCII3strSiSS_tFZ_0(v43, v45);

  *(v2 + 920) = v46;
  *(v2 + 928) = 0;
  *(v2 + 929) = -45;
  v63 = v60;
  v62 = 70;
  v47 = sub_1DB06C80C(&v62);
  if (v47 != 2)
  {
    *(v2 + 930) = v47;
    *(v2 + 931) = -45;
  }

  sub_1DB09DC04();
  v48 = *(v21 + 3);
  v49 = *v21;
  v50 = *(v21 + 1);
  v51 = *(v61 + 28);
  v52 = v21[16];
  sub_1DB09D464();
  return sub_1DB08E718(v21, type metadata accessor for ODISignpost);
}

uint64_t sub_1DB06C80C(unsigned __int8 *a1)
{
  v2 = *a1;
  v5 = *v1;
  v4 = v2;
  ODIBindingsDict.subscript.getter(&v4, v6);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_1DAF40AEC(v6, &qword_1ECC0E178, &qword_1DB09FFB0);
    return 2;
  }
}

uint64_t sub_1DB06C8B8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06C8D8, v1, 0);
}

uint64_t sub_1DB06C8D8()
{
  v13 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v10 = *(v1 + 1216);
  v11 = *(v1 + 1224);
  v12 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000033, 0x80000001DB0CB9B0, &v12);

  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1DB06CA4C;

  return v9(v3, v4);
}

uint64_t sub_1DB06CA4C(char a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB06CB64, v3, 0);
}

uint64_t sub_1DB06CB64()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  swift_beginAccess();
  *(v2 + 505) = v1;
  *(v2 + 506) = -45;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DB06CBE4(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06CC04, v1, 0);
}

uint64_t sub_1DB06CC04()
{
  v13 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v10 = *(v1 + 1216);
  v11 = *(v1 + 1224);
  v12 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000024, 0x80000001DB0CB8C0, &v12);

  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v4 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_1DB06CD78;

  return v9(v3, v4);
}

uint64_t sub_1DB06CD78(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v7 = *(v3 + 128);
  if (v1)
  {
    v8 = sub_1DB06D068;
  }

  else
  {
    v8 = sub_1DB06CEAC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DB06CEAC()
{
  v18 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[16];
    swift_beginAccess();
    sub_1DB05FA5C(v1);
    swift_endAccess();
    v3 = sub_1DB09017C(v1);
    v5 = v4;
    swift_beginAccess();
    v6 = *(v2 + 496);

    *(v2 + 488) = v3;
    *(v2 + 496) = v5;
    *(v2 + 504) = -45;
    swift_endAccess();
    if (sub_1DB09DA64())
    {
      v7 = v0[16];
      v13 = *(v7 + 1216);
      v15 = *(v7 + 1224);
      v17 = 14;

      CoreODILogger.warning(_:category:)(0xD000000000000050, 0x80000001DB0CB950, &v17);
    }

    else
    {
    }
  }

  else
  {
    v8 = v0[16];
    swift_beginAccess();
    v9 = *(v8 + 496);

    *(v8 + 488) = 0;
    *(v8 + 496) = 0;
    *(v8 + 504) = -43;
    swift_endAccess();
  }

  v10 = v0[16];
  v14 = *(v10 + 1216);
  v16 = *(v10 + 1224);
  v17 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000031, 0x80000001DB0CB910, &v17);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DB06D068()
{
  v13 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = *(v2 + 1224);
  v10[0] = *(v2 + 1216);
  v10[1] = v3;
  v11 = 0;
  v12 = 0xE000000000000000;

  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000018, 0x80000001DB0CB8F0);
  swift_getErrorValue();
  v4 = v0[2];
  v5 = v0[3];
  sub_1DB09E234();
  LOBYTE(v11) = 14;
  CoreODILogger.debug(_:category:)(0, 0xE000000000000000, &v11);

  v6 = v0[16];
  v7 = *(v6 + 1224);
  v11 = *(v6 + 1216);
  v12 = v7;
  LOBYTE(v10[0]) = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000031, 0x80000001DB0CB910, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DB06D1C0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06D1E0, v1, 0);
}

uint64_t sub_1DB06D1E0()
{
  v7 = v0;
  v1 = *(v0 + 48);
  v2 = v1[144];
  v1[144] = *(v0 + 40);

  v4 = v1[152];
  v5 = v1[153];
  v6 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000026, 0x80000001DB0CB860, &v6);

  return MEMORY[0x1EEE6DFA0](sub_1DB06D2A4, 0, 0);
}

uint64_t sub_1DB06D2A4()
{
  v1 = *(MEMORY[0x1E69E88D0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1DB06D384;
  v3 = *(v0 + 40);
  v4 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 64, 0, 0, 0x6E69726168537369, 0xEF6E656572635367, sub_1DB08EE1C, v3, v4);
}

uint64_t sub_1DB06D384()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB06D480, 0, 0);
}

uint64_t sub_1DB06D480()
{
  v1 = *(v0 + 48);
  *(v0 + 65) = *(v0 + 64);
  return MEMORY[0x1EEE6DFA0](sub_1DB06D4A4, v1, 0);
}

uint64_t sub_1DB06D4A4()
{
  v8 = v0;
  v1 = *(v0 + 65);
  v2 = *(v0 + 48);
  swift_beginAccess();
  *(v2 + 457) = v1;
  *(v2 + 458) = -45;
  v5 = *(v2 + 1216);
  v6 = *(v2 + 1224);
  v7 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000002BLL, 0x80000001DB0CB890, &v7);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DB06D570(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06D590, v1, 0);
}

uint64_t sub_1DB06D590()
{
  v10 = v0;
  v1 = v0[8];
  v2 = v1[145];
  v1[145] = v0[7];

  v7 = v1[152];
  v8 = v1[153];
  v9 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000025, 0x80000001DB0CB7A0, &v9);

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1DB06D688;
  v4 = v0[7];
  v5 = v0[8];

  return sub_1DB06E404(v4);
}

uint64_t sub_1DB06D688()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v3;
  v4[1] = sub_1DB06D7E0;
  v5 = v1[8];
  v6 = v1[7];

  return sub_1DB06E770(v6);
}

uint64_t sub_1DB06D7E0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v3;
  v4[1] = sub_1DB06D938;
  v5 = v1[8];
  v6 = v1[7];

  return sub_1DB06EADC(v6);
}

uint64_t sub_1DB06D938()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB06DA48, v2, 0);
}

uint64_t sub_1DB06DA48()
{
  v1 = v0[7];
  v2 = sub_1DB08E648(&qword_1EE303990, 255, type metadata accessor for ODIDeviceInfo);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v1;
  strcpy((v3 + 24), "UniqueChipID");
  *(v3 + 37) = 0;
  *(v3 + 38) = -5120;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E430, &unk_1DB0A0550);
  *v5 = v0;
  v5[1] = sub_1DB06DBB4;

  return MEMORY[0x1EEE6DDE0](v0 + 5, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAF49C08, v3, v6);
}

uint64_t sub_1DB06DBB4()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 64);
  v6 = *v0;

  *(v1 + 112) = *(v1 + 40);
  *(v1 + 49) = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1DB06DD10, v4, 0);
}

uint64_t sub_1DB06DD10()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 112);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  swift_beginAccess();
  if (v1)
  {
    v5 = -43;
  }

  else
  {
    v5 = -45;
  }

  *(v4 + 264) = v2;
  *(v4 + 272) = v1;
  *(v4 + 273) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1DB06DDB4, v3, 0);
}

uint64_t sub_1DB06DDB4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  *(v0 + 50) = sub_1DAFC9A60() & 1;

  return MEMORY[0x1EEE6DFA0](sub_1DB06DE24, v1, 0);
}

uint64_t sub_1DB06DE24()
{
  v9 = v0;
  v1 = *(v0 + 64);
  *(v1 + 433) = *(v0 + 50);
  *(v1 + 434) = -45;
  v6 = *(v1 + 1216);
  v7 = *(v1 + 1224);
  v8 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000023, 0x80000001DB0CB7D0, &v8);

  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1DB06DF10;
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  return sub_1DB06EE4C(v3);
}

uint64_t sub_1DB06DF10()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB06E020, v2, 0);
}

uint64_t sub_1DB06E020()
{
  v9 = v0;
  v1 = v0[8];
  v6 = *(v1 + 1216);
  v7 = *(v1 + 1224);
  v8 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000001DLL, 0x80000001DB0CB800, &v8);

  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_1DB06E0FC;
  v3 = v0[7];
  v4 = v0[8];

  return sub_1DB06EFB4();
}

uint64_t sub_1DB06E0FC()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[17] = v4;
  *v4 = v3;
  v4[1] = sub_1DB06E254;
  v5 = v1[8];
  v6 = v1[7];

  return sub_1DB06F23C();
}

uint64_t sub_1DB06E254()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB06E364, v2, 0);
}

uint64_t sub_1DB06E364()
{
  v7 = v0;
  v1 = *(v0 + 64);
  v4 = *(v1 + 1216);
  v5 = *(v1 + 1224);
  v6 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000032, 0x80000001DB0CB820, &v6);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DB06E404(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06E424, a1, 0);
}

uint64_t sub_1DB06E424()
{
  v1 = v0[7];
  v2 = sub_1DB08E648(&qword_1EE303990, 255, type metadata accessor for ODIDeviceInfo);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  strcpy((v3 + 24), "BuildVersion");
  *(v3 + 37) = 0;
  *(v3 + 38) = -5120;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
  *v5 = v0;
  v5[1] = sub_1DB06E590;

  return MEMORY[0x1EEE6DDE0](v0 + 5, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v6);
}

uint64_t sub_1DB06E590()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v6 = *v0;

  *(v1 + 88) = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1DB06E6CC, v4, 0);
}

uint64_t sub_1DB06E6CC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  swift_beginAccess();
  v4 = *(v3 + 200);

  if (v2)
  {
    v5 = -45;
  }

  else
  {
    v5 = -43;
  }

  *(v3 + 192) = v1;
  *(v3 + 200) = v2;
  *(v3 + 208) = v5;
  swift_endAccess();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB06E770(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06E790, a1, 0);
}

uint64_t sub_1DB06E790()
{
  v1 = v0[7];
  v2 = sub_1DB08E648(&qword_1EE303990, 255, type metadata accessor for ODIDeviceInfo);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  strcpy((v3 + 24), "SerialNumber");
  *(v3 + 37) = 0;
  *(v3 + 38) = -5120;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
  *v5 = v0;
  v5[1] = sub_1DB06E8FC;

  return MEMORY[0x1EEE6DDE0](v0 + 5, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v6);
}

uint64_t sub_1DB06E8FC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v6 = *v0;

  *(v1 + 88) = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1DB06EA38, v4, 0);
}

uint64_t sub_1DB06EA38()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  swift_beginAccess();
  v4 = *(v3 + 224);

  if (v2)
  {
    v5 = -45;
  }

  else
  {
    v5 = -43;
  }

  *(v3 + 216) = v1;
  *(v3 + 224) = v2;
  *(v3 + 232) = v5;
  swift_endAccess();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB06EADC(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06EAFC, a1, 0);
}

uint64_t sub_1DB06EAFC()
{
  v1 = v0[7];
  v2 = sub_1DB08E648(&qword_1EE303990, 255, type metadata accessor for ODIDeviceInfo);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  strcpy((v3 + 24), "UniqueDeviceID");
  *(v3 + 39) = -18;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
  *v5 = v0;
  v5[1] = sub_1DB06EC6C;

  return MEMORY[0x1EEE6DDE0](v0 + 5, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFA7214, v3, v6);
}

uint64_t sub_1DB06EC6C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v6 = *v0;

  *(v1 + 88) = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1DB06EDA8, v4, 0);
}

uint64_t sub_1DB06EDA8()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  swift_beginAccess();
  v4 = *(v3 + 248);

  if (v2)
  {
    v5 = -45;
  }

  else
  {
    v5 = -43;
  }

  *(v3 + 240) = v1;
  *(v3 + 248) = v2;
  *(v3 + 256) = v5;
  swift_endAccess();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB06EE4C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06EE6C, a1, 0);
}

uint64_t sub_1DB06EE6C()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[7] = sub_1DAFC5BDC(0);

  return MEMORY[0x1EEE6DFA0](sub_1DB06EEDC, v1, 0);
}

uint64_t sub_1DB06EEDC()
{
  v1 = v0[7];
  if (v1)
  {
    if (v1[2])
    {
      v3 = v1[4];
      v2 = v1[5];

      goto LABEL_6;
    }

    v4 = v0[7];
  }

  v3 = 0;
  v2 = 0;
LABEL_6:
  v5 = v0[6];
  swift_beginAccess();
  v6 = *(v5 + 376);

  if (v2)
  {
    v7 = -45;
  }

  else
  {
    v7 = -43;
  }

  *(v5 + 368) = v3;
  *(v5 + 376) = v2;
  *(v5 + 384) = v7;
  swift_endAccess();
  v8 = v0[1];

  return v8();
}

uint64_t sub_1DB06EFB4()
{
  *(v1 + 40) = v0;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1DB06F04C;

  return sub_1DAFC6EF4();
}

uint64_t sub_1DB06F04C(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB06F164, v3, 0);
}

uint64_t sub_1DB06F164()
{
  v1 = v0[7];
  if (v1)
  {
    if (v1[2])
    {
      v3 = v1[4];
      v2 = v1[5];

      goto LABEL_6;
    }

    v4 = v0[7];
  }

  v3 = 0;
  v2 = 0;
LABEL_6:
  v5 = v0[5];
  swift_beginAccess();
  v6 = *(v5 + 400);

  if (v2)
  {
    v7 = -45;
  }

  else
  {
    v7 = -43;
  }

  *(v5 + 392) = v3;
  *(v5 + 400) = v2;
  *(v5 + 408) = v7;
  swift_endAccess();
  v8 = v0[1];

  return v8();
}

uint64_t sub_1DB06F23C()
{
  *(v1 + 40) = v0;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1DB06F2D4;

  return sub_1DAFC7D98();
}

uint64_t sub_1DB06F2D4(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB06F3EC, v3, 0);
}

uint64_t sub_1DB06F3EC()
{
  v1 = v0[7];
  if (v1)
  {
    if (v1[2])
    {
      v3 = v1[4];
      v2 = v1[5];

      goto LABEL_6;
    }

    v4 = v0[7];
  }

  v3 = 0;
  v2 = 0;
LABEL_6:
  v5 = v0[5];
  swift_beginAccess();
  v6 = *(v5 + 424);

  if (v2)
  {
    v7 = -45;
  }

  else
  {
    v7 = -43;
  }

  *(v5 + 416) = v3;
  *(v5 + 424) = v2;
  *(v5 + 432) = v7;
  swift_endAccess();
  v8 = v0[1];

  return v8();
}

uint64_t sub_1DB06F4C4(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB06F4E4, v1, 0);
}

uint64_t sub_1DB06F4E4()
{
  v9 = v0;
  v1 = v0[6];
  v2 = v1[146];
  v1[146] = v0[5];

  v6 = v1[152];
  v7 = v1[153];
  v8 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000001CLL, 0x80000001DB0CB750, &v8);

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1DB06F5D8;
  v4 = v0[5];

  return sub_1DAFE3884();
}

uint64_t sub_1DB06F5D8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    v11 = v6[6];
    v6[8] = a2;
    v6[9] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DB06F734, v11, 0);
  }
}

uint64_t sub_1DB06F734()
{
  v11 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  swift_beginAccess();
  v4 = *(v3 + 288);

  if (v1)
  {
    v5 = -45;
  }

  else
  {
    v5 = -43;
  }

  *(v3 + 280) = v2;
  *(v3 + 288) = v1;
  *(v3 + 296) = v5;
  swift_endAccess();
  v8 = *(v3 + 1216);
  v9 = *(v3 + 1224);
  v10 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000002FLL, 0x80000001DB0CB770, &v10);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB06F840()
{
  v10 = v0;
  v1 = v0[10];
  v7 = *(v1 + 1216);
  v8 = *(v1 + 1224);
  v9 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000020, 0x80000001DB0CB6F0, &v9);

  if (qword_1EE302B50 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE302B58;
  v3 = type metadata accessor for ODIAccountManager();
  v0[5] = v3;
  v0[6] = &off_1F56CFCD8;
  v0[2] = v2;
  v4 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v3);

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1DB06F988;

  return sub_1DB04D28C();
}

uint64_t sub_1DB06F988(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  v6[12] = v2;

  v9 = v6[10];
  if (v2)
  {
    v10 = sub_1DB06FAC8;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    v10 = sub_1DB06FB2C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1DB06FAC8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[12];

  return v1();
}

uint64_t sub_1DB06FB2C()
{
  v10 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  swift_beginAccess();
  v4 = *(v3 + 176);

  *(v3 + 168) = v2;
  *(v3 + 176) = v1;
  *(v3 + 184) = -45;
  swift_endAccess();
  v7 = *(v3 + 1216);
  v8 = *(v3 + 1224);
  v9 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000002ALL, 0x80000001DB0CB720, &v9);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB06FC34()
{
  v12 = v0;
  v1 = v0[15];
  v9 = *(v1 + 1216);
  v10 = *(v1 + 1224);
  v11 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000020, 0x80000001DB0CB690, &v11);

  sub_1DAF3523C(v1 + 1176, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1DB06FDAC;

  return v8(v2, v3);
}

uint64_t sub_1DB06FDAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  v4[17] = v1;

  v7 = v4[15];
  if (v1)
  {
    v8 = sub_1DB070058;
  }

  else
  {
    v4[18] = a1;
    v8 = sub_1DB06FEE8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DB06FEE8()
{
  v12 = v0;
  v1 = v0[15];
  v0[14] = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
  sub_1DAF4AA8C(&qword_1EE301930, &qword_1ECC0E448, &qword_1DB0A3110);
  v2 = sub_1DB09D694();
  v4 = v3;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  swift_beginAccess();
  v5 = *(v1 + 448);

  *(v1 + 440) = v2;
  *(v1 + 448) = v4;
  *(v1 + 456) = -45;
  swift_endAccess();
  v6 = v0[15];
  v9 = *(v6 + 1216);
  v10 = *(v6 + 1224);
  v11 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000002CLL, 0x80000001DB0CB6C0, &v11);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB070058()
{
  v13 = v0;
  v1 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  *(v0 + 104) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  if (swift_dynamicCast())
  {

    v3 = byte_1DB0BD02E[*(v0 + 152)];
    v4 = *(v0 + 120);
    swift_beginAccess();
    *(v4 + 456) = v3;
    v5 = *(v4 + 448);
    *(v4 + 440) = 0;
    *(v4 + 448) = 0;

    v6 = *(v0 + 120);
    v10 = *(v6 + 1216);
    v11 = *(v6 + 1224);
    v12 = 5;

    CoreODILogger.debug(_:category:)(0xD00000000000002CLL, 0x80000001DB0CB6C0, &v12);

    v7 = *(v0 + 8);
  }

  else
  {

    v7 = *(v0 + 8);
    v8 = *(v0 + 136);
  }

  return v7();
}

uint64_t sub_1DB0701D4()
{
  v10 = v0;
  v1 = v0[10];
  v7 = *(v1 + 1216);
  v8 = *(v1 + 1224);
  v9 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000023, 0x80000001DB0CB630, &v9);

  if (qword_1EE302B50 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE302B58;
  v3 = type metadata accessor for ODIAccountManager();
  v0[5] = v3;
  v0[6] = &off_1F56CFCD8;
  v0[2] = v2;
  v4 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v3);

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1DB07031C;

  return sub_1DB04DA34();
}

uint64_t sub_1DB07031C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  v6[12] = v2;

  v9 = v6[10];
  if (v2)
  {
    v10 = sub_1DB095470;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    v10 = sub_1DB07045C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1DB07045C()
{
  v10 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  swift_beginAccess();
  v4 = *(v3 + 152);

  *(v3 + 144) = v2;
  *(v3 + 152) = v1;
  *(v3 + 160) = -45;
  swift_endAccess();
  v7 = *(v3 + 1216);
  v8 = *(v3 + 1224);
  v9 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000002FLL, 0x80000001DB0CB660, &v9);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB070564()
{
  v10 = v0;
  v1 = v0[7];
  v7 = *(v1 + 1216);
  v8 = *(v1 + 1224);
  v9 = 5;

  CoreODILogger.debug(_:category:)(0xD000000000000023, 0x80000001DB0CB5D0, &v9);

  if (qword_1EE302B50 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE302B58;
  v3 = type metadata accessor for ODIAccountManager();
  v0[5] = v3;
  v0[6] = &off_1F56CFCD8;
  v0[2] = v2;
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[8] = v4;
  v5 = *v4;

  return MEMORY[0x1EEE6DFA0](sub_1DB070684, v5, 0);
}

uint64_t sub_1DB070684()
{
  v1 = **(v0 + 64);
  v2 = sub_1DB04E1DC();
  v4 = v3;
  *(v0 + 72) = 0;
  v5 = *(v0 + 56);
  *(v0 + 80) = v4;
  *(v0 + 88) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DB070780, v5, 0);
}

uint64_t sub_1DB07071C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_1DB070780()
{
  v10 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  swift_beginAccess();
  v4 = *(v3 + 128);

  *(v3 + 120) = v2;
  *(v3 + 128) = v1;
  *(v3 + 136) = -45;
  swift_endAccess();
  v7 = *(v3 + 1216);
  v8 = *(v3 + 1224);
  v9 = 5;

  CoreODILogger.debug(_:category:)(0xD00000000000002FLL, 0x80000001DB0CB600, &v9);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DB070868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[345] = v4;
  v5[344] = a4;
  v5[343] = a3;
  v5[342] = a2;
  v5[341] = a1;
  v5[346] = *v4;
  v6 = type metadata accessor for ODISignpost();
  v5[347] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[348] = swift_task_alloc();
  v5[349] = swift_task_alloc();
  v5[350] = swift_task_alloc();
  v5[351] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB070958, v4, 0);
}

uint64_t sub_1DB070958()
{
  v140 = v0;
  v1 = v0 + 2408;
  v117 = (v0 + 2576);
  v108 = (v0 + 2608);
  v109 = (v0 + 2592);
  v100 = (v0 + 2640);
  v102 = (v0 + 2664);
  v103 = (v0 + 2656);
  v105 = (v0 + 2688);
  v106 = (v0 + 2672);
  v107 = (v0 + 2696);
  v104 = (v0 + 2704);
  v123 = (v0 + 2712);
  v124 = (v0 + 2624);
  v116 = (v0 + 2720);
  v2 = *(v0 + 2760);
  v3 = *(v0 + 2728);
  v4 = v2[152];
  *(v0 + 2816) = v4;
  v5 = v2[153];
  *(v0 + 2824) = v5;
  swift_beginAccess();
  memcpy((v0 + 1056), v2 + 14, 0x40AuLL);
  v128 = v5;
  v129 = v4;
  *&v138[0] = v4;
  *(&v138[0] + 1) = v5;
  __src = (v0 + 1056);
  sub_1DAF96A98(v0 + 1056, v0 + 16);
  sub_1DB09DE44();

  __dst[0] = 0xD000000000000005;
  __dst[1] = 0x80000001DB0CB3C0;
  v6 = MEMORY[0x1E1280010](v3, &type metadata for DeviceDataField);
  MEMORY[0x1E127FE90](v6);

  CoreODILogger.info(_:category:)(0xD000000000000015, 0x80000001DB0CB3C0, __dst);

  *(v0 + 2576) = 0;
  *(v0 + 2584) = 1;
  *(v0 + 2720) = 0;
  *(v0 + 2624) = 0;
  *(v0 + 2632) = 1;
  *(v0 + 2704) = 0u;
  *(v0 + 2608) = 0;
  *(v0 + 2616) = 1;
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + 2696) = MEMORY[0x1E69E7CC0];
  *(v0 + 2688) = 0;
  *(v0 + 2592) = 0;
  *(v0 + 2600) = 1;
  *(v0 + 2672) = v8;
  *(v0 + 2664) = v8;
  *(v0 + 2656) = 0;
  *(v0 + 2640) = 0;
  *(v0 + 2648) = 1;
  if (!*(v3 + 16))
  {
    v75 = 400000;
    v76 = MEMORY[0x1E69E7CC0];
    v77 = MEMORY[0x1E69E7CC0];
    goto LABEL_146;
  }

  v96 = 0;
  v9 = 0;
  v101 = 0;
  v111 = 0;
  v112 = 0;
  v126 = 0;
  v127 = 0;
  v119 = 0;
  v120 = 0;
  v95 = 0;
  v98 = 0;
  v10 = (v0 + 2224);
  v99 = *(v0 + 2728) + 32;
  v110 = 1;
  v113 = MEMORY[0x1E69E7CC0];
  v114 = MEMORY[0x1E69E7CC0];
  v121 = MEMORY[0x1E69E7CC0];
  v122 = MEMORY[0x1E69E7CC0];
  v115 = MEMORY[0x1E69E7CC0];
  v125 = 1;
  v118 = 1;
  v97 = 1;
  v131 = *(v3 + 16);
  while (2)
  {
    while (2)
    {
      v11 = (v99 + (v9 << 6));
      while (1)
      {
        v12 = *v11;
        v13 = v11[1];
        v14 = v11[2];
        *(v10 + 42) = *(v11 + 42);
        v10[1] = v13;
        v10[2] = v14;
        *v10 = v12;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
          goto LABEL_150;
        }

        v135 = v9;
        v143 = v9 + 1;
        v15 = v10;
        v16 = *(v0 + 2240);
        v17 = *(v0 + 2248);
        v18 = *(v0 + 2256);
        memcpy(__dst, __src, 0x40AuLL);
        v19 = v11[1];
        v138[0] = *v11;
        v138[1] = v19;
        v139[0] = v11[2];
        v136 = v11;
        *(v139 + 10) = *(v11 + 42);
        sub_1DB06829C(v138, v0 + 2448);
        v20 = *(v0 + 2472);
        v21 = *(v0 + 2480);
        __swift_project_boxed_opaque_existential_1((v0 + 2448), v20);
        __dst[0] = v16;
        __dst[1] = v17;
        LOBYTE(__dst[2]) = v18;
        v22 = *(v21 + 8);
        sub_1DB042BD4(v15, v0 + 2160);
        v133 = v17;
        v134 = v16;
        sub_1DB042B1C(v16, v17, v18);
        v22(v138, __dst, v20, v21);
        sub_1DB041AD8(__dst[0], __dst[1], __dst[2]);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2448));
        if (LOBYTE(v138[0]) != 212)
        {
          sub_1DB042C0C(v15);
          v32 = v131;
          v33 = v143;
          v10 = v15;
          v30 = v136;
          goto LABEL_109;
        }

        v130 = *(v0 + 2272);
        v23 = *(v0 + 2280);
        v24 = *(v0 + 2264);
        v25 = *(v0 + 2257);
        *&v138[0] = v129;
        *(&v138[0] + 1) = v128;
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_1DB09DE44();
        v26 = __dst[1];
        *(v0 + 2512) = __dst[0];
        *(v0 + 2520) = v26;
        MEMORY[0x1E127FE90](0xD00000000000001ALL, 0x80000001DB0CB4A0);
        v27 = v15[1];
        *(v0 + 2096) = *v15;
        *(v0 + 2112) = v27;
        *(v0 + 2128) = v15[2];
        *(v0 + 2138) = *(v15 + 42);
        sub_1DB09DF94();
        v28 = *(v0 + 2512);
        v29 = *(v0 + 2520);
        LOBYTE(__dst[0]) = 5;
        CoreODILogger.debug(_:category:)(v28, v29, __dst);

        v10 = v15;
        v30 = v136;
        if (v25 <= 9)
        {
          break;
        }

        if (v25 > 11)
        {
          if (v25 != 12)
          {
            if (v25 != 14)
            {
              goto LABEL_107;
            }

            v51 = v23;
            v32 = v131;
            v33 = v143;
            if (v18)
            {
              if (v130 > 0x10C6F7A0B5EDLL)
              {
                v52 = 1;
              }

              else
              {
                v52 = v51;
              }

              v53 = 1000000 * v130;
              if (1000000 * v130 <= v112)
              {
                v53 = v112;
              }

              if (v52)
              {
                v54 = -1;
              }

              else
              {
                v54 = v53;
              }

              *v105 = v54;
              v55 = v111;
              if (v110)
              {
                v55 = 0x7FFFFFFFFFFFFFFFLL;
              }

              if (v24 < v55)
              {
                v55 = v24;
              }

              *v109 = v55;
              *(v0 + 2600) = 0;
              sub_1DB042B1C(v134, v133, 1);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v113 = sub_1DAF72DB4(0, *(v113 + 2) + 1, 1, v113);
              }

              v57 = *(v113 + 2);
              v56 = *(v113 + 3);
              if (v57 >= v56 >> 1)
              {
                v113 = sub_1DAF72DB4((v56 > 1), v57 + 1, 1, v113);
              }

              sub_1DB042C0C(v15);
              *(v113 + 2) = v57 + 1;
              v58 = &v113[16 * v57];
              *(v58 + 4) = v134;
              *(v58 + 5) = v133;
              sub_1DB041AD8(v134, v133, 1);
              *v106 = v113;
              goto LABEL_109;
            }

            goto LABEL_105;
          }

          v32 = v131;
          v33 = v143;
          if (!v18)
          {
            goto LABEL_105;
          }

          sub_1DB042B1C(v134, v133, 1);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v122 = sub_1DAF72DB4(0, *(v122 + 2) + 1, 1, v122);
          }

          v64 = *(v122 + 2);
          v67 = *(v122 + 3);
          v65 = v64 + 1;
          if (v64 >= v67 >> 1)
          {
            v122 = sub_1DAF72DB4((v67 > 1), v64 + 1, 1, v122);
          }

          sub_1DB042C0C(v15);
          v66 = v122;
        }

        else
        {
          if (v25 != 10)
          {
            v41 = v23;
            v32 = v131;
            v33 = v143;
            if (v18)
            {
              sub_1DB042B1C(v134, v133, 1);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v114 = sub_1DAF72DB4(0, *(v114 + 2) + 1, 1, v114);
              }

              v43 = *(v114 + 2);
              v42 = *(v114 + 3);
              if (v43 >= v42 >> 1)
              {
                v114 = sub_1DAF72DB4((v42 > 1), v43 + 1, 1, v114);
              }

              *(v114 + 2) = v43 + 1;
              v44 = &v114[16 * v43];
              *(v44 + 4) = v134;
              *(v44 + 5) = v133;
              sub_1DB041AD8(v134, v133, 1);
              sub_1DB042C0C(v10);
              *v102 = v114;
              if (v130 > 0x10C6F7A0B5EDLL)
              {
                v45 = 1;
              }

              else
              {
                v45 = v41;
              }

              v46 = 1000000 * v130;
              if (1000000 * v130 <= v101)
              {
                v46 = v101;
              }

              if (v45)
              {
                v46 = -1;
              }

              v101 = v46;
              *v103 = v46;
              goto LABEL_109;
            }

LABEL_105:
            sub_1DB042C0C(v10);
            goto LABEL_109;
          }

          v32 = v131;
          v33 = v143;
          if (!v18)
          {
            goto LABEL_105;
          }

          sub_1DB042B1C(v134, v133, 1);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v121 = sub_1DAF72DB4(0, *(v121 + 2) + 1, 1, v121);
          }

          v64 = *(v121 + 2);
          v63 = *(v121 + 3);
          v65 = v64 + 1;
          if (v64 >= v63 >> 1)
          {
            v121 = sub_1DAF72DB4((v63 > 1), v64 + 1, 1, v121);
          }

          sub_1DB042C0C(v15);
          v66 = v121;
        }

        *(v66 + 2) = v65;
        v68 = &v66[16 * v64];
        *(v68 + 4) = v134;
        *(v68 + 5) = v133;
        sub_1DB041AD8(v134, v133, 1);
LABEL_109:
        if (v33 == v32)
        {
          goto LABEL_136;
        }

        v9 = v135 + 1;
        v11 = v30 + 4;
        if (v33 >= v32)
        {
          goto LABEL_135;
        }
      }

      if (v25 <= 4)
      {
        if (v25 == 1)
        {
LABEL_79:
          sub_1DB042C0C(v15);
          v59 = v127;
          if (v125)
          {
            v59 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v24 >= v59)
          {
            v60 = v59;
          }

          else
          {
            v60 = v24;
          }

          v127 = v60;
          *v124 = v60;
          *(v0 + 2632) = 0;
          if (v130 > 0x10C6F7A0B5EDLL)
          {
            v61 = 1;
          }

          else
          {
            v61 = v23;
          }

          v62 = 1000000 * v130;
          if (1000000 * v130 <= v126)
          {
            v62 = v126;
          }

          if (v61)
          {
            v62 = -1;
          }

          v126 = v62;
          *v123 = v62;
          v125 = 0;
        }

        else
        {
          if (v25 != 2)
          {
            goto LABEL_107;
          }

          sub_1DB042C0C(v15);
          v47 = v120;
          if (v118)
          {
            v47 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v24 >= v47)
          {
            v48 = v47;
          }

          else
          {
            v48 = v24;
          }

          v120 = v48;
          *v117 = v48;
          *(v0 + 2584) = 0;
          if (v130 > 0x10C6F7A0B5EDLL)
          {
            v49 = 1;
          }

          else
          {
            v49 = v23;
          }

          v50 = 1000000 * v130;
          if (1000000 * v130 <= v119)
          {
            v50 = v119;
          }

          if (v49)
          {
            v50 = -1;
          }

          v119 = v50;
          *v116 = v50;
          v118 = 0;
        }

LABEL_108:
        v32 = v131;
        v33 = v143;
        goto LABEL_109;
      }

      if (v25 == 5)
      {
        goto LABEL_79;
      }

      if (v25 == 9)
      {
        v31 = v23;
        v32 = v131;
        v33 = v143;
        if (v18)
        {
          if (v130 > 0x10C6F7A0B5EDLL)
          {
            v34 = 1;
          }

          else
          {
            v34 = v31;
          }

          v35 = 1000000 * v130;
          if (1000000 * v130 <= v112)
          {
            v35 = v112;
          }

          if (v34)
          {
            v35 = -1;
          }

          v112 = v35;
          *v104 = v35;
          v36 = v111;
          if (v110)
          {
            v36 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v24 >= v36)
          {
            v37 = v36;
          }

          else
          {
            v37 = v24;
          }

          v111 = v37;
          *v108 = v37;
          *(v0 + 2616) = 0;
          sub_1DB042B1C(v134, v133, 1);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v115 = sub_1DAF72DB4(0, *(v115 + 2) + 1, 1, v115);
          }

          v39 = *(v115 + 2);
          v38 = *(v115 + 3);
          if (v39 >= v38 >> 1)
          {
            v115 = sub_1DAF72DB4((v38 > 1), v39 + 1, 1, v115);
          }

          sub_1DB042C0C(v15);
          *(v115 + 2) = v39 + 1;
          v40 = &v115[16 * v39];
          *(v40 + 4) = v134;
          *(v40 + 5) = v133;
          sub_1DB041AD8(v134, v133, 1);
          v110 = 0;
          *v107 = v115;
          goto LABEL_109;
        }

        goto LABEL_105;
      }

      if (v25 != 6)
      {
LABEL_107:
        sub_1DB042C0C(v15);
        goto LABEL_108;
      }

      if (v134 == 11)
      {
        v69 = v18;
      }

      else
      {
        v69 = 1;
      }

      sub_1DB042C0C(v15);
      v9 = v143;
      if (v69)
      {
        v70 = v95;
        if (v97)
        {
          v70 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v71 = v96;
        if (v97)
        {
          v71 = 0;
        }

        if (v70 >= v24)
        {
          v72 = v24;
        }

        else
        {
          v72 = v70;
        }

        v95 = v72;
        *v100 = v72;
        *(v0 + 2648) = 0;
        v73 = 1000000 * v130;
        if (v130 > 0x10C6F7A0B5EDLL)
        {
          v74 = 1;
        }

        else
        {
          v74 = v23;
        }

        if (v74)
        {
          v73 = -1;
        }

        if (v71 > v73)
        {
          v73 = v71;
        }

        v96 = v73;
        if (v9 != v131)
        {
          v97 = 0;
          v98 = 1;
          if (v9 < v131)
          {
            continue;
          }

          goto LABEL_135;
        }

        if (v73 >= 0x3B9ACA00)
        {
          v75 = 1000000000;
        }

        else
        {
          v75 = v73;
        }

        goto LABEL_155;
      }

      break;
    }

    if (v143 == v131)
    {
LABEL_150:
      v94 = 1000000000;
      if (v96 < 0x3B9ACA00)
      {
        v94 = v96;
      }

      if (v97)
      {
        v75 = 400000;
      }

      else
      {
        v75 = v94;
      }

LABEL_155:
      v1 = v0 + 2408;
      v77 = v121;
      v76 = v122;
      goto LABEL_143;
    }

    v98 = 1;
    if (v143 < v131)
    {
      continue;
    }

    break;
  }

LABEL_135:
  __break(1u);
LABEL_136:
  if (v97)
  {
    v75 = 400000;
  }

  else if (v96 >= 0x3B9ACA00)
  {
    v75 = 1000000000;
  }

  else
  {
    v75 = v96;
  }

  v1 = v0 + 2408;
  v77 = v121;
  v76 = v122;
  if (v98)
  {
LABEL_143:
    *(v0 + 2848) = v75;
    *(v0 + 2840) = v77;
    *(v0 + 2832) = v76;
    v78 = *(v0 + 2736);
    v143 = v78 + *v78;
    v79 = v78[1];
    v80 = swift_task_alloc();
    *(v0 + 2856) = v80;
    *v80 = v0;
    v80[1] = sub_1DB07177C;
    v81 = *(v0 + 2744);
    v82 = v143;

    return v82(v1);
  }

LABEL_146:
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v0 + 2872) = v77;
  *(v0 + 2864) = v76;
  v84 = *(v0 + 2824);
  v85 = *(v0 + 2816);
  v86 = *(v0 + 2768);
  v87 = *(v0 + 2760);
  v88 = *(v0 + 2752);
  v89 = *(v0 + 2728);
  v143 = sub_1DB08E648(&qword_1EE3014E0, v7, type metadata accessor for ArmandDataFiller);
  v90 = swift_task_alloc();
  *(v0 + 2880) = v90;
  v90[2] = v85;
  v90[3] = v84;
  v90[4] = v102;
  v90[5] = v103;
  v90[6] = v88;
  v90[7] = v87;
  v90[8] = v100;
  v90[9] = v1;
  v90[10] = v75;
  v90[11] = v89;
  v90[12] = __src;
  v90[13] = v117;
  v90[14] = v116;
  v90[15] = v124;
  v90[16] = v123;
  v90[17] = v106;
  v90[18] = v109;
  v90[19] = v105;
  v90[20] = v108;
  v90[21] = v104;
  v90[22] = v107;
  v90[23] = v86;
  v91 = *(MEMORY[0x1E69E88A0] + 4);
  v92 = swift_task_alloc();
  *(v0 + 2888) = v92;
  *v92 = v0;
  v92[1] = sub_1DB071AAC;
  v142 = MEMORY[0x1E69E6370];
  v93 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v0 + 1050, v93);
}