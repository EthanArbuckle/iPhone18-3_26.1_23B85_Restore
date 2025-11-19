__n128 sub_1C2C86A4C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C2C86A58()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C86A90()
{

  return MEMORY[0x1EEE6BDD0](v0, 36, 7);
}

float sub_1C2C86AC8@<S0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16CommunicationsUI12WaveformView_bandPadding);
  swift_beginAccess();
  result = *v3;
  *a2 = *v3;
  return result;
}

id sub_1C2C86B20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_barColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1C2C86B88(id *a1)
{
  v1 = *a1;
  sub_1C2D0F828(v1);
}

uint64_t sub_1C2C86BD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C86E5C()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C86E94()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C86ECC()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2C86F30()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C86FC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2D1D4B4(v1, v2);
}

uint64_t sub_1C2C87018(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C2E72384();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C2C870C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C2E72384();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C8717C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FB98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2C87208()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C87244()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8727C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C872E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2C87324()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FC60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FC68);
  sub_1C2E73844();
  sub_1C2D26D10();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C87410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 56);
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
    v8 = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C2C874B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 56) = -a2;
  }

  else
  {
    v7 = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C87554(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ClippedImage.ImageSize(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C2C87600(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ClippedImage.ImageSize(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C876A8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1C6924350]();
  *a1 = result;
  return result;
}

uint64_t sub_1C2C87704()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FD08);
  sub_1C2E74024();
  sub_1C2C94F38(&qword_1EC05FD58, &qword_1EC05FD08);
  sub_1C2D29E0C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C877B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16CommunicationsUI15SuggestionsView_isExpanded;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C2C87838()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C87870()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C878D8()
{
  v1 = type metadata accessor for VoicemailDetailNavigationTitleView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  v7 = sub_1C2E71844();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FD88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1C2E74134();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C2C87AD4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EFF8);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDA8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C2C87C10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EFF8);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDA8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C2C87D70@<X0>(void *a1@<X8>)
{
  result = sub_1C2E739F4();
  *a1 = v3;
  return result;
}

uint64_t sub_1C2C87DCC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FDF0);
  sub_1C2C94F38(&qword_1EC05B4A8, &qword_1EC05FDF0);
  sub_1C2D2F414();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C87E78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FE00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FDF8);
  sub_1C2D2F468();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C87F60()
{
  type metadata accessor for GlassPlatterModifier();
  swift_getWitnessTable();
  sub_1C2E74094();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C88070()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2C880C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2C8816C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECD0);
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

uint64_t sub_1C2C88234(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECD0);
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

uint64_t sub_1C2C882F8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FF80);
  sub_1C2D374A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C88380()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060020);
  sub_1C2C94F38(&qword_1EC060028, &qword_1EC060018);
  sub_1C2D37BB0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C88484()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C884BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C88500()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C88550()
{
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060310);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F548);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB0);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060318);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E752E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1A8);
  swift_getWitnessTable();
  sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
  swift_getWitnessTable();
  sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E752E4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C2E74384();
  sub_1C2E73654();
  swift_getOpaqueTypeConformance2();
  sub_1C2C6EA44(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
  return swift_getWitnessTable();
}

uint64_t sub_1C2C88920()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C88A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0605B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2C88ACC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0605B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2C88B90(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECD0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_1C2E71934();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[12];
    goto LABEL_7;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[13];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[14]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1C2C88CF8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
  }

  else
  {
    v12 = sub_1C2E71934();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[12];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DBF8);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[14]) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[13];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_1C2C88E80()
{
  v1 = type metadata accessor for CallTranslationLanguagePicker();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  if (*(v0 + 32) >= 2uLL)
  {
  }

  v5 = v0 + v3;

  if (*(v0 + v3 + 48))
  {
  }

  if (*(v5 + 64))
  {
  }

  v6 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1C2E732B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v4 + v3;
  if (*(v5 + v1[10]) >= 2uLL)
  {
  }

  v9 = v8 + 7;

  if (*(v5 + v1[11]) >= 2uLL)
  {
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFF8;

  v11 = v1[12];
  v12 = sub_1C2E71934();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v14(v5 + v11, v12);
  v15 = v1[13];
  if (!(*(v13 + 48))(v5 + v15, 1, v12))
  {
    v14(v5 + v15, v12);
  }

  if (*(v0 + v10 + 8))
  {

    if (*(v0 + v10 + 16) >= 2uLL)
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v10 + 31) & 0xFFFFFFFFFFFFFFF8) + 17, v2 | 7);
}

uint64_t sub_1C2C8916C()
{
  v1 = type metadata accessor for CallTranslationLanguagePicker();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v13 = *(*(v1 - 1) + 64);

  if (*(v0 + 32) >= 2uLL)
  {
  }

  v4 = v0 + v3;

  if (*(v0 + v3 + 48))
  {
  }

  if (*(v4 + 64))
  {
  }

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C2E732B4();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  if (*(v4 + v1[10]) >= 2uLL)
  {
  }

  if (*(v4 + v1[11]) >= 2uLL)
  {
  }

  v7 = v1[12];
  v8 = sub_1C2E71934();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v4 + v7, v8);
  v11 = v1[13];
  if (!(*(v9 + 48))(v4 + v11, 1, v8))
  {
    v10(v4 + v11, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v13 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1C2C89428()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C89460()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060900);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C2C89550@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E718B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C2C8957C()
{
  v1 = type metadata accessor for CallTranslationLanguagePicker();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  if (*(v0 + 32) >= 2uLL)
  {
  }

  v5 = v0 + v3;

  if (*(v0 + v3 + 48))
  {
  }

  if (*(v5 + 64))
  {
  }

  v6 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1C2E732B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v4 + v3;
  if (*(v5 + v1[10]) >= 2uLL)
  {
  }

  v9 = v8 + 7;

  if (*(v5 + v1[11]) >= 2uLL)
  {
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFF8;

  v11 = v1[12];
  v12 = sub_1C2E71934();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v14(v5 + v11, v12);
  v15 = v1[13];
  if (!(*(v13 + 48))(v5 + v15, 1, v12))
  {
    v14(v5 + v15, v12);
  }

  if (*(v0 + v10 + 8))
  {

    if (*(v0 + v10 + 16) >= 2uLL)
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v10 + 24, v2 | 7);
}

uint64_t sub_1C2C8984C()
{
  v1 = type metadata accessor for CallTranslationLanguagePicker();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  if (*(v0 + 32) >= 2uLL)
  {
  }

  v5 = v0 + v3;

  if (*(v0 + v3 + 48))
  {
  }

  if (*(v5 + 64))
  {
  }

  v6 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1C2E732B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v4 + v3;
  if (*(v5 + v1[10]) >= 2uLL)
  {
  }

  v9 = v8 + 7;

  if (*(v5 + v1[11]) >= 2uLL)
  {
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFF8;

  v11 = v1[12];
  v12 = sub_1C2E71934();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v14(v5 + v11, v12);
  v15 = v1[13];
  if (!(*(v13 + 48))(v5 + v15, 1, v12))
  {
    v14(v5 + v15, v12);
  }

  if (*(v0 + v10 + 8))
  {

    if (*(v0 + v10 + 16) >= 2uLL)
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v10 + 24, v2 | 7);
}

uint64_t sub_1C2C89B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECD0);
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

uint64_t sub_1C2C89C24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECD0);
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

uint64_t sub_1C2C89D50()
{
  v1 = type metadata accessor for LanguageSelectionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C2E732B4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  if (*(v5 + v1[12]))
  {
  }

  if (*(v5 + v1[14]))
  {
  }

  if (*(v5 + v1[15]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1C2C89F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2E75004();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 8;
    if (v10 >= 4)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C2C8A01C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C2E75004();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 8;
  }

  return result;
}

uint64_t sub_1C2C8A0DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC060C20);
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70);
  sub_1C2E73654();
  swift_getWitnessTable();
  sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
  return swift_getWitnessTable();
}

uint64_t sub_1C2C8A264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2C8A2D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060DD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2C8A38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E288);
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

uint64_t sub_1C2C8A458(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E288);
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

uint64_t sub_1C2C8A520()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8A558()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8A598@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C2C8A5F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingCountdownView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C2C8A664(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2E12800(v1, v2);
}

uint64_t sub_1C2C8A704@<X0>(void *a1@<X8>)
{
  result = sub_1C2E738E4();
  *a1 = v3;
  return result;
}

uint64_t sub_1C2C8A75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC0610B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9F8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1C2C8A880(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC0610B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9F8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C2C8A9A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061088);
  sub_1C2D72200();
  sub_1C2E75224();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C8AA1C()
{
  type metadata accessor for BadgeRendererModifier();
  sub_1C2E73654();
  sub_1C2D72284();
  sub_1C2D728A4(&qword_1EC05C128, type metadata accessor for BadgeRendererModifier);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C8AAFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC0610B0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C2C8AB74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC0610B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C2C8AC1C()
{
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0611D0);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0611D8);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E752E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70);
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getWitnessTable();
  sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C8AE88()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8AF20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C2E75364();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C2C8AFCC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C2E75364();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C8B190@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E73AA4();
  *a1 = result;
  return result;
}

uint64_t sub_1C2C8B1F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2D7F264(v1, v2);
}

uint64_t sub_1C2C8B244(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1C2C8B300(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C8B420(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2D7F638(v1, v2);
}

uint64_t sub_1C2C8B4A8(__int128 *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 10) = *(a1 + 42);
  sub_1C2C736A4(v5, &v4, &qword_1EC061508);
  return sub_1C2D7E988(a1);
}

uint64_t sub_1C2C8B514(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_1C2D7EF40(&v3);
}

uint64_t sub_1C2C8B568@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C2E73B34();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C2C8B5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C2E750B4();
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
      v13 = sub_1C2E73DF4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C2C8B6FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C2E750B4();
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
      v13 = sub_1C2E73DF4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C2C8B820(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061538);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614E8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C2C8B95C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061538);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614E8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C2C8BA9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8BB14()
{
  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {

    v1 = *(v0 + 80);
    if (v1 != 255)
    {
      sub_1C2C77608(*(v0 + 64), *(v0 + 72), v1);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1C2C8BB74()
{
  v1 = (type metadata accessor for ControlButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061538);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1C2E73DB4();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C2C8BCE8()
{
  v1 = (type metadata accessor for ControlButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061538);
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C2E73DB4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = *(v0 + v4 + 48);
  if (v10 != 255)
  {
    sub_1C2C77608(*(v0 + v4 + 32), *(v0 + v4 + 40), v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + 49, v2 | 7);
}

uint64_t sub_1C2C8BEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0616B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0616C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1C2C8BFD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0616B8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0616C0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C2C8C114()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8C14C()
{
  v1 = type metadata accessor for SettingsPersonList();
  v2 = *(*(v1 - 8) + 80);
  v13 = *(*(v1 - 8) + 64);
  v15 = sub_1C2E722D4();
  v3 = *(v15 - 8);
  v4 = *(v3 + 80);
  v14 = *(v3 + 64);
  v5 = sub_1C2E754F4();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + ((v2 + 16) & ~v2), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0616B8);

  v7 = v0 + ((v2 + 16) & ~v2) + *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F298);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = v6;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061788);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {

      v12(v7 + *(v8 + 32), v5);
    }
  }

  else
  {
  }

  v9 = v2 | v4;
  v10 = (((v2 + 16) & ~v2) + v13 + v4) & ~v4;

  (*(v3 + 8))(v0 + v10, v15);

  return MEMORY[0x1EEE6BDD0](v0, v10 + v14, v9 | 7);
}

uint64_t sub_1C2C8C3C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E73B74();
  *a1 = result;
  return result;
}

uint64_t sub_1C2C8C420()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061728);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061720);
  sub_1C2E73054();
  sub_1C2D8DA9C();
  sub_1C2D8EC24(&qword_1EC061780, MEMORY[0x1E697BDD8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C8C524()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061920);
  sub_1C2D8F594();
  sub_1C2E75104();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C8C5AC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8C628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2E718A4();
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

uint64_t sub_1C2C8C6E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C2E718A4();
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

uint64_t sub_1C2C8C7A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0619D8);
  sub_1C2D959E8();
  sub_1C2E74704();
  sub_1C2E73F54();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C8C85C()
{
  v1 = *(type metadata accessor for MenuItem() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1C2E718A4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C2C8C968()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F580);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC061A68);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E752E4();
  sub_1C2E73654();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

id sub_1C2C8CAE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16CommunicationsUI30AudioMiddleStackBackgroundView_effect;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1C2C8CB54@<X0>(uint64_t a1@<X8>)
{
  sub_1C2D99D88();
  result = sub_1C2E73BB4();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1C2C8CBB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C8CBF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061BF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C2C8CCA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061BF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C8CD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2E71784();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1C2C8CEC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C2E71784();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C2C8CFD8()
{
  v1 = type metadata accessor for CUVideoMessagingURLImageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = sub_1C2E71784();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v8 = v1[5];
  if (!(*(v6 + 48))(v0 + v3 + v8, 1, v5))
  {
    v7(v4 + v8, v5);
  }

  v9 = v4 + v1[7];
  if (*(v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  v10 = (v12 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v2 | 7);
}

uint64_t sub_1C2C8D174()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8D1AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2C8D250@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E73874();
  *a1 = result;
  return result;
}

uint64_t sub_1C2C8D2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2E71784();
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

uint64_t sub_1C2C8D368(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C2E71784();
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

uint64_t sub_1C2C8D430()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8D468()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C8D4A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061D70);
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2C94F38(qword_1EC061D88, &qword_1EC061D70);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C8D58C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8D5D0()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for AutoSizingSheetHostingController.SizeUpdateView() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1C2E732F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(*(v1 - 8) + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1C2C8D768()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8D7D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8D808()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062050);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C2C8D83C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C8D87C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8D928()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C8D960()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2C8D998()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8D9E0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C2C8DA28()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8DA60()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2C8DAA0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C2C8DAFC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_1C2C8DB4C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 96);
  *a2 = result;
  return result;
}

