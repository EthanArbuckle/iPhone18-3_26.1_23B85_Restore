uint64_t sub_2545ACBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ElementID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HomeID();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for TileElementInfo();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2545ACCFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ElementID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for HomeID();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for TileElementInfo();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2545ACE4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2545FE774();
  *a2 = result;
  return result;
}

uint64_t sub_2545ACE78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2545FE774();
  *a2 = result;
  return result;
}

uint64_t sub_2545ACEA8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aComAppleHome[8];
  *a1 = *aComAppleHome;
  a1[1] = v2;
  return sub_2545FE8E4();
}

uint64_t sub_2545ACEFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2545FE754();
  *a2 = v5;
  return result;
}

uint64_t sub_2545ACF3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2545FE754();
  *a2 = v5;
  return result;
}

uint64_t sub_2545ACF84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2545FE754();
  *a2 = v5;
  return result;
}

uint64_t sub_2545AD008@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2545FE774();
  *a2 = result;
  return result;
}

uint64_t sub_2545AD034@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2545FE774();
  *a2 = result;
  return result;
}

uint64_t sub_2545AD068@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aComAppleHome_0[8];
  *a1 = *aComAppleHome_0;
  a1[1] = v2;
  return sub_2545FE8E4();
}

uint64_t sub_2545AD130@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2545FE774();
  *a2 = result;
  return result;
}

uint64_t sub_2545AD164(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2545FF784();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for HomeXLTileEntity();
        v6 = sub_2545FF2F4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for HomeXLTileEntity() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2545C6604(v8, v9, a1, v4, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity);
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
    return sub_2545C5AE0(0, v2, 1, a1, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity, type metadata accessor for HomeXLTileEntity);
  }

  return result;
}

uint64_t sub_2545AD358(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2545FF784();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ToggleControlEntity();
        v6 = sub_2545FF2F4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ToggleControlEntity() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2545C6604(v8, v9, a1, v4, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity);
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
    return sub_2545C5AE0(0, v2, 1, a1, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity, type metadata accessor for ToggleControlEntity);
  }

  return result;
}

uint64_t sub_2545AD54C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2545FF784();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for HomeSingleTileEntity();
        v6 = sub_2545FF2F4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for HomeSingleTileEntity() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2545C6604(v8, v9, a1, v4, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity);
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
    return sub_2545C5AE0(0, v2, 1, a1, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity, type metadata accessor for HomeSingleTileEntity);
  }

  return result;
}

uint64_t sub_2545AD768()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2545AD8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ElementID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HomeID();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for TileElementInfo();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2545ADA08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ElementID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for HomeID();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for TileElementInfo();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2545ADB5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2545FE774();
  *a2 = result;
  return result;
}

uint64_t sub_2545ADB8C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aComAppleHome_1[8];
  *a1 = *aComAppleHome_1;
  a1[1] = v2;
  return sub_2545FE8E4();
}

uint64_t sub_2545ADC54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2545FE774();
  *a2 = result;
  return result;
}

uint64_t sub_2545ADC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2545FEB04();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2545ADCF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2545FEB04();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2545ADD60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x73656E656373;
  if (v2 != 1)
  {
    v5 = 0x726F737365636361;
    v4 = 0xEB00000000736569;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7105633;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2545ADDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ElementID();
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

uint64_t sub_2545ADE84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ElementID();
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

uint64_t sub_2545ADF40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2545FE774();
  *a2 = result;
  return result;
}

uint64_t sub_2545AE028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HomeID();
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

uint64_t sub_2545AE0E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HomeID();
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

uint64_t sub_2545AE1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2545FEB04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 8)
    {
      return v10 - 7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2545AE28C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2545FEB04();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }

  return result;
}

uint64_t sub_2545AE344()
{
  v1 = v0[2];
  sub_2545FEA14();
  v2 = v0[3];
  sub_2545FEA14();
  v3 = v0[4];
  sub_2545FEA14();
  v4 = v0[5];
  sub_2545FEA14();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2545AE394()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606CD8, &qword_254602F68);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2545AE3CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2545AE404()
{
  v1 = *(v0 + 24);
  sub_2545FEA14();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2545AE440@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2545AE590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ElementID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HomeID();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for TileElementInfo();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2545AE6D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ElementID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for HomeID();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for TileElementInfo();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2545AE82C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064C0, &qword_254601E70);
  swift_getKeyPath();
  result = sub_2545FE984();
  qword_27F606358 = result;
  return result;
}

uint64_t static ToggleControlEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F606350 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F606358;

  return sub_2545FE8F4();
}

uint64_t sub_2545AE8E8()
{
  v0 = sub_2545FE9A4();
  __swift_allocate_value_buffer(v0, qword_27F606368);
  __swift_project_value_buffer(v0, qword_27F606368);
  return sub_2545FE994();
}

uint64_t static ToggleControlEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F606360 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for ToggleControlEntity()
{
  result = qword_27F6064B0;
  if (!qword_27F6064B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2545AEB50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ToggleControlEntity.displayRepresentation.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v18 - v3;
  v5 = sub_2545FEA64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_2545FF134() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_2545FF124();
  sub_2545FF114();
  v9 = v0 + *(type metadata accessor for ToggleControlEntity() + 24);
  v10 = type metadata accessor for TileElementInfo();
  v11 = (v9 + *(v10 + 20));
  v12 = *v11;
  v13 = v11[1];
  sub_2545FF104();
  sub_2545FF114();
  sub_2545FEA54();
  (*(v6 + 56))(v4, 1, 1, v5);
  v14 = (v9 + *(v10 + 24));
  v15 = *v14;
  v16 = v14[1];
  sub_2545FE8E4();
  sub_2545FE874();
  return sub_2545FE894();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t static ToggleControlEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ElementID();
  if (qword_254600228[*(a1 + *(v4 + 20))] != qword_254600228[*(a2 + *(v4 + 20))])
  {
    return 0;
  }

  v5 = type metadata accessor for ToggleControlEntity();
  v6 = *(v5 + 20);
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 24);

  return _s17HomeWidgetIntents15TileElementInfoV2eeoiySbAC_ACtFZ_0(a1 + v7, a2 + v7);
}

uint64_t ToggleControlEntity.hash(into:)()
{
  v1 = v0;
  sub_2545FEB04();
  sub_2545AFF40(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v2 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_254600228[*(v0 + *(v2 + 20))]);
  v3 = type metadata accessor for ToggleControlEntity();
  v4 = v0 + *(v3 + 20);
  sub_2545FF0C4();
  v5 = v1 + *(v3 + 24);
  return TileElementInfo.hash(into:)();
}

uint64_t ToggleControlEntity.hashValue.getter()
{
  v1 = v0;
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545AFF40(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v2 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_254600228[*(v0 + *(v2 + 20))]);
  v3 = type metadata accessor for ToggleControlEntity();
  v4 = v0 + *(v3 + 20);
  sub_2545FF0C4();
  v5 = v1 + *(v3 + 24);
  TileElementInfo.hash(into:)();
  return sub_2545FF864();
}

uint64_t sub_2545AF0E4@<X0>(void *a1@<X8>)
{
  if (qword_27F606350 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F606358;

  return sub_2545FE8F4();
}

uint64_t sub_2545AF154(uint64_t a1)
{
  v3 = v1;
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545AFF40(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v4 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_254600228[*(v1 + *(v4 + 20))]);
  v5 = v1 + *(a1 + 20);
  sub_2545FF0C4();
  v6 = v3 + *(a1 + 24);
  TileElementInfo.hash(into:)();
  return sub_2545FF864();
}

uint64_t sub_2545AF244(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_2545FEB04();
  sub_2545AFF40(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v5 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_254600228[*(v2 + *(v5 + 20))]);
  v6 = v2 + *(a2 + 20);
  sub_2545FF0C4();
  v7 = v4 + *(a2 + 24);
  return TileElementInfo.hash(into:)();
}

uint64_t sub_2545AF31C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545AFF40(&qword_27F606430, MEMORY[0x277CC95F0]);
  sub_2545FF0C4();
  v5 = type metadata accessor for ElementID();
  MEMORY[0x259C12730](qword_254600228[*(v2 + *(v5 + 20))]);
  v6 = v2 + *(a2 + 20);
  sub_2545FF0C4();
  v7 = v4 + *(a2 + 24);
  TileElementInfo.hash(into:)();
  return sub_2545FF864();
}

uint64_t sub_2545AF408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ElementID();
  if (qword_254600228[*(a1 + *(v6 + 20))] != qword_254600228[*(a2 + *(v6 + 20))])
  {
    return 0;
  }

  v7 = *(a3 + 20);
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);

  return _s17HomeWidgetIntents15TileElementInfoV2eeoiySbAC_ACtFZ_0(a1 + v8, a2 + v8);
}

uint64_t sub_2545AF4B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F606360 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2545AF55C(uint64_t a1)
{
  v2 = sub_2545AFF40(&qword_27F6064A8, type metadata accessor for ToggleControlEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2545AF5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2545AF6A0;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_2545AF6A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2545AF794(uint64_t a1)
{
  v2 = sub_2545AFF40(&qword_27F606488, type metadata accessor for ToggleControlEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static ToggleControlEntity.create(id:homeID:item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2545AEB50(a1, a4, type metadata accessor for ElementID);
  v7 = type metadata accessor for ToggleControlEntity();
  sub_2545AEB50(a2, a4 + *(v7 + 20), type metadata accessor for HomeID);
  return sub_2545AEB50(a3, a4 + *(v7 + 24), type metadata accessor for TileElementInfo);
}

uint64_t sub_2545AF920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2545AEB50(a1, a5, type metadata accessor for ElementID);
  sub_2545AEB50(a2, a5 + *(a4 + 20), type metadata accessor for HomeID);
  return sub_2545AEB50(a3, a5 + *(a4 + 24), type metadata accessor for TileElementInfo);
}

unint64_t ToggleControlEntity.description.getter()
{
  sub_2545FF594();

  v4 = qword_254600228[*(v0 + *(type metadata accessor for ElementID() + 20))];
  v5 = sub_2545FF794();
  v6 = v1;
  MEMORY[0x259C120B0](58, 0xE100000000000000);
  v2 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v2);

  MEMORY[0x259C120B0](v5, v6);

  MEMORY[0x259C120B0](41, 0xE100000000000000);
  return 0xD000000000000014;
}

unint64_t sub_2545AFAF4()
{
  sub_2545FF594();

  v4 = qword_254600228[*(v0 + *(type metadata accessor for ElementID() + 20))];
  v5 = sub_2545FF794();
  v6 = v1;
  MEMORY[0x259C120B0](58, 0xE100000000000000);
  v2 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
  MEMORY[0x259C120B0](v2);

  MEMORY[0x259C120B0](v5, v6);

  MEMORY[0x259C120B0](41, 0xE100000000000000);
  return 0xD000000000000014;
}

unint64_t sub_2545AFC7C()
{
  result = qword_27F606450;
  if (!qword_27F606450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606450);
  }

  return result;
}

unint64_t sub_2545AFDF4()
{
  result = qword_27F606490;
  if (!qword_27F606490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F606498, &qword_254600030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606490);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2545AFEE8(uint64_t a1)
{
  result = sub_2545AFF40(&qword_27F6064A8, type metadata accessor for ToggleControlEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2545AFF40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2545AFFF8()
{
  result = type metadata accessor for ElementID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HomeID();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TileElementInfo();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

Swift::Void __swiftcall StartHomeWidgetIntentsService()()
{
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v0 = sub_2545FF0A4();
  __swift_project_value_buffer(v0, qword_27F60ADD8);
  v1 = sub_2545FF084();
  v2 = sub_2545FF474();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2545AB000, v1, v2, "Starting AppIntentsExtension", v3, 2u);
    MEMORY[0x259C12CB0](v3, -1, -1);
  }

  v4 = objc_opt_self();
  v5 = sub_2545FF164();
  [v4 setDefaultEffectiveBundleIdentifier_];

  sub_2545FECC4();
  sub_2545FECB4();
}

void *sub_2545B027C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    sub_2545FECC4();
    if (sub_2545FECA4() != 7)
    {
      sub_2545FEC04();
      sub_2545FEBF4();
      sub_2545B0FE4();
      v13 = sub_2545FF4B4();
      v2 = sub_2545FEBE4();
      sub_2545FEA14();

      v14 = *(v1 + 16);
      *(v1 + 16) = v2;
      v15 = v2;

      return v2;
    }

    v3 = sub_2545FEC94();
    v4 = sub_2545FEC14();

    if (!v4)
    {
      v5 = [objc_opt_self() sharedDispatcher];
      v4 = [v5 homeManager];
    }

    v6 = *(v1 + 16);
    *(v1 + 16) = v4;

    if (!*(v1 + 16))
    {
      if (qword_27F6063A0 != -1)
      {
        swift_once();
      }

      v7 = sub_2545FF0A4();
      __swift_project_value_buffer(v7, qword_27F60ADD8);
      v8 = sub_2545FF084();
      v9 = sub_2545FF454();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2545AB000, v8, v9, "HFHomeKitDispatcher is still initializing and so homeManager is nil", v10, 2u);
        MEMORY[0x259C12CB0](v10, -1, -1);
      }
    }

    v2 = *(v1 + 16);
  }

  v11 = v2;
  return v2;
}

uint64_t sub_2545B0448()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_2545FEB64();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_2545FF354();
  v1[7] = sub_2545FF344();
  v7 = sub_2545FF334();
  v1[8] = v7;
  v1[9] = v6;

  return MEMORY[0x2822009F8](sub_2545B0574, v7, v6);
}

uint64_t sub_2545B0574()
{
  sub_2545FECC4();
  if (sub_2545FECA4() == 7)
  {
    v0[20] = [objc_opt_self() sharedDispatcher];
    v1 = *(MEMORY[0x277D132F0] + 4);
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_2545B0C7C;

    return MEMORY[0x28216DC50]();
  }

  else
  {
    v0[10] = sub_2545FEBD4();
    v0[11] = sub_2545FECE4();
    v0[12] = sub_2545FECD4();
    v0[13] = sub_2545B1030();
    v4 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545B06C4, v4, v3);
  }
}

uint64_t sub_2545B06C4()
{
  v1 = v0[12];
  v2 = v0[10];
  sub_2545FEA14();
  v0[14] = sub_2545FEBC4();
  v3 = v0[8];
  v4 = v0[9];

  return MEMORY[0x2822009F8](sub_2545B0734, v3, v4);
}

uint64_t sub_2545B0734()
{
  v1 = v0[14];
  v2 = MEMORY[0x259C11A70]();
  v0[15] = v2;
  sub_2545FEA14();
  if (v2)
  {
    v3 = v0[13];
    v4 = v0[11];
    v0[16] = sub_2545FECD4();
    v6 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545B08F0, v6, v5);
  }

  else
  {
    v7 = v0[7];
    sub_2545FEA14();
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v8 = sub_2545FF0A4();
    __swift_project_value_buffer(v8, qword_27F60ADD8);
    v9 = sub_2545FF084();
    v10 = sub_2545FF454();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2545AB000, v9, v10, "WidgetDataModel is returning a nil homeManager", v11, 2u);
      MEMORY[0x259C12CB0](v11, -1, -1);
    }

    v12 = v0[6];
    v13 = v0[3];

    v14 = v0[1];

    return v14(0);
  }
}

uint64_t sub_2545B08F0()
{
  v1 = v0[16];
  v2 = v0[10];
  sub_2545FEA14();
  v0[17] = sub_2545FEBC4();
  v3 = v0[8];
  v4 = v0[9];

  return MEMORY[0x2822009F8](sub_2545B0960, v3, v4);
}

uint64_t sub_2545B0960()
{
  v1 = v0[3];
  v2 = sub_2545FEB04();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(MEMORY[0x277D15220] + 4);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_2545B0A44;
  v5 = v0[17];
  v6 = v0[6];
  v7 = v0[3];

  return MEMORY[0x28216E6C8](v6, v7);
}

uint64_t sub_2545B0A44()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 152) = v0;

  sub_2545B1088(v5);
  sub_2545FEA14();
  v7 = *(v2 + 72);
  v8 = *(v2 + 64);
  if (v0)
  {
    v9 = sub_2545B0E50;
  }

  else
  {
    v9 = sub_2545B0BC0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2545B0BC0()
{
  v1 = v0[15];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  sub_2545FEA14();
  v6 = sub_2545FEB44();

  (*(v5 + 8))(v3, v4);
  v7 = v0[6];
  v8 = v0[3];

  v9 = v0[1];

  return v9(v6);
}

uint64_t sub_2545B0C7C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_2545B0ED0;
  }

  else
  {
    v7 = v2[20];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_2545B0DAC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2545B0DAC()
{
  v1 = v0[7];
  v2 = v0[2];
  sub_2545FEA14();
  v3 = sub_2545B027C();
  if (v3)
  {
    v4 = v3;
    v5 = sub_2545FA83C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v0[6];
  v7 = v0[3];

  v8 = v0[1];

  return v8(v5);
}

uint64_t sub_2545B0E50()
{
  v1 = v0[15];
  v2 = v0[7];
  sub_2545FEA14();

  v3 = v0[19];
  v4 = v0[6];
  v5 = v0[3];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2545B0ED0()
{
  v1 = v0[20];
  v2 = v0[7];
  sub_2545FEA14();

  v3 = v0[22];
  v4 = v0[6];
  v5 = v0[3];

  v6 = v0[1];

  return v6();
}

uint64_t IntentsService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2545B0FE4()
{
  result = qword_27F6064C8;
  if (!qword_27F6064C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F6064C8);
  }

  return result;
}

unint64_t sub_2545B1030()
{
  result = qword_27F6064D8;
  if (!qword_27F6064D8)
  {
    sub_2545FECE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6064D8);
  }

  return result;
}

uint64_t sub_2545B1088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static HomeXLModuleConfigurationIntent.attributionBundleIdentifier.getter()
{
  swift_beginAccess();
  v0 = *aComAppleHome;
  sub_2545FE8E4();
  return v0;
}

uint64_t static HomeXLModuleConfigurationIntent.attributionBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aComAppleHome = a1;
  *&aComAppleHome[8] = a2;
}

uint64_t sub_2545B12B4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aComAppleHome = v2;
  *&aComAppleHome[8] = v1;
  sub_2545FE8E4();
}

uint64_t sub_2545B1318()
{
  v0 = sub_2545FEA44();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_2545FEB24() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_2545FF154() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = sub_2545FEA64();
  __swift_allocate_value_buffer(v7, qword_27F6064F0);
  __swift_project_value_buffer(v7, qword_27F6064F0);
  sub_2545FF0F4();
  sub_2545FEB14();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2545FEA74();
}

uint64_t sub_2545B153C()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = v14 - v1;
  v14[0] = sub_2545FEA44();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_2545FEB24() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_2545FF154() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = sub_2545FEA64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v12 = sub_2545FE7D4();
  __swift_allocate_value_buffer(v12, qword_27F606508);
  __swift_project_value_buffer(v12, qword_27F606508);
  sub_2545FF0F4();
  sub_2545FEB14();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9110], v14[0]);
  sub_2545FEA74();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_2545FE7E4();
}

uint64_t sub_2545B1868@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t HomeXLModuleConfigurationIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v88 = a1;
  v1 = sub_2545FE814();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v68 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v67 = &v62 - v6;
  v87 = sub_2545FE914();
  v89 = *(v87 - 8);
  v7 = *(v89 + 64);
  MEMORY[0x28223BE20](v87);
  v86 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606528, &qword_2546002E8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v80 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v79 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606530, &unk_2546002F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v66 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v65 = &v62 - v19;
  v75 = sub_2545FEA44();
  v20 = *(v75 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v75);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2545FEB24();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2545FF154();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2545FEA64();
  v74 = v32;
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v62 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606538, &unk_254600300);
  sub_2545FF0F4();
  v84 = &unk_2546002F0;
  v70 = v27;
  sub_2545FEB14();
  v81 = *MEMORY[0x277CC9110];
  v76 = *(v20 + 104);
  v85 = v20 + 104;
  v71 = v23;
  v76(v23);
  v37 = v36;
  sub_2545FEA74();
  v38 = *(v33 + 56);
  v82 = v33 + 56;
  v83 = v38;
  v39 = v65;
  v38(v65, 1, 1, v32);
  LOBYTE(v91) = 1;
  v40 = sub_2545FF324();
  (*(*(v40 - 8) + 56))(v66, 1, 1, v40);
  v41 = sub_2545FE734();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v72 = v42 + 56;
  v73 = v43;
  v44 = v79;
  v45 = v41;
  (v43)(v79, 1, 1);
  v78 = *MEMORY[0x277CBA308];
  v46 = *(v89 + 104);
  v89 += 104;
  v77 = v46;
  v47 = v87;
  (v46)(v86);
  v62 = v37;
  *v88 = sub_2545FE7A4();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606540, &qword_254600328);
  v69 = v31;
  sub_2545FF0F4();
  sub_2545FEB14();
  v49 = v75;
  v48 = v76;
  (v76)(v71, v81, v75);
  sub_2545FEA74();
  v50 = v74;
  v83(v39, 1, 1, v74);
  LOBYTE(v91) = 0;
  v51 = v45;
  v63 = v45;
  v52 = v45;
  v53 = v73;
  v73(v44, 1, 1, v52);
  v53(v80, 1, 1, v51);
  v77(v86, v78, v47);
  sub_2545B241C();
  v88[1] = sub_2545FE784();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606550, &qword_254600330);
  sub_2545FF0F4();
  sub_2545FEB14();
  v54 = v71;
  (v48)(v71, v81, v49);
  sub_2545FEA74();
  v83(v39, 1, 1, v50);
  v55 = type metadata accessor for SelectedHomeEntity();
  (*(*(v55 - 8) + 56))(v67, 1, 1, v55);
  v56 = v63;
  v57 = v73;
  v73(v79, 1, 1, v63);
  v57(v80, 1, 1, v56);
  v58 = v86;
  v59 = v78;
  v60 = v77;
  v77(v86, v78, v87);
  sub_2545B2470();
  v88[2] = sub_2545FE794();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606560, &qword_254600338);
  sub_2545FF0F4();
  sub_2545FEB14();
  (v76)(v54, v81, v75);
  sub_2545FEA74();
  v83(v39, 1, 1, v74);
  v91 = 0;
  sub_2545FE804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606568, &qword_254600340);
  swift_getKeyPath();
  swift_getKeyPath();
  v90 = sub_2545FE974();
  v60(v58, v59, v87);
  sub_2545B3C58();
  sub_2545B4F2C(&qword_27F606578, &qword_27F606580, &qword_254600398);
  result = sub_2545FE7B4();
  v88[3] = result;
  return result;
}

