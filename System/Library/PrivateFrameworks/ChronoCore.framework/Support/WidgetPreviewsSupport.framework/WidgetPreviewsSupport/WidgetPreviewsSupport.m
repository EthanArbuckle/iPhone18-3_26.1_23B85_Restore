uint64_t WidgetPreviewRequest.previewInstance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24342C32C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WidgetPreviewRequest.widgetInfoData.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 28);
  v3 = *v2;
  sub_24341B954(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_24341B954(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t WidgetPreviewRequest.init(previewInstance:widgetInfoData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24342C32C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for WidgetPreviewRequest();
  v10 = (a4 + *(result + 28));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_24341BA54()
{
  v0 = sub_24342C86C();

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

uint64_t sub_24341BAA8(char a1)
{
  if (a1)
  {
    return 0x6E49746567646977;
  }

  else
  {
    return 0x4977656976657270;
  }
}

uint64_t sub_24341BAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24341BB6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_24341BBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24341BC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24341BCB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  result = sub_24341BA54();
  *a3 = result;
  return result;
}

uint64_t sub_24341BCF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  result = sub_24341BAA8(*v2);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_24341BD74(uint64_t a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75658, &qword_24342D900) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v4 = &v22 - v3;
  type metadata accessor for WidgetPreviewRequest.Key();
  v5 = sub_24342C32C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = *(TupleTypeMetadata2 - 8);
  v7 = v23;
  v8 = *(v23 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  v15 = *(v12 + 48);
  *(&v22 - v13) = 0;
  v16 = *(v5 - 8);
  (*(v16 + 16))(&v22 + v15 - v13, a1, v5);
  v28 = 1;
  v17 = (a1 + *(type metadata accessor for WidgetPreviewRequest() + 28));
  v18 = *v17;
  v19 = v17[1];
  (*(v7 + 16))(v11, v14, TupleTypeMetadata2);
  LOBYTE(v7) = *v11;
  (*(v16 + 32))(v4, &v11[*(TupleTypeMetadata2 + 48)], v5);
  (*(v16 + 56))(v4, 0, 1, v5);
  v27 = v7;
  v26 = v28;
  v24 = v18;
  v25 = v19;
  sub_24341B954(v18, v19);
  sub_24341B954(v18, v19);
  swift_getWitnessTable();
  sub_24341C2EC();
  v20 = sub_24342C4AC();
  sub_24341E644(v24, v25);
  sub_24341FF94(v4);
  sub_24341D3E4(v18, v19);
  (*(v23 + 8))(v14, TupleTypeMetadata2);
  return v20;
}

uint64_t WidgetPreviewRequest.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24342C32C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetPreviewRequest.Key();
  v16 = v9;
  WitnessTable = swift_getWitnessTable();
  v17 = WitnessTable;
  LOBYTE(v15[0]) = 0;
  sub_24341C2EC();
  sub_24342C37C();
  if (v2)
  {
    v11 = sub_24342C3AC();
    (*(*(v11 - 8) + 8))(a1, v11);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = v9;
    v17 = WitnessTable;
    LOBYTE(v15[0]) = 1;
    sub_24342C37C();
    v13 = sub_24342C3AC();
    (*(*(v13 - 8) + 8))(a1, v13);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return WidgetPreviewRequest.init(previewInstance:widgetInfoData:)(v8, v14[1], v14[2], a2);
  }
}

unint64_t sub_24341C2EC()
{
  result = qword_27ED75428;
  if (!qword_27ED75428)
  {
    sub_24342C32C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED75428);
  }

  return result;
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

uint64_t WidgetPreviewRequest.init(previewInstance:widgetInfo:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = sub_24342C32C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5);
  v10 = objc_opt_self();
  v23[0] = 0;
  v11 = [v10 archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v23];
  if (v11)
  {
    v12 = v11;
    v13 = v23[0];
    v14 = sub_24342C1EC();
    v16 = v15;

    (*(v6 + 8))(a1, v5);
    result = WidgetPreviewRequest.init(previewInstance:widgetInfoData:)(v9, v14, v16, v22);
  }

  else
  {
    v18 = *(v6 + 8);
    v19 = v23[0];
    v18(v9, v5);
    sub_24342C1DC();

    swift_willThrow();
    result = (v18)(a1, v5);
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WidgetPreviewRequest.unarchiveInfo()(uint64_t a1)
{
  sub_24341C654();
  v4 = *(a1 + 16);
  v5 = (v1 + *(a1 + 28));
  v6 = *v5;
  v7 = v5[1];
  result = sub_24342C76C();
  if (!v2 && !result)
  {
    type metadata accessor for WidgetPreviewRequest.UnarchiveError();
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_24341C654()
{
  result = qword_27ED757F0;
  if (!qword_27ED757F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED757F0);
  }

  return result;
}

uint64_t sub_24341C728(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_24341C788(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

uint64_t WidgetPreviewResult.viewCollectionData.getter()
{
  v1 = *v0;
  sub_24341B954(*v0, *(v0 + 8));
  return v1;
}

uint64_t WidgetPreviewResult.annotations.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t WidgetPreviewResult.selectableRegions.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t WidgetPreviewResult.renderEffectIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t WidgetPreviewResult.init(viewCollectionData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  a3[2] = MEMORY[0x277D84F90];
  a3[3] = v3;
  a3[4] = v3;
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t WidgetPreviewResult.viewCollection.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_24342C63C();
  return sub_24342C62C();
}

uint64_t WidgetPreviewResult.cornerRadius.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24342C63C();
  sub_24342C62C();
  v3 = sub_24342C66C();

  [v3 cornerRadius];
  v5 = v4;

  return v5;
}

uint64_t WidgetPreviewResult.size.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24342C63C();
  sub_24342C62C();
  v3 = sub_24342C66C();

  [v3 size];
  v5 = v4;

  return v5;
}

uint64_t sub_24341CB04()
{
  v1 = *v0;
  sub_24342C8FC();
  sub_24342C6EC();

  return sub_24342C92C();
}

uint64_t sub_24341CBE4()
{
  *v0;
  *v0;
  *v0;
  sub_24342C6EC();
}

uint64_t sub_24341CCB0()
{
  v1 = *v0;
  sub_24342C8FC();
  sub_24342C6EC();

  return sub_24342C92C();
}

uint64_t sub_24341CD8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24341FD8C();
  *a2 = result;
  return result;
}

void sub_24341CDBC(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000736E6FLL;
  v3 = 0x697461746F6E6E61;
  v4 = 0xEF73444974636566;
  v5 = 0x66457265646E6572;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x800000024342E1A0;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000024342E170;
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

unint64_t sub_24341CE58()
{
  v1 = 0x697461746F6E6E61;
  v2 = 0x66457265646E6572;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
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

uint64_t WidgetPreviewResult.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = &type metadata for WidgetPreviewResult.Key;
  v5 = sub_24341D2AC();
  v15 = v5;
  LOBYTE(v13[0]) = 3;
  sub_24342C37C();
  if (v2)
  {
    v6 = sub_24342C3AC();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v8 = v17;
    v18 = v16;
    v14 = &type metadata for WidgetPreviewResult.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75438, &qword_24342CFB0);
    sub_24341D438(&qword_27ED75440, &qword_27ED75438, &qword_24342CFB0, sub_24341D390);
    sub_24342C37C();
    __swift_destroy_boxed_opaque_existential_1(v13);

    v9 = v16;
    v14 = &type metadata for WidgetPreviewResult.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75450, &qword_24342CFB8);
    sub_24341D438(&qword_27ED75458, &qword_27ED75450, &qword_24342CFB8, sub_24341D4B4);
    sub_24342C37C();
    __swift_destroy_boxed_opaque_existential_1(v13);

    v10 = v16;
    v14 = &type metadata for WidgetPreviewResult.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75468, &qword_24342CFC0);
    sub_24341D508();
    sub_24342C37C();
    v11 = sub_24342C3AC();
    (*(*(v11 - 8) + 8))(a1, v11);
    __swift_destroy_boxed_opaque_existential_1(v13);

    v12 = v16;
    *a2 = v18;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v10;
    a2[4] = v12;
  }

  return result;
}

unint64_t sub_24341D2AC()
{
  result = qword_27ED75430;
  if (!qword_27ED75430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED75430);
  }

  return result;
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

unint64_t sub_24341D390()
{
  result = qword_27ED75448;
  if (!qword_27ED75448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED75448);
  }

  return result;
}

uint64_t sub_24341D3E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24341D438(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24341D4B4()
{
  result = qword_27ED75460;
  if (!qword_27ED75460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED75460);
  }

  return result;
}

unint64_t sub_24341D508()
{
  result = qword_27ED75470;
  if (!qword_27ED75470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED75468, &qword_24342CFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED75470);
  }

  return result;
}

uint64_t WidgetPreviewResult.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_24342C39C();
}

uint64_t sub_24341D5D4(__int128 *a1)
{
  v16 = *a1;
  v1 = v16;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v15 = 3;
  v14 = v16;
  v13 = 0;
  v12 = v2;
  v11 = 1;
  v10 = v3;
  v9 = 2;
  v8 = v4;
  sub_24341FF38(&v16, v7);
  sub_24341B954(v1, *(&v1 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75438, &qword_24342CFB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75450, &qword_24342CFB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75468, &qword_24342CFC0);
  sub_24341D2AC();
  sub_24341D438(&qword_27ED75440, &qword_27ED75438, &qword_24342CFB0, sub_24341D390);
  sub_24341D438(&qword_27ED75458, &qword_27ED75450, &qword_24342CFB8, sub_24341D4B4);
  sub_24341D508();
  v5 = sub_24342C48C();
  sub_24341E644(v14, *(&v14 + 1));
  sub_24341D3E4(v1, *(&v1 + 1));
  return v5;
}

uint64_t sub_24341D7AC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_24342C39C();
}

WidgetPreviewsSupport::WidgetPreviewResult::Annotation::AnnotationType_optional __swiftcall WidgetPreviewResult.Annotation.AnnotationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24342C86C();

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

uint64_t WidgetPreviewResult.Annotation.AnnotationType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x726F727265;
  }

  else
  {
    result = 0x676E696E726177;
  }

  *v0;
  return result;
}

uint64_t sub_24341D8B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x726F727265;
  }

  else
  {
    v4 = 0x676E696E726177;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x726F727265;
  }

  else
  {
    v6 = 0x676E696E726177;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24342C88C();
  }

  return v9 & 1;
}

uint64_t sub_24341D954()
{
  v1 = *v0;
  sub_24342C8FC();
  sub_24342C6EC();

  return sub_24342C92C();
}

uint64_t sub_24341D9D4()
{
  *v0;
  sub_24342C6EC();
}

uint64_t sub_24341DA40()
{
  v1 = *v0;
  sub_24342C8FC();
  sub_24342C6EC();

  return sub_24342C92C();
}

