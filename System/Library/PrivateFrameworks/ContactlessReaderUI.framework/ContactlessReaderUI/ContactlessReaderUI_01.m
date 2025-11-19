void sub_243F67AD8()
{
  sub_243F67C94();
  if (v0 <= 0x3F)
  {
    sub_243F67D28();
    if (v1 <= 0x3F)
    {
      sub_243F67E1C(319, &qword_27EDC0268, &type metadata for IdentityUIState, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_243F67E1C(319, &qword_27EDC0270, &type metadata for CheckmarkState, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_243F67E1C(319, &qword_27EDC0278, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_243F67E1C(319, &qword_27EDC0280, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_243F67E1C(319, &qword_27EDC0288, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
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

void sub_243F67C94()
{
  if (!qword_27EDC0248)
  {
    type metadata accessor for FineRotationManager(255);
    sub_243F682A4(&qword_27EDC0188, type metadata accessor for FineRotationManager);
    v0 = sub_2440D1940();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC0248);
    }
  }
}

void sub_243F67D28()
{
  if (!qword_27EDC0250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0258);
    sub_243F67D98();
    v0 = sub_2440D1E80();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC0250);
    }
  }
}

unint64_t sub_243F67D98()
{
  result = qword_27EDC0260;
  if (!qword_27EDC0260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0258);
    sub_243F64688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0260);
  }

  return result;
}

void sub_243F67E1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_243F67E6C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC01D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC01C8);
  sub_243F66E18();
  sub_243F66EFC();
  swift_getOpaqueTypeConformance2();
  sub_243F67588();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_243F67F74()
{
  type metadata accessor for IdentityCenterView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  return sub_2440D2830();
}

unint64_t sub_243F67FF8()
{
  result = qword_27EDC02D0;
  if (!qword_27EDC02D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC02A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0290);
    sub_243F5DD50(&qword_27EDC02C8, &qword_27EDC0290);
    swift_getOpaqueTypeConformance2();
    sub_243F682A4(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC02D0);
  }

  return result;
}

uint64_t sub_243F68154(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for IdentityCenterView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_243F681C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_243F68230()
{
  result = qword_27EDC02D8;
  if (!qword_27EDC02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC02D8);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243F682A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for IdentityCenterView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 20);
  v4 = sub_2440D1F00();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);

  return swift_deallocObject();
}

uint64_t sub_243F684E4()
{
  type metadata accessor for IdentityCenterView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  return sub_2440D1E50();
}

uint64_t sub_243F6857C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2440D1A10();
  *a1 = result;
  return result;
}

unint64_t sub_243F685D0()
{
  result = qword_27EDC0328;
  if (!qword_27EDC0328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0320);
    sub_243F5DD50(&qword_27EDC0330, &qword_27EDC0338);
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0328);
  }

  return result;
}

unint64_t sub_243F686B4()
{
  result = qword_27EDC0350;
  if (!qword_27EDC0350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0350);
  }

  return result;
}

double sub_243F68708(uint64_t a1)
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

uint64_t sub_243F68758()
{
  sub_2440D3B20();
  sub_2440D30B0();
  return sub_2440D3B50();
}

uint64_t sub_243F687CC()
{
  sub_2440D3B20();
  sub_2440D30B0();
  return sub_2440D3B50();
}

uint64_t sub_243F68820@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2440D3970();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_243F688B0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2440D3970();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_243F68920(uint64_t a1)
{
  v2 = sub_243F68B2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243F6895C(uint64_t a1)
{
  v2 = sub_243F68B2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243F68998(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0358);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243F68B2C();
  sub_2440D3B70();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0368);
  sub_243F69AA4(&qword_27EDC0370, sub_243F68B80);
  sub_2440D39B0();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_243F68B2C()
{
  result = qword_27EDC0360;
  if (!qword_27EDC0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0360);
  }

  return result;
}

unint64_t sub_243F68B80()
{
  result = qword_27EDC0378;
  if (!qword_27EDC0378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0378);
  }

  return result;
}

void *sub_243F68BD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_243F691B0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_243F68C1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F6973726576;
  }

  else
  {
    v3 = 7107189;
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
    v5 = 0x6E6F6973726576;
  }

  else
  {
    v5 = 7107189;
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
    v8 = sub_2440D3A10();
  }

  return v8 & 1;
}

uint64_t sub_243F68CBC()
{
  sub_2440D3B20();
  sub_2440D30B0();

  return sub_2440D3B50();
}

uint64_t sub_243F68D38()
{
  sub_2440D30B0();
}

uint64_t sub_243F68DA0()
{
  sub_2440D3B20();
  sub_2440D30B0();

  return sub_2440D3B50();
}

uint64_t sub_243F68E18@<X0>(char *a1@<X8>)
{
  v2 = sub_2440D3970();

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

void sub_243F68E78(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (*v1)
  {
    v2 = 0x6E6F6973726576;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_243F68EB0()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_243F68EE4@<X0>(char *a1@<X8>)
{
  v2 = sub_2440D3970();

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

uint64_t sub_243F68F54(uint64_t a1)
{
  v2 = sub_243F6936C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243F68F90(uint64_t a1)
{
  v2 = sub_243F6936C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243F68FCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0380);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243F6936C();
  sub_2440D3B70();
  v14 = 0;
  sub_2440D39A0();
  if (!v5)
  {
    v13 = 1;
    sub_2440D39A0();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_243F69160@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_243F693C0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void *sub_243F691B0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC03C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243F68B2C();
  sub_2440D3B60();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0368);
    sub_243F69AA4(&qword_27EDC03D0, sub_243F69B28);
    sub_2440D3990();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t sub_243F6936C()
{
  result = qword_27EDC0388;
  if (!qword_27EDC0388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0388);
  }

  return result;
}

uint64_t sub_243F693C0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC03C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243F6936C();
  sub_2440D3B60();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_2440D3980();
    v10 = 1;
    sub_2440D3980();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_243F695A8()
{
  result = qword_27EDC0390;
  if (!qword_27EDC0390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0390);
  }

  return result;
}

unint64_t sub_243F69600()
{
  result = qword_27EDC0398;
  if (!qword_27EDC0398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0398);
  }

  return result;
}

unint64_t sub_243F69658()
{
  result = qword_27EDC03A0;
  if (!qword_27EDC03A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC03A0);
  }

  return result;
}

unint64_t sub_243F696B0()
{
  result = qword_27EDC03A8;
  if (!qword_27EDC03A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC03A8);
  }

  return result;
}

unint64_t sub_243F69708()
{
  result = qword_27EDC03B0;
  if (!qword_27EDC03B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC03B0);
  }

  return result;
}

unint64_t sub_243F69760()
{
  result = qword_27EDC03B8;
  if (!qword_27EDC03B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC03B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TOSConfigurationTable.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TOSConfigurationTable.CodingKeys(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_243F698B0(uint64_t a1, int a2)
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

uint64_t sub_243F698F8(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AnnounceManager.Mode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AnnounceManager.Mode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_243F69AA4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0368);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243F69B28()
{
  result = qword_27EDC03D8;
  if (!qword_27EDC03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC03D8);
  }

  return result;
}

uint64_t sub_243F69B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_2440D3390();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a4;

  return sub_243F54830(0, 0, v10, &unk_2440D6D30, v12);
}

uint64_t sub_243F69C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_2440D38A0();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F69D60, 0, 0);
}

uint64_t sub_243F69D60()
{
  sub_2440D3A80();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_243F69E20;
  v3 = v0[2];
  v2 = v0[3];

  return sub_243F720D4(v3, v2, 0, 0, 1);
}

uint64_t sub_243F69E20()
{
  v2 = *v1;

  v3 = v2[8];
  v4 = v2[7];
  v5 = v2[6];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_243F74028;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_243F69FB8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_243F69FB8()
{
  if (sub_2440D33C0())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v4 = (v0[4] + *v0[4]);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_243F6A0E4;

    return v4();
  }
}

uint64_t sub_243F6A0E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243F6A1F8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243F5F610;

  return sub_243F69C9C(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_243F6A2A4(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_243F6A2E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v26 - v8;
  v10 = sub_243F4DF68();
  sub_243F5F574(v10, v9, &qword_27EDC0A50);
  v11 = sub_2440D11E0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    result = sub_243F5EED4(v9, &qword_27EDC0A50);
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2440D3830();

    v27 = 0xD000000000000027;
    v28 = 0x80000002440E9130;
    v26[1] = a1;
    v14 = sub_2440D39C0();
    MEMORY[0x245D57000](v14);

    MEMORY[0x245D57000](41, 0xE100000000000000);
    v15 = v27;
    v16 = v28;
    v17 = sub_243F4E2F4();
    v18 = sub_243F4E2FC();
    sub_243F4E308(v17 & 1, v2, v15, v16, v18, v19);

    result = (*(v12 + 8))(v9, v11);
  }

  v20 = *(v2 + 32);
  v21 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 32) = v21;
    if (*(v2 + 24))
    {

      sub_2440D33B0();
    }

    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = v21;
    v23[4] = a1;
    v24 = sub_2440D3390();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = xmmword_2440D6CF0;
    *(v25 + 48) = &unk_2440D6D48;
    *(v25 + 56) = v23;
    *(v2 + 24) = sub_243F54830(0, 0, v6, &unk_2440D6D50, v25);
  }

  return result;
}

uint64_t sub_243F6A670()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_243F6A6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return MEMORY[0x2822009F8](sub_243F6A6CC, 0, 0);
}

uint64_t sub_243F6A6CC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 16);
    v0[14] = v2;

    v11 = (*(*v2 + 280) + **(*v2 + 280));
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_243F6A914;
    v5 = v0[12];
    v4 = v0[13];

    return v11(v5, v4, 1);
  }

  else
  {
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      *(v7 + 32) = 0;
    }

    v8 = v0[13];
    if (*sub_2440B36A8() <= v8)
    {
      swift_beginAccess();
      v9 = swift_weakLoadStrong();
      if (v9)
      {
        (*(*v9 + 312))(v9);
      }
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_243F6A914()
{

  if (v0)
  {

    v1 = sub_243F74038;
  }

  else
  {

    v1 = sub_243F6AA5C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_243F6AA5C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 32) = 0;
  }

  v2 = *(v0 + 104);
  if (*sub_2440B36A8() <= v2)
  {
    swift_beginAccess();
    v3 = swift_weakLoadStrong();
    if (v3)
    {
      (*(*v3 + 312))(v3);
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_243F6AB50()
{

  return swift_deallocObject();
}

uint64_t sub_243F6AB88()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_243F5F610;

  return sub_243F6A6A8(v2, v3, v4);
}

uint64_t sub_243F6AC30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_243F4DF68();
  sub_243F5F574(v8, v7, &qword_27EDC0A50);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_243F5EED4(v7, &qword_27EDC0A50);
    if (!*(v1 + 24))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = sub_243F4E2F4();
  v12 = sub_243F4E2FC();
  sub_243F4E308(v11 & 1, v1, 0xD000000000000016, 0x80000002440E9160, v12, v13);

  (*(v10 + 8))(v7, v9);
  if (*(v1 + 24))
  {
LABEL_5:

    sub_2440D33B0();
  }

LABEL_6:
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = sub_2440D3390();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = xmmword_2440D6CF0;
  *(v16 + 48) = &unk_2440D6D60;
  *(v16 + 56) = v14;
  *(v1 + 24) = sub_243F54830(0, 0, v4, &unk_2440D6D68, v16);
}

uint64_t sub_243F6AF28()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 16);
    v0[9] = v2;

    v7 = (*(*v2 + 280) + **(*v2 + 280));
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_243F6B100;

    return v7(2, 0, 5);
  }

  else
  {
    swift_beginAccess();
    v5 = swift_weakLoadStrong();
    if (v5)
    {
      *(v5 + 32) = 0;
    }

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_243F6B100()
{

  if (v0)
  {

    v1 = sub_243F73FFC;
  }

  else
  {

    v1 = sub_243F6B248;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_243F6B248()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 32) = 0;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243F6B2CC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243F5F610;

  return sub_243F6AF08(v0);
}

uint64_t sub_243F6B35C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  result = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  if ((*(v0 + 48) & 1) == 0 && !*(v0 + 40))
  {
    v8 = sub_243F4DF68();
    sub_243F5F574(v8, v7, &qword_27EDC0A50);
    v9 = sub_2440D11E0();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_243F5EED4(v7, &qword_27EDC0A50);
    }

    else
    {
      v11 = sub_243F4E2F4();
      v12 = sub_243F4E2FC();
      sub_243F4E308(v11 & 1, v0, 0xD00000000000001DLL, 0x80000002440E9180, v12, v13);

      (*(v10 + 8))(v7, v9);
    }

    v14 = swift_allocObject();
    swift_weakInit();
    v15 = sub_2440D3390();
    (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = xmmword_2440D6D00;
    *(v16 + 48) = &unk_2440D6D78;
    *(v16 + 56) = v14;
    *(v0 + 40) = sub_243F54830(0, 0, v3, &unk_2440D6D80, v16);
  }

  return result;
}

uint64_t sub_243F6B62C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 16);
    v0[9] = v2;

    v7 = (*(*v2 + 280) + **(*v2 + 280));
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_243F6B808;

    return v7(1, 0, 4);
  }

  else
  {
    swift_beginAccess();
    v5 = swift_weakLoadStrong();
    if (v5)
    {
      *(v5 + 48) = 1;
    }

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_243F6B808()
{

  if (v0)
  {

    v1 = sub_243F74000;
  }

  else
  {

    v1 = sub_243F6B950;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_243F6B950()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 48) = 1;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243F6B9D8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243F5F610;

  return sub_243F6B60C(v0);
}

uint64_t sub_243F6BA68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  result = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  if ((*(v0 + 64) & 1) == 0)
  {
    v8 = sub_243F4DF68();
    sub_243F5F574(v8, v7, &qword_27EDC0A50);
    v9 = sub_2440D11E0();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_243F5EED4(v7, &qword_27EDC0A50);
      if (!*(v0 + 56))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = sub_243F4E2F4();
      v12 = sub_243F4E2FC();
      sub_243F4E308(v11 & 1, v0, 0xD00000000000001DLL, 0x80000002440E91A0, v12, v13);

      (*(v10 + 8))(v7, v9);
      if (!*(v0 + 56))
      {
LABEL_7:
        v14 = swift_allocObject();
        swift_weakInit();
        v15 = sub_2440D3390();
        (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
        v16 = swift_allocObject();
        *(v16 + 16) = 0;
        *(v16 + 24) = 0;
        *(v16 + 32) = xmmword_2440D6D00;
        *(v16 + 48) = &unk_2440D6D90;
        *(v16 + 56) = v14;
        *(v0 + 56) = sub_243F54830(0, 0, v3, &unk_2440D6D98, v16);
      }
    }

    sub_2440D33B0();

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_243F6BD70()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 16);
    v0[9] = v2;

    v7 = (*(*v2 + 280) + **(*v2 + 280));
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_243F6BF4C;

    return v7(2, 0, 4);
  }

  else
  {
    swift_beginAccess();
    v5 = swift_weakLoadStrong();
    if (v5)
    {
      *(v5 + 64) = 1;
    }

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_243F6BF4C()
{

  if (v0)
  {

    v1 = sub_243F74004;
  }

  else
  {

    v1 = sub_243F6C094;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_243F6C094()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 64) = 1;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243F6C11C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243F5F610;

  return sub_243F6BD50(v0);
}

uint64_t sub_243F6C1AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4DF68();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    result = sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v9 = sub_243F4E2F4();
    v10 = sub_243F4E2FC();
    sub_243F4E308(v9 & 1, v1, 0x756F437465736572, 0xEC0000002928746ELL, v10, v11);

    result = (*(v7 + 8))(v4, v6);
  }

  *(v1 + 32) = 0;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  return result;
}

uint64_t sub_243F6C32C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4DF68();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0xD000000000000018, 0x80000002440E91C0, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  if (*(v1 + 40))
  {

    sub_2440D33B0();
  }

  *(v1 + 40) = 0;

  if (*(v1 + 56))
  {

    sub_2440D33B0();
  }

  *(v1 + 56) = 0;
}

uint64_t sub_243F6C534()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_243F4DF68();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v9 = sub_243F4E2F4();
    v10 = sub_243F4E2FC();
    sub_243F4E308(v9 & 1, v1, 0x546C6C41706F7473, 0xEF29287372656D69, v10, v11);

    v8 = (*(v7 + 8))(v4, v6);
  }

  (*(*v1 + 328))(v8);
  if (v1[3])
  {

    sub_2440D33B0();
  }

  v1[3] = 0;

  return (*(*v1 + 320))(v12);
}

uint64_t sub_243F6C758()
{

  return swift_deallocClassInstance();
}

unint64_t sub_243F6C880()
{
  result = qword_27EDC03F8;
  if (!qword_27EDC03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC03F8);
  }

  return result;
}

