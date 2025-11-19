void sub_225AD5D60(uint64_t *a1@<X8>)
{
  v2 = 1196901185;
  if (!*v1)
  {
    v2 = 0x647261646E617473;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ISO18013DictionaryEncodingStrategy.cborEncoderStrategy.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D138);
    v3 = swift_allocBox();
    v5 = v4;
    v6 = *MEMORY[0x277CF3980];
    v7 = sub_225CCD3D4();
    v15 = *(*(v7 - 8) + 104);
    (v15)((v7 - 8), v5, v6, v7);
    *a1 = v3;
    v8 = *MEMORY[0x277CF3978];
    v9 = a1;
    v10 = v7;
    v11 = v15;
  }

  else
  {
    v12 = *MEMORY[0x277CF3980];
    v13 = sub_225CCD3D4();
    v11 = *(*(v13 - 8) + 104);
    v10 = v13;
    v9 = a1;
    v8 = v12;
  }

  return v11(v9, v8, v10);
}

uint64_t sub_225AD5ECC@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

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

uint64_t ISO18013DictionaryEncodingStrategy.rawValue.getter()
{
  if (*v0)
  {
    return 0x4164656966696E75;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_225AD5F78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4164656966696E75;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = 0x8000000225D0B8A0;
  }

  else
  {
    v4 = 0xED00007373656363;
  }

  if (*a2)
  {
    v5 = 0x4164656966696E75;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*a2)
  {
    v6 = 0xED00007373656363;
  }

  else
  {
    v6 = 0x8000000225D0B8A0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225AD6030()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AD60C4()
{
  sub_225CCE5B4();
}

uint64_t sub_225AD6144()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225AD61E0(unint64_t *a1@<X8>)
{
  v2 = 0x8000000225D0B8A0;
  v3 = 0xD000000000000011;
  if (*v1)
  {
    v3 = 0x4164656966696E75;
    v2 = 0xED00007373656363;
  }

  *a1 = v3;
  a1[1] = v2;
}

void (*CBOREncoder.presentmentType.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = sub_225CCF454();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 88) = v8;
  CBOREncoder.presentmentType.getter((v5 + 96));
  return sub_225AD6324;
}

void (*CBOREncoder.codingKeyFormat.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = sub_225CCF454();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 88) = v8;
  CBOREncoder.codingKeyFormat.getter((v5 + 96));
  return sub_225AD6418;
}

uint64_t sub_225AD6448@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  if (qword_27D739F68 != -1)
  {
    swift_once();
  }

  v4 = sub_225CCF454();
  v5 = __swift_project_value_buffer(v4, qword_27D73D108);
  v6 = a1();
  if (!*(v6 + 16) || (v7 = sub_2259F1C5C(v5), (v8 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_2259CB810(*(v6 + 56) + 32 * v7, v12);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = v11;
LABEL_9:
  *a2 = v10;
  return result;
}

uint64_t sub_225AD653C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *))
{
  v7 = sub_225CCF454();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  if (qword_27D739F68 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_27D73D108);
  (*(v8 + 16))(v10, v12, v7);
  v17 = &type metadata for ISO18013PresentmentType;
  v16[0] = v11;
  v13 = a5(v15);
  sub_225A0528C(v16, v10);
  return v13(v15, 0);
}

void (*CBORDecoder.presentmentType.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = sub_225CCF454();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 88) = v8;
  CBORDecoder.presentmentType.getter((v5 + 96));
  return sub_225AD677C;
}

void sub_225AD6794(uint64_t a1, char a2, uint64_t (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  if (a2)
  {
    if (qword_27D739F68 != -1)
    {
      swift_once();
    }

    v7 = v4[10];
    v6 = v4[11];
    v8 = v4[9];
    v9 = __swift_project_value_buffer(v8, qword_27D73D108);
    (*(v7 + 16))(v6, v9, v8);
    v16 = &type metadata for ISO18013PresentmentType;
    v15[0] = v5;
    v10 = a3(v4);
    sub_225A0528C(v15, v6);
    v10(v4, 0);
  }

  else
  {
    if (qword_27D739F68 != -1)
    {
      swift_once();
    }

    v11 = v4[10];
    v6 = v4[11];
    v12 = v4[9];
    v13 = __swift_project_value_buffer(v12, qword_27D73D108);
    (*(v11 + 16))(v6, v13, v12);
    v16 = &type metadata for ISO18013PresentmentType;
    v15[0] = v5;
    v14 = a3(v4 + 4);
    sub_225A0528C(v15, v6);
    v14(v4 + 4, 0);
  }

  free(v6);

  free(v4);
}

uint64_t sub_225AD6968@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  if (qword_27D739F70 != -1)
  {
    swift_once();
  }

  v4 = sub_225CCF454();
  v5 = __swift_project_value_buffer(v4, qword_27D73D120);
  v6 = a1();
  if (!*(v6 + 16) || (v7 = sub_2259F1C5C(v5), (v8 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_2259CB810(*(v6 + 56) + 32 * v7, v12);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = v11;
LABEL_9:
  *a2 = v10;
  return result;
}

uint64_t sub_225AD6A5C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *))
{
  v7 = sub_225CCF454();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  if (qword_27D739F70 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_27D73D120);
  (*(v8 + 16))(v10, v12, v7);
  v17 = &type metadata for ISO18013CodingKeyFormat;
  v16[0] = v11;
  v13 = a5(v15);
  sub_225A0528C(v16, v10);
  return v13(v15, 0);
}

uint64_t sub_225AD6BD8(char *a1, uint64_t (*a2)(_BYTE *))
{
  v4 = sub_225CCF454();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  if (qword_27D739F70 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_27D73D120);
  (*(v5 + 16))(v8, v10, v4);
  v15 = &type metadata for ISO18013CodingKeyFormat;
  v14[0] = v9;
  v11 = a2(v13);
  sub_225A0528C(v14, v8);
  return v11(v13, 0);
}

void (*CBORDecoder.codingKeyFormat.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = sub_225CCF454();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 88) = v8;
  CBORDecoder.codingKeyFormat.getter((v5 + 96));
  return sub_225AD6E10;
}

void sub_225AD6E28(uint64_t a1, char a2, uint64_t (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  if (a2)
  {
    if (qword_27D739F70 != -1)
    {
      swift_once();
    }

    v7 = v4[10];
    v6 = v4[11];
    v8 = v4[9];
    v9 = __swift_project_value_buffer(v8, qword_27D73D120);
    (*(v7 + 16))(v6, v9, v8);
    v16 = &type metadata for ISO18013CodingKeyFormat;
    v15[0] = v5;
    v10 = a3(v4);
    sub_225A0528C(v15, v6);
    v10(v4, 0);
  }

  else
  {
    if (qword_27D739F70 != -1)
    {
      swift_once();
    }

    v11 = v4[10];
    v6 = v4[11];
    v12 = v4[9];
    v13 = __swift_project_value_buffer(v12, qword_27D73D120);
    (*(v11 + 16))(v6, v13, v12);
    v16 = &type metadata for ISO18013CodingKeyFormat;
    v15[0] = v5;
    v14 = a3(v4 + 4);
    sub_225A0528C(v15, v6);
    v14(v4 + 4, 0);
  }

  free(v6);

  free(v4);
}

unint64_t sub_225AD6FE4()
{
  result = qword_27D73D140;
  if (!qword_27D73D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D140);
  }

  return result;
}

unint64_t sub_225AD703C()
{
  result = qword_27D73D148;
  if (!qword_27D73D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D148);
  }

  return result;
}

unint64_t sub_225AD7094()
{
  result = qword_27D73D150;
  if (!qword_27D73D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D150);
  }

  return result;
}

void *keypath_get_3Tm@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, _BYTE *a2@<X8>)
{
  result = a1(&v4);
  *a2 = v4;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t RFC8152SigStructure.init(protected:externalAdditionalAuthenticationData:payload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

double RFC8152SigStructure.init(algorithm:payload:encoder:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 1;
  *(inited + 40) = a1;
  sub_225B2C828(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE30);
  sub_2259DB480();
  v10 = sub_225CCD3F4();
  v12 = v11;

  if (v4)
  {
    sub_2259BEF00(a2, a3);
  }

  else
  {
    *a4 = v10;
    *(a4 + 8) = v12;
    result = 0.0;
    *(a4 + 16) = xmmword_225CD4150;
    *(a4 + 32) = a2;
    *(a4 + 40) = a3;
  }

  return result;
}

uint64_t RFC8152SigStructure.protected.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t RFC8152SigStructure.protected.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259BEF00(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t RFC8152SigStructure.externalAdditionalAuthenticationData.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB710(v1, *(v0 + 24));
  return v1;
}

uint64_t RFC8152SigStructure.externalAdditionalAuthenticationData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259BEF00(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RFC8152SigStructure.payload.getter()
{
  v1 = *(v0 + 32);
  sub_2259CB710(v1, *(v0 + 40));
  return v1;
}

uint64_t RFC8152SigStructure.payload.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259BEF00(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RFC8152SigStructure.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v14 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCC4();
  __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
  sub_225CCF8B4();
  if (!v2)
  {
    v10 = v6;
    __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
    sub_2259CB710(v3, v4);
    sub_2259D9454();
    sub_225CCF8C4();
    sub_2259BEF00(v3, v4);
    v8 = v14;
    v11 = v14;
    __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
    sub_2259CB710(v8, v5);
    sub_225CCF8C4();
    sub_2259BEF00(v11, v5);
    __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
    sub_2259CB710(v10, v7);
    sub_225CCF8C4();
    sub_2259BEF00(v10, v7);
  }

  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_225AD7678(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_225AD76CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

double RFC8152MACStructure.init(algorithm:payload:encoder:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 1;
  *(inited + 40) = a1;
  sub_225B2C828(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE30);
  sub_2259DB480();
  v10 = sub_225CCD3F4();
  v12 = v11;

  if (v4)
  {
    sub_2259BEF00(a2, a3);
  }

  else
  {
    *a4 = v10;
    *(a4 + 8) = v12;
    result = 0.0;
    *(a4 + 16) = xmmword_225CD4150;
    *(a4 + 32) = a2;
    *(a4 + 40) = a3;
  }

  return result;
}

uint64_t RFC8152MACStructure.protected.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t RFC8152MACStructure.protected.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259BEF00(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t RFC8152MACStructure.externalAdditionalAuthenticationData.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB710(v1, *(v0 + 24));
  return v1;
}

uint64_t RFC8152MACStructure.externalAdditionalAuthenticationData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259BEF00(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RFC8152MACStructure.payload.getter()
{
  v1 = *(v0 + 32);
  sub_2259CB710(v1, *(v0 + 40));
  return v1;
}

uint64_t RFC8152MACStructure.payload.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259BEF00(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RFC8152MACStructure.init(protected:externalAdditionalAuthenticationData:payload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t RFC8152MACStructure.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v14 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCC4();
  __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
  sub_225CCF8B4();
  if (!v2)
  {
    v10 = v6;
    __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
    sub_2259CB710(v3, v4);
    sub_2259D9454();
    sub_225CCF8C4();
    sub_2259BEF00(v3, v4);
    v8 = v14;
    v11 = v14;
    __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
    sub_2259CB710(v8, v5);
    sub_225CCF8C4();
    sub_2259BEF00(v11, v5);
    __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
    sub_2259CB710(v10, v7);
    sub_225CCF8C4();
    sub_2259BEF00(v10, v7);
  }

  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t AnyCodable.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_225CCD0B4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for AnyCodable();

  return swift_storeEnumTagMultiPayload();
}

{
  sub_225AD9AE8(a1, a2, type metadata accessor for ISO23220.BirthDate);
  type metadata accessor for AnyCodable();

  return swift_storeEnumTagMultiPayload();
}

{
  v4 = type metadata accessor for ISO23220.BirthDate();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCD0B4();
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AnyCodable();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_dynamicCast())
  {
    *v16 = v22;
  }

  else if (swift_dynamicCast())
  {
    v17 = *(&v22 + 1);
    *v16 = v22;
    *(v16 + 1) = v17;
  }

  else if (swift_dynamicCast())
  {
    *v16 = v22;
  }

  else if (swift_dynamicCast())
  {
    *v16 = v22;
  }

  else if (swift_dynamicCast())
  {
    *v16 = v22;
  }

  else if (swift_dynamicCast())
  {
    *v16 = v22;
  }

  else if (swift_dynamicCast())
  {
    (*(v21 + 32))(v16, v11, v8);
  }

  else if (swift_dynamicCast())
  {
    sub_225AD9AE8(v7, v16, type metadata accessor for ISO23220.BirthDate);
  }

  else if (swift_dynamicCast())
  {
    *v16 = v22;
  }

  else if (swift_dynamicCast())
  {
    *v16 = v22;
  }

  else if (swift_dynamicCast())
  {
    *v16 = v22;
  }

  else
  {
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(a1);
      v18 = 1;
      return (*(v13 + 56))(a2, v18, 1, v12);
    }

    *v16 = v22;
  }

  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_225AD9AE8(v16, a2, type metadata accessor for AnyCodable);
  v18 = 0;
  return (*(v13 + 56))(a2, v18, 1, v12);
}

uint64_t type metadata accessor for AnyCodable()
{
  result = qword_27D73D220;
  if (!qword_27D73D220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnyCodable.init(value:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for AnyCodable();

  return swift_storeEnumTagMultiPayload();
}

{
  *a2 = a1;
  type metadata accessor for AnyCodable();

  return swift_storeEnumTagMultiPayload();
}

uint64_t AnyCodable.init(value:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for AnyCodable();

  return swift_storeEnumTagMultiPayload();
}

uint64_t AnyCodable.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  return sub_225AD7D68(a1, a2, a3);
}

{
  return sub_225AD7D68(a1, a2, a3);
}

uint64_t sub_225AD7D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for AnyCodable();

  return swift_storeEnumTagMultiPayload();
}

uint64_t AnyCodable.init(value:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  type metadata accessor for AnyCodable();

  return swift_storeEnumTagMultiPayload();
}

{
  *a2 = *a1;
  type metadata accessor for AnyCodable();

  return swift_storeEnumTagMultiPayload();
}

{
  *a2 = *a1;
  type metadata accessor for AnyCodable();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_225AD7E54(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v2 + 56) + 8 * v11);

    sub_2259F18D4(v13, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v19 = sub_225AD7FBC(v18, v15);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225AD7FBC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = sub_2259F18D4(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225AD80F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCodable();
  v62 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v61 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1A8);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v13, v16);
  v19 = (&v55 - v18);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v57 = a2;
  v58 = v8;
  v20 = 0;
  v56 = a1;
  v21 = *(a1 + 64);
  v55 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v26 = &qword_27D73D1B0;
  v27 = &unk_225CE4E78;
  while (v24)
  {
    v60 = (v24 - 1) & v24;
    v28 = __clz(__rbit64(v24)) | (v20 << 6);
LABEL_16:
    v34 = *(*(v56 + 48) + 8 * v28);
    v35 = v61;
    sub_225AD8A9C(*(v56 + 56) + *(v62 + 72) * v28, v61);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v26);
    v37 = *(v36 + 48);
    *v15 = v34;
    sub_225AD9AE8(v35, v15 + v37, type metadata accessor for AnyCodable);
    (*(*(v36 - 8) + 56))(v15, 0, 1, v36);
    v31 = v58;
LABEL_17:
    sub_2259D88EC(v15, v19, &qword_27D73D1A8);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v26);
    v39 = (*(*(v38 - 8) + 48))(v19, 1, v38);
    v40 = v39 == 1;
    if (v39 == 1)
    {
      return 1;
    }

    v41 = *(v38 + 48);
    v42 = *v19;
    sub_225AD9AE8(v19 + v41, v31, type metadata accessor for AnyCodable);
    v43 = v57;
    v44 = sub_2259F1900(v42);
    if ((v45 & 1) == 0)
    {
      sub_225ADAAD4(v31, type metadata accessor for AnyCodable);
      return 0;
    }

    v46 = v40;
    v47 = *(v43 + 56) + *(v62 + 72) * v44;
    v48 = v27;
    v49 = v25;
    v50 = v26;
    v51 = v19;
    v52 = v61;
    sub_225AD8A9C(v47, v61);
    v59 = _s13CoreIDVShared10AnyCodableO2eeoiySbAC_ACtFZ_0(v52, v31);
    v53 = v52;
    v19 = v51;
    v26 = v50;
    v25 = v49;
    v27 = v48;
    sub_225ADAAD4(v53, type metadata accessor for AnyCodable);
    result = sub_225ADAAD4(v31, type metadata accessor for AnyCodable);
    v24 = v60;
    if ((v59 & 1) == 0)
    {
      return v46;
    }
  }

  if (v25 <= v20 + 1)
  {
    v29 = v20 + 1;
  }

  else
  {
    v29 = v25;
  }

  v30 = v29 - 1;
  v31 = v58;
  while (1)
  {
    v32 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v32 >= v25)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(v26);
      (*(*(v54 - 8) + 56))(v15, 1, 1, v54);
      v60 = 0;
      v20 = v30;
      goto LABEL_17;
    }

    v33 = *(v55 + 8 * v32);
    ++v20;
    if (v33)
    {
      v60 = (v33 - 1) & v33;
      v28 = __clz(__rbit64(v33)) | (v32 << 6);
      v20 = v32;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225AD856C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCodable();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1D8);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v56 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15, v17);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v54 = a2;
  v55 = (&v52 - v19);
  v20 = 0;
  v53 = a1;
  v21 = *(a1 + 64);
  v52 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  while (v24)
  {
    v57 = (v24 - 1) & v24;
    v26 = __clz(__rbit64(v24)) | (v20 << 6);
    v27 = v56;
LABEL_16:
    v32 = (*(v53 + 48) + 16 * v26);
    v33 = *v32;
    v34 = v32[1];
    sub_225AD8A9C(*(v53 + 56) + *(v5 + 72) * v26, v12);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8);
    v36 = *(v35 + 48);
    *v27 = v33;
    v27[1] = v34;
    sub_225AD9AE8(v12, v27 + v36, type metadata accessor for AnyCodable);
    (*(*(v35 - 8) + 56))(v27, 0, 1, v35);

LABEL_17:
    v37 = v55;
    sub_2259D88EC(v27, v55, &qword_27D73D1D8);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8);
    v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
    v40 = v39 == 1;
    if (v39 == 1)
    {
      return v40;
    }

    v41 = v5;
    v42 = *(v38 + 48);
    v44 = *v37;
    v43 = v37[1];
    sub_225AD9AE8(v37 + v42, v9, type metadata accessor for AnyCodable);
    v45 = v54;
    v46 = sub_2259F18D4(v44, v43);
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      sub_225ADAAD4(v9, type metadata accessor for AnyCodable);
      return 0;
    }

    v49 = *(v45 + 56);
    v5 = v41;
    sub_225AD8A9C(v49 + *(v41 + 72) * v46, v12);
    v50 = _s13CoreIDVShared10AnyCodableO2eeoiySbAC_ACtFZ_0(v12, v9);
    sub_225ADAAD4(v12, type metadata accessor for AnyCodable);
    result = sub_225ADAAD4(v9, type metadata accessor for AnyCodable);
    v24 = v57;
    if ((v50 & 1) == 0)
    {
      return v40;
    }
  }

  if (v25 <= v20 + 1)
  {
    v28 = v20 + 1;
  }

  else
  {
    v28 = v25;
  }

  v29 = v28 - 1;
  v27 = v56;
  while (1)
  {
    v30 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v30 >= v25)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8);
      (*(*(v51 - 8) + 56))(v27, 1, 1, v51);
      v57 = 0;
      v20 = v29;
      goto LABEL_17;
    }

    v31 = *(v52 + 8 * v30);
    ++v20;
    if (v31)
    {
      v57 = (v31 - 1) & v31;
      v26 = __clz(__rbit64(v31)) | (v30 << 6);
      v20 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t AnyCodable.BOOLValue.getter()
{
  v1 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225AD8A9C(v0, v4);
  if (!swift_getEnumCaseMultiPayload())
  {
    return *v4;
  }

  sub_225ADAAD4(v4, type metadata accessor for AnyCodable);
  return 2;
}

uint64_t sub_225AD8A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCodable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AnyCodable.intValue.getter()
{
  v1 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225AD8A9C(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v4;
  }

  sub_225ADAAD4(v4, type metadata accessor for AnyCodable);
  return 0;
}

uint64_t AnyCodable.uintValue.getter()
{
  v1 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225AD8A9C(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    return *v4;
  }

  sub_225ADAAD4(v4, type metadata accessor for AnyCodable);
  return 0;
}

unint64_t AnyCodable.floatValue.getter()
{
  v1 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v1, v2);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_225AD8A9C(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v6 = *v4;
  }

  else
  {
    sub_225ADAAD4(v4, type metadata accessor for AnyCodable);
    v6 = 0;
  }

  return v6 | ((EnumCaseMultiPayload != 3) << 32);
}