uint64_t sub_1C2C8DB94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 96) = v2;
  return result;
}

__n128 sub_1C2C8DBE0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 104);
  v5 = *(v3 + 120);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 sub_1C2C8DC2C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  result = *a1;
  *(v3 + 120) = *(a1 + 16);
  *(v3 + 104) = result;
  return result;
}

id sub_1C2C8DC7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 centerYAnchor];
  *a2 = result;
  return result;
}

uint64_t sub_1C2C8DCCC()
{
  sub_1C2DB09C8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C2C8DD14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0621E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2C8DD84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E73964();
  *a1 = result;
  return result;
}

uint64_t sub_1C2C8DDFC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8DE34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C8DE74()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8DEAC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2C8DEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EFF8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1C2C8DFC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EFF8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C8E078()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1C2C8E0B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C2C8E0F8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05DA00) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1C2E71A34();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C2C8E27C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8E2B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_lockStateDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C2C8E310(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_lockStateDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C2C8E374()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8E3D8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8E410()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C8E450()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8E4C0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C2E737C4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C2C8E56C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C2E737C4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C8E61C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C2E73B34();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C2C8E67C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C2E73A64();
  *a1 = result;
  return result;
}

uint64_t sub_1C2C8E754()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8E7CC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8E85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 56);
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
    v8 = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C2C8E900(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 56) = -a2;
  }

  else
  {
    v7 = type metadata accessor for ClippedImageBackgroundView.ForegroundStyle(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C8E9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614E8);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C2C8EA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0614E8);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C2C8EB68()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2C8EBA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1C2C8EBE0(void *a1@<X8>)
{
  static ApertureController.clientBundleIdentifier.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C2C8EC0C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  qword_1EC062B28 = v2;
  qword_1EC062B30 = v1;
}

uint64_t sub_1C2C8EC88@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *@<X8>)@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1C2DD9FB8;
  a2[1] = v5;
}

uint64_t sub_1C2C8ECF8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *@<X8>)@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1C2DD9FB8;
  a2[1] = v5;
}

uint64_t sub_1C2C8ED68@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *@<X8>)@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1C2DD9FB8;
  a2[1] = v5;
}

uint64_t sub_1C2C8EDD8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1C2DD9E20;
  a2[1] = v5;
}

uint64_t sub_1C2C8EE4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8EE84()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8EEBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8EEFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2C8EF78()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C8EFD4()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8F144()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8F17C()
{
  v1 = *(type metadata accessor for FTPickerView.PickerItem(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_1C2E718A4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1C2C8F290()
{
  v1 = sub_1C2E71EA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C2C8F354()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8F394()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2C8F434()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8F46C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8F4AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8F4E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8F524()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8F570()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8F5A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8F5E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8F628()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8F664()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8F69C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8F6DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_options;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_1C2C8F734(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_options;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1C2DEAEE4();
}

uint64_t sub_1C2C8F78C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C2C8F7E8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C2C8F85C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8F91C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8F9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2E718A4();
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

uint64_t sub_1C2C8FA98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C2E718A4();
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

uint64_t sub_1C2C8FBB4()
{
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C8FC9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2C8FD0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2C8FD7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2C8FDF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2C8FE48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8FE80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8FEC0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C8FF00()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C8FF38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 152);
}

uint64_t sub_1C2C8FF88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C8FFCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2DFDE98(v1, v2);
}

uint64_t sub_1C2C90018(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2DFE7B0(v1, v2);
}

uint64_t sub_1C2C9006C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063558);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2C900DC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ClippedImage.ImageSize(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1C2C90188(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ClippedImage.ImageSize(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C90240()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1C2C902F8@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_colorMatrix;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_1C2C9035C(_OWORD *a1, void *a2)
{
  v3 = (*a2 + OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_colorMatrix);
  swift_beginAccess();
  v4 = a1[3];
  v3[2] = a1[2];
  v3[3] = v4;
  v3[4] = a1[4];
  v5 = a1[1];
  *v3 = *a1;
  v3[1] = v5;
  sub_1C2E04130();
  return result;
}

uint64_t sub_1C2C903D0()
{
  sub_1C2C74960();
  sub_1C2E070D0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C90448()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C90490@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = FaceTimeControlServiceProtocol.validityState.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = v5;
  return result;
}

uint64_t sub_1C2C904D4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  return FaceTimeControlServiceProtocol.validityState.setter(&v7, v4, v5);
}

__n128 sub_1C2C90520(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C2C9052C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContactAvatarTileView.Caption(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1C2C905E8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C2C778FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C2C9062C()
{
  v1 = *(_s11CaptionViewVMa() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;

  sub_1C2DD3E18(*(v5 + 32), *(v5 + 40), *(v5 + 48));

  sub_1C2DD3E18(*(v5 + 80), *(v5 + 88), *(v5 + 96));

  v6 = *(type metadata accessor for ContactAvatarTileView.Caption(0) + 48);
  v7 = sub_1C2E757E4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C2C90880()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C908F4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v10[2] = v3[3];
  v10[3] = v6;
  v10[0] = v4;
  v10[1] = v5;
  v7 = v3[2];
  *a2 = v3[1];
  a2[1] = v7;
  a2[2] = v3[3];
  a2[3] = v6;
  return sub_1C2CF42FC(v10, v9);
}

uint64_t sub_1C2C90964@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_1C2C90AC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C2C90B14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a2 = v4;
  a2[1] = v5;
  return sub_1C2D6FDC0(v4);
}

uint64_t sub_1C2C90B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063B28);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 81);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C2C90C40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063B28);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 81) = -a2;
  }

  return result;
}

uint64_t sub_1C2C90D20@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1C69244C0]();
  *a1 = result;
  return result;
}

float sub_1C2C90D4C@<S0>(float *a1@<X8>)
{
  sub_1C2E15B9C();
  sub_1C2E73514();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C2C90DF0()
{
  sub_1C2E73654();
  sub_1C2E19274();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C90E54()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2C90EAC()
{
  v1 = sub_1C2E75894();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C2C90F64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2E1BDDC(v1, v2);
}

uint64_t sub_1C2C9107C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C2E73B54();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C2C910E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2C9117C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C2C91238(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C91334()
{
  v1 = (type metadata accessor for CallTranscriptsView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C2E73554();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C2C91494()
{
  v1 = sub_1C2E71784();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C2C9151C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C915B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C915EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0640F0);
  sub_1C2E28C9C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C91738()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_1C2C917B8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C2E2C22C(v1);
}

uint64_t sub_1C2C917F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C9182C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0628D0);
  sub_1C2E73654();
  sub_1C2E2E6A4();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C918A4()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C918DC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C91920()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C919F8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C91A44()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1C2C91AD4@<X0>(void *a1@<X8>)
{
  result = sub_1C2E42CF0();
  *a1 = result;
  return result;
}

uint64_t sub_1C2C91B44()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C91B84(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return sub_1C2E3B974(v4);
}

void sub_1C2C91BC4(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C2D9E5A0(*a1, v2);
  sub_1C2E3B65C(v1, v2);
}

uint64_t sub_1C2C91C08()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2C91C68()
{
  v1 = sub_1C2E71784();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C2C91CF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C91D7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2C91E0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = MessageControlServiceProtocol.selections.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

__n128 sub_1C2C91E50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_1C2C91E8C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  RequestsCellViewModel.sourceView.setter(v1);
}

uint64_t sub_1C2C91F0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1C2C91F74(unsigned __int8 *a1@<X8>)
{
  v2 = sub_1C2E4EA6C();
  v3 = [v2 isEnabled];

  *a1 = v3;
}

uint64_t sub_1C2C91FC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16CommunicationsUI20SuggestionsTextField_enableSuggestions;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_1C2C92048(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1C2E4EA6C();
  [v2 setDelegate_];
}

uint64_t sub_1C2C920A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1C2C920D8()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C92110()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C921A0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C921F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2E71784();
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

uint64_t sub_1C2C922B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C2E71784();
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

uint64_t sub_1C2C9236C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0D8);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C2C924A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0D8);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C2C92664@<X0>(uint64_t *a1@<X8>)
{
  result = FilterMenuViewModel.actions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C2C926AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1C2C926E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 26, 7);
}

uint64_t sub_1C2C9271C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C92760()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C92798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2C9286C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1C69244F0]();
  *a1 = result;
  return result;
}

uint64_t sub_1C2C92940()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2C929A4()
{
  type metadata accessor for DropShadowModifier();
  swift_getWitnessTable();
  sub_1C2E74094();
  sub_1C2E73154();
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064EB0);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064EB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064EC0);
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75304();

  return swift_getWitnessTable();
}

uint64_t sub_1C2C92B1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1C2C92B98()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C92BD0()
{
  sub_1C2E74384();
  sub_1C2E73654();
  sub_1C2E73F54();
  sub_1C2C6EA8C(&qword_1EDDCDA08, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C92CAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F420);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F430);
  sub_1C2E73654();
  sub_1C2C94F38(&qword_1EC05F418, &qword_1EC05F420);
  swift_getWitnessTable();
  sub_1C2C94F38(&qword_1EC05F428, &qword_1EC05F430);
  return swift_getWitnessTable();
}

uint64_t sub_1C2C92E98()
{
  type metadata accessor for ShapeBorderViewModifier();
  sub_1C2E73654();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C92F48()
{
  sub_1C2E756D4();
  type metadata accessor for ShapeBorderViewModifier();
  sub_1C2E73654();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C92FF8()
{
  type metadata accessor for ShapeBorderViewModifier();
  swift_getWitnessTable();
  sub_1C2E74094();
  sub_1C2E730B4();
  sub_1C2E73684();
  sub_1C2E73F54();
  sub_1C2E73654();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C2E73804();
  sub_1C2E73654();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C931F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2C93298()
{
  swift_getKeyPath();
  sub_1C2C94F80(&qword_1EC05D138, type metadata accessor for CallWaveFormView.ViewModel);
  sub_1C2E71A64();
}

uint64_t sub_1C2C9333C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2C94F80(&qword_1EC05D138, type metadata accessor for CallWaveFormView.ViewModel);
  sub_1C2E71A64();

  *a2 = *(v3 + 16);
}

uint64_t sub_1C2C93414(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 16) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2C94F80(&qword_1EC05D138, type metadata accessor for CallWaveFormView.ViewModel);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2C93598()
{
  swift_getKeyPath();
  sub_1C2C94F80(&qword_1EC05D138, type metadata accessor for CallWaveFormView.ViewModel);
  sub_1C2E71A64();
}

uint64_t sub_1C2C9363C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2C94F80(&qword_1EC05D138, type metadata accessor for CallWaveFormView.ViewModel);
  sub_1C2E71A64();

  *a2 = *(v3 + 24);
}

uint64_t sub_1C2C93714(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 24) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2C94F80(&qword_1EC05D138, type metadata accessor for CallWaveFormView.ViewModel);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2C93898()
{
  swift_getKeyPath();
  sub_1C2C94F80(&qword_1EC05D138, type metadata accessor for CallWaveFormView.ViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2C93950@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2C94F80(&qword_1EC05D138, type metadata accessor for CallWaveFormView.ViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  *a2 = *(v3 + 128);
}

uint64_t sub_1C2C93A3C(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1C2CD61E4(v3, a1);

  if (v4)
  {
    *(v1 + 128) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2C94F80(&qword_1EC05D138, type metadata accessor for CallWaveFormView.ViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2C93B84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 128) = a2;
}

uint64_t CallWaveFormView.ViewModel.__allocating_init(barCount:barWidth:uplinkAudioProvider:downlinkAudioProvider:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = swift_allocObject();
  CallWaveFormView.ViewModel.init(barCount:barWidth:uplinkAudioProvider:downlinkAudioProvider:)(a1, a2, a3, a4);
  return v8;
}

uint64_t CallWaveFormView.ViewModel.init(barCount:barWidth:uplinkAudioProvider:downlinkAudioProvider:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0626D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v50 = &v40 - v11;
  v43 = sub_1C2E76404();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D0D0);
  v14 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D0D8);
  v44 = *(v17 - 8);
  v45 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D0E0);
  v47 = *(v20 - 8);
  v48 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v46 = &v40 - v21;
  v22 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  *(v5 + 24) = v22;
  if (v22 >> 62 && sub_1C2E764E4())
  {
    v23 = sub_1C2C95C30(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CD0];
  }

  *(v5 + 128) = v23;
  v49 = v5 + 128;
  sub_1C2E71A94();
  *(v5 + 32) = a1;
  *(v5 + 40) = a4;
  sub_1C2C6E3A4(a2, v5 + 48);
  sub_1C2C6E3A4(a3, v5 + 88);
  v24 = a2;
  v51 = a2;
  v26 = *(a2 + 24);
  v25 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1(v24, v26);
  v52 = (*(v25 + 8))(v26, v25);
  v27 = a3[3];
  v28 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v27);
  v53 = (*(v28 + 8))(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D0F0);
  sub_1C2C94F38(&qword_1EC05D0F8, &qword_1EC05D0F0);
  sub_1C2E72D74();
  sub_1C2E763F4();
  v29 = [objc_opt_self() mainRunLoop];
  v52 = v29;
  sub_1C2C6E1B4(0, &qword_1EC05D100);
  v42 = a3;
  sub_1C2C94F38(&qword_1EC05D108, &qword_1EC05D0D0);
  sub_1C2C94EBC(&qword_1EC05D110, &qword_1EC05D100);
  v30 = v40;
  sub_1C2E72EF4();

  (*(v41 + 8))(v13, v43);
  (*(v14 + 8))(v16, v30);
  sub_1C2C6E1B4(0, &qword_1EDDCD9E0);
  v31 = sub_1C2E76084();
  v52 = v31;
  v32 = sub_1C2E76054();
  v33 = v50;
  (*(*(v32 - 8) + 56))(v50, 1, 1, v32);
  sub_1C2C94F38(&unk_1EC05D120, &qword_1EC05D0D8);
  sub_1C2C94EBC(&qword_1EC05B250, &qword_1EDDCD9E0);
  v34 = v45;
  v35 = v46;
  sub_1C2E72ED4();
  sub_1C2C73644(v33, &qword_1EC0626D0);

  (*(v44 + 8))(v19, v34);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1C2C94F00;
  *(v37 + 24) = v36;
  sub_1C2C94F38(&qword_1EC05D130, &qword_1EC05D0E0);
  v38 = v48;
  sub_1C2E72F14();

  (*(v47 + 8))(v35, v38);
  swift_getKeyPath();
  v52 = v5;
  sub_1C2C94F80(&qword_1EC05D138, type metadata accessor for CallWaveFormView.ViewModel);
  sub_1C2E71A64();

  v52 = v5;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  sub_1C2E72D94();
  swift_endAccess();

  v52 = v5;
  swift_getKeyPath();
  sub_1C2E71A74();

  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v5;
}