uint64_t sub_243F6C8D4()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_speakingState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243F6C918(char a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_speakingState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_243F6C968(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_voiceSynthesizer;
  *&v17[v18] = [objc_allocWithZone(MEMORY[0x277CB84B8]) init];
  *&v17[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_synthesizerDelegate] = 0;
  v19 = OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_announcementContinuation;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0400);
  (*(*(v20 - 8) + 56))(&v17[v19], 1, 1, v20);
  *&v17[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_safeguardTask] = 0;
  *&v17[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_speakingTask] = 0;
  v17[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_speakingState] = 0;
  v21 = &v17[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_id];
  *v21 = a1;
  *(v21 + 1) = a2;
  v21[16] = a3;
  v22 = &v17[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_text];
  *v22 = a4;
  v22[1] = a5;
  *&v17[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_delay] = a8;
  v23 = OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_locale;
  v24 = sub_2440D08A0();
  v25 = *(v24 - 8);
  (*(v25 + 16))(&v17[v23], a6, v24);
  *&v17[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_synthesizerVoice] = a7;
  v28.receiver = v17;
  v28.super_class = v8;
  v26 = objc_msgSendSuper2(&v28, sel_init);
  (*(v25 + 8))(a6, v24);
  return v26;
}

uint64_t sub_243F6CB74()
{
  *(v1 + 56) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  *(v1 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F6CC10, 0, 0);
}

uint64_t sub_243F6CC10()
{
  v1 = (*(v0 + 56) + OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_text);
  v2 = *v1;
  v3 = v1[1];
  if (sub_2440D30C0() < 1 || (*((*MEMORY[0x277D85000] & **(v0 + 56)) + 0x120))())
  {
    v4 = *(v0 + 64);
    v5 = sub_243F4DFF4();
    sub_243F5F574(v5, v4, &qword_27EDC0A50);
    v6 = sub_2440D11E0();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_243F5EED4(*(v0 + 64), &qword_27EDC0A50);
    }

    else
    {
      v8 = *(v0 + 56);
      v9 = sub_2440D11C0();
      v10 = sub_2440D3470();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = *(v0 + 56);
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        *(v12 + 4) = v11;
        *v13 = v11;
        v14 = v11;
        _os_log_impl(&dword_243F48000, v9, v10, "%@ blocked cause already executed", v12, 0xCu);
        sub_243F5EED4(v13, &qword_27EDC0418);
        MEMORY[0x245D58570](v13, -1, -1);
        MEMORY[0x245D58570](v12, -1, -1);
      }

      v15 = *(v0 + 64);

      (*(v7 + 8))(v15, v6);
    }

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 56);
    v19 = MEMORY[0x245D57080](v2, v3);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = type metadata accessor for VoiceSynthListener();
    v22 = objc_allocWithZone(v21);
    v22[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthListener_stopInDelay] = 0;
    *&v22[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthListener_textHash] = v19;
    v23 = &v22[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthListener_delegate];
    *v23 = sub_243F725C4;
    v23[1] = v20;
    *(v0 + 40) = v22;
    *(v0 + 48) = v21;
    v24 = objc_msgSendSuper2((v0 + 40), sel_init);
    *(v0 + 72) = v24;
    v25 = *(v18 + OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_synthesizerDelegate);
    *(v18 + OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_synthesizerDelegate) = v24;
    v26 = v24;

    v27 = OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_speakingState;
    swift_beginAccess();
    *(v18 + v27) = 1;
    v28 = swift_task_alloc();
    *(v0 + 80) = v28;
    *(v28 + 16) = v18;
    *(v28 + 24) = v26;
    v29 = swift_task_alloc();
    *(v0 + 88) = v29;
    *v29 = v0;
    v29[1] = sub_243F6D024;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_243F6D024()
{

  return MEMORY[0x2822009F8](sub_243F6D13C, 0, 0);
}

uint64_t sub_243F6D13C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_243F6D1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthListener_stopInDelay] = 0;
  *&v7[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthListener_textHash] = a1;
  v8 = &v7[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthListener_delegate];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_243F6D220(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0438);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0400);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_announcementContinuation;
  swift_beginAccess();
  sub_243F73918(v11, a2 + v14, &qword_27EDC0438);
  swift_endAccess();
  v15 = objc_allocWithZone(MEMORY[0x277CB84C0]);
  v16 = sub_2440D2F80();
  v17 = [v15 initWithString_];

  v18 = *sub_244071458();
  *&v18 = v18;
  [v17 setRate_];
  [v17 setVoice_];
  v19 = sub_2440D3B80();
  v21 = v20;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a3;
  v23[4] = v17;
  v24 = sub_2440D3390();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v19;
  v25[5] = v21;
  v25[6] = &unk_2440D7078;
  v25[7] = v23;
  v26 = a3;
  *(a2 + OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_speakingTask) = sub_243F54830(0, 0, v8, &unk_2440D7080, v25);
}

uint64_t sub_243F6D560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F6D600, 0, 0);
}

uint64_t sub_243F6D600()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_2440D3360();
  *(v0 + 176) = sub_2440D3350();
  v3 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_243F6D6C8, v3, v2);
}

uint64_t sub_243F6D6C8()
{

  sub_243F6DA40((v0 + 184));
  MEMORY[0x245D58620](v0 + 136);

  return MEMORY[0x2822009F8](sub_243F6D744, 0, 0);
}

uint64_t sub_243F6D744()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[19];
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_voiceSynthesizer);

    [v4 setDelegate_];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v0[20];
    v7 = v5;
    v8 = *(v5 + OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_voiceSynthesizer);

    [v8 speakUtterance_];
  }

  v9 = v0[21];
  v10 = sub_243F4DFF4();
  sub_243F5F574(v10, v9, &qword_27EDC0A50);
  v11 = sub_2440D11E0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_243F5EED4(v0[21], &qword_27EDC0A50);
  }

  else
  {

    v13 = sub_2440D11C0();
    v14 = sub_2440D3490();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_beginAccess();
      v17 = swift_unknownObjectWeakLoadStrong();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&dword_243F48000, v13, v14, "%@ started", v15, 0xCu);
      sub_243F5EED4(v16, &qword_27EDC0418);
      MEMORY[0x245D58570](v16, -1, -1);
      MEMORY[0x245D58570](v15, -1, -1);
    }

    v18 = v0[21];

    (*(v12 + 8))(v18, v11);
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    sub_243F6DFEC();
  }

  v21 = v0[1];

  return v21();
}

void sub_243F6DA40(BOOL *a1@<X8>)
{
  v2 = sub_2440D08A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_voiceSynthesizer);

    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      (*(v3 + 16))(v5, v9 + OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_locale, v2);

      sub_2440D0720();
      (*(v3 + 8))(v5, v2);
      v11 = sub_2440D2F80();
    }

    else
    {
      v11 = 0;
    }

    [v8 setAccessibilityLanguage_];
  }

  *a1 = v7 == 0;
}

uint64_t sub_243F6DBF4()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F6DC90, 0, 0);
}

uint64_t sub_243F6DC90()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x120);
  if (v3() != 3)
  {
    if (v3() == 2)
    {
      [*(*(v0 + 16) + OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_voiceSynthesizer) stopSpeakingAtBoundary_];
    }

    else if (v3() == 1)
    {
      v4 = *(*(v0 + 16) + OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_synthesizerDelegate);
      if (v4)
      {
        v5 = *((*v2 & *v4) + 0x70);
        v6 = v4;
        v5(1);
      }
    }

    v7 = *(v0 + 16);
    v8 = OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_speakingTask;
    if (*(v7 + OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_speakingTask))
    {

      sub_2440D33B0();
    }

    v9 = *(v0 + 24);
    *(v7 + v8) = 0;

    sub_243F6E428(0);
    v10 = sub_243F4DFF4();
    sub_243F5F574(v10, v9, &qword_27EDC0A50);
    v11 = sub_2440D11E0();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_243F5EED4(*(v0 + 24), &qword_27EDC0A50);
    }

    else
    {
      v13 = *(v0 + 16);
      v14 = sub_2440D11C0();
      v15 = sub_2440D3490();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 16);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        *(v17 + 4) = v16;
        *v18 = v1;
        v19 = v16;
        _os_log_impl(&dword_243F48000, v14, v15, "%@ canceled", v17, 0xCu);
        sub_243F5EED4(v18, &qword_27EDC0418);
        MEMORY[0x245D58570](v18, -1, -1);
        MEMORY[0x245D58570](v17, -1, -1);
      }

      v20 = *(v0 + 24);

      (*(v12 + 8))(v20, v11);
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_243F6DFEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_24407144C();
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = sub_2440D3390();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v9[5] = v6;
  v9[6] = &unk_2440D7030;
  v9[7] = v7;
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_safeguardTask) = sub_243F54830(0, 0, v3, &unk_2440D7038, v9);
}

uint64_t sub_243F6E144(uint64_t a1)
{
  *(v1 + 64) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F6E1E0, 0, 0);
}

uint64_t sub_243F6E1E0()
{
  v1 = *(v0 + 72);
  v2 = sub_243F4DFF4();
  sub_243F5F574(v2, v1, &qword_27EDC0A50);
  v3 = sub_2440D11E0();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_243F5EED4(*(v0 + 72), &qword_27EDC0A50);
  }

  else
  {

    v5 = sub_2440D11C0();
    v6 = sub_2440D3470();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v7 + 4) = Strong;
      *v8 = Strong;
      _os_log_impl(&dword_243F48000, v5, v6, "%@ safeguard triggered", v7, 0xCu);
      sub_243F5EED4(v8, &qword_27EDC0418);
      MEMORY[0x245D58570](v8, -1, -1);
      MEMORY[0x245D58570](v7, -1, -1);
    }

    (*(v4 + 8))(*(v0 + 72), v3);
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    sub_243F6E428(1);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_243F6E428(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0400);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0438);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  if ((a1 & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_safeguardTask;
    if (*(v2 + OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_safeguardTask))
    {

      sub_2440D33B0();
    }

    *(v2 + v14) = 0;
  }

  v15 = OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_speakingState;
  swift_beginAccess();
  *(v2 + v15) = 3;
  v16 = OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_announcementContinuation;
  swift_beginAccess();
  sub_243F5F574(v2 + v16, v13, &qword_27EDC0438);
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_243F5EED4(v13, &qword_27EDC0438);
  }

  else
  {
    (*(v5 + 16))(v7, v13, v4);
    sub_243F5EED4(v13, &qword_27EDC0438);
    sub_2440D3340();
    (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 56))(v11, 1, 1, v4);
  swift_beginAccess();
  sub_243F73918(v11, v2 + v16, &qword_27EDC0438);
  return swift_endAccess();
}

uint64_t sub_243F6E840()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x140);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return v5();
}

uint64_t sub_243F6E96C()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x148);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return v5();
}

uint64_t sub_243F6EA98()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthListener_stopInDelay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243F6EADC(char a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthListener_stopInDelay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_243F6EB8C(void *a1, void *a2)
{
  v5 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x68))())
  {
    (*((*v5 & *v2) + 0x70))(0);
    [a1 stopSpeakingAtBoundary_];
  }

  v6 = [a2 speechString];
  v7 = sub_2440D2FB0();
  v9 = v8;

  v10 = MEMORY[0x245D57080](v7, v9);

  return sub_243F6EF90(v10, 2);
}

uint64_t sub_243F6EE64(int a1, id a2)
{
  v2 = [a2 speechString];
  v3 = sub_2440D2FB0();
  v5 = v4;

  v6 = MEMORY[0x245D57080](v3, v5);

  return sub_243F6EF90(v6, 3);
}

uint64_t sub_243F6EF90(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = *&v2[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthListener_textHash];
  if (v8 == a1)
  {
    return (*&v2[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthListener_delegate])(a2);
  }

  v10 = sub_243F4DFF4();
  sub_243F5F574(v10, v7, &qword_27EDC0A50);
  v11 = sub_2440D11E0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    return sub_243F5EED4(v7, &qword_27EDC0A50);
  }

  v13 = v2;
  v14 = sub_2440D11C0();
  v15 = sub_2440D3470();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v8;

    _os_log_impl(&dword_243F48000, v14, v15, "%ld hash mismatch", v16, 0xCu);
    MEMORY[0x245D58570](v16, -1, -1);
  }

  else
  {

    v14 = v13;
  }

  return (*(v12 + 8))(v7, v11);
}

id sub_243F6F1D8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_243F6F2F0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_announcementTask] = 0;
  v12 = OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_announcementContinuation;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0400);
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  *&v11[OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_safeguardTask] = 0;
  *&v11[OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_observer] = a1;
  v11[OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_id] = a2;
  v14 = &v11[OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_text];
  *v14 = a3;
  v14[1] = a4;

  v15 = MEMORY[0x245D57080](a3, a4);

  *&v11[OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_textHash] = v15;
  *&v11[OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_delay] = a5;
  v18.receiver = v11;
  v18.super_class = v5;
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

uint64_t sub_243F6F46C()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_observer);
  v0[3] = v2;
  v0[4] = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_textHash);
  v0[5] = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = (*v2 + 152) & 0xFFFFFFFFFFFFLL | 0xE73F000000000000;
  v0[6] = *(*v2 + 152);
  v0[7] = v3;

  return MEMORY[0x2822009F8](sub_243F6F548, v2, 0);
}

uint64_t sub_243F6F548()
{
  (*(v0 + 48))(*(v0 + 32), sub_243F73360, *(v0 + 40));

  return MEMORY[0x2822009F8](sub_243F6F5DC, 0, 0);
}

uint64_t sub_243F6F5DC()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_243F6F6C8;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_243F6F6C8()
{

  return MEMORY[0x2822009F8](sub_243F55A48, 0, 0);
}

void sub_243F6F7E0(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = 0x646579616C70;
    }

    else
    {
      v7 = 0x64657070696B73;
    }

    if (a1)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    v9 = sub_243F4DFF4();
    sub_243F5F574(v9, v4, &qword_27EDC0A50);
    v10 = sub_2440D11E0();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v4, 1, v10) == 1)
    {

      sub_243F5EED4(v4, &qword_27EDC0A50);
    }

    else
    {

      v12 = sub_2440D11C0();
      v13 = sub_2440D3490();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v21 = v7;
        v16 = v15;
        v22 = swift_slowAlloc();
        v23 = v22;
        *v14 = 138412546;
        swift_beginAccess();
        v17 = swift_unknownObjectWeakLoadStrong();
        *(v14 + 4) = v17;
        *v16 = v17;
        *(v14 + 12) = 2080;
        v18 = sub_243F4E6F8(v21, v8, &v23);

        *(v14 + 14) = v18;
        _os_log_impl(&dword_243F48000, v12, v13, "%@ %s", v14, 0x16u);
        sub_243F5EED4(v16, &qword_27EDC0418);
        MEMORY[0x245D58570](v16, -1, -1);
        v19 = v22;
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x245D58570](v19, -1, -1);
        MEMORY[0x245D58570](v14, -1, -1);
      }

      else
      {
      }

      (*(v11 + 8))(v4, v10);
    }

    sub_243F70BC4(0);
  }
}

uint64_t sub_243F6FAE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0438);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0400);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_announcementContinuation;
  swift_beginAccess();
  sub_243F73918(v9, a2 + v12, &qword_27EDC0438);
  swift_endAccess();
  v13 = sub_2440D3B80();
  v15 = v14;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_2440D3390();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v13;
  v18[5] = v15;
  v18[6] = &unk_2440D7060;
  v18[7] = v16;
  *(a2 + OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_announcementTask) = sub_243F54830(0, 0, v6, &unk_2440D7068, v18);
}

uint64_t sub_243F6FD90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_text);
    v3 = Strong;

    sub_2440579C8(0, v2);

    v4 = sub_244057FBC(0);
    *(v0 + 72) = v4;

    *(v0 + 88) = *MEMORY[0x277D76438];
    sub_2440D3360();
    v5 = v4;
    *(v0 + 80) = sub_2440D3350();
    v7 = sub_2440D3320();

    return MEMORY[0x2822009F8](sub_243F6FEF8, v7, v6);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_243F6FEF8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  UIAccessibilityPostNotification(v1, v2);

  return MEMORY[0x2822009F8](sub_243F6FF74, 0, 0);
}

uint64_t sub_243F6FF74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_243F703F4();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_243F70004()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F700A0, 0, 0);
}

uint64_t sub_243F700A0()
{
  v1 = *(v0 + 24);
  v2 = sub_243F4DFF4();
  sub_243F5F574(v2, v1, &qword_27EDC0A50);
  v3 = sub_2440D11E0();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_243F5EED4(*(v0 + 24), &qword_27EDC0A50);
  }

  else
  {
    v5 = *(v0 + 16);
    v6 = sub_2440D11C0();
    v7 = sub_2440D3490();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 16);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v8;
      *v10 = v8;
      v11 = v8;
      _os_log_impl(&dword_243F48000, v6, v7, "%@ canceled", v9, 0xCu);
      sub_243F5EED4(v10, &qword_27EDC0418);
      MEMORY[0x245D58570](v10, -1, -1);
      MEMORY[0x245D58570](v9, -1, -1);
    }

    v12 = *(v0 + 24);

    (*(v4 + 8))(v12, v3);
  }

  v13 = *(v0 + 16);
  if (*(v13 + OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_announcementTask))
  {

    sub_2440D33B0();

    v13 = *(v0 + 16);
  }

  v14 = *(v13 + OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_observer);
  *(v0 + 32) = v14;
  *(v0 + 40) = *(v13 + OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_textHash);
  v15 = (*v14 + 160) & 0xFFFFFFFFFFFFLL | 0xBE76000000000000;
  *(v0 + 48) = *(*v14 + 160);
  *(v0 + 56) = v15;

  return MEMORY[0x2822009F8](sub_243F7031C, v14, 0);
}

