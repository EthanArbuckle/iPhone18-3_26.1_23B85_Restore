void sub_1E5AE8828()
{
  sub_1E5AE88E4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LibraryCanvasContentLoadState();
    if (v1 <= 0x3F)
    {
      sub_1E5B3CB44();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5AE88E4()
{
  if (!qword_1EE2C23E8)
  {
    sub_1E5AE89A8();
    v0 = sub_1E5B3DB44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C23E8);
    }
  }
}

uint64_t type metadata accessor for LibraryCanvasContentState()
{
  result = qword_1EE2C2B68;
  if (!qword_1EE2C2B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5AE89A8()
{
  result = qword_1EE2C2738[0];
  if (!qword_1EE2C2738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C2738);
  }

  return result;
}

unint64_t sub_1E5AE8A00()
{
  result = qword_1EE2C2730;
  if (!qword_1EE2C2730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C2730);
  }

  return result;
}

uint64_t type metadata accessor for LibraryCanvasContentLoadState()
{
  result = qword_1EE2C2A20;
  if (!qword_1EE2C2A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LibraryState.init(focusedLibraryPage:libraryLayout:locale:isSidebarVisible:accountState:)@<X0>(char a1@<W0>, __int16 *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, _BYTE *a6@<X8>)
{
  v11 = *a2;
  v12 = type metadata accessor for LibraryState();
  v13 = v12[7];
  v14 = v12[8];
  *a6 = a1;
  *&a6[v12[6]] = v11;
  v15 = v12[5];
  v16 = sub_1E5B3CB44();
  result = (*(*(v16 - 8) + 32))(&a6[v15], a3, v16);
  a6[v13] = a4;
  a6[v14] = a5;
  return result;
}

uint64_t type metadata accessor for LibraryState()
{
  result = qword_1EE2C28E0;
  if (!qword_1EE2C28E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5AE8B98()
{
  if (!qword_1EE2C23F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032620, &qword_1E5B43840);
    sub_1E5B3CB44();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2C23F0);
    }
  }
}

void sub_1E5AE8C20()
{
  sub_1E5AE8B98();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

unint64_t sub_1E5AE8C94()
{
  result = qword_1EE2C2978;
  if (!qword_1EE2C2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C2978);
  }

  return result;
}

uint64_t sub_1E5AE8CE8()
{
  result = sub_1E5B3CB44();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5AE8DA0(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  v16 = *(a1 + 16);
  v15 = *(a1 + 56);
  type metadata accessor for GalleryFeature();
  swift_getWitnessTable();
  sub_1E5B3D934();
  swift_getWitnessTable();
  result = sub_1E5B3CE54();
  if (v7 <= 0x3F)
  {
    type metadata accessor for LibraryDataItem();
    swift_getExtendedExistentialTypeMetadata();
    result = sub_1E5B3D6A4();
    if (v8 <= 0x3F)
    {
      v9 = *(a1 + 32);
      swift_getFunctionTypeMetadata1();
      result = sub_1E5B3CB74();
      if (v10 <= 0x3F)
      {
        v11 = *(a1 + 48);
        swift_getFunctionTypeMetadata1();
        result = sub_1E5B3CB74();
        if (v12 <= 0x3F)
        {
          v13 = *(a1 + 40);
          result = swift_checkMetadataState();
          if (v14 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E5AE8F98()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5AE9000(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = sub_1E5B3CB14();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 16);
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        result = sub_1E5B3CC14();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E5AE90EC(uint64_t a1)
{
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  type metadata accessor for DynamicSizeClassFeature();
  swift_getWitnessTable();
  sub_1E5B3D934();
  swift_getWitnessTable();
  result = sub_1E5B3CE54();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 32);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 40);
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t DynamicSizeClassView.init(store:listViewBuilder:gridViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a10;
  v16[7] = a11;
  v16[8] = a12;
  v16[9] = a13;
  v16[10] = a1;
  v16[11] = a2;

  type metadata accessor for DynamicSizeClassFeature();
  swift_getWitnessTable();
  sub_1E5B3D934();
  swift_getWitnessTable();
  *a7 = sub_1E5B3CE34();
  *(a7 + 8) = v17;
  *(a7 + 16) = v18 & 1;
  v19 = type metadata accessor for DynamicSizeClassView();
  v20 = a7 + *(v19 + 84);
  v21 = a3();
  v22 = a7 + *(v19 + 88);
  a4(v21);
}

uint64_t sub_1E5AE93D0()
{
  v1 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t LibraryPage.title(locale:)(uint64_t a1)
{
  v2 = sub_1E5B3CB44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5B3D9E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1E5B3D984();
  if (qword_1EE2C23D8 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE2C4020;
  (*(v3 + 16))(v6, a1, v2);
  v10 = v9;
  return sub_1E5B3DA04();
}

id sub_1E5AE9678()
{
  type metadata accessor for LibraryLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE2C4020 = result;
  return result;
}

uint64_t sub_1E5AE96F0(uint64_t a1, int a2)
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

uint64_t sub_1E5AE9710(uint64_t result, int a2, int a3)
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

uint64_t sub_1E5AE9748()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1E5AE9788(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1E5B3CF34();
  type metadata accessor for HorizontalGeometryReader.SizeKey();
  swift_getWitnessTable();
  sub_1E5B3D224();
  sub_1E5B3CF34();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5B3CF14();
  swift_getWitnessTable();
  sub_1E5B3D134();
  sub_1E5B3CF34();
  sub_1E5AEF8CC();
  sub_1E5B3D214();
  sub_1E5B3CF34();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5AE999C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5AE99D4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for LibraryGalleryView() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_1E5AF0DEC();
  (*(*(v2 - 8) + 8))(v0 + v4 + v3[11], v2);

  return swift_deallocObject();
}

uint64_t sub_1E5AE9AC8(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  sub_1E5B3D724();
  swift_getWitnessTable();
  sub_1E5B3D704();
  swift_getWitnessTable();
  sub_1E5B3CDF4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A8, &qword_1E5B3E778);
  sub_1E5B3CF34();
  swift_getWitnessTable();
  sub_1E5AF13EC(&qword_1ED0317B0, &qword_1ED0317A8, &qword_1E5B3E778);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5AF0494();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5AE9D28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5AE9D60(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_1E5B3D164();
  v5 = *(a1 + 48);
  return swift_getWitnessTable();
}

uint64_t sub_1E5AE9DBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5AE9DF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  sub_1E5B3D704();
  sub_1E5B3CF34();
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  sub_1E5B3D724();
  swift_getWitnessTable();
  sub_1E5B3CDF4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5B3CF34();
  sub_1E5B3CF34();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5AEA004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5B3CB44();
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
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E5AEA0D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5B3CB44();
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
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1E5AEA190()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5AEA1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = *(v5 - 8);
    v7 = *(a3 + 52);
LABEL_5:
    v11 = *(v6 + 48);

    return v11(a1 + v7, a2, v5);
  }

  v8 = *(a3 + 24);
  v9 = a2;
  swift_getFunctionTypeMetadata1();
  v10 = sub_1E5B3CB74();
  if (*(*(v10 - 8) + 84) == v9)
  {
    a2 = v9;
    v5 = v10;
    v6 = *(v10 - 8);
    v7 = *(a3 + 56);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 60) + 8);
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

uint64_t sub_1E5AEA2F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v8 = *(v7 - 8);
    v9 = *(a4 + 52);
  }

  else
  {
    v11 = *(a4 + 24);
    swift_getFunctionTypeMetadata1();
    result = sub_1E5B3CB74();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + *(a4 + 60) + 8) = a2;
      return result;
    }

    v7 = result;
    v8 = *(result - 8);
    v9 = *(a4 + 56);
  }

  v13 = *(v8 + 56);

  return v13(a1 + v9, a2, a2, v7);
}

uint64_t sub_1E5AEA414(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_1E5B3CF34();
  type metadata accessor for TVLibraryView.FocusedView();
  sub_1E5B3DB94();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5B3CF34();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  sub_1E5B3D6E4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5B3CF34();
  sub_1E5B3CF34();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5AEA79C()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1E5AEA7D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5AEA824()
{
  if (*v0)
  {
    result = 0x6361667265746E69;
  }

  else
  {
    result = 1701273968;
  }

  *v0;
  return result;
}

uint64_t sub_1E5AEA868()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5AEA8A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CD0, &qword_1E5B40C70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CD8, &qword_1E5B40C78);
  sub_1E5B3D164();
  sub_1E5B3D164();
  sub_1E5B3D774();
  sub_1E5B3CF34();
  sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CE0, &qword_1E5B40C80);
  sub_1E5B02F64();
  sub_1E5AF13EC(&qword_1ED031D00, &qword_1ED031CD8, &qword_1E5B40C78);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5AF13EC(&qword_1ED031D08, &qword_1ED031CE0, &qword_1E5B40C80);
  swift_getOpaqueTypeMetadata2();
  sub_1E5B3CB44();
  swift_getOpaqueTypeConformance2();
  sub_1E5B03044();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5AEAB4C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    State = type metadata accessor for LibraryCanvasContentLoadState();
    v9 = *(State - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = State;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E5B3CB44();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1E5AEAC70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    State = type metadata accessor for LibraryCanvasContentLoadState();
    v9 = *(State - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = State;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E5B3CB44();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E5AEAD94@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1E5AEADCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  sub_1E5B3D704();
  sub_1E5B3CF34();
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  sub_1E5B3D724();
  swift_getWitnessTable();
  sub_1E5B3CDF4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5AEAF38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5AEAF78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0320A8, &qword_1E5B42248);
  sub_1E5B0DED8();
  sub_1E5B06FFC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5AEAFFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032128, "^q");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5AEB0B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032128, "^q");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5AEB160(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LibraryPageCountLayout();
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
      v13 = sub_1E5B3CB44();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1E5AEB284(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for LibraryPageCountLayout();
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
      v13 = sub_1E5B3CB44();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E5AEB3D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5AEB460()
{
  v1 = sub_1E5B3CF64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  sub_1E5AF0DEC();
  v8 = *(v0 + 40);

  v9 = *(v0 + 48);

  v10 = *(v0 + 80);

  v11 = *(v0 + 88);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5AEB548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323A8, &qword_1E5B43388);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5AEB5B8()
{
  v1 = sub_1E5B3CF64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 97) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  sub_1E5AF0DEC();
  v8 = *(v0 + 40);

  v9 = *(v0 + 48);

  v10 = *(v0 + 80);

  v11 = *(v0 + 88);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5AEB6A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5B3D054();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5AEB71C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5AEB758(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032448, &qword_1E5B43530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5AEB7C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032458, &unk_1E5B43540);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5AEB874(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032458, &unk_1E5B43540);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5AEB920()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032448, &qword_1E5B43530);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031CE0, &qword_1E5B40C80);
  sub_1E5B1C5DC();
  sub_1E5AF13EC(&qword_1ED031D08, &qword_1ED031CE0, &qword_1E5B40C80);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5AEB9E4()
{
  v1 = (type metadata accessor for LibraryPageCountView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64) + v2;
  v4 = v0 + v2;
  v5 = *(v0 + v2);
  v6 = *(v0 + v2 + 8);
  v7 = *(v0 + v2 + 16);
  sub_1E5AF0DEC();
  v8 = v1[7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032458, &unk_1E5B43540);
  (*(*(v9 - 8) + 8))(v4 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_1E5AEBAE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324F0, &qword_1E5B43668);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5AEBB78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5B3D034();
  *a1 = result;
  return result;
}

uint64_t sub_1E5AEBBA4(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E5B3D044();
}

uint64_t sub_1E5AEBBD0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E5B3D084();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E5AEBC04(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1E5B3D094();
}

uint64_t sub_1E5AEBC34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5B3D004();
  *a1 = result;
  return result;
}

uint64_t sub_1E5AEBC94()
{
  v1 = 0x74756F79616CLL;
  if (*v0 != 1)
  {
    v1 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7470697263736564;
  }
}

uint64_t sub_1E5AEBCF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B20E40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5AEBD18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5B3CC74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E5AEBD84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5B3CC74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E5AEBDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5B3CB44();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1E5B3CC74();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = *(a3 + 84);
    }

    else
    {
      v14 = sub_1E5B3CBC4();
      if (*(*(v14 - 8) + 84) != a2)
      {
        v17 = *(a3 + 16);
        v18 = *(a3 + 32);
        v19 = *(a3 + 48);
        v20 = *(a3 + 64);
        type metadata accessor for LibraryDataItem();
        swift_getWitnessTable();
        sub_1E5B3CCF4();
        sub_1E5B3DA74();
        swift_getWitnessTable();
        swift_getWitnessTable();
        v16 = sub_1E5B3D8C4();
        return (*(*(v16 - 8) + 48))(a1 + *(a3 + 92), a2, v16);
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = *(a3 + 88);
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1E5AEC030(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E5B3CB44();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1E5B3CC74();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = *(a4 + 84);
    }

    else
    {
      v16 = sub_1E5B3CBC4();
      if (*(*(v16 - 8) + 84) != a3)
      {
        v19 = *(a4 + 16);
        v20 = *(a4 + 32);
        v21 = *(a4 + 48);
        v22 = *(a4 + 64);
        type metadata accessor for LibraryDataItem();
        swift_getWitnessTable();
        sub_1E5B3CCF4();
        sub_1E5B3DA74();
        swift_getWitnessTable();
        swift_getWitnessTable();
        v18 = sub_1E5B3D8C4();
        return (*(*(v18 - 8) + 56))(a1 + *(a4 + 92), a2, a2, v18);
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = *(a4 + 88);
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E5AEC278()
{
  v1 = *(v0 + 144);

  return swift_deallocObject();
}

uint64_t sub_1E5AEC2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = *(a3 + 32);
    v9 = *(a3 + 16);
    swift_getFunctionTypeMetadata1();
    v10 = sub_1E5B3CB74();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 136);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = *(a3 + 48);
      v18 = *(a3 + 24);
      v19 = *(a3 + 56);
      v20 = *(a3 + 72);
      v21 = *(a3 + 88);
      type metadata accessor for LibraryDataItem();
      swift_getFunctionTypeMetadata1();
      v16 = sub_1E5B3CB74();
      v17 = *(v16 - 8);
      if (*(v17 + 84) == a2)
      {
        return (*(v17 + 48))(a1 + *(a3 + 140), a2, v16);
      }

      else
      {
        return (*(*(*(a3 + 40) - 8) + 48))(a1 + *(a3 + 144), a2);
      }
    }
  }
}

