uint64_t EnvironmentValues.layoutOutput.getter()
{
  sub_242C9E9E4();

  return sub_242F04010();
}

uint64_t EnvironmentValues.zoneIdentifier.getter()
{
  sub_242D11640();

  return sub_242F04010();
}

uint64_t RenderingMode.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t sub_242D96904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_242D98304();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.renderingMode.getter()
{
  sub_242D969B0();

  return sub_242F04010();
}

unint64_t sub_242D969B0()
{
  result = qword_27ECF5420;
  if (!qword_27ECF5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5420);
  }

  return result;
}

uint64_t (*EnvironmentValues.renderingMode.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_242D969B0();
  sub_242F04010();
  return sub_242D96AA4;
}

uint64_t sub_242D96ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_242C9E87C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.layoutOutput.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_242C9E9E4();
  sub_242F04010();
  return sub_242D96B80;
}

uint64_t sub_242D96BB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C70);
  __swift_allocate_value_buffer(v0, qword_27ECF53E8);
  v1 = __swift_project_value_buffer(v0, qword_27ECF53E8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_242D96C64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF4A0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C70);
  v3 = __swift_project_value_buffer(v2, qword_27ECF53E8);
  return sub_242CA321C(v3, a1, &qword_27ECF2C70);
}

uint64_t sub_242D96CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_242D98608();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.zoneIdentifier.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C70) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_242D11640();
  sub_242F04010();
  return sub_242D96E70;
}

uint64_t sub_242D96E8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3030);
  __swift_allocate_value_buffer(v0, qword_27ECF5400);
  v1 = __swift_project_value_buffer(v0, qword_27ECF5400);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_242D96F38@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF4A8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3030);
  v3 = __swift_project_value_buffer(v2, qword_27ECF5400);
  return sub_242CA321C(v3, a1, &qword_27ECF3030);
}

uint64_t sub_242D96FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_242D98768();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.layoutID.getter()
{
  sub_242D97074();

  return sub_242F04010();
}

unint64_t sub_242D97074()
{
  result = qword_27ECF5428;
  if (!qword_27ECF5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5428);
  }

  return result;
}

uint64_t sub_242D970F8(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_242CA321C(a1, &v11 - v8, a2);
  a4(v9);
  sub_242F04020();
  return sub_242C6D138(a1, a2);
}

void (*EnvironmentValues.layoutID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3030) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_242D97074();
  sub_242F04010();
  return sub_242D972E0;
}

void sub_242D972FC(uint64_t **a1, char a2, uint64_t *a3)
{
  v5 = *a1;
  sub_242CA321C((*a1)[3], (*a1)[2], a3);
  v6 = v5[3];
  v7 = v5[1];
  v8 = v5[2];
  if (a2)
  {
    sub_242CA321C(v5[2], v5[1], a3);
    sub_242F04020();
    sub_242C6D138(v8, a3);
  }

  else
  {
    sub_242F04020();
  }

  sub_242C6D138(v6, a3);
  free(v6);
  free(v8);
  free(v7);

  free(v5);
}

uint64_t EnvironmentValues.externalViewBuilder.getter()
{
  sub_242D97434();

  return sub_242F04010();
}

unint64_t sub_242D97434()
{
  result = qword_27ECF5430;
  if (!qword_27ECF5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5430);
  }

  return result;
}

void (*EnvironmentValues.externalViewBuilder.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_242D97434();
  sub_242F04010();
  return sub_242D97538;
}

uint64_t EnvironmentValues.externalLayoutBackgroundViewBuilder.getter()
{
  sub_242D975B4();

  return sub_242F04010();
}

unint64_t sub_242D975B4()
{
  result = qword_27ECF5438;
  if (!qword_27ECF5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5438);
  }

  return result;
}

void (*EnvironmentValues.externalLayoutBackgroundViewBuilder.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_242D975B4();
  sub_242F04010();
  return sub_242D97704;
}

void sub_242D97738(void **a1, char a2, uint64_t a3, void (*a4)(void), void (*a5)(void, void))
{
  v6 = *a1;
  v7 = (*a1)[1];
  v6[2] = **a1;
  v6[3] = v7;
  if (a2)
  {
    a4();
    sub_242F04020();
    a5(*v6, v6[1]);
  }

  else
  {
    sub_242F04020();
  }

  free(v6);
}

uint64_t sub_242D977EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_242D98870();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.frameRateLimit.getter()
{
  sub_242D97890();
  sub_242F04010();
  return v1;
}

unint64_t sub_242D97890()
{
  result = qword_27ECF5440;
  if (!qword_27ECF5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5440);
  }

  return result;
}

void (*EnvironmentValues.frameRateLimit.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_242D97890();
  sub_242F04010();
  v5 = *(v4 + 24);
  *v4 = *(v4 + 16);
  *(v4 + 8) = v5;
  return sub_242D979C8;
}

void sub_242D979C8(void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_242F04020();

  free(v1);
}

uint64_t sub_242D97A38@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF4B0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27ECF5418;
}

uint64_t sub_242D97AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_242D988EC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.activeComponents.getter()
{
  sub_242D97B48();
  sub_242F04010();
  return v1;
}

unint64_t sub_242D97B48()
{
  result = qword_27ECF5448;
  if (!qword_27ECF5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5448);
  }

  return result;
}

uint64_t sub_242D97B9C()
{
  sub_242D97B48();

  return sub_242F04020();
}

uint64_t (*EnvironmentValues.activeComponents.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_242D97B48();
  sub_242F04010();
  return sub_242D97C98;
}

uint64_t sub_242D97C98(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_242F04020();
  }

  sub_242F04020();
}

uint64_t EnvironmentValues.canShowCloseButtonFocusEffect.getter()
{
  sub_242D97D74();
  sub_242F04010();
  return v1;
}

unint64_t sub_242D97D74()
{
  result = qword_27ECF5450;
  if (!qword_27ECF5450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5450);
  }

  return result;
}

uint64_t (*EnvironmentValues.canShowCloseButtonFocusEffect.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_242D97D74();
  sub_242F04010();
  *(a1 + 16) = *(a1 + 17);
  return sub_242D97E6C;
}

BOOL static SymbolImageProvider.ImageSource.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL sub_242D97EF8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t SymbolImageProvider.ImageSize.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t SymbolImageProvider.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_242D97FD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {

    result = sub_242F04810();
    v4 = 3;
  }

  else
  {
    result = 0;
    v4 = 0;
  }

  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t EnvironmentValues.symbolImageProvider.getter()
{
  sub_242D98098();

  return sub_242F04010();
}

unint64_t sub_242D98098()
{
  result = qword_27ECF5458;
  if (!qword_27ECF5458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5458);
  }

  return result;
}

double sub_242D980EC@<D0>(_OWORD *a1@<X8>)
{
  sub_242D98098();
  sub_242F04010();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_242D9813C()
{
  sub_242D98098();

  return sub_242F04020();
}

void (*EnvironmentValues.symbolImageProvider.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_242D98098();
  sub_242F04010();
  return sub_242D9826C;
}

void sub_242D9826C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {

    sub_242F04020();
  }

  else
  {
    sub_242F04020();
  }

  free(v2);
}

unint64_t sub_242D98304()
{
  result = qword_27ECF5460;
  if (!qword_27ECF5460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5460);
  }

  return result;
}

unint64_t sub_242D9835C()
{
  result = qword_27ECF5468;
  if (!qword_27ECF5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5468);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SymbolImageProvider.ImageSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SymbolImageProvider.ImageSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_242D98524(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_242D98538(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_242D98608()
{
  result = qword_27ECF5470;
  if (!qword_27ECF5470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2C70);
    sub_242D9868C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5470);
  }

  return result;
}

unint64_t sub_242D9868C()
{
  result = qword_27ECF5478;
  if (!qword_27ECF5478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFC780);
    sub_242D98710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5478);
  }

  return result;
}

unint64_t sub_242D98710()
{
  result = qword_27ECF2260;
  if (!qword_27ECF2260)
  {
    sub_242F03720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2260);
  }

  return result;
}

unint64_t sub_242D98768()
{
  result = qword_27ECF5480;
  if (!qword_27ECF5480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF3030);
    sub_242D987EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5480);
  }

  return result;
}

unint64_t sub_242D987EC()
{
  result = qword_27ECF5488;
  if (!qword_27ECF5488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF3028);
    sub_242D98710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5488);
  }

  return result;
}

unint64_t sub_242D98870()
{
  result = qword_27ECF5490;
  if (!qword_27ECF5490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5490);
  }

  return result;
}

unint64_t sub_242D988EC()
{
  result = qword_27ECF54A0;
  if (!qword_27ECF54A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF54A8);
    sub_242D98970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF54A0);
  }

  return result;
}

unint64_t sub_242D98970()
{
  result = qword_27ECF54B0[0];
  if (!qword_27ECF54B0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF23E8);
    sub_242D98710();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECF54B0);
  }

  return result;
}

uint64_t sub_242D98A48(uint64_t a1)
{
  v2 = sub_242F05940();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_242D9D1A8(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_242D98AC4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_242F05120();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242D98B0C(uint64_t a1)
{
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  sub_242C6CF00(a1, inited + 32);

  sub_242C819D8(inited);
  return v3;
}

void *sub_242D98B94(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = sub_242CE6654(MEMORY[0x277D84F90]);
  v4[3] = a1;
  v4[4] = a2;
  return v4;
}

uint64_t sub_242D98BEC()
{

  return v0;
}

uint64_t sub_242D98C1C()
{
  sub_242D98BEC();

  return swift_deallocClassInstance();
}

uint64_t sub_242D98C68(uint64_t a1)
{
  sub_242D98CD4(a1, v2);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_242F061C0();
  return __swift_destroy_boxed_opaque_existential_2Tm(v2);
}

uint64_t sub_242D98CD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v24 - v6;
  v27[3] = v4;
  v27[4] = *(v8 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  v10 = *(v5 + 16);
  v10(boxed_opaque_existential_1, a1, v4);
  v11 = sub_242D98B0C(v27);
  __swift_destroy_boxed_opaque_existential_2Tm(v27);
  v12 = v2[4];
  v24 = _s20SingleValueContainerCMa();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0xE000000000000000;
  *(v13 + 32) = 1;
  *(v13 + 40) = v11;
  *(v13 + 48) = v12;
  v10(v7, a1, v4);

  v14 = sub_242EC8F2C(v7, v4);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v2[2];
  v2[2] = 0x8000000000000000;
  sub_242D9D1FC(v13, v14, v16, v18, v20 & 1, isUniquelyReferenced_nonNull_native, &v26, &off_28558D568);

  v2[2] = v26;
  swift_endAccess();
  v22 = v25;
  v25[3] = v24;
  result = sub_242D9D564(&qword_27ECF5548, _s20SingleValueContainerCMa);
  v22[4] = result;
  *v22 = v13;
  return result;
}

uint64_t sub_242D98F1C(uint64_t a1, uint64_t a2)
{
  sub_242D98CD4(a2, v3);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_242F061B0();
  return __swift_destroy_boxed_opaque_existential_2Tm(v3);
}

uint64_t sub_242D98FB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v25 = a2;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v24 - v6;
  v27[3] = v4;
  v27[4] = *(v8 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  v10 = *(v5 + 16);
  v10(boxed_opaque_existential_1, a1, v4);
  v11 = sub_242D98B0C(v27);
  __swift_destroy_boxed_opaque_existential_2Tm(v27);
  v12 = v2[4];
  v24 = _s16UnkeyedContainerCMa();
  v13 = swift_allocObject();
  v13[2] = MEMORY[0x277D84F90];
  v13[3] = v11;
  v13[4] = v12;
  v10(v7, a1, v4);

  v14 = sub_242EC8F2C(v7, v4);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v2[2];
  v2[2] = 0x8000000000000000;
  sub_242D9D1FC(v13, v14, v16, v18, v20 & 1, isUniquelyReferenced_nonNull_native, &v26, &off_285591A50);

  v2[2] = v26;
  swift_endAccess();
  v22 = v25;
  v25[3] = v24;
  result = sub_242D9D564(&qword_27ECF5540, _s16UnkeyedContainerCMa);
  v22[4] = result;
  *v22 = v13;
  return result;
}

uint64_t sub_242D991F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v25 - v9;
  v11 = _s14KeyedContainerCMa();
  v30[3] = v7;
  v30[4] = *(v6 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  v13 = *(v8 + 16);
  v13(boxed_opaque_existential_1, a2, v7);
  v14 = sub_242D98B0C(v30);
  __swift_destroy_boxed_opaque_existential_2Tm(v30);
  v15 = v4[4];
  v16 = swift_allocObject();

  v16[2] = sub_242CE6654(MEMORY[0x277D84F90]);
  v16[3] = v14;
  v16[4] = v15;
  v13(v10, v26, v7);
  v17 = sub_242EC8F2C(v10, v7);
  v19 = v18;
  v21 = v20;
  LOBYTE(v10) = v22;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v4[2];
  v4[2] = 0x8000000000000000;
  sub_242D9D3B0(v16, v17, v19, v21, v10 & 1, isUniquelyReferenced_nonNull_native, &v29, v11, &off_2855892F8);

  v4[2] = v29;
  swift_endAccess();
  v30[0] = v16;
  swift_getWitnessTable();
  return sub_242F05F40();
}

uint64_t sub_242D9944C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  *(inited + 56) = &type metadata for AnyCodingKey;
  *(inited + 64) = sub_242D0B600();
  v6 = swift_allocObject();
  *(inited + 32) = v6;
  *(v6 + 16) = 0x7265707573;
  *(v6 + 24) = 0xE500000000000000;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;

  sub_242C819D8(inited);
  v7 = v4;
  v8 = *(v2 + 32);
  v9 = type metadata accessor for _LuaEncoder();
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = 0;
  v10[5] = 0;
  a1[3] = v9;
  a1[4] = sub_242D9D564(&qword_27ECF5538, type metadata accessor for _LuaEncoder);
  *a1 = v10;
}

uint64_t sub_242D99590@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  v9 = *(v6 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v6 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a1, v9);

  sub_242C819D8(inited);
  v11 = v3[4];
  v12 = type metadata accessor for _LuaEncoder();
  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = v11;
  v13[4] = 0;
  v13[5] = 0;
  a2[3] = v12;
  a2[4] = sub_242D9D564(&qword_27ECF5538, type metadata accessor for _LuaEncoder);
  *a2 = v13;
}

uint64_t sub_242D9976C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = a2;
  v4[0] = a1;
  return sub_242D98F1C(v4, a3);
}