uint64_t sub_243F7031C()
{
  (*(v0 + 48))(*(v0 + 40));

  return MEMORY[0x2822009F8](sub_243F70388, 0, 0);
}

uint64_t sub_243F70388()
{
  sub_243F70BC4(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243F703F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_244071434();
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = sub_2440D3390();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v9[5] = v6;
  v9[6] = &unk_2440D7018;
  v9[7] = v7;
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_safeguardTask) = sub_243F54830(0, 0, v3, &unk_2440D7020, v9);
}

uint64_t sub_243F7054C(uint64_t a1)
{
  v1[14] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0400);
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0438);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F70694, 0, 0);
}

uint64_t sub_243F70694()
{
  v1 = v0[20];
  v2 = sub_243F4DFF4();
  sub_243F5F574(v2, v1, &qword_27EDC0A50);
  v3 = sub_2440D11E0();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_243F5EED4(v0[20], &qword_27EDC0A50);
  }

  else
  {

    v5 = sub_2440D11C0();
    v6 = sub_2440D3470();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v7 + 4) = Strong;
      *v8 = Strong;
      _os_log_impl(&dword_243F48000, v5, v6, "%@ safeguard triggered", v7, 0xCu);
      sub_243F5EED4(v8, &qword_27EDC0418);
      MEMORY[0x245D58570](v8, -1, -1);
      MEMORY[0x245D58570](v7, -1, -1);
    }

    (*(v4 + 8))(v0[20], v3);
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  v0[21] = v10;
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_observer);
    v0[22] = v11;
    v0[23] = *(v10 + OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_textHash);
    v12 = (*v11 + 160) & 0xFFFFFFFFFFFFLL | 0xBE76000000000000;
    v0[24] = *(*v11 + 160);
    v0[25] = v12;

    return MEMORY[0x2822009F8](sub_243F70978, v11, 0);
  }

  else
  {

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_243F70978()
{
  (*(v0 + 192))(*(v0 + 184));

  return MEMORY[0x2822009F8](sub_243F709EC, 0, 0);
}

uint64_t sub_243F709EC()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_announcementContinuation;
  swift_beginAccess();
  sub_243F5F574(v1 + v5, v2, &qword_27EDC0438);
  v6 = (*(v4 + 48))(v2, 1, v3);
  v7 = v0[19];
  if (v6)
  {
    sub_243F5EED4(v0[19], &qword_27EDC0438);
  }

  else
  {
    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[15];
    (*(v9 + 16))(v8, v0[19], v10);
    sub_243F5EED4(v7, &qword_27EDC0438);
    sub_2440D3340();
    (*(v9 + 8))(v8, v10);
  }

  v11 = v0[21];
  v12 = v0[18];
  (*(v0[16] + 56))(v12, 1, 1, v0[15]);
  swift_beginAccess();
  sub_243F73918(v12, v1 + v5, &qword_27EDC0438);
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

uint64_t sub_243F70BC4(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0400);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0438);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v17[-v12];
  if ((a1 & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_safeguardTask;
    if (*(v2 + OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_safeguardTask))
    {

      sub_2440D33B0();
    }

    *(v2 + v14) = 0;
  }

  v15 = OBJC_IVAR____TtC19ContactlessReaderUI17VoiceOverAnnounce_announcementContinuation;
  swift_beginAccess();
  sub_243F5F574(v2 + v15, v13, &qword_27EDC0438);
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_243F5EED4(v13, &qword_27EDC0438);
  }

  else
  {
    (*(v5 + 16))(v7, v13, v4);
    sub_243F5EED4(v13, &qword_27EDC0438);
    sub_2440D3340();
    (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 56))(v11, 1, 1, v4);
  swift_beginAccess();
  sub_243F73918(v11, v2 + v15, &qword_27EDC0438);
  return swift_endAccess();
}

uint64_t sub_243F70F58()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0xE0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return v5();
}

uint64_t sub_243F7107C()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0xE8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5DE2C;

  return v5();
}

uint64_t sub_243F711A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 112);
  if (*(v8 + 16))
  {
    v9 = sub_243F726DC(a1);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 16 * v9);
      v16[0] = 0;

      v11(v16);
    }
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + 112);
  *(v4 + 112) = 0x8000000000000000;
  sub_243F72C7C(sub_243F73480, v12, a1, isUniquelyReferenced_nonNull_native);
  *(v4 + 112) = v15;
  return swift_endAccess();
}

uint64_t sub_243F712C4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_243F726DC(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 112);
    v10 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_243F72DDC();
      v8 = v10;
    }

    sub_243F72B0C(v6, v8);
    *(v2 + 112) = v8;
  }

  return swift_endAccess();
}

uint64_t sub_243F71374()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = aBlock - v3 + 16;
  v5 = sub_243F4DFF4();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0xD000000000000010, 0x80000002440E9290, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  v11 = [objc_opt_self() defaultCenter];
  v12 = *MEMORY[0x277D76420];
  v13 = swift_allocObject();
  swift_weakInit();
  v20 = sub_243F734AC;
  v21 = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F71CB4;
  ObjectType = &block_descriptor_2;
  v14 = _Block_copy(aBlock);

  v15 = [v11 addObserverForName:v12 object:0 queue:0 usingBlock:v14];
  _Block_release(v14);

  ObjectType = swift_getObjectType();
  aBlock[0] = v15;
  swift_beginAccess();
  sub_243F73918(aBlock, v1 + 120, &qword_27EDC0478);
  return swift_endAccess();
}

uint64_t sub_243F71630(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440D0340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_2440D3390();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v5 + 32))(v12 + v11, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  sub_243F54830(0, 0, v9, &unk_2440D7048, v12);
}

uint64_t sub_243F7181C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = a5;
  return MEMORY[0x2822009F8](sub_243F7183C, 0, 0);
}

uint64_t sub_243F7183C()
{
  v1 = sub_2440D0330();
  if (!v1)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_12;
  }

  v2 = v1;
  *(v0 + 88) = sub_2440D2FB0();
  *(v0 + 96) = v3;
  sub_2440D37F0();
  if (!*(v2 + 16) || (v4 = sub_243F72720(v0 + 16), (v5 & 1) == 0))
  {

    sub_243F73BE8(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_12;
  }

  sub_243F4F028(*(v2 + 56) + 32 * v4, v0 + 56);
  sub_243F73BE8(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_12:
    sub_243F5EED4(v0 + 56, &qword_27EDC0478);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 168) = Strong;
    if (Strong)
    {
      v9 = Strong;
      *(v0 + 176) = MEMORY[0x245D57080](v7, v6);

      return MEMORY[0x2822009F8](sub_243F71A14, v9, 0);
    }
  }

LABEL_13:
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_243F71A14()
{
  v1 = v0[21];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_243F726DC(v0[22]), (v4 & 1) != 0))
  {
    v6 = v0[21];
    v5 = v0[22];
    v7 = (*(v2 + 56) + 16 * v3);
    v0[23] = *v7;
    v0[24] = v7[1];
    v8 = *(*v6 + 160);

    v8(v5);

    return MEMORY[0x2822009F8](sub_243F71B48, 0, 0);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_243F71B48()
{
  v11 = v0;
  v1 = sub_2440D0330();
  if (!v1)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_9;
  }

  v2 = v1;
  *(v0 + 136) = sub_2440D2FB0();
  *(v0 + 144) = v3;
  sub_2440D37F0();
  if (!*(v2 + 16) || (v4 = sub_243F72720(v0 + 16), (v5 & 1) == 0))
  {

    sub_243F73BE8(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_9;
  }

  sub_243F4F028(*(v2 + 56) + 32 * v4, v0 + 56);
  sub_243F73BE8(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_9:
    sub_243F5EED4(v0 + 56, &qword_27EDC0478);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v6 = *(v0 + 16);
    goto LABEL_11;
  }

LABEL_10:
  v6 = 1;
LABEL_11:
  v7 = *(v0 + 184);
  v10 = v6;
  v7(&v10);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_243F71CB4(uint64_t a1)
{
  v2 = sub_2440D0340();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_2440D0320();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_243F71DA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-v3];
  v5 = sub_243F4DFF4();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0x2870756E61656C63, 0xE900000000000029, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  swift_beginAccess();
  sub_243F5F574(v1 + 120, &v14, &qword_27EDC0478);
  if (!*(&v15 + 1))
  {
    return sub_243F5EED4(&v14, &qword_27EDC0478);
  }

  sub_243F734CC(&v14, &v16);
  v11 = [objc_opt_self() defaultCenter];
  __swift_project_boxed_opaque_existential_1(&v16, v17);
  [v11 removeObserver_];

  swift_unknownObjectRelease();
  v14 = 0u;
  v15 = 0u;
  swift_beginAccess();
  sub_243F73918(&v14, v1 + 120, &qword_27EDC0478);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(&v16);
}

uint64_t sub_243F72024()
{

  sub_243F5EED4(v0 + 120, &qword_27EDC0478);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_243F72074()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_243F73370(MEMORY[0x277D84F90]);
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  return v0;
}

uint64_t sub_243F720D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2440D3890();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_243F721D4, 0, 0);
}

uint64_t sub_243F721D4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2440D38A0();
  v5 = sub_243F73FAC(&qword_27EDC0528, MEMORY[0x277D85928]);
  sub_2440D3A60();
  sub_243F73FAC(&unk_27EDC0530, MEMORY[0x277D858F8]);
  sub_2440D38B0();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_243F72364;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_243F72364()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_243F72520, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_243F72520()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243F7258C()
{
  MEMORY[0x245D58620](v0 + 16);

  return swift_deallocObject();
}

void sub_243F725C4(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_speakingState;
    swift_beginAccess();
    v3[v4] = a1;
    if (a1 == 3)
    {
      sub_243F6E428(0);
    }

    else if (a1 == 2)
    {
      v5 = OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_safeguardTask;
      if (*&v3[OBJC_IVAR____TtC19ContactlessReaderUI18VoiceSynthAnnounce_safeguardTask])
      {

        sub_2440D33B0();
      }

      *&v3[v5] = 0;
    }
  }
}

unint64_t sub_243F726DC(uint64_t a1)
{
  v2 = sub_2440D3B10();

  return sub_243F72764(a1, v2);
}

unint64_t sub_243F72720(uint64_t a1)
{
  v2 = sub_2440D37D0();

  return sub_243F727D0(a1, v2);
}

unint64_t sub_243F72764(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_243F727D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_243F73C3C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D576E0](v9, a1);
      sub_243F73BE8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_243F72898(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC04F8);
  result = sub_2440D3900();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_2440D3B10();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_243F72B0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2440D3730() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_2440D3B10();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_243F72C7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_243F726DC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_243F72898(v16, a4 & 1);
      result = sub_243F726DC(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_2440D3A50();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_243F72DDC();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

void *sub_243F72DDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC04F8);
  v2 = *v0;
  v3 = sub_2440D38F0();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

uint64_t sub_243F72F40(void *a1)
{
  v22 = a1;
  v2 = sub_2440D2C80();
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2440D2CA0();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2440D2CD0();
  v24 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  sub_243F5DB84();
  v15 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v23 = *(v9 + 8);
  v23(v12, v8);
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = v1;
  *(v16 + 24) = v17;
  aBlock[4] = sub_243F73D68;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_154;
  v18 = _Block_copy(aBlock);
  v19 = v1;
  v20 = v17;

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F73FAC(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F73DE0();
  sub_2440D3710();
  MEMORY[0x245D57400](v14, v7, v4, v18);
  _Block_release(v18);

  (*(v27 + 8))(v4, v2);
  (*(v25 + 8))(v7, v26);
  return (v23)(v14, v24);
}

unint64_t sub_243F732EC()
{
  result = qword_27EDC0448;
  if (!qword_27EDC0448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0448);
  }

  return result;
}

unint64_t sub_243F73370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC04F8);
  v3 = sub_2440D3910();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_243F726DC(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_243F726DC(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_243F734CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_243F734E0()
{
  result = qword_27EDC0480;
  if (!qword_27EDC0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0480);
  }

  return result;
}

void sub_243F73560()
{
  sub_2440D08A0();
  if (v0 <= 0x3F)
  {
    sub_243F73670();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_243F73670()
{
  if (!qword_27EDC0488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0400);
    v0 = sub_2440D3630();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC0488);
    }
  }
}

void sub_243F736EC()
{
  sub_243F73670();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_243F737DC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243F5F610;

  return sub_243F7054C(v0);
}

uint64_t sub_243F7386C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243F5DE2C;

  return sub_243F69C9C(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_243F73918(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_243F73980()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243F5F610;

  return sub_243F6E144(v0);
}

uint64_t sub_243F73A10()
{
  v1 = sub_2440D0340();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_243F73AE8()
{
  v2 = *(sub_2440D0340() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_243F5F610;

  return sub_243F7181C(v5, v6, v7, v0 + v3, v4);
}

uint64_t sub_243F73C98()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_243F5F610;

  return sub_243F6FD70(v0);
}

uint64_t sub_243F73D28()
{

  return swift_deallocObject();
}

uint64_t sub_243F73D68()
{
  v1 = [*(v0 + 24) speechString];
  v2 = sub_2440D2FB0();
  v4 = v3;

  v5 = MEMORY[0x245D57080](v2, v4);

  return sub_243F6EF90(v5, 3);
}

unint64_t sub_243F73DE0()
{
  result = qword_27EDC0520;
  if (!qword_27EDC0520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EDC6170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0520);
  }

  return result;
}

uint64_t sub_243F73E44()
{

  return swift_deallocObject();
}

uint64_t sub_243F73E8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_243F5F610;

  return sub_243F6D560(v2, v3, v4);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_243F73F74()
{

  return swift_deallocObject();
}

uint64_t sub_243F73FAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WalletSuppressor.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t WalletSuppressor.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

id *WalletSuppressor.deinit()
{
  (*(*v0 + 17))();

  return v0;
}

uint64_t WalletSuppressor.__deallocating_deinit()
{
  (*(*v0 + 17))();

  return swift_deallocClassInstance();
}

uint64_t sub_243F74138()
{
  v1[20] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F741EC, 0, 0);
}

uint64_t sub_243F741EC()
{
  v1 = objc_opt_self();
  v2 = sub_2440D2F80();
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_243F74348;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_243F749C0;
  v0[13] = &block_descriptor_3;
  v0[14] = v3;
  [v1 acquireAssertionOfType:0 withReason:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_243F74348()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_243F7474C;
  }

  else
  {
    v2 = sub_243F74458;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243F74458()
{
  v1 = *(v0 + 144);

  v2 = sub_243F4E038();
  if (v1)
  {
    v3 = *(v0 + 184);
    sub_243F5F574(v2, v3, &qword_27EDC0A50);
    v4 = sub_2440D11E0();
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_243F5EED4(*(v0 + 184), &qword_27EDC0A50);
    }

    else
    {
      v9 = sub_2440D11C0();
      v10 = sub_2440D3490();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_243F48000, v9, v10, "WalletSuppressor - PassKit suppress success", v11, 2u);
        MEMORY[0x245D58570](v11, -1, -1);
      }

      v12 = *(v0 + 184);

      (*(v5 + 8))(v12, v4);
    }

    v13 = *(v0 + 160);
    v14 = *(v13 + 16);
    *(v13 + 16) = v1;
  }

  else
  {
    v6 = *(v0 + 176);
    sub_243F5F574(v2, v6, &qword_27EDC0A50);
    v7 = sub_2440D11E0();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_243F5EED4(*(v0 + 176), &qword_27EDC0A50);
    }

    else
    {
      v15 = sub_2440D11C0();
      v16 = sub_2440D3470();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_243F48000, v15, v16, "WalletSuppressor - could not acquire assertion for NFC detect suppression", v17, 2u);
        MEMORY[0x245D58570](v17, -1, -1);
      }

      v18 = *(v0 + 176);

      (*(v8 + 8))(v18, v7);
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_243F7474C()
{
  v23 = v0;
  v1 = v0[24];
  v2 = v0[21];
  swift_willThrow();

  v3 = sub_243F4E038();
  sub_243F5F574(v3, v2, &qword_27EDC0A50);
  v4 = sub_2440D11E0();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v0[25];
  v8 = v0[21];
  if (v6 == 1)
  {

    sub_243F5EED4(v8, &qword_27EDC0A50);
  }

  else
  {
    v9 = v7;
    v10 = sub_2440D11C0();
    v11 = sub_2440D3470();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[25];
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      v0[19] = v13;
      v16 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38F0);
      v17 = sub_2440D3040();
      v19 = sub_243F4E6F8(v17, v18, &v22);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_243F48000, v10, v11, "WalletSuppressor - error requesting NFC detect suppression: [ %s ]", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x245D58570](v15, -1, -1);
      MEMORY[0x245D58570](v14, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v0[21], v4);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_243F749C0(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38F0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_243F74A90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  if ([objc_opt_self() isPassLibraryAvailable])
  {
    v7 = sub_2440D3390();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v0;

    sub_243F54830(0, 0, v6, &unk_2440D70C8, v8);
  }

  else
  {
    v10 = sub_243F4E038();
    sub_243F5F574(v10, v3, &qword_27EDC0A50);
    v11 = sub_2440D11E0();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v3, 1, v11) == 1)
    {
      return sub_243F5EED4(v3, &qword_27EDC0A50);
    }

    else
    {
      v13 = sub_2440D11C0();
      v14 = sub_2440D3490();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_243F48000, v13, v14, "WalletSuppressor - library not available", v15, 2u);
        MEMORY[0x245D58570](v15, -1, -1);
      }

      return (*(v12 + 8))(v3, v11);
    }
  }
}