uint64_t AnyCodable.doubleValue.getter()
{
  v1 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225AD8A9C(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    return *v4;
  }

  sub_225ADAAD4(v4, type metadata accessor for AnyCodable);
  return 0;
}

uint64_t AnyCodable.dateValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225AD8A9C(v2, v7);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v8 = sub_225CCD0B4();
    v9 = *(v8 - 8);
    (*(v9 + 32))(a1, v7, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  else
  {
    sub_225ADAAD4(v7, type metadata accessor for AnyCodable);
    v11 = sub_225CCD0B4();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t AnyCodable.birthDateValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225AD8A9C(v2, v7);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_225AD9AE8(v7, a1, type metadata accessor for ISO23220.BirthDate);
    v8 = 0;
  }

  else
  {
    sub_225ADAAD4(v7, type metadata accessor for AnyCodable);
    v8 = 1;
  }

  v9 = type metadata accessor for ISO23220.BirthDate();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t AnyCodable.stringValue.getter()
{
  v1 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225AD8A9C(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    return *v4;
  }

  sub_225ADAAD4(v4, type metadata accessor for AnyCodable);
  return 0;
}

uint64_t AnyCodable.arrayValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_225AD8A9C(v2, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result == 8)
  {
    v9 = *v7;
  }

  else
  {
    result = sub_225ADAAD4(v7, type metadata accessor for AnyCodable);
    v9 = 0;
  }

  *a1 = v9;
  return result;
}

uint64_t AnyCodable.dictValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_225AD8A9C(v2, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result == 9)
  {
    v9 = *v7;
  }

  else
  {
    result = sub_225ADAAD4(v7, type metadata accessor for AnyCodable);
    v9 = 0;
  }

  *a1 = v9;
  return result;
}

uint64_t AnyCodable.integerKeyedDictValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_225AD8A9C(v2, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result == 10)
  {
    v9 = *v7;
  }

  else
  {
    result = sub_225ADAAD4(v7, type metadata accessor for AnyCodable);
    v9 = 0;
  }

  *a1 = v9;
  return result;
}

uint64_t AnyCodable.dataValue.getter()
{
  v1 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225AD8A9C(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 11)
  {
    return *v4;
  }

  sub_225ADAAD4(v4, type metadata accessor for AnyCodable);
  return 0;
}

uint64_t AnyCodable.init(value:)@<X0>(float *a1@<X8>, float a2@<S0>)
{
  *a1 = a2;
  type metadata accessor for AnyCodable();

  return swift_storeEnumTagMultiPayload();
}

uint64_t AnyCodable.init(value:)@<X0>(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  type metadata accessor for AnyCodable();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_225AD9AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AnyCodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D160);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v33 = v28 - v5;
  v6 = type metadata accessor for ISO23220.BirthDate();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v30 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v28 - v11;
  v13 = sub_225CCD0B4();
  v34 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v17, v18);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v37;
  sub_225CCFC84();
  if (v21)
  {
    v22 = a1;
  }

  else
  {
    v28[1] = v16;
    v28[2] = v12;
    v37 = a1;
    v29 = v20;
    v23 = v35;
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    v24 = sub_225CCF964();
    v25 = v29;
    *v29 = v24 & 1;
    v26 = v37;
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_0(v36);
    sub_225AD9AE8(v25, v23, type metadata accessor for AnyCodable);
    v22 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_0(v22);
}

unint64_t sub_225ADA404()
{
  result = qword_27D73D168;
  if (!qword_27D73D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D168);
  }

  return result;
}

uint64_t sub_225ADA458(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_225ADA4A0()
{
  result = qword_27D73D178;
  if (!qword_27D73D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D178);
  }

  return result;
}

unint64_t sub_225ADA4F4()
{
  result = qword_27D73D180;
  if (!qword_27D73D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D180);
  }

  return result;
}

uint64_t AnyCodable.encode(to:)(void *a1)
{
  v2 = v1;
  v20 = type metadata accessor for ISO23220.BirthDate();
  MEMORY[0x28223BE20](v20, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_225CCD0B4();
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCD4();
  sub_225AD8A9C(v2, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v22 = *v14;
        __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
        sub_225ADAB88();
      }

      else
      {
        if (EnumCaseMultiPayload != 10)
        {
          v19 = v14[1];
          v22 = *v14;
          v18 = v22;
          v23 = v19;
          __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
          sub_2259D9454();
          sub_225CCFA34();
          sub_2259BEF00(v18, v19);
          return __swift_destroy_boxed_opaque_existential_0(v24);
        }

        v22 = *v14;
        __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
        sub_225ADAB34();
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_225AD9AE8(v14, v6, type metadata accessor for ISO23220.BirthDate);
        __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
        sub_225ADA458(&qword_27D73D188, type metadata accessor for ISO23220.BirthDate);
        sub_225CCFA34();
        sub_225ADAAD4(v6, type metadata accessor for ISO23220.BirthDate);
        return __swift_destroy_boxed_opaque_existential_0(v24);
      }

      if (EnumCaseMultiPayload == 7)
      {
        __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
        sub_225CCF9D4();
LABEL_23:

        return __swift_destroy_boxed_opaque_existential_0(v24);
      }

      v22 = *v14;
      __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
      sub_225ADABDC();
    }

    sub_225CCFA34();
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
      sub_225CCFA04();
    }

    else if (EnumCaseMultiPayload == 4)
    {
      __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
      sub_225CCF9F4();
    }

    else
    {
      v17 = v21;
      (*(v21 + 32))(v10, v14, v7);
      __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
      sub_225ADA458(&qword_27D73BE18, MEMORY[0x277CC9578]);
      sub_225CCFA34();
      (*(v17 + 8))(v10, v7);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
      sub_225CCFA14();
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
      sub_225CCFA24();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_0(v24, v25);
    sub_225CCF9E4();
  }

  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t sub_225ADAAD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_225ADAB34()
{
  result = qword_27D73D190;
  if (!qword_27D73D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D190);
  }

  return result;
}

unint64_t sub_225ADAB88()
{
  result = qword_27D73D198;
  if (!qword_27D73D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D198);
  }

  return result;
}

unint64_t sub_225ADABDC()
{
  result = qword_27D73D1A0;
  if (!qword_27D73D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D1A0);
  }

  return result;
}

id sub_225ADAC30()
{
  v1 = v0;
  v2 = type metadata accessor for ISO23220.BirthDate();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_225CCD0B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_225AD8A9C(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload != 9)
      {
        if (EnumCaseMultiPayload != 10)
        {
          v24 = *v14;
          v25 = *(v14 + 1);
          v26 = sub_225CCCF74();
          sub_2259BEF00(v24, v25);
          return v26;
        }

        v28 = *v14;
        IntegerKeyedAnyCodableDictionary.asNSDictionary()();

        sub_2259D8718(0, &qword_281059A70);
        sub_2259D8718(0, &qword_281059A68);
        sub_225ADF99C();
        v18 = sub_225CCE2B4();
        goto LABEL_22;
      }

      sub_225ADE054(*v14);

      sub_2259D8718(0, &qword_281059A68);
      v19 = sub_225CCE2B4();
    }

    else
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v17 = sub_225CCE444();

          return v17;
        }

        v28 = *v14;
        AnyCodableArray.asNSArray()();

        sub_2259D8718(0, &qword_281059A68);
        v18 = sub_225CCE7F4();
LABEL_22:
        v19 = v18;

        return v19;
      }

      sub_225AD9AE8(v14, v5, type metadata accessor for ISO23220.BirthDate);
      v19 = sub_225CCCAA4();
      sub_225ADAAD4(v5, type metadata accessor for ISO23220.BirthDate);
    }

    return v19;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v20 = *v14;
      v21 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v22) = v20;
      return [v21 initWithFloat_];
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    }

    else
    {
      (*(v7 + 32))(v10, v14, v6);
      v23 = sub_225CCD034();
      (*(v7 + 8))(v10, v6);
      return v23;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    }

    else
    {
      return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    }
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }
}

uint64_t AnyCodableArray.asNSArray()()
{
  v1 = type metadata accessor for AnyCodable();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v13 = MEMORY[0x277D84F90];
    sub_225CCF394();
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      v11 = sub_225AD8A9C(v9, v5);
      sub_225ADAC30(v11);
      sub_225ADAAD4(v5, type metadata accessor for AnyCodable);
      sub_225CCF364();
      sub_225CCF3A4();
      sub_225CCF3B4();
      sub_225CCF374();
      v9 += v10;
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t IntegerKeyedAnyCodableDictionary.asNSDictionary()()
{
  v1 = type metadata accessor for AnyCodable();
  v59 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v58 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1A8);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v13);
  v62 = (&v58 - v14);
  v15 = *v0;

  v16 = sub_225B2DE9C(MEMORY[0x277D84F90]);
  v17 = 0;
  v19 = v15 + 64;
  v18 = *(v15 + 64);
  v60 = v15;
  v61 = v12;
  v20 = 1 << *(v15 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v64 = v5;
  while (v22)
  {
    v26 = v17;
LABEL_15:
    v29 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v30 = v29 | (v26 << 6);
    v31 = *(*(v60 + 48) + 8 * v30);
    v32 = v58;
    sub_225AD8A9C(*(v60 + 56) + *(v59 + 72) * v30, v58);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0);
    v34 = *(v33 + 48);
    *v12 = v31;
    sub_225AD9AE8(v32, v12 + v34, type metadata accessor for AnyCodable);
    (*(*(v33 - 8) + 56))(v12, 0, 1, v33);
    v28 = v26;
LABEL_16:
    v35 = v62;
    sub_2259D88EC(v12, v62, &qword_27D73D1A8);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0);
    if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
    {

      return v16;
    }

    v37 = v35;
    v38 = *v35;
    sub_225AD9AE8(v37 + *(v36 + 48), v64, type metadata accessor for AnyCodable);
    v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v40 = sub_225ADAC30(v39);
    v63 = v28;
    if ((v16 & 0xC000000000000001) != 0)
    {
      if (v16 < 0)
      {
        v41 = v16;
      }

      else
      {
        v41 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      v42 = sub_225CCF144();
      if (__OFADD__(v42, 1))
      {
        goto LABEL_38;
      }

      v16 = sub_225ACD7B8(v41, v42 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v16;
    v45 = sub_2259F1E3C(v39);
    v46 = *(v16 + 16);
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_37;
    }

    v49 = v44;
    if (*(v16 + 24) >= v48)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v52 = v64;
        v16 = v65;
        if (v44)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_225A44D40();
        v52 = v64;
        v16 = v65;
        if (v49)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_225A41C8C(v48, isUniquelyReferenced_nonNull_native);
      v50 = sub_2259F1E3C(v39);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_40;
      }

      v45 = v50;
      v52 = v64;
      v16 = v65;
      if (v49)
      {
LABEL_4:
        v24 = *(v16 + 56);
        v25 = *(v24 + 8 * v45);
        *(v24 + 8 * v45) = v40;

        sub_225ADAAD4(v52, type metadata accessor for AnyCodable);
        goto LABEL_5;
      }
    }

    *(v16 + 8 * (v45 >> 6) + 64) |= 1 << v45;
    *(*(v16 + 48) + 8 * v45) = v39;
    *(*(v16 + 56) + 8 * v45) = v40;
    sub_225ADAAD4(v52, type metadata accessor for AnyCodable);
    v53 = *(v16 + 16);
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_39;
    }

    *(v16 + 16) = v55;
LABEL_5:
    v17 = v63;
    v12 = v61;
  }

  if (v23 <= v17 + 1)
  {
    v27 = v17 + 1;
  }

  else
  {
    v27 = v23;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0);
      (*(*(v56 - 8) + 56))(v12, 1, 1, v56);
      v22 = 0;
      goto LABEL_16;
    }

    v22 = *(v19 + 8 * v26);
    ++v17;
    if (v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_2259D8718(0, &qword_281059A70);
  result = sub_225CCFAC4();
  __break(1u);
  return result;
}

__n128 AnyCodable.value.getter@<Q0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AnyCodable();
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_225AD8A9C(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 6)
      {
        a1[3] = type metadata accessor for ISO23220.BirthDate();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
        sub_225AD9AE8(v7, boxed_opaque_existential_1, type metadata accessor for ISO23220.BirthDate);
        return result;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v12 = *v7;
        v13 = v7[1];
        a1[3] = MEMORY[0x277D837D0];
        *a1 = v12;
        a1[1] = v13;
        return result;
      }

      v10 = *v7;
      v11 = &type metadata for AnyCodableArray;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v10 = *v7;
      v11 = &type metadata for AnyCodableDictionary;
    }

    else
    {
      if (EnumCaseMultiPayload != 10)
      {
        a1[3] = MEMORY[0x277CC9318];
        result = *v7;
        *a1 = *v7;
        return result;
      }

      v10 = *v7;
      v11 = &type metadata for IntegerKeyedAnyCodableDictionary;
    }

LABEL_22:
    a1[3] = v11;
    *a1 = v10;
    return result;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v14 = *v7;
      a1[3] = MEMORY[0x277D839B0];
      *a1 = v14;
      return result;
    }

    v10 = *v7;
    if (EnumCaseMultiPayload == 1)
    {
      v11 = MEMORY[0x277D83B88];
    }

    else
    {
      v11 = MEMORY[0x277D83E88];
    }

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 3)
  {
    result.n128_u32[0] = *v7;
    a1[3] = MEMORY[0x277D83A90];
    *a1 = result.n128_u32[0];
  }

  else if (EnumCaseMultiPayload == 4)
  {
    result.n128_u64[0] = *v7;
    a1[3] = MEMORY[0x277D839F8];
    *a1 = result.n128_u64[0];
  }

  else
  {
    v16 = sub_225CCD0B4();
    a1[3] = v16;
    v17 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v16 - 8) + 32))(v17, v7, v16);
  }

  return result;
}

uint64_t AnyCodable.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ISO23220.BirthDate();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCD0B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AnyCodable();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = (&v36 - v20);
  sub_225AD8A9C(v2, &v36 - v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v29 = *v21;
        MEMORY[0x22AA6E420](9);
        sub_225ADE8CC(a1, v29);
      }

      else
      {
        if (EnumCaseMultiPayload != 10)
        {
          v34 = *v21;
          v35 = v21[1];
          MEMORY[0x22AA6E420](11);
          sub_225CCCFB4();
          return sub_2259BEF00(v34, v35);
        }

        v28 = *v21;
        MEMORY[0x22AA6E420](10);
        sub_225ADE4E8(a1, v28);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_225AD9AE8(v21, v7, type metadata accessor for ISO23220.BirthDate);
        MEMORY[0x22AA6E420](6);
        sub_225CCCB74();
        sub_225ADA458(&qword_27D73D1B8, MEMORY[0x277CC8990]);
        sub_225CCE354();
        return sub_225ADAAD4(v7, type metadata accessor for ISO23220.BirthDate);
      }

      if (EnumCaseMultiPayload == 7)
      {
        MEMORY[0x22AA6E420](7);
        sub_225CCE5B4();
      }

      v30 = *v21;
      MEMORY[0x22AA6E420](8);
      MEMORY[0x22AA6E420](*(v30 + 16));
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = v30 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
        v33 = *(v14 + 72);
        do
        {
          sub_225AD8A9C(v32, v18);
          AnyCodable.hash(into:)(a1);
          sub_225ADAAD4(v18, type metadata accessor for AnyCodable);
          v32 += v33;
          --v31;
        }

        while (v31);
      }
    }
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      MEMORY[0x22AA6E420](3);
      return sub_225CCFC04();
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v26 = *v21;
      MEMORY[0x22AA6E420](4);
      v27 = 0.0;
      if (v26 != 0.0)
      {
        v27 = v26;
      }

      return MEMORY[0x22AA6E450](*&v27);
    }

    else
    {
      (*(v9 + 32))(v12, v21, v8);
      MEMORY[0x22AA6E420](5);
      sub_225ADA458(&qword_27D73D1C0, MEMORY[0x277CC9578]);
      sub_225CCE354();
      return (*(v9 + 8))(v12, v8);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v23 = *v21;
    if (EnumCaseMultiPayload == 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    MEMORY[0x22AA6E420](v24);
    return MEMORY[0x22AA6E420](v23);
  }

  else
  {
    MEMORY[0x22AA6E420](0);
    return sub_225CCFBF4();
  }
}