uint64_t sub_1C2C9447C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_1C2E757C4();
    MEMORY[0x1EEE9AC00](v1);
    sub_1C2E733C4();
  }

  return result;
}

uint64_t sub_1C2C94550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32) / 2;
  v5 = sub_1C2C95EC4(a2, v4);
  sub_1C2C93414(v5);
  v6 = sub_1C2C95EC4(a3, v4);
  return sub_1C2C93714(v6);
}

uint64_t CallWaveFormView.ViewModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  v1 = OBJC_IVAR____TtCV16CommunicationsUI16CallWaveFormView9ViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CallWaveFormView.ViewModel.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  v1 = OBJC_IVAR____TtCV16CommunicationsUI16CallWaveFormView9ViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C2C946FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1C2C9475C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D140) + 36);
  sub_1C2C9656C(a1, v7, type metadata accessor for FTPickerView.PickerItem);
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D148) + 36)) = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D150);
  v9 = *(*(v8 - 8) + 16);

  return v9(a3, v3, v8);
}

id sub_1C2C94840@<X0>(char a1@<W0>, char a2@<W1>, void *a3@<X2>, void *a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 16) = a5;
  *(a6 + 17) = a1 & 1;
  *(a6 + 18) = a2;
  return sub_1C2C9651C(a3, a4, a5);
}

uint64_t sub_1C2C94864@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1C2C9656C(v3, a3, type metadata accessor for ClippedImage);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D158);
  v8 = (a3 + *(result + 36));
  *v8 = a1 & 1;
  v8[1] = a2;
  return result;
}

uint64_t sub_1C2C948DC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  *(a7 + 32) = a1;
  *(a7 + 40) = a2;
  sub_1C2C72330(a3, a4, a5 & 1);
}

uint64_t sub_1C2C94940@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 + 16);
  v14 = *a1;
  v15 = v8;
  v16 = *(a1 + 32);
  v17 = *(a1 + 48);
  v18 = v14;
  v19 = v8;
  v20 = v16;
  LOBYTE(v21) = v17;
  HIBYTE(v21) = a2;
  sub_1C2C736A4(v4, a3, &qword_1EC05D160);
  v9 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D168) + 36);
  v10 = v19;
  v11 = v16;
  *v9 = v14;
  *(v9 + 16) = v10;
  *(v9 + 32) = v11;
  *(v9 + 48) = v21;
  v22[1] = v15;
  v22[2] = v16;
  v23 = v17;
  v22[0] = v14;
  v24 = a2;
  sub_1C2C736A4(a1, v13, &qword_1EC05D170);
  sub_1C2C736A4(&v18, v13, &qword_1EC05D178);
  return sub_1C2C73644(v22, &qword_1EC05D178);
}

uint64_t sub_1C2C94A70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v34 = a6;
    v35 = a7;
    v36 = v8;
    v33 = sub_1C2E734B4();
    v17 = *(v33 - 8);
    MEMORY[0x1EEE9AC00](v33);
    v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v38[0] = 0;
      v38[1] = 0xE000000000000000;
      sub_1C2E765C4();

      strcpy(v38, "View.task @ ");
      BYTE5(v38[1]) = 0;
      HIWORD(v38[1]) = -5120;
      MEMORY[0x1C6926710](a3, a4);
      MEMORY[0x1C6926710](58, 0xE100000000000000);
      v37 = a5;
      v26 = sub_1C2E76774();
      MEMORY[0x1C6926710](v26);
    }

    v27 = sub_1C2E75E74();
    MEMORY[0x1EEE9AC00](v27);
    (*(v29 + 16))(&v32 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    sub_1C2E734A4();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D190);
    (*(*(v30 - 8) + 16))(a8, v36, v30);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D198);
    return (*(v17 + 32))(a8 + *(v31 + 36), v19, v33);
  }

  else
  {
    v20 = (a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D1A0) + 36));
    v21 = *(sub_1C2E733B4() + 20);
    v22 = sub_1C2E75E74();
    (*(*(v22 - 8) + 16))(&v20[v21], a2, v22);
    *v20 = a6;
    *(v20 + 1) = a7;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D190);
    v24 = *(*(v23 - 8) + 16);

    return v24(a8, v8, v23);
  }
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C2C94EBC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C2C6E1B4(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C2C94F38(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1C2C94F80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CallWaveFormView.ViewModel()
{
  result = qword_1EC05D1B0;
  if (!qword_1EC05D1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2C95094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_1C2C95104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return v6 & 1;
}

uint64_t sub_1C2C95160@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E768B4();
  *a1 = result;
  return result;
}

BOOL sub_1C2C951A4(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1C2C951FC(uint64_t a1, id *a2)
{
  result = sub_1C2E75C44();
  *a2 = 0;
  return result;
}

uint64_t sub_1C2C95274(uint64_t a1, id *a2)
{
  v3 = sub_1C2E75C54();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C2C952F4@<X0>(uint64_t *a1@<X8>)
{
  sub_1C2E75C64();
  v2 = sub_1C2E75C24();

  *a1 = v2;
  return result;
}

void *sub_1C2C95360@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1C2C9538C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1C2C95434()
{
  v0 = sub_1C2E75C64();
  v2 = v1;
  if (v0 == sub_1C2E75C64() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C2E767A4();
  }

  return v5 & 1;
}

uint64_t sub_1C2C954BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1C2C961F4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1C2C954FC()
{
  sub_1C2C94F80(&qword_1EC05D478, type metadata accessor for UIContentSizeCategory);
  sub_1C2C94F80(&qword_1EC05D480, type metadata accessor for UIContentSizeCategory);

  return sub_1C2E76744();
}

double sub_1C2C955B8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1C2C955C4()
{
  sub_1C2C94F80(&qword_1EC05D5B8, type metadata accessor for Weight);
  sub_1C2C94F80(&qword_1EC05D5C0, type metadata accessor for Weight);
  sub_1C2C971B8();
  return sub_1C2E76744();
}

uint64_t sub_1C2C9568C()
{
  sub_1C2C94F80(&qword_1EC05D498, type metadata accessor for UIAccessibilityTraits);
  sub_1C2C94F80(&qword_1EC05D4A0, type metadata accessor for UIAccessibilityTraits);
  return sub_1C2E76744();
}

uint64_t sub_1C2C95748()
{
  sub_1C2C94F80(&qword_1EC05D5E0, type metadata accessor for AttributeName);
  sub_1C2C94F80(&qword_1EC05D5E8, type metadata accessor for AttributeName);

  return sub_1C2E76744();
}

uint64_t sub_1C2C95804()
{
  sub_1C2C94F80(&qword_1EC05D5D0, type metadata accessor for TraitKey);
  sub_1C2C94F80(&qword_1EC05D5D8, type metadata accessor for TraitKey);

  return sub_1C2E76744();
}

uint64_t sub_1C2C958C0()
{
  sub_1C2C94F80(&qword_1EC05D5F0, type metadata accessor for FeatureKey);
  sub_1C2C94F80(&qword_1EC05D5F8, type metadata accessor for FeatureKey);

  return sub_1C2E76744();
}

uint64_t sub_1C2C9597C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C2E75C24();

  *a1 = v2;
  return result;
}

uint64_t sub_1C2C959C4()
{
  sub_1C2C94F80(&qword_1EC05D488, type metadata accessor for Key);
  sub_1C2C94F80(&qword_1EC05D490, type metadata accessor for Key);

  return sub_1C2E76744();
}

uint64_t sub_1C2C95A80()
{
  v0 = sub_1C2E75C64();
  v1 = MEMORY[0x1C6926740](v0);

  return v1;
}

uint64_t sub_1C2C95ABC()
{
  sub_1C2E75C64();
  sub_1C2E75CC4();
}

uint64_t sub_1C2C95B10()
{
  sub_1C2E75C64();
  sub_1C2E76854();
  sub_1C2E75CC4();
  v0 = sub_1C2E76894();

  return v0;
}

uint64_t sub_1C2C95B8C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1C69272B0](*&v1);
}

unint64_t sub_1C2C95C30(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1C2E764E4();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D518);
      result = sub_1C2E76594();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1C2E764E4();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x1C6927010](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1C2E72DB4();
    sub_1C2C94F80(&qword_1EC05D520, MEMORY[0x1E695BF10]);
    result = sub_1C2E75B54();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1C2C94F80(&qword_1EC05D528, MEMORY[0x1E695BF10]);
      do
      {
        result = sub_1C2E75BA4();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1C2C95EC4(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    if (a2 < 0)
    {
      goto LABEL_47;
    }

    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v10 = sub_1C2E75DA4();
    *(v10 + 16) = a2;
    bzero((v10 + 32), 4 * a2);
    return v10;
  }

  v3 = result;
  v4 = *(result + 16);
  if (v4 <= a2)
  {

    return v3;
  }

  v5 = ceil(v4 / a2);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_48;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v6 = v5;
      v33 = result + 32;

      v7 = 0;
      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      v10 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v11 = v7 + v6;
        if (__OFADD__(v7, v6))
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (v4 >= v11)
        {
          v12 = v7 + v6;
        }

        else
        {
          v12 = v4;
        }

        if (v11 < v7)
        {
          goto LABEL_46;
        }

        v13 = v12 - v7;
        if (v4 == v12 - v7)
        {
        }

        else
        {
          v14 = v9;
          if (v12 != v7)
          {
            v26 = 4 * v13;
            if (v13 < 1)
            {
              v28 = v9;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D530);
              v32 = swift_allocObject();
              v27 = _swift_stdlib_malloc_size(v32);
              v28 = v32;
              v26 = 4 * v13;
              v29 = v27 - 32;
              if (v27 < 32)
              {
                v29 = v27 - 29;
              }

              v32[2] = v13;
              v32[3] = 2 * (v29 >> 2);
            }

            v30 = (v33 + 4 * v7);
            v31 = v28;
            memcpy(v28 + 4, v30, v26);
            v14 = v31;
          }
        }

        v15 = *(v14 + 16);
        if (v15)
        {
          break;
        }

        v18 = 0.0;
LABEL_26:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1C2DD1FA0(0, *(v10 + 16) + 1, 1, v10);
          v10 = result;
        }

        v25 = *(v10 + 16);
        v24 = *(v10 + 24);
        if (v25 >= v24 >> 1)
        {
          result = sub_1C2DD1FA0((v24 > 1), v25 + 1, 1, v10);
          v10 = result;
        }

        ++v8;
        *(v10 + 16) = v25 + 1;
        *(v10 + 4 * v25 + 32) = v18;
        v7 = v12;
        if (v8 == a2)
        {

          return v10;
        }
      }

      if (v15 > 7)
      {
        v16 = v15 & 0x7FFFFFFFFFFFFFF8;
        v19 = v14 + 48;
        v17 = 0.0;
        v20 = v15 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v17 = (((((((v17 + COERCE_FLOAT(*(v19 - 16))) + COERCE_FLOAT(HIDWORD(*(v19 - 16)))) + COERCE_FLOAT(*(v19 - 8))) + COERCE_FLOAT(HIDWORD(*(v19 - 16)))) + COERCE_FLOAT(*v19)) + COERCE_FLOAT(HIDWORD(*v19))) + COERCE_FLOAT(*(v19 + 8))) + COERCE_FLOAT(HIDWORD(*v19));
          v19 += 32;
          v20 -= 8;
        }

        while (v20);
        if (v15 == v16)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v16 = 0;
        v17 = 0.0;
      }

      v21 = v15 - v16;
      v22 = (v14 + 4 * v16 + 32);
      do
      {
        v23 = *v22++;
        v17 = v17 + v23;
        --v21;
      }

      while (v21);
LABEL_25:

      v18 = v17 / v15;
      goto LABEL_26;
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1C2C961F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1C2C9622C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1C2E764E4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D4A8);
      v3 = sub_1C2E76594();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1C2E764E4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1C6927010](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1C2E76224();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1C2C6E1B4(0, &qword_1EC05D4B0);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1C2E76234();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1C2E76224();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1C2C6E1B4(0, &qword_1EC05D4B0);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1C2E76234();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

id sub_1C2C9651C(id result, void *a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if (v3 <= 2)
  {
    if (a3 >> 5)
    {
      if (v3 != 1 && v3 != 2)
      {
        return result;
      }
    }
  }

  switch(v3)
  {
    case 3u:

    case 4u:
      return sub_1C2C70B1C(result, a2, a3 & 0x1F);
    case 5u:
  }

  return result;
}

uint64_t sub_1C2C9656C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C2C965D4()
{
  result = qword_1EC05D180;
  if (!qword_1EC05D180)
  {
    sub_1C2E734B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05D180);
  }

  return result;
}