uint64_t sub_243F74D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  *(v4 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F74DC4, 0, 0);
}

uint64_t sub_243F74DC4()
{
  v1 = *(v0[18] + 16);
  v0[20] = v1;
  if (v1)
  {
    v2 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_243F74F78;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05A8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_243F7538C;
    v0[13] = &block_descriptor_19;
    v0[14] = v3;
    [v2 isAssertionValid:v1 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[21] = v4;
    *v4 = v0;
    v4[1] = sub_243F7527C;

    return sub_243F74138();
  }
}

uint64_t sub_243F74F78()
{

  return MEMORY[0x2822009F8](sub_243F75058, 0, 0);
}

uint64_t sub_243F75058()
{
  if (*(v0 + 176) == 1)
  {
    v1 = *(v0 + 152);
    v2 = sub_243F4E038();
    sub_243F5F574(v2, v1, &qword_27EDC0A50);
    v3 = sub_2440D11E0();
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v1, 1, v3) == 1)
    {
      v5 = *(v0 + 152);

      sub_243F5EED4(v5, &qword_27EDC0A50);
    }

    else
    {
      v8 = sub_2440D11C0();
      v9 = sub_2440D3490();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_243F48000, v8, v9, "WalletSuppressor - PassKit suppress success", v10, 2u);
        MEMORY[0x245D58570](v10, -1, -1);
      }

      v11 = *(v0 + 152);
      v12 = *(v0 + 160);

      (*(v4 + 8))(v11, v3);
    }

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {

    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_243F7527C;

    return sub_243F74138();
  }
}

uint64_t sub_243F7527C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243F7538C(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_243F753E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = *(v0 + 16);
  if (v5)
  {
    *(v0 + 16) = 0;
    [v5 invalidate];
    v6 = sub_243F4E038();
    sub_243F5F574(v6, v4, &qword_27EDC0A50);
    v7 = sub_2440D11E0();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {

      return sub_243F5EED4(v4, &qword_27EDC0A50);
    }

    else
    {
      v9 = sub_2440D11C0();
      v10 = sub_2440D3490();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_243F48000, v9, v10, "WalletSuppressor - ending NFC detect suppression", v11, 2u);
        MEMORY[0x245D58570](v11, -1, -1);
      }

      return (*(v8 + 8))(v4, v7);
    }
  }

  return result;
}

uint64_t sub_243F75634()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_243F75674()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5DE2C;

  return sub_243F74D28(v3, v4, v5, v2);
}

unint64_t sub_243F757E0()
{
  result = qword_27EDC05D0;
  if (!qword_27EDC05D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDC05D0);
  }

  return result;
}

id sub_243F7582C()
{
  v0 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v0 init];
}

uint64_t sub_243F75864@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v94 = type metadata accessor for MerchantDetailsView(0);
  v82 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = v3;
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v77 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05F8);
  MEMORY[0x28223BE20](v8);
  v10 = &v77 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0600);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v12 = &v77 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0608);
  MEMORY[0x28223BE20](v78);
  v77 = &v77 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0610);
  MEMORY[0x28223BE20](v84);
  v79 = &v77 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0618);
  MEMORY[0x28223BE20](v86);
  v80 = &v77 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0620);
  MEMORY[0x28223BE20](v91);
  v92 = &v77 - v16;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0628);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v77 - v17;
  *v7 = sub_2440D1C20();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0630);
  sub_243F76384(v2, &v7[*(v18 + 44)]);
  sub_24407115C();
  sub_2440D2B00();
  sub_2440D18E0();
  sub_243F681C8(v7, v10, &qword_27EDC05F0);
  v19 = &v10[*(v8 + 36)];
  v20 = v105;
  *(v19 + 4) = v104;
  *(v19 + 5) = v20;
  *(v19 + 6) = v106;
  v21 = v101;
  *v19 = v100;
  *(v19 + 1) = v21;
  v22 = v103;
  *(v19 + 2) = v102;
  *(v19 + 3) = v22;
  sub_243F7B47C(v2, v4, type metadata accessor for MerchantDetailsView);
  v23 = v4;
  v24 = *(v82 + 80);
  v25 = (v24 + 16) & ~v24;
  v26 = swift_allocObject();
  sub_243F7878C(v23, v26 + v25);
  sub_243F788FC();
  sub_2440D23D0();

  sub_243F5EED4(v10, &qword_27EDC05F8);
  sub_243F7B47C(v2, v23, type metadata accessor for MerchantDetailsView);
  v81 = v24;
  v27 = swift_allocObject();
  v82 = v25;
  sub_243F7878C(v23, v27 + v25);
  v28 = v77;
  (*(v83 + 32))(v77, v12, v85);
  v29 = &v28[*(v78 + 36)];
  *v29 = sub_243F78BCC;
  v29[1] = v27;
  v29[2] = 0;
  v29[3] = 0;
  v30 = v94;
  v31 = (v2 + *(v94 + 44));
  v32 = *v31;
  v33 = v31[1];
  v95 = v32;
  v96 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  v35 = v99;
  sub_2440D2C40();
  v37 = v36;
  v39 = v38;
  v40 = v28;
  v41 = v79;
  sub_243F681C8(v40, v79, &qword_27EDC0608);
  v42 = (v41 + *(v84 + 36));
  *v42 = v35;
  v42[1] = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  v43 = (v2 + *(v30 + 40));
  v44 = *v43;
  v45 = v43[1];
  v95 = v44;
  v96 = v45;
  v85 = v34;
  sub_2440D2820();
  v46 = v99 * 0.0174532925;
  sub_2440D2C40();
  v48 = v47;
  v50 = v49;
  v51 = v41;
  v52 = v80;
  sub_243F681C8(v51, v80, &qword_27EDC0610);
  v53 = v52 + *(v86 + 9);
  *v53 = v46;
  *(v53 + 8) = v48;
  *(v53 + 16) = v50;
  v54 = sub_2440D2BE0();
  v55 = *(v2 + 24);
  v56 = *(v2 + 32);
  v95 = *(v2 + 16);
  v96 = v55;
  LOBYTE(v97) = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0198);
  MEMORY[0x245D56840](&v99, v57);
  LODWORD(v27) = (LOBYTE(v99) < 0xBuLL) & (0x447u >> SLOBYTE(v99));
  v58 = v92;
  sub_243F681C8(v52, v92, &qword_27EDC0618);
  v59 = v58 + *(v91 + 36);
  *v59 = v54;
  *(v59 + 8) = v27;
  v60 = v2;
  if (*v2)
  {
    v61 = *(**v2 + 136);

    LOBYTE(v61) = v61(v62);

    LOBYTE(v95) = v61 & 1;
    v86 = type metadata accessor for MerchantDetailsView;
    sub_243F7B47C(v60, v23, type metadata accessor for MerchantDetailsView);
    v63 = v82;
    v64 = swift_allocObject();
    sub_243F7878C(v23, v64 + v63);
    v65 = sub_243F790AC();
    v66 = sub_243F66EFC();
    v67 = v87;
    v68 = v91;
    v69 = v92;
    sub_2440D25E0();

    sub_243F5EED4(v69, &qword_27EDC0620);
    v70 = (v60 + *(v94 + 48));
    v71 = *v70;
    v72 = v70[1];
    v95 = v71;
    v96 = v72;
    sub_2440D2820();
    sub_243F7B47C(v60, v23, v86);
    v73 = swift_allocObject();
    sub_243F7878C(v23, v73 + v63);
    v95 = v68;
    v96 = &type metadata for PhoneOrientation;
    v97 = v65;
    v98 = v66;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v75 = v89;
    sub_2440CC638(&v99, sub_243F794E4, v73, v89, MEMORY[0x277D839F8], OpaqueTypeConformance2, v90);

    return (*(v88 + 8))(v67, v75);
  }

  else
  {
    type metadata accessor for FineRotationManager(0);
    sub_243F7C8F4(&qword_27EDC0188, type metadata accessor for FineRotationManager);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

uint64_t sub_243F76384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v3 = type metadata accessor for MerchantDetailsView(0);
  v101 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v102 = v4;
  v105 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2440D2C60();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2440D18B0();
  v6 = MEMORY[0x28223BE20](v108);
  v96 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v97 = (&v81 - v8);
  v104 = sub_2440D2A70();
  v103 = *(v104 - 8);
  v9 = MEMORY[0x28223BE20](v104);
  v84 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v81 - v11;
  v95 = sub_2440D2AC0();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0770);
  MEMORY[0x28223BE20](v14);
  v16 = &v81 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0778);
  MEMORY[0x28223BE20](v85);
  v18 = &v81 - v17;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0780);
  MEMORY[0x28223BE20](v86);
  v20 = &v81 - v19;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0788);
  MEMORY[0x28223BE20](v106);
  v107 = &v81 - v21;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0790);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v88 = &v81 - v22;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0798);
  MEMORY[0x28223BE20](v90);
  v89 = &v81 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC07A0);
  v110 = *(v24 - 8);
  v111 = v24;
  MEMORY[0x28223BE20](v24);
  v87 = &v81 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B8);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v81 - v27;
  v29 = sub_2440D0F20();
  v113 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v109 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 24);
  v32 = *(a1 + 32);
  *&v116 = *(a1 + 16);
  *(&v116 + 1) = v31;
  LOBYTE(v117) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0198);
  MEMORY[0x245D56840](&v114, v33);
  if (v114 > 0xAu || ((1 << v114) & 0x447) == 0)
  {
    return (*(v110 + 56))(v112, 1, 1, v111);
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B0);
  MEMORY[0x245D56840](v34);
  v35 = v113;
  if ((*(v113 + 48))(v28, 1, v29) == 1)
  {
    sub_243F5EED4(v28, &qword_27EDC05B8);
    return (*(v110 + 56))(v112, 1, 1, v111);
  }

  v83 = v20;
  v36 = v109;
  (*(v35 + 32))(v109, v28, v29);
  v37 = a1 + *(v3 + 28);
  v38 = *(v37 + 8);
  *&v116 = *v37;
  *(&v116 + 1) = v38;
  v117 = *(v37 + 16);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05C0);
  v40 = v35;
  MEMORY[0x245D56840](&v114, v39);
  v41 = v115;
  if (!v115)
  {
    (*(v40 + 8))(v36, v29);
    return (*(v110 + 56))(v112, 1, 1, v111);
  }

  v81 = v29;
  v82 = v12;
  v42 = v114;
  *v16 = sub_2440D1C20();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC07A8);
  sub_243F77168(a1, v36, v42, v41, &v16[*(v43 + 44)]);

  *&v16[*(v14 + 36)] = *sub_243F99F1C();

  sub_2440D2B00();
  sub_2440D18E0();
  sub_243F681C8(v16, v18, &qword_27EDC0770);
  v44 = &v18[*(v85 + 36)];
  v45 = v121;
  *(v44 + 4) = v120;
  *(v44 + 5) = v45;
  *(v44 + 6) = v122;
  v46 = v117;
  *v44 = v116;
  *(v44 + 1) = v46;
  v47 = v119;
  *(v44 + 2) = v118;
  *(v44 + 3) = v47;
  v48 = sub_2440D20B0();
  v49 = v83;
  sub_243F681C8(v18, v83, &qword_27EDC0778);
  v50 = v49 + *(v86 + 36);
  *v50 = v48;
  *(v50 + 8) = xmmword_2440D7140;
  *(v50 + 24) = xmmword_2440D7150;
  *(v50 + 40) = 0;
  v51 = v107;
  v52 = &v107[*(v106 + 36)];
  v53 = *(v108 + 20);
  v54 = *MEMORY[0x277CE0118];
  v55 = sub_2440D1B90();
  v56 = *(*(v55 - 8) + 104);
  v56(&v52->i8[v53], v54, v55);
  *v52 = vdupq_n_s64(0x4043000000000000uLL);
  *(v52->i16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC07B0) + 36)) = 256;
  sub_243F681C8(v49, v51, &qword_27EDC0780);
  if (*(a1 + *(v3 + 36)))
  {
    v57 = v84;
    sub_2440D2A60();
    v58 = v82;
    sub_2440D2A50();
    v59 = v103;
    v60 = v57;
    v61 = v104;
    (*(v103 + 8))(v60, v104);
    v62 = v105;
  }

  else
  {
    v58 = v82;
    sub_2440D2A60();
    v62 = v105;
    v61 = v104;
    v59 = v103;
  }

  v64 = v93;
  sub_2440D2A90();
  (*(v59 + 8))(v58, v61);
  v65 = v97;
  v56(&v97->i8[*(v108 + 20)], v54, v55);
  *v65 = vdupq_n_s64(0x4043000000000000uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC07B8);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_2440D5CF0;
  v67 = MEMORY[0x277CDFC08];
  sub_243F7B47C(v65, v96, MEMORY[0x277CDFC08]);
  sub_243F7C8F4(&qword_27EDC07C0, MEMORY[0x277CDFC08]);
  *(v66 + 32) = sub_2440D29F0();
  v68 = v98;
  sub_2440D2C50();
  sub_243F7B4E4();
  v69 = v88;
  v70 = v107;
  sub_2440D2400();
  (*(v99 + 8))(v68, v100);
  sub_243F7B798(v65, v67);
  (*(v94 + 8))(v64, v95);
  sub_243F5EED4(v70, &qword_27EDC0788);
  sub_243F7B47C(a1, v62, type metadata accessor for MerchantDetailsView);
  v71 = (*(v101 + 80) + 16) & ~*(v101 + 80);
  v72 = swift_allocObject();
  sub_243F7878C(v62, v72 + v71);
  v73 = sub_2440D2B00();
  v75 = v74;
  v76 = v89;
  (*(v91 + 32))(v89, v69, v92);
  v77 = (v76 + *(v90 + 36));
  *v77 = sub_243F7B7F8;
  v77[1] = v72;
  v77[2] = v73;
  v77[3] = v75;
  sub_243F7B878();
  v78 = v87;
  sub_2440D2480();
  sub_243F5EED4(v76, &qword_27EDC0798);
  v79 = v78;
  v80 = v112;
  sub_243F681C8(v79, v112, &qword_27EDC07A0);
  (*(v110 + 56))(v80, 0, 1, v111);
  return (*(v113 + 8))(v109, v81);
}