unint64_t sub_2545B241C()
{
  result = qword_27F606548;
  if (!qword_27F606548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606548);
  }

  return result;
}

unint64_t sub_2545B2470()
{
  result = qword_27F606558;
  if (!qword_27F606558)
  {
    type metadata accessor for SelectedHomeEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606558);
  }

  return result;
}

uint64_t HomeXLModuleConfigurationIntent.init(home:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v66 = a1;
  v87 = a2;
  v2 = sub_2545FE814();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v65 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v59 - v9;
  v86 = sub_2545FE914();
  v88 = *(v86 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606528, &qword_2546002E8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v74 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v61 = &v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606530, &unk_2546002F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v63 = &v59 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v60 = &v59 - v22;
  v84 = sub_2545FEA44();
  v23 = *(v84 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v84);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2545FEB24();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2545FF154();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2545FEA64();
  v81 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606538, &unk_254600300);
  v67 = v34;
  sub_2545FF0F4();
  v83 = &unk_2546002F0;
  v76 = v30;
  sub_2545FEB14();
  v82 = *MEMORY[0x277CC9110];
  v38 = *(v23 + 104);
  v72 = v23 + 104;
  v73 = v38;
  v77 = v26;
  v38(v26);
  sub_2545FEA74();
  v78 = *(v36 + 56);
  v80 = v36 + 56;
  v39 = v60;
  v78(v60, 1, 1, v35);
  LOBYTE(v90) = 1;
  v40 = sub_2545FF324();
  (*(*(v40 - 8) + 56))(v63, 1, 1, v40);
  v68 = sub_2545FE734();
  v41 = *(v68 - 8);
  v69 = *(v41 + 56);
  v70 = v41 + 56;
  v42 = v61;
  v69(v61, 1, 1, v68);
  v79 = *MEMORY[0x277CBA308];
  v43 = *(v88 + 104);
  v88 += 104;
  v71 = v43;
  v44 = v86;
  v43(v85);
  v63 = sub_2545FE7A4();
  *v87 = v63;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606540, &qword_254600328);
  sub_2545FF0F4();
  sub_2545FEB14();
  v45 = v73;
  v73(v77, v82, v84);
  sub_2545FEA74();
  v46 = v39;
  v78(v39, 1, 1, v81);
  LOBYTE(v90) = 0;
  v47 = v42;
  v48 = v68;
  v49 = v69;
  v69(v42, 1, 1, v68);
  v49(v74, 1, 1, v48);
  v50 = v44;
  v51 = v71;
  v71(v85, v79, v50);
  sub_2545B241C();
  v62 = sub_2545FE784();
  v87[1] = v62;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606550, &qword_254600330);
  sub_2545FF0F4();
  sub_2545FEB14();
  v45(v77, v82, v84);
  sub_2545FEA74();
  v78(v46, 1, 1, v81);
  v52 = type metadata accessor for SelectedHomeEntity();
  (*(*(v52 - 8) + 56))(v75, 1, 1, v52);
  v53 = v68;
  v54 = v69;
  v69(v47, 1, 1, v68);
  v54(v74, 1, 1, v53);
  v55 = v85;
  v51(v85, v79, v86);
  sub_2545B2470();
  v87[2] = sub_2545FE794();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606560, &qword_254600338);
  sub_2545FF0F4();
  sub_2545FEB14();
  v73(v77, v82, v84);
  sub_2545FEA74();
  v78(v46, 1, 1, v81);
  v90 = 0;
  sub_2545FE804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606568, &qword_254600340);
  swift_getKeyPath();
  swift_getKeyPath();
  v89 = sub_2545FE974();
  v71(v55, v79, v86);
  sub_2545B3C58();
  sub_2545B4F2C(&qword_27F606578, &qword_27F606580, &qword_254600398);
  v87[3] = sub_2545FE7B4();
  LOBYTE(v90) = 1;
  sub_2545FE764();
  LOBYTE(v90) = 0;
  sub_2545FE764();
  v56 = v66;
  v57 = v75;
  sub_2545B3CAC(v66, v75);
  sub_2545B3CAC(v57, v65);
  sub_2545FE764();
  sub_2545B3D1C(v57);
  v90 = 0;
  sub_2545FE764();
  return sub_2545B3D1C(v56);
}

uint64_t HomeXLModuleConfigurationIntent.home.setter(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = *(v1 + 16);
  sub_2545B3CAC(a1, &v7 - v5);
  sub_2545FE764();
  return sub_2545B3D1C(a1);
}

uint64_t HomeXLModuleConfigurationIntent.useRecommendations.getter()
{
  v1 = *v0;
  sub_2545FE754();
  return v3;
}

uint64_t sub_2545B31F0(char *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = *a1;
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE764();
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  return sub_2545FEA14();
}

uint64_t (*HomeXLModuleConfigurationIntent.useRecommendations.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2545FE744();
  return sub_2545B32E8;
}

uint64_t HomeXLModuleConfigurationIntent.show.getter()
{
  v1 = *(v0 + 8);
  sub_2545FE754();
  return v3;
}

uint64_t sub_2545B3344(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = *a1;
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE764();
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  return sub_2545FEA14();
}

uint64_t (*HomeXLModuleConfigurationIntent.show.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2545FE744();
  return sub_2545B4F74;
}

uint64_t (*HomeXLModuleConfigurationIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2545FE744();
  return sub_2545B4F74;
}

uint64_t HomeXLModuleConfigurationIntent.items.getter()
{
  v1 = *(v0 + 24);
  sub_2545FE754();
  return v3;
}

uint64_t sub_2545B3550(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = *a1;
  sub_2545FE8E4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE764();
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  return sub_2545FEA14();
}

uint64_t (*HomeXLModuleConfigurationIntent.items.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_2545FE744();
  return sub_2545B4F74;
}

void sub_2545B364C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t static HomeXLModuleConfigurationIntent.parameterSummary.getter()
{
  v0 = sub_2545FE9E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  (*(v1 + 104))(v4, *MEMORY[0x277CBA468], v0);
  v6[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606588, &qword_2546003A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606590, &qword_2546003A8);
  sub_2545B40B0();
  sub_2545B4F2C(&qword_27F606598, &qword_27F606588, &qword_2546003A0);
  sub_2545B4F2C(&qword_27F6065A0, &qword_27F606590, &qword_2546003A8);
  sub_2545B4F2C(&qword_27F6065A8, &qword_27F606538, &unk_254600300);
  return sub_2545FEA24();
}

uint64_t sub_2545B38F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2545FE774();
  *a2 = result;
  return result;
}

uint64_t sub_2545B3920@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_2545FE9D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606588, &qword_2546003A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  swift_getKeyPath();
  (*(v2 + 104))(v5, *MEMORY[0x277CBA3E8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606590, &qword_2546003A8);
  sub_2545B40B0();
  sub_2545B4F2C(&qword_27F6065A0, &qword_27F606590, &qword_2546003A8);
  sub_2545B4F2C(&qword_27F6065D8, &qword_27F606550, &qword_254600330);
  sub_2545FEA14();
  v14 = sub_2545B4F2C(&qword_27F606598, &qword_27F606588, &qword_2546003A0);
  MEMORY[0x259C11820](v11, &type metadata for HomeXLModuleConfigurationIntent, v6, v14);
  v15 = *(v7 + 8);
  v15(v11, v6);
  MEMORY[0x259C11810](v13, &type metadata for HomeXLModuleConfigurationIntent, v6, v14);
  return (v15)(v13, v6);
}

uint64_t sub_2545B3C2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2545FE774();
  *a2 = result;
  return result;
}

unint64_t sub_2545B3C58()
{
  result = qword_27F606570;
  if (!qword_27F606570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606570);
  }

  return result;
}

uint64_t sub_2545B3CAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2545B3D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2545B3DC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606590, &qword_2546003A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2545B40B0();
  sub_2545FE904();
  v8 = sub_2545B4F2C(&qword_27F6065A0, &qword_27F606590, &qword_2546003A8);
  MEMORY[0x259C11820](v5, &type metadata for HomeXLModuleConfigurationIntent, v0, v8);
  v9 = *(v1 + 8);
  v9(v5, v0);
  MEMORY[0x259C11810](v7, &type metadata for HomeXLModuleConfigurationIntent, v0, v8);
  return (v9)(v7, v0);
}

uint64_t sub_2545B3F60()
{
  swift_getKeyPath();
  sub_2545B40B0();
  v0 = sub_2545FE8F4();
  sub_2545FEA14();
  swift_getKeyPath();
  sub_2545FE8F4();
  v1 = sub_2545FE8F4();
  sub_2545FEA14();
  swift_getKeyPath();
  sub_2545FE8F4();
  v2 = sub_2545FE8F4();
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6065D0, &qword_2546005A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2546002C0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  sub_2545FE8F4();
  v4 = sub_2545FE8E4();

  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  return v4;
}

unint64_t sub_2545B40B0()
{
  result = qword_281532E80;
  if (!qword_281532E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532E80);
  }

  return result;
}

uint64_t sub_2545B4110()
{
  swift_getKeyPath();
  sub_2545B40B0();
  v0 = sub_2545FE8F4();
  sub_2545FEA14();
  swift_getKeyPath();
  sub_2545FE8F4();
  v1 = sub_2545FE8F4();
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6065D0, &qword_2546005A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2546002D0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_2545FE8F4();
  v3 = sub_2545FE8E4();

  sub_2545FEA14();
  sub_2545FEA14();
  return v3;
}

uint64_t sub_2545B4208()
{
  swift_beginAccess();
  v0 = *aComAppleHome;
  sub_2545FE8E4();
  return v0;
}

uint64_t sub_2545B4260@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F606380 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FEA64();
  v3 = __swift_project_value_buffer(v2, qword_27F6064F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2545B4318()
{
  v0 = sub_2545FE9E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  (*(v1 + 104))(v4, *MEMORY[0x277CBA468], v0);
  v6[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606588, &qword_2546003A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606590, &qword_2546003A8);
  sub_2545B4F2C(&qword_27F606598, &qword_27F606588, &qword_2546003A0);
  sub_2545B4F2C(&qword_27F6065A0, &qword_27F606590, &qword_2546003A8);
  sub_2545B4F2C(&qword_27F6065A8, &qword_27F606538, &unk_254600300);
  return sub_2545FEA24();
}

uint64_t sub_2545B4550(uint64_t a1, uint64_t a2)
{
  v4 = *(MEMORY[0x277CBA3A8] + 4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_2545B4ED8();
  *v5 = v2;
  v5[1] = sub_2545B45FC;

  return MEMORY[0x28210C3E0](a2, v6);
}

uint64_t sub_2545B45FC()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_2545B4708(uint64_t a1)
{
  v2 = sub_2545B40B0();

  return MEMORY[0x28210B538](a1, v2);
}

double HomeXLModuleConfigurationIntent.init(home:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v17 - v6;
  v8 = [a1 uniqueIdentifier];
  sub_2545FEAC4();

  v9 = [a1 name];
  v10 = sub_2545FF174();
  v12 = v11;

  v13 = type metadata accessor for SelectedHomeEntity();
  v14 = &v7[*(v13 + 20)];
  *v14 = v10;
  v14[1] = v12;
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  HomeXLModuleConfigurationIntent.init(home:)(v7, v17);

  result = *v17;
  v16 = v17[1];
  *a2 = v17[0];
  a2[1] = v16;
  return result;
}

double HomeXLModuleConfigurationIntent.init(home:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - v6;
  sub_2545FEB34();
  v8 = sub_2545FEB54();
  v10 = v9;
  v11 = type metadata accessor for SelectedHomeEntity();
  v12 = &v7[*(v11 + 20)];
  *v12 = v8;
  v12[1] = v10;
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  HomeXLModuleConfigurationIntent.init(home:)(v7, v16);
  v13 = sub_2545FEB64();
  (*(*(v13 - 8) + 8))(a1, v13);
  result = *v16;
  v15 = v16[1];
  *a2 = v16[0];
  a2[1] = v15;
  return result;
}

uint64_t static HomeXLModuleConfigurationIntent.defaultIntent.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545B4A60, 0, 0);
}

uint64_t sub_2545B4A60()
{
  v7 = v0;
  HomeXLModuleConfigurationIntent.init()(v6);
  v1 = v6[1];
  v0[5] = v6[0];
  v0[6] = v1;
  v2 = v6[3];
  v0[7] = v6[2];
  v0[8] = v2;
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_2545B4B40;
  v4 = v0[4];

  return static SelectedHomeEntity.selectedHome.getter(v4);
}

uint64_t sub_2545B4B40()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2545B4C3C, 0, 0);
}

uint64_t sub_2545B4C3C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  sub_2545B3CAC(v5, v0[3]);
  sub_2545FE764();
  sub_2545B3D1C(v5);
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  *v6 = v4;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v1;

  v7 = v0[1];

  return v7();
}

unint64_t sub_2545B4D14()
{
  result = qword_281532E78;
  if (!qword_281532E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532E78);
  }

  return result;
}

unint64_t sub_2545B4D6C()
{
  result = qword_281532E88;
  if (!qword_281532E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532E88);
  }

  return result;
}

unint64_t sub_2545B4DC4()
{
  result = qword_27F6065B0;
  if (!qword_27F6065B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6065B0);
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

uint64_t sub_2545B4E40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2545B4E88(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2545B4ED8()
{
  result = qword_27F6065C8;
  if (!qword_27F6065C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6065C8);
  }

  return result;
}

uint64_t sub_2545B4F2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ToggleControlConfigurationIntent.attributionBundleIdentifier.getter()
{
  swift_beginAccess();
  v0 = *aComAppleHome_0;
  sub_2545FE8E4();
  return v0;
}

uint64_t static ToggleControlConfigurationIntent.attributionBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aComAppleHome_0 = a1;
  *&aComAppleHome_0[8] = a2;
}

uint64_t sub_2545B5084(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aComAppleHome_0 = v2;
  *&aComAppleHome_0[8] = v1;
  sub_2545FE8E4();
}

uint64_t sub_2545B50E8()
{
  v0 = sub_2545FEA44();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2545FEB24();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2545FF154();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2545FEA64();
  __swift_allocate_value_buffer(v9, qword_27F6065F0);
  __swift_project_value_buffer(v9, qword_27F6065F0);
  sub_2545FF0F4();
  sub_2545FEB14();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2545FEA74();
}

uint64_t sub_2545B5310()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2545FEA44();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2545FEB24();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2545FF154();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2545FEA64();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2545FE7D4();
  __swift_allocate_value_buffer(v15, qword_27F606608);
  __swift_project_value_buffer(v15, qword_27F606608);
  sub_2545FF0F4();
  sub_2545FEB14();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2545FEA74();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2545FE7E4();
}

uint64_t ToggleControlConfigurationIntent.init(home:accessoriesAndScenes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v69 = a2;
  v67 = a1;
  v74 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v68 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v66 = v50 - v7;
  v73 = sub_2545FE914();
  v75 = *(v73 - 8);
  v8 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  v64 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606528, &qword_2546002E8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v72 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v65 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v70 = v50 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v63 = v50 - v22;
  v61 = sub_2545FEA44();
  v23 = *(v61 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v61);
  v26 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2545FEB24();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2545FF154();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = sub_2545FEA64();
  v55 = v33;
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606550, &qword_254600330);
  sub_2545FF0F4();
  v59 = &qword_2546005E0;
  v50[2] = v30;
  sub_2545FEB14();
  v58 = *MEMORY[0x277CC9110];
  v36 = *(v23 + 104);
  v60 = v23 + 104;
  v62 = v36;
  v53 = v26;
  v36(v26);
  sub_2545FEA74();
  v37 = *(v34 + 56);
  v54 = v34 + 56;
  v56 = v37;
  v38 = v63;
  v37(v63, 1, 1, v33);
  v39 = type metadata accessor for SelectedHomeEntity();
  (*(*(v39 - 8) + 56))(v70, 1, 1, v39);
  v40 = sub_2545FE734();
  v41 = *(*(v40 - 8) + 56);
  v41(v71, 1, 1, v40);
  v41(v72, 1, 1, v40);
  v51 = *MEMORY[0x277CBA308];
  v42 = *(v75 + 104);
  v75 += 104;
  v52 = v42;
  v43 = v64;
  v42(v64);
  sub_2545B84C0(&qword_27F606558, type metadata accessor for SelectedHomeEntity);
  v57 = sub_2545FE794();
  *v74 = v57;
  v50[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606628, &qword_254600618);
  sub_2545FF0F4();
  sub_2545FEB14();
  v62(v53, v58, v61);
  sub_2545FEA74();
  v56(v38, 1, 1, v55);
  v44 = type metadata accessor for ToggleControlEntity();
  v45 = v66;
  (*(*(v44 - 8) + 56))(v66, 1, 1, v44);
  v41(v71, 1, 1, v40);
  v41(v72, 1, 1, v40);
  v52(v43, v51, v73);
  sub_2545B84C0(&qword_27F6064A8, type metadata accessor for ToggleControlEntity);
  v74[1] = sub_2545FE794();
  v46 = v67;
  v47 = v70;
  sub_2545B60C4(v67, v70, &qword_27F606520, &qword_2546002E0);
  sub_2545B60C4(v47, v65, &qword_27F606520, &qword_2546002E0);
  sub_2545FE764();
  sub_2545B612C(v47, &qword_27F606520, &qword_2546002E0);
  v48 = v69;
  sub_2545B60C4(v69, v45, &qword_27F606620, &unk_2546005F0);
  sub_2545B60C4(v45, v68, &qword_27F606620, &unk_2546005F0);
  sub_2545FE764();
  sub_2545B612C(v48, &qword_27F606620, &unk_2546005F0);
  sub_2545B612C(v46, &qword_27F606520, &qword_2546002E0);
  return sub_2545B612C(v45, &qword_27F606620, &unk_2546005F0);
}

uint64_t ToggleControlConfigurationIntent.home.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *v1;
  sub_2545B60C4(a1, &v8 - v6, &qword_27F606520, &qword_2546002E0);
  sub_2545FE764();
  return sub_2545B612C(a1, &qword_27F606520, &qword_2546002E0);
}

uint64_t ToggleControlConfigurationIntent.accessoriesAndScenes.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 8);
  sub_2545B60C4(a1, &v8 - v6, &qword_27F606620, &unk_2546005F0);
  sub_2545FE764();
  return sub_2545B612C(a1, &qword_27F606620, &unk_2546005F0);
}

uint64_t sub_2545B60C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2545B612C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double ToggleControlConfigurationIntent.init()@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SelectedHomeEntity();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = type metadata accessor for ToggleControlEntity();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  ToggleControlConfigurationIntent.init(home:accessoriesAndScenes:)(v9, v5, &v13);
  result = *&v13;
  *a1 = v13;
  return result;
}

uint64_t (*ToggleControlConfigurationIntent.home.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2545FE744();
  return sub_2545B4F74;
}

uint64_t sub_2545B63CC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_2545B60C4(a1, &v14 - v9, &qword_27F606620, &unk_2546005F0);
  v12 = *a2;
  v11 = a2[1];
  sub_2545B60C4(v10, v8, &qword_27F606620, &unk_2546005F0);
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE764();
  sub_2545B612C(v10, &qword_27F606620, &unk_2546005F0);
  sub_2545FEA14();
  return sub_2545FEA14();
}

uint64_t (*ToggleControlConfigurationIntent.accessoriesAndScenes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2545FE744();
  return sub_2545B32E8;
}

uint64_t static ToggleControlConfigurationIntent.parameterSummary.getter()
{
  v0 = sub_2545FE9D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v4, *MEMORY[0x277CBA3E8], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606630, &qword_254600648);
  sub_2545B69D0();
  sub_2545B4F2C(&qword_27F606638, &qword_27F606630, &qword_254600648);
  sub_2545B4F2C(&qword_27F6065D8, &qword_27F606550, &qword_254600330);
  return sub_2545FEA14();
}

uint64_t sub_2545B675C()
{
  swift_getKeyPath();
  sub_2545B69D0();
  v0 = sub_2545FE8F4();
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6065D0, &qword_2546005A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2546005D0;
  *(v1 + 32) = v0;
  sub_2545FE8F4();
  v2 = sub_2545FE8E4();

  sub_2545FEA14();
  return v2;
}

uint64_t sub_2545B6830()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606630, &qword_254600648);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2545B69D0();
  sub_2545FE904();
  v8 = sub_2545B4F2C(&qword_27F606638, &qword_27F606630, &qword_254600648);
  MEMORY[0x259C11820](v5, &type metadata for ToggleControlConfigurationIntent, v0, v8);
  v9 = *(v1 + 8);
  v9(v5, v0);
  MEMORY[0x259C11810](v7, &type metadata for ToggleControlConfigurationIntent, v0, v8);
  return (v9)(v7, v0);
}