uint64_t sub_1C2C9663C()
{
  result = sub_1C2E71AA4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy80_4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C2C9676C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2C9678C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
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

  *(result + 80) = v3;
  return result;
}

uint64_t sub_1C2C96878(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2C96898(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1C2C96938(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2C96958(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_1C2C96D70()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_1C2C96DAC()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

unint64_t sub_1C2C971B8()
{
  result = qword_1EC05D5C8;
  if (!qword_1EC05D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05D5C8);
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

uint64_t sub_1C2C97284(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1C2C972CC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C2C9733C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  if (v6)
  {
    if (v6 == 1)
    {
      sub_1C2C97464(&v5, v4);
      result = sub_1C2E75064();
    }

    else
    {
      sub_1C2C97464(&v5, v4);
      result = sub_1C2E75034();
    }
  }

  else
  {
    sub_1C2C97464(&v5, v4);
    result = sub_1C2E750D4();
  }

  *a2 = result;
  return result;
}

unint64_t sub_1C2C974C0()
{
  result = qword_1EC05D720;
  if (!qword_1EC05D720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05D728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05D720);
  }

  return result;
}

double AggregateFavoriteTile.init(width:entries:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = swift_getKeyPath();
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 48) = a3;
  *(a2 + 56) = a1;
  return result;
}

uint64_t sub_1C2C97584()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1C2C975B4()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_1C2C975EC()
{
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1C2E71684();
  v4 = v3;

  qword_1EC05D730 = v2;
  *algn_1EC05D738 = v4;
  xmmword_1EC05D740 = 0uLL;
  qword_1EC05D750 = 0;
  unk_1EC05D758 = 1;
}

uint64_t AggregateFavoriteTile.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v20 = *v1;
  v21 = v3;
  v4 = v1[3];
  v22 = v1[2];
  v23 = v4;
  v5 = v4;
  if (qword_1EC05CF10 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC05D730;
  v6 = *algn_1EC05D738;
  v19[3] = &type metadata for AggregateFavoriteTile.TileState;
  v19[4] = &off_1F4298330;
  v8 = swift_allocObject();
  v19[0] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v17 = *&qword_1EC05D750;
  *(v8 + 32) = xmmword_1EC05D740;
  *(v8 + 48) = v17;
  *(a1 + 48) = swift_getKeyPath();
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *a1 = v5;
  sub_1C2C6E3A4(v19, a1 + 8);
  v9 = swift_allocObject();
  v10 = v21;
  v9[1] = v20;
  v9[2] = v10;
  v11 = v23;
  v9[3] = v22;
  v9[4] = v11;

  sub_1C2C721E0(&v20, v18);
  LOBYTE(v6) = sub_1C2E74464();
  sub_1C2E73034();
  v18[0] = 0;
  *(a1 + 96) = sub_1C2C980E8;
  *(a1 + 104) = v9;
  *(a1 + 112) = v6;
  *(a1 + 120) = v12;
  *(a1 + 128) = v13;
  *(a1 + 136) = v14;
  *(a1 + 144) = v15;
  *(a1 + 152) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1C2C97854@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v41 = a1;
  v46 = a2;
  v42 = sub_1C2E74054();
  MEMORY[0x1EEE9AC00](v42);
  v39[1] = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D770);
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v40 = v39 - v6;
  v7 = sub_1C2E75564();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_1C2E75574();
  v11 = *(v47 - 8);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v47);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 1)
  {
    v17 = 12.0;
  }

  else
  {
    v17 = 6.0;
  }

  sub_1C2E732C4();
  v19 = (v18 - v17) * 0.5;
  sub_1C2E732C4();
  v21 = (v20 - v17) * 0.5;
  *v10 = v19;
  (*(v8 + 104))(v10, *MEMORY[0x1E697D728], v7);
  sub_1C2E75584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D778);
  v22 = *(v11 + 72);
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C2E7A110;
  v25 = v24 + v23;
  v26 = *(v11 + 16);
  v27 = v47;
  v26(v25, v14, v47);
  v26(v25 + v22, v14, v27);
  v48 = v41;
  v49 = v19;
  v50 = v21;
  sub_1C2E73DC4();
  v51 = 0;
  sub_1C2C98260();
  sub_1C2E76924();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D780);
  sub_1C2C982B8();
  v28 = v40;
  sub_1C2E75804();
  v29 = sub_1C2E73DC4();
  v30 = v46;
  *v46 = v29;
  v30[1] = 0;
  *(v30 + 16) = 0;
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D7A8) + 44);
  v33 = v43;
  v32 = v44;
  v34 = *(v44 + 16);
  v35 = v45;
  v34(v43, v28, v45);
  v34(v31, v33, v35);
  v36 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D7B0) + 48)];
  *v36 = 0;
  v36[8] = 0;
  v37 = *(v32 + 8);
  v37(v33, v35);
  (*(v12 + 8))(v14, v47);
  return (v37)(v28, v35);
}

uint64_t sub_1C2C97D58(uint64_t a1, double a2, double a3)
{
  v11 = *(a1 + 56);
  v12 = v11;
  swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  v8 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v8;
  *(v6 + 80) = a2;
  *(v6 + 88) = a3;
  sub_1C2C72170(&v12, v10);
  sub_1C2C721E0(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D788);
  sub_1C2C94F38(&qword_1EC05B268, &qword_1EC05D7B8);
  sub_1C2C98398(&qword_1EC05B6F8, &qword_1EC05D788, &unk_1C2E7A2D8, sub_1C2C98368);
  return sub_1C2E75434();
}

double sub_1C2C97EE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  v9 = v7;
  sub_1C2E75744();
  sub_1C2E73274();
  v10 = swift_getKeyPath();
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom] == 1;

  v13 = qword_1C2E7A120[v12];
  v14 = swift_getKeyPath();
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  *(a2 + 96) = v18;
  *a2 = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = v9;
  *(a2 + 56) = 0x4024000000000000;
  *(a2 + 112) = v10;
  *(a2 + 120) = v13;
  result = a4 / a3;
  *(a2 + 128) = v14;
  *(a2 + 136) = a4 / a3;
  return result;
}

uint64_t View.pushToTop()()
{
  sub_1C2E73DC4();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  return sub_1C2E752D4();
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C2C98104(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2C9814C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C2C981B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C2C981F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C2C98260()
{
  result = qword_1EC05B508;
  if (!qword_1EC05B508)
  {
    sub_1C2E74054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B508);
  }

  return result;
}

unint64_t sub_1C2C982B8()
{
  result = qword_1EC05B2F0;
  if (!qword_1EC05B2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05D780);
    sub_1C2C98398(&qword_1EC05B6F8, &qword_1EC05D788, &unk_1C2E7A2D8, sub_1C2C98368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B2F0);
  }

  return result;
}

uint64_t sub_1C2C98398(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1C2C94F38(&qword_1EC05B448, &qword_1EC05D7A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C2C98448()
{
  result = qword_1EC05C2D8;
  if (!qword_1EC05C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C2D8);
  }

  return result;
}

uint64_t objectdestroy_2Tm(uint64_t a1)
{
  sub_1C2C7DF38();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1C2C98504()
{
  swift_getKeyPath();
  sub_1C2C9A134(&qword_1EC05D7C8, type metadata accessor for CountdownView.ViewModel);
  sub_1C2E71A64();

  return *(v0 + 16);
}

uint64_t sub_1C2C985A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2C9A134(&qword_1EC05D7C8, type metadata accessor for CountdownView.ViewModel);
  sub_1C2E71A64();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C2C98674(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2C9A134(&qword_1EC05D7C8, type metadata accessor for CountdownView.ViewModel);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2C98778()
{
  swift_getKeyPath();
  sub_1C2C9A134(&qword_1EC05D7C8, type metadata accessor for CountdownView.ViewModel);
  sub_1C2E71A64();

  v1 = *(v0 + 32);
  sub_1C2C6EE50(v1);
  return v1;
}

uint64_t sub_1C2C9882C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2C9A134(&qword_1EC05D7C8, type metadata accessor for CountdownView.ViewModel);
  sub_1C2E71A64();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C2C9A43C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C2C6EE50(v4);
}

uint64_t sub_1C2C98918(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C2C9A404;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C2C6EE50(v1);
  sub_1C2C9A134(&qword_1EC05D7C8, type metadata accessor for CountdownView.ViewModel);
  sub_1C2E71A54();
  sub_1C2C71668(v4);
}

uint64_t sub_1C2C98A74@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2C9A134(&qword_1EC05D7C8, type metadata accessor for CountdownView.ViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return sub_1C2C736A4(v1 + 48, a1, &unk_1EC0626B0);
}

uint64_t sub_1C2C98B44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2C9A134(&qword_1EC05D7C8, type metadata accessor for CountdownView.ViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return sub_1C2C736A4(v3 + 48, a2, &unk_1EC0626B0);
}

uint64_t sub_1C2C98C14(uint64_t a1)
{
  sub_1C2C736A4(a1, v2, &unk_1EC0626B0);
  swift_getKeyPath();
  sub_1C2C9A134(&qword_1EC05D7C8, type metadata accessor for CountdownView.ViewModel);
  sub_1C2E71A54();

  return sub_1C2C73644(v2, &unk_1EC0626B0);
}

uint64_t sub_1C2C98D1C(uint64_t a1, uint64_t a2)
{
  sub_1C2C736A4(a2, v4, &unk_1EC0626B0);
  swift_beginAccess();
  sub_1C2C9A468(v4, a1 + 48);
  return swift_endAccess();
}

uint64_t CountdownView.ViewModel.__allocating_init(timeInterval:total:audioFileURL:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  CountdownView.ViewModel.init(timeInterval:total:audioFileURL:)(a1, a2, a3);
  return v6;
}

uint64_t CountdownView.ViewModel.init(timeInterval:total:audioFileURL:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20[-v9];
  v11 = sub_1C2E71784();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20[-v16];
  *(v4 + 80) = 0;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 32) = 0u;
  sub_1C2E71A94();
  *(v4 + 16) = a1;
  *(v4 + 24) = a1;
  *(v4 + 88) = a3;
  sub_1C2C736A4(a2, v10, &unk_1EC061C20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1C2C73644(a2, &unk_1EC061C20);
    sub_1C2C73644(v10, &unk_1EC061C20);
    v18 = 0;
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    (*(v12 + 16))(v15, v17, v11);
    type metadata accessor for CountdownTickAudioPlayer();
    swift_allocObject();
    v18 = sub_1C2DC457C(v15);
    sub_1C2C73644(a2, &unk_1EC061C20);
    (*(v12 + 8))(v17, v11);
  }

  *(v4 + 96) = v18;
  return v4;
}

uint64_t sub_1C2C9908C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0626D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0625C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D7C0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = v31 - v8;
  if (qword_1EC05CFE0 != -1)
  {
    swift_once();
  }

  v9 = sub_1C2E72B44();
  __swift_project_value_buffer(v9, qword_1EC075B70);
  v10 = sub_1C2E72B24();
  v11 = sub_1C2E75FE4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C2C6B000, v10, v11, "starting countdown", v12, 2u);
    MEMORY[0x1C6927DF0](v12, -1, -1);
  }

  swift_getKeyPath();
  v13 = OBJC_IVAR____TtCV16CommunicationsUI13CountdownView9ViewModel___observationRegistrar;
  v40[0] = v1;
  v14 = sub_1C2C9A134(&qword_1EC05D7C8, type metadata accessor for CountdownView.ViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  sub_1C2C736A4(v1 + 48, &v37, &unk_1EC0626B0);
  if (*(&v38 + 1))
  {
    sub_1C2C716EC(&v37, v40);
    __swift_project_boxed_opaque_existential_1(v40, v41);
    sub_1C2E72D84();
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v31[-2] = v1;
    v31[-1] = &v37;
    v36 = v1;
    sub_1C2E71A54();

    sub_1C2C73644(&v37, &unk_1EC0626B0);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_1C2C73644(&v37, &unk_1EC0626B0);
  }

  v16 = *(v1 + 24);
  v17 = *(v1 + 16) == v16;
  v31[2] = v14;
  v31[1] = v13;
  if (!v17)
  {
    v18 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v18);
    v31[-2] = v1;
    v31[-1] = v16;
    v40[0] = v1;
    sub_1C2E71A54();
  }

  sub_1C2C6E1B4(0, &qword_1EC05D7D0);
  v19 = [objc_opt_self() mainRunLoop];
  v20 = sub_1C2E763E4();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = sub_1C2E761E4();

  sub_1C2C73644(v6, &qword_1EC0625C0);
  v40[0] = v21;
  sub_1C2E761D4();
  sub_1C2C9A134(&qword_1EC05D7D8, MEMORY[0x1E6969F70]);
  v22 = sub_1C2E72E24();

  v40[0] = v22;
  sub_1C2C6E1B4(0, &qword_1EDDCD9E0);
  v23 = sub_1C2E76084();
  *&v37 = v23;
  v24 = sub_1C2E76054();
  v25 = v32;
  (*(*(v24 - 8) + 56))(v32, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D7E0);
  sub_1C2C94F38(&qword_1EC05D7E8, &qword_1EC05D7E0);
  sub_1C2C9A17C();
  v26 = v33;
  sub_1C2E72ED4();
  sub_1C2C73644(v25, &qword_1EC0626D0);

  swift_allocObject();
  swift_weakInit();
  sub_1C2C94F38(&qword_1EC05D7F0, &qword_1EC05D7C0);
  v27 = v35;
  v28 = sub_1C2E72F14();

  (*(v34 + 8))(v26, v27);
  v41 = sub_1C2E72DB4();
  v42 = MEMORY[0x1E695BF08];
  v40[0] = v28;
  v29 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v29);
  v31[-2] = v1;
  v31[-1] = v40;
  *&v37 = v1;

  sub_1C2E71A54();

  return sub_1C2C73644(v40, &unk_1EC0626B0);
}

