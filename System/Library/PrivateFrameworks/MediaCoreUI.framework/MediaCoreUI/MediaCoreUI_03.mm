uint64_t sub_1C5977278@<X0>(void *a1@<X8>)
{
  sub_1C59B5ECC();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C59772CC@<X0>(_BYTE *a1@<X8>)
{
  sub_1C59B5E78();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C597736C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1919D0);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC87B4();
  sub_1C5BC8AB4();
  sub_1C59B51F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C59B575C();
  return swift_getWitnessTable();
}

uint64_t sub_1C59774B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0);
  _s24HeaderArtworkPlaceholderVMa();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  _s32HeaderMetadataAndContextMenuViewVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191B40);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C59B73EC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5977790(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C597784C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C59778FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C98);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 68));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1C59779C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C98);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 64);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 68)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C5977A94()
{
  v1 = (_s19HeadlessTimeControlVMa() - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);

  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[18];
  v4 = sub_1C5BC7AC4();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C98);

  return swift_deallocObject();
}

uint64_t sub_1C5977BE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v5 = (_s19HeadlessTimeControlVMa() - 8);
  v6 = (v4 + v3 + *(*v5 + 80)) & ~*(*v5 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  v7 = v0 + v6 + v5[18];
  v8 = sub_1C5BC7AC4();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C98);

  return swift_deallocObject();
}

uint64_t sub_1C5977DBC()
{
  v1 = (_s19HeadlessTimeControlVMa() - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[18];
  v4 = sub_1C5BC7AC4();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C98);

  return swift_deallocObject();
}

uint64_t sub_1C5977F08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[10];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[11] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D48);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[12];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C597804C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[10];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191D48);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[12];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1C5978190()
{
  _s33HeadlessTimeControlSliderModifierVMa();
  swift_getWitnessTable();
  sub_1C5BC9394();
  _s21AccessibilityModifierVMa();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191D38);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA466B0, &qword_1EC191D38);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5978308()
{
  sub_1C5BC9654();
  _s24StateObservationModifierVMa();
  sub_1C5BC8AB4();
  sub_1C59BD80C(&unk_1EDA461C8, MEMORY[0x1E697C998]);
  sub_1C5BC8544();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5978428()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C597846C()
{
  _s21AccessibilityModifierVMa();
  swift_getWitnessTable();
  sub_1C5BC9394();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  sub_1C59BD80C(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C59785F0()
{
  _s24StateObservationModifierVMa();
  swift_getWitnessTable();
  sub_1C5BC9394();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191B78);
  swift_getOpaqueTypeConformance2();
  sub_1C59BD6B8();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E68);
  swift_getOpaqueTypeConformance2();
  sub_1C59BD734();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC7AC4();
  swift_getOpaqueTypeConformance2();
  sub_1C59BD80C(&qword_1EDA4E020, MEMORY[0x1E6969530]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC81D4();
  swift_getOpaqueTypeConformance2();
  sub_1C59BD80C(&qword_1EDA467E8, MEMORY[0x1E697BE48]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C59788E8@<X0>(_BYTE *a1@<X8>)
{
  sub_1C59C11A8();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5978984()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E78);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E80);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40);
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7F4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5943498();
  return swift_getWitnessTable();
}

uint64_t sub_1C5978B00()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40);
  sub_1C5BC8AB4();
  sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40);
  return swift_getWitnessTable();
}

uint64_t sub_1C5978C18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C59C1538();
  *a1 = result & 1;
  return result;
}

__n128 sub_1C5978C7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1C5978C88@<D0>(uint64_t a1@<X8>)
{
  sub_1C59CDD54();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1C5978D34()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ScopePicker() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  v4 = sub_1C5BCA864();
  (*(*(v1 - 8) + 8))(v3 + *(v4 + 32), v1);

  v5 = v3 + v2[14];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191FA0);
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191FA8);

  sub_1C59CC0D8(*(v3 + v2[15]), *(v3 + v2[15] + 8), *(v3 + v2[15] + 16), *(v3 + v2[15] + 17));

  return swift_deallocObject();
}

uint64_t sub_1C5978ED4()
{
  type metadata accessor for ScopePicker.ScopeButtonsWithHighlight();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC81E4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ScopePicker.FadingView();
  swift_getWitnessTable();
  sub_1C5BC8874();
  sub_1C5BC8AB4();
  sub_1C5BC8BC4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BCB144();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191F80);
  swift_getOpaqueTypeConformance2();
  sub_1C59CC000();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1C59CC084();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1C5BC8BA4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191F98);
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(qword_1EC191FD8, &qword_1EC191F98);
  swift_getWitnessTable();
  sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  return swift_getWitnessTable();
}

uint64_t sub_1C5979450()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192070);
  sub_1C5BC8AB4();
  sub_1C5924F54(qword_1EC192078, &qword_1EC192070);
  return swift_getWitnessTable();
}

uint64_t sub_1C5979524()
{

  return swift_deallocObject();
}

uint64_t sub_1C597955C()
{
  type metadata accessor for ScopePicker.ScopeButtons();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192180);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192188);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  type metadata accessor for ScopePicker.ScopeButtonHighlight();
  swift_getWitnessTable();
  sub_1C5BC8474();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  sub_1C59CD0B8();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC192198, &qword_1EC192188);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC96E4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1C597990C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ScopePicker.ScopeButtonHighlight() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[11], v1);
  v4 = v2[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1C5BC89D4();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C5979A6C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ScopePicker.ScopeButtons() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  v4 = v3 + v2[11];

  v5 = sub_1C5BCA864();
  (*(*(v1 - 8) + 8))(v4 + *(v5 + 32), v1);

  return swift_deallocObject();
}

uint64_t sub_1C5979B80()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ScopePicker.ScopeButtons() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(*v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0 + v3;

  v7 = v6 + v2[11];

  v8 = sub_1C5BCA864();
  v9 = *(v4 + 8);
  v9(v7 + *(v8 + 32), v1);
  v9(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1C5979CE8()
{
  type metadata accessor for ScopePicker.ScopeButtonHighlightCapsule();
  sub_1C5BC9074();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8874();
  return swift_getWitnessTable();
}

uint64_t sub_1C5979DE4()
{
  sub_1C5BCB144();
  type metadata accessor for ScopePicker.ButtonLabel();
  sub_1C5BC8AB4();
  type metadata accessor for ScopePicker.AnchorPreference();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  sub_1C5953670();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BCA6F4();
  swift_getWitnessTable();
  sub_1C5BCA724();
  sub_1C5BC8B34();
  swift_getWitnessTable();
  sub_1C59CEDB8(&qword_1EC192338, MEMORY[0x1E697C248]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192340);
  sub_1C5BC8AB4();
  sub_1C5BC92F4();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EC192348, &qword_1EC192340);
  swift_getWitnessTable();
  sub_1C59CEDB8(&qword_1EC192350, MEMORY[0x1E697C688]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5BCA8C4();
  swift_getOpaqueTypeConformance2();
  sub_1C59CEDB8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BCA714();
  return swift_getWitnessTable();
}

uint64_t sub_1C597A33C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ScopePicker.AnchorPreference() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  v4 = sub_1C5BCA864();
  v5 = *(*(v1 - 8) + 8);
  v5(v3 + *(v4 + 32), v1);
  v5(v3 + v2[11], v1);

  return swift_deallocObject();
}

uint64_t sub_1C597A468()
{
  type metadata accessor for ScopePicker.AnchorPreference();
  swift_getWitnessTable();
  sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1924F8);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC192500, &qword_1EC1924F8);
  return swift_getWitnessTable();
}

uint64_t sub_1C597A580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5BC7A24();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C597A5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5BC7A24();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C597A65C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MotionAssetDownload.AssetKey(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C597A708(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MotionAssetDownload.AssetKey(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C597A7AC()
{

  return swift_deallocObject();
}

uint64_t sub_1C597A7E4()
{

  return swift_deallocObject();
}

uint64_t sub_1C597A824()
{

  return swift_deallocObject();
}

uint64_t sub_1C597A85C()
{
  if (*(v0 + 24) >= 5uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C597A8A4()
{

  return swift_deallocObject();
}

uint64_t sub_1C597A8E4()
{

  return swift_deallocObject();
}

uint64_t sub_1C597A938()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C597A9D4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1C597AA18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1C597AA68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1C597AAB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_1C597AB08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_1C597AB70()
{
  type metadata accessor for MetadataStyleModifier();
  swift_getWitnessTable();
  sub_1C5BC9394();
  swift_getWitnessTable();
  sub_1C5BCA6F4();
  sub_1C5BC8B34();
  swift_getWitnessTable();
  sub_1C59576B4(&qword_1EC192338, 255, MEMORY[0x1E697C248]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC92D4();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1C597AD08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5BC8E64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C597AD48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C597AE04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C597AEB4()
{
  _s23MarqueeTitleAndSubtitleVMa();
  type metadata accessor for MetadataStyleModifier();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5958FE8();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C597B040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 89);
  return result;
}

uint64_t sub_1C597B0A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A08);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  sub_1C5BC92D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A10);
  sub_1C5BC92D4();
  sub_1C5BCA584();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192180);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929C0);
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C59E75D8();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA45FB0, &qword_1EC192A10);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46040, &qword_1EC1929C0);
  swift_getWitnessTable();
  sub_1C59576B4(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
  return swift_getWitnessTable();
}

uint64_t sub_1C597B474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C597B4EC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A28);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A30);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A38);
  _s23MarqueeTitleAndSubtitleVMa();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  type metadata accessor for MetadataStyleModifier();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C597B7C0@<X0>(void *a1@<X8>)
{
  sub_1C59E9D54();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C597B838()
{
  type metadata accessor for GlowModifier();
  sub_1C5BC8AB4();
  sub_1C59E9B54(qword_1EDA4DE00, type metadata accessor for GlowModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1C597B8D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC190A08);
  sub_1C5BC8AB4();
  sub_1C5924F54(&unk_1EC190A10, &qword_1EC190A08);
  return swift_getWitnessTable();
}

uint64_t sub_1C597B980(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1C597BA3C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C597BAE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192AB0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for GlowModifier() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v5[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1C5BC90F4();
    (*(*(v8 - 8) + 8))(v0 + v6 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C597BD5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5BC8E94();
  *a1 = result;
  return result;
}

uint64_t sub_1C597BDB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5BC8D54();
  *a1 = result;
  return result;
}

uint64_t sub_1C597BE70(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1913A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1C597BF2C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1913A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C597BFD8()
{
  sub_1C5BCB804();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BC8);
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BD0);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BC0);
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  type metadata accessor for BubbleBackground(255);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC190FC8);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BB8);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C59F2388(&qword_1EC192BD8, type metadata accessor for BubbleBackground);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA4E1A8, &qword_1EC190FC8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C597C5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E08);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E10);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C597C6E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E08);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E10);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C597C7F8@<X0>(void *a1@<X8>)
{
  result = sub_1C5BC8DD4();
  *a1 = v3;
  return result;
}

