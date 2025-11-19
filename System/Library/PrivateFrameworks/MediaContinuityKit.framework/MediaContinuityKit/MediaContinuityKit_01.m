uint64_t sub_258474544(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2584745A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t static VideoStreamConfiguration.stereoContentSend(resolution:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  return result;
}

id static VideoStreamConfiguration.stereoContentReceive(layer:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0x80;
  return a1;
}

uint64_t static VideoStreamConfiguration.stereoContentReceive(figEndpointID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0x80;
  return swift_unknownObjectRetain();
}

unint64_t sub_258474690()
{
  result = qword_27F92FFD0;
  if (!qword_27F92FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92FFD0);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_258474704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

uint64_t sub_258474754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2584747B4(uint64_t result, char a2)
{
  v2 = *(result + 32) & 1 | (a2 << 7);
  *(result + 16) &= 1uLL;
  *(result + 32) = v2;
  return result;
}

id VideoStreamReceiveConfiguration.layer.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_258474818(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_258474874(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t VideoStreamSendConfiguration.resolution.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t VideoStreamSendConfiguration.displayID.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_2584748F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258474910(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_2584749D4(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = sub_25853390C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = *a3;
  return sub_2585338FC();
}

uint64_t sub_258474A58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_25853390C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_258474AF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[4] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930098, &qword_258537188);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300A0, &unk_258537190);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v21 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2584766E0();
  sub_258533F4C();
  sub_258476734();
  sub_258533D8C();
  v23 = 0;
  v19 = v21[5];
  sub_258533DAC();
  if (!v19)
  {
    v22 = 1;
    sub_258533DAC();
  }

  (*(v7 + 8))(v11, v6);
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_258474D50()
{
  if (*v0)
  {
    result = 0x4449656369766564;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_258474D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_258533E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258533E2C();

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

uint64_t sub_258474E78(uint64_t a1)
{
  v2 = sub_258476734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258474EB4(uint64_t a1)
{
  v2 = sub_258476734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_258474EF8()
{
  sub_258533EEC();
  MEMORY[0x259C81F40](0);
  return sub_258533F2C();
}

uint64_t sub_258474F64()
{
  sub_258533EEC();
  MEMORY[0x259C81F40](0);
  return sub_258533F2C();
}

uint64_t sub_258474FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000025853FA00 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_258533E2C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_258475060(uint64_t a1)
{
  v2 = sub_2584766E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25847509C(uint64_t a1)
{
  v2 = sub_2584766E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2584750D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_258475EE8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_258475128(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_258533E2C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_258533E2C();
    }
  }

  return result;
}

uint64_t sub_2584751E0()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_2584752B4()
{
  *v0;
  *v0;
  sub_2585334AC();
}

uint64_t sub_258475374()
{
  v1 = *v0;
  sub_258533EEC();
  sub_2585334AC();

  return sub_258533F2C();
}

uint64_t sub_258475444@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_258476324();
  *a2 = result;
  return result;
}

void sub_258475474(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065707954;
  v4 = 0x746E696F70646E65;
  v5 = 0x800000025853F9E0;
  if (v2 == 2)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0x4449656369766564;
  }

  if (v2 != 2)
  {
    v5 = 0xE800000000000000;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x800000025853F9B0;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_258475504()
{
  v1 = *v0;
  v2 = 0x746E696F70646E65;
  if (v1 == 2)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0x4449656369766564;
  }

  if (!*v0)
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

uint64_t sub_258475590@<X0>(_BYTE *a1@<X8>)
{
  result = sub_258476324();
  *a1 = result;
  return result;
}

uint64_t sub_2584755C4(uint64_t a1)
{
  v2 = sub_258475E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258475600(uint64_t a1)
{
  v2 = sub_258475E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25847563C()
{
  sub_258533EEC();
  sub_2585334AC();
  return sub_258533F2C();
}

uint64_t sub_2584756B0()
{
  sub_258533EEC();
  sub_2585334AC();
  return sub_258533F2C();
}

uint64_t sub_258475704@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_258533CEC();

  *a2 = v5 != 0;
  return result;
}

uint64_t MediaContinuityEndpoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930020, &qword_258536DB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v30 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258475E40();
  sub_258533F3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v35 = 1;
  sub_258475E94();
  sub_258533D4C();
  v34 = 2;
  v12 = sub_258533D3C();
  v14 = v13;
  v31 = v12;
  v33 = 3;
  v15 = sub_258533D3C();
  v17 = v16;
  v30 = v15;
  v32 = 0;
  v18 = sub_258533D3C();
  v21 = sub_2584B4D38(v18, v19);
  v22 = v10;
  v24 = v23;
  v25 = v5;
  v27 = v26;
  (*(v6 + 8))(v22, v25);
  *a2 = v21;
  a2[1] = v24;
  v28 = v30;
  v29 = v31;
  a2[2] = v27;
  a2[3] = v29;
  a2[4] = v14;
  a2[5] = v28;
  a2[6] = v17;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MediaContinuityEndpoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930038, &qword_258536DB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20 - v8;
  v10 = *v1;
  v22 = v1[1];
  v23 = v10;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[5];
  v24 = v1[4];
  v25 = v12;
  v20 = v13;
  v21 = v11;
  v14 = v1[6];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258475E40();
  sub_258533F4C();
  v29 = 1;
  sub_258476370();
  sub_258533DBC();
  if (v2)
  {
    return (*(v5 + 8))(v9, v4);
  }

  v16 = v21;
  v18 = v22;
  v17 = v23;
  v28 = 2;
  sub_258533DAC();
  v27 = 3;
  sub_258533DAC();
  sub_2584B3D20(v17, v18, v16);
  v26 = 0;
  sub_258533DAC();
  (*(v5 + 8))(v9, v4);
}

uint64_t sub_258475D0C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
    return result;
  }

  v4 = (v0[1] + 16 * v1);
  v3 = *v4;
  v5 = v4[1];
  v0[2] = v1 + 1;

  return v3;
}

BOOL _s18MediaContinuityKit0aB8EndpointV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = a2[5];
    v7 = a2[6];
    result = (a1[3] == a2[3] && a1[4] == a2[4] || (v8 = a1[4], (sub_258533E2C() & 1) != 0)) && (v4 == v6 && v5 == v7 || (sub_258533E2C() & 1) != 0);
  }

  return result;
}

unint64_t sub_258475E40()
{
  result = qword_27F930028;
  if (!qword_27F930028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930028);
  }

  return result;
}

unint64_t sub_258475E94()
{
  result = qword_27F930030;
  if (!qword_27F930030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930030);
  }

  return result;
}

uint64_t sub_258475EE8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930070, &qword_258537170);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930078, &qword_258537178);
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - v11;
  v13 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2584766E0();
  sub_258533F3C();
  if (v1)
  {
    goto LABEL_5;
  }

  v21 = a1;
  v14 = v23;
  if (*(sub_258533D7C() + 16) != 1)
  {
    v15 = v8;
    v13 = sub_258533BCC();
    swift_allocError();
    v17 = v16;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930088, &qword_258537180) + 48);
    *v17 = &type metadata for MediaContinuityEndpoint.EndpointType;
    sub_258533D1C();
    sub_258533BBC();
    (*(*(v13 - 8) + 104))(v17, *MEMORY[0x277D84160], v13);
    swift_willThrow();
    (*(v14 + 8))(v12, v15);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v13;
  }

  sub_258476734();
  sub_258533D0C();
  v20 = v8;
  v25 = 0;
  v13 = sub_258533D3C();
  v24 = 1;
  sub_258533D3C();
  v23 = v14 + 8;
  (*(v22 + 8))(v7, v3);
  (*v23)(v12, v20);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v13;
}

uint64_t sub_258476324()
{
  v0 = sub_258533CEC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_258476370()
{
  result = qword_27F930040;
  if (!qword_27F930040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930040);
  }

  return result;
}

uint64_t sub_2584763C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25847640C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_258476474(uint64_t a1, int a2)
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

uint64_t sub_2584764BC(uint64_t result, int a2, int a3)
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

unint64_t sub_258476530()
{
  result = qword_27F930048;
  if (!qword_27F930048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930048);
  }

  return result;
}

unint64_t sub_258476588()
{
  result = qword_27F930050;
  if (!qword_27F930050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930050);
  }

  return result;
}

unint64_t sub_2584765E0()
{
  result = qword_27F930058;
  if (!qword_27F930058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930058);
  }

  return result;
}

unint64_t sub_258476638()
{
  result = qword_27F930060;
  if (!qword_27F930060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930060);
  }

  return result;
}

unint64_t sub_25847668C()
{
  result = qword_27F930068;
  if (!qword_27F930068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930068);
  }

  return result;
}

unint64_t sub_2584766E0()
{
  result = qword_27F930080;
  if (!qword_27F930080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930080);
  }

  return result;
}

unint64_t sub_258476734()
{
  result = qword_27F930090;
  if (!qword_27F930090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930090);
  }

  return result;
}

unint64_t sub_2584767B4()
{
  result = qword_27F9300A8;
  if (!qword_27F9300A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300A8);
  }

  return result;
}

unint64_t sub_25847680C()
{
  result = qword_27F9300B0;
  if (!qword_27F9300B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300B0);
  }

  return result;
}

unint64_t sub_258476864()
{
  result = qword_27F9300B8;
  if (!qword_27F9300B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300B8);
  }

  return result;
}

unint64_t sub_2584768BC()
{
  result = qword_27F9300C0;
  if (!qword_27F9300C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300C0);
  }

  return result;
}

unint64_t sub_258476914()
{
  result = qword_27F9300C8;
  if (!qword_27F9300C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300C8);
  }

  return result;
}

unint64_t sub_25847696C()
{
  result = qword_27F9300D0;
  if (!qword_27F9300D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300D0);
  }

  return result;
}

uint64_t MediaStreamErrors.hashValue.getter()
{
  v1 = *v0;
  sub_258533EEC();
  MEMORY[0x259C81F40](v1);
  return sub_258533F2C();
}

unint64_t sub_258476A54()
{
  result = qword_27F9300D8;
  if (!qword_27F9300D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300D8);
  }

  return result;
}

unint64_t sub_258476ABC(uint64_t a1)
{
  result = sub_258476AE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258476AE4()
{
  result = qword_27F9300E0;
  if (!qword_27F9300E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaStreamErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaStreamErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_258476C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_25847B6EC(a3, v25 - v11);
  v13 = sub_25853368C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_258465168(v12, &qword_27F92FB78, &qword_2585368F0);
  }

  else
  {
    sub_25853367C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25853362C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25853348C() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_258465168(a3, &qword_27F92FB78, &qword_2585368F0);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_258465168(a3, &qword_27F92FB78, &qword_2585368F0);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_258476F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_25847B6EC(a3, v25 - v11);
  v13 = sub_25853368C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_258465168(v12, &qword_27F92FB78, &qword_2585368F0);
  }

  else
  {
    sub_25853367C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25853362C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25853348C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930190, &unk_258537FF0);
      v22 = (v20 | v18);
      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_258465168(a3, &qword_27F92FB78, &qword_2585368F0);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_258465168(a3, &qword_27F92FB78, &qword_2585368F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930190, &unk_258537FF0);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2584771D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_25847B6EC(a3, v25 - v11);
  v13 = sub_25853368C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_258465168(v12, &qword_27F92FB78, &qword_2585368F0);
  }

  else
  {
    sub_25853367C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25853362C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25853348C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930198, &qword_258537910);
      v22 = (v20 | v18);
      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_258465168(a3, &qword_27F92FB78, &qword_2585368F0);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_258465168(a3, &qword_27F92FB78, &qword_2585368F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930198, &qword_258537910);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t MediaContinuityServer.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_258533EEC();
  MEMORY[0x259C81F40](v1);
  return sub_258533F2C();
}

uint64_t MediaContinuityServer.__allocating_init(usage:shouldAdvertise:)(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v3;
  v14 = *(a1 + 32);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300E8, qword_258537540);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_258479DB4(a2);
  v8 = type metadata accessor for MediaContinuityServer(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  return sub_25847A640(v13, a2, v7, v11);
}

uint64_t sub_258477594(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300F0, &qword_258537558);
  v2[14] = v4;
  v5 = *(v4 - 8);
  v2[15] = v5;
  v2[16] = *(v5 + 64);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584776AC, v1, 0);
}

uint64_t sub_2584776AC()
{
  v25 = v0;
  if (qword_27F92F8D0 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_258532A4C();
  v0[19] = __swift_project_value_buffer(v2, qword_27F93CFC0);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136446210;
    v0[10] = v5;
    type metadata accessor for MediaContinuityServer(0);
    sub_25847AE64(&qword_27F930110);
    v8 = sub_258533DFC();
    v10 = sub_2584713B0(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v3, v4, "%{public}s Activating", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v11 = v0[12];
  if (*(v11 + 192))
  {
    sub_25847ABF0();
    v12 = swift_allocError();
    *v13 = 0;
    swift_willThrow();
    v0[22] = v12;
    v14 = swift_task_alloc();
    v0[23] = v14;
    *v14 = v0;
    v14[1] = sub_258477FD8;
    v15 = v0[12];

    return sub_2584795C4(v12);
  }

  else
  {
    *(v11 + 192) = 1;
    v17 = *(v11 + 176);
    v18 = *(v11 + 184);
    __swift_project_boxed_opaque_existential_1((v11 + 152), v17);
    v19 = *(v18 + 64);
    v23 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    v0[20] = v21;
    *v21 = v0;
    v21[1] = sub_258477A08;
    v22 = v0[18];

    return (v23)(v22, v0 + 2, v17, v18);
  }
}

uint64_t sub_258477A08()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_25847817C;
  }

  else
  {
    v6 = sub_258477B34;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258477B34()
{
  v50 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  if (*(v0[12] + 192) != 1)
  {
    v11 = v0[15];
    v46 = v0[14];
    v48 = v0[18];
    sub_25847AC44(v2, v1, v3, v4, v6);
    sub_25847ABF0();
    v10 = swift_allocError();
    *v12 = 0;
    swift_willThrow();
    (*(v11 + 8))(v48, v46);
    goto LABEL_5;
  }

  v8 = v0[21];
  v9 = v0[11];
  v49[0] = v0[2];
  v49[1] = v1;
  v49[2] = v3;
  v49[3] = v4;
  v49[4] = v6;
  v49[5] = v5;
  v49[6] = v7;
  sub_258478848(v49, v9);
  if (v8)
  {
    v10 = v8;
    (*(v0[15] + 8))(v0[18], v0[14]);
    sub_25847AC44(v2, v1, v3, v4, v6);
LABEL_5:
    v0[22] = v10;
    v13 = swift_task_alloc();
    v0[23] = v13;
    *v13 = v0;
    v13[1] = sub_258477FD8;
    v14 = v0[12];

    return sub_2584795C4(v10);
  }

  v43 = v0[17];
  v44 = v0[18];
  v45 = v0[16];
  v47 = v0[19];
  v16 = v0[15];
  v42 = v0[14];
  v17 = v0[12];
  v18 = v0[13];
  sub_25847AC44(v2, v1, v3, v4, v6);
  v19 = sub_25853368C();
  v20 = v18;
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v16 + 16))(v43, v44, v42);
  v21 = sub_25847AE64(&qword_27F930100);
  v22 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v17;
  *(v23 + 3) = v21;
  *(v23 + 4) = v17;
  (*(v16 + 32))(&v23[v22], v43, v42);
  swift_retain_n();
  v24 = sub_258476C88(0, 0, v20, &unk_258537570, v23);
  v25 = *(v17 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_connectionEventTask);
  *(v17 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_connectionEventTask) = v24;

  *(v17 + 192) = 2;

  v26 = sub_258532A2C();
  v27 = sub_2585338EC();

  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[18];
  v30 = v0[14];
  v31 = v0[15];
  if (v28)
  {
    v32 = v0[12];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v49[0] = v34;
    *v33 = 136446210;
    v0[9] = v32;
    type metadata accessor for MediaContinuityServer(0);
    sub_25847AE64(&qword_27F930110);
    v35 = sub_258533DFC();
    v37 = sub_2584713B0(v35, v36, v49);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_25845E000, v26, v27, "%{public}s Activation complete", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x259C82900](v34, -1, -1);
    MEMORY[0x259C82900](v33, -1, -1);
  }

  (*(v31 + 8))(v29, v30);
  v39 = v0[17];
  v38 = v0[18];
  v40 = v0[13];

  v41 = v0[1];

  return v41();
}

uint64_t sub_258477FD8()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584780E8, v2, 0);
}

uint64_t sub_2584780E8()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[13];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[22];

  return v5();
}

uint64_t sub_25847817C()
{
  v1 = v0[21];
  v0[22] = v1;
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_258477FD8;
  v3 = v0[12];

  return sub_2584795C4(v1);
}

uint64_t sub_258478238()
{
  v25 = v0;
  v1 = v0[5];
  if (*(v1 + 192) > 2u)
  {
    v21 = v0[1];

    return v21();
  }

  else
  {
    v2 = v0[5];
    if (qword_27F92F8D0 != -1)
    {
      swift_once();
      v22 = v0[5];
    }

    v3 = sub_258532A4C();
    v0[6] = __swift_project_value_buffer(v3, qword_27F93CFC0);

    v4 = sub_258532A2C();
    v5 = sub_2585338EC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[5];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24 = v8;
      *v7 = 136446210;
      v0[4] = v6;
      type metadata accessor for MediaContinuityServer(0);
      sub_25847AE64(&qword_27F930110);
      v9 = sub_258533DFC();
      v11 = sub_2584713B0(v9, v10, &v24);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_25845E000, v4, v5, "%{public}s Invalidating", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x259C82900](v8, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    v12 = v0[5];
    *(v1 + 192) = 3;
    if (*(v12 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_connectionEventTask))
    {
      v13 = *(v12 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_connectionEventTask);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();
    }

    v14 = v0[5];
    v0[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930120, &qword_258537588);
    sub_2585337FC();
    v15 = v14[22];
    v16 = v14[23];
    __swift_project_boxed_opaque_existential_1(v14 + 19, v15);
    v17 = *(v16 + 72);
    v23 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    v0[7] = v19;
    *v19 = v0;
    v19[1] = sub_2584785B4;

    return v23(v15, v16);
  }
}

uint64_t sub_2584785B4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584786C4, v2, 0);
}

uint64_t sub_2584786C4()
{
  v14 = v0;
  v2 = v0[5];
  v1 = v0[6];

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[3] = v5;
    type metadata accessor for MediaContinuityServer(0);
    sub_25847AE64(&qword_27F930110);
    v8 = sub_258533DFC();
    v10 = sub_2584713B0(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v3, v4, "%{public}s Invalidation complete", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_258478848@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  if (*(v2 + 146) != 1)
  {
    if (!v8)
    {
      v10 = 1;
      goto LABEL_9;
    }

    v23 = a1[1];
    v24 = a1[6];
    v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301B0, &qword_258537928) + 48));
    v12 = v9;
    v13 = v7;
    v14 = v6;
    v15 = v4;
    v16 = OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventStream;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930130, &qword_258537590);
    v18 = v2 + v16;
    v4 = v15;
    v6 = v14;
    v7 = v13;
    v19 = v12;
    v5 = v23;
    (*(*(v17 - 8) + 16))(a2, v18, v17);
    *v11 = v4;
    v11[1] = v23;
    v11[2] = v6;
    v11[3] = v7;
    v11[4] = v8;
    v11[5] = v19;
    v11[6] = v24;
LABEL_7:
    type metadata accessor for MediaContinuityServer.ActivationResult(0);
    swift_storeEnumTagMultiPayload();
    return sub_25847B75C(v4, v5, v6, v7, v8);
  }

  if (!v8)
  {
    v25 = OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventStream;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930130, &qword_258537590);
    (*(*(v20 - 8) + 16))(a2, v2 + v25, v20);
    goto LABEL_7;
  }

  v10 = 2;
LABEL_9:
  sub_25847ABF0();
  swift_allocError();
  *v22 = v10;
  return swift_willThrow();
}

uint64_t sub_258478A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301A0, &qword_258537918);
  v5[23] = v7;
  v8 = *(v7 - 8);
  v5[24] = v8;
  v9 = *(v8 + 64) + 15;
  v5[25] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301A8, &qword_258537920);
  v5[26] = v10;
  v11 = *(v10 - 8);
  v5[27] = v11;
  v12 = *(v11 + 64) + 15;
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258478B80, a4, 0);
}

uint64_t sub_258478B80()
{
  v22 = v0;
  if (qword_27F92F8D0 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_258532A4C();
  v0[29] = __swift_project_value_buffer(v2, qword_27F93CFC0);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136446210;
    v0[20] = v5;
    type metadata accessor for MediaContinuityServer(0);
    sub_25847AE64(&qword_27F930110);
    v8 = sub_258533DFC();
    v10 = sub_2584713B0(v8, v9, &v21);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v3, v4, "%{public}s Starting monitoring task", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v11 = v0[28];
  v12 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300F0, &qword_258537558);
  sub_2585336FC();
  v13 = sub_25847AE64(&qword_27F930100);
  v14 = OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventsContinuation;
  v0[30] = v13;
  v0[31] = v14;
  v15 = v0[21];
  v16 = *(MEMORY[0x277D858B8] + 4);
  v17 = swift_task_alloc();
  v0[32] = v17;
  *v17 = v0;
  v17[1] = sub_258478DFC;
  v18 = v0[28];
  v19 = v0[26];

  return MEMORY[0x2822005A8](v0 + 2, v15, v13, v19, v0 + 17);
}