uint64_t sub_1C2C9989C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2C998F4();
  }

  return result;
}

uint64_t sub_1C2C998F4()
{
  swift_getKeyPath();
  sub_1C2C9A134(&qword_1EC05D7C8, type metadata accessor for CountdownView.ViewModel);
  sub_1C2E71A64();

  v2 = *(v0 + 16);
  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
  }

  else if (v3 < 0)
  {
    return sub_1C2C99B90(1);
  }

  else
  {
    v4 = *(v0 + 96);
    if (v4)
    {
      v5 = *(v4 + 16);

      if (([v5 isPlaying] & 1) == 0)
      {
        v6 = *(v4 + 16);
        [v6 play];
      }
    }

    if (*(v0 + 16) != v3)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C2E71A54();
    }
  }

  return result;
}

uint64_t sub_1C2C99AA0()
{
  if (qword_1EC05CFE0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C2E72B44();
  __swift_project_value_buffer(v0, qword_1EC075B70);
  v1 = sub_1C2E72B24();
  v2 = sub_1C2E75FE4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C2C6B000, v1, v2, "pausing countdown", v3, 2u);
    MEMORY[0x1C6927DF0](v3, -1, -1);
  }

  return sub_1C2C99B90(0);
}

uint64_t sub_1C2C99B90(char a1)
{
  v3 = v1[12];
  if (v3)
  {
    [*(v3 + 16) stop];
  }

  swift_getKeyPath();
  v8[0] = v1;
  sub_1C2C9A134(&qword_1EC05D7C8, type metadata accessor for CountdownView.ViewModel);
  sub_1C2E71A64();

  v4 = v1[4];
  if (v4)
  {

    v4(a1 & 1);
    sub_1C2C71668(v4);
  }

  swift_getKeyPath();
  v8[0] = v1;
  sub_1C2E71A64();

  swift_beginAccess();
  sub_1C2C736A4((v1 + 6), v8, &unk_1EC0626B0);
  if (v8[3])
  {
    sub_1C2C6E3A4(v8, v7);
    sub_1C2C73644(v8, &unk_1EC0626B0);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_1C2E72D84();
    result = __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    result = sub_1C2C73644(v8, &unk_1EC0626B0);
  }

  if (v1[2] != v1[3])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[0] = v1;
    sub_1C2E71A54();
  }

  return result;
}

uint64_t CountdownView.ViewModel.deinit()
{
  sub_1C2C71668(*(v0 + 32));
  sub_1C2C73644(v0 + 48, &unk_1EC0626B0);

  v1 = OBJC_IVAR____TtCV16CommunicationsUI13CountdownView9ViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CountdownView.ViewModel.__deallocating_deinit()
{
  sub_1C2C71668(v0[4]);
  sub_1C2C73644((v0 + 6), &unk_1EC0626B0);

  v1 = OBJC_IVAR____TtCV16CommunicationsUI13CountdownView9ViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t CountdownView.onCountdownStopped(_:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v10 = v1[5];
  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D7F8);
  sub_1C2E75184();
  swift_getKeyPath();
  sub_1C2C9A134(&qword_1EC05D7C8, type metadata accessor for CountdownView.ViewModel);
  sub_1C2E71A54();

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v10;
  a1[6] = v8;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for CountdownView.ViewModel()
{
  result = qword_1EC05C5E0;
  if (!qword_1EC05C5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2C9A134(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C2C9A17C()
{
  result = qword_1EC05B250;
  if (!qword_1EC05B250)
  {
    sub_1C2C6E1B4(255, &qword_1EDDCD9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B250);
  }

  return result;
}

uint64_t sub_1C2C9A208(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1C2C9A274()
{
  result = sub_1C2E71AA4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C2C9A3B8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 32);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  sub_1C2C6EE50(v1);
  return sub_1C2C71668(v4);
}

uint64_t sub_1C2C9A404(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1C2C9A468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC0626B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2C9A538()
{
  swift_getKeyPath();
  sub_1C2C9DCB4(&qword_1EC05D840, type metadata accessor for AudioCallAudioControlViewModel);
  sub_1C2E71A64();
}

uint64_t sub_1C2C9A5DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2C9DCB4(&qword_1EC05D840, type metadata accessor for AudioCallAudioControlViewModel);
  sub_1C2E71A64();

  *a2 = *(v3 + 16);
}

uint64_t sub_1C2C9A688(uint64_t a1)
{

  v4 = sub_1C2CF72CC(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2C9DCB4(&qword_1EC05D840, type metadata accessor for AudioCallAudioControlViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2C9A7DC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C2C9DCB4(&qword_1EC05D840, type metadata accessor for AudioCallAudioControlViewModel);
  sub_1C2E71A64();

  v3 = OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel__pickedRoute;
  swift_beginAccess();
  return sub_1C2C9DFBC(v5 + v3, a1);
}

uint64_t sub_1C2C9A8A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2C9DCB4(&qword_1EC05D840, type metadata accessor for AudioCallAudioControlViewModel);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel__pickedRoute;
  swift_beginAccess();
  return sub_1C2C9DFBC(v3 + v4, a2);
}

uint64_t sub_1C2C9A96C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C2C9DFBC(a1, &v6 - v3);
  return sub_1C2C9AA00(v4);
}

uint64_t sub_1C2C9AA00(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel__pickedRoute;
  swift_beginAccess();
  sub_1C2C9DFBC(v1 + v6, v5);
  v7 = sub_1C2C9D954(v5, a1);
  sub_1C2C73644(v5, &unk_1EC062D10);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1C2C9DCB4(&qword_1EC05D840, type metadata accessor for AudioCallAudioControlViewModel);
    sub_1C2E71A54();
  }

  else
  {
    swift_beginAccess();
    sub_1C2C9E074(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1C2C73644(a1, &unk_1EC062D10);
}

uint64_t sub_1C2C9ABE4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel__pickedRoute;
  swift_beginAccess();
  sub_1C2C9E074(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1C2C9AC50()
{
  swift_getKeyPath();
  sub_1C2C9DCB4(&qword_1EC05D840, type metadata accessor for AudioCallAudioControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2C9AD10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2C9DCB4(&qword_1EC05D840, type metadata accessor for AudioCallAudioControlViewModel);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel__cancellables;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C2C9ADD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel__cancellables;
  swift_beginAccess();

  v5 = sub_1C2CD61E4(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2C9DCB4(&qword_1EC05D840, type metadata accessor for AudioCallAudioControlViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2C9AF28(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel__cancellables;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*AudioCallAudioControlViewModel.buttonAction.getter())(uint64_t *a1)
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2C9B9F8;
}

uint64_t sub_1C2C9B000(uint64_t *a1)
{
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D860);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v69 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D10);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v77 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v69 - v6;
  v7 = sub_1C2E71EA4();
  v94 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v76 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v78 = &v69 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v72 = &v69 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v69 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v69 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v87 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v88 = &v69 - v22;
  v23 = a1[1];
  v92 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v25 = result;
  v70 = v16;
  v26 = (result + OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel_audioRouteService);
  v27 = v26[3];
  v71 = v26;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v28 = sub_1C2E725E4();
  swift_getKeyPath();
  v29 = OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel___observationRegistrar;
  v91 = v25;
  if ((v28 & 1) == 0)
  {
    v96 = v25;
    v37 = sub_1C2C9DCB4(&qword_1EC05D840, type metadata accessor for AudioCallAudioControlViewModel);
    v75 = v29;
    v92 = v37;
    sub_1C2E71A64();

    v38 = *(v25 + 16);
    v80 = *(v38 + 2);
    if (v80)
    {
      v39 = OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel__pickedRoute;
      v40 = v94;
      v85 = &v38[(*(v94 + 80) + 32) & ~*(v94 + 80)];

      v86 = v39;
      result = swift_beginAccess();
      v41 = 0;
      v83 = v40 + 56;
      v84 = v40 + 16;
      v88 = (v40 + 8);
      v79 = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v74 = (v40 + 32);
      v69 = (v40 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v42 = v78;
      v43 = v75;
      v81 = v7;
      v82 = v40 + 48;
      v87 = v38;
      while (1)
      {
        if (v41 >= *(v38 + 2))
        {
          goto LABEL_34;
        }

        v44 = v94;
        v45 = *(v94 + 16);
        v45(v42, &v85[*(v94 + 72) * v41], v7);
        v46 = v93;
        v45(v93, v42, v7);
        (*(v44 + 56))(v46, 0, 1, v7);
        swift_getKeyPath();
        v47 = v91;
        v95 = v91;
        v48 = v43;
        sub_1C2E71A64();

        v49 = *(v90 + 48);
        v50 = v46;
        v51 = v89;
        sub_1C2C9DFBC(v50, v89);
        sub_1C2C9DFBC(v47 + v86, v51 + v49);
        v52 = *(v44 + 48);
        v53 = v7;
        if (v52(v51, 1, v7) == 1)
        {
          sub_1C2C73644(v93, &unk_1EC062D10);
          if (v52(v51 + v49, 1, v7) != 1)
          {
            goto LABEL_30;
          }

          sub_1C2C73644(v51, &unk_1EC062D10);
          v38 = v87;
          v54 = *v88;
          v43 = v48;
        }

        else
        {
          v55 = v51;
          v56 = v77;
          sub_1C2C9DFBC(v51, v77);
          if (v52(v51 + v49, 1, v53) == 1)
          {
            sub_1C2C73644(v93, &unk_1EC062D10);
            (*v88)(v56, v53);
LABEL_30:
            sub_1C2C73644(v51, &unk_1EC05D860);

            v61 = *v74;
LABEL_31:
            v66 = v72;
            v67 = v81;
            v61(v72, v42, v81);
            v68 = v70;
            v61(v70, v66, v67);
            __swift_project_boxed_opaque_existential_1(v71, v71[3]);
            sub_1C2E725F4();

            return (*v88)(v68, v67);
          }

          v57 = v76;
          v73 = *v74;
          v73(v76, v51 + v49, v53);
          sub_1C2C9DCB4(&qword_1EC05BB70, MEMORY[0x1E6995D28]);
          v58 = sub_1C2E75BA4();
          v59 = v56;
          v60 = v93;
          v54 = *v88;
          (*v88)(v57, v53);
          sub_1C2C73644(v60, &unk_1EC062D10);
          v54(v59, v53);
          sub_1C2C73644(v55, &unk_1EC062D10);
          if ((v58 & 1) == 0)
          {

            v42 = v78;
            v61 = v73;
            goto LABEL_31;
          }

          v42 = v78;
          v43 = v75;
          v38 = v87;
        }

        ++v41;
        v7 = v81;
        result = (v54)(v42, v81);
        if (v80 == v41)
        {
LABEL_25:
        }
      }
    }
  }

  v96 = v25;
  sub_1C2C9DCB4(&qword_1EC05D840, type metadata accessor for AudioCallAudioControlViewModel);
  sub_1C2E71A64();

  v30 = *(v25 + 16);
  if (!*(v30 + 16))
  {
  }

  v31 = *(v30 + 16);
  v93 = (v30 + ((*(v94 + 80) + 32) & ~*(v94 + 80)));
  v32 = (v94 + 8);

  v33 = 0;
  while (v33 < *(v30 + 16))
  {
    (*(v94 + 16))(v19, &v93[*(v94 + 72) * v33], v7);
    v34 = sub_1C2E71E74();
    if (v23)
    {
      if (v34 == v92 && v23 == v35)
      {

LABEL_28:

        v63 = v94 + 32;
        v62 = *(v94 + 32);
        v64 = v87;
        v62(v87, v19, v7);
        v65 = v88;
        v62(v88, v64, v7);
        __swift_project_boxed_opaque_existential_1(v71, v71[3]);
        sub_1C2E725F4();

        return (*(v63 - 24))(v65, v7);
      }

      v36 = sub_1C2E767A4();

      if (v36)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    ++v33;
    result = (*v32)(v19, v7);
    if (v31 == v33)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t AudioCallAudioControlViewModel.__allocating_init(audioRouteService:)(void *a1)
{
  v2 = swift_allocObject();
  AudioCallAudioControlViewModel.init(audioRouteService:)(a1);
  return v2;
}

uint64_t AudioCallAudioControlViewModel.init(audioRouteService:)(void *a1)
{
  v2 = v1;
  v64 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062CE0);
  v5 = *(v4 - 8);
  v60 = v4;
  v61 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v58 = v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D800);
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0626D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D808);
  v13 = *(v12 - 8);
  v54 = v12;
  v55 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v51 = v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062CF0);
  v16 = *(v15 - 8);
  v56 = v15;
  v57 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v52 = v47 - v17;
  v18 = sub_1C2E757E4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v47 - v23;
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v25 = OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel__pickedRoute;
  v26 = sub_1C2E71EA4();
  (*(*(v26 - 8) + 56))(v2 + v25, 1, 1, v26);
  *(v2 + OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel__cancellables) = MEMORY[0x1E69E7CD0];
  sub_1C2E71A94();
  sub_1C2C6E3A4(a1, v2 + OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel_audioRouteService);
  v67 = xmmword_1C2E7A520;
  v68 = 1;
  v27 = sub_1C2D386D8(&v67);
  sub_1C2C77608(v67, *(&v67 + 1), v68);
  v28 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v29 = sub_1C2E74534();
  (*(*(v29 - 8) + 56))(v24, 1, 1, v29);
  v30 = sub_1C2E745C4();
  sub_1C2C73644(v24, &qword_1EC05D810);
  (*(v19 + 104))(v21, *MEMORY[0x1E6981DF0], v18);
  type metadata accessor for ControlTextConfiguration();
  v31 = swift_allocObject();
  v32 = v31 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__lineLimit;
  *v32 = 0;
  v32[8] = 1;
  sub_1C2E71A94();
  v31[2] = 0x72656B61657053;
  v31[3] = 0xE700000000000000;
  v31[4] = v28;
  v31[5] = v30;
  (*(v19 + 32))(v31 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__blendMode, v21, v18);
  *(v31 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__wrapText) = 0;
  *v32 = 0;
  v32[8] = 1;
  *(v31 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__alignment) = 0;
  type metadata accessor for StackedControlButtonConfiguration();
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  sub_1C2E71A94();
  *(v33 + 16) = v27;
  swift_getKeyPath();
  v65 = v33;
  v66 = v31;
  *&v67 = v33;
  sub_1C2C9DCB4(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);

  sub_1C2E71A54();

  *(v2 + OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel_configuration) = v33;
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  *&v67 = sub_1C2E725D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D00);
  sub_1C2C94F38(&unk_1EC05BAD0, &unk_1EC062D00);
  sub_1C2C9DD48(&qword_1EC05B290, &qword_1EC05D838);
  v34 = v51;
  sub_1C2E72F04();

  v47[0] = sub_1C2C9DC60();
  v35 = sub_1C2E76084();
  *&v67 = v35;
  v49 = sub_1C2E76054();
  v36 = *(v49 - 8);
  v48 = *(v36 + 56);
  v50 = v36 + 56;
  v37 = v53;
  v48(v53, 1, 1, v49);
  v47[2] = MEMORY[0x1E695BD38];
  sub_1C2C94F38(&qword_1EC05BB10, &qword_1EC05D808);
  v47[1] = sub_1C2C9DCB4(&qword_1EC05B250, sub_1C2C9DC60);
  v38 = v52;
  v39 = v54;
  sub_1C2E72ED4();
  sub_1C2C73644(v37, &qword_1EC0626D0);

  (*(v55 + 8))(v34, v39);
  swift_allocObject();
  swift_weakInit();
  v55 = MEMORY[0x1E695BE98];
  sub_1C2C94F38(&unk_1EC05BAF0, &unk_1EC062CF0);

  v40 = v56;
  sub_1C2E72F14();

  (*(v57 + 8))(v38, v40);
  swift_getKeyPath();
  *&v67 = v2;
  sub_1C2C9DCB4(&qword_1EC05D840, type metadata accessor for AudioCallAudioControlViewModel);
  sub_1C2E71A64();

  *&v67 = v2;
  swift_getKeyPath();
  sub_1C2E71A84();

  v57 = OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel__cancellables;
  swift_beginAccess();
  sub_1C2E72D94();
  swift_endAccess();

  *&v67 = v2;
  swift_getKeyPath();
  sub_1C2E71A74();

  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  *&v67 = sub_1C2E725C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D848);
  sub_1C2C94F38(&qword_1EC05BAE0, &qword_1EC05D848);
  sub_1C2C9DD48(&qword_1EC05BB58, &unk_1EC062D10);
  v41 = v58;
  sub_1C2E72F04();

  v42 = sub_1C2E76084();
  *&v67 = v42;
  v48(v37, 1, 1, v49);
  sub_1C2C94F38(&qword_1EC05BB18, &unk_1EC062CE0);
  v43 = v59;
  v44 = v60;
  sub_1C2E72ED4();
  sub_1C2C73644(v37, &qword_1EC0626D0);

  (*(v61 + 8))(v41, v44);
  swift_allocObject();
  swift_weakInit();

  sub_1C2C94F38(&unk_1EC05BB00, &qword_1EC05D800);
  v45 = v62;
  sub_1C2E72F14();

  (*(v63 + 8))(v43, v45);
  swift_getKeyPath();
  *&v67 = v2;
  sub_1C2E71A64();

  *&v67 = v2;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  sub_1C2E72D94();
  swift_endAccess();

  *&v67 = v2;
  swift_getKeyPath();
  sub_1C2E71A74();

  __swift_destroy_boxed_opaque_existential_1(v64);
  return v2;
}

uint64_t sub_1C2C9C76C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1C2C9A688(v0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2C9C80C();
  }

  return result;
}

uint64_t sub_1C2C9C80C()
{
  v1 = v0;
  v2 = sub_1C2E71EA4();
  v46 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v42 - v5;
  v6 = sub_1C2E757E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - v11;
  v13 = (v0 + OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel_audioRouteService);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel_audioRouteService), *(v0 + OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel_audioRouteService + 24));
  if (sub_1C2E725E4())
  {
    v14 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel_configuration);
    v43 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
    v15 = sub_1C2E74534();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = sub_1C2E745C4();
    sub_1C2C73644(v12, &qword_1EC05D810);
    (*(v7 + 104))(v9, *MEMORY[0x1E6981DF0], v6);
    type metadata accessor for ControlTextConfiguration();
    v17 = swift_allocObject();
    v18 = v2;
    v19 = v17 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__lineLimit;
    *v19 = 0;
    v19[8] = 1;
    sub_1C2E71A94();
    v17[2] = 0x6F69647541;
    v17[3] = 0xE500000000000000;
    v17[4] = v43;
    v17[5] = v16;
    (*(v7 + 32))(v17 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__blendMode, v9, v6);
    *(v17 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__wrapText) = 0;
    *v19 = 0;
    v19[8] = 1;
    v2 = v18;
    *(v17 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__alignment) = 0;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v42 - 2) = v14;
    *(&v42 - 1) = v17;
    *&v47 = v14;
    sub_1C2C9DCB4(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
    sub_1C2E71A54();
  }

  v21 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel_configuration);
  swift_getKeyPath();
  *&v47 = v21;
  sub_1C2C9DCB4(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);

  if (sub_1C2E725E4())
  {
    swift_getKeyPath();
    *&v47 = v1;
    sub_1C2C9DCB4(&qword_1EC05D840, type metadata accessor for AudioCallAudioControlViewModel);
    sub_1C2E71A64();

    v23 = sub_1C2C9D390(v22);

    swift_getKeyPath();
    *&v47 = v1;
    sub_1C2E71A64();

    v24 = OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel__pickedRoute;
    swift_beginAccess();
    v25 = v1 + v24;
    v26 = v45;
    sub_1C2C9DFBC(v25, v45);
    v27 = v46;
    if ((*(v46 + 48))(v26, 1, v2))
    {
      sub_1C2C73644(v26, &unk_1EC062D10);
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v36 = v44;
      (*(v27 + 16))(v44, v26, v2);
      sub_1C2C73644(v26, &unk_1EC062D10);
      v28 = sub_1C2E71E74();
      v45 = v2;
      v29 = v37;
      v30 = sub_1C2E71E94();
      v31 = v38;
      v39 = sub_1C2E71E64();
      if (v40)
      {
        v32 = v39;
      }

      else
      {
        v32 = 0xD000000000000013;
      }

      if (v40)
      {
        v33 = v40;
      }

      else
      {
        v33 = 0x80000001C2E949D0;
      }

      (*(v27 + 8))(v36, v45);
      sub_1C2C9E060(0, 0, 0xFFu);
      v34 = 1;
    }

    v35 = v34 | 0x100;
  }

  else
  {
    v23 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v35 = -256;
  }

  *&v47 = v23;
  *(&v47 + 1) = v28;
  v48 = v29;
  v49 = v30;
  v50 = v31;
  v51 = v32;
  v52 = v33;
  v53 = v35;
  sub_1C2D7E988(&v47);
}

uint64_t sub_1C2C9CF3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6[-v3];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C2C9DFBC(a1, v4);
    sub_1C2C9AA00(v4);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2C9D030();
  }

  return result;
}

