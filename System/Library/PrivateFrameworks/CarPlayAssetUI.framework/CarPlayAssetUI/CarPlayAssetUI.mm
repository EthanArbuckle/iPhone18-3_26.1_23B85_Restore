uint64_t Optional<A>.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v9);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_242F05A80();

    v13 = 0x6C616E6F6974704FLL;
    v14 = 0xE90000000000003CLL;
    v10 = sub_242F06580();
    MEMORY[0x245D26660](v10);

    MEMORY[0x245D26660](0x656E6F6E2E3ELL, 0xE600000000000000);
    return v13;
  }

  else
  {
    (*(v2 + 32))(v5, v7, v1);
    v12 = sub_242F05F60();
    (*(v2 + 8))(v5, v1);
    return v12;
  }
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_242C54FF0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_242C5501C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242F04F30();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_242C5504C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242C5506C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CodableUnitPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CodableUnitPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_242C550E0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_242C55138()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_242C553F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 40) = v3;
  return result;
}

__n128 sub_242C55438@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

__n128 sub_242C55444(__n128 *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

__n128 sub_242C55450@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

__n128 sub_242C5545C(__n128 *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 24) = *a1;
  return result;
}

uint64_t sub_242C55470(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_242C7CE5C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_242C55484(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_242C7CEB0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_242C55498()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_242C5557C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_242C555BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242C55618@<X0>(void *a1@<X8>)
{
  sub_242C9E9E4();
  result = sub_242F04010();
  *a1 = v3;
  return result;
}

uint64_t sub_242C556C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0B30);
  sub_242F03E00();
  sub_242C9E980();
  return swift_getWitnessTable();
}

uint64_t sub_242C5573C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_242C55754()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242C557F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242F03FC0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242C55828@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242F03FA0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242C558A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0BB8);
  sub_242F04290();
  sub_242F03E00();
  sub_242F041F0();
  sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0BC0);
  sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0BC8);
  sub_242F03E00();
  sub_242F04A30();
  sub_242F03B90();
  sub_242F05860();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_242F041A0();
  sub_242F03E00();
  sub_242CA2784();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_242C7E000(&qword_27ECF0C10, &qword_27ECF0BC0);
  swift_getWitnessTable();
  sub_242C7E000(qword_27ECF0C18, &qword_27ECF0BC8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_242C55BD8()
{
  v1 = 0x6D696E41776F6873;
  if (*v0 != 1)
  {
    v1 = 0x6D696E4165646968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701606770;
  }
}

uint64_t sub_242C55C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242CBDB68(a1, a2);
  *a3 = result;
  return result;
}

void *sub_242C55D68@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_242C55D88(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_242C55DA4()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x245D279A0](v1);
}

uint64_t sub_242C55DE0()
{
  if (*v0)
  {
    return 0x6E65644961746164;
  }

  else
  {
    return 1701606770;
  }
}

void *sub_242C55E74@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

__n128 sub_242C55EF4@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_242C55F00(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_242C55F0C@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[1];
  *a2 = result;
  return result;
}

__n128 sub_242C55F18(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1] = *a1;
  return result;
}

uint64_t sub_242C5645C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 48);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_242C564AC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_242C56504()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242C56578()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

float sub_242C565D4@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 12);
  *a2 = result;
  return result;
}

float sub_242C565E0(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 12) = *a1;
  return result;
}

__n128 sub_242C565EC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 232);
  result = *(a1 + 200);
  v4 = *(a1 + 216);
  *a2 = result;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

__n128 sub_242C56604(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(a2 + 200) = *a1;
  *(a2 + 216) = v4;
  *(a2 + 232) = v2;
  return result;
}

uint64_t sub_242C5661C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242C56658@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *a2 = v3;
  a2[1] = v2;
  return sub_242C5573C(v3);
}

uint64_t sub_242C56668(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 32);
  sub_242C5573C(*a1);
  result = sub_242C655DC(v5);
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  return result;
}

uint64_t sub_242C566BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_242C566C8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 112) = v4;
  *(a2 + 120) = v3;
  return result;
}

__n128 sub_242C56764(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_242C56774()
{

  sub_242CE3624();
  sub_242C7D8F4(*(v0 + 872), *(v0 + 880), *(v0 + 888), *(v0 + 896), *(v0 + 904), *(v0 + 912));
  if (*(v0 + 928))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 968, 7);
}

__n128 sub_242C56A68@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Zone() + 24);
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_242C56AA8@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + *(type metadata accessor for Zone() + 44));
  *a2 = result;
  return result;
}

uint64_t sub_242C56AE0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  result = type metadata accessor for Zone();
  v6 = (a2 + *(result + 44));
  *v6 = v3;
  v6[1] = v4;
  return result;
}

uint64_t sub_242C56B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_242C56BEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242C56CFC()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_242C56D34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242C56D70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, (a1 + 24), sizeof(__dst));
  memcpy(a2, (a1 + 24), 0x340uLL);
  return sub_242CA321C(__dst, &v5, &qword_27ECF2A60);
}

void *sub_242C56DE0(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v7, (a2 + 24), sizeof(v7));
  sub_242D0BDE0(__dst, &v5);
  sub_242C6D138(v7, &qword_27ECF2A60);
  return memcpy((a2 + 24), __src, 0x340uLL);
}

uint64_t sub_242C56E68()
{

  sub_242CE3624();
  sub_242C7D8F4(*(v0 + 880), *(v0 + 888), *(v0 + 896), *(v0 + 904), *(v0 + 912), *(v0 + 920));
  if (*(v0 + 936))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 968, 7);
}

uint64_t sub_242C57064()
{

  sub_242CE3624();
  sub_242C7D8F4(*(v0 + 872), *(v0 + 880), *(v0 + 888), *(v0 + 896), *(v0 + 904), *(v0 + 912));
  if (*(v0 + 928))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 960, 7);
}

uint64_t sub_242C57390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_242C5745C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242C575B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242C575EC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_242F03720();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_242C576E0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_242F03720();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

__n128 sub_242C57814(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_242C57828()
{
  sub_242CD5324(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 88);
  if (v1 != 255)
  {
    sub_242CD5410(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v1 & 1);
  }

  if (*(v0 + 104))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_242C578B0()
{
  sub_242CD5324(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  if (*(v0 + 64))
  {
  }

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_242C57928()
{
  sub_242CD5324(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  if (*(v0 + 64))
  {
  }

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_242C57998()
{
  sub_242CD5324(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_242C57D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242F03720();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_242C57E68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_242F03720();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_242C57F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242F03720();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_242F03BB0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_242C5806C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_242F03720();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_242F03BB0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_242C58168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242C581E0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_242C58270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242F03720();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_242C5836C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_242F03720();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_242C58474()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242C584AC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_242C58534()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Zone();
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v39 = type metadata accessor for Component();
  v8 = *(*(v39 - 8) + 80);
  v38 = *(*(v39 - 8) + 64);
  v9 = v0 + v3;
  v10 = type metadata accessor for RequestContentModel();
  if ((*(*(v10 - 8) + 48))(v0 + v3, 1, v10))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v19 = sub_242F03720();
        (*(*(v19 - 8) + 8))(v0 + v3, v19);
        v20 = v9 + *(type metadata accessor for Instrument() + 20);
        v36 = *(v20 + 464);
        v37 = *(v20 + 480);
        v34 = *(v20 + 432);
        v35 = *(v20 + 448);
        v32 = *(v20 + 400);
        v33 = *(v20 + 416);
        v30 = *(v20 + 368);
        v31 = *(v20 + 384);
        v28 = *(v20 + 336);
        v29 = *(v20 + 352);
        v26 = *(v20 + 304);
        v27 = *(v20 + 320);
        v24 = *(v20 + 272);
        v25 = *(v20 + 288);
        v22 = *(v20 + 240);
        v23 = *(v20 + 256);
        sub_242D3B6A0(*v20, *(v20 + 8), *(v20 + 16), *(v20 + 24), *(v20 + 32), *(v20 + 40), *(v20 + 48), *(v20 + 56), *(v20 + 64), *(v20 + 72), *(v20 + 80), *(v20 + 88), *(v20 + 96), *(v20 + 104), *(v20 + 112), *(v20 + 120), *(v20 + 128), *(v20 + 136), *(v20 + 144), *(v20 + 152), *(v20 + 160), *(v20 + 168), *(v20 + 176), *(v20 + 184), *(v20 + 192), *(v20 + 200), *(v20 + 208), *(v20 + 216), *(v20 + 224), *(v20 + 232), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, SBYTE8(v37), *(v20 + 496));

        type metadata accessor for PopoverModel(0);
      }

      goto LABEL_2;
    }

    sub_242CF6AD8(*(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56));
    if (!*(v9 + 64))
    {
      goto LABEL_2;
    }

LABEL_12:

    goto LABEL_2;
  }

  if (EnumCaseMultiPayload == 2)
  {

    sub_242D3D4F0(*(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72), *(v9 + 80), *(v9 + 88), *(v9 + 96), *(v9 + 104));
    goto LABEL_2;
  }

  if (EnumCaseMultiPayload == 3)
  {

    if (*(v9 + 40))
    {
      goto LABEL_12;
    }
  }

LABEL_2:
  v11 = (v3 + v4 + v6) & ~v6;
  v12 = (((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;
  v13 = v2 | v6 | v8;
  v14 = v0 + v11;
  v15 = sub_242F03720();
  v16 = *(*(v15 - 8) + 8);
  v16(v14, v15);

  v17 = v14 + *(v5 + 32);
  sub_242D1162C(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32), *(v17 + 40), *(v17 + 48), *(v17 + 56), *(v17 + 64), *(v17 + 72), *(v17 + 80), *(v17 + 88), *(v17 + 96));

  v16(v0 + v12, v15);

  return MEMORY[0x2821FE8E8](v0, v38 + v12 + 1, v13 | 7);
}

uint64_t sub_242C58A88()
{

  sub_242CF6AD8(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_242C58AE0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242C58B20()
{
  v1 = (type metadata accessor for Zone() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (((v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_242F03720();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v5 + v1[10];
  sub_242D1162C(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72), *(v7 + 80), *(v7 + 88), *(v7 + 96));

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_242C58CAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242C58CEC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_242C58D44()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = (type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;

  v10 = sub_242F03720();
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v3, v10);
  v11(v0 + v7, v10);
  v11(v0 + v7 + v5[7], v10);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_242C58F0C()
{
  if (*v0)
  {
    return 0x736C6562616CLL;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242C59004()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_242C5904C(uint64_t result)
{
  v1 = *(result + 344) & 0xFF7F7FFFFFFFFFFFLL;
  *(result + 264) &= 0x3FFFFFFFFFFFFFFFuLL;
  *(result + 344) = v1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI27DigiBarRedlineConfigurationVSg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_242C590A4()
{
  sub_242C7F724(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_242C591E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242C59220@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_242C5922C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 104) = v4;
  *(a2 + 112) = v3;
  return result;
}

uint64_t sub_242C59270@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  *a2 = v3;
  a2[1] = v2;
  return sub_242C5573C(v3);
}

uint64_t sub_242C59280(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 56);
  sub_242C5573C(*a1);
  result = sub_242C655DC(v5);
  *(a2 + 56) = v3;
  *(a2 + 64) = v4;
  return result;
}

uint64_t sub_242C59330()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_242C59378()
{
  sub_242C7F724(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_242C593B8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_242C59470()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_242C594B8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_242C59500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for Layout() + 40);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a2 + 96) = v22;
  *(a2 + 112) = v14;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v11;
  *(a2 + 80) = v4;
  v24 = *(v3 + 128);
  *(a2 + 128) = *(v3 + 128);
  *a2 = v13;
  *(a2 + 16) = v6;
  return sub_242CA321C(v17, v16, &qword_27ECF4660);
}

uint64_t sub_242C595BC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Layout() + 48));
  *&v10[9] = *(v3 + 41);
  v4 = *&v10[9];
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  *v10 = v3[2];
  v6 = *v10;
  *a2 = v9[0];
  a2[1] = v5;
  a2[2] = v6;
  *(a2 + 41) = v4;
  return sub_242CA321C(v9, &v8, &qword_27ECF4668);
}

uint64_t sub_242C5963C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Layout() + 52));
}

uint64_t sub_242C59688@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for Layout() + 56));
}

uint64_t sub_242C596D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_242C597A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242C59868()
{
  sub_242C7F724(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_242C599B0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_242C599F8()
{
  v16 = *(v0 + 480);
  v17 = *(v0 + 496);
  v14 = *(v0 + 448);
  v15 = *(v0 + 464);
  v12 = *(v0 + 416);
  v13 = *(v0 + 432);
  v10 = *(v0 + 384);
  v11 = *(v0 + 400);
  v8 = *(v0 + 352);
  v9 = *(v0 + 368);
  v6 = *(v0 + 320);
  v7 = *(v0 + 336);
  v4 = *(v0 + 288);
  v5 = *(v0 + 304);
  v2 = *(v0 + 256);
  v3 = *(v0 + 272);
  sub_242D3B6A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), v9, *(&v9 + 1), v10, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, SBYTE8(v17), *(v0 + 512));

  return MEMORY[0x2821FE8E8](v0, 584, 7);
}

uint64_t sub_242C59B00@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27ECF4CA0;
  return result;
}

uint64_t sub_242C59B4C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27ECF4CA0 = v1;
  return result;
}

uint64_t sub_242C59B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if ((*(a1 + *(a3 + 20) + 512) >> 3) > 0x80000000)
  {
    return -(*(a1 + *(a3 + 20) + 512) >> 3);
  }

  else
  {
    return 0;
  }
}