uint64_t sub_258478DFC()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;

  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_258479258;
  }

  else
  {
    v5 = sub_258478F10;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_258478F10()
{
  v33 = v0;
  if (!*(v0 + 40))
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    goto LABEL_5;
  }

  sub_258464C18((v0 + 16), v0 + 56);
  if (sub_25853376C())
  {
    v2 = *(v0 + 216);
    v1 = *(v0 + 224);
    v3 = *(v0 + 208);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    (*(v2 + 8))(v1, v3);
LABEL_5:
    v4 = *(v0 + 232);
    v5 = *(v0 + 168);

    v6 = sub_258532A2C();
    v7 = sub_2585338EC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 168);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v32 = v10;
      *v9 = 136446210;
      *(v0 + 144) = v8;
      type metadata accessor for MediaContinuityServer(0);
      sub_25847AE64(&qword_27F930110);
      v11 = sub_258533DFC();
      v13 = sub_2584713B0(v11, v12, &v32);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_25845E000, v6, v7, "%{public}s Exiting monitoring task", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x259C82900](v10, -1, -1);
      MEMORY[0x259C82900](v9, -1, -1);
    }

    v14 = *(v0 + 224);
    v15 = *(v0 + 200);

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 248);
  v20 = *(v0 + 192);
  v19 = *(v0 + 200);
  v21 = *(v0 + 184);
  v22 = *(v0 + 168);
  v23 = *(v22 + 144);
  v24 = *(v22 + 145);
  v25 = *(v22 + 128);
  *(v0 + 280) = *(v22 + 112);
  *(v0 + 296) = v25;
  *(v0 + 312) = v23;
  *(v0 + 313) = v24;
  sub_258464C30(v0 + 56, v0 + 96);
  *(v0 + 152) = sub_2584A7C7C(v0 + 280, (v0 + 96));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930120, &qword_258537588);
  sub_2585337EC();

  (*(v20 + 8))(v19, v21);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v26 = *(v0 + 240);
  v27 = *(v0 + 168);
  v28 = *(MEMORY[0x277D858B8] + 4);
  v29 = swift_task_alloc();
  *(v0 + 256) = v29;
  *v29 = v0;
  v29[1] = sub_258478DFC;
  v30 = *(v0 + 224);
  v31 = *(v0 + 208);

  return MEMORY[0x2822005A8](v0 + 16, v27, v26, v31, v0 + 136);
}

uint64_t sub_258479258()
{
  (*(v0[27] + 8))(v0[28], v0[26]);
  v1 = v0[17];
  v0[33] = v1;
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_25847930C;
  v3 = v0[21];

  return sub_2584795C4(v1);
}

uint64_t sub_25847930C()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25847941C, v2, 0);
}

uint64_t sub_25847941C()
{
  v16 = v0;

  v1 = *(v0 + 232);
  v2 = *(v0 + 168);

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    *(v0 + 144) = v5;
    type metadata accessor for MediaContinuityServer(0);
    sub_25847AE64(&qword_27F930110);
    v8 = sub_258533DFC();
    v10 = sub_2584713B0(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v3, v4, "%{public}s Exiting monitoring task", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v11 = *(v0 + 224);
  v12 = *(v0 + 200);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2584795C4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2584795E4, v1, 0);
}

uint64_t sub_2584795E4()
{
  v34 = v0;
  v1 = v0[5];
  if (*(v1 + 192) > 2u)
  {
    v30 = v0[1];

    return v30();
  }

  else
  {
    v2 = v0[5];
    if (qword_27F92F8D0 != -1)
    {
      swift_once();
      v31 = v0[5];
    }

    v3 = v0[4];
    v4 = sub_258532A4C();
    __swift_project_value_buffer(v4, qword_27F93CFC0);

    v5 = v3;
    v6 = sub_258532A2C();
    v7 = sub_2585338CC();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = v0[4];
      v8 = v0[5];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33 = v12;
      *v10 = 136446466;
      v0[3] = v8;
      type metadata accessor for MediaContinuityServer(0);
      sub_25847AE64(&qword_27F930110);
      v13 = sub_258533DFC();
      v15 = sub_2584713B0(v13, v14, &v33);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2112;
      v16 = v9;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v17;
      *v11 = v17;
      _os_log_impl(&dword_25845E000, v6, v7, "%{public}s Interruption with error:%@", v10, 0x16u);
      sub_258465168(v11, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x259C82900](v12, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    v19 = v0[4];
    v18 = v0[5];
    *(v1 + 192) = 4;
    if (*(v18 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_connectionEventTask))
    {
      v20 = *(v18 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_connectionEventTask);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();
    }

    v21 = v0[4];
    v22 = v0[5];
    v0[2] = v19;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930120, &qword_258537588);
    sub_2585337FC();
    v24 = v22[22];
    v25 = v22[23];
    __swift_project_boxed_opaque_existential_1(v22 + 19, v24);
    v26 = *(v25 + 72);
    v32 = (v26 + *v26);
    v27 = v26[1];
    v28 = swift_task_alloc();
    v0[6] = v28;
    *v28 = v0;
    v28[1] = sub_258463830;

    return v32(v24, v25);
  }
}

uint64_t MediaContinuityServer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  v1 = OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930130, &qword_258537590);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventsContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930120, &qword_258537588);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_connectionEventTask);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MediaContinuityServer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  v1 = OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930130, &qword_258537590);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventsContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930120, &qword_258537588);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_connectionEventTask);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_258479BA4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MediaContinuityServer(0);
  result = sub_258533B9C();
  *a1 = result;
  return result;
}

uint64_t MediaContinuityServer.description.getter()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000016, 0x8000000258540400);
  type metadata accessor for MediaContinuityServer(0);
  sub_25847AE64(&qword_27F930138);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_258479CC4()
{
  v1 = *v0;
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000016, 0x8000000258540400);
  type metadata accessor for MediaContinuityServer(0);
  sub_25847AE64(&qword_27F930138);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_258479DB4(int a1)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301C8, &qword_258537940);
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v65 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301D0, &qword_258537948);
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v62 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301D8, &qword_258537950);
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v61 = &v55 - v14;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301E0, &qword_258537958);
  v15 = *(v57 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v57, v17);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301E8, &unk_258537960);
  v58 = *(v20 - 8);
  v59 = v20;
  v21 = *(v58 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v55 = &v55 - v23;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300F0, &qword_258537558);
  v24 = *(v56 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v56, v26);
  v28 = &v55 - v27;
  v29 = sub_2585329BC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  sub_2585329AC();
  v35 = sub_25853294C();
  v37 = v36;
  (*(v30 + 8))(v34, v29);
  v38 = v60;
  *(v2 + 120) = v35;
  *(v2 + 128) = v37;
  *(v2 + *(*v2 + 168)) = 0;
  v39 = *(*v2 + 176);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  (*(*(v40 - 8) + 56))(v2 + v39, 1, 1, v40);
  *(v2 + *(*v2 + 184)) = 0;
  *(v2 + *(*v2 + 192)) = 0;
  *(v2 + *(*v2 + 216)) = 0;
  *(v2 + 112) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301F0, &qword_258537970);
  v41 = v57;
  (*(v15 + 104))(v19, *MEMORY[0x277D858A0], v57);
  v42 = v55;
  sub_2585337BC();
  (*(v15 + 8))(v19, v41);
  (*(v24 + 32))(v2 + *(*v2 + 152), v28, v56);
  (*(v58 + 32))(v2 + *(*v2 + 160), v42, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301F8, &qword_258537978);
  v44 = v65;
  v43 = v66;
  v45 = v67;
  (*(v66 + 104))(v65, *MEMORY[0x277D85778], v67);
  v47 = v61;
  v46 = v62;
  sub_25853369C();
  (*(v43 + 8))(v44, v45);
  (*(v63 + 32))(v2 + *(*v2 + 200), v47, v64);
  (*(v68 + 32))(v2 + *(*v2 + 208), v46, v69);
  if (qword_27F92F8D0 != -1)
  {
    swift_once();
  }

  v48 = sub_258532A4C();
  __swift_project_value_buffer(v48, qword_27F93CFC0);

  v49 = sub_258532A2C();
  v50 = sub_2585338EC();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 136315394;
    v71 = 0;
    v72 = 0xE000000000000000;
    v73 = v52;
    sub_258533B8C();
    MEMORY[0x259C81500](0xD000000000000027, 0x8000000258540500);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300E8, qword_258537540);
    sub_25847B7A0(&qword_27F930200);
    v70 = sub_258533B9C();
    sub_258533C8C();
    MEMORY[0x259C81500](93, 0xE100000000000000);

    v53 = sub_2584713B0(v71, v72, &v73);

    *(v51 + 4) = v53;
    *(v51 + 12) = 1024;
    *(v51 + 14) = v38 & 1;
    _os_log_impl(&dword_25845E000, v49, v50, "%s created, shouldAdverstise:%{BOOL}d", v51, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x259C82900](v52, -1, -1);
    MEMORY[0x259C82900](v51, -1, -1);
  }

  else
  {
  }

  return v2;
}

uint64_t sub_25847A640(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9301B8, &qword_258537938);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v41 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930120, &qword_258537588);
  v12 = *(v42 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v42, v14);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930130, &qword_258537590);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v41 - v21;
  v46[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300E8, qword_258537540);
  v46[4] = sub_25847B7A0(&qword_27F9301C0);
  v46[0] = v41;
  swift_defaultActor_initialize();
  *(a4 + 192) = 0;
  *(a4 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_connectionEventTask) = 0;
  v23 = *(a1 + 16);
  *(a4 + 112) = *a1;
  *(a4 + 128) = v23;
  v41 = a1;
  *(a4 + 144) = *(a1 + 32);
  *(a4 + 146) = v43;
  sub_258464C30(v46, a4 + 152);
  type metadata accessor for MediaContinuitySession();
  (*(v7 + 104))(v11, *MEMORY[0x277D858A0], v6);
  sub_2585337BC();
  (*(v7 + 8))(v11, v6);
  (*(v18 + 32))(a4 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventStream, v22, v17);
  (*(v12 + 32))(a4 + OBJC_IVAR____TtC18MediaContinuityKit21MediaContinuityServer_sessionEventsContinuation, v16, v42);
  if (qword_27F92F8D0 != -1)
  {
    swift_once();
  }

  v24 = sub_258532A4C();
  __swift_project_value_buffer(v24, qword_27F93CFC0);

  v25 = sub_258532A2C();
  v26 = sub_2585338EC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v44 = a4;
    v45 = v28;
    *v27 = 136446722;
    type metadata accessor for MediaContinuityServer(0);
    sub_25847AE64(&qword_27F930110);
    v29 = sub_258533DFC();
    v31 = sub_2584713B0(v29, v30, &v45);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    if (*(v41 + 33))
    {
      v32 = *(v41 + 32);
      v33 = *(v41 + 24);
      v34 = *v41;
      v35 = *(v41 + 16) | *(v41 + 8);
      if (v35 | *v41 | v33 || *(v41 + 32))
      {
        v40 = v35 | v33;
        if (*(v41 + 32) || v34 != 1 || v40)
        {
          if (*(v41 + 32) || v34 != 2 || v40)
          {
            v36 = 0xEF676E69726F7272;
            v37 = 0x694D656E6F685069;
            if (!*(v41 + 32) && v34 == 3 && !v40)
            {
              v37 = 0xD000000000000010;
              v36 = 0x80000002585402B0;
            }
          }

          else
          {
            v36 = 0xE700000000000000;
            v37 = 0x72616365646973;
          }
        }

        else
        {
          v36 = 0xE700000000000000;
          v37 = 0x79616C70726961;
        }
      }

      else
      {
        v36 = 0x80000002585402D0;
        v37 = 0xD000000000000011;
      }
    }

    else
    {
      v36 = 0x80000002585402F0;
      v37 = 0xD000000000000012;
    }

    v38 = sub_2584713B0(v37, v36, &v45);

    *(v27 + 14) = v38;
    *(v27 + 22) = 1026;
    *(v27 + 24) = v43 & 1;
    _os_log_impl(&dword_25845E000, v25, v26, "Created %{public}s usage:%{public}s, shouldAdvertise:%{BOOL,public}d", v27, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v28, -1, -1);
    MEMORY[0x259C82900](v27, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  return a4;
}

unint64_t sub_25847ABF0()
{
  result = qword_27F9300F8;
  if (!qword_27F9300F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9300F8);
  }

  return result;
}

uint64_t sub_25847AC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_25847AC88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300F0, &qword_258537558);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25847AD60(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9300F0, &qword_258537558) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258464F5C;

  return sub_258478A48(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_25847AE64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MediaContinuityServer(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25847AEAC()
{
  result = qword_27F930140;
  if (!qword_27F930140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930140);
  }

  return result;
}

unint64_t sub_25847AF00(uint64_t a1)
{
  result = sub_25847ABF0();
  *(a1 + 8) = result;
  return result;
}

void sub_25847AF30()
{
  sub_25847B2B8(319, &qword_27F930158, MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_25847B2B8(319, &qword_27F930160, MEMORY[0x277D858B0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of MediaContinuityServer.activate()(uint64_t a1)
{
  v4 = *(*v1 + 200);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258472CF8;

  return v8(a1);
}

uint64_t dispatch thunk of MediaContinuityServer.invalidate()()
{
  v2 = *(*v0 + 208);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_258464F5C;

  return v6();
}

void sub_25847B2B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MediaContinuitySession();
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MediaStreamInternalEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaStreamInternalEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25847B4FC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25847B534()
{
  sub_25847B5A8();
  if (v0 <= 0x3F)
  {
    sub_25847B60C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25847B5A8()
{
  if (!qword_27F930178)
  {
    sub_25847B2B8(0, &qword_27F930158, MEMORY[0x277D858D8]);
    if (!v1)
    {
      atomic_store(v0, &qword_27F930178);
    }
  }
}

void sub_25847B60C()
{
  if (!qword_27F930180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F930130, &qword_258537590);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F930180);
    }
  }
}

unint64_t sub_25847B694()
{
  result = qword_27F930188;
  if (!qword_27F930188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930188);
  }

  return result;
}

uint64_t sub_25847B6EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25847B75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_25847B7A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9300E8, qword_258537540);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25847B7F4()
{
  v0 = sub_258532D3C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258532D2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258532D6C();
  v12 = (*(v7 + 88))(v11, v6);
  if (v12 == *MEMORY[0x277CD8CB0])
  {
    return 0;
  }

  if (v12 != *MEMORY[0x277CD8CA8])
  {
    if (v12 != *MEMORY[0x277CD8CB8])
    {
      if (v12 == *MEMORY[0x277CD8CA0])
      {
        return 1;
      }

      if (v12 == *MEMORY[0x277CD8CC0])
      {
        return 5;
      }

      (*(v7 + 8))(v11, v6);
    }

    return 0;
  }

  sub_258532D7C();
  v14 = (*(v1 + 88))(v5, v0);
  if (v14 != *MEMORY[0x277CD8CD8])
  {
    if (v14 == *MEMORY[0x277CD8CE8])
    {
      return 4;
    }

    (*(v1 + 8))(v5, v0);
    return 0;
  }

  if (sub_258532D5C() == 813132908 && v15 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v16 = sub_258533E2C();

    if (v16)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t MediaContinuitySession.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_258533EEC();
  MEMORY[0x259C81F40](v1);
  return sub_258533F2C();
}

uint64_t MediaContinuitySession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
  v4 = sub_2585329BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaContinuitySession.__allocating_init(usage:endpoint:clientSessionID:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930208, &qword_258537990);
  v226 = *(v6 - 8);
  v227 = v6;
  v7 = *(v226 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v223 = &v206 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
  v224 = *(v10 - 8);
  v225 = v10;
  v11 = *(v224 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v222 = &v206 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930218, &unk_2585379A0);
  v220 = *(v14 - 8);
  v221 = v14;
  v15 = *(v220 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v219 = &v206 - v17;
  v235 = sub_2585329BC();
  v218 = *(v235 - 8);
  v18 = *(v218 + 64);
  v20 = MEMORY[0x28223BE20](v235, v19);
  v217 = &v206 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v234 = &v206 - v23;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931360, &unk_25853CD10);
  v24 = *(*(v207 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v207, v25);
  v206 = &v206 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v228 = &v206 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v215 = &v206 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v35 = *(a1 + 8);
  v250 = *a1;
  v36 = *(a1 + 24);
  v246 = *(a1 + 16);
  v247 = v35;
  v248 = v36;
  v249 = *(a1 + 32);
  v251 = *(a1 + 33);
  v37 = *a2;
  v214 = a2[1];
  v212 = v37;
  v38 = *(a2 + 4);
  v213 = *(a2 + 5);
  v242 = *(a2 + 6);
  v243 = v38;
  v233 = a3;
  v236 = &v206 - v39;
  sub_2584AC3B8(a3, &v206 - v39, &qword_27F931360, &unk_25853CD10);
  v299 = 0;
  v297 = 0u;
  v298 = 0u;
  v40 = type metadata accessor for NetworkBackedControlConnectionVendor();
  v41 = swift_allocObject();
  v296[3] = v40;
  v296[4] = &off_28698FD28;
  v296[0] = v41;
  v237 = type metadata accessor for MediaStreamVendorAVConference();
  v245 = swift_allocObject();
  v241 = type metadata accessor for TimeSyncBackedTimeSynchronizerVendor();
  v244 = swift_allocObject();
  v240 = type metadata accessor for TimeSyncHeartbeatVendor();
  v42 = swift_allocObject();
  v239 = type metadata accessor for FoundationBackedUserDefaultsProvider();
  v43 = swift_allocObject();
  v43[3] = 0xD00000000000001CLL;
  v43[4] = 0x800000025853FF50;
  v44 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v45 = sub_25853341C();
  v46 = [v44 initWithSuiteName_];

  v43[2] = v46;
  v238 = type metadata accessor for TelemetryProviderVendor();
  v47 = swift_allocObject();
  v48 = type metadata accessor for CoexSessionVendor();
  v211 = v48;
  v49 = swift_allocObject();
  v50 = type metadata accessor for NetworkBackedControlConnectionMigrationController();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();

  v53 = sub_2584E7828();
  v294 = v50;
  v295 = &off_28698FC50;
  v293[0] = v53;
  v54 = type metadata accessor for ControlConnectionMigrationManager();
  v210 = v54;
  v55 = swift_allocObject();
  v56 = __swift_mutable_project_boxed_opaque_existential_1(v293, v50);
  v57 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v56, v56);
  v59 = (&v206 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v60 + 16))(v59);
  v61 = sub_2584A53F8(*v59, v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v293);
  v62 = type metadata accessor for DateBackedTimeProvider();
  v209 = v62;
  v63 = swift_allocObject();
  v64 = v237;
  v294 = v237;
  v295 = &off_2869917C8;
  v293[0] = v245;
  v292 = &off_286990C38;
  v291 = v241;
  v290[0] = v244;
  v289 = &off_28698E5F8;
  v288 = v240;
  v231 = v43;
  v232 = v42;
  v287[0] = v42;
  v286 = &off_28698F5C8;
  v285 = v239;
  v284[0] = v43;
  v283 = &off_286990B00;
  v282 = v238;
  v230 = v47;
  v281[0] = v47;
  v280 = &off_28698F4C8;
  v279 = v48;
  v229 = v49;
  v278[0] = v49;
  v277 = &off_28698BFD8;
  v276 = v54;
  v275[0] = v61;
  v274 = &off_28698F1D0;
  v273 = v62;
  v272[0] = v63;
  v270 = &type metadata for NetworkBackedNetworkPathVendor;
  v271 = &off_286990B30;
  v65 = type metadata accessor for MediaContinuitySession();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  v68 = swift_allocObject();
  v69 = __swift_mutable_project_boxed_opaque_existential_1(v293, v64);
  v70 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v69, v69);
  v208 = (&v206 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))();
  v73 = v291;
  v74 = __swift_mutable_project_boxed_opaque_existential_1(v290, v291);
  v75 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v74, v74);
  v77 = (&v206 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77);
  v79 = v288;
  v80 = __swift_mutable_project_boxed_opaque_existential_1(v287, v288);
  v81 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v80, v80);
  v83 = (&v206 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v84 + 16))(v83);
  v85 = v285;
  v86 = __swift_mutable_project_boxed_opaque_existential_1(v284, v285);
  v87 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v86, v86);
  v89 = (&v206 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v90 + 16))(v89);
  v91 = v282;
  v92 = __swift_mutable_project_boxed_opaque_existential_1(v281, v282);
  v93 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v92, v92);
  v95 = (&v206 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v96 + 16))(v95);
  v97 = v279;
  v98 = __swift_mutable_project_boxed_opaque_existential_1(v278, v279);
  v99 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v98, v98);
  v101 = (&v206 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v102 + 16))(v101);
  v103 = v276;
  v104 = __swift_mutable_project_boxed_opaque_existential_1(v275, v276);
  v105 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v104, v104);
  v107 = (&v206 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v108 + 16))(v107);
  v109 = v273;
  v110 = __swift_mutable_project_boxed_opaque_existential_1(v272, v273);
  v111 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v110, v110);
  v113 = (&v206 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v114 + 16))(v113);
  __swift_mutable_project_boxed_opaque_existential_1(v269, v270);
  v115 = *v208;
  v116 = *v77;
  v117 = *v83;
  v118 = *v89;
  v119 = *v95;
  v120 = *v101;
  v121 = *v107;
  v122 = *v113;
  v268[4] = &off_2869917C8;
  v268[3] = v237;
  v268[0] = v115;
  v267[4] = &off_286990C38;
  v267[3] = v241;
  v267[0] = v116;
  v266[4] = &off_28698E5F8;
  v266[3] = v240;
  v266[0] = v117;
  v265[4] = &off_28698F5C8;
  v265[3] = v239;
  v265[0] = v118;
  v264 = &off_286990B00;
  v263 = v238;
  v262[0] = v119;
  v261[4] = &off_28698F4C8;
  v261[3] = v211;
  v261[0] = v120;
  v260[4] = &off_28698BFD8;
  v260[3] = v210;
  v260[0] = v121;
  v259[4] = &off_28698F1D0;
  v259[3] = v209;
  v259[0] = v122;
  v258[3] = &type metadata for NetworkBackedNetworkPathVendor;
  v258[4] = &off_286990B30;
  swift_defaultActor_initialize();
  v241 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
  sub_2585329AC();
  *(v68 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state) = 0;
  v123 = (v68 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint);
  v123[6] = 0;
  *(v123 + 1) = 0u;
  *(v123 + 2) = 0u;
  *v123 = 0u;
  v124 = v68 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  *v124 = 0u;
  *(v124 + 16) = 0u;
  *(v124 + 32) = 0;
  v125 = v68 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer;
  *(v125 + 32) = 0;
  *v125 = 0u;
  *(v125 + 16) = 0u;
  *(v68 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask) = 0;
  v126 = v68 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeat;
  *(v126 + 32) = 0;
  *v126 = 0u;
  *(v126 + 16) = 0u;
  v127 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930258, &qword_2585379B0);
  v128 = swift_allocObject();
  swift_defaultActor_initialize();
  v129 = MEMORY[0x277D84F98];
  *(v128 + 112) = MEMORY[0x277D84F98];
  *(v128 + 120) = v129;
  *(v128 + 136) = 0;
  *(v128 + 144) = 0;
  *(v128 + 128) = v129;
  *(v128 + 152) = 1;
  *(v68 + v127) = v128;
  v130 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_audioStreamManager;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930268, &qword_2585379B8);
  v131 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v131 + 112) = v129;
  *(v131 + 120) = v129;
  *(v131 + 136) = 0;
  *(v131 + 144) = 0;
  *(v131 + 128) = v129;
  *(v131 + 152) = 1;
  *(v68 + v130) = v131;
  v132 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventStream;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930278, &unk_2585379C0);
  (*(*(v133 - 8) + 56))(v68 + v132, 1, 1, v133);
  *(v68 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor) = 0;
  v134 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  (*(*(v135 - 8) + 56))(v68 + v134, 1, 1, v135);
  v136 = v68 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_coexSession;
  *v136 = 0u;
  *(v136 + 16) = 0u;
  *(v136 + 32) = 0;
  v137 = v68 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
  *(v137 + 32) = 0;
  *v137 = 0u;
  *(v137 + 16) = 0u;
  v138 = v68 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo;
  *v138 = 0u;
  *(v138 + 16) = 0u;
  *(v138 + 32) = 0u;
  *(v138 + 48) = 0;
  v139 = v68 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage;
  v140 = v246;
  v141 = v247;
  *v139 = v250;
  *(v139 + 8) = v141;
  *(v139 + 16) = v140;
  *(v139 + 24) = v248;
  *(v139 + 32) = v249;
  *(v139 + 33) = v251;
  swift_beginAccess();
  v142 = *(v124 + 24);
  v216 = v68;
  if (v142)
  {
    if (*(&v298 + 1))
    {
      __swift_assign_boxed_opaque_existential_1(v124, &v297);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v124);
  }

  else if (*(&v298 + 1))
  {
    sub_258464C30(&v297, v124);
    goto LABEL_8;
  }

  v143 = v298;
  *v124 = v297;
  *(v124 + 16) = v143;
  *(v124 + 32) = v299;