uint64_t sub_1C2C9D030()
{
  v1 = v0;
  v2 = type metadata accessor for ControlButtonElement(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_1C2E71EA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v22 = v0;
  sub_1C2C9DCB4(&qword_1EC05D840, type metadata accessor for AudioCallAudioControlViewModel);
  sub_1C2E71A64();

  v12 = OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel__pickedRoute;
  swift_beginAccess();
  sub_1C2C9DFBC(v1 + v12, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C2C73644(v7, &unk_1EC062D10);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v13 = sub_1C2E71E64();
    if (v14)
    {
      v15 = v14;
      v16 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel_configuration);
      v20 = v13;
      swift_getKeyPath();
      v21 = v16;
      sub_1C2C9DCB4(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
      sub_1C2E71A64();

      swift_beginAccess();
      *v4 = v20;
      *(v4 + 1) = v15;
      v4[16] = 1;
      swift_storeEnumTagMultiPayload();

      sub_1C2D7DE6C(v4);

      v17 = sub_1C2E71E54();
      sub_1C2CFB7B4((v17 & 1) == 0);
    }

    (*(v9 + 8))(v11, v8);
  }

  return sub_1C2C9C80C();
}

uint64_t sub_1C2C9D390(uint64_t a1)
{
  v30 = sub_1C2E71EA4();
  v2 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1C2CA4B54(0, v5, 0);
    v6 = v34;
    v8 = *(v2 + 16);
    v7 = v2 + 16;
    v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v27 = 0x80000001C2E949D0;
    v28 = v8;
    v10 = *(v7 + 56);
    v25 = (v7 - 8);
    v26 = v10;
    v29 = v7;
    do
    {
      v11 = v30;
      v28(v4, v9, v30);
      v12 = sub_1C2E71E74();
      v32 = v13;
      v33 = v12;
      v31 = sub_1C2E71E94();
      v15 = v14;
      v16 = sub_1C2E71E64();
      if (v17)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xD000000000000013;
      }

      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v27;
      }

      (*v25)(v4, v11);
      sub_1C2C9E060(0, 0, 0xFFu);
      v34 = v6;
      v21 = *(v6 + 16);
      v20 = *(v6 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1C2CA4B54((v20 > 1), v21 + 1, 1);
        v6 = v34;
      }

      *(v6 + 16) = v21 + 1;
      v22 = v6 + 56 * v21;
      v23 = v32;
      *(v22 + 32) = v33;
      *(v22 + 40) = v23;
      *(v22 + 48) = v31;
      *(v22 + 56) = v15;
      *(v22 + 64) = v18;
      *(v22 + 72) = v19;
      *(v22 + 80) = 1;
      v9 += v26;
      --v5;
    }

    while (v5);
  }

  return v6;
}

uint64_t AudioCallAudioControlViewModel.deinit()
{

  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel__pickedRoute, &unk_1EC062D10);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel_audioRouteService);

  v1 = OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AudioCallAudioControlViewModel.__deallocating_deinit()
{

  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel__pickedRoute, &unk_1EC062D10);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel_audioRouteService);

  v1 = OBJC_IVAR____TtC16CommunicationsUI30AudioCallAudioControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t (*sub_1C2C9D76C())(uint64_t *)
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2C9E134;
}

uint64_t sub_1C2C9D7C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2C9DCB4(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1C2C9D888()
{
  swift_getKeyPath();
  sub_1C2C9DCB4(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
  sub_1C2E71A54();
}

uint64_t sub_1C2C9D954(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2E71EA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D860);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1C2C9DFBC(a1, &v21 - v13);
  sub_1C2C9DFBC(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1C2C9DFBC(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1C2C9DCB4(&qword_1EC05BB70, MEMORY[0x1E6995D28]);
      v18 = sub_1C2E75BA4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1C2C73644(v14, &unk_1EC062D10);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C2C73644(v14, &unk_1EC05D860);
    v17 = 1;
    return v17 & 1;
  }

  sub_1C2C73644(v14, &unk_1EC062D10);
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_1C2C9DC60()
{
  result = qword_1EDDCD9E0;
  if (!qword_1EDDCD9E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDCD9E0);
  }

  return result;
}

uint64_t sub_1C2C9DCB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AudioCallAudioControlViewModel()
{
  result = qword_1EC05D850;
  if (!qword_1EC05D850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2C9DD48(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1C2C9DCB4(&qword_1EC05BB70, MEMORY[0x1E6995D28]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C2C9DDE8(uint64_t a1)
{
  result = sub_1C2C9DCB4(&qword_1EC05D840, type metadata accessor for AudioCallAudioControlViewModel);
  *(a1 + 8) = result;
  return result;
}

void sub_1C2C9DE48()
{
  sub_1C2C9DF64();
  if (v0 <= 0x3F)
  {
    sub_1C2E71AA4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C2C9DF64()
{
  if (!qword_1EC05BB60)
  {
    sub_1C2E71EA4();
    v0 = sub_1C2E76424();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05BB60);
    }
  }
}

uint64_t sub_1C2C9DFBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C2C9E060(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_1C2C77608(a1, a2, a3);
  }
}

uint64_t sub_1C2C9E074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062D10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id CallTranslationViewController.init(service:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D870);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v1[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_isViewVisible] = 0;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___maskView] = 0;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView] = 0;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerViewBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerView] = 0;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___dataSource] = 0;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_cancellables] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_lockStateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1C2C6E3A4(a1, &v1[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_service]);
  sub_1C2C6E3A4(a1, v12);
  type metadata accessor for CallTranslationFooterViewModel();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_footerViewModel] = sub_1C2CA66D0(v12);
  sub_1C2C6E1B4(0, &qword_1EC05D8C0);
  type metadata accessor for CallTranscripts();

  sub_1C2E76004();
  (*(v5 + 32))(&v1[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_cellRegistration], v7, v4);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1C2C9E3B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA40);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6[-1] - v2;
  type metadata accessor for CallTranscriptsView();
  sub_1C2CA3C94(&qword_1EC05DA48, type metadata accessor for CallTranscriptsView);
  sub_1C2E74114();
  sub_1C2E74454();
  v6[3] = v0;
  v6[4] = sub_1C2C94F38(&qword_1EC05DA50, &qword_1EC05DA40);
  __swift_allocate_boxed_opaque_existential_1(v6);
  sub_1C2E74104();
  (*(v1 + 8))(v3, v0);
  return MEMORY[0x1C6926B50](v6);
}