unint64_t sub_2545B69D0()
{
  result = qword_281532CB8;
  if (!qword_281532CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532CB8);
  }

  return result;
}

uint64_t sub_2545B6A24()
{
  swift_getKeyPath();
  sub_2545B69D0();
  v0 = sub_2545FE8F4();
  sub_2545FEA14();
  swift_getKeyPath();
  sub_2545FE8F4();
  v1 = sub_2545FE8F4();
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6065D0, &qword_2546005A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2546002D0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_2545FE8F4();
  v3 = sub_2545FE8E4();

  sub_2545FEA14();
  sub_2545FEA14();
  return v3;
}

uint64_t sub_2545B6B18()
{
  swift_beginAccess();
  v0 = *aComAppleHome_0;
  sub_2545FE8E4();
  return v0;
}

uint64_t sub_2545B6B6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F606390 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FEA64();
  v3 = __swift_project_value_buffer(v2, qword_27F6065F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2545B6C14()
{
  v0 = sub_2545FE9D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v4, *MEMORY[0x277CBA3E8], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606630, &qword_254600648);
  sub_2545B4F2C(&qword_27F606638, &qword_27F606630, &qword_254600648);
  sub_2545B4F2C(&qword_27F6065D8, &qword_27F606550, &qword_254600330);
  return sub_2545FEA14();
}

uint64_t sub_2545B6DD4(uint64_t a1, uint64_t a2)
{
  v4 = *(MEMORY[0x277CBA3D0] + 4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_2545B8788();
  *v5 = v2;
  v5[1] = sub_2545B45FC;

  return MEMORY[0x28210C400](a2, v6);
}

double sub_2545B6E80@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SelectedHomeEntity();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = type metadata accessor for ToggleControlEntity();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  ToggleControlConfigurationIntent.init(home:accessoriesAndScenes:)(v9, v5, &v13);
  result = *&v13;
  *a1 = v13;
  return result;
}

uint64_t sub_2545B6FE0(uint64_t a1)
{
  v2 = sub_2545B69D0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t ToggleControlConfigurationIntent.uniqueIdentifier.getter()
{
  v1 = type metadata accessor for ElementID();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39 - v7;
  v9 = type metadata accessor for ToggleControlEntity();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = *(v0 + 8);
  sub_2545FE754();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2545B612C(v8, &qword_27F606620, &unk_2546005F0);
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v18 = sub_2545FF0A4();
    __swift_project_value_buffer(v18, qword_27F60ADD8);
    v19 = sub_2545FF084();
    v20 = sub_2545FF454();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2545AB000, v19, v20, "ToggleControlConfigurationIntent missing entity identifier", v21, 2u);
      MEMORY[0x259C12CB0](v21, -1, -1);
    }

    return sub_2545FEF14();
  }

  else
  {
    sub_2545B845C(v8, v16);
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v23 = sub_2545FF0A4();
    __swift_project_value_buffer(v23, qword_27F60ADD8);
    sub_2545B8554(v16, v14, type metadata accessor for ToggleControlEntity);
    v24 = sub_2545FF084();
    v25 = sub_2545FF444();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = v27;
      *v26 = 136315138;
      sub_2545B8554(v14, v4, type metadata accessor for ElementID);
      v28 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
      v39 = v1;
      v30 = v29;
      sub_2545B85BC(v4, type metadata accessor for ElementID);
      sub_2545B85BC(v14, type metadata accessor for ToggleControlEntity);
      v31 = sub_2545F0FB4(v28, v30, &v40);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_2545AB000, v24, v25, "Computing control identifier for entity identifier %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x259C12CB0](v27, -1, -1);
      MEMORY[0x259C12CB0](v26, -1, -1);
    }

    else
    {

      sub_2545B85BC(v14, type metadata accessor for ToggleControlEntity);
    }

    sub_2545B84C0(&qword_27F606458, type metadata accessor for ElementID);
    v22 = sub_2545FEF04();
    v33 = v32;
    sub_2545FE8E4();
    v34 = sub_2545FF084();
    v35 = sub_2545FF444();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v40 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_2545F0FB4(v22, v33, &v40);
      _os_log_impl(&dword_2545AB000, v34, v35, "Computed control identifier %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x259C12CB0](v37, -1, -1);
      MEMORY[0x259C12CB0](v36, -1, -1);
    }

    sub_2545B85BC(v16, type metadata accessor for ToggleControlEntity);
  }

  return v22;
}

double ToggleControlConfigurationIntent.init(accessoriesAndScenes:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for ToggleControlEntity();
  sub_2545B8554(a1 + *(v12 + 20), v11, type metadata accessor for HomeID);
  v13 = type metadata accessor for SelectedHomeEntity();
  v14 = &v11[*(v13 + 20)];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  sub_2545B8554(a1, v7, type metadata accessor for ToggleControlEntity);
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  ToggleControlConfigurationIntent.init(home:accessoriesAndScenes:)(v11, v7, &v16);
  sub_2545B85BC(a1, type metadata accessor for ToggleControlEntity);
  result = *&v16;
  *a2 = v16;
  return result;
}

double ToggleControlConfigurationIntent.init(home:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v12 = [a1 uniqueIdentifier];
  sub_2545FEAC4();

  v13 = [a1 name];
  v14 = sub_2545FF174();
  v16 = v15;

  v17 = type metadata accessor for SelectedHomeEntity();
  v18 = &v11[*(v17 + 20)];
  *v18 = v14;
  v18[1] = v16;
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  v19 = type metadata accessor for ToggleControlEntity();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  ToggleControlConfigurationIntent.init(home:accessoriesAndScenes:)(v11, v7, &v21);

  result = *&v21;
  *a2 = v21;
  return result;
}

double ToggleControlConfigurationIntent.init(home:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  sub_2545FEB34();
  v12 = sub_2545FEB54();
  v14 = v13;
  v15 = type metadata accessor for SelectedHomeEntity();
  v16 = &v11[*(v15 + 20)];
  *v16 = v12;
  v16[1] = v14;
  (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  v17 = type metadata accessor for ToggleControlEntity();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  ToggleControlConfigurationIntent.init(home:accessoriesAndScenes:)(v11, v7, &v20);
  v18 = sub_2545FEB64();
  (*(*(v18 - 8) + 8))(a1, v18);
  result = *&v20;
  *a2 = v20;
  return result;
}

uint64_t static ToggleControlConfigurationIntent.defaultIntent.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545B7C40, 0, 0);
}

uint64_t sub_2545B7C40()
{
  v10 = v0;
  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for SelectedHomeEntity();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = type metadata accessor for ToggleControlEntity();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  ToggleControlConfigurationIntent.init(home:accessoriesAndScenes:)(v1, v2, v9);
  v5 = v9[1];
  v0[6] = v9[0];
  v0[7] = v5;
  sub_2545FE8F4();
  sub_2545FE8F4();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_2545B7D90;
  v7 = v0[5];

  return static SelectedHomeEntity.selectedHome.getter(v7);
}

uint64_t sub_2545B7D90()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2545B7E8C, 0, 0);
}

uint64_t sub_2545B7E8C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  sub_2545B60C4(v3, v0[4], &qword_27F606520, &qword_2546002E0);
  sub_2545FE764();
  sub_2545B612C(v3, &qword_27F606520, &qword_2546002E0);
  sub_2545FEA14();
  sub_2545FEA14();
  *v5 = v2;
  v5[1] = v1;

  v6 = v0[1];

  return v6();
}

uint64_t ToggleControlConfigurationIntent.description.getter()
{
  v30 = type metadata accessor for ToggleControlEntity();
  v1 = *(v30 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606620, &unk_2546005F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for SelectedHomeEntity();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - v15;
  v18 = *v0;
  v17 = v0[1];
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_2545FF594();
  MEMORY[0x259C120B0](0xD000000000000025, 0x8000000254603A70);
  sub_2545FE754();
  if ((*(v9 + 48))(v16, 1, v8))
  {
    sub_2545B612C(v16, &qword_27F606520, &qword_2546002E0);
    v19 = 0xE300000000000000;
    v20 = 7104878;
  }

  else
  {
    sub_2545B8554(v16, v12, type metadata accessor for SelectedHomeEntity);
    sub_2545B612C(v16, &qword_27F606520, &qword_2546002E0);
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_2545FF594();

    v34 = 0xD000000000000013;
    v35 = 0x8000000254603AC0;
    v21 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
    MEMORY[0x259C120B0](v21);

    MEMORY[0x259C120B0](41, 0xE100000000000000);
    v20 = v34;
    v19 = v35;
    sub_2545B85BC(v12, type metadata accessor for SelectedHomeEntity);
  }

  MEMORY[0x259C120B0](v20, v19);

  MEMORY[0x259C120B0](0xD000000000000018, 0x8000000254603AA0);
  sub_2545FE754();
  if ((*(v1 + 48))(v7, 1, v30))
  {
    sub_2545B612C(v7, &qword_27F606620, &unk_2546005F0);
    v22 = 0xE300000000000000;
    v23 = 7104878;
  }

  else
  {
    v24 = v29;
    sub_2545B8554(v7, v29, type metadata accessor for ToggleControlEntity);
    sub_2545B612C(v7, &qword_27F606620, &unk_2546005F0);
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_2545FF594();

    v34 = 0xD000000000000014;
    v35 = 0x80000002546038F0;
    v31 = qword_254600898[*(v24 + *(type metadata accessor for ElementID() + 20))];
    v32 = sub_2545FF794();
    v33 = v25;
    MEMORY[0x259C120B0](58, 0xE100000000000000);
    v26 = _s17HomeWidgetIntents0A2IDV11descriptionSSvg_0();
    MEMORY[0x259C120B0](v26);

    MEMORY[0x259C120B0](v32, v33);

    MEMORY[0x259C120B0](41, 0xE100000000000000);
    v23 = v34;
    v22 = v35;
    sub_2545B85BC(v24, type metadata accessor for ToggleControlEntity);
  }

  MEMORY[0x259C120B0](v23, v22);

  MEMORY[0x259C120B0](41, 0xE100000000000000);
  return v36;
}

uint64_t sub_2545B845C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToggleControlEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2545B84C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
  return sub_2545FEA14();
}

uint64_t sub_2545B8554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2545B85BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2545B8620()
{
  result = qword_281532CB0;
  if (!qword_281532CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281532CB0);
  }

  return result;
}

unint64_t sub_2545B8678()
{
  result = qword_281532CC0[0];
  if (!qword_281532CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281532CC0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2545B86F4(uint64_t *a1, int a2)
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

uint64_t sub_2545B873C(uint64_t result, int a2, int a3)
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

unint64_t sub_2545B8788()
{
  result = qword_27F606650;
  if (!qword_27F606650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606650);
  }

  return result;
}

uint64_t sub_2545B8804(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606520, &qword_2546002E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_2545B60C4(a1, &v16 - v9, &qword_27F606520, &qword_2546002E0);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  sub_2545B60C4(v10, v8, &qword_27F606520, &qword_2546002E0);
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE8F4();
  sub_2545FE764();
  sub_2545B612C(v10, &qword_27F606520, &qword_2546002E0);
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545FEA14();
  return sub_2545FEA14();
}

uint64_t HomeXLTileEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606568, &qword_254600340);
  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_2545FE974();
  *a1 = result;
  return result;
}

uint64_t sub_2545B8A00()
{
  v1 = *(v0 + 16);
  v2 = sub_2545FEF64();
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2545B8ABC;

  return sub_2545C90B8(1, v1, v2);
}

uint64_t sub_2545B8ABC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v7 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v5 = sub_2545B8EEC;
  }

  else
  {
    v5 = sub_2545B8BD0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2545B8BD0()
{
  v32 = v0;
  if (*(v0[4] + 16))
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
      v30 = v0[4];
    }

    v1 = v0[2];
    v2 = sub_2545FF0A4();
    __swift_project_value_buffer(v2, qword_27F60ADD8);
    sub_2545FE8E4();
    sub_2545FE8E4();
    v3 = sub_2545FF084();
    v4 = sub_2545FF434();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[4];
      v6 = v0[2];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v31 = v8;
      *v7 = 136315394;
      v9 = type metadata accessor for ElementID();
      v10 = MEMORY[0x259C121B0](v6, v9);
      v12 = sub_2545F0FB4(v10, v11, &v31);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2080;
      v13 = type metadata accessor for HomeXLTileEntity();
      v14 = MEMORY[0x259C121B0](v5, v13);
      v16 = sub_2545F0FB4(v14, v15, &v31);

      *(v7 + 14) = v16;
      _os_log_impl(&dword_2545AB000, v3, v4, "entities(for: %s returned %s", v7, 0x16u);
      swift_arrayDestroy();
      v17 = v8;
LABEL_10:
      MEMORY[0x259C12CB0](v17, -1, -1);
      MEMORY[0x259C12CB0](v7, -1, -1);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v18 = v0[2];
    v19 = sub_2545FF0A4();
    __swift_project_value_buffer(v19, qword_27F60ADD8);
    sub_2545FE8E4();
    v3 = sub_2545FF084();
    v20 = sub_2545FF454();

    if (os_log_type_enabled(v3, v20))
    {
      v21 = v0[2];
      v7 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v7 = 136315138;
      v23 = type metadata accessor for ElementID();
      v24 = MEMORY[0x259C121B0](v21, v23);
      v26 = sub_2545F0FB4(v24, v25, &v31);

      *(v7 + 4) = v26;
      _os_log_impl(&dword_2545AB000, v3, v20, "entities(for: %s returned empty", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v17 = v22;
      goto LABEL_10;
    }
  }

  v27 = v0[4];
  v28 = v0[1];

  return v28(v27);
}

uint64_t sub_2545B8EEC()
{
  v22 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = sub_2545FF0A4();
  __swift_project_value_buffer(v3, qword_27F60ADD8);
  sub_2545FE8E4();
  v4 = v1;
  v5 = sub_2545FF084();
  v6 = sub_2545FF454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 40);
    v8 = *(v0 + 16);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = type metadata accessor for ElementID();
    v13 = MEMORY[0x259C121B0](v8, v12);
    v15 = sub_2545F0FB4(v13, v14, &v21);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_2545AB000, v5, v6, "entities(for: %s threw error %@", v9, 0x16u);
    sub_2545B612C(v10, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x259C12CB0](v11, -1, -1);
    MEMORY[0x259C12CB0](v9, -1, -1);
  }

  v18 = *(v0 + 8);
  v19 = MEMORY[0x277D84F90];

  return v18(v19);
}

uint64_t HomeXLTileEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = *(*(type metadata accessor for SelectedHomeEntity() - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606668, &qword_254600980);
  v4[7] = v7;
  v8 = *(v7 - 8);
  v4[8] = v8;
  v9 = *(v8 + 64) + 15;
  v4[9] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *v3;
  v4[10] = v10;
  v4[11] = v11;

  return MEMORY[0x2822009F8](sub_2545B925C, 0, 0);
}

uint64_t sub_2545B925C()
{
  v1 = v0[11];
  if (sub_2545FE964())
  {
    v3 = v0[5];
    v2 = v0[6];
    swift_getKeyPath();
    sub_2545CE174();
    sub_2545FE7C4();
    sub_2545FEA14();
    sub_2545FEA14();
    sub_2545D8660(v3, v2, type metadata accessor for HomeID);
    sub_2545D86C8(v3, type metadata accessor for SelectedHomeEntity);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[6];
  v6 = v0[4];
  v7 = type metadata accessor for HomeID();
  (*(*(v7 - 8) + 56))(v5, v4, 1, v7);
  v8 = sub_2545FEF64();
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_2545B9400;
  v10 = v0[10];
  v11 = v0[6];
  v12 = v0[3];

  return sub_2545B9B88(v10, v12, v6, v11, v8);
}

uint64_t sub_2545B9400()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 104) = v0;

  sub_2545B612C(v3, &qword_27F606660, &qword_254600978);
  if (v0)
  {
    v4 = sub_2545B9904;
  }

  else
  {
    v4 = sub_2545B9540;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2545B9540()
{
  v41 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = *(sub_2545FE864() + 16);

  if (v3)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    v8 = v0[4];
    v9 = sub_2545FF0A4();
    __swift_project_value_buffer(v9, qword_27F60ADD8);
    (*(v7 + 16))(v4, v5, v6);
    sub_2545FE8E4();
    v10 = sub_2545FF084();
    v11 = sub_2545FF434();

    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[7];
    if (v12)
    {
      v17 = v0[3];
      v16 = v0[4];
      v18 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v18 = 136315394;
      *(v18 + 4) = sub_2545F0FB4(v17, v16, &v40);
      *(v18 + 12) = 2080;
      v19 = sub_2545FE864();
      v20 = type metadata accessor for HomeXLTileEntity();
      v21 = MEMORY[0x259C121B0](v19, v20);
      v23 = v22;

      (*(v14 + 8))(v13, v15);
      v24 = sub_2545F0FB4(v21, v23, &v40);

      *(v18 + 14) = v24;
      _os_log_impl(&dword_2545AB000, v10, v11, "entities(matching: %s returned %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C12CB0](v39, -1, -1);
      MEMORY[0x259C12CB0](v18, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v25 = v0[4];
    v26 = sub_2545FF0A4();
    __swift_project_value_buffer(v26, qword_27F60ADD8);
    sub_2545FE8E4();
    v27 = sub_2545FF084();
    v28 = sub_2545FF454();

    if (os_log_type_enabled(v27, v28))
    {
      v30 = v0[3];
      v29 = v0[4];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_2545F0FB4(v30, v29, &v40);
      _os_log_impl(&dword_2545AB000, v27, v28, "entities(matching: %s returned empty", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x259C12CB0](v32, -1, -1);
      MEMORY[0x259C12CB0](v31, -1, -1);
    }
  }

  (*(v0[8] + 32))(v0[2], v0[10], v0[7]);
  v34 = v0[9];
  v33 = v0[10];
  v36 = v0[5];
  v35 = v0[6];

  v37 = v0[1];

  return v37();
}

uint64_t sub_2545B9904()
{
  v24 = v0;
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[4];
  v3 = sub_2545FF0A4();
  __swift_project_value_buffer(v3, qword_27F60ADD8);
  sub_2545FE8E4();
  v4 = v1;
  v5 = sub_2545FF084();
  v6 = sub_2545FF454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_2545F0FB4(v9, v8, &v23);
    *(v10 + 12) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_2545AB000, v5, v6, "entities(matching: %s threw error %@", v10, 0x16u);
    sub_2545B612C(v11, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x259C12CB0](v12, -1, -1);
    MEMORY[0x259C12CB0](v10, -1, -1);
  }

  v15 = v0[13];
  v16 = v0[2];
  type metadata accessor for HomeXLTileEntity();
  sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity);
  sub_2545FE854();

  v18 = v0[9];
  v17 = v0[10];
  v20 = v0[5];
  v19 = v0[6];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2545B9B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_2545FEF84();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v9 = sub_2545FEE64();
  v5[21] = v9;
  v10 = *(v9 - 8);
  v5[22] = v10;
  v11 = *(v10 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606688, &qword_254601E20) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v14 = sub_2545FED84();
  v5[27] = v14;
  v15 = *(v14 - 8);
  v5[28] = v15;
  v16 = *(v15 + 64) + 15;
  v5[29] = swift_task_alloc();
  v17 = type metadata accessor for TileElementInfo();
  v5[30] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v19 = type metadata accessor for HomeXLTileEntity();
  v5[32] = v19;
  v20 = *(v19 - 8);
  v5[33] = v20;
  v21 = *(v20 + 64) + 15;
  v5[34] = swift_task_alloc();
  v22 = sub_2545FEA64();
  v5[35] = v22;
  v23 = *(v22 - 8);
  v5[36] = v23;
  v24 = *(v23 + 64) + 15;
  v5[37] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6067E0, &qword_254600CB8);
  v5[38] = v25;
  v26 = *(v25 - 8);
  v5[39] = v26;
  v27 = *(v26 + 64) + 15;
  v5[40] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#") - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v29 = sub_2545FEB64();
  v5[42] = v29;
  v30 = *(v29 - 8);
  v5[43] = v30;
  v31 = *(v30 + 64) + 15;
  v5[44] = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978) - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v33 = type metadata accessor for HomeID();
  v5[46] = v33;
  v34 = *(v33 - 8);
  v5[47] = v34;
  v35 = *(v34 + 64) + 15;
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545BA020, 0, 0);
}

uint64_t sub_2545BA020()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  sub_2545B60C4(v0[15], v3, &qword_27F606660, &qword_254600978);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2545B612C(v0[45], &qword_27F606660, &qword_254600978);
    v4 = 1;
  }

  else
  {
    v5 = v0[50];
    v6 = v0[47];
    sub_2545D8770(v0[45], v5, type metadata accessor for HomeID);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066C0, &qword_254600BB0);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2546008F0;
    sub_2545D8660(v5, v9 + v8, type metadata accessor for HomeID);
    v4 = sub_2545D7214(v9);
    swift_setDeallocating();
    sub_2545D86C8(v9 + v8, type metadata accessor for HomeID);
    swift_deallocClassInstance();
    sub_2545D86C8(v5, type metadata accessor for HomeID);
  }

  v0[51] = v4;
  sub_2545FECC4();
  if (sub_2545FECA4() == 7)
  {
    v10 = swift_task_alloc();
    v0[52] = v10;
    *v10 = v0;
    v10[1] = sub_2545BA2F0;
    v11 = v0[16];

    return sub_2545C90B8(v4, 0, v11);
  }

  else
  {
    v0[55] = sub_2545FEBD4();
    v0[56] = sub_2545FECE4();
    v0[57] = sub_2545FECD4();
    v0[58] = sub_2545D8728(&qword_27F6064D8, MEMORY[0x277D15960]);
    v14 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545BB274, v14, v13);
  }
}