uint64_t sub_1C597C84C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v19 = *(v0 + 32);
  v3 = type metadata accessor for BubbleTip();
  v4 = (*(*(v3 - 1) + 80) + 80) & ~*(*(v3 - 1) + 80);

  v5 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C5BC8694();
    (*(*(v6 - 8) + 8))(v0 + v4, v6);
  }

  else
  {
  }

  v7 = v3[17];
  v8 = *(v2 - 8);
  if (!(*(v8 + 48))(v5 + v7, 1, v2))
  {
    (*(v8 + 8))(v5 + v7, v2);
  }

  (*(*(v1 - 8) + 8))(v5 + v3[19], v1);
  v9 = v3[20];
  v10 = *(v19 - 8);
  if (!(*(v10 + 48))(v5 + v9, 1, v19))
  {
    (*(v10 + 8))(v5 + v9, v19);
  }

  if (*(v5 + v3[22]))
  {
  }

  v11 = v3[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C5BCA9E4();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
  }

  v14 = v3[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1C5BC9114();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  v16 = v3[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1C5BC8B54();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C597CC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5BC7A24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1C597CD38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C5BC7A24();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C597CDF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193050);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1C597CF80(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193050);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1C597D10C()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C597D144()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C597D184()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C597D1D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C597D20C()
{
  sub_1C5BC8AB4();
  sub_1C59F96DC();
  return swift_getWitnessTable();
}

uint64_t sub_1C597D2B8()
{

  return swift_deallocObject();
}

uint64_t sub_1C597D350()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193328);
  sub_1C59FB280(&qword_1EDA466F8);
  sub_1C5BC87C4();
  sub_1C59FB280(&qword_1EDA466F0);
  return swift_getWitnessTable();
}

uint64_t sub_1C597D424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1933E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1933F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1C597D548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1933E8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1933F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C597D6A8@<X0>(_BYTE *a1@<X8>)
{
  sub_1C59C1144();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C597D810()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_1C597D850@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentOffset];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C597D898()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C597D8D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C597D920(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1933F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1C597D9DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1933F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C597DA8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193420);
  sub_1C5924F54(&qword_1EC193440, &qword_1EC193420);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C597DB40()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C597DB80()
{
  v1 = sub_1C5BC7A24();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

__n128 sub_1C597DCD8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C597DCE4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C597DD1C()
{

  return swift_deallocObject();
}

id sub_1C597DD60@<X0>(void *a1@<X8>)
{
  v2 = sub_1C5A079D4();
  *a1 = v2;

  return v2;
}

void sub_1C597DD9C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C5A074DC(v1);
}

uint64_t sub_1C597DDD8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C597DE7C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C597DEB8()
{
  _s16LeadingAccessoryVMa();
  swift_getWitnessTable();
  _s18PlayerControlsViewV15AccessoryButtonVMa();
  _s18PlayerControlsViewV14FlexibleSpacerVMa();
  _s21TransportControlsViewVMa();
  sub_1C5BC8AB4();
  _s17TrailingAccessoryVMa();
  swift_getWitnessTable();
  _s18PlayerControlsViewV15AccessoryButtonVMa();
  swift_getTupleTypeMetadata();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C80);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC193698);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46088, &qword_1EC192C80);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46030, qword_1EC193698);
  return swift_getWitnessTable();
}

uint64_t sub_1C597E164()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t sub_1C597E25C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199E00);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C59E7CE0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5A0BA0C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5950DB4(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C597E490()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

id sub_1C597E4C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeControlStatus];
  *a2 = result;
  return result;
}

uint64_t sub_1C597E4FC()
{

  return swift_deallocObject();
}

uint64_t sub_1C597E538()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C597E584()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C597E5C0()
{
  v1 = sub_1C5BC7B04();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1C597E69C()
{
  v1 = sub_1C5BC7B04();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1C597E778()
{

  return swift_deallocObject();
}

uint64_t sub_1C597E7F8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C597E838()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C597E870()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C597E8A8()
{

  return swift_deallocObject();
}

uint64_t sub_1C597E8F0()
{

  return swift_deallocObject();
}

uint64_t sub_1C597E92C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1C597E9F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C597EABC()
{
  v1 = (_s17VolumeControlViewVMa() - 8);
  v2 = v0 + ((*(*v1 + 80) + 32) & ~*(*v1 + 80));

  swift_unknownObjectRelease();
  v3 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5BC90F4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C597EBEC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C597ECA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C597ED58()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193BD8);
  sub_1C5A19FB0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C597EE6C()
{
  v1 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = (type metadata accessor for ContentLookupItem() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  (*(*(v5 - 8) + 8))(v0 + v3 + v2[15]);
  return swift_deallocObject();
}

uint64_t sub_1C597EF9C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = (type metadata accessor for ContentLookupItem() - 8);
  v5 = *(*v4 + 64);
  v6 = (*(*v4 + 80) + 64) & ~*(*v4 + 80);
  v7 = (type metadata accessor for ContentLookupItem() - 8);
  v8 = (v6 + v5 + *(*v7 + 80)) & ~*(*v7 + 80);
  v9 = &v0[v6];
  v10 = *(*(v1 - 8) + 8);
  v10(v9, v1);
  (*(*(v2 - 8) + 8))(&v9[v4[15]], v2);
  v10(&v0[v8], v1);
  (*(*(v3 - 8) + 8))(&v0[v8 + v7[15]], v3);
  return swift_deallocObject();
}

uint64_t sub_1C597F198()
{
  v1 = *(v0 + 2);
  v17 = *(v0 + 4);
  v18 = *(v0 + 3);
  v16 = *(v0 + 5);
  v2 = (type metadata accessor for ContentLookupItem() - 8);
  v3 = *(*v2 + 64);
  v4 = (*(*v2 + 80) + 80) & ~*(*v2 + 80);
  v5 = (type metadata accessor for ContentLookupItem() - 8);
  v6 = *(*v5 + 80);
  v7 = v3 + v6;
  v8 = *(*v5 + 64);
  v9 = (v4 + v7) & ~v6;
  v10 = (type metadata accessor for ContentLookupItem() - 8);
  v15 = (v9 + v8 + *(*v10 + 80)) & ~*(*v10 + 80);
  v11 = &v0[v4];
  v12 = *(*(v1 - 8) + 8);
  v12(v11, v1);
  (*(*(v18 - 8) + 8))(&v11[v2[15]]);
  v13 = &v0[v9];
  v12(v13, v1);
  (*(*(v17 - 8) + 8))(&v13[v5[15]]);
  v12(&v0[v15], v1);
  (*(*(v16 - 8) + 8))(&v0[v15 + v10[15]]);
  return swift_deallocObject();
}

uint64_t sub_1C597F46C()
{
  v1 = *(v0 + 2);
  v22 = *(v0 + 4);
  v23 = *(v0 + 3);
  v24 = *(v0 + 6);
  v21 = *(v0 + 5);
  v2 = (type metadata accessor for ContentLookupItem() - 8);
  v3 = *(*v2 + 64);
  v20 = *(*v2 + 80);
  v4 = (type metadata accessor for ContentLookupItem() - 8);
  v5 = *(*v4 + 80);
  v6 = v3 + v5;
  v7 = *(*v4 + 64);
  v18 = (((v20 + 96) & ~v20) + v6) & ~v5;
  v8 = (type metadata accessor for ContentLookupItem() - 8);
  v9 = *(*v8 + 80);
  v10 = v7 + v9;
  v11 = *(*v8 + 64);
  v12 = (v18 + v10) & ~v9;
  v17 = v12;
  v13 = (type metadata accessor for ContentLookupItem() - 8);
  v19 = (v12 + v11 + *(*v13 + 80)) & ~*(*v13 + 80);
  v14 = &v0[(v20 + 96) & ~v20];
  v15 = *(*(v1 - 8) + 8);
  v15(v14, v1);
  (*(*(v23 - 8) + 8))(&v14[v2[15]]);
  v15(&v0[v18], v1);
  (*(*(v22 - 8) + 8))(&v0[v18 + v4[15]]);
  v15(&v0[v17], v1);
  (*(*(v21 - 8) + 8))(&v0[v17 + v8[15]]);
  v15(&v0[v19], v1);
  (*(*(v24 - 8) + 8))(&v0[v19 + v13[15]]);
  return swift_deallocObject();
}

uint64_t sub_1C597F88C()
{
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C597F92C()
{
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C597FA08()
{
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_1C597FB0C(CGFloat *a1@<X0>, CGFloat *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v9.origin.x = *a1;
  v9.origin.y = v4;
  v9.size.width = v5;
  v9.size.height = v6;
  MidX = CGRectGetMidX(v9);
  v10.origin.x = v3;
  v10.origin.y = v4;
  v10.size.width = v5;
  v10.size.height = v6;
  MidY = CGRectGetMidY(v10);
  *a2 = MidX;
  a2[1] = MidY;
}

double sub_1C597FBC8@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  UIView.Corner.init(view:insetBy:)(*a1, &v5, 0.0);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

void sub_1C597FC14(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  v3 = v1;
  UIView.corner.setter(&v2);
}

uint64_t sub_1C597FC68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194020);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194028);
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5A28074(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C597FE74@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5A058F8();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C597FF10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940C0);
  sub_1C5BC8AB4();
  sub_1C5A286D0();
  return swift_getWitnessTable();
}

__n128 sub_1C597FFC4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C597FFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  sub_1C59AEE34(v3, v2, v4);
}

id sub_1C598002C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

id sub_1C598004C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredNavigationBarTintColor];
  *a2 = result;
  return result;
}

uint64_t sub_1C598009C()
{
  type metadata accessor for ParallaxEffectViewModifier();
  sub_1C5BC8AB4();
  sub_1C5A2DA7C(&qword_1EDA47B60, type metadata accessor for ParallaxEffectViewModifier);
  return swift_getWitnessTable();
}