uint64_t AnyCodable.hashValue.getter()
{
  sub_225CCFBD4();
  AnyCodable.hash(into:)(v1);
  return sub_225CCFC24();
}

uint64_t sub_225ADBF18()
{
  sub_225CCFBD4();
  AnyCodable.hash(into:)(v1);
  return sub_225CCFC24();
}

uint64_t sub_225ADBF5C()
{
  sub_225CCFBD4();
  AnyCodable.hash(into:)(v1);
  return sub_225CCFC24();
}

uint64_t AnyCodableArray.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for AnyCodable();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC74();
  if (!v2)
  {
    v18 = a2;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = sub_225CCF894();
    v11 = MEMORY[0x277D84F90];
    if ((v10 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_0(v16, v17);
        sub_225ADA458(&qword_27D73C0D0, type metadata accessor for AnyCodable);
        sub_225CCF884();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_225B2A4CC(0, v11[2] + 1, 1, v11);
        }

        v13 = v11[2];
        v12 = v11[3];
        if (v13 >= v12 >> 1)
        {
          v11 = sub_225B2A4CC(v12 > 1, v13 + 1, 1, v11);
        }

        v11[2] = v13 + 1;
        sub_225AD9AE8(v9, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, type metadata accessor for AnyCodable);
        __swift_project_boxed_opaque_existential_1(v16, v17);
      }

      while ((sub_225CCF894() & 1) == 0);
    }

    __swift_destroy_boxed_opaque_existential_0(v16);
    *v18 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AnyCodableArray.encode(to:)(void *a1)
{
  v15 = type metadata accessor for AnyCodable();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_225CCFCC4();
  v10 = *(v8 + 16);
  if (!v10)
  {
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  v11 = 0;
  while (v11 < *(v8 + 16))
  {
    sub_225AD8A9C(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v7);
    __swift_mutable_project_boxed_opaque_existential_0(v13, v14);
    sub_225ADA458(&qword_27D73C0E8, type metadata accessor for AnyCodable);
    sub_225CCF8C4();
    if (v2)
    {
      sub_225ADAAD4(v7, type metadata accessor for AnyCodable);
      return __swift_destroy_boxed_opaque_existential_0(v13);
    }

    ++v11;
    result = sub_225ADAAD4(v7, type metadata accessor for AnyCodable);
    if (v10 == v11)
    {
      return __swift_destroy_boxed_opaque_existential_0(v13);
    }
  }

  __break(1u);
  return result;
}

uint64_t AnyCodableArray.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for AnyCodable();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  result = MEMORY[0x22AA6E420](*(*v1 + 16));
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_225AD8A9C(v11, v7);
      AnyCodable.hash(into:)(a1);
      result = sub_225ADAAD4(v7, type metadata accessor for AnyCodable);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t AnyCodableArray.hashValue.getter()
{
  v1 = type metadata accessor for AnyCodable();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_225AD8A9C(v8, v5);
      AnyCodable.hash(into:)(v12);
      sub_225ADAAD4(v5, type metadata accessor for AnyCodable);
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return sub_225CCFC24();
}

uint64_t sub_225ADC658()
{
  v1 = type metadata accessor for AnyCodable();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_225AD8A9C(v8, v5);
      AnyCodable.hash(into:)(v12);
      sub_225ADAAD4(v5, type metadata accessor for AnyCodable);
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return sub_225CCFC24();
}

uint64_t GenericCodingKeys.stringValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GenericCodingKeys.stringValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

CoreIDVShared::GenericCodingKeys __swiftcall GenericCodingKeys.init(stringValue:)(CoreIDVShared::GenericCodingKeys stringValue)
{
  *(v1 + 8) = stringValue.stringValue._object;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *v1 = stringValue.stringValue._countAndFlagsBits;
  return stringValue;
}

uint64_t GenericCodingKeys.intValue.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void __swiftcall GenericCodingKeys.init(intValue:)(CoreIDVShared::GenericCodingKeys_optional *__return_ptr retstr, Swift::Int intValue)
{
  retstr->value.stringValue._countAndFlagsBits = sub_225CCF824();
  retstr->value.stringValue._object = v4;
  retstr->value.intValue.value = intValue;
  retstr->value.intValue.is_nil = 0;
}

uint64_t sub_225ADC8F0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_225ADC920@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_225ADC944(uint64_t a1)
{
  v2 = sub_225ADF52C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225ADC980(uint64_t a1)
{
  v2 = sub_225ADF52C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnyCodableDictionary.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for AnyCodable();
  v54 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1C8);
  v55 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v46 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ADF52C();
  v15 = v62;
  sub_225CCFCA4();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v51 = v10;
  v52 = v7;
  v62 = 0;
  v46 = a1;
  v17 = sub_225B2D5A0(MEMORY[0x277D84F90]);
  v53 = v11;
  v18 = sub_225CCF6F4();
  v19 = v18;
  v20 = v14;
  v50 = *(v18 + 16);
  if (!v50)
  {
    v24 = v55;
LABEL_21:
    (*(v24 + 8))(v20, v53);

    v45 = v46;
    *v47 = v17;
    return __swift_destroy_boxed_opaque_existential_0(v45);
  }

  v21 = 0;
  v22 = (v18 + 56);
  v23 = v52;
  v24 = v55;
  v48 = v18;
  v49 = v14;
  while (v21 < *(v19 + 16))
  {
    v56 = v22;
    v57 = v21;
    v26 = *(v22 - 3);
    v25 = *(v22 - 2);
    v27 = *v22;
    v28 = *(v22 - 1);
    v58 = v26;
    v59 = v25;
    v60 = v28;
    v61 = v27;
    sub_225ADA458(&qword_27D73C0D0, type metadata accessor for AnyCodable);
    swift_bridgeObjectRetain_n();
    v29 = v51;
    v30 = v62;
    sub_225CCF6E4();
    v62 = v30;
    if (v30)
    {
      (*(v24 + 8))(v49, v53);

      swift_bridgeObjectRelease_n();
      a1 = v46;
      return __swift_destroy_boxed_opaque_existential_0(a1);
    }

    sub_225AD9AE8(v29, v23, type metadata accessor for AnyCodable);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v17;
    v33 = sub_2259F18D4(v26, v25);
    v34 = v17[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_25;
    }

    v37 = v32;
    if (v17[3] >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v40 = v54;
        if (v32)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_225A44EA4();
        v40 = v54;
        if (v37)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_225A41F00(v36, isUniquelyReferenced_nonNull_native);
      v38 = sub_2259F18D4(v26, v25);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_27;
      }

      v33 = v38;
      v40 = v54;
      if (v37)
      {
LABEL_5:

        v17 = v58;
        v23 = v52;
        sub_225ADF580(v52, v58[7] + *(v40 + 72) * v33);
        goto LABEL_6;
      }
    }

    v17 = v58;
    v58[(v33 >> 6) + 8] |= 1 << v33;
    v41 = (v17[6] + 16 * v33);
    *v41 = v26;
    v41[1] = v25;
    v23 = v52;
    sub_225AD9AE8(v52, v17[7] + *(v40 + 72) * v33, type metadata accessor for AnyCodable);
    v42 = v17[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_26;
    }

    v17[2] = v44;
LABEL_6:
    v21 = v57 + 1;
    v22 = v56 + 32;
    v20 = v49;
    v24 = v55;
    v19 = v48;
    if (v50 == v57 + 1)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_225CCFAC4();
  __break(1u);
  return result;
}

uint64_t AnyCodableDictionary.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v59 = type metadata accessor for AnyCodable();
  v56 = *(v59 - 8);
  v7 = MEMORY[0x28223BE20](v59, v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v55 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1D8);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v60 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v53 - v17;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E0);
  v53 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v19);
  v21 = &v53 - v20;
  v22 = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ADF52C();

  v61 = v21;
  result = sub_225CCFCE4();
  v24 = 0;
  v26 = v22 + 64;
  v25 = *(v22 + 64);
  v57 = v22;
  v58 = v9;
  v27 = *(v22 + 32);
  v28 = v18;
  v29 = 1 << v27;
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v25;
  v32 = (v29 + 63) >> 6;
  v54 = v18;
  if ((v30 & v25) != 0)
  {
    while (1)
    {
      v67 = v3;
      v33 = v24;
LABEL_13:
      v36 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v37 = v36 | (v33 << 6);
      v38 = (*(v57 + 48) + 16 * v37);
      v39 = *v38;
      v40 = v38[1];
      v41 = v55;
      sub_225AD8A9C(*(v57 + 56) + *(v56 + 72) * v37, v55);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8);
      v43 = *(v42 + 48);
      v44 = v60;
      *v60 = v39;
      v44[1] = v40;
      v45 = v44;
      sub_225AD9AE8(v41, v44 + v43, type metadata accessor for AnyCodable);
      (*(*(v42 - 8) + 56))(v45, 0, 1, v42);

      v35 = v33;
      v28 = v54;
LABEL_14:
      sub_2259D88EC(v45, v28, &qword_27D73D1D8);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8);
      if ((*(*(v46 - 8) + 48))(v28, 1, v46) == 1)
      {

        return (*(v53 + 8))(v61, v62);
      }

      v47 = *v28;
      v48 = v28[1];
      v49 = v28 + *(v46 + 48);
      v50 = v58;
      sub_225AD9AE8(v49, v58, type metadata accessor for AnyCodable);
      v63 = v47;
      v64 = v48;
      v65 = 0;
      v66 = 1;
      sub_225ADA458(&qword_27D73C0E8, type metadata accessor for AnyCodable);
      v51 = v67;
      sub_225CCF7E4();
      v3 = v51;
      if (v51)
      {
        break;
      }

      result = sub_225ADAAD4(v50, type metadata accessor for AnyCodable);
      v24 = v35;
      if (!v31)
      {
        goto LABEL_5;
      }
    }

    sub_225ADAAD4(v50, type metadata accessor for AnyCodable);
    return (*(v53 + 8))(v61, v62);
  }

  else
  {
LABEL_5:
    if (v32 <= v24 + 1)
    {
      v34 = v24 + 1;
    }

    else
    {
      v34 = v32;
    }

    v35 = v34 - 1;
    while (1)
    {
      v33 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v33 >= v32)
      {
        v67 = v3;
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8);
        v45 = v60;
        (*(*(v52 - 8) + 56))(v60, 1, 1, v52);
        v31 = 0;
        goto LABEL_14;
      }

      v31 = *(v26 + 8 * v33);
      ++v24;
      if (v31)
      {
        v67 = v3;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t IntegerKeyedAnyCodableDictionary.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for AnyCodable();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v61 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1C8);
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v45 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ADF52C();
  v15 = v56;
  sub_225CCFCA4();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v52 = v10;
  v56 = 0;
  v46 = a1;
  v55 = sub_225B2DFBC(MEMORY[0x277D84F90]);
  v53 = v11;
  v17 = sub_225CCF6F4();
  v18 = *(v17 + 16);
  v19 = v14;
  if (v18)
  {
    v20 = 0;
    v21 = (v17 + 56);
    v22 = v54;
    v23 = v52;
    v49 = v4;
    v50 = v17;
    v51 = v19;
    v48 = v18;
    while (v20 < *(v17 + 16))
    {
      if ((*v21 & 1) == 0)
      {
        v25 = *(v21 - 2);
        v24 = *(v21 - 1);
        v57 = *(v21 - 3);
        v58 = v25;
        v59 = v24;
        v60 = 0;
        sub_225ADA458(&qword_27D73C0D0, type metadata accessor for AnyCodable);

        v26 = v56;
        sub_225CCF6E4();
        v56 = v26;
        if (v26)
        {
          (*(v22 + 8))(v51, v53);

          a1 = v46;
          return __swift_destroy_boxed_opaque_existential_0(a1);
        }

        v27 = v3;

        sub_225AD9AE8(v23, v61, type metadata accessor for AnyCodable);
        v28 = v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v28;
        v31 = sub_2259F1900(v24);
        v32 = *(v28 + 16);
        v33 = (v30 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_25;
        }

        v35 = v30;
        if (*(v28 + 24) >= v34)
        {
          v38 = v52;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_225A450FC();
            v38 = v52;
          }

          v3 = v27;
        }

        else
        {
          sub_225A42278(v34, isUniquelyReferenced_nonNull_native);
          v36 = sub_2259F1900(v24);
          if ((v35 & 1) != (v37 & 1))
          {
            goto LABEL_27;
          }

          v31 = v36;
          v3 = v27;
          v38 = v52;
        }

        v39 = v57;
        v40 = v49;
        v55 = v57;
        if (v35)
        {
          sub_225ADF580(v61, v57[7] + *(v49 + 72) * v31);
        }

        else
        {
          v57[(v31 >> 6) + 8] |= 1 << v31;
          *(v39[6] + 8 * v31) = v24;
          sub_225AD9AE8(v61, v39[7] + *(v40 + 72) * v31, type metadata accessor for AnyCodable);
          v41 = v39[2];
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (v42)
          {
            goto LABEL_26;
          }

          v39[2] = v43;
        }

        v22 = v54;
        v17 = v50;
        v19 = v51;
        v18 = v48;
        v23 = v38;
      }

      ++v20;
      v21 += 32;
      if (v18 == v20)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_225CCFAC4();
    __break(1u);
  }

  else
  {
    v22 = v54;
LABEL_22:

    (*(v22 + 8))(v19, v53);
    v44 = v46;
    *v47 = v55;
    return __swift_destroy_boxed_opaque_existential_0(v44);
  }

  return result;
}

uint64_t IntegerKeyedAnyCodableDictionary.encode(to:)(void *a1)
{
  v2 = v1;
  v50 = type metadata accessor for AnyCodable();
  v48 = *(v50 - 8);
  v5 = MEMORY[0x28223BE20](v50, v4);
  v54 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v47 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1A8);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v51 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v45 - v14);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E0);
  v45 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v16);
  v18 = &v45 - v17;
  v19 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ADF52C();

  v52 = v18;
  result = sub_225CCFCE4();
  v21 = 0;
  v23 = v19 + 64;
  v22 = *(v19 + 64);
  v49 = v19;
  v24 = 1 << *(v19 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v22;
  v27 = (v24 + 63) >> 6;
  v46 = v15;
  if ((v25 & v22) != 0)
  {
    while (1)
    {
      v28 = v21;
LABEL_12:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v32 = v31 | (v28 << 6);
      v33 = *(*(v49 + 48) + 8 * v32);
      v34 = v47;
      sub_225AD8A9C(*(v49 + 56) + *(v48 + 72) * v32, v47);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0);
      v36 = *(v35 + 48);
      v37 = v51;
      *v51 = v33;
      sub_225AD9AE8(v34, v37 + v36, type metadata accessor for AnyCodable);
      (*(*(v35 - 8) + 56))(v37, 0, 1, v35);
      v30 = v28;
      v38 = v37;
      v15 = v46;
LABEL_13:
      sub_2259D88EC(v38, v15, &qword_27D73D1A8);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0);
      if ((*(*(v39 - 8) + 48))(v15, 1, v39) == 1)
      {

        return (*(v45 + 8))(v52, v53);
      }

      v40 = *v15;
      sub_225AD9AE8(v15 + *(v39 + 48), v54, type metadata accessor for AnyCodable);
      v55 = v40;
      v55 = sub_225CCF824();
      v56 = v41;
      v57 = v40;
      v58 = 0;
      sub_225ADA458(&qword_27D73C0E8, type metadata accessor for AnyCodable);
      v42 = v59;
      sub_225CCF7E4();
      v59 = v42;
      if (v42)
      {
        break;
      }

      sub_225ADAAD4(v54, type metadata accessor for AnyCodable);

      v21 = v30;
      if (!v26)
      {
        goto LABEL_5;
      }
    }

    sub_225ADAAD4(v54, type metadata accessor for AnyCodable);

    (*(v45 + 8))(v52, v53);
  }

  else
  {
LABEL_5:
    if (v27 <= v21 + 1)
    {
      v29 = v21 + 1;
    }

    else
    {
      v29 = v27;
    }

    v30 = v29 - 1;
    while (1)
    {
      v28 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v28 >= v27)
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0);
        v44 = v51;
        (*(*(v43 - 8) + 56))(v51, 1, 1, v43);
        v38 = v44;
        v26 = 0;
        goto LABEL_13;
      }

      v26 = *(v23 + 8 * v28);
      ++v21;
      if (v26)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_225ADDEF4(void (*a1)(_BYTE *, uint64_t))
{
  v3 = *v1;
  sub_225CCFBD4();
  a1(v5, v3);
  return sub_225CCFC24();
}

uint64_t sub_225ADDF5C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_225CCFBD4();
  a3(v7, v5);
  return sub_225CCFC24();
}

uint64_t sub_225ADDFCC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_225CCFBD4();
  a4(v8, v6);
  return sub_225CCFC24();
}