uint64_t sub_2545BA2F0(unint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[52];
  v7 = *v2;
  v3[53] = a1;
  v3[54] = v1;

  if (v1)
  {
    v5 = sub_2545BB128;
  }

  else
  {
    sub_2545CE4A8(v3[51]);
    v5 = sub_2545BA40C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t *sub_2545BA40C()
{
  v118 = v0;
  v1 = v0[53];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[33];
    v4 = v0[30];
    v5 = v0[14];
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v106 = *(v3 + 72);
    v108 = v0[32];
    sub_2545FE8E4();
    v7 = MEMORY[0x277D84F98];
    v99 = v5;
    v101 = v4;
    while (1)
    {
      v10 = v0[34];
      v11 = v0[31];
      sub_2545D8660(v6, v10, type metadata accessor for HomeXLTileEntity);
      sub_2545D8660(v10 + *(v108 + 24), v11, type metadata accessor for TileElementInfo);
      if (!v5)
      {
        goto LABEL_8;
      }

      v12 = v0[13];
      v13 = (v0[31] + v4[5]);
      v15 = *v13;
      v14 = v13[1];
      v0[7] = v15;
      v0[8] = v14;
      v0[9] = v12;
      v0[10] = v5;
      sub_2545D8470();
      if ((sub_2545FF504() & 1) == 0)
      {
        v8 = v0[31];
        sub_2545D86C8(v0[34], type metadata accessor for HomeXLTileEntity);
        v9 = v8;
      }

      else
      {
LABEL_8:
        v16 = v0[31];
        if (*(v16 + v4[8]))
        {
          v17 = 0;
          v18 = 0;
          if (!*(v7 + 16))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v26 = (v16 + v4[7]);
          v18 = v26[1];
          if (v18)
          {
            v17 = *v26;
            v27 = v26[1];
            sub_2545FE8E4();
            if (!*(v7 + 16))
            {
              goto LABEL_14;
            }
          }

          else
          {
            v17 = 0;
            v18 = 1;
            if (!*(v7 + 16))
            {
LABEL_14:
              v104 = v16;
LABEL_16:
              v28 = v111[34];
              v113 = v17;
              v114 = v18;
              v115 = MEMORY[0x277D84F90];
              sub_2545D71E4(v17, v18);
              sub_2545C35DC(v28);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v117 = v7;
              sub_2545C810C(v17, v18, v115, v17, v18, isUniquelyReferenced_nonNull_native, &qword_27F606820, &unk_254600CF0);
              sub_2545D71F8(v17, v18);
              v0 = v111;
              sub_2545D86C8(v28, type metadata accessor for HomeXLTileEntity);
              sub_2545D86C8(v104, type metadata accessor for TileElementInfo);
              v5 = v99;
              v4 = v101;
              goto LABEL_5;
            }
          }
        }

        v19 = sub_2545C5718(v17, v18);
        v20 = v0[31];
        if ((v21 & 1) == 0)
        {
          v104 = v0[31];
          goto LABEL_16;
        }

        v103 = v0[34];
        v22 = (*(v7 + 56) + 24 * v19);
        v23 = v22[1];
        v24 = v22[2];
        v113 = *v22;
        v114 = v23;
        v115 = v24;
        sub_2545D71E4(v113, v23);
        sub_2545FE8E4();
        sub_2545C35DC(v103);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v117 = v7;
        v5 = v99;
        v4 = v101;
        v0 = v111;
        sub_2545C810C(v113, v114, v24, v17, v18, v25, &qword_27F606820, &unk_254600CF0);
        sub_2545D71F8(v17, v18);
        sub_2545D86C8(v103, type metadata accessor for HomeXLTileEntity);
        v9 = v20;
      }

      sub_2545D86C8(v9, type metadata accessor for TileElementInfo);
LABEL_5:
      v6 += v106;
      if (!--v2)
      {
        v30 = v0[53];

        goto LABEL_21;
      }
    }
  }

  v7 = MEMORY[0x277D84F98];
LABEL_21:
  v31 = *(v7 + 16);
  if (v31 != 1)
  {
    if (!v31)
    {
      v32 = v0[53];

      if (qword_27F6063A0 != -1)
      {
        swift_once();
      }

      v33 = sub_2545FF0A4();
      __swift_project_value_buffer(v33, qword_27F60ADD8);
      v34 = sub_2545FF084();
      v35 = sub_2545FF474();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v113 = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v113);
        _os_log_impl(&dword_2545AB000, v34, v35, "%s No accessories found, returning empty collection", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x259C12CB0](v37, -1, -1);
        MEMORY[0x259C12CB0](v36, -1, -1);
      }

      v38 = v0[32];
      v39 = v0[12];
      sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity);
      sub_2545FE854();
      goto LABEL_55;
    }

    v53 = v0[53];

    v54 = *(v7 + 16);
    if (v54)
    {
      v55 = sub_2545C4D14(*(v7 + 16), 0, &qword_27F606818, &qword_254600CE8);
      v56 = sub_2545C8E7C(&v113, v55 + 4, v54, v7);
      v57 = v116;
      swift_bridgeObjectRetain_n();
      sub_2545D720C();
      if (v56 != v54)
      {
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
      sub_2545FE8E4();
      v55 = MEMORY[0x277D84F90];
    }

    v48 = v0[54];
    v117 = v55;
    sub_2545C5944(&v117, sub_2545C8D0C, &qword_27F606810, &qword_254600CE0);
    if (v48)
    {
      goto LABEL_40;
    }

    v63 = v117[2];
    if (v63)
    {
      v64 = v0;
      v109 = v0[39];
      v65 = v117 + 6;
      v57 = MEMORY[0x277D84F90];
      do
      {
        v66 = v64[40];
        v67 = v57;
        v68 = v64[37];
        v69 = v64[32];
        v70 = *(v65 - 2);
        v71 = *(v65 - 1);
        v72 = *v65;
        sub_2545D71E4(v70, v71);
        sub_2545FE8E4();
        sub_2545C4014(v70, v71);
        v73 = sub_2545D74D4(v72);
        v74 = sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity);
        v75 = v68;
        v57 = v67;
        MEMORY[0x259C116E0](v75, v73, v69, v74);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_2545C4B2C(0, v67[2] + 1, 1, v67, &qword_27F6067F8, &qword_254600CC8, &qword_27F6067E0, &qword_254600CB8);
        }

        v77 = v57[2];
        v76 = v57[3];
        if (v77 >= v76 >> 1)
        {
          v57 = sub_2545C4B2C(v76 > 1, v77 + 1, 1, v57, &qword_27F6067F8, &qword_254600CC8, &qword_27F6067E0, &qword_254600CB8);
        }

        v64 = v111;
        v78 = v111[40];
        v79 = v111[38];
        v57[2] = v77 + 1;
        (*(v109 + 32))(v57 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v77, v78, v79);
        sub_2545D71F8(v70, v71);

        v65 += 3;
        --v63;
      }

      while (v63);
    }

    else
    {
      v57 = MEMORY[0x277D84F90];
    }

    sub_2545FEA14();
    if (qword_27F6063A0 == -1)
    {
LABEL_52:
      v80 = sub_2545FF0A4();
      __swift_project_value_buffer(v80, qword_27F60ADD8);
      v81 = sub_2545FF084();
      v82 = sub_2545FF474();
      v0 = v111;
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v113 = v84;
        *v83 = 136315394;
        *(v83 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v113);
        *(v83 + 12) = 2048;
        *(v83 + 14) = v57[2];
        _os_log_impl(&dword_2545AB000, v81, v82, "%s Multiple sections generated: %ld", v83, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v84);
        MEMORY[0x259C12CB0](v84, -1, -1);
        MEMORY[0x259C12CB0](v83, -1, -1);
      }

      v85 = v111[32];
      v86 = v111[12];
      (*(v111[36] + 56))(v111[41], 1, 1, v111[35]);
      sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity);
      sub_2545FE834();
      goto LABEL_55;
    }

LABEL_59:
    swift_once();
    goto LABEL_52;
  }

  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v40 = sub_2545FF0A4();
  __swift_project_value_buffer(v40, qword_27F60ADD8);
  v41 = sub_2545FF084();
  v42 = sub_2545FF474();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v113 = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v113);
    _os_log_impl(&dword_2545AB000, v41, v42, "%s Only 1 group of accessories built. Returning as flat list.", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x259C12CB0](v44, -1, -1);
    MEMORY[0x259C12CB0](v43, -1, -1);
  }

  result = sub_2545C33E8(v7, (v0 + 2));
  v46 = v0[6];
  if (!v46)
  {
    __break(1u);
    return result;
  }

  v47 = v0[53];
  v48 = v0[54];
  v50 = v0[4];
  v49 = v0[5];
  v52 = v0[2];
  v51 = v0[3];

  sub_2545D71F8(v52, v51);
  sub_2545D71F8(v50, v49);
  v113 = v46;
  sub_2545FE8E4();
  sub_2545C5880(&v113, type metadata accessor for HomeXLTileEntity, sub_2545C8CC0, sub_2545D881C);
  if (v48)
  {
LABEL_40:

    return sub_2545FEA14();
  }

  v58 = v0[41];
  v60 = v0[35];
  v59 = v0[36];
  v61 = v0[32];
  v62 = v0[12];

  (*(v59 + 56))(v58, 1, 1, v60);
  sub_2545D8728(&qword_281533058, type metadata accessor for HomeXLTileEntity);
  sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity);
  sub_2545FE824();
LABEL_55:

  v88 = v0[49];
  v87 = v0[50];
  v89 = v0[48];
  v91 = v0[44];
  v90 = v0[45];
  v93 = v0[40];
  v92 = v0[41];
  v94 = v0[37];
  v95 = v0[34];
  v96 = v0[31];
  v98 = v0[29];
  v100 = v0[26];
  v102 = v0[25];
  v105 = v0[24];
  v107 = v0[23];
  v110 = v0[20];
  v112 = v0[19];

  v97 = v0[1];

  return v97();
}

uint64_t sub_2545BB128()
{
  sub_2545CE4A8(v0[51]);
  v20 = v0[54];
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[40];
  v7 = v0[41];
  v8 = v0[37];
  v9 = v0[34];
  v10 = v0[31];
  v13 = v0[29];
  v14 = v0[26];
  v15 = v0[25];
  v16 = v0[24];
  v17 = v0[23];
  v18 = v0[20];
  v19 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2545BB274()
{
  v1 = v0[57];
  v2 = v0[55];
  sub_2545FEA14();
  v0[59] = sub_2545FEBC4();
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_2545BB320;
  v4 = v0[51];

  return sub_2545DD5C0(v4);
}

uint64_t sub_2545BB320(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 480);
  v6 = *v2;
  *(v4 + 488) = a1;
  *(v4 + 496) = v1;

  v7 = *(v3 + 472);
  v8 = *(v3 + 408);
  if (v1)
  {
    sub_2545FEA14();
    sub_2545CE4A8(v8);
    v9 = sub_2545BB7D8;
  }

  else
  {
    sub_2545CE4A8(v8);
    sub_2545FEA14();
    v9 = sub_2545BB48C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2545BB48C()
{
  v34 = v0;
  v1 = v0[61];
  if (*(v1 + 16))
  {
    v2 = v0[58];
    v3 = v0[56];
    (*(v0[43] + 16))(v0[44], v1 + ((*(v0[43] + 80) + 32) & ~*(v0[43] + 80)), v0[42]);

    v0[63] = sub_2545FECD4();
    v5 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545BB91C, v5, v4);
  }

  else
  {
    v6 = v0[61];

    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v7 = sub_2545FF0A4();
    __swift_project_value_buffer(v7, qword_27F60ADD8);
    v8 = sub_2545FF084();
    v9 = sub_2545FF454();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v33);
      _os_log_impl(&dword_2545AB000, v8, v9, "%s No homes loaded", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x259C12CB0](v11, -1, -1);
      MEMORY[0x259C12CB0](v10, -1, -1);
    }

    v12 = v0[32];
    v13 = v0[12];
    sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity);
    sub_2545FE854();
    v15 = v0[49];
    v14 = v0[50];
    v16 = v0[48];
    v18 = v0[44];
    v17 = v0[45];
    v20 = v0[40];
    v19 = v0[41];
    v21 = v0[37];
    v22 = v0[34];
    v23 = v0[31];
    v26 = v0[29];
    v27 = v0[26];
    v28 = v0[25];
    v29 = v0[24];
    v30 = v0[23];
    v31 = v0[20];
    v32 = v0[19];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_2545BB7D8()
{
  v20 = v0[62];
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[40];
  v7 = v0[41];
  v8 = v0[37];
  v9 = v0[34];
  v10 = v0[31];
  v13 = v0[29];
  v14 = v0[26];
  v15 = v0[25];
  v16 = v0[24];
  v17 = v0[23];
  v18 = v0[20];
  v19 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2545BB91C()
{
  v1 = v0[63];
  v2 = v0[55];
  sub_2545FEA14();
  v0[64] = sub_2545FEBC4();

  return MEMORY[0x2822009F8](sub_2545BB990, 0, 0);
}

uint64_t sub_2545BB990()
{
  v1 = v0[58];
  v2 = v0[56];
  v3 = v0[49];
  v4 = v0[44];
  sub_2545FEB34();
  v0[65] = sub_2545FECD4();
  v6 = sub_2545FF334();
  v0[66] = v6;
  v0[67] = v5;

  return MEMORY[0x2822009F8](sub_2545BBA34, v6, v5);
}

uint64_t sub_2545BBA34()
{
  v1 = v0[49];
  v2 = v0[25];
  v3 = v0[26];
  v4 = sub_2545FEB04();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_2545FECF4();
  sub_2545C3148(v2, v6, v7, v8, v9, v3);

  sub_2545B612C(v2, &qword_27F6064D0, &unk_2546002B0);
  v10 = *(MEMORY[0x277D15208] + 4);
  v11 = swift_task_alloc();
  v0[68] = v11;
  *v11 = v0;
  v11[1] = sub_2545BBBC8;
  v12 = v0[64];
  v13 = v0[29];
  v14 = v0[26];
  v15 = MEMORY[0x277D159D8];
  v16 = MEMORY[0x277D159D0];

  return MEMORY[0x28216E6A8](v13, v14, v15, v16);
}

uint64_t sub_2545BBBC8()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 536);
  v6 = *(v2 + 528);
  if (v0)
  {
    v7 = sub_2545BC8B8;
  }

  else
  {
    v7 = sub_2545BBD04;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2545BBD04()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[49];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v3, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545BBD98, 0, 0);
}

uint64_t sub_2545BBD98()
{
  v1 = v0[58];
  v2 = v0[56];
  v0[70] = sub_2545FECD4();
  v4 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545BBE2C, v4, v3);
}

uint64_t sub_2545BBE2C()
{
  v1 = v0[70];
  v2 = v0[55];
  sub_2545FEA14();
  v0[71] = sub_2545FEBC4();

  return MEMORY[0x2822009F8](sub_2545BBEA0, 0, 0);
}

uint64_t sub_2545BBEA0()
{
  v1 = v0[56];
  v2 = v0[48];
  v3 = v0[44];
  sub_2545FEB34();
  v0[72] = sub_2545FECD4();
  v4 = *(MEMORY[0x277D15218] + 4);
  v5 = swift_task_alloc();
  v0[73] = v5;
  *v5 = v0;
  v5[1] = sub_2545BBF50;
  v6 = v0[71];

  return MEMORY[0x28216E6C0]();
}

uint64_t sub_2545BBF50(uint64_t a1)
{
  v3 = *(*v1 + 584);
  v7 = *v1;
  *(*v1 + 592) = a1;

  sub_2545FEF44();
  sub_2545D8728(&qword_27F606698, MEMORY[0x277D16AF0]);
  v5 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545BC0A8, v5, v4);
}

uint64_t sub_2545BC0A8()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[58];
  v4 = v0[56];
  v5 = v0[48];
  v0[75] = sub_2545FEF24();
  sub_2545FEA14();
  v7 = sub_2545FF334();
  v0[76] = v7;
  v0[77] = v6;

  return MEMORY[0x2822009F8](sub_2545BC150, v7, v6);
}

uint64_t sub_2545BC150()
{
  v0[11] = v0[75];
  sub_2545FF354();
  v0[78] = sub_2545FF344();
  v2 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545BC1EC, v2, v1);
}

uint64_t sub_2545BC1EC()
{
  v1 = v0[78];
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066A0, &qword_254600BA0);
  sub_2545B4F2C(&qword_27F6066A8, &qword_27F6066A0, &qword_254600BA0);
  v0[79] = sub_2545FF3E4();
  v2 = v0[77];
  v3 = v0[76];

  return MEMORY[0x2822009F8](sub_2545BC2B8, v3, v2);
}

uint64_t sub_2545BC2B8()
{
  v1 = v0[75];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[48];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v4, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545BC360, 0, 0);
}

unint64_t sub_2545BC360()
{
  result = v0[79];
  v67 = *(result + 16);
  if (!v67)
  {
LABEL_16:
    v28 = v0[69];
    v57 = v0[43];
    v59 = v0[42];
    v29 = v0[29];
    v62 = v0[28];
    v65 = v0[44];
    v68 = v0[27];
    v31 = v0[19];
    v30 = v0[20];
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    v51 = v0[14];
    v54 = v0[32];
    v47 = v0[12];
    v49 = v0[13];

    sub_2545FED24();

    sub_2545FEF54();
    v35 = sub_2545C428C(v30);
    (*(v32 + 8))(v30, v33);
    *(swift_allocObject() + 16) = v35;
    *(swift_task_alloc() + 16) = v29;
    sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity);
    sub_2545D8728(&qword_27F6067E8, type metadata accessor for HomeXLTileEntity);
    sub_2545FE844();
    sub_2545FEA14();

    (*(v57 + 8))(v65, v59);
    (*(v62 + 8))(v29, v68);
    v37 = v0[49];
    v36 = v0[50];
    v38 = v0[48];
    v40 = v0[44];
    v39 = v0[45];
    v42 = v0[40];
    v41 = v0[41];
    v43 = v0[37];
    v44 = v0[34];
    v45 = v0[31];
    v52 = v0[29];
    v55 = v0[26];
    v58 = v0[25];
    v60 = v0[24];
    v63 = v0[23];
    v66 = v0[20];
    v69 = v0[19];

    v46 = v0[1];

    return v46();
  }

  v2 = 0;
  v3 = v0[22];
  v61 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v64 = v3;
  v56 = (v3 + 8);
  v48 = (v3 + 40);
  v50 = (v3 + 32);
  v4 = MEMORY[0x277D84F98];
  v53 = v0[79];
  while (1)
  {
    if (v2 >= *(result + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v6 = v0[23];
    v5 = v0[24];
    v7 = v0;
    v8 = v0[21];
    v9 = *(v64 + 72);
    v10 = *(v64 + 16);
    v10(v5, v61 + v9 * v2, v8);
    v11 = sub_2545FEE54();
    v10(v6, v5, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v4;
    result = sub_2545C56D4(v11);
    v14 = v4[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_23;
    }

    v18 = v13;
    v19 = v9;
    if (v4[3] < v17)
    {
      break;
    }

    v0 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = result;
      sub_2545C8780();
      result = v26;
      v4 = v70;
    }

LABEL_12:
    v21 = v0[23];
    v22 = v0[24];
    v23 = v0[21];
    if (v18)
    {
      (*v48)(v4[7] + result * v19, v21, v0[21]);
      (*v56)(v22, v23);
    }

    else
    {
      v4[(result >> 6) + 8] |= 1 << result;
      *(v4[6] + 8 * result) = v11;
      (*v50)(v4[7] + result * v19, v21, v23);
      result = (*v56)(v22, v23);
      v24 = v4[2];
      v16 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v16)
      {
        goto LABEL_24;
      }

      v4[2] = v25;
    }

    ++v2;
    result = v53;
    if (v67 == v2)
    {
      v27 = v0[79];
      goto LABEL_16;
    }
  }

  sub_2545C7AB4(v17, isUniquelyReferenced_nonNull_native);
  result = sub_2545C56D4(v11);
  if ((v18 & 1) == (v20 & 1))
  {
    v0 = v7;
    goto LABEL_12;
  }

  return sub_2545FF7D4();
}

uint64_t sub_2545BC8B8()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[49];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v3, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545BC94C, 0, 0);
}

uint64_t sub_2545BC94C()
{
  (*(v0[43] + 8))(v0[44], v0[42]);
  v20 = v0[69];
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[40];
  v7 = v0[41];
  v8 = v0[37];
  v9 = v0[34];
  v10 = v0[31];
  v13 = v0[29];
  v14 = v0[26];
  v15 = v0[25];
  v16 = v0[24];
  v17 = v0[23];
  v18 = v0[20];
  v19 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2545BCAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_2545FEF84();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v9 = sub_2545FEE64();
  v5[21] = v9;
  v10 = *(v9 - 8);
  v5[22] = v10;
  v11 = *(v10 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606688, &qword_254601E20) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v14 = sub_2545FED84();
  v5[27] = v14;
  v15 = *(v14 - 8);
  v5[28] = v15;
  v16 = *(v15 + 64) + 15;
  v5[29] = swift_task_alloc();
  v17 = type metadata accessor for TileElementInfo();
  v5[30] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v19 = type metadata accessor for ToggleControlEntity();
  v5[32] = v19;
  v20 = *(v19 - 8);
  v5[33] = v20;
  v21 = *(v20 + 64) + 15;
  v5[34] = swift_task_alloc();
  v22 = sub_2545FEA64();
  v5[35] = v22;
  v23 = *(v22 - 8);
  v5[36] = v23;
  v24 = *(v23 + 64) + 15;
  v5[37] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606790, &qword_254600C68);
  v5[38] = v25;
  v26 = *(v25 - 8);
  v5[39] = v26;
  v27 = *(v26 + 64) + 15;
  v5[40] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#") - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v29 = sub_2545FEB64();
  v5[42] = v29;
  v30 = *(v29 - 8);
  v5[43] = v30;
  v31 = *(v30 + 64) + 15;
  v5[44] = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978) - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v33 = type metadata accessor for HomeID();
  v5[46] = v33;
  v34 = *(v33 - 8);
  v5[47] = v34;
  v35 = *(v34 + 64) + 15;
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545BCF40, 0, 0);
}