uint64_t sub_242D99E74()
{
  v1 = v0;
  swift_beginAccess();
  if (!*(*(v0 + 16) + 16))
  {
    return 32123;
  }

  v27 = sub_242F05110();
  v28 = v2;
  v3 = *(v0 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_242CDD95C(*(v3 + 16), 0);
    v6 = sub_242CDFE68(&v31, (v5 + 32), v4, v3);
    swift_bridgeObjectRetain_n();
    sub_242C6548C();
    if (v6 != v4)
    {
      __break(1u);
      return 32123;
    }
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v31 = v5;
  sub_242D9C608(&v31);

  v8 = v31;
  v9 = *(v31 + 16);
  if (v9)
  {
    v30 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v9, 0);
    v10 = 0;
    v11 = v30;
    v12 = (v8 + 56);
    v25 = v9;
    v26 = v8;
    while (v10 < *(v8 + 16))
    {
      v13 = *(v12 - 2);
      v14 = *(v12 - 1);
      v15 = *v12;
      v31 = *(v12 - 3);
      v32 = v13;
      v33 = v14;
      LOBYTE(v34) = v15;

      v16 = v1;
      sub_242D9A160(&v31, v27, v28, v1, v29);

      v17 = v29[0];
      v18 = v29[1];
      v30 = v11;
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_242E3BC70((v19 > 1), v20 + 1, 1);
        v11 = v30;
      }

      ++v10;
      *(v11 + 16) = v20 + 1;
      v21 = v11 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v12 += 32;
      v8 = v26;
      v1 = v16;
      if (v25 == v10)
      {

        goto LABEL_15;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
LABEL_15:
    v31 = 2683;
    v32 = 0xE200000000000000;
    v29[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160);
    sub_242CD4ED4();
    v22 = sub_242F04E40();
    v24 = v23;

    MEMORY[0x245D26660](v22, v24);

    MEMORY[0x245D26660](10, 0xE100000000000000);
    MEMORY[0x245D26660](v27, v28);

    MEMORY[0x245D26660](125, 0xE100000000000000);
    return v31;
  }

  return result;
}

uint64_t sub_242D9A160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v48 = a5;
  v60 = a3;
  v51 = a2;
  v7 = sub_242F03500();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  v15 = *a1;
  v14 = *(a1 + 8);
  v50 = *(a1 + 16);
  v49 = *(a1 + 24);
  swift_bridgeObjectRetain_n();
  sub_242D98AC4(v15, v14);
  if (v16 && (v17 = sub_242F04DF0(), , (v17 & 1) != 0))
  {
  }

  else
  {
    v58 = v15;
    v59 = v14;
    sub_242F034E0();
    sub_242F034F0();
    v47 = v14;
    v18 = *(v8 + 8);
    v18(v13, v7);
    sub_242C6CB78();
    v19 = sub_242F058B0();
    v21 = v20;
    v23 = v22;
    v18(v11, v7);
    v14 = v47;

    if ((v23 & 1) != 0 || (v19 ^ v21) < 0x4000)
    {
      goto LABEL_9;
    }
  }

  v58 = v51;
  v59 = v60;

  MEMORY[0x245D26660](8224, 0xE200000000000000);
  v25 = v58;
  v24 = v59;
  v58 = 8795;
  v59 = 0xE200000000000000;
  v56 = v15;
  v57 = v14;
  v54 = 34;
  v55 = 0xE100000000000000;
  v52 = 8796;
  v53 = 0xE200000000000000;
  sub_242C6CB78();
  v26 = sub_242F058D0();
  v28 = v27;

  MEMORY[0x245D26660](v26, v28);

  MEMORY[0x245D26660](23842, 0xE200000000000000);
  v29 = v58;
  v30 = v59;
  v58 = v25;
  v59 = v24;

  MEMORY[0x245D26660](v29, v30);

  MEMORY[0x245D26660](2112800, 0xE300000000000000);

  v32 = v58;
  v31 = v59;
  swift_beginAccess();
  v33 = *(a4 + 16);
  if (*(v33 + 16))
  {
    v34 = sub_242CE53D4(v15, v14, v50, v49);
    if (v35)
    {
      goto LABEL_11;
    }
  }

  swift_endAccess();
  __break(1u);
LABEL_9:

  v58 = v51;
  v59 = v60;

  MEMORY[0x245D26660](8224, 0xE200000000000000);

  MEMORY[0x245D26660](v15, v14);

  MEMORY[0x245D26660](2112800, 0xE300000000000000);

  v32 = v58;
  v31 = v59;
  swift_beginAccess();
  v33 = *(a4 + 16);
  if (*(v33 + 16))
  {
    v34 = sub_242CE53D4(v15, v14, v50, v49);
    if (v36)
    {
LABEL_11:
      v37 = *(*(v33 + 56) + 16 * v34 + 8);
      swift_endAccess();
      ObjectType = swift_getObjectType();
      v39 = *(v37 + 8);
      swift_unknownObjectRetain();
      v40 = v39(ObjectType, v37);
      v42 = v41;
      swift_unknownObjectRelease();
      v58 = v32;
      v59 = v31;

      MEMORY[0x245D26660](v40, v42);

      v44 = v59;
      v45 = v48;
      *v48 = v58;
      v45[1] = v44;
      return result;
    }
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

char *sub_242D9A5F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF02B8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242D9A704(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 592);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[592 * v8])
    {
      memmove(v12, v13, 592 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242D9A82C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF21C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_242D9A954(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF21B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 952);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[119 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 952 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242D9AAA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2100);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_242D9ABB4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0338);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242D9ACFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0290);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_242D9AE18(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF55A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF55A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242D9AF60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242D9B084(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF02D0);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_242D9B188(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5588);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_242D9B2D0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5598);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_242D9B464(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 1;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 5);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[4 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 32 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_242D9B598(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF55D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF55D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242D9B6E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_242D9B808(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF55C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242D9B93C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_242D9BA48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5608);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242D9BBF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5550);
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

void *sub_242D9BCF8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0390);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0398);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_242D9BE54(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_242D9C030(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242D9C164(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF55C0);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_242D9C270(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2130);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF55B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_242D9C3BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF55B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_242D9C4C0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5558);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5560);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_242D9C608(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_242D9D180(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_242D9C674(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_242D9C674(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_242F05F50();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_242F05360();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_242D9C850(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_242D9C76C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_242D9C76C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 + 24;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 - 24);
      v11 = (v10 - 24);
      v12 = result == *(v10 - 56) && *(v10 - 16) == *(v10 - 48);
      if (v12 || (result = sub_242F06110(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v10 - 56);
      v13 = *(v10 - 40);
      *(v10 - 32) = *v10;
      v10 -= 32;
      v15 = *(v10 + 8);
      v16 = *(v10 + 16);
      v17 = *(v10 + 24);
      *v11 = v14;
      v11[1] = v13;
      *(v10 - 24) = v15;
      *(v10 - 16) = v16;
      *(v10 - 8) = v17;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242D9C850(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v103 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_109:
    v9 = *v103;
    if (!*v103)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_142:
      result = sub_242D9D130(v8);
      v8 = result;
    }

    v94 = v5;
    v95 = v8 + 16;
    v96 = *(v8 + 2);
    if (v96 >= 2)
    {
      while (*a3)
      {
        v97 = &v8[16 * v96];
        v5 = *v97;
        v98 = &v95[2 * v96];
        v99 = v98[1];
        sub_242D9CE84((*a3 + 32 * *v97), (*a3 + 32 * *v98), (*a3 + 32 * v99), v9);
        if (v94)
        {
        }

        if (v99 < v5)
        {
          goto LABEL_134;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_135;
        }

        *v97 = v5;
        *(v97 + 1) = v99;
        v100 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_136;
        }

        v96 = *v95 - 1;
        result = memmove(v98, v98 + 2, 16 * v100);
        *v95 = v96;
        if (v96 <= 1)
        {
        }
      }

      goto LABEL_146;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 32 * v7);
      result = *v10;
      v11 = (*a3 + 32 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_242F06110();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 5;
        v15 = v11 + 5;
        do
        {
          result = v14[3];
          v17 = v15[4];
          v15 += 4;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_25;
            }
          }

          else
          {
            result = sub_242F06110();
            if ((v13 ^ result))
            {
              goto LABEL_24;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_24:
      if (v13)
      {
LABEL_25:
        if (v7 < v9)
        {
          goto LABEL_139;
        }

        if (v9 < v7)
        {
          v19 = 32 * v7 - 32;
          v20 = 32 * v9;
          v21 = v7;
          v22 = v9;
          do
          {
            if (v22 != --v21)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_145;
              }

              v26 = (v25 + v20);
              v27 = (v25 + v19);
              v28 = *(v25 + v20);
              v29 = *(v25 + v20 + 8);
              v30 = *(v25 + v20 + 16);
              v31 = *(v25 + v20 + 24);
              if (v20 != v19 || (result = (v27 + 2), v26 >= v27 + 2))
              {
                v23 = v27[1];
                *v26 = *v27;
                v26[1] = v23;
              }

              v24 = v25 + v19;
              *v24 = v28;
              *(v24 + 8) = v29;
              *(v24 + 16) = v30;
              *(v24 + 24) = v31;
            }

            ++v22;
            v19 -= 32;
            v20 += 32;
          }

          while (v22 < v21);
        }
      }
    }

    v32 = a3[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_138;
      }

      if (v7 - v9 < a4)
      {
        v33 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_140;
        }

        if (v33 >= v32)
        {
          v33 = a3[1];
        }

        if (v33 < v9)
        {
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (v7 != v33)
        {
          break;
        }
      }
    }

LABEL_57:
    if (v7 < v9)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v47 = v5;
    if ((result & 1) == 0)
    {
      result = sub_242C829CC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_242C829CC((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v103;
    if (!*v103)
    {
      goto LABEL_147;
    }

    if (v49)
    {
      v5 = v47;
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_78:
          if (v57)
          {
            goto LABEL_125;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_128;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_132;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_92:
        if (v75)
        {
          goto LABEL_127;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_130;
        }

        if (v86 < v74)
        {
          goto LABEL_4;
        }

LABEL_99:
        v9 = v53 - 1;
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*a3)
        {
          goto LABEL_144;
        }

        v91 = *&v8[16 * v9 + 32];
        v92 = *&v8[16 * v53 + 40];
        sub_242D9CE84((*a3 + 32 * v91), (*a3 + 32 * *&v8[16 * v53 + 32]), (*a3 + 32 * v92), v52);
        if (v5)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_242D9D130(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_122;
        }

        v93 = &v8[16 * v9];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        result = sub_242D9D0A4(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_4;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_123;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_124;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_126;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_129;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_133;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

    v5 = v47;
LABEL_4:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_109;
    }
  }

  v101 = v9;
  v34 = *a3;
  v35 = *a3 + 32 * v7 + 24;
  v36 = (v9 - v7);
  v104 = v33;
LABEL_46:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    v39 = (v38 - 24);
    v40 = *(v38 - 24) == *(v38 - 56) && *(v38 - 16) == *(v38 - 48);
    if (v40 || (result = sub_242F06110(), (result & 1) == 0))
    {
LABEL_45:
      ++v7;
      v35 += 32;
      --v36;
      if (v7 != v104)
      {
        goto LABEL_46;
      }

      v7 = v104;
      v9 = v101;
      goto LABEL_57;
    }

    if (!v34)
    {
      break;
    }

    v42 = *(v38 - 56);
    v41 = *(v38 - 40);
    *(v38 - 32) = *v38;
    v38 -= 32;
    v43 = *(v38 + 8);
    v44 = *(v38 + 16);
    v45 = *(v38 + 24);
    *v39 = v42;
    v39[1] = v41;
    *(v38 - 24) = v43;
    *(v38 - 16) = v44;
    *(v38 - 8) = v45;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_242D9CE84(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 32 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v18 && (sub_242F06110() & 1) != 0)
      {
        break;
      }

      v16 = v4;
      v18 = v7 == v4;
      v4 += 32;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v18 = v7 == v6;
    v6 += 32;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  v19 = 32 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v20 = v6 - 32;
    v5 -= 32;
    v21 = v15;
    do
    {
      v22 = *(v21 - 4);
      v23 = *(v21 - 3);
      v21 -= 32;
      v24 = v22 == *(v6 - 4) && v23 == *(v6 - 3);
      if (!v24 && (sub_242F06110() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v26 = *(v6 - 1);
          *v5 = *v20;
          *(v5 + 1) = v26;
        }

        if (v15 <= v4 || (v6 -= 32, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v15)
      {
        v25 = *(v21 + 1);
        *v5 = *v21;
        *(v5 + 1) = v25;
      }

      v5 -= 32;
      v15 = v21;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_43:
  v27 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, v27);
  }

  return 1;
}

uint64_t sub_242D9D0A4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_242D9D130(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_242D9D1A8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_242D9D1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, void *a7, uint64_t a8)
{
  v16 = *a7;
  v17 = sub_242CE53D4(a2, a3, a4, a5 & 1);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a6 & 1) == 0)
  {
    if (v24 < v22 || (a6 & 1) != 0)
    {
      sub_242D083A4(v22, a6 & 1);
      v17 = sub_242CE53D4(a2, a3, a4, a5 & 1);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_242F06320();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_242D0363C();
      v17 = v25;
    }
  }

  v27 = *a7;
  if (v23)
  {
    v28 = (v27[7] + 16 * v17);
    *v28 = a1;
    v28[1] = a8;

    return swift_unknownObjectRelease();
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = v27[6] + 32 * v17;
  *v30 = a2;
  *(v30 + 8) = a3;
  *(v30 + 16) = a4;
  *(v30 + 24) = a5 & 1;
  v31 = (v27[7] + 16 * v17);
  *v31 = a1;
  v31[1] = a8;
  v32 = v27[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

uint64_t sub_242D9D3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, void *a7, uint64_t a8, uint64_t a9)
{
  v16 = *a7;
  v17 = sub_242CE53D4(a2, a3, a4, a5 & 1);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a6 & 1) == 0)
  {
    if (v24 < v22 || (a6 & 1) != 0)
    {
      sub_242D083A4(v22, a6 & 1);
      v17 = sub_242CE53D4(a2, a3, a4, a5 & 1);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_242F06320();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_242D0363C();
      v17 = v25;
    }
  }

  v27 = *a7;
  if (v23)
  {
    v28 = (v27[7] + 16 * v17);
    *v28 = a1;
    v28[1] = a9;

    return swift_unknownObjectRelease();
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = v27[6] + 32 * v17;
  *v30 = a2;
  *(v30 + 8) = a3;
  *(v30 + 16) = a4;
  *(v30 + 24) = a5 & 1;
  v31 = (v27[7] + 16 * v17);
  *v31 = a1;
  v31[1] = a9;
  v32 = v27[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

uint64_t sub_242D9D564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242D9D5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

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

uint64_t sub_242D9D684(uint64_t a1)
{
  v2 = sub_242D9D8AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D9D6C0(uint64_t a1)
{
  v2 = sub_242D9D8AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CodableUnitPoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5610);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D9D8AC();
  sub_242F064C0();
  v12 = v9;
  HIBYTE(v11) = 0;
  sub_242C7DB7C();
  sub_242F05F20();
  if (!v2)
  {
    v12 = v8;
    HIBYTE(v11) = 1;
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_242D9D8AC()
{
  result = qword_27ECF5618;
  if (!qword_27ECF5618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5618);
  }

  return result;
}

uint64_t CodableUnitPoint.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5620);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D9D8AC();
  sub_242F06480();
  if (!v2)
  {
    HIBYTE(v12) = 0;
    sub_242C7DBD0();
    sub_242F05E00();
    v9 = v13;
    HIBYTE(v12) = 1;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v10 = v13;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

__n128 sub_242D9DADC@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 sub_242D9DAE8@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_242D9DAF4(uint64_t a1)
{
  *(a1 + 8) = sub_242D9DB24();
  result = sub_242D9DB78();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_242D9DB24()
{
  result = qword_27ECF5628;
  if (!qword_27ECF5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5628);
  }

  return result;
}

unint64_t sub_242D9DB78()
{
  result = qword_27ECF5630;
  if (!qword_27ECF5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5630);
  }

  return result;
}

unint64_t sub_242D9DC20()
{
  result = qword_27ECF5638;
  if (!qword_27ECF5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5638);
  }

  return result;
}

unint64_t sub_242D9DC78()
{
  result = qword_27ECF5640;
  if (!qword_27ECF5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5640);
  }

  return result;
}

unint64_t sub_242D9DCD0()
{
  result = qword_27ECF5648;
  if (!qword_27ECF5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5648);
  }

  return result;
}

uint64_t Slot.init(positionId:style:frame:safeAreaInsets:zIndex:instrument:parentPositionId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, CGFloat a10@<D0>, CGFloat a11@<D1>, CGFloat a12@<D2>, CGFloat a13@<D3>)
{
  v57 = a7;
  v58 = a8;
  v55 = a5;
  v56 = a6;
  v52 = a1;
  v53 = a2;
  v20 = *a4;
  v21 = *(a4 + 8);
  v22 = *(a4 + 16);
  v23 = *(a4 + 24);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2138);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v48 - v25;
  v27 = a3[1];
  v51 = *a3;
  v49 = v27;
  v28 = a3[3];
  v50 = a3[2];
  v29 = a3[4];
  v30 = a3[5];
  v31 = type metadata accessor for Slot();
  v32 = v31[9];
  v33 = type metadata accessor for Instrument();
  v34 = *(*(v33 - 8) + 56);
  v54 = v32;
  v34(a9 + v32, 1, 1, v33);
  v35 = a9 + v31[11];
  sub_242F03710();
  sub_242CA321C(v26, v35, &qword_27ECF2138);
  sub_242C6D138(v26, &qword_27ECF2138);
  *(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140) + 52)) = 7;
  v36 = v29;
  v37 = v49;
  v38 = v51;
  v39 = v50;
  *(a9 + v31[12]) = 0;
  v40 = v53;
  *(a9 + 120) = v52;
  *(a9 + 128) = v40;
  *a9 = v38;
  *(a9 + 8) = v37;
  *(a9 + 16) = v39;
  *(a9 + 24) = v28;
  *(a9 + 32) = v36;
  *(a9 + 40) = v30;
  *(a9 + 48) = a10;
  *(a9 + 56) = a11;
  *(a9 + 64) = a12;
  *(a9 + 72) = a13;
  if (*(a4 + 32))
  {
    v59[0] = v38;
    v59[1] = v37;
    v59[2] = v39;
    v59[3] = v28;
    v59[4] = v36;
    v59[5] = v30;
    v20 = sub_242D9F83C(v59, a10, a11, a12, a13);
    v21 = v41;
    v22 = v42;
    v23 = v43;
  }

  v44 = (a9 + v31[10]);
  *(a9 + 80) = v20;
  *(a9 + 88) = v21;
  *(a9 + 96) = v22;
  *(a9 + 104) = v23;
  v45 = v54;
  *(a9 + 112) = v55;
  result = sub_242D8E414(v56, a9 + v45, &qword_27ECF0B08);
  v47 = v58;
  *v44 = v57;
  v44[1] = v47;
  return result;
}

uint64_t type metadata accessor for Slot()
{
  result = qword_27ECF5760;
  if (!qword_27ECF5760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *Slot.assets.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2 - 8];
  v4 = type metadata accessor for Slot();
  sub_242CA321C(v0 + *(v4 + 36), v3, &qword_27ECF0B08);
  v5 = type metadata accessor for Instrument();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_242C6D138(v3, &qword_27ECF0B08);
    return MEMORY[0x277D84F90];
  }

  else
  {
    memcpy(v9, &v3[*(v5 + 20)], sizeof(v9));
    v7 = Instrument.Kind.assets.getter();
    sub_242DA1A68(v3, type metadata accessor for Instrument);
    return v7;
  }
}