double sub_242C59C60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = a1 + *(a4 + 20);
    result = 0.0;
    *(v12 + 480) = 0u;
    *(v12 + 496) = 0u;
    *(v12 + 448) = 0u;
    *(v12 + 464) = 0u;
    *(v12 + 416) = 0u;
    *(v12 + 432) = 0u;
    *(v12 + 384) = 0u;
    *(v12 + 400) = 0u;
    *(v12 + 352) = 0u;
    *(v12 + 368) = 0u;
    *(v12 + 320) = 0u;
    *(v12 + 336) = 0u;
    *(v12 + 288) = 0u;
    *(v12 + 304) = 0u;
    *(v12 + 256) = 0u;
    *(v12 + 272) = 0u;
    *(v12 + 224) = 0u;
    *(v12 + 240) = 0u;
    *(v12 + 192) = 0u;
    *(v12 + 208) = 0u;
    *(v12 + 160) = 0u;
    *(v12 + 176) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 512) = 8 * -a2;
    v12 += 520;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
  }

  return result;
}

uint64_t sub_242C59D84@<X0>(_BYTE *a1@<X8>)
{
  sub_242D969B0();
  result = sub_242F04010();
  *a1 = v3;
  return result;
}

uint64_t sub_242C59E48@<X0>(uint64_t a1@<X8>)
{
  sub_242D97890();
  result = sub_242F04010();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_242C59EF4@<X0>(void *a1@<X8>)
{
  sub_242D97B48();
  result = sub_242F04010();
  *a1 = v3;
  return result;
}

double sub_242C59F50@<D0>(_OWORD *a1@<X8>)
{
  sub_242D98098();
  sub_242F04010();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_242C59FA4()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_242C59FE0(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for Slot() + 44);

  return sub_242DA2E1C(a1, v3);
}

uint64_t sub_242C5A028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 128);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_242C5A164(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 128) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_242C5A2AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242C5A2E8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_242C5A330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242F039A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_242C5A3FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_242F039A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_242C5A504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242F03720();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_242C5A5C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_242F03720();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242C5A698(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF59F0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for Instrument();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_242C5A7D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF59F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Instrument();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_242C5A908()
{
  sub_242CD5324(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 88);
  if (v1 != 255)
  {
    sub_242CD5410(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v1 & 1);
  }

  if (*(v0 + 104))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_242C5A980()
{
  sub_242CD5324(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  if (*(v0 + 64))
  {
  }

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_242C5A9F8()
{
  sub_242CD5324(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  if (*(v0 + 64))
  {
  }

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_242C5AA68()
{
  sub_242CD5324(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_242C5AAC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_242F03690();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_242C5AB70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_242F03690();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_242C5AC1C()
{
  v16 = *(v0 + 480);
  v17 = *(v0 + 496);
  v14 = *(v0 + 448);
  v15 = *(v0 + 464);
  v12 = *(v0 + 416);
  v13 = *(v0 + 432);
  v10 = *(v0 + 384);
  v11 = *(v0 + 400);
  v8 = *(v0 + 352);
  v9 = *(v0 + 368);
  v6 = *(v0 + 320);
  v7 = *(v0 + 336);
  v4 = *(v0 + 288);
  v5 = *(v0 + 304);
  v2 = *(v0 + 256);
  v3 = *(v0 + 272);
  sub_242D3B6A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), v9, *(&v9 + 1), v10, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, SBYTE8(v17), *(v0 + 512));

  return MEMORY[0x2821FE8E8](v0, 584, 7);
}

uint64_t sub_242C5AD18()
{
  v1 = *(v0 + 40);

  return v1;
}

id sub_242C5ADB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = v2;
  return v2;
}

double sub_242C5ADF4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_242C5AE9C()
{

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_242C5AEDC()
{

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_242C5B158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FancyNotificationConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 96);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_242C5B21C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FancyNotificationConfiguration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 96) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242C5B2EC()
{
  v1 = (_s21FancyNotificationViewVMa(0) - 8);
  v2 = *(*v1 + 80);
  v20 = *(*v1 + 64);
  v21 = v0;
  v19 = (v2 + 16) & ~v2;
  v3 = v0 + v19;
  sub_242DD16BC();
  v4 = v0 + v19 + v1[7];

  v5 = v4 + *(type metadata accessor for FancyNotificationConfiguration.FancyButtonConfiguration(0) + 56);

  v6 = type metadata accessor for NotificationSymbolConfiguration(0);
  v7 = *(v6 + 28);
  v8 = sub_242F04820();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v10 = type metadata accessor for FancyNotificationConfiguration(0);
  v11 = v4 + v10[6];

  v9(v11 + *(v6 + 28), v8);
  v12 = v10[7];
  v13 = type metadata accessor for IconNotificationButtonConfiguration(0);
  v9(v4 + v12 + *(v13 + 20), v8);
  v14 = v4 + v10[8];

  __swift_destroy_boxed_opaque_existential_2Tm(v14 + 16);
  __swift_destroy_boxed_opaque_existential_2Tm(v14 + 56);
  v15 = v10[11];
  v16 = sub_242F04A30();
  (*(*(v16 - 8) + 8))(v4 + v15, v16);

  v17 = v3 + v1[8];
  sub_242CD5324(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32));
  if (*(v17 + 48))
  {
  }

  if (*(v17 + 72))
  {
  }

  return MEMORY[0x2821FE8E8](v21, v20 + v19 + 1, v2 | 7);
}

uint64_t sub_242C5B574()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242C5B5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FancyNotificationConfiguration.FancyButtonConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_242C5B658(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FancyNotificationConfiguration.FancyButtonConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_242C5B740()
{
  v1 = _s11FancyButtonVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_242DD16BC();
  if (*(v0 + v4 + 40))
  {
  }

  if (*(v5 + 80))
  {
  }

  v6 = v5 + *(v1 + 24);

  v7 = v6 + *(type metadata accessor for FancyNotificationConfiguration.FancyButtonConfiguration(0) + 56);

  v8 = *(type metadata accessor for NotificationSymbolConfiguration(0) + 28);
  v9 = sub_242F04820();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

__n128 sub_242C5B8E0@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + *(type metadata accessor for Component() + 28));
  *a2 = result;
  return result;
}

uint64_t sub_242C5B91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_242C5B9E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242C5BAB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_242C5BB00()
{
  sub_242C7F724(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_242C5BB78(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701606770;
  }
}

uint64_t sub_242C5BBAC()
{
  if (*v0)
  {
    return 0x6E65644961746164;
  }

  else
  {
    return 1701079411;
  }
}

uint64_t sub_242C5BBF0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_242C5BCFC()
{
  if (*v0)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 1802723693;
  }
}

uint64_t sub_242C5BD50(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

uint64_t sub_242C5BD7C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_242C5BDB4()
{
  v1 = 0xD000000000000010;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_242C5BE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242DFC2A8(a1, a2);
  *a3 = result;
  return result;
}

__n128 sub_242C5BE50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_242C5BE64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242DEEAD0();
  *a1 = result;
  return result;
}

uint64_t sub_242C5BEC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242DEEF14();
  *a1 = result;
  return result;
}

uint64_t sub_242C5BF14()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242C5BF4C()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_242C5BF84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242C5BFBC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_242C5C0AC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_242DFC598();
}

uint64_t sub_242C5C14C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7878);
  sub_242F053E0();
  swift_getAssociatedTypeWitness();
  sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7880);
  sub_242F03E00();
  sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7888);
  sub_242F03E00();
  sub_242F03E00();
  sub_242F03E00();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_242F049B0();
  swift_getWitnessTable();
  sub_242C7E000(&qword_27ECF7890, &qword_27ECF7880);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_242C7E000(&qword_27ECF7898, &qword_27ECF7888);
  swift_getWitnessTable();
  sub_242DFCAD8();
  swift_getWitnessTable();
  sub_242DFCB2C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_242F04910();
  sub_242F03E00();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_242F03D90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF78B0);
  sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF78B8);
  sub_242F03E00();
  swift_getTupleTypeMetadata2();
  sub_242F04AF0();
  swift_getWitnessTable();
  sub_242F04930();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF78C0);
  sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF78C8);
  sub_242F03E00();
  swift_getWitnessTable();
  sub_242C7E000(&qword_27ECF78E0, &qword_27ECF78C0);
  swift_getWitnessTable();
  sub_242C7E000(&qword_27ECF78F0, &qword_27ECF78C8);
  return swift_getWitnessTable();
}

uint64_t sub_242C5C658@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242DEF0E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242C5C6BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242DEF0C0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242C5C720()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_242C5C75C()
{
  v1 = sub_242F03D10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_242C5C8C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242C5C94C@<X0>(_BYTE *a1@<X8>)
{
  sub_242D97D74();
  result = sub_242F04010();
  *a1 = v3;
  return result;
}

uint64_t sub_242C5C9E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for IconNotificationButtonConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_242C5CA94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IconNotificationButtonConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_242C5CB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for IconNotificationButtonConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_242C5CBE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IconNotificationButtonConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_242C5CC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_242F04820();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_242C5CD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_242F04820();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_242C5CD7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7CB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7CB0);
  type metadata accessor for IconNotificationButtonStyle(255);
  sub_242C7E000(&qword_27ECF7CC8, &qword_27ECF7CB0);
  sub_242E02844(&qword_27ECF7CD0, type metadata accessor for IconNotificationButtonStyle);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_242C5CEE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E58);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C18);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for IconNotificationButtonConfiguration(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_242C5D070(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E58);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C18);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for IconNotificationButtonConfiguration(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_242C5D224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7EB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7EC0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 96);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_242C5D34C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7EB8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7EC0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 96) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_242C5D4EC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242C5D55C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_242C5D59C()
{

  if ((~*(v0 + 104) & 0xFELL) != 0)
  {
    sub_242C7F724(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  }

  if ((~*(v0 + 176) & 0xFELL) != 0)
  {
    sub_242C7F724(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  }

  if ((~*(v0 + 248) & 0xFELL) != 0)
  {
    sub_242C7F724(*(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248));
  }

  if ((~*(v0 + 320) & 0xFELL) != 0)
  {
    sub_242C7F724(*(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320));
  }

  sub_242C7F724(*(v0 + 360), *(v0 + 368), *(v0 + 376), *(v0 + 384), *(v0 + 392));
  sub_242C7F724(*(v0 + 408), *(v0 + 416), *(v0 + 424), *(v0 + 432), *(v0 + 440));

  if (*(v0 + 504))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 608, 7);
}

uint64_t sub_242C5D6E8()
{

  sub_242C7CEB0(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  sub_242C7CEB0(*(v0 + 128), *(v0 + 136), *(v0 + 144));
  sub_242C7CEB0(*(v0 + 152), *(v0 + 160), *(v0 + 168));

  v1 = *(v0 + 264);
  if (v1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 352, 7);
}

uint64_t sub_242C5D7A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DocumentWriter.Destination(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_242C5D84C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DocumentWriter.Destination(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

double sub_242C5D900@<D0>(_OWORD *a1@<X8>)
{
  sub_242D975B4();
  sub_242F04010();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_242C5D9CC()
{
  v1 = type metadata accessor for LayoutView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_242CA31A0(*(v0 + v4), *(v0 + v4 + 8));
  sub_242E188A8(*(v5 + 16), *(v5 + 24), *(v5 + 32));

  j__swift_release();
  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF83D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_242F04060();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  if (*(v5 + v1[9] + 8))
  {
    MEMORY[0x245D288C0]();
  }

  else
  {
  }

  v8 = v5 + v1[10];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = sub_242F03720();
    (*(*(v10 - 8) + 8))(v8, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8408);

  sub_242E188B8();
  v11 = v5 + v1[12];
  v12 = sub_242F03720();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = type metadata accessor for Layout();

  v14 = (v11 + *(v13 + 40));
  if (*v14 != 1)
  {

    if (v14[6] != 1)
    {
    }
  }

  v15 = v11 + *(v13 + 48);
  if (*(v15 + 16))
  {

    sub_242D7D240(*(v15 + 40), *(v15 + 48), *(v15 + 56));
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_242C5DD18(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8488);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[8];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8408);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_7;
  }

  v11 = type metadata accessor for Layout();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[12];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[14] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_242C5DE84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8488);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8408);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[10];
    }

    else
    {
      result = type metadata accessor for Layout();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[14] + 8) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[12];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_242C5DFEC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF83D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2FA8);
  sub_242E18988();
  sub_242E18C08();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_242C5E16C()
{
  v1 = type metadata accessor for LayoutView(0);
  v22 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for Zone();
  v3 = *(*(v2 - 8) + 80);
  v23 = *(*(v2 - 8) + 64);
  v24 = v0;
  v21 = (v22 + 16) & ~v22;
  v4 = v0 + v21;
  sub_242CA31A0(*(v0 + v21), *(v0 + v21 + 8));
  sub_242E188A8(*(v4 + 16), *(v4 + 24), *(v4 + 32));

  j__swift_release();
  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF83D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_242F04060();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  if (*(v4 + v1[9] + 8))
  {
    MEMORY[0x245D288C0]();
  }

  else
  {
  }

  v7 = v4 + v1[10];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = sub_242F03720();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8408);

  sub_242E188B8();
  v10 = v4 + v1[12];
  v11 = sub_242F03720();
  v12 = *(*(v11 - 8) + 8);
  v12(v10, v11);
  v13 = type metadata accessor for Layout();

  v14 = (v10 + *(v13 + 40));
  if (*v14 != 1)
  {

    if (v14[6] != 1)
    {
    }
  }

  v15 = v10 + *(v13 + 48);
  if (*(v15 + 16))
  {

    sub_242D7D240(*(v15 + 40), *(v15 + 48), *(v15 + 56));
  }

  v16 = v22 | v3;
  v17 = (v21 + v20 + v3) & ~v3;

  v12(v24 + v17, v11);

  v18 = v24 + v17 + *(v2 + 32);
  sub_242D1162C(*v18, *(v18 + 8), *(v18 + 16), *(v18 + 24), *(v18 + 32), *(v18 + 40), *(v18 + 48), *(v18 + 56), *(v18 + 64), *(v18 + 72), *(v18 + 80), *(v18 + 88), *(v18 + 96));

  return MEMORY[0x2821FE8E8](v24, v17 + v23, v16 | 7);
}