uint64_t sub_2545BCF40()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  sub_2545B60C4(v0[15], v3, &qword_27F606660, &qword_254600978);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2545B612C(v0[45], &qword_27F606660, &qword_254600978);
    v4 = 1;
  }

  else
  {
    v5 = v0[50];
    v6 = v0[47];
    sub_2545D8770(v0[45], v5, type metadata accessor for HomeID);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066C0, &qword_254600BB0);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2546008F0;
    sub_2545D8660(v5, v9 + v8, type metadata accessor for HomeID);
    v4 = sub_2545D7214(v9);
    swift_setDeallocating();
    sub_2545D86C8(v9 + v8, type metadata accessor for HomeID);
    swift_deallocClassInstance();
    sub_2545D86C8(v5, type metadata accessor for HomeID);
  }

  v0[51] = v4;
  sub_2545FECC4();
  if (sub_2545FECA4() == 7)
  {
    v10 = swift_task_alloc();
    v0[52] = v10;
    *v10 = v0;
    v10[1] = sub_2545BD210;
    v11 = v0[16];

    return sub_2545CE4F0(v4, 0, v11);
  }

  else
  {
    v0[55] = sub_2545FEBD4();
    v0[56] = sub_2545FECE4();
    v0[57] = sub_2545FECD4();
    v0[58] = sub_2545D8728(&qword_27F6064D8, MEMORY[0x277D15960]);
    v14 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545BE048, v14, v13);
  }
}

uint64_t sub_2545BD210(unint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[52];
  v7 = *v2;
  v3[53] = a1;
  v3[54] = v1;

  if (v1)
  {
    v5 = sub_2545D8864;
  }

  else
  {
    sub_2545CE4A8(v3[51]);
    v5 = sub_2545BD32C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t *sub_2545BD32C()
{
  v118 = v0;
  v1 = v0[53];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[33];
    v4 = v0[30];
    v5 = v0[14];
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v106 = *(v3 + 72);
    v108 = v0[32];
    sub_2545FE8E4();
    v7 = MEMORY[0x277D84F98];
    v99 = v5;
    v101 = v4;
    while (1)
    {
      v10 = v0[34];
      v11 = v0[31];
      sub_2545D8660(v6, v10, type metadata accessor for ToggleControlEntity);
      sub_2545D8660(v10 + *(v108 + 24), v11, type metadata accessor for TileElementInfo);
      if (!v5)
      {
        goto LABEL_8;
      }

      v12 = v0[13];
      v13 = (v0[31] + v4[5]);
      v15 = *v13;
      v14 = v13[1];
      v0[7] = v15;
      v0[8] = v14;
      v0[9] = v12;
      v0[10] = v5;
      sub_2545D8470();
      if ((sub_2545FF504() & 1) == 0)
      {
        v8 = v0[31];
        sub_2545D86C8(v0[34], type metadata accessor for ToggleControlEntity);
        v9 = v8;
      }

      else
      {
LABEL_8:
        v16 = v0[31];
        if (*(v16 + v4[8]))
        {
          v17 = 0;
          v18 = 0;
          if (!*(v7 + 16))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v26 = (v16 + v4[7]);
          v18 = v26[1];
          if (v18)
          {
            v17 = *v26;
            v27 = v26[1];
            sub_2545FE8E4();
            if (!*(v7 + 16))
            {
              goto LABEL_14;
            }
          }

          else
          {
            v17 = 0;
            v18 = 1;
            if (!*(v7 + 16))
            {
LABEL_14:
              v104 = v16;
LABEL_16:
              v28 = v111[34];
              v113 = v17;
              v114 = v18;
              v115 = MEMORY[0x277D84F90];
              sub_2545D71E4(v17, v18);
              sub_2545C3944(v28);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v117 = v7;
              sub_2545C810C(v17, v18, v115, v17, v18, isUniquelyReferenced_nonNull_native, &qword_27F6067D0, &qword_254600CA8);
              sub_2545D71F8(v17, v18);
              v0 = v111;
              sub_2545D86C8(v28, type metadata accessor for ToggleControlEntity);
              sub_2545D86C8(v104, type metadata accessor for TileElementInfo);
              v5 = v99;
              v4 = v101;
              goto LABEL_5;
            }
          }
        }

        v19 = sub_2545C5718(v17, v18);
        v20 = v0[31];
        if ((v21 & 1) == 0)
        {
          v104 = v0[31];
          goto LABEL_16;
        }

        v103 = v0[34];
        v22 = (*(v7 + 56) + 24 * v19);
        v23 = v22[1];
        v24 = v22[2];
        v113 = *v22;
        v114 = v23;
        v115 = v24;
        sub_2545D71E4(v113, v23);
        sub_2545FE8E4();
        sub_2545C3944(v103);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v117 = v7;
        v5 = v99;
        v4 = v101;
        v0 = v111;
        sub_2545C810C(v113, v114, v24, v17, v18, v25, &qword_27F6067D0, &qword_254600CA8);
        sub_2545D71F8(v17, v18);
        sub_2545D86C8(v103, type metadata accessor for ToggleControlEntity);
        v9 = v20;
      }

      sub_2545D86C8(v9, type metadata accessor for TileElementInfo);
LABEL_5:
      v6 += v106;
      if (!--v2)
      {
        v30 = v0[53];

        goto LABEL_21;
      }
    }
  }

  v7 = MEMORY[0x277D84F98];
LABEL_21:
  v31 = *(v7 + 16);
  if (v31 != 1)
  {
    if (!v31)
    {
      v32 = v0[53];

      if (qword_27F6063A0 != -1)
      {
        swift_once();
      }

      v33 = sub_2545FF0A4();
      __swift_project_value_buffer(v33, qword_27F60ADD8);
      v34 = sub_2545FF084();
      v35 = sub_2545FF474();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v113 = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v113);
        _os_log_impl(&dword_2545AB000, v34, v35, "%s No accessories found, returning empty collection", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x259C12CB0](v37, -1, -1);
        MEMORY[0x259C12CB0](v36, -1, -1);
      }

      v38 = v0[32];
      v39 = v0[12];
      sub_2545D8728(&qword_27F606480, type metadata accessor for ToggleControlEntity);
      sub_2545FE854();
      goto LABEL_55;
    }

    v53 = v0[53];

    v54 = *(v7 + 16);
    if (v54)
    {
      v55 = sub_2545C4D14(*(v7 + 16), 0, &qword_27F6067C8, &qword_254600CA0);
      v56 = sub_2545C8E7C(&v113, v55 + 4, v54, v7);
      v57 = v116;
      swift_bridgeObjectRetain_n();
      sub_2545D720C();
      if (v56 != v54)
      {
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
      sub_2545FE8E4();
      v55 = MEMORY[0x277D84F90];
    }

    v48 = v0[54];
    v117 = v55;
    sub_2545C5944(&v117, sub_2545C8DA0, &qword_27F6067C0, &qword_254600C98);
    if (v48)
    {
      goto LABEL_40;
    }

    v63 = v117[2];
    if (v63)
    {
      v64 = v0;
      v109 = v0[39];
      v65 = v117 + 6;
      v57 = MEMORY[0x277D84F90];
      do
      {
        v66 = v64[40];
        v67 = v57;
        v68 = v64[37];
        v69 = v64[32];
        v70 = *(v65 - 2);
        v71 = *(v65 - 1);
        v72 = *v65;
        sub_2545D71E4(v70, v71);
        sub_2545FE8E4();
        sub_2545C4014(v70, v71);
        v73 = sub_2545D7A08(v72);
        v74 = sub_2545D8728(&qword_27F606480, type metadata accessor for ToggleControlEntity);
        v75 = v68;
        v57 = v67;
        MEMORY[0x259C116E0](v75, v73, v69, v74);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_2545C4B2C(0, v67[2] + 1, 1, v67, &qword_27F6067A8, &qword_254600C80, &qword_27F606790, &qword_254600C68);
        }

        v77 = v57[2];
        v76 = v57[3];
        if (v77 >= v76 >> 1)
        {
          v57 = sub_2545C4B2C(v76 > 1, v77 + 1, 1, v57, &qword_27F6067A8, &qword_254600C80, &qword_27F606790, &qword_254600C68);
        }

        v64 = v111;
        v78 = v111[40];
        v79 = v111[38];
        v57[2] = v77 + 1;
        (*(v109 + 32))(v57 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v77, v78, v79);
        sub_2545D71F8(v70, v71);

        v65 += 3;
        --v63;
      }

      while (v63);
    }

    else
    {
      v57 = MEMORY[0x277D84F90];
    }

    sub_2545FEA14();
    if (qword_27F6063A0 == -1)
    {
LABEL_52:
      v80 = sub_2545FF0A4();
      __swift_project_value_buffer(v80, qword_27F60ADD8);
      v81 = sub_2545FF084();
      v82 = sub_2545FF474();
      v0 = v111;
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v113 = v84;
        *v83 = 136315394;
        *(v83 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v113);
        *(v83 + 12) = 2048;
        *(v83 + 14) = v57[2];
        _os_log_impl(&dword_2545AB000, v81, v82, "%s Multiple sections generated: %ld", v83, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v84);
        MEMORY[0x259C12CB0](v84, -1, -1);
        MEMORY[0x259C12CB0](v83, -1, -1);
      }

      v85 = v111[32];
      v86 = v111[12];
      (*(v111[36] + 56))(v111[41], 1, 1, v111[35]);
      sub_2545D8728(&qword_27F606480, type metadata accessor for ToggleControlEntity);
      sub_2545FE834();
      goto LABEL_55;
    }

LABEL_59:
    swift_once();
    goto LABEL_52;
  }

  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v40 = sub_2545FF0A4();
  __swift_project_value_buffer(v40, qword_27F60ADD8);
  v41 = sub_2545FF084();
  v42 = sub_2545FF474();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v113 = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v113);
    _os_log_impl(&dword_2545AB000, v41, v42, "%s Only 1 group of accessories built. Returning as flat list.", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x259C12CB0](v44, -1, -1);
    MEMORY[0x259C12CB0](v43, -1, -1);
  }

  result = sub_2545C33E8(v7, (v0 + 2));
  v46 = v0[6];
  if (!v46)
  {
    __break(1u);
    return result;
  }

  v47 = v0[53];
  v48 = v0[54];
  v50 = v0[4];
  v49 = v0[5];
  v52 = v0[2];
  v51 = v0[3];

  sub_2545D71F8(v52, v51);
  sub_2545D71F8(v50, v49);
  v113 = v46;
  sub_2545FE8E4();
  sub_2545C5880(&v113, type metadata accessor for ToggleControlEntity, sub_2545C8D54, sub_2545D8834);
  if (v48)
  {
LABEL_40:

    return sub_2545FEA14();
  }

  v58 = v0[41];
  v60 = v0[35];
  v59 = v0[36];
  v61 = v0[32];
  v62 = v0[12];

  (*(v59 + 56))(v58, 1, 1, v60);
  sub_2545D8728(&qword_27F606440, type metadata accessor for ToggleControlEntity);
  sub_2545D8728(&qword_27F606480, type metadata accessor for ToggleControlEntity);
  sub_2545FE824();
LABEL_55:

  v88 = v0[49];
  v87 = v0[50];
  v89 = v0[48];
  v91 = v0[44];
  v90 = v0[45];
  v93 = v0[40];
  v92 = v0[41];
  v94 = v0[37];
  v95 = v0[34];
  v96 = v0[31];
  v98 = v0[29];
  v100 = v0[26];
  v102 = v0[25];
  v105 = v0[24];
  v107 = v0[23];
  v110 = v0[20];
  v112 = v0[19];

  v97 = v0[1];

  return v97();
}

uint64_t sub_2545BE048()
{
  v1 = v0[57];
  v2 = v0[55];
  sub_2545FEA14();
  v0[59] = sub_2545FEBC4();
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_2545BE0F4;
  v4 = v0[51];

  return sub_2545DD5C0(v4);
}

uint64_t sub_2545BE0F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 480);
  v6 = *v2;
  *(v4 + 488) = a1;
  *(v4 + 496) = v1;

  v7 = *(v3 + 472);
  v8 = *(v3 + 408);
  if (v1)
  {
    sub_2545FEA14();
    sub_2545CE4A8(v8);
    v9 = sub_2545D8810;
  }

  else
  {
    sub_2545CE4A8(v8);
    sub_2545FEA14();
    v9 = sub_2545BE260;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2545BE260()
{
  v34 = v0;
  v1 = v0[61];
  if (*(v1 + 16))
  {
    v2 = v0[58];
    v3 = v0[56];
    (*(v0[43] + 16))(v0[44], v1 + ((*(v0[43] + 80) + 32) & ~*(v0[43] + 80)), v0[42]);

    v0[63] = sub_2545FECD4();
    v5 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545BE5AC, v5, v4);
  }

  else
  {
    v6 = v0[61];

    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v7 = sub_2545FF0A4();
    __swift_project_value_buffer(v7, qword_27F60ADD8);
    v8 = sub_2545FF084();
    v9 = sub_2545FF454();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v33);
      _os_log_impl(&dword_2545AB000, v8, v9, "%s No homes loaded", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x259C12CB0](v11, -1, -1);
      MEMORY[0x259C12CB0](v10, -1, -1);
    }

    v12 = v0[32];
    v13 = v0[12];
    sub_2545D8728(&qword_27F606480, type metadata accessor for ToggleControlEntity);
    sub_2545FE854();
    v15 = v0[49];
    v14 = v0[50];
    v16 = v0[48];
    v18 = v0[44];
    v17 = v0[45];
    v20 = v0[40];
    v19 = v0[41];
    v21 = v0[37];
    v22 = v0[34];
    v23 = v0[31];
    v26 = v0[29];
    v27 = v0[26];
    v28 = v0[25];
    v29 = v0[24];
    v30 = v0[23];
    v31 = v0[20];
    v32 = v0[19];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_2545BE5AC()
{
  v1 = v0[63];
  v2 = v0[55];
  sub_2545FEA14();
  v0[64] = sub_2545FEBC4();

  return MEMORY[0x2822009F8](sub_2545BE620, 0, 0);
}

uint64_t sub_2545BE620()
{
  v1 = v0[58];
  v2 = v0[56];
  v3 = v0[49];
  v4 = v0[44];
  sub_2545FEB34();
  v0[65] = sub_2545FECD4();
  v6 = sub_2545FF334();
  v0[66] = v6;
  v0[67] = v5;

  return MEMORY[0x2822009F8](sub_2545BE6C4, v6, v5);
}

uint64_t sub_2545BE6C4()
{
  v1 = v0[49];
  v2 = v0[25];
  v3 = v0[26];
  v4 = sub_2545FEB04();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_2545FECF4();
  sub_2545C3148(v2, v6, v7, v8, v9, v3);

  sub_2545B612C(v2, &qword_27F6064D0, &unk_2546002B0);
  v10 = *(MEMORY[0x277D15208] + 4);
  v11 = swift_task_alloc();
  v0[68] = v11;
  *v11 = v0;
  v11[1] = sub_2545BE858;
  v12 = v0[64];
  v13 = v0[29];
  v14 = v0[26];
  v15 = MEMORY[0x277D159D8];
  v16 = MEMORY[0x277D159D0];

  return MEMORY[0x28216E6A8](v13, v14, v15, v16);
}

uint64_t sub_2545BE858()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 536);
  v6 = *(v2 + 528);
  if (v0)
  {
    v7 = sub_2545BF548;
  }

  else
  {
    v7 = sub_2545BE994;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2545BE994()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[49];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v3, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545BEA28, 0, 0);
}

uint64_t sub_2545BEA28()
{
  v1 = v0[58];
  v2 = v0[56];
  v0[70] = sub_2545FECD4();
  v4 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545BEABC, v4, v3);
}

uint64_t sub_2545BEABC()
{
  v1 = v0[70];
  v2 = v0[55];
  sub_2545FEA14();
  v0[71] = sub_2545FEBC4();

  return MEMORY[0x2822009F8](sub_2545BEB30, 0, 0);
}

uint64_t sub_2545BEB30()
{
  v1 = v0[56];
  v2 = v0[48];
  v3 = v0[44];
  sub_2545FEB34();
  v0[72] = sub_2545FECD4();
  v4 = *(MEMORY[0x277D15218] + 4);
  v5 = swift_task_alloc();
  v0[73] = v5;
  *v5 = v0;
  v5[1] = sub_2545BEBE0;
  v6 = v0[71];

  return MEMORY[0x28216E6C0]();
}

uint64_t sub_2545BEBE0(uint64_t a1)
{
  v3 = *(*v1 + 584);
  v7 = *v1;
  *(*v1 + 592) = a1;

  sub_2545FEF44();
  sub_2545D8728(&qword_27F606698, MEMORY[0x277D16AF0]);
  v5 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545BED38, v5, v4);
}

uint64_t sub_2545BED38()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[58];
  v4 = v0[56];
  v5 = v0[48];
  v0[75] = sub_2545FEF24();
  sub_2545FEA14();
  v7 = sub_2545FF334();
  v0[76] = v7;
  v0[77] = v6;

  return MEMORY[0x2822009F8](sub_2545BEDE0, v7, v6);
}

uint64_t sub_2545BEDE0()
{
  v0[11] = v0[75];
  sub_2545FF354();
  v0[78] = sub_2545FF344();
  v2 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545BEE7C, v2, v1);
}

uint64_t sub_2545BEE7C()
{
  v1 = v0[78];
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066A0, &qword_254600BA0);
  sub_2545B4F2C(&qword_27F6066A8, &qword_27F6066A0, &qword_254600BA0);
  v0[79] = sub_2545FF3E4();
  v2 = v0[77];
  v3 = v0[76];

  return MEMORY[0x2822009F8](sub_2545BEF48, v3, v2);
}

uint64_t sub_2545BEF48()
{
  v1 = v0[75];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[48];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v4, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545BEFF0, 0, 0);
}

unint64_t sub_2545BEFF0()
{
  result = v0[79];
  v67 = *(result + 16);
  if (!v67)
  {
LABEL_16:
    v28 = v0[69];
    v57 = v0[43];
    v59 = v0[42];
    v29 = v0[29];
    v62 = v0[28];
    v65 = v0[44];
    v68 = v0[27];
    v31 = v0[19];
    v30 = v0[20];
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    v51 = v0[14];
    v54 = v0[32];
    v47 = v0[12];
    v49 = v0[13];

    sub_2545FED24();

    sub_2545FEF54();
    v35 = sub_2545C428C(v30);
    (*(v32 + 8))(v30, v33);
    *(swift_allocObject() + 16) = v35;
    *(swift_task_alloc() + 16) = v29;
    sub_2545D8728(&qword_27F606480, type metadata accessor for ToggleControlEntity);
    sub_2545D8728(&qword_27F606798, type metadata accessor for ToggleControlEntity);
    sub_2545FE844();
    sub_2545FEA14();

    (*(v57 + 8))(v65, v59);
    (*(v62 + 8))(v29, v68);
    v37 = v0[49];
    v36 = v0[50];
    v38 = v0[48];
    v40 = v0[44];
    v39 = v0[45];
    v42 = v0[40];
    v41 = v0[41];
    v43 = v0[37];
    v44 = v0[34];
    v45 = v0[31];
    v52 = v0[29];
    v55 = v0[26];
    v58 = v0[25];
    v60 = v0[24];
    v63 = v0[23];
    v66 = v0[20];
    v69 = v0[19];

    v46 = v0[1];

    return v46();
  }

  v2 = 0;
  v3 = v0[22];
  v61 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v64 = v3;
  v56 = (v3 + 8);
  v48 = (v3 + 40);
  v50 = (v3 + 32);
  v4 = MEMORY[0x277D84F98];
  v53 = v0[79];
  while (1)
  {
    if (v2 >= *(result + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v6 = v0[23];
    v5 = v0[24];
    v7 = v0;
    v8 = v0[21];
    v9 = *(v64 + 72);
    v10 = *(v64 + 16);
    v10(v5, v61 + v9 * v2, v8);
    v11 = sub_2545FEE54();
    v10(v6, v5, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v4;
    result = sub_2545C56D4(v11);
    v14 = v4[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_23;
    }

    v18 = v13;
    v19 = v9;
    if (v4[3] < v17)
    {
      break;
    }

    v0 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = result;
      sub_2545C8780();
      result = v26;
      v4 = v70;
    }

LABEL_12:
    v21 = v0[23];
    v22 = v0[24];
    v23 = v0[21];
    if (v18)
    {
      (*v48)(v4[7] + result * v19, v21, v0[21]);
      (*v56)(v22, v23);
    }

    else
    {
      v4[(result >> 6) + 8] |= 1 << result;
      *(v4[6] + 8 * result) = v11;
      (*v50)(v4[7] + result * v19, v21, v23);
      result = (*v56)(v22, v23);
      v24 = v4[2];
      v16 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v16)
      {
        goto LABEL_24;
      }

      v4[2] = v25;
    }

    ++v2;
    result = v53;
    if (v67 == v2)
    {
      v27 = v0[79];
      goto LABEL_16;
    }
  }

  sub_2545C7AB4(v17, isUniquelyReferenced_nonNull_native);
  result = sub_2545C56D4(v11);
  if ((v18 & 1) == (v20 & 1))
  {
    v0 = v7;
    goto LABEL_12;
  }

  return sub_2545FF7D4();
}

uint64_t sub_2545BF548()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[49];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v3, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545D8818, 0, 0);
}