uint64_t sub_1E5AEC48C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v8 = *(a4 + 32);
    v9 = *(a4 + 16);
    swift_getFunctionTypeMetadata1();
    v10 = sub_1E5B3CB74();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v5 + *(a4 + 136);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = *(a4 + 48);
      v18 = *(a4 + 24);
      v19 = *(a4 + 56);
      v20 = *(a4 + 72);
      v21 = *(a4 + 88);
      type metadata accessor for LibraryDataItem();
      swift_getFunctionTypeMetadata1();
      v16 = sub_1E5B3CB74();
      v17 = *(v16 - 8);
      if (*(v17 + 84) == a3)
      {
        return (*(v17 + 56))(v5 + *(a4 + 140), a2, a2, v16);
      }

      else
      {
        return (*(*(*(a4 + 40) - 8) + 56))(v5 + *(a4 + 144), a2, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1E5AEC66C(__int128 *a1)
{
  v3 = *(a1 + 3);
  v2 = *(a1 + 4);
  v4 = *(a1 + 12);
  v5 = *(a1 + 13);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
  sub_1E5B260B8();
  sub_1E5B3D1B4();
  v7 = *a1;
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  type metadata accessor for LibraryDataItem();
  sub_1E5B3CCA4();
  sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  sub_1E5B3D164();
  swift_getWitnessTable();
  sub_1E5B2972C(&qword_1ED0329F8, MEMORY[0x1E699D958]);
  swift_getWitnessTable();
  sub_1E5B2611C();
  swift_getWitnessTable();
  sub_1E5B3CC34();
  sub_1E5B3CD44();
  swift_getWitnessTable();
  sub_1E5B2972C(&qword_1ED032A08, MEMORY[0x1E699DAD8]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5B3D824();
  swift_getWitnessTable();
  sub_1E5B3CDF4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5B3CF34();
  sub_1E5B3CF34();
  sub_1E5B3D164();
  sub_1E5B3D164();
  sub_1E5B3D624();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5AECAA0()
{
  v1 = *(v0 + 144);

  return swift_deallocObject();
}

uint64_t sub_1E5AECAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = *(a3 + 32);
    v9 = *(a3 + 16);
    swift_getFunctionTypeMetadata1();
    v10 = sub_1E5B3CB74();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 136);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = *(a3 + 48);
      v18 = *(a3 + 24);
      v19 = *(a3 + 56);
      v20 = *(a3 + 72);
      v21 = *(a3 + 88);
      type metadata accessor for LibraryDataItem();
      swift_getFunctionTypeMetadata1();
      v16 = sub_1E5B3CB74();
      v17 = *(v16 - 8);
      if (*(v17 + 84) == a2)
      {
        return (*(v17 + 48))(a1 + *(a3 + 140), a2, v16);
      }

      else
      {
        return (*(*(*(a3 + 40) - 8) + 48))(a1 + *(a3 + 144), a2);
      }
    }
  }
}

uint64_t sub_1E5AECCB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v8 = *(a4 + 32);
    v9 = *(a4 + 16);
    swift_getFunctionTypeMetadata1();
    v10 = sub_1E5B3CB74();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v5 + *(a4 + 136);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = *(a4 + 48);
      v18 = *(a4 + 24);
      v19 = *(a4 + 56);
      v20 = *(a4 + 72);
      v21 = *(a4 + 88);
      type metadata accessor for LibraryDataItem();
      swift_getFunctionTypeMetadata1();
      v16 = sub_1E5B3CB74();
      v17 = *(v16 - 8);
      if (*(v17 + 84) == a3)
      {
        return (*(v17 + 56))(v5 + *(a4 + 140), a2, a2, v16);
      }

      else
      {
        return (*(*(*(a4 + 40) - 8) + 56))(v5 + *(a4 + 144), a2, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1E5AECE94(__int128 *a1)
{
  v3 = *(a1 + 3);
  v2 = *(a1 + 4);
  v4 = *(a1 + 12);
  v5 = *(a1 + 13);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
  sub_1E5B260B8();
  sub_1E5B3D1B4();
  v7 = *a1;
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  type metadata accessor for LibraryDataItem();
  sub_1E5B3CCA4();
  sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  sub_1E5B3D164();
  swift_getWitnessTable();
  sub_1E5B2E0B8(&qword_1ED0329F8, MEMORY[0x1E699D958]);
  swift_getWitnessTable();
  sub_1E5B2611C();
  swift_getWitnessTable();
  sub_1E5B3CC34();
  sub_1E5B3CD34();
  swift_getWitnessTable();
  sub_1E5B2E0B8(&qword_1ED032A20, MEMORY[0x1E699DA68]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5B3CDE4();
  swift_getWitnessTable();
  sub_1E5B3CDF4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5B3CF34();
  sub_1E5B3CF34();
  sub_1E5B3D164();
  sub_1E5B3D164();
  sub_1E5B3D624();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5AED2C8()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 88);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5AED384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5B3CB44();
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

uint64_t sub_1E5AED440(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5B3CB44();
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

uint64_t sub_1E5AED4F8()
{
  v1 = (type metadata accessor for TVLibraryItemCell() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = sub_1E5B3CB44();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = *(v3 + v1[8] + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5AED5E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5B3D054();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5AED63C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5B3D074();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5AED694@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5B3D024();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5AED6C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5B3CFF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5AED6F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5B3CFC4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5AED724()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032B40, &qword_1E5B449C8);
  type metadata accessor for LibrarySidebarButtonStyle();
  sub_1E5AF13EC(&qword_1ED032B60, &qword_1ED032B40, &qword_1E5B449C8);
  sub_1E5B2FDE8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5AED7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v5 = sub_1E5B3CBF4();
  return (*(*(v5 - 8) + 48))(a1, a2, v5);
}

uint64_t sub_1E5AED848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 32);
  v6 = sub_1E5B3CBF4();
  return (*(*(v6 - 8) + 56))(a1, a2, a2, v6);
}

uint64_t sub_1E5AED8C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1E5AED8F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 48);
  v3 = (type metadata accessor for LibraryDispatcherView() - 8);
  v4 = *(*v3 + 64);
  v5 = (v0 + ((*(*v3 + 80) + 64) & ~*(*v3 + 80)));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  sub_1E5AF0DEC();
  (*(*(v2 - 8) + 8))(v5 + v3[19], v2);
  (*(*(v1 - 8) + 8))(v5 + v3[20], v1);
  (*(*(v10 - 8) + 8))(v5 + v3[21]);
  return swift_deallocObject();
}

uint64_t sub_1E5AEDA64(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[5];
  sub_1E5B3D164();
  sub_1E5B3D164();
  sub_1E5B3D774();
  v7 = *(a1 + 3);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5AF0494();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5AEDBAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0329F0, &qword_1E5B44520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5AEDC14()
{
  v7 = *(v0 + 16);
  v8 = *(v0 + 48);
  v9 = *(v0 + 64);
  v10 = *(v0 + 80);
  type metadata accessor for LibraryDataItem();
  swift_getWitnessTable();
  v1 = sub_1E5B3CCF4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 128) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 120);

  (*(v2 + 8))(v0 + v3, v1);
  return swift_deallocObject();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E5AEDDB0(uint64_t a1, int a2)
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

uint64_t sub_1E5AEDDD0(uint64_t result, int a2, int a3)
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

uint64_t sub_1E5AEDE10()
{
  v0 = sub_1E5B3CD84();
  __swift_allocate_value_buffer(v0, qword_1ED032ED8);
  __swift_project_value_buffer(v0, qword_1ED032ED8);
  return sub_1E5B3CD74();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1E5AEDF58(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

_BYTE *LibraryLayout.init(interface:dynamicTypeSize:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1E5AEDFD0()
{
  v1 = *v0;
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](v1);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AEE018()
{
  v1 = *v0;
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](v1);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AEE05C()
{
  if (*v0)
  {
    result = 0x5463696D616E7964;
  }

  else
  {
    result = 0x6361667265746E69;
  }

  *v0;
  return result;
}

uint64_t sub_1E5AEE0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6361667265746E69 && a2 == 0xE900000000000065;
  if (v6 || (sub_1E5B3DDA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5B3DDA4();

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

uint64_t sub_1E5AEE1A0(uint64_t a1)
{
  v2 = sub_1E5AEE440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AEE1DC(uint64_t a1)
{
  v2 = sub_1E5AEE440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031638, &qword_1E5B3E3C8);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AEE440();
  sub_1E5B3DE14();
  v17 = v9;
  v16 = 0;
  sub_1E5AEE494();
  sub_1E5B3DD74();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1E5AEE4E8();
    sub_1E5B3DD74();
  }

  return (*(v5 + 8))(v8, v4);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E5AEE440()
{
  result = qword_1ED031640;
  if (!qword_1ED031640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031640);
  }

  return result;
}

unint64_t sub_1E5AEE494()
{
  result = qword_1ED031648;
  if (!qword_1ED031648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031648);
  }

  return result;
}

unint64_t sub_1E5AEE4E8()
{
  result = qword_1ED031650;
  if (!qword_1ED031650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031650);
  }

  return result;
}

uint64_t LibraryLayout.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031658, &qword_1E5B3E3D0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AEE440();
  sub_1E5B3DE04();
  if (!v2)
  {
    v17 = 0;
    sub_1E5AEE75C();
    sub_1E5B3DCF4();
    v11 = v18;
    v15 = 1;
    sub_1E5AEE7B0();
    sub_1E5B3DCF4();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1E5AEE75C()
{
  result = qword_1ED031660;
  if (!qword_1ED031660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031660);
  }

  return result;
}

unint64_t sub_1E5AEE7B0()
{
  result = qword_1ED031668;
  if (!qword_1ED031668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031668);
  }

  return result;
}

uint64_t static LibraryLayout.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  return sub_1E5B3CCB4();
}

uint64_t sub_1E5AEE858(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  return sub_1E5B3CCB4();
}

uint64_t getEnumTagSinglePayload for LibraryLayout(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for LibraryLayout(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t getEnumTagSinglePayload for LibraryLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LibraryLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5AEEB40()
{
  result = qword_1ED031670;
  if (!qword_1ED031670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031670);
  }

  return result;
}

unint64_t sub_1E5AEEB98()
{
  result = qword_1ED031678;
  if (!qword_1ED031678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031678);
  }

  return result;
}

unint64_t sub_1E5AEEBF0()
{
  result = qword_1ED031680;
  if (!qword_1ED031680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031680);
  }

  return result;
}