LABEL_8:
  swift_endAccess();
  v144 = *v123;
  v145 = v123[1];
  v146 = v123[2];
  v147 = v123[3];
  v148 = v123[4];
  v149 = v123[5];
  v150 = v123[6];
  v151 = v214;
  *v123 = v212;
  *(v123 + 1) = v151;
  v152 = v242;
  v153 = v213;
  v123[4] = v243;
  v123[5] = v153;
  v123[6] = v152;

  sub_25847AC44(v144, v145, v146, v147, v148);
  v154 = v216;
  sub_2584AC3B8(v296, v216 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connectionVendor, &qword_27F9302B8, &unk_2585379D0);
  sub_258464C30(v268, v154 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_mediaStreamVendor);
  sub_258464C30(v267, v154 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendor);
  sub_258464C30(v266, v154 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeatVendor);
  sub_258464C30(v265, v154 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_userDefaultsProvider);
  sub_258464C30(v259, v154 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeProvider);
  v155 = __swift_project_boxed_opaque_existential_1(v262, v263);
  v252[0] = v250;
  v252[1] = v247;
  v252[2] = v246;
  v252[3] = v248;
  v253 = v249;
  v254 = v251;
  v156 = v218;
  v157 = v154 + v241;
  v158 = v234;
  v159 = v235;
  v240 = *(v218 + 16);
  v241 = v218 + 16;
  v240(v234, v157, v235);
  v160 = *v155;
  sub_258502D04(v252, v158, &v255);
  v238 = *(v156 + 8);
  v239 = v156 + 8;
  v238(v158, v159);
  sub_258464C18(&v255, v154 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider);
  sub_258464C30(v261, v154 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_coexSessionVendor);
  v161 = v236;
  v162 = v215;
  sub_2584AC3B8(v236, v215, &qword_27F931360, &unk_25853CD10);
  v163 = *(v156 + 48);
  if (v163(v162, 1, v159) == 1)
  {
    v164 = v217;
    sub_2585329AC();
    v165 = v163(v162, 1, v159);
    v166 = v228;
    if (v165 != 1)
    {
      sub_258465168(v162, &qword_27F931360, &unk_25853CD10);
    }
  }

  else
  {
    v164 = v217;
    (*(v156 + 32))(v217, v162, v159);
    v166 = v228;
  }

  (*(v156 + 32))(v154 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_clientSessionID, v164, v159);
  sub_258464C30(v258, v154 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_networkPathVendor);
  v256 = &type metadata for MediaContinuityKitFeatureFlags;
  v257 = sub_2584A56DC();
  LOBYTE(v255) = 0;
  v167 = sub_2585329EC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v255);

  v168 = v154 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager;
  if (v167)
  {
    sub_258464C30(v260, v168);
  }

  else
  {
    *(v168 + 32) = 0;
    *v168 = 0u;
    *(v168 + 16) = 0u;
  }

  v170 = v226;
  v169 = v227;
  v171 = v223;
  (*(v226 + 104))(v223, *MEMORY[0x277D85778], v227);
  v172 = v219;
  v173 = v222;
  sub_25853369C();
  (*(v170 + 8))(v171, v169);
  (*(v220 + 32))(v154 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_eventStream, v172, v221);
  (*(v224 + 32))(v154 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_eventStreamContinuation, v173, v225);
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v174 = sub_258532A4C();
  v175 = __swift_project_value_buffer(v174, qword_27F93CFA8);
  sub_2584AC3B8(v161, v166, &qword_27F931360, &unk_25853CD10);

  v176 = sub_258532A2C();
  v177 = sub_2585338EC();

  if (os_log_type_enabled(v176, v177))
  {
    v178 = swift_slowAlloc();
    v243 = v175;
    LODWORD(v237) = v177;
    v179 = v178;
    v242 = swift_slowAlloc();
    v252[0] = v242;
    *v179 = 136315650;
    *&v255 = 0;
    *(&v255 + 1) = 0xE000000000000000;

    sub_258533B8C();

    *&v255 = 0xD000000000000017;
    *(&v255 + 1) = 0x8000000258540530;
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v180 = sub_258533DFC();
    MEMORY[0x259C81500](v180);

    MEMORY[0x259C81500](93, 0xE100000000000000);

    v181 = sub_2584713B0(v255, *(&v255 + 1), v252);

    *(v179 + 4) = v181;
    *(v179 + 12) = 2080;
    sub_2584AC3B8(v166, v206, &qword_27F931360, &unk_25853CD10);
    v182 = sub_25853347C();
    v183 = v166;
    v185 = v184;
    v161 = v236;
    sub_258465168(v183, &qword_27F931360, &unk_25853CD10);
    v186 = v182;
    v187 = v235;
    v188 = sub_2584713B0(v186, v185, v252);

    *(v179 + 14) = v188;
    *(v179 + 22) = 2080;
    v189 = v234;
    v240(v234, v154 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_clientSessionID, v187);
    v190 = sub_258533DFC();
    v192 = v191;
    v238(v189, v187);
    v193 = sub_2584713B0(v190, v192, v252);

    *(v179 + 24) = v193;
    _os_log_impl(&dword_25845E000, v176, v237, "%s clientSessionID=%s, effective clientSessionID=%s", v179, 0x20u);
    v194 = v242;
    swift_arrayDestroy();
    MEMORY[0x259C82900](v194, -1, -1);
    MEMORY[0x259C82900](v179, -1, -1);
  }

  else
  {

    sub_258465168(v166, &qword_27F931360, &unk_25853CD10);
  }

  v195 = sub_258532A2C();
  v196 = sub_2585338EC();

  if (os_log_type_enabled(v195, v196))
  {
    v197 = swift_slowAlloc();
    v198 = swift_slowAlloc();
    v252[0] = v198;
    *v197 = 136315394;
    *&v255 = 0;
    *(&v255 + 1) = 0xE000000000000000;

    sub_258533B8C();

    *&v255 = 0xD000000000000017;
    *(&v255 + 1) = 0x8000000258540530;
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v199 = sub_258533DFC();
    MEMORY[0x259C81500](v199);

    MEMORY[0x259C81500](93, 0xE100000000000000);

    v200 = sub_2584713B0(v255, *(&v255 + 1), v252);

    *(v197 + 4) = v200;
    *(v197 + 12) = 2080;
    if (v251)
    {
      if (v246 | v247 | v250 | v248 || v249)
      {
        v205 = v246 | v247 | v248;
        if (v249 || v250 != 1 || v205)
        {
          if (v249 || v250 != 2 || v205)
          {
            v201 = 0xEF676E69726F7272;
            v202 = 0x694D656E6F685069;
            if (!v249 && v250 == 3 && !v205)
            {
              v201 = 0x80000002585402B0;
              v202 = 0xD000000000000010;
            }
          }

          else
          {
            v201 = 0xE700000000000000;
            v202 = 0x72616365646973;
          }
        }

        else
        {
          v201 = 0xE700000000000000;
          v202 = 0x79616C70726961;
        }
      }

      else
      {
        v201 = 0x80000002585402D0;
        v202 = 0xD000000000000011;
      }
    }

    else
    {
      v201 = 0x80000002585402F0;
      v202 = 0xD000000000000012;
    }

    v203 = sub_2584713B0(v202, v201, v252);

    *(v197 + 14) = v203;
    _os_log_impl(&dword_25845E000, v195, v196, "Created %s usage:%s", v197, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v198, -1, -1);
    MEMORY[0x259C82900](v197, -1, -1);
  }

  sub_258465168(v296, &qword_27F9302B8, &unk_2585379D0);
  if (*(&v298 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v297);
  }

  sub_258465168(v161, &qword_27F931360, &unk_25853CD10);
  __swift_destroy_boxed_opaque_existential_1Tm(v258);
  __swift_destroy_boxed_opaque_existential_1Tm(v259);
  __swift_destroy_boxed_opaque_existential_1Tm(v260);
  __swift_destroy_boxed_opaque_existential_1Tm(v261);
  __swift_destroy_boxed_opaque_existential_1Tm(v265);
  __swift_destroy_boxed_opaque_existential_1Tm(v266);
  __swift_destroy_boxed_opaque_existential_1Tm(v267);
  __swift_destroy_boxed_opaque_existential_1Tm(v268);
  __swift_destroy_boxed_opaque_existential_1Tm(v262);
  __swift_destroy_boxed_opaque_existential_1Tm(v269);
  __swift_destroy_boxed_opaque_existential_1Tm(v272);
  __swift_destroy_boxed_opaque_existential_1Tm(v275);
  __swift_destroy_boxed_opaque_existential_1Tm(v278);
  __swift_destroy_boxed_opaque_existential_1Tm(v281);
  __swift_destroy_boxed_opaque_existential_1Tm(v284);
  __swift_destroy_boxed_opaque_existential_1Tm(v287);
  __swift_destroy_boxed_opaque_existential_1Tm(v290);
  __swift_destroy_boxed_opaque_existential_1Tm(v293);

  sub_258465168(v233, &qword_27F931360, &unk_25853CD10);
  return v154;
}

uint64_t sub_25847D624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  return MEMORY[0x2822009F8](sub_25847D648, v3, 0);
}

uint64_t sub_25847D648()
{
  v23 = v0;
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  v0[20] = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (*(v1 + v2))
  {
    sub_2584A5730();
    v3 = swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v0[53] = v3;
    v5 = swift_task_alloc();
    v0[54] = v5;
    *v5 = v0;
    v5[1] = sub_2584804C4;
    v6 = v0[19];

    return sub_258491E14(v3);
  }

  else
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
      v21 = v0[19];
    }

    v8 = sub_258532A4C();
    v0[21] = __swift_project_value_buffer(v8, qword_27F93CFA8);

    v9 = sub_258532A2C();
    v10 = sub_2585338EC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[19];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22[0] = v13;
      *v12 = 136315138;
      sub_258533B8C();

      v22[1] = 0xD000000000000017;
      v22[2] = 0x8000000258540530;
      sub_2585329BC();
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v14 = sub_258533DFC();
      MEMORY[0x259C81500](v14);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v15 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v22);

      *(v12 + 4) = v15;
      _os_log_impl(&dword_25845E000, v9, v10, "%s activating", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x259C82900](v13, -1, -1);
      MEMORY[0x259C82900](v12, -1, -1);
    }

    v16 = v0[19];
    *(v1 + v2) = 1;
    sub_25853293C();
    v0[22] = v17;
    v18 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider;
    v0[23] = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider;
    v19 = __swift_project_boxed_opaque_existential_1((v16 + v18), *(v16 + v18 + 24));
    v20 = *v19;
    v0[24] = *v19;

    return MEMORY[0x2822009F8](sub_25847D99C, v20, 0);
  }
}

uint64_t sub_25847D99C()
{
  v1 = v0[24];
  v2 = OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_state;
  v0[25] = OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_state;
  if (*(v1 + v2))
  {
    sub_2584A5784();
    v3 = swift_allocError();
    *v4 = 0;
    swift_willThrow();
    v0[35] = v3;
    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_25847E594;
    v6 = v0[24];

    return sub_2584FCF70(v3);
  }

  else
  {
    *(v1 + v2) = 1;
    sub_2584FD274(v1 + OBJC_IVAR____TtC18MediaContinuityKit17TelemetryProvider_eventStream);
    v8 = swift_task_alloc();
    v0[26] = v8;
    *v8 = v0;
    v8[1] = sub_25847DB04;
    v9 = v0[24];

    return sub_2585008D0();
  }
}

uint64_t sub_25847DB04()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2[35] = v0;
    v5 = swift_task_alloc();
    v2[36] = v5;
    *v5 = v4;
    v5[1] = sub_25847E594;
    v6 = v0;
    v7 = v2[24];

    return sub_2584FCF70(v6);
  }

  else
  {
    v9 = v2[24];

    return MEMORY[0x2822009F8](sub_25847DC8C, v9, 0);
  }
}

uint64_t sub_25847DC8C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[24];
  v5 = *(v4 + 120);
  v3[28] = v5;
  v6 = v5[2];
  v3[29] = v6;
  if (!v6)
  {
    v3[30] = v3[27];
    a2 = v3[19];
    *(v4 + v3[25]) = 2;
    a1 = sub_25847DE44;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v3[31] = 0;
  if (!v5[2])
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v3[32] = v5[4];
  v7 = v5[5];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);
  swift_unknownObjectRetain();
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v3[33] = v11;
  *v11 = v3;
  v11[1] = sub_25847E128;

  return v13(ObjectType, v7);
}

uint64_t sub_25847DE44()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  if (*(v2 + v1) == 1)
  {
    v3 = (v2 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint);
    *(v0 + 16) = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32) == 0;
    v4 = (v2 + *(v0 + 184));
    *(v0 + 24) = *(v0 + 176);
    *(v0 + 65) = 0;
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v5 = off_286990988;
    *(v0 + 296) = off_286990988;
    *(v0 + 304) = &off_286990988 & 0xFFFFFFFFFFFFLL | 0x9168000000000000;
    *(v0 + 312) = type metadata accessor for TelemetryProvider();
    v5(v0 + 16);
    sub_2584A57D8(v0 + 16);
    v6 = v3[4];
    v7 = *(v0 + 240);
    if (!v6)
    {
      goto LABEL_4;
    }

    v8 = v3[6];
    v23 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v12 = *v3;
    v11 = v3[1];
    v13 = *(v0 + 152);

    sub_258493BD8(1, 0, 0, v12, v11, v10);
    v14 = v7;
    sub_25847AC44(v12, v11, v10, v9, v6);
    if (!v7)
    {
LABEL_4:
      *(v0 + 320) = v7;
      v15 = *(*(v0 + 152) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager);
      if (*(v0 + 136))
      {
        *(v0 + 328) = v15;

        return MEMORY[0x2822009F8](sub_25847E750, v15, 0);
      }

      else
      {
        v20 = swift_task_alloc();
        *(v0 + 336) = v20;
        *v20 = v0;
        v20[1] = sub_25847E8E0;
        v21 = *(v0 + 152);

        return sub_258482348(v15);
      }
    }
  }

  else
  {
    sub_2584A5730();
    v14 = swift_allocError();
    if (*(v2 + v1) == 3)
    {
      v17 = 2;
    }

    else
    {
      v17 = 3;
    }

    *v16 = v17;
    swift_willThrow();
  }

  *(v0 + 424) = v14;
  v18 = swift_task_alloc();
  *(v0 + 432) = v18;
  *v18 = v0;
  v18[1] = sub_2584804C4;
  v19 = *(v0 + 152);

  return sub_258491E14(v14);
}

uint64_t sub_25847E128()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_25847E4F0;
  }

  else
  {
    v6 = sub_25847E254;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25847E254()
{
  v1 = *(v0[24] + v0[25]);
  if (v1 != 1)
  {
    if (v1 == 3)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    v3 = v0[32];
    sub_2584A5784();
    v4 = swift_allocError();
    *v5 = v2;
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[35] = v4;
    v6 = swift_task_alloc();
    v0[36] = v6;
    *v6 = v0;
    v6[1] = sub_25847E594;
    v7 = v0[24];

    return sub_2584FCF70(v4);
  }

  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[29];
  v12 = swift_unknownObjectRelease();
  if (v10 + 1 == v11)
  {
    v0[30] = v0[34];
    v13 = v0[19];
    *(v0[24] + v0[25]) = 2;
    v12 = sub_25847DE44;
    v14 = 0;

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  v15 = v0[31] + 1;
  v0[31] = v15;
  v16 = v0[28];
  if (v15 >= *(v16 + 16))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  v17 = v16 + 16 * v15;
  v0[32] = *(v17 + 32);
  v18 = *(v17 + 40);
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 16);
  swift_unknownObjectRetain();
  v23 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  v0[33] = v22;
  *v22 = v0;
  v22[1] = sub_25847E128;

  return v23(ObjectType, v18);
}

uint64_t sub_25847E4F0()
{
  v1 = v0[32];
  swift_unknownObjectRelease();
  v2 = v0[34];
  v0[35] = v2;
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_25847E594;
  v4 = v0[24];

  return sub_2584FCF70(v2);
}

uint64_t sub_25847E594()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25847E6A4, v2, 0);
}

uint64_t sub_25847E6A4()
{
  v1 = v0[35];
  swift_willThrow();
  v2 = v0[35];
  v0[53] = v2;
  v3 = swift_task_alloc();
  v0[54] = v3;
  *v3 = v0;
  v3[1] = sub_2584804C4;
  v4 = v0[19];

  return sub_258491E14(v2);
}

uint64_t sub_25847E750()
{
  v2 = v0[40];
  v1 = v0[41];
  sub_25849F65C(v0[17]);
  if (v2)
  {
    v0[53] = v2;
    v3 = swift_task_alloc();
    v0[54] = v3;
    *v3 = v0;
    v3[1] = sub_2584804C4;
    v4 = v0[19];

    return sub_258491E14(v2);
  }

  else
  {
    v6 = v0[19];

    return MEMORY[0x2822009F8](sub_25847E83C, v6, 0);
  }
}

uint64_t sub_25847E83C()
{
  v1 = *(*(v0 + 152) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager);
  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  *v2 = v0;
  v2[1] = sub_25847E8E0;
  v3 = *(v0 + 152);

  return sub_258482348(v1);
}