uint64_t sub_1C5980138(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1940E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1C59801F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1940E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C59802E4()
{
  v1 = type metadata accessor for ParallaxEffectViewModifier();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5BC8F34();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C5980474()
{
  v1 = type metadata accessor for ParallaxEffectViewModifier();
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5BC8F34();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C5980644()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194140);
  type metadata accessor for ParallaxContext();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194138);
  sub_1C5A2D3E4();
  sub_1C5A2D700();
  swift_getOpaqueTypeConformance2();
  sub_1C5A2DA7C(&qword_1EC194160, type metadata accessor for ParallaxContext);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C598076C()
{

  return swift_deallocObject();
}

uint64_t sub_1C59807D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

void *sub_1C598089C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C5980954(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C5BCA5D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C5980A00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C5BCA5D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C5980AA4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  sub_1C5BC8B34();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_1C5A315E4(&qword_1EC192338, MEMORY[0x1E697C248]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C78);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194298);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1942A0);
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA4E198, &qword_1EC192C78);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1942A8, &qword_1EC194298);
  swift_getWitnessTable();
  sub_1C5A31894();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1942B8, &qword_1EC1942A0);
  swift_getWitnessTable();
  sub_1C5A315E4(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5980F38()
{

  return swift_deallocObject();
}

uint64_t sub_1C5980F70@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5A31D14();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5981010@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5A05834();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C59810AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943A0);
  sub_1C5BC8AB4();
  sub_1C5A324D0();
  return swift_getWitnessTable();
}

uint64_t sub_1C5981124@<X0>(_BYTE *a1@<X8>)
{
  sub_1C593F648();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5981234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5BCA5D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 56));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1C59812F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C5BCA5D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 48);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 56)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C59813C0()
{
  sub_1C5A365E8();
  _s23MiniPlayerAccessoryViewVMa();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  return swift_getWitnessTable();
}

uint64_t sub_1C59814B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 58);
  return result;
}

uint64_t sub_1C598150C()
{

  return swift_deallocObject();
}

uint64_t sub_1C598156C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194480);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1944C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194488);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194490);
  sub_1C5924F54(&qword_1EC194498, &qword_1EC194488);
  sub_1C5A3A674();
  swift_getOpaqueTypeConformance2();
  sub_1C5A3A7C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5981684@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5BC8EC4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C59816E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C5981764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C5981800()
{

  return swift_deallocObject();
}

uint64_t sub_1C5981868(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

void *sub_1C5981930(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C59819E4()
{
  _s28TrackSectionsPlatterModifierVMa();
  swift_getWitnessTable();
  sub_1C5BC9394();
  sub_1C5BC8AB4();
  _s28ExpandedTrackSectionsContentVMa();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for BackgroundPlatter();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194670);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194678);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC194680, &qword_1EC194678);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  sub_1C5A46DF0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5981D3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5981DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5981E14()
{
  v1 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = (type metadata accessor for BackgroundPlatter() - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  (*(*(v5 - 8) + 8))(v3 + v2[15]);

  return swift_deallocObject();
}

uint64_t sub_1C5981F50()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0);
  _s24HeaderArtworkPlaceholderVMa();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  _s32HeaderMetadataAndContextMenuViewVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194858);
  _s19TrackSectionsButtonVMa();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  _s28TrackSectionsPlatterModifierVMa();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5A47B98();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C59822A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194888);
  _s19TrackSectionsPickerVMa();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  _s22TrackSectionsContainerVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  return swift_getWitnessTable();
}

uint64_t sub_1C598247C()
{
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194908);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC194960, &qword_1EC194908);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910);
  return swift_getWitnessTable();
}

uint64_t sub_1C5982670()
{
  _s22TrackSectionsContainerV17ScrollableContentVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BC85B4();
  return swift_getWitnessTable();
}

uint64_t sub_1C5982730()
{
  v3 = *(v0 + 24);
  v1 = *(_s22TrackSectionsContainerV17ScrollableContentVMa() - 8);
  (*(*(v3 - 8) + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C598283C()
{
  v1 = sub_1C5BC8AF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v8 = *(v0 + 24);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(_s22TrackSectionsContainerV17ScrollableContentVMa() - 8);
  v6 = (v4 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v4, v1);
  (*(*(v8 - 8) + 8))(v0 + v6);

  return swift_deallocObject();
}

uint64_t sub_1C59829CC()
{
  _s22TrackSectionsContainerV17ScrollableContentV12FadeBackdropVMa();
  sub_1C5BC81E4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BA4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194AC8);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7F4();
  return swift_getWitnessTable();
}

uint64_t sub_1C5982BBC()
{
  _s18ArtworkPlaceholderVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  sub_1C5BCB804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5982D38()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5982DA0()
{

  return swift_deallocObject();
}

uint64_t sub_1C5982DF8()
{
  _s19TrackSectionsButtonV9TitleViewVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194F68);
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78);
  swift_getWitnessTable();
  sub_1C5BCA6F4();
  sub_1C5BC8B34();
  swift_getWitnessTable();
  sub_1C5937938(&qword_1EC192338, MEMORY[0x1E697C248]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C5937938(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5983130()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195040);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195048);
  sub_1C5BC8AB4();
  sub_1C5924F54(&qword_1EC195050, &qword_1EC195040);
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC195058, &qword_1EC195048);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1C5BCA724();
  return swift_getWitnessTable();
}

uint64_t sub_1C5983394()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C59833E4()
{

  return swift_deallocObject();
}

uint64_t sub_1C598341C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C598347C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195118);
  _s19TrackSectionsPickerV8RowLabelVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78);
  swift_getWitnessTable();
  sub_1C5BCA6F4();
  sub_1C5BC8AB4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195048);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC195058, &qword_1EC195048);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  sub_1C5937938(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  sub_1C5A498DC();
  sub_1C5BCA724();
  sub_1C5A59D08();
  sub_1C5BCA8C4();
  sub_1C5BC8B34();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5937938(&qword_1EC192338, MEMORY[0x1E697C248]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838);
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5983978()
{

  return swift_deallocObject();
}

uint64_t sub_1C59839C8()
{

  return swift_deallocObject();
}

__n128 sub_1C5983A34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C5983A48()
{

  return swift_deallocObject();
}

uint64_t sub_1C5983AC4()
{
  v1 = sub_1C5BC7A24();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1C5983BC0()
{
  _s27DefaultArtworkContainerViewV6LayoutVMa();
  swift_getWitnessTable();
  sub_1C5BC8454();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199E00);
  _s18ArtworkPlaceholderVMa();
  sub_1C5BCB804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5BC87C4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5A0BA0C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5983E34()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C5983E6C()
{

  return swift_deallocObject();
}

uint64_t sub_1C5983EA8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for MotionAsset();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1C5983F4C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = type metadata accessor for MotionAsset();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1C5984040(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C5A67B80(v1);
}

uint64_t sub_1C5984088()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C59840C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C59840F8()
{
  v1 = *(type metadata accessor for MotionAsset() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v3 = sub_1C5BC7A24();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

id sub_1C5984248@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

id sub_1C598427C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeControlStatus];
  *a2 = result;
  return result;
}

uint64_t sub_1C59842B0()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C59842EC()
{

  return swift_deallocObject();
}

uint64_t sub_1C5984334()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C598438C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C59843EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5984434()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5984474()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C59844D4()
{
  v1 = sub_1C5BC7A24();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1C59845A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1955C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5984620(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1955E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5984690(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C5BCA5D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C598473C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C5BCA5D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C59847E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
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
}

uint64_t sub_1C59848A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195630);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1C5984970()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955C0);
  _s21CenterTransportButtonVMa();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  type metadata accessor for NowPlayingTransportButtonStyle(255);
  swift_getWitnessTable();
  sub_1C5950DFC(qword_1EDA47650, 255, type metadata accessor for NowPlayingTransportButtonStyle);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955C8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955D0);
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EDA46098, &qword_1EC1955C8);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA460E8, &qword_1EC1955D0);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5984C54()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5984C9C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195690);
  sub_1C5BC92E4();
  sub_1C5A6D0F4();
  sub_1C5950DFC(&qword_1EDA462E0, 255, MEMORY[0x1E697C658]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5984D58()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1956F8);
  sub_1C5924F54(&qword_1EC195708, &qword_1EC1956F8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5984E0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5984E4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195730);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1C5984F24()
{
  type metadata accessor for PPTRunnerModifier();
  swift_getWitnessTable();
  sub_1C5BC9394();
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
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5985210@<X0>(void *a1@<X8>)
{
  result = sub_1C5BC8D04();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5985240()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199F60);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195750);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195758);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5924F54(&qword_1EC195760, &unk_1EC199F60);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC195768, &qword_1EC195750);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC195770, &qword_1EC195758);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BB4();
  swift_getWitnessTable();
  sub_1C5BC8874();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195778);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC195780, &qword_1EC195778);
  swift_getWitnessTable();
  sub_1C5943498();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for WithNamespace();
  return swift_getWitnessTable();
}

uint64_t sub_1C598574C()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C59857BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1957F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C598582C()
{

  return swift_deallocObject();
}

uint64_t sub_1C5985864()
{

  return swift_deallocObject();
}

uint64_t sub_1C59858B4@<X0>(_BYTE *a1@<X8>)
{
  result = PresentedViewState.isPresented.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C5985964()
{
  sub_1C5BC8AB4();
  type metadata accessor for PresentedViewState();
  sub_1C5BCB804();
  sub_1C5BC97B4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5985A4C@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5A0594C();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5985AE8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1958D8);
  sub_1C5BC8AB4();
  sub_1C5A7D150();
  return swift_getWitnessTable();
}

uint64_t sub_1C5985B6C@<X0>(void *a1@<X8>)
{
  result = sub_1C5BC86C4();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5985C88@<X0>(void *a1@<X8>)
{
  result = sub_1C5BC8D14();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5985D44@<X0>(void *a1@<X8>)
{
  sub_1C5AA3BE8();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5985E20()
{
  sub_1C5BC9654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195918);
  type metadata accessor for Scrubber.CompanionViews();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195920);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC195928, &qword_1EC195920);
  swift_getWitnessTable();
  sub_1C5A25B6C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195938);
  sub_1C5BC8AB4();
  sub_1C5BC8BC4();
  sub_1C5BC8AB4();
  sub_1C5BC7AC4();
  sub_1C5A9E260();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5A9E5B4();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1959A8, &qword_1EC195938);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5A9B150(&qword_1EDA4E020, MEMORY[0x1E6969530]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5A9B150(&unk_1EDA461C8, MEMORY[0x1E697C998]);
  sub_1C5BC8544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1959B0);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1959B8);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1959C0);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955C8);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC195A00, &qword_1EC1959B8);
  swift_getWitnessTable();
  sub_1C5A9E7B0();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC194198, &unk_1EC1959C0);
  swift_getWitnessTable();
  sub_1C5A9E804();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46098, &qword_1EC1955C8);
  return swift_getWitnessTable();
}