unint64_t sub_1E5AEECAC()
{
  result = qword_1ED031688[0];
  if (!qword_1ED031688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED031688);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FitnessPlusFeatures(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FitnessPlusFeatures(_WORD *result, int a2, int a3)
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

uint64_t sub_1E5AEEDEC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5AEEE28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5AEEE70(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1E5AEEF14@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>, uint64_t a7@<D0>)
{
  v68 = a2;
  v69 = a3;
  v47 = a1;
  v67 = a6;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  (MEMORY[0x1EEE9AC00])();
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1E5B3CF34();
  v66 = *(v49 - 8);
  v15 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v54 = &v46 - v16;
  v17 = type metadata accessor for HorizontalGeometryReader.SizeKey();
  WitnessTable = swift_getWitnessTable();
  v57 = v17;
  v59 = WitnessTable;
  sub_1E5B3D224();
  sub_1E5B3CF34();
  v19 = swift_getWitnessTable();
  v79 = MEMORY[0x1E6981580];
  v80 = v19;
  v55 = MEMORY[0x1E697E858];
  v50 = swift_getWitnessTable();
  v51 = sub_1E5B3CF14();
  v53 = swift_getWitnessTable();
  v60 = sub_1E5B3D134();
  v56 = sub_1E5B3CF34();
  v65 = *(v56 - 8);
  v20 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v48 = &v46 - v21;
  v58 = sub_1E5AEF8CC();
  v63 = sub_1E5B3D214();
  v62 = sub_1E5B3CF34();
  v64 = *(v62 - 8);
  v22 = *(v64 + 64);
  v23 = (MEMORY[0x1EEE9AC00])();
  v52 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v61 = (&v46 - v25);
  v77 = a7;
  v78 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED031718, &qword_1E5B3E6F8);
  v26 = sub_1E5B3D684();
  v68(v26, v76);
  sub_1E5B3D7F4();
  v27 = v54;
  sub_1E5B3D514();
  (*(v11 + 8))(v14, a4);
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  v77 = sub_1E5B3CF04();
  v78 = v29;
  sub_1E5B3D7E4();
  v74 = a5;
  v75 = MEMORY[0x1E697EBF8];
  v30 = v49;
  v31 = swift_getWitnessTable();
  v32 = v48;
  sub_1E5B3D404();

  (*(v66 + 8))(v27, v30);
  v33 = swift_allocObject();
  *(v33 + 16) = a4;
  *(v33 + 24) = a5;
  *(v33 + 32) = *&a7;
  v34 = v68;
  v35 = v69;
  *(v33 + 40) = v47;
  *(v33 + 48) = v34;
  *(v33 + 56) = v35;

  v36 = swift_getWitnessTable();
  v72 = v31;
  v73 = v36;
  v37 = v56;
  v38 = swift_getWitnessTable();
  v39 = v52;
  sub_1E5B3D4A4();

  (*(v65 + 8))(v32, v37);
  v40 = swift_getWitnessTable();
  v70 = v38;
  v71 = v40;
  v41 = v62;
  v42 = swift_getWitnessTable();
  v43 = v61;
  sub_1E5AF144C(v61, v39, v41, v42);
  v44 = *(v64 + 8);
  v44(v39, v41);
  sub_1E5AF144C(v67, v43, v41, v42);
  return (v44)(v43, v41);
}

uint64_t sub_1E5AEF620@<X0>(void *a1@<X8>)
{
  v8[0] = sub_1E5B3D5C4();
  type metadata accessor for HorizontalGeometryReader.SizeKey();
  sub_1E5B3CEB4();
  swift_getWitnessTable();
  sub_1E5B3D424();

  v5[0] = v6;
  v5[1] = v7;
  sub_1E5B3D224();
  v2 = sub_1E5B3CF34();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_1E5AF144C(v8, v5, v2, WitnessTable);

  v6 = v8[0];
  v7 = v8[1];
  sub_1E5AF144C(a1, &v6, v2, WitnessTable);
}

void sub_1E5AEF7B8(double *a1, double (*a2)(void))
{
  v3 = *a1;
  v4 = a2();
  if (v3 > v4)
  {
    v4 = v3;
  }

  *a1 = v4;
}

void sub_1E5AEF7FC(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = sub_1E5AEEF0C();
}

void sub_1E5AEF82C(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v4 = *(a4 + 24);
  sub_1E5AEF7B8(a1, sub_1E5AEF9BC);
}

unint64_t sub_1E5AEF8CC()
{
  result = qword_1ED031710;
  if (!qword_1ED031710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031710);
  }

  return result;
}

uint64_t sub_1E5AEF920@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1E5AEF620(a1);
}

uint64_t sub_1E5AEF928(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED031718, &qword_1E5B3E6F8);
  return sub_1E5B3D694();
}

double sub_1E5AEF9BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_1E5AEFA2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031858, qword_1E5B3E818);
  sub_1E5AF13EC(&qword_1ED031860, &qword_1ED031858, qword_1E5B3E818);

  return sub_1E5B3CE44();
}

uint64_t LibraryGalleryView.init(store:canvasViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *a4 = sub_1E5AEFB94;
  *(a4 + 8) = v8;
  *(a4 + 16) = 0;
  v9 = *(type metadata accessor for LibraryGalleryView() + 36);

  a3(v10);
}

uint64_t sub_1E5AEFB94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t LibraryGalleryView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v2 = a1 - 8;
  v64 = *(a1 - 8);
  v65 = a1;
  v3 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v62 = v4;
  v63 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1E5B3D184();
  v59 = *(v60 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  v7 = *(v2 + 24);
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  sub_1E5B3D724();
  swift_getWitnessTable();
  sub_1E5B3D704();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1E5B3CDF4();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A8, &qword_1E5B3E778);
  v12 = sub_1E5B3CF34();
  v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - v14;
  v16 = swift_getWitnessTable();
  v46 = v16;
  v17 = sub_1E5AF13EC(&qword_1ED0317B0, &qword_1ED0317A8, &qword_1E5B3E778);
  v76 = v16;
  v77 = v17;
  v18 = swift_getWitnessTable();
  v72 = v12;
  v73 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v54 = &v46 - v21;
  v72 = v12;
  v73 = v18;
  v48 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_1E5AF0494();
  v57 = OpaqueTypeMetadata2;
  v72 = OpaqueTypeMetadata2;
  v73 = &type metadata for LibraryLayout;
  v53 = OpaqueTypeConformance2;
  v74 = OpaqueTypeConformance2;
  v75 = v23;
  v52 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v50 = &v46 - v30;
  sub_1E5B3D284();
  v31 = *(v2 + 32);
  v61 = v7;
  v68 = v7;
  v69 = v31;
  v47 = v31;
  v70 = v67;
  sub_1E5B3CE04();
  sub_1E5B3D114();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0317C0, &qword_1E5B3E780);
  sub_1E5AF0D10();
  v32 = v58;
  sub_1E5B3D474();
  (*(v51 + 8))(v11, v8);
  sub_1E5B3D174();
  LOBYTE(v8) = sub_1E5B3D284();
  sub_1E5B3D274();
  sub_1E5B3D274();
  if (sub_1E5B3D274() != v8)
  {
    sub_1E5B3D274();
  }

  v33 = v54;
  sub_1E5B3D4E4();
  (*(v59 + 8))(v32, v60);
  (*(v55 + 8))(v15, v12);
  v34 = v65;
  v35 = v67;
  sub_1E5AEFA2C();
  swift_getKeyPath();
  sub_1E5B3D904();

  v71 = v72;
  v37 = v63;
  v36 = v64;
  (*(v64 + 16))(v63, v35, v34);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = swift_allocObject();
  v40 = v47;
  *(v39 + 16) = v61;
  *(v39 + 24) = v40;
  (*(v36 + 32))(v39 + v38, v37, v34);
  v41 = v57;
  sub_1E5B3D564();

  (*(v56 + 8))(v33, v41);
  v42 = v25[2];
  v43 = v50;
  v42(v50, v29, v24);
  v44 = v25[1];
  v44(v29, v24);
  v42(v66, v43, v24);
  return (v44)(v43, v24);
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

unint64_t sub_1E5AF0494()
{
  result = qword_1ED0317B8;
  if (!qword_1ED0317B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0317B8);
  }

  return result;
}

uint64_t sub_1E5AF04E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  sub_1E5B3D724();
  swift_getWitnessTable();
  v8 = sub_1E5B3D704();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-v14];
  v20 = a2;
  v21 = a3;
  v22 = a1;
  sub_1E5B3D114();
  sub_1E5B3D6F4();
  swift_getWitnessTable();
  v16 = v9[2];
  v16(v15, v13, v8);
  v17 = v9[1];
  v17(v13, v8);
  v16(a4, v15, v8);
  return (v17)(v15, v8);
}

uint64_t sub_1E5AF0730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  v8 = sub_1E5B3D724();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-v14];
  sub_1E5B3D7D4();
  v20 = a2;
  v21 = a3;
  v22 = a1;
  sub_1E5B3D714();
  swift_getWitnessTable();
  v16 = v9[2];
  v16(v15, v13, v8);
  v17 = v9[1];
  v17(v13, v8);
  v16(a4, v15, v8);
  return (v17)(v15, v8);
}

uint64_t sub_1E5AF0934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v32 = a4;
  v29 = a1;
  v5 = *(a2 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](a1);
  v30 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0317A0, &qword_1E5B3E770);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  v36 = 0;
  LOBYTE(v37) = 1;
  v19 = sub_1E5B3D284();
  sub_1E5B3D274();
  sub_1E5B3D274();
  if (sub_1E5B3D274() != v19)
  {
    sub_1E5B3D274();
  }

  sub_1E5B3D7E4();
  sub_1E5B3D4F4();
  v28 = v18;
  v20 = v31;
  v21 = type metadata accessor for LibraryGalleryView();
  v22 = v5[2];
  v22(v10, v29 + *(v21 + 36), a2);
  (*(v12 + 16))(v16, v18, v11);
  v36 = v16;
  v23 = v30;
  v22(v30, v10, a2);
  v37 = v23;
  v35[0] = v11;
  v35[1] = a2;
  OpaqueTypeConformance2 = MEMORY[0x1E6981840];
  v34 = MEMORY[0x1E6981838];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v20;
  sub_1E5B073C8(&v36, 2uLL, v35);
  v24 = v5[1];
  v24(v10, a2);
  v25 = *(v12 + 8);
  v25(v28, v11);
  v24(v23, a2);
  return (v25)(v16, v11);
}

double sub_1E5AF0C84@<D0>(uint64_t a1@<X8>)
{
  sub_1E5B3D7E4();
  sub_1E5B3CEA4();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

unint64_t sub_1E5AF0D10()
{
  result = qword_1ED0317C8[0];
  if (!qword_1ED0317C8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317C0, &qword_1E5B3E780);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED0317C8);
  }

  return result;
}

uint64_t sub_1E5AF0D94(uint64_t a1, __int16 *a2)
{
  v2 = *a2;
  type metadata accessor for LibraryGalleryView();
  sub_1E5AEFA2C();
  sub_1E5B3D914();
}

uint64_t sub_1E5AF0DF4(uint64_t a1, __int16 *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(type metadata accessor for LibraryGalleryView() - 8) + 80);

  return sub_1E5AF0D94(a1, a2);
}

void sub_1E5AF0EE0(uint64_t a1)
{
  sub_1E5AF1348();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E5AF0F68(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      v15 = *(a1 + 16);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
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

void sub_1E5AF10EC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 17] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    a1[16] = 0;
    *a1 = a2 - 255;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

void sub_1E5AF1348()
{
  if (!qword_1ED031850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031858, qword_1E5B3E818);
    sub_1E5AF13EC(&qword_1ED031860, &qword_1ED031858, qword_1E5B3E818);
    v0 = sub_1E5B3CE54();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED031850);
    }
  }
}

uint64_t sub_1E5AF13EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E5AF1450()
{
  v1 = *v0;
  v2 = 0x74756F6B726F77;
  v3 = 0x6D6172676F7270;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x64616F6C6E776F64;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x697461746964656DLL;
  if (v1 != 1)
  {
    v5 = 0x6B63617473;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E5AF1510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5AF25D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5AF1544(uint64_t a1)
{
  v2 = sub_1E5AF21C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AF1580(uint64_t a1)
{
  v2 = sub_1E5AF21C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AF15E0(uint64_t a1)
{
  v2 = sub_1E5AF221C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AF161C(uint64_t a1)
{
  v2 = sub_1E5AF221C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AF1658(uint64_t a1)
{
  v2 = sub_1E5AF2270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AF1694(uint64_t a1)
{
  v2 = sub_1E5AF2270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AF16D0(uint64_t a1)
{
  v2 = sub_1E5AF236C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AF170C(uint64_t a1)
{
  v2 = sub_1E5AF236C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AF1748(uint64_t a1)
{
  v2 = sub_1E5AF22C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AF1784(uint64_t a1)
{
  v2 = sub_1E5AF22C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AF17C0(uint64_t a1)
{
  v2 = sub_1E5AF2318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AF17FC(uint64_t a1)
{
  v2 = sub_1E5AF2318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5AF1838()
{
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](0);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF187C()
{
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](0);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF18BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5AF194C(uint64_t a1)
{
  v2 = sub_1E5AF23C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AF1988(uint64_t a1)
{
  v2 = sub_1E5AF23C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t LibraryItem.id.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v3 = 0x697461746964656DLL;
      }

      else
      {
        v3 = 0x2D6B63617473;
      }
    }

    else
    {
      v3 = 0x2D74756F6B726F77;
    }

    goto LABEL_12;
  }

  if (a3 == 3)
  {
    v3 = 0x2D6D6172676F7270;
LABEL_12:
    v7 = v3;
    goto LABEL_13;
  }

  if (a3 != 4)
  {
    v3 = 0x64616F6C6E776F64;
    goto LABEL_12;
  }

  v4 = a1;
  v5 = a2;
  sub_1E5B3DBE4();

  v7 = 0xD000000000000015;
  a1 = v4;
  a2 = v5;
LABEL_13:
  MEMORY[0x1E6936190](a1, a2);
  return v7;
}

unint64_t sub_1E5AF1AF4@<X0>(unint64_t *a1@<X8>)
{
  result = LibraryItem.id.getter(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t LibraryItem.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v54 = a3;
  v56 = a4;
  v53 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031868, &qword_1E5B3E830);
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031870, &qword_1E5B3E838);
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031878, &qword_1E5B3E840);
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031880, &qword_1E5B3E848);
  v41 = *(v14 - 8);
  v42 = v14;
  v15 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031888, &qword_1E5B3E850);
  v40 = *(v18 - 8);
  v19 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031890, &qword_1E5B3E858);
  v39 = *(v22 - 8);
  v23 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031898, &qword_1E5B3E860);
  v52 = *(v55 - 8);
  v26 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v28 = &v38 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AF21C8();
  sub_1E5B3DE14();
  if (v56 > 2u)
  {
    if (v56 == 3)
    {
      v60 = 3;
      sub_1E5AF22C4();
      v31 = v43;
      v30 = v55;
      sub_1E5B3DD24();
      v32 = v45;
      sub_1E5B3DD44();
      v33 = v44;
    }

    else
    {
      v30 = v55;
      if (v56 == 4)
      {
        v61 = 4;
        sub_1E5AF2270();
        v31 = v46;
        sub_1E5B3DD24();
        v32 = v48;
        sub_1E5B3DD44();
        v33 = v47;
      }

      else
      {
        v62 = 5;
        sub_1E5AF221C();
        v31 = v49;
        sub_1E5B3DD24();
        v32 = v51;
        sub_1E5B3DD44();
        v33 = v50;
      }
    }

    v36 = *(v33 + 8);
    v37 = v31;
    goto LABEL_13;
  }

  if (!v56)
  {
    v57 = 0;
    sub_1E5AF23C0();
    v34 = v55;
    sub_1E5B3DD24();
    sub_1E5B3DD44();
    (*(v39 + 8))(v25, v22);
    return (*(v52 + 8))(v28, v34);
  }

  if (v56 != 1)
  {
    v59 = 2;
    sub_1E5AF2318();
    v30 = v55;
    sub_1E5B3DD24();
    v32 = v42;
    sub_1E5B3DD44();
    v36 = *(v41 + 8);
    v37 = v17;
LABEL_13:
    v36(v37, v32);
    return (*(v52 + 8))(v28, v30);
  }

  v58 = 1;
  sub_1E5AF236C();
  v30 = v55;
  sub_1E5B3DD24();
  sub_1E5B3DD44();
  (*(v40 + 8))(v21, v18);
  return (*(v52 + 8))(v28, v30);
}

unint64_t sub_1E5AF21C8()
{
  result = qword_1ED0318A0;
  if (!qword_1ED0318A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0318A0);
  }

  return result;
}

unint64_t sub_1E5AF221C()
{
  result = qword_1ED0318A8;
  if (!qword_1ED0318A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0318A8);
  }

  return result;
}

unint64_t sub_1E5AF2270()
{
  result = qword_1ED0318B0;
  if (!qword_1ED0318B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0318B0);
  }

  return result;
}

unint64_t sub_1E5AF22C4()
{
  result = qword_1ED0318B8;
  if (!qword_1ED0318B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0318B8);
  }

  return result;
}

unint64_t sub_1E5AF2318()
{
  result = qword_1ED0318C0;
  if (!qword_1ED0318C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0318C0);
  }

  return result;
}

unint64_t sub_1E5AF236C()
{
  result = qword_1ED0318C8;
  if (!qword_1ED0318C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0318C8);
  }

  return result;
}

