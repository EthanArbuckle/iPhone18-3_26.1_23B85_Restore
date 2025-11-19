void *sub_1D2271A3C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D2271A84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D28780A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D2271BF4()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1D2875FC8();

    return sub_1D2874F68();
  }

  else
  {
    sub_1D28751B8();
    swift_getWitnessTable();
    sub_1D2875CF8();
    sub_1D2874F68();
    sub_1D2878F18();
    swift_getWitnessTable();
    sub_1D28751B8();
    swift_getWitnessTable();
    sub_1D2875CF8();
    return sub_1D2874F68();
  }
}

uint64_t sub_1D2271D58()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1D2875FC8();
    sub_1D2874F68();
  }

  else
  {
    sub_1D28751B8();
    swift_getWitnessTable();
    sub_1D2875CF8();
    sub_1D2874F68();
    sub_1D2878F18();
    swift_getWitnessTable();
    sub_1D28751B8();
    swift_getWitnessTable();
    sub_1D2875CF8();
    sub_1D2874F68();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D2271F58()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1D2874E28();
  }

  else
  {
    sub_1D2874BC8();
  }

  return sub_1D2874F68();
}

uint64_t sub_1D2271FC0()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1D2874E28();
    sub_1D2874F68();
    sub_1D22BBFBC();
  }

  else
  {
    sub_1D2874BC8();
    sub_1D2874F68();
    sub_1D22BA450(&qword_1ED89DED0, MEMORY[0x1E697C028]);
  }

  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for StylesGrid.Metrics(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for StylesGrid.Metrics(uint64_t result, int a2, int a3)
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

uint64_t sub_1D22720FC(uint64_t a1, int a2)
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

uint64_t sub_1D2272164()
{

  return swift_deallocObject();
}

uint64_t sub_1D227219C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D22721E0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D22722CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D227230C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2272354()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D227239C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 60);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 68);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D22724D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 60);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 68);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D227268C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D2272788()
{

  return swift_deallocObject();
}

uint64_t sub_1D2272A48()
{

  return swift_deallocObject();
}

uint64_t sub_1D2272AE0()
{
  v1 = sub_1D2871818();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D2272EC0()
{
  v1 = sub_1D2871818();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for PlaygroundImage();
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  swift_unknownObjectRelease();

  v7 = *(v2 + 8);
  v7(v0 + v3, v1);
  v8 = v0 + v6;

  v7(v0 + v6 + v5[8], v1);
  v9 = (v0 + v6 + v5[10]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_1D22D6D60(*v9, v10);
  }

  v11 = v5[11];
  v12 = sub_1D2873AA8();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v8 + v11, 1, v12))
  {
    (*(v13 + 8))(v8 + v11, v12);
  }

  return swift_deallocObject();
}