uint64_t sub_243F77168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v196 = a3;
  *(&v196 + 1) = a4;
  v191 = a2;
  v200 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0818);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v199 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v198 = &v172 - v9;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0820);
  MEMORY[0x28223BE20](v175);
  v174 = &v172 - v10;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0828);
  MEMORY[0x28223BE20](v195);
  v176 = &v172 - v11;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0830);
  MEMORY[0x28223BE20](v192);
  v194 = &v172 - v12;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0838);
  MEMORY[0x28223BE20](v193);
  v173 = &v172 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0840);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v197 = &v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v203 = &v172 - v17;
  v18 = sub_2440D1B10();
  v189 = *(v18 - 8);
  *&v190 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v188 = &v172 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v186 = &v172 - v21;
  v22 = sub_2440D2AC0();
  v183 = *(v22 - 8);
  v184 = v22;
  MEMORY[0x28223BE20](v22);
  v182 = &v172 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2440D18B0() - 8;
  MEMORY[0x28223BE20](v24);
  v181 = &v172 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2440D2770();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v172 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0848);
  MEMORY[0x28223BE20](v185);
  v31 = &v172 - v30;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0850);
  v32 = MEMORY[0x28223BE20](v187);
  v202 = &v172 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v201 = &v172 - v34;
  v35 = type metadata accessor for MerchantDetailsView(0);
  v36 = *(v35 + 52);
  v37 = v35;
  v179 = v35;
  v180 = a1;
  v38 = (a1 + v36);
  v40 = *v38;
  v39 = v38[1];
  *&v210 = v40;
  *(&v210 + 1) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05D8);
  sub_2440D2820();
  sub_2440D2750();
  (*(v27 + 104))(v29, *MEMORY[0x277CE0FE0], v26);
  v178 = sub_2440D2790();

  (*(v27 + 8))(v29, v26);
  v41 = (a1 + *(v37 + 60));
  v43 = *v41;
  v42 = v41[1];
  *&v210 = v43;
  *(&v210 + 1) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05E8);
  sub_2440D2820();
  v177 = v204;
  LOBYTE(a1) = sub_2440D20B0();
  v44 = *sub_2440707CC();
  v45 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0858) + 36)];
  v46 = v24;
  v47 = *(v24 + 28);
  v48 = *MEMORY[0x277CE0118];
  v49 = sub_2440D1B90();
  v50 = *(*(v49 - 8) + 104);
  v50(&v45[v47], v48, v49);
  *v45 = v44;
  *(v45 + 1) = v44;
  *&v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC07B0) + 36)] = 256;
  *v31 = v178;
  *(v31 + 1) = 0;
  *(v31 + 8) = 1;
  *(v31 + 3) = v177;
  v31[32] = a1;
  v51 = v181;
  v50(&v181[*(v46 + 28)], v48, v49);
  *v51 = v44;
  v51[1] = v44;
  v52 = v51;
  v53 = v182;
  sub_2440D2AB0();
  sub_2440D14C0();
  v54 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0860) + 36)];
  v55 = MEMORY[0x277CDFC08];
  sub_243F7B47C(v52, v54, MEMORY[0x277CDFC08]);
  v56 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0868) + 36);
  v57 = v217[4];
  *v56 = v217[3];
  *(v56 + 16) = v57;
  *(v56 + 32) = v218;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0870);
  v60 = v183;
  v59 = v184;
  (*(v183 + 16))(v54 + *(v58 + 52), v53, v184);
  *(v54 + *(v58 + 56)) = 256;
  v61 = sub_2440D2B00();
  v63 = v62;
  (*(v60 + 8))(v53, v59);
  sub_243F7B798(v52, v55);
  v64 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0878) + 36));
  *v64 = v61;
  v64[1] = v63;
  v65 = sub_2440D2B00();
  v67 = v66;
  v68 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0880) + 36));
  *v68 = v65;
  v68[1] = v67;
  sub_2440D2B00();
  sub_2440D1560();
  v69 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0888) + 36)];
  v70 = v220;
  *v69 = v219;
  *(v69 + 1) = v70;
  *(v69 + 2) = v221;
  v71 = v186;
  sub_2440D1B00();
  v72 = v189;
  v73 = v190;
  (*(v189 + 16))(v188, v71, v190);
  sub_243F7C8F4(&qword_27EDC0148, MEMORY[0x277CE0068]);
  v74 = v73;
  v75 = sub_2440D1610();
  (*(v72 + 8))(v71, v74);
  *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0890) + 36)] = v75;
  LOBYTE(v75) = sub_2440D20D0();
  sub_2440D13D0();
  v76 = &v31[*(v185 + 36)];
  *v76 = v75;
  *(v76 + 1) = v77;
  *(v76 + 2) = v78;
  *(v76 + 3) = v79;
  *(v76 + 4) = v80;
  v76[40] = 0;
  sub_243F7BD40();
  v81 = v202;
  sub_2440D2480();
  sub_243F5EED4(v31, &qword_27EDC0848);
  sub_2440D1800();
  sub_243F5EED4(v81, &qword_27EDC0850);
  v82 = sub_2440D0EF0();
  v84 = v83;

  v85 = HIBYTE(v84) & 0xF;
  if ((v84 & 0x2000000000000000) == 0)
  {
    v85 = v82 & 0xFFFFFFFFFFFFLL;
  }

  if (v85)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0);
    v86 = swift_allocObject();
    v190 = xmmword_2440D5CF0;
    *(v86 + 16) = xmmword_2440D5CF0;
    v87 = sub_2440D0EF0();
    v89 = v88;
    v90 = MEMORY[0x277D837D0];
    *(v86 + 56) = MEMORY[0x277D837D0];
    v91 = sub_243F644C8();
    *(v86 + 64) = v91;
    *(v86 + 32) = v87;
    *(v86 + 40) = v89;
    v92 = sub_244057E7C(0, v86, 0xD000000000000013);
    v94 = v93;

    v95 = swift_allocObject();
    *(v95 + 16) = v190;
    v96 = sub_2440D0EF0();
    *(v95 + 56) = v90;
    *(v95 + 64) = v91;
    *(v95 + 32) = v96;
    *(v95 + 40) = v97;
    v98 = sub_244057E7C(0, v95, 0xD000000000000018);
    v100 = v99;

    sub_243F4E2F4();
    sub_243FAE940(v92, v94, v98, v100, v217);
    v101 = sub_2440D21E0();
    KeyPath = swift_getKeyPath();
    v204 = v217[0];
    v205 = v217[1];
    v206 = v217[2];
    *&v207 = KeyPath;
    *(&v207 + 1) = v101;
    sub_2440D21B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC08D8);
    sub_243F7C1F0();
    v103 = v174;
    sub_2440D2370();
    v210 = v204;
    v211 = v205;
    v212 = v206;
    v213 = v207;
    sub_243F5EED4(&v210, &qword_27EDC08D8);
    v104 = sub_2440D26C0();
    v105 = swift_getKeyPath();
    v106 = (v103 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC08F0) + 36));
    *v106 = v105;
    v106[1] = v104;
    v107 = swift_getKeyPath();
    v108 = (v103 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC08F8) + 36));
    *v108 = v107;
    v108[1] = 0x3FE0000000000000;
    v109 = swift_getKeyPath();
    v110 = v103 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0900) + 36);
    *v110 = v109;
    *(v110 + 8) = 1;
    v111 = swift_getKeyPath();
    v112 = v103 + *(v175 + 36);
    *v112 = v111;
    *(v112 + 8) = 3;
    *(v112 + 16) = 0;
    sub_243F7C2FC();
    v113 = v176;
    sub_2440D24E0();
    sub_243F5EED4(v103, &qword_27EDC0820);
    sub_243F5F574(v113, v194, &qword_27EDC0828);
    swift_storeEnumTagMultiPayload();
    sub_243F7C618(&qword_27EDC0948, &qword_27EDC0838, &unk_2440D74D0, sub_243F7C6CC);
    sub_243F7C618(&qword_27EDC0980, &qword_27EDC0828, &unk_2440D74C0, sub_243F7C2FC);
    sub_2440D1D20();
    sub_243F5EED4(v113, &qword_27EDC0828);
  }

  else
  {
    sub_24401FBC0();
    v114 = sub_24401FBD4();
    v116 = v115;
    v118 = v117;
    sub_2440D21E0();
    v119 = sub_2440D22E0();
    v121 = v120;
    v123 = v122;

    sub_243F62C68(v114, v116, v118 & 1);

    sub_2440D21B0();
    v124 = sub_2440D22A0();
    v126 = v125;
    v128 = v127;
    sub_243F62C68(v119, v121, v123 & 1);

    sub_2440D26C0();
    v129 = sub_2440D22C0();
    v131 = v130;
    v133 = v132;
    v135 = v134;

    sub_243F62C68(v124, v126, v128 & 1);

    v136 = swift_getKeyPath();
    v137 = swift_getKeyPath();
    LOBYTE(v210) = v133 & 1;
    v138 = swift_getKeyPath();
    LOBYTE(v217[0]) = 0;
    *&v204 = v129;
    *(&v204 + 1) = v131;
    LOBYTE(v205) = v133 & 1;
    *(&v205 + 1) = v135;
    *&v206 = v136;
    *(&v206 + 1) = 0x3FE0000000000000;
    *&v207 = v137;
    BYTE8(v207) = 1;
    *&v208 = v138;
    *(&v208 + 1) = 3;
    v209 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0958);
    sub_243F7C6CC();
    v139 = v173;
    sub_2440D24E0();
    v212 = v206;
    v213 = v207;
    v214 = v208;
    v215 = v209;
    v210 = v204;
    v211 = v205;
    sub_243F5EED4(&v210, &qword_27EDC0958);
    sub_243F5F574(v139, v194, &qword_27EDC0838);
    swift_storeEnumTagMultiPayload();
    sub_243F7C618(&qword_27EDC0948, &qword_27EDC0838, &unk_2440D74D0, sub_243F7C6CC);
    sub_243F7C618(&qword_27EDC0980, &qword_27EDC0828, &unk_2440D74C0, sub_243F7C2FC);
    sub_2440D1D20();
    sub_243F5EED4(v139, &qword_27EDC0838);
  }

  v210 = v196;
  sub_243F4EF64();

  v140 = sub_2440D2310();
  v142 = v141;
  v144 = v143;
  sub_2440D26C0();
  v145 = sub_2440D22C0();
  v147 = v146;
  v149 = v148;

  sub_243F62C68(v140, v142, v144 & 1);

  sub_2440D2130();
  v150 = sub_2440D22E0();
  v152 = v151;
  v154 = v153;

  sub_243F62C68(v145, v147, v149 & 1);

  sub_2440D2180();
  v155 = sub_2440D22A0();
  v157 = v156;
  LOBYTE(v147) = v158;
  v160 = v159;
  sub_243F62C68(v150, v152, v154 & 1);

  v161 = swift_getKeyPath();
  v162 = swift_getKeyPath();
  LOBYTE(v217[0]) = v147 & 1;
  v216 = 0;
  *&v204 = v155;
  *(&v204 + 1) = v157;
  LOBYTE(v205) = v147 & 1;
  *(&v205 + 1) = v160;
  *&v206 = v161;
  *(&v206 + 1) = 1;
  LOBYTE(v207) = 0;
  *(&v207 + 1) = v162;
  *&v208 = 0x3FD3333333333333;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0988);
  sub_243F7C93C();
  v163 = v198;
  sub_2440D24E0();
  v212 = v206;
  v213 = v207;
  *&v214 = v208;
  v210 = v204;
  v211 = v205;
  sub_243F5EED4(&v210, &qword_27EDC0988);
  v165 = v201;
  v164 = v202;
  sub_243F5F574(v201, v202, &qword_27EDC0850);
  v166 = v203;
  v167 = v197;
  sub_243F5F574(v203, v197, &qword_27EDC0840);
  v168 = v199;
  sub_243F5F574(v163, v199, &qword_27EDC0818);
  v169 = v200;
  sub_243F5F574(v164, v200, &qword_27EDC0850);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC09A8);
  sub_243F5F574(v167, v169 + *(v170 + 48), &qword_27EDC0840);
  sub_243F5F574(v168, v169 + *(v170 + 64), &qword_27EDC0818);
  sub_243F5EED4(v163, &qword_27EDC0818);
  sub_243F5EED4(v166, &qword_27EDC0840);
  sub_243F5EED4(v165, &qword_27EDC0850);
  sub_243F5EED4(v168, &qword_27EDC0818);
  sub_243F5EED4(v167, &qword_27EDC0840);
  return sub_243F5EED4(v164, &qword_27EDC0850);
}

uint64_t sub_243F7858C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a2;
  v5 = type metadata accessor for MerchantDetailsView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440D1670();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_2440D2690();
  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  sub_243F7B47C(v18, v8, type metadata accessor for MerchantDetailsView);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v13, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  result = sub_243F7878C(v8, v15 + v14);
  *a3 = v12;
  a3[1] = sub_243F7BC10;
  a3[2] = v15;
  a3[3] = 0;
  a3[4] = 0;
  return result;
}

uint64_t sub_243F7878C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantDetailsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F787F0()
{
  v1 = *(type metadata accessor for MerchantDetailsView(0) - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  if (v2)
  {
    v3 = *(*v2 + 272);

    v3(v4);
  }

  else
  {
    type metadata accessor for FineRotationManager(0);
    sub_243F7C8F4(&qword_27EDC0188, type metadata accessor for FineRotationManager);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

unint64_t sub_243F788FC()
{
  result = qword_27EDC0638;
  if (!qword_27EDC0638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC05F8);
    sub_243F5DD50(&qword_27EDC0640, &qword_27EDC05F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0638);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for MerchantDetailsView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 24);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B0) + 32);
  v5 = sub_2440D0F20();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

void sub_243F78C28()
{
  v1 = v0;
  v2 = sub_2440D0F20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for MerchantDetailsView(0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B0);
  MEMORY[0x245D56840](v10);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_243F5EED4(v8, &qword_27EDC05B8);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_243F5EED4(v8, &qword_27EDC05B8);
    v11 = sub_2440D0F10();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    if ((v13 & 0x2000000000000000) != 0)
    {
      type metadata accessor for MerchantLogo();
      v22 = sub_243F4E2E4();
      v23 = (*(*v22 + 88))(v11);
      v25 = v24;
      v27 = v26;

      v28 = (v0 + v9[13]);
      v30 = *v28;
      v29 = v28[1];
      v39 = v30;
      v40 = v29;
      v38 = v23;
      v31 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05D8);
      sub_2440D2830();
      v32 = (v0 + v9[14]);
      v33 = *v32;
      v34 = *(v32 + 1);
      LOBYTE(v39) = v33;
      v40 = v34;
      LOBYTE(v38) = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05E0);
      sub_2440D2830();
      v35 = (v0 + v9[15]);
      v36 = v35[1];
      v39 = *v35;
      v40 = v36;
      v38 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05E8);
      sub_2440D2830();
    }

    else
    {
      v14 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v15 = sub_2440D0670();
      v16 = [v14 initWithData_];

      if (!v16)
      {
        v16 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      }

      v17 = (v1 + v9[13]);
      v18 = v17[1];
      v39 = *v17;
      v19 = v39;
      v40 = v18;
      v38 = v16;

      v20 = v16;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05D8);
      sub_2440D2830();
      sub_243F79544(v11, v13);
    }
  }
}

uint64_t sub_243F78FFC()
{
  type metadata accessor for MerchantDetailsView(0);
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();
}

unint64_t sub_243F790AC()
{
  result = qword_27EDC0648;
  if (!qword_27EDC0648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0620);
    sub_243F79164();
    sub_243F5DD50(&qword_27EDC0218, &qword_27EDC0220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0648);
  }

  return result;
}

unint64_t sub_243F79164()
{
  result = qword_27EDC0650;
  if (!qword_27EDC0650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0618);
    sub_243F791F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0650);
  }

  return result;
}

unint64_t sub_243F791F0()
{
  result = qword_27EDC0658;
  if (!qword_27EDC0658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0610);
    sub_243F7927C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0658);
  }

  return result;
}

unint64_t sub_243F7927C()
{
  result = qword_27EDC0660;
  if (!qword_27EDC0660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC05F8);
    sub_243F788FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0660);
  }

  return result;
}

uint64_t sub_243F79344(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(**a1 + 136);

    LOBYTE(v1) = v1(v2);

    sub_243F7CACC(v1 & 1, 1);
    type metadata accessor for MerchantDetailsView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
    sub_2440D2830();
    sub_2440709C4();
    v3 = sub_2440D2B80();
    MEMORY[0x28223BE20](v3);
    sub_2440D16E0();
  }

  else
  {
    type metadata accessor for FineRotationManager(0);
    sub_243F7C8F4(&qword_27EDC0188, type metadata accessor for FineRotationManager);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

uint64_t sub_243F794E4()
{
  v1 = *(type metadata accessor for MerchantDetailsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_243F79344(v2);
}

uint64_t sub_243F79544(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) == 0)
  {
    return sub_243F5D81C(a1, a2);
  }

  return a1;
}

uint64_t sub_243F79554()
{
  type metadata accessor for FineRotationManager(0);
  sub_243F7C8F4(&qword_27EDC0188, type metadata accessor for FineRotationManager);

  return sub_2440D1930();
}

void sub_243F795D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v22 = type metadata accessor for MerchantDetailsView(0);
  sub_243F797F0(a6, a9 + v22[6]);
  v23 = (a9 + v22[7]);
  *v23 = a7;
  v23[1] = a8;
  v23[2] = a12;
  v23[3] = a13;
  v24 = a9 + v22[8];
  *v24 = a14;
  *(v24 + 8) = a15;
  *(v24 + 16) = a10;
  *(v24 + 24) = a11;
  *(a9 + v22[9]) = a16;
  v25 = (a9 + v22[10]);
  sub_2440D2810();
  *v25 = v32;
  v25[1] = v33;
  v26 = (a9 + v22[11]);
  sub_2440D2810();
  *v26 = v32;
  v26[1] = v33;
  v27 = (a9 + v22[12]);
  sub_2440D2810();
  *v27 = v32;
  v27[1] = v33;
  v28 = (a9 + v22[13]);
  sub_243F757E0();
  sub_2440D2810();
  *v28 = v32;
  v28[1] = v33;
  v29 = a9 + v22[14];
  sub_2440D2810();
  *v29 = v32;
  *(v29 + 8) = v33;
  v30 = (a9 + v22[15]);
  sub_2440D2810();
  *v30 = v32;
  v30[1] = v33;
  v31 = v22[16];
  *(a9 + v31) = sub_2440708D8();
}