uint64_t sub_24341DABC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24342C86C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24341DB1C(uint64_t *a1@<X8>)
{
  v2 = 0x676E696E726177;
  if (*v1)
  {
    v2 = 0x726F727265;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24341DB58(uint64_t a1, uint64_t a2)
{
  v4 = sub_24341FE70();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t WidgetPreviewResult.Annotation.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t WidgetPreviewResult.Annotation.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t WidgetPreviewResult.Annotation.path.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t WidgetPreviewResult.Annotation.path.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_24341DD78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7470697263736564;
  v4 = 0xEB000000006E6F69;
  if (v2 != 1)
  {
    v3 = 1752457584;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701869940;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x7470697263736564;
  v8 = 0xEB000000006E6F69;
  if (*a2 != 1)
  {
    v7 = 1752457584;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24342C88C();
  }

  return v11 & 1;
}

uint64_t sub_24341DE74()
{
  v1 = *v0;
  sub_24342C8FC();
  sub_24342C6EC();

  return sub_24342C92C();
}

uint64_t sub_24341DF10()
{
  *v0;
  *v0;
  sub_24342C6EC();
}

uint64_t sub_24341DF98()
{
  v1 = *v0;
  sub_24342C8FC();
  sub_24342C6EC();

  return sub_24342C92C();
}

uint64_t sub_24341E030@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24341FDD8();
  *a2 = result;
  return result;
}

void sub_24341E060(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEB000000006E6F69;
  v5 = 0x7470697263736564;
  if (v2 != 1)
  {
    v5 = 1752457584;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24341E0B8()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 1752457584;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t WidgetPreviewResult.Annotation.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = &type metadata for WidgetPreviewResult.Annotation.Key;
  v5 = sub_24341E2F0();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  sub_24341E344();
  sub_24342C37C();
  if (v2)
  {
    v7 = sub_24342C3AC();
    (*(*(v7 - 8) + 8))(a1, v7);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v6 = v16;
    v14 = &type metadata for WidgetPreviewResult.Annotation.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    sub_24342C37C();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v14 = &type metadata for WidgetPreviewResult.Annotation.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 2;
    sub_24342C38C();
    v8 = sub_24342C3AC();
    (*(*(v8 - 8) + 8))(a1, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    *a2 = v6;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v10;
  }

  return result;
}

unint64_t sub_24341E2F0()
{
  result = qword_27ED75478;
  if (!qword_27ED75478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED75478);
  }

  return result;
}

unint64_t sub_24341E344()
{
  result = qword_27ED75480;
  if (!qword_27ED75480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED75480);
  }

  return result;
}

uint64_t WidgetPreviewResult.Annotation.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_24342C39C();
}

uint64_t sub_24341E3E8(char *a1)
{
  v2 = *(a1 + 24);
  v5 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  sub_24341E2F0();
  sub_24341E344();
  return sub_24342C49C();
}

uint64_t sub_24341E49C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_24342C39C();
}

uint64_t WidgetPreviewResult.SelectableRegion.path.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WidgetPreviewResult.SelectableRegion.path.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double WidgetPreviewResult.SelectableRegion.rect.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return result;
}

void WidgetPreviewResult.SelectableRegion.rect.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t WidgetPreviewResult.SelectableRegion.accessibilityNode.getter()
{
  v1 = *(v0 + 48);
  sub_24341E5F8(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_24341E5F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24341B954(a1, a2);
  }

  return a1;
}

uint64_t WidgetPreviewResult.SelectableRegion.accessibilityNode.setter(uint64_t a1, uint64_t a2)
{
  result = sub_24341E644(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_24341E644(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24341D3E4(a1, a2);
  }

  return a1;
}

uint64_t WidgetPreviewResult.SelectableRegion.init(path:rect:accessibilityNode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a7;
  *(a5 + 32) = a8;
  *(a5 + 40) = a9;
  result = sub_24341E644(0, 0xF000000000000000);
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

uint64_t sub_24341E6C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1952671090;
  v5 = 0x800000024342E1E0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000024342E1E0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1752457584;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1952671090;
  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1752457584;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24342C88C();
  }

  return v11 & 1;
}

uint64_t sub_24341E7A4()
{
  v1 = *v0;
  sub_24342C8FC();
  sub_24342C6EC();

  return sub_24342C92C();
}

uint64_t sub_24341E83C()
{
  *v0;
  *v0;
  sub_24342C6EC();
}

uint64_t sub_24341E8C0()
{
  v1 = *v0;
  sub_24342C8FC();
  sub_24342C6EC();

  return sub_24342C92C();
}

uint64_t sub_24341E954@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24341FE24();
  *a2 = result;
  return result;
}

void sub_24341E984(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1952671090;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000024342E1E0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1752457584;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24341E9D8()
{
  v1 = 1952671090;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t WidgetPreviewResult.SelectableRegion.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = &type metadata for WidgetPreviewResult.SelectableRegion.Key;
  v5 = sub_24341EC2C();
  v17 = v5;
  LOBYTE(v15[0]) = 0;
  sub_24342C37C();
  if (v2)
  {
    v6 = sub_24342C3AC();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    v8 = v18;
    v7 = v19;
    v16 = &type metadata for WidgetPreviewResult.SelectableRegion.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 1;
    type metadata accessor for CGRect(0);
    sub_24342C37C();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for WidgetPreviewResult.SelectableRegion.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 2;
    sub_24342C38C();
    v10 = sub_24342C3AC();
    (*(*(v10 - 8) + 8))(a1, v10);
    __swift_destroy_boxed_opaque_existential_1(v15);
    result = sub_24341E644(0, 0xF000000000000000);
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v13;
    *(a2 + 32) = v14;
    *(a2 + 48) = v11;
    *(a2 + 56) = v12;
  }

  return result;
}

unint64_t sub_24341EC2C()
{
  result = qword_27ED75488;
  if (!qword_27ED75488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED75488);
  }

  return result;
}

uint64_t WidgetPreviewResult.SelectableRegion.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_24342C39C();
}

uint64_t sub_24341ECE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 2);
  v17 = *(a1 + 3);
  v4 = v17;
  v16 = 0;
  v14 = v1;
  v15 = v2;
  v13 = 1;
  v10 = *(a1 + 1);
  v11 = v3;
  v12 = 0;
  v9 = 2;
  v8 = v17;

  sub_24341FEC8(&v17, v7);
  sub_24341E5F8(v4, *(&v4 + 1));
  type metadata accessor for CGRect(0);
  sub_24341EC2C();
  v5 = sub_24342C49C();
  sub_24341E644(v8, *(&v8 + 1));

  sub_24341E644(v4, *(&v4 + 1));
  return v5;
}

uint64_t sub_24341EE0C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_24342C39C();
}

uint64_t Array<A>.selectableRegions(on:)(void *a1, uint64_t a2)
{
  v4 = sub_24342C35C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v31 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - v9;
  [a1 scale];
  v11 = *(a2 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v32 = MEMORY[0x277D84F90];
    sub_24341F0F4(0, v11, 0);
    v12 = v32;
    v28[1] = v5 + 32;
    v29 = (v5 + 8);
    v13 = (a2 + 48);
    v30 = v5;
    do
    {
      v14 = *(v13 - 2);
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = v13[1];
      v18 = v13[2];
      v19 = v13[3];
      v20 = v4;
      v21 = v13[4];
      v22 = v13[5];

      sub_24341E5F8(v21, v22);

      v23 = v31;
      sub_24342C33C();
      sub_24342C34C();

      v24 = v22;
      v4 = v20;
      sub_24341E644(v21, v24);
      (*v29)(v23, v20);
      v32 = v12;
      v26 = *(v12 + 16);
      v25 = *(v12 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_24341F0F4(v25 > 1, v26 + 1, 1);
        v12 = v32;
      }

      v13 += 8;
      *(v12 + 16) = v26 + 1;
      (*(v30 + 32))(v12 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, v10, v20);
      --v11;
    }

    while (v11);
  }

  return v12;
}