uint64_t sub_1D22730E0()
{
  v1 = type metadata accessor for PlaygroundImage();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;

  v4 = v1[8];
  v5 = sub_1D2871818();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = (v0 + v2 + v1[10]);
  v7 = v6[1];
  if (v7 >> 60 != 15)
  {
    sub_1D22D6D60(*v6, v7);
  }

  v8 = v1[11];
  v9 = sub_1D2873AA8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1D22732A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D22732D8()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2273350(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[15];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[17];

  return v19(v20, a2, v18);
}

uint64_t sub_1D2273590(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[15];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[17];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1D22737E0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2273818(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1D227389C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE30) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v3 = sub_1D28716B8();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1D2273998()
{
  v1 = sub_1D2870CC8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D2273A88()
{

  return swift_deallocObject();
}

uint64_t sub_1D2273AF0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2273B50()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9B78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D99B8);
  sub_1D22EBA14();
  sub_1D22EBB84();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1D22EBCFC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2273C70()
{
  sub_1D28773C8();
  sub_1D2874F68();
  sub_1D2874F68();
  sub_1D2874F68();
  sub_1D2874F68();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D2273E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ComposingFooterButtonConfiguration.Regular(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D2273F5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ComposingFooterButtonConfiguration.Regular(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D227408C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DE8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if ((*(a1 + *(a3 + 20) + 16) >> 1) > 0x80000000)
  {
    return -(*(a1 + *(a3 + 20) + 16) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2274158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DE8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 2 * -a2;
    v11[3] = 0;
  }

  return result;
}

uint64_t sub_1D2274228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposingFooterButtonImage.Configuration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D2274294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposingFooterButtonImage.Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D2274304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DE8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1D2877218();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D2274434(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9DE8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1D2877218();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D2274564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ComposingFooterButtonConfiguration.Compact(0);
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

uint64_t sub_1D2274620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ComposingFooterButtonConfiguration.Compact(0);
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

uint64_t sub_1D22746E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ComposingFooterButtonImage.Representation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if ((*(a1 + *(a3 + 20) + 16) >> 1) > 0x80000000)
  {
    return -(*(a1 + *(a3 + 20) + 16) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D22747A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ComposingFooterButtonImage.Representation(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 2 * -a2;
    v11[3] = 0;
  }

  return result;
}

uint64_t sub_1D2274864()
{
  v1 = *(type metadata accessor for ComposingCompactFooterButton(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  type metadata accessor for ComposingFooterButtonImage.Representation(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {

    v3 = type metadata accessor for PlaygroundImage();
    v4 = v3[8];
    v5 = sub_1D2871818();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
    v6 = (v2 + v3[10]);
    v7 = v6[1];
    if (v7 >> 60 != 15)
    {
      sub_1D22D6D60(*v6, v7);
    }

    v8 = v3[11];
    v9 = sub_1D2873AA8();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  v11 = type metadata accessor for ComposingFooterButtonConfiguration.Compact(0);
  sub_1D22F440C(*(v2 + *(v11 + 20)), *(v2 + *(v11 + 20) + 8), *(v2 + *(v11 + 20) + 16));
  v12 = (v2 + *(v11 + 24));
  v13 = v12[2];
  if (v13 >> 1 != 0xFFFFFFFF)
  {
    sub_1D22F440C(*v12, v12[1], v13);
  }

  return swift_deallocObject();
}

uint64_t sub_1D2274AB0()
{
  v1 = type metadata accessor for ComposingRegularFooterButton(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v3 = type metadata accessor for ComposingFooterButtonImage.Representation(0);
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {

      v4 = type metadata accessor for PlaygroundImage();
      v5 = v4[8];
      v6 = sub_1D2871818();
      (*(*(v6 - 8) + 8))(v2 + v5, v6);
      v7 = (v2 + v4[10]);
      v8 = v7[1];
      if (v8 >> 60 != 15)
      {
        sub_1D22D6D60(*v7, v8);
      }

      v9 = v4[11];
      v10 = sub_1D2873AA8();
      v11 = *(v10 - 8);
      if (!(*(v11 + 48))(v2 + v9, 1, v10))
      {
        (*(v11 + 8))(v2 + v9, v10);
      }
    }
  }

  v12 = type metadata accessor for ComposingFooterButtonConfiguration.Regular(0);
  sub_1D22F440C(*(v2 + v12[5]), *(v2 + v12[5] + 8), *(v2 + v12[5] + 16));
  v13 = (v2 + v12[6]);
  v14 = v13[2];
  if (v14 >> 1 != 0xFFFFFFFF)
  {
    sub_1D22F440C(*v13, v13[1], v14);
  }

  sub_1D22F440C(*(v2 + v12[7]), *(v2 + v12[7] + 8), *(v2 + v12[7] + 16));
  v15 = (v2 + v12[9]);
  v16 = v15[2];
  if (v16 >> 1 != 0xFFFFFFFF)
  {
    sub_1D22F440C(*v15, v15[1], v16);
  }

  j__swift_release();

  v17 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1D2875E18();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v2 + v17, 1, v18))
    {
      (*(v19 + 8))(v2 + v17, v18);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D2274E6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2875538();
  *a1 = result;
  return result;
}

uint64_t sub_1D22750DC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_1D233EA00(*a1, v2, v3);
  return sub_1D22FE710(v1, v2, v3);
}

uint64_t sub_1D2275288()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D22752C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D2275300@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D227535C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D227558C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D22F97E4(v1, v2);
}

uint64_t sub_1D2275758()
{

  return swift_deallocObject();
}

id sub_1D2275868@<X0>(BOOL *a1@<X8>)
{
  result = sub_1D23CC070();
  *a1 = (result & 1) == 0;
  return result;
}

id sub_1D227591C@<X0>(BOOL *a1@<X8>)
{
  result = sub_1D23CC22C();
  *a1 = (result & 1) == 0;
  return result;
}

uint64_t sub_1D2275A00()
{
  v1 = (type metadata accessor for Analytics.ImageGenerationEventPayload() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[27];
  v4 = sub_1D2871818();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1D2275BB0()
{
  v1 = (type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_1D2871818();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_1D2275EAC()
{

  return swift_deallocObject();
}

uint64_t sub_1D2275FEC()
{
  v1 = sub_1D2871DD8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D22760A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

__n128 sub_1D227614C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D2276158()
{

  return swift_deallocObject();
}

uint64_t sub_1D22761B8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = type metadata accessor for ImageGeneration.PreviewImage(0);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3))
  {
    v4 = sub_1D2871818();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    __swift_destroy_boxed_opaque_existential_0(v0 + v2 + *(v3 + 24));
  }

  return swift_deallocObject();
}

uint64_t sub_1D2276478()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for PlaygroundImage();
  v6 = (v4 + *(*(v5 - 1) + 80) + 8) & ~*(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v0 + v6;

  v8 = v5[8];
  v9 = sub_1D2871818();
  (*(*(v9 - 8) + 8))(v0 + v6 + v8, v9);
  v10 = (v0 + v6 + v5[10]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_1D22D6D60(*v10, v11);
  }

  v12 = v5[11];
  v13 = sub_1D2873AA8();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v7 + v12, 1, v13))
  {
    (*(v14 + 8))(v7 + v12, v13);
  }

  return swift_deallocObject();
}

uint64_t sub_1D227679C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2276830()
{

  return swift_deallocObject();
}

uint64_t sub_1D2276870()
{
  v1 = type metadata accessor for PlaygroundImage();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;

  v4 = v1[8];
  v5 = sub_1D2871818();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = (v0 + v2 + v1[10]);
  v7 = v6[1];
  if (v7 >> 60 != 15)
  {
    sub_1D22D6D60(*v6, v7);
  }

  v8 = v1[11];
  v9 = sub_1D2873AA8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1D2276AA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2276B30()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA118) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_1D28732B8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1D2276D28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2276E4C()
{

  return swift_deallocObject();
}

uint64_t sub_1D2276E98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA240);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860);
  sub_1D23421B0();
  sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2276F70(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1D227702C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D22770DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871818();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D2277148(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871818();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D22771B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = _s16AnalyticsContextV12SessionStateVMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2277264(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = _s16AnalyticsContextV12SessionStateVMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2277398()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D22773E8()
{

  return swift_deallocObject();
}

uint64_t sub_1D2277420()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D2277470()
{
  sub_1D2874F68();
  sub_1D2348B20();
  return swift_getWitnessTable();
}

uint64_t sub_1D22774D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D227754C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA320);
  type metadata accessor for CharacterEditingView();
  sub_1D2348ED0();
  sub_1D2348F34(&qword_1EC6DA330, type metadata accessor for CharacterEditingView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2277608()
{

  return swift_deallocObject();
}

uint64_t sub_1D2277640(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ImageGeneration.GenerationParameters();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D22776EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ImageGeneration.GenerationParameters();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2277884(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D234B100(v1, v2);
}

uint64_t sub_1D2277A2C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = type metadata accessor for ImageGenerationPerson();
  if (!(*(*(v4 - 1) + 48))(v0 + v2, 1, v4))
  {
    v5 = type metadata accessor for ImageGenerationPerson.DemographicTraits();
    if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
    {
      v6 = *(v5 + 20);
      v7 = type metadata accessor for ImageGenerationPerson.SkinTone();
      if (!(*(*(v7 - 8) + 48))(v3 + v6, 1, v7))
      {
        v8 = sub_1D28737A8();
        (*(*(v8 - 8) + 8))(v3 + v6, v8);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D2277CFC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D2277D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA3E0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D2277E08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA3E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1D2277ECC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA400);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D2277EFC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2277F4C()
{
  v1 = type metadata accessor for ImageGeneration.GenerationParameters();
  v48 = *(*(v1 - 1) + 80);
  v2 = (v48 + 48) & ~v48;
  v3 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v49 = v0;
  v4 = v0 + v2;

  v5 = v1[13];
  v6 = sub_1D2872008();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = (v4 + v1[14]);
  v8 = type metadata accessor for PlaygroundImage();
  v9 = *(*(v8 - 1) + 48);
  if (!v9(v7, 1, v8))
  {

    v10 = v8[8];
    v11 = sub_1D2871818();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
    v12 = (v7 + v8[10]);
    v13 = v12[1];
    if (v13 >> 60 != 15)
    {
      sub_1D22D6D60(*v12, v13);
    }

    v14 = v8[11];
    v15 = sub_1D2873AA8();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v7 + v14, 1, v15))
    {
      (*(v16 + 8))(v7 + v14, v15);
    }
  }

  v47 = v3;
  v17 = v3 + 23;
  v18 = (v4 + v1[15]);
  if (!v9(v18, 1, v8))
  {

    v19 = v8[8];
    v20 = sub_1D2871818();
    (*(*(v20 - 8) + 8))(v18 + v19, v20);
    v21 = (v18 + v8[10]);
    v22 = v21[1];
    if (v22 >> 60 != 15)
    {
      sub_1D22D6D60(*v21, v22);
    }

    v23 = v8[11];
    v24 = sub_1D2873AA8();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v18 + v23, 1, v24))
    {
      (*(v25 + 8))(v18 + v23, v24);
    }
  }

  v26 = v17 & 0xFFFFFFFFFFFFFFF8;
  v27 = v4 + v1[16];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8);
  if (!(*(*(v28 - 1) + 48))(v27, 1, v28))
  {
    v46 = v26;
    v29 = sub_1D2871818();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v27, 1, v29))
    {
      (*(v30 + 8))(v27, v29);
    }

    v31 = (v27 + v28[12]);
    if (!v9(v31, 1, v8))
    {

      (*(v30 + 8))(v31 + v8[8], v29);
      v32 = (v31 + v8[10]);
      v33 = v32[1];
      if (v33 >> 60 != 15)
      {
        sub_1D22D6D60(*v32, v33);
      }

      v34 = v8[11];
      v35 = sub_1D2873AA8();
      v36 = *(v35 - 8);
      if (!(*(v36 + 48))(v31 + v34, 1, v35))
      {
        (*(v36 + 8))(v31 + v34, v35);
      }
    }

    v37 = v28[24];
    v38 = type metadata accessor for ImageGenerationPerson.SkinTone();
    v26 = v46;
    if (!(*(*(v38 - 8) + 48))(v27 + v37, 1, v38))
    {
      v39 = sub_1D28737A8();
      (*(*(v39 - 8) + 8))(v27 + v37, v39);
    }

    if (*(v27 + v28[28]))
    {
    }
  }

  v40 = v1[21];
  v41 = sub_1D2871818();
  v42 = *(v41 - 8);
  if (!(*(v42 + 48))(v4 + v40, 1, v41))
  {
    (*(v42 + 8))(v4 + v40, v41);
  }

  v43 = v1[23];
  v44 = sub_1D2872438();
  (*(*(v44 - 8) + 8))(v4 + v43, v44);

  if (*(v49 + v47))
  {
  }

  if (*(v49 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D22786C8()
{
  v1 = type metadata accessor for ImageGeneration.GenerationParameters();
  v42 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v2 = v0 + ((v42 + 40) & ~v42);

  v3 = v1[13];
  v4 = sub_1D2872008();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = (v2 + v1[14]);
  v6 = type metadata accessor for PlaygroundImage();
  v7 = *(*(v6 - 1) + 48);
  if (!v7(v5, 1, v6))
  {

    v8 = v6[8];
    v9 = sub_1D2871818();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
    v10 = (v5 + v6[10]);
    v11 = v10[1];
    if (v11 >> 60 != 15)
    {
      sub_1D22D6D60(*v10, v11);
    }

    v12 = v6[11];
    v13 = sub_1D2873AA8();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

  v15 = (v2 + v1[15]);
  if (!v7(v15, 1, v6))
  {

    v16 = v6[8];
    v17 = sub_1D2871818();
    (*(*(v17 - 8) + 8))(v15 + v16, v17);
    v18 = (v15 + v6[10]);
    v19 = v18[1];
    if (v19 >> 60 != 15)
    {
      sub_1D22D6D60(*v18, v19);
    }

    v20 = v6[11];
    v21 = sub_1D2873AA8();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v15 + v20, 1, v21))
    {
      (*(v22 + 8))(v15 + v20, v21);
    }
  }

  v23 = v2 + v1[16];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8);
  if (!(*(*(v24 - 1) + 48))(v23, 1, v24))
  {
    v25 = sub_1D2871818();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v23, 1, v25))
    {
      (*(v26 + 8))(v23, v25);
    }

    v27 = (v23 + v24[12]);
    if (!v7(v27, 1, v6))
    {

      (*(v26 + 8))(v27 + v6[8], v25);
      v28 = (v27 + v6[10]);
      v29 = v28[1];
      if (v29 >> 60 != 15)
      {
        sub_1D22D6D60(*v28, v29);
      }

      v30 = v6[11];
      v31 = sub_1D2873AA8();
      v32 = *(v31 - 8);
      if (!(*(v32 + 48))(v27 + v30, 1, v31))
      {
        (*(v32 + 8))(v27 + v30, v31);
      }
    }

    v33 = v24[24];
    v34 = type metadata accessor for ImageGenerationPerson.SkinTone();
    if (!(*(*(v34 - 8) + 48))(v23 + v33, 1, v34))
    {
      v35 = sub_1D28737A8();
      (*(*(v35 - 8) + 8))(v23 + v33, v35);
    }

    if (*(v23 + v24[28]))
    {
    }
  }

  v36 = v1[21];
  v37 = sub_1D2871818();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v2 + v36, 1, v37))
  {
    (*(v38 + 8))(v2 + v36, v37);
  }

  v39 = v1[23];
  v40 = sub_1D2872438();
  (*(*(v40 - 8) + 8))(v2 + v39, v40);

  return swift_deallocObject();
}

uint64_t sub_1D2278E14()
{
  v1 = sub_1D28734C8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D2278EE0()
{
  v1 = type metadata accessor for ImageGeneration.GenerationParameters();
  v42 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v2 = v0 + ((v42 + 40) & ~v42);

  v3 = v1[13];
  v4 = sub_1D2872008();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = (v2 + v1[14]);
  v6 = type metadata accessor for PlaygroundImage();
  v7 = *(*(v6 - 1) + 48);
  if (!v7(v5, 1, v6))
  {

    v8 = v6[8];
    v9 = sub_1D2871818();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
    v10 = (v5 + v6[10]);
    v11 = v10[1];
    if (v11 >> 60 != 15)
    {
      sub_1D22D6D60(*v10, v11);
    }

    v12 = v6[11];
    v13 = sub_1D2873AA8();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

  v15 = (v2 + v1[15]);
  if (!v7(v15, 1, v6))
  {

    v16 = v6[8];
    v17 = sub_1D2871818();
    (*(*(v17 - 8) + 8))(v15 + v16, v17);
    v18 = (v15 + v6[10]);
    v19 = v18[1];
    if (v19 >> 60 != 15)
    {
      sub_1D22D6D60(*v18, v19);
    }

    v20 = v6[11];
    v21 = sub_1D2873AA8();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v15 + v20, 1, v21))
    {
      (*(v22 + 8))(v15 + v20, v21);
    }
  }

  v23 = v2 + v1[16];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8);
  if (!(*(*(v24 - 1) + 48))(v23, 1, v24))
  {
    v25 = sub_1D2871818();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v23, 1, v25))
    {
      (*(v26 + 8))(v23, v25);
    }

    v27 = (v23 + v24[12]);
    if (!v7(v27, 1, v6))
    {

      (*(v26 + 8))(v27 + v6[8], v25);
      v28 = (v27 + v6[10]);
      v29 = v28[1];
      if (v29 >> 60 != 15)
      {
        sub_1D22D6D60(*v28, v29);
      }

      v30 = v6[11];
      v31 = sub_1D2873AA8();
      v32 = *(v31 - 8);
      if (!(*(v32 + 48))(v27 + v30, 1, v31))
      {
        (*(v32 + 8))(v27 + v30, v31);
      }
    }

    v33 = v24[24];
    v34 = type metadata accessor for ImageGenerationPerson.SkinTone();
    if (!(*(*(v34 - 8) + 48))(v23 + v33, 1, v34))
    {
      v35 = sub_1D28737A8();
      (*(*(v35 - 8) + 8))(v23 + v33, v35);
    }

    if (*(v23 + v24[28]))
    {
    }
  }

  v36 = v1[21];
  v37 = sub_1D2871818();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v2 + v36, 1, v37))
  {
    (*(v38 + 8))(v2 + v36, v37);
  }

  v39 = v1[23];
  v40 = sub_1D2872438();
  (*(*(v40 - 8) + 8))(v2 + v39, v40);

  return swift_deallocObject();
}