uint64_t sub_242D9E134(uint64_t a1)
{
  v2 = sub_242DA1830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D9E170(uint64_t a1)
{
  v2 = sub_242DA1830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D9E1AC()
{
  v1 = 0x75676E6174636572;
  if (*v0 != 1)
  {
    v1 = 0x72656E726F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72616C7563726963;
  }
}

uint64_t sub_242D9E20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242DA2894(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242D9E234(uint64_t a1)
{
  v2 = sub_242DA1734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D9E270(uint64_t a1)
{
  v2 = sub_242DA1734();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_242D9E2AC()
{
  v1 = 1802723693;
  v2 = 0x746E6543676E6972;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x69646152676E6972;
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

uint64_t sub_242D9E334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242DA29AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242D9E35C(uint64_t a1)
{
  v2 = sub_242DA1788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D9E398(uint64_t a1)
{
  v2 = sub_242DA1788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242D9E3D4(uint64_t a1)
{
  v2 = sub_242DA17DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D9E410(uint64_t a1)
{
  v2 = sub_242DA17DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Slot.Style.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5650);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5658);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5660);
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5668);
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  v14 = *v1;
  v16 = v1[1];
  v15 = v1[2];
  v17 = v1[3];
  v18 = v1[5];
  v26[1] = v1[4];
  v27 = v14;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DA1734();
  v19 = v13;
  sub_242F064C0();
  if (!v18)
  {
    LOBYTE(v38) = 0;
    sub_242DA1830();
    v20 = v36;
    sub_242F05E40();
    (*(v28 + 8))(v10, v29);
    return (*(v35 + 8))(v13, v20);
  }

  if (v18 == 1)
  {
    LOBYTE(v38) = 1;
    sub_242DA17DC();
    v20 = v36;
    sub_242F05E40();
    (*(v30 + 8))(v7, v31);
    return (*(v35 + 8))(v13, v20);
  }

  LOBYTE(v38) = 2;
  sub_242DA1788();
  v22 = v32;
  v23 = v36;
  sub_242F05E40();
  v38 = v27;
  v40 = 0;
  type metadata accessor for CACornerMask(0);
  sub_242DA2E8C(&qword_27ECF5680, type metadata accessor for CACornerMask);
  v24 = v34;
  v25 = v37;
  sub_242F05F20();
  if (!v25)
  {
    v38 = v16;
    v40 = 1;
    sub_242C7DB7C();
    sub_242F05F20();
    v38 = v15;
    v39 = v17;
    v40 = 2;
    type metadata accessor for CGPoint(0);
    sub_242DA2E8C(&qword_27ECF5688, type metadata accessor for CGPoint);
    sub_242F05F20();
    LOBYTE(v38) = 3;
    sub_242F05EC0();
  }

  (*(v33 + 8))(v22, v24);
  return (*(v35 + 8))(v19, v23);
}

uint64_t Slot.Style.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF56A0);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  MEMORY[0x28223BE20](v3);
  v54 = &v47 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF56A8);
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF56B0);
  *&v49 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF56B8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  v15 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v15);
  sub_242DA1734();
  v16 = v56;
  sub_242F06480();
  if (!v16)
  {
    v48 = 0;
    v17 = v53;
    v18 = v54;
    v56 = v12;
    v19 = v55;
    v20 = sub_242F05E10();
    v21 = (2 * *(v20 + 16)) | 1;
    v61 = v20;
    v62 = v20 + 32;
    v63 = 0;
    v64 = v21;
    v22 = sub_242C7FBE8();
    v23 = v14;
    if (v22 == 3 || v63 != v64 >> 1)
    {
      v27 = sub_242F05B10();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
      *v29 = &type metadata for Slot.Style;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
    }

    else
    {
      if (v22)
      {
        if (v22 == 1)
        {
          LOBYTE(v59) = 1;
          sub_242DA17DC();
          v24 = v7;
          v25 = v48;
          sub_242F05D10();
          v26 = v56;
          if (v25)
          {
            (*(v56 + 8))(v23, v11);
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_2Tm(v57);
          }

          (*(v50 + 8))(v24, v17);
          (*(v26 + 8))(v23, v11);
          swift_unknownObjectRelease();
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v36 = 0uLL;
          v35 = 1;
LABEL_17:
          *v19 = v32;
          *(v19 + 8) = v33;
          *(v19 + 16) = v36;
          *(v19 + 32) = v34;
          *(v19 + 40) = v35;
          return __swift_destroy_boxed_opaque_existential_2Tm(v57);
        }

        LOBYTE(v59) = 2;
        sub_242DA1788();
        v37 = v48;
        sub_242F05D10();
        v38 = v56;
        if (!v37)
        {
          v53 = v14;
          type metadata accessor for CACornerMask(0);
          LOBYTE(v59) = 0;
          sub_242DA2E8C(&qword_27ECF56C0, type metadata accessor for CACornerMask);
          v39 = v51;
          sub_242F05E00();
          v40 = v18;
          v50 = v11;
          v32 = v65;
          LOBYTE(v59) = 1;
          sub_242C7DBD0();
          sub_242F05E00();
          v41 = v40;
          v33 = v60;
          type metadata accessor for CGPoint(0);
          v58 = 2;
          sub_242DA2E8C(&qword_27ECF56C8, type metadata accessor for CGPoint);
          sub_242F05E00();
          v49 = v59;
          v58 = 3;
          v42 = v41;
          v43 = sub_242F05DA0();
          v44 = v39;
          v45 = v53;
          v48 = 0;
          v34 = v43;
          v35 = v46;
          (*(v52 + 8))(v42, v44);
          (*(v38 + 8))(v45, v50);
          swift_unknownObjectRelease();
          v36 = v49;
          goto LABEL_17;
        }

        (*(v56 + 8))(v14, v11);
LABEL_10:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_2Tm(v57);
      }

      LOBYTE(v59) = 0;
      sub_242DA1830();
      v31 = v48;
      sub_242F05D10();
      if (!v31)
      {
        (*(v49 + 8))(v10, v8);
        (*(v56 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0uLL;
        goto LABEL_17;
      }
    }

    (*(v56 + 8))(v23, v11);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v57);
}

uint64_t Slot.style.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_242CF428C(v2, v3, v4, v5, v6, v7);
}

__n128 Slot.style.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_242DA1884(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

void Slot.frame.setter(double a1, double a2, double a3, double a4)
{
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
}

void Slot.safeAreaInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
}

uint64_t Slot.positionId.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t Slot.positionId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t Slot.parentPositionId.getter()
{
  v1 = *(v0 + *(type metadata accessor for Slot() + 40));

  return v1;
}

uint64_t Slot.parentPositionId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Slot() + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Slot.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for Slot();
  sub_242CA321C(v1 + *(v6 + 44), v5, &qword_27ECF2140);
  return sub_242DA1898(v5, a1);
}

uint64_t sub_242D9F628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for Slot();
  sub_242CA321C(a1 + *(v7 + 44), v6, &qword_27ECF2140);
  return sub_242DA1898(v6, a2);
}

uint64_t Slot.overrides.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for Slot() + 48));
}

uint64_t Slot.overrides.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for Slot() + 48);

  *(v1 + v3) = v2;
  return result;
}

double sub_242D9F83C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = 0.0;
  if (!*(a1 + 40))
  {
    v10 = CGRectGetWidth(*&a2) * 0.707106781;
    v27.origin.x = a2;
    v27.origin.y = a3;
    v27.size.width = a4;
    v27.size.height = a5;
    v11 = CGRectGetHeight(v27) * 0.707106781;
    v28.origin.x = a2;
    v23 = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    rect = a4;
    v28.size.height = a5;
    v12 = CGRectGetMidX(v28) - v10 * 0.5;
    v29.origin.x = a2;
    v29.origin.y = a3;
    v13 = a3;
    v24 = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    v14 = CGRectGetMidY(v29) - v11 * 0.5;
    v30.origin.x = v12;
    v30.origin.y = v14;
    v30.size.width = v10;
    v30.size.height = v11;
    v15 = round(CGRectGetMinX(v30));
    v31.origin.x = v12;
    v31.origin.y = v14;
    v31.size.width = v10;
    v31.size.height = v11;
    v16 = round(CGRectGetMinY(v31));
    v32.origin.x = v12;
    v32.origin.y = v14;
    v32.size.width = v10;
    v32.size.height = v11;
    v25 = round(CGRectGetWidth(v32));
    v33.origin.x = v12;
    v33.origin.y = v14;
    v33.size.width = v10;
    v33.size.height = v11;
    v34.size.height = round(CGRectGetHeight(v33));
    v17 = v15;
    v21 = v15;
    v34.origin.x = v15;
    v34.origin.y = v16;
    v34.size.width = v25;
    height = v34.size.height;
    v22 = v34.size.height;
    MinY = CGRectGetMinY(v34);
    v35.origin.x = v23;
    v35.origin.y = v13;
    v35.size.width = rect;
    v35.size.height = a5;
    v5 = MinY - CGRectGetMinY(v35);
    v36.origin.x = v17;
    v36.origin.y = v16;
    v36.size.width = v25;
    v36.size.height = height;
    CGRectGetMinX(v36);
    v37.origin.x = v23;
    v37.origin.y = v24;
    v37.size.width = rect;
    v37.size.height = a5;
    CGRectGetMinX(v37);
    v38.origin.x = v23;
    v38.origin.y = v24;
    v38.size.width = rect;
    v38.size.height = a5;
    CGRectGetMaxY(v38);
    v39.origin.x = v21;
    v39.origin.y = v16;
    v39.size.width = v25;
    v39.size.height = v22;
    CGRectGetMaxY(v39);
    v40.origin.x = v23;
    v40.origin.y = v24;
    v40.size.width = rect;
    v40.size.height = a5;
    CGRectGetMaxX(v40);
    v41.origin.x = v21;
    v41.origin.y = v16;
    v41.size.width = v25;
    v41.size.height = v22;
    CGRectGetMaxX(v41);
  }

  return v5;
}

unint64_t sub_242D9FA8C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656C797473;
    v6 = 0x6165724165666173;
    if (a1 != 2)
    {
      v6 = 0x7865646E497ALL;
    }

    if (a1)
    {
      v5 = 0x656D617266;
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
    v1 = 0xD000000000000010;
    v2 = 25705;
    if (a1 != 7)
    {
      v2 = 0x656469727265766FLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E6F697469736F70;
    if (a1 != 4)
    {
      v3 = 0x656D757274736E69;
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

uint64_t sub_242D9FBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242DA2B28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242D9FBDC(uint64_t a1)
{
  v2 = sub_242DA1908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242D9FC18(uint64_t a1)
{
  v2 = sub_242DA1908();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Slot.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2148);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DA1908();
  sub_242F064C0();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = *(v3 + 40);
  *&v20 = *v3;
  *(&v20 + 1) = v9;
  *&v21 = v10;
  *(&v21 + 1) = v11;
  v22 = v12;
  v23 = v13;
  v19 = 0;
  sub_242CF428C(v20, v9, v10, v11, v12, v13);
  sub_242DA195C();
  sub_242F05F20();
  if (v2)
  {
    sub_242DA1884(v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23);
  }

  else
  {
    sub_242DA1884(v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23);
    v14 = *(v3 + 64);
    v20 = *(v3 + 48);
    v21 = v14;
    v19 = 1;
    type metadata accessor for CGRect(0);
    sub_242DA2E8C(&qword_27ECF2330, type metadata accessor for CGRect);
    sub_242F05F20();
    v15 = *(v3 + 96);
    v20 = *(v3 + 80);
    v21 = v15;
    v19 = 2;
    sub_242CF4538();
    sub_242F05F20();
    LOBYTE(v20) = 3;
    sub_242F05F00();
    LOBYTE(v20) = 4;
    sub_242F05EC0();
    v16 = type metadata accessor for Slot();
    LOBYTE(v20) = 5;
    type metadata accessor for Instrument();
    sub_242DA2E8C(&qword_27ECF56E0, type metadata accessor for Instrument);
    sub_242F05EB0();
    LOBYTE(v20) = 6;
    sub_242F05E50();
    sub_242CDD038(v3 + *(v16 + 44), 7);
    *&v20 = *(v3 + *(v16 + 48));
    v19 = 8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF56E8);
    sub_242C7E000(&qword_27ECF56F0, &qword_27ECF56E8);
    sub_242F05EB0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Slot.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF56F8);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v49 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140);
  MEMORY[0x28223BE20](v65);
  v54 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v49 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5700);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v9 = &v49 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2138);
  v53 = *(v56 - 8);
  v10 = MEMORY[0x28223BE20](v56);
  v52 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v14 = type metadata accessor for Slot();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 36);
  v19 = type metadata accessor for Instrument();
  v20 = *(*(v19 - 8) + 56);
  v62 = v18;
  v20(&v17[v18], 1, 1, v19);
  v21 = &v17[*(v14 + 44)];
  sub_242F03710();
  sub_242CA321C(v13, v21, &qword_27ECF2138);
  sub_242C6D138(v13, &qword_27ECF2138);
  v22 = *(v65 + 52);
  v60 = v21;
  *(v21 + v22) = 7;
  v63 = *(v14 + 48);
  v64 = a1;
  v66 = v17;
  *&v17[v63] = 0;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DA1908();
  v23 = v61;
  sub_242F06480();
  if (v23)
  {
    v24 = v62;
    v28 = v60;
    v29 = v66;
    __swift_destroy_boxed_opaque_existential_2Tm(v64);
    sub_242C6D138(v29 + v24, &qword_27ECF0B08);

    sub_242C6D138(v28, &qword_27ECF2140);
  }

  else
  {
    v61 = v19;
    v50 = v14;
    v25 = v57;
    v26 = v58;
    v70 = 0;
    sub_242DA19B0();
    sub_242F05E00();
    v27 = v62;
    v31 = v68;
    v32 = v66;
    *v66 = v67;
    v32[1] = v31;
    v32[2] = v69;
    type metadata accessor for CGRect(0);
    v70 = 1;
    sub_242DA2E8C(&qword_27ECF23A0, type metadata accessor for CGRect);
    v49 = v9;
    sub_242F05E00();
    v33 = v60;
    v34 = v68;
    v32[3] = v67;
    v32[4] = v34;
    v70 = 2;
    sub_242CF43B8();
    sub_242F05E00();
    v35 = v68;
    v32[5] = v67;
    v32[6] = v35;
    LOBYTE(v67) = 3;
    *(v32 + 14) = sub_242F05DE0();
    LOBYTE(v67) = 4;
    *(v32 + 15) = sub_242F05DA0();
    *(v32 + 16) = v36;
    LOBYTE(v67) = 5;
    sub_242DA2E8C(&qword_27ECF5710, type metadata accessor for Instrument);
    sub_242F05D90();
    sub_242D8E414(v26, v32 + v27, &qword_27ECF0B08);
    LOBYTE(v67) = 6;
    v37 = sub_242F05D30();
    v38 = (v32 + *(v50 + 40));
    *v38 = v37;
    v38[1] = v39;
    LOBYTE(v67) = 7;
    sub_242DA2184(&qword_27ECF5718);
    v40 = v55;
    v41 = v56;
    sub_242F05D90();
    if ((*(v53 + 48))(v40, 1, v41) == 1)
    {
      sub_242C6D138(v40, &qword_27ECF56F8);
      v42 = v54;
      sub_242F03710();
    }

    else
    {
      v43 = v52;
      sub_242DA1898(v40, v52);
      v42 = v54;
      sub_242CA321C(v43, v54, &qword_27ECF2138);
      sub_242C6D138(v43, &qword_27ECF2138);
    }

    *(v42 + *(v65 + 52)) = 7;
    sub_242D8E414(v42, v33, &qword_27ECF2140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF56E8);
    v70 = 8;
    sub_242C7E000(&qword_27ECF5720, &qword_27ECF56E8);
    v44 = v59;
    v45 = v49;
    sub_242F05D90();
    (*(v25 + 8))(v45, v44);
    v47 = v66;
    v46 = v67;
    v48 = v63;

    *(v47 + v48) = v46;
    sub_242DA1A04(v47, v51);
    __swift_destroy_boxed_opaque_existential_2Tm(v64);
    return sub_242DA1A68(v47, type metadata accessor for Slot);
  }
}

uint64_t sub_242DA09BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_242CA321C(v2 + *(a1 + 44), &v9 - v6, &qword_27ECF2140);
  return sub_242DA1898(v7, a2);
}

uint64_t sub_242DA0A7C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 48);

  *(v2 + v4) = v3;
  return result;
}

uint64_t Slot.shape.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  if (v3 == 1)
  {
    sub_242DA1AC8();
  }

  else if (v3)
  {
    sub_242DA0C08(*v1, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5728);
    sub_242C7E000(&qword_27ECF5730, &qword_27ECF5728);
  }

  else
  {
    sub_242DA1B1C();
  }

  result = sub_242F049C0();
  *a1 = result;
  return result;
}

__n128 sub_242DA0C08@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_242F04520();
  sub_242F044F0();
  sub_242F04510();
  sub_242F04510();
  sub_242F04510();
  sub_242F04500();
  sub_242F04500();
  sub_242F04510();
  sub_242F04510();
  sub_242F04510();
  sub_242F04510();
  sub_242F04500();
  sub_242F04510();
  sub_242F04510();
  sub_242F04500();
  sub_242F04500();
  sub_242F044E0();
  switch(a1)
  {
    case 8:
      CGAffineTransformMakeScale(&t1, -1.0, -1.0);
      v32 = *&t1.c;
      v34 = *&t1.a;
      v31 = *&t1.tx;
      v6 = 282.0;
      v7 = 204.0;
      break;
    case 4:
      CGAffineTransformMakeScale(&t1, 1.0, -1.0);
      v32 = *&t1.c;
      v34 = *&t1.a;
      v31 = *&t1.tx;
      v7 = 204.0;
      v6 = 0.0;
      break;
    case 2:
      CGAffineTransformMakeScale(&t1, -1.0, 1.0);
      v32 = *&t1.c;
      v34 = *&t1.a;
      v31 = *&t1.tx;
      v6 = 282.0;
      v7 = 0.0;
      break;
    default:
      v8 = xmmword_242F0B500;
      v10 = xmmword_242F2DFA0;
      v9 = 0uLL;
      v11 = xmmword_242F2DFA0;
      v12 = xmmword_242F0B500;
      v13 = 0uLL;
      goto LABEL_9;
  }

  CGAffineTransformMakeTranslation(&t1, v6, v7);
  v9 = v31;
  v8 = v32;
  v10 = v34;
  v11 = *&t1.a;
  v12 = *&t1.c;
  v13 = *&t1.tx;