uint64_t sub_25847E8E0()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2[53] = v0;
    v5 = swift_task_alloc();
    v2[54] = v5;
    *v5 = v4;
    v5[1] = sub_2584804C4;
    v6 = v0;
    v7 = v2[19];

    return sub_258491E14(v6);
  }

  else
  {
    v9 = v2[19];

    return MEMORY[0x2822009F8](sub_25847EA68, v9, 0);
  }
}

uint64_t sub_25847EA68()
{
  v1 = v0[19];
  v2 = v0[20];
  if (*(v1 + v2) == 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_audioStreamManager);
    if (v0[18])
    {
      v0[44] = v3;

      return MEMORY[0x2822009F8](sub_25847EC18, v3, 0);
    }

    else
    {
      v9 = swift_task_alloc();
      v0[45] = v9;
      *v9 = v0;
      v9[1] = sub_25847EDA8;
      v10 = v0[19];

      return sub_2584825C8(v3);
    }
  }

  else
  {
    sub_2584A5730();
    v5 = swift_allocError();
    if (*(v1 + v2) == 3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    *v4 = v6;
    swift_willThrow();
    v0[53] = v5;
    v7 = swift_task_alloc();
    v0[54] = v7;
    *v7 = v0;
    v7[1] = sub_2584804C4;
    v8 = v0[19];

    return sub_258491E14(v5);
  }
}

uint64_t sub_25847EC18()
{
  v2 = v0[43];
  v1 = v0[44];
  sub_25849F794(v0[18]);
  if (v2)
  {
    v0[53] = v2;
    v3 = swift_task_alloc();
    v0[54] = v3;
    *v3 = v0;
    v3[1] = sub_2584804C4;
    v4 = v0[19];

    return sub_258491E14(v2);
  }

  else
  {
    v6 = v0[19];

    return MEMORY[0x2822009F8](sub_25847ED04, v6, 0);
  }
}

uint64_t sub_25847ED04()
{
  v1 = *(*(v0 + 152) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_audioStreamManager);
  v2 = swift_task_alloc();
  *(v0 + 360) = v2;
  *v2 = v0;
  v2[1] = sub_25847EDA8;
  v3 = *(v0 + 152);

  return sub_2584825C8(v1);
}

uint64_t sub_25847EDA8()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;

  if (v0)
  {
    v2[53] = v0;
    v5 = swift_task_alloc();
    v2[54] = v5;
    *v5 = v4;
    v5[1] = sub_2584804C4;
    v6 = v0;
    v7 = v2[19];

    return sub_258491E14(v6);
  }

  else
  {
    v9 = v2[19];

    return MEMORY[0x2822009F8](sub_25847EF2C, v9, 0);
  }
}

uint64_t sub_25847EF2C()
{
  v2 = v0[19];
  v1 = v0[20];
  if (*(v2 + v1) == 1)
  {
    v3 = swift_task_alloc();
    v0[46] = v3;
    *v3 = v0;
    v3[1] = sub_25847F084;
    v4 = v0[19];

    return sub_25848B804();
  }

  else
  {
    sub_2584A5730();
    v7 = swift_allocError();
    if (*(v2 + v1) == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    *v6 = v8;
    swift_willThrow();
    v0[53] = v7;
    v9 = swift_task_alloc();
    v0[54] = v9;
    *v9 = v0;
    v9[1] = sub_2584804C4;
    v10 = v0[19];

    return sub_258491E14(v7);
  }
}

uint64_t sub_25847F084()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;

  if (v0)
  {
    v2[53] = v0;
    v5 = swift_task_alloc();
    v2[54] = v5;
    *v5 = v4;
    v5[1] = sub_2584804C4;
    v6 = v0;
    v7 = v2[19];

    return sub_258491E14(v6);
  }

  else
  {
    v9 = v2[19];

    return MEMORY[0x2822009F8](sub_25847F208, v9, 0);
  }
}

uint64_t sub_25847F208()
{
  v2 = v0[19];
  v1 = v0[20];
  if (*(v2 + v1) == 1)
  {
    v3 = swift_task_alloc();
    v0[47] = v3;
    *v3 = v0;
    v3[1] = sub_25847F360;
    v4 = v0[19];

    return sub_25849307C();
  }

  else
  {
    sub_2584A5730();
    v7 = swift_allocError();
    if (*(v2 + v1) == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    *v6 = v8;
    swift_willThrow();
    v0[53] = v7;
    v9 = swift_task_alloc();
    v0[54] = v9;
    *v9 = v0;
    v9[1] = sub_2584804C4;
    v10 = v0[19];

    return sub_258491E14(v7);
  }
}

uint64_t sub_25847F360()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;

  if (v0)
  {
    v2[53] = v0;
    v5 = swift_task_alloc();
    v2[54] = v5;
    *v5 = v4;
    v5[1] = sub_2584804C4;
    v6 = v0;
    v7 = v2[19];

    return sub_258491E14(v6);
  }

  else
  {
    v9 = v2[19];

    return MEMORY[0x2822009F8](sub_25847F4E4, v9, 0);
  }
}

uint64_t sub_25847F4E4()
{
  v2 = v0[19];
  v1 = v0[20];
  if (*(v2 + v1) == 1)
  {
    v3 = swift_task_alloc();
    v0[48] = v3;
    *v3 = v0;
    v3[1] = sub_25847F63C;
    v4 = v0[19];

    return sub_25848C2E4();
  }

  else
  {
    sub_2584A5730();
    v7 = swift_allocError();
    if (*(v2 + v1) == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    *v6 = v8;
    swift_willThrow();
    v0[53] = v7;
    v9 = swift_task_alloc();
    v0[54] = v9;
    *v9 = v0;
    v9[1] = sub_2584804C4;
    v10 = v0[19];

    return sub_258491E14(v7);
  }
}

uint64_t sub_25847F63C()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;

  if (v0)
  {
    v2[53] = v0;
    v5 = swift_task_alloc();
    v2[54] = v5;
    *v5 = v4;
    v5[1] = sub_2584804C4;
    v6 = v0;
    v7 = v2[19];

    return sub_258491E14(v6);
  }

  else
  {
    v9 = v2[19];

    return MEMORY[0x2822009F8](sub_25847F7C0, v9, 0);
  }
}

uint64_t sub_25847F7C0()
{
  v2 = v0[19];
  v1 = v0[20];
  if (*(v2 + v1) == 1)
  {
    v3 = swift_task_alloc();
    v0[49] = v3;
    *v3 = v0;
    v3[1] = sub_25847F918;
    v4 = v0[19];

    return sub_25848CBA8();
  }

  else
  {
    sub_2584A5730();
    v7 = swift_allocError();
    if (*(v2 + v1) == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    *v6 = v8;
    swift_willThrow();
    v0[53] = v7;
    v9 = swift_task_alloc();
    v0[54] = v9;
    *v9 = v0;
    v9[1] = sub_2584804C4;
    v10 = v0[19];

    return sub_258491E14(v7);
  }
}

uint64_t sub_25847F918()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;

  if (v0)
  {
    v2[53] = v0;
    v5 = swift_task_alloc();
    v2[54] = v5;
    *v5 = v4;
    v5[1] = sub_2584804C4;
    v6 = v0;
    v7 = v2[19];

    return sub_258491E14(v6);
  }

  else
  {
    v9 = v2[19];

    return MEMORY[0x2822009F8](sub_25847FA9C, v9, 0);
  }
}

uint64_t sub_25847FA9C()
{
  if (*(v0[19] + v0[20]) == 1)
  {
    sub_2584AC2F0(&qword_27F930338, type metadata accessor for MediaContinuitySession);
    v1 = *(MEMORY[0x277D85A40] + 4);
    v2 = swift_task_alloc();
    v0[50] = v2;
    *v2 = v0;
    v2[1] = sub_25847FC64;
    v3 = v0[19];

    return MEMORY[0x2822008A0]();
  }

  else
  {
    sub_2584A5730();
    v4 = swift_allocError();
    *v5 = 2;
    swift_willThrow();
    v0[53] = v4;
    v6 = swift_task_alloc();
    v0[54] = v6;
    *v6 = v0;
    v6[1] = sub_2584804C4;
    v7 = v0[19];

    return sub_258491E14(v4);
  }
}

uint64_t sub_25847FC64()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_25847FEF8;
  }

  else
  {
    v6 = sub_25847FD90;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25847FD90()
{
  v1 = v0[19];
  v2 = v0[20];
  if (*(v1 + v2) == 1)
  {
    v3 = v0[51];
    sub_258483754();
    v4 = v3;
    if (!v3)
    {
      v5 = swift_task_alloc();
      v0[52] = v5;
      *v5 = v0;
      v5[1] = sub_25847FF94;
      v6 = v0[19];

      return sub_258483968();
    }
  }

  else
  {
    sub_2584A5730();
    v4 = swift_allocError();
    if (*(v1 + v2) == 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    *v8 = v9;
    swift_willThrow();
  }

  v0[53] = v4;
  v10 = swift_task_alloc();
  v0[54] = v10;
  *v10 = v0;
  v10[1] = sub_2584804C4;
  v11 = v0[19];

  return sub_258491E14(v4);
}

uint64_t sub_25847FEF8()
{
  v1 = v0[51];
  v0[53] = v1;
  v2 = swift_task_alloc();
  v0[54] = v2;
  *v2 = v0;
  v2[1] = sub_2584804C4;
  v3 = v0[19];

  return sub_258491E14(v1);
}

uint64_t sub_25847FF94()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584800A4, v2, 0);
}

uint64_t sub_2584800A4()
{
  v38 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  if (*(v2 + v1) != 1)
  {
    sub_2584A5730();
    v28 = swift_allocError();
    v30 = *(v2 + v1);
LABEL_12:
    if (v30 == 3)
    {
      v31 = 2;
    }

    else
    {
      v31 = 3;
    }

    goto LABEL_15;
  }

  v3 = v2 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo;
  v4 = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 8);
  if (v4)
  {
    v6 = *(v0 + 304);
    v5 = *(v0 + 312);
    v7 = *(v0 + 296);
    v8 = (v2 + *(v0 + 184));
    v9 = *(v3 + 48);
    v10 = *(v3 + 32);
    v11 = *(v3 + 40);
    v12 = *(v3 + 16);
    v13 = *(v3 + 24);
    *(v0 + 72) = *v3;
    *(v0 + 80) = v4;
    *(v0 + 88) = v12;
    *(v0 + 96) = v13;
    *(v0 + 104) = v10;
    *(v0 + 112) = v11;
    *(v0 + 120) = v9;
    *(v0 + 121) = 1;
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);

    v7(v0 + 72, v5, &off_286990978);
    sub_2584A57D8(v0 + 72);
    if (*(v2 + v1) == 1)
    {
      v14 = *(v0 + 168);
      *(*(v0 + 152) + *(v0 + 160)) = 2;

      v15 = sub_258532A2C();
      v16 = sub_2585338EC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = *(v0 + 152);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v37[0] = v19;
        *v18 = 136315138;
        sub_258533B8C();

        v37[1] = 0xD000000000000017;
        v37[2] = 0x8000000258540530;
        sub_2585329BC();
        sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
        v20 = sub_258533DFC();
        MEMORY[0x259C81500](v20);

        MEMORY[0x259C81500](93, 0xE100000000000000);
        v21 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v37);

        *(v18 + 4) = v21;
        _os_log_impl(&dword_25845E000, v15, v16, "%s activated", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x259C82900](v19, -1, -1);
        MEMORY[0x259C82900](v18, -1, -1);
      }

      v22 = *(v0 + 152);
      v23 = *(v0 + 128);
      v24 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_eventStream;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930218, &unk_2585379A0);
      (*(*(v25 - 8) + 16))(v23, v22 + v24, v25);
      v26 = *(v0 + 8);

      return v26();
    }

    v32 = *(v0 + 152);
    v33 = *(v0 + 160);
    sub_2584A5730();
    v28 = swift_allocError();
    v30 = *(v32 + v33);
    goto LABEL_12;
  }

  sub_2584A5730();
  v28 = swift_allocError();
  v31 = 18;
LABEL_15:
  *v29 = v31;
  v34 = v28;
  swift_willThrow();
  *(v0 + 424) = v34;
  v35 = swift_task_alloc();
  *(v0 + 432) = v35;
  *v35 = v0;
  v35[1] = sub_2584804C4;
  v36 = *(v0 + 152);

  return sub_258491E14(v34);
}

uint64_t sub_2584804C4()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584805D4, v2, 0);
}

uint64_t sub_2584805D4()
{
  v1 = *(v0 + 424);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 424);

  return v2();
}

uint64_t sub_258480640()
{
  v1[9] = v0;
  v2 = type metadata accessor for SessionMessage();
  v1[10] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584806D4, v0, 0);
}

uint64_t sub_2584806D4()
{
  v24 = v0;
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state) > 2u)
  {
    v20 = *(v0 + 88);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v3 = *(v0 + 72);
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
      v22 = *(v0 + 72);
    }

    v4 = sub_258532A4C();
    *(v0 + 96) = __swift_project_value_buffer(v4, qword_27F93CFA8);

    v5 = sub_258532A2C();
    v6 = sub_2585338EC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 72);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23[0] = v9;
      *v8 = 136315138;
      sub_258533B8C();

      v23[1] = 0xD000000000000017;
      v23[2] = 0x8000000258540530;
      sub_2585329BC();
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v10 = sub_258533DFC();
      MEMORY[0x259C81500](v10);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v11 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v23);

      *(v8 + 4) = v11;
      _os_log_impl(&dword_25845E000, v5, v6, "%s invalidating", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x259C82900](v9, -1, -1);
      MEMORY[0x259C82900](v8, -1, -1);
    }

    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    v14 = *(v0 + 72);
    *(v1 + v2) = 3;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 2048;
    *(v0 + 16) = 0u;
    __swift_project_boxed_opaque_existential_1((v14 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(v14 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
    v15 = off_286990988;
    type metadata accessor for TelemetryProvider();
    v15(v0 + 16);
    sub_2584A57D8(v0 + 16);
    *v12 = 0;
    swift_storeEnumTagMultiPayload();
    v16 = swift_task_alloc();
    *(v0 + 104) = v16;
    *v16 = v0;
    v16[1] = sub_258480A54;
    v17 = *(v0 + 88);
    v18 = *(v0 + 72);

    return sub_25849279C(v17);
  }
}

uint64_t sub_258480A54()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 72);
  v5 = *v0;

  sub_2584ABB80(v2, type metadata accessor for SessionMessage);

  return MEMORY[0x2822009F8](sub_258480B94, v3, 0);
}

uint64_t sub_258480B94()
{
  sub_2584A5730();
  v1 = swift_allocError();
  v0[14] = v1;
  *v2 = 2;
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_258480C54;
  v4 = v0[9];

  return sub_258490178(v1);
}

uint64_t sub_258480C54()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_258480D80, v3, 0);
}

uint64_t sub_258480D80()
{
  v14 = v0;
  v1 = v0[12];
  v2 = v0[9];

  v3 = sub_258532A2C();
  v4 = sub_2585338EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315138;
    sub_258533B8C();

    v13[1] = 0xD000000000000017;
    v13[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v8 = sub_258533DFC();
    MEMORY[0x259C81500](v8);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v13);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s invalidated", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_258480F88(uint64_t a1)
{
  *(v2 + 344) = v1;
  v3 = *(a1 + 16);
  *(v2 + 352) = *a1;
  *(v2 + 368) = v3;
  *(v2 + 313) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_258480FB8, v1, 0);
}