unint64_t sub_1E5AF23C0()
{
  result = qword_1ED0318D0;
  if (!qword_1ED0318D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0318D0);
  }

  return result;
}

uint64_t LibraryItem.init(from:)(uint64_t *a1)
{
  result = sub_1E5AF27DC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1E5AF2438@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E5AF27DC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t LibraryItem.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  MEMORY[0x1E6936540](a4);

  return sub_1E5B3DA14();
}

uint64_t LibraryItem.hashValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](a3);
  sub_1E5B3DA14();
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF2560()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1E5B3DDC4();
  LibraryItem.hash(into:)(v5, v1, v2, v3);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF25D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F6B726F77 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697461746964656DLL && a2 == 0xEA00000000006E6FLL || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B63617473 && a2 == 0xE500000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6172676F7270 && a2 == 0xE700000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5B45C10 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E5AF27DC(uint64_t *a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031988, &qword_1E5B3F240);
  v59 = *(v57 - 8);
  v2 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v47 - v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031990, &qword_1E5B3F248);
  v58 = *(v56 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v63 = &v47 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031998, &qword_1E5B3F250);
  v55 = *(v52 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v62 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319A0, &qword_1E5B3F258);
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319A8, &qword_1E5B3F260);
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319B0, &qword_1E5B3F268);
  v49 = *(v15 - 8);
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319B8, &qword_1E5B3F270);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v47 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v65 = a1;
  v26 = __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1E5AF21C8();
  v27 = v64;
  sub_1E5B3DE04();
  if (!v27)
  {
    v28 = v18;
    v48 = v15;
    v64 = v14;
    v30 = v61;
    v29 = v62;
    v31 = v63;
    v32 = sub_1E5B3DD04();
    v33 = (2 * *(v32 + 16)) | 1;
    v66 = v32;
    v67 = v32 + 32;
    v68 = 0;
    v69 = v33;
    v34 = sub_1E5B00354();
    if (v34 == 6 || v68 != v69 >> 1)
    {
      v36 = sub_1E5B3DC04();
      swift_allocError();
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0) + 48);
      *v38 = &type metadata for LibraryItem;
      v26 = v23;
      sub_1E5B3DCA4();
      sub_1E5B3DBF4();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
      (*(v20 + 8))(v23, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v70 = v34;
      if (v34 > 2u)
      {
        if (v34 != 3)
        {
          if (v34 == 4)
          {
            v71 = 4;
            sub_1E5AF2270();
            sub_1E5B3DC94();
            v49 = v20;
            v41 = v56;
            v26 = sub_1E5B3DCC4();
            (*(v58 + 8))(v31, v41);
          }

          else
          {
            v71 = 5;
            sub_1E5AF221C();
            v44 = v60;
            sub_1E5B3DC94();
            v49 = v20;
            v45 = v57;
            v26 = sub_1E5B3DCC4();
            (*(v59 + 8))(v44, v45);
          }

          goto LABEL_18;
        }

        v71 = 3;
        sub_1E5AF22C4();
        sub_1E5B3DC94();
        v49 = v20;
        v35 = v52;
        v26 = sub_1E5B3DCC4();
        v46 = v55;
        goto LABEL_17;
      }

      if (v34)
      {
        if (v34 != 1)
        {
          v71 = 2;
          sub_1E5AF2318();
          sub_1E5B3DC94();
          v49 = v20;
          v43 = v54;
          v26 = sub_1E5B3DCC4();
          (*(v53 + 8))(v30, v43);
LABEL_18:
          (*(v49 + 8))(v23, v19);
          swift_unknownObjectRelease();
          goto LABEL_9;
        }

        v71 = 1;
        sub_1E5AF236C();
        v29 = v64;
        sub_1E5B3DC94();
        v49 = v20;
        v35 = v51;
        v26 = sub_1E5B3DCC4();
        v46 = v50;
LABEL_17:
        (*(v46 + 8))(v29, v35);
        goto LABEL_18;
      }

      v71 = 0;
      sub_1E5AF23C0();
      sub_1E5B3DC94();
      v42 = v48;
      v26 = sub_1E5B3DCC4();
      (*(v49 + 8))(v28, v42);
      (*(v20 + 8))(v23, v19);
      swift_unknownObjectRelease();
    }
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v65);
  return v26;
}

uint64_t _s14FitnessLibrary0B4ItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      if (a6 == 3)
      {
        goto LABEL_13;
      }
    }

    else if (a3 == 4)
    {
      if (a6 == 4)
      {
        goto LABEL_13;
      }
    }

    else if (a6 == 5)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a6 == 2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_13:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1E5B3DDA4();
  }
}

unint64_t sub_1E5AF31E8()
{
  result = qword_1ED0318D8;
  if (!qword_1ED0318D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0318D8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E5AF325C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E5AF32A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5AF34BC()
{
  result = qword_1ED0318E0;
  if (!qword_1ED0318E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0318E0);
  }

  return result;
}

unint64_t sub_1E5AF3514()
{
  result = qword_1ED0318E8;
  if (!qword_1ED0318E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0318E8);
  }

  return result;
}

unint64_t sub_1E5AF356C()
{
  result = qword_1ED0318F0;
  if (!qword_1ED0318F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0318F0);
  }

  return result;
}

unint64_t sub_1E5AF35C4()
{
  result = qword_1ED0318F8;
  if (!qword_1ED0318F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0318F8);
  }

  return result;
}

unint64_t sub_1E5AF361C()
{
  result = qword_1ED031900;
  if (!qword_1ED031900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031900);
  }

  return result;
}

unint64_t sub_1E5AF3674()
{
  result = qword_1ED031908;
  if (!qword_1ED031908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031908);
  }

  return result;
}

unint64_t sub_1E5AF36CC()
{
  result = qword_1ED031910;
  if (!qword_1ED031910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031910);
  }

  return result;
}

unint64_t sub_1E5AF3724()
{
  result = qword_1ED031918;
  if (!qword_1ED031918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031918);
  }

  return result;
}

unint64_t sub_1E5AF377C()
{
  result = qword_1ED031920;
  if (!qword_1ED031920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031920);
  }

  return result;
}

unint64_t sub_1E5AF37D4()
{
  result = qword_1ED031928;
  if (!qword_1ED031928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031928);
  }

  return result;
}

unint64_t sub_1E5AF382C()
{
  result = qword_1ED031930;
  if (!qword_1ED031930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031930);
  }

  return result;
}

unint64_t sub_1E5AF3884()
{
  result = qword_1ED031938;
  if (!qword_1ED031938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031938);
  }

  return result;
}

unint64_t sub_1E5AF38DC()
{
  result = qword_1ED031940;
  if (!qword_1ED031940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031940);
  }

  return result;
}

unint64_t sub_1E5AF3934()
{
  result = qword_1ED031948;
  if (!qword_1ED031948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031948);
  }

  return result;
}

unint64_t sub_1E5AF398C()
{
  result = qword_1ED031950;
  if (!qword_1ED031950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031950);
  }

  return result;
}

unint64_t sub_1E5AF39E4()
{
  result = qword_1ED031958;
  if (!qword_1ED031958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031958);
  }

  return result;
}

unint64_t sub_1E5AF3A3C()
{
  result = qword_1ED031960;
  if (!qword_1ED031960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031960);
  }

  return result;
}

unint64_t sub_1E5AF3A94()
{
  result = qword_1ED031968;
  if (!qword_1ED031968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031968);
  }

  return result;
}

unint64_t sub_1E5AF3AEC()
{
  result = qword_1ED031970;
  if (!qword_1ED031970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031970);
  }

  return result;
}

unint64_t sub_1E5AF3B44()
{
  result = qword_1ED031978;
  if (!qword_1ED031978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031978);
  }

  return result;
}

unint64_t sub_1E5AF3B9C()
{
  result = qword_1ED031980;
  if (!qword_1ED031980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031980);
  }

  return result;
}