uint64_t sub_2545BF5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_2545FEF84();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v9 = sub_2545FEE64();
  v5[21] = v9;
  v10 = *(v9 - 8);
  v5[22] = v10;
  v11 = *(v10 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606688, &qword_254601E20) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v14 = sub_2545FED84();
  v5[27] = v14;
  v15 = *(v14 - 8);
  v5[28] = v15;
  v16 = *(v15 + 64) + 15;
  v5[29] = swift_task_alloc();
  v17 = type metadata accessor for TileElementInfo();
  v5[30] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v19 = type metadata accessor for HomeSingleTileEntity();
  v5[32] = v19;
  v20 = *(v19 - 8);
  v5[33] = v20;
  v21 = *(v20 + 64) + 15;
  v5[34] = swift_task_alloc();
  v22 = sub_2545FEA64();
  v5[35] = v22;
  v23 = *(v22 - 8);
  v5[36] = v23;
  v24 = *(v23 + 64) + 15;
  v5[37] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606690, &unk_254600B90);
  v5[38] = v25;
  v26 = *(v25 - 8);
  v5[39] = v26;
  v27 = *(v26 + 64) + 15;
  v5[40] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#") - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v29 = sub_2545FEB64();
  v5[42] = v29;
  v30 = *(v29 - 8);
  v5[43] = v30;
  v31 = *(v30 + 64) + 15;
  v5[44] = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978) - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v33 = type metadata accessor for HomeID();
  v5[46] = v33;
  v34 = *(v33 - 8);
  v5[47] = v34;
  v35 = *(v34 + 64) + 15;
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2545BFA74, 0, 0);
}

uint64_t sub_2545BFA74()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  sub_2545B60C4(v0[15], v3, &qword_27F606660, &qword_254600978);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2545B612C(v0[45], &qword_27F606660, &qword_254600978);
    v4 = 1;
  }

  else
  {
    v5 = v0[50];
    v6 = v0[47];
    sub_2545D8770(v0[45], v5, type metadata accessor for HomeID);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066C0, &qword_254600BB0);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2546008F0;
    sub_2545D8660(v5, v9 + v8, type metadata accessor for HomeID);
    v4 = sub_2545D7214(v9);
    swift_setDeallocating();
    sub_2545D86C8(v9 + v8, type metadata accessor for HomeID);
    swift_deallocClassInstance();
    sub_2545D86C8(v5, type metadata accessor for HomeID);
  }

  v0[51] = v4;
  sub_2545FECC4();
  if (sub_2545FECA4() == 7)
  {
    v10 = swift_task_alloc();
    v0[52] = v10;
    *v10 = v0;
    v10[1] = sub_2545BFD44;
    v11 = v0[16];

    return sub_2545D2BB4(v4, 0, v11);
  }

  else
  {
    v0[55] = sub_2545FEBD4();
    v0[56] = sub_2545FECE4();
    v0[57] = sub_2545FECD4();
    v0[58] = sub_2545D8728(&qword_27F6064D8, MEMORY[0x277D15960]);
    v14 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545C0B7C, v14, v13);
  }
}

uint64_t sub_2545BFD44(unint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[52];
  v7 = *v2;
  v3[53] = a1;
  v3[54] = v1;

  if (v1)
  {
    v5 = sub_2545D8864;
  }

  else
  {
    sub_2545CE4A8(v3[51]);
    v5 = sub_2545BFE60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t *sub_2545BFE60()
{
  v118 = v0;
  v1 = v0[53];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[33];
    v4 = v0[30];
    v5 = v0[14];
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v106 = *(v3 + 72);
    v108 = v0[32];
    sub_2545FE8E4();
    v7 = MEMORY[0x277D84F98];
    v99 = v5;
    v101 = v4;
    while (1)
    {
      v10 = v0[34];
      v11 = v0[31];
      sub_2545D8660(v6, v10, type metadata accessor for HomeSingleTileEntity);
      sub_2545D8660(v10 + *(v108 + 24), v11, type metadata accessor for TileElementInfo);
      if (!v5)
      {
        goto LABEL_8;
      }

      v12 = v0[13];
      v13 = (v0[31] + v4[5]);
      v15 = *v13;
      v14 = v13[1];
      v0[7] = v15;
      v0[8] = v14;
      v0[9] = v12;
      v0[10] = v5;
      sub_2545D8470();
      if ((sub_2545FF504() & 1) == 0)
      {
        v8 = v0[31];
        sub_2545D86C8(v0[34], type metadata accessor for HomeSingleTileEntity);
        v9 = v8;
      }

      else
      {
LABEL_8:
        v16 = v0[31];
        if (*(v16 + v4[8]))
        {
          v17 = 0;
          v18 = 0;
          if (!*(v7 + 16))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v26 = (v16 + v4[7]);
          v18 = v26[1];
          if (v18)
          {
            v17 = *v26;
            v27 = v26[1];
            sub_2545FE8E4();
            if (!*(v7 + 16))
            {
              goto LABEL_14;
            }
          }

          else
          {
            v17 = 0;
            v18 = 1;
            if (!*(v7 + 16))
            {
LABEL_14:
              v104 = v16;
LABEL_16:
              v28 = v111[34];
              v113 = v17;
              v114 = v18;
              v115 = MEMORY[0x277D84F90];
              sub_2545D71E4(v17, v18);
              sub_2545C3CAC(v28);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v117 = v7;
              sub_2545C810C(v17, v18, v115, v17, v18, isUniquelyReferenced_nonNull_native, &qword_27F606708, &qword_254600C00);
              sub_2545D71F8(v17, v18);
              v0 = v111;
              sub_2545D86C8(v28, type metadata accessor for HomeSingleTileEntity);
              sub_2545D86C8(v104, type metadata accessor for TileElementInfo);
              v5 = v99;
              v4 = v101;
              goto LABEL_5;
            }
          }
        }

        v19 = sub_2545C5718(v17, v18);
        v20 = v0[31];
        if ((v21 & 1) == 0)
        {
          v104 = v0[31];
          goto LABEL_16;
        }

        v103 = v0[34];
        v22 = (*(v7 + 56) + 24 * v19);
        v23 = v22[1];
        v24 = v22[2];
        v113 = *v22;
        v114 = v23;
        v115 = v24;
        sub_2545D71E4(v113, v23);
        sub_2545FE8E4();
        sub_2545C3CAC(v103);
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v117 = v7;
        v5 = v99;
        v4 = v101;
        v0 = v111;
        sub_2545C810C(v113, v114, v24, v17, v18, v25, &qword_27F606708, &qword_254600C00);
        sub_2545D71F8(v17, v18);
        sub_2545D86C8(v103, type metadata accessor for HomeSingleTileEntity);
        v9 = v20;
      }

      sub_2545D86C8(v9, type metadata accessor for TileElementInfo);
LABEL_5:
      v6 += v106;
      if (!--v2)
      {
        v30 = v0[53];

        goto LABEL_21;
      }
    }
  }

  v7 = MEMORY[0x277D84F98];
LABEL_21:
  v31 = *(v7 + 16);
  if (v31 != 1)
  {
    if (!v31)
    {
      v32 = v0[53];

      if (qword_27F6063A0 != -1)
      {
        swift_once();
      }

      v33 = sub_2545FF0A4();
      __swift_project_value_buffer(v33, qword_27F60ADD8);
      v34 = sub_2545FF084();
      v35 = sub_2545FF474();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v113 = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v113);
        _os_log_impl(&dword_2545AB000, v34, v35, "%s No accessories found, returning empty collection", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x259C12CB0](v37, -1, -1);
        MEMORY[0x259C12CB0](v36, -1, -1);
      }

      v38 = v0[32];
      v39 = v0[12];
      sub_2545D8728(&qword_281532F88, type metadata accessor for HomeSingleTileEntity);
      sub_2545FE854();
      goto LABEL_55;
    }

    v53 = v0[53];

    v54 = *(v7 + 16);
    if (v54)
    {
      v55 = sub_2545C4D14(*(v7 + 16), 0, &qword_27F606700, &qword_254600BF8);
      v56 = sub_2545C8E7C(&v113, v55 + 4, v54, v7);
      v57 = v116;
      swift_bridgeObjectRetain_n();
      sub_2545D720C();
      if (v56 != v54)
      {
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
      sub_2545FE8E4();
      v55 = MEMORY[0x277D84F90];
    }

    v48 = v0[54];
    v117 = v55;
    sub_2545C5944(&v117, sub_2545C8E34, &qword_27F6066F8, &qword_254600BF0);
    if (v48)
    {
      goto LABEL_40;
    }

    v63 = v117[2];
    if (v63)
    {
      v64 = v0;
      v109 = v0[39];
      v65 = v117 + 6;
      v57 = MEMORY[0x277D84F90];
      do
      {
        v66 = v64[40];
        v67 = v57;
        v68 = v64[37];
        v69 = v64[32];
        v70 = *(v65 - 2);
        v71 = *(v65 - 1);
        v72 = *v65;
        sub_2545D71E4(v70, v71);
        sub_2545FE8E4();
        sub_2545C4014(v70, v71);
        v73 = sub_2545D7F3C(v72);
        v74 = sub_2545D8728(&qword_281532F88, type metadata accessor for HomeSingleTileEntity);
        v75 = v68;
        v57 = v67;
        MEMORY[0x259C116E0](v75, v73, v69, v74);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_2545C4B2C(0, v67[2] + 1, 1, v67, &qword_27F6066E0, &unk_254600BD0, &qword_27F606690, &unk_254600B90);
        }

        v77 = v57[2];
        v76 = v57[3];
        if (v77 >= v76 >> 1)
        {
          v57 = sub_2545C4B2C(v76 > 1, v77 + 1, 1, v57, &qword_27F6066E0, &unk_254600BD0, &qword_27F606690, &unk_254600B90);
        }

        v64 = v111;
        v78 = v111[40];
        v79 = v111[38];
        v57[2] = v77 + 1;
        (*(v109 + 32))(v57 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v77, v78, v79);
        sub_2545D71F8(v70, v71);

        v65 += 3;
        --v63;
      }

      while (v63);
    }

    else
    {
      v57 = MEMORY[0x277D84F90];
    }

    sub_2545FEA14();
    if (qword_27F6063A0 == -1)
    {
LABEL_52:
      v80 = sub_2545FF0A4();
      __swift_project_value_buffer(v80, qword_27F60ADD8);
      v81 = sub_2545FF084();
      v82 = sub_2545FF474();
      v0 = v111;
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v113 = v84;
        *v83 = 136315394;
        *(v83 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v113);
        *(v83 + 12) = 2048;
        *(v83 + 14) = v57[2];
        _os_log_impl(&dword_2545AB000, v81, v82, "%s Multiple sections generated: %ld", v83, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v84);
        MEMORY[0x259C12CB0](v84, -1, -1);
        MEMORY[0x259C12CB0](v83, -1, -1);
      }

      v85 = v111[32];
      v86 = v111[12];
      (*(v111[36] + 56))(v111[41], 1, 1, v111[35]);
      sub_2545D8728(&qword_281532F88, type metadata accessor for HomeSingleTileEntity);
      sub_2545FE834();
      goto LABEL_55;
    }

LABEL_59:
    swift_once();
    goto LABEL_52;
  }

  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v40 = sub_2545FF0A4();
  __swift_project_value_buffer(v40, qword_27F60ADD8);
  v41 = sub_2545FF084();
  v42 = sub_2545FF474();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v113 = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v113);
    _os_log_impl(&dword_2545AB000, v41, v42, "%s Only 1 group of accessories built. Returning as flat list.", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x259C12CB0](v44, -1, -1);
    MEMORY[0x259C12CB0](v43, -1, -1);
  }

  result = sub_2545C33E8(v7, (v0 + 2));
  v46 = v0[6];
  if (!v46)
  {
    __break(1u);
    return result;
  }

  v47 = v0[53];
  v48 = v0[54];
  v50 = v0[4];
  v49 = v0[5];
  v52 = v0[2];
  v51 = v0[3];

  sub_2545D71F8(v52, v51);
  sub_2545D71F8(v50, v49);
  v113 = v46;
  sub_2545FE8E4();
  sub_2545C5880(&v113, type metadata accessor for HomeSingleTileEntity, sub_2545C8DE8, sub_2545D884C);
  if (v48)
  {
LABEL_40:

    return sub_2545FEA14();
  }

  v58 = v0[41];
  v60 = v0[35];
  v59 = v0[36];
  v61 = v0[32];
  v62 = v0[12];

  (*(v59 + 56))(v58, 1, 1, v60);
  sub_2545D8728(&qword_281532F80, type metadata accessor for HomeSingleTileEntity);
  sub_2545D8728(&qword_281532F88, type metadata accessor for HomeSingleTileEntity);
  sub_2545FE824();
LABEL_55:

  v88 = v0[49];
  v87 = v0[50];
  v89 = v0[48];
  v91 = v0[44];
  v90 = v0[45];
  v93 = v0[40];
  v92 = v0[41];
  v94 = v0[37];
  v95 = v0[34];
  v96 = v0[31];
  v98 = v0[29];
  v100 = v0[26];
  v102 = v0[25];
  v105 = v0[24];
  v107 = v0[23];
  v110 = v0[20];
  v112 = v0[19];

  v97 = v0[1];

  return v97();
}

uint64_t sub_2545C0B7C()
{
  v1 = v0[57];
  v2 = v0[55];
  sub_2545FEA14();
  v0[59] = sub_2545FEBC4();
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_2545C0C28;
  v4 = v0[51];

  return sub_2545DD5C0(v4);
}

uint64_t sub_2545C0C28(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 480);
  v6 = *v2;
  *(v4 + 488) = a1;
  *(v4 + 496) = v1;

  v7 = *(v3 + 472);
  v8 = *(v3 + 408);
  if (v1)
  {
    sub_2545FEA14();
    sub_2545CE4A8(v8);
    v9 = sub_2545D8810;
  }

  else
  {
    sub_2545CE4A8(v8);
    sub_2545FEA14();
    v9 = sub_2545C0D94;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2545C0D94()
{
  v34 = v0;
  v1 = v0[61];
  if (*(v1 + 16))
  {
    v2 = v0[58];
    v3 = v0[56];
    (*(v0[43] + 16))(v0[44], v1 + ((*(v0[43] + 80) + 32) & ~*(v0[43] + 80)), v0[42]);

    v0[63] = sub_2545FECD4();
    v5 = sub_2545FF334();

    return MEMORY[0x2822009F8](sub_2545C10E0, v5, v4);
  }

  else
  {
    v6 = v0[61];

    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v7 = sub_2545FF0A4();
    __swift_project_value_buffer(v7, qword_27F60ADD8);
    v8 = sub_2545FF084();
    v9 = sub_2545FF454();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2545F0FB4(0xD000000000000029, 0x8000000254603B20, &v33);
      _os_log_impl(&dword_2545AB000, v8, v9, "%s No homes loaded", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x259C12CB0](v11, -1, -1);
      MEMORY[0x259C12CB0](v10, -1, -1);
    }

    v12 = v0[32];
    v13 = v0[12];
    sub_2545D8728(&qword_281532F88, type metadata accessor for HomeSingleTileEntity);
    sub_2545FE854();
    v15 = v0[49];
    v14 = v0[50];
    v16 = v0[48];
    v18 = v0[44];
    v17 = v0[45];
    v20 = v0[40];
    v19 = v0[41];
    v21 = v0[37];
    v22 = v0[34];
    v23 = v0[31];
    v26 = v0[29];
    v27 = v0[26];
    v28 = v0[25];
    v29 = v0[24];
    v30 = v0[23];
    v31 = v0[20];
    v32 = v0[19];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_2545C10E0()
{
  v1 = v0[63];
  v2 = v0[55];
  sub_2545FEA14();
  v0[64] = sub_2545FEBC4();

  return MEMORY[0x2822009F8](sub_2545C1154, 0, 0);
}

uint64_t sub_2545C1154()
{
  v1 = v0[58];
  v2 = v0[56];
  v3 = v0[49];
  v4 = v0[44];
  sub_2545FEB34();
  v0[65] = sub_2545FECD4();
  v6 = sub_2545FF334();
  v0[66] = v6;
  v0[67] = v5;

  return MEMORY[0x2822009F8](sub_2545C11F8, v6, v5);
}

uint64_t sub_2545C11F8()
{
  v1 = v0[49];
  v2 = v0[25];
  v3 = v0[26];
  v4 = sub_2545FEB04();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = sub_2545FECF4();
  sub_2545C3148(v2, v6, v7, v8, v9, v3);

  sub_2545B612C(v2, &qword_27F6064D0, &unk_2546002B0);
  v10 = *(MEMORY[0x277D15208] + 4);
  v11 = swift_task_alloc();
  v0[68] = v11;
  *v11 = v0;
  v11[1] = sub_2545C138C;
  v12 = v0[64];
  v13 = v0[29];
  v14 = v0[26];
  v15 = MEMORY[0x277D159D8];
  v16 = MEMORY[0x277D159D0];

  return MEMORY[0x28216E6A8](v13, v14, v15, v16);
}

uint64_t sub_2545C138C()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 536);
  v6 = *(v2 + 528);
  if (v0)
  {
    v7 = sub_2545BF548;
  }

  else
  {
    v7 = sub_2545C14C8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2545C14C8()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[49];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v3, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545C155C, 0, 0);
}

uint64_t sub_2545C155C()
{
  v1 = v0[58];
  v2 = v0[56];
  v0[70] = sub_2545FECD4();
  v4 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545C15F0, v4, v3);
}

uint64_t sub_2545C15F0()
{
  v1 = v0[70];
  v2 = v0[55];
  sub_2545FEA14();
  v0[71] = sub_2545FEBC4();

  return MEMORY[0x2822009F8](sub_2545C1664, 0, 0);
}

uint64_t sub_2545C1664()
{
  v1 = v0[56];
  v2 = v0[48];
  v3 = v0[44];
  sub_2545FEB34();
  v0[72] = sub_2545FECD4();
  v4 = *(MEMORY[0x277D15218] + 4);
  v5 = swift_task_alloc();
  v0[73] = v5;
  *v5 = v0;
  v5[1] = sub_2545C1714;
  v6 = v0[71];

  return MEMORY[0x28216E6C0]();
}

uint64_t sub_2545C1714(uint64_t a1)
{
  v3 = *(*v1 + 584);
  v7 = *v1;
  *(*v1 + 592) = a1;

  sub_2545FEF44();
  sub_2545D8728(&qword_27F606698, MEMORY[0x277D16AF0]);
  v5 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545C186C, v5, v4);
}

uint64_t sub_2545C186C()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[58];
  v4 = v0[56];
  v5 = v0[48];
  v0[75] = sub_2545FEF24();
  sub_2545FEA14();
  v7 = sub_2545FF334();
  v0[76] = v7;
  v0[77] = v6;

  return MEMORY[0x2822009F8](sub_2545C1914, v7, v6);
}

uint64_t sub_2545C1914()
{
  v0[11] = v0[75];
  sub_2545FF354();
  v0[78] = sub_2545FF344();
  v2 = sub_2545FF334();

  return MEMORY[0x2822009F8](sub_2545C19B0, v2, v1);
}

uint64_t sub_2545C19B0()
{
  v1 = v0[78];
  sub_2545FEA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066A0, &qword_254600BA0);
  sub_2545B4F2C(&qword_27F6066A8, &qword_27F6066A0, &qword_254600BA0);
  v0[79] = sub_2545FF3E4();
  v2 = v0[77];
  v3 = v0[76];

  return MEMORY[0x2822009F8](sub_2545C1A7C, v3, v2);
}

uint64_t sub_2545C1A7C()
{
  v1 = v0[75];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[48];
  sub_2545FEA14();
  sub_2545FEA14();
  sub_2545D86C8(v4, type metadata accessor for HomeID);

  return MEMORY[0x2822009F8](sub_2545C1B24, 0, 0);
}