uint64_t sub_1D2279644()
{
  v1 = sub_1D2873068();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D2279718()
{
  v1 = sub_1D2872D38();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for ImageGeneration.GenerationParameters();
  v52 = *(*(v5 - 1) + 80);
  v6 = (v3 + v4 + v52) & ~v52;
  v50 = *(*(v5 - 1) + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;

  v8 = v5[13];
  v9 = sub_1D2872008();
  (*(*(v9 - 8) + 8))(v0 + v6 + v8, v9);
  v10 = (v0 + v6 + v5[14]);
  v11 = type metadata accessor for PlaygroundImage();
  v12 = (*(v11 - 1) + 48);
  v53 = *v12;
  if (!(*v12)(v10, 1, v11))
  {

    v13 = v11[8];
    v14 = sub_1D2871818();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
    v15 = (v10 + v11[10]);
    v16 = v15[1];
    if (v16 >> 60 != 15)
    {
      sub_1D22D6D60(*v15, v16);
    }

    v17 = v11[11];
    v18 = sub_1D2873AA8();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v10 + v17, 1, v18))
    {
      (*(v19 + 8))(v10 + v17, v18);
    }
  }

  v20 = v50 + v6;
  v21 = (v7 + v5[15]);
  if (!v53(v21, 1, v11))
  {

    v22 = v11[8];
    v23 = sub_1D2871818();
    (*(*(v23 - 8) + 8))(v21 + v22, v23);
    v24 = (v21 + v11[10]);
    v25 = v24[1];
    if (v25 >> 60 != 15)
    {
      sub_1D22D6D60(*v24, v25);
    }

    v26 = v11[11];
    v27 = sub_1D2873AA8();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v21 + v26, 1, v27))
    {
      (*(v28 + 8))(v21 + v26, v27);
    }
  }

  v29 = v20 + 7;
  v30 = v7 + v5[16];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA4A8);
  if (!(*(*(v31 - 1) + 48))(v30, 1, v31))
  {
    v51 = v29;
    v32 = sub_1D2871818();
    v33 = *(v32 - 8);
    if (!(*(v33 + 48))(v30, 1, v32))
    {
      (*(v33 + 8))(v30, v32);
    }

    v34 = (v30 + v31[12]);
    if (!v53(v34, 1, v11))
    {

      (*(v33 + 8))(v34 + v11[8], v32);
      v35 = (v34 + v11[10]);
      v36 = v35[1];
      if (v36 >> 60 != 15)
      {
        sub_1D22D6D60(*v35, v36);
      }

      v37 = v11[11];
      v38 = sub_1D2873AA8();
      v39 = *(v38 - 8);
      if (!(*(v39 + 48))(v34 + v37, 1, v38))
      {
        (*(v39 + 8))(v34 + v37, v38);
      }
    }

    v40 = v31[24];
    v41 = type metadata accessor for ImageGenerationPerson.SkinTone();
    v29 = v51;
    if (!(*(*(v41 - 8) + 48))(v30 + v40, 1, v41))
    {
      v42 = sub_1D28737A8();
      (*(*(v42 - 8) + 8))(v30 + v40, v42);
    }

    if (*(v30 + v31[28]))
    {
    }
  }

  v43 = v29 & 0xFFFFFFFFFFFFFFF8;

  v44 = v5[21];
  v45 = sub_1D2871818();
  v46 = *(v45 - 8);
  if (!(*(v46 + 48))(v7 + v44, 1, v45))
  {
    (*(v46 + 8))(v7 + v44, v45);
  }

  v47 = v5[23];
  v48 = sub_1D2872438();
  (*(*(v48 - 8) + 8))(v7 + v47, v48);

  if (*(v0 + v43))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D2279F00()
{

  return swift_deallocObject();
}

uint64_t sub_1D2279F38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D2279F70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5A0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D227A040()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D227A09C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1D2872008();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[13];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[14];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33D0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[16];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[21];
    goto LABEL_13;
  }

  v16 = sub_1D2872438();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[23];

  return v17(v18, a2, v16);
}

uint64_t sub_1D227A2BC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1D2872008();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[13];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E33D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[16];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[21];
    goto LABEL_11;
  }

  v16 = sub_1D2872438();
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[23];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1D227A4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlaygroundImage();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D227A5A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlaygroundImage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1D227A690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D227A71C()
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40);
  v1 = *(v12 - 8);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v2 = *(v1 + 64);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738);
  v3 = *(v11 - 8);
  v4 = (v10 + v2 + *(v3 + 80)) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1D2871818();
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80) + 8) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v10, v12);
  (*(v3 + 8))(v0 + v4, v11);

  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1D227A930()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1D2871818();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 24) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D227AAB0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D227AB00()
{
  v1 = sub_1D2871818();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA738);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D227AC74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA780);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v7 = sub_1D2871818();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  __swift_destroy_boxed_opaque_existential_0(v0 + v6 + v5[8]);

  return swift_deallocObject();
}

uint64_t sub_1D227AE34()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D227AE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D227AEE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D227AF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2872438();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for ImagePredictableOutput.FinalImage(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D227B07C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2872438();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for ImagePredictableOutput.FinalImage(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D227B1AC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DA920);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D227B1DC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D227B220@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1D389DD80]();
  *a1 = result;
  return result;
}