uint64_t sub_1C5986440()
{
  type metadata accessor for ScrubberProxy(255);
  sub_1C5A9B150(&qword_1EC1958F8, type metadata accessor for ScrubberProxy);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5986510(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195630);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C598664C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195630);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C5986788(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C5986844(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C5986AB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5986D58()
{
  v1 = type metadata accessor for ScrubberTooltipModifier(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5BC8284();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C5BC90F4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C5986F58()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C5986F90()
{

  return swift_deallocObject();
}

uint64_t sub_1C5987034()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C5987070(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  return sub_1C5A839F8(&v2);
}

uint64_t sub_1C59870F0()
{

  return swift_deallocObject();
}

uint64_t sub_1C5987128()
{

  return swift_deallocObject();
}

uint64_t sub_1C59871D4()
{

  return swift_deallocObject();
}

uint64_t sub_1C598720C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Scrubber();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 32) & ~v3;
  v12 = *(*(v2 - 1) + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + v4;

  j__swift_release();
  v9 = v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1C5BC90F4();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  sub_1C5942458(*(v8 + v2[11]), *(v8 + v2[11] + 8));
  sub_1C5942458(*(v8 + v2[12]), *(v8 + v2[12] + 8));

  (*(*(v1 - 8) + 8))(v8 + v2[17], v1);
  (*(v6 + 8))(v0 + ((v4 + v12 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_1C5987460(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C5BCAB54();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1C598750C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C5BCAB54();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C59875B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1962E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C5987664(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1962E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C5987718()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195EF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195EF8);
  sub_1C5BCA714();
  type metadata accessor for Scrubber.SensitivityLabel();
  sub_1C5BC92D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195F00);
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  sub_1C5924F54(&qword_1EC195F08, &qword_1EC195EF0);
  sub_1C5BC87C4();
  sub_1C5924F54(&qword_1EC195F10, &qword_1EC195EF0);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5987900()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196008);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196000);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195D18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195FF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196030);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195FF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195FE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196010);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191B78);
  sub_1C5924F54(&qword_1EC196018, &qword_1EC196010);
  sub_1C59BD6B8();
  swift_getOpaqueTypeConformance2();
  sub_1C5AA2F24();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1C5AA2F88();
  swift_getOpaqueTypeConformance2();
  sub_1C5AA3038();
  swift_getOpaqueTypeConformance2();
  sub_1C59AEC40();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5987B54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5BC8E24();
  *a1 = result;
  return result;
}

uint64_t sub_1C5987BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5BC8744();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C5987CA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C5BC8744();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

__n128 sub_1C5987E4C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1C5987E58@<D0>(_OWORD *a1@<X8>)
{
  sub_1C5A057E0();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C5987EAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196618);
  sub_1C5BC8AB4();
  sub_1C5AA79A4();
  return swift_getWitnessTable();
}

uint64_t sub_1C5987FD0()
{
  sub_1C5BC8AB4();
  sub_1C5AA7CB0();
  return swift_getWitnessTable();
}

uint64_t sub_1C5988034()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC190A08);
  sub_1C5BC8AB4();
  sub_1C5924F54(&unk_1EC190A10, &qword_1EC190A08);
  return swift_getWitnessTable();
}

uint64_t sub_1C59880E0()
{

  return swift_deallocObject();
}

uint64_t sub_1C598813C()
{

  return swift_deallocObject();
}

uint64_t sub_1C5988174()
{
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966D0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966D8);
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCA934();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1966E0, &qword_1EC1966D0);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1966E8, &qword_1EC1966D8);
  swift_getWitnessTable();
  sub_1C5AAF53C(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  sub_1C5AA9E1C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966F8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196700);
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EC196708, &qword_1EC1966F8);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC196710, &qword_1EC196700);
  return swift_getWitnessTable();
}

uint64_t sub_1C5988600()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C5988678()
{
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A28);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A30);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196718);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196720);
  sub_1C5BC8AB4();
  sub_1C5BC92E4();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(qword_1EC196728, &qword_1EC196720);
  swift_getWitnessTable();
  sub_1C5AAF53C(&qword_1EDA462E0, MEMORY[0x1E697C658]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1C5BCA6F4();
  return swift_getWitnessTable();
}

uint64_t sub_1C5988964()
{
  sub_1C5942458(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1C59889A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196850);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5988A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5988A80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5988B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BC8F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

__n128 sub_1C5988BA4@<Q0>(_OWORD *a1@<X8>)
{
  sub_1C593F9B0();
  sub_1C5BC8F44();
  a1[2] = v5;
  a1[3] = *v6;
  *(a1 + 57) = *&v6[9];
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C5988C6C()
{
  sub_1C5BC9AA4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BD0);
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EDA460C8, &qword_1EC192BD0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1968F0);
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EC1968F8, &qword_1EC1968F0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC88F4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5931838(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C593A9AC();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194470);
  swift_getOpaqueTypeConformance2();
  sub_1C5AB32B4();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196900);
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(qword_1EC196908, &qword_1EC196900);
  swift_getWitnessTable();
  sub_1C5BC8BA4();
  return swift_getWitnessTable();
}

uint64_t sub_1C59892DC@<X0>(void *a1@<X8>)
{
  result = sub_1C5BC8E44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5989340()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for NowPlayingQueue() - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = sub_1C5BC8AF4();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  v8 = v0 + v3 + v2[11];
  sub_1C596AC80(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72), *(v8 + 73));
  v9 = v0 + v3 + v2[12];
  sub_1C596AC4C(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1C5989514@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1C5989584@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C5989610()
{
  sub_1C5AB9374(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1C5989664()
{

  return swift_deallocObject();
}

uint64_t sub_1C59896A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196B10);
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  sub_1C5ABA85C();
  sub_1C5AB9BD8();
  sub_1C5BCA8C4();
  sub_1C59E7CE0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C59897CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C5989804()
{
  v1 = sub_1C5BC81D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1C59899BC()
{
  sub_1C5942458(*(v0 + 16), *(v0 + 24));
  sub_1C5942458(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

id sub_1C5989A04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_blurLayer);
  *a2 = v2;
  return v2;
}

void sub_1C5989A1C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_blurLayer);
  *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_blurLayer) = *a1;
  v3 = v2;
}

id sub_1C5989A6C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_liveColorAdjustmentsLayer);
  *a2 = v2;
  return v2;
}

void sub_1C5989A84(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_liveColorAdjustmentsLayer);
  *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_liveColorAdjustmentsLayer) = *a1;
  v3 = v2;
}

id sub_1C5989AD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_snapshotColorAdjustmentsLayer);
  *a2 = v2;
  return v2;
}

void sub_1C5989AEC(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_snapshotColorAdjustmentsLayer);
  *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI33NowPlayingArtworkBackgroundEffectP33_0BADDE1E8FA0478530CC88B691A6D29111EffectLayer_snapshotColorAdjustmentsLayer) = *a1;
  v3 = v2;
}

uint64_t sub_1C5989B4C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196CA8);
  _s26SegmentPresentationMonitorVMa();
  swift_getWitnessTable();
  sub_1C5BC9394();
  swift_getWitnessTable();
  sub_1C593A9AC();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196D40);
  swift_getOpaqueTypeConformance2();
  sub_1C5AC0EF0();
  swift_getOpaqueTypeMetadata2();
  sub_1C5924F54(&qword_1EC196D50, &qword_1EC196CA8);
  swift_getOpaqueTypeConformance2();
  sub_1C5BC8BB4();
  return swift_getWitnessTable();
}

uint64_t sub_1C5989D74(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C5989E30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C5989EE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D68);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C5989F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D68);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C5989FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 80);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DE8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1C598A09C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 80) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DE8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C598A14C()
{
  v1 = type metadata accessor for ArtworkCornerModifier(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_1C5942458(*v2, *(v2 + 8));
  if (*(v2 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 16);
  }

  else
  {
  }

  sub_1C5942458(*(v2 + 64), *(v2 + 72));

  v3 = v2 + *(v1 + 36);
  v4 = *(type metadata accessor for ArtworkCornerStyle(0) + 20);
  v5 = sub_1C5BC9044();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DE8);

  return swift_deallocObject();
}

uint64_t sub_1C598A2A8()
{
  v1 = type metadata accessor for ArtworkCornerModifier(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 17) & ~*(*(v1 - 8) + 80));
  sub_1C5942458(*v2, *(v2 + 8));
  if (*(v2 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 16);
  }

  else
  {
  }

  sub_1C5942458(*(v2 + 64), *(v2 + 72));

  v3 = v2 + *(v1 + 36);
  v4 = *(type metadata accessor for ArtworkCornerStyle(0) + 20);
  v5 = sub_1C5BC9044();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DE8);

  return swift_deallocObject();
}

uint64_t sub_1C598A414()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C598A450()
{

  return swift_deallocObject();
}

uint64_t sub_1C598A488()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C598A560()
{
  _s18PlayerControlsViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  _s17VolumeControlViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();

  return swift_getWitnessTable();
}

uint64_t sub_1C598A680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C598A6F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C598A780()
{
  sub_1C596AC80(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 89));

  return swift_deallocObject();
}

uint64_t sub_1C598A854()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

__n128 sub_1C598A8A0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  *(a2 + 32) = *(v3 + 80);
  *(a2 + 48) = v4;
  *(a2 + 57) = *(v3 + 105);
  result = *(v3 + 64);
  *a2 = *(v3 + 48);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1C598A948()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197248);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197250);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C598AA64()
{

  return swift_deallocObject();
}

uint64_t sub_1C598AAA4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C598AB24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1972D0);
  sub_1C5BC8AB4();
  sub_1C5AD4F10();
  return swift_getWitnessTable();
}

uint64_t sub_1C598AB9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_observer;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C598ABF8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_observer;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C598AC5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_state;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C598AD54@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  result = swift_beginAccess();
  *a2 = *(*(v3 + v4) + 64) == 1.0;
  return result;
}

double sub_1C598ADBC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  swift_beginAccess();
  v5 = 0.2;
  if (v2)
  {
    v5 = 1.0;
  }

  *(*(v3 + v4) + 64) = v5;
  *&result = sub_1C5AD6E34().n128_u64[0];
  return result;
}

float sub_1C598AE60@<S0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_crossfadeDuration);
  swift_beginAccess();
  result = *v3;
  *a2 = *v3;
  return result;
}

uint64_t sub_1C598AEB4(int *a1, void *a2)
{
  v2 = *a1;
  v3 = (*a2 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_crossfadeDuration);
  result = swift_beginAccess();
  *v3 = v2;
  return result;
}

id sub_1C598AF0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_imageStorage);
  *a2 = v2;
  return v2;
}

id sub_1C598AF70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  swift_beginAccess();
  v5 = *(*(v3 + v4) + 16);
  *a2 = v5;

  return v5;
}

uint64_t sub_1C598AFE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO11MediaCoreUI8Backdrop17CompositeRenderer_spectrumAnalysis;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C598B060()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195730);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1C598B0F4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C598B144()
{

  return swift_deallocObject();
}