size_t sub_24341F0F4(size_t a1, int64_t a2, char a3)
{
  result = sub_24341FBB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_24341F124()
{
  result = qword_27ED75490[0];
  if (!qword_27ED75490[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ED75490);
  }

  return result;
}

uint64_t sub_24341F18C()
{
  result = sub_24342C32C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24341F214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24342C32C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24341F2F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24342C32C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 28));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24341F404(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24341F450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_24341F520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_24341F568(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24341F5E8(uint64_t a1, int a2)
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

uint64_t sub_24341F608(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for WidgetPreviewInfo.Host(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WidgetPreviewInfo.Host(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WidgetPreviewResult.Key(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WidgetPreviewResult.Key(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24341F8FC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_24341F98C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24341FAB0()
{
  result = qword_27ED75628;
  if (!qword_27ED75628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED75628);
  }

  return result;
}

unint64_t sub_24341FB08()
{
  result = qword_27ED75630;
  if (!qword_27ED75630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED75630);
  }

  return result;
}

unint64_t sub_24341FB60()
{
  result = qword_27ED75638;
  if (!qword_27ED75638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED75638);
  }

  return result;
}

size_t sub_24341FBB4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75648, &qword_24342D8F0);
  v10 = *(sub_24342C35C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24342C35C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24341FD8C()
{
  v0 = sub_24342C86C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24341FDD8()
{
  v0 = sub_24342C86C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24341FE24()
{
  v0 = sub_24342C86C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24341FE70()
{
  result = qword_27ED75640;
  if (!qword_27ED75640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED75640);
  }

  return result;
}

uint64_t sub_24341FEC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75650, &qword_24342D8F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24341FF94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75658, &qword_24342D900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_243420038(uint64_t a1, int a2)
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

uint64_t sub_243420058(uint64_t result, int a2, int a3)
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

void sub_2434200A8(uint64_t a1, unint64_t *a2)
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

uint64_t WidgetFamily.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24342C31C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24342C61C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Array<A>.isSystemSmall.getter(a1))
  {

    v14 = MEMORY[0x277CE3B68];
  }

  else if (Array<A>.isSystemMedium.getter(a1))
  {

    v14 = MEMORY[0x277CE3B70];
  }

  else if (Array<A>.isSystemLarge.getter(a1))
  {

    v14 = MEMORY[0x277CE3B60];
  }

  else if (Array<A>.isSystemExtraLarge.getter(a1))
  {

    v14 = MEMORY[0x277CE3B88];
  }

  else
  {
    sub_24342C23C();
    v15 = sub_243420DFC(v8, a1);
    v16 = *(v5 + 8);
    v16(v8, v4);
    if (v15)
    {

      v14 = MEMORY[0x277CE3B90];
    }

    else
    {
      sub_24342C23C();
      v17 = sub_243420DFC(v8, a1);
      v16(v8, v4);
      if (v17)
      {

        v14 = MEMORY[0x277CE3B80];
      }

      else
      {
        sub_24342C23C();
        v18 = sub_243420DFC(v8, a1);

        v16(v8, v4);
        if (!v18)
        {
          v19 = 1;
          return (*(v10 + 56))(a2, v19, 1, v9);
        }

        v14 = MEMORY[0x277CE3B98];
      }
    }
  }

  (*(v10 + 104))(v13, *v14, v9);
  (*(v10 + 32))(a2, v13, v9);
  v19 = 0;
  return (*(v10 + 56))(a2, v19, 1, v9);
}

uint64_t Array<A>.isSystemSmall.getter(uint64_t a1)
{
  v2 = sub_24342C31C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75670, &qword_24342D960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v25 = &v25 - v12;
    v26 = v3;
    v16 = *(v3 + 16);
    v15 = v3 + 16;
    v27 = "ccessoryRectangular";
    v28 = v16;
    v17 = (v15 - 8);
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    while (1)
    {
      v28(v9, v18, v2);
      sub_24342C23C();
      v20 = sub_24342C30C();
      v21 = *v17;
      (*v17)(v7, v2);
      if (v20)
      {
        break;
      }

      v21(v9, v2);
      v18 += v19;
      if (!--v14)
      {
        v22 = 0;
        v23 = 1;
        v13 = v25;
        v3 = v26;
        goto LABEL_8;
      }
    }

    v13 = v25;
    v3 = v26;
    (*(v26 + 32))(v25, v9, v2);
    v23 = 0;
    v22 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
  }

LABEL_8:
  (*(v3 + 56))(v13, v23, 1, v2);
  sub_243423FB4(v13, &qword_27ED75670, &qword_24342D960);
  return v22;
}

uint64_t Array<A>.isSystemMedium.getter(uint64_t a1)
{
  v2 = sub_24342C31C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75670, &qword_24342D960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v25 = &v25 - v12;
    v26 = v3;
    v16 = *(v3 + 16);
    v15 = v3 + 16;
    v27 = "Widgets.Family.small";
    v28 = v16;
    v17 = (v15 - 8);
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    while (1)
    {
      v28(v9, v18, v2);
      sub_24342C23C();
      v20 = sub_24342C30C();
      v21 = *v17;
      (*v17)(v7, v2);
      if (v20)
      {
        break;
      }

      v21(v9, v2);
      v18 += v19;
      if (!--v14)
      {
        v22 = 0;
        v23 = 1;
        v13 = v25;
        v3 = v26;
        goto LABEL_8;
      }
    }

    v13 = v25;
    v3 = v26;
    (*(v26 + 32))(v25, v9, v2);
    v23 = 0;
    v22 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
  }

LABEL_8:
  (*(v3 + 56))(v13, v23, 1, v2);
  sub_243423FB4(v13, &qword_27ED75670, &qword_24342D960);
  return v22;
}

uint64_t Array<A>.isSystemLarge.getter(uint64_t a1)
{
  v2 = sub_24342C31C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75670, &qword_24342D960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v25 = &v25 - v12;
    v26 = v3;
    v16 = *(v3 + 16);
    v15 = v3 + 16;
    v27 = "Widgets.Family.medium";
    v28 = v16;
    v17 = (v15 - 8);
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    while (1)
    {
      v28(v9, v18, v2);
      sub_24342C23C();
      v20 = sub_24342C30C();
      v21 = *v17;
      (*v17)(v7, v2);
      if (v20)
      {
        break;
      }

      v21(v9, v2);
      v18 += v19;
      if (!--v14)
      {
        v22 = 0;
        v23 = 1;
        v13 = v25;
        v3 = v26;
        goto LABEL_8;
      }
    }

    v13 = v25;
    v3 = v26;
    (*(v26 + 32))(v25, v9, v2);
    v23 = 0;
    v22 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
  }

LABEL_8:
  (*(v3 + 56))(v13, v23, 1, v2);
  sub_243423FB4(v13, &qword_27ED75670, &qword_24342D960);
  return v22;
}

uint64_t Array<A>.isSystemExtraLarge.getter(uint64_t a1)
{
  v2 = sub_24342C31C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75670, &qword_24342D960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v25 = &v25 - v12;
    v26 = v3;
    v16 = *(v3 + 16);
    v15 = v3 + 16;
    v27 = "Widgets.Family.large";
    v28 = v16;
    v17 = (v15 - 8);
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    while (1)
    {
      v28(v9, v18, v2);
      sub_24342C23C();
      v20 = sub_24342C30C();
      v21 = *v17;
      (*v17)(v7, v2);
      if (v20)
      {
        break;
      }

      v21(v9, v2);
      v18 += v19;
      if (!--v14)
      {
        v22 = 0;
        v23 = 1;
        v13 = v25;
        v3 = v26;
        goto LABEL_8;
      }
    }

    v13 = v25;
    v3 = v26;
    (*(v26 + 32))(v25, v9, v2);
    v23 = 0;
    v22 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
  }

LABEL_8:
  (*(v3 + 56))(v13, v23, 1, v2);
  sub_243423FB4(v13, &qword_27ED75670, &qword_24342D960);
  return v22;
}

BOOL sub_243420DFC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_24342C31C() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_243424070();
  }

  while ((sub_24342C6AC() & 1) == 0);
  return v4 != v5;
}

uint64_t CHSWidgetFamily.widgetLocation(renderEffects:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24342C31C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 - 2) < 3)
  {
    return 1;
  }

  if ((a2 - 10) < 3)
  {
    return 4;
  }

  if (a2 != 1)
  {
    if (qword_27ED75420 != -1)
    {
      swift_once();
    }

    v13 = sub_24342C4FC();
    __swift_project_value_buffer(v13, qword_27ED77050);
    v14 = sub_24342C4DC();
    v15 = sub_24342C74C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = a2;
      v22 = v17;
      *v16 = 136446210;
      type metadata accessor for CHSWidgetFamily(0);
      v18 = sub_24342C6DC();
      v20 = sub_243423A0C(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_24341A000, v14, v15, "Unknown widget location for %{public}s. Falling back to homeScreen", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245D361C0](v17, -1, -1);
      MEMORY[0x245D361C0](v16, -1, -1);
    }

    return 1;
  }

  v11 = v7;
  sub_24342C23C();
  v12 = sub_243420DFC(v9, a1);
  (*(v5 + 8))(v9, v11);
  if (v12)
  {
    return 4;
  }

  if (Array<A>.isStandBy.getter(a1))
  {
    return 5;
  }

  else
  {
    return 1;
  }
}

BOOL Array<A>.isStandBy.getter(uint64_t a1)
{
  v2 = sub_24342C31C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  v7 = sub_243420DFC(v6, a1);
  v8 = *(v3 + 8);
  v8(v6, v2);
  if (v7)
  {
    return 1;
  }

  sub_24342C23C();
  v9 = sub_243420DFC(v6, a1);
  v8(v6, v2);
  if (v9)
  {
    return 1;
  }

  else
  {
    sub_24342C23C();
    v10 = sub_243420DFC(v6, a1);
    v8(v6, v2);
  }

  return v10;
}

id CHSWidgetTintParameters.init(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75678, &qword_24342D968);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v91 = &v89 - v4;
  v5 = sub_24342C61C();
  v92 = *(v5 - 8);
  v93 = v5;
  v6 = *(v92 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v89 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v89 - v9;
  v104 = sub_24342C31C();
  v10 = *(v104 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v104);
  v94 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v96 = &v89 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v95 = &v89 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v98 = &v89 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v97 = &v89 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v100 = &v89 - v23;
  result = MEMORY[0x28223BE20](v22);
  v26 = &v89 - v25;
  v27 = 0;
  v101 = *(a1 + 16);
  v105 = v10 + 16;
  v99 = "ind.contentStandBy";
  v102 = v10 + 8;
  v103 = a1;
  v28 = v104;
  while (v101 != v27)
  {
    if (v27 >= *(v103 + 16))
    {
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
      return result;
    }

    v29 = v103 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v30 = *(v10 + 72);
    v31 = *(v10 + 16);
    v31(v26, v29 + v30 * v27++, v28);
    v32 = v100;
    sub_24342C23C();
    v33 = sub_24342C30C();
    v34 = *(v10 + 8);
    v34(v32, v28);
    result = (v34)(v26, v28);
    if (v33)
    {
      v35 = v100;
      v101 = -v101;
      v36 = -1;
      while (v101 + v36 != -1)
      {
        if (++v36 >= *(v103 + 16))
        {
          goto LABEL_48;
        }

        v37 = v29 + v30;
        v38 = v97;
        v39 = v29;
        v40 = v104;
        v31(v97, v39, v104);
        sub_24342C21C();
        v41 = sub_24342C30C();
        v34(v35, v40);
        result = (v34)(v38, v40);
        v29 = v37;
        if (v41)
        {

          return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFilterStyle_];
        }
      }

      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFilterStyle_];
    }
  }

  v42 = 0;
  v99 = "Widgets.Style.clearGlass";
  v97 = 0xD000000000000019;
  v43 = v104;
  while (v101 != v42)
  {
    if (v42 >= *(v103 + 16))
    {
      goto LABEL_47;
    }

    v44 = v103 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v45 = *(v10 + 72);
    v46 = *(v10 + 16);
    v47 = v98;
    v46(v98, v44 + v45 * v42++, v43);
    v48 = v100;
    sub_24342C23C();
    v49 = sub_24342C30C();
    v50 = *(v10 + 8);
    v50(v48, v43);
    result = (v50)(v47, v43);
    if (v49)
    {
      v51 = v100;
      v101 = -v101;
      v52 = -1;
      while (v101 + v52 != -1)
      {
        if (++v52 >= *(v103 + 16))
        {
          goto LABEL_50;
        }

        v53 = v44 + v45;
        v54 = v95;
        v55 = v44;
        v56 = v104;
        v46(v95, v55, v104);
        sub_24342C21C();
        v57 = sub_24342C30C();
        v50(v51, v56);
        result = (v50)(v54, v56);
        v44 = v53;
        if (v57)
        {

          v58 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v59 = [objc_opt_self() colorWithRed:0.713 green:0.713 blue:0.813 alpha:1.0];
          v60 = [v58 initWithFilterStyle:6 primaryTintColor:v59 secondaryTintColor:0];
          goto LABEL_36;
        }
      }

      v77 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v59 = [objc_opt_self() colorWithRed:0.313 green:0.313 blue:0.513 alpha:1.0];
      v60 = [v77 initWithFilterStyle:5 primaryTintColor:v59 secondaryTintColor:0];
LABEL_36:
      v78 = v60;

      return v78;
    }
  }

  v61 = 0;
  v99 = "Widgets.Style.tintedGlass";
  v62 = v103;
  v63 = v100;
  while (v101 != v61)
  {
    if (v61 >= *(v62 + 16))
    {
      goto LABEL_49;
    }

    v64 = v96;
    v65 = v104;
    (*(v10 + 16))(v96, v62 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v61++, v104);
    sub_24342C23C();
    v66 = sub_24342C30C();
    v67 = *(v10 + 8);
    v67(v63, v65);
    result = (v67)(v64, v65);
    if (v66)
    {

      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFilterStyle_];
    }
  }

  v68 = 0;
  v98 = "Widgets.Style.fullColor";
  v99 = "Widgets.Family.accessoryInline";
  v96 = 0xD000000000000014;
  v97 = "Widgets.Family.extraLarge";
  v69 = v104;
  while (1)
  {
    if (v101 == v68)
    {

      return 0;
    }

    if (v68 >= *(v103 + 16))
    {
      goto LABEL_51;
    }

    v70 = v94;
    (*(v10 + 16))(v94, v103 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v68, v69);
    sub_24342C23C();
    v71 = sub_24342C30C();
    v72 = *(v10 + 8);
    v72(v63, v69);
    if (v71)
    {
      break;
    }

    sub_24342C23C();
    v73 = sub_24342C30C();
    v72(v63, v69);
    if (v73)
    {
      break;
    }

    sub_24342C23C();
    v74 = sub_24342C30C();
    v72(v63, v69);
    if (v74)
    {
      break;
    }

    sub_24342C23C();
    v75 = sub_24342C30C();
    v72(v63, v69);
    if (v75)
    {
      break;
    }

    sub_24342C23C();
    v76 = sub_24342C30C();
    v72(v63, v69);
    result = (v72)(v70, v69);
    ++v68;
    if (v76)
    {
      goto LABEL_40;
    }
  }

  v72(v70, v69);