uint64_t LibraryPage.iconName.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v4 = 0x6B636F6C63;
    if (a1 != 6)
    {
      v4 = 0xD000000000000014;
    }

    v5 = 0xD000000000000015;
    if (a1 == 4)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x722E657275676966;
    v2 = 0x2E7373656E746966;
    if (a1 != 2)
    {
      v2 = 0xD000000000000014;
    }

    if (a1)
    {
      v1 = 0x656D2E656C707061;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t LibraryPage.emptyTitle(locale:)(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1E5B3CB44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5B3D9E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (a2 > 6u)
  {
    sub_1E5B3D984();
    if (qword_1EE2C23D8 != -1)
    {
      swift_once();
    }

    qword_1EE2C4020;
    sub_1E5B3CB34();
  }

  else
  {
    sub_1E5B3D984();
    if (qword_1EE2C23D8 != -1)
    {
      swift_once();
    }

    v11 = qword_1EE2C4020;
    (*(v5 + 16))(v8, a1, v4);
    v12 = v11;
  }

  return sub_1E5B3DA04();
}

id LibraryPage.emptyDescription(locale:)(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1E5B3D9C4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1E5B3CB44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5B3D9E4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  if (a2 <= 6u)
  {
    sub_1E5B3D984();
    if (qword_1EE2C23D8 != -1)
    {
      swift_once();
    }

    v13 = qword_1EE2C4020;
    (*(v7 + 16))(v10, a1, v6);
    v14 = v13;
    return sub_1E5B3DA04();
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v16 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      sub_1E5B3D984();
      if (qword_1EE2C23D8 == -1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_1E5B3D984();
      if (qword_1EE2C23D8 == -1)
      {
LABEL_11:
        v18 = qword_1EE2C4020;
        (*(v7 + 16))(v10, a1, v6);
        v19 = v18;
        sub_1E5B3DA04();
        sub_1E5B3D9B4();
        sub_1E5B3D9A4();
        sub_1E5B3D994();

        sub_1E5B3D9A4();
        sub_1E5B3D9D4();
        if (qword_1EE2C23D8 != -1)
        {
          swift_once();
        }

        qword_1EE2C4020;
        sub_1E5B3CB34();
        return sub_1E5B3DA04();
      }
    }

    swift_once();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t LibraryPage.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7374756F6B726F77;
  v2 = 0x796C746E65636572;
  if (a1 != 6)
  {
    v2 = 0x656E696C66666FLL;
  }

  v3 = 0xD000000000000014;
  if (a1 != 4)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x736B63617473;
  if (a1 != 2)
  {
    v4 = 0x736D6172676F7270;
  }

  if (a1)
  {
    v1 = 0x697461746964656DLL;
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

uint64_t sub_1E5AF4614(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = LibraryPage.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == LibraryPage.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E5B3DDA4();
  }

  return v8 & 1;
}

uint64_t sub_1E5AF469C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s14FitnessLibrary0B4PageO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t sub_1E5AF46CC@<X0>(uint64_t *a1@<X8>)
{
  result = LibraryPage.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t LibraryPage.contains<A>(id:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (swift_dynamicCast())
  {
    v7 = 0x7374756F6B726F77;
    if (v27 > 3u)
    {
      if (v27 > 5u)
      {
        if (v27 == 6)
        {
          v12 = 0x796C746E65636572;
          v13 = 0xED00006465646441;
        }

        else
        {
          v13 = 0xE700000000000000;
          v12 = 0x656E696C66666FLL;
        }
      }

      else if (v27 == 4)
      {
        v12 = 0xD000000000000014;
        v13 = 0x80000001E5B45B90;
      }

      else
      {
        v12 = 0x64616F6C6E776F64;
        v13 = 0xEA00000000006465;
      }
    }

    else
    {
      v8 = 0xE800000000000000;
      v9 = 0xE600000000000000;
      v10 = 0x736B63617473;
      if (v27 != 2)
      {
        v10 = 0x736D6172676F7270;
        v9 = 0xE800000000000000;
      }

      v11 = 0x697461746964656DLL;
      if (v27)
      {
        v8 = 0xEB00000000736E6FLL;
      }

      else
      {
        v11 = 0x7374756F6B726F77;
      }

      if (v27 <= 1u)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      if (v27 <= 1u)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }
    }

    if (a2 > 3u)
    {
      v20 = 0x796C746E65636572;
      v21 = 0xED00006465646441;
      if (a2 != 6)
      {
        v20 = 0x656E696C66666FLL;
        v21 = 0xE700000000000000;
      }

      v22 = 0xD000000000000014;
      v23 = 0x80000001E5B45B90;
      if (a2 != 4)
      {
        v22 = 0x64616F6C6E776F64;
        v23 = 0xEA00000000006465;
      }

      if (a2 <= 5u)
      {
        v24 = v22;
      }

      else
      {
        v24 = v20;
      }

      if (a2 <= 5u)
      {
        v18 = v23;
      }

      else
      {
        v18 = v21;
      }

      if (v12 != v24)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v14 = 0xE800000000000000;
      v15 = 0xE600000000000000;
      v16 = 0x736B63617473;
      if (a2 != 2)
      {
        v16 = 0x736D6172676F7270;
        v15 = 0xE800000000000000;
      }

      if (a2)
      {
        v7 = 0x697461746964656DLL;
        v14 = 0xEB00000000736E6FLL;
      }

      if (a2 <= 1u)
      {
        v17 = v7;
      }

      else
      {
        v17 = v16;
      }

      if (a2 <= 1u)
      {
        v18 = v14;
      }

      else
      {
        v18 = v15;
      }

      if (v12 != v17)
      {
        goto LABEL_44;
      }
    }

    if (v13 != v18)
    {
LABEL_44:
      v19 = sub_1E5B3DDA4();

      return v19 & 1;
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t LibraryPage.apply<A>(as:operation:)(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, char a4, uint64_t a5)
{
  v8 = sub_1E5B3DB94();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21[-v12];
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21[15] = a4;
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (v18)
  {
    v19(v13, 0, 1, a5);
    (*(v14 + 32))(v17, v13, a5);
    a2(v17);
    return (*(v14 + 8))(v17, a5);
  }

  else
  {
    v19(v13, 1, 1, a5);
    return (*(v9 + 8))(v13, v8);
  }
}

uint64_t sub_1E5AF4D3C()
{
  v1 = *v0;
  sub_1E5B3DDC4();
  LibraryPage.rawValue.getter(v1);
  sub_1E5B3DA14();

  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF4DA0()
{
  LibraryPage.rawValue.getter(*v0);
  sub_1E5B3DA14();
}

uint64_t sub_1E5AF4DF4()
{
  v1 = *v0;
  sub_1E5B3DDC4();
  LibraryPage.rawValue.getter(v1);
  sub_1E5B3DA14();

  return sub_1E5B3DDF4();
}

uint64_t _s14FitnessLibrary0B4PageO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1E5B3DC74();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E5AF4EA4()
{
  result = qword_1ED0319C8;
  if (!qword_1ED0319C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0319D0, &qword_1E5B3F2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0319C8);
  }

  return result;
}

unint64_t sub_1E5AF4F0C()
{
  result = qword_1EE2C2980[0];
  if (!qword_1EE2C2980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C2980);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryPage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryPage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5AF50A0()
{
  result = qword_1ED0319D8;
  if (!qword_1ED0319D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0319D8);
  }

  return result;
}

uint64_t sub_1E5AF50F4()
{
  v1 = *v0;
  if ((v1 & 0xFF00) == 0x300)
  {
    v2 = 1;
  }

  else
  {
    v3 = *v0;
    v2 = v1 >> 8;
    MEMORY[0x1E6936540](0);
    sub_1E5B3DA14();
  }

  return MEMORY[0x1E6936540](v2);
}

uint64_t sub_1E5AF5274()
{
  v2 = *v0;
  sub_1E5B3DDC4();
  sub_1E5AF50F4();
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF52C4()
{
  v2 = *v0;
  sub_1E5B3DDC4();
  sub_1E5AF50F4();
  return sub_1E5B3DDF4();
}

BOOL sub_1E5AF530C(unsigned __int16 *a1, _WORD *a2)
{
  v2 = *a1;
  result = (*a2 & 0xFF00) == 0x300 && (v2 & 0xFF00) == 768;
  if ((v2 & 0xFF00) != 0x300 && (*a2 & 0xFF00) != 0x300)
  {
    v4 = *a2;
    return (sub_1E5AFEB1C(v2, *a2) & 1) != 0 && (v4 ^ v2) < 0x100;
  }

  return result;
}

__n128 LibraryFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t LibraryFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, _BYTE *a2, void **a3, unsigned __int16 *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E0, &qword_1E5B3F440);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v54 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v54 - v18;
  v20 = *a4;
  v21 = *a4;
  if (*(a4 + 2) > 1u)
  {
    if (*(a4 + 2) == 2)
    {
      if (v20 > 0xFF || v21 != 6)
      {
        return result;
      }

      if (*a2 > 3u)
      {
        if (*a2 > 5u && *a2 == 6)
        {
LABEL_32:
        }
      }

      else
      {
        *a2;
      }

      v28 = sub_1E5B3DDA4();

      if (v28)
      {
        return result;
      }

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319F8, &qword_1E5B3F460);
      v30 = v29[20];
      v31 = v29[24];
      v32 = v29[28];
      v33 = &v19[v29[32]];
      v55 = 6;
      sub_1E5AF5CC0();
      sub_1E5B3DBC4();
      *(v19 + 5) = 0x3FE0000000000000;
      v19[48] = 0;
      sub_1E5B3DAC4();
      v34 = *MEMORY[0x1E6999B60];
      v35 = sub_1E5B3D8E4();
      (*(*(v35 - 8) + 104))(&v19[v31], v34, v35);
      v36 = *MEMORY[0x1E6999B40];
      v37 = sub_1E5B3D8D4();
      (*(*(v37 - 8) + 104))(&v19[v32], v36, v37);
      *v33 = &unk_1E5B3F468;
      *(v33 + 1) = 0;
      (*(v9 + 104))(v19, *MEMORY[0x1E6999AE0], v8);
      v25 = *a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1E5AF682C(0, v25[2] + 1, 1, v25, &qword_1ED031A40, &qword_1E5B3F5A8, &qword_1ED0319E0, &qword_1E5B3F440);
      }

      v39 = v25[2];
      v38 = v25[3];
      if (v39 >= v38 >> 1)
      {
        v25 = sub_1E5AF682C(v38 > 1, v39 + 1, 1, v25, &qword_1ED031A40, &qword_1E5B3F5A8, &qword_1ED0319E0, &qword_1E5B3F440);
      }

      v25[2] = v39 + 1;
      result = (*(v9 + 32))(v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v39, v19, v8);
    }

    else
    {
      if (v20 > 0xFF || v21 != 6)
      {
        return result;
      }

      v56 = 6;
      sub_1E5AF5CC0();
      sub_1E5B3DBC4();
      (*(v9 + 104))(v16, *MEMORY[0x1E6999AE8], v8);
      v25 = *a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1E5AF682C(0, v25[2] + 1, 1, v25, &qword_1ED031A40, &qword_1E5B3F5A8, &qword_1ED0319E0, &qword_1E5B3F440);
      }

      v27 = v25[2];
      v26 = v25[3];
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1E5AF682C(v26 > 1, v27 + 1, 1, v25, &qword_1ED031A40, &qword_1E5B3F5A8, &qword_1ED0319E0, &qword_1E5B3F440);
      }

      v25[2] = v27 + 1;
      result = (*(v9 + 32))(v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, v16, v8);
    }

    *a3 = v25;
    return result;
  }

  if (!*(a4 + 2))
  {
    *a2 = v21;
    return result;
  }

  if (!*a4)
  {
    v23 = *v4;
    v22 = v4[1];
    v24 = *a2;
    if (v24 <= 3 || v24 != 6)
    {
      v40 = sub_1E5B3DDA4();

      if ((v40 & 1) == 0)
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
        v42 = v41[12];
        v43 = v41[16];
        v54 = v23;
        v44 = v41[20];
        v45 = &v13[v41[24]];
        v57 = 768;
        sub_1E5AF5CC0();
        sub_1E5B3DBC4();
        sub_1E5B3DAC4();
        v46 = *MEMORY[0x1E6999B50];
        v47 = sub_1E5B3D8E4();
        (*(*(v47 - 8) + 104))(&v13[v43], v46, v47);
        v48 = *MEMORY[0x1E6999B40];
        v49 = sub_1E5B3D8D4();
        (*(*(v49 - 8) + 104))(&v13[v44], v48, v49);
        v50 = swift_allocObject();
        *(v50 + 16) = v54;
        *(v50 + 24) = v22;
        *(v50 + 32) = v24;
        *v45 = &unk_1E5B3F458;
        *(v45 + 1) = v50;
        (*(v9 + 104))(v13, *MEMORY[0x1E6999AD8], v8);
        v51 = *a3;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1E5AF682C(0, v51[2] + 1, 1, v51, &qword_1ED031A40, &qword_1E5B3F5A8, &qword_1ED0319E0, &qword_1E5B3F440);
        }

        v53 = v51[2];
        v52 = v51[3];
        if (v53 >= v52 >> 1)
        {
          v51 = sub_1E5AF682C(v52 > 1, v53 + 1, 1, v51, &qword_1ED031A40, &qword_1E5B3F5A8, &qword_1ED0319E0, &qword_1E5B3F440);
        }

        v51[2] = v53 + 1;
        result = (*(v9 + 32))(v51 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v53, v13, v8);
        *a3 = v51;
      }

      return result;
    }

    goto LABEL_32;
  }

  return result;
}

unint64_t sub_1E5AF5CC0()
{
  result = qword_1ED0319F0;
  if (!qword_1ED0319F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0319F0);
  }

  return result;
}

uint64_t sub_1E5AF5D14()
{
  *(v0 + 16) = sub_1E5B3DAB4();
  *(v0 + 24) = sub_1E5B3DAA4();
  *(v0 + 40) = 6;
  *(v0 + 42) = 0;
  v1 = *(MEMORY[0x1E6999AF0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A38, &qword_1E5B3F5A0);
  *v2 = v0;
  v2[1] = sub_1E5AF5DFC;

  return MEMORY[0x1EEE01A40](v0 + 40, v3);
}

uint64_t sub_1E5AF5DFC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1E5B3DA84();

  return MEMORY[0x1EEE6DFA0](sub_1E5AF6A18, v5, v4);
}

uint64_t sub_1E5AF5F38(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E5B3DAB4();
  v4[3] = sub_1E5B3DAA4();
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1E5AF6058;

  return (v10)(a4, 0);
}

uint64_t sub_1E5AF6058()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_1E5B3DA84();
  if (v2)
  {
    v8 = sub_1E5AF6218;
  }

  else
  {
    v8 = sub_1E5AF61B4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E5AF61B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5AF6218()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1E5AF627C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5AF632C;

  return sub_1E5AF5F38(a1, v4, v5, v6);
}

uint64_t sub_1E5AF632C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1E5AF642C()
{
  result = qword_1EE2C2840;
  if (!qword_1EE2C2840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C2840);
  }

  return result;
}

unint64_t sub_1E5AF6484()
{
  result = qword_1EE2C2848[0];
  if (!qword_1EE2C2848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C2848);
  }

  return result;
}

unint64_t sub_1E5AF64DC()
{
  result = qword_1EE2C28F0[0];
  if (!qword_1EE2C28F0[0])
  {
    type metadata accessor for LibraryState();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C28F0);
  }

  return result;
}

uint64_t sub_1E5AF6534(uint64_t *a1, int a2)
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

uint64_t sub_1E5AF657C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for LibraryFeature.TaskIdentifier(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65283;
  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
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

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65283;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65283;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65283;
    }
  }

LABEL_20:
  v7 = *(a1 + 1);
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

uint64_t storeEnumTagSinglePayload for LibraryFeature.TaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65283;
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
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
    v6 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 2) = v6;
      }

      else
      {
        *(result + 2) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *(result + 1) = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1E5AF6720(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5AF6734(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
  }

  else if (a2)
  {
    *(result + 1) = a2 + 2;
  }

  return result;
}

unint64_t sub_1E5AF676C()
{
  result = qword_1ED031A00;
  if (!qword_1ED031A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031A00);
  }

  return result;
}

size_t sub_1E5AF682C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1E5AF6A1C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  type metadata accessor for DynamicSizeClassFeature();
  swift_getWitnessTable();
  sub_1E5B3D934();
  swift_getWitnessTable();
  return sub_1E5B3CE44();
}