uint64_t sub_1C2C9E568@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for CallTranscriptsView() + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  swift_storeEnumTagMultiPayload();
  *a2 = a1;
}

Swift::Void __swiftcall CallTranslationViewController.viewDidLoad()()
{
  v1 = v0;
  v48.receiver = v0;
  v48.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v48, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  [v5 setClipsToBounds_];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = sub_1C2C9EC14();
  [v8 setMaskView_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C2E7A700;
  v11 = sub_1C2C9EC9C(&OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView, sub_1C2CA0538);
  v12 = [v11 topAnchor];

  v13 = [v1 view];
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v10 + 32) = v16;
  v17 = OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView;
  v18 = [*&v1[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView] leadingAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v19;
  v21 = [v19 leadingAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v10 + 40) = v22;
  v23 = [*&v1[v17] trailingAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = v24;
  v26 = [v24 trailingAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v10 + 48) = v27;
  v28 = [*&v1[v17] bottomAnchor];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = v29;
  v31 = [v29 bottomAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v10 + 56) = v32;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A710;
  v34 = sub_1C2C9EC9C(&OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerView, sub_1C2CA0944);
  v35 = [v34 leadingAnchor];

  v36 = [v1 view];
  if (!v36)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v37 = v36;
  v38 = [v36 leadingAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(inited + 32) = v39;
  v40 = [*&v1[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerView] trailingAnchor];
  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 trailingAnchor];

    v44 = [v40 constraintEqualToAnchor_];
    *(inited + 40) = v44;
    *(inited + 48) = sub_1C2C9ED00();
    sub_1C2CA2AE4(inited);
    v45 = objc_opt_self();
    sub_1C2C6E1B4(0, &qword_1EC062670);
    v46 = sub_1C2E75D64();

    [v45 activateConstraints_];

    sub_1C2C9F44C();

    swift_allocObject();
    v47 = swift_unknownObjectWeakInit();
    MEMORY[0x1EEE9AC00](v47);
    sub_1C2E71A44();

    return;
  }

LABEL_19:
  __break(1u);
}

char *sub_1C2C9EC14()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___maskView;
  v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___maskView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___maskView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for CallTranscriptsMaskView());
    v6 = sub_1C2DC2480();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1C2C9EC9C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1C2C9ED00()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerViewBottomConstraint;
  v2 = *&v0[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerViewBottomConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerViewBottomConstraint];
LABEL_5:
    v11 = v2;
    return v3;
  }

  v4 = sub_1C2C9EC9C(&OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerView, sub_1C2CA0944);
  v5 = [v4 bottomAnchor];

  result = [v0 view];
  if (result)
  {
    v7 = result;
    v8 = [result bottomAnchor];

    v9 = [v5 constraintEqualToAnchor_];
    v10 = *&v0[v1];
    *&v0[v1] = v9;
    v3 = v9;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall CallTranslationViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v30.receiver = v0;
  v30.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v30, sel_viewDidLayoutSubviews);
  v2 = sub_1C2C9EC9C(&OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView, sub_1C2CA0538);
  v3 = [v2 collectionViewLayout];

  type metadata accessor for CallTranslationLayout();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1C2C9EC9C(&OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerView, sub_1C2CA0944);
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v31.origin.x = v8;
    v31.origin.y = v10;
    v31.size.width = v12;
    v31.size.height = v14;
    Height = CGRectGetHeight(v31);
    v16 = *(v5 + OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_bottomInset);
    *(v5 + OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_bottomInset) = Height;
    if (v16 != Height)
    {
      sub_1C2CA1BE0();
    }
  }

  v17 = [v1 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = v17;
  v19 = [v17 maskView];

  if (!v19)
  {
    return;
  }

  v20 = [v1 view];
  if (!v20)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v21 = v20;
  [v20 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v19 setFrame_];
}

Swift::Void __swiftcall CallTranslationViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  *(v1 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_isViewVisible) = 1;
}

uint64_t CallTranslationViewController.shouldShowTranslation.getter()
{
  v0 = *(sub_1C2C9F44C() + 16);

  return v0;
}

uint64_t sub_1C2C9F180(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_1C2C9F44C();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  if (v1 != v3)
  {
    sub_1C2D91288();
  }
}

uint64_t CallTranslationViewController.shouldShowTranslation.setter(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1C2C9F44C();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
  if (v4 == v2)
  {
  }

  else
  {
    swift_beginAccess();
    v5 = *(v3 + 40);
    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v11 = 0;
    v12 = 0;
    v18 = v3;
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_8:
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
      }

      v8 = *(v5 + 64 + 8 * v13);
      ++v11;
      if (v8)
      {
        while (1)
        {
          v14 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
          v15 = *(*(v5 + 56) + ((v13 << 9) | (8 * v14)));
          v16 = *(v3 + 16);
          if (v16 == *(v15 + 80))
          {
            *(v15 + 80) = v16;
            v11 = v13;
            if (!v8)
            {
              goto LABEL_8;
            }
          }

          else
          {
            KeyPath = swift_getKeyPath();
            v20 = &v18;
            MEMORY[0x1EEE9AC00](KeyPath);
            v19 = v12;
            v21 = v15;
            sub_1C2CA3C94(&qword_1EC062660, type metadata accessor for CallTranscripts);

            v12 = v19;
            sub_1C2E71A54();

            v3 = v18;

            v11 = v13;
            if (!v8)
            {
              goto LABEL_8;
            }
          }

LABEL_7:
          v13 = v11;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C2C9F44C()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___dataSource;
  if (*(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___dataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___dataSource);
  }

  else
  {
    v3 = v0;
    v4 = sub_1C2C9EC9C(&OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView, sub_1C2CA0538);
    v5 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_footerViewModel);
    swift_getKeyPath();
    v17[0] = v5;
    sub_1C2CA3C94(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
    sub_1C2E71A64();

    v6 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
    swift_beginAccess();
    sub_1C2C6E3A4(v5 + v6, v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    LOBYTE(v6) = sub_1C2E72574();
    __swift_destroy_boxed_opaque_existential_1(v17);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for CallTranscriptsDataSource();
    v2 = swift_allocObject();
    v8 = MEMORY[0x1E69E7CC0];
    *(v2 + 24) = MEMORY[0x1E69E7CC0];
    *(v2 + 32) = 0;

    *(v2 + 40) = sub_1C2D941BC(v8);
    *(v2 + 16) = v6 & 1;
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = sub_1C2CA3C28;
    v10[4] = v7;
    v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062700));
    v12 = v4;

    v13 = sub_1C2E72C94();
    v14 = *(v2 + 32);
    *(v2 + 32) = v13;

    v15 = v13;
    sub_1C2E72CA4();

    [v12 setDataSource_];
    sub_1C2D9087C();

    *(v3 + v1) = v2;
  }

  return v2;
}

void (*CallTranslationViewController.shouldShowTranslation.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(sub_1C2C9F44C() + 16);

  *(v4 + 56) = v5;
  return sub_1C2C9F78C;
}

void sub_1C2C9F78C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *((*a1)[6] + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___dataSource);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;
  v6 = v3 ^ v5;
  if ((a2 & 1) == 0)
  {
    if (v6)
    {
      swift_beginAccess();
      v18 = *(v4 + 40);
      v19 = -1;
      v20 = -1 << *(v18 + 32);
      if (-v20 < 64)
      {
        v19 = ~(-1 << -v20);
      }

      v21 = v19 & *(v18 + 64);
      v22 = (63 - v20) >> 6;
      swift_bridgeObjectRetain_n();

      v23 = 0;
      while (1)
      {
        v24 = v23;
        if (!v21)
        {
          break;
        }

LABEL_21:
        v25 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v26 = *(*(v18 + 56) + ((v23 << 9) | (8 * v25)));
        v27 = *(v4 + 16);
        if (v27 == *(v26 + 80))
        {
          *(v26 + 80) = v27;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          v32 = &v29;
          v33 = KeyPath;
          MEMORY[0x1EEE9AC00](KeyPath);
          v31 = &v29 - 4;
          *(&v29 - 2) = v26;
          *(&v29 - 8) = v27;
          *v2 = v26;
          v30 = sub_1C2CA3C94(&qword_1EC062660, type metadata accessor for CallTranscripts);

          sub_1C2E71A54();
        }
      }

      while (1)
      {
        v23 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_27;
        }

        if (v23 >= v22)
        {
LABEL_24:

          break;
        }

        v21 = *(v18 + 64 + 8 * v23);
        ++v24;
        if (v21)
        {
          goto LABEL_21;
        }
      }
    }

LABEL_25:
    free(v2);
    return;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_25;
  }

  swift_beginAccess();
  v7 = *(v4 + 40);
  v8 = -1;
  v9 = -1 << *(v7 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v7 + 64);
  v11 = (63 - v9) >> 6;
  swift_bridgeObjectRetain_n();

  v12 = 0;
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_10:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = *(*(v7 + 56) + ((v12 << 9) | (8 * v14)));
    v16 = *(v4 + 16);
    if (v16 == *(v15 + 80))
    {
      *(v15 + 80) = v16;
    }

    else
    {
      v17 = swift_getKeyPath();
      v32 = &v29;
      v33 = v17;
      MEMORY[0x1EEE9AC00](v17);
      v31 = &v29 - 4;
      *(&v29 - 2) = v15;
      *(&v29 - 8) = v16;
      v2[3] = v15;
      v30 = sub_1C2CA3C94(&qword_1EC062660, type metadata accessor for CallTranscripts);

      sub_1C2E71A54();
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_24;
    }

    v10 = *(v7 + 64 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void CallTranslationViewController.update(with:)(uint64_t a1)
{
  v2 = v1;
  sub_1C2C9F44C();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1C2D942C0(a1, 1, sub_1C2CA3440, v4);
  v6 = v5;

  if ([v2 isViewLoaded])
  {
    if (v6)
    {
      v7 = sub_1C2C9EC9C(&OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView, sub_1C2CA0538);
      [v7 contentInset];
      v9 = v8;

      if (v9 == 0.0)
      {
        v12 = [*&v2[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView] collectionViewLayout];
        type metadata accessor for CallTranslationLayout();
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = *(v10 + OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_ignoreContentSizeUpdate);

          if ((v11 & 1) == 0)
          {

            sub_1C2CA12E8(1);
          }
        }

        else
        {
        }
      }
    }
  }
}

void sub_1C2C9FD40(char a1, uint64_t a2)
{
  v4 = sub_1C2E759D4();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C2E75A04();
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C2E75A24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v21 - v15;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_isViewVisible];

      if (v18 == 1)
      {
        sub_1C2C6E1B4(0, &qword_1EDDCD9E0);
        v23 = sub_1C2E76084();
        sub_1C2E75A14();
        sub_1C2E75A44();
        v24 = *(v11 + 8);
        v24(v13, v10);
        aBlock[4] = sub_1C2CA3A14;
        aBlock[5] = a2;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C2CB2CC4;
        aBlock[3] = &block_descriptor_23;
        v22 = _Block_copy(aBlock);

        sub_1C2E759F4();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        v21[1] = sub_1C2CA3C94(&qword_1EDDCDA00, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C60);
        sub_1C2C94F38(&qword_1EDDCD9F0, &unk_1EC061C60);
        sub_1C2E76464();
        v20 = v22;
        v19 = v23;
        MEMORY[0x1C6926A70](v16, v9, v6, v22);
        _Block_release(v20);

        (*(v26 + 8))(v6, v4);
        (*(v25 + 8))(v9, v7);
        v24(v16, v10);
      }
    }
  }
}

void sub_1C2CA014C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C2CA01A0();
  }
}

void sub_1C2CA01A0()
{
  v1 = sub_1C2E71A34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC062650);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05DA00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v25 = v0;
  v15 = *(sub_1C2C9F44C() + 32);
  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = v15;
  sub_1C2E72CC4();

  if (sub_1C2E72C34() >= 1)
  {
    v17 = sub_1C2E72C34();
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (!v18)
    {
      MEMORY[0x1C6922440](v19, 0);
      v20 = 0;
      goto LABEL_6;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v20 = 1;
LABEL_6:

  (*(v6 + 8))(v8, v5);
  (*(v2 + 56))(v14, v20, 1, v1);
  sub_1C2CA3A1C(v14, v11);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    sub_1C2CA3A8C(v14);
  }

  else
  {
    (*(v2 + 32))(v4, v11, v1);
    v21 = sub_1C2C9EC9C(&OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView, sub_1C2CA0538);
    v22 = [v21 indexPathsForVisibleItems];

    v23 = sub_1C2E75D74();
    LOBYTE(v22) = sub_1C2DEFDD8(v4, v23);

    (*(v2 + 8))(v4, v1);
    sub_1C2CA3A8C(v14);
    if (v22)
    {
      sub_1C2CA12E8(1);
    }
  }
}

Swift::Void __swiftcall CallTranslationViewController.removeAllTranscripts()()
{
  sub_1C2C9F44C();
  CallTranscriptsDataSource.removeAll()();
}