uint64_t sub_1C598B184()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C598B1D4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197458);
  sub_1C5BC8AB4();
  sub_1C5ADF12C();
  return swift_getWitnessTable();
}

double sub_1C598B254@<D0>(_OWORD *a1@<X8>)
{
  sub_1C592BEC4();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C598B2A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197470);
  sub_1C5BC8AB4();
  sub_1C59289C4();
  return swift_getWitnessTable();
}

uint64_t sub_1C598B328@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5AE37D0();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C598B3C4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ContentBelowSliderStyle();
  v3 = v2 - 8;
  v4 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  (*(*(v1 - 8) + 8))(v4 + *(v2 + 36), v1);

  sub_1C5942458(*(v4 + *(v3 + 52)), *(v4 + *(v3 + 52) + 8));

  return swift_deallocObject();
}

double sub_1C598B51C@<D0>(double *a1@<X8>)
{
  sub_1C5AE84B8();
  sub_1C5BC8F44();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C598B5D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C5BC7B04();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C598B680(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C5BC7B04();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C598B724(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C598B860(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C598B99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1975B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 16);
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

uint64_t sub_1C598BAD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1975B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 16) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C598BBF4()
{
  type metadata accessor for CapsuleProgress(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197500);
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838);
  sub_1C5924F54(&qword_1EC197508, &qword_1EC197500);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  type metadata accessor for DraggableViewModifier(255);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197510);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5AE8518(qword_1EDA48CF8, type metadata accessor for DraggableViewModifier);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC197518, &qword_1EC197510);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0);
  return swift_getWitnessTable();
}

uint64_t sub_1C598BF38()
{
  v1 = type metadata accessor for DraggableViewModifier(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 48))
  {
  }

  v3 = v2 + v1[9];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197530);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = *(v4 + 48);
    v6 = sub_1C5BC7AC4();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197598);

  v7 = v2 + v1[10];
  sub_1C5AE8EE4(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
  v8 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C5BC89D4();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  sub_1C5942458(*(v2 + v1[12]), *(v2 + v1[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_1C598C164()
{

  return swift_deallocObject();
}

uint64_t sub_1C598C19C()
{
  v1 = type metadata accessor for CapsuleProgress(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC192F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v3 = *(type metadata accessor for CapsuleProgressStyle(0) + 52);
    v4 = sub_1C5BC7B04();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1C5942458(*(v2 + v1[5]), *(v2 + v1[5] + 8));
  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C5BC90F4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  sub_1C5942458(*(v2 + v1[7]), *(v2 + v1[7] + 8));

  return swift_deallocObject();
}

uint64_t sub_1C598C384()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1975F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1975E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195790);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1975E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1975D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191D38);
  sub_1C5AE8F1C();
  sub_1C5924F54(&qword_1EDA466B0, &qword_1EC191D38);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1C5AE9478();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

double sub_1C598C560@<D0>(uint64_t a1@<X8>)
{
  sub_1C5AEB008(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

id sub_1C598C5A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = v1;
  return sub_1C5AEB07C(v4);
}

__n128 sub_1C598C5F0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C598C5FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5AEB1B0(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C598C67C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C5AF6554();
}

uint64_t sub_1C598C74C()
{

  return swift_deallocObject();
}

uint64_t sub_1C598C784()
{

  return swift_deallocObject();
}

uint64_t sub_1C598C7BC()
{

  return swift_deallocObject();
}

uint64_t sub_1C598C804()
{

  return swift_deallocObject();
}

uint64_t sub_1C598C844()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C598C87C()
{

  return swift_deallocObject();
}

uint64_t sub_1C598C8F4()
{
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196700);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC196710, &qword_1EC196700);
  swift_getWitnessTable();
  sub_1C5AF87B0();
  swift_getWitnessTable();
  sub_1C5BCA724();
  swift_getTupleTypeMetadata2();
  sub_1C5BCB144();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5BCA8C4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  sub_1C5BCA934();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197780);
  sub_1C5BC8AB4();
  sub_1C5BC92E4();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EC197788, &qword_1EC197780);
  swift_getWitnessTable();
  sub_1C5AFA134(&qword_1EDA462E0, MEMORY[0x1E697C658]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC92D4();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1C598CD74()
{
  v4 = *(v0 + 24);
  v1 = (type metadata accessor for NowPlayingQueueChapterList() - 8);
  v2 = v0 + ((*(*v1 + 80) + 64) & ~*(*v1 + 80));
  sub_1C5942458(*v2, *(v2 + 8));

  (*(*(v4 - 8) + 8))(v2 + v1[21]);

  return swift_deallocObject();
}

uint64_t sub_1C598CE98()
{

  return swift_deallocObject();
}

uint64_t sub_1C598CEF0()
{
  sub_1C5BC8AB4();
  sub_1C5A282C4();
  return swift_getWitnessTable();
}

uint64_t sub_1C598CF60()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C598CF98(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195630);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C10);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C598D0D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195630);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C598D214()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197910);
  sub_1C5AFCA80();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C598D294()
{
  sub_1C5BC8AB4();
  type metadata accessor for ToastViewLabelStyle(255);
  swift_getWitnessTable();
  sub_1C5AFED04(&qword_1EC197938, type metadata accessor for ToastViewLabelStyle);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192EE8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC190FC8);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194958);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197930);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC192EE0, &qword_1EC192EE8);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA4E1A8, &qword_1EC190FC8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46208, &qword_1EC194958);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC197940, &qword_1EC197930);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  sub_1C5AFED04(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  return swift_getWitnessTable();
}

uint64_t sub_1C598D6E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197950);
  sub_1C5AFF834();
  sub_1C5BCA614();
  return swift_getWitnessTable();
}

uint64_t sub_1C598D75C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1C598D818(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C598D8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToastViewLabelStyle.Specs(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C598D934(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToastViewLabelStyle.Specs(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C598D9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToastViewLabelStyle.Specs(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1C598DA64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ToastViewLabelStyle.Specs(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 40);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C598DB28@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C5BC8EE4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C598DBA0()
{
  type metadata accessor for MaterialChinModifier();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C598DC44()
{
  v1 = *(v0 + 16);
  v7 = *(v0 + 24);
  v2 = (type metadata accessor for MaterialChinModifier() - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[16], v1);
  (*(*(v7 - 8) + 8))(v3 + v2[17]);
  v4 = v3 + v2[18];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740);
  (*(*(v5 - 8) + 8))(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195748);

  return swift_deallocObject();
}

void sub_1C598DDF0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C5A03B48(v1);
}

uint64_t sub_1C598DE48()
{

  return swift_deallocObject();
}

uint64_t sub_1C598DE80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197C60);
  type metadata accessor for MaterialChinModifier();
  swift_getWitnessTable();
  sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197C68);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  sub_1C5924F54(&qword_1EC197C70, &qword_1EC197C60);
  sub_1C5BC87C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC194CE0);
  sub_1C5924F54(&qword_1EC197C78, &qword_1EC197C60);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910);
  swift_getWitnessTable();
  sub_1C5B052E0();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for MaterialMotionContentObserver(255);
  swift_getOpaqueTypeConformance2();
  sub_1C5B056F4(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  return swift_getOpaqueTypeConformance2();
}

double sub_1C598E208@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v10 = a1[2];
  v11[0] = v3;
  *(v11 + 9) = *(a1 + 57);
  v4 = a1[1];
  v8 = *a1;
  v9 = v4;
  DeviceMetrics.padding.getter(&v6);
  result = v7;
  *a2 = v6;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1C598E274()
{
  _s11ContentViewVMa();
  _s13FooterButtonsVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C598E3C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197D70);
  _s18DefaultContentViewVMa();
  _s19TrackSectionsButtonVMa();
  _s28TrackSectionsPlatterModifierVMa();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getAssociatedTypeWitness();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  sub_1C5924F54(&qword_1EC197D78, &qword_1EC197D70);
  sub_1C5BC87C4();
  sub_1C5924F54(&qword_1EC197D88, &qword_1EC197D70);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C598E680()
{
  _s21FullScreenArtworkViewVMa();
  _s33DefaultMetadataAndContextMenuViewVMa();
  _s10BannerViewVMa();
  _s15TimeControlViewVMa();
  sub_1C5BC8AB4();
  _s12ControlsViewVMa();
  swift_getTupleTypeMetadata();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C598E84C()
{
  sub_1C5BC8AB4();
  sub_1C5B0B8C8();
  return swift_getWitnessTable();
}

uint64_t sub_1C598E90C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LockScreenArtworkBackground();
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = (v0 + v3);
  v5 = type metadata accessor for MotionAsset();
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v6 = sub_1C5BC7A24();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
    }
  }

  (*(*(v1 - 8) + 8))(v4 + *(v2 + 36), v1);

  return swift_deallocObject();
}

uint64_t sub_1C598EA94()
{
  type metadata accessor for TallAssetArtworkBackground();
  type metadata accessor for SquareAssetArtworkBackground();
  sub_1C5BC92D4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8874();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_1C598EBDC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C5A038DC(v1);
}

id sub_1C598EC0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentItem];
  *a2 = result;
  return result;
}

uint64_t sub_1C598EC48()
{

  return swift_deallocObject();
}

uint64_t sub_1C598EC80()
{

  return swift_deallocObject();
}

uint64_t sub_1C598ECB8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_1C598ED00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 presentationSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C598ED4C@<X0>(_BYTE *a1@<X8>)
{
  sub_1C59C109C();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C598EDF4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1980B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199F60);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5953670();
  swift_getWitnessTable();
  type metadata accessor for MotionView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940C0);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198090);
  sub_1C5BC8AB4();
  type metadata accessor for MaterialMotionContentObserver(255);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1940C8, &qword_1EC1940C0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC198098, &qword_1EC198090);
  swift_getWitnessTable();
  sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195860);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EC195858, &qword_1EC195860);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1980A0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5924F54(&qword_1EC195760, &unk_1EC199F60);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1980A8, &qword_1EC1980A0);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BB4();
  sub_1C5924F54(&qword_1EC1980B8, &qword_1EC1980B0);
  swift_getWitnessTable();
  sub_1C5BC8BB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195790);
  swift_getWitnessTable();
  sub_1C5AE9478();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC198008);
  swift_getOpaqueTypeConformance2();
  sub_1C5B1B970();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C598F5E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1980B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199F60);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
  swift_getWitnessTable();
  sub_1C5BCA724();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5953670();
  swift_getWitnessTable();
  type metadata accessor for MotionView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940C0);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198090);
  sub_1C5BC8AB4();
  type metadata accessor for MaterialMotionContentObserver(255);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1940C8, &qword_1EC1940C0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC198098, &qword_1EC198090);
  swift_getWitnessTable();
  sub_1C5B1C554(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195860);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EC195858, &qword_1EC195860);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198160);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5924F54(&qword_1EC195760, &unk_1EC199F60);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC198168, &qword_1EC198160);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BB4();
  sub_1C5924F54(&qword_1EC1980B8, &qword_1EC1980B0);
  swift_getWitnessTable();
  sub_1C5BC8BB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195790);
  swift_getWitnessTable();
  sub_1C5AE9478();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC198008);
  swift_getOpaqueTypeConformance2();
  sub_1C5B1B970();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C598FDFC()
{

  return swift_deallocObject();
}