LABEL_40:
  v79 = v103;

  v81 = v91;
  WidgetFamily.init(_:)(v80, v91);
  v83 = v92;
  v82 = v93;
  if ((*(v92 + 48))(v81, 1, v93) == 1)
  {

    sub_243423FB4(v81, &qword_27ED75678, &qword_24342D968);
    return 0;
  }

  v84 = v90;
  (*(v83 + 32))(v90, v81, v82);
  (*(v83 + 16))(v89, v84, v82);
  v85 = sub_24342C75C();
  v86 = CHSWidgetFamily.widgetLocation(renderEffects:)(v79, v85);

  if (v86 == 4)
  {
    v87 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v88 = [objc_opt_self() colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v78 = [v87 initWithFilterStyle:1 primaryTintColor:v88 secondaryTintColor:0];

    (*(v83 + 8))(v84, v82);
    return v78;
  }

  (*(v83 + 8))(v84, v82);
  return 0;
}

uint64_t ContentSizeCategory.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24342C58C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24342C31C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C2DC();
  v14 = sub_243420DFC(v13, a1);
  v15 = *(v10 + 8);
  v15(v13, v9);
  if (v14)
  {

    v16 = MEMORY[0x277CE0268];
  }

  else
  {
    sub_24342C2AC();
    v17 = sub_243420DFC(v13, a1);
    v15(v13, v9);
    if (v17)
    {

      v16 = MEMORY[0x277CE0298];
    }

    else
    {
      sub_24342C2BC();
      v18 = sub_243420DFC(v13, a1);
      v15(v13, v9);
      if (v18)
      {

        v16 = MEMORY[0x277CE02A0];
      }

      else
      {
        sub_24342C29C();
        v19 = sub_243420DFC(v13, a1);
        v15(v13, v9);
        if (v19)
        {

          v16 = MEMORY[0x277CE0290];
        }

        else
        {
          sub_24342C2CC();
          v20 = sub_243420DFC(v13, a1);
          v15(v13, v9);
          if (v20)
          {

            v16 = MEMORY[0x277CE0260];
          }

          else
          {
            sub_24342C2EC();
            v21 = sub_243420DFC(v13, a1);
            v15(v13, v9);
            if (v21)
            {

              v16 = MEMORY[0x277CE0270];
            }

            else
            {
              sub_24342C2FC();
              v22 = sub_243420DFC(v13, a1);
              v15(v13, v9);
              if (v22)
              {

                v16 = MEMORY[0x277CE0248];
              }

              else
              {
                sub_24342C24C();
                v23 = sub_243420DFC(v13, a1);
                v15(v13, v9);
                if (v23)
                {

                  v16 = MEMORY[0x277CE0280];
                }

                else
                {
                  sub_24342C25C();
                  v24 = sub_243420DFC(v13, a1);
                  v15(v13, v9);
                  if (v24)
                  {

                    v16 = MEMORY[0x277CE0278];
                  }

                  else
                  {
                    sub_24342C26C();
                    v25 = sub_243420DFC(v13, a1);
                    v15(v13, v9);
                    if (v25)
                    {

                      v16 = MEMORY[0x277CE0288];
                    }

                    else
                    {
                      sub_24342C27C();
                      v26 = sub_243420DFC(v13, a1);
                      v15(v13, v9);
                      if (v26)
                      {

                        v16 = MEMORY[0x277CE0250];
                      }

                      else
                      {
                        sub_24342C28C();
                        v27 = sub_243420DFC(v13, a1);

                        v15(v13, v9);
                        if (!v27)
                        {
                          sub_24342C57C();
                          sub_24342C54C();
                          return (*(v5 + 8))(v8, v4);
                        }

                        v16 = MEMORY[0x277CE0258];
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
  }

  v28 = *v16;
  v29 = sub_24342C59C();
  return (*(*(v29 - 8) + 104))(a2, v28, v29);
}

uint64_t ColorScheme.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24342C31C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C21C();
  v9 = sub_243420DFC(v8, a1);
  v10 = *(v5 + 8);
  v10(v8, v4);
  if (v9)
  {

    v11 = MEMORY[0x277CDF3C0];
  }

  else
  {
    sub_24342C22C();
    sub_243420DFC(v8, a1);

    v10(v8, v4);
    v11 = MEMORY[0x277CDF3D0];
  }

  v12 = *v11;
  v13 = sub_24342C50C();
  return (*(*(v13 - 8) + 104))(a2, v12, v13);
}

id UIColor.bsColor.getter()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = 0.0;
  v6[0] = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  [v0 getRed:v6 green:&v5 blue:&v4 alpha:&v3];
  result = [objc_opt_self() colorWithRed:v6[0] green:v5 blue:v4 alpha:v3];
  if (!result)
  {
    __break(1u);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

id static UIColor.fromRenderEffects(_:)(uint64_t a1)
{
  v2 = sub_24342C31C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  v7 = sub_243420DFC(v6, a1);
  v8 = *(v3 + 8);
  v8(v6, v2);
  if (v7)
  {
    return 0;
  }

  sub_24342C23C();
  v10 = sub_243420DFC(v6, a1);
  v8(v6, v2);
  if (v10)
  {
    v11 = &selRef_systemRedColor;
  }

  else
  {
    sub_24342C23C();
    v12 = sub_243420DFC(v6, a1);
    v8(v6, v2);
    if (v12)
    {
      v11 = &selRef_systemGreenColor;
    }

    else
    {
      sub_24342C23C();
      v13 = sub_243420DFC(v6, a1);
      v8(v6, v2);
      if (v13)
      {
        v11 = &selRef_systemBlueColor;
      }

      else
      {
        sub_24342C23C();
        v14 = sub_243420DFC(v6, a1);
        v8(v6, v2);
        if (v14)
        {
          v11 = &selRef_systemOrangeColor;
        }

        else
        {
          sub_24342C23C();
          v15 = sub_243420DFC(v6, a1);
          v8(v6, v2);
          if (v15)
          {
            v11 = &selRef_systemYellowColor;
          }

          else
          {
            sub_24342C23C();
            v16 = sub_243420DFC(v6, a1);
            v8(v6, v2);
            if (v16)
            {
              v11 = &selRef_systemPinkColor;
            }

            else
            {
              sub_24342C23C();
              v17 = sub_243420DFC(v6, a1);
              v8(v6, v2);
              if (!v17)
              {
                return 0;
              }

              v11 = &selRef_systemPurpleColor;
            }
          }
        }
      }
    }
  }

  return [objc_opt_self() *v11];
}

void *static RedactionReasons.reasons(from:)(uint64_t a1)
{
  v2 = sub_24342C53C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = sub_24342C31C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  v15 = sub_243420DFC(v14, a1);
  v16 = *(v11 + 8);
  v16(v14, v10);
  if (v15)
  {
    v25 = v7;
    v26 = v2;
    sub_24342C51C();
    v17 = sub_243423834(0, 1, 1, MEMORY[0x277D84F90]);
    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_243423834(v18 > 1, v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    v20 = v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19;
    v2 = v26;
    (*(v3 + 32))(v20, v9, v26);
    v7 = v25;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  sub_24342C23C();
  v21 = sub_243420DFC(v14, a1);
  v16(v14, v10);
  if (v21)
  {
    sub_24342C52C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_243423834(0, v17[2] + 1, 1, v17);
    }

    v23 = v17[2];
    v22 = v17[3];
    if (v23 >= v22 >> 1)
    {
      v17 = sub_243423834(v22 > 1, v23 + 1, 1, v17);
    }

    v17[2] = v23 + 1;
    (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23, v7, v2);
  }

  if (!v17[2])
  {

    return 0;
  }

  return v17;
}

uint64_t RedactionReasons.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24342C31C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24342C53C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  v14 = sub_243420DFC(v8, a1);
  v15 = *(v5 + 8);
  v15(v8, v4);
  if (v14)
  {

    sub_24342C51C();
  }

  else
  {
    sub_24342C23C();
    v16 = sub_243420DFC(v8, a1);

    v15(v8, v4);
    if (!v16)
    {
      v17 = 1;
      return (*(v10 + 56))(a2, v17, 1, v9);
    }

    sub_24342C52C();
  }

  (*(v10 + 32))(a2, v13, v9);
  v17 = 0;
  return (*(v10 + 56))(a2, v17, 1, v9);
}

uint64_t Array<A>.isLuminanceReduced.getter(uint64_t a1)
{
  v2 = sub_24342C31C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  LOBYTE(a1) = sub_243420DFC(v6, a1);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t Array<A>.isStale.getter(uint64_t a1)
{
  v2 = sub_24342C31C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  v7 = sub_243420DFC(v6, a1);
  v8 = *(v3 + 8);
  v8(v6, v2);
  if (v7)
  {
    return 1;
  }

  sub_24342C23C();
  v10 = sub_243420DFC(v6, a1);
  v8(v6, v2);
  if (v10)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t Array<A>.previewInterfaceOrientation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24342C31C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  v9 = sub_243420DFC(v8, a1);
  (*(v5 + 8))(v8, v4);
  v10 = MEMORY[0x277D41038];
  if (!v9 && !Array<A>.isStandBy.getter(a1))
  {
    v10 = MEMORY[0x277D41050];
  }

  v11 = *v10;
  v12 = sub_24342C20C();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

uint64_t Array<A>.wantsRedNightModePresentation.getter(uint64_t a1)
{
  v2 = sub_24342C31C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  LOBYTE(a1) = sub_243420DFC(v6, a1);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t Array<A>.useSmallActivityFamily.getter(uint64_t a1)
{
  v2 = sub_24342C31C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  LOBYTE(a1) = sub_243420DFC(v6, a1);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ActivityPreviewViewKind.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24342C31C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24342C65C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  v14 = sub_243420DFC(v8, a1);
  v15 = *(v5 + 8);
  v15(v8, v4);
  if (v14 || (sub_24342C23C(), v16 = sub_243420DFC(v8, a1), v15(v8, v4), v16) || (sub_24342C23C(), v17 = sub_243420DFC(v8, a1), v15(v8, v4), v17))
  {

    v18 = MEMORY[0x277CE3E48];
  }

  else
  {
    sub_24342C23C();
    v21 = sub_243420DFC(v8, a1);
    v15(v8, v4);
    if (v21)
    {

      v22 = MEMORY[0x277CE3E28];
    }

    else
    {
      sub_24342C23C();
      v23 = sub_243420DFC(v8, a1);
      v15(v8, v4);
      if (v23)
      {

        v22 = MEMORY[0x277CE3E30];
      }

      else
      {
        sub_24342C23C();
        v24 = sub_243420DFC(v8, a1);

        v15(v8, v4);
        if (!v24)
        {
          v19 = 1;
          return (*(v10 + 56))(a2, v19, 1, v9);
        }

        v22 = MEMORY[0x277CE3E38];
      }
    }

    v25 = *v22;
    v26 = sub_24342C64C();
    (*(*(v26 - 8) + 104))(v13, v25, v26);
    v18 = MEMORY[0x277CE3E40];
  }

  (*(v10 + 104))(v13, *v18, v9);
  (*(v10 + 32))(a2, v13, v9);
  v19 = 0;
  return (*(v10 + 56))(a2, v19, 1, v9);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2434237E8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

size_t sub_243423834(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75680, &qword_24342D978);
  v10 = *(sub_24342C53C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24342C53C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_243423A0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_243423AD8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_243424014(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_243423AD8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_243423BE4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24342C7FC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_243423BE4(uint64_t a1, unint64_t a2)
{
  v4 = sub_243423C30(a1, a2);
  sub_243423D60(&unk_285627958);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_243423C30(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_243423E4C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24342C7FC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24342C70C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_243423E4C(v10, 0);
        result = sub_24342C7DC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_243423D60(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_243423EC0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_243423E4C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75688, &unk_24342D980);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_243423EC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75688, &unk_24342D980);
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

uint64_t sub_243423FB4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_243424014(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_243424070()
{
  result = qword_27ED75690;
  if (!qword_27ED75690)
  {
    sub_24342C31C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED75690);
  }

  return result;
}

uint64_t sub_2434240C8()
{
  v0 = sub_24342C4FC();
  __swift_allocate_value_buffer(v0, qword_27ED77050);
  __swift_project_value_buffer(v0, qword_27ED77050);
  return sub_24342C4EC();
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

uint64_t sub_2434241A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CHSActivityPreviewInfo_environment;
  swift_beginAccess();
  v5 = sub_24342C60C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_243424230(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24342C60C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR___CHSActivityPreviewInfo_environment;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_243424348@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CHSActivityPreviewInfo_environment;
  swift_beginAccess();
  v4 = sub_24342C60C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2434243D0(uint64_t a1)
{
  v3 = OBJC_IVAR___CHSActivityPreviewInfo_environment;
  swift_beginAccess();
  v4 = sub_24342C60C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void sub_2434244C4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CHSActivityPreviewInfo_metrics;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_243424524()
{
  v1 = OBJC_IVAR___CHSActivityPreviewInfo_metrics;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_243424578(uint64_t a1)
{
  v3 = OBJC_IVAR___CHSActivityPreviewInfo_metrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ActivityPreviewInfo.__allocating_init(bundleID:metrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED756A0, &qword_24342D990);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v33 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v32 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v32 - v12;
  v14 = sub_24342C60C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v16(v13, 1, 1, v14);
  v32[1] = a2;
  v17 = sub_24342C6BC();
  v18 = CHSWidgetEnvironmentDataForBundleIdentifier();

  if (v18)
  {
    v32[0] = a3;
    v19 = sub_24342C1EC();
    v21 = v20;

    sub_2434258EC(0, &qword_27ED757F0, 0x277CCAAC8);
    sub_24342C5EC();
    if (sub_24342C76C())
    {
      sub_24342C5DC();
      sub_24341D3E4(v19, v21);
      a3 = v32[0];
      goto LABEL_9;
    }

    sub_24341D3E4(v19, v21);
    a3 = v32[0];
  }

  if (qword_27ED75420 != -1)
  {
    swift_once();
  }

  v22 = sub_24342C4FC();
  __swift_project_value_buffer(v22, qword_27ED77050);
  v23 = sub_24342C4DC();
  v24 = sub_24342C74C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_24341A000, v23, v24, "Failed to fetch environment from host for activity preview context!", v25, 2u);
    MEMORY[0x245D361C0](v25, -1, -1);
  }

  sub_24342C5FC();
LABEL_9:
  v16(v11, 0, 1, v14);
  sub_243424A38(v11, v13);
  swift_getKeyPath();
  v26 = *(v15 + 48);
  result = v26(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_24342C5AC();
    v28 = v33;
    sub_243425884(v13, v33, &unk_27ED756A0, &qword_24342D990);
    result = v26(v28, 1, v14);
    if (result != 1)
    {

      v29 = type metadata accessor for ActivityPreviewInfo();
      v30 = objc_allocWithZone(v29);
      (*(v15 + 16))(&v30[OBJC_IVAR___CHSActivityPreviewInfo_environment], v28, v14);
      *&v30[OBJC_IVAR___CHSActivityPreviewInfo_metrics] = a3;
      v34.receiver = v30;
      v34.super_class = v29;
      v31 = objc_msgSendSuper2(&v34, sel_init);
      (*(v15 + 8))(v28, v14);
      sub_243423FB4(v13, &unk_27ED756A0, &qword_24342D990);
      return v31;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_243424A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED756A0, &qword_24342D990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_243424AA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24342C55C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_243424AD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24342C55C();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for ActivityPreviewInfo()
{
  result = qword_27ED756C8;
  if (!qword_27ED756C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_243424C0C()
{
  v1 = v0;
  v2 = sub_24342C60C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = 0;
  v10[2] = 0xE000000000000000;
  sub_24342C7EC();

  v11 = 0xD000000000000022;
  v12 = 0x800000024342E7A0;
  v7 = OBJC_IVAR___CHSActivityPreviewInfo_environment;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  sub_243425934(&qword_27ED756B0);
  v8 = sub_24342C87C();
  MEMORY[0x245D35AF0](v8);

  (*(v3 + 8))(v6, v2);
  MEMORY[0x245D35AF0](62, 0xE100000000000000);
  return v11;
}

uint64_t sub_243424D9C(uint64_t a1)
{
  v3 = sub_24342C60C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - v9;
  sub_243425884(a1, v25, &qword_27ED756B8, &qword_24342DA30);
  if (!v26)
  {
    sub_243423FB4(v25, &qword_27ED756B8, &qword_24342DA30);
    goto LABEL_7;
  }

  type metadata accessor for ActivityPreviewInfo();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v22 = 0;
    return v22 & 1;
  }

  v11 = v24[7];
  v12 = OBJC_IVAR___CHSActivityPreviewInfo_environment;
  swift_beginAccess();
  v13 = v4[2];
  v13(v10, v1 + v12, v3);
  v14 = OBJC_IVAR___CHSActivityPreviewInfo_environment;
  swift_beginAccess();
  v13(v8, &v11[v14], v3);
  LOBYTE(v14) = sub_24342C5CC();
  v15 = v4[1];
  v15(v8, v3);
  v15(v10, v3);
  if ((v14 & 1) == 0)
  {

    goto LABEL_7;
  }

  sub_2434258EC(0, &qword_27ED756C0, 0x277D82BB8);
  v16 = OBJC_IVAR___CHSActivityPreviewInfo_metrics;
  swift_beginAccess();
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR___CHSActivityPreviewInfo_metrics;
  swift_beginAccess();
  v19 = *&v11[v18];
  v20 = v17;
  v21 = v19;
  v22 = sub_24342C7AC();

  return v22 & 1;
}

uint64_t sub_2434250EC()
{
  v1 = v0;
  v2 = sub_24342C60C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C93C();
  v7 = OBJC_IVAR___CHSActivityPreviewInfo_environment;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  sub_243425934(&qword_27ED75750);
  sub_24342C69C();
  (*(v3 + 8))(v6, v2);
  v8 = OBJC_IVAR___CHSActivityPreviewInfo_metrics;
  swift_beginAccess();
  v9 = *(v1 + v8);
  sub_24342C7BC();

  return sub_24342C91C();
}

id ActivityPreviewInfo.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_24342C60C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C5EC();
  v9 = sub_24342C77C();
  sub_24342C1FC();
  v10 = sub_24342C77C();
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      v12 = v10;
      v13 = v9;
      sub_24342C5DC();
      v14 = type metadata accessor for ActivityPreviewInfo();
      v15 = objc_allocWithZone(v14);
      (*(v5 + 16))(&v15[OBJC_IVAR___CHSActivityPreviewInfo_environment], v8, v4);
      *&v15[OBJC_IVAR___CHSActivityPreviewInfo_metrics] = v12;
      v23.receiver = v15;
      v23.super_class = v14;
      v16 = v12;
      v17 = objc_msgSendSuper2(&v23, sel_init);

      (*(v5 + 8))(v8, v4);
      swift_getObjectType();
      v18 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
      v19 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
      swift_deallocPartialClassInstance();
      return v17;
    }
  }

  else
  {

    a1 = v11;
  }

  swift_getObjectType();
  v21 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v22 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_243425540(void *a1)
{
  v2 = v1;
  v4 = sub_24342C60C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR___CHSActivityPreviewInfo_environment;
  swift_beginAccess();
  (*(v5 + 16))(v8, v2 + v9, v4);
  v10 = sub_24342C5BC();
  (*(v5 + 8))(v8, v4);
  v11 = sub_24342C6BC();
  [a1 encodeObject:v10 forKey:v11];

  v12 = OBJC_IVAR___CHSActivityPreviewInfo_metrics;
  swift_beginAccess();
  v13 = *(v2 + v12);
  v14 = sub_24342C6BC();
  [a1 encodeObject:v13 forKey:v14];
}

id ActivityPreviewInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityPreviewInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityPreviewInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243425884(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2434258EC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_243425934(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24342C60C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_243425980@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CHSActivityPreviewInfo_metrics;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2434259F4()
{
  result = sub_24342C60C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

WidgetPreviewsSupport::WidgetPreviewInfo::Host_optional __swiftcall WidgetPreviewInfo.Host.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24342C86C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WidgetPreviewInfo.Host.rawValue.getter()
{
  v1 = 0x657263536B636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x746E6569626D61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726353656D6F68;
  }
}

uint64_t sub_243425CF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x657263536B636F6CLL;
  v4 = 0xE700000000000000;
  if (v2 == 1)
  {
    v4 = 0xEA00000000006E65;
  }

  else
  {
    v3 = 0x746E6569626D61;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x65726353656D6F68;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000006E65;
  }

  v7 = 0x657263536B636F6CLL;
  v8 = 0xE700000000000000;
  if (*a2 == 1)
  {
    v8 = 0xEA00000000006E65;
  }

  else
  {
    v7 = 0x746E6569626D61;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x65726353656D6F68;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000006E65;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24342C88C();
  }

  return v11 & 1;
}

uint64_t sub_243425DF4()
{
  v1 = *v0;
  sub_24342C8FC();
  sub_24342C6EC();

  return sub_24342C92C();
}

uint64_t sub_243425E98()
{
  *v0;
  *v0;
  sub_24342C6EC();
}

uint64_t sub_243425F28()
{
  v1 = *v0;
  sub_24342C8FC();
  sub_24342C6EC();

  return sub_24342C92C();
}

void sub_243425FD4(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006E65;
  v3 = *v1;
  v4 = 0x657263536B636F6CLL;
  v5 = 0xE700000000000000;
  if (v3 == 1)
  {
    v5 = 0xEA00000000006E65;
  }

  else
  {
    v4 = 0x746E6569626D61;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x65726353656D6F68;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_243426034(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CHSWidgetPreviewInfo_metricsSpecifications;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_24342609C()
{
  v1 = OBJC_IVAR___CHSWidgetPreviewInfo_metricsSpecifications;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2434260E4(uint64_t a1)
{
  v3 = OBJC_IVAR___CHSWidgetPreviewInfo_metricsSpecifications;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24342619C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CHSWidgetPreviewInfo_environment;
  swift_beginAccess();
  v5 = sub_24342C60C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_243426228(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24342C60C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR___CHSWidgetPreviewInfo_environment;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_243426340@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CHSWidgetPreviewInfo_environment;
  swift_beginAccess();
  v4 = sub_24342C60C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2434263C8(uint64_t a1)
{
  v3 = OBJC_IVAR___CHSWidgetPreviewInfo_environment;
  swift_beginAccess();
  v4 = sub_24342C60C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id WidgetPreviewInfo.__allocating_init(bundleID:)()
{
  v0 = sub_24342C60C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342660C(v4);

  v5 = type metadata accessor for WidgetPreviewInfo();
  v6 = objc_allocWithZone(v5);
  (*(v1 + 16))(&v6[OBJC_IVAR___CHSWidgetPreviewInfo_environment], v4, v0);
  *&v6[OBJC_IVAR___CHSWidgetPreviewInfo_metricsSpecifications] = sub_2434286F8(MEMORY[0x277D84F90]);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v1 + 8))(v4, v0);
  return v7;
}

uint64_t sub_24342660C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED756A0, &qword_24342D990);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = sub_24342C60C();
  v13 = *(v12 - 8);
  v27 = *(v13 + 56);
  v27(v11, 1, 1, v12);
  v14 = sub_24342C6BC();
  v15 = CHSWidgetEnvironmentDataForBundleIdentifier();

  if (v15)
  {
    v26 = a1;
    v16 = sub_24342C1EC();
    v18 = v17;

    sub_2434258EC(0, &qword_27ED757F0, 0x277CCAAC8);
    sub_24342C5EC();
    if (sub_24342C76C())
    {
      sub_24342C5DC();
      sub_24341D3E4(v16, v18);
      a1 = v26;
      goto LABEL_9;
    }

    sub_24341D3E4(v16, v18);
    a1 = v26;
  }

  if (qword_27ED75420 != -1)
  {
    swift_once();
  }

  v19 = sub_24342C4FC();
  __swift_project_value_buffer(v19, qword_27ED77050);
  v20 = sub_24342C4DC();
  v21 = sub_24342C74C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_24341A000, v20, v21, "Failed to fetch environment from host for preview context!", v22, 2u);
    MEMORY[0x245D361C0](v22, -1, -1);
  }

  sub_24342C5FC();
LABEL_9:
  v27(v9, 0, 1, v12);
  sub_243424A38(v9, v11);
  swift_getKeyPath();
  v23 = *(v13 + 48);
  result = v23(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_24342C5AC();
    sub_243425884(v11, v6, &unk_27ED756A0, &qword_24342D990);
    result = v23(v6, 1, v12);
    if (result != 1)
    {
      (*(v13 + 32))(a1, v6, v12);
      return sub_243423FB4(v11, &unk_27ED756A0, &qword_24342D990);
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for WidgetPreviewInfo()
{
  result = qword_27ED757D0;
  if (!qword_27ED757D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2434269F4(_BYTE *a1)
{
  v2 = 0x657263536B636F6CLL;
  v3 = 0xE700000000000000;
  if (*a1 == 1)
  {
    v3 = 0xEA00000000006E65;
  }

  else
  {
    v2 = 0x746E6569626D61;
  }

  if (*a1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x65726353656D6F68;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xEA00000000006E65;
  }

  v6 = OBJC_IVAR___CHSWidgetPreviewInfo_metricsSpecifications;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_243427EE8(v4, v5);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v8);
      v12 = v11;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_243426AF4(void *a1, _BYTE *a2)
{
  v3 = 0x657263536B636F6CLL;
  v4 = 0xE700000000000000;
  if (*a2 == 1)
  {
    v4 = 0xEA00000000006E65;
  }

  else
  {
    v3 = 0x746E6569626D61;
  }

  if (*a2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x65726353656D6F68;
  }

  if (*a2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000006E65;
  }

  v7 = v2;
  v9 = OBJC_IVAR___CHSWidgetPreviewInfo_metricsSpecifications;
  swift_beginAccess();
  v10 = a1;
  v11 = *(v7 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v7 + v9);
  *(v7 + v9) = 0x8000000000000000;
  sub_2434282BC(v10, v5, v6, isUniquelyReferenced_nonNull_native);

  *(v7 + v9) = v14;
  return swift_endAccess();
}

uint64_t sub_243426C5C()
{
  v1 = v0;
  v2 = sub_24342C60C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_24342C7EC();
  v18 = v16;
  v19 = v17;
  MEMORY[0x245D35AF0](0xD00000000000002ALL, 0x800000024342E8B0);
  v7 = OBJC_IVAR___CHSWidgetPreviewInfo_metricsSpecifications;
  swift_beginAccess();
  v8 = *(v1 + v7);
  sub_2434258EC(0, &qword_27ED75748, 0x277CFA3F8);

  v9 = sub_24342C68C();
  v11 = v10;

  MEMORY[0x245D35AF0](v9, v11);

  MEMORY[0x245D35AF0](0x6F7269766E65203BLL, 0xEF203A746E656D6ELL);
  v12 = OBJC_IVAR___CHSWidgetPreviewInfo_environment;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v12, v2);
  sub_243425934(&qword_27ED756B0);
  v13 = sub_24342C87C();
  MEMORY[0x245D35AF0](v13);

  (*(v3 + 8))(v6, v2);
  MEMORY[0x245D35AF0](62, 0xE100000000000000);
  return v18;
}

uint64_t sub_243426EA0(uint64_t a1)
{
  v3 = sub_24342C60C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - v9;
  sub_243425884(a1, v24, &qword_27ED756B8, &qword_24342DA30);
  if (!v25)
  {
    sub_243423FB4(v24, &qword_27ED756B8, &qword_24342DA30);
    goto LABEL_7;
  }

  type metadata accessor for WidgetPreviewInfo();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v21 = 0;
    return v21 & 1;
  }

  v11 = v23[7];
  v12 = OBJC_IVAR___CHSWidgetPreviewInfo_environment;
  swift_beginAccess();
  v13 = v4[2];
  v13(v10, v1 + v12, v3);
  v14 = OBJC_IVAR___CHSWidgetPreviewInfo_environment;
  swift_beginAccess();
  v13(v8, &v11[v14], v3);
  LOBYTE(v14) = sub_24342C5CC();
  v15 = v4[1];
  v15(v8, v3);
  v15(v10, v3);
  if ((v14 & 1) == 0)
  {

    goto LABEL_7;
  }

  v16 = OBJC_IVAR___CHSWidgetPreviewInfo_metricsSpecifications;
  swift_beginAccess();
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR___CHSWidgetPreviewInfo_metricsSpecifications;
  swift_beginAccess();
  v19 = *&v11[v18];

  sub_24342711C(v17, v19);
  v21 = v20;

  return v21 & 1;
}

void sub_24342711C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_243427EE8(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_2434258EC(0, &qword_27ED75748, 0x277CFA3F8);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_24342C7AC();

      if ((v22 & 1) == 0)
      {
        return;
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
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_243427358()
{
  v1 = v0;
  v2 = sub_24342C60C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C93C();
  v7 = OBJC_IVAR___CHSWidgetPreviewInfo_environment;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  sub_243425934(&qword_27ED75750);
  sub_24342C69C();
  (*(v3 + 8))(v6, v2);
  v8 = OBJC_IVAR___CHSWidgetPreviewInfo_metricsSpecifications;
  swift_beginAccess();
  v9 = *(v1 + v8);

  sub_2434285A0(v12, v9);

  return sub_24342C91C();
}

uint64_t WidgetPreviewInfo.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_24342C60C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2434258EC(0, &qword_27ED75758, 0x277CCACA8);
  v71 = sub_2434258EC(0, &qword_27ED75748, 0x277CFA3F8);
  v72 = v9;
  v10 = sub_24342C78C();
  sub_24342C5EC();
  v11 = sub_24342C77C();
  v12 = MEMORY[0x277D85000];
  if (!v10)
  {
    v21 = v11;

    a1 = v21;
    goto LABEL_7;
  }

  if (!v11)
  {

LABEL_7:

    swift_getObjectType();
    v22 = *((*v12 & *v2) + 0x30);
    v23 = *((*v12 & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v70 = a1;
  v69 = v11;
  sub_24342C5DC();
  v13 = type metadata accessor for WidgetPreviewInfo();
  v14 = objc_allocWithZone(v13);
  (*(v5 + 16))(&v14[OBJC_IVAR___CHSWidgetPreviewInfo_environment], v8, v4);
  *&v14[OBJC_IVAR___CHSWidgetPreviewInfo_metricsSpecifications] = sub_2434286F8(MEMORY[0x277D84F90]);
  v81.receiver = v14;
  v81.super_class = v13;
  v15 = objc_msgSendSuper2(&v81, sel_init);
  (*(v5 + 8))(v8, v4);
  swift_getObjectType();
  v16 = *((*v12 & *v2) + 0x30);
  v17 = *((*v12 & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  if ((v10 & 0xC000000000000001) != 0)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v10 = sub_24342C80C() | 0x8000000000000000;
  }

  else
  {
    v25 = -1 << *(v10 + 32);
    v18 = v10 + 64;
    v19 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v20 = v27 & *(v10 + 64);
  }

  v24 = v15;
  v28 = 0;
  v68[1] = v19;
  v29 = (v19 + 64) >> 6;
  v74 = v18;
  v75 = v10;
  v73 = v29;
  while ((v10 & 0x8000000000000000) != 0)
  {
    v39 = sub_24342C81C();
    if (!v39)
    {
      goto LABEL_41;
    }

    v41 = v40;
    v79 = v39;
    swift_dynamicCast();
    v79 = v41;
    v38 = v80;
    swift_dynamicCast();
    v78 = v80;
    v35 = v28;
    v32 = v20;
    if (!v38)
    {
LABEL_41:

      sub_2434287FC();
      return v24;
    }

LABEL_25:
    v77 = v38;
    sub_24342C6CC();
    v42 = sub_24342C86C();

    if (!v42)
    {
      v76 = v32;
      v45 = 1701670760;
      goto LABEL_31;
    }

    if (v42 == 1)
    {
      v76 = v32;
      v45 = 1801678700;
LABEL_31:
      v44 = v45 | 0x6572635300000000;
      v43 = 0xEA00000000006E65;
      goto LABEL_32;
    }

    if (v42 != 2)
    {
      goto LABEL_15;
    }

    v76 = v32;
    v43 = 0xE700000000000000;
    v44 = 0x746E6569626D61;
LABEL_32:
    v46 = OBJC_IVAR___CHSWidgetPreviewInfo_metricsSpecifications;
    swift_beginAccess();
    v47 = v78;
    v48 = *&v24[v46];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v24;
    v51 = isUniquelyReferenced_nonNull_native;
    v79 = *&v50[v46];
    v52 = v79;
    v53 = v50;
    *&v50[v46] = 0x8000000000000000;
    v55 = sub_243427EE8(v44, v43);
    v56 = v52[2];
    v57 = (v54 & 1) == 0;
    v58 = v56 + v57;
    if (__OFADD__(v56, v57))
    {
      goto LABEL_44;
    }

    v59 = v54;
    if (v52[3] >= v58)
    {
      if ((v51 & 1) == 0)
      {
        sub_243428434();
      }
    }

    else
    {
      sub_243428018(v58, v51);
      v60 = sub_243427EE8(v44, v43);
      if ((v59 & 1) != (v61 & 1))
      {
        goto LABEL_46;
      }

      v55 = v60;
    }

    v24 = v53;
    v62 = v79;
    if (v59)
    {
      v30 = v79[7];
      v31 = *(v30 + 8 * v55);
      *(v30 + 8 * v55) = v47;
    }

    else
    {
      v79[(v55 >> 6) + 8] |= 1 << v55;
      v63 = (v62[6] + 16 * v55);
      *v63 = v44;
      v63[1] = v43;
      *(v62[7] + 8 * v55) = v47;
      v64 = v62[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_45;
      }

      v62[2] = v66;
    }

    *&v53[v46] = v62;
    swift_endAccess();
    v18 = v74;
    v10 = v75;
    v29 = v73;
    v32 = v76;
LABEL_15:

    v28 = v35;
    v20 = v32;
  }

  v33 = v28;
  v34 = v20;
  v35 = v28;
  if (v20)
  {
LABEL_21:
    v32 = (v34 - 1) & v34;
    v36 = (v35 << 9) | (8 * __clz(__rbit64(v34)));
    v37 = *(*(v10 + 56) + v36);
    v38 = *(*(v10 + 48) + v36);
    v78 = v37;
    if (!v38)
    {
      goto LABEL_41;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v29)
    {
      goto LABEL_41;
    }

    v34 = *(v18 + 8 * v35);
    ++v33;
    if (v34)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_24342C8AC();
  __break(1u);
  return result;
}

void sub_243427B5C(void *a1)
{
  v3 = sub_24342C60C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR___CHSWidgetPreviewInfo_metricsSpecifications;
  swift_beginAccess();
  v9 = *(v1 + v8);
  sub_2434258EC(0, &qword_27ED75748, 0x277CFA3F8);

  v10 = sub_24342C67C();

  v11 = sub_24342C6BC();
  [a1 encodeObject:v10 forKey:v11];

  v12 = OBJC_IVAR___CHSWidgetPreviewInfo_environment;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v12, v3);
  v13 = sub_24342C5BC();
  (*(v4 + 8))(v7, v3);
  v14 = sub_24342C6BC();
  [a1 encodeObject:v13 forKey:v14];
}

id WidgetPreviewInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WidgetPreviewInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetPreviewInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_243427EE8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24342C8FC();
  sub_24342C6EC();
  v6 = sub_24342C92C();

  return sub_243427F60(a1, a2, v6);
}

unint64_t sub_243427F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24342C88C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_243428018(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED757E0, &unk_24342DB40);
  v39 = a2;
  result = sub_24342C84C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_24342C8FC();
      sub_24342C6EC();
      result = sub_24342C92C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2434282BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_243427EE8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_243428018(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_243427EE8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_24342C8AC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_243428434();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_243428434()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED757E0, &unk_24342DB40);
  v2 = *v0;
  v3 = sub_24342C83C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

uint64_t sub_2434285A0(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 8 * v13);
    v7 &= v7 - 1;
    v21 = a1[2];
    v22 = a1[3];
    v23 = *(a1 + 8);
    v19 = *a1;
    v20 = a1[1];

    v18 = v17;
    sub_24342C6EC();

    sub_24342C7BC();

    result = sub_24342C92C();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x245D35D00](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2434286F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED757E0, &unk_24342DB40);
    v3 = sub_24342C85C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_243427EE8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_243428808()
{
  result = qword_27ED75760;
  if (!qword_27ED75760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED75760);
  }

  return result;
}

uint64_t sub_24342885C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CHSWidgetPreviewInfo_metricsSpecifications;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_2434288CC()
{
  result = sub_24342C60C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t RenderEffect.isClearGlass.getter()
{
  v0 = sub_24342C31C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  v5 = sub_24342C30C();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t RenderEffect.isTintedGlass.getter()
{
  v0 = sub_24342C31C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  v5 = sub_24342C30C();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t RenderEffect.isSolariumFullColor.getter()
{
  v0 = sub_24342C31C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  v5 = sub_24342C30C();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t RenderEffect.isAccessory.getter()
{
  v0 = sub_24342C31C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  v5 = sub_24342C30C();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5 & 1) != 0 || (sub_24342C23C(), v7 = sub_24342C30C(), v6(v4, v0), (v7) || (sub_24342C23C(), v8 = sub_24342C30C(), v6(v4, v0), (v8))
  {
    v9 = 1;
  }

  else
  {
    sub_24342C23C();
    v9 = sub_24342C30C();
    v6(v4, v0);
  }

  return v9 & 1;
}

uint64_t RenderEffect.isSystemSmall.getter()
{
  v0 = sub_24342C31C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  v5 = sub_24342C30C();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t RenderEffect.isSystemMedium.getter()
{
  v0 = sub_24342C31C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  v5 = sub_24342C30C();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t RenderEffect.isSystemLarge.getter()
{
  v0 = sub_24342C31C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  v5 = sub_24342C30C();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t RenderEffect.isSystemExtraLarge.getter()
{
  v0 = sub_24342C31C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  v5 = sub_24342C30C();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t RenderEffect.isGlass.getter()
{
  v0 = sub_24342C31C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24342C23C();
  v5 = sub_24342C30C();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    sub_24342C23C();
    v7 = sub_24342C30C();
    v6(v4, v0);
  }

  return v7 & 1;
}

uint64_t getEnumTagSinglePayload for WidgetPreviewUtilities(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WidgetPreviewUtilities(_WORD *result, int a2, int a3)
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

uint64_t sub_243429AD4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xEF73444974636566;
  v4 = 0x656D614E707061;
  if (a1 == 2)
  {
    v4 = 0x66457265646E6572;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  v5 = 0xD000000000000013;
  v6 = 0x800000024342E240;
  if (a1)
  {
    v5 = 0x646E694B77656976;
    v6 = 0xEC00000061746144;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x66457265646E6572;
    }

    else
    {
      v11 = 0x656D614E707061;
    }

    if (a2 == 2)
    {
      v10 = 0xEF73444974636566;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x646E694B77656976;
    }

    else
    {
      v9 = 0xD000000000000013;
    }

    if (a2)
    {
      v10 = 0xEC00000061746144;
    }

    else
    {
      v10 = 0x800000024342E240;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_24342C88C();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_243429C38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000736E6FLL;
  v3 = 0x697461746F6E6E61;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x66457265646E6572;
      v6 = 0xEF73444974636566;
    }

    else
    {
      v6 = 0x800000024342E1A0;
      v5 = 0xD000000000000012;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x697461746F6E6E61;
    }

    if (v4)
    {
      v6 = 0x800000024342E170;
    }

    else
    {
      v6 = 0xEB00000000736E6FLL;
    }
  }

  v7 = 0x66457265646E6572;
  v8 = 0x800000024342E1A0;
  if (a2 == 2)
  {
    v8 = 0xEF73444974636566;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000024342E170;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24342C88C();
  }

  return v11 & 1;
}

uint64_t ActivityPreviewPayload.previewInstance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24342C32C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActivityPreviewPayload.activityInfoData.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 28);
  v3 = *v2;
  sub_24341B954(*v2, *(v2 + 8));
  return v3;
}

uint64_t ActivityPreviewPayload.init(previewInstance:activityInfoData:addStaleEntries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_24342C32C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for ActivityPreviewPayload();
  v12 = (a5 + *(result + 28));
  *v12 = a2;
  v12[1] = a3;
  *(a5 + *(result + 32)) = a4;
  return result;
}

uint64_t sub_243429F04()
{
  v0 = sub_24342C86C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_243429F50(char a1)
{
  if (!a1)
  {
    return 0x4977656976657270;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x656C617453646461;
}

uint64_t sub_243429FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24342A038(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_24342A0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24342A114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24342A184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  result = sub_243429F04();
  *a3 = result;
  return result;
}

uint64_t sub_24342A1BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  result = sub_243429F50(*v2);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_24342A238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75658, &qword_24342D900);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v25 - v4;
  type metadata accessor for ActivityPreviewPayload.Key();
  v5 = sub_24342C32C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = *(TupleTypeMetadata2 - 8);
  v7 = v26;
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - v13;
  v15 = *(v12 + 48);
  *(&v25 - v13) = 0;
  v16 = *(v5 - 8);
  (*(v16 + 16))(&v25 + v15 - v13, a1, v5);
  v17 = type metadata accessor for ActivityPreviewPayload();
  v18 = (a1 + *(v17 + 28));
  v19 = *v18;
  v20 = v18[1];
  LOBYTE(a1) = *(a1 + *(v17 + 32));
  (*(v7 + 16))(v11, v14, TupleTypeMetadata2);
  LOBYTE(v7) = *v11;
  v21 = &v11[*(TupleTypeMetadata2 + 48)];
  v22 = v25;
  (*(v16 + 32))(v25, v21, v5);
  (*(v16 + 56))(v22, 0, 1, v5);
  v32 = v7;
  v31 = 1;
  v29 = v19;
  v30 = v20;
  v28 = 2;
  v27 = a1;
  sub_24341B954(v19, v20);
  sub_24341B954(v19, v20);
  swift_getWitnessTable();
  sub_24341C2EC();
  v23 = sub_24342C49C();
  sub_24341E644(v29, v30);
  sub_24341FF94(v22);
  sub_24341D3E4(v19, v20);
  (*(v26 + 8))(v14, TupleTypeMetadata2);
  return v23;
}

uint64_t ActivityPreviewPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24342C32C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActivityPreviewPayload.Key();
  v20 = v9;
  WitnessTable = swift_getWitnessTable();
  v21 = WitnessTable;
  LOBYTE(v19[0]) = 0;
  sub_24341C2EC();
  sub_24342C37C();
  if (v2)
  {
    v11 = sub_24342C3AC();
    (*(*(v11 - 8) + 8))(a1, v11);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
    v20 = v9;
    v21 = WitnessTable;
    LOBYTE(v19[0]) = 1;
    sub_24342C37C();
    __swift_destroy_boxed_opaque_existential_1(v19);
    v15 = v18;
    v16 = v17;
    v20 = v9;
    v21 = WitnessTable;
    LOBYTE(v19[0]) = 2;
    sub_24342C37C();
    v13 = sub_24342C3AC();
    (*(*(v13 - 8) + 8))(a1, v13);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return ActivityPreviewPayload.init(previewInstance:activityInfoData:addStaleEntries:)(v8, v16, v15, v22, a2);
  }
}

uint64_t ActivityPreviewPayload.init(previewInstance:activityInfo:addStaleEntries:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v22 = a4;
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = sub_24342C32C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  v11 = objc_opt_self();
  v24[0] = 0;
  v12 = [v11 archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v24];
  if (v12)
  {
    v13 = v12;
    v14 = v24[0];
    v15 = sub_24342C1EC();
    v17 = v16;

    (*(v7 + 8))(a1, v6);
    result = ActivityPreviewPayload.init(previewInstance:activityInfoData:addStaleEntries:)(v10, v15, v17, v23 & 1, v22);
  }

  else
  {
    v19 = *(v7 + 8);
    v20 = v24[0];
    v19(v10, v6);
    sub_24342C1DC();

    swift_willThrow();
    result = (v19)(a1, v6);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ActivityPreviewPayload.unarchiveInfo()(uint64_t a1)
{
  sub_2434258EC(0, &qword_27ED757F0, 0x277CCAAC8);
  v4 = *(a1 + 16);
  v5 = (v1 + *(a1 + 28));
  v6 = *v5;
  v7 = v5[1];
  result = sub_24342C76C();
  if (!v2 && !result)
  {
    type metadata accessor for ActivityPreviewPayload.UnarchiveError();
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_24342AB4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_24342ABA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

uint64_t ActivityExtensionResultPayload.renderEffectIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ActivityExtensionResultPayload.viewKind.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_2434258EC(0, &qword_27ED757F0, 0x277CCAAC8);
  sub_2434258EC(0, &qword_27ED75800, 0x277CCABB0);
  v5 = sub_24342C76C();
  v6 = v5;
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = [v5 integerValue];
  if (v7 > 1)
  {
    if (v7 == 2)
    {

      v8 = MEMORY[0x277CE3E28];
      goto LABEL_11;
    }

    if (v7 == 3)
    {

      v8 = MEMORY[0x277CE3E30];
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v7)
  {
    if (v7 == 1)
    {

      v8 = MEMORY[0x277CE3E38];
LABEL_11:
      v10 = *v8;
      v11 = sub_24342C64C();
      (*(*(v11 - 8) + 104))(a1, v10, v11);
      v9 = MEMORY[0x277CE3E40];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v9 = MEMORY[0x277CE3E48];
LABEL_12:
  v12 = *v9;
  v13 = sub_24342C65C();
  v14 = *(*(v13 - 8) + 104);

  return v14(a1, v12, v13);
}

uint64_t ActivityExtensionResultPayload.appName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ActivityExtensionResultPayload.appName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ActivityExtensionResultPayload.init(viewCollectionDatas:viewKind:renderEffectIDs:appName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = sub_24342C65C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a6 = a1;
  a6[3] = a3;
  (*(v13 + 16))(v16, a2, v12);
  sub_24342BA94(v16);
  v17 = sub_24342AFBC();
  v19 = v18;
  result = (*(v13 + 8))(a2, v12);
  a6[1] = v17;
  a6[2] = v19;
  a6[4] = a4;
  a6[5] = a5;
  return result;
}

uint64_t sub_24342AFBC()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  sub_2434258EC(0, &qword_27ED75800, 0x277CCABB0);
  v1 = sub_24342C79C();
  v8[0] = 0;
  v2 = [v0 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v8];

  v3 = v8[0];
  if (v2)
  {
    v4 = sub_24342C1EC();

    v5 = *MEMORY[0x277D85DE8];
    return v4;
  }

  else
  {
    v7 = v3;
    sub_24342C1DC();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t ActivityExtensionResultPayload.init(viewCollectionDatas:viewKindData:renderEffectIDs:appName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_24342B0FC()
{
  v1 = *v0;
  sub_24342C8FC();
  sub_24342C6EC();

  return sub_24342C92C();
}

uint64_t sub_24342B1D8()
{
  *v0;
  *v0;
  sub_24342C6EC();
}

uint64_t sub_24342B2A0()
{
  v1 = *v0;
  sub_24342C8FC();
  sub_24342C6EC();

  return sub_24342C92C();
}

uint64_t sub_24342B378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24342C15C();
  *a2 = result;
  return result;
}

void sub_24342B3A8(unint64_t *a1@<X8>)
{
  v2 = 0xEC00000061746144;
  v3 = 0x646E694B77656976;
  v4 = 0xEF73444974636566;
  v5 = 0x66457265646E6572;
  if (*v1 != 2)
  {
    v5 = 0x656D614E707061;
    v4 = 0xE700000000000000;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x800000024342E240;
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

unint64_t sub_24342B440()
{
  v1 = 0x646E694B77656976;
  v2 = 0x66457265646E6572;
  if (*v0 != 2)
  {
    v2 = 0x656D614E707061;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t ActivityExtensionResultPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v16 = &type metadata for ActivityExtensionResultPayload.Key;
  v5 = sub_24342BCD0();
  v17 = v5;
  LOBYTE(v15[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75810, &unk_24342DC70);
  sub_24342BD24(qword_27ED75818, &qword_27ED75810, &unk_24342DC70);
  sub_24342C37C();
  if (v2)
  {
    v6 = sub_24342C3AC();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    v7 = v18;
    v16 = &type metadata for ActivityExtensionResultPayload.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 1;
    sub_24342C37C();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for ActivityExtensionResultPayload.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75468, &qword_24342CFC0);
    sub_24342BD24(&qword_27ED75470, &qword_27ED75468, &qword_24342CFC0);
    sub_24342C37C();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for ActivityExtensionResultPayload.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 3;
    sub_24342C37C();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v9 = sub_24342C3AC();
    result = (*(*(v9 - 8) + 8))(a1, v9);
    *a2 = v7;
    a2[1] = v13;
    a2[2] = v14;
    a2[3] = v12;
    a2[4] = v10;
    a2[5] = v11;
  }

  return result;
}

uint64_t ActivityExtensionResultPayload.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_24342C39C();
}

uint64_t sub_24342B874(uint64_t *a1)
{
  v1 = *a1;
  v18 = *(a1 + 1);
  v2 = v18;
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v17 = 0;
  v16 = v1;
  v15 = 1;
  v14 = v18;
  v13 = 2;
  v12 = v3;
  v11 = 3;
  v9 = v4;
  v10 = v5;

  sub_24341FF38(&v18, v8);
  sub_24341B954(v2, *(&v2 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75810, &unk_24342DC70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED75468, &qword_24342CFC0);
  sub_24342BCD0();
  sub_24342BD24(qword_27ED75818, &qword_27ED75810, &unk_24342DC70);
  sub_24342BD24(&qword_27ED75470, &qword_27ED75468, &qword_24342CFC0);
  v6 = sub_24342C48C();
  sub_24341E644(v14, *(&v14 + 1));

  sub_24341D3E4(v2, *(&v2 + 1));
  return v6;
}

uint64_t sub_24342BA2C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_24342C39C();
}

uint64_t sub_24342BA94(uint64_t a1)
{
  v2 = sub_24342C65C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CE3E40])
  {
    (*(v3 + 96))(v6, v2);
    v8 = sub_24342C64C();
    v9 = (*(*(v8 - 8) + 88))(v6, v8);
    if (v9 == *MEMORY[0x277CE3E28])
    {
      v10 = 2;
LABEL_6:
      (*(v3 + 8))(a1, v2);
      return v10;
    }

    if (v9 == *MEMORY[0x277CE3E30])
    {
      v10 = 3;
      goto LABEL_6;
    }

    if (v9 == *MEMORY[0x277CE3E38])
    {
      v10 = 1;
      goto LABEL_6;
    }
  }

  else if (v7 == *MEMORY[0x277CE3E48])
  {
    v10 = 0;
    goto LABEL_6;
  }

  result = sub_24342C82C();
  __break(1u);
  return result;
}

unint64_t sub_24342BCD0()
{
  result = qword_27ED75808;
  if (!qword_27ED75808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED75808);
  }

  return result;
}

uint64_t sub_24342BD24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24342BD9C()
{
  result = sub_24342C32C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24342BE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24342C32C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
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

uint64_t sub_24342BF14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24342C32C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
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

uint64_t sub_24342BFE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24342C028(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_24342C108()
{
  result = qword_27ED759A0;
  if (!qword_27ED759A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED759A0);
  }

  return result;
}

uint64_t sub_24342C15C()
{
  v0 = sub_24342C86C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}