uint64_t sub_243F797F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F79864@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2440D0F20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2440D0F00();
  sub_243F79AB8(v5, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0668) + 36);
  v7 = *MEMORY[0x277CDF3C0];
  v8 = sub_2440D1410();
  v9 = *(v8 - 8);
  (*(v9 + 104))(a1 + v6, v7, v8);
  (*(v9 + 56))(a1 + v6, 0, 1, v8);
  v10 = sub_2440D2670();
  LOBYTE(v8) = sub_2440D20B0();
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0670) + 36);
  *v11 = v10;
  *(v11 + 8) = v8;
  type metadata accessor for FineRotationManager(0);
  v12 = sub_243F7E4B0();
  sub_243F7C8F4(&qword_27EDC0188, type metadata accessor for FineRotationManager);
  v13 = sub_2440D12E0();
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0678) + 36));
  *v14 = v13;
  v14[1] = v12;
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_243F79AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v57 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0760) - 8;
  v3 = MEMORY[0x28223BE20](v50);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v54 = &v49 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v53 = &v49 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v52 = &v49 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v51 = &v49 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v49 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v58 = &v49 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v61 = &v49 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v62 = &v49 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v49 - v21;
  v23 = sub_2440D0F20();
  v24 = *(*(v23 - 8) + 16);
  v24(v22, a1, v23);
  v25 = type metadata accessor for MerchantIdentityView_Previews.MerchantIdentityViewPreviewContainer(0);
  v26 = *(v25 + 20);
  v27 = *MEMORY[0x277D43A30];
  v28 = sub_2440D0F40();
  v29 = *(*(v28 - 8) + 104);
  v60 = v22;
  v29(&v22[v26], v27, v28);
  v30 = v50;
  *&v22[*(v50 + 44)] = xmmword_2440D7160;
  v31 = v62;
  v32 = v57;
  v24(v62, v57, v23);
  v29((v31 + *(v25 + 20)), *MEMORY[0x277D43A38], v28);
  *(v31 + *(v30 + 44)) = xmmword_2440D7170;
  v33 = v61;
  v24(v61, v32, v23);
  v29((v33 + *(v25 + 20)), *MEMORY[0x277D43A10], v28);
  v34 = v30;
  v35 = (v33 + *(v30 + 44));
  *v35 = 0xD000000000000010;
  v35[1] = 0x80000002440E9700;
  v36 = v57;
  v37 = v58;
  v24(v58, v57, v23);
  v29((v37 + *(v25 + 20)), *MEMORY[0x277D43A18], v28);
  *(v37 + *(v34 + 44)) = xmmword_2440D7180;
  v38 = v59;
  v24(v59, v36, v23);
  v29((v38 + *(v25 + 20)), *MEMORY[0x277D43A20], v28);
  v39 = (v38 + *(v34 + 44));
  *v39 = 0xD000000000000010;
  v39[1] = 0x80000002440E9720;
  v40 = v51;
  sub_243F5F574(v60, v51, &qword_27EDC0760);
  v41 = v52;
  sub_243F5F574(v62, v52, &qword_27EDC0760);
  v42 = v53;
  sub_243F5F574(v61, v53, &qword_27EDC0760);
  v43 = v58;
  v44 = v54;
  sub_243F5F574(v58, v54, &qword_27EDC0760);
  v45 = v55;
  sub_243F5F574(v38, v55, &qword_27EDC0760);
  v46 = v56;
  sub_243F5F574(v40, v56, &qword_27EDC0760);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0768);
  sub_243F5F574(v41, v46 + v47[12], &qword_27EDC0760);
  sub_243F5F574(v42, v46 + v47[16], &qword_27EDC0760);
  sub_243F5F574(v44, v46 + v47[20], &qword_27EDC0760);
  sub_243F5F574(v45, v46 + v47[24], &qword_27EDC0760);
  sub_243F5EED4(v59, &qword_27EDC0760);
  sub_243F5EED4(v43, &qword_27EDC0760);
  sub_243F5EED4(v61, &qword_27EDC0760);
  sub_243F5EED4(v62, &qword_27EDC0760);
  sub_243F5EED4(v60, &qword_27EDC0760);
  sub_243F5EED4(v45, &qword_27EDC0760);
  sub_243F5EED4(v44, &qword_27EDC0760);
  sub_243F5EED4(v42, &qword_27EDC0760);
  sub_243F5EED4(v41, &qword_27EDC0760);
  return sub_243F5EED4(v40, &qword_27EDC0760);
}

uint64_t sub_243F7A09C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B8);
  MEMORY[0x28223BE20](v3);
  v5 = &v47 - v4;
  v6 = type metadata accessor for MerchantDetailsView(0);
  v7 = (v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  LOBYTE(v59) = 2;
  sub_2440D2970();
  v50 = v63;
  v51 = v62;
  v49 = v64;
  v13 = sub_2440D0F20();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v5, a1, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  sub_2440D2970();
  sub_243F5EED4(v5, &qword_27EDC05B8);
  v55 = sub_2440579C8(0, 0xD000000000000027);
  v56 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC06A0);
  sub_2440D2970();

  v47 = v59;
  v17 = v60;
  v16 = v61;
  v54 = *sub_24407115C();
  type metadata accessor for CGSize(0);
  sub_2440D2970();
  v19 = v55;
  v18 = v56;
  v20 = v57;
  v21 = v58;
  v48 = sub_2440D2670();
  type metadata accessor for FineRotationManager(0);
  sub_243F7C8F4(&qword_27EDC0188, type metadata accessor for FineRotationManager);
  v22 = sub_2440D1930();
  v24 = v23;
  v25 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  *v12 = v22;
  *(v12 + 1) = v24;
  v26 = v50;
  *(v12 + 2) = v51;
  *(v12 + 3) = v26;
  v12[32] = v49;
  v27 = &v12[v7[9]];
  *v27 = v47;
  *(v27 + 2) = v17;
  *(v27 + 3) = v16;
  v28 = &v12[v7[10]];
  *v28 = v19;
  *(v28 + 1) = v18;
  *(v28 + 2) = v20;
  *(v28 + 3) = v21;
  v12[v7[11]] = 0;
  v29 = &v12[v7[12]];
  v53 = 0;
  sub_2440D2810();
  v30 = *(&v54 + 1);
  *v29 = v54;
  *(v29 + 1) = v30;
  v31 = &v12[v7[13]];
  v53 = 0x3FF0000000000000;
  sub_2440D2810();
  v32 = *(&v54 + 1);
  *v31 = v54;
  *(v31 + 1) = v32;
  v33 = &v12[v7[14]];
  v53 = 0x3FF0000000000000;
  sub_2440D2810();
  v34 = *(&v54 + 1);
  *v33 = v54;
  *(v33 + 1) = v34;
  v35 = &v12[v7[15]];
  v53 = v25;
  sub_243F757E0();
  sub_2440D2810();
  v36 = *(&v54 + 1);
  *v35 = v54;
  *(v35 + 1) = v36;
  v37 = &v12[v7[16]];
  LOBYTE(v53) = 7;
  sub_2440D2810();
  v38 = *(&v54 + 1);
  *v37 = v54;
  *(v37 + 1) = v38;
  v39 = &v12[v7[17]];
  v53 = v48;
  sub_2440D2810();
  v40 = *(&v54 + 1);
  *v39 = v54;
  *(v39 + 1) = v40;
  v41 = v7[18];
  *&v12[v41] = sub_2440708D8();
  sub_243F7B47C(v12, v10, type metadata accessor for MerchantDetailsView);
  v42 = v52;
  *v52 = 0;
  *(v42 + 8) = 1;
  v43 = v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0758);
  sub_243F7B47C(v10, v43 + *(v44 + 48), type metadata accessor for MerchantDetailsView);
  v45 = v43 + *(v44 + 64);
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_243F7B798(v12, type metadata accessor for MerchantDetailsView);
  return sub_243F7B798(v10, type metadata accessor for MerchantDetailsView);
}

uint64_t sub_243F7A578@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2440D1C20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0680);
  return sub_243F7A09C(v1, (a1 + *(v3 + 44)));
}

unint64_t sub_243F7A608()
{
  result = qword_27EDC0688;
  if (!qword_27EDC0688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0688);
  }

  return result;
}

uint64_t sub_243F7A680(uint64_t a1)
{
  v2 = sub_243F7B36C();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_243F7A6CC(uint64_t a1)
{
  v2 = sub_243F7B36C();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_243F7A72C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243F7A7FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243F7A8AC()
{
  sub_243F67C94();
  if (v0 <= 0x3F)
  {
    sub_243F7ABEC(319, &qword_27EDC0268, &type metadata for IdentityUIState, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_243F7AB0C(319, &qword_27EDC0690, &qword_27EDC05B8);
      if (v2 <= 0x3F)
      {
        sub_243F7AB0C(319, &qword_27EDC0698, &qword_27EDC06A0);
        if (v3 <= 0x3F)
        {
          sub_243F7AB88(319, &qword_27EDC06A8, type metadata accessor for CGSize, MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            sub_243F7ABEC(319, &qword_27EDC0278, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_243F7AB88(319, &qword_27EDC06B0, sub_243F757E0, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_243F7ABEC(319, &qword_27EDC06B8, &type metadata for MerchantCategory, MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_243F7ABEC(319, &qword_27EDC06C0, MEMORY[0x277CE0F78], MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
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
}

void sub_243F7AB0C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_2440D2980();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_243F7AB88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_243F7ABEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_243F7AC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440D0F20();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2440D0F40();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_243F7AD64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2440D0F20();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2440D0F40();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_243F7AE60()
{
  result = sub_2440D0F20();
  if (v1 <= 0x3F)
  {
    result = sub_2440D0F40();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_243F7AEE8()
{
  result = qword_27EDC06C8;
  if (!qword_27EDC06C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC06D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0620);
    sub_243F790AC();
    sub_243F66EFC();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC0230, &qword_27EDC0238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC06C8);
  }

  return result;
}

unint64_t sub_243F7AFFC()
{
  result = qword_27EDC06D8;
  if (!qword_27EDC06D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0678);
    sub_243F7B0B4();
    sub_243F5DD50(&qword_27EDC0730, &qword_27EDC0738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC06D8);
  }

  return result;
}

unint64_t sub_243F7B0B4()
{
  result = qword_27EDC06E0;
  if (!qword_27EDC06E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0670);
    sub_243F7B16C();
    sub_243F5DD50(&qword_27EDC0720, &qword_27EDC0728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC06E0);
  }

  return result;
}

unint64_t sub_243F7B16C()
{
  result = qword_27EDC06E8;
  if (!qword_27EDC06E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0668);
    sub_243F7B224();
    sub_243F5DD50(&qword_27EDC0710, &qword_27EDC0718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC06E8);
  }

  return result;
}

unint64_t sub_243F7B224()
{
  result = qword_27EDC06F0;
  if (!qword_27EDC06F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC06F8);
    sub_243F5DD50(&qword_27EDC0700, &qword_27EDC0708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC06F0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_243F7B324(uint64_t a1, int a2)
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

uint64_t sub_243F7B344(uint64_t result, int a2, int a3)
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

unint64_t sub_243F7B36C()
{
  result = qword_27EDC0750;
  if (!qword_27EDC0750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0750);
  }

  return result;
}

uint64_t sub_243F7B3F8()
{
  type metadata accessor for MerchantDetailsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  return sub_2440D2830();
}

uint64_t sub_243F7B47C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_243F7B4E4()
{
  result = qword_27EDC07C8;
  if (!qword_27EDC07C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0788);
    sub_243F7B59C();
    sub_243F5DD50(&qword_27EDC07F8, &qword_27EDC07B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC07C8);
  }

  return result;
}

unint64_t sub_243F7B59C()
{
  result = qword_27EDC07D0;
  if (!qword_27EDC07D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0780);
    sub_243F7B628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC07D0);
  }

  return result;
}

unint64_t sub_243F7B628()
{
  result = qword_27EDC07D8;
  if (!qword_27EDC07D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0778);
    sub_243F7B6B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC07D8);
  }

  return result;
}

unint64_t sub_243F7B6B4()
{
  result = qword_27EDC07E0;
  if (!qword_27EDC07E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0770);
    sub_243F5DD50(&qword_27EDC07E8, &qword_27EDC07F0);
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC07E0);
  }

  return result;
}

uint64_t sub_243F7B798(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_243F7B7F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for MerchantDetailsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243F7858C(a1, v6, a2);
}

unint64_t sub_243F7B878()
{
  result = qword_27EDC0800;
  if (!qword_27EDC0800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0798);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0788);
    sub_243F7B4E4();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC0808, &qword_27EDC0810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0800);
  }

  return result;
}

uint64_t sub_243F7B96C()
{
  v1 = sub_2440D1670();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for MerchantDetailsView(0);
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v0 + v6 + *(v5 + 24);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05B0) + 32);
  v9 = sub_2440D0F20();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_243F7BC10()
{
  sub_2440D1670();
  type metadata accessor for MerchantDetailsView(0);
  result = sub_2440D1650();
  if (v2 != 0.0 || v1 != 0.0)
  {
    sub_2440D1650();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC05C8);
    return sub_2440D2950();
  }

  return result;
}

unint64_t sub_243F7BD40()
{
  result = qword_27EDC0898;
  if (!qword_27EDC0898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0848);
    sub_243F7BDCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0898);
  }

  return result;
}

unint64_t sub_243F7BDCC()
{
  result = qword_27EDC08A0;
  if (!qword_27EDC08A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0890);
    sub_243F7BE84();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC08A0);
  }

  return result;
}

unint64_t sub_243F7BE84()
{
  result = qword_27EDC08A8;
  if (!qword_27EDC08A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0888);
    sub_243F7BF10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC08A8);
  }

  return result;
}

unint64_t sub_243F7BF10()
{
  result = qword_27EDC08B0;
  if (!qword_27EDC08B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0860);
    sub_243F7BFC8();
    sub_243F5DD50(&qword_27EDC08D0, &qword_27EDC0880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC08B0);
  }

  return result;
}

unint64_t sub_243F7BFC8()
{
  result = qword_27EDC08B8;
  if (!qword_27EDC08B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0858);
    sub_243F7C080();
    sub_243F5DD50(&qword_27EDC07F8, &qword_27EDC07B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC08B8);
  }

  return result;
}

unint64_t sub_243F7C080()
{
  result = qword_27EDC08C0;
  if (!qword_27EDC08C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC08C8);
    sub_243F6194C();
    sub_243F5DD50(&qword_27EDC0720, &qword_27EDC0728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC08C0);
  }

  return result;
}

uint64_t sub_243F7C138@<X0>(void *a1@<X8>)
{
  result = sub_2440D19F0();
  *a1 = v3;
  return result;
}

uint64_t sub_243F7C18C@<X0>(uint64_t a1@<X8>)
{
  result = sub_2440D1AC0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_243F7C1F0()
{
  result = qword_27EDC08E0;
  if (!qword_27EDC08E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC08D8);
    sub_243F7C2A8();
    sub_243F5DD50(&qword_27EDC00A8, &qword_27EDC00B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC08E0);
  }

  return result;
}

unint64_t sub_243F7C2A8()
{
  result = qword_27EDC08E8;
  if (!qword_27EDC08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC08E8);
  }

  return result;
}

unint64_t sub_243F7C2FC()
{
  result = qword_27EDC0908;
  if (!qword_27EDC0908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0820);
    sub_243F7C3B4();
    sub_243F5DD50(&qword_27EDC0938, &qword_27EDC0940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0908);
  }

  return result;
}

unint64_t sub_243F7C3B4()
{
  result = qword_27EDC0910;
  if (!qword_27EDC0910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0900);
    sub_243F7C46C();
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0910);
  }

  return result;
}

unint64_t sub_243F7C46C()
{
  result = qword_27EDC0918;
  if (!qword_27EDC0918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC08F8);
    sub_243F7C524();
    sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0918);
  }

  return result;
}

unint64_t sub_243F7C524()
{
  result = qword_27EDC0920;
  if (!qword_27EDC0920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC08F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC08D8);
    sub_243F7C1F0();
    swift_getOpaqueTypeConformance2();
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0920);
  }

  return result;
}

uint64_t sub_243F7C618(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_243F7C8F4(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243F7C6CC()
{
  result = qword_27EDC0950;
  if (!qword_27EDC0950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0958);
    sub_243F7C784();
    sub_243F5DD50(&qword_27EDC0938, &qword_27EDC0940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0950);
  }

  return result;
}

unint64_t sub_243F7C784()
{
  result = qword_27EDC0960;
  if (!qword_27EDC0960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0968);
    sub_243F7C83C();
    sub_243F5DD50(&qword_27EDC0340, &qword_27EDC0348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0960);
  }

  return result;
}

unint64_t sub_243F7C83C()
{
  result = qword_27EDC0970;
  if (!qword_27EDC0970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0978);
    sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0970);
  }

  return result;
}

uint64_t sub_243F7C8F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243F7C93C()
{
  result = qword_27EDC0990;
  if (!qword_27EDC0990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0988);
    sub_243F7C9F4();
    sub_243F5DD50(&qword_27EDC0928, &qword_27EDC0930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0990);
  }

  return result;
}

unint64_t sub_243F7C9F4()
{
  result = qword_27EDC0998;
  if (!qword_27EDC0998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC09A0);
    sub_243F5DD50(&qword_27EDC0938, &qword_27EDC0940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0998);
  }

  return result;
}

uint64_t sub_243F7CB08@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_243F7CBC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_2440D1350();
}