uint64_t sub_258480FB8()
{
  v1 = *(v0 + 344);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  *(v0 + 384) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (*(v1 + v2) == 2)
  {
    v3 = v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
    swift_beginAccess();
    if (*(v3 + 24))
    {
      sub_258464C30(v3, v0 + 200);
      if (*(v0 + 224))
      {
LABEL_4:
        sub_258464C18((v0 + 200), v0 + 160);
        v4 = *(v0 + 184);
        v5 = *(v0 + 192);
        __swift_project_boxed_opaque_existential_1((v0 + 160), v4);
        v6 = *(v5 + 96);
        v15 = (v6 + *v6);
        v7 = v6[1];
        v8 = swift_task_alloc();
        *(v0 + 392) = v8;
        *v8 = v0;
        v8[1] = sub_2584811D0;

        return v15(v0 + 240, v4, v5);
      }
    }

    else
    {
      v11 = *v3;
      v12 = *(v3 + 16);
      *(v0 + 232) = *(v3 + 32);
      *(v0 + 216) = v12;
      *(v0 + 200) = v11;
      if (*(v0 + 224))
      {
        goto LABEL_4;
      }
    }

    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  sub_2584A5730();
  swift_allocError();
  *v13 = v10;
  swift_willThrow();
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2584811D0()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 344);
  if (v0)
  {
    v6 = sub_2584816C4;
  }

  else
  {
    v6 = sub_2584812FC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584812FC()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);
  if (*(v2 + v1) == 2)
  {
    v3 = *(v0 + 313);
    v4 = *(v0 + 368);
    *(v0 + 280) = *(v0 + 352);
    *(v0 + 296) = v4;
    *(v0 + 312) = v3;
    *(v0 + 16) = 2;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0;
    v5 = swift_task_alloc();
    *(v0 + 408) = v5;
    *v5 = v0;
    v5[1] = sub_258481470;
    v6 = *(v0 + 344);

    return sub_25848A9E4(v0 + 280, v0 + 240, (v0 + 16));
  }

  else
  {
    sub_2584A5730();
    swift_allocError();
    if (*(v2 + v1) == 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    *v8 = v9;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_258481470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  v7[14] = v5;
  v7[15] = a1;
  v7[16] = a2;
  v7[17] = a3;
  v7[18] = a4;
  v7[19] = v4;
  v8 = v6[51];
  v12 = *v5;
  v7[52] = a1;
  v7[53] = v4;

  v9 = v7[43];
  if (v4)
  {
    v10 = sub_258481728;
  }

  else
  {
    v10 = sub_258481594;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_258481594()
{
  v1 = v0[48];
  v2 = v0[43];
  if (*(v2 + v1) == 2)
  {
    v3 = v0[18];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
    v4 = v0[1];
    v5 = v0[52];

    return v4(v5, v3);
  }

  else
  {
    v7 = v0[52];
    sub_2584A5730();
    swift_allocError();
    if (*(v2 + v1) == 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    *v8 = v9;
    swift_willThrow();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2584816C4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  v1 = v0[50];
  v2 = v0[1];

  return v2();
}

uint64_t sub_258481728()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  v1 = v0[53];
  v2 = v0[1];

  return v2();
}

uint64_t sub_258481794(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 320) = v1;
  *(v2 + 328) = v3;
  *(v2 + 313) = *(a1 + 8);
  return MEMORY[0x2822009F8](sub_2584817C0, v1, 0);
}

uint64_t sub_2584817C0()
{
  v1 = *(v0 + 320);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  *(v0 + 336) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (*(v1 + v2) == 2)
  {
    v3 = v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
    swift_beginAccess();
    if (*(v3 + 24))
    {
      sub_258464C30(v3, v0 + 200);
      if (*(v0 + 224))
      {
LABEL_4:
        sub_258464C18((v0 + 200), v0 + 160);
        v4 = *(v0 + 184);
        v5 = *(v0 + 192);
        __swift_project_boxed_opaque_existential_1((v0 + 160), v4);
        v6 = *(v5 + 96);
        v15 = (v6 + *v6);
        v7 = v6[1];
        v8 = swift_task_alloc();
        *(v0 + 344) = v8;
        *v8 = v0;
        v8[1] = sub_2584819D8;

        return v15(v0 + 240, v4, v5);
      }
    }

    else
    {
      v11 = *v3;
      v12 = *(v3 + 16);
      *(v0 + 232) = *(v3 + 32);
      *(v0 + 216) = v12;
      *(v0 + 200) = v11;
      if (*(v0 + 224))
      {
        goto LABEL_4;
      }
    }

    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  sub_2584A5730();
  swift_allocError();
  *v13 = v10;
  swift_willThrow();
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2584819D8()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = sub_258481ECC;
  }

  else
  {
    v6 = sub_258481B04;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258481B04()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  if (*(v2 + v1) == 2)
  {
    v3 = *(v0 + 313);
    *(v0 + 304) = *(v0 + 328);
    *(v0 + 312) = v3;
    *(v0 + 16) = 2;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0;
    v4 = swift_task_alloc();
    *(v0 + 360) = v4;
    *v4 = v0;
    v4[1] = sub_258481C78;
    v5 = *(v0 + 320);

    return sub_25848B110((v0 + 304), v0 + 240, (v0 + 16));
  }

  else
  {
    sub_2584A5730();
    swift_allocError();
    if (*(v2 + v1) == 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    *v7 = v8;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_258481C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  v7[14] = v5;
  v7[15] = a1;
  v7[16] = a2;
  v7[17] = a3;
  v7[18] = a4;
  v7[19] = v4;
  v8 = v6[45];
  v12 = *v5;
  v7[46] = a1;
  v7[47] = v4;

  v9 = v7[40];
  if (v4)
  {
    v10 = sub_258481F30;
  }

  else
  {
    v10 = sub_258481D9C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_258481D9C()
{
  v1 = v0[42];
  v2 = v0[40];
  if (*(v2 + v1) == 2)
  {
    v3 = v0[16];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
    v4 = v0[1];
    v5 = v0[46];

    return v4(v5, v3);
  }

  else
  {
    v7 = v0[46];
    sub_2584A5730();
    swift_allocError();
    if (*(v2 + v1) == 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    *v8 = v9;
    swift_willThrow();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_258481ECC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  v1 = v0[44];
  v2 = v0[1];

  return v2();
}

uint64_t sub_258481F30()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  v1 = v0[47];
  v2 = v0[1];

  return v2();
}

uint64_t sub_258481FBC()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  v0[8] = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (*(v1 + v2) > 2u)
  {
    sub_2584A5730();
    swift_allocError();
    if (*(v1 + v2) == 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    *v6 = v7;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_2584820E8;
    v4 = v0[7];

    return sub_258482A88((v0 + 2));
  }
}

uint64_t sub_2584820E8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_258482330;
  }

  else
  {
    v6 = sub_258482214;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258482214()
{
  v2 = v0[7];
  v1 = v0[8];
  if (*(v2 + v1) > 2u)
  {
    sub_2584A5730();
    swift_allocError();
    if (*(v2 + v1) == 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    *v6 = v7;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v8 = v0[1];

    return v8();
  }

  else
  {
    v3 = [*(*__swift_project_boxed_opaque_existential_1(v0 + 2 v0[5]) + 24)];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_258482348(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_258482368, v1, 0);
}

uint64_t sub_258482368()
{
  sub_2584AC3B8(*(v0 + 104) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager, v0 + 56, &qword_27F930360, &unk_258537A90);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_258464C18((v0 + 56), v0 + 16);
    sub_258464C30(v0 + 16, v0 + 56);
    v2 = swift_allocObject();
    *(v0 + 112) = v2;
    sub_258464C18((v0 + 56), v2 + 16);

    return MEMORY[0x2822009F8](sub_258482488, v1, 0);
  }

  else
  {
    sub_258465168(v0 + 56, &qword_27F930360, &unk_258537A90);
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_258482488()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[14];
  if (*(v1 + 152) == 1)
  {
    v4 = *(v1 + 136);
    v5 = *(v1 + 144);
    *(v1 + 136) = &unk_258538398;
    *(v1 + 144) = v3;

    sub_258464B24(v4);

    v6 = sub_2584AC7E4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303D0, &unk_258537F90);
    sub_2584ABBE0(&qword_27F9303D8, &qword_27F9303D0, &unk_258537F90);
    v0[15] = swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v6 = sub_2584AC7C8;
  }

  return MEMORY[0x2822009F8](v6, v2, 0);
}

uint64_t sub_2584825C8(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_2584825E8, v1, 0);
}

uint64_t sub_2584825E8()
{
  sub_2584AC3B8(*(v0 + 104) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager, v0 + 56, &qword_27F930360, &unk_258537A90);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_258464C18((v0 + 56), v0 + 16);
    sub_258464C30(v0 + 16, v0 + 56);
    v2 = swift_allocObject();
    *(v0 + 112) = v2;
    sub_258464C18((v0 + 56), v2 + 16);

    return MEMORY[0x2822009F8](sub_258482708, v1, 0);
  }

  else
  {
    sub_258465168(v0 + 56, &qword_27F930360, &unk_258537A90);
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_258482708()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[14];
  if (*(v1 + 152) == 1)
  {
    v4 = *(v1 + 136);
    v5 = *(v1 + 144);
    *(v1 + 136) = &unk_258538388;
    *(v1 + 144) = v3;

    sub_258464B24(v4);

    v6 = sub_258482848;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303C0, &qword_258537F88);
    sub_2584ABBE0(&qword_27F9303C8, &qword_27F9303C0, &qword_258537F88);
    v0[15] = swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v6 = sub_2584828AC;
  }

  return MEMORY[0x2822009F8](v6, v2, 0);
}

uint64_t sub_258482848()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584828AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[15];

  return v1();
}

uint64_t sub_258482930()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2584AC7AC;

  return sub_25846287C();
}

uint64_t sub_2584829EC()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_258463A2C;

  return sub_25846287C();
}

uint64_t sub_258482A88(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = sub_258533C6C();
  v2[30] = v3;
  v4 = *(v3 - 8);
  v2[31] = v4;
  v2[32] = *(v4 + 64);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258482BA0, v1, 0);
}

uint64_t sub_258482BA0()
{
  v1 = *(v0 + 232);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer;
  *(v0 + 296) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v2, v0 + 56, &qword_27F930340, &qword_258537A68);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 224);
    sub_258464C18((v0 + 56), v0 + 16);
    sub_258464C18((v0 + 16), v3);
    v5 = *(v0 + 280);
    v4 = *(v0 + 288);
    v7 = *(v0 + 264);
    v6 = *(v0 + 272);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 232);
    sub_258465168(v0 + 56, &qword_27F930340, &qword_258537A68);
    v11 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask;
    v12 = *(v10 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask);
    *(v0 + 304) = v12;
    if (v12)
    {
      v13 = *(MEMORY[0x277D857C8] + 4);

      v14 = swift_task_alloc();
      *(v0 + 312) = v14;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930198, &qword_258537910);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      *v14 = v0;
      v14[1] = sub_258482FDC;
      v17 = *(v0 + 224);
      v18 = MEMORY[0x277D84950];
      v19 = v12;
      v20 = v15;
    }

    else
    {
      v22 = *(v0 + 280);
      v21 = *(v0 + 288);
      v24 = *(v0 + 264);
      v23 = *(v0 + 272);
      v25 = *(v0 + 248);
      v43 = *(v0 + 256);
      v26 = *(v0 + 240);
      v41 = v22;
      v42 = *(v0 + 232);
      v27 = sub_25853368C();
      v44 = v21;
      (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
      v28 = sub_258533F6C();
      v39 = v29;
      v40 = v28;

      sub_258533C5C();
      sub_2584AC3B8(v21, v22, &qword_27F92FB78, &qword_2585368F0);
      v30 = v24;
      (*(v25 + 16))(v24, v23, v26);
      v31 = (*(v25 + 80) + 48) & ~*(v25 + 80);
      v32 = swift_allocObject();
      *(v32 + 2) = 0;
      *(v32 + 3) = 0;
      *(v32 + 4) = v40;
      *(v32 + 5) = v39;
      (*(v25 + 32))(&v32[v31], v30, v26);
      v33 = &v32[(v43 + v31 + 7) & 0xFFFFFFFFFFFFFFF8];
      *v33 = &unk_258538160;
      *(v33 + 1) = v42;
      v34 = sub_2584771D0(0, 0, v41, &unk_258538170, v32);
      *(v0 + 328) = v34;
      (*(v25 + 8))(v23, v26);
      sub_258465168(v44, &qword_27F92FB78, &qword_2585368F0);
      v35 = *(v10 + v11);
      *(v10 + v11) = v34;

      v36 = *(MEMORY[0x277D857C8] + 4);
      v37 = swift_task_alloc();
      *(v0 + 336) = v37;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930198, &qword_258537910);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      *v37 = v0;
      v37[1] = sub_258483198;
      v18 = MEMORY[0x277D84950];
      v17 = v0 + 96;
      v19 = v34;
      v20 = v38;
    }

    return MEMORY[0x282200430](v17, v19, v20, v16, v18);
  }
}

uint64_t sub_258482FDC()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    v6 = sub_25848340C;
  }

  else
  {
    v6 = sub_258483108;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258483108()
{
  v1 = v0[38];

  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[33];
  v4 = v0[34];

  v6 = v0[1];

  return v6();
}

uint64_t sub_258483198()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    v6 = sub_25848349C;
  }

  else
  {
    v6 = sub_2584832C4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584832C4()
{
  v1 = v0[43];
  v2 = v0[37];
  v3 = v0[29];
  sub_258464C30((v0 + 12), (v0 + 17));
  swift_beginAccess();
  sub_2584AC5D0((v0 + 17), v3 + v2, &qword_27F930340, &qword_258537A68);
  swift_endAccess();
  sub_258483754();
  v4 = v0[41];
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

    v6 = v0[35];
    v5 = v0[36];
    v8 = v0[33];
    v7 = v0[34];

    v9 = v0[1];
  }

  else
  {
    v10 = v0[28];
    v11 = v0[41];

    sub_258464C18(v0 + 6, v10);
    v13 = v0[35];
    v12 = v0[36];
    v15 = v0[33];
    v14 = v0[34];

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_25848340C()
{
  v1 = v0[38];

  v2 = v0[40];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25848349C()
{
  v1 = v0[41];

  v2 = v0[43];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25848352C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for TimeSyncBackedTimeSynchronizer();
  swift_allocObject();
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_2584835D8;

  return sub_2585035E0();
}

uint64_t sub_2584835D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_258483724, 0, 0);
  }
}

uint64_t sub_258483724()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v2[3] = *(v0 + 24);
  v2[4] = &off_286990B70;
  *v2 = v1;
  return (*(v0 + 8))();
}

uint64_t sub_258483754()
{
  v1 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer;
  swift_beginAccess();
  sub_2584AC3B8(v0 + v1, &v19, &qword_27F930340, &qword_258537A68);
  if (!v20)
  {
    return sub_258465168(&v19, &qword_27F930340, &qword_258537A68);
  }

  sub_258464C18(&v19, v22);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
  swift_beginAccess();
  sub_2584AC3B8(v0 + v2, &v17, &qword_27F92FB90, &qword_258535420);
  if (v18)
  {
    sub_258464C18(&v17, &v19);
    v3 = __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v4 = v20;
    v5 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    (*(v5 + 24))(&v17, v4, v5);
    v6 = __swift_project_boxed_opaque_existential_1(&v17, v18);
    v8 = v6[2];
    v7 = v6[3];
    v9 = v20;
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    v11 = *(v10 + 8);

    v11(v16, v9, v10);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v12 = sub_258532D5C();
    v13 = *v3;
    sub_258504B8C(v8, v7, v12, v14);

    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(&v17);
    __swift_destroy_boxed_opaque_existential_1Tm(&v19);
  }

  else
  {
    sub_258465168(&v17, &qword_27F92FB90, &qword_258535420);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

uint64_t sub_258483988()
{
  v20 = v0;
  v1 = *__swift_project_boxed_opaque_existential_1((v0[38] + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_userDefaultsProvider), *(v0[38] + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_userDefaultsProvider + 24));
  v2 = sub_2585138CC(3, 1);
  if (v2 == 2 || (v2 & 1) == 0)
  {
LABEL_9:
    v15 = v0[1];

    return v15();
  }

  v3 = v0[38];
  v4 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeat;
  v0[39] = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeat;
  swift_beginAccess();
  sub_2584AC3B8(v3 + v4, (v0 + 2), &qword_27F930348, &qword_258537A70);
  v5 = v0[5];
  sub_258465168((v0 + 2), &qword_27F930348, &qword_258537A70);
  if (v5)
  {
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v6 = v0[38];
    v7 = sub_258532A4C();
    __swift_project_value_buffer(v7, qword_27F93D020);

    v8 = sub_258532A2C();
    v9 = sub_2585338CC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[38];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19[0] = v12;
      *v11 = 136315138;
      sub_258533B8C();

      v19[1] = 0xD000000000000017;
      v19[2] = 0x8000000258540530;
      sub_2585329BC();
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v13 = sub_258533DFC();
      MEMORY[0x259C81500](v13);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v14 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v19);

      *(v11 + 4) = v14;
      _os_log_impl(&dword_25845E000, v8, v9, "%s Time sync heartbeat already started", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x259C82900](v12, -1, -1);
      MEMORY[0x259C82900](v11, -1, -1);
    }

    goto LABEL_9;
  }

  v17 = swift_task_alloc();
  v0[40] = v17;
  *v17 = v0;
  v17[1] = sub_258483CE0;
  v18 = v0[38];

  return sub_258482A88((v0 + 7));
}

uint64_t sub_258483CE0()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 304);
  if (v0)
  {
    v6 = sub_258484268;
  }

  else
  {
    v6 = sub_258483E0C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258483E0C()
{
  v30 = v0;
  v1 = v0[41];
  v2 = *__swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_258504A68(v0 + 12);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v3 = v0[38];
    v4 = sub_258532A4C();
    __swift_project_value_buffer(v4, qword_27F93D020);

    v5 = v1;
    v6 = sub_258532A2C();
    v7 = sub_2585338CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[38];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29[0] = v11;
      *v9 = 136315394;
      sub_258533B8C();

      v29[1] = 0xD000000000000017;
      v29[2] = 0x8000000258540530;
      sub_2585329BC();
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v12 = sub_258533DFC();
      MEMORY[0x259C81500](v12);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v13 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v29);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2112;
      v14 = v1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v15;
      *v10 = v15;
      _os_log_impl(&dword_25845E000, v6, v7, "%s Failed to start time sync heartbeat: %@", v9, 0x16u);
      sub_258465168(v10, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v17 = v0[38];
    v16 = v0[39];
    sub_258464C30((v0 + 12), (v0 + 22));
    type metadata accessor for KTraceBackedSignpostReporter();
    v18 = swift_allocObject();
    v19 = v0[25];
    v20 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 22), v19);
    v21 = *(v19 - 8);
    v22 = *(v21 + 64) + 15;
    v23 = swift_task_alloc();
    (*(v21 + 16))(v23, v20, v19);
    v24 = sub_2584A6468(*v23, 5000000000000000000, 0, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);

    v25 = type metadata accessor for TimeSyncHeartbeat();
    v0[17] = v24;
    v0[20] = v25;
    v0[21] = &off_2869912A0;
    v26 = *__swift_project_boxed_opaque_existential_1(v0 + 17, v25);
    sub_25851118C();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    sub_258464C30((v0 + 17), (v0 + 27));
    swift_beginAccess();
    sub_2584AC5D0((v0 + 27), v17 + v16, &qword_27F930348, &qword_258537A70);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_258484268()
{
  v18 = v0;
  v1 = v0[41];
  if (qword_27F92F8F0 != -1)
  {
    swift_once();
  }

  v2 = v0[38];
  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93D020);

  v4 = v1;
  v5 = sub_258532A2C();
  v6 = sub_2585338CC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[38];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v8 = 136315394;
    sub_258533B8C();

    v17[1] = 0xD000000000000017;
    v17[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v11 = sub_258533DFC();
    MEMORY[0x259C81500](v11);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v12 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&dword_25845E000, v5, v6, "%s Failed to start time sync heartbeat: %@", v8, 0x16u);
    sub_258465168(v9, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_258484538()
{
  v1[33] = v0;
  v2 = sub_258533C6C();
  v1[34] = v2;
  v3 = *(v2 - 8);
  v1[35] = v3;
  v1[36] = *(v3 + 64);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258484650, v0, 0);
}

uint64_t sub_258484650()
{
  v1 = *(v0 + 264);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  *(v0 + 328) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  v3 = v1 + v2;
  swift_beginAccess();
  if (*(v3 + 24))
  {
    sub_258464C30(v3, v0 + 16);
    if (*(v0 + 40))
    {
LABEL_3:
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v5 = *(v0 + 312);
      v4 = *(v0 + 320);
      v7 = *(v0 + 296);
      v6 = *(v0 + 304);

      v8 = *(v0 + 8);
LABEL_13:

      return v8();
    }
  }

  else
  {
    v9 = *v3;
    v10 = *(v3 + 16);
    *(v0 + 48) = *(v3 + 32);
    *(v0 + 16) = v9;
    *(v0 + 32) = v10;
    if (*(v0 + 40))
    {
      goto LABEL_3;
    }
  }

  sub_2584AC3B8(*(v0 + 264) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connectionVendor, v0 + 96, &qword_27F9302B8, &unk_2585379D0);
  if (!*(v0 + 120))
  {
    sub_258465168(v0 + 96, &qword_27F9302B8, &unk_2585379D0);
    sub_2584A5730();
    swift_allocError();
    *v34 = 7;
    swift_willThrow();
LABEL_12:
    v37 = *(v0 + 312);
    v36 = *(v0 + 320);
    v39 = *(v0 + 296);
    v38 = *(v0 + 304);

    v8 = *(v0 + 8);
    goto LABEL_13;
  }

  v11 = *(v0 + 264);
  sub_258464C18((v0 + 96), v0 + 56);
  v12 = (v11 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint);
  v13 = *(v11 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32);
  if (!v13)
  {
    sub_2584A5730();
    swift_allocError();
    *v35 = 6;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    goto LABEL_12;
  }

  v14 = *(v0 + 320);
  v15 = *(v0 + 304);
  v46 = *(v0 + 312);
  v47 = *(v0 + 296);
  v16 = *(v0 + 280);
  v48 = *(v0 + 288);
  v18 = *(v0 + 264);
  v17 = *(v0 + 272);
  v19 = *(v12 + 5);
  v20 = *(v12 + 6);
  v21 = sub_25853368C();
  v41 = v12[1];
  v42 = *v12;
  v43 = v14;
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);

  v22 = sub_258533F6C();
  v44 = v23;
  v45 = v22;
  sub_258464C30(v0 + 56, v0 + 136);
  v24 = swift_allocObject();
  sub_258464C18((v0 + 136), v24 + 16);
  *(v24 + 56) = v18;
  *(v24 + 64) = v42;
  *(v24 + 80) = v41;
  *(v24 + 96) = v13;
  *(v24 + 104) = v19;
  *(v24 + 112) = v20;

  sub_258533C5C();
  sub_2584AC3B8(v14, v46, &qword_27F92FB78, &qword_2585368F0);
  (*(v16 + 16))(v47, v15, v17);
  v25 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = v45;
  *(v26 + 5) = v44;
  (*(v16 + 32))(&v26[v25], v47, v17);
  v27 = &v26[(v48 + v25 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v27 = &unk_258537FD8;
  *(v27 + 1) = v24;
  v28 = sub_258476F24(0, 0, v46, &unk_258537FE8, v26);
  *(v0 + 336) = v28;
  (*(v16 + 8))(v15, v17);
  sub_258465168(v43, &qword_27F92FB78, &qword_2585368F0);
  v29 = *(MEMORY[0x277D857C8] + 4);
  v30 = swift_task_alloc();
  *(v0 + 344) = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930190, &unk_258537FF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  *v30 = v0;
  v30[1] = sub_258484B10;
  v33 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 176, v28, v31, v32, v33);
}

uint64_t sub_258484B10()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v9 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 336);
    v5 = *(v2 + 264);

    v6 = sub_258484D44;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 264);
    v6 = sub_258484C38;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_258484C38()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 264);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  swift_beginAccess();
  v4 = *(v3 + v2 + 24);
  v5 = *(v0 + 200);
  v6 = *(v0 + 328);
  v7 = *(v0 + 264);
  v8 = v7 + v6;
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v7 + v6));
    v8 = *(v0 + 264) + *(v0 + 328);
    if (v5)
    {
LABEL_3:
      sub_258464C18((v0 + 176), v8);
      goto LABEL_6;
    }
  }

  else if (v5)
  {
    goto LABEL_3;
  }

  v9 = *(v0 + 176);
  v10 = *(v0 + 192);
  *(v8 + 32) = *(v0 + 208);
  *v8 = v9;
  *(v8 + 16) = v10;
LABEL_6:
  swift_endAccess();
  v12 = *(v0 + 312);
  v11 = *(v0 + 320);
  v14 = *(v0 + 296);
  v13 = *(v0 + 304);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_258484D44()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[44];
  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[37];
  v4 = v0[38];

  v6 = v0[1];

  return v6();
}

uint64_t sub_258484DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_258484DF8, 0, 0);
}

uint64_t sub_258484DF8()
{
  v1 = *(v0 + 32);
  v2 = __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage);
  v4 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 16);
  *(v0 + 88) = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 32);
  *(v0 + 72) = v4;
  *(v0 + 56) = v3;
  v5 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_clientSessionID;
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_258484EF0;
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);

  return sub_258499DAC(v9, v0 + 56, v8, v1 + v5);
}

uint64_t sub_258484EF0()
{
  v2 = *(*v1 + 48);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_258485020, 0, 0);
  }
}

uint64_t sub_258485038()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v33 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930350, &unk_258537A78);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930278, &unk_2585379C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v30 - v16;
  v18 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventStream;
  swift_beginAccess();
  sub_2584AC3B8(v0 + v18, v9, &qword_27F930350, &unk_258537A78);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_258465168(v9, &qword_27F930350, &unk_258537A78);
    sub_2584A5730();
    swift_allocError();
    *v19 = 10;
    return swift_willThrow();
  }

  else
  {
    v21 = *(v11 + 32);
    v30 = v17;
    v31 = v21;
    v21(v17, v9, v10);
    v22 = sub_25853368C();
    (*(*(v22 - 8) + 56))(v33, 1, 1, v22);
    v23 = v32;
    (*(v11 + 16))(v32, v17, v10);
    v24 = sub_2584AC2F0(&qword_27F930338, type metadata accessor for MediaContinuitySession);
    v25 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = v0;
    *(v27 + 24) = v24;
    v31(v27 + v25, v23, v10);
    *(v27 + v26) = v0;
    swift_retain_n();
    v28 = sub_258476C88(0, 0, v33, &unk_258537FA8, v27);
    (*(v11 + 8))(v30, v10);
    v29 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor);
    *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor) = v28;
  }
}