uint64_t sub_1E5AF6AD0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return v1();
}

uint64_t DynamicSizeClassView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v4 = *(a1 + 40);
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v46 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v45 = (&v42 - v9);
  v10 = *(v8 + 32);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v43 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v42 = (&v42 - v15);
  v16 = *(v14 + 24);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = *(v18 + 16);
  *(&v21 + 1) = v16;
  v48 = v21;
  v57 = *(v18 + 48);
  v65 = v21;
  v66 = v57;
  v22 = sub_1E5B3CBF4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v42 - v25;
  v52 = sub_1E5B3D164();
  v51 = *(v52 - 8);
  v27 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v42 - v28;
  v53 = v2;
  sub_1E5AF6A1C(a1);
  v54 = v10;
  v55 = v4;
  *&v29 = v10;
  *(&v29 + 1) = v4;
  v59 = v29;
  v58 = v48;
  v60 = v57;
  v30 = *(a1 + 64);
  v31 = *(a1 + 72);
  v61 = v30;
  v62 = v31;
  swift_getKeyPath();
  sub_1E5B3D904();

  sub_1E5B3CBE4();
  (*(v23 + 8))(v26, v22);
  v32 = sub_1E5B3CB84();
  (*(v49 + 8))(v20, v16);
  if (v32)
  {
    v33 = v54;
    v34 = v42;
    sub_1E5AF144C(v42, v53 + *(a1 + 84), v54, v30);
    v35 = v43;
    sub_1E5AF144C(v43, v34, v33, v30);
    v36 = v50;
    sub_1E5AF7058(v35, v33);
    v37 = &v67;
  }

  else
  {
    v34 = v45;
    v33 = v55;
    sub_1E5AF144C(v45, v53 + *(a1 + 88), v55, v31);
    v35 = v46;
    sub_1E5AF144C(v46, v34, v33, v31);
    v36 = v50;
    sub_1E5AF7150(v35, v54, v33);
    v37 = &v68;
  }

  v38 = *(*(v37 - 32) + 8);
  v38(v35, v33);
  v38(v34, v33);
  v63 = v30;
  v64 = v31;
  v39 = v52;
  WitnessTable = swift_getWitnessTable();
  sub_1E5AF144C(v56, v36, v39, WitnessTable);
  return (*(v51 + 8))(v36, v39);
}

uint64_t sub_1E5AF7058(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5B3D144();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E5B3D154();
}

uint64_t sub_1E5AF7150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E5B3D144();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E5B3D154();
}

uint64_t sub_1E5AF7248(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5AF7298(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 17) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFE)
      {
        v24 = (a1 + v9 + 17) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *(a1 + 16);
        if (v23 > 1)
        {
          return (v23 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1E5AF74BC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 32) - 8);
  v7 = *(a4 + 40);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 17) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFE)
  {
    v24 = &a1[v10 + 17] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else if (a2 > 0xFE)
  {
    a1[16] = 0;
    *a1 = a2 - 255;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

uint64_t FitnessPlusFeatures.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1E5B3DC74();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1E5AF7878()
{
  result = qword_1ED031A48;
  if (!qword_1ED031A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031A48);
  }

  return result;
}

uint64_t sub_1E5AF78CC()
{
  sub_1E5B3DDC4();
  sub_1E5B3DA14();
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF7950()
{
  sub_1E5B3DDC4();
  sub_1E5B3DA14();
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF79AC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E5B3DC74();

  *a2 = v5 != 0;
  return result;
}

uint64_t ContentRating.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E61656C63;
  }

  if (a1 == 1)
  {
    return 0x746963696C707865;
  }

  return 0x6669636570736E75;
}

uint64_t sub_1E5AF7ACC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x746963696C707865;
  if (v2 != 1)
  {
    v4 = 0x6669636570736E75;
    v3 = 0xEB00000000646569;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E61656C63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x746963696C707865;
  if (*a2 != 1)
  {
    v8 = 0x6669636570736E75;
    v7 = 0xEB00000000646569;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E61656C63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E5B3DDA4();
  }

  return v11 & 1;
}

uint64_t sub_1E5AF7BDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s14FitnessLibrary13ContentRatingO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1E5AF7C0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x746963696C707865;
  if (v2 != 1)
  {
    v5 = 0x6669636570736E75;
    v4 = 0xEB00000000646569;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E61656C63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1E5AF7D30()
{
  v1 = *v0;
  sub_1E5B3DDC4();
  sub_1E5B3DA14();

  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AF7DD8()
{
  *v0;
  *v0;
  sub_1E5B3DA14();
}

uint64_t sub_1E5AF7E6C()
{
  v1 = *v0;
  sub_1E5B3DDC4();
  sub_1E5B3DA14();

  return sub_1E5B3DDF4();
}

uint64_t _s14FitnessLibrary13ContentRatingO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1E5B3DC74();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E5AF7F60()
{
  result = qword_1ED031A50;
  if (!qword_1ED031A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031A58, &qword_1E5B3F7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031A50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentRating(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContentRating(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5AF8114()
{
  result = qword_1ED031A60;
  if (!qword_1ED031A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031A60);
  }

  return result;
}

uint64_t sub_1E5AF8168()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A68, qword_1E5B3F918);
  sub_1E5AF9F18();

  return sub_1E5B3CE44();
}

uint64_t CompactLibraryView.init(store:canvasViewBuilder:pageCountViewBuilder:isTablet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X4>, char a5@<W6>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *a6 = sub_1E5AEFB94;
  *(a6 + 8) = v12;
  *(a6 + 16) = 0;
  v13 = type metadata accessor for CompactLibraryView();
  v14 = v13[13];

  v16 = a3(v15);
  v17 = a6 + v13[14];
  a4(v16);

  *(a6 + v13[15]) = a5;
  return result;
}

uint64_t CompactLibraryView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v71 = a2;
  v58 = a1;
  v3 = a1 - 8;
  v70 = *(a1 - 8);
  v4 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v73 = v5;
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1E5B3D184();
  v59 = *(v62 - 1);
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  v74 = *(v3 + 24);
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  sub_1E5B3D704();
  sub_1E5B3CF34();
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  sub_1E5B3D724();
  swift_getWitnessTable();
  v10 = sub_1E5B3CDF4();
  v57 = *(v10 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - v12;
  WitnessTable = swift_getWitnessTable();
  v56 = v10;
  v82 = v10;
  v83 = WitnessTable;
  v15 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = *(OpaqueTypeMetadata2 - 8);
  v17 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v19 = &v52 - v18;
  v61 = v20;
  v21 = sub_1E5B3CF34();
  v66 = *(v21 - 8);
  v22 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v64 = &v52 - v23;
  v67 = v24;
  v69 = sub_1E5B3CF34();
  v68 = *(v69 - 8);
  v25 = *(v68 + 64);
  v26 = MEMORY[0x1EEE9AC00](v69);
  v63 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v65 = (&v52 - v28);
  sub_1E5B3D284();
  v29 = *(v3 + 40);
  v75 = v74;
  v76 = v29;
  v72 = v29;
  v77 = v2;
  sub_1E5AF0C6C();
  sub_1E5B3D174();
  LOBYTE(v10) = sub_1E5B3D284();
  sub_1E5B3D274();
  sub_1E5B3D274();
  if (sub_1E5B3D274() != v10)
  {
    sub_1E5B3D274();
  }

  v55 = v19;
  v30 = v56;
  sub_1E5B3D4E4();
  (*(v59 + 8))(v9, v62);
  (*(v57 + 8))(v13, v30);
  v31 = v70;
  v62 = *(v70 + 16);
  v54 = v2;
  v32 = v58;
  v62(v6, v2, v58);
  v53 = v6;
  v33 = (*(v31 + 80) + 48) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v35 = v72;
  *(v34 + 16) = v74;
  *(v34 + 32) = v35;
  v70 = *(v31 + 32);
  (v70)(v34 + v33, v6, v32);
  v82 = v30;
  v83 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v64;
  v38 = v61;
  v39 = v55;
  sub_1E5B3D554();

  (*(v60 + 8))(v39, v38);
  v40 = v53;
  v62(v53, v54, v32);
  v41 = swift_allocObject();
  v42 = v72;
  *(v41 + 16) = v74;
  *(v41 + 32) = v42;
  (v70)(v41 + v33, v40, v32);
  v43 = MEMORY[0x1E69805D0];
  v80 = OpaqueTypeConformance2;
  v81 = MEMORY[0x1E69805D0];
  v44 = v67;
  v45 = swift_getWitnessTable();
  v46 = v63;
  sub_1E5B3D454();

  (*(v66 + 8))(v37, v44);
  v78 = v45;
  v79 = v43;
  v47 = v69;
  v48 = swift_getWitnessTable();
  v49 = v65;
  sub_1E5AF144C(v65, v46, v47, v48);
  v50 = *(v68 + 8);
  v50(v46, v47);
  sub_1E5AF144C(v71, v49, v47, v48);
  return (v50)(v49, v47);
}

uint64_t sub_1E5AF8B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v21 = a5;
  v22 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0317A0, &qword_1E5B3E770);
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  sub_1E5B3D704();
  sub_1E5B3CF34();
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  v10 = sub_1E5B3D724();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v21 - v16);
  sub_1E5B3D7D4();
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = v21;
  v27 = a1;
  sub_1E5B3D714();
  WitnessTable = swift_getWitnessTable();
  sub_1E5AF144C(v17, v15, v10, WitnessTable);
  v19 = *(v11 + 8);
  v19(v15, v10);
  sub_1E5AF144C(v22, v17, v10, WitnessTable);
  return (v19)(v17, v10);
}

uint64_t sub_1E5AF8DF8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a4;
  v53 = a6;
  swift_getTupleTypeMetadata2();
  v43[1] = sub_1E5B3D834();
  v43[0] = swift_getWitnessTable();
  v10 = sub_1E5B3D704();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v43 - v12;
  v14 = sub_1E5B3CF34();
  v49 = *(v14 - 8);
  v15 = *(v49 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v52 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v44 = v43 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v51 = v43 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0317A0, &qword_1E5B3E770);
  v46 = *(v21 - 8);
  v47 = v21;
  v22 = *(v46 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v50 = v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v43 - v25;
  v58 = 0;
  LOBYTE(v59) = 1;
  v27 = sub_1E5B3D284();
  sub_1E5B3D274();
  sub_1E5B3D274();
  if (sub_1E5B3D274() != v27)
  {
    sub_1E5B3D274();
  }

  sub_1E5B3D7E4();
  v28 = sub_1E5B3D4F4();
  MEMORY[0x1EEE9AC00](v28);
  v43[-6] = a2;
  v43[-5] = a3;
  v54 = v26;
  v29 = a3;
  v30 = v48;
  v43[-4] = v48;
  v43[-3] = a5;
  v43[-2] = a1;
  sub_1E5B3D114();
  sub_1E5B3D6F4();
  sub_1E5B3D2B4();
  v58 = a2;
  v59 = v29;
  v60 = v30;
  v61 = a5;
  *(a1 + *(type metadata accessor for CompactLibraryView() + 60));
  WitnessTable = swift_getWitnessTable();
  v32 = v44;
  sub_1E5B3D534();
  (*(v45 + 8))(v13, v10);
  v57[2] = WitnessTable;
  v57[3] = MEMORY[0x1E697E5D8];
  v33 = swift_getWitnessTable();
  v34 = v51;
  sub_1E5AF144C(v51, v32, v14, v33);
  v35 = v49;
  v36 = *(v49 + 8);
  v36(v32, v14);
  v38 = v46;
  v37 = v47;
  v39 = v50;
  (*(v46 + 16))(v50, v54, v47);
  v58 = v39;
  v40 = v52;
  (*(v35 + 16))(v52, v34, v14);
  v59 = v40;
  v57[0] = v37;
  v57[1] = v14;
  OpaqueTypeConformance2 = MEMORY[0x1E6981840];
  v56 = MEMORY[0x1E6981838];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v33;
  sub_1E5B073C8(&v58, 2uLL, v57);
  v36(v34, v14);
  v41 = *(v38 + 8);
  v41(v54, v37);
  v36(v40, v14);
  return (v41)(v39, v37);
}

uint64_t sub_1E5AF9388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a6;
  v38 = *(a2 - 8);
  v11 = *(v38 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v40 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - v15;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v14);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v37 - v23;
  v44 = v25;
  v45 = v26;
  v46 = v27;
  v47 = v28;
  v29 = type metadata accessor for CompactLibraryView();
  sub_1E5AF144C(v24, a1 + *(v29 + 56), a3, a5);
  v30 = a1 + *(v29 + 52);
  v31 = a4;
  sub_1E5AF144C(v16, v30, a2, a4);
  (*(v18 + 16))(v22, v24, a3);
  v44 = v22;
  v32 = v38;
  v33 = v40;
  (*(v38 + 16))(v40, v16, a2);
  v45 = v33;
  v43[0] = a3;
  v43[1] = a2;
  v41 = a5;
  v42 = v31;
  sub_1E5B073C8(&v44, 2uLL, v43);
  v34 = *(v32 + 8);
  v34(v16, a2);
  v35 = *(v18 + 8);
  v35(v24, a3);
  v34(v40, a2);
  return v35(v22, a3);
}