void *sub_225ADE054(uint64_t a1)
{
  v2 = type metadata accessor for AnyCodable();
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B370);
  result = sub_225CCF554();
  v6 = 0;
  v32 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v28 = result + 8;
  v29 = result;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(v32 + 56);
      v19 = (*(v32 + 48) + 16 * v17);
      v20 = v19[1];
      v33 = *v19;
      v21 = v30;
      sub_225AD8A9C(v18 + *(v31 + 72) * v17, v30);

      v22 = sub_225ADAC30();
      sub_225ADAAD4(v21, type metadata accessor for AnyCodable);
      result = v29;
      *(v28 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v23 = (result[6] + 16 * v17);
      *v23 = v33;
      v23[1] = v20;
      *(result[7] + 8 * v17) = v22;
      v24 = result[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      result[2] = v26;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_225ADE270(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v21 = v6;
  v22 = v2;
LABEL_6:
  if (v5)
  {
    v24 = v8;
    v10 = v9;
LABEL_12:
    v11 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v10 << 6)));
    v5 &= v5 - 1;

    sub_225CCE5B4();

    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    for (i = 0; v15; v17 = result ^ v19)
    {
      v19 = v17;
LABEL_21:
      v15 &= v15 - 1;

      sub_225CCE5B4();

      sub_225CCFBF4();
      result = sub_225CCFC24();
    }

    while (1)
    {
      v20 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        MEMORY[0x22AA6E420](v17);

        result = sub_225CCFC24();
        v8 = result ^ v24;
        v9 = v10;
        v6 = v21;
        v2 = v22;
        goto LABEL_6;
      }

      v15 = *(v12 + 8 * v20);
      ++i;
      if (v15)
      {
        v19 = v17;
        i = v20;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v6)
      {

        return MEMORY[0x22AA6E420](v8);
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        v24 = v8;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225ADE4E8(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v3 = type metadata accessor for AnyCodable();
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1A8);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = (&v35 - v13);
  v15 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 64);
  v19 = (v16 + 63) >> 6;
  v38 = a2;

  v21 = 0;
  v36 = v11;
  v40 = 0;
  if (v18)
  {
    while (1)
    {
      v22 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v26 = v25 | (v22 << 6);
      v27 = *(*(v38 + 48) + 8 * v26);
      sub_225AD8A9C(*(v38 + 56) + *(v37 + 72) * v26, v6);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0);
      v29 = *(v28 + 48);
      v11 = v36;
      *v36 = v27;
      sub_225AD9AE8(v6, &v11[v29], type metadata accessor for AnyCodable);
      (*(*(v28 - 8) + 56))(v11, 0, 1, v28);
      v24 = v22;
LABEL_13:
      sub_2259D88EC(v11, v14, &qword_27D73D1A8);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0);
      if ((*(*(v30 - 8) + 48))(v14, 1, v30) == 1)
      {
        break;
      }

      v31 = *v14;
      sub_225AD9AE8(v14 + *(v30 + 48), v6, type metadata accessor for AnyCodable);
      v32 = *(v39 + 48);
      v41[2] = *(v39 + 32);
      v41[3] = v32;
      v42 = *(v39 + 64);
      v33 = *(v39 + 16);
      v41[0] = *v39;
      v41[1] = v33;
      MEMORY[0x22AA6E420](v31);
      AnyCodable.hash(into:)(v41);
      sub_225ADAAD4(v6, type metadata accessor for AnyCodable);
      result = sub_225CCFC24();
      v21 = v24;
      v40 ^= result;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x22AA6E420](v40);
  }

  else
  {
LABEL_5:
    if (v19 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v19;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1B0);
        (*(*(v34 - 8) + 56))(v11, 1, 1, v34);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_225ADE8CC(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v3 = type metadata accessor for AnyCodable();
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1D8);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v43 - v12;
  v14 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 64);
  v18 = (v15 + 63) >> 6;
  v44 = a2;

  v20 = 0;
  v21 = 0;
  v46 = v10;
  v22 = &unk_225CE4E98;
  if (v17)
  {
    while (1)
    {
      v47 = v20;
      v23 = v21;
LABEL_13:
      v26 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v27 = v26 | (v23 << 6);
      v28 = (*(v44 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = v48;
      sub_225AD8A9C(*(v44 + 56) + *(v43 + 72) * v27, v48);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8);
      v33 = *(v32 + 48);
      v34 = v46;
      *v46 = v29;
      v34[1] = v30;
      v35 = v34;
      sub_225AD9AE8(v31, v34 + v33, type metadata accessor for AnyCodable);
      (*(*(v32 - 8) + 56))(v35, 0, 1, v32);

      v25 = v23;
      v36 = v22;
      v37 = v35;
      v20 = v47;
LABEL_14:
      sub_2259D88EC(v37, v13, &qword_27D73D1D8);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8);
      if ((*(*(v38 - 8) + 48))(v13, 1, v38) == 1)
      {
        break;
      }

      v39 = v48;
      sub_225AD9AE8(&v13[*(v38 + 48)], v48, type metadata accessor for AnyCodable);
      v40 = *(v45 + 48);
      v49[2] = *(v45 + 32);
      v49[3] = v40;
      v50 = *(v45 + 64);
      v41 = *(v45 + 16);
      v49[0] = *v45;
      v49[1] = v41;
      sub_225CCE5B4();

      AnyCodable.hash(into:)(v49);
      sub_225ADAAD4(v39, type metadata accessor for AnyCodable);
      result = sub_225CCFC24();
      v20 ^= result;
      v21 = v25;
      v22 = v36;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x22AA6E420](v20);
  }

  else
  {
LABEL_5:
    if (v18 <= v21 + 1)
    {
      v24 = v21 + 1;
    }

    else
    {
      v24 = v18;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v18)
      {
        v36 = v22;
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D1E8);
        v37 = v46;
        (*(*(v42 - 8) + 56))(v46, 1, 1, v42);
        v17 = 0;
        goto LABEL_14;
      }

      v17 = *(v14 + 8 * v23);
      ++v21;
      if (v17)
      {
        v47 = v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s13CoreIDVShared10AnyCodableO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v96 = a1;
  v3 = type metadata accessor for ISO23220.BirthDate();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v87 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_225CCD0B4();
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v86 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyCodable();
  v11 = MEMORY[0x28223BE20](v9, v10);
  v94 = (&v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11, v13);
  v92 = (&v85 - v15);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v91 = (&v85 - v18);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v90 = (&v85 - v21);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = (&v85 - v24);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v95 = &v85 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v93 = &v85 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = (&v85 - v34);
  v37 = MEMORY[0x28223BE20](v33, v36);
  v39 = (&v85 - v38);
  v41 = MEMORY[0x28223BE20](v37, v40);
  v43 = (&v85 - v42);
  v45 = MEMORY[0x28223BE20](v41, v44);
  v47 = (&v85 - v46);
  MEMORY[0x28223BE20](v45, v48);
  v50 = &v85 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D230);
  v53 = MEMORY[0x28223BE20](v51 - 8, v52);
  v55 = &v85 - v54;
  v56 = (&v85 + *(v53 + 56) - v54);
  sub_225AD8A9C(v96, &v85 - v54);
  sub_225AD8A9C(a2, v56);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v67 = v95;
        sub_225AD8A9C(v55, v95);
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          sub_225ADAAD4(v67, type metadata accessor for ISO23220.BirthDate);
          goto LABEL_40;
        }

        v68 = v87;
        sub_225AD9AE8(v56, v87, type metadata accessor for ISO23220.BirthDate);
        v66 = MEMORY[0x22AA6B2F0](v67, v68);
        sub_225ADAAD4(v68, type metadata accessor for ISO23220.BirthDate);
        sub_225ADAAD4(v67, type metadata accessor for ISO23220.BirthDate);
LABEL_46:
        sub_225ADAAD4(v55, type metadata accessor for AnyCodable);
        return v66 & 1;
      }

      if (EnumCaseMultiPayload == 7)
      {
        sub_225AD8A9C(v55, v25);
        v60 = *v25;
        v59 = v25[1];
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          if (v60 == *v56 && v59 == v56[1])
          {
          }

          else
          {
            v84 = sub_225CCF934();

            if ((v84 & 1) == 0)
            {
              sub_225ADAAD4(v55, type metadata accessor for AnyCodable);
              goto LABEL_41;
            }
          }

          sub_225ADAAD4(v55, type metadata accessor for AnyCodable);
          v66 = 1;
          return v66 & 1;
        }

        goto LABEL_39;
      }

      v71 = v90;
      sub_225AD8A9C(v55, v90);
      v72 = *v71;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v64 = sub_225AB7DB8(v72, *v56);
        goto LABEL_38;
      }

LABEL_39:

      goto LABEL_40;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v69 = v91;
      sub_225AD8A9C(v55, v91);
      v70 = *v69;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_39;
      }

      v64 = sub_225AD856C(v70, *v56);
    }

    else
    {
      if (EnumCaseMultiPayload != 10)
      {
        v78 = v94;
        sub_225AD8A9C(v55, v94);
        v79 = *v78;
        v80 = v78[1];
        if (swift_getEnumCaseMultiPayload() != 11)
        {
          sub_2259BEF00(v79, v80);
          goto LABEL_40;
        }

        v81 = *v56;
        v82 = v56[1];
        v66 = sub_2259D8228(v79, v80, *v56, v82);
        sub_2259BEF00(v81, v82);
        sub_2259BEF00(v79, v80);
        goto LABEL_46;
      }

      v62 = v92;
      sub_225AD8A9C(v55, v92);
      v63 = *v62;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_39;
      }

      v64 = sub_225AD80F0(v63, *v56);
    }

LABEL_38:
    v66 = v64;

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_225AD8A9C(v55, v39);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v61 = *v39 == *v56;
        goto LABEL_33;
      }

      goto LABEL_40;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_225AD8A9C(v55, v35);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v61 = *v35 == *v56;
        goto LABEL_33;
      }

      goto LABEL_40;
    }

    v73 = v93;
    sub_225AD8A9C(v55, v93);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      (*(v88 + 8))(v73, v89);
      goto LABEL_40;
    }

    v75 = v88;
    v74 = v89;
    v76 = v86;
    (*(v88 + 32))(v86, v56, v89);
    v66 = sub_225CCD084();
    v77 = *(v75 + 8);
    v77(v76, v74);
    v77(v73, v74);
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_225AD8A9C(v55, v47);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v58 = *v47;
LABEL_32:
        v61 = v58 == *v56;
LABEL_33:
        v66 = v61;
        goto LABEL_46;
      }
    }

    else
    {
      sub_225AD8A9C(v55, v43);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v58 = *v43;
        goto LABEL_32;
      }
    }

    goto LABEL_40;
  }

  sub_225AD8A9C(v55, v50);
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_40:
    sub_2259CB640(v55, &qword_27D73D230);
LABEL_41:
    v66 = 0;
    return v66 & 1;
  }

  v65 = *v50 ^ *v56;
  sub_225ADAAD4(v55, type metadata accessor for AnyCodable);
  v66 = v65 ^ 1;
  return v66 & 1;
}

unint64_t sub_225ADF52C()
{
  result = qword_27D73D1D0;
  if (!qword_27D73D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D1D0);
  }

  return result;
}

uint64_t sub_225ADF580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCodable();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_225ADF630()
{
  result = qword_27D73D1F8;
  if (!qword_27D73D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D1F8);
  }

  return result;
}

unint64_t sub_225ADF688()
{
  result = qword_27D73D200;
  if (!qword_27D73D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D200);
  }

  return result;
}

unint64_t sub_225ADF6E0()
{
  result = qword_27D73D208;
  if (!qword_27D73D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D208);
  }

  return result;
}

unint64_t sub_225ADF738()
{
  result = qword_27D73D210;
  if (!qword_27D73D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D210);
  }

  return result;
}

unint64_t sub_225ADF790()
{
  result = qword_27D73D218;
  if (!qword_27D73D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D218);
  }

  return result;
}

uint64_t sub_225ADF7E4()
{
  result = sub_225CCD0B4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ISO23220.BirthDate();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_225ADF8E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_225ADF928(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_225ADF99C()
{
  result = qword_27D73D238;
  if (!qword_27D73D238)
  {
    sub_2259D8718(255, &qword_281059A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D238);
  }

  return result;
}

uint64_t sub_225ADFA1C()
{
  type metadata accessor for CertUsageMapper();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D240);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F98];
  *(v0 + 16) = result;
  off_28105AEE0 = v0;
  return result;
}

uint64_t static CertUsageMapper.sharedInstance.getter()
{
  if (qword_28105AED8 != -1)
  {
    swift_once();
  }
}

void CertUsageMapper.registerMapping(forType:usage:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(v2 + 16);
  v7 = *(a2 + 16);
  os_unfair_lock_lock((v6 + 24));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + 16);
  *(v6 + 16) = 0x8000000000000000;
  sub_2259F6128(v4, v5, v7);
  sub_225A046A0(v4, v5, v7, a1, isUniquelyReferenced_nonNull_native);
  *(v6 + 16) = v9;

  os_unfair_lock_unlock((v6 + 24));
}

void CertUsageMapper.mapping(forType:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 6);
  sub_225ADFC0C(&v5[4], a1, a2);

  os_unfair_lock_unlock(v5 + 6);
}

unint64_t sub_225ADFC0C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16))
  {
    result = sub_2259F1900(a2);
    if (v5)
    {
      v6 = *(v4 + 56) + 24 * result;
      v7 = *v6;
      v8 = *(v6 + 8);
      *a3 = *v6;
      *(a3 + 8) = v8;
      v9 = *(v6 + 16);
      *(a3 + 16) = v9;
      return sub_2259F6128(v7, v8, v9);
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = -1;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return result;
}

uint64_t CertUsageMapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

CoreIDVShared::CoreIDVAssetBundle::CertificateType_optional __swiftcall CoreIDVAssetBundle.CertificateType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CoreIDVAssetBundle.CertificateType.rawValue.getter()
{
  v1 = 0x6F52726575737369;
  v2 = 0xD00000000000001ELL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_225ADFE18()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225ADFEE8()
{
  sub_225CCE5B4();
}

uint64_t sub_225ADFFA4()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225AE007C(unint64_t *a1@<X8>)
{
  v2 = 0xEB0000000073746FLL;
  v3 = 0x6F52726575737369;
  v4 = 0x8000000225D0B8E0;
  v5 = 0xD00000000000001ELL;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x8000000225D0B900;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000225D0B8C0;
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

uint64_t CoreIDVAssetBundle.version.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CoreIDVAssetBundle.terminalAuthRoots.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t CoreIDVAssetBundle.issuerRoots.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t CoreIDVAssetBundle.appleIssuerRoots.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t CoreIDVAssetBundle.appleIssuerWebPresentmentRoots.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

unint64_t sub_225AE0188()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x6F52726575737369;
  v4 = 0xD00000000000001ELL;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_225AE0230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225AE2948(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225AE0264(uint64_t a1)
{
  v2 = sub_225AE05B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AE02A0(uint64_t a1)
{
  v2 = sub_225AE05B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CoreIDVAssetBundle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D248);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - v6;
  v8 = *(v1 + 16);
  v25 = *(v1 + 24);
  v20 = *(v1 + 32);
  v21 = v8;
  v19 = *(v1 + 40);
  v18 = *(v1 + 48);
  LODWORD(v8) = *(v1 + 56);
  v15 = *(v1 + 64);
  v16 = *(v1 + 72);
  v17 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AE05B8();
  sub_225CCFCE4();
  LOBYTE(v23) = 0;
  v9 = v22;
  sub_225CCF784();
  if (!v9)
  {
    v10 = v19;
    v11 = v20;
    v12 = v18;
    v23 = v21;
    v24 = v25;
    v26 = 1;
    sub_225AE060C();

    sub_225CCF774();

    v23 = v11;
    v24 = v10;
    v26 = 2;

    sub_225CCF774();

    v23 = v12;
    v24 = v17;
    v26 = 3;

    sub_225CCF774();

    v23 = v15;
    v24 = v16;
    v26 = 4;

    sub_225CCF774();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_225AE05B8()
{
  result = qword_27D73D250;
  if (!qword_27D73D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D250);
  }

  return result;
}

unint64_t sub_225AE060C()
{
  result = qword_27D73D258;
  if (!qword_27D73D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D258);
  }

  return result;
}

uint64_t CoreIDVAssetBundle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D260);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AE05B8();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v32) = 0;
  *&v27 = sub_225CCF684();
  *(&v27 + 1) = v10;
  LOBYTE(v28) = 1;
  sub_225AE0B24();
  sub_225CCF674();
  v26 = v32;
  v44 = v33;
  LOBYTE(v28) = 2;
  sub_225CCF674();
  v25 = v32;
  v24 = v33;
  LOBYTE(v28) = 3;
  sub_225CCF674();
  v23 = v32;
  v22 = v33;
  v45 = 4;
  sub_225CCF674();
  (*(v6 + 8))(v9, v5);
  v21 = v42;
  HIDWORD(v20) = v43;
  v11 = v27;
  v28 = v27;
  v12 = *(&v27 + 1);
  v13 = v26;
  *&v29 = v26;
  v14 = v44;
  BYTE8(v29) = v44;
  v15 = v25;
  *&v30 = v25;
  v16 = v24;
  BYTE8(v30) = v24;
  *v31 = v23;
  v31[8] = v22;
  *&v31[16] = v42;
  v31[24] = v43;
  v17 = *v31;
  a2[2] = v30;
  a2[3] = v17;
  v18 = v29;
  *a2 = v28;
  a2[1] = v18;
  *(a2 + 57) = *&v31[9];
  sub_225AE0B78(&v28, &v32);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v32 = v11;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  v36 = v15;
  v37 = v16;
  v38 = v23;
  v39 = v22;
  v40 = v21;
  v41 = BYTE4(v20);
  return sub_225AE0BB0(&v32);
}

unint64_t sub_225AE0B24()
{
  result = qword_27D73D268;
  if (!qword_27D73D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D268);
  }

  return result;
}

uint64_t sub_225AE0C20()
{
  if (*v0)
  {
    return 0x656469727265766FLL;
  }

  else
  {
    return 0x6369666974726563;
  }
}

uint64_t sub_225AE0C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369666974726563 && a2 == 0xEC00000073657461;
  if (v6 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xEF746C7561666544)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225AE0D58(uint64_t a1)
{
  v2 = sub_225AE0FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AE0D94(uint64_t a1)
{
  v2 = sub_225AE0FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CoreIDVAssetCertificates.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D270);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v11 - v7;
  v9 = *v1;
  v11[2] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AE0FA4();

  sub_225CCFCE4();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570);
  sub_225AE120C(&qword_27D73D280);
  sub_225CCF7E4();

  if (!v2)
  {
    v12 = 1;
    sub_225CCF794();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_225AE0FA4()
{
  result = qword_27D73D278;
  if (!qword_27D73D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D278);
  }

  return result;
}