LABEL_9:
  *&t1.a = v10;
  *&t1.c = v8;
  *&t1.tx = v9;
  *&t2.a = v11;
  *&t2.c = v12;
  *&t2.tx = v13;
  CGAffineTransformConcat(&v36, &t1, &t2);
  tx = v36.tx;
  ty = v36.ty;
  v33 = *&v36.c;
  v35 = *&v36.a;
  v16 = v39;
  v17 = v40;
  v18 = v41;
  v19 = v42;
  v20 = v3[6];
  v21 = v3[7];
  v22 = v3[8];
  v23 = v3[9];
  v24 = v43;
  sub_242DA2ED4(v39, v40, v41, v42, v43);
  v44.origin.x = v20;
  v44.origin.y = v21;
  v44.size.width = v22;
  v44.size.height = v23;
  v25 = CGRectGetWidth(v44) / 282.0;
  sub_242F04B10();
  v27 = v26;
  v29 = v28;
  sub_242DA2EEC(v16, v17, v18, v19, v24);
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v24;
  result = v35;
  *(a2 + 56) = v33;
  *(a2 + 40) = v35;
  *(a2 + 72) = tx;
  *(a2 + 80) = ty;
  *(a2 + 88) = v25;
  *(a2 + 96) = v25;
  *(a2 + 104) = v27;
  *(a2 + 112) = v29;
  return result;
}

uint64_t Slot.scaledBy(_:)@<X0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>)
{
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2138);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v51 = &v42 - v7;
  v9 = *(v2 + 128);
  v54 = *(v2 + 120);
  v43 = v9;
  v10 = *(v2 + 8);
  v42 = *v2;
  v11 = v42;
  v12 = *(v2 + 24);
  v48 = *(v2 + 16);
  v47 = v12;
  v13 = *(v2 + 32);
  v56 = *(v2 + 40);
  v14 = *(v2 + 48);
  v15 = *(v2 + 56);
  v16 = *(v2 + 64);
  v17 = *(v2 + 72);
  CGAffineTransformMakeScale(&v57, v55.f64[0], v55.f64[0]);
  v58.origin.x = v14;
  v58.origin.y = v15;
  v58.size.width = v16;
  v58.size.height = v17;
  v59 = CGRectApplyAffineTransform(v58, &v57);
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  v52 = *(v2 + 112);
  v22 = type metadata accessor for Slot();
  v23 = v22[9];
  v24 = *(v2 + 96);
  v50 = vmulq_n_f64(*(v2 + 80), v55.f64[0]);
  v55 = vmulq_n_f64(v24, v55.f64[0]);
  sub_242CA321C(v2 + v23, v8, &qword_27ECF0B08);
  v26 = v22[9];
  v25 = v22[10];
  v46 = v26;
  v27 = (v2 + v25);
  v28 = v27[1];
  v49 = *v27;
  v44 = v28;
  v29 = type metadata accessor for Instrument();
  (*(*(v29 - 8) + 56))(a1 + v26, 1, 1, v29);
  v30 = v22[11];
  v45 = (a1 + v22[10]);
  v31 = a1 + v30;

  v32 = v48;
  v33 = v47;
  sub_242CF428C(v11, v10, v48, v47, v13, v56);

  v34 = v53;
  sub_242F03710();
  sub_242CA321C(v34, v31, &qword_27ECF2138);
  sub_242C6D138(v34, &qword_27ECF2138);
  *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140) + 52)) = 7;
  *(a1 + v22[12]) = 0;
  v35 = v43;
  *a1 = v42;
  *(a1 + 8) = v10;
  *(a1 + 16) = v32;
  *(a1 + 24) = v33;
  v36 = v56;
  *(a1 + 32) = v13;
  *(a1 + 40) = v36;
  *(a1 + 48) = x;
  *(a1 + 56) = y;
  *(a1 + 64) = width;
  *(a1 + 72) = height;
  v37 = v55;
  *(a1 + 80) = v50;
  *(a1 + 96) = v37;
  *(a1 + 120) = v54;
  *(a1 + 128) = v35;
  v38 = v51;
  *(a1 + 112) = v52;
  result = sub_242D8E414(v38, a1 + v46, &qword_27ECF0B08);
  v40 = v45;
  v41 = v44;
  *v45 = v49;
  v40[1] = v41;
  return result;
}

uint64_t EdgeInsets.encode(to:)(void *a1, double a2, double a3, double a4, double a5)
{
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064A0();
  v13 = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  sub_242C7DB7C();
  sub_242F05FA0();
  if (!v5)
  {
    v13 = a3;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_242F05FA0();
    v13 = a4;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_242F05FA0();
    v13 = a5;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    sub_242F05FA0();
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v11);
}

void sub_242DA15D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_242DA1B70(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

unint64_t sub_242DA1734()
{
  result = qword_27ECF5670;
  if (!qword_27ECF5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5670);
  }

  return result;
}

unint64_t sub_242DA1788()
{
  result = qword_27ECF5678;
  if (!qword_27ECF5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5678);
  }

  return result;
}

unint64_t sub_242DA17DC()
{
  result = qword_27ECF5690;
  if (!qword_27ECF5690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5690);
  }

  return result;
}

unint64_t sub_242DA1830()
{
  result = qword_27ECF5698;
  if (!qword_27ECF5698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5698);
  }

  return result;
}

uint64_t sub_242DA1884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >= 2)
  {
  }

  return result;
}

uint64_t sub_242DA1898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2138);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_242DA1908()
{
  result = qword_27ECF56D0;
  if (!qword_27ECF56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF56D0);
  }

  return result;
}

unint64_t sub_242DA195C()
{
  result = qword_27ECF56D8;
  if (!qword_27ECF56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF56D8);
  }

  return result;
}

unint64_t sub_242DA19B0()
{
  result = qword_27ECF5708;
  if (!qword_27ECF5708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5708);
  }

  return result;
}

uint64_t sub_242DA1A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Slot();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242DA1A68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_242DA1AC8()
{
  result = qword_27ECF5738;
  if (!qword_27ECF5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5738);
  }

  return result;
}

unint64_t sub_242DA1B1C()
{
  result = qword_27ECF5740;
  if (!qword_27ECF5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5740);
  }

  return result;
}

double sub_242DA1B70(void *a1)
{
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F06460();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_242C7DBD0();
    sub_242F05F80();
    v2 = v5;
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_242F05F80();
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_242F05F80();
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_242F05F80();
    __swift_destroy_boxed_opaque_existential_2Tm(v6);
  }

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return v2;
}

unint64_t sub_242DA1D3C()
{
  result = qword_27ECF5748;
  if (!qword_27ECF5748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2138);
    sub_242DA2E8C(&qword_27ECF2258, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5748);
  }

  return result;
}

uint64_t sub_242DA1DF0(uint64_t a1)
{
  *(a1 + 16) = sub_242DA2E8C(&qword_27ECF5750, type metadata accessor for Slot);
  result = sub_242DA2E8C(&qword_27ECF5758, type metadata accessor for Slot);
  *(a1 + 24) = result;
  return result;
}

void sub_242DA1E9C()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_242DA1F94();
    if (v1 <= 0x3F)
    {
      sub_242DA1FEC();
      if (v2 <= 0x3F)
      {
        sub_242DA203C();
        if (v3 <= 0x3F)
        {
          sub_242DA2258();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_242DA1F94()
{
  if (!qword_27ECF5770)
  {
    type metadata accessor for Instrument();
    v0 = sub_242F05860();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF5770);
    }
  }
}

void sub_242DA1FEC()
{
  if (!qword_27ECF25D0)
  {
    v0 = sub_242F05860();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF25D0);
    }
  }
}

void sub_242DA203C()
{
  if (!qword_27ECF5778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2138);
    sub_242DA2108();
    sub_242DA2184(&qword_27ECF5718);
    sub_242DA2184(&qword_27ECF2150);
    v0 = type metadata accessor for SkipEncode();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF5778);
    }
  }
}

unint64_t sub_242DA2108()
{
  result = qword_27ECF5780;
  if (!qword_27ECF5780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5780);
  }

  return result;
}

uint64_t sub_242DA2184(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2138);
    v3 = MEMORY[0x277CC95F0];
    sub_242DA2E8C(&qword_27ECF2158, MEMORY[0x277CC95F0]);
    sub_242DA2E8C(&qword_27ECF2160, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_242DA2258()
{
  if (!qword_27ECF5788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF56E8);
    v0 = sub_242F05860();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF5788);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI4SlotV5StyleO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_242DA22D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 48))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242DA2328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

double sub_242DA238C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 40) = (a2 - 1);
  }

  return result;
}

unint64_t sub_242DA2420()
{
  result = qword_27ECF5790;
  if (!qword_27ECF5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5790);
  }

  return result;
}

unint64_t sub_242DA2478()
{
  result = qword_27ECF5798;
  if (!qword_27ECF5798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5798);
  }

  return result;
}

unint64_t sub_242DA24D0()
{
  result = qword_27ECF57A0;
  if (!qword_27ECF57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF57A0);
  }

  return result;
}

unint64_t sub_242DA2528()
{
  result = qword_27ECF57A8;
  if (!qword_27ECF57A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF57A8);
  }

  return result;
}

unint64_t sub_242DA2580()
{
  result = qword_27ECF57B0;
  if (!qword_27ECF57B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF57B0);
  }

  return result;
}

unint64_t sub_242DA25D8()
{
  result = qword_27ECF57B8;
  if (!qword_27ECF57B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF57B8);
  }

  return result;
}

unint64_t sub_242DA2630()
{
  result = qword_27ECF57C0;
  if (!qword_27ECF57C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF57C0);
  }

  return result;
}

unint64_t sub_242DA2688()
{
  result = qword_27ECF57C8;
  if (!qword_27ECF57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF57C8);
  }

  return result;
}

unint64_t sub_242DA26E0()
{
  result = qword_27ECF57D0;
  if (!qword_27ECF57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF57D0);
  }

  return result;
}

unint64_t sub_242DA2738()
{
  result = qword_27ECF57D8;
  if (!qword_27ECF57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF57D8);
  }

  return result;
}

unint64_t sub_242DA2790()
{
  result = qword_27ECF57E0;
  if (!qword_27ECF57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF57E0);
  }

  return result;
}

unint64_t sub_242DA27E8()
{
  result = qword_27ECF57E8;
  if (!qword_27ECF57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF57E8);
  }

  return result;
}

unint64_t sub_242DA2840()
{
  result = qword_27ECF57F0;
  if (!qword_27ECF57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF57F0);
  }

  return result;
}

uint64_t sub_242DA2894(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616C7563726963 && a2 == 0xE800000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75676E6174636572 && a2 == 0xEB0000000072616CLL || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656E726F63 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242DA29AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802723693 && a2 == 0xE400000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69646152676E6972 && a2 == 0xEA00000000007375 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E6543676E6972 && a2 == 0xEF746E696F507265 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242F5B220 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242DA2B28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6165724165666173 && a2 == 0xEE00737465736E49 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xEA00000000006449 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D757274736E69 && a2 == 0xEA0000000000746ELL || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5B240 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073)
  {

    return 8;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_242DA2E1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2138);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_242DA2E8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242DA2ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t sub_242DA2EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t WidgetModel.init(id:isDismissible:preferPopoverPresentation:widgetInfo:dismissedHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a5 + 16);
  *(a8 + 24) = *a5;
  v9 = *(a5 + 32);
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 17) = a4;
  *(a8 + 40) = v8;
  *(a8 + 56) = v9;
  *(a8 + 57) = v9 == 1;
  *(a8 + 64) = a6;
  *(a8 + 72) = a7;
  return result;
}

uint64_t WidgetModel.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WidgetModel.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WidgetModel.widgetInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 56);
  *(a1 + 32) = v6;
  return sub_242CF6A84(v2, v3, v4, v5, v6);
}

__n128 WidgetModel.widgetInfo.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_242CF6AD8(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  result = *a1;
  *(v1 + 40) = *(a1 + 16);
  *(v1 + 24) = result;
  *(v1 + 56) = v3;
  return result;
}

uint64_t sub_242DA30D8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_242D5A6E0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_242C5573C(v3);
}

uint64_t sub_242DA3158(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_242D5A674;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 64);
  sub_242C5573C(v3);
  result = sub_242C655DC(v7);
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  return result;
}

uint64_t WidgetModel.dismissedHandler.getter()
{
  v1 = *(v0 + 64);
  sub_242C5573C(v1);
  return v1;
}

uint64_t WidgetModel.dismissedHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_242C655DC(*(v2 + 64));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

Swift::Double_optional __swiftcall WidgetModel.doubleValue()()
{
  v0 = 0;
  result.is_nil = v0;
  return result;
}

BOOL _s14CarPlayAssetUI11WidgetModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a2 + 16);
  v10 = *(a2 + 17);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v16 = 0;
    if (v2 != v9 || ((v3 ^ v10) & 1) != 0)
    {
      return v16;
    }

LABEL_9:
    v28 = v4;
    v29 = v5;
    v30 = v6;
    v31 = v7;
    v32 = v8;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    v27 = v15;
    sub_242CF6A84(v4, v5, v6, v7, v8);
    sub_242CF6A84(v11, v12, v13, v14, v15);
    v16 = _s14CarPlayAssetUI10InstrumentV10WidgetInfoO2eeoiySbAE_AEtFZ_0(&v28, &v23);
    sub_242CF6AD8(v23, v24, v25, v26, v27);
    sub_242CF6AD8(v28, v29, v30, v31, v32);
    return v16;
  }

  v18 = *(a1 + 56);
  v19 = *(a1 + 48);
  v20 = *(a1 + 40);
  v21 = *(a1 + 32);
  v22 = *(a1 + 24);
  v16 = 0;
  if ((sub_242F06110() & 1) != 0 && ((v2 ^ v9) & 1) == 0)
  {
    v5 = v21;
    v4 = v22;
    v7 = v19;
    v6 = v20;
    v8 = v18;
    if (((v3 ^ v10) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  return v16;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_242DA3404(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_242DA344C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t SymbolConfiguration.assets.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 8);
  v6 = v0[5];
  v7 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_242F09510;
  *(v8 + 56) = &type metadata for VectorFont.Asset;
  *(v8 + 64) = &protocol witness table for VectorFont.Asset;
  v9 = swift_allocObject();
  *(v8 + 32) = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  v10 = v7;

  return v8;
}

void SymbolConfiguration.restoreAssets(from:)(void *a1)
{
  v3 = v2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v4);
  v6 = *v1;
  v7 = v1[1];
  v12 = 1;
  v8 = *(v5 + 8);

  v9 = v6;
  v10 = v3;
  v11 = v8(v9, v7, &v12, v4, v5);

  if (!v10)
  {

    v1[6] = v11;
  }
}

uint64_t SymbolConfiguration.font.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_242D67214(v7, &v6);
}

__n128 SymbolConfiguration.font.setter(uint64_t a1)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v4 = v1[3];
  v8[2] = v1[2];
  v8[3] = v4;
  sub_242D67270(v8);
  v5 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v7;
  return result;
}

uint64_t SymbolConfiguration.symbolNames.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t SymbolConfiguration.colorIDs.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

__n128 SymbolConfiguration.init(font:symbolNames:colorIDs:symbolDataIdentifier:colorDataIdentifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  v7 = *a5;
  v8 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(a6 + 32) = result;
  *(a6 + 48) = v10;
  *(a6 + 64) = a2;
  *(a6 + 72) = a3;
  *(a6 + 80) = v6;
  *(a6 + 81) = v7;
  return result;
}

uint64_t SymbolConfiguration.init(font:symbolName:colorID:symbolDataIdentifier:colorDataIdentifier:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a4;
  v11 = a4[1];
  v12 = *(a4 + 16);
  v13 = *a5;
  v14 = *a6;
  *(a7 + 80) = 22102;
  v15 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v15;
  v16 = a1[3];
  *(a7 + 32) = a1[2];
  *(a7 + 48) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  *(inited + 32) = 0;
  v18 = inited + 32;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  v19 = sub_242CE7B58(inited);
  swift_setDeallocating();
  sub_242C6D138(v18, &qword_27ECF5808);
  *(a7 + 64) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3378);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_242F09510;
  *(v20 + 32) = 0;
  v21 = v20 + 32;
  *(v20 + 40) = v10;
  *(v20 + 48) = v11;
  *(v20 + 56) = v12;
  v22 = sub_242CE7008(v20);
  swift_setDeallocating();
  result = sub_242C6D138(v21, &qword_27ECF1F18);
  *(a7 + 72) = v22;
  *(a7 + 80) = v13;
  *(a7 + 81) = v14;
  return result;
}