uint64_t sub_1E5AF9620()
{
  type metadata accessor for CompactLibraryView();
  sub_1E5AF8168();
  sub_1E5B3D914();
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 40);
  v2 = (type metadata accessor for CompactLibraryView() - 8);
  v3 = *(*v2 + 64);
  v4 = (v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80)));
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  sub_1E5AF0DEC();
  (*(*(v1 - 8) + 8))(v4 + v2[15], v1);
  (*(*(v9 - 8) + 8))(v4 + v2[16]);
  return swift_deallocObject();
}

uint64_t sub_1E5AF97CC()
{
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v1 = *(*(type metadata accessor for CompactLibraryView() - 8) + 80);
  return sub_1E5AF9620();
}

uint64_t sub_1E5AF986C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_1E5AF98BC(uint64_t a1)
{
  sub_1E5AF9EA8();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E5AF9968(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = *(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 17) & ~v9)) & ~v11) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFE)
      {
        v24 = (a1 + v9 + 17) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *(a1 + 16);
        if (v23 > 1)
        {
          return (v23 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1E5AF9B90(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(v8 - 8) + 64) + ((v11 + v12 + ((v10 + 17) & ~v10)) & ~v12) + 1;
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (*(*(v8 - 8) + 64) + ((v11 + v12 + ((v10 + 17) & ~v10)) & ~v12) != -1)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFE)
  {
    v24 = &a1[v10 + 17] & ~v10;
    if (v7 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else if (a2 > 0xFE)
  {
    a1[16] = 0;
    *a1 = a2 - 255;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

void sub_1E5AF9EA8()
{
  if (!qword_1EE2C2418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031A68, qword_1E5B3F918);
    sub_1E5AF9F18();
    v0 = sub_1E5B3CE54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C2418);
    }
  }
}

unint64_t sub_1E5AF9F18()
{
  result = qword_1EE2C23F8;
  if (!qword_1EE2C23F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031A68, qword_1E5B3F918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C23F8);
  }

  return result;
}

uint64_t LibraryRemoteParticipant.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1E5AFA00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5AFA094(uint64_t a1)
{
  v2 = sub_1E5AFA248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AFA0D0(uint64_t a1)
{
  v2 = sub_1E5AFA248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryRemoteParticipant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A70, &qword_1E5B3F930);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFA248();
  sub_1E5B3DE14();
  sub_1E5B3DD34();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E5AFA248()
{
  result = qword_1ED031A78;
  if (!qword_1ED031A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031A78);
  }

  return result;
}

uint64_t LibraryRemoteParticipant.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A80, &qword_1E5B3F938);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFA248();
  sub_1E5B3DE04();
  if (!v2)
  {
    v11 = sub_1E5B3DCB4();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E5AFA428(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A70, &qword_1E5B3F930);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFA248();
  sub_1E5B3DE14();
  sub_1E5B3DD34();
  return (*(v4 + 8))(v7, v3);
}

uint64_t static LibraryRemoteParticipant.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1E5B3DDA4() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t LibraryRemoteParticipant.hash(into:)()
{
  if (!v0[1])
  {
    return sub_1E5B3DDE4();
  }

  v1 = *v0;
  sub_1E5B3DDE4();

  return sub_1E5B3DA14();
}

uint64_t LibraryRemoteParticipant.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5B3DDC4();
  sub_1E5B3DDE4();
  if (v2)
  {
    sub_1E5B3DA14();
  }

  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AFA6A8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5B3DDC4();
  sub_1E5B3DDE4();
  if (v2)
  {
    sub_1E5B3DA14();
  }

  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AFA718()
{
  if (!v0[1])
  {
    return sub_1E5B3DDE4();
  }

  v1 = *v0;
  sub_1E5B3DDE4();

  return sub_1E5B3DA14();
}

uint64_t sub_1E5AFA790()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5B3DDC4();
  sub_1E5B3DDE4();
  if (v2)
  {
    sub_1E5B3DA14();
  }

  return sub_1E5B3DDF4();
}

unint64_t sub_1E5AFA800()
{
  result = qword_1ED031A88;
  if (!qword_1ED031A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031A88);
  }

  return result;
}

uint64_t sub_1E5AFA854(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1E5B3DDA4() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1E5AFA8B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1E5AFA90C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1E5AFA980()
{
  result = qword_1ED031A90;
  if (!qword_1ED031A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031A90);
  }

  return result;
}

unint64_t sub_1E5AFA9D8()
{
  result = qword_1ED031A98;
  if (!qword_1ED031A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031A98);
  }

  return result;
}

unint64_t sub_1E5AFAA30()
{
  result = qword_1ED031AA0;
  if (!qword_1ED031AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031AA0);
  }

  return result;
}

unint64_t LibraryCanvasPlaceholderReferenceType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6D6172676F7270;
  v2 = 0x74756F6B726F77;
  if (a1 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (a1)
  {
    v1 = 0x6B63617473;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5AFAB04(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6D6172676F7270;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0xE700000000000000;
  v6 = 0x74756F6B726F77;
  v7 = 0x80000001E5B45C10;
  if (v3 != 2)
  {
    v6 = 0xD000000000000013;
    v5 = 0x80000001E5B45C10;
  }

  v8 = 0x6B63617473;
  if (*a1)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v8 = 0x6D6172676F7270;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v3 <= 1)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  v11 = 0xE700000000000000;
  v12 = 0x74756F6B726F77;
  if (*a2 == 2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xD000000000000013;
  }

  if (*a2)
  {
    v2 = 0x6B63617473;
    v11 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v11;
  }

  else
  {
    v14 = v7;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1E5B3DDA4();
  }

  return v15 & 1;
}

uint64_t sub_1E5AFAC38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s14FitnessLibrary0B30CanvasPlaceholderReferenceTypeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1E5AFAC68(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6D6172676F7270;
  v4 = 0xE700000000000000;
  v5 = 0x74756F6B726F77;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000001E5B45C10;
  }

  if (*v1)
  {
    v3 = 0x6B63617473;
    v2 = 0xE500000000000000;
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

uint64_t sub_1E5AFAD98()
{
  v1 = *v0;
  sub_1E5B3DDC4();
  sub_1E5B3DA14();

  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AFAE5C()
{
  *v0;
  *v0;
  *v0;
  sub_1E5B3DA14();
}

uint64_t sub_1E5AFAF0C()
{
  v1 = *v0;
  sub_1E5B3DDC4();
  sub_1E5B3DA14();

  return sub_1E5B3DDF4();
}

uint64_t _s14FitnessLibrary0B30CanvasPlaceholderReferenceTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1E5B3DC74();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E5AFB01C()
{
  result = qword_1ED031AA8;
  if (!qword_1ED031AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031AA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryCanvasPlaceholderReferenceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryCanvasPlaceholderReferenceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5AFB1C0()
{
  result = qword_1ED031AB0;
  if (!qword_1ED031AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031AB0);
  }

  return result;
}

uint64_t LibraryState.layout.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for LibraryState();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t LibraryState.isSidebarVisible.setter(char a1)
{
  result = type metadata accessor for LibraryState();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t LibraryState.accountState.setter(char a1)
{
  result = type metadata accessor for LibraryState();
  *(v1 + *(result + 32)) = a1;
  return result;
}

unint64_t sub_1E5AFB3B0()
{
  v1 = *v0;
  v2 = 0x656C61636F6CLL;
  v3 = 0x74756F79616CLL;
  v4 = 0x53746E756F636361;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1E5AFB450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5AFC4E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5AFB484(uint64_t a1)
{
  v2 = sub_1E5AFBA1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AFB4C0(uint64_t a1)
{
  v2 = sub_1E5AFBA1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryState.withLayout(_:)@<X0>(__int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = type metadata accessor for LibraryState();
  v7 = v6[5];
  v8 = sub_1E5B3CB44();
  result = (*(*(v8 - 8) + 16))(&a2[v7], &v2[v7], v8);
  v10 = v6[7];
  v11 = v6[8];
  v12 = v2[v10];
  v13 = v2[v11];
  *a2 = v5;
  *&a2[v6[6]] = v4;
  a2[v10] = v12;
  a2[v11] = v13;
  return result;
}

uint64_t LibraryState.withLocale(_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for LibraryState();
  v7 = v6[5];
  v8 = *&v2[v6[6]];
  v9 = sub_1E5B3CB44();
  result = (*(*(v9 - 8) + 16))(&a2[v7], a1, v9);
  v11 = v6[7];
  v12 = v6[8];
  v13 = v2[v11];
  v14 = v2[v12];
  *a2 = v5;
  *&a2[v6[6]] = v8;
  a2[v11] = v13;
  a2[v12] = v14;
  return result;
}

uint64_t LibraryState.withSidebarVisible(_:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for LibraryState();
  v7 = v6[5];
  v8 = *&v2[v6[6]];
  v9 = sub_1E5B3CB44();
  result = (*(*(v9 - 8) + 16))(&a2[v7], &v2[v7], v9);
  v12 = v6[7];
  v11 = v6[8];
  v13 = v2[v11];
  *a2 = v5;
  *&a2[v6[6]] = v8;
  a2[v12] = a1;
  a2[v11] = v13;
  return result;
}

uint64_t LibraryState.withAccountState(_:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for LibraryState();
  v7 = v6[5];
  v8 = *&v2[v6[6]];
  v9 = sub_1E5B3CB44();
  result = (*(*(v9 - 8) + 16))(&a2[v7], &v2[v7], v9);
  v11 = v6[7];
  v12 = v6[8];
  v13 = v2[v11];
  *a2 = v5;
  *&a2[v6[6]] = v8;
  a2[v11] = v13;
  a2[v12] = a1;
  return result;
}

uint64_t LibraryState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031AB8, &qword_1E5B3FC78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFBA1C();
  sub_1E5B3DE14();
  v19 = *v3;
  v18 = 0;
  sub_1E5AFBA70();
  sub_1E5B3DD74();
  if (!v2)
  {
    v11 = type metadata accessor for LibraryState();
    v12 = v11[5];
    v17 = 1;
    sub_1E5B3CB44();
    sub_1E5AFBFCC(&qword_1ED031AD0);
    sub_1E5B3DD74();
    v16 = *&v3[v11[6]];
    v15[10] = 2;
    sub_1E5AFBAC4();
    sub_1E5B3DD74();
    v13 = v3[v11[7]];
    v15[9] = 3;
    sub_1E5B3DD54();
    v15[8] = v3[v11[8]];
    v15[7] = 4;
    sub_1E5AFBB18();
    sub_1E5B3DD74();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E5AFBA1C()
{
  result = qword_1ED031AC0;
  if (!qword_1ED031AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031AC0);
  }

  return result;
}

unint64_t sub_1E5AFBA70()
{
  result = qword_1ED031AC8;
  if (!qword_1ED031AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031AC8);
  }

  return result;
}

unint64_t sub_1E5AFBAC4()
{
  result = qword_1ED031AD8;
  if (!qword_1ED031AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031AD8);
  }

  return result;
}

unint64_t sub_1E5AFBB18()
{
  result = qword_1ED031AE0;
  if (!qword_1ED031AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031AE0);
  }

  return result;
}

uint64_t LibraryState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1E5B3CB44();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031AE8, &qword_1E5B3FC80);
  v25 = *(v28 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v23 - v8;
  v10 = type metadata accessor for LibraryState();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AFBA1C();
  v27 = v9;
  v15 = v29;
  sub_1E5B3DE04();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = a1;
  v16 = v25;
  v17 = v26;
  v36 = 0;
  sub_1E5AFBF78();
  sub_1E5B3DCF4();
  v18 = v13;
  *v13 = v37;
  v35 = 1;
  sub_1E5AFBFCC(&qword_1ED031AF8);
  sub_1E5B3DCF4();
  (*(v17 + 32))(&v13[v10[5]], v6, v3);
  v33 = 2;
  sub_1E5AFC010();
  sub_1E5B3DCF4();
  *&v13[v10[6]] = v34;
  v32 = 3;
  v19 = sub_1E5B3DCD4();
  v20 = v29;
  *(v18 + v10[7]) = v19 & 1;
  v30 = 4;
  sub_1E5AFC064();
  sub_1E5B3DCF4();
  v21 = v10[8];
  (*(v16 + 8))(v27, v28);
  *(v18 + v21) = v31;
  sub_1E5AFC0B8(v18, v24);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1E5AFC11C(v18);
}

unint64_t sub_1E5AFBF78()
{
  result = qword_1ED031AF0;
  if (!qword_1ED031AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031AF0);
  }

  return result;
}

uint64_t sub_1E5AFBFCC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E5B3CB44();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5AFC010()
{
  result = qword_1ED031B00;
  if (!qword_1ED031B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031B00);
  }

  return result;
}

unint64_t sub_1E5AFC064()
{
  result = qword_1ED031B08;
  if (!qword_1ED031B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031B08);
  }

  return result;
}

uint64_t sub_1E5AFC0B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5AFC11C(uint64_t a1)
{
  v2 = type metadata accessor for LibraryState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL _s14FitnessLibrary0B5StateV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (sub_1E5AFEB1C(*a1, *a2) & 1) != 0 && (v4 = type metadata accessor for LibraryState(), (MEMORY[0x1E6935290](&a1[v4[5]], &a2[v4[5]])) && (v5 = v4[6], v6 = &a1[v5], v7 = a1[v5], v8 = &a2[v5], v7 == *v8) && (v9 = v6[1], v10 = v8[1], (sub_1E5B3CCB4()) && a1[v4[7]] == a2[v4[7]])
  {
    return a1[v4[8]] == a2[v4[8]];
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for LibraryState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5AFC3E4()
{
  result = qword_1ED031B10;
  if (!qword_1ED031B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031B10);
  }

  return result;
}

unint64_t sub_1E5AFC43C()
{
  result = qword_1ED031B18;
  if (!qword_1ED031B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031B18);
  }

  return result;
}

unint64_t sub_1E5AFC494()
{
  result = qword_1ED031B20;
  if (!qword_1ED031B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031B20);
  }

  return result;
}

uint64_t sub_1E5AFC4E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001E5B45FC0 == a2;
  if (v3 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5B45FE0 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x53746E756F636361 && a2 == 0xEC00000065746174)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t sub_1E5AFC6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  swift_getFunctionTypeMetadata1();
  return sub_1E5B3CB54();
}