uint64_t sub_1C598FE64()
{
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1941D8);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198198);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981A0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981A8);
  sub_1C5BC8AB4();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1959C0);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981B0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981B8);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1981C0, &qword_1EC1981A0);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1981C8, &qword_1EC1981A8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1981D0, &qword_1EC1981B0);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1981D8, &qword_1EC1981B8);
  swift_getWitnessTable();
  sub_1C5BC8874();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943A0);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46118, &qword_1EC1943A0);
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1981E0);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1941D0, &qword_1EC1941D8);
  swift_getWitnessTable();
  sub_1C5953670();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1981E8, &qword_1EC198198);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1981F0, &qword_1EC1981E0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196700);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966F8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196078);
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EC196710, &qword_1EC196700);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC196708, &qword_1EC1966F8);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1963C8, &qword_1EC196078);
  return swift_getWitnessTable();
}

double sub_1C599069C(double *a1, void (*a2)(double *__return_ptr))
{
  a2(&v4);
  result = v4 + *a1;
  *a1 = result;
  return result;
}

double sub_1C59906FC@<D0>(double *a1@<X8>)
{
  sub_1C5B25094();
  sub_1C5BC8F44();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C59907D8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195630);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 56);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 60);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1C5990920(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195630);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C5990A5C()
{
  _s11ContentViewVMa_0();

  return swift_getWitnessTable();
}

uint64_t sub_1C5990AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
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

uint64_t sub_1C5990B80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2;
  }

  return result;
}

uint64_t sub_1C5990C48()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BD0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC196130);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getAssociatedConformanceWitness();
  sub_1C5924F54(&qword_1EDA460C8, &qword_1EC192BD0);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA460A8, &unk_1EC196130);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191B40);
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198358);
  _s20ContentAndHeaderViewVMa();
  _s28ControlsAndFooterButtonsViewVMa();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198340);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  return swift_getWitnessTable();
}

uint64_t sub_1C5991078()
{
  _s18HoveringHeaderViewVMa();
  sub_1C5BCB804();
  _s18DefaultContentViewVMa_0();
  _s29MatchedGeometrySourceModifierVMa();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198450);
  sub_1C5BC8AB4();
  _s10HeaderViewVMa();
  sub_1C5BCB804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  swift_getWitnessTable();
  sub_1C5B09990();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC198498, &qword_1EC198450);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5991398()
{
  _s15TimeControlViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  _s12ControlsViewVMa();
  _s13FooterButtonsVMa();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC9414();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC9414();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C599164C()
{
  _s21FullScreenArtworkViewVMa();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  _s33DefaultMetadataAndContextMenuViewVMa();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  _s10BannerViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5991808()
{
  _s29MatchedGeometrySourceModifierVMa();
  swift_getWitnessTable();
  sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198528);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC198540, &qword_1EC198528);
  return swift_getWitnessTable();
}

uint64_t sub_1C599194C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EDA4B350 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = *(off_1EDA4B358 + 32);
  return result;
}

id sub_1C59919F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 motionMode];
  *a2 = result;
  return result;
}

uint64_t sub_1C5991A28()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C5991A68()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  sub_1C5BCB804();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5991B88()
{

  return swift_deallocObject();
}

uint64_t sub_1C5991BD8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1940E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_1C5991C94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1940E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C5991D44()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BC92D4();
  _s13FooterButtonsV11ButtonsViewVMa();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838);
  swift_getWitnessTable();
  sub_1C5B34DD0();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC92D4();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C5BCA714();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198578);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC198580, &qword_1EC198578);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5992110()
{
  v1 = (_s13FooterButtonsV11ButtonsViewVMa() - 8);
  v2 = v0 + ((*(*v1 + 80) + 32) & ~*(*v1 + 80));

  swift_unknownObjectRelease();
  v3 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5BC8F34();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C5992250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
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
}

uint64_t sub_1C5992318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_1C59923E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196B10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198648);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  type metadata accessor for VibrancyModifier();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  sub_1C5924F54(qword_1EC196B18, &qword_1EC196B10);
  sub_1C5AB9BD8();
  sub_1C5BCA8C4();
  sub_1C5B35248();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_1C5B353C0(&qword_1EC198668, type metadata accessor for VibrancyModifier);
  swift_getWitnessTable();
  sub_1C59E7CE0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5992704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5BC8F04();
  *a1 = result;
  return result;
}

float sub_1C59927A0@<S0>(float *a1@<X8>)
{
  sub_1C5B36684();
  sub_1C5BC8F44();
  result = v3;
  *a1 = v3;
  return result;
}

double sub_1C599283C@<D0>(double *a1@<X8>)
{
  sub_1C5B366D8();
  sub_1C5BC8F44();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C59929D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C5992A94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C5992B44()
{
  type metadata accessor for ToggleButton();

  return swift_getWitnessTable();
}

uint64_t sub_1C5992B8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198790);
  sub_1C5BC9374();
  sub_1C5924F54(&qword_1EC1987A0, &qword_1EC198790);
  sub_1C595EDD0(&qword_1EC1987A8, MEMORY[0x1E697C720]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5992C6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5BC9624();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C5992CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5BC9624();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C5992D60()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ToggleButton() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  sub_1C596AC4C(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32));

  (*(*(v1 - 8) + 8))(v3 + v2[13], v1);

  return swift_deallocObject();
}

uint64_t sub_1C5992E9C()
{
  sub_1C5BCA7B4();
  type metadata accessor for NowPlayingHostedContentToggleButtonStyle(255);
  swift_getWitnessTable();
  sub_1C595EDD0(&qword_1EC198848, type metadata accessor for NowPlayingHostedContentToggleButtonStyle);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198850);
  sub_1C5BC8AB4();
  sub_1C5BC92E4();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EDA462D0, &qword_1EC198850);
  swift_getWitnessTable();
  sub_1C595EDD0(&qword_1EDA462E0, MEMORY[0x1E697C658]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC193698);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C595EDD0(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46030, qword_1EC193698);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C59932A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C59932EC()
{
  sub_1C5950CE4();
  sub_1C5950CE4();

  return swift_deallocObject();
}

uint64_t sub_1C5993334@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = NowPlayingController.isDebugEnabled.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

__n128 sub_1C59933B0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C59933D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C5993448(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

void *sub_1C5993510(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C59935C0()
{
  _s20FluidTimeControlViewVMa();
  _s21LegacyTimeControlViewVMa();
  sub_1C5BC92D4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C599368C()
{
  v1 = (_s21LegacyTimeControlViewVMa() - 8);
  v2 = v0 + ((*(*v1 + 80) + 32) & ~*(*v1 + 80));

  swift_unknownObjectRelease();
  v3 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5BC90F4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C59937C4()
{

  swift_unknownObjectRelease();
  sub_1C5942458(*(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_1C5993820()
{

  swift_unknownObjectRelease();
  sub_1C5942458(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_1C5993874()
{

  return swift_deallocObject();
}

uint64_t sub_1C59938AC()
{
  _s21LegacyTimeControlViewV9TimedViewVMa();
  sub_1C5B45F08();
  swift_getWitnessTable();
  sub_1C5BCA794();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  type metadata accessor for ContentBelowSliderStyle();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8BC4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B28);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955C8);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C80);
  sub_1C5BC8AB4();
  _s33HeadlessTimeControlSliderModifierVMa();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA460B8, &qword_1EC193B28);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46098, &qword_1EC1955C8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46088, &qword_1EC192C80);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  _s19HeadlessTimeControlVMa();
  sub_1C5BC92D4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5993DA8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1988A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1989B8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  type metadata accessor for Scrubber();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191E68);
  swift_getWitnessTable();
  sub_1C59BD734();
  swift_getOpaqueTypeMetadata2();
  sub_1C5924F54(&qword_1EC1989C0, &qword_1EC1989B8);
  swift_getOpaqueTypeConformance2();
  sub_1C5BC8BB4();
  sub_1C5924F54(&qword_1EC1989C8, &qword_1EC1988A8);
  swift_getWitnessTable();
  sub_1C5BC8BB4();
  _s26SegmentPresentationMonitorVMa();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ScrubberReader();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1989D0);
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46418, &qword_1EC1989D0);
  swift_getWitnessTable();
  sub_1C592C1AC(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40);
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40);
  return swift_getWitnessTable();
}

uint64_t sub_1C599438C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195630);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 40);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1C59944D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195630);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C5994610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 40);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
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

uint64_t sub_1C5994734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195630);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 40) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C5994858()
{
  _s18HeaderMetadataViewVMa();
  _s15ContextMenuViewVMa();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC89E4();
  swift_getOpaqueTypeConformance2();
  sub_1C5B4BDD4(qword_1EC194FB8, MEMORY[0x1E697C168]);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  return swift_getWitnessTable();
}