uint64_t (*sub_243F7CC30(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t (*sub_243F7CCEC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC09B8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI21CoarseRotationManager__orientation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC09B0);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

id sub_243F7CEA8()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_243F7CEDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC09B0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - v3;
  v5 = OBJC_IVAR____TtC19ContactlessReaderUI21CoarseRotationManager__orientation;
  v14 = 0;
  sub_2440D1300();
  (*(v2 + 32))(&v0[v5], v4, v1);
  v6 = OBJC_IVAR____TtC19ContactlessReaderUI21CoarseRotationManager_orientations;
  *&v0[v6] = sub_243F7E7B0(&unk_285774080);
  *&v0[OBJC_IVAR____TtC19ContactlessReaderUI21CoarseRotationManager_deviceOrientation] = 0;
  v7 = [objc_allocWithZone(MEMORY[0x277CF05B0]) init];
  *&v0[OBJC_IVAR____TtC19ContactlessReaderUI21CoarseRotationManager_accelerometer] = v7;
  v8 = type metadata accessor for CoarseRotationManager(0);
  v13.receiver = v0;
  v13.super_class = v8;
  v9 = v7;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  [v9 setDelegate_];

  return v10;
}

id sub_243F7D08C()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0xC8))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoarseRotationManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_243F7D214(char a1)
{
  v2 = v1;
  if (a1 == 2)
  {
    v3 = [*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21CoarseRotationManager_accelerometer) currentDeviceOrientation];
    *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21CoarseRotationManager_deviceOrientation) = v3;
    v4 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21CoarseRotationManager_orientations);
    if (*(v4 + 16))
    {
      v5 = sub_243F7E744(v3);
      if (v6)
      {
        (*((*MEMORY[0x277D85000] & *v2) + 0x78))(*(*(v4 + 56) + v5));
      }
    }
  }

  else
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0x78))(a1 & 1);
  }

  v7 = *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI21CoarseRotationManager_accelerometer);

  return [v7 setOrientationEventsEnabled_];
}

uint64_t sub_243F7D3B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CoarseRotationManager(0);
  result = sub_2440D12F0();
  *a1 = result;
  return result;
}

uint64_t sub_243F7D404@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_243F7D49C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_243F7D510(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F511F4;
}

uint64_t sub_243F7D5C0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC09B0);
  sub_2440D1310();
  return swift_endAccess();
}

uint64_t sub_243F7D63C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC09B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC09B0);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243F7D774(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC09B8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager__orientation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC09B0);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5159C;
}

uint64_t sub_243F7D8E4()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_orientationConfirmation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243F7D928(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_orientationConfirmation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_243F7D9D8()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_orientationOverrideReversal;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243F7DA1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_orientationOverrideReversal;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_243F7DACC()
{
  (*(*v0 + 264))();
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager__orientation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC09B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_243F7DBB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_motionManager);
  [v1 setDeviceMotionUpdateInterval_];
  v2 = [objc_opt_self() mainQueue];
  v4[4] = sub_243F7E968;
  v5 = v0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_243F7DF24;
  v4[3] = &block_descriptor_4;
  v3 = _Block_copy(v4);

  [v1 startDeviceMotionUpdatesToQueue:v2 withHandler:v3];
  _Block_release(v3);
}

void sub_243F7DCC8(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  if (a2)
  {
    v7 = sub_243F4E038();
    sub_243F4DE64(v7, v6);
    v8 = sub_2440D11E0();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) == 1)
    {
      sub_243F5FAB0(v6);
    }

    else
    {
      v11 = a2;
      v12 = sub_2440D11C0();
      v13 = sub_2440D3470();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v21 = a2;
        v22 = v15;
        *v14 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC0A58);
        v16 = sub_2440D3620();
        v18 = sub_243F4E6F8(v16, v17, &v22);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_243F48000, v12, v13, "Motion reading error: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x245D58570](v15, -1, -1);
        MEMORY[0x245D58570](v14, -1, -1);
      }

      (*(v9 + 8))(v6, v8);
    }
  }

  else if (a1)
  {
    v20 = a1;
    sub_243F7E1C0(v20);
    v10 = v20;
  }
}

void sub_243F7DF24(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_243F7DFC8()
{
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_orientationOverride) = (*(v0 + OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_orientationOverride) & 1) == 0;
  v1 = (*(*v0 + 136))();
  v2 = *(*v0 + 144);
  v3 = (v1 & 1) == 0;

  return v2(v3);
}

void sub_243F7E054(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_motionManager);

  [v6 setDeviceMotionUpdateInterval_];
  v7 = [objc_opt_self() mainQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;
  v10[4] = sub_243F7EA08;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_243F7DF24;
  v10[3] = &block_descriptor_15;
  v9 = _Block_copy(v10);

  [v6 startDeviceMotionUpdatesToQueue:v7 withHandler:v9];
  _Block_release(v9);
}

uint64_t sub_243F7E1C0(void *a1)
{
  v3 = (*(*v1 + 136))();
  v4 = [a1 gravity];
  if (v3)
  {
    v6 = v5 >= -0.1;
  }

  else
  {
    v6 = v5 > 0.1;
  }

  if (v6 != ((*(*v1 + 136))(v4) & 1))
  {
    result = (*(*v1 + 224))(v14);
    if (!__OFADD__(*v8, 1))
    {
      ++*v8;
      v9 = (result)(v14, 0);
      goto LABEL_12;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_orientationOverride;
  v11 = *v1;
  if (*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_orientationOverride) == 1)
  {
    result = (*(v11 + 248))(v14);
    if (!__OFADD__(*v12, 1))
    {
      ++*v12;
      v13 = (result)(v14, 0);
      v9 = (*(*v1 + 232))(v13);
      if (v9 > 6)
      {
        *(v1 + v10) = 0;
        v9 = (*(*v1 + 240))(0);
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v9 = (*(v11 + 216))(0);
LABEL_12:
  result = (*(*v1 + 208))(v9);
  if (result >= 6 && (*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_orientationOverride) & 1) == 0)
  {
    return (*(*v1 + 144))(v6);
  }

  return result;
}

BOOL sub_243F7E430(void *a1)
{
  v3 = (*(*v1 + 136))();
  [a1 gravity];
  if (v3)
  {
    return v4 >= -0.1;
  }

  else
  {
    return v4 > 0.1;
  }
}

uint64_t sub_243F7E4B0()
{
  v0 = swift_allocObject();
  sub_243F7E4E8();
  return v0;
}

uint64_t sub_243F7E4E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC09B0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20]();
  v4 = &v8[-v3];
  v5 = OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager__orientation;
  v8[15] = 0;
  sub_2440D1300();
  (*(v2 + 32))(v0 + v5, v4, v1);
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_orientationOverride) = 0;
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_counterThreshold) = 6;
  v6 = OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_motionManager;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_toleranceAngle) = 0x3FB999999999999ALL;
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_orientationConfirmation) = 0;
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_orientationOverrideReversal) = 0;
  return v0;
}

uint64_t sub_243F7E64C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FineRotationManager(0);
  result = sub_2440D12F0();
  *a1 = result;
  return result;
}

uint64_t sub_243F7E68C()
{
  v1 = *v0;
  sub_2440D3B20();
  MEMORY[0x245D57A30](v1);
  return sub_2440D3B50();
}

uint64_t sub_243F7E700()
{
  v1 = *v0;
  sub_2440D3B20();
  MEMORY[0x245D57A30](v1);
  return sub_2440D3B50();
}

unint64_t sub_243F7E744(uint64_t a1)
{
  sub_2440D3B20();
  MEMORY[0x245D57A30](a1);
  v2 = sub_2440D3B50();

  return sub_243F72764(a1, v2);
}

unint64_t sub_243F7E7B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A68);
    v3 = sub_2440D3910();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_243F7E744(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_243F7E8B0(unint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21CoarseRotationManager_deviceOrientation) != result)
  {
    *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21CoarseRotationManager_deviceOrientation) = result;
    v2 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI21CoarseRotationManager_orientations);
    if (*(v2 + 16))
    {
      result = sub_243F7E744(result);
      if (v3)
      {
        v4 = *(*(v2 + 56) + result);
        v5 = *((*MEMORY[0x277D85000] & *v1) + 0x78);

        return v5(v4);
      }
    }
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243F7E988()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_243F7E9C8()
{

  return swift_deallocObject();
}

uint64_t sub_243F7EA08(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = *(v3 + 24);
  [*(v6 + OBJC_IVAR____TtC19ContactlessReaderUI19FineRotationManager_motionManager) stopDeviceMotionUpdates];
  if (a1 && !a2)
  {
    swift_beginAccess();
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = a1;
      v11 = sub_243F7EE68(v9);
      v12 = (*(*v6 + 136))(v11);
      [v10 gravity];
      if (v12)
      {
        v14 = v13 >= -0.1;
      }

      else
      {
        v14 = v13 > 0.1;
      }

      v9(v14);
      sub_243F7EE58(v9);
    }
  }

  else
  {
    swift_beginAccess();
    v8 = *(v7 + 16);
    if (v8)
    {

      v8(0);
      sub_243F7EE58(v8);
    }
  }

  swift_beginAccess();
  v15 = *(v7 + 16);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  return sub_243F7EE58(v15);
}

void sub_243F7EBA0()
{
  sub_243F7EDAC(319, &unk_27EDC0A30, &type metadata for PhoneOrientation, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_243F7ECA4()
{
  sub_243F7EDAC(319, &unk_27EDC0A30, &type metadata for PhoneOrientation, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_243F7EDAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_243F7EE00()
{
  result = qword_27EDC0A48;
  if (!qword_27EDC0A48)
  {
    type metadata accessor for BSDeviceOrientation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0A48);
  }

  return result;
}

uint64_t sub_243F7EE58(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243F7EE68(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243F7EEA0(char a1)
{
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_243F7EED8()
{
  v1 = sub_2440D3020();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2440D3010();
  v5 = sub_2440D2FC0();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  if (v7 >> 60 == 15)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = sub_243F7FF30(v5, v7, v0);

  sub_243F5FF20(v5, v7);
  return v9;
}

uint64_t sub_243F7F020(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v11 = MEMORY[0x277D84F90];
    sub_243F7FE08(0, v3, 0);
    result = v11;
    v5 = *(v1 + 24);
    v6 = (a1 + 32);
    v7 = *(v11 + 16);
    do
    {
      v9 = *v6++;
      v8 = v9;
      v12 = result;
      v10 = *(result + 24);
      if (v7 >= v10 >> 1)
      {
        sub_243F7FE08((v10 > 1), v7 + 1, 1);
        result = v12;
      }

      *(result + 16) = v7 + 1;
      *(result + v7++ + 32) = v8 ^ v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_243F7F0F4(uint64_t a1)
{
  v3 = sub_2440D3020();
  MEMORY[0x28223BE20](v3 - 8);
  (*(*v1 + 112))(a1);
  sub_2440D3010();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A70);
  sub_243F8025C();
  v4 = sub_2440D2FD0();
  v6 = v5;

  if (v6)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243F7F2D4(char a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_243F7F318()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A80);
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - v3;
  v5 = sub_2440D3020();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_243F7FD6C(255);
  v34 = v1;
  v10 = *(v1 + 24);
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v11 = result;
    v12 = sub_2440D3280();
    *(v12 + 16) = v10;
    memset((v12 + 32), v11 + 1, v10);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  sub_2440D3010();
  v13 = sub_2440D2FC0();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  if (v15 >> 60 == 15)
  {

    return MEMORY[0x277D84F90];
  }

  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_12;
    }
  }

  else if (!v16)
  {
    goto LABEL_12;
  }

  sub_243F802C0(v13, v15);
  sub_243F5FECC(v13, v15);
LABEL_12:
  v32 = v15;
  v33 = v2;
  v31 = v13;
  sub_2440D06A0();
  sub_2440D0690();
  sub_243F802D4();
  result = sub_2440D3680();
  if ((v36 & 0x100) == 0)
  {
    v19 = 0;
    v18 = MEMORY[0x277D84F90];
    v35 = xmmword_2440D5CF0;
    while (1)
    {
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v20 = v36;
      v21 = *(v12 + 16);
      if (v21)
      {
        if (v19 > 0xFF)
        {
          goto LABEL_32;
        }

        v22 = (v12 + 32);
        while (1)
        {
          v23 = *v22++;
          v24 = (v23 ^ *(v34 + 16)) + v19;
          if ((v24 & 0xFFFFFF00) != 0)
          {
            break;
          }

          if (v24 == 0xFF)
          {
            LOBYTE(v24) = 0;
          }

          v20 ^= v24;
          if (!--v21)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        break;
      }

LABEL_23:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC0500);
      inited = swift_initStackObject();
      *(inited + 16) = v35;
      *(inited + 32) = v20;
      v26 = *(v18 + 16);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v27 = *(v18 + 24) >> 1, v27 <= v26))
      {
        result = sub_243F4EBAC(result, v26 + 1, 1, v18);
        v18 = result;
        v27 = *(result + 24) >> 1;
      }

      v28 = *(v18 + 16);
      if (v27 <= v28)
      {
        goto LABEL_31;
      }

      *(v18 + v28 + 32) = *(inited + 32);

      ++*(v18 + 16);
      result = sub_2440D3680();
      v19 = v17;
      if (BYTE1(v36) == 1)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
LABEL_28:
  v30 = v31;
  v29 = v32;
  sub_243F5FF20(v31, v32);
  *&v4[*(v33 + 36)] = v17;
  sub_243F8032C(v4);
  v36 = v18;
  sub_243F4EA4C(v12);
  sub_243F5FF20(v30, v29);
  return v36;
}

uint64_t sub_243F7F6F8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    v6 = *(v1 + 24);
    v7 = a1 + 31;
    v8 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D84F90];
    do
    {
      v10 = *(v7 + v3);
      if (v5 >= v6)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v9 = v8;
        }

        else
        {
          v9 = sub_243F4EBAC(0, *(v8 + 16) + 1, 1, v8);
        }

        v12 = *(v9 + 2);
        v14 = *(v9 + 3);
        v13 = v12 + 1;
        if (v12 >= v14 >> 1)
        {
          v9 = sub_243F4EBAC((v14 > 1), v12 + 1, 1, v9);
        }

        v8 = v9;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_243F4EBAC(0, *(v4 + 2) + 1, 1, v4);
        }

        v12 = *(v4 + 2);
        v11 = *(v4 + 3);
        v13 = v12 + 1;
        if (v12 >= v11 >> 1)
        {
          v9 = sub_243F4EBAC((v11 > 1), v12 + 1, 1, v4);
          v4 = v9;
        }

        else
        {
          v9 = v4;
        }
      }

      ++v5;
      --v7;
      *(v9 + 2) = v13;
      v9[v12 + 32] = v10;
    }

    while (v3 != v5);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v44 = sub_243F7FAD0(v8);
  v15 = *(v4 + 2);
  if (v15)
  {
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_50:
      v4 = sub_243F4EBAC(0, 1, 1, v4);
    }

    v18 = *(v4 + 2);
    v17 = *(v4 + 3);
    v15 = v18 + 1;
    v16 = MEMORY[0x277D84F90];
    if (v18 >= v17 >> 1)
    {
      v4 = sub_243F4EBAC((v17 > 1), v18 + 1, 1, v4);
    }

    *(v4 + 2) = v15;
    v4[v18 + 32] = 0;
  }

  sub_243F7FE08(0, v15, 0);
  v19 = 0;
  v20 = v44;
  v21 = *(v2 + 16);
  do
  {
    if (v19 >= *(v4 + 2))
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v22 = v4[v19 + 32];
    v24 = *(v16 + 16);
    v23 = *(v16 + 24);
    v2 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      sub_243F7FE08((v23 > 1), v24 + 1, 1);
      v20 = v44;
    }

    ++v19;
    *(v16 + 16) = v2;
    *(v16 + v24 + 32) = v22 ^ v21;
  }

  while (v15 != v19);
  v25 = *(v20 + 16);
  v2 = v20;
  if (v25)
  {
    v43 = *(v20 + 16);
    sub_243F7FE08(0, v25, 0);
    v26 = v43;
    v27 = 0;
    v28 = *(v2 + 16);
    v29 = v2 + 32;
    v30 = v16;
    v31 = (v16 + 32);
    v32 = *(v16 + 16);
    v33 = v2;
    while (v27 != v28)
    {
      if (v27 >= *(v33 + 16))
      {
        goto LABEL_48;
      }

      v2 = *(v29 + v27);
      if (v32)
      {
        if (v27 > 0xFF)
        {
          goto LABEL_49;
        }

        v34 = v31;
        v35 = v32;
        while (1)
        {
          v36 = *v34++;
          v37 = v36 + v27;
          if ((v37 & 0xFFFFFF00) != 0)
          {
            break;
          }

          if (v37 == 0xFF)
          {
            v37 = 0;
          }

          v2 = v37 ^ v2;
          if (!--v35)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_46;
      }

LABEL_39:
      v39 = *(v30 + 16);
      v38 = *(v30 + 24);
      if (v39 >= v38 >> 1)
      {
        v41 = v31;
        v42 = v28;
        sub_243F7FE08((v38 > 1), v39 + 1, 1);
        v31 = v41;
        v28 = v42;
        v26 = v43;
        v33 = v44;
      }

      ++v27;
      *(v30 + 16) = v39 + 1;
      *(v30 + v39 + 32) = v2;
      if (v27 == v26)
      {

        return v30;
      }
    }

    goto LABEL_47;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_243F7FAD0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 32 >= v6)
    {
      break;
    }

    if (v4 - 32 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + i);
    v8 = *(v1 + v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_243F7FF1C(v1);
      v1 = result;
    }

    *(v1 + i) = v8;
    *(v1 + v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_243F7FB88(uint64_t a1)
{
  v3 = sub_2440D3020();
  MEMORY[0x28223BE20](v3 - 8);
  (*(*v1 + 112))(a1);
  sub_2440D3010();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A70);
  sub_243F8025C();
  v4 = sub_2440D2FD0();
  v6 = v5;

  if (v6)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243F7FD6C(uint64_t result)
{
  if (result)
  {
    v6[3] = v1;
    v6[4] = v2;
    v3 = result;
    v6[0] = 0;
    MEMORY[0x245D58580](v6, 8);
    v4 = v3;
    result = (LOBYTE(v6[0]) * v3) >> 8;
    if (v3 > (LOBYTE(v6[0]) * v3) && -v3 % v3 > (LOBYTE(v6[0]) * v3))
    {
      v5 = (-v3 % v3);
      do
      {
        v6[0] = 0;
        MEMORY[0x245D58580](v6, 8);
      }

      while (v5 > (LOBYTE(v6[0]) * v4));
      return (LOBYTE(v6[0]) * v4) >> 8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_243F7FE08(char *a1, int64_t a2, char a3)
{
  result = sub_243F7FE28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243F7FE28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC0500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_243F7FF30(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v28 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = v5;
  }

LABEL_10:
  v9 = MEMORY[0x277D84F90];
  if (v5)
  {
    v40 = MEMORY[0x277D84F90];
    v29 = v5;
    v30 = a2 >> 62;
    sub_243F7FE08(0, v5 & ~(v5 >> 63), 0);
    v11 = v30;
    v10 = a1;
    if (v30)
    {
      if (v30 != 2)
      {
        v13 = v29;
        v32 = a1;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = *(a1 + 16);
    }

    else
    {
      v12 = 0;
    }

    v32 = v12;
    v13 = v29;
    if ((v29 & 0x8000000000000000) == 0)
    {
LABEL_17:
      v14 = 0;
      v9 = v40;
      while (1)
      {
        if (v14 >= v13)
        {
          goto LABEL_41;
        }

        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_42;
        }

        v16 = v32 + v14;
        if (v11 == 2)
        {
          if (v16 < *(v10 + 16))
          {
            goto LABEL_44;
          }

          if (v16 >= *(v10 + 24))
          {
            goto LABEL_46;
          }

          v21 = sub_2440D03C0();
          if (!v21)
          {
            goto LABEL_51;
          }

          v18 = v21;
          v22 = sub_2440D03F0();
          v20 = v16 - v22;
          if (__OFSUB__(v16, v22))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v11 != 1)
          {
            if (v16 >= BYTE6(a2))
            {
              goto LABEL_43;
            }

            v34[0] = v10;
            v34[1] = BYTE1(a1);
            v34[2] = BYTE2(v10);
            v34[3] = BYTE3(v10);
            v34[4] = v28;
            v34[5] = BYTE5(v10);
            v34[6] = BYTE6(v10);
            v34[7] = HIBYTE(v10);
            v35 = a2;
            v36 = BYTE2(a2);
            v37 = BYTE3(a2);
            v38 = BYTE4(a2);
            v39 = BYTE5(a2);
            v23 = v34[v32 + v14];
            goto LABEL_35;
          }

          if (v16 < a1 || v16 >= a1 >> 32)
          {
            goto LABEL_45;
          }

          v17 = sub_2440D03C0();
          if (!v17)
          {
            goto LABEL_50;
          }

          v18 = v17;
          v19 = sub_2440D03F0();
          v20 = v16 - v19;
          if (__OFSUB__(v16, v19))
          {
            goto LABEL_47;
          }
        }

        v23 = *(v18 + v20);
        v11 = v30;
        v10 = a1;
        v13 = v29;
LABEL_35:
        v24 = *(a3 + 24);
        v40 = v9;
        v26 = *(v9 + 16);
        v25 = *(v9 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_243F7FE08((v25 > 1), v26 + 1, 1);
          v13 = v29;
          v11 = v30;
          v10 = a1;
          v9 = v40;
        }

        *(v9 + 16) = v26 + 1;
        *(v9 + v26 + 32) = v24 ^ v23;
        ++v14;
        if (v15 == v13)
        {
          return v9;
        }
      }
    }

    goto LABEL_40;
  }

  return v9;
}

unint64_t sub_243F8025C()
{
  result = qword_27EDC0A78;
  if (!qword_27EDC0A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0A78);
  }

  return result;
}

uint64_t sub_243F802C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243F5FECC(a1, a2);
  }

  return a1;
}

unint64_t sub_243F802D4()
{
  result = qword_27EDC0A88;
  if (!qword_27EDC0A88)
  {
    sub_2440D0690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0A88);
  }

  return result;
}