uint64_t sub_242C5E5D0()
{
  v1 = type metadata accessor for LayoutView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_242CA31A0(*(v0 + v4), *(v0 + v4 + 8));
  sub_242E188A8(*(v5 + 16), *(v5 + 24), *(v5 + 32));

  j__swift_release();
  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF83D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_242F04060();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  if (*(v5 + v1[9] + 8))
  {
    MEMORY[0x245D288C0]();
  }

  else
  {
  }

  v8 = v5 + v1[10];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = sub_242F03720();
    (*(*(v10 - 8) + 8))(v8, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8408);

  sub_242E188B8();
  v11 = v5 + v1[12];
  v12 = sub_242F03720();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = type metadata accessor for Layout();

  v14 = (v11 + *(v13 + 40));
  if (*v14 != 1)
  {

    if (v14[6] != 1)
    {
    }
  }

  v15 = v11 + *(v13 + 48);
  if (*(v15 + 16))
  {

    sub_242D7D240(*(v15 + 40), *(v15 + 48), *(v15 + 56));
  }

  return MEMORY[0x2821FE8E8](v0, ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_242C5E940@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242F03FA0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242C5E9B8()
{

  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242C5E9F8()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_242C5EA30()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v0 + 16);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242C5EEF8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_242C5EF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v7[0] = *(a1 + 8);
  v7[1] = v2;
  v8 = *(a1 + 40);
  v3 = v8;
  v9 = *(a1 + 56);
  v4 = v9;
  *a2 = v7[0];
  *(a2 + 16) = v2;
  *(a2 + 32) = v3;
  *(a2 + 48) = v4;
  return sub_242C94884(v7, v6);
}

float sub_242C5EF94@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 304);
  *a2 = result;
  return result;
}

float sub_242C5EFA0(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 304) = *a1;
  return result;
}