id sub_1C2CA0538(void *a1)
{
  v2 = sub_1C2CA0650();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setDelegate_];
  result = [a1 view];
  if (result)
  {
    v8 = result;
    [result addSubview_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1C2CA0650()
{
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension_];
  v2 = [v0 estimatedDimension_];
  v3 = objc_opt_self();
  v4 = [v3 sizeWithWidthDimension:v1 heightDimension:v2];

  v5 = [objc_opt_self() itemWithLayoutSize_];
  [v5 setContentInsets_];
  v6 = [v0 fractionalWidthDimension_];
  v7 = [v0 estimatedDimension_];
  v8 = [v3 sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C2E7A720;
  *(v10 + 32) = v5;
  sub_1C2C6E1B4(0, &qword_1EC05DA38);
  v11 = v5;
  v12 = sub_1C2E75D64();

  v13 = [v9 verticalGroupWithLayoutSize:v8 subitems:v12];

  v14 = [objc_opt_self() sectionWithGroup_];
  [v14 setInterGroupSpacing_];
  v15 = [objc_allocWithZone(type metadata accessor for CallTranslationLayout()) initWithSection_];

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = &v15[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_didUpdate];
  v18 = *&v15[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_didUpdate];
  *v17 = sub_1C2CA3C84;
  v17[1] = v16;

  sub_1C2C71668(v18);

  return v15;
}

void sub_1C2CA0944(char *a1)
{
  v2 = sub_1C2E743B4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *&a1[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_footerViewModel];

  sub_1C2E75174();
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA30));

  v5 = sub_1C2E73E44();
  sub_1C2E743A4();
  sub_1C2E73E14();
  v6 = v5;
  v7 = [v6 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  v9 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor_];

  v10 = [v6 view];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];

  [a1 addChildViewController_];
  v12 = [a1 view];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v12;
  v14 = [v6 view];
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  [v13 addSubview_];

  [v6 didMoveToParentViewController_];
  v16 = [v6 view];

  if (v16)
  {

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_1C2CA0BA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  sub_1C2C6E1B4(0, &qword_1EC05D8C0);
  type metadata accessor for CallTranscripts();

  v2 = sub_1C2E76024();

  return v2;
}

void sub_1C2CA0C84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_footerViewModel);
    swift_getKeyPath();
    v28[0] = v2;
    sub_1C2CA3C94(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
    sub_1C2E71A64();

    v3 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
    swift_beginAccess();
    sub_1C2C6E3A4(v2 + v3, v28);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    LODWORD(v2) = sub_1C2E72574() & 1;
    __swift_destroy_boxed_opaque_existential_1(v28);
    v4 = sub_1C2C9F44C();
    v5 = *(v4 + 16);
    *(v4 + 16) = v2;
    if (v2 == v5)
    {

LABEL_17:
      v21 = sub_1C2C9EC9C(&OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView, sub_1C2CA0538);
      [v21 layoutIfNeeded];
    }

    else
    {
      v23 = v1;
      swift_beginAccess();
      v6 = *(v4 + 40);
      v9 = *(v6 + 64);
      v8 = v6 + 64;
      v7 = v9;
      v10 = 1 << *(*(v4 + 40) + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & v7;
      v13 = (v10 + 63) >> 6;
      v26 = *(v4 + 40);
      swift_bridgeObjectRetain_n();
      v14 = 0;
      v15 = 0;
      if (v12)
      {
        goto LABEL_8;
      }

LABEL_9:
      while (1)
      {
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v16 >= v13)
        {

          v1 = v23;
          goto LABEL_17;
        }

        v12 = *(v8 + 8 * v16);
        ++v14;
        if (v12)
        {
          while (1)
          {
            v17 = __clz(__rbit64(v12));
            v12 &= v12 - 1;
            v18 = *(*(v26 + 56) + ((v16 << 9) | (8 * v17)));
            v19 = *(v4 + 16);
            if (v19 == *(v18 + 80))
            {
              *(v18 + 80) = v19;
              v14 = v16;
              if (!v12)
              {
                goto LABEL_9;
              }
            }

            else
            {
              KeyPath = swift_getKeyPath();
              v25 = &v22;
              MEMORY[0x1EEE9AC00](KeyPath);
              v27 = v18;
              sub_1C2CA3C94(&qword_1EC062660, type metadata accessor for CallTranscripts);
              v24 = v15;

              v15 = v24;
              sub_1C2E71A54();

              v14 = v16;
              if (!v12)
              {
                goto LABEL_9;
              }
            }

LABEL_8:
            v16 = v14;
          }
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1C2CA1008(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1C2E75E74();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1C2E75E34();

  v6 = sub_1C2E75E24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_1C2D22888(0, 0, v4, &unk_1C2E7A8A0, v7);
}

uint64_t sub_1C2CA112C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1C2E75E34();
  v4[7] = sub_1C2E75E24();
  v6 = sub_1C2E75DD4();

  return MEMORY[0x1EEE6DFA0](sub_1C2CA11C4, v6, v5);
}

uint64_t sub_1C2CA11C4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(swift_task_alloc() + 16) = Strong;
    sub_1C2E71A44();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_1C2CA12E8(char a1)
{
  v3 = sub_1C2C9EC9C(&OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView, sub_1C2CA0538);
  [v3 contentSize];
  v5 = v4;

  v6 = OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView;
  [*(v1 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView) bounds];
  v7 = v5 - CGRectGetHeight(v15);
  [*(v1 + v6) contentInset];
  [*(v1 + v6) setContentOffset:a1 & 1 animated:{0.0, v7 + v8}];
  v9 = sub_1C2C9ED00();
  [v9 constant];
  v11 = v10;

  if (v11 != 0.0)
  {
    [*(v1 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerViewBottomConstraint) setConstant_];
    v13 = [*(v1 + v6) collectionViewLayout];
    type metadata accessor for CallTranslationLayout();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      *(v12 + OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_ignoreContentSizeUpdate) = 0;
    }
  }
}

void sub_1C2CA1450()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1C2C9ED00();
    [v2 constant];
    v4 = v3;

    if (v4 == 0.0)
    {
      v5 = v1;
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerViewBottomConstraint] setConstant_];
      v6 = sub_1C2C9EC9C(&OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView, sub_1C2CA0538);
      v5 = [v6 collectionViewLayout];

      type metadata accessor for CallTranslationLayout();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        *(v7 + OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_ignoreContentSizeUpdate) = 0;
      }
    }
  }
}

uint64_t CallTranslationViewController.lockStateDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_lockStateDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*CallTranslationViewController.lockStateDelegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_lockStateDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C2CA16BC;
}

Swift::Void __swiftcall CallTranslationViewController.updateLockState(_:)(Swift::Bool a1)
{
  v2 = sub_1C2C9EC9C(&OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView, sub_1C2CA0538);
  [v2 setHidden_];

  v3 = sub_1C2C9EC9C(&OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerView, sub_1C2CA0944);
  [v3 setHidden_];
}

id CallTranslationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1C2E75C24();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_1C2CA19A0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_lockStateDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1C2CA1A0C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_lockStateDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C2CA3D10;
}

void sub_1C2CA1AAC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_1C2CA1B34(char a1)
{
  v2 = sub_1C2C9EC9C(&OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView, sub_1C2CA0538);
  [v2 setHidden_];

  v3 = sub_1C2C9EC9C(&OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerView, sub_1C2CA0944);
  [v3 setHidden_];
}

void sub_1C2CA1BE0()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v9 = v1;
    [v9 contentInset];
    v2 = OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_bottomInset;
    if (v3 != *&v0[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_bottomInset])
    {
      [v9 contentInset];
      [v9 setContentInset_];
    }

    [v9 bounds];
    v5 = v4;
    [v0 collectionViewContentSize];
    if (v5 - v6 - *&v0[v2] > 0.0)
    {
      v7 = v5 - v6 - *&v0[v2];
    }

    else
    {
      v7 = 0.0;
    }

    [v9 contentInset];
    if (v8 != v7)
    {
      [v9 contentInset];
      [v9 setContentInset_];
    }
  }
}

void sub_1C2CA1D1C()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_prepareLayout);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v0 collectionViewContentSize];
    v4 = v3;
    [v2 contentSize];
    if (v4 != v5 && v0[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_needsUpdateOffset] == 1 && (v0[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_needsUpdateOffset] = 0, sub_1C2CA1BE0(), sub_1C2CA1E18(), (v6 = *&v0[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_didUpdate]) != 0))
    {

      v6(v7);

      sub_1C2C71668(v6);
    }

    else
    {
    }
  }
}

void sub_1C2CA1E18()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v8 = v1;
    [v8 contentInset];
    if (v2 == 0.0)
    {
      [v0 collectionViewContentSize];
      v4 = v3;
      [v8 bounds];
      v5 = v4 - CGRectGetHeight(v10);
      [v8 contentInset];
      v7 = v6;

      [v8 setContentOffset:0 animated:{0.0, v5 + v7}];
    }

    else
    {
    }
  }
}

id sub_1C2CA1F58(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [v2 collectionView];
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_ignoreContentSizeUpdate))
    {

      v15 = v2;
      v7 = &v15;
    }

    else
    {
      v8 = [a1 invalidatedItemIndexPaths];
      if (v8)
      {
        sub_1C2E71A34();
        v9 = sub_1C2E75D74();

        v10 = *(v9 + 16);
      }

      else
      {
        v10 = 0;
      }

      v11 = [v6 numberOfItemsInSection_];

      if (v8)
      {
        v12 = v10 == v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      *(v2 + OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_needsUpdateOffset) = v13;
      v16.receiver = v2;
      v7 = &v16;
    }
  }

  else
  {
    v17 = v2;
    v7 = &v17;
  }

  v7->super_class = ObjectType;
  return [(objc_super *)v7 invalidateLayoutWithContext:a1, v15];
}

id sub_1C2CA2204(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_didUpdate];
  *v6 = 0;
  v6[1] = 0;
  *&v2[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_bottomInset] = 0;
  v2[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_ignoreContentSizeUpdate] = 0;
  v2[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_needsUpdateOffset] = 0;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2CA3448;
  aBlock[3] = &block_descriptor_20;
  v7 = _Block_copy(aBlock);

  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithSectionProvider_, v7);

  _Block_release(v7);
  return v8;
}

id sub_1C2CA2378(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_didUpdate];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_bottomInset] = 0;
  v4[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_ignoreContentSizeUpdate] = 0;
  v4[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_needsUpdateOffset] = 0;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2CA3448;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithSectionProvider_configuration_, v10, a3);

  _Block_release(v10);
  return v11;
}

id sub_1C2CA2514(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_didUpdate];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_bottomInset] = 0;
  v1[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_ignoreContentSizeUpdate] = 0;
  v1[OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_needsUpdateOffset] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id _s16CommunicationsUI29CallTranslationViewControllerCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CallTranslationViewController.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  if ([(UIScrollView *)a1 isTracking]|| [(UIScrollView *)a1 isDecelerating]|| [(UIScrollView *)a1 isDragging])
  {
    [(UIScrollView *)a1 contentInset];
    if (v3 == 0.0)
    {
      v4 = sub_1C2C9EC9C(&OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView, sub_1C2CA0538);
      [v4 contentSize];
      v6 = v5;

      v7 = OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView;
      [*(v1 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___collectionView) bounds];
      v9 = v6 - v8;
      [*(v1 + v7) contentInset];
      v11 = v9 + v10;
      [(UIScrollView *)a1 contentOffset];
      if (v11 - v12 > 0.0)
      {
        v13 = v11 - v12;
      }

      else
      {
        v13 = 0.0;
      }

      [(UIScrollView *)a1 contentInset];
      if (v14 < v13)
      {
        v13 = v14;
      }

      v15 = sub_1C2C9ED00();
      [v15 constant];
      v17 = v16;

      if (v13 != v17)
      {
        [*(v1 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerViewBottomConstraint) setConstant_];
        v31 = [*(v1 + v7) collectionViewLayout];
        type metadata accessor for CallTranslationLayout();
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          v19 = v18;
          [(UIScrollView *)a1 contentInset];
          *(v19 + OBJC_IVAR____TtC16CommunicationsUIP33_B1873AACC1910DE7A2236FA3DA2A1DCE21CallTranslationLayout_ignoreContentSizeUpdate) = v20 - v13 < 1.0;
        }
      }
    }

    else
    {
      [(UIScrollView *)a1 contentOffset];
      v22 = v21;
      [(UIScrollView *)a1 contentInset];
      v24 = v22 + v23;
      if (v24 <= 0.0)
      {
        v25 = -v24;
      }

      else
      {
        v25 = -0.0;
      }

      [(UIScrollView *)a1 contentInset];
      if (v26 < v25)
      {
        v25 = v26;
      }

      v27 = sub_1C2C9ED00();
      [v27 constant];
      v29 = v28;

      if (v25 != v29)
      {
        v30 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController____lazy_storage___footerViewBottomConstraint);

        [v30 setConstant_];
      }
    }
  }
}

uint64_t sub_1C2CA293C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2CA3C94(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI30CallTranslationFooterViewModel__service;
  swift_beginAccess();
  return sub_1C2C6E3A4(v3 + v4, a2);
}

uint64_t sub_1C2CA2A04(uint64_t a1)
{
  sub_1C2C6E3A4(a1, v2);
  swift_getKeyPath();
  sub_1C2CA3C94(&unk_1EC05DA10, type metadata accessor for CallTranslationFooterViewModel);
  sub_1C2E71A54();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1C2CA2AE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C2E764E4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1C2E764E4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C2CA34C4(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C2CA3564(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C2CA2C04(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C2DD20A4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}