uint64_t sub_1C5994A04()
{
  v1 = _s19HeaderDismissButtonVMa();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));
  swift_unknownObjectRelease();
  sub_1C596AC80(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 89));
  v3 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5BC8284();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C5BC90F4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C5994BD4()
{
  _s36FullScreenContentView_CompactRegularVMa();
  _s37FullScreenContentView_RegularExtendedVMa();
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  sub_1C5BCA584();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5994D18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198BD0);
  sub_1C5BC9374();
  sub_1C5B4BBF4(&qword_1EC198C10, &qword_1EC198BD0, &unk_1C5BECA38, sub_1C5B4BBC4);
  sub_1C5B4BDD4(&qword_1EC1987A8, MEMORY[0x1E697C720]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5994DF8()
{
  _s27DefaultArtworkContainerViewVMa();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5B4BDD4(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  return swift_getWitnessTable();
}

uint64_t sub_1C5994F30()
{
  _s19DefaultMetadataViewVMa();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  _s15ContextMenuViewVMa();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC89E4();
  swift_getOpaqueTypeConformance2();
  sub_1C5B4BDD4(qword_1EC194FB8, MEMORY[0x1E697C168]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5995228()
{
  v13 = *(v0 + 24);
  v1 = _s23MiniPlayerAccessoryViewVMa();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for NowPlayingMiniPlayerSpecs();
  v5 = *(*(v4 - 8) + 80);
  v6 = v0 + v2;

  (*(*(v13 - 8) + 8))(v0 + v2 + v1[13]);
  swift_unknownObjectRelease();
  v7 = v1[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1C5BC8F34();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  sub_1C5950E44(*(v6 + v1[20]), *(v6 + v1[20] + 8));
  v9 = v0 + ((v2 + v3 + v5) & ~v5);
  v10 = *(v4 + 48);
  v11 = sub_1C5BCA5D4();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_1C59954C4()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C59954FC()
{

  return swift_deallocObject();
}

uint64_t sub_1C5995534()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5995584@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5B5F0B8();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5995644@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5B5CDD4();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C59956E0()
{
  type metadata accessor for Marquee();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192978);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC192970, &qword_1EC192978);
  return swift_getWitnessTable();
}

uint64_t sub_1C5995830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C5BC89D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C59958DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C5BC89D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C59959C4()
{

  return swift_deallocObject();
}

double sub_1C59959FC@<D0>(double *a1@<X8>)
{
  sub_1C5B5E8D0();
  sub_1C5BC8F44();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C5995AA8()
{

  return swift_deallocObject();
}

uint64_t sub_1C5995AE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C5995B94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C5995C48()
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for Marquee.ContentWithBadge();
  sub_1C5BC92D4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Marquee.MarqueeAnimationView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CD0);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CE0);
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5995EF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C5995FAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1921A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C599607C@<X0>(_BYTE *a1@<X8>)
{
  sub_1C594CF14();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C599612C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5BC8D74();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C5996184()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198EF0);
  sub_1C5BCB144();
  sub_1C5BCB804();
  swift_getWitnessTable();
  sub_1C5BCA8C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BCA904();
  swift_getWitnessTable();
  sub_1C5BC9A84();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198EF8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198F00);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC198F08, &qword_1EC198EF8);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC198F10, &qword_1EC198F00);
  swift_getWitnessTable();
  sub_1C5B62B8C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1C5924F54(&qword_1EC198F20, &qword_1EC198EF0);
  swift_getOpaqueTypeConformance2();
  sub_1C5BC8BB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198F28);
  swift_getWitnessTable();
  sub_1C5924F54(qword_1EC198F30, &qword_1EC198F28);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1C5BC81E4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40);
  return swift_getWitnessTable();
}

uint64_t sub_1C5996754()
{

  return swift_deallocObject();
}

uint64_t sub_1C59967B4@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5B66A60();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5996850()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199008);
  sub_1C5BC8AB4();
  sub_1C5B669FC();
  return swift_getWitnessTable();
}

uint64_t sub_1C59968D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C5996988(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C5996A94()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

double sub_1C5996AE8@<D0>(_OWORD *a1@<X8>)
{
  sub_1C5B6D5E4();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C5996B98()
{

  sub_1C599ACD8(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

__n128 sub_1C5996C08(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_1C5996C64(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C5996C70()
{
  v1 = (type metadata accessor for MotionAssetDownload.Request(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[7];
  v4 = sub_1C5BC7A24();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v5(v3 + *(v6 + 20), v4);

  return swift_deallocObject();
}

uint64_t sub_1C5996DB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5996E1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199400);
  sub_1C5B72CB4();
  sub_1C5B72EE0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5996E94(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C5996F50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C5997058()
{

  return swift_deallocObject();
}

uint64_t sub_1C5997090()
{

  return swift_deallocObject();
}

uint64_t sub_1C59970C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5BC7B04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C5997188(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C5BC7B04();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C5997244()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5997284()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C59972BC()
{

  return swift_deallocObject();
}

uint64_t sub_1C5997314(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195630);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1C59973DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195630);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C59974AC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t sub_1C59975A4()
{

  return swift_deallocObject();
}

uint64_t sub_1C59975DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
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

uint64_t sub_1C59976B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_1C5997774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5BC7CE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1C5BC7CA4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
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

uint64_t sub_1C599788C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C5BC7CE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1C5BC7CA4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C5997994()
{
  sub_1C5942458(*(v0 + 16), *(v0 + 24));
  sub_1C5942458(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

id sub_1C59979DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_topBlurLayer);
  *a2 = v2;
  return v2;
}

void sub_1C59979F4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_topBlurLayer);
  *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_topBlurLayer) = *a1;
  v3 = v2;
}

id sub_1C5997A44@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_bottomBlurLayer);
  *a2 = v2;
  return v2;
}

void sub_1C5997A5C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_bottomBlurLayer);
  *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_bottomBlurLayer) = *a1;
  v3 = v2;
}

id sub_1C5997AAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_colorAdjustmentsLayer);
  *a2 = v2;
  return v2;
}

void sub_1C5997AC4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_colorAdjustmentsLayer);
  *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI32LockScreenTallAssetOverlayEffectP33_C7563FAB72F8B0F7DD7187E405B5FF4511EffectLayer_colorAdjustmentsLayer) = *a1;
  v3 = v2;
}

uint64_t sub_1C5997B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C5BC7AC4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C5997B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C5BC7AC4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C5997C10()
{

  return swift_deallocObject();
}

uint64_t sub_1C5997C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C10);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 64);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 72);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1C5997DB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191C10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 64);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 72);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C5997EEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1C5997F74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_1C5997FFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C599808C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 160);
}

uint64_t sub_1C59980DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 176);
  return result;
}

uint64_t sub_1C5998128@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 177);
  return result;
}

void sub_1C5998170(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 177);
  *(v3 + 177) = v2;
  sub_1C596D7EC(v4);
}

uint64_t sub_1C59981BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 72);
  swift_beginAccess();
  return sub_1C59318C8(v3 + 16, a2);
}

uint64_t sub_1C59982C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 120);
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

double sub_1C5998310@<D0>(_OWORD *a1@<X8>)
{
  sub_1C59349AC(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

char *sub_1C5998350@<X0>(char **a1@<X8>)
{
  result = sub_1C5B8E208();
  *a1 = result;
  return result;
}

uint64_t sub_1C59983DC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5998424()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5998474()
{
  _s17AVPlayerVideoViewVMa();
  _s12MPCVideoViewVMa();
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C599858C()
{
  _s35AVPlayerViewControllerRepresentableVMa();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5998620()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199E00);
  _s25VideoOutputViewControllerVMa();
  sub_1C5BCB804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5A0BA0C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1C5BCA724();
  return swift_getWitnessTable();
}

uint64_t sub_1C59987D4()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C5998814()
{

  return swift_deallocObject();
}

uint64_t sub_1C5998860()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197CC8);
  sub_1C5BC8AB4();
  sub_1C5B993B4();
  return swift_getWitnessTable();
}

uint64_t sub_1C59988D8()
{
  v1 = type metadata accessor for NowPlayingRouteButton.Content(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5BC9424();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1C5BC90F4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  sub_1C5942458(*(v3 + *(v1 + 28)), *(v3 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

uint64_t sub_1C5998B44@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  result = sub_1C596CB78(v3);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5998B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A018);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C5998CDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A018);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C5998E24()
{

  return swift_deallocObject();
}

uint64_t sub_1C5998E5C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5998E9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5B9D5F4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_1C5998F04(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C5998F9C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5998FE0()
{

  return swift_deallocObject();
}

uint64_t sub_1C5999048()
{

  return swift_deallocObject();
}

uint64_t sub_1C5999090()
{
  _s21MiniPlayerContentViewVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  _s11ArtworkViewVMa();
  sub_1C5BCB804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  _s12PresentationCMa();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5931880(&qword_1EDA4AF70, _s12PresentationCMa);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC19A4F0);
  sub_1C5BC8AB4();
  type metadata accessor for NowPlayingEnvironmentModifier();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1996D0);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EDA46188, &unk_1EC19A4F0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46080, &qword_1EC1996D0);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5999464@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1C59994D4()
{

  return swift_deallocObject();
}

uint64_t sub_1C599950C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C5999544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C59995BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C5999650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59996C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C599976C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C59997C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C5999800(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5BC7A24();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C599986C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5BC7A24();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C59998DC()
{
  v1 = sub_1C5BC7A24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v3 + ((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  swift_unknownObjectRelease();

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);

  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1C5999A2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC19A7A8);
  sub_1C5BCB804();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  sub_1C5BCA934();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BCA724();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966F8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196700);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC196708, &qword_1EC1966F8);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC196710, &qword_1EC196700);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5999CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C5999D6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C5999E2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1C5999E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_1C5999F50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC195E20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C599A014()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A848);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194470);
  sub_1C5BBE624();
  sub_1C5AB32B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C599A0CC()
{
  type metadata accessor for ToastViewModifier();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C599A170(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A9B8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

void *sub_1C599A22C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A9B8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C599A2DC()
{
  v1 = (type metadata accessor for ToastViewModifier() - 8);
  v2 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));

  v3 = v2 + v1[19];
  v4 = sub_1C5BC9634();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A9B8);

  return swift_deallocObject();
}

uint64_t sub_1C599A468()
{
  type metadata accessor for ToastViewModifier();
  swift_getWitnessTable();
  sub_1C5BC9394();
  type metadata accessor for ToastManager();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1C5BCA724();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19AA48);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC19AA50, &qword_1EC19AA48);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BCB804();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198A70);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC9074();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EC198A80, &qword_1EC198A70);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C599AA94()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196618);
  sub_1C5BC8AB4();
  sub_1C5AA79A4();
  return swift_getWitnessTable();
}

uint64_t sub_1C599AB14()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19AA60);
  sub_1C5BC8AB4();
  sub_1C5BC37F0();
  return swift_getWitnessTable();
}

uint64_t sub_1C599AB9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19AA80);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1C599ACD8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C599ADA8()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

uint64_t sub_1C599AE38(void (*a1)(void))
{
  a1();
  sub_1C5BC8F44();
  return v2;
}

uint64_t sub_1C599AEA0@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a2 = v4;
  return result;
}

uint64_t sub_1C599AF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();

  return sub_1C5BC8F54();
}