uint64_t sub_2584853EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v7 = *(*(type metadata accessor for SessionMessage() - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303E0, &qword_258537FB0);
  v5[32] = v8;
  v9 = *(v8 - 8);
  v5[33] = v9;
  v10 = *(v9 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303E8, &qword_258537FB8) - 8) + 64) + 15;
  v5[36] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303F0, &unk_258537FC0);
  v5[37] = v12;
  v13 = *(v12 - 8);
  v5[38] = v13;
  v14 = *(v13 + 64) + 15;
  v5[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258485594, a5, 0);
}

uint64_t sub_258485594()
{
  v1 = v0[39];
  v2 = v0[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930278, &unk_2585379C0);
  sub_2585336FC();
  v3 = sub_2584AC2F0(&qword_27F930338, type metadata accessor for MediaContinuitySession);
  v4 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
  v0[40] = v3;
  v0[41] = v4;
  v5 = v0[30];
  v6 = *(MEMORY[0x277D858B8] + 4);
  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  v7[1] = sub_2584856B0;
  v8 = v0[39];
  v9 = v0[36];
  v10 = v0[37];

  return MEMORY[0x2822005A8](v9, v5, v3, v10, v0 + 28);
}

uint64_t sub_2584856B0()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;

  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_258486120;
  }

  else
  {
    v5 = sub_2584857C4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2584857C4()
{
  v1 = *(v0 + 288);
  if ((*(*(v0 + 264) + 48))(v1, 1, *(v0 + 256)) == 1)
  {
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
LABEL_5:
    v5 = *(v0 + 312);
    v6 = *(v0 + 280);
    v7 = *(v0 + 288);
    v8 = *(v0 + 272);
    v9 = *(v0 + 248);

    v10 = *(v0 + 8);

    return v10();
  }

  sub_2584AA828(v1, *(v0 + 280), &qword_27F9303E0, &qword_258537FB0);
  if (sub_25853376C())
  {
    v3 = *(v0 + 304);
    v2 = *(v0 + 312);
    v4 = *(v0 + 296);
    sub_258465168(*(v0 + 280), &qword_27F9303E0, &qword_258537FB0);
    (*(v3 + 8))(v2, v4);
    goto LABEL_5;
  }

  v12 = *(v0 + 256);
  sub_2584AC3B8(*(v0 + 280), *(v0 + 272), &qword_27F9303E0, &qword_258537FB0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *(v0 + 272);
      v15 = *(v14 + 32);
      v16 = *(v14 + 16);
      *(v0 + 16) = *v14;
      *(v0 + 32) = v16;
      *(v0 + 48) = v15;
      v17 = *(v14 + 56);
      v18 = *(v14 + 40);
      *(v0 + 88) = *(v14 + 72);
      *(v0 + 56) = v18;
      *(v0 + 72) = v17;
      v19 = swift_task_alloc();
      *(v0 + 368) = v19;
      *v19 = v0;
      v19[1] = sub_258485EF0;
      v20 = *(v0 + 240);

      return sub_25848703C(v0 + 16, v0 + 56);
    }

    else
    {
      sub_258464C18(*(v0 + 272), v0 + 96);
      v24 = swift_task_alloc();
      *(v0 + 352) = v24;
      *v24 = v0;
      v24[1] = sub_258485CE8;
      v25 = *(v0 + 240);

      return sub_258488EC4(v0 + 96);
    }
  }

  else
  {
    sub_2584A9D40(*(v0 + 272), *(v0 + 248), type metadata accessor for SessionMessage);
    v21 = swift_task_alloc();
    *(v0 + 344) = v21;
    *v21 = v0;
    v21[1] = sub_258485AE8;
    v23 = *(v0 + 240);
    v22 = *(v0 + 248);

    return sub_25848E534(v22);
  }
}

uint64_t sub_258485AE8()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_258485BF8, v2, 0);
}

uint64_t sub_258485BF8()
{
  v1 = v0[35];
  sub_2584ABB80(v0[31], type metadata accessor for SessionMessage);
  sub_258465168(v1, &qword_27F9303E0, &qword_258537FB0);
  v2 = v0[40];
  v3 = v0[30];
  v4 = *(MEMORY[0x277D858B8] + 4);
  v5 = swift_task_alloc();
  v0[42] = v5;
  *v5 = v0;
  v5[1] = sub_2584856B0;
  v6 = v0[39];
  v7 = v0[36];
  v8 = v0[37];

  return MEMORY[0x2822005A8](v7, v3, v2, v8, v0 + 28);
}

uint64_t sub_258485CE8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_25848662C;
  }

  else
  {
    v6 = sub_258485E14;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258485E14()
{
  v1 = v0[35];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  sub_258465168(v1, &qword_27F9303E0, &qword_258537FB0);
  v2 = v0[40];
  v3 = v0[30];
  v4 = *(MEMORY[0x277D858B8] + 4);
  v5 = swift_task_alloc();
  v0[42] = v5;
  *v5 = v0;
  v5[1] = sub_2584856B0;
  v6 = v0[39];
  v7 = v0[36];
  v8 = v0[37];

  return MEMORY[0x2822005A8](v7, v3, v2, v8, v0 + 28);
}

uint64_t sub_258485EF0()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_258486B20;
  }

  else
  {
    v6 = sub_25848601C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25848601C()
{
  v1 = v0[35];
  sub_258465168((v0 + 7), &qword_27F92FB90, &qword_258535420);
  sub_258465168((v0 + 2), &qword_27F92FB90, &qword_258535420);
  sub_258465168(v1, &qword_27F9303E0, &qword_258537FB0);
  v2 = v0[40];
  v3 = v0[30];
  v4 = *(MEMORY[0x277D858B8] + 4);
  v5 = swift_task_alloc();
  v0[42] = v5;
  *v5 = v0;
  v5[1] = sub_2584856B0;
  v6 = v0[39];
  v7 = v0[36];
  v8 = v0[37];

  return MEMORY[0x2822005A8](v7, v3, v2, v8, v0 + 28);
}

uint64_t sub_258486120()
{
  v21 = v0;
  (*(v0[38] + 8))(v0[39], v0[37]);
  v1 = v0[28];
  v0[48] = v1;
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v2 = v0[30];
  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93CFA8);

  v4 = v1;
  v5 = sub_258532A2C();
  v6 = sub_2585338CC();

  if (os_log_type_enabled(v5, v6))
  {
    v19 = v0[41];
    v7 = v0[30];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v8 = 136315394;
    sub_258533B8C();

    v20[1] = 0xD000000000000017;
    v20[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v11 = sub_258533DFC();
    MEMORY[0x259C81500](v11);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v12 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v20);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&dword_25845E000, v5, v6, "%s Connection interrupted, error:%@", v8, 0x16u);
    sub_258465168(v9, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  v15 = v0[30] + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  swift_beginAccess();
  if (*(v15 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  *(v15 + 32) = 0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  swift_endAccess();
  v16 = swift_task_alloc();
  v0[49] = v16;
  *v16 = v0;
  v16[1] = sub_25848647C;
  v17 = v0[30];

  return sub_258491E14(v1);
}

uint64_t sub_25848647C()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25848658C, v2, 0);
}

uint64_t sub_25848658C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = *(v0 + 248);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25848662C()
{
  v23 = v0;
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = v0[30];
  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93CFA8);

  v4 = v1;
  v5 = sub_258532A2C();
  v6 = sub_2585338CC();

  if (os_log_type_enabled(v5, v6))
  {
    v21 = v0[45];
    v7 = v0[41];
    v8 = v0[30];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v9 = 136315394;
    v0[26] = 0;
    v0[27] = 0xE000000000000000;
    sub_258533B8C();
    v12 = v0[27];

    v0[24] = 0xD000000000000017;
    v0[25] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v13 = sub_258533DFC();
    MEMORY[0x259C81500](v13);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v14 = sub_2584713B0(v0[24], v0[25], &v22);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v21;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_25845E000, v5, v6, "%s handlePeeledConnection failed, error:%@", v9, 0x16u);
    sub_258465168(v10, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x259C82900](v11, -1, -1);
    MEMORY[0x259C82900](v9, -1, -1);
  }

  v17 = swift_task_alloc();
  v0[50] = v17;
  *v17 = v0;
  v17[1] = sub_25848692C;
  v18 = v0[45];
  v19 = v0[30];

  return sub_258491E14(v18);
}

uint64_t sub_25848692C()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_258486A3C, v2, 0);
}

uint64_t sub_258486A3C()
{
  v1 = *(v0 + 280);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  sub_258465168(v1, &qword_27F9303E0, &qword_258537FB0);
  v2 = *(v0 + 320);
  v3 = *(v0 + 240);
  v4 = *(MEMORY[0x277D858B8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 336) = v5;
  *v5 = v0;
  v5[1] = sub_2584856B0;
  v6 = *(v0 + 312);
  v7 = *(v0 + 288);
  v8 = *(v0 + 296);

  return MEMORY[0x2822005A8](v7, v3, v2, v8, v0 + 224);
}

uint64_t sub_258486B20()
{
  v23 = v0;
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v1 = v0[47];
  v2 = v0[30];
  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93CFA8);

  v4 = v1;
  v5 = sub_258532A2C();
  v6 = sub_2585338CC();

  if (os_log_type_enabled(v5, v6))
  {
    v21 = v0[47];
    v7 = v0[41];
    v8 = v0[30];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v9 = 136315394;
    v0[22] = 0;
    v0[23] = 0xE000000000000000;
    sub_258533B8C();
    v12 = v0[23];

    v0[20] = 0xD000000000000017;
    v0[21] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v13 = sub_258533DFC();
    MEMORY[0x259C81500](v13);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v14 = sub_2584713B0(v0[20], v0[21], &v22);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v21;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_25845E000, v5, v6, "%s handleConnectionMigration failed, error:%@", v9, 0x16u);
    sub_258465168(v10, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x259C82900](v11, -1, -1);
    MEMORY[0x259C82900](v9, -1, -1);
  }

  v17 = swift_task_alloc();
  v0[51] = v17;
  *v17 = v0;
  v17[1] = sub_258486E20;
  v18 = v0[47];
  v19 = v0[30];

  return sub_258491E14(v18);
}

uint64_t sub_258486E20()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_258486F30, v2, 0);
}

uint64_t sub_258486F30()
{
  v1 = *(v0 + 280);
  sub_258465168(v0 + 56, &qword_27F92FB90, &qword_258535420);
  sub_258465168(v0 + 16, &qword_27F92FB90, &qword_258535420);
  sub_258465168(v1, &qword_27F9303E0, &qword_258537FB0);
  v2 = *(v0 + 320);
  v3 = *(v0 + 240);
  v4 = *(MEMORY[0x277D858B8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 336) = v5;
  *v5 = v0;
  v5[1] = sub_2584856B0;
  v6 = *(v0 + 312);
  v7 = *(v0 + 288);
  v8 = *(v0 + 296);

  return MEMORY[0x2822005A8](v7, v3, v2, v8, v0 + 224);
}

uint64_t sub_25848703C(uint64_t a1, uint64_t a2)
{
  v3[67] = v2;
  v3[66] = a2;
  v3[65] = a1;
  return MEMORY[0x2822009F8](sub_258487064, v2, 0);
}

uint64_t sub_258487064()
{
  v50 = v0;
  if (!*(*(v0 + 536) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32))
  {
LABEL_39:
    v29 = *(v0 + 8);
    goto LABEL_40;
  }

  if (qword_27F92F8C8 != -1)
  {
    swift_once();
    v48 = *(v0 + 536);
  }

  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93CFA8);
  sub_2584AC3B8(v2, v0 + 16, &qword_27F92FB90, &qword_258535420);
  sub_2584AC3B8(v1, v0 + 56, &qword_27F92FB90, &qword_258535420);

  v4 = sub_258532A2C();
  v5 = sub_2585338EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 536);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v49[0] = v8;
    *v7 = 136315650;
    sub_258533B8C();

    v49[1] = 0xD000000000000017;
    v49[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v9 = sub_258533DFC();
    MEMORY[0x259C81500](v9);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v10 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v49);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    sub_2584AC3B8(v0 + 16, v0 + 336, &qword_27F92FB90, &qword_258535420);
    v11 = *(v0 + 360);
    if (v11)
    {
      v12 = *(v0 + 368);
      __swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360));
      (*(v12 + 8))(v11, v12);
      __swift_project_boxed_opaque_existential_1((v0 + 456), *(v0 + 480));
      v13 = sub_258532D5C();
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
    }

    else
    {
      v13 = 1701736270;
      sub_258465168(v0 + 336, &qword_27F92FB90, &qword_258535420);
      v15 = 0xE400000000000000;
    }

    sub_258465168(v0 + 16, &qword_27F92FB90, &qword_258535420);
    v16 = sub_2584713B0(v13, v15, v49);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2080;
    sub_2584AC3B8(v0 + 56, v0 + 376, &qword_27F92FB90, &qword_258535420);
    v17 = *(v0 + 400);
    if (v17)
    {
      v18 = *(v0 + 408);
      __swift_project_boxed_opaque_existential_1((v0 + 376), *(v0 + 400));
      (*(v18 + 8))(v17, v18);
      __swift_project_boxed_opaque_existential_1((v0 + 416), *(v0 + 440));
      v19 = sub_258532D5C();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
    }

    else
    {
      v19 = 1701736270;
      sub_258465168(v0 + 376, &qword_27F92FB90, &qword_258535420);
      v21 = 0xE400000000000000;
    }

    sub_258465168(v0 + 56, &qword_27F92FB90, &qword_258535420);
    v22 = sub_2584713B0(v19, v21, v49);

    *(v7 + 24) = v22;
    _os_log_impl(&dword_25845E000, v4, v5, "%s Connection migrated from %s to %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  else
  {

    sub_258465168(v0 + 56, &qword_27F92FB90, &qword_258535420);
    sub_258465168(v0 + 16, &qword_27F92FB90, &qword_258535420);
  }

  v23 = *(v0 + 536);
  v24 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  *(v0 + 544) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (sub_258472CF0(*(v23 + v24), &unk_28698B500))
  {
    sub_2584AC3B8(*(v0 + 528), v0 + 136, &qword_27F92FB90, &qword_258535420);
    v25 = *(v0 + 160);
    if (v25)
    {
      v26 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
      (*(v26 + 8))(v25, v26);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    }

    else
    {
      sub_258465168(v0 + 136, &qword_27F92FB90, &qword_258535420);
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      *(v0 + 128) = 0;
    }

    v30 = *(v0 + 536);
    sub_258488DB8(v0 + 96);
    sub_258465168(v0 + 96, &qword_27F92FB70, &qword_2585353E8);
    sub_2584AC3B8(v30 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager, v0 + 176, &qword_27F930360, &unk_258537A90);
    v31 = *(v0 + 200);
    if (v31)
    {
      v32 = *(v0 + 528);
      v33 = __swift_project_boxed_opaque_existential_1((v0 + 176), v31);
      sub_2584AC3B8(v32, v0 + 296, &qword_27F92FB90, &qword_258535420);
      v34 = *(v0 + 320);
      if (v34)
      {
        v35 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
        (*(v35 + 8))(v34, v35);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
      }

      else
      {
        sub_258465168(v0 + 296, &qword_27F92FB90, &qword_258535420);
        *(v0 + 256) = 0u;
        *(v0 + 272) = 0u;
        *(v0 + 288) = 0;
      }

      v41 = *v33;
      v42 = swift_task_alloc();
      *(v0 + 552) = v42;
      *v42 = v0;
      v42[1] = sub_258487908;

      return sub_2584631DC(v0 + 256);
    }

    sub_258465168(v0 + 176, &qword_27F930360, &unk_258537A90);
    if (sub_258472CF0(*(*(v0 + 536) + *(v0 + 544)), &unk_28698B528))
    {
      if (*(*(v0 + 528) + 24))
      {
        v36 = *(v0 + 536);
        sub_2584AC3B8(*(v0 + 528), v0 + 216, &qword_27F92FB90, &qword_258535420);
        v37 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
        swift_beginAccess();
        sub_2584AC5D0(v0 + 216, v36 + v37, &qword_27F92FB90, &qword_258535420);
        swift_endAccess();
        v38 = swift_task_alloc();
        *(v0 + 560) = v38;
        *v38 = v0;
        v38[1] = sub_258487C0C;
        v39 = *(v0 + 536);

        return sub_258488930();
      }

      sub_258488194(*(v0 + 536), *(v0 + 528));
      goto LABEL_39;
    }

    v43 = *(v0 + 544);
    v44 = *(v0 + 536);
    v45 = *(v0 + 528);
    sub_2584A5730();
    swift_allocError();
    if (*(v44 + v43) == 3)
    {
      v47 = 2;
    }

    else
    {
      v47 = 3;
    }

    *v46 = v47;
    swift_willThrow();
    sub_258488194(v44, v45);
  }

  else
  {
    sub_2584A5730();
    swift_allocError();
    if (*(v23 + v24) == 3)
    {
      v28 = 2;
    }

    else
    {
      v28 = 3;
    }

    *v27 = v28;
    swift_willThrow();
  }

  v29 = *(v0 + 8);
LABEL_40:

  return v29();
}

uint64_t sub_258487908()
{
  v1 = *v0;
  v2 = *(*v0 + 552);
  v3 = *(*v0 + 536);
  v5 = *v0;

  sub_258465168(v1 + 256, &qword_27F92FB70, &qword_2585353E8);

  return MEMORY[0x2822009F8](sub_258487A30, v3, 0);
}