uint64_t CoreIDVAssetCertificates.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D288);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AE0FA4();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E570);
  v13[15] = 0;
  sub_225AE120C(&qword_281059B60);
  sub_225CCF6E4();
  v10 = v14;
  v13[14] = 1;
  v11 = sub_225CCF694();
  (*(v6 + 8))(v9, v5);
  *a2 = v10;
  *(a2 + 8) = v11 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225AE120C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D73E570);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

CoreIDVShared::CoreIDVAsset::deviceType_optional __swiftcall CoreIDVAsset.deviceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t CoreIDVAsset.deviceType.rawValue.getter()
{
  if (*v0)
  {
    return 0x534F6863746177;
  }

  else
  {
    return 5459817;
  }
}

uint64_t sub_225AE1340(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x534F6863746177;
  }

  else
  {
    v3 = 5459817;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x534F6863746177;
  }

  else
  {
    v5 = 5459817;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225AE13E0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AE145C()
{
  sub_225CCE5B4();
}

uint64_t sub_225AE14C4()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AE153C@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

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

void sub_225AE159C(uint64_t *a1@<X8>)
{
  v2 = 5459817;
  if (*v1)
  {
    v2 = 0x534F6863746177;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_225AE15D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 5459817;
  if (v2 != 1)
  {
    v4 = 0x534F6863746177;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 5459817;
  if (*a2 != 1)
  {
    v8 = 0x534F6863746177;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225AE16C8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AE1764()
{
  sub_225CCE5B4();
}

uint64_t sub_225AE17EC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AE1884@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AE2B08();
  *a1 = result;
  return result;
}

void sub_225AE18B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 5459817;
  if (v2 != 1)
  {
    v5 = 0x534F6863746177;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_225AE190C()
{
  v1 = 5459817;
  if (*v0 != 1)
  {
    v1 = 0x534F6863746177;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_225AE1960@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AE2B08();
  *a1 = result;
  return result;
}

uint64_t sub_225AE1988(uint64_t a1)
{
  v2 = sub_225AE1DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AE19C4(uint64_t a1)
{
  v2 = sub_225AE1DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CoreIDVAsset.base.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 73);
  v3 = *(v10 + 9);
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_225AE0B78(v8, &v7);
}

uint64_t CoreIDVAsset.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  CoreIDVAsset.init(from:)(a1);
  return v2;
}

uint64_t CoreIDVAsset.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D290);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AE1DBC();
  sub_225CCFCA4();
  if (v2)
  {
    type metadata accessor for CoreIDVAsset();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = 0;
    sub_225AE1E34();
    sub_225CCF6E4();
    v9 = v13[0];
    *(v1 + 48) = v12[7];
    *(v1 + 64) = v9;
    *(v1 + 73) = *(v13 + 9);
    v10 = v12[6];
    *(v1 + 16) = v12[5];
    *(v1 + 32) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D2A8);
    v14 = 1;
    sub_225AE22D8(&qword_27D73D2B0, sub_225AE1E34);
    sub_225CCF674();
    *(v1 + 96) = *&v12[0];
    v14 = 2;
    sub_225CCF674();
    (*(v5 + 8))(v8, v4);
    *(v1 + 104) = *&v12[0];
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

unint64_t sub_225AE1DBC()
{
  result = qword_27D73D298;
  if (!qword_27D73D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D298);
  }

  return result;
}

unint64_t sub_225AE1E34()
{
  result = qword_27D73D2A0;
  if (!qword_27D73D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D2A0);
  }

  return result;
}

uint64_t CoreIDVAsset.deinit()
{

  return v0;
}

uint64_t CoreIDVAsset.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_225AE1F88(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D2B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AE1DBC();
  sub_225CCFCE4();
  v10 = *(v3 + 32);
  v11 = *(v3 + 64);
  v26 = *(v3 + 48);
  v27[0] = v11;
  *(v27 + 9) = *(v3 + 73);
  v12 = *(v3 + 32);
  v25[0] = *(v3 + 16);
  v25[1] = v12;
  v22 = v10;
  v23 = v26;
  v24[0] = *(v3 + 64);
  *(v24 + 9) = *(v3 + 73);
  v21 = v25[0];
  v20 = 0;
  sub_225AE0B78(v25, &v16);
  sub_225AE2284();
  sub_225CCF7E4();
  if (v2)
  {
    v18 = v23;
    *v19 = v24[0];
    *&v19[9] = *(v24 + 9);
    v17 = v22;
    v16 = v21;
    sub_225AE0BB0(&v16);
  }

  else
  {
    v18 = v23;
    *v19 = v24[0];
    *&v19[9] = *(v24 + 9);
    v17 = v22;
    v16 = v21;
    sub_225AE0BB0(&v16);
    v15 = *(v3 + 96);
    HIBYTE(v14) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D2A8);
    sub_225AE22D8(&qword_27D73D2C8, sub_225AE2284);
    sub_225CCF774();
    v15 = *(v3 + 104);
    HIBYTE(v14) = 2;
    sub_225CCF774();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_225AE2284()
{
  result = qword_27D73D2C0;
  if (!qword_27D73D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D2C0);
  }

  return result;
}

uint64_t sub_225AE22D8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73D2A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225AE2360()
{
  result = qword_27D73D2D0;
  if (!qword_27D73D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D2D0);
  }

  return result;
}

unint64_t sub_225AE23B8()
{
  result = qword_27D73D2D8;
  if (!qword_27D73D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D2D8);
  }

  return result;
}

uint64_t sub_225AE240C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CoreIDVAsset();
  v5 = swift_allocObject();
  result = CoreIDVAsset.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_225AE24AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_225AE24F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_225AE2634()
{
  result = qword_27D73D2E0;
  if (!qword_27D73D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D2E0);
  }

  return result;
}

unint64_t sub_225AE268C()
{
  result = qword_27D73D2E8;
  if (!qword_27D73D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D2E8);
  }

  return result;
}

unint64_t sub_225AE26E4()
{
  result = qword_27D73D2F0;
  if (!qword_27D73D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D2F0);
  }

  return result;
}

unint64_t sub_225AE273C()
{
  result = qword_27D73D2F8;
  if (!qword_27D73D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D2F8);
  }

  return result;
}

unint64_t sub_225AE2794()
{
  result = qword_27D73D300;
  if (!qword_27D73D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D300);
  }

  return result;
}

unint64_t sub_225AE27EC()
{
  result = qword_27D73D308;
  if (!qword_27D73D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D308);
  }

  return result;
}

unint64_t sub_225AE2844()
{
  result = qword_27D73D310;
  if (!qword_27D73D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D310);
  }

  return result;
}

unint64_t sub_225AE289C()
{
  result = qword_27D73D318;
  if (!qword_27D73D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D318);
  }

  return result;
}

unint64_t sub_225AE28F4()
{
  result = qword_27D73D320;
  if (!qword_27D73D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D320);
  }

  return result;
}