uint64_t sub_242DA3988()
{
  v1 = *v0;
  v2 = 1953394534;
  v3 = 0x734449726F6C6F63;
  if (v1 == 3)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x614E6C6F626D7973;
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

uint64_t sub_242DA3A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242DA4C64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242DA3A54(uint64_t a1)
{
  v2 = sub_242DA4994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242DA3A90(uint64_t a1)
{
  v2 = sub_242DA4994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5810);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = v1[1];
  v30 = *v1;
  v31 = v7;
  v8 = v1[3];
  v32 = v1[2];
  v33 = v8;
  v9 = *(v1 + 9);
  v18 = *(v1 + 8);
  v17 = v9;
  v16 = *(v1 + 80);
  v10 = *(v1 + 81);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242D67214(&v30, &v26);
  sub_242DA4994();
  sub_242F064C0();
  v26 = v30;
  v27 = v31;
  v28 = v32;
  v29 = v33;
  v25 = 0;
  sub_242D67318();
  v11 = v34;
  sub_242F05F20();
  if (v11)
  {
    v21 = v26;
    v22 = v27;
    v23 = v28;
    v24 = v29;
    sub_242D67270(&v21);
  }

  else
  {
    v12 = v17;
    v13 = v16;
    v21 = v26;
    v22 = v27;
    v23 = v28;
    v24 = v29;
    sub_242D67270(&v21);
    v20 = v18;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3438);
    sub_242D491A0(&qword_27ECF3440);
    sub_242F05F20();
    v20 = v12;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8);
    sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0);
    sub_242F05F20();
    LOBYTE(v20) = v13;
    v19 = 3;
    sub_242C8AC28();
    sub_242F05EB0();
    LOBYTE(v20) = v10;
    v19 = 4;
    sub_242F05EB0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SymbolConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 81);
  VectorFont.Asset.hash(into:)();
  v8 = 0.0;
  if (v3 != 0.0)
  {
    v8 = v3;
  }

  MEMORY[0x245D279D0](*&v8);
  sub_242C796C4(a1, v4);
  sub_242C79508(a1, v5);
  if (v6 != 86)
  {
    sub_242F063B0();
    InstrumentDataIdentifier.rawValue.getter();
    sub_242F04DD0();

    if (v7 != 86)
    {
      goto LABEL_5;
    }

    return sub_242F063B0();
  }

  sub_242F063B0();
  if (v7 == 86)
  {
    return sub_242F063B0();
  }

LABEL_5:
  sub_242F063B0();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t SymbolConfiguration.hashValue.getter()
{
  sub_242F06390();
  SymbolConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t SymbolConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5820);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242DA4994();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(v24);
  }

  v10 = v6;
  v23 = a2;
  v44 = 0;
  sub_242D6736C();
  v11 = v5;
  sub_242F05E00();
  v37 = v33;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3438);
  LOBYTE(v25[0]) = 1;
  sub_242D491A0(&qword_27ECF3450);
  sub_242F05E00();
  v12 = *&v28[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8);
  LOBYTE(v25[0]) = 2;
  sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC);
  sub_242F05E00();
  v22 = v12;
  v13 = *&v28[0];
  LOBYTE(v25[0]) = 3;
  sub_242C8AC7C();
  sub_242F05D90();
  v41 = LOBYTE(v28[0]);
  v42 = 4;
  sub_242F05D90();
  (*(v10 + 8))(v8, v11);
  v14 = v43;
  v15 = v37;
  v16 = v38;
  v25[0] = v37;
  v25[1] = v38;
  v17 = v40;
  v25[2] = v39;
  v25[3] = v40;
  v18 = v22;
  v19 = v23;
  *&v26 = v22;
  *(&v26 + 1) = v13;
  LOBYTE(v11) = v41;
  LOBYTE(v27) = v41;
  HIBYTE(v27) = v43;
  *(v23 + 32) = v39;
  *(v19 + 48) = v17;
  *v19 = v15;
  *(v19 + 16) = v16;
  *(v19 + 64) = v26;
  *(v19 + 80) = v27;
  sub_242DA49E8(v25, v28);
  __swift_destroy_boxed_opaque_existential_2Tm(v24);
  v28[0] = v37;
  v28[1] = v38;
  v28[2] = v39;
  v28[3] = v40;
  v29 = v18;
  v30 = v13;
  v31 = v11;
  v32 = v14;
  return sub_242D492F4(v28);
}

uint64_t sub_242DA44A4()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 8);
  v6 = v0[5];
  v7 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_242F09510;
  *(v8 + 56) = &type metadata for VectorFont.Asset;
  *(v8 + 64) = &protocol witness table for VectorFont.Asset;
  v9 = swift_allocObject();
  *(v8 + 32) = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  v10 = v7;

  return v8;
}

void sub_242DA457C(void *a1)
{
  v3 = v2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v4);
  v6 = *v1;
  v7 = v1[1];
  v12 = 1;
  v8 = *(v5 + 8);

  v9 = v6;
  v10 = v3;
  v11 = v8(v9, v7, &v12, v4, v5);

  if (!v10)
  {

    v1[6] = v11;
  }
}