unint64_t sub_2545C1B24()
{
  result = v0[79];
  v67 = *(result + 16);
  if (!v67)
  {
LABEL_16:
    v28 = v0[69];
    v57 = v0[43];
    v59 = v0[42];
    v29 = v0[29];
    v62 = v0[28];
    v65 = v0[44];
    v68 = v0[27];
    v31 = v0[19];
    v30 = v0[20];
    v33 = v0[17];
    v32 = v0[18];
    v34 = v0[16];
    v51 = v0[14];
    v54 = v0[32];
    v47 = v0[12];
    v49 = v0[13];

    sub_2545FED24();

    sub_2545FEF54();
    v35 = sub_2545C428C(v30);
    (*(v32 + 8))(v30, v33);
    *(swift_allocObject() + 16) = v35;
    *(swift_task_alloc() + 16) = v29;
    sub_2545D8728(&qword_281532F88, type metadata accessor for HomeSingleTileEntity);
    sub_2545D8728(&qword_27F6066B0, type metadata accessor for HomeSingleTileEntity);
    sub_2545FE844();
    sub_2545FEA14();

    (*(v57 + 8))(v65, v59);
    (*(v62 + 8))(v29, v68);
    v37 = v0[49];
    v36 = v0[50];
    v38 = v0[48];
    v40 = v0[44];
    v39 = v0[45];
    v42 = v0[40];
    v41 = v0[41];
    v43 = v0[37];
    v44 = v0[34];
    v45 = v0[31];
    v52 = v0[29];
    v55 = v0[26];
    v58 = v0[25];
    v60 = v0[24];
    v63 = v0[23];
    v66 = v0[20];
    v69 = v0[19];

    v46 = v0[1];

    return v46();
  }

  v2 = 0;
  v3 = v0[22];
  v61 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v64 = v3;
  v56 = (v3 + 8);
  v48 = (v3 + 40);
  v50 = (v3 + 32);
  v4 = MEMORY[0x277D84F98];
  v53 = v0[79];
  while (1)
  {
    if (v2 >= *(result + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v6 = v0[23];
    v5 = v0[24];
    v7 = v0;
    v8 = v0[21];
    v9 = *(v64 + 72);
    v10 = *(v64 + 16);
    v10(v5, v61 + v9 * v2, v8);
    v11 = sub_2545FEE54();
    v10(v6, v5, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v4;
    result = sub_2545C56D4(v11);
    v14 = v4[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_23;
    }

    v18 = v13;
    v19 = v9;
    if (v4[3] < v17)
    {
      break;
    }

    v0 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = result;
      sub_2545C8780();
      result = v26;
      v4 = v70;
    }

LABEL_12:
    v21 = v0[23];
    v22 = v0[24];
    v23 = v0[21];
    if (v18)
    {
      (*v48)(v4[7] + result * v19, v21, v0[21]);
      (*v56)(v22, v23);
    }

    else
    {
      v4[(result >> 6) + 8] |= 1 << result;
      *(v4[6] + 8 * result) = v11;
      (*v50)(v4[7] + result * v19, v21, v23);
      result = (*v56)(v22, v23);
      v24 = v4[2];
      v16 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v16)
      {
        goto LABEL_24;
      }

      v4[2] = v25;
    }

    ++v2;
    result = v53;
    if (v67 == v2)
    {
      v27 = v0[79];
      goto LABEL_16;
    }
  }

  sub_2545C7AB4(v17, isUniquelyReferenced_nonNull_native);
  result = sub_2545C56D4(v11);
  if ((v18 & 1) == (v20 & 1))
  {
    v0 = v7;
    goto LABEL_12;
  }

  return sub_2545FF7D4();
}

uint64_t HomeXLTileEntityQuery.suggestedEntities()(uint64_t a1)
{
  v2[2] = a1;
  v3 = *(*(type metadata accessor for SelectedHomeEntity() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606660, &qword_254600978) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606668, &qword_254600980);
  v2[5] = v5;
  v6 = *(v5 - 8);
  v2[6] = v6;
  v7 = *(v6 + 64) + 15;
  v2[7] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v1;
  v2[8] = v8;
  v2[9] = v9;

  return MEMORY[0x2822009F8](sub_2545C21BC, 0, 0);
}

uint64_t sub_2545C21BC()
{
  v1 = v0[9];
  if (sub_2545FE964())
  {
    v3 = v0[3];
    v2 = v0[4];
    swift_getKeyPath();
    sub_2545CE174();
    sub_2545FE7C4();
    sub_2545FEA14();
    sub_2545FEA14();
    sub_2545D8660(v3, v2, type metadata accessor for HomeID);
    sub_2545D86C8(v3, type metadata accessor for SelectedHomeEntity);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[4];
  v6 = type metadata accessor for HomeID();
  (*(*(v6 - 8) + 56))(v5, v4, 1, v6);
  v7 = sub_2545FEF64();
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_2545C235C;
  v9 = v0[8];
  v10 = v0[4];

  return sub_2545B9B88(v9, 0, 0, v10, v7);
}

uint64_t sub_2545C235C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 88) = v0;

  sub_2545B612C(v3, &qword_27F606660, &qword_254600978);
  if (v0)
  {
    v4 = sub_2545C27BC;
  }

  else
  {
    v4 = sub_2545C249C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2545C249C()
{
  v34 = v0;
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(sub_2545FE864() + 16);

  if (v3)
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[5];
    v7 = v0[6];
    v8 = sub_2545FF0A4();
    __swift_project_value_buffer(v8, qword_27F60ADD8);
    (*(v7 + 16))(v4, v5, v6);
    v9 = sub_2545FF084();
    v10 = sub_2545FF434();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v15 = 136315138;
      v16 = sub_2545FE864();
      v17 = type metadata accessor for HomeXLTileEntity();
      v18 = MEMORY[0x259C121B0](v16, v17);
      v20 = v19;

      (*(v13 + 8))(v12, v14);
      v21 = sub_2545F0FB4(v18, v20, &v33);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_2545AB000, v9, v10, "suggestedEntities() returned %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x259C12CB0](v32, -1, -1);
      MEMORY[0x259C12CB0](v15, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }
  }

  else
  {
    if (qword_27F6063A0 != -1)
    {
      swift_once();
    }

    v22 = sub_2545FF0A4();
    __swift_project_value_buffer(v22, qword_27F60ADD8);
    v23 = sub_2545FF084();
    v24 = sub_2545FF454();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2545AB000, v23, v24, "suggestedEntities() returned empty", v25, 2u);
      MEMORY[0x259C12CB0](v25, -1, -1);
    }
  }

  (*(v0[6] + 32))(v0[2], v0[8], v0[5]);
  v27 = v0[7];
  v26 = v0[8];
  v29 = v0[3];
  v28 = v0[4];

  v30 = v0[1];

  return v30();
}

uint64_t sub_2545C27BC()
{
  if (qword_27F6063A0 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_2545FF0A4();
  __swift_project_value_buffer(v2, qword_27F60ADD8);
  v3 = v1;
  v4 = sub_2545FF084();
  v5 = sub_2545FF454();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2545AB000, v4, v5, "suggestedEntities() threw error %@", v7, 0xCu);
    sub_2545B612C(v8, &qword_27F606658, &qword_254600D70);
    MEMORY[0x259C12CB0](v8, -1, -1);
    MEMORY[0x259C12CB0](v7, -1, -1);
  }

  v11 = v0[11];
  v12 = v0[2];

  type metadata accessor for HomeXLTileEntity();
  sub_2545D8728(&qword_281533060, type metadata accessor for HomeXLTileEntity);
  sub_2545FE854();

  v14 = v0[7];
  v13 = v0[8];
  v16 = v0[3];
  v15 = v0[4];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2545C29D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2545AF6A0;

  return HomeXLTileEntityQuery.entities(matching:)(a1, a2, a3);
}

uint64_t sub_2545C2A80@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606568, &qword_254600340);
  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_2545FE974();
  *a1 = result;
  return result;
}

uint64_t sub_2545C2AEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545D88C4;

  return HomeXLTileEntityQuery.entities(for:)(a1);
}

uint64_t sub_2545C2B80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2545D880C;

  return HomeXLTileEntityQuery.suggestedEntities()(a1);
}

uint64_t sub_2545C2C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2545C2CD8;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_2545C2CD8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2545C2DD8(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_2545B3C58();
  *v6 = v2;
  v6[1] = sub_2545D880C;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_2545C2E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2545AF6A0;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_2545C2F44(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v25 = a6;
  v26 = a1;
  v8 = v6;
  v27 = a2;
  v10 = a4(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v22 - v13;
  v15 = *(a3 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    return v16;
  }

  v28 = MEMORY[0x277D84F90];
  v23 = a5;
  a5(0, v15, 0);
  v16 = v28;
  v17 = *(type metadata accessor for TileElementInfo() - 8);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v24 = *(v17 + 72);
  while (1)
  {
    v26(v18);
    if (v8)
    {
      break;
    }

    v8 = 0;
    v28 = v16;
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v23(v19 > 1, v20 + 1, 1);
      v16 = v28;
    }

    *(v16 + 16) = v20 + 1;
    sub_2545D8770(v14, v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v25);
    v18 += v24;
    if (!--v15)
    {
      return v16;
    }
  }

  result = sub_2545FEA14();
  __break(1u);
  return result;
}

uint64_t sub_2545C3148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a2;
  v22 = a4;
  v23 = a6;
  v9 = sub_2545FEEF4();
  v20 = *(v9 - 8);
  v10 = v20;
  v11 = *(v20 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_2545B60C4(a1, &v19 - v14, &qword_27F6064D0, &unk_2546002B0);
  v25 = v21;
  v26 = a3;
  v27 = v22;
  v28 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606730, &qword_254600C20);
  v15 = *(v10 + 72);
  v16 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2546008F0;
  sub_2545FE8E4();
  sub_2545FE8E4();
  sub_2545FEEE4();
  v24 = v17;
  sub_2545D8728(&qword_27F606738, MEMORY[0x277D16690]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606740, &qword_254600C28);
  sub_2545B4F2C(&qword_27F606748, &qword_27F606740, &qword_254600C28);
  sub_2545FF534();
  sub_2545FEDB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606688, &qword_254601E20);
  return swift_storeEnumTagMultiPayload();
}

uint64_t *sub_2545C33E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_2545FF544();
  if (v5 == 1 << *(a1 + 32))
  {
    result = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0uLL;
  }

  else
  {
    result = sub_2545C8FFC(&v10, v5, *(a1 + 36), 0, a1);
    v9 = v10;
    v8 = v11;
  }

  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_2545C3480(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_2545C4950(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2545C35DC(uint64_t a1)
{
  v28 = a1;
  v3 = type metadata accessor for ElementID();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for HomeXLTileEntity();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v26 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = 0;
  v27 = v2;
  v17 = *(v2 + 16);
  v18 = v17[2];
  while (v18 != v16)
  {
    if (v16 >= v17[2])
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_2545D8660(v17 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v16++, v15, type metadata accessor for HomeXLTileEntity);
    sub_2545D8660(v15, v9, type metadata accessor for ElementID);
    sub_2545D8660(v28, v7, type metadata accessor for ElementID);
    v19 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
    v20 = sub_2545FEB04();
    v21 = *(v20 - 8);
    v22 = *(v21 + 8);
    v1 = v21 + 8;
    v22(v7, v20);
    v22(v9, v20);
    result = sub_2545D86C8(v15, type metadata accessor for HomeXLTileEntity);
    if (v19)
    {
      return result;
    }
  }

  v1 = v26;
  sub_2545D8660(v28, v26, type metadata accessor for HomeXLTileEntity);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_7;
  }

LABEL_11:
  v17 = sub_2545C4950(0, v17[2] + 1, 1, v17, &qword_27F6067F0, &qword_254600CC0, type metadata accessor for HomeXLTileEntity);
LABEL_7:
  v25 = v17[2];
  v24 = v17[3];
  if (v25 >= v24 >> 1)
  {
    v17 = sub_2545C4950(v24 > 1, v25 + 1, 1, v17, &qword_27F6067F0, &qword_254600CC0, type metadata accessor for HomeXLTileEntity);
  }

  v17[2] = v25 + 1;
  result = sub_2545D8770(v1, v17 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, type metadata accessor for HomeXLTileEntity);
  *(v27 + 16) = v17;
  return result;
}

uint64_t sub_2545C3944(uint64_t a1)
{
  v28 = a1;
  v3 = type metadata accessor for ElementID();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for ToggleControlEntity();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v26 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = 0;
  v27 = v2;
  v17 = *(v2 + 16);
  v18 = v17[2];
  while (v18 != v16)
  {
    if (v16 >= v17[2])
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_2545D8660(v17 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v16++, v15, type metadata accessor for ToggleControlEntity);
    sub_2545D8660(v15, v9, type metadata accessor for ElementID);
    sub_2545D8660(v28, v7, type metadata accessor for ElementID);
    v19 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
    v20 = sub_2545FEB04();
    v21 = *(v20 - 8);
    v22 = *(v21 + 8);
    v1 = v21 + 8;
    v22(v7, v20);
    v22(v9, v20);
    result = sub_2545D86C8(v15, type metadata accessor for ToggleControlEntity);
    if (v19)
    {
      return result;
    }
  }

  v1 = v26;
  sub_2545D8660(v28, v26, type metadata accessor for ToggleControlEntity);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_7;
  }

LABEL_11:
  v17 = sub_2545C4950(0, v17[2] + 1, 1, v17, &qword_27F6067A0, &qword_254600C78, type metadata accessor for ToggleControlEntity);
LABEL_7:
  v25 = v17[2];
  v24 = v17[3];
  if (v25 >= v24 >> 1)
  {
    v17 = sub_2545C4950(v24 > 1, v25 + 1, 1, v17, &qword_27F6067A0, &qword_254600C78, type metadata accessor for ToggleControlEntity);
  }

  v17[2] = v25 + 1;
  result = sub_2545D8770(v1, v17 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, type metadata accessor for ToggleControlEntity);
  *(v27 + 16) = v17;
  return result;
}

uint64_t sub_2545C3CAC(uint64_t a1)
{
  v28 = a1;
  v3 = type metadata accessor for ElementID();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for HomeSingleTileEntity();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v26 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = 0;
  v27 = v2;
  v17 = *(v2 + 16);
  v18 = v17[2];
  while (v18 != v16)
  {
    if (v16 >= v17[2])
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_2545D8660(v17 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v16++, v15, type metadata accessor for HomeSingleTileEntity);
    sub_2545D8660(v15, v9, type metadata accessor for ElementID);
    sub_2545D8660(v28, v7, type metadata accessor for ElementID);
    v19 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
    v20 = sub_2545FEB04();
    v21 = *(v20 - 8);
    v22 = *(v21 + 8);
    v1 = v21 + 8;
    v22(v7, v20);
    v22(v9, v20);
    result = sub_2545D86C8(v15, type metadata accessor for HomeSingleTileEntity);
    if (v19)
    {
      return result;
    }
  }

  v1 = v26;
  sub_2545D8660(v28, v26, type metadata accessor for HomeSingleTileEntity);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_7;
  }

LABEL_11:
  v17 = sub_2545C4950(0, v17[2] + 1, 1, v17, &qword_27F6066D8, &qword_254600BC8, type metadata accessor for HomeSingleTileEntity);
LABEL_7:
  v25 = v17[2];
  v24 = v17[3];
  if (v25 >= v24 >> 1)
  {
    v17 = sub_2545C4950(v24 > 1, v25 + 1, 1, v17, &qword_27F6066D8, &qword_254600BC8, type metadata accessor for HomeSingleTileEntity);
  }

  v17[2] = v25 + 1;
  result = sub_2545D8770(v1, v17 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, type metadata accessor for HomeSingleTileEntity);
  *(v27 + 16) = v17;
  return result;
}

uint64_t sub_2545C4014(uint64_t a1, unint64_t a2)
{
  v3 = sub_2545FF134();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_2545FEA44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2545FEB24();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2545FF154();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  if (a2 > 1)
  {
    sub_2545FF124();
    sub_2545FF114();
    sub_2545FF104();
    sub_2545FF114();
    sub_2545FF144();
  }

  else
  {
    sub_2545FF0F4();
  }

  sub_2545FEB14();
  (*(v6 + 104))(v9, *MEMORY[0x277CC9110], v5);
  return sub_2545FEA74();
}

uint64_t sub_2545C428C(uint64_t a1)
{
  v3 = sub_2545FEF84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2545D8728(&qword_27F606718, MEMORY[0x277D16BC8]);
  v8 = sub_2545FF254();
  v27 = MEMORY[0x277D84F90];
  sub_2545DBE04(0, v8 & ~(v8 >> 63), 0);
  v9 = v27;
  (*(v4 + 16))(v7, a1, v3);
  result = sub_2545FF244();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v11 = v26;
    if (v8)
    {
      v22[1] = v1;
      v12 = v25;
      v13 = *(v25 + 16);
      v14 = v25 + 40 * v26 + 32;
      v15 = v26;
      while (v13 != v15)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v15 >= *(v12 + 16))
        {
          goto LABEL_21;
        }

        sub_2545D850C(v14, v23);
        sub_2545D850C(v23, v24);
        __swift_destroy_boxed_opaque_existential_0(v23);
        v27 = v9;
        v17 = *(v9 + 16);
        v16 = *(v9 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_2545DBE04((v16 > 1), v17 + 1, 1);
          v9 = v27;
        }

        *(v9 + 16) = v17 + 1;
        result = sub_2545D8570(v24, v9 + 40 * v17 + 32);
        v14 += 40;
        ++v15;
        if (!--v8)
        {
          v26 = v15;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    else
    {
      v15 = v26;
LABEL_12:
      v18 = v25;
      v19 = *(v25 + 16);
      if (v15 == v19)
      {
LABEL_13:

        return v9;
      }

      while (v15 < v19)
      {
        v26 = v15 + 1;
        sub_2545D850C(v18 + 32 + 40 * v15, v24);
        sub_2545D8570(v24, v23);
        v27 = v9;
        v21 = *(v9 + 16);
        v20 = *(v9 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2545DBE04((v20 > 1), v21 + 1, 1);
          v9 = v27;
        }

        *(v9 + 16) = v21 + 1;
        result = sub_2545D8570(v23, v9 + 40 * v21 + 32);
        v19 = *(v18 + 16);
        v15 = v26;
        if (v26 == v19)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2545C4588@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_2545FEB64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2545F3D54(v11, v12, a3);
  sub_2545FED04();
  v13 = a2(0);
  v14 = a3 + *(v13 + 20);
  sub_2545FEB34();
  (*(v7 + 8))(v10, v6);
  sub_2545D850C(a1, v17);
  return sub_2545E501C(v17, a3 + *(v13 + 24));
}

void *sub_2545C4704(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606720, &unk_254600C10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606728, &qword_254601DC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2545C484C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6066D0, &qword_254600BC0);
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

size_t sub_2545C4950(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

size_t sub_2545C4B2C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_2545C4D14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

uint64_t sub_2545C4D9C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2545C4E28(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_2545C4EB4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606720, &unk_254600C10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606728, &qword_254601DC0);
    swift_arrayInitWithCopy();
  }

  sub_2545FEA14();
  return v10;
}

size_t sub_2545C510C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

  sub_2545FEA14();
  return v17;
}

size_t sub_2545C530C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_2545FEA14();
  return v19;
}

void *sub_2545C54F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  sub_2545FEA14();
  return v16;
}

unint64_t sub_2545C563C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2545FEB04();
  sub_2545D8728(&qword_27F606430, MEMORY[0x277CC95F0]);
  v5 = sub_2545FF0B4();

  return sub_2545C82E4(a1, v5);
}

unint64_t sub_2545C56D4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2545FF824();

  return sub_2545C84A4(a1, v4);
}

unint64_t sub_2545C5718(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2545FF834();
  if (!a2)
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v6 = 2;
LABEL_5:
    MEMORY[0x259C12730](v6);
    goto LABEL_7;
  }

  MEMORY[0x259C12730](1);
  sub_2545FF1B4();
LABEL_7:
  v7 = sub_2545FF864();

  return sub_2545C8510(a1, a2, v7);
}

unint64_t sub_2545C57BC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2545FF834();
  sub_2545FF1B4();

  v4 = sub_2545FF864();

  return sub_2545C85F4(a1, v4);
}