uint64_t sub_1D227B2A4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D2871E48();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D227B350(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D2871E48();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D227B408()
{
  v1 = (type metadata accessor for PickerEditorView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_1D2871E48();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  sub_1D23C6A84(*(v2 + v1[9]), *(v2 + v1[9] + 8));

  return swift_deallocObject();
}

uint64_t sub_1D227B51C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D227B574(uint64_t a1)
{
  sub_1D2870F78();
  sub_1D23CE49C(a1);
}

uint64_t sub_1D227B5D8@<X0>(uint64_t *a1@<X8>)
{
  result = DebugSettings.servicesFetcher.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D227B608@<X0>(uint64_t *a1@<X8>)
{
  result = _s23ImagePlaygroundInternal13DebugSettingsC11contextDaysSivg_0();
  *a1 = result;
  return result;
}

uint64_t sub_1D227B634@<X0>(uint64_t *a1@<X8>)
{
  result = _s23ImagePlaygroundInternal13DebugSettingsC19contextMessageCountSivg_0();
  *a1 = result;
  return result;
}

uint64_t sub_1D227B660@<X0>(_BYTE *a1@<X8>)
{
  result = _s23ImagePlaygroundInternal13DebugSettingsC40shouldEnablePromptRewriteForPersonalizedSbvg_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227B690@<X0>(_BYTE *a1@<X8>)
{
  result = _s23ImagePlaygroundInternal13DebugSettingsC43shouldEnablePromptRewriteForNonPersonalizedSbvg_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227B6C0()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAA88);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D227B70C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAAA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D227B7B8()
{
  v1 = sub_1D2871818();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  sub_1D23C6A84(*(v0 + v4 + 72), *(v0 + v4 + 80));

  return swift_deallocObject();
}

uint64_t sub_1D227B968()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1D2871818();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  sub_1D23C6A84(*(v0 + v8 + 72), *(v0 + v8 + 80));

  return swift_deallocObject();
}

uint64_t sub_1D227BB30()
{
  v1 = sub_1D2871818();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 96) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  sub_1D22D6D60(*(v0 + 32), *(v0 + 40));
  (*(v2 + 8))(v0 + v3, v1);

  sub_1D23C6A84(*(v0 + v4 + 72), *(v0 + v4 + 80));

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D227BE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2871818();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D227BEC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2871818();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D227BF90()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D227BFD0()
{

  return swift_deallocObject();
}

uint64_t sub_1D227C00C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DADD0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D227C0C8()
{

  return swift_deallocObject();
}

__n128 sub_1D227C114(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D227C120@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1D2642160();
  a1[1] = v2;

  return sub_1D2870F68();
}

uint64_t sub_1D227C160(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D263E5A0(v1, v2);
}

uint64_t sub_1D227C1AC()
{

  return swift_deallocObject();
}

uint64_t sub_1D227C1EC()
{

  return swift_deallocObject();
}

uint64_t sub_1D227C29C()
{

  return swift_deallocObject();
}

uint64_t sub_1D227C2D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D227C30C()
{
  v1 = sub_1D28716B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1D2871798();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  sub_1D22D6D60(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D227C470()
{

  return swift_deallocObject();
}

uint64_t sub_1D227C4B0()
{
  v1 = sub_1D28716B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94E0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  sub_1D22D6D60(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D227C60C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D227C6B0()
{
  v1 = type metadata accessor for ImageGenerationOnboardingView(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2874438();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_1D22EE66C(*(v3 + *(v1 + 24)), *(v3 + *(v1 + 24) + 8));

  return swift_deallocObject();
}

uint64_t sub_1D227C830(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D227C8EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_1D227C9B8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D227C9C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAED0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D227CA58()
{

  return swift_deallocObject();
}

id sub_1D227CA90@<X0>(void *a1@<X8>)
{
  result = _SystemPhotoLibrary.photoLibrary.getter();
  *a1 = result;
  return result;
}

void sub_1D227CABC(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  *(*a2 + 16) = *a1;
  v4 = v2;

  sub_1D23F6344(v3);
}

double sub_1D227CB94@<D0>(_OWORD *a1@<X8>)
{
  sub_1D2403360();
  sub_1D2875638();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1D227CBE8@<X0>(uint64_t a1@<X8>)
{
  sub_1D240330C();
  result = sub_1D2875638();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1D227CC94@<X0>(_BYTE *a1@<X8>)
{
  sub_1D24032B8();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t sub_1D227CD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D24034DC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D227CE90()
{
  type metadata accessor for PeoplePickerSheetViewModifier();
  sub_1D2874F68();
  sub_1D240321C(&qword_1EC6DAED8, type metadata accessor for PeoplePickerSheetViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1D227CFD4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D2872008();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[8];
      goto LABEL_3;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[9];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
    if (*(*(v15 - 8) + 84) == a2)
    {
      v7 = v15;
      v8 = *(v15 - 8);
      v9 = a3[18];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[20];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1D227D208(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D2872008();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2E0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF28);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[18];
    goto LABEL_3;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + a4[20];

  return v17(v18, a2, a2, v16);
}

double sub_1D227D494@<D0>(_OWORD *a1@<X8>)
{
  sub_1D24016E8();
  sub_1D2875638();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = *v7;
  *(a1 + 73) = *&v7[9];
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D227D560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8FA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D227D674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D227D6EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D28755A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227D798()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D8F18);
  sub_1D22BB9D8(&qword_1EC6D8F20, &qword_1EC6D8F10);
  sub_1D22BAB44();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D227D8B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D227D908@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D227DAC0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D227D934@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D227DAE8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D227D960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 120);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D2871818();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 100);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D227DA0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 120) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D2871818();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 100);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D227DAC0(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x5040302010006uLL >> (8 * a1));
  }
}

uint64_t sub_1D227DAE8(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

uint64_t sub_1D227DB14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB258);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D227DBD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB258);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D227DCA4()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI18LocalizedStringKeyVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D227DD14()
{

  return swift_deallocObject();
}

uint64_t sub_1D227DD5C()
{

  return swift_deallocObject();
}

uint64_t sub_1D227DDA0()
{
  v1 = sub_1D28716B8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D227DE38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D227DEA0()
{
  type metadata accessor for VisionOSBrightenOnPressWithShape();
  swift_getWitnessTable();
  sub_1D2875D08();

  return swift_getWitnessTable();
}

uint64_t sub_1D227DF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB5D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D227E004(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB5D8);
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

uint64_t sub_1D227E110()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DB5E0);
  sub_1D2874F68();
  sub_1D22BB9D8(&qword_1ED89D340, &qword_1EC6DB5E0);
  return swift_getWitnessTable();
}

uint64_t sub_1D227E1BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D2871818();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D227E268(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D2871818();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1D227E310@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D23CCEF8();
  *a1 = result;
  return result;
}

uint64_t sub_1D227E33C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CDCA0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227E428@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D23CE688();
  *a1 = result;
  return result;
}

uint64_t sub_1D227E4A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23D07F0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227E5BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23D0268();
  *a1 = result & 1;
  return result;
}

id sub_1D227E680@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CC070();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227E6E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CD504();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227E710@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CD60C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227E740@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CD3FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227E778@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CF554();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227E7A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23D0160();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227E7D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CD2F4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227E808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CD1EC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227E838@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CCFDC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227E868@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D23D0054();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1D227E894@<X0>(void *a1@<X8>)
{
  result = sub_1D23CD9F8();
  *a1 = result;
  return result;
}

id sub_1D227E8C0@<X0>(void *a1@<X8>)
{
  result = sub_1D23CD888();
  *a1 = result;
  return result;
}

uint64_t sub_1D227E98C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CF870();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227E9BC@<X0>(_BYTE *a1@<X8>)
{
  if (sub_1D23CCDF0())
  {
    result = 1;
  }

  else
  {
    result = sub_1D23CD0E4();
  }

  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227EA08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CCDF0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227EA38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CD0E4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227EA70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CF768();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227EAA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D23CCC6C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1D227EAD0()
{
  sub_1D2870F68();

  sub_1D23CF2B4();
}

uint64_t sub_1D227EB28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CD714();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227EB74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D227EBAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D23CDB68();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227EC28()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D227EC60()
{

  return swift_deallocObject();
}

__n128 sub_1D227ECD8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

void sub_1D227ECF0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D277DED8(v1);
}

uint64_t sub_1D227ED20()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D227ED7C()
{
  v1 = sub_1D2872008();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D227EE64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D245F240(v1, v2);
}

uint64_t sub_1D227EEDC()
{

  return swift_deallocObject();
}

uint64_t sub_1D227EF60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D227EFC8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBCA8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D227F104(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBCA8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D227F25C()
{
  v1 = sub_1D2875008();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D227F2E4()
{
  v1 = sub_1D2874578();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1D2875008();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D227F43C()
{
  v1 = type metadata accessor for ImageConditioningPickerView(0);
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;

  sub_1D2273818(*(v3 + 64), *(v3 + 72));

  j__swift_release();

  sub_1D2273818(*(v3 + 128), *(v3 + 136));
  sub_1D2273818(*(v3 + 144), *(v3 + 152));
  v4 = v0 + v2 + v1[14];
  v5 = sub_1D2875FD8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBCA8);
  if (*(v4 + *(v7 + 36) + 8))
  {
  }

  if (*(v4 + *(v7 + 44) + 8))
  {
  }

  v8 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D2875E18();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v3 + v1[16]), *(v3 + v1[16] + 8));

  return swift_deallocObject();
}

uint64_t sub_1D227F798()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D227F7D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D227F890(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D227F944@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D2875528();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D227F97C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[11];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_1D227FB0C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1D227FC9C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DBEE0);
  sub_1D22BB9D8(&qword_1ED89D0E8, &qword_1EC6DBEE0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D227FD34()
{
  v1 = type metadata accessor for SectionRow(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  if (*(v2 + 8))
  {
  }

  sub_1D2273818(*(v2 + 72), *(v2 + 80));
  sub_1D2273818(*(v2 + 88), *(v2 + 96));
  j__swift_release();
  v3 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2875E18();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v2 + v1[12]), *(v2 + v1[12] + 8));
  v6 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1D2874438();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  v8 = v1[14];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  (*(*(v9 - 8) + 8))(v2 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_1D227FFD0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D228008C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D228013C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Bubble(0);
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

uint64_t sub_1D22801FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Bubble(0);
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

uint64_t sub_1D22802BC()
{
  v1 = (type metadata accessor for AllEmojiButton(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_1D2273818(*(v2 + 8), *(v2 + 16));
  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2874438();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D2280408()
{
  v1 = *(type metadata accessor for Bubble(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  type metadata accessor for Bubble.BubbleType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {

        v76 = *(type metadata accessor for Prompt(0) + 36);
        v77 = sub_1D2871798();
        (*(*(v77 - 8) + 8))(v3 + v76, v77);
        goto LABEL_64;
      }

      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_15;
      }

      v41 = type metadata accessor for PhotosPersonAsset();
      if (!(*(*(v41 - 8) + 48))(v0 + v2, 1, v41))
      {

        if (*(v3 + 32))
        {
        }

        v42 = v3 + *(v41 + 20);

        v43 = (v42 + *(type metadata accessor for PhotosPersonImage() + 24));

        v44 = type metadata accessor for PlaygroundImage();
        v45 = v44[8];
        v46 = sub_1D2871818();
        (*(*(v46 - 8) + 8))(v43 + v45, v46);
        v47 = (v43 + v44[10]);
        v48 = v47[1];
        if (v48 >> 60 != 15)
        {
          sub_1D22D6D60(*v47, v48);
        }

        v49 = v44[11];
        v50 = sub_1D2873AA8();
        v51 = *(v50 - 8);
        if (!(*(v51 + 48))(v43 + v49, 1, v50))
        {
          (*(v51 + 8))(v43 + v49, v50);
        }
      }

      v5 = *(type metadata accessor for PersonConditioningImage() + 20);
      goto LABEL_45;
    }

    if (EnumCaseMultiPayload == 8)
    {
LABEL_15:

      v6 = type metadata accessor for PlaygroundImage();
      v7 = v6[8];
      v8 = sub_1D2871818();
      (*(*(v8 - 8) + 8))(v3 + v7, v8);
      v9 = (v3 + v6[10]);
      v10 = v9[1];
      if (v10 >> 60 != 15)
      {
        sub_1D22D6D60(*v9, v10);
      }

      v11 = v6[11];
      v12 = sub_1D2873AA8();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(v3 + v11, 1, v12))
      {
        (*(v13 + 8))(v3 + v11, v12);
      }

      goto LABEL_64;
    }

    if (EnumCaseMultiPayload != 9)
    {
      if (EnumCaseMultiPayload != 10)
      {
        goto LABEL_64;
      }

      goto LABEL_15;
    }

LABEL_62:

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v24 = sub_1D2872008();
      (*(*(v24 - 8) + 8))(v0 + v2, v24);
      goto LABEL_64;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_64;
    }

    v14 = type metadata accessor for CuratedPrompt();
    v15 = (v3 + v14[8]);
    v16 = type metadata accessor for PlaygroundImage();
    v17 = *(*(v16 - 1) + 48);
    if (v17(v15, 1, v16))
    {
      goto LABEL_55;
    }

    v18 = v16[8];
    v19 = sub_1D2871818();
    (*(*(v19 - 8) + 8))(v15 + v18, v19);
    v20 = (v15 + v16[10]);
    v21 = v20[1];
    if (v21 >> 60 != 15)
    {
      sub_1D22D6D60(*v20, v21);
    }

    v22 = v16[11];
    v23 = sub_1D2873AA8();
    v80 = *(v23 - 8);
    v82 = v22;
    if ((*(v80 + 48))(v15 + v22, 1, v23))
    {
      goto LABEL_55;
    }

LABEL_54:
    (*(v80 + 8))(v15 + v82, v23);
LABEL_55:
    v66 = (v3 + v14[9]);
    if (!v17(v66, 1, v16))
    {

      v67 = v16[8];
      v68 = sub_1D2871818();
      (*(*(v68 - 8) + 8))(v66 + v67, v68);
      v69 = (v66 + v16[10]);
      v70 = v69[1];
      if (v70 >> 60 != 15)
      {
        sub_1D22D6D60(*v69, v70);
      }

      v71 = v16[11];
      v72 = sub_1D2873AA8();
      v73 = *(v72 - 8);
      if (!(*(v73 + 48))(v66 + v71, 1, v72))
      {
        (*(v73 + 8))(v66 + v71, v72);
      }
    }

    v74 = v3 + v14[23];
    v75 = *(v74 + 48);
    if (v75 != 255)
    {
      sub_1D23B7DA0(*v74, *(v74 + 8), *(v74 + 16), *(v74 + 24), *(v74 + 32), *(v74 + 40), v75 & 1);
    }

    goto LABEL_62;
  }

  if (EnumCaseMultiPayload == 2)
  {

    v14 = type metadata accessor for CuratedPrompt();
    v15 = (v3 + v14[8]);
    v16 = type metadata accessor for PlaygroundImage();
    v17 = *(*(v16 - 1) + 48);
    if (v17(v15, 1, v16))
    {
      goto LABEL_55;
    }

    v61 = v16[8];
    v62 = sub_1D2871818();
    (*(*(v62 - 8) + 8))(v15 + v61, v62);
    v63 = (v15 + v16[10]);
    v64 = v63[1];
    if (v64 >> 60 != 15)
    {
      sub_1D22D6D60(*v63, v64);
    }

    v65 = v16[11];
    v23 = sub_1D2873AA8();
    v80 = *(v23 - 8);
    v82 = v65;
    if ((*(v80 + 48))(v15 + v65, 1, v23))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (EnumCaseMultiPayload != 3)
  {

    if (*(v3 + 32))
    {
    }

    v3 += *(type metadata accessor for PhotosPersonAsset() + 20);

    v5 = *(type metadata accessor for PhotosPersonImage() + 24);
LABEL_45:
    v52 = v3 + v5;

    v53 = type metadata accessor for PlaygroundImage();
    v54 = v53[8];
    v55 = sub_1D2871818();
    (*(*(v55 - 8) + 8))(v52 + v54, v55);
    v56 = (v52 + v53[10]);
    v57 = v56[1];
    if (v57 >> 60 != 15)
    {
      sub_1D22D6D60(*v56, v57);
    }

    v58 = v53[11];
    v59 = sub_1D2873AA8();
    v60 = *(v59 - 8);
    if (!(*(v60 + 48))(v52 + v58, 1, v59))
    {
      (*(v60 + 8))(v52 + v58, v59);
    }

    goto LABEL_64;
  }

  v25 = type metadata accessor for PlaygroundImage();
  v26 = v25[8];
  v27 = sub_1D2871818();
  v83 = *(*(v27 - 8) + 8);
  v83(v3 + v26, v27);
  v28 = (v3 + v25[10]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_1D22D6D60(*v28, v29);
  }

  v30 = v25[11];
  v31 = sub_1D2873AA8();
  v32 = *(v31 - 8);
  v81 = *(v32 + 48);
  if (!v81(v3 + v30, 1, v31))
  {
    (*(v32 + 8))(v3 + v30, v31);
  }

  v79 = v32;
  v33 = type metadata accessor for CharacterAsset();
  v34 = (v3 + *(v33 + 20));
  if (!(*(*(v25 - 1) + 48))(v34, 1, v25))
  {

    v83(v34 + v25[8], v27);
    v35 = (v34 + v25[10]);
    v36 = v35[1];
    if (v36 >> 60 != 15)
    {
      sub_1D22D6D60(*v35, v36);
    }

    v37 = v25[11];
    if (!v81(v34 + v37, 1, v31))
    {
      (*(v79 + 8))(v34 + v37, v31);
    }
  }

  v38 = *(v33 + 24);
  v39 = v38 + *(type metadata accessor for CharacterRecipe() + 20);
  v40 = sub_1D28737A8();
  (*(*(v40 - 8) + 8))(v3 + v39, v40);
LABEL_64:

  return swift_deallocObject();
}

uint64_t sub_1D2281154()
{

  return swift_deallocObject();
}

uint64_t sub_1D2281194()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D22812DC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFD8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_1D228146C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFD8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1D2281760(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D2486380(v1, v2);
}

uint64_t sub_1D2281ADC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 <= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 3;
    if (v4 >= 3)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1D2281B9C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2281C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D28737A8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D2281CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D28737A8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D2281D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlaygroundImage();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D2281DEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlaygroundImage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1D2281EA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D2872008();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2281F50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D2872008();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2281FF4()
{
  v1 = (type metadata accessor for GeneratedPreviewOptions(0) - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v4 = v1[7];
  v5 = sub_1D2872008();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1D2282128()
{
  v1 = sub_1D28716B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D22821EC()
{
  v1 = sub_1D28716B8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D2282274()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D22822AC()
{
  v1 = (type metadata accessor for GeneratedPreviewOptions(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC1E0);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);

  v7 = v1[7];
  v8 = sub_1D2872008();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1D228244C()
{

  return swift_deallocObject();
}

uint64_t sub_1D228248C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC2F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D22825C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC2F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D228270C()
{
  v1 = (type metadata accessor for FacePickerGridView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for PhotosPersonAsset();
  v5 = (v2 + v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = v0 + v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC2F0);
  (*(*(v7 - 8) + 8))(v6, v7);

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D2875E18();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v0 + v5;

  if (*(v0 + v5 + 32))
  {
  }

  v12 = v11 + *(v4 + 20);

  v13 = (v12 + *(type metadata accessor for PhotosPersonImage() + 24));

  v14 = type metadata accessor for PlaygroundImage();
  v15 = v14[8];
  v16 = sub_1D2871818();
  (*(*(v16 - 8) + 8))(v13 + v15, v16);
  v17 = (v13 + v14[10]);
  v18 = v17[1];
  if (v18 >> 60 != 15)
  {
    sub_1D22D6D60(*v17, v18);
  }

  v19 = v14[11];
  v20 = sub_1D2873AA8();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v13 + v19, 1, v20))
  {
    (*(v21 + 8))(v13 + v19, v20);
  }

  return swift_deallocObject();
}

uint64_t sub_1D2282A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2282B60()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D2282B98()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2282BDC(__int128 *a1)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  sub_1D22D63B0(v6, &v5);
  return sub_1D24A15F8(a1);
}

uint64_t sub_1D2282CA0()
{

  return swift_deallocObject();
}

uint64_t sub_1D2282CD8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D2282D10()
{

  return swift_deallocObject();
}

uint64_t sub_1D2282DC4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2282E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D2282EE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2282F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 16) >> 1) > 0x80000000)
    {
      return -(*(a1 + 16) >> 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v8 = *(*(v7 - 8) + 48);
    v9 = a1 + *(a3 + 28);

    return v8(v9, a2, v7);
  }
}

void *sub_1D2283058(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = 0;
    result[1] = 0;
    result[2] = 2 * -a2;
    result[3] = 0;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2283130()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA240);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860);
  sub_1D23421B0();
  sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2283204()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC5A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC5B0);
  sub_1D24B2268();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC5B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC5C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DBEA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DBEB0);
  sub_1D2875288();
  sub_1D24B22CC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D22833C4()
{
  v1 = sub_1D28719B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

__n128 sub_1D22834F0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D2283504()
{

  return swift_deallocObject();
}

uint64_t sub_1D228354C()
{

  return swift_deallocObject();
}

uint64_t sub_1D2283594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2872008();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

  else
  {
    v12 = sub_1D28714E8();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1D22836C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2872008();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_1D28714E8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D22837F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2872008();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D22838B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2872008();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D228396C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotoSharingConfirmationParams(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for PhotoSharingViewConfiguration(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D2283A5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PhotoSharingConfirmationParams(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PhotoSharingViewConfiguration(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D2283B58()
{
  v1 = type metadata accessor for PhotoSharingConfirmationViewModifier(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = sub_1D2872008();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for PhotoSharingConfirmationParams(0);

  if (*(v2 + *(v5 + 40)))
  {
  }

  v6 = v2 + *(v1 + 20);
  v4(v6, v3);
  v7 = type metadata accessor for PhotoSharingViewConfiguration(0);

  v8 = *(v7 + 32);
  v9 = sub_1D28714E8();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_1D2283D2C()
{

  return swift_deallocObject();
}

uint64_t sub_1D2283D64()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC610);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC618);
  sub_1D22BB9D8(&qword_1ED89D440, &qword_1EC6DC610);
  sub_1D22BB9D8(&qword_1ED89D018, &qword_1EC6DC618);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2283E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2875008();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D2283F34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2875008();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D2283FEC()
{
  v1 = *(type metadata accessor for HorizontalScrollViewRealignment() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1D2875008();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1D22840B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC638);
  sub_1D24BAC04();
  sub_1D2403664();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2284134()
{
  v1 = sub_1D2875008();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D22841BC()
{
  v1 = sub_1D2874578();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1D2875008();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D2284308()
{
  type metadata accessor for PagingContentView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1D2874398();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeConformance2();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CGPoint(255);
  swift_getOpaqueTypeConformance2();
  sub_1D24BE2F4(&qword_1EC6DC640, type metadata accessor for CGPoint);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1D28760A8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1D28751A8();
  sub_1D2876248();
  sub_1D2874F68();
  swift_getWitnessTable();
  sub_1D24BE2F4(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
  return swift_getWitnessTable();
}

uint64_t sub_1D22847B4()
{
  sub_1D2874F68();
  sub_1D23D49DC();
  return swift_getWitnessTable();
}

uint64_t sub_1D2284818()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC658);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D2284900()
{

  return swift_deallocObject();
}

uint64_t sub_1D2284944(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_1D2284A00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2284AB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D2284B08()
{
  v1 = type metadata accessor for GridPickerView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 24))
  {
  }

  if (*(v2 + 48))
  {
  }

  if (*(v2 + 64))
  {
  }

  if (*(v2 + 120))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 96);
  }

  sub_1D22EE66C(*(v2 + 136), *(v2 + 144));
  v3 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2872008();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D2284D0C()
{
  v1 = type metadata accessor for GridPickerView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  if (*(v0 + v2 + 24))
  {
  }

  if (*(v3 + 48))
  {
  }

  if (*(v3 + 64))
  {
  }

  if (*(v3 + 120))
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 96);
  }

  sub_1D22EE66C(*(v3 + 136), *(v3 + 144));
  v4 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2872008();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D2284EF8()
{
  v1 = type metadata accessor for GridPickerView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;

  if (*(v0 + v2 + 24))
  {
  }

  if (*(v4 + 48))
  {
  }

  if (*(v4 + 64))
  {
  }

  if (*(v4 + 120))
  {
    __swift_destroy_boxed_opaque_existential_0(v4 + 96);
  }

  sub_1D22EE66C(*(v4 + 136), *(v4 + 144));
  v5 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1D2872008();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v4 + v5, 1, v6))
    {
      (*(v7 + 8))(v4 + v5, v6);
    }
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1D2285104@<X0>(_BYTE *a1@<X8>)
{
  sub_1D245CA04();
  result = sub_1D28749B8();
  *a1 = v3;
  return result;
}

uint64_t sub_1D22851A0()
{
  v1 = *(v0 + 16);
  sub_1D2878F18();
  v2 = (sub_1D2877538() - 8);
  v3 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);

  v4 = v2[10];
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v0 + v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v0 + v3 + v4, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D22852E4(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for LoadingPageControlView.ViewModel();
  v6 = sub_1D2874368();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    sub_1D2878F18();
    v13 = sub_1D2877538();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[10];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[12];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D2285488(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for LoadingPageControlView.ViewModel();
  result = sub_1D2874368();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
    return result;
  }

  sub_1D2878F18();
  v13 = sub_1D2877538();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AD0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D228563C()
{
  sub_1D28784C8();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC6F8);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1D2877598();
  swift_getTupleTypeMetadata3();
  sub_1D2877A58();
  swift_getWitnessTable();
  sub_1D28773C8();
  sub_1D2874F68();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  sub_1D2875878();
  sub_1D2874F68();
  sub_1D2874F68();
  sub_1D2874F68();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1D2878F18();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1D2878F18();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1D2876248();
  sub_1D2874F68();
  swift_getOpaqueTypeConformance2();
  sub_1D24CA53C(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
  return swift_getWitnessTable();
}

__n128 sub_1D2285C50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D2285C5C()
{
  swift_unknownObjectRelease();

  j__swift_release();

  return swift_deallocObject();
}

uint64_t sub_1D2285CB8()
{

  j__swift_release();

  return swift_deallocObject();
}

uint64_t sub_1D2285D0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC700);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2285D84@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1D24C8EE8();

  return sub_1D2870F68();
}

uint64_t sub_1D2285E1C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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

  v9 = sub_1D28762C8();
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[6];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFA8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[7];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_1D2285FAC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
    return result;
  }

  v8 = sub_1D28762C8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAFA8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1D2286130()
{
  sub_1D2874CD8();
  sub_1D2874F68();
  swift_getWitnessTable();
  sub_1D2874398();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1D2874F88();
  sub_1D2875B08();
  sub_1D2877178();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1D2875B08();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1D2875B08();
  sub_1D2874F68();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D22865FC()
{
  type metadata accessor for IOSHoverEffect();
  swift_getWitnessTable();
  sub_1D2875D08();
  sub_1D2876048();
  sub_1D2874F68();
  sub_1D2874518();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D24D1364();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  sub_1D2875B08();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1D22867DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D2286838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC828);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D22868A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC828);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D228691C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC868);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC850);
  sub_1D24D5648();
  sub_1D22BB9D8(&qword_1EC6D75B0, &qword_1EC6DC850);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D22869E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D2286A74()
{

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D2286B0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2286B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D2286C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D2286CD0(uint64_t *a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[19];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBF0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[20];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBF8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[21];

  return v15(v16, a2, v14);
}

char *sub_1D2286E60(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[19];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBF0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[20];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBF8);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[21]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1D2286FF4()
{

  return swift_deallocObject();
}

uint64_t sub_1D228702C()
{
  sub_1D28784C8();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCC08);
  sub_1D2875B08();
  sub_1D2877178();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1D2877598();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D2874318();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1D2874388();
  swift_getOpaqueTypeConformance2();
  sub_1D24F95CC(&qword_1ED89E0A8, MEMORY[0x1E697BE48]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D22872F4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ImageGeneration.PreviewImage(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D22873A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ImageGeneration.PreviewImage(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D22874FC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D22875B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2287668()
{
  MEMORY[0x1D38A3650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D22876FC()
{

  return swift_deallocObject();
}

uint64_t sub_1D2287754()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE38);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D2287784()
{

  return swift_deallocObject();
}

uint64_t sub_1D22877BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D94B0);
  v1 = sub_1D2878528();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D228786C()
{

  return swift_deallocObject();
}

uint64_t sub_1D22878A4()
{

  return swift_deallocObject();
}

uint64_t sub_1D22878DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D228792C()
{

  return swift_deallocObject();
}

uint64_t sub_1D2287964()
{
  MEMORY[0x1D38A3650](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D228799C()
{

  return swift_deallocObject();
}

uint64_t sub_1D22879E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE48);
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

uint64_t sub_1D2287AB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE48);
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

uint64_t sub_1D2287B74()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCE40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE550);
  sub_1D250C440(&qword_1EC6DCE58, &qword_1EC6DCE40, &unk_1D288F6E0, sub_1D250C410);
  sub_1D22BB9D8(qword_1ED8A4DB0, &unk_1EC6DE550);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2287C64()
{
  v1 = type metadata accessor for PhotoAssetView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = (v0 + v2);
  v4 = type metadata accessor for PlaygroundImage();
  if (!(*(*(v4 - 1) + 48))(v0 + v2, 1, v4))
  {

    v5 = v4[8];
    v6 = sub_1D2871818();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
    v7 = (v3 + v4[10]);
    v8 = v7[1];
    if (v8 >> 60 != 15)
    {
      sub_1D22D6D60(*v7, v8);
    }

    v9 = v4[11];
    v10 = sub_1D2873AA8();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v3 + v9, 1, v10))
    {
      (*(v11 + 8))(v3 + v9, v10);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE48);

  v12 = v3 + *(v1 + 40);
  if (*(v12 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return swift_deallocObject();
}

__n128 sub_1D2287EE4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D2287EF0()
{

  return swift_deallocObject();
}

uint64_t sub_1D2287F84(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1D2288040(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAEC8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D22880F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1D2871DD8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 72);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D2288224(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1D2871DD8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 72);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D22883B8()
{
  v1 = (type metadata accessor for PreviewsView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  (*(*(v3 - 8) + 8))(v2, v3);

  sub_1D22EE66C(*(v2 + v1[11]), *(v2 + v1[11] + 8));

  v4 = v1[20];
  v5 = sub_1D2871DD8();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1D22885BC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD030) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[10];
  v4 = type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = sub_1D2871818();
    (*(*(v5 - 8) + 8))(v3, v5);
    v6 = *(v4 + 20);
    v7 = sub_1D28785F8();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  return swift_deallocObject();
}

__n128 sub_1D2288798(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D2288818()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D2288850()
{

  return swift_deallocObject();
}

uint64_t sub_1D22888A0()
{
  v1 = (type metadata accessor for PreviewsView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  sub_1D22EE66C(*(v0 + v2 + v1[11]), *(v0 + v2 + v1[11] + 8));

  v7 = v1[20];
  v8 = sub_1D2871DD8();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  v9 = sub_1D2871818();
  (*(*(v9 - 8) + 8))(v0 + v5, v9);
  __swift_destroy_boxed_opaque_existential_0(v0 + v5 + v4[8]);

  return swift_deallocObject();
}

uint64_t sub_1D2288B54()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DCFC8);
  sub_1D25177D8();
  sub_1D22EBCFC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2288C1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2288CD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2288D9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2288E34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D28755A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D2288E8C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D28755C8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D2288EF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D28753C8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D2288F48@<X0>(void *a1@<X8>)
{
  result = sub_1D2875468();
  *a1 = v3;
  return result;
}

uint64_t sub_1D2288FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD278);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D2289028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD278);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D22890B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D22891E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D2289320()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD200);
  sub_1D2875FB8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD1F8);
  sub_1D2521BAC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2289468()
{

  return swift_deallocObject();
}

uint64_t sub_1D22894B8()
{
  v1 = sub_1D2872008();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D2289594()
{
  v1 = sub_1D2872008();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D2289688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D28785F8();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D22896F4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D28785F8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D2289774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
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

uint64_t sub_1D2289840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
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

uint64_t sub_1D2289910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2289978()
{
  v1 = *(type metadata accessor for ActionablePill() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1D2875E18();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v0 + v2, 1, v3))
    {
      (*(v4 + 8))(v0 + v2, v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D2289B04()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DD488);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860);
  sub_1D2529518();
  sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2289BC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFD8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D2289D04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFD8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D2289E40()
{
  v1 = type metadata accessor for GridPickerItemView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  __swift_destroy_boxed_opaque_existential_0(v2);

  sub_1D2273818(*(v2 + 72), *(v2 + 80));
  sub_1D2273818(*(v2 + 88), *(v2 + 96));
  v3 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBE98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2874E88();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 56);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1D228A028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotosPersonAsset();
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

uint64_t sub_1D228A0E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PhotosPersonAsset();
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

uint64_t sub_1D228A1A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CarouselFace();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[13]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D228A2C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CarouselFace();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[13]) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1D228A4C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D228A504@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2870E28();
  *a1 = result;
  return result;
}

uint64_t sub_1D228A530@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2870E28();
  *a1 = result;
  return result;
}

uint64_t sub_1D228A55C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2870E28();
  *a1 = result;
  return result;
}

uint64_t sub_1D228A588@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2870E28();
  *a1 = result;
  return result;
}

uint64_t sub_1D228A5B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD938);
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
      v14 = type metadata accessor for ImagePlaygroundStyleEntity();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D228A6F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD938);
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
      v13 = type metadata accessor for ImagePlaygroundStyleEntity();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D228A8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2871818();
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

uint64_t sub_1D228A97C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2871818();
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

uint64_t sub_1D228AA78()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D228AAB8()
{
  v1 = type metadata accessor for ImageGenerationPerson();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = type metadata accessor for ImageGenerationPerson.DemographicTraits();
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    v5 = *(v4 + 20);
    v6 = type metadata accessor for ImageGenerationPerson.SkinTone();
    if (!(*(*(v6 - 8) + 48))(v3 + v5, 1, v6))
    {
      v7 = sub_1D28737A8();
      (*(*(v7 - 8) + 8))(v3 + v5, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D228ACDC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D228AD14()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D228AD58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D2547B58(v1, v2);
}

uint64_t sub_1D228ADC0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D228AE10(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D228AECC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D228AF88(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6A8);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D228B0C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6A8);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D228B218(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D228B2A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D2548390(v1, v2);
}

uint64_t sub_1D228B300()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D228B45C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDD70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 120) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1D228B790()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D228B828()
{
  v1 = type metadata accessor for PlaygroundImage();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;

  v4 = v1[8];
  v5 = sub_1D2871818();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = (v0 + v2 + v1[10]);
  v7 = v6[1];
  if (v7 >> 60 != 15)
  {
    sub_1D22D6D60(*v6, v7);
  }

  v8 = v1[11];
  v9 = sub_1D2873AA8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1D228BA24@<X0>(uint64_t *a1@<X8>)
{
  result = PlaygroundHomeViewModel.photoGridViewModel.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D228BA50(void *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
  sub_1D2870F78();
}

uint64_t sub_1D228BB34()
{

  return swift_deallocObject();
}

uint64_t sub_1D228BBA4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE50) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_1D2871CA8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1D228BD18()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D228BDAC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D228BE20()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D228BE60()
{

  return swift_deallocObject();
}

uint64_t sub_1D228BE98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5A0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D228BFCC()
{
  v1 = *(type metadata accessor for ComposingViewModel.AvailabilityStatus(0) - 8);
  v2 = (*(v1 + 80) + 81) & ~*(v1 + 80);

  sub_1D22EE66C(*(v0 + 40), *(v0 + 48));

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v4 = sub_1D28727F8();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_6;
    }

    v4 = sub_1D2872858();
  }

  (*(*(v4 - 8) + 8))(v0 + v2, v4);
LABEL_6:

  return swift_deallocObject();
}

uint64_t sub_1D228C124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDED8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D228C194()
{

  return swift_deallocObject();
}

uint64_t sub_1D228C1CC()
{
  v1 = sub_1D28716B8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D228C268@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D28754C8();
  *a1 = result;
  return result;
}

uint64_t sub_1D228C410()
{

  return swift_deallocObject();
}

uint64_t sub_1D228C478()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

__n128 sub_1D228C4D8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1D228C55C@<Q0>(uint64_t a1@<X8>)
{
  sub_1D2587C8C();
  sub_1D28749B8();
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1D228C5D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE8);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[8];
      goto LABEL_3;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[11];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB8);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[13];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D228C7BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB8);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[13];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D228CA9C()
{
  v1 = sub_1D2874578();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1D2875008();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D228CC2C()
{

  return swift_deallocObject();
}

uint64_t sub_1D228CC64()
{

  return swift_deallocObject();
}

__n128 sub_1D228CCF8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D228CD44()
{
  v1 = type metadata accessor for PhotoGridView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = v1[5];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1D2874EA8();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  sub_1D22EE66C(*(v3 + v1[10]), *(v3 + v1[10] + 8));
  v8 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D2875E18();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1D2875D78();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D228D05C()
{
  v1 = type metadata accessor for PhotoGridView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = v1[5];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1D2874EA8();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  sub_1D22EE66C(*(v3 + v1[10]), *(v3 + v1[10] + 8));
  v8 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D2875E18();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1D2875D78();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D228D360()
{
  v1 = type metadata accessor for PhotoGridView();
  v2 = (*(*(v1 - 1) + 80) + 33) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  v4 = v1[5];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFB0);
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1D2874EA8();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  sub_1D22EE66C(*(v3 + v1[10]), *(v3 + v1[10] + 8));
  v8 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D2875E18();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDFD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1D2875D78();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D228D678()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D228D6F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDFD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDFE0);
  sub_1D22BB9D8(&qword_1EC6D7958, &qword_1EC6DDFD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDFE8);
  sub_1D258D5C8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D228D888@<X0>(_BYTE *a1@<X8>)
{
  sub_1D25940B8();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t sub_1D228D938(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D228D9F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D228DAF4()
{

  sub_1D23C6A84(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1D228DBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D228DC80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D228DD6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D228DDB8()
{

  return swift_deallocObject();
}

uint64_t sub_1D228DDF8()
{
  v1 = (type metadata accessor for MagicPaperPreviewsView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  (*(*(v3 - 8) + 8))(v2, v3);

  sub_1D22EE66C(*(v2 + v1[8]), *(v2 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t sub_1D228DF94()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD030) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[10];
  v4 = type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = sub_1D2871818();
    (*(*(v5 - 8) + 8))(v3, v5);
    v6 = *(v4 + 20);
    v7 = sub_1D28785F8();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D228E16C()
{
  v1 = (type metadata accessor for MagicPaperPreviewsView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCF90);
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  sub_1D22EE66C(*(v0 + v2 + v1[8]), *(v0 + v2 + v1[8] + 8));

  v7 = sub_1D2871818();
  (*(*(v7 - 8) + 8))(v0 + v5, v7);
  __swift_destroy_boxed_opaque_existential_0(v0 + v5 + v4[8]);

  return swift_deallocObject();
}

uint64_t sub_1D228E3B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE2A0);
  sub_1D259CC54(&qword_1EC6DE2F8, &qword_1EC6DE2A0, &unk_1D2895798, sub_1D259CCD8);
  sub_1D22EBCFC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D228E4A0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_1D228E524(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D228E530()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE78);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D228E5C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D228E60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE48);
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

uint64_t sub_1D228E6D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCE48);
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

uint64_t sub_1D228E79C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE5C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D228E80C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE5C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D228E940()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1D2872438();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D228EE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2871818();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for LoadingPageControlIndicatorStyle();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D228EF1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D2871818();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for LoadingPageControlIndicatorStyle();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D228F0F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D228F12C()
{

  return swift_deallocObject();
}

uint64_t sub_1D228F16C()
{

  return swift_deallocObject();
}

uint64_t sub_1D228F1D0@<X0>(void *a1@<X8>)
{
  sub_1D2459778();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t sub_1D228F224@<X0>(_BYTE *a1@<X8>)
{
  sub_1D25CD71C();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t sub_1D228F2C4()
{
  v1 = sub_1D2871818();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D228F388(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D228F4C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D228F604()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE748);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D228F724()
{
  v1 = type metadata accessor for PlaygroundHomeView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2875E18();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v6 = v1[8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
  v8 = *(*(v7 - 8) + 8);
  v8(v2 + v6, v7);

  sub_1D22EE66C(*(v2 + v1[10]), *(v2 + v1[10] + 8));

  v8(v2 + v1[12], v7);

  return swift_deallocObject();
}

uint64_t sub_1D228F958()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D228F9F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

__n128 sub_1D228FAE8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D228FB0C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D228FB94()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DED88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC4F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DED90);
  type metadata accessor for PhotoGridElementContextualMenu();
  sub_1D2878F18();
  sub_1D25E0D6C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ImageDescriptionView();
  swift_getOpaqueTypeConformance2();
  sub_1D25E1DA4(&qword_1EC6E0CD0, type metadata accessor for ImageDescriptionView);
  swift_getOpaqueTypeMetadata2();
  sub_1D2876248();
  sub_1D2874F68();
  swift_getOpaqueTypeConformance2();
  sub_1D25E1DA4(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  sub_1D2875218();
  sub_1D2874F68();
  sub_1D2874F68();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC410);
  sub_1D2874F68();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEDC8);
  sub_1D2874F68();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE0E0);
  sub_1D2874F68();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEDC0);
  sub_1D2874F68();
  swift_getTupleTypeMetadata2();
  sub_1D2877A58();
  swift_getWitnessTable();
  sub_1D28774C8();
  sub_1D2874F68();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D22900BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_1D2290150(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D2290164()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE810);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC998);
  swift_getTupleTypeMetadata3();
  sub_1D2877A58();
  swift_getWitnessTable();
  sub_1D2874678();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEF10);
  sub_1D2877568();
  swift_getTupleTypeMetadata();
  sub_1D2877A58();
  return swift_getWitnessTable();
}

uint64_t sub_1D2290290(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF38);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D2290358(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF38);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D229040C()
{
  v1 = sub_1D2872008();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D22904D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for GeneratedPreviewOptions(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2290584(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GeneratedPreviewOptions(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2290628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotosPersonAsset();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for GeneratedPreviewOptions(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D2290718(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PhotosPersonAsset();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for GeneratedPreviewOptions(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

__n128 sub_1D2290858(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D2290864()
{
  v1 = type metadata accessor for ImageKeyFaceLoader.Context(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 32))
  {
  }

  v3 = v2 + *(type metadata accessor for PhotosPersonAsset() + 20);

  v4 = (v3 + *(type metadata accessor for PhotosPersonImage() + 24));

  v5 = type metadata accessor for PlaygroundImage();
  v6 = v5[8];
  v7 = sub_1D2871818();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = (v4 + v5[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_1D22D6D60(*v8, v9);
  }

  v10 = v5[11];
  v11 = sub_1D2873AA8();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v13 = v2 + *(v1 + 20);

  v14 = *(type metadata accessor for GeneratedPreviewOptions(0) + 20);
  v15 = sub_1D2872008();
  (*(*(v15 - 8) + 8))(v13 + v14, v15);

  return swift_deallocObject();
}

uint64_t sub_1D2290AE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = type metadata accessor for ImageKeyFaceLoader.Context(0);
  v5 = *(*(v26 - 8) + 80);
  v24 = *(*(v26 - 8) + 64);
  v27 = sub_1D2871798();
  v6 = *(v27 - 8);
  v7 = *(v6 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v25 = (v4 + v5 + 8) & ~v5;
  v8 = v0 + v25;

  if (*(v0 + v25 + 32))
  {
  }

  v9 = v8 + *(type metadata accessor for PhotosPersonAsset() + 20);

  v10 = (v9 + *(type metadata accessor for PhotosPersonImage() + 24));

  v11 = type metadata accessor for PlaygroundImage();
  v12 = v11[8];
  v13 = sub_1D2871818();
  (*(*(v13 - 8) + 8))(v10 + v12, v13);
  v14 = (v10 + v11[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_1D22D6D60(*v14, v15);
  }

  v16 = v11[11];
  v17 = sub_1D2873AA8();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v10 + v16, 1, v17))
  {
    (*(v18 + 8))(v10 + v16, v17);
  }

  v19 = (v25 + v24 + v7) & ~v7;
  v20 = v8 + *(v26 + 20);

  v21 = *(type metadata accessor for GeneratedPreviewOptions(0) + 20);
  v22 = sub_1D2872008();
  (*(*(v22 - 8) + 8))(v20 + v21, v22);

  (*(v6 + 8))(v0 + v19, v27);

  return swift_deallocObject();
}

uint64_t sub_1D2290EC8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D2290F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC8);
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

uint64_t sub_1D2290FC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AC8);
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

uint64_t sub_1D229108C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D2291148(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D229123C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D28755F8();
  *a1 = result;
  return result;
}

uint64_t sub_1D22912B4()
{

  return swift_deallocObject();
}

uint64_t sub_1D2291314()
{
  v1 = type metadata accessor for CharacterEditingView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2875E18();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v3 + v1[6]), *(v3 + v1[6] + 8));
  sub_1D2273818(*(v3 + v1[7]), *(v3 + v1[7] + 8));

  return swift_deallocObject();
}

uint64_t sub_1D229154C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2871818();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D2291604(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2871818();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D22916BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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
    v9 = sub_1D2871818();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D22917F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = sub_1D2871818();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D229196C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE748);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  v7 = sub_1D2873AA8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2, 1, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1D2291B2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF540);
  sub_1D263247C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2291B90()
{
  v1 = type metadata accessor for PlaygroundImage();
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[8];
  v4 = sub_1D2871818();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = (v2 + v1[10]);
  v6 = v5[1];
  if (v6 >> 60 != 15)
  {
    sub_1D22D6D60(*v5, v6);
  }

  v7 = v1[11];
  v8 = sub_1D2873AA8();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1D2291D40()
{

  return swift_deallocObject();
}

uint64_t sub_1D2291D78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF550);
  sub_1D2632FB0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D2291DDC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D2291E14()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2291E5C()
{
  v1 = sub_1D2873AA8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D2291F40()
{
  v1 = sub_1D2873AA8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

__n128 sub_1D2292018(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D2292024()
{

  return swift_deallocObject();
}

uint64_t sub_1D229206C()
{

  return swift_deallocObject();
}

__n128 sub_1D22920D8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D22920F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D2292128()
{

  return swift_deallocObject();
}

uint64_t sub_1D229219C()
{

  return swift_deallocObject();
}

uint64_t sub_1D22921D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAED0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D22923C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D22923FC()
{

  return swift_deallocObject();
}

uint64_t sub_1D22924C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D2292510()
{
  v1 = sub_1D2872008();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D22925D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D2292684(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D2650750(v1, v2);
}

uint64_t sub_1D22926C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D2292708()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA5A0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D22927E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D2871818();
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

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1D22928B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D2871818();
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
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D22929E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA400);
  sub_1D2689978(v0);

  return swift_deallocObject();
}

uint64_t sub_1D2292A3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF808);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D2292B0C()
{

  return swift_deallocObject();
}

uint64_t sub_1D2292B4C()
{

  return swift_deallocObject();
}

uint64_t sub_1D2292B84(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PlaygroundImage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = type metadata accessor for CharacterRecipe();
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[7]);
        if (v16 >= 2)
        {
          return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[6];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1D2292CF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for PlaygroundImage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for CharacterRecipe();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2 + 1;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D2292E50(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PlaygroundImage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D2292EFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PlaygroundImage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D2292FA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF870);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D2293084(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D2871818();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D2293130(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D2871818();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D22933DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D229349C()
{
  v1 = (type metadata accessor for Prompt(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[11];
  v4 = sub_1D2871798();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1D22935AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D2293654()
{
  type metadata accessor for BubbleContentStyle();
  swift_getWitnessTable();
  sub_1D2875D08();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA0F8);
  sub_1D2874F68();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E1030);
  sub_1D2874F68();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6E0FB0);
  sub_1D2874F68();
  sub_1D2874648();
  sub_1D2874F68();
  type metadata accessor for BubbleBackgroundViewModifier();
  sub_1D2874F68();
  type metadata accessor for BubbleShadowModifier();
  sub_1D2874F68();
  type metadata accessor for IOSHoverEffect();
  sub_1D2874F68();
  swift_getWitnessTable();
  sub_1D22BB9D8(&qword_1ED89D310, &qword_1EC6DA0F8);
  swift_getWitnessTable();
  sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
  swift_getWitnessTable();
  sub_1D22BB9D8(&qword_1ED89D370, &unk_1EC6E0FB0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D22939CC()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for BubbleShadowModifier() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  sub_1D2273818(*(v3 + v2[13]), *(v3 + v2[13] + 8));
  sub_1D26AB660();

  return swift_deallocObject();
}

uint64_t sub_1D2293AD8()
{
  type metadata accessor for BubbleBackgroundViewModifier();
  swift_getWitnessTable();
  sub_1D2875D08();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1D2874F68();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1D2875B38();
  sub_1D2874408();
  swift_getWitnessTable();
  sub_1D2875038();
  sub_1D2878F18();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D2875AD8();
  sub_1D2874F68();
  sub_1D2875B08();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D2293D90()
{
  type metadata accessor for BubbleShadowModifier();
  swift_getWitnessTable();
  sub_1D2875D08();
  sub_1D2874658();
  sub_1D2874F68();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D2875AD8();
  sub_1D2874F68();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D2293EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlaygroundImage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D2293FB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlaygroundImage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1D2294070(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
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

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[9];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[15];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE8);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[17];

  return v16(v17, a2, v15);
}

uint64_t sub_1D229420C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE700);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[15];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCBE8);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[17];

  return v15(v16, a2, a2, v14);
}