uint64_t sub_243F8032C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_243F80420(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtCV19ContactlessReaderUI20PINGestureRecognizer11Coordinator_delegate];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_243F805C4(void *a1)
{
  result = [a1 state];
  if (result == 3)
  {
    v4 = *((*MEMORY[0x277D85000] & *a1) + 0x80);
    v5 = v4();
    v6 = (*(*v5 + 120))(v5);

    if (v6 == 1)
    {
      v7 = (v4)(result);
      v8 = (*(*v7 + 144))(v7);

      if (v8 > 1000.0)
      {
        v9 = *(v1 + OBJC_IVAR____TtCV19ContactlessReaderUI20PINGestureRecognizer11Coordinator_delegate);
        v10 = (v4)(result);
        v11 = (*(*v10 + 96))();

        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = (v11 + 40);
          v14 = MEMORY[0x277D84F90];
          do
          {
            v17 = *v13;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_243F82230(0, *(v14 + 2) + 1, 1, v14);
            }

            v16 = *(v14 + 2);
            v15 = *(v14 + 3);
            if (v16 >= v15 >> 1)
            {
              v14 = sub_243F82230((v15 > 1), v16 + 1, 1, v14);
            }

            *(v14 + 2) = v16 + 1;
            *&v14[16 * v16 + 32] = v17;
            v13 = (v13 + 24);
            --v12;
          }

          while (v12);
        }

        else
        {
          v14 = MEMORY[0x277D84F90];
        }

        v9(v14, 1);
      }
    }
  }

  return result;
}

id sub_243F80904()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_243F80960@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = type metadata accessor for PINGestureRecognizer.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV19ContactlessReaderUI20PINGestureRecognizer11Coordinator_delegate];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_243F80A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243F831E8();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_243F80A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243F831E8();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_243F80AE4()
{
  sub_243F831E8();
  sub_2440D1CE0();
  __break(1u);
}

uint64_t sub_243F80B0C()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = 0;
  return result;
}

uint64_t sub_243F80B88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_stroke;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_243F80C40()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_coordinateSpaceView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_243F80C8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_coordinateSpaceView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_243F80D44()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
  if (!result)
  {
    result = [v0 view];
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_243F80DB0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_trackedTouch);
  if (v2)
  {
    v4 = v2;
    if (sub_243F80F50(v4, a1))
    {
      v5 = MEMORY[0x277D85000];
      if (((*((*MEMORY[0x277D85000] & *v1) + 0x108))(a1, v4) & 1) == 0)
      {
        v9 = (*((*v5 & *v1) + 0xF8))();
        v10 = (*((*v5 & *v1) + 0x80))();
        (*((*v5 & *v1) + 0x110))(v10, v4, v9);

        v8 = 1;
LABEL_11:

        return v8;
      }

      if ([v1 state])
      {
        v6 = v1;
        v7 = 4;
      }

      else
      {
        v6 = v1;
        v7 = 5;
      }

      [v6 setState_];
    }

    v8 = 0;
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_243F80F50(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_2440D37B0();
  }

  else if (*(a2 + 16) && (sub_243F82C38(), v5 = sub_2440D35B0(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_2440D35C0();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_243F81058(uint64_t a1, id a2)
{
  v3 = v2;
  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2440D3750();
    sub_243F82C38();
    sub_243F82C84();
    sub_2440D33F0();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  while (1)
  {
    if (v5 < 0)
    {
      if (!sub_2440D37A0())
      {
        goto LABEL_21;
      }

      sub_243F82C38();
      swift_dynamicCast();
      v16 = v20;
      if (!v20)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    v14 = v8;
    v15 = v9;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v9 = (v15 - 1) & v15;
    v16 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v16)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v16 == a2)
    {
    }

    else
    {
      [v16 timestamp];
      if (*(v3 + OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_initialTimestamp + 8))
      {
        goto LABEL_23;
      }

      v18 = v17;
      v19 = *(v3 + OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_initialTimestamp);

      if (v18 - v19 < 0.1)
      {
LABEL_21:
        sub_243F82CDC();
        return;
      }
    }
  }

  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_21;
    }

    v15 = *(v6 + 8 * v8);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_243F81288(uint64_t a1, id a2)
{
  v4 = [a2 preciseLocationInView_];
  v6 = v5;
  v8 = v7;
  v9 = (*(*a1 + 96))(v4);
  v10 = *(v9 + 16);
  if (!v10)
  {

    return (*(*a1 + 152))([a2 timestamp]);
  }

  v11 = v9 + 24 * v10;
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);

  if ((v12 - v6) * (v12 - v6) + (v13 - v8) * (v13 - v8) >= 0.003)
  {
    return (*(*a1 + 152))([a2 timestamp]);
  }

  return result;
}

uint64_t sub_243F81378(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_trackedTouch;
  if (!*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_trackedTouch))
  {
    v3 = sub_243F81554(a1);
    v4 = *(v1 + v2);
    *(v1 + v2) = v3;
    v5 = v3;

    if (v3)
    {
      [v5 timestamp];
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v1 + OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_initialTimestamp;
    *v8 = v7;
    v8[8] = v3 == 0;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15[4] = sub_243F82D1C;
    v15[5] = v10;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_243F81670;
    v15[3] = &block_descriptor_5;
    v11 = _Block_copy(v15);

    v12 = [v9 scheduledTimerWithTimeInterval:0 repeats:v11 block:0.1];
    _Block_release(v11);
    v13 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_fingerStartTimer);
    *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_fingerStartTimer) = v12;
  }

  return (*((*MEMORY[0x277D85000] & *v1) + 0x100))();
}

uint64_t sub_243F81554(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2440D3740();
    v5 = v4;
    v6 = sub_2440D37C0();
    v8 = v7;
    v9 = MEMORY[0x245D57660](v3, v5, v6, v7);
    sub_243F8323C(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_243F8323C(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_2440D3720();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_243F82450(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_243F8323C(v3, v5, v2 != 0);
  return v12;
}

void sub_243F81670(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_243F818A4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_243F82C38();
  sub_243F82C84();
  v10 = sub_2440D33E0();
  v11 = MEMORY[0x277D85000];
  v12 = *((*MEMORY[0x277D85000] & *a1) + 0x100);
  v13 = a4;
  v15 = a1;
  LOBYTE(a4) = v12(v10, a4);

  if (a4)
  {
    v14 = (*((*v11 & *v15) + 0x80))();
    (*(*v14 + 128))(a5);

    [v15 setState_];
  }
}

id sub_243F81A2C()
{
  type metadata accessor for Stroke();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = 0;
  (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
  v2 = *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_trackedTouch);
  *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_trackedTouch) = 0;

  v3 = OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_fingerStartTimer;
  v4 = *(v0 + OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_fingerStartTimer);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(v0 + v3);
    *(v0 + v3) = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for StrokeGestureRecognizer();
  return objc_msgSendSuper2(&v7, sel_reset);
}

id sub_243F81B40(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_stroke;
  type metadata accessor for Stroke();
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_coordinateSpaceView] = 0;
  *&v2[OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_trackedTouch] = 0;
  v7 = &v2[OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_initialTimestamp];
  *v7 = 0;
  v7[8] = 1;
  *&v2[OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_fingerStartTimer] = 0;
  *(v6 + 24) = 0;
  *&v2[OBJC_IVAR____TtC19ContactlessReaderUI23StrokeGestureRecognizer_cancellationTimeInterval] = 0x3FB999999999999ALL;
  sub_243F82DAC(a1, v18);
  v8 = v19;
  if (v19)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v18, v19);
    v10 = *(v8 - 8);
    MEMORY[0x28223BE20](v9);
    v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_2440D3A00();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v13 = 0;
  }

  v14 = type metadata accessor for StrokeGestureRecognizer();
  v17.receiver = v2;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, sel_initWithTarget_action_, v13, a2);
  swift_unknownObjectRelease();
  sub_243F82E1C(a1);
  return v15;
}

id sub_243F81D94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StrokeGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243F81E6C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_243F81F38(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_243F81FC8()
{
  v1 = *(*v0 + 96);
  v2 = *(v1() + 16);

  if (v2 >= 2)
  {
    v4 = *((v1)(result, 0.0) + 16);

    result = (v1)(v5);
    if (v4)
    {
      if (v4 <= *(result + 16))
      {

        result = (v1)(v6);
        if (*(result + 16))
        {
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_243F820B0(double a1, double a2, double a3)
{
  v7 = *((*(*v3 + 96))() + 16);

  v8 = (*(*v3 + 112))(v17);
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_243F82334(0, *(v11 + 2) + 1, 1, v11);
    *v10 = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_243F82334((v13 > 1), v14 + 1, 1, v11);
    *v10 = v11;
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[24 * v14];
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v8(v17, 0);
  return v7;
}

uint64_t sub_243F821F8()
{

  return swift_deallocClassInstance();
}

char *sub_243F82230(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0B70);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_243F82334(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void sub_243F82450(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x245D57690](a1, a2, v7);
      sub_243F82C38();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_243F82C38();
    if (sub_2440D3770() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2440D3780();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_2440D35B0();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_2440D35C0();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

id sub_243F82650(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0B78);
  sub_2440D1F70();
  v3 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v19 action:sel_handleDoubleTap2FingersWithSender_];

  [v3 setNumberOfTapsRequired_];
  [v3 setNumberOfTouchesRequired_];
  v4 = a2;
  [v4 addGestureRecognizer_];
  sub_2440D1F70();
  v5 = &selRef_closeUI;
  v6 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v19 action:sel_handleTapWithSender_];

  [v6 setNumberOfTouchesRequired_];
  v17 = v3;
  [v6 requireGestureRecognizerToFail_];
  [v4 &selRef:v6 initWithType:? identifier:? + 6];
  v20 = MEMORY[0x277D84F90];
  sub_2440D1F70();
  v7 = [objc_allocWithZone(MEMORY[0x277D75AE0]) initWithTarget:v18 action:sel_handleSwipe2FingersWithSender_];

  [v7 setNumberOfTouchesRequired_];
  [v7 setDirection_];
  MEMORY[0x245D57100]([v4 &selRef:v7 initWithType:? identifier:? + 6]);
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2440D3260();
    v5 = &selRef_closeUI;
  }

  sub_2440D32A0();
  sub_2440D1F70();
  v8 = [objc_allocWithZone(MEMORY[0x277D75AE0]) initWithTarget:v18 action:sel_handleSwipe2FingersWithSender_];

  [v8 setNumberOfTouchesRequired_];
  [v8 setDirection_];
  MEMORY[0x245D57100]([v4 v5[55]]);
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2440D3260();
    v5 = &selRef_closeUI;
  }

  sub_2440D32A0();
  sub_2440D1F70();
  v9 = [objc_allocWithZone(MEMORY[0x277D75AE0]) initWithTarget:v18 action:sel_handleSwipe2FingersWithSender_];

  [v9 setNumberOfTouchesRequired_];
  [v9 setDirection_];
  MEMORY[0x245D57100]([v4 v5[55]]);
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2440D3260();
    v5 = &selRef_closeUI;
  }

  sub_2440D32A0();
  sub_2440D1F70();
  v10 = [objc_allocWithZone(MEMORY[0x277D75AE0]) initWithTarget:v18 action:sel_handleSwipe2FingersWithSender_];

  [v10 setNumberOfTouchesRequired_];
  [v10 setDirection_];
  MEMORY[0x245D57100]([v4 v5[55]]);
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2440D3260();
  }

  sub_2440D32A0();
  sub_2440D1F70();
  v11 = [objc_allocWithZone(type metadata accessor for StrokeGestureRecognizer()) initWithTarget:v18 action:sel_handleStrokeWithSender_];
  result = [v11 setDelegate_];
  if (!(v20 >> 62))
  {
    v13 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_18:
    [v4 addGestureRecognizer_];

    return v4;
  }

  result = sub_2440D38E0();
  v13 = result;
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v13 >= 1)
  {
    for (i = 0; i != v13; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x245D57760](i, v20);
      }

      else
      {
        v15 = *(v20 + 8 * i + 32);
      }

      v16 = v15;
      [v11 requireGestureRecognizerToFail_];
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

unint64_t sub_243F82C38()
{
  result = qword_27EDC0AB0;
  if (!qword_27EDC0AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDC0AB0);
  }

  return result;
}

unint64_t sub_243F82C84()
{
  result = qword_27EDC0AB8;
  if (!qword_27EDC0AB8)
  {
    sub_243F82C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0AB8);
  }

  return result;
}

uint64_t sub_243F82CE4()
{
  MEMORY[0x245D58620](v0 + 16);

  return swift_deallocObject();
}

void sub_243F82D1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (![v1 state])
    {
      [v1 setState_];
    }
  }
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243F82DAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F82E1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_243F82E88()
{
  result = qword_27EDC0AE0;
  if (!qword_27EDC0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0AE0);
  }

  return result;
}

unint64_t sub_243F82EEC()
{
  result = qword_27EDC0AE8;
  if (!qword_27EDC0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0AE8);
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

uint64_t sub_243F82F54(uint64_t *a1, int a2)
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

uint64_t sub_243F82F9C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for StrokeSample(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for StrokeSample(uint64_t result, int a2, int a3)
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