uint64_t sub_2545C5880(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *))
{
  v7 = *(a2(0) - 8);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a3(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11[1] = v9;
  result = a4(v11);
  *a1 = v8;
  return result;
}

uint64_t sub_2545C5944(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a2(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + 32;
  v11[1] = v9;
  result = sub_2545C59D0(v11, a3, a4);
  *a1 = v8;
  return result;
}

uint64_t sub_2545C59D0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  result = sub_2545FF784();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v9 = sub_2545FF2F4();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      sub_2545C5EA0(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return sub_2545C5D60(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_2545C5AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v49 = a8;
  v50 = a6;
  v51 = a7;
  v52 = a5(0);
  v12 = *(*(v52 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v52);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - v17;
  result = MEMORY[0x28223BE20](v16);
  v22 = &v41 - v21;
  v43 = a2;
  if (a3 != a2)
  {
    v23 = *(v20 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v25 = -v23;
    v26 = a1 - a3;
    v48 = *a4;
    v42 = v23;
    v27 = v48 + v23 * a3;
LABEL_6:
    v46 = v24;
    v47 = a3;
    v44 = v27;
    v45 = v26;
    v29 = v24;
    while (1)
    {
      v30 = v50;
      sub_2545D8660(v27, v22, v50);
      sub_2545D8660(v29, v18, v30);
      v31 = *(v52 + 24);
      v32 = *(type metadata accessor for TileElementInfo() + 20);
      v33 = *&v22[v31 + v32];
      v34 = *&v22[v31 + 8 + v32];
      v35 = &v18[v31 + v32];
      if (v33 == *v35 && v34 == *(v35 + 1))
      {
        v28 = v51;
        sub_2545D86C8(v18, v51);
        result = sub_2545D86C8(v22, v28);
LABEL_5:
        a3 = v47 + 1;
        v24 = v46 + v42;
        v26 = v45 - 1;
        v27 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_6;
      }

      v37 = sub_2545FF7B4();
      v38 = v51;
      sub_2545D86C8(v18, v51);
      result = sub_2545D86C8(v22, v38);
      if ((v37 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v48)
      {
        break;
      }

      v39 = v49;
      sub_2545D8770(v27, v15, v49);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2545D8770(v15, v29, v39);
      v29 += v25;
      v27 += v25;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2545C5D60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    v11 = *v9;
    v10 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      v14 = v13[1];
      if (v10)
      {
        if (v10 == 1)
        {
          goto LABEL_4;
        }

        if (v14 >= 2)
        {
          v21 = *v13;
          v22 = v13[1];
          sub_2545D8470();
          result = sub_2545FF514();
          if (result != -1)
          {
            goto LABEL_4;
          }

          goto LABEL_20;
        }

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      if (v14 == 1)
      {
        v15 = 1;
      }

      if (v14)
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_20:
      if (!v6)
      {
        __break(1u);
        return result;
      }

      v10 = v13[4];
      v17 = v13[5];
      v19 = v13[2];
      v18 = v13[3];
      *(v13 + 3) = *v13;
      v13[5] = v19;
      *v13 = v18;
      v13[1] = v10;
      v13[2] = v17;
      v13 -= 3;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_2545C5EA0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v111 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_129:
    v8 = *v111;
    if (!*v111)
    {
      goto LABEL_168;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_131:
      v101 = v5;
      v102 = *(v9 + 2);
      if (v102 >= 2)
      {
        while (1)
        {
          v103 = *v6;
          if (!*v6)
          {
            goto LABEL_166;
          }

          v5 = v102 - 1;
          v104 = *&v9[16 * v102];
          v6 = *&v9[16 * v102 + 24];
          sub_2545C7688((v103 + 24 * v104), (v103 + 24 * *&v9[16 * v102 + 16]), v103 + 24 * v6, v8);
          if (v101)
          {
          }

          if (v6 < v104)
          {
            goto LABEL_155;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_2545C4E28(v9);
          }

          if (v102 - 2 >= *(v9 + 2))
          {
            goto LABEL_156;
          }

          v105 = &v9[16 * v102];
          *v105 = v104;
          *(v105 + 1) = v6;
          result = sub_2545C4D9C(v5);
          v102 = *(v9 + 2);
          v6 = a3;
          if (v102 <= 1)
          {
          }
        }
      }
    }

LABEL_162:
    result = sub_2545C4E28(v9);
    v9 = result;
    goto LABEL_131;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (2)
  {
    v10 = v8++;
    if (v8 >= v7)
    {
      goto LABEL_46;
    }

    v11 = *v6;
    v12 = (*v6 + 24 * v8);
    v13 = v12[1];
    v14 = (*v6 + 24 * v10);
    v15 = v14[1];
    v107 = v5;
    v16 = v10;
    if (!v13)
    {
      goto LABEL_10;
    }

    if (v13 == 1)
    {
      v13 = 2;
LABEL_10:
      v17 = 1;
      if (v15 == 1)
      {
        v17 = 2;
      }

      if (v15)
      {
        v18 = v17 > v13;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      goto LABEL_18;
    }

    if (v15 < 2)
    {
      v13 = 1;
      goto LABEL_10;
    }

    v117 = *v12;
    v115 = *v14;
    sub_2545D8470();
    result = sub_2545FF514();
    v19 = result == -1;
LABEL_18:
    v20 = 0;
    v21 = (v16 + 2);
    v109 = v16;
    v22 = 24 * v16;
    v23 = (v11 + v22 + 32);
    v24 = v22;
    do
    {
      v8 = v21;
      v5 = v20;
      v6 = v24;
      if (v21 >= v7)
      {
        break;
      }

      v25 = v23[3];
      v29 = *v23;
      if (!v25)
      {
        goto LABEL_20;
      }

      if (v25 == 1)
      {
        v25 = 2;
LABEL_20:
        v26 = 1;
        if (v29 == 1)
        {
          v26 = 2;
        }

        if (v29)
        {
          v27 = v26 > v25;
        }

        else
        {
          v27 = 0;
        }

        v28 = v27;
        goto LABEL_28;
      }

      if (v29 < 2)
      {
        v25 = 1;
        goto LABEL_20;
      }

      v116 = v23[2];
      v113 = *(v23 - 1);
      sub_2545D8470();
      result = sub_2545FF514();
      v28 = result == -1;
LABEL_28:
      v21 = v8 + 1;
      v23 += 3;
      v20 = v5 + 1;
      v24 = (v6 + 24);
    }

    while (v19 == v28);
    if (v19)
    {
      v10 = v109;
      if (v8 < v109)
      {
        goto LABEL_159;
      }

      if (v109 < v8)
      {
        v30 = 0;
        do
        {
          if (v109 + v30 != v109 + v5 + 1)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_165;
            }

            v32 = (v31 + v22);
            v33 = (v31 + v6);
            v34 = *(v32 + 2);
            v35 = *v32;
            v36 = *(v33 + 5);
            *v32 = *(v33 + 24);
            *(v32 + 2) = v36;
            *(v33 + 24) = v35;
            *(v33 + 5) = v34;
          }

          --v5;
          ++v30;
          v6 -= 24;
          v22 += 24;
        }

        while (v30 + v109 < (v109 + v5 + 2));
      }

      v5 = v107;
    }

    else
    {
      v5 = v107;
      v10 = v109;
    }

    v6 = a3;
LABEL_46:
    v37 = *(v6 + 8);
    if (v8 >= v37)
    {
      goto LABEL_77;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_158;
    }

    if (&v8[-v10] >= a4)
    {
      goto LABEL_77;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_160;
    }

    if (v10 + a4 >= v37)
    {
      v38 = *(v6 + 8);
    }

    else
    {
      v38 = (v10 + a4);
    }

    if (v38 < v10)
    {
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    if (v8 == v38)
    {
LABEL_77:
      if (v8 < v10)
      {
        goto LABEL_157;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2545C484C(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v55 = *(v9 + 2);
      v54 = *(v9 + 3);
      v56 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        result = sub_2545C484C((v54 > 1), v55 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v56;
      v57 = &v9[16 * v55];
      *(v57 + 4) = v10;
      *(v57 + 5) = v8;
      v58 = *v111;
      if (!*v111)
      {
        goto LABEL_167;
      }

      if (!v55)
      {
LABEL_3:
        v7 = *(v6 + 8);
        if (v8 >= v7)
        {
          goto LABEL_129;
        }

        continue;
      }

      while (1)
      {
        v59 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v60 = *(v9 + 4);
          v61 = *(v9 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_97:
          if (v63)
          {
            goto LABEL_146;
          }

          v76 = &v9[16 * v56];
          v78 = *v76;
          v77 = *(v76 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_149;
          }

          v82 = &v9[16 * v59 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_152;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_153;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              v59 = v56 - 2;
            }

            goto LABEL_118;
          }

          goto LABEL_111;
        }

        v86 = &v9[16 * v56];
        v88 = *v86;
        v87 = *(v86 + 1);
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_111:
        if (v81)
        {
          goto LABEL_148;
        }

        v89 = &v9[16 * v59];
        v91 = *(v89 + 4);
        v90 = *(v89 + 5);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_151;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_118:
        v97 = v59 - 1;
        if (v59 - 1 >= v56)
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
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
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        if (!*v6)
        {
          goto LABEL_164;
        }

        v98 = *&v9[16 * v97 + 32];
        v99 = *&v9[16 * v59 + 40];
        sub_2545C7688((*v6 + 24 * v98), (*v6 + 24 * *&v9[16 * v59 + 32]), *v6 + 24 * v99, v58);
        if (v5)
        {
        }

        if (v99 < v98)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2545C4E28(v9);
        }

        if (v97 >= *(v9 + 2))
        {
          goto LABEL_143;
        }

        v100 = &v9[16 * v97];
        *(v100 + 4) = v98;
        *(v100 + 5) = v99;
        result = sub_2545C4D9C(v59);
        v56 = *(v9 + 2);
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = &v9[16 * v56 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_144;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_145;
      }

      v71 = &v9[16 * v56];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_147;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_150;
      }

      if (v75 >= v67)
      {
        v93 = &v9[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_154;
        }

        if (v62 < v96)
        {
          v59 = v56 - 2;
        }

        goto LABEL_118;
      }

      goto LABEL_97;
    }

    break;
  }

  v108 = v5;
  v110 = v10;
  v39 = *v6;
  v40 = *v6 + 24 * v8 - 24;
  v41 = v10 - v8;
LABEL_57:
  v42 = (v39 + 24 * v8);
  v44 = *v42;
  v43 = v42[1];
  v45 = v41;
  v46 = v40;
  while (1)
  {
    v47 = v46[1];
    if (!v43)
    {
      v48 = 1;
LABEL_63:
      if (v47 == 1)
      {
        v48 = 1;
      }

      if (v47)
      {
        v49 = v48 == 0;
      }

      else
      {
        v49 = 1;
      }

      if (!v49)
      {
        goto LABEL_72;
      }

LABEL_56:
      ++v8;
      v40 += 24;
      --v41;
      if (v8 == v38)
      {
        v8 = v38;
        v5 = v108;
        v10 = v110;
        v6 = a3;
        goto LABEL_77;
      }

      goto LABEL_57;
    }

    if (v43 == 1)
    {
      goto LABEL_56;
    }

    if (v47 < 2)
    {
      v48 = 0;
      goto LABEL_63;
    }

    v114 = *v46;
    sub_2545D8470();
    result = sub_2545FF514();
    if (result != -1)
    {
      goto LABEL_56;
    }

LABEL_72:
    if (!v39)
    {
      break;
    }

    v43 = v46[4];
    v50 = v46[5];
    v52 = v46[2];
    v51 = v46[3];
    *(v46 + 3) = *v46;
    v46[5] = v52;
    *v46 = v51;
    v46[1] = v43;
    v46[2] = v50;
    v46 -= 3;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
  return result;
}

uint64_t sub_2545C6604(unint64_t *a1, uint64_t a2, int64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void), uint64_t (*a9)(void), uint64_t (*a10)(void))
{
  v172 = a8;
  v174 = a6;
  v175 = a7;
  v11 = v10;
  v153 = a1;
  v14 = a10;
  v163 = a9;
  v173 = a5(0);
  v164 = *(v173 - 8);
  v15 = *(v164 + 64);
  v16 = MEMORY[0x28223BE20](v173);
  v157 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v170 = &v149 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v168 = &v149 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v167 = &v149 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v152 = &v149 - v27;
  result = MEMORY[0x28223BE20](v26);
  v151 = &v149 - v31;
  v32 = *(a3 + 8);
  if (v32 < 1)
  {
    v34 = MEMORY[0x277D84F90];
LABEL_113:
    a4 = *v153;
    if (!*v153)
    {
      goto LABEL_151;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_115:
      v176 = v34;
      v143 = *(v34 + 2);
      if (v143 >= 2)
      {
        while (1)
        {
          v144 = *a3;
          if (!*a3)
          {
            goto LABEL_149;
          }

          v145 = v34;
          v146 = a3;
          v34 = (v143 - 1);
          a3 = *&v145[16 * v143];
          v147 = *&v145[16 * v143 + 24];
          sub_2545C70E0(v144 + *(v164 + 72) * a3, v144 + *(v164 + 72) * *&v145[16 * v143 + 16], v144 + *(v164 + 72) * v147, a4, v163, v174, v175, v14);
          if (v11)
          {
          }

          if (v147 < a3)
          {
            goto LABEL_138;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v145 = sub_2545C4E28(v145);
          }

          if (v143 - 2 >= *(v145 + 2))
          {
            goto LABEL_139;
          }

          v148 = &v145[16 * v143];
          *v148 = a3;
          *(v148 + 1) = v147;
          v176 = v145;
          result = sub_2545C4D9C(v34);
          v34 = v176;
          v143 = *(v176 + 2);
          a3 = v146;
          if (v143 <= 1)
          {
          }
        }
      }
    }

LABEL_145:
    result = sub_2545C4E28(v34);
    v34 = result;
    goto LABEL_115;
  }

  v171 = v30;
  v169 = v29;
  v149 = a4;
  v33 = 0;
  v34 = MEMORY[0x277D84F90];
  v155 = a3;
  v160 = a10;
  while (1)
  {
    v35 = v33;
    v36 = v33 + 1;
    v162 = v34;
    if (v33 + 1 < v32)
    {
      v159 = v32;
      v37 = *a3;
      v38 = *(v164 + 72);
      v39 = *a3 + v38 * v36;
      v40 = v151;
      v41 = v174;
      sub_2545D8660(v39, v151, v174);
      v154 = v35;
      v165 = v38;
      v42 = v37 + v38 * v35;
      v43 = v152;
      sub_2545D8660(v42, v152, v41);
      v44 = *(v173 + 24);
      v45 = v40 + v44;
      v158 = type metadata accessor for TileElementInfo();
      v46 = *(v158 + 20);
      v47 = *(v45 + v46);
      v48 = *(v45 + v46 + 8);
      v49 = (v43 + v44 + v46);
      v50 = v47 == *v49 && v48 == v49[1];
      a3 = v36;
      v150 = v11;
      if (v50)
      {
        LODWORD(v161) = 0;
      }

      else
      {
        LODWORD(v161) = sub_2545FF7B4();
      }

      v51 = v175;
      sub_2545D86C8(v152, v175);
      result = sub_2545D86C8(v151, v51);
      v52 = v154 + 2;
      v53 = v165 * (v154 + 2);
      a4 = v37 + v53;
      v54 = v165 * v36;
      v55 = v37 + v165 * v36;
      v11 = v173;
      do
      {
        v57 = v52;
        v14 = a3;
        v60 = v54;
        v61 = v53;
        if (v52 >= v159)
        {
          break;
        }

        v166 = v52;
        v62 = v167;
        v63 = v174;
        sub_2545D8660(a4, v167, v174);
        v64 = v168;
        sub_2545D8660(v55, v168, v63);
        v65 = *(v11 + 24);
        v66 = *(v158 + 20);
        v67 = (v62 + v65 + v66);
        v68 = (v64 + v65 + v66);
        v69 = *v67 == *v68 && v67[1] == v68[1];
        v56 = v69 ? 0 : sub_2545FF7B4();
        v57 = v166;
        v58 = v175;
        sub_2545D86C8(v168, v175);
        result = sub_2545D86C8(v167, v58);
        v59 = v161 ^ v56;
        v52 = v57 + 1;
        a4 += v165;
        v55 += v165;
        a3 = v14 + 1;
        v54 = v60 + v165;
        v53 = v61 + v165;
        v34 = v162;
        v11 = v173;
      }

      while ((v59 & 1) == 0);
      if ((v161 & 1) == 0)
      {
        v36 = v57;
        v11 = v150;
        a3 = v155;
LABEL_36:
        v35 = v154;
        goto LABEL_37;
      }

      if (v57 < v154)
      {
        goto LABEL_142;
      }

      if (v154 < v57)
      {
        v70 = v154 * v165;
        v71 = v154;
        do
        {
          if (v71 != v14)
          {
            v73 = *v155;
            if (!*v155)
            {
              goto LABEL_148;
            }

            a4 = v73 + v70;
            sub_2545D8770(v73 + v70, v157, v172);
            if (v70 < v60 || a4 >= v73 + v61)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v70 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_2545D8770(v157, v73 + v60, v172);
          }

          ++v71;
          v60 -= v165;
          v61 -= v165;
          v70 += v165;
        }

        while (v71 < v14--);
        v36 = v57;
        v11 = v150;
        a3 = v155;
        v34 = v162;
        goto LABEL_36;
      }

      v36 = v57;
      v11 = v150;
      a3 = v155;
      v35 = v154;
    }

LABEL_37:
    v74 = *(a3 + 8);
    v166 = v36;
    if (v36 < v74)
    {
      if (__OFSUB__(v36, v35))
      {
        goto LABEL_141;
      }

      if (v36 - v35 < v149)
      {
        break;
      }
    }

LABEL_61:
    if (v166 < v35)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2545C484C(0, *(v34 + 2) + 1, 1, v34);
      v34 = result;
    }

    a4 = *(v34 + 2);
    v97 = *(v34 + 3);
    v98 = a4 + 1;
    if (a4 >= v97 >> 1)
    {
      result = sub_2545C484C((v97 > 1), a4 + 1, 1, v34);
      v34 = result;
    }

    *(v34 + 2) = v98;
    v99 = &v34[16 * a4];
    v100 = v166;
    *(v99 + 4) = v35;
    *(v99 + 5) = v100;
    if (!*v153)
    {
      goto LABEL_150;
    }

    if (a4)
    {
      v14 = *v153;
      while (1)
      {
        a4 = v98 - 1;
        if (v98 >= 4)
        {
          break;
        }

        if (v98 == 3)
        {
          v101 = *(v34 + 4);
          v102 = *(v34 + 5);
          v111 = __OFSUB__(v102, v101);
          v103 = v102 - v101;
          v104 = v111;
LABEL_82:
          if (v104)
          {
            goto LABEL_129;
          }

          v117 = &v34[16 * v98];
          v119 = *v117;
          v118 = *(v117 + 1);
          v120 = __OFSUB__(v118, v119);
          v121 = v118 - v119;
          v122 = v120;
          if (v120)
          {
            goto LABEL_132;
          }

          v123 = &v34[16 * a4 + 32];
          v125 = *v123;
          v124 = *(v123 + 1);
          v111 = __OFSUB__(v124, v125);
          v126 = v124 - v125;
          if (v111)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v121, v126))
          {
            goto LABEL_136;
          }

          if (v121 + v126 >= v103)
          {
            if (v103 < v126)
            {
              a4 = v98 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        v127 = &v34[16 * v98];
        v129 = *v127;
        v128 = *(v127 + 1);
        v111 = __OFSUB__(v128, v129);
        v121 = v128 - v129;
        v122 = v111;
LABEL_96:
        if (v122)
        {
          goto LABEL_131;
        }

        v130 = &v34[16 * a4];
        v132 = *(v130 + 4);
        v131 = *(v130 + 5);
        v111 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v111)
        {
          goto LABEL_134;
        }

        if (v133 < v121)
        {
          goto LABEL_3;
        }

LABEL_103:
        v138 = a4 - 1;
        if (a4 - 1 >= v98)
        {
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
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        v139 = *a3;
        if (!*a3)
        {
          goto LABEL_147;
        }

        v140 = a3;
        a3 = *&v34[16 * v138 + 32];
        v141 = *&v34[16 * a4 + 40];
        sub_2545C70E0(v139 + *(v164 + 72) * a3, v139 + *(v164 + 72) * *&v34[16 * a4 + 32], v139 + *(v164 + 72) * v141, v14, v163, v174, v175, v160);
        if (v11)
        {
        }

        if (v141 < a3)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_2545C4E28(v34);
        }

        if (v138 >= *(v34 + 2))
        {
          goto LABEL_126;
        }

        v142 = &v34[16 * v138];
        *(v142 + 4) = a3;
        *(v142 + 5) = v141;
        v176 = v34;
        result = sub_2545C4D9C(a4);
        v34 = v176;
        v98 = *(v176 + 2);
        a3 = v140;
        if (v98 <= 1)
        {
          goto LABEL_3;
        }
      }

      v105 = &v34[16 * v98 + 32];
      v106 = *(v105 - 64);
      v107 = *(v105 - 56);
      v111 = __OFSUB__(v107, v106);
      v108 = v107 - v106;
      if (v111)
      {
        goto LABEL_127;
      }

      v110 = *(v105 - 48);
      v109 = *(v105 - 40);
      v111 = __OFSUB__(v109, v110);
      v103 = v109 - v110;
      v104 = v111;
      if (v111)
      {
        goto LABEL_128;
      }

      v112 = &v34[16 * v98];
      v114 = *v112;
      v113 = *(v112 + 1);
      v111 = __OFSUB__(v113, v114);
      v115 = v113 - v114;
      if (v111)
      {
        goto LABEL_130;
      }

      v111 = __OFADD__(v103, v115);
      v116 = v103 + v115;
      if (v111)
      {
        goto LABEL_133;
      }

      if (v116 >= v108)
      {
        v134 = &v34[16 * a4 + 32];
        v136 = *v134;
        v135 = *(v134 + 1);
        v111 = __OFSUB__(v135, v136);
        v137 = v135 - v136;
        if (v111)
        {
          goto LABEL_137;
        }

        if (v103 < v137)
        {
          a4 = v98 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_82;
    }

LABEL_3:
    v32 = *(a3 + 8);
    v33 = v166;
    v14 = v160;
    if (v166 >= v32)
    {
      goto LABEL_113;
    }
  }

  if (__OFADD__(v35, v149))
  {
    goto LABEL_143;
  }

  if (v35 + v149 >= v74)
  {
    v75 = v74;
  }

  else
  {
    v75 = v35 + v149;
  }

  if (v75 < v35)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v76 = v166;
  if (v166 == v75)
  {
    goto LABEL_61;
  }

  v150 = v11;
  v77 = *a3;
  v78 = *(v164 + 72);
  v79 = v77 + v78 * (v166 - 1);
  v14 = -v78;
  v154 = v35;
  v80 = v35 - v166;
  v156 = v78;
  a4 = v77 + v166 * v78;
  v81 = v173;
  v82 = v169;
  v158 = v75;
LABEL_50:
  v165 = v79;
  v166 = v76;
  v159 = a4;
  v161 = v80;
  while (1)
  {
    v84 = v171;
    v85 = v174;
    sub_2545D8660(a4, v171, v174);
    sub_2545D8660(v79, v82, v85);
    v86 = *(v81 + 24);
    v87 = *(type metadata accessor for TileElementInfo() + 20);
    v88 = *(v84 + v86 + v87);
    v89 = *(v84 + v86 + v87 + 8);
    v90 = (v82 + v86 + v87);
    if (v88 == *v90 && v89 == v90[1])
    {
      v83 = v175;
      sub_2545D86C8(v82, v175);
      sub_2545D86C8(v84, v83);
LABEL_48:
      v81 = v173;
LABEL_49:
      v76 = v166 + 1;
      v79 = v165 + v156;
      v80 = v161 - 1;
      a4 = v159 + v156;
      if (v166 + 1 == v158)
      {
        v166 = v158;
        v11 = v150;
        a3 = v155;
        v34 = v162;
        v35 = v154;
        goto LABEL_61;
      }

      goto LABEL_50;
    }

    v92 = sub_2545FF7B4();
    v93 = v175;
    sub_2545D86C8(v82, v175);
    result = sub_2545D86C8(v84, v93);
    if ((v92 & 1) == 0)
    {
      goto LABEL_48;
    }

    if (!v77)
    {
      break;
    }

    v94 = v170;
    v95 = v172;
    sub_2545D8770(a4, v170, v172);
    v81 = v173;
    swift_arrayInitWithTakeFrontToBack();
    sub_2545D8770(v94, v79, v95);
    v79 += v14;
    a4 += v14;
    v96 = __CFADD__(v80++, 1);
    v82 = v169;
    if (v96)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
  return result;
}