uint64_t sub_242DA4664()
{
  sub_242F06390();
  SymbolConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242DA46A8()
{
  sub_242F06390();
  SymbolConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI19SymbolConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 64);
  v9 = *(a1 + 72);
  v39 = *(a1 + 80);
  v38 = *(a1 + 81);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = *(a2 + 8);
  v16 = a2[5];
  v17 = a2[6];
  v18 = *(a2 + 7);
  v20 = a2[8];
  v19 = a2[9];
  v21 = *(a2 + 80);
  v37 = *(a2 + 81);
  v44[0] = *a1;
  v44[1] = v2;
  v44[2] = v3;
  v44[3] = v4;
  v45 = v5;
  v46 = v6;
  v47 = v7;
  v40[0] = v11;
  v40[1] = v12;
  v40[2] = v13;
  v40[3] = v14;
  v41 = v15;
  v42 = v16;
  v43 = v17;
  v22 = v17;

  v23 = v7;

  LOBYTE(v2) = _s14CarPlayAssetUI10VectorFontV0C0V2eeoiySbAE_AEtFZ_0(v44, v40);
  v24 = v43;

  v25 = v47;

  result = 0;
  if ((v2 & 1) != 0 && v8 == v18)
  {
    if ((sub_242C7653C(v10, v20) & 1) == 0 || (sub_242C75A30(v9, v19) & 1) == 0)
    {
      return 0;
    }

    if (v39 == 86)
    {
      if (v21 != 86)
      {
        return 0;
      }
    }

    else
    {
      if (v21 == 86)
      {
        return 0;
      }

      LOBYTE(v44[0]) = v39;
      LOBYTE(v40[0]) = v21;
      v27 = InstrumentDataIdentifier.rawValue.getter();
      v29 = v28;
      if (v27 == InstrumentDataIdentifier.rawValue.getter() && v29 == v30)
      {
      }

      else
      {
        v31 = sub_242F06110();

        if ((v31 & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v38 == 86)
    {
      if (v37 == 86)
      {
        return 1;
      }
    }

    else if (v37 != 86)
    {
      LOBYTE(v44[0]) = v38;
      LOBYTE(v40[0]) = v37;
      v32 = InstrumentDataIdentifier.rawValue.getter();
      v34 = v33;
      if (v32 == InstrumentDataIdentifier.rawValue.getter() && v34 == v35)
      {
      }

      else
      {
        v36 = sub_242F06110();

        if ((v36 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_242DA4994()
{
  result = qword_27ECF5818;
  if (!qword_27ECF5818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5818);
  }

  return result;
}

unint64_t sub_242DA4A24()
{
  result = qword_27ECF5828;
  if (!qword_27ECF5828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5828);
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_242DA4A9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_242DA4AE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242DA4B60()
{
  result = qword_27ECF5830;
  if (!qword_27ECF5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5830);
  }

  return result;
}

unint64_t sub_242DA4BB8()
{
  result = qword_27ECF5838;
  if (!qword_27ECF5838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5838);
  }

  return result;
}

unint64_t sub_242DA4C10()
{
  result = qword_27ECF5840;
  if (!qword_27ECF5840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5840);
  }

  return result;
}

uint64_t sub_242DA4C64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953394534 && a2 == 0xE400000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEB0000000073656DLL || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x734449726F6C6F63 && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F5B260 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F5B280 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242DA4E24(uint64_t a1, const char *a2)
{
  v4 = sub_242F03960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppearanceLogger();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(v9 + 20);
  v13 = *v12;
  v14 = *(v12 + 16);
  sub_242DA5838(a1, v11);
  sub_242F03950();
  v15 = sub_242F03980();
  v25 = sub_242F05780();
  result = sub_242F05840();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v24 = a2;
  if ((v14 & 1) == 0)
  {
    if (!v13)
    {
      __break(1u);
LABEL_5:

      (*(v5 + 8))(v7, v4);
      return sub_242DA5A68(v11);
    }

    goto LABEL_10;
  }

  if (v13 >> 32)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v13 & 0xFFFFF800) == 0xD800)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (v13 >> 16 > 0x10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = &v27;
LABEL_10:
  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v26 = v18;
  *v17 = 136315138;
  v19 = &v11[*(v8 + 24)];
  if (v19[1])
  {
    v20 = *v19;
    v21 = v19[1];
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  sub_242DA5A68(v11);
  v22 = sub_242C8FD38(v20, v21, &v26);

  *(v17 + 4) = v22;
  v23 = sub_242F03940();
  _os_signpost_emit_with_name_impl(&dword_242C53000, v15, v25, v23, v13, v24, v17, 0xCu);
  __swift_destroy_boxed_opaque_existential_2Tm(v18);
  MEMORY[0x245D287D0](v18, -1, -1);
  MEMORY[0x245D287D0](v17, -1, -1);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_242DA50E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  sub_242DA5838(v3, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_242DA589C(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5868);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5870) + 36));
  *v11 = sub_242DA5900;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  sub_242DA5838(v3, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_242DA589C(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5878);
  v14 = (a3 + *(result + 36));
  *v14 = 0;
  v14[1] = 0;
  v14[2] = sub_242DA59F8;
  v14[3] = v12;
  return result;
}

uint64_t sub_242DA52A4()
{
  v0 = sub_242F039D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_242F039A0();
  __swift_allocate_value_buffer(v4, qword_27ED5D2C8);
  __swift_project_value_buffer(v4, qword_27ED5D2C8);
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27ED5D2E0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_242F03970();
}

uint64_t sub_242DA546C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_242F039D0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_242F039C0();
}

uint64_t sub_242DA54E4()
{
  sub_242DA56D0();
  result = sub_242F05850();
  qword_27ECF5848 = result;
  return result;
}

id static OS_os_log.runtimeIssuesLog.getter()
{
  if (qword_27ECEF4E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27ECF5848;

  return v0;
}

void static OS_os_log.runtimeIssuesLog.setter(uint64_t a1)
{
  if (qword_27ECEF4E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27ECF5848;
  qword_27ECF5848 = a1;
}

uint64_t (*static OS_os_log.runtimeIssuesLog.modify())()
{
  if (qword_27ECEF4E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_242DA56D0()
{
  result = qword_27ECF5850;
  if (!qword_27ECF5850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECF5850);
  }

  return result;
}

uint64_t type metadata accessor for AppearanceLogger()
{
  result = qword_27ECF5858;
  if (!qword_27ECF5858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_242DA5790()
{
  sub_242F039A0();
  if (v0 <= 0x3F)
  {
    sub_242DA1FEC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_242DA5838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppearanceLogger();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242DA589C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppearanceLogger();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(type metadata accessor for AppearanceLogger() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_242F039A0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_242DA5A68(uint64_t a1)
{
  v2 = type metadata accessor for AppearanceLogger();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242DA5AF4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242DA5B78()
{
  result = qword_27ECF5890;
  if (!qword_27ECF5890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5890);
  }

  return result;
}

uint64_t sub_242DA5BDC(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v4 = type metadata accessor for Slot();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v47 = v44 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v46 = (v44 - v12);
  MEMORY[0x28223BE20](v11);
  v14 = v44 - v13;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    return v16;
  }

  v44[1] = v2;
  v56 = MEMORY[0x277D84F90];
  sub_242E3BEB0(0, v15, 0);
  v17 = 0;
  v16 = v56;
  v55 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v54 = a1 + v55;
  v18 = *(v5 + 72);
  v45 = v15;
  while (1)
  {
    sub_242DB0050(v54 + v18 * v17, v14, type metadata accessor for Slot);
    v19 = *(v14 + 5);
    if (v19 >= 2)
    {
      break;
    }

LABEL_17:
    v56 = v16;
    v42 = *(v16 + 16);
    v41 = *(v16 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_242E3BEB0(v41 > 1, v42 + 1, 1);
      v16 = v56;
    }

    ++v17;
    *(v16 + 16) = v42 + 1;
    sub_242DAFEF8(v14, v16 + v55 + v42 * v18, type metadata accessor for Slot);
    if (v17 == v15)
    {
      return v16;
    }
  }

  v50 = v17;
  v51 = v16;
  v20 = *(v14 + 3);
  v21 = *(v14 + 4);
  v22 = *(v14 + 1);
  v52 = *(v14 + 2);
  v53 = v20;
  v23 = *v14;
  v24 = *(v48 + *(type metadata accessor for Component() + 36));
  v25 = *(v24 + 16);
  v49 = v23;
  sub_242CF428C(v23, v22, v52, v53, v21, v19);

  if (v25)
  {
    v26 = 0;
    v27 = v24 + v55;
    while (1)
    {
      if (v26 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      sub_242DB0050(v27, v8, type metadata accessor for Slot);
      v28 = *(v8 + 15) == v21 && v19 == *(v8 + 16);
      if (v28 || (sub_242F06110() & 1) != 0)
      {
        break;
      }

      ++v26;
      sub_242DB00B8(v8, type metadata accessor for Slot);
      v27 += v18;
      if (v25 == v26)
      {
        goto LABEL_22;
      }
    }

    v29 = v47;
    sub_242DAFEF8(v8, v47, type metadata accessor for Slot);
    v30 = v29;
    v31 = v46;
    sub_242DAFEF8(v30, v46, type metadata accessor for Slot);
    v32 = v31[6];
    v33 = v31[7];
    v34 = v31[8];
    v35 = v31[9];
    v57.origin.x = v32;
    v57.origin.y = v33;
    v57.size.width = v34;
    v57.size.height = v35;
    Width = CGRectGetWidth(v57);
    v58.origin.x = v32;
    v58.origin.y = v33;
    v58.size.width = v34;
    v58.size.height = v35;
    Height = CGRectGetHeight(v58);
    if (Height >= Width)
    {
      Height = Width;
    }

    v38 = Height * 0.5 + 15.0 + 20.0;
    v59.origin.x = v32;
    v59.origin.y = v33;
    v59.size.width = v34;
    v59.size.height = v35;
    MidX = CGRectGetMidX(v59);
    v60.origin.x = v32;
    v60.origin.y = v33;
    v60.size.width = v34;
    v60.size.height = v35;
    MidY = CGRectGetMidY(v60);
    sub_242DB00B8(v31, type metadata accessor for Slot);
    sub_242DA1884(*v14, *(v14 + 1), *(v14 + 2), *(v14 + 3), *(v14 + 4), *(v14 + 5));
    v17 = v50;
    *v14 = v49;
    *(v14 + 1) = v38;
    *(v14 + 2) = MidX;
    *(v14 + 3) = MidY;
    *(v14 + 4) = v21;
    *(v14 + 5) = v19;
    v15 = v45;
    v16 = v51;
    goto LABEL_17;
  }

LABEL_22:

  result = sub_242F05C60();
  __break(1u);
  return result;
}

size_t LayoutTemplate.scaledZones(for:)(double a1, double a2)
{
  v5 = type metadata accessor for Slot();
  v129 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v109 - v9);
  v11 = type metadata accessor for Component();
  v111 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v109 - v15;
  v17 = type metadata accessor for Zone();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v122 = &v109 - v22;
  v23 = type metadata accessor for LayoutTemplate();
  v24 = *(v2 + *(v23 + 28));
  v25 = *(v24 + 16);
  if (!v25)
  {
    return MEMORY[0x277D84F90];
  }

  v26 = (v2 + *(v23 + 24));
  v27 = v26[1];
  v118 = a1 / *v26;
  v155 = MEMORY[0x277D84F90];
  v117 = a2 / v27;
  v121 = v25;
  result = sub_242E3BF10(0, v25, 0);
  v29 = 0;
  v136 = 0;
  v125 = v155;
  v116 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v115 = v24 + v116;
  v120 = v18;
  v112 = v21;
  v30 = v21;
  v128 = v11;
  v127 = v14;
  v126 = v16;
  v110 = v17;
  v119 = v24;
  while (v29 < *(v24 + 16))
  {
    v31 = *(v120 + 72);
    v124 = v29;
    v123 = v31;
    sub_242DB0050(v115 + v31 * v29, v30, type metadata accessor for Zone);
    v32 = v122;
    sub_242DB0050(v30, v122, type metadata accessor for Zone);
    v33 = (v32 + *(v17 + 24));
    v34 = *v33;
    v35 = v33[1];
    v36 = v33[2];
    v37 = v33[3];
    CGAffineTransformMakeScale(&v154, v118, v117);
    v156.origin.x = v34;
    v156.origin.y = v35;
    v156.size.width = v36;
    v156.size.height = v37;
    v157 = CGRectApplyAffineTransform(v156, &v154);
    *v33 = v157;
    v38 = v157.size.width == v36 && v157.size.height == v37;
    if (v38)
    {
      sub_242DB00B8(v30, type metadata accessor for Zone);
      v102 = v32;
    }

    else
    {
      v39 = *(v17 + 28);
      v40 = v17;
      v41 = *(v32 + v39);
      v42 = *(v41 + 16);
      if (v42)
      {
        width = v157.size.width;
        height = v157.size.height;
        v114 = v39;
        v153 = MEMORY[0x277D84F90];
        sub_242E3BE90(0, v42, 0);
        v45 = v41;
        v46 = 0;
        v47 = v153;
        v48 = (*(v111 + 80) + 32) & ~*(v111 + 80);
        v113 = v45;
        v139 = v48;
        v138 = v45 + v48;
        v49 = *(v111 + 72);
        v132 = v42;
        v131 = width;
        v130 = height;
        v137 = v49;
        do
        {
          sub_242DB0050(v138 + v49 * v46, v14, type metadata accessor for Component);
          sub_242DB0050(v14, v16, type metadata accessor for Component);
          v50 = &v16[*(v11 + 28)];
          v52 = *v50;
          v51 = v50[1];
          *v50 = width;
          v50[1] = height;
          if (width != v52 || height != v51)
          {
            v135 = v47;
            v54 = *(v11 + 36);
            v55 = *&v16[v54];
            v56 = *(v55 + 16);
            v57 = MEMORY[0x277D84F90];
            if (v56)
            {
              v134 = *(v11 + 36);
              v148 = width / v52;
              v152 = MEMORY[0x277D84F90];
              v140 = height / v51;
              v58 = v55;
              sub_242E3BEB0(0, v56, 0);
              v57 = v152;
              v59 = (*(v129 + 80) + 32) & ~*(v129 + 80);
              v133 = v58;
              v60 = v58 + v59;
              v61 = *(v129 + 72);
              do
              {
                sub_242DB0050(v60, v8, type metadata accessor for Slot);
                sub_242DB0050(v8, v10, type metadata accessor for Slot);
                v62 = v10[6];
                v63 = v10[7];
                v64 = v10[8];
                v65 = v10[9];
                v66 = v140;
                CGAffineTransformMakeScale(&v154, v148, v140);
                v158.origin.x = v62;
                v158.origin.y = v63;
                v158.size.width = v64;
                v158.size.height = v65;
                v159 = CGRectApplyAffineTransform(v158, &v154);
                x = v159.origin.x;
                y = v159.origin.y;
                v149 = v159.size.height;
                v150 = v159.size.width;
                v68 = v10[10];
                v67 = v10[11];
                v69 = v10[13];
                v144 = v10[12];
                v159.origin.x = v62;
                v159.origin.y = v63;
                v159.size.width = v64;
                v159.size.height = v65;
                v146 = v67 + CGRectGetMinX(v159);
                v160.origin.x = v62;
                v160.origin.y = v63;
                v160.size.width = v64;
                v160.size.height = v65;
                v145 = v68 + CGRectGetMinY(v160);
                v161.origin.x = v62;
                v161.origin.y = v63;
                v161.size.width = v64;
                v161.size.height = v65;
                v70 = CGRectGetWidth(v161) - v69 - v67;
                v162.origin.x = v62;
                v162.origin.y = v63;
                v162.size.width = v64;
                v162.size.height = v65;
                v71 = CGRectGetHeight(v162) - v144 - v68;
                CGAffineTransformMakeScale(&v154, v148, v66);
                v163.origin.x = v146;
                v163.origin.y = v145;
                v163.size.width = v70;
                v163.size.height = v71;
                v164 = CGRectApplyAffineTransform(v163, &v154);
                v141 = v164.size.width;
                v72 = v164.size.height;
                v73 = v164.origin.x;
                v143 = v164.origin.x;
                v74 = v164.origin.y;
                v142 = v164.origin.y;
                MinY = CGRectGetMinY(v164);
                v77 = v150;
                v76 = x;
                v165.origin.x = x;
                v78 = y;
                v165.origin.y = y;
                v165.size.width = v150;
                v79 = v149;
                v165.size.height = v149;
                v146 = MinY - CGRectGetMinY(v165);
                v166.origin.x = v73;
                v166.origin.y = v74;
                v80 = v141;
                v166.size.width = v141;
                v166.size.height = v72;
                MinX = CGRectGetMinX(v166);
                v167.origin.x = v76;
                v167.origin.y = v78;
                v167.size.width = v77;
                v167.size.height = v79;
                v82 = v79;
                v145 = MinX - CGRectGetMinX(v167);
                v168.origin.x = v76;
                v83 = v78;
                v168.origin.y = v78;
                v168.size.width = v77;
                v84 = v82;
                v168.size.height = v82;
                MaxY = CGRectGetMaxY(v168);
                v86 = v143;
                v169.origin.x = v143;
                v87 = v142;
                v169.origin.y = v142;
                v169.size.width = v80;
                v169.size.height = v72;
                v144 = MaxY - CGRectGetMaxY(v169);
                v88 = v150;
                v89 = x;
                v170.origin.x = x;
                v170.origin.y = v83;
                v170.size.width = v150;
                v170.size.height = v84;
                MaxX = CGRectGetMaxX(v170);
                v171.origin.x = v86;
                v171.origin.y = v87;
                v171.size.width = v80;
                v171.size.height = v72;
                v91 = CGRectGetMaxX(v171);
                sub_242DB00B8(v8, type metadata accessor for Slot);
                v10[6] = v89;
                v10[7] = v83;
                v92 = v149;
                v10[8] = v88;
                v10[9] = v92;
                v93 = v145;
                v10[10] = v146;
                v10[11] = v93;
                v10[12] = v144;
                v10[13] = MaxX - v91;
                v152 = v57;
                v95 = *(v57 + 16);
                v94 = *(v57 + 24);
                if (v95 >= v94 >> 1)
                {
                  sub_242E3BEB0(v94 > 1, v95 + 1, 1);
                  v57 = v152;
                }

                *(v57 + 16) = v95 + 1;
                sub_242DAFEF8(v10, v57 + v59 + v95 * v61, type metadata accessor for Slot);
                v60 += v61;
                --v56;
              }

              while (v56);

              v11 = v128;
              v14 = v127;
              v16 = v126;
              width = v131;
              height = v130;
              v54 = v134;
            }

            else
            {
            }

            *&v16[v54] = v57;

            v97 = v136;
            v98 = sub_242DA5BDC(v96, v16);
            v136 = v97;
            swift_bridgeObjectRelease_n();
            *&v16[v54] = v98;
            v42 = v132;
            v47 = v135;
          }

          sub_242DB00B8(v14, type metadata accessor for Component);
          v153 = v47;
          v100 = *(v47 + 16);
          v99 = *(v47 + 24);
          if (v100 >= v99 >> 1)
          {
            sub_242E3BE90(v99 > 1, v100 + 1, 1);
            v42 = v132;
            v47 = v153;
          }

          ++v46;
          *(v47 + 16) = v100 + 1;
          v49 = v137;
          sub_242DAFEF8(v16, v47 + v139 + v100 * v137, type metadata accessor for Component);
        }

        while (v46 != v42);
        v101 = v112;
        sub_242DB00B8(v112, type metadata accessor for Zone);

        v102 = v122;
        *(v122 + v114) = v47;
        v30 = v101;
        v17 = v110;
      }

      else
      {
        v103 = v112;
        sub_242DB00B8(v112, type metadata accessor for Zone);

        *(v32 + v39) = MEMORY[0x277D84F90];
        v102 = v32;
        v17 = v40;
        v30 = v103;
      }
    }

    v104 = v17;
    v105 = v125;
    v155 = v125;
    v107 = *(v125 + 16);
    v106 = *(v125 + 24);
    if (v107 >= v106 >> 1)
    {
      sub_242E3BF10(v106 > 1, v107 + 1, 1);
      v102 = v122;
      v30 = v112;
      v105 = v155;
    }

    v108 = v124 + 1;
    *(v105 + 16) = v107 + 1;
    v125 = v105;
    result = sub_242DAFEF8(v102, v105 + v116 + v107 * v123, type metadata accessor for Zone);
    v29 = v108;
    v38 = v108 == v121;
    v24 = v119;
    v17 = v104;
    if (v38)
    {
      return v125;
    }
  }

  __break(1u);
  return result;
}

uint64_t LayoutTemplate.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242F03720();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LayoutTemplate.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for LayoutTemplate() + 20));

  return v1;
}

int *LayoutTemplate.init(id:name:size:zones:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v14 = sub_242F03720();
  (*(*(v14 - 8) + 32))(a5, a1, v14);
  result = type metadata accessor for LayoutTemplate();
  v16 = (a5 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  *(a5 + result[7]) = a4;
  v17 = (a5 + result[6]);
  *v17 = a6;
  v17[1] = a7;
  return result;
}

uint64_t sub_242DA6D58()
{
  v1 = 25705;
  v2 = 1702521203;
  if (*v0 != 2)
  {
    v2 = 0x73656E6F7ALL;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_242DA6DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242DB040C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242DA6DDC(uint64_t a1)
{
  v2 = sub_242DAFF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242DA6E18(uint64_t a1)
{
  v2 = sub_242DAFF60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LayoutTemplate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF58B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DAFF60();
  sub_242F064C0();
  LOBYTE(v13) = 0;
  sub_242F03720();
  sub_242DB01D0(&qword_27ECF2160, MEMORY[0x277CC95F0]);
  sub_242F05F20();
  if (!v2)
  {
    v9 = type metadata accessor for LayoutTemplate();
    LOBYTE(v13) = 1;
    sub_242F05EC0();
    v13 = *(v3 + *(v9 + 24));
    v12 = 2;
    type metadata accessor for CGSize(0);
    sub_242DB01D0(&qword_27ECF58C8, type metadata accessor for CGSize);
    sub_242F05F20();
    *&v13 = *(v3 + *(v9 + 28));
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4680);
    sub_242DAFFB4(&qword_27ECF4688, &qword_27ECF2578);
    sub_242F05F20();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t LayoutTemplate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_242F03720();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF58D0);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for LayoutTemplate();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242DAFF60();
  v27 = v8;
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v21 = a1;
  v12 = v11;
  v13 = v23;
  LOBYTE(v28) = 0;
  sub_242DB01D0(&qword_27ECF2158, MEMORY[0x277CC95F0]);
  v14 = v24;
  v15 = v26;
  sub_242F05E00();
  (*(v13 + 32))(v12, v14, v4);
  LOBYTE(v28) = 1;
  v16 = sub_242F05DA0();
  v17 = (v12 + v9[5]);
  *v17 = v16;
  v17[1] = v18;
  type metadata accessor for CGSize(0);
  v29 = 2;
  sub_242DB01D0(&qword_27ECF58D8, type metadata accessor for CGSize);
  sub_242F05E00();
  *(v12 + v9[6]) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4680);
  v29 = 3;
  sub_242DAFFB4(&qword_27ECF46D8, &qword_27ECF2570);
  sub_242F05E00();
  (*(v25 + 8))(v27, v15);
  *(v12 + v9[7]) = v28;
  sub_242DB0050(v12, v22, type metadata accessor for LayoutTemplate);
  __swift_destroy_boxed_opaque_existential_2Tm(v21);
  return sub_242DB00B8(v12, type metadata accessor for LayoutTemplate);
}

double sub_242DA766C()
{
  v69 = sub_242F03720();
  v71 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v1 = &v53 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Component();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5908);
  v5 = (type metadata accessor for LayoutTemplate() - 8);
  v6 = *v5;
  v59 = *(*v5 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v56 = 4 * v59;
  v8 = swift_allocObject();
  v55 = xmmword_242F2EB70;
  v57 = v8;
  *(v8 + 16) = xmmword_242F2EB70;
  v9 = v8 + v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0360);
  v10 = *(type metadata accessor for Zone() - 8);
  v11 = *(v10 + 72);
  v12 = *(v10 + 80);
  v13 = (v12 + 32) & ~v12;
  v64 = 3 * v11;
  v14 = v11;
  v15 = 2 * v11;
  v65 = 2 * v11;
  v66 = v12;
  v16 = swift_allocObject();
  v68 = xmmword_242F15420;
  *(v16 + 16) = xmmword_242F15420;
  static Component.circular.getter(v4);
  sub_242DA8D38(1952867660, 0xE400000000000000, v4, v16 + v13, 30.0, 30.0, 600.0, 660.0);
  static Component.content.getter(v4);
  v17 = v14;
  v61 = v14;
  sub_242DA8D38(0x7265746E6543, 0xE600000000000000, v4, v16 + v13 + v14, 660.0, 30.0, 600.0, 660.0);
  static Component.circular.getter(v4);
  sub_242DA8D38(0x7468676952, 0xE500000000000000, v4, v16 + v13 + v15, 1290.0, 30.0, 600.0, 660.0);
  v62 = v1;
  sub_242F03710();
  v67 = *(v71 + 32);
  v71 += 32;
  v18 = v69;
  v67(v9, v1, v69);
  v19 = v5[7];
  v60 = v9;
  v20 = (v9 + v19);
  *v20 = 0x756147206C617544;
  v20[1] = 0xEA00000000006567;
  *(v9 + v5[9]) = v16;
  v21 = v5[8];
  v70 = xmmword_242F2EB80;
  *(v9 + v21) = xmmword_242F2EB80;
  v22 = v59;
  v23 = v9 + v59;
  v58 = v13;
  v24 = swift_allocObject();
  *(v24 + 16) = v68;
  v25 = v24 + v13;
  static Component.circular.getter(v4);
  sub_242DA8D38(1952867660, 0xE400000000000000, v4, v25, 30.0, 30.0, 600.0, 660.0);
  static Component.circular.getter(v4);
  sub_242DA8D38(0x7265746E6543, 0xE600000000000000, v4, v25 + v17, 660.0, 30.0, 600.0, 660.0);
  static Component.circular.getter(v4);
  sub_242DA8D38(0x7468676952, 0xE500000000000000, v4, v25 + v65, 1290.0, 30.0, 600.0, 660.0);
  v26 = v62;
  sub_242F03710();
  v27 = v9 + v22;
  v28 = v67;
  v67(v27, v26, v18);
  v29 = v23 + v5[7];
  strcpy(v29, "Triple Gauge");
  *(v29 + 13) = 0;
  *(v29 + 14) = -5120;
  *(v23 + v5[9]) = v24;
  *(v23 + v5[8]) = v70;
  v54 = 2 * v22;
  v30 = v60 + 2 * v22;
  v31 = v58;
  v32 = swift_allocObject();
  *(v32 + 16) = v68;
  v33 = v32 + v31;
  static Component.modular.getter(v4);
  sub_242DA8D38(1952867660, 0xE400000000000000, v4, v33, 30.0, 30.0, 600.0, 660.0);
  static Component.modularCompact.getter(v4);
  sub_242DA8D38(0x7265746E6543, 0xE600000000000000, v4, v33 + v61, 660.0, 30.0, 600.0, 660.0);
  static Component.modularCompact.getter(v4);
  v34 = v65;
  sub_242DA8D38(0x7468676952, 0xE500000000000000, v4, v33 + v65, 1290.0, 30.0, 600.0, 660.0);
  v35 = v62;
  sub_242F03710();
  v28(v30, v35, v69);
  v36 = (v30 + v5[7]);
  *v36 = 0x72616C75646F4DLL;
  v36[1] = 0xE700000000000000;
  *(v30 + v5[9]) = v32;
  *(v30 + v5[8]) = v70;
  v37 = v60;
  v38 = v60 + v54 + v59;
  v39 = v58;
  v40 = swift_allocObject();
  *(v40 + 16) = v68;
  v41 = v40 + v39;
  v42 = v39;
  static Component.sportLeft.getter(v4);
  sub_242DA8D38(1952867660, 0xE400000000000000, v4, v40 + v39, 30.0, 30.0, 600.0, 660.0);
  static Component.sport.getter(v4);
  v43 = v61;
  sub_242DA8D38(0x7265746E6543, 0xE600000000000000, v4, v41 + v61, 660.0, 30.0, 600.0, 660.0);
  static Component.sportRight.getter(v4);
  sub_242DA8D38(0x7468676952, 0xE500000000000000, v4, v41 + v34, 1290.0, 30.0, 600.0, 660.0);
  v44 = v62;
  sub_242F03710();
  v67(v38, v44, v69);
  v45 = (v38 + v5[7]);
  *v45 = 0x61472069746C754DLL;
  v45[1] = 0xEB00000000656775;
  *(v38 + v5[9]) = v40;
  *(v38 + v5[8]) = v70;
  v46 = v37 + v56;
  v47 = swift_allocObject();
  *(v47 + 16) = v55;
  static Component.mapsMediaContent.getter(v4);
  sub_242DA8D38(0x616964654D70614DLL, 0xE800000000000000, v4, v47 + v42, 0.0, 0.0, 1920.0, 720.0);
  static Component.mapsMediaLong.getter(v4);
  sub_242DA8D38(1735290700, 0xE400000000000000, v4, v47 + v42 + v43, 0.0, 0.0, 1920.0, 720.0);
  v72.origin.x = 0.0;
  v72.origin.y = 0.0;
  v72.size.width = 1920.0;
  v72.size.height = 720.0;
  Height = CGRectGetHeight(v72);
  static Component.mapsMediaLeft.getter(v4);
  sub_242DA8D38(1952867660, 0xE400000000000000, v4, v47 + v42 + v65, 30.0, 0.0, 600.0, Height);
  v73.origin.x = 0.0;
  v73.origin.y = 0.0;
  v73.size.width = 1920.0;
  v73.size.height = 720.0;
  v49 = CGRectGetHeight(v73);
  static Component.mapsMediaCenter.getter(v4);
  sub_242DA8D38(0x7265746E6543, 0xE600000000000000, v4, v47 + v42 + v64, 660.0, 0.0, 600.0, v49);
  v74.origin.x = 0.0;
  v74.origin.y = 0.0;
  v74.size.width = 1920.0;
  v74.size.height = 720.0;
  v50 = CGRectGetHeight(v74);
  static Component.mapsMediaRight.getter(v4);
  sub_242DA8D38(0x7468676952, 0xE500000000000000, v4, v47 + v42 + 4 * v43, 1290.0, 0.0, 600.0, v50);
  sub_242F03710();
  v67(v46, v44, v69);
  v51 = v46 + v5[7];
  strcpy(v51, "Maps & Media");
  *(v51 + 13) = 0;
  *(v51 + 14) = -5120;
  *(v46 + v5[9]) = v47;
  result = *&v70;
  *(v46 + v5[8]) = v70;
  off_27ECF5898 = v57;
  return result;
}

int *static Component.circular.getter@<X0>(uint64_t a1@<X8>)
{
  v117 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  MEMORY[0x28223BE20](v1 - 8);
  v119 = &v115 - v2;
  v3 = type metadata accessor for Slot();
  v4 = (v3 - 8);
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = (&v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v115 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330);
  v127 = *(v5 + 72);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v116 = 8 * v127;
  v12 = swift_allocObject();
  v118 = v12;
  *(v12 + 16) = xmmword_242F0C2E0;
  v13 = v12 + v11;
  v14 = type metadata accessor for Instrument();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = v15 + 56;
  v16(v10, 1, 1, v14);
  v18 = v4[11];
  v16(&v7->i8[v18], 1, 1, v14);
  v19 = &v7->i8[v4[12]];
  v20 = &v7->i8[v4[13]];
  sub_242F03710();
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140);
  *&v20[*(v122 + 52)] = 7;
  *(v7->i64 + v4[14]) = 0;
  v7[7].i64[1] = 12621;
  v7[8].i64[0] = 0xE200000000000000;
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = xmmword_242F2EB90;
  v7[4] = vdupq_n_s64(0x4082700000000000uLL);
  v132 = 0u;
  v133 = 0u;
  v131 = 0u;
  *v7[5].i64 = sub_242D9F83C(&v131, 5.0, 35.0, 590.0, 590.0);
  v7[5].i64[1] = v21;
  v7[6].i64[0] = v22;
  v7[6].i64[1] = v23;
  v7[7].i64[0] = 0;
  sub_242CF42A0(v10, v7->i64 + v18);
  *v19 = 0;
  *(v19 + 1) = 0;
  v121 = type metadata accessor for Slot;
  v24 = v13;
  v120 = v13;
  sub_242DAFEF8(v7, v13, type metadata accessor for Slot);
  v128 = v16;
  v126 = v17;
  v16(v10, 1, 1, v14);
  v25 = v4[11];
  v16(&v7->i8[v25], 1, 1, v14);
  v26 = v4[12];
  v27 = &v7->i8[v4[13]];
  sub_242F03710();
  v28 = v122;
  *&v27[*(v122 + 52)] = 7;
  *(v7->i64 + v4[14]) = 0;
  v7[7].i64[1] = 12877;
  v7[8].i64[0] = 0xE200000000000000;
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = xmmword_242F2EBA0;
  v124 = vdupq_n_s64(0x4060400000000000uLL);
  v7[4] = v124;
  v132 = 0u;
  v133 = 0u;
  v131 = 0u;
  *v7[5].i64 = sub_242D9F83C(&v131, 235.0, 120.0, 130.0, 130.0);
  v7[5].i64[1] = v29;
  v7[6].i64[0] = v30;
  v7[6].i64[1] = v31;
  v7[7].i64[0] = 1;
  sub_242CF42A0(v10, v7->i64 + v25);
  v129 = xmmword_242F2EBB0;
  *(v7 + v26) = xmmword_242F2EBB0;
  v32 = v127;
  v33 = v121;
  sub_242DAFEF8(v7, v24 + v127, v121);
  v34 = 2 * v32;
  v35 = v10;
  v36 = v128;
  v128(v10, 1, 1, v14);
  v37 = v4[11];
  v36(&v7->i8[v37], 1, 1, v14);
  v38 = v4[13];
  *&v123 = v4[12];
  v39 = &v7->i8[v38];
  sub_242F03710();
  v40 = v28;
  *&v39[*(v28 + 52)] = 7;
  *(v7->i64 + v4[14]) = 0;
  v7[7].i64[1] = 13133;
  v7[8].i64[0] = 0xE200000000000000;
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = xmmword_242F2EBC0;
  v7[4] = v124;
  v132 = 0u;
  v133 = 0u;
  v131 = 0u;
  *v7[5].i64 = sub_242D9F83C(&v131, 90.0, 240.0, 130.0, 130.0);
  v7[5].i64[1] = v41;
  v7[6].i64[0] = v42;
  v7[6].i64[1] = v43;
  v7[7].i64[0] = 1;
  v44 = v35;
  v125 = v35;
  sub_242CF42A0(v35, v7->i64 + v37);
  *(v7 + v123) = v129;
  v45 = v120;
  sub_242DAFEF8(v7, v120 + v34, v33);
  v46 = v127;
  *&v123 = v34 + v127;
  v47 = v128;
  v128(v44, 1, 1, v14);
  v48 = v4[11];
  v47(&v7->i8[v48], 1, 1, v14);
  v49 = v4[12];
  v50 = &v7->i8[v4[13]];
  sub_242F03710();
  *&v50[*(v40 + 52)] = 7;
  *(v7->i64 + v4[14]) = 0;
  v7[7].i64[1] = 13389;
  v7[8].i64[0] = 0xE200000000000000;
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = xmmword_242F2EBD0;
  v7[4] = v124;
  v132 = 0u;
  v133 = 0u;
  v131 = 0u;
  *v7[5].i64 = sub_242D9F83C(&v131, 380.0, 240.0, 130.0, 130.0);
  v7[5].i64[1] = v51;
  v7[6].i64[0] = v52;
  v7[6].i64[1] = v53;
  v7[7].i64[0] = 1;
  v54 = v125;
  sub_242CF42A0(v125, v7->i64 + v48);
  *(v7 + v49) = v129;
  v55 = v45;
  sub_242DAFEF8(v7, v45 + v123, v33);
  v56 = v14;
  v57 = v128;
  v128(v54, 1, 1, v14);
  v58 = v4[11];
  v57(&v7->i8[v58], 1, 1, v14);
  v59 = &v7->i8[v4[12]];
  v60 = &v7->i8[v4[13]];
  sub_242F03710();
  v61 = v122;
  *&v60[*(v122 + 52)] = 7;
  *(v7->i64 + v4[14]) = 0;
  v7[7].i64[1] = 12611;
  v7[8].i64[0] = 0xE200000000000000;
  v124 = xmmword_242F2EBF0;
  *v7 = xmmword_242F2EBE0;
  v7[1] = xmmword_242F2EBF0;
  v7[2] = v129;
  v7[3].i64[0] = 0;
  v7[3].i64[1] = 0;
  v123 = xmmword_242F2EC00;
  v7[4] = xmmword_242F2EC00;
  v7[5] = 0u;
  v7[6] = 0u;
  v7[7].i64[0] = 0;
  v62 = v125;
  sub_242CF42A0(v125, v7->i64 + v58);
  *v59 = 0;
  *(v59 + 1) = 0;
  v63 = 4 * v46;
  v64 = v55 + 4 * v46;
  v65 = v121;
  sub_242DAFEF8(v7, v64, v121);
  v115 = v63 + v127;
  v66 = v62;
  v67 = v128;
  v128(v66, 1, 1, v56);
  v68 = v4[11];
  v67(&v7->i8[v68], 1, 1, v56);
  v69 = &v7->i8[v4[12]];
  v70 = &v7->i8[v4[13]];
  sub_242F03710();
  *&v70[*(v61 + 52)] = 7;
  *(v7->i64 + v4[14]) = 0;
  v7[7].i64[1] = 12867;
  v7[8].i64[0] = 0xE200000000000000;
  v71 = v124;
  *v7 = xmmword_242F2EC10;
  v7[1] = v71;
  v7[2] = v129;
  v7[3] = xmmword_242F2EC20;
  v7[4] = v123;
  v7[5] = 0u;
  v7[6] = 0u;
  v7[7].i64[0] = 0;
  v72 = v125;
  sub_242CF42A0(v125, v7->i64 + v68);
  *v69 = 0;
  *(v69 + 1) = 0;
  sub_242DAFEF8(v7, v55 + v115, v65);
  v73 = v127;
  v115 = v55 + 6 * v127;
  v74 = v72;
  v75 = v128;
  v128(v74, 1, 1, v56);
  v76 = v4[11];
  v75(&v7->i8[v76], 1, 1, v56);
  v77 = &v7->i8[v4[12]];
  v78 = &v7->i8[v4[13]];
  sub_242F03710();
  v79 = v122;
  *&v78[*(v122 + 52)] = 7;
  *(v7->i64 + v4[14]) = 0;
  v7[7].i64[1] = 13123;
  v7[8].i64[0] = 0xE200000000000000;
  v80 = v124;
  *v7 = xmmword_242F2EC30;
  v7[1] = v80;
  v7[2] = v129;
  v7[3] = xmmword_242F2EC40;
  v7[4] = v123;
  v7[5] = 0u;
  v7[6] = 0u;
  v7[7].i64[0] = 0;
  v81 = v125;
  sub_242CF42A0(v125, v7->i64 + v76);
  *v77 = 0;
  *(v77 + 1) = 0;
  v82 = v121;
  sub_242DAFEF8(v7, v115, v121);
  v116 -= v73;
  v75(v81, 1, 1, v56);
  v83 = v4[11];
  v75(&v7->i8[v83], 1, 1, v56);
  v84 = v120;
  v85 = &v7->i8[v4[12]];
  v86 = &v7->i8[v4[13]];
  sub_242F03710();
  *&v86[*(v79 + 52)] = 7;
  *(v7->i64 + v4[14]) = 0;
  v7[7].i64[1] = 13379;
  v7[8].i64[0] = 0xE200000000000000;
  v87 = v124;
  *v7 = xmmword_242F2EC50;
  v7[1] = v87;
  v7[2] = v129;
  v7[3] = xmmword_242F2EC60;
  v7[4] = v123;
  v7[5] = 0u;
  v7[6] = 0u;
  v7[7].i64[0] = 0;
  sub_242CF42A0(v81, v7->i64 + v83);
  *v85 = 0;
  *(v85 + 1) = 0;
  sub_242DAFEF8(v7, v84 + v116, v82);
  sub_242F03710();
  v88 = *(v118 + 16);
  v89 = MEMORY[0x277D84F90];
  if (v88)
  {
    *&v131 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v88, 0);
    v89 = v131;
    v90 = v88;
    v91 = v127;
    do
    {
      sub_242DB0050(v84, v7, type metadata accessor for Slot);
      v92 = v7[7].i64[1];
      v93 = v7[8].i64[0];

      sub_242DB00B8(v7, type metadata accessor for Slot);
      *&v131 = v89;
      v95 = *(v89 + 16);
      v94 = *(v89 + 24);
      if (v95 >= v94 >> 1)
      {
        sub_242E3BC70((v94 > 1), v95 + 1, 1);
        v89 = v131;
      }

      *(v89 + 16) = v95 + 1;
      v96 = v89 + 16 * v95;
      *(v96 + 32) = v92;
      *(v96 + 40) = v93;
      v84 += v91;
      --v90;
    }

    while (v90);
  }

  v98 = sub_242C86440(v97);

  v99 = *(v98 + 16);

  v100 = *(v89 + 16);

  if (v99 == v100)
  {
    v101 = v117;
    sub_242CF6B3C(v119, v117, &qword_27ECF23E8);
    result = type metadata accessor for Component();
    *(v101 + result[5]) = 0;
    v103 = (v101 + result[6]);
    *v103 = 0x72616C7563726943;
    v103[1] = 0xE800000000000000;
    *(v101 + result[7]) = xmmword_242F2EC70;
    *(v101 + result[9]) = v118;
    *(v101 + result[8]) = 2;
  }

  else
  {
    *&v131 = 0;
    *(&v131 + 1) = 0xE000000000000000;
    sub_242F05A80();

    *&v131 = 0xD000000000000023;
    *(&v131 + 1) = 0x8000000242F59E80;
    v104 = MEMORY[0x277D84F90];
    if (v88)
    {
      v130 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v88, 0);
      v104 = v130;
      v105 = v120;
      v106 = v127;
      do
      {
        sub_242DB0050(v105, v7, type metadata accessor for Slot);
        v109 = v7[7].i64[1];
        v108 = v7[8].i64[0];

        sub_242DB00B8(v7, type metadata accessor for Slot);
        v130 = v104;
        v111 = *(v104 + 16);
        v110 = *(v104 + 24);
        if (v111 >= v110 >> 1)
        {
          sub_242E3BC70((v110 > 1), v111 + 1, 1);
          v104 = v130;
        }

        *(v104 + 16) = v111 + 1;
        v107 = v104 + 16 * v111;
        *(v107 + 32) = v109;
        *(v107 + 40) = v108;
        v105 += v106;
        --v88;
      }

      while (v88);
    }

    v112 = MEMORY[0x245D26920](v104, MEMORY[0x277D837D0]);
    v114 = v113;

    MEMORY[0x245D26660](v112, v114);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t sub_242DA8D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v75 = a2;
  v15 = type metadata accessor for Component();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v62 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0350);
  v22 = *(v16 + 72);
  v23 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_242F09510;
  v25 = v24 + v23;
  sub_242DB0050(a3, v24 + v23, type metadata accessor for Component);
  v74 = v21;
  sub_242F03710();
  v26 = type metadata accessor for Zone();
  v27 = a4 + v26[9];
  *v27 = 0;
  *(v27 + 8) = 256;
  v71 = v26[10];
  *(a4 + v71) = 2;
  v28 = a4 + v26[11];
  v70 = xmmword_242F13BC0;
  *v28 = xmmword_242F13BC0;
  v72 = v28;
  v73 = v24;
  *(v28 + 16) = 2;
  v29 = (a4 + v26[12]);
  *v29 = 0;
  v29[1] = 0;
  v68 = v26;
  v69 = v29;
  *(a4 + v26[13]) = 0;
  v30 = *(v24 + 16);
  v31 = MEMORY[0x277D84F90];
  v63 = v25;
  v62 = v30;
  if (v30)
  {
    v64 = v27;
    v65 = a3;
    v66 = a1;
    v67 = a4;
    v77 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v30, 0);
    v31 = v77;
    v32 = v30;
    do
    {
      sub_242DB0050(v25, v18, type metadata accessor for Component);
      v33 = &v18[*(v15 + 24)];
      v34 = *v33;
      v35 = *(v33 + 1);

      sub_242DB00B8(v18, type metadata accessor for Component);
      v77 = v31;
      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_242E3BC70((v36 > 1), v37 + 1, 1);
        v31 = v77;
      }

      *(v31 + 16) = v37 + 1;
      v38 = v31 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v35;
      v25 += v22;
      --v32;
    }

    while (v32);
    a1 = v66;
    a4 = v67;
    v27 = v64;
    a3 = v65;
  }

  v40 = sub_242C86440(v39);

  v41 = *(v40 + 16);

  v42 = *(v31 + 16);

  if (v41 == v42)
  {
    sub_242DB00B8(a3, type metadata accessor for Component);
    result = sub_242CF6B3C(v74, a4, &qword_27ECFC780);
    v44 = v68;
    v45 = (a4 + v68[5]);
    v46 = v75;
    *v45 = a1;
    v45[1] = v46;
    v47 = (a4 + v44[6]);
    *v47 = a5;
    v47[1] = a6;
    v47[2] = a7;
    v47[3] = a8;
    *(a4 + v44[7]) = v73;
    v48 = a4 + v44[8];
    *(v48 + 64) = 0u;
    *(v48 + 80) = 0u;
    *(v48 + 32) = 0u;
    *(v48 + 48) = 0u;
    *v48 = 0u;
    *(v48 + 16) = 0u;
    *(v48 + 96) = 2;
    *(a4 + v71) = 2;
    *v27 = 0;
    *(v27 + 8) = 256;
    *v72 = v70;
    v49 = v69;
    *v69 = 0;
    v49[1] = 0;
  }

  else
  {
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_242F05A80();

    v77 = 0xD000000000000022;
    v78 = 0x8000000242F59E50;
    v50 = MEMORY[0x277D84F90];
    if (v62)
    {
      v76 = MEMORY[0x277D84F90];
      v51 = v62;
      sub_242E3BC70(0, v62, 0);
      v50 = v76;
      v52 = v63;
      do
      {
        sub_242DB0050(v52, v18, type metadata accessor for Component);
        v54 = &v18[*(v15 + 24)];
        v56 = *v54;
        v55 = *(v54 + 1);

        sub_242DB00B8(v18, type metadata accessor for Component);
        v76 = v50;
        v58 = *(v50 + 16);
        v57 = *(v50 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_242E3BC70((v57 > 1), v58 + 1, 1);
          v50 = v76;
        }

        *(v50 + 16) = v58 + 1;
        v53 = v50 + 16 * v58;
        *(v53 + 32) = v56;
        *(v53 + 40) = v55;
        v52 += v22;
        --v51;
      }

      while (v51);
    }

    v59 = MEMORY[0x245D26920](v50, MEMORY[0x277D837D0]);
    v61 = v60;

    MEMORY[0x245D26660](v59, v61);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

int *static Component.modular.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  MEMORY[0x28223BE20](v1 - 8);
  v54 = &v50 - v2;
  v3 = type metadata accessor for Slot();
  v4 = (v3 - 8);
  v5 = *(v3 - 8);
  v6 = v5;
  MEMORY[0x28223BE20](v3);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330);
  v12 = *(v5 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v53 = v14;
  *(v14 + 16) = xmmword_242F0A4E0;
  v51 = v14 + v13;
  v15 = type metadata accessor for Instrument();
  v16 = *(*(v15 - 8) + 56);
  v16(v11, 1, 1, v15);
  v17 = v4[11];
  v16(&v8[v17], 1, 1, v15);
  v18 = &v8[v4[12]];
  v19 = &v8[v4[13]];
  sub_242F03710();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140);
  *&v19[*(v50 + 52)] = 7;
  *&v8[v4[14]] = 0;
  *(v8 + 15) = 12621;
  *(v8 + 16) = 0xE200000000000000;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 5) = 1;
  *(v8 + 3) = xmmword_242F2EC80;
  *(v8 + 4) = xmmword_242F2EC90;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 14) = 0;
  sub_242CF42A0(v11, &v8[v17]);
  *v18 = 0;
  *(v18 + 1) = 0;
  v20 = v51;
  sub_242DAFEF8(v8, v51, type metadata accessor for Slot);
  v16(v11, 1, 1, v15);
  v21 = v4[11];
  v16(&v8[v21], 1, 1, v15);
  v22 = &v8[v4[12]];
  v23 = &v8[v4[13]];
  sub_242F03710();
  *&v23[*(v50 + 52)] = 7;
  *&v8[v4[14]] = 0;
  *(v8 + 15) = 12627;
  *(v8 + 16) = 0xE200000000000000;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 5) = 1;
  *(v8 + 3) = xmmword_242F2ECA0;
  *(v8 + 4) = xmmword_242F2ECB0;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 14) = 0;
  sub_242CF42A0(v11, &v8[v21]);
  *v22 = 0;
  *(v22 + 1) = 0;
  sub_242DAFEF8(v8, v20 + v12, type metadata accessor for Slot);
  sub_242F03710();
  v24 = *(v53 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v56 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v24, 0);
    v25 = v56;
    v26 = v20;
    v27 = v24;
    do
    {
      sub_242DB0050(v26, v8, type metadata accessor for Slot);
      v28 = *(v8 + 15);
      v29 = *(v8 + 16);

      sub_242DB00B8(v8, type metadata accessor for Slot);
      v56 = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_242E3BC70((v30 > 1), v31 + 1, 1);
        v25 = v56;
      }

      *(v25 + 16) = v31 + 1;
      v32 = v25 + 16 * v31;
      *(v32 + 32) = v28;
      *(v32 + 40) = v29;
      v26 += v12;
      --v27;
    }

    while (v27);
  }

  v34 = sub_242C86440(v33);

  v35 = *(v34 + 16);

  v36 = *(v25 + 16);

  if (v35 == v36)
  {
    v37 = v52;
    sub_242CF6B3C(v54, v52, &qword_27ECF23E8);
    result = type metadata accessor for Component();
    *(v37 + result[5]) = 0;
    v39 = (v37 + result[6]);
    *v39 = 0x72616C75646F4DLL;
    v39[1] = 0xE700000000000000;
    *(v37 + result[7]) = xmmword_242F2EC70;
    *(v37 + result[9]) = v53;
    *(v37 + result[8]) = 2;
  }

  else
  {
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_242F05A80();

    v56 = 0xD000000000000023;
    v57 = 0x8000000242F59E80;
    v40 = MEMORY[0x277D84F90];
    if (v24)
    {
      v55 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v24, 0);
      v40 = v55;
      v41 = v51;
      do
      {
        sub_242DB0050(v41, v8, type metadata accessor for Slot);
        v44 = *(v8 + 15);
        v43 = *(v8 + 16);

        sub_242DB00B8(v8, type metadata accessor for Slot);
        v55 = v40;
        v46 = *(v40 + 16);
        v45 = *(v40 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_242E3BC70((v45 > 1), v46 + 1, 1);
          v40 = v55;
        }

        *(v40 + 16) = v46 + 1;
        v42 = v40 + 16 * v46;
        *(v42 + 32) = v44;
        *(v42 + 40) = v43;
        v41 += v12;
        --v24;
      }

      while (v24);
    }

    v47 = MEMORY[0x245D26920](v40, MEMORY[0x277D837D0]);
    v49 = v48;

    MEMORY[0x245D26660](v47, v49);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