uint64_t sub_242C5EFC4()
{
  sub_242C7F724(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

__n128 sub_242C5F054(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_242C5F06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Instrument();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_242C5F128(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Instrument();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242C5F1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8EC8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for PopoverModel(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_242C5F308(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8EC8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for PopoverModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_242C5F48C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_242C5F4F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_242C5F5C8@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_242C5F61C(uint64_t a1, void *a2)
{
  v3 = (*a2 + OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_iconImageInfo);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t sub_242C5F670@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_242C5F6C8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_showsSquareCorners;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_242C5F71C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14CarPlayAssetUI29WidgetContainerViewController_presentationMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_242C5F7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9060);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_242C5F868(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9060);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242C5F938()
{
  MEMORY[0x245D288C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242C5F970()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242C5F9AC()
{
  sub_242C7F724(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_242C5F9EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_242C5F9F8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

void *sub_242C5FA54@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  ArcPackage.subscript.getter(v5, __src);
  return memcpy(a2, __src, 0x250uLL);
}

uint64_t sub_242C5FAC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242C5FB00()
{
  sub_242CD5324(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 88);
  if (v1 != 255)
  {
    sub_242CD5410(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v1 & 1);
  }

  if (*(v0 + 104))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_242C5FB78()
{
  sub_242CD5324(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  if (*(v0 + 64))
  {
  }

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_242C5FBF0()
{
  sub_242CD5324(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  if (*(v0 + 64))
  {
  }

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_242C5FC60()
{
  sub_242CD5324(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_242C5FCBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_242C5FCC8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

double sub_242C5FD30@<D0>(_OWORD *a1@<X8>)
{
  sub_242D97434();
  sub_242F04010();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_242C5FDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8EC8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Slot();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_242C5FEF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8EC8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Slot();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_242C6009C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_242C600FC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242C60134()
{
  swift_getWitnessTable();

  return sub_242F04E20();
}

uint64_t sub_242C601B0()
{
  swift_getWitnessTable();

  return sub_242F04E30();
}

uint64_t sub_242C6021C()
{
  swift_getWitnessTable();

  return sub_242F05550();
}

uint64_t sub_242C602A4()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_242C602E4()
{
  v1 = *(v0 + 32);
  v2 = (sub_242F04980() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(*v2 + 64);
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[10], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_242C603E4()
{
  v1 = *(v0 + 32);
  v2 = (sub_242F04980() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(*v2 + 64) + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v3 | v6;
  swift_unknownObjectRelease();

  v10 = v2[10];
  v11 = *(v5 + 8);
  v11(v0 + v4 + v10, v1);
  v11(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_242C60538@<X0>(uint64_t **a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_242F04980();
  return Binding.subscript.getter(v3, v4, a2);
}

__n128 sub_242C6059C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_242C605A8()
{
  type metadata accessor for TaskConditional();
  sub_242F03E00();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_242C60640()
{
  v1 = *(v0 + 32);
  v2 = (type metadata accessor for TaskConditional() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(*v2 + 64);
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[11], v1);
  v6 = v2[12];
  v7 = sub_242F05450();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_242C60790()
{
  type metadata accessor for TaskConditional();
  swift_getWitnessTable();
  sub_242F04200();
  sub_242F03E00();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_242F041D0();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_242C60960()
{
  sub_242C7F724(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_242C609A0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

__n128 sub_242C609E0@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[2];
  *a2 = result;
  return result;
}

uint64_t sub_242C60A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 536);
  v8 = *(a1 + 520);
  v9 = v2;
  v10 = *(a1 + 552);
  v3 = *(a1 + 504);
  v7[0] = *(a1 + 488);
  v4 = v7[0];
  v7[1] = v3;
  *(a2 + 32) = v8;
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 552);
  *a2 = v4;
  *(a2 + 16) = v3;
  return sub_242CA321C(v7, &v6, &qword_27ECFA428);
}

__n128 sub_242C60A6C(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v13 = a1[2];
  v14 = v3;
  v15 = *(a1 + 8);
  v4 = a1[1];
  v11 = *a1;
  v12 = v4;
  v5 = a2 + 488;
  v6 = *(a2 + 536);
  v16[2] = *(a2 + 520);
  v16[3] = v6;
  v17 = *(a2 + 552);
  v7 = *(a2 + 504);
  v16[0] = *(a2 + 488);
  v16[1] = v7;
  sub_242CA321C(&v11, v10, &qword_27ECF95B0);
  sub_242C6D138(v16, &qword_27ECF95B0);
  v8 = v14;
  *(v5 + 32) = v13;
  *(v5 + 48) = v8;
  *(a2 + 552) = v15;
  result = v12;
  *v5 = v11;
  *(v5 + 16) = result;
  return result;
}

uint64_t sub_242C60B34(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 568) = v3;
  return result;
}

uint64_t sub_242C60B78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_242F04820();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_242C60C24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_242F04820();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_242C60CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NotificationSymbolConfiguration(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_242F04A30();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_242C60DEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for NotificationSymbolConfiguration(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_242F04A30();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_242C60F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IconNotificationButtonConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for NotificationSymbolConfiguration(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_242C61024(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for IconNotificationButtonConfiguration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for NotificationSymbolConfiguration(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_242C6112C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotificationSymbolConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_242C611EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NotificationSymbolConfiguration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242C612A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for FancyNotificationConfiguration.FancyButtonConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for NotificationSymbolConfiguration(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for IconNotificationButtonConfiguration(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[8]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_242F04A30();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[11];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_242C61464(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for FancyNotificationConfiguration.FancyButtonConfiguration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for NotificationSymbolConfiguration(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = type metadata accessor for IconNotificationButtonConfiguration(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
  }

  else
  {
    v17 = sub_242F04A30();
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[11];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_242C61620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NotificationSymbolConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_242C616CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NotificationSymbolConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_242C61770()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_242C617A8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_242C61800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v4 = *(a1 + 96);
  v12 = *(a1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(a1 + 112);
  v5 = v14;
  v6 = *(a1 + 16);
  v11[0] = *a1;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a2 = v11[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v2;
  *(a2 + 80) = v3;
  *(a2 + 96) = v4;
  *(a2 + 112) = v5;
  return sub_242C66114(v11, v10);
}

uint64_t sub_242C61874@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 128);
  *a2 = *(a1 + 120);
  a2[1] = v2;
}

uint64_t sub_242C618B8()
{
  sub_242C7F724(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_242C61A60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5330);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5328) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  v11(v0 + v8, v1);
  v11(v0 + v8 + v6[11], v1);

  return MEMORY[0x2821FE8E8](v0, v10 + 9, v9 | 7);
}

uint64_t sub_242C61BF0()
{
  if (v0[3])
  {

    sub_242D3D4F0(v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12], v0[13], v0[14], v0[15]);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_242C61CB0()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242C61CE8()
{
  if (*(v0 + 24))
  {

    sub_242CF6AD8(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
    if (*(v0 + 80))
    {
    }
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_242C61D48()
{
  if (*(v0 + 24))
  {

    if (*(v0 + 56))
    {
    }
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_242C61E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = v3;
  *(a2 + 8) = v2;
  v4 = *(a1 + 24);
  *(a2 + 16) = v4;
  return sub_242C7CE5C(v3, v2, v4);
}

uint64_t sub_242C61E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E58);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 64);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_242C61F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E58);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 64) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242C62010()
{
  v1 = _s21AlertNotificationViewVMa();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v6 = type metadata accessor for ActionConfiguration(0);
    v7 = v5 + v6[7];

    v21 = v4;
    v8 = type metadata accessor for NotificationSymbolConfiguration(0);
    v9 = *(v8 + 28);
    v10 = sub_242F04820();
    v22 = v0;
    v11 = *(*(v10 - 8) + 8);
    v11(v7 + v9, v10);
    v12 = v5 + v6[8];

    v13 = *(v8 + 28);
    v4 = v21;
    v11(v12 + v13, v10);
    v14 = v5 + v6[9];

    __swift_destroy_boxed_opaque_existential_2Tm(v14 + 16);
    __swift_destroy_boxed_opaque_existential_2Tm(v14 + 56);
    v15 = v5 + v6[10];

    __swift_destroy_boxed_opaque_existential_2Tm(v15 + 16);
    __swift_destroy_boxed_opaque_existential_2Tm(v15 + 56);
    v16 = v6[14];
    v17 = sub_242F04A30();
    v18 = v5 + v16;
    v0 = v22;
    (*(*(v17 - 8) + 8))(v18, v17);
    v3 = (v2 + 16) & ~v2;
  }

  sub_242DD16BC();
  v19 = v5 + *(v1 + 24);
  sub_242CD5324(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24), *(v19 + 32));
  if (*(v19 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_242C62304()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_242C623E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242C62424()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242C6245C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_242C62468(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 96) = v4;
  *(a2 + 104) = v3;
  return result;
}

uint64_t sub_242C624E4()
{
  sub_242C7F724(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_242C62570@<X0>(_BYTE *a1@<X8>)
{
  sub_242E97388();
  result = sub_242F04010();
  *a1 = v3;
  return result;
}

uint64_t sub_242C6260C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242F04A30();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_242C626D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_242F04A30();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t sub_242C627B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 112);
  *a2 = *(result + 104);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_242C627C8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 104) = *result;
  *(a2 + 112) = v2;
  return result;
}

uint64_t sub_242C627E8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_242C62860()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242C62898@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_242C628A4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  return result;
}

float sub_242C6295C@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 168);
  *a2 = result;
  return result;
}

float sub_242C62968(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 168) = *a1;
  return result;
}

uint64_t sub_242C62A80@<X0>(uint64_t a1@<X8>)
{
  result = sub_242F03FD0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_242C62AE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242F03F50();
  *a1 = result;
  return result;
}

uint64_t sub_242C62B38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E58);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7EB8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBBF0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_242C62CB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E58);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7EB8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBBF0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_242C62E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NotificationSymbolConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_242C62ED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NotificationSymbolConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_242C62F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_242C63044(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242C63154()
{
  sub_242F03E00();
  sub_242DD1FE0();
  return swift_getWitnessTable();
}

uint64_t sub_242C631B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_242F04820();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_242C63264(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_242F04820();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_242C63308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7EC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 112);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_242C633D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7EC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 112) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242C63524@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242F03F70();
  *a1 = result;
  return result;
}

uint64_t sub_242C635C4@<X0>(void *a1@<X8>)
{
  result = sub_242F03F10();
  *a1 = v3;
  return result;
}

uint64_t sub_242C63618()
{
  v1 = (type metadata accessor for UserInteractiveView(0) - 8);
  v19 = *(*v1 + 64);
  v20 = *(*v1 + 80);
  v21 = v0;
  v18 = (v20 + 16) & ~v20;
  v2 = v0 + v18;
  sub_242DD16BC();
  v3 = v0 + v18 + v1[7];

  v4 = type metadata accessor for ActionConfiguration(0);
  v5 = v3 + v4[7];

  v6 = type metadata accessor for NotificationSymbolConfiguration(0);
  v7 = *(v6 + 28);
  v8 = sub_242F04820();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v10 = v3 + v4[8];

  v9(v10 + *(v6 + 28), v8);
  v11 = v3 + v4[9];

  __swift_destroy_boxed_opaque_existential_2Tm(v11 + 16);
  __swift_destroy_boxed_opaque_existential_2Tm(v11 + 56);
  v12 = v3 + v4[10];

  __swift_destroy_boxed_opaque_existential_2Tm(v12 + 16);
  __swift_destroy_boxed_opaque_existential_2Tm(v12 + 56);
  v13 = v4[14];
  v14 = sub_242F04A30();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);

  v15 = v2 + v1[8];
  sub_242CD5324(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32));
  v16 = *(v15 + 72);
  if (v16 != 255)
  {
    sub_242CD5410(*(v15 + 40), *(v15 + 48), *(v15 + 56), *(v15 + 64), v16 & 1);
  }

  if (*(v15 + 88))
  {
  }

  return MEMORY[0x2821FE8E8](v21, v18 + v19, v20 | 7);
}

uint64_t sub_242C63894@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242F03ED0();
  *a1 = result;
  return result;
}

uint64_t sub_242C63908()
{
  MEMORY[0x245D288C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242C63948()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_242C63990()
{
  sub_242C7F724(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

double sub_242C639E4@<D0>(_OWORD *a1@<X8>)
{
  sub_242EC8DB0();
  sub_242F04010();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_242C63A38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF59F0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for Instrument();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_242C63B74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF59F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Instrument();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_242C63CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RequestContentModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for Instrument();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_242C63D98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RequestContentModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for Instrument();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_242C63E9C()
{
  MEMORY[0x245D288C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242C63ED4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_242C63F0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_renderScheme;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_242C63F78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_isForeground;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_242C6402C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_242C64088(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC14CarPlayAssetUI30WidgetMultiStackViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_242C643E0()
{
  if (*v0)
  {
    return 0x72756F5361746164;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_242C6469C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242C646EC()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242C64828()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

float sub_242C648B8@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 172);
  *a2 = result;
  return result;
}

float sub_242C648C4(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 172) = *a1;
  return result;
}

uint64_t sub_242C64B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8488);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_242C64C64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8488);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_242C64D38()
{
  v1 = type metadata accessor for SingleSelectMenuView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF83D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_242F04060();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + *(v1 + 24);

  if (*(v8 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 40, v2 | 7);
}

uint64_t sub_242C64F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C18);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_242C64FEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C18);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_242C65098()
{
  sub_242F03B60();
  swift_getTupleTypeMetadata2();
  sub_242F04AF0();
  swift_getWitnessTable();
  sub_242F03C50();
  sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6960);
  sub_242F03E00();
  type metadata accessor for MenuButtonStyle(255);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_242C7E000(&qword_27ECF6B70, &qword_27ECF6960);
  swift_getWitnessTable();
  sub_242F02714(&qword_27ECFDCB0, type metadata accessor for MenuButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_242C65288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242F04280();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_242C65348(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_242F04280();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for VisibilityRule(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_242C6550C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_242C65564(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_242C655A0()
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

uint64_t sub_242C655DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t ArcPackageExporter.ScriptVersion.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t sub_242C65678()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t sub_242C656C0()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t ArcPackageExporter.Destination.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

CarPlayAssetUI::ArcPackageExporter __swiftcall ArcPackageExporter.init(fileWrapper:destination:)(NSFileWrapper fileWrapper, CarPlayAssetUI::ArcPackageExporter::Destination destination)
{
  v3 = v2;
  v4 = *destination;
  v5 = fileWrapper.super.isa;
  v8 = v5;
  v9 = v5;
  if (v4 == 2 && (v10._countAndFlagsBits = 114, v10._object = 0xE100000000000000, v9 = NSFileWrapper.directory(at:creatingIntermediateDirectories:)(v10, 1), v8, !v9))
  {
    v5 = sub_242F05C60();
    __break(1u);
  }

  else
  {
    *v3 = v8;
    *(v3 + 8) = v4;
    *(v3 + 16) = v9;
  }

  result.resourcesFileWrapper.super.isa = v7;
  result.fileWrapper.super.isa = v5;
  result.destination = v6;
  return result;
}

void ArcPackageExporter.update(document:oldDocument:)(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 80);
  v146 = *(a1 + 64);
  v147 = v4;
  v148 = *(a1 + 96);
  v5 = *(a1 + 16);
  v142 = *a1;
  v143 = v5;
  v6 = *(a1 + 48);
  v144 = *(a1 + 32);
  v145 = v6;
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v153 = a2[3];
  v152 = v9;
  v10 = a2[1];
  v11 = a2[2];
  v12 = *a2;
  v150 = v7;
  v151 = v10;
  v14 = a2[5];
  v13 = a2[6];
  v15 = v13;
  v157 = a2[7];
  v156 = v13;
  v16 = a2[3];
  v17 = a2[5];
  v154 = a2[4];
  v155 = v17;
  v18 = a2[11];
  v162 = a2[12];
  v20 = a2[9];
  v19 = a2[10];
  v161 = a2[11];
  v160 = v19;
  v21 = a2[7];
  v22 = a2[9];
  v158 = a2[8];
  v159 = v22;
  v173 = v19;
  v174 = v18;
  v175 = a2[12];
  v169 = v15;
  v170 = v21;
  v172 = v20;
  v171 = v158;
  v165 = v11;
  v166 = v16;
  v168 = v14;
  v167 = v154;
  v23 = *(a1 + 120);
  v149 = *(a1 + 112);
  v24 = *(a1 + 128);
  v25 = *(a1 + 192);
  v26 = *v2;
  v27 = *(v2 + 8);
  v28 = *(v2 + 16);
  v164 = v8;
  v163 = v12;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v163) == 1)
  {
    v141 = 0;
    v140 = 0u;
    v139 = 0u;
    v138 = 0u;
    v137 = 0u;
    v136 = 0u;
    v135 = 0u;
    v134 = 0u;
  }

  else
  {
    v39 = v167;
    v40 = v168;
    v41 = v169;
    *&v42 = v170;
    v35 = v163;
    v36 = v164;
    v37 = v165;
    v38 = v166;
    sub_242C66114(&v163, &v118);
    v138 = v39;
    v139 = v40;
    v140 = v41;
    v141 = v42;
    v134 = v35;
    v135 = v36;
    v136 = v37;
    v137 = v38;
  }

  v130 = v146;
  v131 = v147;
  v132 = v148;
  v133 = v149;
  v126 = v142;
  v127 = v143;
  v128 = v144;
  v129 = v145;
  sub_242C66114(&v142, &v35);
  if (v27 == 1)
  {
    ArcPackage.removeLocalNotifications()();
  }

  v122 = v130;
  v123 = v131;
  v124 = v132;
  v125 = v133;
  v118 = v126;
  v119 = v127;
  v120 = v128;
  v121 = v129;
  v115 = v26;
  v116 = v27;
  v117 = v28;
  v113[4] = v138;
  v113[5] = v139;
  v113[6] = v140;
  v114 = v141;
  v113[0] = v134;
  v113[1] = v135;
  v113[2] = v136;
  v113[3] = v137;
  sub_242C66114(&v118, &v35);
  sub_242C66170(&v126, v113);
  if (v3)
  {
    v39 = v130;
    v40 = v131;
    v41 = v132;
    *&v42 = v133;
    v35 = v126;
    v36 = v127;
    v37 = v128;
    v38 = v129;
    sub_242C66414(&v35);
    sub_242C66414(&v118);
    sub_242C6D138(&v134, &qword_27ECEF8B0);
    return;
  }

  v111[4] = v130;
  v111[5] = v131;
  v111[6] = v132;
  v112 = v133;
  v111[0] = v126;
  v111[1] = v127;
  v111[2] = v128;
  v111[3] = v129;
  sub_242C66414(v111);
  v108 = v26;
  v109 = v27;
  v110 = v28;
  v104 = v122;
  v105 = v123;
  v106 = v124;
  v107 = v125;
  v100 = v118;
  v101 = v119;
  v102 = v120;
  v103 = v121;
  v98[4] = v138;
  v98[5] = v139;
  v98[6] = v140;
  v99 = v141;
  v98[0] = v134;
  v98[1] = v135;
  v98[2] = v136;
  v98[3] = v137;
  sub_242C66114(&v118, &v35);
  sub_242C664B0(&v100, v98);
  v96[4] = v104;
  v96[5] = v105;
  v96[6] = v106;
  v97 = v107;
  v96[0] = v100;
  v96[1] = v101;
  v96[2] = v102;
  v96[3] = v103;
  sub_242C66414(v96);
  v93 = v26;
  v94 = v27;
  v95 = v28;
  v89 = v122;
  v90 = v123;
  v91 = v124;
  v92 = v125;
  v85 = v118;
  v86 = v119;
  v87 = v120;
  v88 = v121;
  v83[4] = v138;
  v83[5] = v139;
  v83[6] = v140;
  v84 = v141;
  v83[0] = v134;
  v83[1] = v135;
  v83[2] = v136;
  v83[3] = v137;
  sub_242C66114(&v118, &v35);
  sub_242C66A50(&v85, v83);
  v81[4] = v89;
  v81[5] = v90;
  v81[6] = v91;
  v82 = v92;
  v81[0] = v85;
  v81[1] = v86;
  v81[2] = v87;
  v81[3] = v88;
  sub_242C66414(v81);
  v78 = v26;
  v79 = v27;
  v80 = v28;
  v74 = v122;
  v75 = v123;
  v76 = v124;
  v77 = v125;
  v70 = v118;
  v71 = v119;
  v72 = v120;
  v73 = v121;
  v66 = v138;
  v67 = v139;
  v68 = v140;
  v69 = v141;
  v62 = v134;
  v63 = v135;
  v64 = v136;
  v65 = v137;
  sub_242C66114(&v118, &v35);
  sub_242C66E40(&v70);
  v60[4] = v74;
  v60[5] = v75;
  v60[6] = v76;
  v61 = v77;
  v60[0] = v70;
  v60[1] = v71;
  v60[2] = v72;
  v60[3] = v73;
  sub_242C66414(v60);
  sub_242C6D138(&v134, &qword_27ECEF8B0);
  v58 = v27;
  v59 = v28;
  v53 = v122;
  v54 = v123;
  v55 = v124;
  v56 = v125;
  v57 = v26;
  v49 = v118;
  v50 = v119;
  v51 = v120;
  v52 = v121;
  v48[0] = v23;
  v48[1] = v24;

  sub_242C67200(&v49, v48);

  v33[4] = v53;
  v33[5] = v54;
  v33[6] = v55;
  v34 = v56;
  v33[0] = v49;
  v33[1] = v50;
  v33[2] = v51;
  v33[3] = v52;
  sub_242C66414(v33);
  v45 = v160;
  v46 = v161;
  v47 = v162;
  v41 = v156;
  v42 = v157;
  v43 = v158;
  v44 = v159;
  v37 = v152;
  v38 = v153;
  v39 = v154;
  v40 = v155;
  v35 = v150;
  v36 = v151;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v35) == 1 || !v47)
  {
    v29 = v25;
    if (!v25)
    {
      return;
    }
  }

  else
  {
    v29 = v47;
  }

  if (v27 != 2)
  {
    v30 = v29;
    v31._countAndFlagsBits = 0x736172747845;
    v31._object = 0xE600000000000000;
    NSFileWrapper.remove(named:)(v31);
    v32 = [v26 addFileWrapper_];

    v29 = v32;
  }
}

uint64_t sub_242C66170(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  if (*(a2 + 8))
  {
    result = sub_242DBF188(v4);
    if (v3)
    {
      return result;
    }

    v7 = result;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xF000000000000000;
  }

  v9 = sub_242DBF188(v4);
  if (!v3)
  {
    v11 = v9;
    v12 = v10;
    if (v4 == 2)
    {
      v13 = 0x446567616B636150;
    }

    else
    {
      v13 = 0x2E6567616B636170;
    }

    if (v4 == 2)
    {
      v14 = 0xEF61756C2E617461;
    }

    else
    {
      v14 = 0xEC0000006E6F736ALL;
    }

    if (v8 >> 60 == 15)
    {
      if (v10 >> 60 == 15)
      {
        sub_242C6D21C(v9, v10);
        sub_242C6D270(v7, v8);
        sub_242C6D208(v7, v8);
LABEL_18:
        v16._countAndFlagsBits = v13;
        v16._object = v14;
        v17 = NSFileWrapper.child(at:)(v16);
        if (v17)
        {

LABEL_23:
          sub_242C6CCC0(v11, v12);
          sub_242C6D208(v7, v8);
        }

LABEL_20:
        v18._countAndFlagsBits = v13;
        v18._object = v14;
        NSFileWrapper.remove(named:)(v18);
        NSFileWrapper.addRegularFile(withContents:fileName:)(v11, v12, v13, v14);

        goto LABEL_23;
      }
    }

    else if (v10 >> 60 != 15)
    {
      sub_242C6D21C(v9, v10);
      sub_242C6D270(v7, v8);
      v15 = sub_242C6B0E0(v7, v8, v11, v12);
      sub_242C6D208(v11, v12);
      sub_242C6D208(v7, v8);
      if ((v15 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    sub_242C6D21C(v9, v10);
    sub_242C6D270(v7, v8);
    sub_242C6D208(v7, v8);
    sub_242C6D208(v11, v12);
    goto LABEL_20;
  }

  return sub_242C6D208(v7, v8);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_242C664B0(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 8);
  if (v5)
  {
    *&v46 = *a2;
    *(&v46 + 1) = v5;
    v6 = *(a2 + 96);
    *&v50[16] = *(a2 + 80);
    *&v50[32] = v6;
    *&v50[48] = *(a2 + 112);
    v7 = *(a2 + 32);
    v47 = *(a2 + 16);
    v48 = v7;
    v8 = *(a2 + 64);
    v49 = *(a2 + 48);
    *v50 = v8;
    ArcPackage.infoPlistContent.getter(&v61);
    v29 = *(&v61 + 1);
    v9 = v61;
    v64 = *(&v62 + 1);
    v33 = v62;
    v32 = *&v63[8];
    v10 = *v63;
    v12 = *&v63[24];
    v11 = *&v63[16];
    v13 = *&v63[40];
    v5 = *&v63[32];
    v14 = *&v63[48];
    v15 = v63[56];
  }

  else
  {
    v9 = 0;
    v29 = 0;
    v33 = 0;
    v64 = 0;
    v10 = 0;
    v32 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  v30 = v15;
  *&v31 = v5;
  *(&v31 + 1) = v13;
  v16 = a1[5];
  *v50 = a1[4];
  *&v50[16] = v16;
  *&v50[32] = a1[6];
  *&v50[48] = *(a1 + 14);
  v17 = a1[1];
  v46 = *a1;
  v47 = v17;
  v18 = a1[3];
  v48 = a1[2];
  v49 = v18;
  ArcPackage.infoPlistContent.getter(&v61);
  v19 = *v63;
  v56 = *&v63[8];
  v57 = *&v63[24];
  v58 = *&v63[40];
  v59 = v63[56];
  *&v60[7] = v61;
  *&v60[23] = v62;
  if (v10)
  {
    *&v46 = v9;
    *(&v46 + 1) = v29;
    *&v47 = v33;
    *(&v47 + 1) = v64;
    *&v48 = v10;
    *(&v48 + 1) = v32;
    *&v49 = v11;
    *(&v49 + 1) = v12;
    *v50 = v31;
    *&v50[16] = v14;
    v50[24] = v30;
    v43 = v48;
    v44 = v49;
    v45[0] = v31;
    *(v45 + 9) = *&v50[9];
    v41 = v46;
    v42 = v47;
    if (*v63)
    {
      v38 = v61;
      v39 = v62;
      *&v40[8] = *&v63[8];
      *&v40[24] = *&v63[24];
      *&v40[40] = *&v63[40];
      v40[56] = v63[56];
      *v40 = *v63;
      sub_242C6D034(&v61, v36);
      sub_242C6D198(&v46, v36);
      v27 = _s14CarPlayAssetUI9InfoPlistV2eeoiySbAC_ACtFZ_0(&v41, &v38);
      v34[2] = *v40;
      v34[3] = *&v40[16];
      v35[0] = *&v40[32];
      *(v35 + 9) = *&v40[41];
      v34[0] = v38;
      v34[1] = v39;
      sub_242C6D0E4(v34);
      v36[2] = v43;
      v36[3] = v44;
      v37[0] = v45[0];
      *(v37 + 9) = *(v45 + 9);
      v36[0] = v41;
      v36[1] = v42;
      sub_242C6D0E4(v36);
      *&v38 = v9;
      *(&v38 + 1) = v29;
      *&v39 = v33;
      *(&v39 + 1) = v64;
      *v40 = v10;
      *&v40[8] = v32;
      *&v40[16] = v11;
      *&v40[24] = v12;
      *&v40[32] = v31;
      *&v40[48] = v14;
      v40[56] = v30;
      sub_242C6D138(&v38, &qword_27ECEFAF0);
      v3 = v2;
      if (!v27)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v28 = v9;
    *v40 = v48;
    *&v40[16] = v49;
    *&v40[32] = *v50;
    *&v40[41] = *&v50[9];
    v38 = v46;
    v39 = v47;
    sub_242C6D034(&v61, v36);
    sub_242C6D198(&v46, v36);
    sub_242C6D0E4(&v38);
    v3 = v2;
LABEL_11:
    *&v50[25] = *v60;
    *&v50[41] = *&v60[16];
    v54 = v58;
    v53 = v57;
    *&v46 = v28;
    *(&v46 + 1) = v29;
    *&v47 = v33;
    *(&v47 + 1) = v64;
    *&v48 = v10;
    *(&v48 + 1) = v32;
    *&v49 = v11;
    *(&v49 + 1) = v12;
    *v50 = v31;
    *&v50[16] = v14;
    v50[24] = v30;
    *&v50[56] = *&v60[31];
    v51 = v19;
    v55 = v59;
    v52 = v56;
    sub_242C6D138(&v46, &qword_27ECEFAE0);
    goto LABEL_15;
  }

  if (*v63)
  {
    v28 = v9;
    sub_242C6D034(&v61, &v46);
    goto LABEL_11;
  }

  *&v46 = v9;
  *(&v46 + 1) = v29;
  *&v47 = v33;
  *(&v47 + 1) = v64;
  *&v48 = 0;
  *(&v48 + 1) = v32;
  *&v49 = v11;
  *(&v49 + 1) = v12;
  *v50 = v31;
  *&v50[16] = v14;
  v50[24] = v30;
  sub_242C6D034(&v61, &v41);
  sub_242C6D138(&v46, &qword_27ECEFAF0);
LABEL_13:
  v20._countAndFlagsBits = 0x696C702E6F666E49;
  v20._object = 0xEA00000000007473;
  v21 = NSFileWrapper.fileWrapper(named:)(v20);
  if (v21)
  {

    return sub_242C6D0E4(&v61);
  }

LABEL_15:
  v23._countAndFlagsBits = 0x696C702E6F666E49;
  v23._object = 0xEA00000000007473;
  NSFileWrapper.remove(named:)(v23);
  sub_242F035B0();
  swift_allocObject();
  sub_242F035A0();
  sub_242F03580();
  v48 = *v63;
  v49 = *&v63[16];
  *v50 = *&v63[32];
  *&v50[9] = *&v63[41];
  v46 = v61;
  v47 = v62;
  sub_242C6D090();
  v24 = sub_242F03590();
  v26 = v25;

  result = sub_242C6D0E4(&v61);
  if (!v3)
  {
    NSFileWrapper.addRegularFile(withContents:fileName:)(v24, v26, 0x696C702E6F666E49, 0xEA00000000007473);

    return sub_242C6CCC0(v24, v26);
  }

  return result;
}

unint64_t sub_242C66A50(__int128 *a1, uint64_t *a2)
{
  v4 = a1[2];
  v46 = a1[3];
  v5 = a1[5];
  v47 = a1[4];
  v48 = v5;
  v49 = a1[6];
  v6 = a1[1];
  v43 = *a1;
  v44 = v6;
  v45 = v4;
  v7 = *(a1 + 14);
  v8 = a2[1];
  v9 = a2[14];
  v34 = *(v2 + 16);
  v10 = *(v7 + 16);
  v50 = v7;
  if (!v10)
  {
LABEL_15:
    v20 = v7;
    if (!v8)
    {
      goto LABEL_20;
    }

LABEL_16:

    v21 = *(v9 + 16);
    if (v21)
    {
LABEL_21:
      v22 = 0;
      v23 = v21 - 1;
      for (i = 32; ; i += 592)
      {
        memcpy(__dst, (v9 + i), sizeof(__dst));
        v25 = __dst[0];
        v26 = __dst[1];
        v41[4] = v47;
        v41[5] = v48;
        v41[6] = v49;
        v41[0] = v43;
        v41[1] = v44;
        v41[2] = v45;
        v41[3] = v46;
        *&v41[7] = v20;
        v38[0] = __dst[0];
        v38[1] = __dst[1];
        result = ArcPackage.displayIndex(by:)(v38);
        if (v27)
        {
          v38[0] = v25;
          v38[1] = v26;
          sub_242C6CDD4(__dst, v41);

          v28 = sub_242E110C0(v38);
          if (v3)
          {

            sub_242C6CE30(__dst);
          }

          v29 = v28;
          [v34 removeFileWrapper_];

          sub_242C6CE30(__dst);

          v20 = v50;
        }

        else
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v20 = v50;
          if (result >= *(v50 + 16))
          {
            goto LABEL_34;
          }
        }

        if (v23 == v22)
        {
        }

        if (++v22 >= *(v9 + 16))
        {
          __break(1u);
        }
      }
    }
  }

  v12 = 0;
  v33 = *v2;
  v13 = (v7 + 32);
  v30 = *a2;
  v31 = v10 - 1;
  v32 = *(v2 + 8);
  while (1)
  {
    memcpy(__dst, v13, sizeof(__dst));
    v38[74] = v33;
    v39 = v32;
    v40 = v34;
    memcpy(v38, v13, 0x250uLL);
    if (v8)
    {
      *&__src[0] = v30;
      *(&__src[0] + 1) = v8;
      v14 = *(a2 + 4);
      __src[3] = *(a2 + 3);
      __src[4] = v14;
      v15 = *(a2 + 6);
      __src[5] = *(a2 + 5);
      __src[6] = v15;
      v16 = *(a2 + 2);
      __src[1] = *(a2 + 1);
      __src[2] = v16;
      *&__src[7] = v9;
      v36[0] = __dst[0];
      v36[1] = __dst[1];
      result = ArcPackage.displayIndex(by:)(v36);
      if (v18)
      {
        sub_242C6CE84(v41);
        goto LABEL_11;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      if (result >= *(v9 + 16))
      {
LABEL_36:
        __break(1u);
        return result;
      }

      v19 = (v9 + 32 + 592 * result);
      memcpy(v36, v19, sizeof(v36));
      memmove(__src, v19, 0x250uLL);
      nullsub_2(__src);
      sub_242C6CDD4(v36, v35);
    }

    else
    {
      sub_242C6CE84(__src);
    }

    memcpy(v41, __src, sizeof(v41));
LABEL_11:
    memcpy(__src, v41, sizeof(__src));
    sub_242C6CDD4(__dst, v36);
    sub_242C67560(v38);
    if (v3)
    {
      memcpy(v36, __src, sizeof(v36));
      sub_242C6D138(v36, &qword_27ECEFAD0);
      return sub_242C6CE30(__dst);
    }

    memcpy(v36, __src, sizeof(v36));
    sub_242C6D138(v36, &qword_27ECEFAD0);
    sub_242C6CE30(__dst);
    if (v31 == v12)
    {
      break;
    }

    ++v12;
    v13 += 592;
    if (v12 >= *(v50 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  v20 = v50;
  if (v8)
  {
    goto LABEL_16;
  }

LABEL_20:
  v9 = MEMORY[0x277D84F90];
  v21 = *(MEMORY[0x277D84F90] + 16);
  if (v21)
  {
    goto LABEL_21;
  }
}

void sub_242C66E40(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 112);
  v33 = *(v3 + 16);
  if (v33)
  {
    v4 = 0;
    v34 = v3 + 32;
    v5 = MEMORY[0x277D84F90];
    v32 = *(a1 + 112);
    while (v4 < *(v3 + 16))
    {
      memcpy(__dst, (v34 + 592 * v4), 0x250uLL);
      v38[0] = __dst[0];
      v38[1] = __dst[1];
      sub_242C6CDD4(__dst, v37);

      v6 = sub_242E110C0(v38);
      if (v2)
      {
        sub_242C6CE30(__dst);

        return;
      }

      v7 = v6;

      v37[0] = v5;
      v8 = [v7 fileWrappers];
      v36 = v7;
      if (v8)
      {
        v9 = v8;
        sub_242C6CBCC();
        v10 = sub_242F04CF0();
      }

      else
      {
        v10 = sub_242CE6C70(v5);
      }

      v11 = v5;
      v12 = 0;
      v35 = v4 + 1;
      v13 = v10 + 64;
      v14 = 1 << *(v10 + 32);
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v16 = v15 & *(v10 + 64);
      v17 = (v14 + 63) >> 6;
      v18 = v10;
      for (i = v10; v16; v11 = v37[0])
      {
LABEL_21:
        while (1)
        {
          v22 = __clz(__rbit64(v16));
          v16 &= v16 - 1;
          v23 = *(*(v18 + 56) + 8 * (v22 | (v12 << 6)));

          v24 = v23;
          if ([v24 isDirectory])
          {
            v25 = [v24 fileWrappers];
            if (v25)
            {
              v26 = v25;
              sub_242C6CBCC();
              v19 = sub_242F04CF0();
            }

            else
            {
              v19 = MEMORY[0x277D84F98];
            }

            v20 = *(v19 + 16);

            v18 = i;
            if (!v20)
            {
              break;
            }
          }

          if (!v16)
          {
            goto LABEL_17;
          }
        }

        v27 = v24;
        MEMORY[0x245D268D0]();
        if (*((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_242F05330();
        }

        sub_242F05370();
      }

      while (1)
      {
LABEL_17:
        v21 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_41;
        }

        if (v21 >= v17)
        {
          break;
        }

        v16 = *(v13 + 8 * v21);
        ++v12;
        if (v16)
        {
          v12 = v21;
          goto LABEL_21;
        }
      }

      if (v11 >> 62)
      {
        v28 = sub_242F059B0();
      }

      else
      {
        v28 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v28)
      {
        if (v28 < 1)
        {
          goto LABEL_42;
        }

        for (j = 0; j != v28; ++j)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x245D270D0](j, v11);
          }

          else
          {
            v30 = *(v11 + 8 * j + 32);
          }

          v31 = v30;
          [v36 removeFileWrapper_];
        }
      }

      sub_242C6CE30(__dst);
      v3 = v32;
      v4 = v35;
      v2 = 0;
      v5 = MEMORY[0x277D84F90];
      if (v35 == v33)
      {
        return;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }
}

uint64_t sub_242C67200(uint64_t a1, uint64_t *a2)
{
  v4 = v3;
  v5 = *(a1 + 112);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v40 = &type metadata for EditableTheme;
  v41 = sub_242C6CC18();
  v42 = sub_242C6CC6C();
  *&v39 = v6;
  *(&v39 + 1) = v7;
  if ((v8 - 1) >= 2)
  {

LABEL_23:
    if (v8 == 2)
    {
      v25 = 0x746144656D656854;
    }

    else
    {
      v25 = 0x736A2E656D656874;
    }

    if (v8 == 2)
    {
      v26 = 0xED000061756C2E61;
    }

    else
    {
      v26 = 0xEA00000000006E6FLL;
    }

    v27._countAndFlagsBits = v25;
    v27._object = v26;
    NSFileWrapper.remove(named:)(v27);
    v28 = v40;
    v29 = v42;
    __swift_project_boxed_opaque_existential_2Tm(&v39, v40);
    LOBYTE(v35) = v8;
    v30 = sub_242E10E04(&v35, v28, v29);
    if (!v4)
    {
      v32 = v30;
      v33 = v31;
      NSFileWrapper.addRegularFile(withContents:fileName:)(v30, v31, v25, v26);

      sub_242C6CCC0(v32, v33);
    }

    return __swift_destroy_boxed_opaque_existential_2Tm(&v39);
  }

  v34 = v8;
  v43 = v9;
  v10 = *(v5 + 16);

  if (!v10)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_22:
    v36 = &type metadata for ResolvedTheme;
    v37 = sub_242C6CD14();
    v38 = sub_242C6CD68();
    *&v35 = swift_allocObject();
    EditableTheme.optimize(for:)(v14, v35 + 16);

    __swift_destroy_boxed_opaque_existential_2Tm(&v39);
    sub_242C6CDBC(&v35, &v39);
    v4 = v3;
    v8 = v34;
    goto LABEL_23;
  }

  v12 = 0;
  v13 = (v5 + 56);
  v14 = MEMORY[0x277D84F90];
  while (v12 < *(v5 + 16))
  {
    v15 = *v13;
    v16 = *(*v13 + 16);
    v17 = v14[2];
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v18 <= v14[3] >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v20 = v17 + v16;
      }

      else
      {
        v20 = v17;
      }

      v14 = sub_242C82F78(isUniquelyReferenced_nonNull_native, v20, 1, v14);
      if (*(v15 + 16))
      {
LABEL_16:
        v21 = (v14[3] >> 1) - v14[2];
        result = type metadata accessor for Layout();
        if (v21 < v16)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v22 = v14[2];
          v23 = __OFADD__(v22, v16);
          v24 = v22 + v16;
          if (v23)
          {
            goto LABEL_36;
          }

          v14[2] = v24;
        }

        goto LABEL_5;
      }
    }

    if (v16)
    {
      goto LABEL_34;
    }

LABEL_5:
    ++v12;
    v13 += 74;
    if (v10 == v12)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void sub_242C67560(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_242F03390();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_242F033A0();
  v197 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v215, v6, sizeof(v215));
  memcpy(v216, v4, sizeof(v216));
  v13 = *v1;
  v14 = *(v1 + 8);
  v15 = v1[2];
  v212[0] = v215[0];
  v212[1] = v215[1];

  v16 = sub_242E110C0(v212);
  if (v2)
  {
    goto LABEL_2;
  }

  v200 = v13;
  v201 = v16;
  v198 = v14;
  v178 = v12;
  v217 = v9;

  memcpy(v212, v215, sizeof(v212));
  sub_242C6CDD4(v215, v211);
  sub_242E22F80(v212, &v213);
  memcpy(v211, v4, sizeof(v211));
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v211) == 1)
  {
    v176[0] = v10;
    v199 = 0;
    v196 = 0;
    v17 = 0;
    v18 = v198;
    v19 = v200;
  }

  else
  {
    memcpy(v206, v4, sizeof(v206));
    memcpy(v207, v4, sizeof(v207));
    sub_242C6CDD4(v207, &v202);
    sub_242E22F80(v206, &v208);
    v18 = v198;
    v19 = v200;
    v176[0] = v10;
    v199 = 0;
    v17 = v208;
    v196 = v209;
  }

  v20 = v213;
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v18;
  *(v21 + 32) = v15;
  v22 = v214;
  v23 = v19;
  v24 = v15;
  v25 = v23;
  v26 = v24;
  v195 = v20;

  v183 = v22;
  v27 = v22;
  v28 = v198;
  v29 = v199;
  sub_242C6B248(v27, v25, v198, v26);
  v31 = v30;
  v32 = v29;
  v176[2] = v21;

  v33 = sub_242C7FCE0(v31);
  v34 = v33;
  v189 = v26;
  v190 = v25;
  v194 = v17;
  if (v17)
  {
    v35 = v33;
    v36 = v25;
    v37 = v26;
    sub_242C6CFB0(v17);

    v39 = v32;
    sub_242C6B248(v38, v36, v28, v37);
    v41 = v40;
    v199 = v39;

    v42 = sub_242C7FCE0(v41);
    sub_242C6CEC0(v17);
    v34 = v35;
  }

  else
  {
    v199 = v32;
    v42 = MEMORY[0x277D84FA0];
  }

  if (*(v42 + 16) <= *(v34 + 16) >> 3)
  {
    v207[0] = v34;

    v43 = v34;
    sub_242C6A40C(v42);
    v186 = v207[0];
  }

  else
  {

    v43 = v34;
    v186 = sub_242C84C7C(v42, v34);
  }

  v44 = v196;
  if (*(v43 + 16) <= *(v42 + 16) >> 3)
  {
    v207[0] = v42;

    sub_242C6A40C(v43);
    v45 = v207[0];
  }

  else
  {

    v45 = sub_242C84C7C(v43, v42);
  }

  v176[1] = v42;
  v177 = v43;
  v185 = sub_242C6A538(v42, v43);
  v46 = v45 + 56;
  v47 = 1 << *(v45 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v45 + 56);
  v50 = (v47 + 63) >> 6;

  v52 = 0;
  v184 = v45;
  v181 = v50;
  v182 = v45 + 56;
  while (v49)
  {
LABEL_25:
    v188 = v49;
    v54 = (*(v45 + 48) + ((v52 << 10) | (16 * __clz(__rbit64(v49)))));
    v55 = v54[1];
    if (!v194)
    {
      goto LABEL_149;
    }

    v187 = v52;
    if (!*(v44 + 16))
    {
      goto LABEL_149;
    }

    v56 = *v54;

    v57 = sub_242CE519C(v56, v55);
    if ((v58 & 1) == 0)
    {
LABEL_154:

LABEL_155:

      goto LABEL_156;
    }

    v59 = v57;

    v60 = *(*(v44 + 56) + 32 * v59 + 8);

    v192 = v60;
    v61 = sub_242F04F00();
    v62 = [v61 lastPathComponent];
    v63 = sub_242F04F30();
    v65 = v64;

    v66 = HIBYTE(v65) & 0xF;
    v179 = v63;
    v191 = v65;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v66 = v63 & 0xFFFFFFFFFFFFLL;
    }

    if (!v66)
    {

      sub_242C6CEC0(v194);

      sub_242F03380();
      sub_242CE678C(MEMORY[0x277D84F90]);
      sub_242C6C80C(&qword_27ECEFA98, MEMORY[0x277CC8620]);
      v174 = v178;
      v175 = v176[0];
      sub_242F035C0();
      sub_242F03310();
      (*(v197 + 8))(v174, v175);
      swift_willThrow();

LABEL_139:

LABEL_2:

      return;
    }

    v193 = v61;
    v67 = [v61 stringByDeletingLastPathComponent];
    if (!v67)
    {
      sub_242F04F30();
      v67 = sub_242F04F00();
    }

    v68 = [v67 pathComponents];

    v69 = sub_242F05310();
    v70 = *(v69 + 16);
    v71 = v201;
    v200 = v70;
    v180 = v71;
    if (v70)
    {
      v72 = 0;
      v73 = (v69 + 40);
      v74 = v71;
      while (1)
      {
        if (v72 >= *(v69 + 16))
        {
          goto LABEL_148;
        }

        v75 = *(v73 - 1);
        v76 = *v73;

        if (([v74 isDirectory] & 1) == 0)
        {

          v44 = v196;
          v45 = v184;
          goto LABEL_19;
        }

        v77 = [v74 fileWrappers];
        if (!v77)
        {
          break;
        }

        v78 = v77;
        v79 = v69;
        sub_242C6CBCC();
        v80 = sub_242F04CF0();

        if (!*(v80 + 16))
        {

          goto LABEL_51;
        }

        v81 = sub_242CE519C(v75, v76);
        v83 = v82;

        if ((v83 & 1) == 0)
        {

LABEL_51:

LABEL_52:

          v44 = v196;
          v45 = v184;
          goto LABEL_19;
        }

        ++v72;
        v84 = *(*(v80 + 56) + 8 * v81);

        v73 += 2;
        v74 = v84;
        v69 = v79;
        if (v200 == v72)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_52;
    }

    v84 = v71;
LABEL_43:

    v85 = [v84 isDirectory];
    v45 = v184;
    if (v85)
    {
      sub_242C6CBCC();
      v86 = v84;
      v87 = sub_242F05810();

      v44 = v196;
      if (v87)
      {
      }

      else
      {
        v88._countAndFlagsBits = v179;
        v88._object = v191;
        NSFileWrapper.remove(named:)(v88);

        v193 = v86;
      }
    }

    else
    {

      v44 = v196;
    }

LABEL_19:
    v49 = (v188 - 1) & v188;

    v50 = v181;
    v46 = v182;
    v52 = v187;
  }

  while (1)
  {
    v53 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
LABEL_144:
      __swift_destroy_boxed_opaque_existential_2Tm(v51);

      sub_242C6CEC0(v194);

LABEL_145:

      goto LABEL_139;
    }

    if (v53 >= v50)
    {
      break;
    }

    v49 = *(v46 + 8 * v53);
    ++v52;
    if (v49)
    {
      v52 = v53;
      goto LABEL_25;
    }
  }

  v89 = v186 + 56;
  v90 = 1 << *(v186 + 32);
  v91 = -1;
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  v92 = v91 & *(v186 + 56);
  v93 = (v90 + 63) >> 6;

  v94 = 0;
  v95 = v183;
  v96 = v195;
  if (v92)
  {
    while (1)
    {
      v97 = v94;
LABEL_60:
      v98 = (*(v186 + 48) + ((v97 << 10) | (16 * __clz(__rbit64(v92)))));
      v99 = v98[1];
      if (!*(v96 + 16))
      {
        goto LABEL_149;
      }

      v100 = *v98;

      v101 = sub_242CE519C(v100, v99);
      if ((v102 & 1) == 0)
      {
        goto LABEL_155;
      }

      sub_242C6CF00(*(v96 + 56) + 40 * v101, v206);
      sub_242C65564(v206, v207);
      v95 = v183;
      if (!*(v183 + 16) || (v103 = sub_242CE519C(v100, v99), (v104 & 1) == 0))
      {

        __swift_destroy_boxed_opaque_existential_2Tm(v207);
        goto LABEL_156;
      }

      v105 = v103;

      v106 = *(v95 + 56) + 32 * v105;
      v107 = *v106;
      v108 = *(v106 + 8);
      v109 = *(v106 + 16);
      v110 = *(v106 + 24);
      v111 = v189;
      v202 = v190;
      LOBYTE(v203) = v198;
      v204 = v189;
      *&v206[0] = v107;
      *(&v206[0] + 1) = v108;
      LOBYTE(v206[1]) = v109;
      *(&v206[1] + 1) = v110;

      v112 = v199;
      sub_242C68D40(v207, v206, v201);
      v199 = v112;
      if (v112)
      {
        __swift_destroy_boxed_opaque_existential_2Tm(v207);

        sub_242C6CEC0(v194);

        return;
      }

      v92 &= v92 - 1;
      __swift_destroy_boxed_opaque_existential_2Tm(v207);

      v94 = v97;
      v96 = v195;
      if (!v92)
      {
        goto LABEL_57;
      }
    }
  }

  while (1)
  {
LABEL_57:
    v97 = v94 + 1;
    if (__OFADD__(v94, 1))
    {
      __break(1u);
      goto LABEL_147;
    }

    if (v97 >= v93)
    {
      break;
    }

    v92 = *(v89 + 8 * v97);
    ++v94;
    if (v92)
    {
      goto LABEL_60;
    }
  }

  v113 = *(v177 + 16);

  v115 = *(sub_242C7FCE0(v114) + 16);

  LODWORD(v183) = v113 != v115;
  if (v113 == v115)
  {
    goto LABEL_71;
  }

  v116 = v199;
  v117 = sub_242C6B644(v95, sub_242C6CE8C);

  v118 = sub_242C7FCE0(v117);
  v119 = v118;
  v120 = *(v118 + 16);
  v121 = v196;
  if (!v120)
  {

    v122 = MEMORY[0x277D84F90];
    goto LABEL_73;
  }

  v122 = sub_242CDD790(*(v118 + 16), 0);
  v123 = sub_242CE013C(v207, v122 + 4, v120, v119);
  sub_242C6548C();
  if (v123 == v120)
  {
LABEL_73:
    sub_242C6965C(v122, &v213);
    v199 = v116;

    goto LABEL_74;
  }

  __break(1u);
LABEL_71:
  v121 = v196;
LABEL_74:
  v124 = v185 + 56;
  v125 = 1 << *(v185 + 32);
  v126 = -1;
  if (v125 < 64)
  {
    v126 = ~(-1 << v125);
  }

  v127 = v126 & *(v185 + 56);
  v128 = (v125 + 63) >> 6;
  v129 = v214;

  v130 = 0;
  v131 = v199;
  v191 = v129;
  v187 = v128;
  v188 = v124;
  if (v127)
  {
    while (2)
    {
      v199 = v131;
      v132 = v130;
LABEL_82:
      v133 = (*(v185 + 48) + ((v132 << 10) | (16 * __clz(__rbit64(v127)))));
      v134 = v133[1];
      if (!*(v129 + 16))
      {
        goto LABEL_149;
      }

      v135 = *v133;

      v136 = sub_242CE519C(v135, v134);
      if ((v137 & 1) == 0 || !v194 || !*(v121 + 16))
      {
        goto LABEL_155;
      }

      v138 = *(v129 + 56) + 32 * v136;
      v139 = *(v138 + 8);
      v200 = *v138;
      LODWORD(v197) = *(v138 + 16);
      v193 = *(v138 + 24);
      v217 = v139;

      v140 = sub_242CE519C(v135, v134);
      if ((v141 & 1) == 0)
      {

        goto LABEL_154;
      }

      v142 = *(v121 + 56) + 32 * v140;
      v144 = *v142;
      v143 = *(v142 + 8);
      v145 = *(v142 + 16);
      v192 = *(v142 + 24);

      v146 = v195;
      if (!*(v195 + 16) || (v147 = sub_242CE519C(v135, v134), (v148 & 1) == 0))
      {

        goto LABEL_156;
      }

      v149 = v147;
      v127 &= v127 - 1;

      sub_242C6CF00(*(v146 + 56) + 40 * v149, v206);
      sub_242C65564(v206, v207);
      v150 = v200;
      v151 = v200 == v144 && v217 == v143;
      if (!v151 && (sub_242F06110() & 1) == 0)
      {
        goto LABEL_114;
      }

      if (v197)
      {
        if (v197 == 1)
        {
          v152 = 0xE400000000000000;
          v153 = 1953394534;
          if (v145)
          {
            break;
          }

LABEL_106:
          v155 = 0xE500000000000000;
          if (v153 == 0x6567616D69)
          {
LABEL_107:
            if (v152 == v155)
            {

              v150 = v200;
              if (v193 == v192)
              {
                goto LABEL_112;
              }

LABEL_114:
              v208 = v190;
              LOBYTE(v209) = v198;
              v210 = v189;
              *&v206[0] = v150;
              *(&v206[0] + 1) = v217;
              LOBYTE(v206[1]) = v197;
              *(&v206[1] + 1) = v193;
              v202 = v144;
              v203 = v143;
              LOBYTE(v204) = v145;
              v205 = v192;
              v162 = v199;
              sub_242C69148(v207, v206, &v202, v201);
              v131 = v162;
              if (v162)
              {
                __swift_destroy_boxed_opaque_existential_2Tm(v207);

                sub_242C6CEC0(v194);

                goto LABEL_139;
              }

              __swift_destroy_boxed_opaque_existential_2Tm(v207);

              LODWORD(v183) = 1;
LABEL_116:
              v130 = v132;
              v121 = v196;
              v129 = v191;
              goto LABEL_117;
            }
          }

LABEL_110:
          v156 = sub_242F06110();

          v150 = v200;
          if ((v156 & 1) == 0 || v193 != v192)
          {
            goto LABEL_114;
          }

LABEL_112:

          v157 = v217;

          v158._countAndFlagsBits = v150;
          v158._object = v157;
          v159 = v201;
          v160 = v150;
          v161 = NSFileWrapper.child(at:)(v158);

          v131 = v199;
          if (v161)
          {

            __swift_destroy_boxed_opaque_existential_2Tm(v207);
            goto LABEL_116;
          }

          v202 = v190;
          LOBYTE(v203) = v198;
          v204 = v189;
          *&v206[0] = v160;
          *(&v206[0] + 1) = v157;
          LOBYTE(v206[1]) = v197;
          *(&v206[1] + 1) = v193;
          sub_242C68D40(v207, v206, v159);
          v121 = v196;
          v129 = v191;
          v51 = v207;
          if (v131)
          {
            goto LABEL_144;
          }

          __swift_destroy_boxed_opaque_existential_2Tm(v207);

          v130 = v132;
LABEL_117:
          v128 = v187;
          v124 = v188;
          if (!v127)
          {
            goto LABEL_78;
          }

          continue;
        }

        v152 = 0xE800000000000000;
        v153 = 0x656372756F736572;
        if (!v145)
        {
          goto LABEL_106;
        }
      }

      else
      {
        v152 = 0xE500000000000000;
        v153 = 0x6567616D69;
        if (!v145)
        {
          goto LABEL_106;
        }
      }

      break;
    }

    if (v145 == 1)
    {
      v154 = 1953394534;
    }

    else
    {
      v154 = 0x656372756F736572;
    }

    if (v145 == 1)
    {
      v155 = 0xE400000000000000;
    }

    else
    {
      v155 = 0xE800000000000000;
    }

    if (v153 == v154)
    {
      goto LABEL_107;
    }

    goto LABEL_110;
  }

LABEL_78:
  while (1)
  {
    v132 = v130 + 1;
    if (__OFADD__(v130, 1))
    {
      break;
    }

    if (v132 >= v128)
    {

      sub_242C6CEC0(v194);

      if (v183)
      {

        v163 = v201;
        v164 = v198;
      }

      else
      {
        v165 = *(v186 + 16);

        v163 = v201;
        v164 = v198;
        if (v165)
        {
        }

        else
        {
          v166 = *(v184 + 16);

          if (!v166)
          {
            memcpy(v207, v216, sizeof(v207));
            if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v207) != 1)
            {

              goto LABEL_145;
            }
          }
        }
      }

      if (v164 == 2)
      {
        v167 = 0xD000000000000015;
      }

      else
      {
        v167 = 0xD000000000000013;
      }

      if (v164 == 2)
      {
        v168 = "asset_manifest.json";
      }

      else
      {
        v168 = "resources directory";
      }

      v169._object = (v168 | 0x8000000000000000);
      v169._countAndFlagsBits = v167;
      NSFileWrapper.remove(named:)(v169);
      v170 = sub_242DBF738(v164, v129);
      if (v131)
      {

        goto LABEL_2;
      }

      v172 = v170;
      v173 = v171;
      NSFileWrapper.addRegularFile(withContents:fileName:)(v170, v171, v167, v168 | 0x8000000000000000);

      sub_242C6CCC0(v172, v173);

      goto LABEL_139;
    }

    v127 = *(v124 + 8 * v132);
    ++v130;
    if (v127)
    {
      v199 = v131;
      goto LABEL_82;
    }
  }

LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:

LABEL_156:
  sub_242F05C60();
  __break(1u);
}

void sub_242C68ACC()
{
  v0 = sub_242F03390();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_242F033A0();
  v18 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_242F04F00();
  v5 = [v4 lastPathComponent];
  v6 = sub_242F04F30();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = [v4 stringByDeletingLastPathComponent];
    v11 = sub_242F04F30();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    v15 = NSFileWrapper.directory(at:creatingIntermediateDirectories:)(v14, 0);

    if (v15)
    {
      v16._countAndFlagsBits = v6;
      v16._object = v8;
      NSFileWrapper.remove(named:)(v16);
    }

    else
    {
    }
  }

  else
  {

    sub_242F03380();
    sub_242CE678C(MEMORY[0x277D84F90]);
    sub_242C6C80C(&qword_27ECEFA98, MEMORY[0x277CC8620]);
    sub_242F035C0();
    sub_242F03310();
    (*(v18 + 8))(v3, v1);
    swift_willThrow();
  }
}

void sub_242C68D40(void *a1, uint64_t *a2, uint64_t a3)
{
  v36 = a3;
  v6 = sub_242F03390();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_242F033A0();
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a2;
  v12 = *(v3 + 8);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v13);
  v39 = v12;
  v15 = (*(v14 + 40))(&v39, v13, v14);
  if (!v15)
  {
    sub_242F03340();
    sub_242CE678C(MEMORY[0x277D84F90]);
    sub_242C6C80C(&qword_27ECEFA98, MEMORY[0x277CC8620]);
    sub_242F035C0();
    sub_242F03310();
    (*(v38 + 8))(v11, v9);
    swift_willThrow();
    return;
  }

  v16 = v15;
  v34 = v8;
  v35 = v11;
  v17 = v38;
  v18 = sub_242F04F00();
  v19 = [v18 lastPathComponent];
  v20 = sub_242F04F30();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    sub_242F03380();
    sub_242CE678C(MEMORY[0x277D84F90]);
    sub_242C6C80C(&qword_27ECEFA98, MEMORY[0x277CC8620]);
    v31 = v35;
    sub_242F035C0();
    sub_242F03310();
    (*(v17 + 8))(v31, v9);
LABEL_11:
    swift_willThrow();

    return;
  }

  v24 = [v18 stringByDeletingLastPathComponent];
  v25 = sub_242F04F30();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  v29 = NSFileWrapper.directory(at:creatingIntermediateDirectories:)(v28, 1);

  if (!v29)
  {
    v32 = v9;
    sub_242F03340();
    sub_242CE678C(MEMORY[0x277D84F90]);
    sub_242C6C80C(&qword_27ECEFA98, MEMORY[0x277CC8620]);
    v33 = v35;
    sub_242F035C0();
    sub_242F03310();
    (*(v17 + 8))(v33, v32);
    goto LABEL_11;
  }

  NSFileWrapper.checkedAddFileWrapper(_:)(v16);

  if (!v30)
  {
  }
}

void sub_242C69148(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v57 = a1;
  v7 = sub_242F03390();
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_242F033A0();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 8);
  v63 = *a2;
  v64 = v11;
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *a3;
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = *v4;
  v19 = *(v4 + 8);
  v20 = v4[2];
  v21 = 0xE400000000000000;
  v22 = 1953394534;
  if (v12 != 1)
  {
    v22 = 0x656372756F736572;
    v21 = 0xE800000000000000;
  }

  if (v12)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0x6567616D69;
  }

  if (v12)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  if (*(a3 + 16))
  {
    if (v16 == 1)
    {
      v25 = 0xE400000000000000;
      if (v23 != 1953394534)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v25 = 0xE800000000000000;
      if (v23 != 0x656372756F736572)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v25 = 0xE500000000000000;
    if (v23 != 0x6567616D69)
    {
      goto LABEL_18;
    }
  }

  if (v24 == v25)
  {

    goto LABEL_19;
  }

LABEL_18:
  v55 = v17;
  v56 = v20;
  v54 = v13;
  v26 = sub_242F06110();

  if ((v26 & 1) == 0)
  {
    v28 = v18;
    v69 = v18;
    v70 = v19;
    v29 = v56;
    v71 = v56;
    v65 = v14;
    v66 = v15;
    v67 = v16;
    v68 = v55;
    v30 = v62;
    v31 = v72;
    sub_242C68ACC();
    if (!v31)
    {
      v70 = v19;
      v71 = v29;
      v65 = v63;
      v66 = v64;
      v67 = v12;
      v68 = v54;
      v69 = v28;
      sub_242C68D40(v57, &v65, v30);
    }

    return;
  }

LABEL_19:
  v27 = v14;
  if ((v63 != v14 || v64 != v15) && (sub_242F06110() & 1) == 0)
  {
    v32 = sub_242F04F00();
    v33 = [v32 lastPathComponent];

    if (!v33)
    {
      sub_242F04F30();
      v33 = sub_242F04F00();
    }

    v34 = sub_242F04F00();
    v35 = [v34 stringByDeletingPathExtension];

    v36 = sub_242F04F30();
    v38 = v37;

    v39._countAndFlagsBits = v36;
    v39._object = v38;
    v40 = NSFileWrapper.child(at:)(v39);

    if (v40)
    {
      v41 = sub_242F04F00();
      v42 = [v41 stringByDeletingPathExtension];

      v43 = sub_242F04F30();
      v45 = v44;

      v46._countAndFlagsBits = v43;
      v46._object = v45;
      v47 = NSFileWrapper.child(at:)(v46);

      if (v47)
      {
        v48._countAndFlagsBits = v27;
        v48._object = v15;
        v49 = NSFileWrapper.child(at:)(v48);
        if (v49)
        {
          v50 = v49;
          [v40 removeFileWrapper_];
          [v50 setPreferredFilename_];

          NSFileWrapper.checkedAddFileWrapper(_:)(v50);
          if (!v51)
          {
          }

          return;
        }

        v40 = v47;
      }
    }

    sub_242F03380();
    sub_242CE678C(MEMORY[0x277D84F90]);
    sub_242C6C80C(&qword_27ECEFA98, MEMORY[0x277CC8620]);
    v52 = v58;
    v53 = v61;
    sub_242F035C0();
    sub_242F03310();
    (*(v60 + 8))(v52, v53);
    swift_willThrow();
  }
}

uint64_t sub_242C6965C(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      v7 = sub_242CE519C(v6, v5);
      if (v8)
      {
        v9 = v7;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = a2[1];
        *&v17[0] = v11;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_242D013C8();
          v11 = *&v17[0];
        }

        sub_242ED03BC(v9, v11);
        a2[1] = v11;
      }

      v12 = sub_242CE519C(v6, v5);
      if (v13)
      {
        v14 = v12;
        v15 = swift_isUniquelyReferenced_nonNull_native();
        v16 = *a2;
        v19 = *a2;
        if ((v15 & 1) == 0)
        {
          sub_242D01220();
          v16 = v19;
        }

        sub_242C65564((*(v16 + 56) + 40 * v14), v17);
        sub_242ED0200(v14, v16);
        *a2 = v16;
      }

      else
      {
        v18 = 0;
        memset(v17, 0, sizeof(v17));
      }

      result = sub_242C6D138(v17, &qword_27ECEFAD8);
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_242C69804(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x245D24DE0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_242C69858(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x245D24DF0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

double sub_242C698EC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_242C69900()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x245D279D0](*&v1);
}

_DWORD *sub_242C69954@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_242C69984(uint64_t a1, id *a2)
{
  result = sub_242F04F10();
  *a2 = 0;
  return result;
}

uint64_t sub_242C699FC(uint64_t a1, id *a2)
{
  v3 = sub_242F04F20();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_242C69A7C@<X0>(uint64_t *a1@<X8>)
{
  sub_242F04F30();
  v2 = sub_242F04F00();

  *a1 = v2;
  return result;
}

uint64_t sub_242C69AC0()
{
  v0 = sub_242F04F30();
  v1 = MEMORY[0x245D26700](v0);

  return v1;
}

uint64_t sub_242C69AFC()
{
  sub_242F04F30();
  sub_242F04DD0();
}

uint64_t sub_242C69B50()
{
  sub_242F04F30();
  sub_242F06390();
  sub_242F04DD0();
  v0 = sub_242F063E0();

  return v0;
}

uint64_t sub_242C69BC4()
{
  v0 = sub_242F04F30();
  v2 = v1;
  if (v0 == sub_242F04F30() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_242F06110();
  }

  return v5 & 1;
}

uint64_t sub_242C69C4C()
{
  sub_242C6C80C(&qword_27ECEFA68, type metadata accessor for SystemDesign);
  sub_242C6C80C(&qword_27ECEFA70, type metadata accessor for SystemDesign);

  return sub_242F05CC0();
}

uint64_t sub_242C69D08()
{
  sub_242C6C80C(&qword_27ECEFA50, type metadata accessor for Weight);
  sub_242C6C80C(&qword_27ECEFA58, type metadata accessor for Weight);
  sub_242C6CB24();
  return sub_242F05CC0();
}

uint64_t sub_242C69DD0()
{
  sub_242C6C80C(&qword_27ECEFA88, type metadata accessor for AttributeName);
  sub_242C6C80C(&qword_27ECEFA90, type metadata accessor for AttributeName);

  return sub_242F05CC0();
}

uint64_t sub_242C69E8C()
{
  sub_242C6C80C(&qword_27ECEFA78, type metadata accessor for TraitKey);
  sub_242C6C80C(&qword_27ECEFA80, type metadata accessor for TraitKey);

  return sub_242F05CC0();
}

uint64_t sub_242C69F48@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_242F04F00();

  *a1 = v2;
  return result;
}

uint64_t sub_242C69F90()
{
  sub_242C6C80C(&qword_27ECEFB38, type metadata accessor for Key);
  sub_242C6C80C(&unk_27ECEFB40, type metadata accessor for Key);

  return sub_242F05CC0();
}

uint64_t sub_242C6A04C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_242F03510();
    if (v10)
    {
      v11 = sub_242F03530();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_242F03520();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_242F03510();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_242F03530();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_242F03520();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_242C6A27C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_242C6B028(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_242C6CCC0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_242C6A04C(v13, a3, a4, &v12);
  v10 = v4;
  sub_242C6CCC0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_242C6A40C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_242C6AD44(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_242C6A538(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_242C6A968(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_242C6A6FC(v11, v6, a2, a1);

    MEMORY[0x245D287D0](v11, -1, -1);
  }

  return v9;
}

void *sub_242C6A6FC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_242C6A968(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_242C6A78C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_242C6B488(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_242C6A830(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, void *a6)
{
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v13 = swift_allocObject();
    *(v13 + 16) = a4;
    *(v13 + 24) = a5;
    *(v13 + 32) = a6;
    v14 = a4;
    v15 = a6;
    v16 = v14;
    v17 = v15;
    v18 = v16;
    v19 = v17;
    v20 = sub_242C6AE80(a1, a2, a3, v18, a5, v19);

    return v20;
  }

  return result;
}

uint64_t sub_242C6A968(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_242F06390();

      sub_242F04DD0();
      v26 = sub_242F063E0();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_242F06110() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_242E62158(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_242F06390();

      sub_242F04DD0();
      v39 = sub_242F063E0();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_242F06110() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C6AD44(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_242F06390();
  sub_242F04DD0();
  v6 = sub_242F063E0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_242F06110() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_242CC26BC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_242CC3AD0(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_242C6AE80(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, char a5, void *a6)
{
  result = swift_allocObject();
  v13 = 0;
  v14 = 0;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 64);
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v20 = v19 | (v14 << 6);
LABEL_13:
    if (a5 == 1)
    {
      v18 = -2;
    }

    else
    {
      if (a5 != 2)
      {
        goto LABEL_16;
      }

      v18 = -3;
    }

    if ((v18 | *(*(a3 + 56) + 32 * v20 + 24)) == 0xFFFFFFFFFFFFFFFFLL)
    {
LABEL_16:
      *(a1 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v13++, 1))
      {
        __break(1u);
LABEL_19:
        v24 = a4;
        v25 = a6;
        v26 = sub_242D37270(a1, a2, v13, a3);

        return v26;
      }
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= ((v15 + 63) >> 6))
    {
      goto LABEL_19;
    }

    v22 = *(a3 + 64 + 8 * v14);
    ++v21;
    if (v22)
    {
      v17 = (v22 - 1) & v22;
      v20 = __clz(__rbit64(v22)) | (v14 << 6);
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C6B028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_242F03510();
  v11 = result;
  if (result)
  {
    result = sub_242F03530();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_242F03520();
  sub_242C6A04C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_242C6B0E0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_242C6D21C(a3, a4);
          return sub_242C6A27C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_242C6B248(uint64_t a1, void *a2, int a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v23 = a3;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = a2;
  v14 = a4;
  v15 = v13;
  v16 = v14;
  v17 = v16;
  if (v11 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v21 = swift_slowAlloc();
      sub_242C6A830(v21, v12, a1, v15, v23, v17);
      MEMORY[0x245D287D0](v21, -1, -1);

      goto LABEL_6;
    }
  }

  v22[1] = v9;
  MEMORY[0x28223BE20](v16);
  v18 = v22 - ((8 * v12 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v18, 8 * v12);
  v22[0] = v15;
  v19 = v15;
  v20 = v17;
  sub_242C6AE80(v18, v12, a1, v19, v23, v20);
  if (v4)
  {
    swift_willThrow();
  }

  v15 = v22[0];
LABEL_6:
}

uint64_t sub_242C6B488(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *))
{
  v25 = 0;
  v24 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v31 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = v13;
    v18 = *(a3 + 56) + 32 * v13;
    v19 = *v18;
    v20 = *(v18 + 8);
    LOBYTE(v13) = *(v18 + 16);
    v21 = *(v18 + 24);
    v28[0] = v19;
    v28[1] = v20;
    v29 = v13;
    v30 = v21;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    LOBYTE(v15) = a4(v15, v16, v28);

    v8 = v31;
    if ((v15 & 1) == 0)
    {
      *(v24 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_242D37270(v24, a2, v25, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_242D37270(v24, a2, v25, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v31 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242C6B644(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void *))
{
  v3 = v2;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_242C6A78C(v13, v8, a1, a2);
      MEMORY[0x245D287D0](v13, -1, -1);

      return v11;
    }
  }

  MEMORY[0x28223BE20](v10);
  bzero(v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_242C6B488(v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  return v11;
}

id sub_242C6B810(uint64_t a1, unsigned __int8 *a2)
{
  v99 = *MEMORY[0x277D85DE8];
  v4 = sub_242F03390();
  MEMORY[0x28223BE20](v4 - 8);
  v92 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_242F033A0();
  v94 = *(v6 - 8);
  v95 = v6;
  MEMORY[0x28223BE20](v6);
  v93 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_242F03600();
  v9 = *(v8 - 8);
  v89 = v8;
  v90 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_242F03690();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v73 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v73 - v20;
  v22 = *a2;
  v23 = a1;
  (*(v13 + 16))(v73 - v20, a1, v12);
  v24 = objc_allocWithZone(MEMORY[0x277CCAA20]);
  v25 = v96;
  v26 = sub_242D6EC18(v21, 0);
  if (!v25)
  {
    v27 = v26;
    v87 = 0;
    v88 = v13;
    v28 = v95;
    LODWORD(v96) = v22;
    v85 = v16;
    v86 = v19;
    v83 = v11;
    v84 = v23;
    v91 = v12;
    if ([v26 isDirectory])
    {
      v98 = MEMORY[0x277D84F90];
      v29 = [v27 fileWrappers];
      v82 = v27;
      if (v29)
      {
        v30 = v29;
        sub_242C6CBCC();
        v31 = sub_242F04CF0();

        v32 = v31;
      }

      else
      {
        v32 = sub_242CE6C70(MEMORY[0x277D84F90]);
      }

      v34 = v91;
      v35 = v96;
      v36 = v88;
      v37 = 0;
      v38 = v32 + 64;
      v39 = 1 << *(v32 + 32);
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      v41 = v40 & *(v32 + 64);
      v42 = (v39 + 63) >> 6;
      v80 = *MEMORY[0x277CC91D8];
      v79 = (v90 + 104);
      v78 = (v90 + 8);
      ++v88;
      v81 = (v36 + 4);
      v90 = MEMORY[0x277D84F90];
LABEL_10:
      v43 = v37;
      if (!v41)
      {
        goto LABEL_12;
      }

      do
      {
        v37 = v43;
LABEL_15:
        v44 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v45 = v32;
        v16 = *(*(v32 + 56) + 8 * (v44 | (v37 << 6)));
        if ((v35 & 1) == 0)
        {

          v47 = v16;
LABEL_20:
          v48 = v16;
          v49 = [v48 isSymbolicLink];
          v77 = v48;
          if (v49)
          {
            v48 = v77;
            v50 = [v77 symbolicLinkDestinationURL];
            if (v50)
            {
              v16 = v86;
              v51 = v50;
              sub_242F03660();

              v48 = v77;
              v52 = [v77 preferredFilename];
              if (v52)
              {
                v76 = v52;
                v75 = sub_242F03670();
                sub_242F03670();
                LODWORD(v75) = sub_242F050F0();

                if ((v75 & 1) == 0)
                {
                  v53 = sub_242F035E0();
                  v75 = v54;
                  v97[0] = v53;
                  v97[1] = v54;
                  v55 = v83;
                  (*v79)(v83, v80, v89);
                  sub_242C6CB78();
                  sub_242F03680();
                  (*v78)(v55, v89);

                  v75 = *v88;
                  v56 = v86;
                  v75(v86, v91);
                  v74 = *v81;
                  v74(v56, v85, v91);
                  sub_242F03670();
                  v57 = sub_242F04F00();

                  v58 = [v57 stringByStandardizingPath];

                  v73[1] = sub_242F04F30();
                  v59 = v85;
                  sub_242F03610();

                  v60 = v86;
                  v61 = v91;
                  v75(v86, v91);
                  v74(v60, v59, v61);
                }

                v75 = objc_allocWithZone(MEMORY[0x277CCAA20]);
                v16 = v86;
                v62 = sub_242F03630();
                v97[0] = 0;
                v48 = [v75 initWithURL:v62 options:0 error:v97];

                v34 = v97[0];
                if (!v48)
                {
LABEL_35:
                  v69 = v34;

                  v24 = sub_242F035D0();
                  swift_willThrow();

                  v70 = v77;

                  (*v88)(v16, v91);

                  return v24;
                }

                v63 = v97[0];

                v64 = v76;
                [v48 setPreferredFilename_];

                v34 = v91;
              }

              (*v88)(v16, v34);
            }
          }

          v90 = v48;
          MEMORY[0x245D268D0]();
          if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_242F05330();
          }

          v16 = v90;
          sub_242F05370();

          v90 = v98;
          v35 = v96;
          v32 = v45;
          goto LABEL_10;
        }

        v46 = v16;
        v34 = v91;
        if ((sub_242F050F0() & 1) == 0)
        {
          goto LABEL_20;
        }

        v43 = v37;
        v35 = v96;
        v32 = v45;
      }

      while (v41);
      while (1)
      {
LABEL_12:
        v37 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          __break(1u);
          goto LABEL_35;
        }

        if (v37 >= v42)
        {
          break;
        }

        v41 = *(v38 + 8 * v37);
        ++v43;
        if (v41)
        {
          goto LABEL_15;
        }
      }

      v24 = v90;
      if (v90 >> 62)
      {
        v71 = sub_242F059B0();
        v66 = v94;
        v65 = v95;
        v67 = v93;
        v68 = v82;
        if (v71)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v66 = v94;
        v65 = v95;
        v67 = v93;
        v68 = v82;
        if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_33:

          return v24;
        }
      }

      sub_242F03330();
      sub_242CE678C(MEMORY[0x277D84F90]);
      sub_242C6C80C(&qword_27ECEFA98, MEMORY[0x277CC8620]);
      sub_242F035C0();
      v24 = sub_242F03310();
      (*(v66 + 8))(v67, v65);
      swift_willThrow();
    }

    else
    {
      sub_242F03330();
      sub_242CE678C(MEMORY[0x277D84F90]);
      sub_242C6C80C(&qword_27ECEFA98, MEMORY[0x277CC8620]);
      v33 = v93;
      sub_242F035C0();
      v24 = sub_242F03310();
      (*(v94 + 8))(v33, v28);
      swift_willThrow();
    }
  }

  return v24;
}

unint64_t sub_242C6C254()
{
  result = qword_27ECEF8B8;
  if (!qword_27ECEF8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEF8B8);
  }

  return result;
}

unint64_t sub_242C6C2AC()
{
  result = qword_27ECEF8C0;
  if (!qword_27ECEF8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECEF8C0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_242C6C314(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_242C6C35C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ArcPackageExporter.ScriptVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArcPackageExporter.ScriptVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}