uint64_t sub_258487A30()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  if (sub_258472CF0(*(v0[67] + v0[68]), &unk_28698B528))
  {
    if (*(v0[66] + 24))
    {
      v1 = v0[67];
      sub_2584AC3B8(v0[66], (v0 + 27), &qword_27F92FB90, &qword_258535420);
      v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
      swift_beginAccess();
      sub_2584AC5D0((v0 + 27), v1 + v2, &qword_27F92FB90, &qword_258535420);
      swift_endAccess();
      v3 = swift_task_alloc();
      v0[70] = v3;
      *v3 = v0;
      v3[1] = sub_258487C0C;
      v4 = v0[67];

      return sub_258488930();
    }

    sub_258488194(v0[67], v0[66]);
    v11 = v0[1];
  }

  else
  {
    v6 = v0[68];
    v7 = v0[67];
    v8 = v0[66];
    sub_2584A5730();
    swift_allocError();
    if (*(v7 + v6) == 3)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    *v9 = v10;
    swift_willThrow();
    sub_258488194(v7, v8);
    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_258487C0C()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *v1;
  *(*v1 + 568) = v0;

  v5 = *(v2 + 536);
  if (v0)
  {
    v6 = sub_2584880C4;
  }

  else
  {
    v6 = sub_258487D38;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258487D38()
{
  if (!sub_258472CF0(*(v0[67] + v0[68]), &unk_28698B550))
  {
    v5 = v0[68];
    v6 = v0[67];
    v7 = v0[66];
    sub_2584A5730();
    swift_allocError();
    if (*(v6 + v5) == 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    *v8 = v9;
    swift_willThrow();
    v3 = v6;
    v4 = v7;
    goto LABEL_8;
  }

  v1 = v0[71];
  v2 = v0[67];
  sub_258483754();
  if (v1)
  {
    v3 = v0[67];
    v4 = v0[66];
LABEL_8:
    sub_258488194(v3, v4);
    v10 = v0[1];

    return v10();
  }

  v12 = swift_task_alloc();
  v0[72] = v12;
  *v12 = v0;
  v12[1] = sub_258487EA0;
  v13 = v0[67];

  return sub_2584882F0();
}

uint64_t sub_258487EA0()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *v1;
  *(*v1 + 584) = v0;

  v5 = *(v2 + 536);
  if (v0)
  {
    v6 = sub_25848812C;
  }

  else
  {
    v6 = sub_258487FCC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258487FCC()
{
  if (sub_258472CF0(*(v0[67] + v0[68]), &unk_28698B578))
  {
    sub_258488194(v0[67], v0[66]);
    v1 = v0[1];
  }

  else
  {
    v2 = v0[68];
    v3 = v0[67];
    v4 = v0[66];
    sub_2584A5730();
    swift_allocError();
    if (*(v3 + v2) == 3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    *v5 = v6;
    swift_willThrow();
    sub_258488194(v3, v4);
    v1 = v0[1];
  }

  return v1();
}

uint64_t sub_2584880C4()
{
  sub_258488194(v0[67], v0[66]);
  v1 = v0[71];
  v2 = v0[1];

  return v2();
}

uint64_t sub_25848812C()
{
  sub_258488194(v0[67], v0[66]);
  v1 = v0[73];
  v2 = v0[1];

  return v2();
}

uint64_t sub_258488194(uint64_t a1, uint64_t a2)
{
  sub_2584AC3B8(a2, &v8, &qword_27F92FB90, &qword_258535420);
  v3 = *v10;
  if (*v10)
  {
    v4 = *&v10[8];
    __swift_project_boxed_opaque_existential_1(&v8, *v10);
    (*(v4 + 8))(&v12, v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(&v8);
    if (*(a1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state) == 2 && *(&v13 + 1) != 0)
    {
      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(a1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
      v8 = 1;
      v9 = 0u;
      memset(v10, 0, sizeof(v10));
      v11 = 8;
      v6 = off_286990988;
      type metadata accessor for TelemetryProvider();
      v6(&v8);
      sub_2584A57D8(&v8);
    }
  }

  else
  {
    sub_258465168(&v8, &qword_27F92FB90, &qword_258535420);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  return sub_258465168(&v12, &qword_27F92FB70, &qword_2585353E8);
}

uint64_t sub_2584882F0()
{
  v1[33] = v0;
  v2 = type metadata accessor for SessionMessage();
  v1[34] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258488384, v0, 0);
}

uint64_t sub_258488384()
{
  v1 = *(v0 + 264) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  swift_beginAccess();
  if (!*(v1 + 24))
  {
    v20 = *v1;
    v21 = *(v1 + 16);
    *(v0 + 88) = *(v1 + 32);
    *(v0 + 72) = v21;
    *(v0 + 56) = v20;
    if (*(v0 + 80))
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_2584A5730();
    swift_allocError();
    *v22 = 8;
    swift_willThrow();
    goto LABEL_10;
  }

  sub_258464C30(v1, v0 + 56);
  if (!*(v0 + 80))
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = *(v0 + 264);
  sub_258464C18((v0 + 56), v0 + 16);
  v3 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
  swift_beginAccess();
  sub_2584AC3B8(v2 + v3, v0 + 136, &qword_27F92FB90, &qword_258535420);
  if (*(v0 + 160))
  {
    v5 = *(v0 + 272);
    v4 = *(v0 + 280);
    sub_258464C18((v0 + 136), v0 + 96);
    sub_258464C30(v0 + 96, v0 + 176);
    v6 = sub_2584AE310((v0 + 176));
    v8 = v7;
    v10 = v9;
    v12 = v11;
    *(v0 + 288) = v6;
    *(v0 + 296) = v7;
    *(v0 + 304) = v9;
    *(v0 + 312) = v11;
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
    *v4 = v6;
    v4[1] = v8;
    v4[2] = v10;
    v4[3] = v12;
    swift_storeEnumTagMultiPayload();
    v15 = *(v14 + 80);
    sub_2584A7B8C(v6, v8);
    sub_2584A7B8C(v10, v12);
    v26 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v0 + 320) = v17;
    *v17 = v0;
    v17[1] = sub_2584886B0;
    v18 = *(v0 + 280);

    return v26(v18, v13, v14);
  }

  sub_258465168(v0 + 136, &qword_27F92FB90, &qword_258535420);
  sub_2584A5730();
  swift_allocError();
  *v23 = 9;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_10:
  v24 = *(v0 + 280);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2584886B0()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 280);
  v6 = *(v2 + 264);
  sub_2584ABB80(v5, type metadata accessor for SessionMessage);
  if (v0)
  {
    v7 = sub_2584888A4;
  }

  else
  {
    v7 = sub_25848880C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_25848880C()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[35];
  sub_258467E20(v0[36], v0[37]);
  sub_258467E20(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2584888A4()
{
  v1 = v0[38];
  v2 = v0[39];
  sub_258467E20(v0[36], v0[37]);
  sub_258467E20(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[41];
  v4 = v0[35];

  v5 = v0[1];

  return v5();
}

uint64_t sub_258488950()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  v0[3] = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (*(v1 + v2) == 2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager);
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_258488A4C;

    return sub_2584A1D38();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_258488A4C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 16);

    return MEMORY[0x2822009F8](sub_258488B90, v7, 0);
  }
}

uint64_t sub_258488B90()
{
  v1 = v0[2];
  v2 = v0[3];
  if (*(v1 + v2) == 2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_audioStreamManager);
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_258488CC4;

    return sub_2584A2268();
  }

  else
  {
    sub_2584A5730();
    swift_allocError();
    if (*(v1 + v2) == 3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    *v6 = v7;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_258488CC4()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_258488DB8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state) == 2)
  {
    sub_2584AC3B8(result, &v3, &qword_27F92FB70, &qword_2585353E8);
    if (v4)
    {
      sub_258464C18(&v3, v6);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      LOBYTE(v3) = sub_25847B7F4();
      v5 = 3;
      v2 = off_286990988;
      type metadata accessor for TelemetryProvider();
      v2(&v3);
      sub_2584A57D8(&v3);
      return __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }

    else
    {
      return sub_258465168(&v3, &qword_27F92FB70, &qword_2585353E8);
    }
  }

  return result;
}

uint64_t sub_258488EC4(uint64_t a1)
{
  *(v2 + 696) = v1;
  *(v2 + 688) = a1;
  return MEMORY[0x2822009F8](sub_258488EE8, v1, 0);
}

uint64_t sub_258488EE8()
{
  v1 = *(v0 + 688);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 704) = v6;
  *v6 = v0;
  v6[1] = sub_258489014;

  return v8(v0 + 16, v2, v3);
}

uint64_t sub_258489014()
{
  v2 = *v1;
  v3 = *(*v1 + 704);
  v7 = *v1;
  *(*v1 + 712) = v0;

  v4 = *(v2 + 696);
  if (v0)
  {
    v5 = sub_2584898B8;
  }

  else
  {
    v5 = sub_25848912C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25848912C()
{
  v54 = v0;
  v1 = *(v0 + 696);
  v2 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v2;
  v3 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v3;
  v4 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v4;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state) != 2)
  {
    v22 = 2;
LABEL_16:
    sub_2584A5730();
    swift_allocError();
    *v44 = v22;
    swift_willThrow();
    sub_2584A975C(v0 + 112);
    v45 = *(v0 + 8);

    return v45();
  }

  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v12 = *(v0 + 160);
  v11 = *(v0 + 168);
  v14 = *(v0 + 176);
  v13 = *(v0 + 184);
  v15 = *(v0 + 192);
  v16 = *(v0 + 200);
  v17 = (v16 >> 59) & 6 | ((v13 & 0x2000000000000000) != 0);
  if (v17 != 3)
  {
    if (v17 == 1)
    {
      *(v0 + 592) = v6;
      *(v0 + 600) = v5;
      *(v0 + 608) = v8;
      *(v0 + 616) = v7;
      *(v0 + 624) = v10;
      *(v0 + 632) = v9;
      *(v0 + 640) = v12;
      *(v0 + 648) = v11;
      *(v0 + 656) = v14;
      *(v0 + 664) = v13 & 0xDFFFFFFFFFFFFFFFLL;
      *(v0 + 672) = v15;
      *(v0 + 680) = v16 & 0xCFFFFFFFFFFFFFFFLL;
      v18 = swift_task_alloc();
      *(v0 + 720) = v18;
      *v18 = v0;
      v18[1] = sub_258489624;
      v19 = *(v0 + 696);
      v20 = *(v0 + 688);

      return sub_258489998((v0 + 592), v20);
    }

    if (qword_27F92F8C8 != -1)
    {
      swift_once();
      v46 = *(v0 + 696);
    }

    v26 = sub_258532A4C();
    __swift_project_value_buffer(v26, qword_27F93CFA8);

    sub_2584A97B0(v0 + 112, v0 + 208);
    v27 = sub_258532A2C();
    v28 = sub_2585338CC();

    sub_2584A975C(v0 + 112);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 696);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47 = v31;
      *v30 = 136315394;
      sub_258533B8C();

      *&v48 = 0xD000000000000017;
      *(&v48 + 1) = 0x8000000258540530;
      sub_2585329BC();
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v32 = sub_258533DFC();
      MEMORY[0x259C81500](v32);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v33 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, &v47);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      v34 = *(v0 + 160);
      v50 = *(v0 + 144);
      v51 = v34;
      v35 = *(v0 + 192);
      v52 = *(v0 + 176);
      v53 = v35;
      v36 = *(v0 + 128);
      v48 = *(v0 + 112);
      v49 = v36;
      sub_2584A97B0(v0 + 112, v0 + 400);
      v37 = sub_2584B2E74();
      v39 = v38;
      v40 = v51;
      *(v0 + 336) = v50;
      *(v0 + 352) = v40;
      v41 = v53;
      *(v0 + 368) = v52;
      *(v0 + 384) = v41;
      v42 = v49;
      *(v0 + 304) = v48;
      *(v0 + 320) = v42;
      sub_2584A975C(v0 + 304);
      v43 = sub_2584713B0(v37, v39, &v47);

      *(v30 + 14) = v43;
      _os_log_impl(&dword_25845E000, v27, v28, "%s received unexpected message %s on peeled connection", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v31, -1, -1);
      MEMORY[0x259C82900](v30, -1, -1);
    }

    v22 = 16;
    goto LABEL_16;
  }

  *(v0 + 496) = v6;
  *(v0 + 504) = v5;
  *(v0 + 512) = v8;
  *(v0 + 520) = v7;
  *(v0 + 528) = v10;
  *(v0 + 536) = v9;
  *(v0 + 544) = v12;
  *(v0 + 552) = v11;
  *(v0 + 560) = v14;
  *(v0 + 568) = v13 & 0xDFFFFFFFFFFFFFFFLL;
  *(v0 + 576) = v15;
  *(v0 + 584) = v16 & 0xCFFFFFFFFFFFFFFFLL;
  v23 = swift_task_alloc();
  *(v0 + 736) = v23;
  *v23 = v0;
  v23[1] = sub_2584897A0;
  v24 = *(v0 + 696);
  v25 = *(v0 + 688);

  return sub_25848A230((v0 + 496), v25);
}

uint64_t sub_258489624()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v7 = *v1;
  *(*v1 + 728) = v0;

  v4 = *(v2 + 696);
  if (v0)
  {
    v5 = sub_2584898D0;
  }

  else
  {
    v5 = sub_25848973C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25848973C()
{
  sub_2584A975C(v0 + 112);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584897A0()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v7 = *v1;
  *(*v1 + 744) = v0;

  v4 = *(v2 + 696);
  if (v0)
  {
    v5 = sub_258489934;
  }

  else
  {
    v5 = sub_2584AC7A0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2584898D0()
{
  sub_2584A975C(v0 + 112);
  v1 = *(v0 + 728);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258489934()
{
  sub_2584A975C(v0 + 112);
  v1 = *(v0 + 744);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258489998(_OWORD *a1, uint64_t a2)
{
  *(v3 + 632) = v2;
  *(v3 + 624) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303A8, &unk_258537F60);
  *(v3 + 640) = v5;
  v6 = *(v5 - 8);
  *(v3 + 648) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 656) = swift_task_alloc();
  v8 = a1[3];
  *(v3 + 48) = a1[2];
  *(v3 + 64) = v8;
  v9 = a1[5];
  *(v3 + 80) = a1[4];
  *(v3 + 96) = v9;
  v10 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v10;

  return MEMORY[0x2822009F8](sub_258489A84, v2, 0);
}

uint64_t sub_258489A84()
{
  v1 = *(*(v0 + 632) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager);
  *(v0 + 664) = v1;
  return MEMORY[0x2822009F8](sub_258489AB0, v1, 0);
}

uint64_t sub_258489AB0()
{
  v1 = *(v0 + 664);
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 128);

    v4 = sub_2584BC4BC();
    v5 = *(v0 + 632);
    if (v6)
    {
      v7 = *(v2 + 56) + 40 * v4;
      v8 = *v7;
      *(v0 + 672) = *v7;
      v9 = *(v7 + 8);
      *(v0 + 680) = v9;
      v10 = *(v7 + 16);
      *(v0 + 688) = v10;
      v11 = *(v7 + 24);
      *(v0 + 696) = v11;
      v12 = *(v7 + 32);
      *(v0 + 577) = v12;
      sub_2584A967C(v8, v9, v10, v11, v12);

      v13 = sub_258489C54;
    }

    else
    {

      v13 = sub_2584AC7D0;
    }

    v15 = v13;
    v14 = v5;
  }

  else
  {
    v14 = *(v0 + 632);
    v15 = sub_258489BBC;
  }

  return MEMORY[0x2822009F8](v15, v14, 0);
}

uint64_t sub_258489BBC()
{
  sub_2584A5730();
  swift_allocError();
  *v1 = 12;
  swift_willThrow();
  v2 = *(v0 + 656);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_258489C54()
{
  v1 = *(v0 + 632);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  *(v0 + 704) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  v3 = *(v0 + 577);
  if (*(v1 + v2) != 2)
  {
    v4 = *(v0 + 696);
    v5 = *(v0 + 688);
    v6 = *(v0 + 680);
    v7 = *(v0 + 672);
    sub_2584A5730();
    swift_allocError();
    v9 = 2;
    goto LABEL_5;
  }

  if (((v3 >= 0) ^ *(v0 + 16)))
  {
    v4 = *(v0 + 696);
    v5 = *(v0 + 688);
    v6 = *(v0 + 680);
    v7 = *(v0 + 672);
    sub_2584A5730();
    swift_allocError();
    v9 = 15;
LABEL_5:
    *v8 = v9;
    swift_willThrow();
    sub_2584A96C0(v7, v6, v5, v4, v3);
    v10 = *(v0 + 656);

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 688);
  *(v0 + 544) = *(v0 + 672);
  *(v0 + 560) = v13;
  *(v0 + 576) = v3;
  v14 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v14;
  v15 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v15;
  v16 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v16;
  sub_2584A9700(v0 + 16, v0 + 208);
  v17 = swift_task_alloc();
  *(v0 + 712) = v17;
  *v17 = v0;
  v17[1] = sub_258489E48;
  v18 = *(v0 + 632);
  v19 = *(v0 + 624);

  return sub_25848A9E4(v0 + 544, v19, (v0 + 112));
}

uint64_t sub_258489E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  *(v7 + 496) = v5;
  *(v7 + 504) = a1;
  *(v7 + 512) = a2;
  *(v7 + 520) = a3;
  *(v7 + 528) = a4;
  *(v7 + 536) = v4;
  v8 = *(v6 + 712);
  v9 = *v5;
  *(v7 + 720) = a1;
  *(v7 + 728) = v4;

  v10 = *(v6 + 632);
  v11 = *(v7 + 128);
  if (v4)
  {
    *(v7 + 304) = *(v7 + 112);
    *(v7 + 320) = v11;
    v12 = *(v7 + 144);
    v13 = *(v7 + 160);
    v14 = *(v7 + 192);
    *(v7 + 368) = *(v7 + 176);
    *(v7 + 384) = v14;
    *(v7 + 336) = v12;
    *(v7 + 352) = v13;
    sub_258465168(v7 + 304, &qword_27F9303B8, &qword_258537F70);
    v15 = sub_25848A1B4;
  }

  else
  {
    *(v7 + 400) = *(v7 + 112);
    *(v7 + 416) = v11;
    v16 = *(v7 + 144);
    v17 = *(v7 + 160);
    v18 = *(v7 + 192);
    *(v7 + 464) = *(v7 + 176);
    *(v7 + 480) = v18;
    *(v7 + 432) = v16;
    *(v7 + 448) = v17;
    sub_258465168(v7 + 400, &qword_27F9303B8, &qword_258537F70);
    v15 = sub_258489FF8;
  }

  return MEMORY[0x2822009F8](v15, v10, 0);
}

uint64_t sub_258489FF8()
{
  if (*(*(v0 + 632) + *(v0 + 704)) == 2)
  {
    v1 = *(v0 + 528);
    v2 = *(v0 + 688);
    v3 = *(v0 + 680);
    v4 = *(v0 + 672);
    v5 = *(v0 + 656);
    v6 = *(v0 + 648);
    v18 = *(v0 + 696);
    v19 = *(v0 + 640);
    *(v0 + 608) = *(v0 + 720);
    *(v0 + 616) = v1;
    v7 = *(v0 + 577);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
    sub_2585336CC();
    swift_unknownObjectRelease();
    sub_2584A96C0(v4, v3, v2, v18, v7);
    (*(v6 + 8))(v5, v19);
  }

  else
  {
    v9 = *(v0 + 720);
    v10 = *(v0 + 696);
    v11 = *(v0 + 688);
    v12 = *(v0 + 680);
    v13 = *(v0 + 672);
    v14 = *(v0 + 577);
    sub_2584A5730();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_2584A96C0(v13, v12, v11, v10, v14);
    v16 = *(v0 + 656);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25848A1B4()
{
  sub_2584A96C0(*(v0 + 672), *(v0 + 680), *(v0 + 688), *(v0 + 696), *(v0 + 577));
  v1 = *(v0 + 728);
  v2 = *(v0 + 656);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25848A230(_OWORD *a1, uint64_t a2)
{
  *(v3 + 608) = v2;
  *(v3 + 600) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303A8, &unk_258537F60);
  *(v3 + 616) = v5;
  v6 = *(v5 - 8);
  *(v3 + 624) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 632) = swift_task_alloc();
  v8 = a1[3];
  *(v3 + 48) = a1[2];
  *(v3 + 64) = v8;
  v9 = a1[5];
  *(v3 + 80) = a1[4];
  *(v3 + 96) = v9;
  v10 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v10;

  return MEMORY[0x2822009F8](sub_25848A31C, v2, 0);
}

uint64_t sub_25848A31C()
{
  v1 = *(*(v0 + 608) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_audioStreamManager);
  *(v0 + 640) = v1;
  return MEMORY[0x2822009F8](sub_25848A348, v1, 0);
}

uint64_t sub_25848A348()
{
  v1 = *(v0 + 640);
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 128);

    v4 = sub_2584BC50C();
    v5 = *(v0 + 608);
    if (v6)
    {
      v7 = *(v2 + 56) + 16 * v4;
      v8 = *v7;
      *(v0 + 648) = *v7;
      v9 = *(v7 + 8);
      *(v0 + 593) = v9;
      sub_2584742A4(v8, v9);

      v10 = sub_25848A4D0;
    }

    else
    {

      v10 = sub_2584AC7D4;
    }

    v12 = v10;
    v11 = v5;
  }

  else
  {
    v11 = *(v0 + 608);
    v12 = sub_25848A438;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_25848A438()
{
  sub_2584A5730();
  swift_allocError();
  *v1 = 12;
  swift_willThrow();
  v2 = *(v0 + 632);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25848A4D0()
{
  v1 = *(v0 + 608);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  *(v0 + 656) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  v3 = *(v0 + 593);
  if (*(v1 + v2) != 2)
  {
    v4 = 2;
    goto LABEL_6;
  }

  if (!*(v0 + 593))
  {
    if (*(v0 + 16))
    {
      goto LABEL_11;
    }

    v3 = 0;
    v4 = 15;
LABEL_6:
    sub_2584A9614(*(v0 + 648), v3);
    goto LABEL_7;
  }

  if (*(v0 + 16))
  {
    v4 = 15;
LABEL_7:
    sub_2584A5730();
    swift_allocError();
    *v5 = v4;
    swift_willThrow();
    v6 = *(v0 + 632);

    v7 = *(v0 + 8);

    return v7();
  }

LABEL_11:
  *(v0 + 584) = *(v0 + 648);
  *(v0 + 592) = v3;
  v9 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v9;
  v10 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v10;
  v11 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v11;
  sub_2584A9620(v0 + 16, v0 + 208);
  v12 = swift_task_alloc();
  *(v0 + 664) = v12;
  *v12 = v0;
  v12[1] = sub_25848A660;
  v13 = *(v0 + 608);
  v14 = *(v0 + 600);

  return sub_25848B110((v0 + 584), v14, (v0 + 112));
}

uint64_t sub_25848A660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  *(v7 + 496) = v5;
  *(v7 + 504) = a1;
  *(v7 + 512) = a2;
  *(v7 + 520) = a3;
  *(v7 + 528) = a4;
  *(v7 + 536) = v4;
  v8 = *(v6 + 664);
  v24 = *v5;
  *(v7 + 672) = a1;
  *(v7 + 680) = v4;

  if (v4)
  {
    v9 = *(v7 + 608);
    v10 = *(v7 + 128);
    *(v7 + 304) = *(v7 + 112);
    *(v7 + 320) = v10;
    v11 = *(v7 + 192);
    v13 = *(v7 + 144);
    v12 = *(v7 + 160);
    *(v7 + 368) = *(v7 + 176);
    *(v7 + 384) = v11;
    *(v7 + 336) = v13;
    *(v7 + 352) = v12;
    sub_258465168(v7 + 304, &qword_27F9303B0, &unk_25853F8C0);
    v14 = sub_25848A974;
    v15 = v9;
  }

  else
  {
    v16 = *(v7 + 593);
    v17 = *(v7 + 648);
    v18 = *(v7 + 608);
    v19 = *(v7 + 128);
    *(v7 + 400) = *(v7 + 112);
    *(v7 + 416) = v19;
    v20 = *(v7 + 192);
    v22 = *(v7 + 144);
    v21 = *(v7 + 160);
    *(v7 + 464) = *(v7 + 176);
    *(v7 + 480) = v20;
    *(v7 + 432) = v22;
    *(v7 + 448) = v21;
    sub_258465168(v7 + 400, &qword_27F9303B0, &unk_25853F8C0);
    sub_2584A9614(v17, v16);
    v14 = sub_25848A818;
    v15 = v18;
  }

  return MEMORY[0x2822009F8](v14, v15, 0);
}

uint64_t sub_25848A818()
{
  if (*(v0[76] + v0[82]) == 2)
  {
    v1 = v0[79];
    v2 = v0[78];
    v3 = v0[77];
    v4 = v0[64] | 0x4000000000000000;
    v0[71] = v0[84];
    v0[72] = v4;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
    sub_2585336CC();
    swift_unknownObjectRelease();
    (*(v2 + 8))(v1, v3);
  }

  else
  {
    v6 = v0[84];
    sub_2584A5730();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    v8 = v0[79];
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_25848A974()
{
  sub_2584A9614(*(v0 + 648), *(v0 + 593));
  v1 = *(v0 + 680);
  v2 = *(v0 + 632);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25848A9E4(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v4 + 208) = a2;
  *(v4 + 216) = v3;
  inited = type metadata accessor for VideoStreamInternalInitParameters();
  *(v4 + 224) = inited;
  v8 = *(*(inited - 8) + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  v9 = *(a1 + 16);
  *(v4 + 248) = *a1;
  *(v4 + 264) = v9;
  *(v4 + 328) = *(a1 + 32);
  v10 = a3[3];
  *(v4 + 48) = a3[2];
  *(v4 + 64) = v10;
  v11 = a3[5];
  *(v4 + 80) = a3[4];
  *(v4 + 96) = v11;
  v12 = a3[1];
  *(v4 + 16) = *a3;
  *(v4 + 32) = v12;

  return MEMORY[0x2822009F8](sub_25848AAC4, v3, 0);
}

uint64_t sub_25848AAC4()
{
  v24 = *(v0 + 264);
  v25 = *(v0 + 272);
  v1 = *(v0 + 248);
  v23 = *(v0 + 256);
  v2 = *(v0 + 240);
  v26 = *(v0 + 232);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v4 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 32);
  v6 = *(v4 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 33);
  v21 = *(v4 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 16);
  v22 = *(v4 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage);
  v7 = *(v0 + 328);
  sub_258464C30(*(v0 + 208), v2 + 80);
  v8 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
  v9 = v3[8];
  v10 = sub_2585329BC();
  (*(*(v10 - 8) + 16))(v2 + v9, v4 + v8, v10);
  LOBYTE(v8) = *(v4 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32) != 0;
  sub_258464C30(v4 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider, v2 + v3[10]);
  *v2 = v22;
  *(v2 + 16) = v21;
  *(v2 + 32) = v5;
  *(v2 + 33) = v6;
  *(v2 + 40) = v1;
  *(v2 + 48) = v23;
  *(v2 + 56) = v24;
  *(v2 + 64) = v25;
  *(v2 + 72) = v7;
  v11 = *(v0 + 48);
  v12 = *(v0 + 64);
  v13 = *(v0 + 80);
  *(v2 + 200) = *(v0 + 96);
  *(v2 + 184) = v13;
  *(v2 + 168) = v12;
  v14 = *(v0 + 16);
  *(v2 + 136) = *(v0 + 32);
  *(v2 + 120) = v14;
  *(v2 + 152) = v11;
  *(v2 + v3[9]) = v8;
  sub_2584AC4D0(v2, v26, type metadata accessor for VideoStreamInternalInitParameters);
  sub_2584A967C(v1, v23, v24, v25, v7);
  sub_2584AC3B8(v0 + 16, v0 + 112, &qword_27F9303B8, &qword_258537F70);
  *(v0 + 280) = sub_25850E63C(v26);
  v15 = *(v0 + 216);
  v16 = sub_2584AC2F0(&qword_27F9305A0, type metadata accessor for VideoStreamAVConference);
  *(v0 + 288) = v16;
  *(v0 + 296) = *(v15 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager);
  swift_getObjectType();
  v17 = *(*(v16 + 8) + 8);
  v19 = sub_25853362C();

  return MEMORY[0x2822009F8](sub_25848ADA0, v19, v18);
}

uint64_t sub_25848ADA0()
{
  v1 = v0[35];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9305A8, &qword_2585382C0);
  swift_allocObject();

  v3 = sub_25849497C(v2);
  v0[38] = v3;
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_25848AE8C;
  v5 = v0[37];

  return (sub_25849FE0C)(v3);
}

uint64_t sub_25848AE8C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 304);
  v6 = *(v2 + 216);

  if (v0)
  {
    v7 = sub_25848B074;
  }

  else
  {
    v7 = sub_25848AFD4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_25848AFD4()
{
  v1 = v0[29];
  sub_2584ABB80(v0[30], type metadata accessor for VideoStreamInternalInitParameters);

  v2 = v0[1];
  v3 = v0[35];
  v4 = v0[36];

  return v2(v3, &off_286990F08, &off_286990F18, v4);
}

uint64_t sub_25848B074()
{
  v1 = v0[35];

  v2 = v0[40];
  v3 = v0[29];
  sub_2584ABB80(v0[30], type metadata accessor for VideoStreamInternalInitParameters);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25848B110(uint64_t *a1, uint64_t a2, _OWORD *a3)
{
  *(v4 + 208) = a2;
  *(v4 + 216) = v3;
  inited = type metadata accessor for AudioStreamInternalInitParameters();
  *(v4 + 224) = inited;
  v8 = *(*(inited - 8) + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a1;
  *(v4 + 240) = v9;
  *(v4 + 248) = v10;
  *(v4 + 304) = *(a1 + 8);
  v11 = a3[3];
  *(v4 + 48) = a3[2];
  *(v4 + 64) = v11;
  v12 = a3[5];
  *(v4 + 80) = a3[4];
  *(v4 + 96) = v12;
  v13 = a3[1];
  *(v4 + 16) = *a3;
  *(v4 + 32) = v13;

  return MEMORY[0x2822009F8](sub_25848B1E4, v3, 0);
}

uint64_t sub_25848B1E4()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v23 = *(v0 + 232);
  v5 = *(v0 + 216);
  v6 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 32);
  v7 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 33);
  v21 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 16);
  v22 = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage);
  sub_258464C30(*(v0 + 208), v3 + 56);
  v8 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
  v9 = v4[8];
  v10 = sub_2585329BC();
  (*(*(v10 - 8) + 16))(v3 + v9, v5 + v8, v10);
  LOBYTE(v9) = *(v5 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32) != 0;
  sub_258464C30(v5 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider, v3 + v4[10]);
  *v3 = v22;
  *(v3 + 16) = v21;
  *(v3 + 32) = v6;
  *(v3 + 33) = v7;
  *(v3 + 40) = v2;
  *(v3 + 48) = v1;
  v11 = *(v0 + 48);
  v12 = *(v0 + 64);
  v13 = *(v0 + 96);
  *(v3 + 160) = *(v0 + 80);
  *(v3 + 176) = v13;
  *(v3 + 144) = v12;
  v14 = *(v0 + 32);
  *(v3 + 96) = *(v0 + 16);
  *(v3 + 112) = v14;
  *(v3 + 128) = v11;
  *(v3 + v4[9]) = v9;
  sub_2584AC4D0(v3, v23, type metadata accessor for AudioStreamInternalInitParameters);
  sub_2584742A4(v2, v1);
  sub_2584AC3B8(v0 + 16, v0 + 112, &qword_27F9303B0, &unk_25853F8C0);
  *(v0 + 256) = sub_258531798(v23);
  v15 = *(v0 + 216);
  v16 = sub_2584AC2F0(&qword_27F930550, type metadata accessor for AudioStreamAVConference);
  *(v0 + 264) = v16;
  *(v0 + 272) = *(v15 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_audioStreamManager);
  swift_getObjectType();
  v17 = *(*(v16 + 8) + 8);
  v19 = sub_25853362C();

  return MEMORY[0x2822009F8](sub_25848B494, v19, v18);
}

uint64_t sub_25848B494()
{
  v1 = v0[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930558, &qword_258538200);
  swift_allocObject();

  v3 = sub_258494A40(v2);
  v0[35] = v3;
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_25848B580;
  v5 = v0[34];

  return (sub_2584A0618)(v3);
}

uint64_t sub_25848B580()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 280);
  v6 = *(v2 + 216);

  if (v0)
  {
    v7 = sub_25848B768;
  }

  else
  {
    v7 = sub_25848B6C8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_25848B6C8()
{
  v1 = v0[29];
  sub_2584ABB80(v0[30], type metadata accessor for AudioStreamInternalInitParameters);

  v2 = v0[1];
  v3 = v0[32];
  v4 = v0[33];

  return v2(v3, v4, &off_286991910, &off_286991920);
}

uint64_t sub_25848B768()
{
  v1 = v0[32];

  v2 = v0[37];
  v3 = v0[29];
  sub_2584ABB80(v0[30], type metadata accessor for AudioStreamInternalInitParameters);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25848B804()
{
  v1[26] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930350, &unk_258537A78) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[28] = v3;
  *v3 = v1;
  v3[1] = sub_25848B8CC;

  return sub_258484538();
}

uint64_t sub_25848B8CC()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 216);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 208);

    return MEMORY[0x2822009F8](sub_25848BA18, v8, 0);
  }
}