int *static Component.modularCompact.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  MEMORY[0x28223BE20](v1 - 8);
  v56 = &v51 - v2;
  v3 = type metadata accessor for Slot();
  v4 = (v3 - 8);
  v5 = *(v3 - 8);
  v6 = v5;
  MEMORY[0x28223BE20](v3);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v51 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330);
  v12 = *(v5 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v55 = v14;
  *(v14 + 16) = xmmword_242F0A4E0;
  v53 = v14 + v13;
  v15 = type metadata accessor for Instrument();
  v16 = *(*(v15 - 8) + 56);
  v16(v11, 1, 1, v15);
  v17 = v4[11];
  v16(&v8[v17], 1, 1, v15);
  v18 = &v8[v4[12]];
  v19 = &v8[v4[13]];
  sub_242F03710();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140);
  *&v19[*(v52 + 52)] = 7;
  *&v8[v4[14]] = 0;
  v51 = xmmword_242F2ECB0;
  *(v8 + 15) = 12627;
  *(v8 + 16) = 0xE200000000000000;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 5) = 1;
  *(v8 + 3) = xmmword_242F2ECC0;
  *(v8 + 4) = xmmword_242F2ECB0;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 14) = 0;
  sub_242CF42A0(v11, &v8[v17]);
  *v18 = 0;
  *(v18 + 1) = 0;
  v20 = v53;
  sub_242DAFEF8(v8, v53, type metadata accessor for Slot);
  v16(v11, 1, 1, v15);
  v21 = v4[11];
  v16(&v8[v21], 1, 1, v15);
  v22 = &v8[v4[12]];
  v23 = &v8[v4[13]];
  sub_242F03710();
  *&v23[*(v52 + 52)] = 7;
  *&v8[v4[14]] = 0;
  *(v8 + 15) = 12883;
  *(v8 + 16) = 0xE200000000000000;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(v8 + 5) = 1;
  v24 = v51;
  *(v8 + 3) = xmmword_242F2ECA0;
  *(v8 + 4) = v24;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 14) = 0;
  sub_242CF42A0(v11, &v8[v21]);
  *v22 = 0;
  *(v22 + 1) = 0;
  sub_242DAFEF8(v8, v20 + v12, type metadata accessor for Slot);
  sub_242F03710();
  v25 = *(v55 + 16);
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v58 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v25, 0);
    v26 = v58;
    v27 = v20;
    v28 = v25;
    do
    {
      sub_242DB0050(v27, v8, type metadata accessor for Slot);
      v29 = *(v8 + 15);
      v30 = *(v8 + 16);

      sub_242DB00B8(v8, type metadata accessor for Slot);
      v58 = v26;
      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_242E3BC70((v31 > 1), v32 + 1, 1);
        v26 = v58;
      }

      *(v26 + 16) = v32 + 1;
      v33 = v26 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      v27 += v12;
      --v28;
    }

    while (v28);
  }

  v35 = sub_242C86440(v34);

  v36 = *(v35 + 16);

  v37 = *(v26 + 16);

  if (v36 == v37)
  {
    v38 = v54;
    sub_242CF6B3C(v56, v54, &qword_27ECF23E8);
    result = type metadata accessor for Component();
    *(v38 + result[5]) = 0;
    v40 = (v38 + result[6]);
    *v40 = 0x2072616C75646F4DLL;
    v40[1] = 0xEF746361706D6F43;
    *(v38 + result[7]) = xmmword_242F2EC70;
    *(v38 + result[9]) = v55;
    *(v38 + result[8]) = 2;
  }

  else
  {
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_242F05A80();

    v58 = 0xD000000000000023;
    v59 = 0x8000000242F59E80;
    v41 = MEMORY[0x277D84F90];
    if (v25)
    {
      v57 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v25, 0);
      v41 = v57;
      v42 = v53;
      do
      {
        sub_242DB0050(v42, v8, type metadata accessor for Slot);
        v45 = *(v8 + 15);
        v44 = *(v8 + 16);

        sub_242DB00B8(v8, type metadata accessor for Slot);
        v57 = v41;
        v47 = *(v41 + 16);
        v46 = *(v41 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_242E3BC70((v46 > 1), v47 + 1, 1);
          v41 = v57;
        }

        *(v41 + 16) = v47 + 1;
        v43 = v41 + 16 * v47;
        *(v43 + 32) = v45;
        *(v43 + 40) = v44;
        v42 += v12;
        --v25;
      }

      while (v25);
    }

    v48 = MEMORY[0x245D26920](v41, MEMORY[0x277D837D0]);
    v50 = v49;

    MEMORY[0x245D26660](v48, v50);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