uint64_t sub_225AE2948(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000225D0B8C0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F52726575737369 && a2 == 0xEB0000000073746FLL || (sub_225CCF934() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000225D0B8E0 == a2 || (sub_225CCF934() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000225D0B900 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_225CCF934();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_225AE2B08()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t CBOREncodedCBOR.init(value:tag:encoder:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  *a4 = 24;
  v9 = *(type metadata accessor for CBOREncodedCBOR() + 48);
  v10 = *(a3 - 8);
  (*(v10 + 16))(&a4[v9], a1, a3);
  if (a2)
  {
    v11 = sub_225CCD3E4();
    if (v4)
    {
LABEL_3:
      v13 = *(v10 + 8);
      v13(a1, a3);

      return (v13)(&a4[v9], a3);
    }
  }

  else
  {
    v11 = sub_225CCD3F4();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v15 = v11;
  v16 = v12;
  (*(v10 + 8))(a1, a3);

  *(a4 + 1) = v15;
  *(a4 + 2) = v16;
  return result;
}

uint64_t CBOREncodedCBOR.init(_:dataValue:decoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, char *a6@<X8>)
{
  v19 = a5;
  v18 = *(a4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a6 = 24;
  *(a6 + 1) = v13;
  *(a6 + 2) = v14;
  sub_2259CB710(v13, v14);
  sub_225CCD364();
  sub_2259BEF00(a2, a3);

  if (v6)
  {
    return sub_2259BEF00(a2, a3);
  }

  v16 = type metadata accessor for CBOREncodedCBOR();
  return (*(v18 + 32))(&a6[*(v16 + 48)], v12, a4);
}

uint64_t Base64URLEncodedCBOR.init(value:encoder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = *(type metadata accessor for Base64URLEncodedCBOR() + 44);
  v8 = *(a2 - 8);
  (*(v8 + 16))(a3 + v7, a1, a2);
  v9 = sub_225CCD3F4();
  if (v3)
  {
    v11 = *(v8 + 8);
    v11(a1, a2);

    return (v11)(a3 + v7, a2);
  }

  else
  {
    v17 = v9;
    v16 = v10;
    sub_225CCCF84();
    sub_2259D8654();
    sub_225CCF064();

    sub_225CCF064();

    v13 = sub_225CCF064();
    v15 = v14;

    sub_2259BEF00(v17, v16);
    (*(v8 + 8))(a1, a2);

    *a3 = v13;
    a3[1] = v15;
  }

  return result;
}

uint64_t Base64URLEncodedString.dataValue.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t Base64URLEncodedString.stringValue.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Base64URLEncodedString.init(dataValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  sub_2259CB710(a1, a2);
  sub_225CCCF84();
  sub_2259D8654();
  sub_225CCF064();

  sub_225CCF064();

  v6 = sub_225CCF064();
  v8 = v7;
  sub_2259BEF00(a1, a2);

  a3[2] = v6;
  a3[3] = v8;
  return result;
}

uint64_t Base64URLEncodedString.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC84();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v5 = sub_225CCF954();
    v7 = v6;
    v16 = v5;
    sub_2259D8654();
    sub_225CCF064();
    sub_225CCF064();

    v8 = sub_225CCE5D4();

    v9 = v8 & 3;
    if (v8 <= 0)
    {
      v9 = -(-v8 & 3);
    }

    if (v9 >= 1)
    {
      v10 = sub_225CCE6D4();
      MEMORY[0x22AA6CE70](v10);
    }

    v11 = sub_225CCCF04();
    v13 = v12;
    sub_2259CB6FC(v11, v12);

    if (v13 >> 60 == 15)
    {

      sub_225CCF2D4();
      swift_allocError();
      sub_225CCF264();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {
      sub_2259B97A8(v11, v13);
      __swift_destroy_boxed_opaque_existential_0(v15);
      *a2 = v11;
      a2[1] = v13;
      a2[2] = v16;
      a2[3] = v7;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t Base64URLEncodedString.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCD4();
  __swift_mutable_project_boxed_opaque_existential_0(v2, v3);
  sub_225CCF9D4();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_225AE3624(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCD4();
  __swift_mutable_project_boxed_opaque_existential_0(v2, v3);
  sub_225CCF9D4();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t Base64URLEncodedCBOR.stringValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Base64URLEncodedCBOR.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v29 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[6] = v8;
  v9 = type metadata accessor for Base64URLEncodedCBOR();
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v23 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC84();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v12;
  v27 = a1;
  v24 = v9;
  v25 = v7;
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  sub_225AE3AC0();
  sub_225CCF9B4();
  v14 = v31;
  v15 = v32;
  v16 = v34;
  v17 = v26;
  *v26 = v33;
  v17[1] = v16;
  sub_225CCD3A4();
  swift_allocObject();
  v23[1] = v16;

  sub_225CCD394();
  v18 = v25;
  sub_225CCD364();
  v19 = v27;
  sub_2259BEF00(v14, v15);

  v20 = v24;
  v21 = v26;
  (*(v29 + 32))(v26 + *(v24 + 44), v18, a2);
  __swift_destroy_boxed_opaque_existential_0(v35);
  v22 = v28;
  (*(v28 + 16))(v30, v21, v20);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return (*(v22 + 8))(v21, v20);
}

unint64_t sub_225AE3AC0()
{
  result = qword_27D73D328;
  if (!qword_27D73D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D328);
  }

  return result;
}

void *sub_225AE3B14(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v67 = a4;
  *&v68 = a2;
  *(&v68 + 1) = a3;
  v5 = sub_225CCF2C4();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D4E0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v59 - v16;
  v18 = sub_225CCF2D4();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = (&v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v59 - v25;
  *&v70[0] = a1;
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  v28 = swift_dynamicCast();
  v29 = *(v19 + 56);
  if (v28)
  {
    v30 = v13;
    v66 = v10;
    v31 = v5;
    v29(v17, 0, 1, v18);
    v32 = *(v19 + 32);
    v32(v26, v17, v18);
    v63 = *(v19 + 16);
    v63(v23, v26, v18);
    v33 = (*(v19 + 88))(v23, v18);
    v34 = *MEMORY[0x277D84160];
    v64 = v19 + 16;
    v65 = v26;
    v61 = v5;
    v62 = v6;
    if (v33 == v34)
    {
      (*(v19 + 96))(v23, v18);
      v35 = *v23;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D741FA0);
      v37 = *(v6 + 32);
      v38 = v30;
      v37(v30, v23 + *(v36 + 48), v31);
      *(swift_allocObject() + 16) = v35;

      v39 = sub_225AE7578;
    }

    else if (v33 == *MEMORY[0x277D84170])
    {
      (*(v19 + 96))(v23, v18);
      v41 = *v23;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D741FA0);
      v43 = *(v6 + 32);
      v38 = v30;
      v43(v30, v23 + *(v42 + 48), v31);
      *(swift_allocObject() + 16) = v41;

      v39 = sub_225AE7554;
    }

    else if (v33 == *MEMORY[0x277D84158])
    {
      (*(v19 + 96))(v23, v18);
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D4E8) + 48);
      sub_2259A9C20(v23, v70);
      v45 = *(v6 + 32);
      v38 = v30;
      v45(v30, v23 + v44, v31);
      sub_2259A9C20(v70, v69);
      v46 = swift_allocObject();
      sub_2259A9C20(v69, v46 + 16);

      v39 = sub_225AE754C;
    }

    else
    {
      if (v33 != *MEMORY[0x277D84168])
      {
        a1 = swift_allocError();
        v32(v58, v26, v18);
        (*(v19 + 8))(v23, v18);
        return a1;
      }

      (*(v19 + 96))(v23, v18);
      v47 = *(v6 + 32);
      v38 = v30;
      v47(v30, v23, v5);
      v39 = sub_225AE63B8;
    }

    v48 = v39;
    v60 = v38;
    __swift_project_boxed_opaque_existential_1(v67, v67[3]);
    *&v69[0] = sub_225CCFC64();
    v49 = sub_225CCF2A4();
    sub_225A8495C(v49);
    v70[0] = v68;

    MEMORY[0x22AA6CE70](8250, 0xE200000000000000);
    v50 = sub_225CCF2B4();
    MEMORY[0x22AA6CE70](v50);

    swift_allocError();
    v51 = v65;
    v63(v52, v65, v18);
    v53 = v66;
    sub_225CCF294();
    a1 = v48(v53);

    v54 = *(v62 + 8);
    v55 = v53;
    v56 = v61;
    v54(v55, v61);
    v54(v60, v56);
    (*(v19 + 8))(v51, v18);
  }

  else
  {
    v29(v17, 1, 1, v18);
    sub_2259CB640(v17, &qword_27D73D4E0);
    v40 = a1;
  }

  return a1;
}

uint64_t Base64URLEncodedCBOR.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCD4();
  __swift_mutable_project_boxed_opaque_existential_0(v5, v6);
  sub_225CCF9D4();
  if (v1)
  {
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000033, 0x8000000225D1BE10);
    v3 = sub_225CCFD24();
    MEMORY[0x22AA6CE70](v3);

    sub_225AE433C(v1, 0, 0xE000000000000000, a1);

    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

void *sub_225AE433C(void *a1, uint64_t a2, void (*a3)(void, void), void *a4)
{
  v56 = a2;
  v57 = a3;
  v6 = sub_225CCF314();
  v58 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D4D0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v50 - v16;
  v18 = sub_225CCF324();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v50 - v25;
  *&v62[0] = a1;
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  v28 = swift_dynamicCast();
  v29 = *(v19 + 56);
  if (v28)
  {
    v55 = v10;
    v30 = v6;
    v29(v17, 0, 1, v18);
    v31 = *(v19 + 32);
    v31(v26, v17, v18);
    v54 = *(v19 + 16);
    v54(v23, v26, v18);
    v32 = (*(v19 + 88))(v23, v18);
    if (v32 == *MEMORY[0x277D841A8])
    {
      v33 = *(v19 + 96);
      v53 = v32;
      v33(v23, v18);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D4D8);
      v34 = *(v52 + 48);
      sub_2259B9624(v23, v62);
      v35 = *(v58 + 32);
      v51 = v30;
      v35(v13, &v23[v34], v30);
      __swift_project_boxed_opaque_existential_1(a4, a4[3]);
      v61 = sub_225CCFCB4();
      v36 = sub_225CCF2A4();
      sub_225A8495C(v36);
      v59 = v56;
      v60 = v57;

      MEMORY[0x22AA6CE70](8250, 0xE200000000000000);
      v37 = sub_225CCF2B4();
      v39 = v38;
      v57 = *(v58 + 8);
      v40 = v13;
      v41 = v51;
      v57(v40, v51);
      MEMORY[0x22AA6CE70](v37, v39);

      swift_allocError();
      v54(v42, v26, v18);
      v43 = v55;
      sub_225CCF294();
      a1 = swift_allocError();
      v45 = v44;
      v46 = *(v52 + 48);
      sub_2259CB810(v62, v44);
      (*(v58 + 16))(v45 + v46, v43, v41);
      (*(v19 + 104))(v45, v53, v18);
      v57(v43, v41);
      __swift_destroy_boxed_opaque_existential_0(v62);
      (*(v19 + 8))(v26, v18);
    }

    else
    {
      a1 = swift_allocError();
      v31(v48, v26, v18);
      (*(v19 + 8))(v23, v18);
    }
  }

  else
  {
    v29(v17, 1, 1, v18);
    sub_2259CB640(v17, &qword_27D73D4D0);
    v47 = a1;
  }

  return a1;
}

uint64_t CBOREncodedCBOR.dataValue.getter()
{
  v1 = *(v0 + 8);
  sub_2259CB710(v1, *(v0 + 16));
  return v1;
}

uint64_t CBOREncodedCBOR.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v28 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CBOREncodedCBOR();
  v27 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v23 - v11;
  *(&v23 - v11) = 24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v33;
  sub_225CCFC84();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = a3;
  v26 = v12;
  v33 = v8;
  v24 = v9;
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  sub_2259D94A8();
  sub_225CCF9B4();
  v14 = v30;
  v15 = v31;
  v16 = v26;
  *(v26 + 1) = v30;
  *(v16 + 2) = v15;
  sub_225CCD3A4();
  swift_allocObject();
  sub_2259CB710(v14, v15);
  sub_225CCD394();
  v17 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC94();
  sub_225CCD384();
  v18 = v33;
  sub_225CCD364();
  sub_2259BEF00(v14, v15);

  v19 = v24;
  v20 = v26;
  (*(v28 + 32))(&v26[*(v24 + 48)], v18, a2);
  __swift_destroy_boxed_opaque_existential_0(v32);
  v21 = v27;
  (*(v27 + 16))(v29, v20, v19);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return (*(v21 + 8))(v20, v19);
}

uint64_t CBOREncodedCBOR.encode(to:)(void *a1)
{
  v3 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCD4();
  v6 = *(v1 + 8);
  v5 = *(v1 + 16);
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  __swift_mutable_project_boxed_opaque_existential_0(v11, v12);
  sub_2259CB710(v6, v5);
  sub_225AE4E54();
  sub_225CCFA34();
  sub_2259BEF00(v9, v10);
  if (v2)
  {
    sub_225CCF204();

    v7 = sub_225CCFD24();
    MEMORY[0x22AA6CE70](v7);

    sub_225AE433C(v2, 0xD00000000000002ELL, 0x8000000225D1BE80, a1);

    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t TaggedCBOR.init(data:tag:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

unint64_t sub_225AE4E54()
{
  result = qword_27D73D330;
  if (!qword_27D73D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D330);
  }

  return result;
}

uint64_t static CBOREncodedCBOR<>.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || (sub_2259D8228(a1[1], a1[2], a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CBOREncodedCBOR();
  return sub_225CCE3C4() & 1;
}

uint64_t CBOREncodedCBOR<>.hash(into:)()
{
  MEMORY[0x22AA6E420](*v0);
  sub_225CCCFB4();
  return sub_225CCE354();
}

uint64_t CBOREncodedCBOR<>.hashValue.getter()
{
  sub_225CCFBD4();
  CBOREncodedCBOR<>.hash(into:)();
  return sub_225CCFC24();
}

uint64_t sub_225AE506C()
{
  sub_225CCFBD4();
  CBOREncodedCBOR<>.hash(into:)();
  return sub_225CCFC24();
}

uint64_t BigUIntCBOR.value.getter()
{
  v1 = *(v0 + 8);
  sub_2259CB710(v1, *(v0 + 16));
  return v1;
}

uint64_t BigUIntCBOR.description.getter()
{
  sub_225B34448(*(v0 + 8), *(v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259CB764();
  v1 = sub_225CCE384();

  return v1;
}

uint64_t BigUIntCBOR.init(value:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 2;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

uint64_t BigUIntCBOR.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_2259D94A8();
  sub_225CCF9B4();
  __swift_destroy_boxed_opaque_existential_0(v8);
  *a2 = 2;
  a2[1] = v6;
  a2[2] = v7;
  sub_2259CB710(v6, v7);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2259BEF00(v6, v7);
}

uint64_t BigUIntCBOR.encode(to:)(void *a1)
{
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2259CB710(v4, v5);
  sub_225CCFCD4();
  __swift_mutable_project_boxed_opaque_existential_0(v7, v8);
  sub_225AE4E54();
  sub_225CCFA34();
  sub_2259BEF00(v4, v5);
  if (v2)
  {
    sub_225AE433C(v2, 0xD000000000000032, 0x8000000225D1BEB0, a1);
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t static BigUIntCBOR.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_2259D8228(a1[1], a1[2], a2[1], a2[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t BigUIntCBOR.hash(into:)()
{
  MEMORY[0x22AA6E420](*v0);

  return sub_225CCCFB4();
}

uint64_t BigUIntCBOR.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  sub_225CCCFB4();
  return sub_225CCFC24();
}

uint64_t sub_225AE54C0()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  sub_225CCCFB4();
  return sub_225CCFC24();
}

uint64_t sub_225AE5524()
{
  MEMORY[0x22AA6E420](*v0);

  return sub_225CCCFB4();
}

uint64_t sub_225AE5578()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  sub_225CCCFB4();
  return sub_225CCFC24();
}

uint64_t sub_225AE55D8(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_2259D8228(a1[1], a1[2], a2[1], a2[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225AE55FC()
{
  sub_225B34448(*(v0 + 8), *(v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259CB764();
  v1 = sub_225CCE384();

  return v1;
}

uint64_t TaggedCBOR.data.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t TaggedCBOR.encode(to:)(void *a1)
{
  v15 = sub_225CCD454();
  v12[0] = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2259CB710(v7, v8);
  sub_225CCFCD4();
  sub_225AE6484();
  v12[1] = v7;
  v12[2] = v8;
  sub_2259D9454();
  sub_225CCEEE4();
  if (v2)
  {
    sub_225AE433C(v2, 0xD00000000000001ALL, 0x8000000225D1BEF0, a1);
    swift_willThrow();
  }

  else
  {
    v9 = v12[0];
    sub_225CCD434();
    __swift_mutable_project_boxed_opaque_existential_0(v13, v14);
    sub_225AA29A8();
    v10 = v15;
    sub_225CCFA34();
    (*(v9 + 8))(v6, v10);
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t ISO8601DateString.dateValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_225CCD0B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ISO8601DateString.stringValue.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISO8601DateString() + 20));

  return v1;
}

uint64_t ISO8601DateString.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_225CCD0B4();
  v34 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for ISO8601DateString();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v37;
  sub_225CCFC84();
  if (!v15)
  {
    v37 = a1;
    v31 = v14;
    v32 = v7;
    v33 = v10;
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    v18 = sub_225CCF954();
    v20 = v19;
    v21 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    v22 = sub_225CCE444();
    v23 = [v21 dateFromString_];

    if (v23)
    {
      v24 = v32;
      sub_225CCD094();

      v25 = v33;
      v26 = *(v34 + 32);
      v27 = v24;
      v28 = v3;
      v26(v33, v27, v3);
      v29 = v31;
      v30 = &v31[*(v11 + 20)];
      *v30 = v18;
      v30[1] = v20;
      v26(v29, v25, v28);
      __swift_destroy_boxed_opaque_existential_0(v36);
      sub_225AE651C(v29, v35);
      v16 = v37;
      return __swift_destroy_boxed_opaque_existential_0(v16);
    }

    sub_225CCF2D4();
    swift_allocError();
    sub_225CCF264();
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v36);
    a1 = v37;
  }

  v16 = a1;
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t FailableDecodable.result.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v3 = sub_225CCFC34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FailableDecodable.init(result:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  v4 = sub_225CCFC34();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t FailableDecodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v8 = type metadata accessor for FailableDecodable();
  v15 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16[-v10 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_225CCFC84();
  if (!v4)
  {
    MEMORY[0x28223BE20](v12, v13);
    *(&v15 - 4) = a2;
    *(&v15 - 3) = a3;
    *(&v15 - 2) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_225AE5FF0(sub_225AE6598, (&v15 - 6), v11);
    __swift_destroy_boxed_opaque_existential_0(v16);
    (*(v15 + 32))(v17, v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225AE5F68(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_225CCF9B4();
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_225AE5FF0@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1, a2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_225CCFC34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v13[-v10];
  a1(v6);
  swift_storeEnumTagMultiPayload();
  return (*(v8 + 32))(a3, v11, v7);
}

uint64_t sub_225AE61C4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = sub_225CCF2D4();
  v7 = swift_allocError();
  v9 = v8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D741FA0) + 48);
  *v9 = a2;
  v11 = sub_225CCF2C4();
  (*(*(v11 - 8) + 16))(&v9[v10], a1, v11);
  (*(*(v6 - 8) + 104))(v9, *a3, v6);
  return v7;
}

uint64_t sub_225AE62BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCF2D4();
  v5 = swift_allocError();
  v7 = v6;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D4E8) + 48);
  sub_225A32940(a2, v7);
  v9 = sub_225CCF2C4();
  (*(*(v9 - 8) + 16))(v7 + v8, a1, v9);
  (*(*(v4 - 8) + 104))(v7, *MEMORY[0x277D84158], v4);
  return v5;
}

uint64_t sub_225AE63B8(uint64_t a1)
{
  v2 = sub_225CCF2D4();
  v3 = swift_allocError();
  v5 = v4;
  v6 = sub_225CCF2C4();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  (*(*(v2 - 8) + 104))(v5, *MEMORY[0x277D84168], v2);
  return v3;
}

unint64_t sub_225AE6484()
{
  result = qword_27D73AC58;
  if (!qword_27D73AC58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D73AC58);
  }

  return result;
}

uint64_t type metadata accessor for ISO8601DateString()
{
  result = qword_27D73D440;
  if (!qword_27D73D440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_225AE651C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO8601DateString();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_225AE6608()
{
  result = qword_27D73D338[0];
  if (!qword_27D73D338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D73D338);
  }

  return result;
}

uint64_t sub_225AE665C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_225AE66A4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_225AE66FC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225AE677C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_225AE6900(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_225AE6B50()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225AE6BD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xC)
  {
    v7 = 12;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
      if (v5 > 0xC)
      {
        return (*(v4 + 48))((v15 + v6 + 16) & ~v6);
      }

      v16 = *(v15 + 8) >> 60;
      if (((4 * v16) & 0xC) != 0)
      {
        return 16 - ((4 * v16) & 0xC | (v16 >> 2));
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_225AE6D78(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xC)
  {
    v8 = 12;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v7 > 0xC)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 16) & ~v9);
  }

  else if (a2 > 0xC)
  {
    *v19 = a2 - 13;
    v19[1] = 0;
  }

  else
  {
    *v19 = 0;
    v19[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }
}

uint64_t sub_225AE6FE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_225AE7038(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_225AE7098(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_225AE70EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_225AE7174()
{
  result = sub_225CCD0B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225AE71E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48);
  result = sub_225CCFC34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225AE727C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_225AE7394(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t JWSSignedJSON.init(payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v9[7], 0, 64);
  *(a3 + 89) = *&v9[16];
  *(a3 + 105) = *&v9[32];
  *(a3 + 121) = *&v9[48];
  *(a3 + 136) = 0uLL;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 73) = *v9;
  v6 = *(type metadata accessor for JWSSignedJSON() + 60);
  v7 = *(a2 - 8);
  (*(v7 + 16))(a3 + v6, a1, a2);
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  result = (*(v7 + 8))(a1, a2);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0xE000000000000000;
  return result;
}

uint64_t JWSSignedJSON.setKid(_:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v44 - v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = (*(v10 + 24))(v9, v10);
  if (!v2)
  {
    v50 = 0;
    v13 = result;
    v14 = v12;
    v15 = sub_225CCCF74();
    sub_2259BEF00(v13, v14);
    v16 = DigestSha256(v15);

    if (v16)
    {
      v17 = sub_225CCCFA4();
      v19 = v18;

      v48 = sub_225CCCF84();
      v49 = v20;
      v46 = 43;
      v47 = 0xE100000000000000;
      v44 = 45;
      v45 = 0xE100000000000000;
      sub_2259D8654();
      v21 = sub_225CCF064();
      v23 = v22;

      v48 = v21;
      v49 = v23;
      v46 = 47;
      v47 = 0xE100000000000000;
      v44 = 95;
      v45 = 0xE100000000000000;
      v24 = sub_225CCF064();
      v26 = v25;

      v48 = v24;
      v49 = v26;
      v46 = 61;
      v47 = 0xE100000000000000;
      v44 = 0;
      v45 = 0xE000000000000000;
      v27 = sub_225CCF064();
      v29 = v28;
      sub_2259BEF00(v17, v19);

      *(v3 + 80) = v27;
      *(v3 + 88) = v29;
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
      v31 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v33 = v32;
      v34 = sub_225CCE954();
      v35 = *(v34 - 8);
      (*(v35 + 56))(v8, 1, 1, v34);
      LODWORD(v34) = (*(v35 + 48))(v8, 1, v34);
      sub_2259CB640(v8, &unk_27D73B050);
      if (v34)
      {
        v36 = 1140;
      }

      else
      {
        v36 = 23;
      }

      v37 = sub_225B2C374(v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v37;
      sub_225B2C4A0(v31, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v48);

      v39 = v48;
      v40 = sub_225B29AA0(0, 1, 1, v30);
      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v40);
      }

      *(v40 + 2) = v42 + 1;
      v43 = &v40[56 * v42];
      *(v43 + 4) = 0xD000000000000039;
      *(v43 + 5) = 0x8000000225D1BF50;
      *(v43 + 6) = 0xD000000000000020;
      *(v43 + 7) = 0x8000000225D1BF90;
      *(v43 + 8) = 0x5F2864694B746573;
      *(v43 + 9) = 0xEA0000000000293ALL;
      *(v43 + 10) = 167;
      *v33 = v36;
      *(v33 + 8) = v40;
      *(v33 + 16) = 0xD000000000000039;
      *(v33 + 24) = 0x8000000225D1BF50;
      *(v33 + 32) = v39;
      *(v33 + 40) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

Swift::Void __swiftcall JWSSignedJSON.setNonce(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  v1[13] = countAndFlagsBits;
  v1[14] = object;
  v4 = v1[12];
  if (!v4)
  {
    v4 = MEMORY[0x277D84F90];
    v1[12] = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_225B29BC8(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_225B29BC8((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = 0x65636E6F6ELL;
  *(v7 + 5) = 0xE500000000000000;
  v1[12] = v4;
}

uint64_t JWSSignedJSON.sign(_:)(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225AE7C84, 0, 0);
}

uint64_t sub_225AE7C84()
{
  v59 = v0;
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 80))(&v58, v4, v5);
  *(v1 + 72) = v58;
  v6 = sub_225AEF938(v2);
  v0[42] = v6;
  v0[43] = v7;
  if (v7 >> 60 == 15)
  {
LABEL_5:
    v18 = v0[41];
    v19 = MEMORY[0x277D84F90];
    v20 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v22 = v21;
    v23 = sub_225CCE954();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v18, 1, 1, v23);
    LODWORD(v23) = (*(v24 + 48))(v18, 1, v23);
    sub_2259CB640(v18, &unk_27D73B050);
    if (v23)
    {
      v25 = 1141;
    }

    else
    {
      v25 = 23;
    }

    v26 = sub_225B2C374(v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v26;
    sub_225B2C4A0(v20, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v58);

    v28 = v58;
    v29 = sub_225B29AA0(0, 1, 1, v19);
    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_225B29AA0((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[56 * v31];
    *(v32 + 4) = 0xD00000000000003DLL;
    *(v32 + 5) = 0x8000000225D1BFC0;
    *(v32 + 6) = 0xD000000000000020;
    *(v32 + 7) = 0x8000000225D1BF90;
    *(v32 + 8) = 0x293A5F286E676973;
    *(v32 + 9) = 0xE800000000000000;
    *(v32 + 10) = 216;
    *v22 = v25;
    *(v22 + 8) = v29;
    *(v22 + 16) = 0xD00000000000003DLL;
    *(v22 + 24) = 0x8000000225D1BFC0;
    *(v22 + 32) = v28;
    *(v22 + 40) = 0;
    swift_willThrow();

    v51 = v0[1];
    goto LABEL_16;
  }

  v55 = v6;
  v56 = v7;
  v8 = sub_225CCCF74();
  v9 = DigestSha256(v8);

  if (!v9)
  {
    sub_2259B97A8(v55, v56);
    goto LABEL_5;
  }

  v10 = v0[37];
  v11 = sub_225CCCFA4();
  v13 = v12;

  v0[44] = v11;
  v0[45] = v13;
  v14 = v3[3];
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_1(v10, v14);
  v16 = (*(v15 + 32))(v11, v13, v14, v15);
  v0[46] = v16;
  v0[47] = v17;
  v33 = v16;
  v53 = v0[39];
  v54 = v0[37];
  v52 = v17;
  v0[15] = sub_225CCCF84();
  v0[16] = v34;
  v0[17] = 43;
  v0[18] = 0xE100000000000000;
  v0[19] = 45;
  v0[20] = 0xE100000000000000;
  sub_2259D8654();
  v35 = sub_225CCF064();
  v37 = v36;

  v0[21] = v35;
  v0[22] = v37;
  v0[23] = 47;
  v0[24] = 0xE100000000000000;
  v0[25] = 95;
  v0[26] = 0xE100000000000000;
  v38 = sub_225CCF064();
  v40 = v39;

  v0[27] = v38;
  v0[28] = v40;
  v0[29] = 61;
  v0[30] = 0xE100000000000000;
  v0[31] = 0;
  v0[32] = 0xE000000000000000;
  v41 = sub_225CCF064();
  v43 = v42;

  *(v53 + 32) = v41;
  *(v53 + 40) = v43;
  v44 = v3[3];
  v45 = v3[4];
  __swift_project_boxed_opaque_existential_1(v54, v44);
  v46 = (*(v45 + 64))(v44, v45);
  if (v46)
  {
    v47 = v3[3];
    v48 = v3[4];
    __swift_project_boxed_opaque_existential_1(v0[37], v47);
    v57 = (*(v48 + 72) + **(v48 + 72));
    v49 = swift_task_alloc();
    v0[48] = v49;
    *v49 = v0;
    v49[1] = sub_225AE86C4;

    return v57(v47, v48);
  }

  sub_2259B97A8(v55, v56);
  sub_2259BEF00(v33, v52);
  sub_2259BEF00(v11, v13);

  v51 = v0[1];
LABEL_16:

  return v51();
}

uint64_t sub_225AE86C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[49] = a1;
  v4[50] = a2;
  v4[51] = v2;

  if (v2)
  {
    v5 = sub_225AE8918;
  }

  else
  {
    v5 = sub_225AE87DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225AE87DC()
{
  v1 = v0[50];
  if (v1 >> 60 == 15)
  {
    v2 = v0[46];
    v3 = v0[47];
    v5 = v0[44];
    v4 = v0[45];
    sub_2259B97A8(v0[42], v0[43]);
    sub_2259BEF00(v2, v3);
    sub_2259BEF00(v5, v4);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = v0[49];
    v10 = v0[46];
    v9 = v0[47];
    v11 = v0[44];
    v18 = v0[45];
    v12 = v0[42];
    v13 = v0[43];
    v6 = sub_225CCCF84();
    v7 = v14;
    sub_2259B97A8(v12, v13);
    sub_2259BEF00(v10, v9);
    sub_2259BEF00(v11, v18);
    sub_2259B97A8(v8, v1);
  }

  v15 = v0[39];

  *(v15 + 56) = v6;
  *(v15 + 64) = v7;

  v16 = v0[1];

  return v16();
}

uint64_t sub_225AE8918()
{
  v44 = v0;
  sub_2259BEF00(v0[46], v0[47]);
  v1 = v0[51];
  v2 = v1;
  v3 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v37 = v4;
  swift_getErrorValue();
  v5 = v0[13];
  v6 = v1;
  sub_225B21FAC(v5, &v38);

  v7 = v39;
  if (v39)
  {
    v35 = v41;
    v36 = v38;
    v8 = v42;
    v33 = v43;
    v34 = v40;
  }

  else
  {
    v0[34] = v1;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v10 = v0[35];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v12 = [v10 code];
      v13 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v13;
      *(inited + 40) = v12;
      v8 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v14 = v1;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v7 = MEMORY[0x277D84F90];
      v33 = v1;
    }

    else
    {
      v15 = v0[40];
      v0[36] = v1;
      v16 = v1;
      v17 = sub_225CCE954();
      v18 = swift_dynamicCast();
      v19 = *(v17 - 8);
      (*(v19 + 56))(v15, v18 ^ 1u, 1, v17);
      LODWORD(v19) = (*(v19 + 48))(v15, 1, v17);
      sub_2259CB640(v15, &unk_27D73B050);
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = 23;
      }

      v36 = v20;
      v7 = MEMORY[0x277D84F90];
      v8 = sub_225B2C374(MEMORY[0x277D84F90]);
      v21 = v1;
      v35 = 0x8000000225D1C000;
      v33 = v1;
      v34 = 0xD00000000000002FLL;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v8;
  sub_225B2C4A0(v3, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v38);

  v32 = v38;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_225B29AA0(0, *(v7 + 2) + 1, 1, v7);
  }

  v24 = *(v7 + 2);
  v23 = *(v7 + 3);
  if (v24 >= v23 >> 1)
  {
    v7 = sub_225B29AA0((v23 > 1), v24 + 1, 1, v7);
  }

  v26 = v0[44];
  v25 = v0[45];
  v27 = v0[42];
  v31 = v0[43];

  *(v7 + 2) = v24 + 1;
  v28 = &v7[56 * v24];
  *(v28 + 4) = 0xD00000000000002FLL;
  *(v28 + 5) = 0x8000000225D1C000;
  *(v28 + 6) = 0xD000000000000020;
  *(v28 + 7) = 0x8000000225D1BF90;
  *(v28 + 8) = 0x293A5F286E676973;
  *(v28 + 9) = 0xE800000000000000;
  *(v28 + 10) = 226;
  *v37 = v36;
  *(v37 + 8) = v7;
  *(v37 + 16) = v34;
  *(v37 + 24) = v35;
  *(v37 + 32) = v32;
  *(v37 + 40) = v33;
  swift_willThrow();

  sub_2259BEF00(v26, v25);
  sub_2259B97A8(v27, v31);

  v29 = v0[1];

  return v29();
}

uint64_t sub_225AE8D94()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225AE8DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE8E58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225AE8EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE8F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE8FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_225AE8DE0(a1, a2, a3[2], a3[3], a3[4]);
  *a4 = result;
  return result;
}

uint64_t sub_225AE9018(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225AE906C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t JWSSignedJSON.JWSType.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_225AE9134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE91A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225AE9214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE9284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t JWSSignedJSON.JWSContentType.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_225AE946C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE94E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225AE954C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE95BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t JWSSignedJSON.JWSCritical.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t JWSSignedJSON.JWSCritical.rawValue.getter()
{
  v1 = 0x64657461657263;
  if (*v0 != 1)
  {
    v1 = 1953259891;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E6F6ELL;
  }
}

uint64_t sub_225AE97DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE9850(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225AE98BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE992C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE99A8@<X0>(uint64_t *a1@<X8>)
{
  result = JWSSignedJSON.JWSCritical.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_225AE9AA8()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225AE9AF8(unsigned __int8 a1)
{
  v1 = 6777953;
  v2 = 0x64657461657263;
  if (a1 != 6)
  {
    v2 = 1953259891;
  }

  v3 = 1953067619;
  if (a1 != 4)
  {
    v3 = 0x65636E6F6ELL;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 7371124;
  if (a1 != 2)
  {
    v4 = 7959651;
  }

  if (a1)
  {
    v1 = 6580587;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_225AE9BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE9C30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225AE9C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE9D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AE9D94@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(*a1, a1[1], a2[2], a2[3], a2[4]);
  *a4 = result;
  return result;
}

uint64_t sub_225AE9DF0@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, a1[2], a1[3], a1[4]);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_225AE9E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_225AE9AF4(a1, a2, a3[2], a3[3], a3[4]);
  *a4 = result;
  return result;
}

uint64_t sub_225AE9E70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AF2AB4();
  *a1 = result;
  return result;
}

uint64_t sub_225AE9EA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225AE9EF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_225AE9F4C()
{
  v1 = v0[4];
  v2 = v0[6];
  v3 = v0[8];

  JWSSignedJSON.JWSCritical.init(rawValue:)(&v5);
  if (v5 > 1u)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else if (v5)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  return v3;
}

uint64_t JWSSignedJSON.DIPJWSProtectedHeader.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[4];
  v25 = a2[3];
  v26 = v4;
  v24 = v5;
  type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_225CCF7F4();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v20 - v8;
  v10 = *v2;
  v11 = *(v2 + 1);
  v22 = *(v2 + 2);
  v23 = v11;
  v12 = *(v2 + 3);
  v13 = *(v2 + 4);
  v14 = *(v2 + 6);
  v20[6] = *(v2 + 5);
  v21 = v12;
  v20[3] = v14;
  v15 = *(v2 + 8);
  v20[4] = *(v2 + 7);
  v20[5] = v13;
  v16 = *(v2 + 9);
  v20[1] = v15;
  v20[2] = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCE4();
  LOBYTE(v29) = v10;
  v30 = 0;
  sub_225AF20F8();
  v17 = v28;
  sub_225CCF7E4();
  if (v17)
  {
    return (*(v27 + 8))(v9, v6);
  }

  v19 = v27;
  LOBYTE(v29) = 1;
  sub_225CCF734();
  LOBYTE(v29) = 2;
  type metadata accessor for JWSSignedJSON.JWSType();
  swift_getWitnessTable();
  sub_225CCF7E4();
  LOBYTE(v29) = 3;
  type metadata accessor for JWSSignedJSON.JWSContentType();
  swift_getWitnessTable();
  sub_225CCF7E4();
  v29 = v21;
  v30 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_225A325B0(&qword_281059B28);
  sub_225CCF774();
  LOBYTE(v29) = 5;
  sub_225CCF734();
  LOBYTE(v29) = 6;
  sub_225CCF734();
  LOBYTE(v29) = 7;
  sub_225CCF734();
  return (*(v19 + 8))(v9, v6);
}

uint64_t JWSSignedJSON.DIPJWSProtectedHeader.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v46 = a4;
  type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader.CodingKeys();
  swift_getWitnessTable();
  v48 = sub_225CCF714();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v7);
  v9 = &v39 - v8;
  v10 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v49 = v9;
  v11 = v50;
  sub_225CCFCA4();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_0(v59);
  }

  else
  {
    v12 = v47;
    v45 = a2;
    v50 = a3;
    LOBYTE(v51) = 0;
    sub_225AF217C();
    v13 = v48;
    sub_225CCF6E4();
    v14 = LOBYTE(v56[0]);
    LOBYTE(v56[0]) = 1;
    v43 = sub_225CCF624();
    v42 = v14;
    v44 = v15;
    type metadata accessor for JWSSignedJSON.JWSType();
    LOBYTE(v56[0]) = 2;
    swift_getWitnessTable();
    sub_225CCF6E4();
    type metadata accessor for JWSSignedJSON.JWSContentType();
    LOBYTE(v56[0]) = 3;
    swift_getWitnessTable();
    sub_225CCF6E4();
    v16 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    LOBYTE(v51) = 4;
    sub_225A325B0(&qword_281059B18);
    sub_225CCF674();
    v17 = v56[0];
    LOBYTE(v56[0]) = 5;
    v18 = sub_225CCF624();
    v20 = v19;
    LOBYTE(v56[0]) = 6;
    v21 = sub_225CCF624();
    v23 = v22;
    v41 = v21;
    v57 = 7;
    v24 = sub_225CCF624();
    v25 = *(v16 + 8);
    v26 = v24;
    v40 = v24;
    v27 = v13;
    v29 = v28;
    v25(v49, v27);
    LOBYTE(v16) = v42;
    LOBYTE(v51) = v42;
    DWORD1(v51) = *&v58[3];
    *(&v51 + 1) = *v58;
    v30 = v18;
    v39 = v18;
    v31 = v44;
    *(&v51 + 1) = v43;
    *&v52 = v44;
    *(&v52 + 1) = v17;
    *&v53 = v30;
    *(&v53 + 1) = v20;
    *&v54 = v41;
    *(&v54 + 1) = v23;
    *&v55 = v26;
    *(&v55 + 1) = v29;
    v32 = v53;
    v33 = v55;
    v34 = v46;
    v46[3] = v54;
    v34[4] = v33;
    v35 = v51;
    v34[1] = v52;
    v34[2] = v32;
    *v34 = v35;
    v36 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader();
    v37 = *(v36 - 8);
    (*(v37 + 16))(v56, &v51, v36);
    __swift_destroy_boxed_opaque_existential_0(v59);
    LOBYTE(v56[0]) = v16;
    *(v56 + 1) = *v58;
    HIDWORD(v56[0]) = *&v58[3];
    v56[1] = v43;
    v56[2] = v31;
    v56[3] = v17;
    v56[4] = v39;
    v56[5] = v20;
    v56[6] = v41;
    v56[7] = v23;
    v56[8] = v40;
    v56[9] = v29;
    return (*(v37 + 8))(v56, v36);
  }
}

uint64_t JWSSignedJSON.DIPJWSUnprotectedHeader.x5c.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t JWSSignedJSON.DIPJWSUnprotectedHeader.uam.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t JWSSignedJSON.DIPJWSUnprotectedHeader.uam.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_225AEAB10()
{
  v0 = sub_225CCF5D4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225AEAB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AEABD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_225AEAC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AEACB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_225AEAD24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AEAB10();
  *a1 = result;
  return result;
}

uint64_t sub_225AEAD60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2259AE2B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_225AEADAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AEAB10();
  *a1 = result;
  return result;
}

uint64_t sub_225AEADE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_225AEAE34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void JWSSignedJSON.DIPJWSUnprotectedHeader.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t JWSSignedJSON.DIPJWSUnprotectedHeader.encode(to:)(void *a1)
{
  type metadata accessor for JWSSignedJSON.DIPJWSUnprotectedHeader.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_225CCF7F4();
  v13 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v12 - v5;
  v8 = *v1;
  v7 = v1[1];
  v12[1] = v1[2];
  v12[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_225CCFCE4();
  v17 = v8;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_225A325B0(&qword_281059B28);
  v9 = v14;
  sub_225CCF774();
  if (v9)
  {

    return (*(v13 + 8))(v6, v3);
  }

  else
  {
    v11 = v13;

    v15 = 1;
    sub_225CCF734();
    return (*(v11 + 8))(v6, v3);
  }
}

uint64_t JWSSignedJSON.DIPJWSUnprotectedHeader.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  type metadata accessor for JWSSignedJSON.DIPJWSUnprotectedHeader.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_225CCF714();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCA4();
  if (!v2)
  {
    v9 = v5;
    v10 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    v18 = 0;
    sub_225A325B0(&qword_281059B18);
    sub_225CCF674();
    v11 = v19;
    v17 = 1;
    v13 = sub_225CCF624();
    v15 = v14;
    (*(v9 + 8))(v8, v4);
    *v10 = v11;
    v10[1] = v13;
    v10[2] = v15;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t JWSSignedJSON.unprotectedHeader.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
}

__n128 JWSSignedJSON.unprotectedHeader.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  v1[3] = v4;
  v1[4].n128_u64[0] = v2;
  return result;
}

uint64_t JWSSignedJSON.protectedHeader.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 120);
  v10 = *(v1 + 104);
  v11 = v3;
  v12 = *(v1 + 136);
  v4 = v12;
  v9[0] = *(v1 + 72);
  v5 = v9[0];
  v9[1] = v2;
  a1[2] = v10;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v2;
  v6 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader();
  return (*(*(v6 - 8) + 16))(&v8, v9, v6);
}

__n128 JWSSignedJSON.protectedHeader.setter(__n128 *a1)
{
  v10 = a1[2];
  v11 = a1[3];
  v2 = a1[4];
  v8 = *a1;
  v9 = a1[1];
  v3 = *(v1 + 88);
  v4 = *(v1 + 120);
  v13[2] = *(v1 + 104);
  v13[3] = v4;
  v13[4] = *(v1 + 136);
  v5 = *(v1 + 72);
  v13[1] = v3;
  v12 = v2;
  v13[0] = v5;
  v6 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader();
  (*(*(v6 - 8) + 8))(v13, v6);
  *(v1 + 88) = v9;
  *(v1 + 104) = v10;
  *(v1 + 120) = v11;
  result = v12;
  *(v1 + 136) = v12;
  *(v1 + 72) = v8;
  return result;
}

__n128 JWSSignedJSON.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for JWSSignedJSON();
  (*(*(a2 - 8) + 32))(a3 + *(v6 + 60), a1 + *(v6 + 60), a2);
  v7 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v7;
  *(a3 + 16) = *(a1 + 16);
  v8 = *(a1 + 40);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = v8;
  v9 = *(a1 + 64);
  *(a3 + 48) = *(a1 + 48);
  *(a3 + 64) = v9;
  *(a3 + 72) = *(a1 + 72);
  result = *(a1 + 88);
  v11 = *(a1 + 104);
  v12 = *(a1 + 120);
  *(a3 + 136) = *(a1 + 136);
  *(a3 + 120) = v12;
  *(a3 + 104) = v11;
  *(a3 + 88) = result;
  return result;
}

uint64_t JWSSignedJSON.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v201 = a5;
  v220 = sub_225CCF2D4();
  v215 = *(v220 - 8);
  v10 = MEMORY[0x28223BE20](v220, v9);
  v214 = &v199 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v213 = &v199 - v14;
  v206 = *(a2 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v202 = &v199 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v204 = &v199 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v205 = &v199 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v203 = &v199 - v25;
  type metadata accessor for JWSSignedJSON.CodingKeys();
  swift_getWitnessTable();
  v26 = sub_225CCF714();
  v210 = *(v26 - 8);
  v211 = v26;
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v199 - v28;
  v219 = a4;
  v207 = type metadata accessor for JWSSignedJSON();
  v200 = *(v207 - 8);
  MEMORY[0x28223BE20](v207, v30);
  v218 = (&v199 - v31);
  v32 = a1[3];
  v216 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v212 = v29;
  v33 = v217;
  sub_225CCFCA4();
  v208 = a3;
  v209 = a2;
  if (v33)
  {
    LODWORD(v210) = 0;
    LODWORD(v212) = 0;
    LODWORD(v211) = 0;
    *&v229[0] = v33;
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    v36 = v213;
    v37 = v220;
    if (swift_dynamicCast())
    {

      v39 = v214;
      v38 = v215;
      (*(v215 + 32))(v214, v36, v37);
      v40 = swift_allocError();
      (*(v38 + 16))(v41, v39, v37);
      v203 = "ed to hash the public key";
      v204 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v217 = swift_allocError();
      v43 = v42;
      swift_getErrorValue();
      v44 = v230;
      v45 = v40;
      sub_225B21FAC(v44, &v231);

      v46 = *(&v231 + 1);
      v213 = 0x8000000225D1C050;
      if (*(&v231 + 1))
      {
        v205 = v231;
        v201 = *(&v232 + 1);
        v202 = v232;
        v48 = *(&v233 + 1);
        v47 = v233;
      }

      else
      {
        *&v231 = v40;
        v58 = v40;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v59 = *&v228[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v60 = swift_allocObject();
          *(v60 + 16) = xmmword_225CD30F0;
          *(v60 + 32) = 20;
          v61 = [v59 code];
          v62 = MEMORY[0x277D83BF8];
          *(v60 + 64) = MEMORY[0x277D83B88];
          *(v60 + 72) = v62;
          *(v60 + 40) = v61;
          v47 = sub_225B2C374(v60);
          swift_setDeallocating();
          sub_2259CB640(v60 + 32, &qword_27D73B060);
          swift_deallocClassInstance();

          v63 = v40;
          v201 = 0;
          v202 = 0;
          v46 = MEMORY[0x277D84F90];
          v205 = 120;
        }

        else
        {
          *&v231 = v40;
          v72 = v40;
          v73 = sub_225CCE954();
          v74 = v205;
          v75 = swift_dynamicCast();
          v76 = *(v73 - 8);
          (*(v76 + 56))(v74, v75 ^ 1u, 1, v73);
          LODWORD(v73) = (*(v76 + 48))(v74, 1, v73);
          sub_2259CB640(v74, &unk_27D73B050);
          if (v73)
          {
            v77 = 120;
          }

          else
          {
            v77 = 23;
          }

          v205 = v77;
          v46 = MEMORY[0x277D84F90];
          v47 = sub_225B2C374(MEMORY[0x277D84F90]);
          v78 = v40;
          v201 = 0x8000000225D1C050;
          v202 = 0xD000000000000011;
        }

        v48 = v40;
      }

      v79 = v203 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v231 = v47;
      sub_225B2C4A0(v204, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v231);

      v81 = v231;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_225B29AA0(0, *(v46 + 2) + 1, 1, v46);
      }

      v83 = *(v46 + 2);
      v82 = *(v46 + 3);
      if (v83 >= v82 >> 1)
      {
        v46 = sub_225B29AA0((v82 > 1), v83 + 1, 1, v46);
      }

      *(v46 + 2) = v83 + 1;
      v84 = &v46[56 * v83];
      v85 = v213;
      *(v84 + 4) = 0xD000000000000011;
      *(v84 + 5) = v85;
      *(v84 + 6) = 0xD000000000000020;
      *(v84 + 7) = v79;
      *(v84 + 8) = 0x6F72662874696E69;
      *(v84 + 9) = 0xEB00000000293A6DLL;
      *(v84 + 10) = 126;
      *v43 = v205;
      v86 = v201;
      v87 = v202;
      *(v43 + 8) = v46;
      *(v43 + 16) = v87;
      *(v43 + 24) = v86;
      *(v43 + 32) = v81;
      *(v43 + 40) = v48;
      swift_willThrow();
      (*(v215 + 8))(v214, v220);
      v88 = *&v229[0];
    }

    else
    {

      v220 = 0x8000000225D1C030;
      v214 = "ed to hash the public key";
      v49 = v33;
      v215 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v50 = swift_allocError();
      v52 = v51;
      swift_getErrorValue();
      v53 = v236;
      v54 = v33;
      sub_225B21FAC(v53, &v231);

      v55 = *(&v231 + 1);
      v217 = v50;
      if (*(&v231 + 1))
      {
        v213 = v231;
        v204 = *(&v232 + 1);
        v205 = v232;
        v57 = *(&v233 + 1);
        v56 = v233;
      }

      else
      {
        *&v231 = v33;
        v64 = v33;
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v65 = *&v229[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
          v66 = swift_allocObject();
          *(v66 + 16) = xmmword_225CD30F0;
          *(v66 + 32) = 20;
          v67 = [v65 code];
          v68 = MEMORY[0x277D83BF8];
          *(v66 + 64) = MEMORY[0x277D83B88];
          *(v66 + 72) = v68;
          *(v66 + 40) = v67;
          v56 = sub_225B2C374(v66);
          swift_setDeallocating();
          sub_2259CB640(v66 + 32, &qword_27D73B060);
          swift_deallocClassInstance();

          v69 = v33;
          v204 = 0;
          v205 = 0;
          v55 = MEMORY[0x277D84F90];
          v213 = 1139;
        }

        else
        {
          *&v231 = v33;
          v89 = v33;
          v90 = sub_225CCE954();
          v91 = v204;
          v92 = swift_dynamicCast();
          v93 = *(v90 - 8);
          (*(v93 + 56))(v91, v92 ^ 1u, 1, v90);
          LODWORD(v90) = (*(v93 + 48))(v91, 1, v90);
          sub_2259CB640(v91, &unk_27D73B050);
          if (v90)
          {
            v94 = 1139;
          }

          else
          {
            v94 = 23;
          }

          v213 = v94;
          v55 = MEMORY[0x277D84F90];
          v56 = sub_225B2C374(MEMORY[0x277D84F90]);
          v95 = v33;
          v204 = v220;
          v205 = 0xD00000000000001BLL;
        }

        v57 = v33;
      }

      v96 = v214 | 0x8000000000000000;
      v97 = swift_isUniquelyReferenced_nonNull_native();
      *&v231 = v56;
      sub_225B2C4A0(v215, sub_225B2AC40, 0, v97, &v231);

      v98 = v231;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_225B29AA0(0, *(v55 + 2) + 1, 1, v55);
      }

      v100 = *(v55 + 2);
      v99 = *(v55 + 3);
      if (v100 >= v99 >> 1)
      {
        v55 = sub_225B29AA0((v99 > 1), v100 + 1, 1, v55);
      }

      *(v55 + 2) = v100 + 1;
      v101 = &v55[56 * v100];
      v102 = v220;
      *(v101 + 4) = 0xD00000000000001BLL;
      *(v101 + 5) = v102;
      *(v101 + 6) = 0xD000000000000020;
      *(v101 + 7) = v96;
      *(v101 + 8) = 0x6F72662874696E69;
      *(v101 + 9) = 0xEB00000000293A6DLL;
      *(v101 + 10) = 129;
      *v52 = v213;
      v103 = v204;
      v104 = v205;
      *(v52 + 8) = v55;
      *(v52 + 16) = v104;
      *(v52 + 24) = v103;
      *(v52 + 32) = v98;
      *(v52 + 40) = v57;
      swift_willThrow();
      v88 = v33;
    }

    result = __swift_destroy_boxed_opaque_existential_0(v216);
    v106 = v218;
    if (v210)
    {

      if ((v212 & 1) == 0)
      {
        if (!v211)
        {
          return result;
        }

LABEL_39:
        v107 = 0;
        v108 = 0;
        goto LABEL_40;
      }
    }

    else if ((v212 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_38:
    if ((v211 & 1) == 0)
    {
      return result;
    }

    goto LABEL_39;
  }

  v34 = v210;
  type metadata accessor for JWSSignedJSON.DIPJWSUnprotectedHeader();
  LOBYTE(v229[0]) = 0;
  swift_getWitnessTable();
  sub_225CCF6E4();
  v70 = v232;
  v71 = v218;
  v218[3] = v231;
  v71[8] = v70;
  LOBYTE(v231) = 1;
  v113 = sub_225CCF684();
  *v71 = v113;
  v71[1] = v114;
  v115 = v114;
  LOBYTE(v231) = 2;
  v217 = sub_225CCF684();
  v71[2] = v217;
  v71[3] = v116;
  v199 = v116;
  LOBYTE(v231) = 3;
  v117 = sub_225CCF684();
  v119 = v118;
  (*(v34 + 8))(v212, v211);
  v71[4] = v117;
  v71[5] = v119;
  v220 = v113;
  *&v229[0] = v113;
  *(&v229[0] + 1) = v115;
  v215 = v115;
  *&v228[0] = 45;
  *(&v228[0] + 1) = 0xE100000000000000;
  *&v223 = 43;
  *(&v223 + 1) = 0xE100000000000000;
  v120 = sub_2259D8654();
  *&v229[0] = sub_225CCF064();
  *(&v229[0] + 1) = v121;
  *&v228[0] = 95;
  *(&v228[0] + 1) = 0xE100000000000000;
  *&v223 = 47;
  *(&v223 + 1) = 0xE100000000000000;
  v122 = sub_225CCF064();
  v124 = v123;

  *&v231 = v122;
  *(&v231 + 1) = v124;

  v125 = sub_225CCE5D4();

  v126 = v125 & 3;
  if (v125 <= 0)
  {
    v126 = -(-v125 & 3);
  }

  if (v126 >= 1)
  {
    v127 = sub_225CCE6D4();
    MEMORY[0x22AA6CE70](v127);
  }

  v128 = sub_225CCCF04();
  v130 = v129;
  sub_2259CB6FC(v128, v129);

  if (v130 >> 60 == 15)
  {
    *&v231 = 0;
    *(&v231 + 1) = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000045, 0x8000000225D1C070);
    MEMORY[0x22AA6CE70](v220, v215);
    v131 = *(&v231 + 1);
    v132 = v231;
    v220 = 0x8000000225D1BF90;
    v133 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v217 = swift_allocError();
    v135 = v134;
    v136 = sub_225CCE954();
    v137 = *(v136 - 8);
    v138 = v203;
    (*(v137 + 56))(v203, 1, 1, v136);
    LODWORD(v136) = (*(v137 + 48))(v138, 1, v136);
    sub_2259CB640(v138, &unk_27D73B050);
    if (v136)
    {
      LOWORD(v120) = 120;
    }

    else
    {
      LOWORD(v120) = 23;
    }

    v139 = MEMORY[0x277D84F90];
    v140 = sub_225B2C374(MEMORY[0x277D84F90]);
    v141 = swift_isUniquelyReferenced_nonNull_native();
    *&v231 = v140;
    sub_225B2C4A0(v133, sub_225B2AC40, 0, v141, &v231);

    v142 = v231;
    v143 = sub_225B29AA0(0, 1, 1, v139);
    v145 = *(v143 + 2);
    v144 = *(v143 + 3);
    v130 = v145 + 1;
    if (v145 >= v144 >> 1)
    {
LABEL_89:
      v143 = sub_225B29AA0((v144 > 1), v130, 1, v143);
    }

    *(v143 + 2) = v130;
    v146 = &v143[56 * v145];
    *(v146 + 4) = v132;
    *(v146 + 5) = v131;
    *(v146 + 6) = 0xD000000000000020;
    *(v146 + 7) = v220;
    *(v146 + 8) = 0x6F72662874696E69;
    *(v146 + 9) = 0xEB00000000293A6DLL;
    *(v146 + 10) = 134;
    *v135 = v120;
    *(v135 + 8) = v143;
    *(v135 + 16) = v132;
    *(v135 + 24) = v131;
    *(v135 + 32) = v142;
    *(v135 + 40) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v216);
    v108 = 0;
    v107 = 0;
    goto LABEL_57;
  }

  sub_2259B97A8(v128, v130);
  v147 = sub_225CCC994();
  swift_allocObject();
  v131 = sub_225CCC984();
  v135 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader();
  swift_getWitnessTable();
  sub_225CCC974();
  v210 = v147;
  v211 = v120;
  v212 = 0;
  v213 = v128;
  v214 = v130;

  v148 = v218;
  *(v218 + 72) = v231;
  v132 = *(&v232 + 1);
  *(v148 + 11) = v232;
  *(v148 + 12) = v132;
  v149 = v234;
  *(v148 + 104) = v233;
  *(v148 + 120) = v149;
  *(v148 + 136) = v235;
  if (v132)
  {
    v220 = *(v132 + 16);
    if (v220)
    {
      v142 = 0;
      v215 = v135 - 8;
      v145 = (v132 + 40);
      while (1)
      {
        v144 = *(v132 + 16);
        if (v142 >= v144)
        {
          __break(1u);
          goto LABEL_89;
        }

        v130 = *(v145 - 1);
        v120 = *v145;
        v150 = *(v218 + 88);
        v151 = *(v218 + 120);
        v228[2] = *(v218 + 104);
        v228[3] = v151;
        v228[4] = *(v218 + 136);
        v228[0] = *(v218 + 72);
        v228[1] = v150;
        v152 = *(v218 + 88);
        v153 = *(v218 + 120);
        v225 = *(v218 + 104);
        v226 = v153;
        v227 = *(v218 + 136);
        v223 = *(v218 + 72);
        v224 = v152;

        v154 = *(v135 - 8);
        (*(v154 + 16))(&v221, v228, v135);
        sub_225AE9F4C();
        v131 = v155;
        v229[2] = v225;
        v229[3] = v226;
        v229[4] = v227;
        v229[0] = v223;
        v229[1] = v224;
        (*(v154 + 8))(v229, v135);
        if (!v131)
        {
          break;
        }

        ++v142;

        v145 += 2;
        if (v220 == v142)
        {
          goto LABEL_65;
        }
      }

      *&v223 = 0;
      *(&v223 + 1) = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD000000000000044, 0x8000000225D1C100);
      MEMORY[0x22AA6CE70](v130, v120);

      v167 = *(&v223 + 1);
      v168 = v223;
      v220 = 0x8000000225D1BF90;
      v186 = MEMORY[0x277D84F90];
      v187 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v217 = swift_allocError();
      v172 = v188;
      v189 = sub_225CCE954();
      v190 = *(v189 - 8);
      v191 = v203;
      (*(v190 + 56))(v203, 1, 1, v189);
      LODWORD(v189) = (*(v190 + 48))(v191, 1, v189);
      sub_2259CB640(v191, &unk_27D73B050);
      if (v189)
      {
        v176 = 120;
      }

      else
      {
        v176 = 23;
      }

      v192 = sub_225B2C374(v186);
      v193 = swift_isUniquelyReferenced_nonNull_native();
      *&v223 = v192;
      sub_225B2C4A0(v187, sub_225B2AC40, 0, v193, &v223);

      v179 = v223;
      v180 = sub_225B29AA0(0, 1, 1, v186);
      v195 = *(v180 + 2);
      v194 = *(v180 + 3);
      if (v195 >= v194 >> 1)
      {
        v180 = sub_225B29AA0((v194 > 1), v195 + 1, 1, v180);
      }

      *(v180 + 2) = v195 + 1;
      v183 = &v180[56 * v195];
      *(v183 + 4) = v168;
      *(v183 + 5) = v167;
      *(v183 + 6) = 0xD000000000000020;
      *(v183 + 7) = v220;
      *(v183 + 8) = 0x6F72662874696E69;
      *(v183 + 9) = 0xEB00000000293A6DLL;
      v184 = 142;
      goto LABEL_84;
    }
  }

LABEL_65:
  *&v228[0] = v217;
  *(&v228[0] + 1) = v199;
  *&v223 = 45;
  *(&v223 + 1) = 0xE100000000000000;
  v221 = 43;
  v222 = 0xE100000000000000;
  *&v228[0] = sub_225CCF064();
  *(&v228[0] + 1) = v156;
  *&v223 = 95;
  *(&v223 + 1) = 0xE100000000000000;
  v221 = 47;
  v222 = 0xE100000000000000;
  v157 = sub_225CCF064();
  v159 = v158;

  *&v229[0] = v157;
  *(&v229[0] + 1) = v159;

  v160 = sub_225CCE5D4();

  v161 = v160 & 3;
  if (v160 <= 0)
  {
    v161 = -(-v160 & 3);
  }

  if (v161 >= 1)
  {
    v162 = sub_225CCE6D4();
    MEMORY[0x22AA6CE70](v162);
  }

  v163 = sub_225CCCF04();
  v165 = v164;
  sub_2259CB6FC(v163, v164);

  v166 = v202;
  if (v165 >> 60 == 15)
  {
    *&v229[0] = 0;
    *(&v229[0] + 1) = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000003CLL, 0x8000000225D1C0C0);
    MEMORY[0x22AA6CE70](v217, v199);
    v167 = *(&v229[0] + 1);
    v168 = *&v229[0];
    v220 = 0x8000000225D1BF90;
    v169 = MEMORY[0x277D84F90];
    v170 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v217 = swift_allocError();
    v172 = v171;
    v173 = sub_225CCE954();
    v174 = *(v173 - 8);
    v175 = v203;
    (*(v174 + 56))(v203, 1, 1, v173);
    LODWORD(v173) = (*(v174 + 48))(v175, 1, v173);
    sub_2259CB640(v175, &unk_27D73B050);
    if (v173)
    {
      v176 = 120;
    }

    else
    {
      v176 = 23;
    }

    v177 = sub_225B2C374(v169);
    v178 = swift_isUniquelyReferenced_nonNull_native();
    *&v229[0] = v177;
    sub_225B2C4A0(v170, sub_225B2AC40, 0, v178, v229);

    v179 = *&v229[0];
    v180 = sub_225B29AA0(0, 1, 1, v169);
    v182 = *(v180 + 2);
    v181 = *(v180 + 3);
    if (v182 >= v181 >> 1)
    {
      v180 = sub_225B29AA0((v181 > 1), v182 + 1, 1, v180);
    }

    *(v180 + 2) = v182 + 1;
    v183 = &v180[56 * v182];
    *(v183 + 4) = v168;
    *(v183 + 5) = v167;
    *(v183 + 6) = 0xD000000000000020;
    *(v183 + 7) = v220;
    *(v183 + 8) = 0x6F72662874696E69;
    *(v183 + 9) = 0xEB00000000293A6DLL;
    v184 = 149;
LABEL_84:
    *(v183 + 10) = v184;
    *v172 = v176;
    *(v172 + 8) = v180;
    *(v172 + 16) = v168;
    *(v172 + 24) = v167;
    *(v172 + 32) = v179;
    *(v172 + 40) = 0;
    swift_willThrow();
    sub_2259B97A8(v213, v214);
    __swift_destroy_boxed_opaque_existential_0(v216);
    v107 = 0;
    v108 = 1;
    goto LABEL_57;
  }

  sub_2259B97A8(v163, v165);
  swift_allocObject();
  sub_225CCC984();
  v185 = v212;
  sub_225CCC974();
  if (!v185)
  {

    v106 = v218;
    (*(v206 + 32))(v218 + *(v207 + 60), v166, v209);
    JWSSignedJSON.verify()();
    if (!v196)
    {
      sub_2259B97A8(v163, v165);
      sub_2259B97A8(v213, v214);
      v197 = v200;
      v198 = v207;
      (*(v200 + 16))(v201, v106, v207);
      __swift_destroy_boxed_opaque_existential_0(v216);
      return (*(v197 + 8))(v106, v198);
    }

    sub_2259B97A8(v163, v165);
    sub_2259B97A8(v213, v214);
    __swift_destroy_boxed_opaque_existential_0(v216);
    v108 = 1;
    v107 = 1;
    goto LABEL_58;
  }

  sub_2259B97A8(v213, v214);
  sub_2259B97A8(v163, v165);

  __swift_destroy_boxed_opaque_existential_0(v216);
  v107 = 0;
  v108 = 1;
LABEL_57:
  v106 = v218;
LABEL_58:

LABEL_40:

  if (v108)
  {
    v109 = *(v106 + 88);
    v110 = *(v106 + 120);
    v233 = *(v106 + 104);
    v234 = v110;
    v235 = *(v106 + 136);
    v231 = *(v106 + 72);
    v232 = v109;
    v111 = v209;
    v112 = type metadata accessor for JWSSignedJSON.DIPJWSProtectedHeader();
    result = (*(*(v112 - 8) + 8))(&v231, v112);
    if ((v107 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v111 = v209;
    if (!v107)
    {
      return result;
    }
  }

  return (*(v206 + 8))(v106 + *(v207 + 60), v111);
}