uint64_t sub_25848BA18()
{
  v1 = *(v0 + 208);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  *(v0 + 232) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (*(v1 + v2) == 1)
  {
    v3 = v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
    swift_beginAccess();
    if (*(v3 + 24))
    {
      sub_258464C30(v3, v0 + 56);
      if (*(v0 + 80))
      {
LABEL_4:
        sub_258464C18((v0 + 56), v0 + 16);
        v4 = *(v0 + 40);
        v5 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
        v6 = *(v5 + 64);
        v17 = (v6 + *v6);
        v7 = v6[1];
        v8 = swift_task_alloc();
        *(v0 + 240) = v8;
        *v8 = v0;
        v8[1] = sub_25848BC64;
        v9 = *(v0 + 216);

        return v17(v9, v4, v5);
      }
    }

    else
    {
      v13 = *v3;
      v14 = *(v3 + 16);
      *(v0 + 88) = *(v3 + 32);
      *(v0 + 72) = v14;
      *(v0 + 56) = v13;
      if (*(v0 + 80))
      {
        goto LABEL_4;
      }
    }

    sub_2584A5730();
    swift_allocError();
    v12 = 8;
  }

  else
  {
    sub_2584A5730();
    swift_allocError();
    if (*(v1 + v2) == 3)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }
  }

  *v11 = v12;
  swift_willThrow();
  v15 = *(v0 + 216);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_25848BC64()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = sub_25848C20C;
  }

  else
  {
    v6 = sub_25848BD90;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25848BD90()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930278, &unk_2585379C0);
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventStream;
  swift_beginAccess();
  sub_2584AC5D0(v2, v3 + v5, &qword_27F930350, &unk_258537A78);
  swift_endAccess();
  if (*(v3 + v1) == 1)
  {
    if (*(v0[26] + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32))
    {
      v6 = v0[5];
      v7 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
      v8 = *(v7 + 104);
      v19 = (v8 + *v8);
      v9 = v8[1];
      v10 = swift_task_alloc();
      v0[32] = v10;
      *v10 = v0;
      v10[1] = sub_25848C02C;

      return (v19)(v0 + 12, v6, v7);
    }

    v18 = v0[27];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v17 = v0[1];
  }

  else
  {
    v12 = v0[29];
    v13 = v0[26];
    sub_2584A5730();
    swift_allocError();
    if (*(v13 + v12) == 3)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    *v14 = v15;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v16 = v0[27];

    v17 = v0[1];
  }

  return v17();
}

uint64_t sub_25848C02C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = sub_25848C278;
  }

  else
  {
    v6 = sub_25848C158;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25848C158()
{
  v1 = v0[26];
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
  swift_beginAccess();
  sub_2584AC5D0((v0 + 12), v1 + v2, &qword_27F92FB90, &qword_258535420);
  swift_endAccess();
  v3 = v0[27];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25848C20C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[31];
  v2 = v0[27];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25848C278()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[33];
  v2 = v0[27];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25848C304()
{
  sub_2584AC3B8(*(v0 + 240) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager, v0 + 56, &qword_27F930360, &unk_258537A90);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 240);
    sub_258464C18((v0 + 56), v0 + 16);
    v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
    swift_beginAccess();
    if (*(v2 + 24))
    {
      sub_258464C30(v2, v0 + 136);
      if (*(v0 + 160))
      {
LABEL_4:
        v3 = *(v0 + 240);
        sub_258464C18((v0 + 136), v0 + 96);
        v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        v5 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_clientSessionID;
        v17 = *(v0 + 120);
        v6 = *(v0 + 120);
        v7 = __swift_project_boxed_opaque_existential_1((v0 + 96), v6);
        *(v0 + 200) = v17;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
        (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v7, v6);
        v9 = *v4;

        v10 = swift_task_alloc();
        *(v0 + 248) = v10;
        *v10 = v0;
        v10[1] = sub_25848C594;
        v11 = *(v0 + 240);

        return sub_25845FEA4(v3 + v5, v0 + 176, &unk_258538370, v11);
      }
    }

    else
    {
      v14 = *v2;
      v15 = *(v2 + 16);
      *(v0 + 168) = *(v2 + 32);
      *(v0 + 152) = v15;
      *(v0 + 136) = v14;
      if (*(v0 + 160))
      {
        goto LABEL_4;
      }
    }

    sub_2584A5730();
    swift_allocError();
    *v16 = 8;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v13 = *(v0 + 8);
  }

  else
  {
    sub_258465168(v0 + 56, &qword_27F930360, &unk_258537A90);
    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_25848C594()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = *(v2 + 240);

    v5 = sub_25848C734;
  }

  else
  {
    v4 = *(v2 + 240);

    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 176));
    v5 = sub_25848C6C8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25848C6C8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_25848C734()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[32];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_25848C7A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25848C7C4, a2, 0);
}

uint64_t sub_25848C7C4()
{
  v21 = v0;
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93CFA8);

  v4 = v2;
  v5 = sub_258532A2C();
  v6 = sub_2585338EC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[2];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v9 = 136315394;
    sub_258533B8C();

    v20[1] = 0xD000000000000017;
    v20[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v12 = sub_258533DFC();
    MEMORY[0x259C81500](v12);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v13 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v20);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&dword_25845E000, v5, v6, "%s controlConnectionMigrationManager interrupted with error=%@", v9, 0x16u);
    sub_258465168(v10, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x259C82900](v11, -1, -1);
    MEMORY[0x259C82900](v9, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[4] = v16;
  *v16 = v0;
  v16[1] = sub_25848CAB4;
  v17 = v0[2];
  v18 = v0[3];

  return sub_258491E14(v17);
}

uint64_t sub_25848CAB4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25848CBA8()
{
  v1[33] = v0;
  v2 = type metadata accessor for SessionMessage();
  v1[34] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  v4 = type metadata accessor for ActivationRequestInfo();
  v1[36] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25848CC6C, v0, 0);
}

uint64_t sub_25848CC6C()
{
  v1 = *(v0 + 264);
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32))
  {
    v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
    swift_beginAccess();
    if (*(v2 + 24))
    {
      sub_258464C30(v2, v0 + 56);
      if (*(v0 + 80))
      {
LABEL_4:
        v3 = *(v0 + 264);
        sub_258464C18((v0 + 56), v0 + 16);
        v4 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
        swift_beginAccess();
        sub_2584AC3B8(v3 + v4, v0 + 136, &qword_27F92FB90, &qword_258535420);
        if (*(v0 + 160))
        {
          sub_258464C18((v0 + 136), v0 + 96);
          if (qword_27F92F958 != -1)
          {
            swift_once();
          }

          v5 = qword_27F93D260;
          v38 = qword_27F93D258;
          v6 = qword_27F92F950;

          if (v6 != -1)
          {
            swift_once();
          }

          v8 = *(v0 + 288);
          v7 = *(v0 + 296);
          v9 = *(v0 + 280);
          v39 = *(v0 + 272);
          v10 = *(v0 + 264);
          v12 = qword_27F93D248;
          v11 = qword_27F93D250;
          v13 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
          v14 = v8[6];
          v15 = sub_2585329BC();
          (*(*(v15 - 8) + 16))(v7 + v14, v10 + v13, v15);
          sub_258464C30(v0 + 96, v0 + 176);

          v16 = sub_2584AE310((v0 + 176));
          *v7 = v38;
          v7[1] = v5;
          v7[2] = v12;
          v7[3] = v11;
          v17 = (v7 + v8[7]);
          v17[1] = 0;
          v17[2] = 0;
          *v17 = 1;
          v18 = (v7 + v8[8]);
          *v18 = v16;
          v18[1] = v19;
          v18[2] = v20;
          v18[3] = v21;
          v22 = *(v0 + 40);
          v23 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_1((v0 + 16), v22);
          sub_2584AC4D0(v7, v9, type metadata accessor for ActivationRequestInfo);
          swift_storeEnumTagMultiPayload();
          v24 = *(v23 + 80);
          v40 = (v24 + *v24);
          v25 = v24[1];
          v26 = swift_task_alloc();
          *(v0 + 304) = v26;
          *v26 = v0;
          v26[1] = sub_25848D0D4;
          v27 = *(v0 + 280);

          return v40(v27, v22, v23);
        }

        sub_258465168(v0 + 136, &qword_27F92FB90, &qword_258535420);
        sub_2584A5730();
        swift_allocError();
        *v35 = 9;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
        goto LABEL_16;
      }
    }

    else
    {
      v32 = *v2;
      v33 = *(v2 + 16);
      *(v0 + 88) = *(v2 + 32);
      *(v0 + 72) = v33;
      *(v0 + 56) = v32;
      if (*(v0 + 80))
      {
        goto LABEL_4;
      }
    }

    sub_2584A5730();
    swift_allocError();
    *v34 = 8;
    swift_willThrow();
LABEL_16:
    v36 = *(v0 + 296);
    v37 = *(v0 + 280);

    v31 = *(v0 + 8);
    goto LABEL_17;
  }

  v29 = *(v0 + 296);
  v30 = *(v0 + 280);

  v31 = *(v0 + 8);
LABEL_17:

  return v31();
}

uint64_t sub_25848D0D4()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 280);
  v6 = *(v2 + 264);
  sub_2584ABB80(v5, type metadata accessor for SessionMessage);
  if (v0)
  {
    v7 = sub_25848D2CC;
  }

  else
  {
    v7 = sub_25848D230;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_25848D230()
{
  sub_2584ABB80(v0[37], type metadata accessor for ActivationRequestInfo);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[37];
  v2 = v0[35];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25848D2CC()
{
  sub_2584ABB80(v0[37], type metadata accessor for ActivationRequestInfo);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[35];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25848D368(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v2[30] = v4;
  v5 = *(v4 - 8);
  v2[31] = v5;
  v6 = *(v5 + 64) + 15;
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25848D478, v1, 0);
}

uint64_t sub_25848D478()
{
  v1 = *(v0 + 216);
  if (!*(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32))
  {
    goto LABEL_7;
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v5, v4, &unk_27F930DB0, &qword_258536390);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_258465168(*(v0 + 232), &unk_27F930DB0, &qword_258536390);
    return sub_258533C9C();
  }

  v7 = *(v0 + 216);
  (*(*(v0 + 248) + 32))(*(v0 + 256), *(v0 + 232), *(v0 + 240));
  v8 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
  swift_beginAccess();
  sub_2584AC3B8(v7 + v8, v0 + 56, &qword_27F92FB90, &qword_258535420);
  if (*(v0 + 80))
  {
    v9 = *(v0 + 208);
    v10 = *(v0 + 216);
    sub_258464C18((v0 + 56), v0 + 16);
    sub_258493BD8(1, 0, 0, v9[4], v9[5], v9[6]);
    v12 = *(v0 + 248);
    v11 = *(v0 + 256);
    v13 = *(v0 + 240);
    v22 = *(v0 + 216);
    v23 = *(v0 + 208);
    v44 = *v23;
    v45 = *(v0 + 224);
    v42 = v23[1];
    v43 = v23[2];
    v41 = v23[3];

    v24 = sub_25853294C();
    v39 = v25;
    v40 = v24;
    v27 = *(v0 + 40);
    v26 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v27);
    (*(v26 + 8))(v27, v26);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    LOBYTE(v10) = sub_25847B7F4();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    v28 = v22 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo;
    v29 = *(v22 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo);
    v30 = *(v22 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 8);
    v31 = *(v22 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 16);
    v32 = *(v22 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 24);
    v33 = *(v22 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 32);
    v34 = *(v22 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 40);
    *v28 = v44;
    *(v28 + 8) = v42;
    *(v28 + 16) = v43;
    *(v28 + 24) = v41;
    *(v28 + 32) = v40;
    *(v28 + 40) = v39;
    v35 = *(v28 + 48);
    *(v28 + 48) = v10;
    sub_2584A5834(v29, v30);
    sub_25853364C();
    (*(v12 + 8))(v11, v13);
    (*(v12 + 56))(v45, 1, 1, v13);
    swift_beginAccess();
    sub_2584AC5D0(v45, v1 + v5, &unk_27F930DB0, &qword_258536390);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_7:
    v36 = *(v0 + 256);
    v37 = *(v0 + 224);
    v38 = *(v0 + 232);

    v21 = *(v0 + 8);
    goto LABEL_8;
  }

  v15 = *(v0 + 248);
  v14 = *(v0 + 256);
  v16 = *(v0 + 240);
  sub_258465168(v0 + 56, &qword_27F92FB90, &qword_258535420);
  sub_2584A5730();
  swift_allocError();
  *v17 = 9;
  swift_willThrow();
  (*(v15 + 8))(v14, v16);
  v18 = *(v0 + 256);
  v20 = *(v0 + 224);
  v19 = *(v0 + 232);

  v21 = *(v0 + 8);
LABEL_8:

  return v21();
}