int *static Component.sportLeft.getter@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8);
  MEMORY[0x28223BE20](v1 - 8);
  v87 = &v78 - v2;
  v3 = type metadata accessor for Slot();
  v5 = (v3 - 8);
  v4 = *(v3 - 8);
  v6 = v4;
  MEMORY[0x28223BE20](v3);
  v8 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v78 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330);
  v12 = *(v4 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v86 = v14;
  *(v14 + 16) = xmmword_242F09530;
  v88 = v14 + v13;
  v15 = type metadata accessor for Instrument();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v17(v11, 1, 1, v15);
  v19 = v5[11];
  v17(&v8->i8[v19], 1, 1, v15);
  v20 = &v8->i8[v5[12]];
  v21 = &v8->i8[v5[13]];
  sub_242F03710();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140);
  *&v21[*(v85 + 52)] = 7;
  *(v8->i64 + v5[14]) = 0;
  v8[7].i64[1] = 12611;
  v8[8].i64[0] = 0xE200000000000000;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = xmmword_242F2ECD0;
  v8[4] = vdupq_n_s64(0x4077E00000000000uLL);
  v91 = 0u;
  v92 = 0u;
  v90 = 0u;
  *v8[5].i64 = sub_242D9F83C(&v90, 197.0, 84.0, 382.0, 382.0);
  v8[5].i64[1] = v22;
  v8[6].i64[0] = v23;
  v8[6].i64[1] = v24;
  v8[7].i64[0] = 0;
  v82 = v11;
  sub_242CF42A0(v11, v8->i64 + v19);
  *v20 = 0;
  *(v20 + 1) = 0;
  v84 = type metadata accessor for Slot;
  v25 = v88;
  sub_242DAFEF8(v8, v88, type metadata accessor for Slot);
  v78 = v17;
  v83 = v18;
  v17(v11, 1, 1, v15);
  v26 = v5[11];
  v17(&v8->i8[v26], 1, 1, v15);
  v27 = &v8->i8[v5[12]];
  v28 = &v8->i8[v5[13]];
  sub_242F03710();
  v29 = v85;
  *&v28[*(v85 + 52)] = 7;
  *(v8->i64 + v5[14]) = 0;
  v8[7].i64[1] = 12867;
  v8[8].i64[0] = 0xE200000000000000;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = xmmword_242F2ECE0;
  v80 = vdupq_n_s64(0x4064600000000000uLL);
  v8[4] = v80;
  v91 = 0u;
  v92 = 0u;
  v90 = 0u;
  *v8[5].i64 = sub_242D9F83C(&v90, 21.0, 245.0, 163.0, 163.0);
  v8[5].i64[1] = v30;
  v8[6].i64[0] = v31;
  v8[6].i64[1] = v32;
  v8[7].i64[0] = 0;
  v33 = v82;
  sub_242CF42A0(v82, v8->i64 + v26);
  *v27 = 0;
  *(v27 + 1) = 0;
  v34 = v84;
  sub_242DAFEF8(v8, v25 + v12, v84);
  v79 = 2 * v12;
  v35 = v78;
  v78(v33, 1, 1, v15);
  v36 = v5[11];
  v35(&v8->i8[v36], 1, 1, v15);
  v37 = &v8->i8[v5[12]];
  v38 = &v8->i8[v5[13]];
  sub_242F03710();
  *&v38[*(v29 + 52)] = 7;
  *(v8->i64 + v5[14]) = 0;
  v8[7].i64[1] = 13123;
  v8[8].i64[0] = 0xE200000000000000;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = xmmword_242F2ECF0;
  v8[4] = vdupq_n_s64(0x406B600000000000uLL);
  v91 = 0u;
  v92 = 0u;
  v90 = 0u;
  *v8[5].i64 = sub_242D9F83C(&v90, 71.0, 420.0, 219.0, 219.0);
  v8[5].i64[1] = v39;
  v8[6].i64[0] = v40;
  v8[6].i64[1] = v41;
  v8[7].i64[0] = 0;
  v42 = v82;
  sub_242CF42A0(v82, v8->i64 + v36);
  *v37 = 0;
  *(v37 + 1) = 0;
  v43 = v88;
  v44 = v79;
  sub_242DAFEF8(v8, v88 + v79, v34);
  v79 = v44 + v12;
  v45 = v42;
  v35(v42, 1, 1, v15);
  v46 = v5[11];
  v35(&v8->i8[v46], 1, 1, v15);
  v47 = &v8->i8[v5[12]];
  v48 = &v8->i8[v5[13]];
  sub_242F03710();
  *&v48[*(v85 + 52)] = 7;
  *(v8->i64 + v5[14]) = 0;
  v8[7].i64[1] = 13379;
  v8[8].i64[0] = 0xE200000000000000;
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = xmmword_242F2ED00;
  v8[4] = v80;
  v91 = 0u;
  v92 = 0u;
  v90 = 0u;
  *v8[5].i64 = sub_242D9F83C(&v90, 417.0, 476.0, 163.0, 163.0);
  v8[5].i64[1] = v49;
  v8[6].i64[0] = v50;
  v8[6].i64[1] = v51;
  v8[7].i64[0] = 0;
  sub_242CF42A0(v45, v8->i64 + v46);
  *v47 = 0;
  *(v47 + 1) = 0;
  sub_242DAFEF8(v8, v43 + v79, v84);
  sub_242F03710();
  v52 = *(v86 + 16);
  v53 = MEMORY[0x277D84F90];
  if (v52)
  {
    *&v90 = MEMORY[0x277D84F90];
    sub_242E3BC70(0, v52, 0);
    v53 = v90;
    v54 = v43;
    v55 = v52;
    do
    {
      sub_242DB0050(v54, v8, type metadata accessor for Slot);
      v56 = v8[7].i64[1];
      v57 = v8[8].i64[0];

      sub_242DB00B8(v8, type metadata accessor for Slot);
      *&v90 = v53;
      v59 = *(v53 + 16);
      v58 = *(v53 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_242E3BC70((v58 > 1), v59 + 1, 1);
        v53 = v90;
      }

      *(v53 + 16) = v59 + 1;
      v60 = v53 + 16 * v59;
      *(v60 + 32) = v56;
      *(v60 + 40) = v57;
      v54 += v12;
      --v55;
    }

    while (v55);
  }

  v62 = sub_242C86440(v61);

  v63 = *(v62 + 16);

  v64 = *(v53 + 16);

  if (v63 == v64)
  {
    v65 = v81;
    sub_242CF6B3C(v87, v81, &qword_27ECF23E8);
    result = type metadata accessor for Component();
    *(v65 + result[5]) = 0;
    v67 = (v65 + result[6]);
    *v67 = 0x654C2074726F7053;
    v67[1] = 0xEA00000000007466;
    *(v65 + result[7]) = xmmword_242F2EC70;
    *(v65 + result[9]) = v86;
    *(v65 + result[8]) = 2;
  }

  else
  {
    *&v90 = 0;
    *(&v90 + 1) = 0xE000000000000000;
    sub_242F05A80();

    *&v90 = 0xD000000000000023;
    *(&v90 + 1) = 0x8000000242F59E80;
    v68 = MEMORY[0x277D84F90];
    if (v52)
    {
      v89 = MEMORY[0x277D84F90];
      sub_242E3BC70(0, v52, 0);
      v69 = v88;
      v68 = v89;
      do
      {
        sub_242DB0050(v69, v8, type metadata accessor for Slot);
        v72 = v8[7].i64[1];
        v71 = v8[8].i64[0];

        sub_242DB00B8(v8, type metadata accessor for Slot);
        v89 = v68;
        v74 = *(v68 + 16);
        v73 = *(v68 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_242E3BC70((v73 > 1), v74 + 1, 1);
          v68 = v89;
        }

        *(v68 + 16) = v74 + 1;
        v70 = v68 + 16 * v74;
        *(v70 + 32) = v72;
        *(v70 + 40) = v71;
        v69 += v12;
        --v52;
      }

      while (v52);
    }

    v75 = MEMORY[0x245D26920](v68, MEMORY[0x277D837D0]);
    v77 = v76;

    MEMORY[0x245D26660](v75, v77);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}