uint64_t (*sub_1E5AFC758(uint64_t a1))(char a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 24);
  swift_getFunctionTypeMetadata1();
  sub_1E5B3CB74();
  sub_1E5B3CB64();
  v4 = swift_allocObject();
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = v3;
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 48) = v6;
  return sub_1E5AFE304;
}

uint64_t sub_1E5AFC838(char a1)
{
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](a1 & 1);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5AFC880(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v6 = *v2;
  v7 = *(v2 + 1);
  v8 = v2[16];
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  type metadata accessor for TVLibraryView.FocusedView();
  sub_1E5B3DB94();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5B3CDC4();
  sub_1E5B3CDA4();
  return v4;
}

BOOL sub_1E5AFC950(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1E5AFC800(*a1, *a2);
}

uint64_t sub_1E5AFC968(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1E5AFC838(*v1);
}

uint64_t sub_1E5AFC97C(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_1E5AFC810(a1, *v2);
}

uint64_t sub_1E5AFC990(uint64_t a1, void *a2)
{
  sub_1E5B3DDC4();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_1E5AFC810(v9, *v2);
  return sub_1E5B3DDF4();
}

uint64_t TVLibraryView.init(store:libraryPickerViewBuilder:canvasViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v14 = type metadata accessor for TVLibraryView();
  v15 = a8 + v14[15];
  type metadata accessor for TVLibraryView.FocusedView();
  swift_getWitnessTable();
  sub_1E5B3CDB4();
  *v15 = a6;
  *(v15 + 8) = a7;
  *(v15 + 16) = a9;
  v16 = (a8 + v14[16]);
  *v16 = xmmword_1E5B3FE50;
  v16[1] = xmmword_1E5B3FE60;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *a8 = sub_1E5AEFB94;
  *(a8 + 8) = v17;
  *(a8 + 16) = 0;
  v18 = v14[13];

  a3(v19);
  v20 = a8 + v14[14];
  sub_1E5AFC6A4(a4, a5, a6, a7, a9, a10);
}

uint64_t TVLibraryView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v79 = a2;
  v78 = sub_1E5B3D244();
  v77 = *(v78 - 8);
  v3 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(a1 + 16);
  v5 = v75;
  v6 = sub_1E5B3CF34();
  v7 = *(a1 + 40);
  v8.i64[0] = v5;
  v80 = *(a1 + 24);
  *&v9 = vdupq_laneq_s64(v80, 1).u64[0];
  *(&v9 + 1) = v7;
  v73 = v7;
  v95 = vzip1q_s64(v8, v80);
  v96 = v9;
  type metadata accessor for TVLibraryView.FocusedView();
  v10 = sub_1E5B3DB94();
  v93 = v80.i64[1];
  v94 = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  v92 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v95.i64[0] = v6;
  v95.i64[1] = v10;
  *&v96 = WitnessTable;
  *(&v96 + 1) = v12;
  v13 = v12;
  swift_getOpaqueTypeMetadata2();
  v14 = sub_1E5B3CF34();
  v90 = v7;
  v91 = MEMORY[0x1E697EBF8];
  v15 = swift_getWitnessTable();
  v95.i64[0] = v14;
  v95.i64[1] = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v95.i64[0] = v14;
  v95.i64[1] = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95.i64[0] = OpaqueTypeMetadata2;
  v95.i64[1] = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v95.i64[0] = OpaqueTypeMetadata2;
  v95.i64[1] = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v95.i64[0] = v18;
  v95.i64[1] = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v95.i64[0] = v18;
  v95.i64[1] = v19;
  v21 = swift_getOpaqueTypeConformance2();
  v95.i64[0] = v20;
  v95.i64[1] = v10;
  *&v96 = v21;
  *(&v96 + 1) = v13;
  v62 = v13;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5B3D834();
  swift_getWitnessTable();
  v22 = sub_1E5B3D6E4();
  v67 = *(v22 - 8);
  v23 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v58 - v24;
  v61 = swift_getWitnessTable();
  v95.i64[0] = v22;
  v95.i64[1] = v10;
  *&v96 = v61;
  *(&v96 + 1) = v13;
  v64 = MEMORY[0x1E697CE68];
  v63 = swift_getOpaqueTypeMetadata2();
  v66 = *(v63 - 8);
  v26 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v58 - v27;
  v28 = sub_1E5B3CF34();
  v70 = *(v28 - 8);
  v29 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v60 = &v58 - v30;
  v71 = v31;
  v65 = sub_1E5B3CF34();
  v72 = *(v65 - 8);
  v32 = *(v72 + 64);
  v33 = MEMORY[0x1EEE9AC00](v65);
  v68 = &v58 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v69 = (&v58 - v35);
  sub_1E5B3D0A4();
  v36 = (v74 + *(a1 + 64));
  v37 = *v36;
  v81 = v75;
  v82 = v80;
  v83 = v73;
  v84 = v74;
  sub_1E5B3D6D4();
  v95.i64[0] = sub_1E5AFC880(a1);
  v95.i64[1] = v38;
  LOBYTE(v96) = v39;
  v89 = 1;
  v40 = v76;
  sub_1E5B3D234();
  v41 = swift_checkMetadataState();
  v42 = v61;
  v43 = v62;
  MEMORY[0x1E6935BD0](&v95, &v89, v40, v22, v41, v61, v62);
  (*(v77 + 8))(v40, v78);

  v44 = v25;
  v45 = v60;
  (*(v67 + 8))(v44, v22);
  sub_1E5B3D2D4();
  v46 = v36[2];
  v95.i64[0] = v22;
  v95.i64[1] = v41;
  *&v96 = v42;
  *(&v96 + 1) = v43;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v63;
  v49 = v59;
  sub_1E5B3D534();
  (*(v66 + 8))(v49, v48);
  LOBYTE(v18) = sub_1E5B3D2D4();
  sub_1E5B3D2E4();
  sub_1E5B3D2E4();
  if (sub_1E5B3D2E4() != v18)
  {
    sub_1E5B3D2E4();
  }

  sub_1E5B3CF44();
  v87 = v47;
  v88 = MEMORY[0x1E697E5D8];
  v50 = v71;
  v51 = swift_getWitnessTable();
  v52 = v68;
  sub_1E5B3D494();
  (*(v70 + 8))(v45, v50);
  v85 = v51;
  v86 = MEMORY[0x1E6980A30];
  v53 = v65;
  v54 = swift_getWitnessTable();
  v55 = v69;
  sub_1E5AF144C(v69, v52, v53, v54);
  v56 = *(v72 + 8);
  v56(v52, v53);
  sub_1E5AF144C(v79, v55, v53, v54);
  return (v56)(v55, v53);
}

uint64_t sub_1E5AFD4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v100 = a4;
  v102 = a1;
  v124 = a6;
  v123 = *(a3 - 8);
  v8 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v120 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10;
  v126 = v10;
  v12 = sub_1E5B3CF34();
  v122 = *(v12 - 8);
  v13 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v119 = &v93 - v14;
  v138 = a5;
  v139 = MEMORY[0x1E697EBF8];
  v15 = a5;
  v130 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v134 = v12;
  v135 = WitnessTable;
  v116 = v12;
  v17 = WitnessTable;
  v117 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v121 = *(OpaqueTypeMetadata2 - 8);
  v19 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v114 = &v93 - v20;
  v134 = v12;
  v135 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v111 = OpaqueTypeMetadata2;
  v134 = OpaqueTypeMetadata2;
  v135 = OpaqueTypeConformance2;
  v22 = OpaqueTypeConformance2;
  v112 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeMetadata2();
  v118 = *(v23 - 8);
  v24 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v113 = &v93 - v25;
  v134 = OpaqueTypeMetadata2;
  v135 = v22;
  v26 = swift_getOpaqueTypeConformance2();
  v134 = v23;
  v135 = v26;
  v27 = v23;
  v106 = v23;
  v28 = v26;
  v107 = v26;
  v29 = swift_getOpaqueTypeMetadata2();
  v105 = v29;
  v115 = *(v29 - 8);
  v30 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v110 = &v93 - v31;
  v134 = a2;
  v135 = v11;
  v32 = a2;
  v33 = v100;
  v136 = v100;
  v137 = v15;
  v96 = v15;
  type metadata accessor for TVLibraryView.FocusedView();
  v34 = sub_1E5B3DB94();
  v134 = v27;
  v135 = v28;
  v35 = swift_getOpaqueTypeConformance2();
  v104 = v35;
  v133[4] = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v134 = v29;
  v135 = v34;
  v37 = v34;
  v95 = v34;
  v136 = v35;
  v137 = v36;
  v38 = v36;
  v127 = v36;
  v129 = MEMORY[0x1E697D568];
  v109 = swift_getOpaqueTypeMetadata2();
  v108 = *(v109 - 8);
  v39 = *(v108 + 64);
  v40 = MEMORY[0x1EEE9AC00](v109);
  v101 = &v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v103 = &v93 - v42;
  v43 = sub_1E5B3CF34();
  v99 = *(v43 - 8);
  v44 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v93 - v45;
  v133[2] = v33;
  v133[3] = MEMORY[0x1E697E040];
  v98 = swift_getWitnessTable();
  v134 = v43;
  v135 = v37;
  v136 = v98;
  v137 = v38;
  v125 = swift_getOpaqueTypeMetadata2();
  v130 = *(v125 - 8);
  v47 = *(v130 + 64);
  v48 = MEMORY[0x1EEE9AC00](v125);
  v50 = &v93 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v128 = (&v93 - v51);
  v134 = v32;
  v135 = v126;
  v136 = v33;
  v137 = v15;
  v52 = type metadata accessor for TVLibraryView();
  v53 = *(v52 + 52);
  v54 = *(v52 + 64);
  v94 = v52;
  v55 = *(v102 + v54 + 24);
  sub_1E5B3D7E4();
  sub_1E5B3D504();
  v134 = sub_1E5AFC880(v52);
  v135 = v56;
  LOBYTE(v136) = v57;
  LOBYTE(v133[0]) = 0;
  v58 = swift_checkMetadataState();
  v59 = v98;
  v60 = v127;
  sub_1E5B3D524();

  (*(v99 + 8))(v46, v43);
  v134 = v43;
  v135 = v58;
  v136 = v59;
  v137 = v60;
  v98 = swift_getOpaqueTypeConformance2();
  v97 = v50;
  v61 = v125;
  sub_1E5AF144C(v128, v50, v125, v98);
  v99 = *(v130 + 8);
  v100 = v130 + 8;
  (v99)(v50, v61);
  v62 = v94;
  sub_1E5AFC758(v94);
  v64 = v63;
  sub_1E5AF8168();
  swift_getKeyPath();
  sub_1E5B3D904();

  v65 = *(v64 + 48);
  v66 = *(v64 + 56);
  LOBYTE(v134) = v133[0];
  v67 = v120;
  v65(&v134);

  sub_1E5B3D7E4();
  v68 = v126;
  v69 = v119;
  sub_1E5B3D514();
  (*(v123 + 8))(v67, v68);
  sub_1E5B3D284();
  sub_1E5B3D7E4();
  v70 = v114;
  v71 = v116;
  sub_1E5B3D4F4();
  (*(v122 + 8))(v69, v71);
  v72 = v113;
  v73 = v111;
  sub_1E5B3D3B4();
  (*(v121 + 8))(v70, v73);
  v74 = v110;
  v75 = v106;
  sub_1E5B3D4B4();
  (*(v118 + 8))(v72, v75);
  v134 = sub_1E5AFC880(v62);
  v135 = v76;
  LOBYTE(v136) = v77;
  LOBYTE(v133[0]) = 1;
  v78 = v101;
  v79 = v105;
  v80 = v104;
  v81 = v127;
  sub_1E5B3D524();

  (*(v115 + 8))(v74, v79);
  v134 = v79;
  v135 = v58;
  v136 = v80;
  v137 = v81;
  v82 = swift_getOpaqueTypeConformance2();
  v83 = v103;
  v84 = v109;
  sub_1E5AF144C(v103, v78, v109, v82);
  v85 = v108;
  v86 = *(v108 + 8);
  v87 = v78;
  v86(v78, v84);
  v88 = v97;
  v89 = v128;
  v90 = v125;
  (*(v130 + 16))(v97, v128, v125);
  v134 = v88;
  (*(v85 + 16))(v87, v83, v84);
  v135 = v87;
  v133[0] = v90;
  v133[1] = v84;
  v131 = v98;
  v132 = v82;
  sub_1E5B073C8(&v134, 2uLL, v133);
  v86(v83, v84);
  v91 = v99;
  (v99)(v89, v90);
  v86(v87, v84);
  return v91(v88, v90);
}