uint64_t sub_1C599AF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v95 = &v84 - v4;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F98);
  v5 = MEMORY[0x1EEE9AC00](v96);
  v100 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v84 - v7;
  v9 = sub_1C5BC8F34();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = *(a1 + 48);
  v13 = *(a1 + 40);
  v137 = v13;
  v90 = v138;
  v101 = v10;
  if (v138 == 1)
  {
    v97 = v13;
  }

  else
  {

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v137, &unk_1EC190FA0);
    v15 = *(v10 + 8);
    v15(v12, v9);
    v97 = v107;

    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v137, &unk_1EC190FA0);
    v15(v12, v9);
  }

  sub_1C5BC83C4();
  v93 = v123;
  v94 = v122;
  v98 = v125;
  v91 = v126;
  v92 = v124;
  v17 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193A80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C5BCFF00;
  *(v18 + 56) = MEMORY[0x1E69E7DE0];
  *(v18 + 64) = sub_1C599F00C();
  *(v18 + 32) = round(v17 * 10.0) / 10.0;
  v19 = sub_1C5BCAE84();
  v87 = v20;
  v88 = v19;
  KeyPath = swift_getKeyPath();
  LOBYTE(v102) = 0;
  LOBYTE(v127) = 0;
  v86 = sub_1C5BC98F4();
  sub_1C5BC8174();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v107 = 0;
  v85 = sub_1C5BC9884();
  sub_1C5BC8174();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v121 = 0;
  v37 = *(a1 + 24);
  v135 = v37;
  v136 = *(a1 + 32);
  if (v136 == 1)
  {
    v120 = v37;
  }

  else
  {

    sub_1C5BCB4E4();
    v38 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v135, &qword_1EC190FB8);
    (*(v101 + 8))(v12, v9);
    v37 = v120;
  }

  v134 = *(a1 + 16);
  v39 = *(a1 + 8);
  v133 = v39;
  v84 = v9;
  if (v134 == 1)
  {
    v119 = v39;
  }

  else
  {

    sub_1C5BCB4E4();
    v40 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v133, &qword_1EC190FB8);
    (*(v101 + 8))(v12, v9);
    v39 = v119;
  }

  v41 = sub_1C5BC9894();
  v42 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190FC0) + 36)];
  v43 = *(sub_1C5BC8B84() + 20);
  v44 = *MEMORY[0x1E697F468];
  v45 = sub_1C5BC9044();
  (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
  __asm { FMOV            V0.2D, #4.0 }

  *v42 = _Q0;
  *&v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190FC8) + 36)] = 256;
  v51 = v87;
  *v8 = v88;
  *(v8 + 1) = v51;
  v8[16] = 0;
  *(v8 + 3) = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = 257;
  *(v8 + 5) = KeyPath;
  *(v8 + 6) = 1;
  v8[56] = 0;
  LOBYTE(v51) = v85;
  v8[64] = v86;
  *(v8 + 9) = v22;
  *(v8 + 10) = v24;
  *(v8 + 11) = v26;
  *(v8 + 12) = v28;
  v8[104] = 0;
  v8[112] = v51;
  *(v8 + 15) = v30;
  *(v8 + 16) = v32;
  *(v8 + 17) = v34;
  *(v8 + 18) = v36;
  v8[152] = 0;
  *(v8 + 20) = v37;
  *(v8 + 21) = v39;
  v8[176] = v41;
  v52 = sub_1C5BC9954();
  v53 = v95;
  (*(*(v52 - 8) + 56))(v95, 1, 1, v52);
  v54 = sub_1C5BC99A4();
  sub_1C5924EF4(v53, &qword_1EC190F90);
  v55 = swift_getKeyPath();
  v56 = &v8[*(v96 + 36)];
  *v56 = v55;
  v56[1] = v54;
  if (v90)
  {
    LODWORD(v101) = v13;
  }

  else
  {

    sub_1C5BCB4E4();
    v57 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v137, &unk_1EC190FA0);
    v58 = *(v101 + 8);
    v59 = v84;
    v58(v12, v84);
    LODWORD(v101) = v107;

    sub_1C5BCB4E4();
    v60 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v137, &unk_1EC190FA0);
    v58(v12, v59);
  }

  sub_1C5BC83C4();
  v61 = v127;
  v62 = v128;
  v63 = v129;
  v64 = v130;
  v96 = v131;
  v65 = v132;
  sub_1C5BCABD4();
  v67 = v66;
  v69 = v68;
  v70 = v100;
  sub_1C59400B0(v8, v100, &qword_1EC190F98);
  v71 = v98;
  v72 = v99;
  *v99 = v97;
  v73 = v93;
  v72[1] = v94;
  v72[2] = v73;
  v74 = v91;
  v72[3] = v92;
  v72[4] = v71;
  v72[5] = v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190FD0);
  sub_1C59400B0(v70, v72 + *(v75 + 48), &qword_1EC190F98);
  v76 = (v72 + *(v75 + 64));
  v77 = v101;
  LOBYTE(v102) = v101;
  *(&v102 + 1) = *v118;
  DWORD1(v102) = *&v118[3];
  *(&v102 + 1) = v61;
  *&v103 = __PAIR64__(v63, v62);
  *(&v103 + 1) = v64;
  v78 = v96;
  *&v104 = v96;
  *(&v104 + 1) = v65;
  v99 = xmmword_1C5BCFF10;
  v105 = xmmword_1C5BCFF10;
  *&v106 = v67;
  *(&v106 + 1) = v69;
  v79 = v102;
  v80 = v103;
  v81 = v106;
  v82 = v104;
  v76[3] = xmmword_1C5BCFF10;
  v76[4] = v81;
  v76[1] = v80;
  v76[2] = v82;
  *v76 = v79;

  sub_1C59400B0(&v102, &v107, &qword_1EC190FD8);
  sub_1C5924EF4(v8, &qword_1EC190F98);
  v107 = v77;
  *v108 = *v118;
  *&v108[3] = *&v118[3];
  v109 = v61;
  v110 = v62;
  v111 = v63;
  v112 = v64;
  v113 = v78;
  v114 = v65;
  v115 = v99;
  v116 = v67;
  v117 = v69;
  sub_1C5924EF4(&v107, &qword_1EC190FD8);
  sub_1C5924EF4(v70, &qword_1EC190F98);
}

uint64_t sub_1C599B9F4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char a6)
{
  CGRectGetMinX(*&a1);
  if (a6)
  {
    if (a6 != 1)
    {
      goto LABEL_6;
    }

    v12.origin.x = a1;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    CGRectGetMinX(v12);
    v13.origin.x = a1;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    CGRectGetMinY(v13);
    sub_1C5BC9AD4();
    v14.origin.x = a1;
    v14.origin.y = a2;
    v14.size.width = a3;
    v14.size.height = a4;
    CGRectGetMinX(v14);
    v15.origin.x = a1;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    CGRectGetMaxY(v15);
  }

  else
  {
    v16.origin.x = a1;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    CGRectGetMidY(v16);
    sub_1C5BC9AD4();
    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    CGRectGetHeight(v17);
    v18.origin.x = a1;
    v18.origin.y = a2;
    v18.size.width = a3;
    v18.size.height = a4;
    CGRectGetMinY(v18);
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    CGRectGetHeight(v19);
  }

  sub_1C5BC9AF4();
LABEL_6:
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectGetMidY(v20);
  sub_1C5BC9AD4();
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetMaxX(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  CGRectGetMidY(v22);
  result = sub_1C5BC9AF4();
  if (!a6)
  {
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    CGRectGetMidY(v23);
    sub_1C5BC9AD4();
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    CGRectGetHeight(v24);
    v25.origin.x = a1;
    v25.origin.y = a2;
    v25.size.width = a3;
    v25.size.height = a4;
    CGRectGetMaxY(v25);
    v26.origin.x = a1;
    v26.origin.y = a2;
    v26.size.width = a3;
    v26.size.height = a4;
    CGRectGetHeight(v26);
    return sub_1C5BC9AF4();
  }

  return result;
}

double sub_1C599BC34@<D0>(uint64_t a1@<X8>)
{
  sub_1C5BC9B34();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_1C599BCBC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C599BD44;
}

void sub_1C599BD44(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1C599BD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C599F4A0();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C599BDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C599F4A0();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C599BE54(uint64_t a1)
{
  v2 = sub_1C599F4A0();

  return MEMORY[0x1EEDE4410](a1, v2);
}

double sub_1C599BEA0@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v11 = *v1;
  v12 = v3;
  v13 = v1[2];
  v14 = *(v1 + 48);
  *a1 = sub_1C5BC8FC4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F78);
  sub_1C599AF80(&v11, a1 + *(v4 + 44));
  v5 = sub_1C5975558(*(&v11 + 1), v12);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F80) + 36)) = v5;
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F88) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t _s11MediaCoreUI13DeviceMetricsV6LayoutO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t sub_1C599BFD4()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t sub_1C599C018()
{
  result = sub_1C5BCA4A4();
  qword_1EC1904C8 = result;
  return result;
}

uint64_t sub_1C599C05C()
{
  result = sub_1C5BCA474();
  qword_1EC1904D8 = result;
  return result;
}

uint64_t sub_1C599C0A0@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;
}

uint64_t sub_1C599C100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C599E6D0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C599C164()
{
  sub_1C599DCB8();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C599C1A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

unint64_t sub_1C599C1FC()
{
  result = qword_1EC1909F8;
  if (!qword_1EC1909F8)
  {
    sub_1C5BC8974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1909F8);
  }

  return result;
}

uint64_t sub_1C599C248@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v34 = a4;
  v35 = a5;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v36 = a7;
    v37 = a2;
    v38 = a6;
    v39 = a8;
    v40 = a9;
    v41 = a10;
    v17 = sub_1C5BC8974();
    v18 = *(v17 - 8);
    MEMORY[0x1EEE9AC00](v17);
    v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v43[0] = 0;
      v43[1] = 0xE000000000000000;
      v33 = v10;
      sub_1C5BCBA94();

      strcpy(v43, "View.task @ ");
      BYTE5(v43[1]) = 0;
      HIWORD(v43[1]) = -5120;
      MEMORY[0x1C694F170](a3, v34);
      MEMORY[0x1C694F170](58, 0xE100000000000000);
      v42 = v35;
      v28 = sub_1C5BCBD64();
      MEMORY[0x1C694F170](v28);
    }

    v29 = sub_1C5BCB214();
    v30 = MEMORY[0x1EEE9AC00](v29);
    (*(v32 + 16))(&v33 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v30);

    sub_1C5BC8964();
    MEMORY[0x1C694E550](v20, v40, v17, v41);

    return (*(v18 + 8))(v20, v17);
  }

  else
  {
    v21 = sub_1C5BC87B4();
    MEMORY[0x1EEE9AC00](v21);
    v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = *(v24 + 20);
    v26 = sub_1C5BCB214();
    (*(*(v26 - 8) + 16))(&v23[v25], a2, v26);
    *v23 = a6;
    *(v23 + 1) = a7;
    MEMORY[0x1C694E550](v23, a9, v21, a10);
    return sub_1C599C5B0(v23);
  }
}

uint64_t sub_1C599C5B0(uint64_t a1)
{
  v2 = sub_1C5BC87B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_1C599C684(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 368))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C599C6A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 360) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 368) = v3;
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

uint64_t sub_1C599C774(uint64_t result, int a2, int a3)
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

uint64_t sub_1C599C7C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1C599C80C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C599C878(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 56))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1C599C8BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}